; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123770 () Bool)

(assert start!123770)

(declare-fun b!1370765 () Bool)

(declare-fun b_free!33219 () Bool)

(declare-fun b_next!33923 () Bool)

(assert (=> b!1370765 (= b_free!33219 (not b_next!33923))))

(declare-fun tp!393823 () Bool)

(declare-fun b_and!91875 () Bool)

(assert (=> b!1370765 (= tp!393823 b_and!91875)))

(declare-fun b_free!33221 () Bool)

(declare-fun b_next!33925 () Bool)

(assert (=> b!1370765 (= b_free!33221 (not b_next!33925))))

(declare-fun tp!393821 () Bool)

(declare-fun b_and!91877 () Bool)

(assert (=> b!1370765 (= tp!393821 b_and!91877)))

(declare-fun b!1370761 () Bool)

(declare-fun b_free!33223 () Bool)

(declare-fun b_next!33927 () Bool)

(assert (=> b!1370761 (= b_free!33223 (not b_next!33927))))

(declare-fun tp!393819 () Bool)

(declare-fun b_and!91879 () Bool)

(assert (=> b!1370761 (= tp!393819 b_and!91879)))

(declare-fun b_free!33225 () Bool)

(declare-fun b_next!33929 () Bool)

(assert (=> b!1370761 (= b_free!33225 (not b_next!33929))))

(declare-fun tp!393820 () Bool)

(declare-fun b_and!91881 () Bool)

(assert (=> b!1370761 (= tp!393820 b_and!91881)))

(declare-fun b!1370756 () Bool)

(declare-fun b_free!33227 () Bool)

(declare-fun b_next!33931 () Bool)

(assert (=> b!1370756 (= b_free!33227 (not b_next!33931))))

(declare-fun tp!393822 () Bool)

(declare-fun b_and!91883 () Bool)

(assert (=> b!1370756 (= tp!393822 b_and!91883)))

(declare-fun b_free!33229 () Bool)

(declare-fun b_next!33933 () Bool)

(assert (=> b!1370756 (= b_free!33229 (not b_next!33933))))

(declare-fun tp!393828 () Bool)

(declare-fun b_and!91885 () Bool)

(assert (=> b!1370756 (= tp!393828 b_and!91885)))

(declare-fun b!1370737 () Bool)

(assert (=> b!1370737 true))

(assert (=> b!1370737 true))

(declare-fun b!1370759 () Bool)

(assert (=> b!1370759 true))

(declare-fun b!1370766 () Bool)

(assert (=> b!1370766 true))

(declare-fun bs!335590 () Bool)

(declare-fun b!1370757 () Bool)

(assert (= bs!335590 (and b!1370757 b!1370766)))

(declare-fun lambda!58187 () Int)

(declare-fun lambda!58186 () Int)

(assert (=> bs!335590 (not (= lambda!58187 lambda!58186))))

(assert (=> b!1370757 true))

(declare-fun b!1370733 () Bool)

(declare-fun e!876269 () Bool)

(declare-fun e!876267 () Bool)

(assert (=> b!1370733 (= e!876269 e!876267)))

(declare-fun res!617539 () Bool)

(assert (=> b!1370733 (=> (not res!617539) (not e!876267))))

(declare-datatypes ((C!7728 0))(
  ( (C!7729 (val!4424 Int)) )
))
(declare-datatypes ((Regex!3719 0))(
  ( (ElementMatch!3719 (c!225512 C!7728)) (Concat!6214 (regOne!7950 Regex!3719) (regTwo!7950 Regex!3719)) (EmptyExpr!3719) (Star!3719 (reg!4048 Regex!3719)) (EmptyLang!3719) (Union!3719 (regOne!7951 Regex!3719) (regTwo!7951 Regex!3719)) )
))
(declare-fun lt!454967 () Regex!3719)

(declare-datatypes ((List!13954 0))(
  ( (Nil!13888) (Cons!13888 (h!19289 C!7728) (t!121483 List!13954)) )
))
(declare-fun lt!454969 () List!13954)

(declare-fun prefixMatch!228 (Regex!3719 List!13954) Bool)

(assert (=> b!1370733 (= res!617539 (prefixMatch!228 lt!454967 lt!454969))))

(declare-datatypes ((LexerInterface!2100 0))(
  ( (LexerInterfaceExt!2097 (__x!8819 Int)) (Lexer!2098) )
))
(declare-fun thiss!19762 () LexerInterface!2100)

(declare-datatypes ((List!13955 0))(
  ( (Nil!13889) (Cons!13889 (h!19290 (_ BitVec 16)) (t!121484 List!13955)) )
))
(declare-datatypes ((TokenValue!2495 0))(
  ( (FloatLiteralValue!4990 (text!17910 List!13955)) (TokenValueExt!2494 (__x!8820 Int)) (Broken!12475 (value!78149 List!13955)) (Object!2560) (End!2495) (Def!2495) (Underscore!2495) (Match!2495) (Else!2495) (Error!2495) (Case!2495) (If!2495) (Extends!2495) (Abstract!2495) (Class!2495) (Val!2495) (DelimiterValue!4990 (del!2555 List!13955)) (KeywordValue!2501 (value!78150 List!13955)) (CommentValue!4990 (value!78151 List!13955)) (WhitespaceValue!4990 (value!78152 List!13955)) (IndentationValue!2495 (value!78153 List!13955)) (String!16710) (Int32!2495) (Broken!12476 (value!78154 List!13955)) (Boolean!2496) (Unit!20106) (OperatorValue!2498 (op!2555 List!13955)) (IdentifierValue!4990 (value!78155 List!13955)) (IdentifierValue!4991 (value!78156 List!13955)) (WhitespaceValue!4991 (value!78157 List!13955)) (True!4990) (False!4990) (Broken!12477 (value!78158 List!13955)) (Broken!12478 (value!78159 List!13955)) (True!4991) (RightBrace!2495) (RightBracket!2495) (Colon!2495) (Null!2495) (Comma!2495) (LeftBracket!2495) (False!4991) (LeftBrace!2495) (ImaginaryLiteralValue!2495 (text!17911 List!13955)) (StringLiteralValue!7485 (value!78160 List!13955)) (EOFValue!2495 (value!78161 List!13955)) (IdentValue!2495 (value!78162 List!13955)) (DelimiterValue!4991 (value!78163 List!13955)) (DedentValue!2495 (value!78164 List!13955)) (NewLineValue!2495 (value!78165 List!13955)) (IntegerValue!7485 (value!78166 (_ BitVec 32)) (text!17912 List!13955)) (IntegerValue!7486 (value!78167 Int) (text!17913 List!13955)) (Times!2495) (Or!2495) (Equal!2495) (Minus!2495) (Broken!12479 (value!78168 List!13955)) (And!2495) (Div!2495) (LessEqual!2495) (Mod!2495) (Concat!6215) (Not!2495) (Plus!2495) (SpaceValue!2495 (value!78169 List!13955)) (IntegerValue!7487 (value!78170 Int) (text!17914 List!13955)) (StringLiteralValue!7486 (text!17915 List!13955)) (FloatLiteralValue!4991 (text!17916 List!13955)) (BytesLiteralValue!2495 (value!78171 List!13955)) (CommentValue!4991 (value!78172 List!13955)) (StringLiteralValue!7487 (value!78173 List!13955)) (ErrorTokenValue!2495 (msg!2556 List!13955)) )
))
(declare-datatypes ((IArray!9149 0))(
  ( (IArray!9150 (innerList!4632 List!13954)) )
))
(declare-datatypes ((String!16711 0))(
  ( (String!16712 (value!78174 String)) )
))
(declare-datatypes ((Conc!4572 0))(
  ( (Node!4572 (left!11884 Conc!4572) (right!12214 Conc!4572) (csize!9374 Int) (cheight!4783 Int)) (Leaf!6971 (xs!7299 IArray!9149) (csize!9375 Int)) (Empty!4572) )
))
(declare-datatypes ((BalanceConc!9084 0))(
  ( (BalanceConc!9085 (c!225513 Conc!4572)) )
))
(declare-datatypes ((TokenValueInjection!4650 0))(
  ( (TokenValueInjection!4651 (toValue!3672 Int) (toChars!3531 Int)) )
))
(declare-datatypes ((Rule!4610 0))(
  ( (Rule!4611 (regex!2405 Regex!3719) (tag!2667 String!16711) (isSeparator!2405 Bool) (transformation!2405 TokenValueInjection!4650)) )
))
(declare-datatypes ((List!13956 0))(
  ( (Nil!13890) (Cons!13890 (h!19291 Rule!4610) (t!121485 List!13956)) )
))
(declare-fun rules!2550 () List!13956)

(declare-fun rulesRegex!288 (LexerInterface!2100 List!13956) Regex!3719)

(assert (=> b!1370733 (= lt!454967 (rulesRegex!288 thiss!19762 rules!2550))))

(declare-fun lt!454961 () List!13954)

(declare-fun lt!454970 () C!7728)

(declare-fun ++!3590 (List!13954 List!13954) List!13954)

(assert (=> b!1370733 (= lt!454969 (++!3590 lt!454961 (Cons!13888 lt!454970 Nil!13888)))))

(declare-fun lt!454959 () BalanceConc!9084)

(declare-fun apply!3407 (BalanceConc!9084 Int) C!7728)

(assert (=> b!1370733 (= lt!454970 (apply!3407 lt!454959 0))))

(declare-fun lt!454963 () BalanceConc!9084)

(declare-fun list!5350 (BalanceConc!9084) List!13954)

(assert (=> b!1370733 (= lt!454961 (list!5350 lt!454963))))

(declare-datatypes ((Token!4472 0))(
  ( (Token!4473 (value!78175 TokenValue!2495) (rule!4160 Rule!4610) (size!11391 Int) (originalCharacters!3267 List!13954)) )
))
(declare-fun t1!34 () Token!4472)

(declare-fun charsOf!1377 (Token!4472) BalanceConc!9084)

(assert (=> b!1370733 (= lt!454963 (charsOf!1377 t1!34))))

(declare-fun e!876265 () Bool)

(declare-fun tp!393825 () Bool)

(declare-fun b!1370734 () Bool)

(declare-fun e!876262 () Bool)

(declare-fun inv!21 (TokenValue!2495) Bool)

(assert (=> b!1370734 (= e!876262 (and (inv!21 (value!78175 t1!34)) e!876265 tp!393825))))

(declare-fun b!1370735 () Bool)

(declare-fun res!617518 () Bool)

(declare-fun e!876264 () Bool)

(assert (=> b!1370735 (=> res!617518 e!876264)))

(declare-fun lt!454960 () List!13954)

(declare-fun matchR!1712 (Regex!3719 List!13954) Bool)

(assert (=> b!1370735 (= res!617518 (not (matchR!1712 lt!454967 lt!454960)))))

(declare-fun b!1370736 () Bool)

(declare-fun res!617546 () Bool)

(declare-fun e!876278 () Bool)

(assert (=> b!1370736 (=> res!617546 e!876278)))

(declare-datatypes ((List!13957 0))(
  ( (Nil!13891) (Cons!13891 (h!19292 Token!4472) (t!121486 List!13957)) )
))
(declare-fun lt!454976 () List!13957)

(declare-fun lt!454956 () BalanceConc!9084)

(declare-datatypes ((tuple2!13486 0))(
  ( (tuple2!13487 (_1!7629 List!13957) (_2!7629 List!13954)) )
))
(declare-fun lexList!618 (LexerInterface!2100 List!13956 List!13954) tuple2!13486)

(assert (=> b!1370736 (= res!617546 (not (= (lexList!618 thiss!19762 rules!2550 (list!5350 lt!454956)) (tuple2!13487 lt!454976 Nil!13888))))))

(declare-fun e!876279 () Bool)

(assert (=> b!1370737 (= e!876267 (not e!876279))))

(declare-fun res!617529 () Bool)

(assert (=> b!1370737 (=> res!617529 e!876279)))

(declare-fun lambda!58183 () Int)

(declare-fun Exists!871 (Int) Bool)

(assert (=> b!1370737 (= res!617529 (not (Exists!871 lambda!58183)))))

(assert (=> b!1370737 (Exists!871 lambda!58183)))

(declare-datatypes ((Unit!20107 0))(
  ( (Unit!20108) )
))
(declare-fun lt!454975 () Unit!20107)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!189 (Regex!3719 List!13954) Unit!20107)

(assert (=> b!1370737 (= lt!454975 (lemmaPrefixMatchThenExistsStringThatMatches!189 lt!454967 lt!454969))))

(declare-fun b!1370738 () Bool)

(declare-fun e!876260 () Bool)

(assert (=> b!1370738 (= e!876278 e!876260)))

(declare-fun res!617538 () Bool)

(assert (=> b!1370738 (=> res!617538 e!876260)))

(declare-datatypes ((IArray!9151 0))(
  ( (IArray!9152 (innerList!4633 List!13957)) )
))
(declare-datatypes ((Conc!4573 0))(
  ( (Node!4573 (left!11885 Conc!4573) (right!12215 Conc!4573) (csize!9376 Int) (cheight!4784 Int)) (Leaf!6972 (xs!7300 IArray!9151) (csize!9377 Int)) (Empty!4573) )
))
(declare-datatypes ((BalanceConc!9086 0))(
  ( (BalanceConc!9087 (c!225514 Conc!4573)) )
))
(declare-datatypes ((tuple2!13488 0))(
  ( (tuple2!13489 (_1!7630 BalanceConc!9086) (_2!7630 BalanceConc!9084)) )
))
(declare-fun lt!454965 () tuple2!13488)

(declare-fun lt!454973 () List!13957)

(declare-fun list!5351 (BalanceConc!9086) List!13957)

(assert (=> b!1370738 (= res!617538 (not (= (list!5351 (_1!7630 lt!454965)) lt!454973)))))

(declare-fun t2!34 () Token!4472)

(assert (=> b!1370738 (= lt!454973 (Cons!13891 t2!34 Nil!13891))))

(declare-fun lt!454972 () BalanceConc!9084)

(declare-fun lex!927 (LexerInterface!2100 List!13956 BalanceConc!9084) tuple2!13488)

(assert (=> b!1370738 (= lt!454965 (lex!927 thiss!19762 rules!2550 lt!454972))))

(declare-fun print!866 (LexerInterface!2100 BalanceConc!9086) BalanceConc!9084)

(declare-fun singletonSeq!1036 (Token!4472) BalanceConc!9086)

(assert (=> b!1370738 (= lt!454972 (print!866 thiss!19762 (singletonSeq!1036 t2!34)))))

(declare-fun b!1370739 () Bool)

(declare-fun res!617519 () Bool)

(assert (=> b!1370739 (=> (not res!617519) (not e!876269))))

(declare-fun separableTokensPredicate!383 (LexerInterface!2100 Token!4472 Token!4472 List!13956) Bool)

(assert (=> b!1370739 (= res!617519 (not (separableTokensPredicate!383 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1370740 () Bool)

(declare-fun res!617524 () Bool)

(assert (=> b!1370740 (=> res!617524 e!876260)))

(declare-fun contains!2599 (List!13956 Rule!4610) Bool)

(assert (=> b!1370740 (= res!617524 (not (contains!2599 rules!2550 (rule!4160 t2!34))))))

(declare-fun b!1370741 () Bool)

(declare-fun e!876274 () Bool)

(declare-fun e!876277 () Bool)

(declare-fun tp!393826 () Bool)

(assert (=> b!1370741 (= e!876274 (and e!876277 tp!393826))))

(declare-fun b!1370742 () Bool)

(declare-fun res!617533 () Bool)

(assert (=> b!1370742 (=> res!617533 e!876260)))

(declare-datatypes ((tuple2!13490 0))(
  ( (tuple2!13491 (_1!7631 Token!4472) (_2!7631 List!13954)) )
))
(declare-datatypes ((Option!2668 0))(
  ( (None!2667) (Some!2667 (v!21471 tuple2!13490)) )
))
(declare-fun maxPrefix!1082 (LexerInterface!2100 List!13956 List!13954) Option!2668)

(assert (=> b!1370742 (= res!617533 (not (= (maxPrefix!1082 thiss!19762 rules!2550 (list!5350 lt!454959)) (Some!2667 (tuple2!13491 t2!34 Nil!13888)))))))

(declare-fun b!1370743 () Bool)

(declare-fun res!617531 () Bool)

(assert (=> b!1370743 (=> res!617531 e!876264)))

(declare-fun contains!2600 (List!13954 C!7728) Bool)

(assert (=> b!1370743 (= res!617531 (not (contains!2600 lt!454969 lt!454970)))))

(declare-fun e!876275 () Bool)

(declare-fun b!1370744 () Bool)

(declare-fun tp!393824 () Bool)

(declare-fun inv!18241 (String!16711) Bool)

(declare-fun inv!18244 (TokenValueInjection!4650) Bool)

(assert (=> b!1370744 (= e!876277 (and tp!393824 (inv!18241 (tag!2667 (h!19291 rules!2550))) (inv!18244 (transformation!2405 (h!19291 rules!2550))) e!876275))))

(declare-fun b!1370745 () Bool)

(declare-fun res!617540 () Bool)

(declare-fun e!876261 () Bool)

(assert (=> b!1370745 (=> (not res!617540) (not e!876261))))

(declare-fun rulesProduceIndividualToken!1069 (LexerInterface!2100 List!13956 Token!4472) Bool)

(assert (=> b!1370745 (= res!617540 (rulesProduceIndividualToken!1069 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1370746 () Bool)

(declare-fun res!617527 () Bool)

(assert (=> b!1370746 (=> res!617527 e!876260)))

(declare-fun isEmpty!8370 (BalanceConc!9084) Bool)

(assert (=> b!1370746 (= res!617527 (not (isEmpty!8370 (_2!7630 lt!454965))))))

(declare-fun e!876258 () Bool)

(declare-fun b!1370732 () Bool)

(declare-fun tp!393827 () Bool)

(assert (=> b!1370732 (= e!876265 (and tp!393827 (inv!18241 (tag!2667 (rule!4160 t1!34))) (inv!18244 (transformation!2405 (rule!4160 t1!34))) e!876258))))

(declare-fun res!617530 () Bool)

(assert (=> start!123770 (=> (not res!617530) (not e!876261))))

(get-info :version)

(assert (=> start!123770 (= res!617530 ((_ is Lexer!2098) thiss!19762))))

(assert (=> start!123770 e!876261))

(assert (=> start!123770 true))

(assert (=> start!123770 e!876274))

(declare-fun inv!18245 (Token!4472) Bool)

(assert (=> start!123770 (and (inv!18245 t1!34) e!876262)))

(declare-fun e!876281 () Bool)

(assert (=> start!123770 (and (inv!18245 t2!34) e!876281)))

(declare-fun e!876282 () Bool)

(declare-fun tp!393818 () Bool)

(declare-fun b!1370747 () Bool)

(assert (=> b!1370747 (= e!876281 (and (inv!21 (value!78175 t2!34)) e!876282 tp!393818))))

(declare-fun b!1370748 () Bool)

(declare-fun res!617535 () Bool)

(assert (=> b!1370748 (=> (not res!617535) (not e!876261))))

(declare-fun rulesInvariant!1970 (LexerInterface!2100 List!13956) Bool)

(assert (=> b!1370748 (= res!617535 (rulesInvariant!1970 thiss!19762 rules!2550))))

(declare-fun b!1370749 () Bool)

(declare-fun res!617526 () Bool)

(assert (=> b!1370749 (=> res!617526 e!876278)))

(assert (=> b!1370749 (= res!617526 (not (contains!2599 rules!2550 (rule!4160 t1!34))))))

(declare-fun b!1370750 () Bool)

(declare-fun res!617520 () Bool)

(assert (=> b!1370750 (=> res!617520 e!876264)))

(assert (=> b!1370750 (= res!617520 (not (contains!2600 lt!454960 lt!454970)))))

(declare-fun b!1370751 () Bool)

(declare-fun res!617543 () Bool)

(assert (=> b!1370751 (=> res!617543 e!876278)))

(declare-fun lt!454968 () tuple2!13488)

(assert (=> b!1370751 (= res!617543 (not (isEmpty!8370 (_2!7630 lt!454968))))))

(declare-fun b!1370752 () Bool)

(declare-fun e!876276 () Bool)

(declare-fun e!876266 () Bool)

(assert (=> b!1370752 (= e!876276 e!876266)))

(declare-fun res!617545 () Bool)

(assert (=> b!1370752 (=> res!617545 e!876266)))

(declare-fun lambda!58184 () Int)

(declare-fun lt!454964 () Regex!3719)

(declare-datatypes ((List!13958 0))(
  ( (Nil!13892) (Cons!13892 (h!19293 Regex!3719) (t!121487 List!13958)) )
))
(declare-fun contains!2601 (List!13958 Regex!3719) Bool)

(declare-fun map!3068 (List!13956 Int) List!13958)

(assert (=> b!1370752 (= res!617545 (not (contains!2601 (map!3068 rules!2550 lambda!58184) lt!454964)))))

(declare-fun lambda!58185 () Int)

(declare-fun getWitness!356 (List!13958 Int) Regex!3719)

(assert (=> b!1370752 (= lt!454964 (getWitness!356 (map!3068 rules!2550 lambda!58184) lambda!58185))))

(declare-fun b!1370753 () Bool)

(declare-fun e!876280 () Bool)

(assert (=> b!1370753 (= e!876279 e!876280)))

(declare-fun res!617536 () Bool)

(assert (=> b!1370753 (=> res!617536 e!876280)))

(declare-fun getSuffix!567 (List!13954 List!13954) List!13954)

(assert (=> b!1370753 (= res!617536 (not (= lt!454960 (++!3590 lt!454969 (getSuffix!567 lt!454960 lt!454969)))))))

(declare-fun pickWitness!174 (Int) List!13954)

(assert (=> b!1370753 (= lt!454960 (pickWitness!174 lambda!58183))))

(declare-fun b!1370754 () Bool)

(declare-fun res!617541 () Bool)

(assert (=> b!1370754 (=> (not res!617541) (not e!876261))))

(declare-fun isEmpty!8371 (List!13956) Bool)

(assert (=> b!1370754 (= res!617541 (not (isEmpty!8371 rules!2550)))))

(declare-fun b!1370755 () Bool)

(declare-fun res!617525 () Bool)

(assert (=> b!1370755 (=> res!617525 e!876264)))

(declare-fun lt!454955 () C!7728)

(assert (=> b!1370755 (= res!617525 (not (contains!2600 lt!454960 lt!454955)))))

(assert (=> b!1370756 (= e!876258 (and tp!393822 tp!393828))))

(assert (=> b!1370757 (= e!876260 (matchR!1712 (regex!2405 (rule!4160 t1!34)) lt!454961))))

(declare-fun lt!454966 () Unit!20107)

(declare-fun forallContained!608 (List!13956 Int Rule!4610) Unit!20107)

(assert (=> b!1370757 (= lt!454966 (forallContained!608 rules!2550 lambda!58187 (rule!4160 t2!34)))))

(declare-fun lt!454958 () Unit!20107)

(assert (=> b!1370757 (= lt!454958 (forallContained!608 rules!2550 lambda!58187 (rule!4160 t1!34)))))

(declare-fun lt!454957 () Rule!4610)

(declare-fun lt!454954 () Unit!20107)

(assert (=> b!1370757 (= lt!454954 (forallContained!608 rules!2550 lambda!58187 lt!454957))))

(declare-fun b!1370758 () Bool)

(declare-fun res!617522 () Bool)

(assert (=> b!1370758 (=> res!617522 e!876278)))

(assert (=> b!1370758 (= res!617522 (not (= (maxPrefix!1082 thiss!19762 rules!2550 lt!454961) (Some!2667 (tuple2!13491 t1!34 Nil!13888)))))))

(assert (=> b!1370759 (= e!876264 e!876276)))

(declare-fun res!617523 () Bool)

(assert (=> b!1370759 (=> res!617523 e!876276)))

(declare-fun exists!468 (List!13958 Int) Bool)

(assert (=> b!1370759 (= res!617523 (not (exists!468 (map!3068 rules!2550 lambda!58184) lambda!58185)))))

(declare-fun lt!454962 () List!13958)

(assert (=> b!1370759 (exists!468 lt!454962 lambda!58185)))

(declare-fun lt!454974 () Unit!20107)

(declare-fun matchRGenUnionSpec!136 (Regex!3719 List!13958 List!13954) Unit!20107)

(assert (=> b!1370759 (= lt!454974 (matchRGenUnionSpec!136 lt!454967 lt!454962 lt!454960))))

(assert (=> b!1370759 (= lt!454962 (map!3068 rules!2550 lambda!58184))))

(declare-fun b!1370760 () Bool)

(declare-fun e!876270 () Bool)

(assert (=> b!1370760 (= e!876270 e!876278)))

(declare-fun res!617534 () Bool)

(assert (=> b!1370760 (=> res!617534 e!876278)))

(assert (=> b!1370760 (= res!617534 (not (= (list!5351 (_1!7630 lt!454968)) lt!454976)))))

(assert (=> b!1370760 (= lt!454976 (Cons!13891 t1!34 Nil!13891))))

(assert (=> b!1370760 (= lt!454968 (lex!927 thiss!19762 rules!2550 lt!454956))))

(assert (=> b!1370760 (= lt!454956 (print!866 thiss!19762 (singletonSeq!1036 t1!34)))))

(declare-fun getWitness!357 (List!13956 Int) Rule!4610)

(assert (=> b!1370760 (= lt!454957 (getWitness!357 rules!2550 lambda!58186))))

(declare-fun e!876263 () Bool)

(assert (=> b!1370761 (= e!876263 (and tp!393819 tp!393820))))

(declare-fun b!1370762 () Bool)

(declare-fun res!617537 () Bool)

(assert (=> b!1370762 (=> res!617537 e!876260)))

(assert (=> b!1370762 (= res!617537 (not (contains!2599 rules!2550 lt!454957)))))

(declare-fun b!1370763 () Bool)

(declare-fun res!617521 () Bool)

(assert (=> b!1370763 (=> (not res!617521) (not e!876269))))

(declare-fun sepAndNonSepRulesDisjointChars!778 (List!13956 List!13956) Bool)

(assert (=> b!1370763 (= res!617521 (sepAndNonSepRulesDisjointChars!778 rules!2550 rules!2550))))

(declare-fun b!1370764 () Bool)

(declare-fun res!617528 () Bool)

(assert (=> b!1370764 (=> (not res!617528) (not e!876261))))

(assert (=> b!1370764 (= res!617528 (rulesProduceIndividualToken!1069 thiss!19762 rules!2550 t1!34))))

(assert (=> b!1370765 (= e!876275 (and tp!393823 tp!393821))))

(assert (=> b!1370766 (= e!876266 e!876270)))

(declare-fun res!617517 () Bool)

(assert (=> b!1370766 (=> res!617517 e!876270)))

(declare-fun exists!469 (List!13956 Int) Bool)

(assert (=> b!1370766 (= res!617517 (not (exists!469 rules!2550 lambda!58186)))))

(assert (=> b!1370766 (exists!469 rules!2550 lambda!58186)))

(declare-fun lt!454971 () Unit!20107)

(declare-fun lemmaMapContains!124 (List!13956 Int Regex!3719) Unit!20107)

(assert (=> b!1370766 (= lt!454971 (lemmaMapContains!124 rules!2550 lambda!58184 lt!454964))))

(declare-fun b!1370767 () Bool)

(declare-fun tp!393817 () Bool)

(assert (=> b!1370767 (= e!876282 (and tp!393817 (inv!18241 (tag!2667 (rule!4160 t2!34))) (inv!18244 (transformation!2405 (rule!4160 t2!34))) e!876263))))

(declare-fun b!1370768 () Bool)

(assert (=> b!1370768 (= e!876280 e!876264)))

(declare-fun res!617547 () Bool)

(assert (=> b!1370768 (=> res!617547 e!876264)))

(assert (=> b!1370768 (= res!617547 (not (contains!2600 lt!454969 lt!454955)))))

(assert (=> b!1370768 (= lt!454955 (apply!3407 lt!454963 0))))

(declare-fun b!1370769 () Bool)

(assert (=> b!1370769 (= e!876261 e!876269)))

(declare-fun res!617542 () Bool)

(assert (=> b!1370769 (=> (not res!617542) (not e!876269))))

(declare-fun size!11392 (BalanceConc!9084) Int)

(assert (=> b!1370769 (= res!617542 (> (size!11392 lt!454959) 0))))

(assert (=> b!1370769 (= lt!454959 (charsOf!1377 t2!34))))

(declare-fun b!1370770 () Bool)

(declare-fun res!617544 () Bool)

(assert (=> b!1370770 (=> (not res!617544) (not e!876261))))

(assert (=> b!1370770 (= res!617544 (not (= (isSeparator!2405 (rule!4160 t1!34)) (isSeparator!2405 (rule!4160 t2!34)))))))

(declare-fun b!1370771 () Bool)

(declare-fun res!617532 () Bool)

(assert (=> b!1370771 (=> res!617532 e!876260)))

(assert (=> b!1370771 (= res!617532 (not (= (lexList!618 thiss!19762 rules!2550 (list!5350 lt!454972)) (tuple2!13487 lt!454973 Nil!13888))))))

(assert (= (and start!123770 res!617530) b!1370754))

(assert (= (and b!1370754 res!617541) b!1370748))

(assert (= (and b!1370748 res!617535) b!1370764))

(assert (= (and b!1370764 res!617528) b!1370745))

(assert (= (and b!1370745 res!617540) b!1370770))

(assert (= (and b!1370770 res!617544) b!1370769))

(assert (= (and b!1370769 res!617542) b!1370763))

(assert (= (and b!1370763 res!617521) b!1370739))

(assert (= (and b!1370739 res!617519) b!1370733))

(assert (= (and b!1370733 res!617539) b!1370737))

(assert (= (and b!1370737 (not res!617529)) b!1370753))

(assert (= (and b!1370753 (not res!617536)) b!1370768))

(assert (= (and b!1370768 (not res!617547)) b!1370755))

(assert (= (and b!1370755 (not res!617525)) b!1370743))

(assert (= (and b!1370743 (not res!617531)) b!1370750))

(assert (= (and b!1370750 (not res!617520)) b!1370735))

(assert (= (and b!1370735 (not res!617518)) b!1370759))

(assert (= (and b!1370759 (not res!617523)) b!1370752))

(assert (= (and b!1370752 (not res!617545)) b!1370766))

(assert (= (and b!1370766 (not res!617517)) b!1370760))

(assert (= (and b!1370760 (not res!617534)) b!1370751))

(assert (= (and b!1370751 (not res!617543)) b!1370736))

(assert (= (and b!1370736 (not res!617546)) b!1370758))

(assert (= (and b!1370758 (not res!617522)) b!1370749))

(assert (= (and b!1370749 (not res!617526)) b!1370738))

(assert (= (and b!1370738 (not res!617538)) b!1370746))

(assert (= (and b!1370746 (not res!617527)) b!1370771))

(assert (= (and b!1370771 (not res!617532)) b!1370742))

(assert (= (and b!1370742 (not res!617533)) b!1370740))

(assert (= (and b!1370740 (not res!617524)) b!1370762))

(assert (= (and b!1370762 (not res!617537)) b!1370757))

(assert (= b!1370744 b!1370765))

(assert (= b!1370741 b!1370744))

(assert (= (and start!123770 ((_ is Cons!13890) rules!2550)) b!1370741))

(assert (= b!1370732 b!1370756))

(assert (= b!1370734 b!1370732))

(assert (= start!123770 b!1370734))

(assert (= b!1370767 b!1370761))

(assert (= b!1370747 b!1370767))

(assert (= start!123770 b!1370747))

(declare-fun m!1540771 () Bool)

(assert (=> b!1370743 m!1540771))

(declare-fun m!1540773 () Bool)

(assert (=> b!1370747 m!1540773))

(declare-fun m!1540775 () Bool)

(assert (=> b!1370738 m!1540775))

(declare-fun m!1540777 () Bool)

(assert (=> b!1370738 m!1540777))

(declare-fun m!1540779 () Bool)

(assert (=> b!1370738 m!1540779))

(assert (=> b!1370738 m!1540779))

(declare-fun m!1540781 () Bool)

(assert (=> b!1370738 m!1540781))

(declare-fun m!1540783 () Bool)

(assert (=> b!1370754 m!1540783))

(declare-fun m!1540785 () Bool)

(assert (=> b!1370736 m!1540785))

(assert (=> b!1370736 m!1540785))

(declare-fun m!1540787 () Bool)

(assert (=> b!1370736 m!1540787))

(declare-fun m!1540789 () Bool)

(assert (=> b!1370737 m!1540789))

(assert (=> b!1370737 m!1540789))

(declare-fun m!1540791 () Bool)

(assert (=> b!1370737 m!1540791))

(declare-fun m!1540793 () Bool)

(assert (=> b!1370771 m!1540793))

(assert (=> b!1370771 m!1540793))

(declare-fun m!1540795 () Bool)

(assert (=> b!1370771 m!1540795))

(declare-fun m!1540797 () Bool)

(assert (=> b!1370755 m!1540797))

(declare-fun m!1540799 () Bool)

(assert (=> start!123770 m!1540799))

(declare-fun m!1540801 () Bool)

(assert (=> start!123770 m!1540801))

(declare-fun m!1540803 () Bool)

(assert (=> b!1370746 m!1540803))

(declare-fun m!1540805 () Bool)

(assert (=> b!1370748 m!1540805))

(declare-fun m!1540807 () Bool)

(assert (=> b!1370740 m!1540807))

(declare-fun m!1540809 () Bool)

(assert (=> b!1370749 m!1540809))

(declare-fun m!1540811 () Bool)

(assert (=> b!1370763 m!1540811))

(declare-fun m!1540813 () Bool)

(assert (=> b!1370750 m!1540813))

(declare-fun m!1540815 () Bool)

(assert (=> b!1370751 m!1540815))

(declare-fun m!1540817 () Bool)

(assert (=> b!1370739 m!1540817))

(declare-fun m!1540819 () Bool)

(assert (=> b!1370762 m!1540819))

(declare-fun m!1540821 () Bool)

(assert (=> b!1370744 m!1540821))

(declare-fun m!1540823 () Bool)

(assert (=> b!1370744 m!1540823))

(declare-fun m!1540825 () Bool)

(assert (=> b!1370766 m!1540825))

(assert (=> b!1370766 m!1540825))

(declare-fun m!1540827 () Bool)

(assert (=> b!1370766 m!1540827))

(declare-fun m!1540829 () Bool)

(assert (=> b!1370760 m!1540829))

(declare-fun m!1540831 () Bool)

(assert (=> b!1370760 m!1540831))

(declare-fun m!1540833 () Bool)

(assert (=> b!1370760 m!1540833))

(declare-fun m!1540835 () Bool)

(assert (=> b!1370760 m!1540835))

(assert (=> b!1370760 m!1540833))

(declare-fun m!1540837 () Bool)

(assert (=> b!1370760 m!1540837))

(declare-fun m!1540839 () Bool)

(assert (=> b!1370742 m!1540839))

(assert (=> b!1370742 m!1540839))

(declare-fun m!1540841 () Bool)

(assert (=> b!1370742 m!1540841))

(declare-fun m!1540843 () Bool)

(assert (=> b!1370768 m!1540843))

(declare-fun m!1540845 () Bool)

(assert (=> b!1370768 m!1540845))

(declare-fun m!1540847 () Bool)

(assert (=> b!1370735 m!1540847))

(declare-fun m!1540849 () Bool)

(assert (=> b!1370745 m!1540849))

(declare-fun m!1540851 () Bool)

(assert (=> b!1370753 m!1540851))

(assert (=> b!1370753 m!1540851))

(declare-fun m!1540853 () Bool)

(assert (=> b!1370753 m!1540853))

(declare-fun m!1540855 () Bool)

(assert (=> b!1370753 m!1540855))

(declare-fun m!1540857 () Bool)

(assert (=> b!1370734 m!1540857))

(declare-fun m!1540859 () Bool)

(assert (=> b!1370759 m!1540859))

(assert (=> b!1370759 m!1540859))

(declare-fun m!1540861 () Bool)

(assert (=> b!1370759 m!1540861))

(assert (=> b!1370759 m!1540859))

(declare-fun m!1540863 () Bool)

(assert (=> b!1370759 m!1540863))

(declare-fun m!1540865 () Bool)

(assert (=> b!1370759 m!1540865))

(assert (=> b!1370752 m!1540859))

(assert (=> b!1370752 m!1540859))

(declare-fun m!1540867 () Bool)

(assert (=> b!1370752 m!1540867))

(assert (=> b!1370752 m!1540859))

(assert (=> b!1370752 m!1540859))

(declare-fun m!1540869 () Bool)

(assert (=> b!1370752 m!1540869))

(declare-fun m!1540871 () Bool)

(assert (=> b!1370758 m!1540871))

(declare-fun m!1540873 () Bool)

(assert (=> b!1370757 m!1540873))

(declare-fun m!1540875 () Bool)

(assert (=> b!1370757 m!1540875))

(declare-fun m!1540877 () Bool)

(assert (=> b!1370757 m!1540877))

(declare-fun m!1540879 () Bool)

(assert (=> b!1370757 m!1540879))

(declare-fun m!1540881 () Bool)

(assert (=> b!1370733 m!1540881))

(declare-fun m!1540883 () Bool)

(assert (=> b!1370733 m!1540883))

(declare-fun m!1540885 () Bool)

(assert (=> b!1370733 m!1540885))

(declare-fun m!1540887 () Bool)

(assert (=> b!1370733 m!1540887))

(declare-fun m!1540889 () Bool)

(assert (=> b!1370733 m!1540889))

(declare-fun m!1540891 () Bool)

(assert (=> b!1370733 m!1540891))

(declare-fun m!1540893 () Bool)

(assert (=> b!1370764 m!1540893))

(declare-fun m!1540895 () Bool)

(assert (=> b!1370732 m!1540895))

(declare-fun m!1540897 () Bool)

(assert (=> b!1370732 m!1540897))

(declare-fun m!1540899 () Bool)

(assert (=> b!1370767 m!1540899))

(declare-fun m!1540901 () Bool)

(assert (=> b!1370767 m!1540901))

(declare-fun m!1540903 () Bool)

(assert (=> b!1370769 m!1540903))

(declare-fun m!1540905 () Bool)

(assert (=> b!1370769 m!1540905))

(check-sat (not b!1370754) (not b_next!33933) (not b!1370751) (not b_next!33923) (not b!1370747) b_and!91875 (not b!1370741) (not b!1370735) (not b!1370764) (not b!1370752) (not b!1370759) (not b!1370743) (not b_next!33929) (not b!1370746) (not b!1370767) (not b!1370755) (not b!1370769) (not b!1370760) (not b!1370766) (not b_next!33927) (not b!1370739) (not b!1370768) (not b!1370771) (not b_next!33931) (not b!1370742) (not b!1370763) (not b!1370753) (not b!1370749) (not b!1370736) (not start!123770) b_and!91883 (not b!1370737) (not b!1370734) (not b!1370748) (not b!1370745) (not b!1370757) (not b_next!33925) b_and!91877 (not b!1370732) b_and!91885 (not b!1370738) (not b!1370750) (not b!1370762) (not b!1370758) b_and!91881 b_and!91879 (not b!1370740) (not b!1370744) (not b!1370733))
(check-sat (not b_next!33929) (not b_next!33933) (not b_next!33923) b_and!91883 b_and!91875 (not b_next!33925) b_and!91877 b_and!91885 b_and!91881 b_and!91879 (not b_next!33927) (not b_next!33931))
(get-model)

(declare-fun d!390931 () Bool)

(declare-fun lt!455046 () Bool)

(declare-fun e!876395 () Bool)

(assert (=> d!390931 (= lt!455046 e!876395)))

(declare-fun res!617666 () Bool)

(assert (=> d!390931 (=> (not res!617666) (not e!876395))))

(assert (=> d!390931 (= res!617666 (= (list!5351 (_1!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t2!34))))) (list!5351 (singletonSeq!1036 t2!34))))))

(declare-fun e!876394 () Bool)

(assert (=> d!390931 (= lt!455046 e!876394)))

(declare-fun res!617667 () Bool)

(assert (=> d!390931 (=> (not res!617667) (not e!876394))))

(declare-fun lt!455045 () tuple2!13488)

(declare-fun size!11397 (BalanceConc!9086) Int)

(assert (=> d!390931 (= res!617667 (= (size!11397 (_1!7630 lt!455045)) 1))))

(assert (=> d!390931 (= lt!455045 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t2!34))))))

(assert (=> d!390931 (not (isEmpty!8371 rules!2550))))

(assert (=> d!390931 (= (rulesProduceIndividualToken!1069 thiss!19762 rules!2550 t2!34) lt!455046)))

(declare-fun b!1370972 () Bool)

(declare-fun res!617665 () Bool)

(assert (=> b!1370972 (=> (not res!617665) (not e!876394))))

(declare-fun apply!3411 (BalanceConc!9086 Int) Token!4472)

(assert (=> b!1370972 (= res!617665 (= (apply!3411 (_1!7630 lt!455045) 0) t2!34))))

(declare-fun b!1370973 () Bool)

(assert (=> b!1370973 (= e!876394 (isEmpty!8370 (_2!7630 lt!455045)))))

(declare-fun b!1370974 () Bool)

(assert (=> b!1370974 (= e!876395 (isEmpty!8370 (_2!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t2!34))))))))

(assert (= (and d!390931 res!617667) b!1370972))

(assert (= (and b!1370972 res!617665) b!1370973))

(assert (= (and d!390931 res!617666) b!1370974))

(assert (=> d!390931 m!1540779))

(declare-fun m!1541113 () Bool)

(assert (=> d!390931 m!1541113))

(assert (=> d!390931 m!1540781))

(declare-fun m!1541115 () Bool)

(assert (=> d!390931 m!1541115))

(assert (=> d!390931 m!1540783))

(assert (=> d!390931 m!1540779))

(assert (=> d!390931 m!1540781))

(declare-fun m!1541117 () Bool)

(assert (=> d!390931 m!1541117))

(assert (=> d!390931 m!1540779))

(declare-fun m!1541119 () Bool)

(assert (=> d!390931 m!1541119))

(declare-fun m!1541121 () Bool)

(assert (=> b!1370972 m!1541121))

(declare-fun m!1541123 () Bool)

(assert (=> b!1370973 m!1541123))

(assert (=> b!1370974 m!1540779))

(assert (=> b!1370974 m!1540779))

(assert (=> b!1370974 m!1540781))

(assert (=> b!1370974 m!1540781))

(assert (=> b!1370974 m!1541115))

(declare-fun m!1541125 () Bool)

(assert (=> b!1370974 m!1541125))

(assert (=> b!1370745 d!390931))

(declare-fun bs!335608 () Bool)

(declare-fun d!390957 () Bool)

(assert (= bs!335608 (and d!390957 b!1370766)))

(declare-fun lambda!58202 () Int)

(assert (=> bs!335608 (not (= lambda!58202 lambda!58186))))

(declare-fun bs!335609 () Bool)

(assert (= bs!335609 (and d!390957 b!1370757)))

(assert (=> bs!335609 (not (= lambda!58202 lambda!58187))))

(assert (=> d!390957 true))

(declare-fun order!8467 () Int)

(declare-fun dynLambda!6306 (Int Int) Int)

(assert (=> d!390957 (< (dynLambda!6306 order!8467 lambda!58186) (dynLambda!6306 order!8467 lambda!58202))))

(declare-fun forall!3396 (List!13956 Int) Bool)

(assert (=> d!390957 (= (exists!469 rules!2550 lambda!58186) (not (forall!3396 rules!2550 lambda!58202)))))

(declare-fun bs!335610 () Bool)

(assert (= bs!335610 d!390957))

(declare-fun m!1541127 () Bool)

(assert (=> bs!335610 m!1541127))

(assert (=> b!1370766 d!390957))

(declare-fun bs!335611 () Bool)

(declare-fun d!390959 () Bool)

(assert (= bs!335611 (and d!390959 b!1370766)))

(declare-fun lambda!58205 () Int)

(assert (=> bs!335611 (not (= lambda!58205 lambda!58186))))

(declare-fun bs!335612 () Bool)

(assert (= bs!335612 (and d!390959 b!1370757)))

(assert (=> bs!335612 (not (= lambda!58205 lambda!58187))))

(declare-fun bs!335613 () Bool)

(assert (= bs!335613 (and d!390959 d!390957)))

(assert (=> bs!335613 (not (= lambda!58205 lambda!58202))))

(assert (=> d!390959 true))

(assert (=> d!390959 true))

(declare-fun order!8469 () Int)

(declare-fun dynLambda!6307 (Int Int) Int)

(assert (=> d!390959 (< (dynLambda!6307 order!8469 lambda!58184) (dynLambda!6306 order!8467 lambda!58205))))

(assert (=> d!390959 (exists!469 rules!2550 lambda!58205)))

(declare-fun lt!455049 () Unit!20107)

(declare-fun choose!8435 (List!13956 Int Regex!3719) Unit!20107)

(assert (=> d!390959 (= lt!455049 (choose!8435 rules!2550 lambda!58184 lt!454964))))

(assert (=> d!390959 (contains!2601 (map!3068 rules!2550 lambda!58184) lt!454964)))

(assert (=> d!390959 (= (lemmaMapContains!124 rules!2550 lambda!58184 lt!454964) lt!455049)))

(declare-fun bs!335614 () Bool)

(assert (= bs!335614 d!390959))

(declare-fun m!1541129 () Bool)

(assert (=> bs!335614 m!1541129))

(declare-fun m!1541131 () Bool)

(assert (=> bs!335614 m!1541131))

(assert (=> bs!335614 m!1540859))

(assert (=> bs!335614 m!1540859))

(assert (=> bs!335614 m!1540867))

(assert (=> b!1370766 d!390959))

(declare-fun d!390961 () Bool)

(assert (=> d!390961 (= (inv!18241 (tag!2667 (h!19291 rules!2550))) (= (mod (str.len (value!78174 (tag!2667 (h!19291 rules!2550)))) 2) 0))))

(assert (=> b!1370744 d!390961))

(declare-fun d!390963 () Bool)

(declare-fun res!617670 () Bool)

(declare-fun e!876398 () Bool)

(assert (=> d!390963 (=> (not res!617670) (not e!876398))))

(declare-fun semiInverseModEq!928 (Int Int) Bool)

(assert (=> d!390963 (= res!617670 (semiInverseModEq!928 (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toValue!3672 (transformation!2405 (h!19291 rules!2550)))))))

(assert (=> d!390963 (= (inv!18244 (transformation!2405 (h!19291 rules!2550))) e!876398)))

(declare-fun b!1370983 () Bool)

(declare-fun equivClasses!887 (Int Int) Bool)

(assert (=> b!1370983 (= e!876398 (equivClasses!887 (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toValue!3672 (transformation!2405 (h!19291 rules!2550)))))))

(assert (= (and d!390963 res!617670) b!1370983))

(declare-fun m!1541133 () Bool)

(assert (=> d!390963 m!1541133))

(declare-fun m!1541135 () Bool)

(assert (=> b!1370983 m!1541135))

(assert (=> b!1370744 d!390963))

(declare-fun d!390965 () Bool)

(declare-fun lt!455058 () Bool)

(declare-fun isEmpty!8376 (List!13954) Bool)

(assert (=> d!390965 (= lt!455058 (isEmpty!8376 (list!5350 (_2!7630 lt!454965))))))

(declare-fun isEmpty!8377 (Conc!4572) Bool)

(assert (=> d!390965 (= lt!455058 (isEmpty!8377 (c!225513 (_2!7630 lt!454965))))))

(assert (=> d!390965 (= (isEmpty!8370 (_2!7630 lt!454965)) lt!455058)))

(declare-fun bs!335615 () Bool)

(assert (= bs!335615 d!390965))

(declare-fun m!1541137 () Bool)

(assert (=> bs!335615 m!1541137))

(assert (=> bs!335615 m!1541137))

(declare-fun m!1541139 () Bool)

(assert (=> bs!335615 m!1541139))

(declare-fun m!1541141 () Bool)

(assert (=> bs!335615 m!1541141))

(assert (=> b!1370746 d!390965))

(declare-fun d!390967 () Bool)

(assert (=> d!390967 (= (inv!18241 (tag!2667 (rule!4160 t2!34))) (= (mod (str.len (value!78174 (tag!2667 (rule!4160 t2!34)))) 2) 0))))

(assert (=> b!1370767 d!390967))

(declare-fun d!390969 () Bool)

(declare-fun res!617673 () Bool)

(declare-fun e!876405 () Bool)

(assert (=> d!390969 (=> (not res!617673) (not e!876405))))

(assert (=> d!390969 (= res!617673 (semiInverseModEq!928 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (toValue!3672 (transformation!2405 (rule!4160 t2!34)))))))

(assert (=> d!390969 (= (inv!18244 (transformation!2405 (rule!4160 t2!34))) e!876405)))

(declare-fun b!1370994 () Bool)

(assert (=> b!1370994 (= e!876405 (equivClasses!887 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (toValue!3672 (transformation!2405 (rule!4160 t2!34)))))))

(assert (= (and d!390969 res!617673) b!1370994))

(declare-fun m!1541143 () Bool)

(assert (=> d!390969 m!1541143))

(declare-fun m!1541145 () Bool)

(assert (=> b!1370994 m!1541145))

(assert (=> b!1370767 d!390969))

(declare-fun d!390971 () Bool)

(declare-fun lt!455061 () Int)

(declare-fun size!11399 (List!13954) Int)

(assert (=> d!390971 (= lt!455061 (size!11399 (list!5350 lt!454959)))))

(declare-fun size!11400 (Conc!4572) Int)

(assert (=> d!390971 (= lt!455061 (size!11400 (c!225513 lt!454959)))))

(assert (=> d!390971 (= (size!11392 lt!454959) lt!455061)))

(declare-fun bs!335616 () Bool)

(assert (= bs!335616 d!390971))

(assert (=> bs!335616 m!1540839))

(assert (=> bs!335616 m!1540839))

(declare-fun m!1541147 () Bool)

(assert (=> bs!335616 m!1541147))

(declare-fun m!1541149 () Bool)

(assert (=> bs!335616 m!1541149))

(assert (=> b!1370769 d!390971))

(declare-fun d!390973 () Bool)

(declare-fun lt!455067 () BalanceConc!9084)

(assert (=> d!390973 (= (list!5350 lt!455067) (originalCharacters!3267 t2!34))))

(declare-fun dynLambda!6308 (Int TokenValue!2495) BalanceConc!9084)

(assert (=> d!390973 (= lt!455067 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34)))))

(assert (=> d!390973 (= (charsOf!1377 t2!34) lt!455067)))

(declare-fun b_lambda!41899 () Bool)

(assert (=> (not b_lambda!41899) (not d!390973)))

(declare-fun t!121497 () Bool)

(declare-fun tb!72207 () Bool)

(assert (=> (and b!1370765 (= (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toChars!3531 (transformation!2405 (rule!4160 t2!34)))) t!121497) tb!72207))

(declare-fun b!1371010 () Bool)

(declare-fun e!876415 () Bool)

(declare-fun tp!393834 () Bool)

(declare-fun inv!18248 (Conc!4572) Bool)

(assert (=> b!1371010 (= e!876415 (and (inv!18248 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34)))) tp!393834))))

(declare-fun result!87678 () Bool)

(declare-fun inv!18249 (BalanceConc!9084) Bool)

(assert (=> tb!72207 (= result!87678 (and (inv!18249 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34))) e!876415))))

(assert (= tb!72207 b!1371010))

(declare-fun m!1541169 () Bool)

(assert (=> b!1371010 m!1541169))

(declare-fun m!1541171 () Bool)

(assert (=> tb!72207 m!1541171))

(assert (=> d!390973 t!121497))

(declare-fun b_and!91893 () Bool)

(assert (= b_and!91877 (and (=> t!121497 result!87678) b_and!91893)))

(declare-fun t!121499 () Bool)

(declare-fun tb!72209 () Bool)

(assert (=> (and b!1370761 (= (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (toChars!3531 (transformation!2405 (rule!4160 t2!34)))) t!121499) tb!72209))

(declare-fun result!87682 () Bool)

(assert (= result!87682 result!87678))

(assert (=> d!390973 t!121499))

(declare-fun b_and!91895 () Bool)

(assert (= b_and!91881 (and (=> t!121499 result!87682) b_and!91895)))

(declare-fun tb!72211 () Bool)

(declare-fun t!121501 () Bool)

(assert (=> (and b!1370756 (= (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (toChars!3531 (transformation!2405 (rule!4160 t2!34)))) t!121501) tb!72211))

(declare-fun result!87684 () Bool)

(assert (= result!87684 result!87678))

(assert (=> d!390973 t!121501))

(declare-fun b_and!91897 () Bool)

(assert (= b_and!91885 (and (=> t!121501 result!87684) b_and!91897)))

(declare-fun m!1541185 () Bool)

(assert (=> d!390973 m!1541185))

(declare-fun m!1541187 () Bool)

(assert (=> d!390973 m!1541187))

(assert (=> b!1370769 d!390973))

(declare-fun d!390983 () Bool)

(declare-fun c!225564 () Bool)

(assert (=> d!390983 (= c!225564 ((_ is IntegerValue!7485) (value!78175 t2!34)))))

(declare-fun e!876425 () Bool)

(assert (=> d!390983 (= (inv!21 (value!78175 t2!34)) e!876425)))

(declare-fun b!1371025 () Bool)

(declare-fun res!617681 () Bool)

(declare-fun e!876424 () Bool)

(assert (=> b!1371025 (=> res!617681 e!876424)))

(assert (=> b!1371025 (= res!617681 (not ((_ is IntegerValue!7487) (value!78175 t2!34))))))

(declare-fun e!876426 () Bool)

(assert (=> b!1371025 (= e!876426 e!876424)))

(declare-fun b!1371026 () Bool)

(declare-fun inv!15 (TokenValue!2495) Bool)

(assert (=> b!1371026 (= e!876424 (inv!15 (value!78175 t2!34)))))

(declare-fun b!1371027 () Bool)

(assert (=> b!1371027 (= e!876425 e!876426)))

(declare-fun c!225565 () Bool)

(assert (=> b!1371027 (= c!225565 ((_ is IntegerValue!7486) (value!78175 t2!34)))))

(declare-fun b!1371028 () Bool)

(declare-fun inv!17 (TokenValue!2495) Bool)

(assert (=> b!1371028 (= e!876426 (inv!17 (value!78175 t2!34)))))

(declare-fun b!1371029 () Bool)

(declare-fun inv!16 (TokenValue!2495) Bool)

(assert (=> b!1371029 (= e!876425 (inv!16 (value!78175 t2!34)))))

(assert (= (and d!390983 c!225564) b!1371029))

(assert (= (and d!390983 (not c!225564)) b!1371027))

(assert (= (and b!1371027 c!225565) b!1371028))

(assert (= (and b!1371027 (not c!225565)) b!1371025))

(assert (= (and b!1371025 (not res!617681)) b!1371026))

(declare-fun m!1541189 () Bool)

(assert (=> b!1371026 m!1541189))

(declare-fun m!1541191 () Bool)

(assert (=> b!1371028 m!1541191))

(declare-fun m!1541193 () Bool)

(assert (=> b!1371029 m!1541193))

(assert (=> b!1370747 d!390983))

(declare-fun d!390985 () Bool)

(declare-fun lt!455078 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2031 (List!13954) (InoxSet C!7728))

(assert (=> d!390985 (= lt!455078 (select (content!2031 lt!454969) lt!454955))))

(declare-fun e!876432 () Bool)

(assert (=> d!390985 (= lt!455078 e!876432)))

(declare-fun res!617687 () Bool)

(assert (=> d!390985 (=> (not res!617687) (not e!876432))))

(assert (=> d!390985 (= res!617687 ((_ is Cons!13888) lt!454969))))

(assert (=> d!390985 (= (contains!2600 lt!454969 lt!454955) lt!455078)))

(declare-fun b!1371036 () Bool)

(declare-fun e!876433 () Bool)

(assert (=> b!1371036 (= e!876432 e!876433)))

(declare-fun res!617686 () Bool)

(assert (=> b!1371036 (=> res!617686 e!876433)))

(assert (=> b!1371036 (= res!617686 (= (h!19289 lt!454969) lt!454955))))

(declare-fun b!1371037 () Bool)

(assert (=> b!1371037 (= e!876433 (contains!2600 (t!121483 lt!454969) lt!454955))))

(assert (= (and d!390985 res!617687) b!1371036))

(assert (= (and b!1371036 (not res!617686)) b!1371037))

(declare-fun m!1541205 () Bool)

(assert (=> d!390985 m!1541205))

(declare-fun m!1541207 () Bool)

(assert (=> d!390985 m!1541207))

(declare-fun m!1541209 () Bool)

(assert (=> b!1371037 m!1541209))

(assert (=> b!1370768 d!390985))

(declare-fun d!390991 () Bool)

(declare-fun lt!455081 () C!7728)

(declare-fun apply!3412 (List!13954 Int) C!7728)

(assert (=> d!390991 (= lt!455081 (apply!3412 (list!5350 lt!454963) 0))))

(declare-fun apply!3413 (Conc!4572 Int) C!7728)

(assert (=> d!390991 (= lt!455081 (apply!3413 (c!225513 lt!454963) 0))))

(declare-fun e!876436 () Bool)

(assert (=> d!390991 e!876436))

(declare-fun res!617690 () Bool)

(assert (=> d!390991 (=> (not res!617690) (not e!876436))))

(assert (=> d!390991 (= res!617690 (<= 0 0))))

(assert (=> d!390991 (= (apply!3407 lt!454963 0) lt!455081)))

(declare-fun b!1371042 () Bool)

(assert (=> b!1371042 (= e!876436 (< 0 (size!11392 lt!454963)))))

(assert (= (and d!390991 res!617690) b!1371042))

(assert (=> d!390991 m!1540885))

(assert (=> d!390991 m!1540885))

(declare-fun m!1541215 () Bool)

(assert (=> d!390991 m!1541215))

(declare-fun m!1541217 () Bool)

(assert (=> d!390991 m!1541217))

(declare-fun m!1541219 () Bool)

(assert (=> b!1371042 m!1541219))

(assert (=> b!1370768 d!390991))

(declare-fun d!390997 () Bool)

(declare-fun lt!455087 () Bool)

(declare-fun content!2032 (List!13956) (InoxSet Rule!4610))

(assert (=> d!390997 (= lt!455087 (select (content!2032 rules!2550) (rule!4160 t1!34)))))

(declare-fun e!876444 () Bool)

(assert (=> d!390997 (= lt!455087 e!876444)))

(declare-fun res!617698 () Bool)

(assert (=> d!390997 (=> (not res!617698) (not e!876444))))

(assert (=> d!390997 (= res!617698 ((_ is Cons!13890) rules!2550))))

(assert (=> d!390997 (= (contains!2599 rules!2550 (rule!4160 t1!34)) lt!455087)))

(declare-fun b!1371049 () Bool)

(declare-fun e!876443 () Bool)

(assert (=> b!1371049 (= e!876444 e!876443)))

(declare-fun res!617697 () Bool)

(assert (=> b!1371049 (=> res!617697 e!876443)))

(assert (=> b!1371049 (= res!617697 (= (h!19291 rules!2550) (rule!4160 t1!34)))))

(declare-fun b!1371050 () Bool)

(assert (=> b!1371050 (= e!876443 (contains!2599 (t!121485 rules!2550) (rule!4160 t1!34)))))

(assert (= (and d!390997 res!617698) b!1371049))

(assert (= (and b!1371049 (not res!617697)) b!1371050))

(declare-fun m!1541221 () Bool)

(assert (=> d!390997 m!1541221))

(declare-fun m!1541223 () Bool)

(assert (=> d!390997 m!1541223))

(declare-fun m!1541225 () Bool)

(assert (=> b!1371050 m!1541225))

(assert (=> b!1370749 d!390997))

(declare-fun d!390999 () Bool)

(declare-fun res!617701 () Bool)

(declare-fun e!876447 () Bool)

(assert (=> d!390999 (=> (not res!617701) (not e!876447))))

(declare-fun rulesValid!896 (LexerInterface!2100 List!13956) Bool)

(assert (=> d!390999 (= res!617701 (rulesValid!896 thiss!19762 rules!2550))))

(assert (=> d!390999 (= (rulesInvariant!1970 thiss!19762 rules!2550) e!876447)))

(declare-fun b!1371053 () Bool)

(declare-datatypes ((List!13959 0))(
  ( (Nil!13893) (Cons!13893 (h!19294 String!16711) (t!121524 List!13959)) )
))
(declare-fun noDuplicateTag!896 (LexerInterface!2100 List!13956 List!13959) Bool)

(assert (=> b!1371053 (= e!876447 (noDuplicateTag!896 thiss!19762 rules!2550 Nil!13893))))

(assert (= (and d!390999 res!617701) b!1371053))

(declare-fun m!1541233 () Bool)

(assert (=> d!390999 m!1541233))

(declare-fun m!1541235 () Bool)

(assert (=> b!1371053 m!1541235))

(assert (=> b!1370748 d!390999))

(declare-fun d!391005 () Bool)

(declare-fun prefixMatchZipperSequence!258 (Regex!3719 BalanceConc!9084) Bool)

(declare-fun ++!3592 (BalanceConc!9084 BalanceConc!9084) BalanceConc!9084)

(declare-fun singletonSeq!1038 (C!7728) BalanceConc!9084)

(assert (=> d!391005 (= (separableTokensPredicate!383 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!258 (rulesRegex!288 thiss!19762 rules!2550) (++!3592 (charsOf!1377 t1!34) (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))))))))

(declare-fun bs!335629 () Bool)

(assert (= bs!335629 d!391005))

(assert (=> bs!335629 m!1540889))

(assert (=> bs!335629 m!1540889))

(declare-fun m!1541255 () Bool)

(assert (=> bs!335629 m!1541255))

(declare-fun m!1541257 () Bool)

(assert (=> bs!335629 m!1541257))

(declare-fun m!1541259 () Bool)

(assert (=> bs!335629 m!1541259))

(declare-fun m!1541261 () Bool)

(assert (=> bs!335629 m!1541261))

(assert (=> bs!335629 m!1540883))

(assert (=> bs!335629 m!1540905))

(assert (=> bs!335629 m!1541259))

(assert (=> bs!335629 m!1540883))

(assert (=> bs!335629 m!1541261))

(assert (=> bs!335629 m!1541255))

(assert (=> bs!335629 m!1540905))

(assert (=> b!1370739 d!391005))

(declare-fun b!1371103 () Bool)

(declare-fun res!617737 () Bool)

(declare-fun e!876482 () Bool)

(assert (=> b!1371103 (=> (not res!617737) (not e!876482))))

(declare-fun lt!455107 () tuple2!13488)

(assert (=> b!1371103 (= res!617737 (= (list!5351 (_1!7630 lt!455107)) (_1!7629 (lexList!618 thiss!19762 rules!2550 (list!5350 lt!454956)))))))

(declare-fun b!1371104 () Bool)

(declare-fun e!876480 () Bool)

(declare-fun isEmpty!8378 (BalanceConc!9086) Bool)

(assert (=> b!1371104 (= e!876480 (not (isEmpty!8378 (_1!7630 lt!455107))))))

(declare-fun b!1371105 () Bool)

(assert (=> b!1371105 (= e!876482 (= (list!5350 (_2!7630 lt!455107)) (_2!7629 (lexList!618 thiss!19762 rules!2550 (list!5350 lt!454956)))))))

(declare-fun b!1371106 () Bool)

(declare-fun e!876481 () Bool)

(assert (=> b!1371106 (= e!876481 e!876480)))

(declare-fun res!617739 () Bool)

(assert (=> b!1371106 (= res!617739 (< (size!11392 (_2!7630 lt!455107)) (size!11392 lt!454956)))))

(assert (=> b!1371106 (=> (not res!617739) (not e!876480))))

(declare-fun b!1371107 () Bool)

(assert (=> b!1371107 (= e!876481 (= (_2!7630 lt!455107) lt!454956))))

(declare-fun d!391013 () Bool)

(assert (=> d!391013 e!876482))

(declare-fun res!617738 () Bool)

(assert (=> d!391013 (=> (not res!617738) (not e!876482))))

(assert (=> d!391013 (= res!617738 e!876481)))

(declare-fun c!225574 () Bool)

(assert (=> d!391013 (= c!225574 (> (size!11397 (_1!7630 lt!455107)) 0))))

(declare-fun lexTailRecV2!413 (LexerInterface!2100 List!13956 BalanceConc!9084 BalanceConc!9084 BalanceConc!9084 BalanceConc!9086) tuple2!13488)

(assert (=> d!391013 (= lt!455107 (lexTailRecV2!413 thiss!19762 rules!2550 lt!454956 (BalanceConc!9085 Empty!4572) lt!454956 (BalanceConc!9087 Empty!4573)))))

(assert (=> d!391013 (= (lex!927 thiss!19762 rules!2550 lt!454956) lt!455107)))

(assert (= (and d!391013 c!225574) b!1371106))

(assert (= (and d!391013 (not c!225574)) b!1371107))

(assert (= (and b!1371106 res!617739) b!1371104))

(assert (= (and d!391013 res!617738) b!1371103))

(assert (= (and b!1371103 res!617737) b!1371105))

(declare-fun m!1541321 () Bool)

(assert (=> b!1371103 m!1541321))

(assert (=> b!1371103 m!1540785))

(assert (=> b!1371103 m!1540785))

(assert (=> b!1371103 m!1540787))

(declare-fun m!1541323 () Bool)

(assert (=> b!1371104 m!1541323))

(declare-fun m!1541325 () Bool)

(assert (=> b!1371106 m!1541325))

(declare-fun m!1541327 () Bool)

(assert (=> b!1371106 m!1541327))

(declare-fun m!1541329 () Bool)

(assert (=> d!391013 m!1541329))

(declare-fun m!1541331 () Bool)

(assert (=> d!391013 m!1541331))

(declare-fun m!1541333 () Bool)

(assert (=> b!1371105 m!1541333))

(assert (=> b!1371105 m!1540785))

(assert (=> b!1371105 m!1540785))

(assert (=> b!1371105 m!1540787))

(assert (=> b!1370760 d!391013))

(declare-fun d!391027 () Bool)

(declare-fun lt!455126 () BalanceConc!9084)

(declare-fun printList!608 (LexerInterface!2100 List!13957) List!13954)

(assert (=> d!391027 (= (list!5350 lt!455126) (printList!608 thiss!19762 (list!5351 (singletonSeq!1036 t1!34))))))

(declare-fun printTailRec!590 (LexerInterface!2100 BalanceConc!9086 Int BalanceConc!9084) BalanceConc!9084)

(assert (=> d!391027 (= lt!455126 (printTailRec!590 thiss!19762 (singletonSeq!1036 t1!34) 0 (BalanceConc!9085 Empty!4572)))))

(assert (=> d!391027 (= (print!866 thiss!19762 (singletonSeq!1036 t1!34)) lt!455126)))

(declare-fun bs!335633 () Bool)

(assert (= bs!335633 d!391027))

(declare-fun m!1541399 () Bool)

(assert (=> bs!335633 m!1541399))

(assert (=> bs!335633 m!1540833))

(declare-fun m!1541401 () Bool)

(assert (=> bs!335633 m!1541401))

(assert (=> bs!335633 m!1541401))

(declare-fun m!1541403 () Bool)

(assert (=> bs!335633 m!1541403))

(assert (=> bs!335633 m!1540833))

(declare-fun m!1541405 () Bool)

(assert (=> bs!335633 m!1541405))

(assert (=> b!1370760 d!391027))

(declare-fun d!391045 () Bool)

(declare-fun list!5354 (Conc!4573) List!13957)

(assert (=> d!391045 (= (list!5351 (_1!7630 lt!454968)) (list!5354 (c!225514 (_1!7630 lt!454968))))))

(declare-fun bs!335634 () Bool)

(assert (= bs!335634 d!391045))

(declare-fun m!1541407 () Bool)

(assert (=> bs!335634 m!1541407))

(assert (=> b!1370760 d!391045))

(declare-fun b!1371167 () Bool)

(declare-fun e!876524 () Bool)

(declare-fun lt!455137 () Rule!4610)

(assert (=> b!1371167 (= e!876524 (contains!2599 rules!2550 lt!455137))))

(declare-fun b!1371168 () Bool)

(declare-fun lt!455138 () Unit!20107)

(declare-fun Unit!20110 () Unit!20107)

(assert (=> b!1371168 (= lt!455138 Unit!20110)))

(assert (=> b!1371168 false))

(declare-fun e!876522 () Rule!4610)

(declare-fun head!2468 (List!13956) Rule!4610)

(assert (=> b!1371168 (= e!876522 (head!2468 rules!2550))))

(declare-fun b!1371169 () Bool)

(declare-fun e!876523 () Rule!4610)

(assert (=> b!1371169 (= e!876523 (h!19291 rules!2550))))

(declare-fun b!1371170 () Bool)

(declare-fun e!876525 () Bool)

(declare-fun dynLambda!6311 (Int Rule!4610) Bool)

(assert (=> b!1371170 (= e!876525 (dynLambda!6311 lambda!58186 (h!19291 rules!2550)))))

(declare-fun b!1371171 () Bool)

(assert (=> b!1371171 (= e!876523 e!876522)))

(declare-fun c!225587 () Bool)

(assert (=> b!1371171 (= c!225587 ((_ is Cons!13890) rules!2550))))

(declare-fun d!391047 () Bool)

(assert (=> d!391047 e!876524))

(declare-fun res!617776 () Bool)

(assert (=> d!391047 (=> (not res!617776) (not e!876524))))

(assert (=> d!391047 (= res!617776 (dynLambda!6311 lambda!58186 lt!455137))))

(assert (=> d!391047 (= lt!455137 e!876523)))

(declare-fun c!225588 () Bool)

(assert (=> d!391047 (= c!225588 e!876525)))

(declare-fun res!617775 () Bool)

(assert (=> d!391047 (=> (not res!617775) (not e!876525))))

(assert (=> d!391047 (= res!617775 ((_ is Cons!13890) rules!2550))))

(assert (=> d!391047 (exists!469 rules!2550 lambda!58186)))

(assert (=> d!391047 (= (getWitness!357 rules!2550 lambda!58186) lt!455137)))

(declare-fun b!1371172 () Bool)

(assert (=> b!1371172 (= e!876522 (getWitness!357 (t!121485 rules!2550) lambda!58186))))

(assert (= (and d!391047 res!617775) b!1371170))

(assert (= (and d!391047 c!225588) b!1371169))

(assert (= (and d!391047 (not c!225588)) b!1371171))

(assert (= (and b!1371171 c!225587) b!1371172))

(assert (= (and b!1371171 (not c!225587)) b!1371168))

(assert (= (and d!391047 res!617776) b!1371167))

(declare-fun b_lambda!41915 () Bool)

(assert (=> (not b_lambda!41915) (not b!1371170)))

(declare-fun b_lambda!41917 () Bool)

(assert (=> (not b_lambda!41917) (not d!391047)))

(declare-fun m!1541441 () Bool)

(assert (=> b!1371168 m!1541441))

(declare-fun m!1541443 () Bool)

(assert (=> d!391047 m!1541443))

(assert (=> d!391047 m!1540825))

(declare-fun m!1541447 () Bool)

(assert (=> b!1371172 m!1541447))

(declare-fun m!1541449 () Bool)

(assert (=> b!1371170 m!1541449))

(declare-fun m!1541451 () Bool)

(assert (=> b!1371167 m!1541451))

(assert (=> b!1370760 d!391047))

(declare-fun d!391057 () Bool)

(declare-fun e!876531 () Bool)

(assert (=> d!391057 e!876531))

(declare-fun res!617783 () Bool)

(assert (=> d!391057 (=> (not res!617783) (not e!876531))))

(declare-fun lt!455145 () BalanceConc!9086)

(assert (=> d!391057 (= res!617783 (= (list!5351 lt!455145) (Cons!13891 t1!34 Nil!13891)))))

(declare-fun singleton!452 (Token!4472) BalanceConc!9086)

(assert (=> d!391057 (= lt!455145 (singleton!452 t1!34))))

(assert (=> d!391057 (= (singletonSeq!1036 t1!34) lt!455145)))

(declare-fun b!1371180 () Bool)

(declare-fun isBalanced!1346 (Conc!4573) Bool)

(assert (=> b!1371180 (= e!876531 (isBalanced!1346 (c!225514 lt!455145)))))

(assert (= (and d!391057 res!617783) b!1371180))

(declare-fun m!1541471 () Bool)

(assert (=> d!391057 m!1541471))

(declare-fun m!1541473 () Bool)

(assert (=> d!391057 m!1541473))

(declare-fun m!1541477 () Bool)

(assert (=> b!1371180 m!1541477))

(assert (=> b!1370760 d!391057))

(declare-fun d!391065 () Bool)

(declare-fun lt!455146 () Bool)

(assert (=> d!391065 (= lt!455146 (select (content!2032 rules!2550) lt!454957))))

(declare-fun e!876533 () Bool)

(assert (=> d!391065 (= lt!455146 e!876533)))

(declare-fun res!617785 () Bool)

(assert (=> d!391065 (=> (not res!617785) (not e!876533))))

(assert (=> d!391065 (= res!617785 ((_ is Cons!13890) rules!2550))))

(assert (=> d!391065 (= (contains!2599 rules!2550 lt!454957) lt!455146)))

(declare-fun b!1371181 () Bool)

(declare-fun e!876532 () Bool)

(assert (=> b!1371181 (= e!876533 e!876532)))

(declare-fun res!617784 () Bool)

(assert (=> b!1371181 (=> res!617784 e!876532)))

(assert (=> b!1371181 (= res!617784 (= (h!19291 rules!2550) lt!454957))))

(declare-fun b!1371182 () Bool)

(assert (=> b!1371182 (= e!876532 (contains!2599 (t!121485 rules!2550) lt!454957))))

(assert (= (and d!391065 res!617785) b!1371181))

(assert (= (and b!1371181 (not res!617784)) b!1371182))

(assert (=> d!391065 m!1541221))

(declare-fun m!1541479 () Bool)

(assert (=> d!391065 m!1541479))

(declare-fun m!1541481 () Bool)

(assert (=> b!1371182 m!1541481))

(assert (=> b!1370762 d!391065))

(declare-fun d!391071 () Bool)

(declare-fun lt!455147 () Bool)

(assert (=> d!391071 (= lt!455147 (select (content!2032 rules!2550) (rule!4160 t2!34)))))

(declare-fun e!876536 () Bool)

(assert (=> d!391071 (= lt!455147 e!876536)))

(declare-fun res!617788 () Bool)

(assert (=> d!391071 (=> (not res!617788) (not e!876536))))

(assert (=> d!391071 (= res!617788 ((_ is Cons!13890) rules!2550))))

(assert (=> d!391071 (= (contains!2599 rules!2550 (rule!4160 t2!34)) lt!455147)))

(declare-fun b!1371184 () Bool)

(declare-fun e!876535 () Bool)

(assert (=> b!1371184 (= e!876536 e!876535)))

(declare-fun res!617787 () Bool)

(assert (=> b!1371184 (=> res!617787 e!876535)))

(assert (=> b!1371184 (= res!617787 (= (h!19291 rules!2550) (rule!4160 t2!34)))))

(declare-fun b!1371185 () Bool)

(assert (=> b!1371185 (= e!876535 (contains!2599 (t!121485 rules!2550) (rule!4160 t2!34)))))

(assert (= (and d!391071 res!617788) b!1371184))

(assert (= (and b!1371184 (not res!617787)) b!1371185))

(assert (=> d!391071 m!1541221))

(declare-fun m!1541487 () Bool)

(assert (=> d!391071 m!1541487))

(declare-fun m!1541489 () Bool)

(assert (=> b!1371185 m!1541489))

(assert (=> b!1370740 d!391071))

(declare-fun b!1371254 () Bool)

(declare-fun e!876573 () Option!2668)

(declare-fun call!92088 () Option!2668)

(assert (=> b!1371254 (= e!876573 call!92088)))

(declare-fun b!1371255 () Bool)

(declare-fun res!617813 () Bool)

(declare-fun e!876575 () Bool)

(assert (=> b!1371255 (=> (not res!617813) (not e!876575))))

(declare-fun lt!455162 () Option!2668)

(declare-fun get!4347 (Option!2668) tuple2!13490)

(assert (=> b!1371255 (= res!617813 (matchR!1712 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))))))

(declare-fun b!1371256 () Bool)

(declare-fun e!876574 () Bool)

(assert (=> b!1371256 (= e!876574 e!876575)))

(declare-fun res!617815 () Bool)

(assert (=> b!1371256 (=> (not res!617815) (not e!876575))))

(declare-fun isDefined!2219 (Option!2668) Bool)

(assert (=> b!1371256 (= res!617815 (isDefined!2219 lt!455162))))

(declare-fun b!1371257 () Bool)

(declare-fun res!617810 () Bool)

(assert (=> b!1371257 (=> (not res!617810) (not e!876575))))

(assert (=> b!1371257 (= res!617810 (= (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162)))) (originalCharacters!3267 (_1!7631 (get!4347 lt!455162)))))))

(declare-fun b!1371258 () Bool)

(assert (=> b!1371258 (= e!876575 (contains!2599 rules!2550 (rule!4160 (_1!7631 (get!4347 lt!455162)))))))

(declare-fun b!1371259 () Bool)

(declare-fun res!617811 () Bool)

(assert (=> b!1371259 (=> (not res!617811) (not e!876575))))

(assert (=> b!1371259 (= res!617811 (< (size!11399 (_2!7631 (get!4347 lt!455162))) (size!11399 (list!5350 lt!454959))))))

(declare-fun b!1371260 () Bool)

(declare-fun res!617814 () Bool)

(assert (=> b!1371260 (=> (not res!617814) (not e!876575))))

(assert (=> b!1371260 (= res!617814 (= (++!3590 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162)))) (_2!7631 (get!4347 lt!455162))) (list!5350 lt!454959)))))

(declare-fun bm!92083 () Bool)

(declare-fun maxPrefixOneRule!617 (LexerInterface!2100 Rule!4610 List!13954) Option!2668)

(assert (=> bm!92083 (= call!92088 (maxPrefixOneRule!617 thiss!19762 (h!19291 rules!2550) (list!5350 lt!454959)))))

(declare-fun d!391075 () Bool)

(assert (=> d!391075 e!876574))

(declare-fun res!617812 () Bool)

(assert (=> d!391075 (=> res!617812 e!876574)))

(declare-fun isEmpty!8380 (Option!2668) Bool)

(assert (=> d!391075 (= res!617812 (isEmpty!8380 lt!455162))))

(assert (=> d!391075 (= lt!455162 e!876573)))

(declare-fun c!225593 () Bool)

(assert (=> d!391075 (= c!225593 (and ((_ is Cons!13890) rules!2550) ((_ is Nil!13890) (t!121485 rules!2550))))))

(declare-fun lt!455158 () Unit!20107)

(declare-fun lt!455159 () Unit!20107)

(assert (=> d!391075 (= lt!455158 lt!455159)))

(declare-fun isPrefix!1129 (List!13954 List!13954) Bool)

(assert (=> d!391075 (isPrefix!1129 (list!5350 lt!454959) (list!5350 lt!454959))))

(declare-fun lemmaIsPrefixRefl!791 (List!13954 List!13954) Unit!20107)

(assert (=> d!391075 (= lt!455159 (lemmaIsPrefixRefl!791 (list!5350 lt!454959) (list!5350 lt!454959)))))

(declare-fun rulesValidInductive!770 (LexerInterface!2100 List!13956) Bool)

(assert (=> d!391075 (rulesValidInductive!770 thiss!19762 rules!2550)))

(assert (=> d!391075 (= (maxPrefix!1082 thiss!19762 rules!2550 (list!5350 lt!454959)) lt!455162)))

(declare-fun b!1371261 () Bool)

(declare-fun res!617816 () Bool)

(assert (=> b!1371261 (=> (not res!617816) (not e!876575))))

(declare-fun apply!3415 (TokenValueInjection!4650 BalanceConc!9084) TokenValue!2495)

(declare-fun seqFromList!1635 (List!13954) BalanceConc!9084)

(assert (=> b!1371261 (= res!617816 (= (value!78175 (_1!7631 (get!4347 lt!455162))) (apply!3415 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455162)))))))))

(declare-fun b!1371262 () Bool)

(declare-fun lt!455161 () Option!2668)

(declare-fun lt!455160 () Option!2668)

(assert (=> b!1371262 (= e!876573 (ite (and ((_ is None!2667) lt!455161) ((_ is None!2667) lt!455160)) None!2667 (ite ((_ is None!2667) lt!455160) lt!455161 (ite ((_ is None!2667) lt!455161) lt!455160 (ite (>= (size!11391 (_1!7631 (v!21471 lt!455161))) (size!11391 (_1!7631 (v!21471 lt!455160)))) lt!455161 lt!455160)))))))

(assert (=> b!1371262 (= lt!455161 call!92088)))

(assert (=> b!1371262 (= lt!455160 (maxPrefix!1082 thiss!19762 (t!121485 rules!2550) (list!5350 lt!454959)))))

(assert (= (and d!391075 c!225593) b!1371254))

(assert (= (and d!391075 (not c!225593)) b!1371262))

(assert (= (or b!1371254 b!1371262) bm!92083))

(assert (= (and d!391075 (not res!617812)) b!1371256))

(assert (= (and b!1371256 res!617815) b!1371257))

(assert (= (and b!1371257 res!617810) b!1371259))

(assert (= (and b!1371259 res!617811) b!1371260))

(assert (= (and b!1371260 res!617814) b!1371261))

(assert (= (and b!1371261 res!617816) b!1371255))

(assert (= (and b!1371255 res!617813) b!1371258))

(declare-fun m!1541523 () Bool)

(assert (=> b!1371261 m!1541523))

(declare-fun m!1541525 () Bool)

(assert (=> b!1371261 m!1541525))

(assert (=> b!1371261 m!1541525))

(declare-fun m!1541527 () Bool)

(assert (=> b!1371261 m!1541527))

(assert (=> b!1371257 m!1541523))

(declare-fun m!1541529 () Bool)

(assert (=> b!1371257 m!1541529))

(assert (=> b!1371257 m!1541529))

(declare-fun m!1541531 () Bool)

(assert (=> b!1371257 m!1541531))

(assert (=> b!1371262 m!1540839))

(declare-fun m!1541533 () Bool)

(assert (=> b!1371262 m!1541533))

(assert (=> b!1371255 m!1541523))

(assert (=> b!1371255 m!1541529))

(assert (=> b!1371255 m!1541529))

(assert (=> b!1371255 m!1541531))

(assert (=> b!1371255 m!1541531))

(declare-fun m!1541535 () Bool)

(assert (=> b!1371255 m!1541535))

(declare-fun m!1541537 () Bool)

(assert (=> d!391075 m!1541537))

(assert (=> d!391075 m!1540839))

(assert (=> d!391075 m!1540839))

(declare-fun m!1541539 () Bool)

(assert (=> d!391075 m!1541539))

(assert (=> d!391075 m!1540839))

(assert (=> d!391075 m!1540839))

(declare-fun m!1541541 () Bool)

(assert (=> d!391075 m!1541541))

(declare-fun m!1541543 () Bool)

(assert (=> d!391075 m!1541543))

(assert (=> b!1371260 m!1541523))

(assert (=> b!1371260 m!1541529))

(assert (=> b!1371260 m!1541529))

(assert (=> b!1371260 m!1541531))

(assert (=> b!1371260 m!1541531))

(declare-fun m!1541545 () Bool)

(assert (=> b!1371260 m!1541545))

(declare-fun m!1541547 () Bool)

(assert (=> b!1371256 m!1541547))

(assert (=> bm!92083 m!1540839))

(declare-fun m!1541549 () Bool)

(assert (=> bm!92083 m!1541549))

(assert (=> b!1371258 m!1541523))

(declare-fun m!1541551 () Bool)

(assert (=> b!1371258 m!1541551))

(assert (=> b!1371259 m!1541523))

(declare-fun m!1541553 () Bool)

(assert (=> b!1371259 m!1541553))

(assert (=> b!1371259 m!1540839))

(assert (=> b!1371259 m!1541147))

(assert (=> b!1370742 d!391075))

(declare-fun d!391097 () Bool)

(declare-fun list!5355 (Conc!4572) List!13954)

(assert (=> d!391097 (= (list!5350 lt!454959) (list!5355 (c!225513 lt!454959)))))

(declare-fun bs!335646 () Bool)

(assert (= bs!335646 d!391097))

(declare-fun m!1541555 () Bool)

(assert (=> bs!335646 m!1541555))

(assert (=> b!1370742 d!391097))

(declare-fun d!391099 () Bool)

(declare-fun res!617821 () Bool)

(declare-fun e!876580 () Bool)

(assert (=> d!391099 (=> res!617821 e!876580)))

(assert (=> d!391099 (= res!617821 (not ((_ is Cons!13890) rules!2550)))))

(assert (=> d!391099 (= (sepAndNonSepRulesDisjointChars!778 rules!2550 rules!2550) e!876580)))

(declare-fun b!1371267 () Bool)

(declare-fun e!876581 () Bool)

(assert (=> b!1371267 (= e!876580 e!876581)))

(declare-fun res!617822 () Bool)

(assert (=> b!1371267 (=> (not res!617822) (not e!876581))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!370 (Rule!4610 List!13956) Bool)

(assert (=> b!1371267 (= res!617822 (ruleDisjointCharsFromAllFromOtherType!370 (h!19291 rules!2550) rules!2550))))

(declare-fun b!1371268 () Bool)

(assert (=> b!1371268 (= e!876581 (sepAndNonSepRulesDisjointChars!778 rules!2550 (t!121485 rules!2550)))))

(assert (= (and d!391099 (not res!617821)) b!1371267))

(assert (= (and b!1371267 res!617822) b!1371268))

(declare-fun m!1541557 () Bool)

(assert (=> b!1371267 m!1541557))

(declare-fun m!1541559 () Bool)

(assert (=> b!1371268 m!1541559))

(assert (=> b!1370763 d!391099))

(declare-fun d!391101 () Bool)

(declare-fun lt!455163 () Bool)

(assert (=> d!391101 (= lt!455163 (select (content!2031 lt!454969) lt!454970))))

(declare-fun e!876582 () Bool)

(assert (=> d!391101 (= lt!455163 e!876582)))

(declare-fun res!617824 () Bool)

(assert (=> d!391101 (=> (not res!617824) (not e!876582))))

(assert (=> d!391101 (= res!617824 ((_ is Cons!13888) lt!454969))))

(assert (=> d!391101 (= (contains!2600 lt!454969 lt!454970) lt!455163)))

(declare-fun b!1371269 () Bool)

(declare-fun e!876583 () Bool)

(assert (=> b!1371269 (= e!876582 e!876583)))

(declare-fun res!617823 () Bool)

(assert (=> b!1371269 (=> res!617823 e!876583)))

(assert (=> b!1371269 (= res!617823 (= (h!19289 lt!454969) lt!454970))))

(declare-fun b!1371270 () Bool)

(assert (=> b!1371270 (= e!876583 (contains!2600 (t!121483 lt!454969) lt!454970))))

(assert (= (and d!391101 res!617824) b!1371269))

(assert (= (and b!1371269 (not res!617823)) b!1371270))

(assert (=> d!391101 m!1541205))

(declare-fun m!1541561 () Bool)

(assert (=> d!391101 m!1541561))

(declare-fun m!1541563 () Bool)

(assert (=> b!1371270 m!1541563))

(assert (=> b!1370743 d!391101))

(declare-fun d!391103 () Bool)

(declare-fun lt!455165 () Bool)

(declare-fun e!876585 () Bool)

(assert (=> d!391103 (= lt!455165 e!876585)))

(declare-fun res!617826 () Bool)

(assert (=> d!391103 (=> (not res!617826) (not e!876585))))

(assert (=> d!391103 (= res!617826 (= (list!5351 (_1!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t1!34))))) (list!5351 (singletonSeq!1036 t1!34))))))

(declare-fun e!876584 () Bool)

(assert (=> d!391103 (= lt!455165 e!876584)))

(declare-fun res!617827 () Bool)

(assert (=> d!391103 (=> (not res!617827) (not e!876584))))

(declare-fun lt!455164 () tuple2!13488)

(assert (=> d!391103 (= res!617827 (= (size!11397 (_1!7630 lt!455164)) 1))))

(assert (=> d!391103 (= lt!455164 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t1!34))))))

(assert (=> d!391103 (not (isEmpty!8371 rules!2550))))

(assert (=> d!391103 (= (rulesProduceIndividualToken!1069 thiss!19762 rules!2550 t1!34) lt!455165)))

(declare-fun b!1371271 () Bool)

(declare-fun res!617825 () Bool)

(assert (=> b!1371271 (=> (not res!617825) (not e!876584))))

(assert (=> b!1371271 (= res!617825 (= (apply!3411 (_1!7630 lt!455164) 0) t1!34))))

(declare-fun b!1371272 () Bool)

(assert (=> b!1371272 (= e!876584 (isEmpty!8370 (_2!7630 lt!455164)))))

(declare-fun b!1371273 () Bool)

(assert (=> b!1371273 (= e!876585 (isEmpty!8370 (_2!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t1!34))))))))

(assert (= (and d!391103 res!617827) b!1371271))

(assert (= (and b!1371271 res!617825) b!1371272))

(assert (= (and d!391103 res!617826) b!1371273))

(assert (=> d!391103 m!1540833))

(assert (=> d!391103 m!1541401))

(assert (=> d!391103 m!1540835))

(declare-fun m!1541565 () Bool)

(assert (=> d!391103 m!1541565))

(assert (=> d!391103 m!1540783))

(assert (=> d!391103 m!1540833))

(assert (=> d!391103 m!1540835))

(declare-fun m!1541567 () Bool)

(assert (=> d!391103 m!1541567))

(assert (=> d!391103 m!1540833))

(declare-fun m!1541569 () Bool)

(assert (=> d!391103 m!1541569))

(declare-fun m!1541571 () Bool)

(assert (=> b!1371271 m!1541571))

(declare-fun m!1541573 () Bool)

(assert (=> b!1371272 m!1541573))

(assert (=> b!1371273 m!1540833))

(assert (=> b!1371273 m!1540833))

(assert (=> b!1371273 m!1540835))

(assert (=> b!1371273 m!1540835))

(assert (=> b!1371273 m!1541565))

(declare-fun m!1541575 () Bool)

(assert (=> b!1371273 m!1541575))

(assert (=> b!1370764 d!391103))

(declare-fun d!391105 () Bool)

(declare-fun c!225594 () Bool)

(assert (=> d!391105 (= c!225594 ((_ is IntegerValue!7485) (value!78175 t1!34)))))

(declare-fun e!876587 () Bool)

(assert (=> d!391105 (= (inv!21 (value!78175 t1!34)) e!876587)))

(declare-fun b!1371274 () Bool)

(declare-fun res!617828 () Bool)

(declare-fun e!876586 () Bool)

(assert (=> b!1371274 (=> res!617828 e!876586)))

(assert (=> b!1371274 (= res!617828 (not ((_ is IntegerValue!7487) (value!78175 t1!34))))))

(declare-fun e!876588 () Bool)

(assert (=> b!1371274 (= e!876588 e!876586)))

(declare-fun b!1371275 () Bool)

(assert (=> b!1371275 (= e!876586 (inv!15 (value!78175 t1!34)))))

(declare-fun b!1371276 () Bool)

(assert (=> b!1371276 (= e!876587 e!876588)))

(declare-fun c!225595 () Bool)

(assert (=> b!1371276 (= c!225595 ((_ is IntegerValue!7486) (value!78175 t1!34)))))

(declare-fun b!1371277 () Bool)

(assert (=> b!1371277 (= e!876588 (inv!17 (value!78175 t1!34)))))

(declare-fun b!1371278 () Bool)

(assert (=> b!1371278 (= e!876587 (inv!16 (value!78175 t1!34)))))

(assert (= (and d!391105 c!225594) b!1371278))

(assert (= (and d!391105 (not c!225594)) b!1371276))

(assert (= (and b!1371276 c!225595) b!1371277))

(assert (= (and b!1371276 (not c!225595)) b!1371274))

(assert (= (and b!1371274 (not res!617828)) b!1371275))

(declare-fun m!1541577 () Bool)

(assert (=> b!1371275 m!1541577))

(declare-fun m!1541579 () Bool)

(assert (=> b!1371277 m!1541579))

(declare-fun m!1541581 () Bool)

(assert (=> b!1371278 m!1541581))

(assert (=> b!1370734 d!391105))

(declare-fun d!391107 () Bool)

(declare-fun lt!455166 () Bool)

(assert (=> d!391107 (= lt!455166 (select (content!2031 lt!454960) lt!454955))))

(declare-fun e!876589 () Bool)

(assert (=> d!391107 (= lt!455166 e!876589)))

(declare-fun res!617830 () Bool)

(assert (=> d!391107 (=> (not res!617830) (not e!876589))))

(assert (=> d!391107 (= res!617830 ((_ is Cons!13888) lt!454960))))

(assert (=> d!391107 (= (contains!2600 lt!454960 lt!454955) lt!455166)))

(declare-fun b!1371279 () Bool)

(declare-fun e!876590 () Bool)

(assert (=> b!1371279 (= e!876589 e!876590)))

(declare-fun res!617829 () Bool)

(assert (=> b!1371279 (=> res!617829 e!876590)))

(assert (=> b!1371279 (= res!617829 (= (h!19289 lt!454960) lt!454955))))

(declare-fun b!1371280 () Bool)

(assert (=> b!1371280 (= e!876590 (contains!2600 (t!121483 lt!454960) lt!454955))))

(assert (= (and d!391107 res!617830) b!1371279))

(assert (= (and b!1371279 (not res!617829)) b!1371280))

(declare-fun m!1541583 () Bool)

(assert (=> d!391107 m!1541583))

(declare-fun m!1541585 () Bool)

(assert (=> d!391107 m!1541585))

(declare-fun m!1541587 () Bool)

(assert (=> b!1371280 m!1541587))

(assert (=> b!1370755 d!391107))

(declare-fun b!1371309 () Bool)

(declare-fun res!617854 () Bool)

(declare-fun e!876606 () Bool)

(assert (=> b!1371309 (=> res!617854 e!876606)))

(assert (=> b!1371309 (= res!617854 (not ((_ is ElementMatch!3719) (regex!2405 (rule!4160 t1!34)))))))

(declare-fun e!876607 () Bool)

(assert (=> b!1371309 (= e!876607 e!876606)))

(declare-fun b!1371310 () Bool)

(declare-fun lt!455169 () Bool)

(assert (=> b!1371310 (= e!876607 (not lt!455169))))

(declare-fun b!1371311 () Bool)

(declare-fun res!617852 () Bool)

(declare-fun e!876611 () Bool)

(assert (=> b!1371311 (=> (not res!617852) (not e!876611))))

(declare-fun call!92091 () Bool)

(assert (=> b!1371311 (= res!617852 (not call!92091))))

(declare-fun d!391109 () Bool)

(declare-fun e!876608 () Bool)

(assert (=> d!391109 e!876608))

(declare-fun c!225603 () Bool)

(assert (=> d!391109 (= c!225603 ((_ is EmptyExpr!3719) (regex!2405 (rule!4160 t1!34))))))

(declare-fun e!876609 () Bool)

(assert (=> d!391109 (= lt!455169 e!876609)))

(declare-fun c!225602 () Bool)

(assert (=> d!391109 (= c!225602 (isEmpty!8376 lt!454961))))

(declare-fun validRegex!1619 (Regex!3719) Bool)

(assert (=> d!391109 (validRegex!1619 (regex!2405 (rule!4160 t1!34)))))

(assert (=> d!391109 (= (matchR!1712 (regex!2405 (rule!4160 t1!34)) lt!454961) lt!455169)))

(declare-fun bm!92086 () Bool)

(assert (=> bm!92086 (= call!92091 (isEmpty!8376 lt!454961))))

(declare-fun b!1371312 () Bool)

(assert (=> b!1371312 (= e!876608 e!876607)))

(declare-fun c!225604 () Bool)

(assert (=> b!1371312 (= c!225604 ((_ is EmptyLang!3719) (regex!2405 (rule!4160 t1!34))))))

(declare-fun b!1371313 () Bool)

(declare-fun e!876605 () Bool)

(assert (=> b!1371313 (= e!876606 e!876605)))

(declare-fun res!617850 () Bool)

(assert (=> b!1371313 (=> (not res!617850) (not e!876605))))

(assert (=> b!1371313 (= res!617850 (not lt!455169))))

(declare-fun b!1371314 () Bool)

(declare-fun e!876610 () Bool)

(declare-fun head!2469 (List!13954) C!7728)

(assert (=> b!1371314 (= e!876610 (not (= (head!2469 lt!454961) (c!225512 (regex!2405 (rule!4160 t1!34))))))))

(declare-fun b!1371315 () Bool)

(assert (=> b!1371315 (= e!876608 (= lt!455169 call!92091))))

(declare-fun b!1371316 () Bool)

(assert (=> b!1371316 (= e!876605 e!876610)))

(declare-fun res!617847 () Bool)

(assert (=> b!1371316 (=> res!617847 e!876610)))

(assert (=> b!1371316 (= res!617847 call!92091)))

(declare-fun b!1371317 () Bool)

(declare-fun nullable!1199 (Regex!3719) Bool)

(assert (=> b!1371317 (= e!876609 (nullable!1199 (regex!2405 (rule!4160 t1!34))))))

(declare-fun b!1371318 () Bool)

(assert (=> b!1371318 (= e!876611 (= (head!2469 lt!454961) (c!225512 (regex!2405 (rule!4160 t1!34)))))))

(declare-fun b!1371319 () Bool)

(declare-fun res!617849 () Bool)

(assert (=> b!1371319 (=> res!617849 e!876610)))

(declare-fun tail!1982 (List!13954) List!13954)

(assert (=> b!1371319 (= res!617849 (not (isEmpty!8376 (tail!1982 lt!454961))))))

(declare-fun b!1371320 () Bool)

(declare-fun res!617853 () Bool)

(assert (=> b!1371320 (=> res!617853 e!876606)))

(assert (=> b!1371320 (= res!617853 e!876611)))

(declare-fun res!617851 () Bool)

(assert (=> b!1371320 (=> (not res!617851) (not e!876611))))

(assert (=> b!1371320 (= res!617851 lt!455169)))

(declare-fun b!1371321 () Bool)

(declare-fun derivativeStep!957 (Regex!3719 C!7728) Regex!3719)

(assert (=> b!1371321 (= e!876609 (matchR!1712 (derivativeStep!957 (regex!2405 (rule!4160 t1!34)) (head!2469 lt!454961)) (tail!1982 lt!454961)))))

(declare-fun b!1371322 () Bool)

(declare-fun res!617848 () Bool)

(assert (=> b!1371322 (=> (not res!617848) (not e!876611))))

(assert (=> b!1371322 (= res!617848 (isEmpty!8376 (tail!1982 lt!454961)))))

(assert (= (and d!391109 c!225602) b!1371317))

(assert (= (and d!391109 (not c!225602)) b!1371321))

(assert (= (and d!391109 c!225603) b!1371315))

(assert (= (and d!391109 (not c!225603)) b!1371312))

(assert (= (and b!1371312 c!225604) b!1371310))

(assert (= (and b!1371312 (not c!225604)) b!1371309))

(assert (= (and b!1371309 (not res!617854)) b!1371320))

(assert (= (and b!1371320 res!617851) b!1371311))

(assert (= (and b!1371311 res!617852) b!1371322))

(assert (= (and b!1371322 res!617848) b!1371318))

(assert (= (and b!1371320 (not res!617853)) b!1371313))

(assert (= (and b!1371313 res!617850) b!1371316))

(assert (= (and b!1371316 (not res!617847)) b!1371319))

(assert (= (and b!1371319 (not res!617849)) b!1371314))

(assert (= (or b!1371315 b!1371311 b!1371316) bm!92086))

(declare-fun m!1541589 () Bool)

(assert (=> b!1371317 m!1541589))

(declare-fun m!1541591 () Bool)

(assert (=> bm!92086 m!1541591))

(assert (=> d!391109 m!1541591))

(declare-fun m!1541593 () Bool)

(assert (=> d!391109 m!1541593))

(declare-fun m!1541595 () Bool)

(assert (=> b!1371321 m!1541595))

(assert (=> b!1371321 m!1541595))

(declare-fun m!1541597 () Bool)

(assert (=> b!1371321 m!1541597))

(declare-fun m!1541599 () Bool)

(assert (=> b!1371321 m!1541599))

(assert (=> b!1371321 m!1541597))

(assert (=> b!1371321 m!1541599))

(declare-fun m!1541601 () Bool)

(assert (=> b!1371321 m!1541601))

(assert (=> b!1371322 m!1541599))

(assert (=> b!1371322 m!1541599))

(declare-fun m!1541603 () Bool)

(assert (=> b!1371322 m!1541603))

(assert (=> b!1371319 m!1541599))

(assert (=> b!1371319 m!1541599))

(assert (=> b!1371319 m!1541603))

(assert (=> b!1371318 m!1541595))

(assert (=> b!1371314 m!1541595))

(assert (=> b!1370757 d!391109))

(declare-fun d!391111 () Bool)

(assert (=> d!391111 (dynLambda!6311 lambda!58187 (rule!4160 t2!34))))

(declare-fun lt!455172 () Unit!20107)

(declare-fun choose!8439 (List!13956 Int Rule!4610) Unit!20107)

(assert (=> d!391111 (= lt!455172 (choose!8439 rules!2550 lambda!58187 (rule!4160 t2!34)))))

(declare-fun e!876614 () Bool)

(assert (=> d!391111 e!876614))

(declare-fun res!617857 () Bool)

(assert (=> d!391111 (=> (not res!617857) (not e!876614))))

(assert (=> d!391111 (= res!617857 (forall!3396 rules!2550 lambda!58187))))

(assert (=> d!391111 (= (forallContained!608 rules!2550 lambda!58187 (rule!4160 t2!34)) lt!455172)))

(declare-fun b!1371325 () Bool)

(assert (=> b!1371325 (= e!876614 (contains!2599 rules!2550 (rule!4160 t2!34)))))

(assert (= (and d!391111 res!617857) b!1371325))

(declare-fun b_lambda!41949 () Bool)

(assert (=> (not b_lambda!41949) (not d!391111)))

(declare-fun m!1541605 () Bool)

(assert (=> d!391111 m!1541605))

(declare-fun m!1541607 () Bool)

(assert (=> d!391111 m!1541607))

(declare-fun m!1541609 () Bool)

(assert (=> d!391111 m!1541609))

(assert (=> b!1371325 m!1540807))

(assert (=> b!1370757 d!391111))

(declare-fun d!391113 () Bool)

(assert (=> d!391113 (dynLambda!6311 lambda!58187 (rule!4160 t1!34))))

(declare-fun lt!455173 () Unit!20107)

(assert (=> d!391113 (= lt!455173 (choose!8439 rules!2550 lambda!58187 (rule!4160 t1!34)))))

(declare-fun e!876615 () Bool)

(assert (=> d!391113 e!876615))

(declare-fun res!617858 () Bool)

(assert (=> d!391113 (=> (not res!617858) (not e!876615))))

(assert (=> d!391113 (= res!617858 (forall!3396 rules!2550 lambda!58187))))

(assert (=> d!391113 (= (forallContained!608 rules!2550 lambda!58187 (rule!4160 t1!34)) lt!455173)))

(declare-fun b!1371326 () Bool)

(assert (=> b!1371326 (= e!876615 (contains!2599 rules!2550 (rule!4160 t1!34)))))

(assert (= (and d!391113 res!617858) b!1371326))

(declare-fun b_lambda!41951 () Bool)

(assert (=> (not b_lambda!41951) (not d!391113)))

(declare-fun m!1541611 () Bool)

(assert (=> d!391113 m!1541611))

(declare-fun m!1541613 () Bool)

(assert (=> d!391113 m!1541613))

(assert (=> d!391113 m!1541609))

(assert (=> b!1371326 m!1540809))

(assert (=> b!1370757 d!391113))

(declare-fun d!391115 () Bool)

(assert (=> d!391115 (dynLambda!6311 lambda!58187 lt!454957)))

(declare-fun lt!455174 () Unit!20107)

(assert (=> d!391115 (= lt!455174 (choose!8439 rules!2550 lambda!58187 lt!454957))))

(declare-fun e!876616 () Bool)

(assert (=> d!391115 e!876616))

(declare-fun res!617859 () Bool)

(assert (=> d!391115 (=> (not res!617859) (not e!876616))))

(assert (=> d!391115 (= res!617859 (forall!3396 rules!2550 lambda!58187))))

(assert (=> d!391115 (= (forallContained!608 rules!2550 lambda!58187 lt!454957) lt!455174)))

(declare-fun b!1371327 () Bool)

(assert (=> b!1371327 (= e!876616 (contains!2599 rules!2550 lt!454957))))

(assert (= (and d!391115 res!617859) b!1371327))

(declare-fun b_lambda!41953 () Bool)

(assert (=> (not b_lambda!41953) (not d!391115)))

(declare-fun m!1541615 () Bool)

(assert (=> d!391115 m!1541615))

(declare-fun m!1541617 () Bool)

(assert (=> d!391115 m!1541617))

(assert (=> d!391115 m!1541609))

(assert (=> b!1371327 m!1540819))

(assert (=> b!1370757 d!391115))

(declare-fun b!1371328 () Bool)

(declare-fun res!617867 () Bool)

(declare-fun e!876618 () Bool)

(assert (=> b!1371328 (=> res!617867 e!876618)))

(assert (=> b!1371328 (= res!617867 (not ((_ is ElementMatch!3719) lt!454967)))))

(declare-fun e!876619 () Bool)

(assert (=> b!1371328 (= e!876619 e!876618)))

(declare-fun b!1371329 () Bool)

(declare-fun lt!455175 () Bool)

(assert (=> b!1371329 (= e!876619 (not lt!455175))))

(declare-fun b!1371330 () Bool)

(declare-fun res!617865 () Bool)

(declare-fun e!876623 () Bool)

(assert (=> b!1371330 (=> (not res!617865) (not e!876623))))

(declare-fun call!92092 () Bool)

(assert (=> b!1371330 (= res!617865 (not call!92092))))

(declare-fun d!391117 () Bool)

(declare-fun e!876620 () Bool)

(assert (=> d!391117 e!876620))

(declare-fun c!225606 () Bool)

(assert (=> d!391117 (= c!225606 ((_ is EmptyExpr!3719) lt!454967))))

(declare-fun e!876621 () Bool)

(assert (=> d!391117 (= lt!455175 e!876621)))

(declare-fun c!225605 () Bool)

(assert (=> d!391117 (= c!225605 (isEmpty!8376 lt!454960))))

(assert (=> d!391117 (validRegex!1619 lt!454967)))

(assert (=> d!391117 (= (matchR!1712 lt!454967 lt!454960) lt!455175)))

(declare-fun bm!92087 () Bool)

(assert (=> bm!92087 (= call!92092 (isEmpty!8376 lt!454960))))

(declare-fun b!1371331 () Bool)

(assert (=> b!1371331 (= e!876620 e!876619)))

(declare-fun c!225607 () Bool)

(assert (=> b!1371331 (= c!225607 ((_ is EmptyLang!3719) lt!454967))))

(declare-fun b!1371332 () Bool)

(declare-fun e!876617 () Bool)

(assert (=> b!1371332 (= e!876618 e!876617)))

(declare-fun res!617863 () Bool)

(assert (=> b!1371332 (=> (not res!617863) (not e!876617))))

(assert (=> b!1371332 (= res!617863 (not lt!455175))))

(declare-fun b!1371333 () Bool)

(declare-fun e!876622 () Bool)

(assert (=> b!1371333 (= e!876622 (not (= (head!2469 lt!454960) (c!225512 lt!454967))))))

(declare-fun b!1371334 () Bool)

(assert (=> b!1371334 (= e!876620 (= lt!455175 call!92092))))

(declare-fun b!1371335 () Bool)

(assert (=> b!1371335 (= e!876617 e!876622)))

(declare-fun res!617860 () Bool)

(assert (=> b!1371335 (=> res!617860 e!876622)))

(assert (=> b!1371335 (= res!617860 call!92092)))

(declare-fun b!1371336 () Bool)

(assert (=> b!1371336 (= e!876621 (nullable!1199 lt!454967))))

(declare-fun b!1371337 () Bool)

(assert (=> b!1371337 (= e!876623 (= (head!2469 lt!454960) (c!225512 lt!454967)))))

(declare-fun b!1371338 () Bool)

(declare-fun res!617862 () Bool)

(assert (=> b!1371338 (=> res!617862 e!876622)))

(assert (=> b!1371338 (= res!617862 (not (isEmpty!8376 (tail!1982 lt!454960))))))

(declare-fun b!1371339 () Bool)

(declare-fun res!617866 () Bool)

(assert (=> b!1371339 (=> res!617866 e!876618)))

(assert (=> b!1371339 (= res!617866 e!876623)))

(declare-fun res!617864 () Bool)

(assert (=> b!1371339 (=> (not res!617864) (not e!876623))))

(assert (=> b!1371339 (= res!617864 lt!455175)))

(declare-fun b!1371340 () Bool)

(assert (=> b!1371340 (= e!876621 (matchR!1712 (derivativeStep!957 lt!454967 (head!2469 lt!454960)) (tail!1982 lt!454960)))))

(declare-fun b!1371341 () Bool)

(declare-fun res!617861 () Bool)

(assert (=> b!1371341 (=> (not res!617861) (not e!876623))))

(assert (=> b!1371341 (= res!617861 (isEmpty!8376 (tail!1982 lt!454960)))))

(assert (= (and d!391117 c!225605) b!1371336))

(assert (= (and d!391117 (not c!225605)) b!1371340))

(assert (= (and d!391117 c!225606) b!1371334))

(assert (= (and d!391117 (not c!225606)) b!1371331))

(assert (= (and b!1371331 c!225607) b!1371329))

(assert (= (and b!1371331 (not c!225607)) b!1371328))

(assert (= (and b!1371328 (not res!617867)) b!1371339))

(assert (= (and b!1371339 res!617864) b!1371330))

(assert (= (and b!1371330 res!617865) b!1371341))

(assert (= (and b!1371341 res!617861) b!1371337))

(assert (= (and b!1371339 (not res!617866)) b!1371332))

(assert (= (and b!1371332 res!617863) b!1371335))

(assert (= (and b!1371335 (not res!617860)) b!1371338))

(assert (= (and b!1371338 (not res!617862)) b!1371333))

(assert (= (or b!1371334 b!1371330 b!1371335) bm!92087))

(declare-fun m!1541619 () Bool)

(assert (=> b!1371336 m!1541619))

(declare-fun m!1541621 () Bool)

(assert (=> bm!92087 m!1541621))

(assert (=> d!391117 m!1541621))

(declare-fun m!1541623 () Bool)

(assert (=> d!391117 m!1541623))

(declare-fun m!1541625 () Bool)

(assert (=> b!1371340 m!1541625))

(assert (=> b!1371340 m!1541625))

(declare-fun m!1541627 () Bool)

(assert (=> b!1371340 m!1541627))

(declare-fun m!1541629 () Bool)

(assert (=> b!1371340 m!1541629))

(assert (=> b!1371340 m!1541627))

(assert (=> b!1371340 m!1541629))

(declare-fun m!1541631 () Bool)

(assert (=> b!1371340 m!1541631))

(assert (=> b!1371341 m!1541629))

(assert (=> b!1371341 m!1541629))

(declare-fun m!1541633 () Bool)

(assert (=> b!1371341 m!1541633))

(assert (=> b!1371338 m!1541629))

(assert (=> b!1371338 m!1541629))

(assert (=> b!1371338 m!1541633))

(assert (=> b!1371337 m!1541625))

(assert (=> b!1371333 m!1541625))

(assert (=> b!1370735 d!391117))

(declare-fun d!391119 () Bool)

(declare-fun choose!8440 (Int) Bool)

(assert (=> d!391119 (= (Exists!871 lambda!58183) (choose!8440 lambda!58183))))

(declare-fun bs!335647 () Bool)

(assert (= bs!335647 d!391119))

(declare-fun m!1541635 () Bool)

(assert (=> bs!335647 m!1541635))

(assert (=> b!1370737 d!391119))

(declare-fun bs!335648 () Bool)

(declare-fun d!391121 () Bool)

(assert (= bs!335648 (and d!391121 b!1370737)))

(declare-fun lambda!58218 () Int)

(assert (=> bs!335648 (= lambda!58218 lambda!58183)))

(assert (=> d!391121 true))

(assert (=> d!391121 true))

(assert (=> d!391121 (Exists!871 lambda!58218)))

(declare-fun lt!455178 () Unit!20107)

(declare-fun choose!8441 (Regex!3719 List!13954) Unit!20107)

(assert (=> d!391121 (= lt!455178 (choose!8441 lt!454967 lt!454969))))

(assert (=> d!391121 (validRegex!1619 lt!454967)))

(assert (=> d!391121 (= (lemmaPrefixMatchThenExistsStringThatMatches!189 lt!454967 lt!454969) lt!455178)))

(declare-fun bs!335649 () Bool)

(assert (= bs!335649 d!391121))

(declare-fun m!1541637 () Bool)

(assert (=> bs!335649 m!1541637))

(declare-fun m!1541639 () Bool)

(assert (=> bs!335649 m!1541639))

(assert (=> bs!335649 m!1541623))

(assert (=> b!1370737 d!391121))

(declare-fun b!1371344 () Bool)

(declare-fun e!876626 () Option!2668)

(declare-fun call!92093 () Option!2668)

(assert (=> b!1371344 (= e!876626 call!92093)))

(declare-fun b!1371345 () Bool)

(declare-fun res!617873 () Bool)

(declare-fun e!876628 () Bool)

(assert (=> b!1371345 (=> (not res!617873) (not e!876628))))

(declare-fun lt!455183 () Option!2668)

(assert (=> b!1371345 (= res!617873 (matchR!1712 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))))))

(declare-fun b!1371346 () Bool)

(declare-fun e!876627 () Bool)

(assert (=> b!1371346 (= e!876627 e!876628)))

(declare-fun res!617875 () Bool)

(assert (=> b!1371346 (=> (not res!617875) (not e!876628))))

(assert (=> b!1371346 (= res!617875 (isDefined!2219 lt!455183))))

(declare-fun b!1371347 () Bool)

(declare-fun res!617870 () Bool)

(assert (=> b!1371347 (=> (not res!617870) (not e!876628))))

(assert (=> b!1371347 (= res!617870 (= (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183)))) (originalCharacters!3267 (_1!7631 (get!4347 lt!455183)))))))

(declare-fun b!1371348 () Bool)

(assert (=> b!1371348 (= e!876628 (contains!2599 rules!2550 (rule!4160 (_1!7631 (get!4347 lt!455183)))))))

(declare-fun b!1371349 () Bool)

(declare-fun res!617871 () Bool)

(assert (=> b!1371349 (=> (not res!617871) (not e!876628))))

(assert (=> b!1371349 (= res!617871 (< (size!11399 (_2!7631 (get!4347 lt!455183))) (size!11399 lt!454961)))))

(declare-fun b!1371350 () Bool)

(declare-fun res!617874 () Bool)

(assert (=> b!1371350 (=> (not res!617874) (not e!876628))))

(assert (=> b!1371350 (= res!617874 (= (++!3590 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183)))) (_2!7631 (get!4347 lt!455183))) lt!454961))))

(declare-fun bm!92088 () Bool)

(assert (=> bm!92088 (= call!92093 (maxPrefixOneRule!617 thiss!19762 (h!19291 rules!2550) lt!454961))))

(declare-fun d!391123 () Bool)

(assert (=> d!391123 e!876627))

(declare-fun res!617872 () Bool)

(assert (=> d!391123 (=> res!617872 e!876627)))

(assert (=> d!391123 (= res!617872 (isEmpty!8380 lt!455183))))

(assert (=> d!391123 (= lt!455183 e!876626)))

(declare-fun c!225608 () Bool)

(assert (=> d!391123 (= c!225608 (and ((_ is Cons!13890) rules!2550) ((_ is Nil!13890) (t!121485 rules!2550))))))

(declare-fun lt!455179 () Unit!20107)

(declare-fun lt!455180 () Unit!20107)

(assert (=> d!391123 (= lt!455179 lt!455180)))

(assert (=> d!391123 (isPrefix!1129 lt!454961 lt!454961)))

(assert (=> d!391123 (= lt!455180 (lemmaIsPrefixRefl!791 lt!454961 lt!454961))))

(assert (=> d!391123 (rulesValidInductive!770 thiss!19762 rules!2550)))

(assert (=> d!391123 (= (maxPrefix!1082 thiss!19762 rules!2550 lt!454961) lt!455183)))

(declare-fun b!1371351 () Bool)

(declare-fun res!617876 () Bool)

(assert (=> b!1371351 (=> (not res!617876) (not e!876628))))

(assert (=> b!1371351 (= res!617876 (= (value!78175 (_1!7631 (get!4347 lt!455183))) (apply!3415 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455183)))))))))

(declare-fun b!1371352 () Bool)

(declare-fun lt!455182 () Option!2668)

(declare-fun lt!455181 () Option!2668)

(assert (=> b!1371352 (= e!876626 (ite (and ((_ is None!2667) lt!455182) ((_ is None!2667) lt!455181)) None!2667 (ite ((_ is None!2667) lt!455181) lt!455182 (ite ((_ is None!2667) lt!455182) lt!455181 (ite (>= (size!11391 (_1!7631 (v!21471 lt!455182))) (size!11391 (_1!7631 (v!21471 lt!455181)))) lt!455182 lt!455181)))))))

(assert (=> b!1371352 (= lt!455182 call!92093)))

(assert (=> b!1371352 (= lt!455181 (maxPrefix!1082 thiss!19762 (t!121485 rules!2550) lt!454961))))

(assert (= (and d!391123 c!225608) b!1371344))

(assert (= (and d!391123 (not c!225608)) b!1371352))

(assert (= (or b!1371344 b!1371352) bm!92088))

(assert (= (and d!391123 (not res!617872)) b!1371346))

(assert (= (and b!1371346 res!617875) b!1371347))

(assert (= (and b!1371347 res!617870) b!1371349))

(assert (= (and b!1371349 res!617871) b!1371350))

(assert (= (and b!1371350 res!617874) b!1371351))

(assert (= (and b!1371351 res!617876) b!1371345))

(assert (= (and b!1371345 res!617873) b!1371348))

(declare-fun m!1541641 () Bool)

(assert (=> b!1371351 m!1541641))

(declare-fun m!1541643 () Bool)

(assert (=> b!1371351 m!1541643))

(assert (=> b!1371351 m!1541643))

(declare-fun m!1541645 () Bool)

(assert (=> b!1371351 m!1541645))

(assert (=> b!1371347 m!1541641))

(declare-fun m!1541647 () Bool)

(assert (=> b!1371347 m!1541647))

(assert (=> b!1371347 m!1541647))

(declare-fun m!1541649 () Bool)

(assert (=> b!1371347 m!1541649))

(declare-fun m!1541651 () Bool)

(assert (=> b!1371352 m!1541651))

(assert (=> b!1371345 m!1541641))

(assert (=> b!1371345 m!1541647))

(assert (=> b!1371345 m!1541647))

(assert (=> b!1371345 m!1541649))

(assert (=> b!1371345 m!1541649))

(declare-fun m!1541653 () Bool)

(assert (=> b!1371345 m!1541653))

(declare-fun m!1541655 () Bool)

(assert (=> d!391123 m!1541655))

(declare-fun m!1541657 () Bool)

(assert (=> d!391123 m!1541657))

(declare-fun m!1541659 () Bool)

(assert (=> d!391123 m!1541659))

(assert (=> d!391123 m!1541543))

(assert (=> b!1371350 m!1541641))

(assert (=> b!1371350 m!1541647))

(assert (=> b!1371350 m!1541647))

(assert (=> b!1371350 m!1541649))

(assert (=> b!1371350 m!1541649))

(declare-fun m!1541661 () Bool)

(assert (=> b!1371350 m!1541661))

(declare-fun m!1541663 () Bool)

(assert (=> b!1371346 m!1541663))

(declare-fun m!1541665 () Bool)

(assert (=> bm!92088 m!1541665))

(assert (=> b!1371348 m!1541641))

(declare-fun m!1541667 () Bool)

(assert (=> b!1371348 m!1541667))

(assert (=> b!1371349 m!1541641))

(declare-fun m!1541669 () Bool)

(assert (=> b!1371349 m!1541669))

(declare-fun m!1541671 () Bool)

(assert (=> b!1371349 m!1541671))

(assert (=> b!1370758 d!391123))

(declare-fun b!1371363 () Bool)

(declare-fun e!876636 () tuple2!13486)

(assert (=> b!1371363 (= e!876636 (tuple2!13487 Nil!13891 (list!5350 lt!454956)))))

(declare-fun b!1371364 () Bool)

(declare-fun lt!455191 () Option!2668)

(declare-fun lt!455192 () tuple2!13486)

(assert (=> b!1371364 (= e!876636 (tuple2!13487 (Cons!13891 (_1!7631 (v!21471 lt!455191)) (_1!7629 lt!455192)) (_2!7629 lt!455192)))))

(assert (=> b!1371364 (= lt!455192 (lexList!618 thiss!19762 rules!2550 (_2!7631 (v!21471 lt!455191))))))

(declare-fun b!1371365 () Bool)

(declare-fun e!876637 () Bool)

(declare-fun lt!455190 () tuple2!13486)

(declare-fun isEmpty!8381 (List!13957) Bool)

(assert (=> b!1371365 (= e!876637 (not (isEmpty!8381 (_1!7629 lt!455190))))))

(declare-fun b!1371366 () Bool)

(declare-fun e!876635 () Bool)

(assert (=> b!1371366 (= e!876635 e!876637)))

(declare-fun res!617879 () Bool)

(assert (=> b!1371366 (= res!617879 (< (size!11399 (_2!7629 lt!455190)) (size!11399 (list!5350 lt!454956))))))

(assert (=> b!1371366 (=> (not res!617879) (not e!876637))))

(declare-fun b!1371367 () Bool)

(assert (=> b!1371367 (= e!876635 (= (_2!7629 lt!455190) (list!5350 lt!454956)))))

(declare-fun d!391125 () Bool)

(assert (=> d!391125 e!876635))

(declare-fun c!225614 () Bool)

(declare-fun size!11402 (List!13957) Int)

(assert (=> d!391125 (= c!225614 (> (size!11402 (_1!7629 lt!455190)) 0))))

(assert (=> d!391125 (= lt!455190 e!876636)))

(declare-fun c!225613 () Bool)

(assert (=> d!391125 (= c!225613 ((_ is Some!2667) lt!455191))))

(assert (=> d!391125 (= lt!455191 (maxPrefix!1082 thiss!19762 rules!2550 (list!5350 lt!454956)))))

(assert (=> d!391125 (= (lexList!618 thiss!19762 rules!2550 (list!5350 lt!454956)) lt!455190)))

(assert (= (and d!391125 c!225613) b!1371364))

(assert (= (and d!391125 (not c!225613)) b!1371363))

(assert (= (and d!391125 c!225614) b!1371366))

(assert (= (and d!391125 (not c!225614)) b!1371367))

(assert (= (and b!1371366 res!617879) b!1371365))

(declare-fun m!1541673 () Bool)

(assert (=> b!1371364 m!1541673))

(declare-fun m!1541675 () Bool)

(assert (=> b!1371365 m!1541675))

(declare-fun m!1541677 () Bool)

(assert (=> b!1371366 m!1541677))

(assert (=> b!1371366 m!1540785))

(declare-fun m!1541679 () Bool)

(assert (=> b!1371366 m!1541679))

(declare-fun m!1541681 () Bool)

(assert (=> d!391125 m!1541681))

(assert (=> d!391125 m!1540785))

(declare-fun m!1541683 () Bool)

(assert (=> d!391125 m!1541683))

(assert (=> b!1370736 d!391125))

(declare-fun d!391127 () Bool)

(assert (=> d!391127 (= (list!5350 lt!454956) (list!5355 (c!225513 lt!454956)))))

(declare-fun bs!335650 () Bool)

(assert (= bs!335650 d!391127))

(declare-fun m!1541685 () Bool)

(assert (=> bs!335650 m!1541685))

(assert (=> b!1370736 d!391127))

(declare-fun d!391129 () Bool)

(assert (=> d!391129 (= (list!5351 (_1!7630 lt!454965)) (list!5354 (c!225514 (_1!7630 lt!454965))))))

(declare-fun bs!335651 () Bool)

(assert (= bs!335651 d!391129))

(declare-fun m!1541687 () Bool)

(assert (=> bs!335651 m!1541687))

(assert (=> b!1370738 d!391129))

(declare-fun b!1371368 () Bool)

(declare-fun res!617880 () Bool)

(declare-fun e!876640 () Bool)

(assert (=> b!1371368 (=> (not res!617880) (not e!876640))))

(declare-fun lt!455193 () tuple2!13488)

(assert (=> b!1371368 (= res!617880 (= (list!5351 (_1!7630 lt!455193)) (_1!7629 (lexList!618 thiss!19762 rules!2550 (list!5350 lt!454972)))))))

(declare-fun b!1371369 () Bool)

(declare-fun e!876638 () Bool)

(assert (=> b!1371369 (= e!876638 (not (isEmpty!8378 (_1!7630 lt!455193))))))

(declare-fun b!1371370 () Bool)

(assert (=> b!1371370 (= e!876640 (= (list!5350 (_2!7630 lt!455193)) (_2!7629 (lexList!618 thiss!19762 rules!2550 (list!5350 lt!454972)))))))

(declare-fun b!1371371 () Bool)

(declare-fun e!876639 () Bool)

(assert (=> b!1371371 (= e!876639 e!876638)))

(declare-fun res!617882 () Bool)

(assert (=> b!1371371 (= res!617882 (< (size!11392 (_2!7630 lt!455193)) (size!11392 lt!454972)))))

(assert (=> b!1371371 (=> (not res!617882) (not e!876638))))

(declare-fun b!1371372 () Bool)

(assert (=> b!1371372 (= e!876639 (= (_2!7630 lt!455193) lt!454972))))

(declare-fun d!391131 () Bool)

(assert (=> d!391131 e!876640))

(declare-fun res!617881 () Bool)

(assert (=> d!391131 (=> (not res!617881) (not e!876640))))

(assert (=> d!391131 (= res!617881 e!876639)))

(declare-fun c!225615 () Bool)

(assert (=> d!391131 (= c!225615 (> (size!11397 (_1!7630 lt!455193)) 0))))

(assert (=> d!391131 (= lt!455193 (lexTailRecV2!413 thiss!19762 rules!2550 lt!454972 (BalanceConc!9085 Empty!4572) lt!454972 (BalanceConc!9087 Empty!4573)))))

(assert (=> d!391131 (= (lex!927 thiss!19762 rules!2550 lt!454972) lt!455193)))

(assert (= (and d!391131 c!225615) b!1371371))

(assert (= (and d!391131 (not c!225615)) b!1371372))

(assert (= (and b!1371371 res!617882) b!1371369))

(assert (= (and d!391131 res!617881) b!1371368))

(assert (= (and b!1371368 res!617880) b!1371370))

(declare-fun m!1541689 () Bool)

(assert (=> b!1371368 m!1541689))

(assert (=> b!1371368 m!1540793))

(assert (=> b!1371368 m!1540793))

(assert (=> b!1371368 m!1540795))

(declare-fun m!1541691 () Bool)

(assert (=> b!1371369 m!1541691))

(declare-fun m!1541693 () Bool)

(assert (=> b!1371371 m!1541693))

(declare-fun m!1541695 () Bool)

(assert (=> b!1371371 m!1541695))

(declare-fun m!1541697 () Bool)

(assert (=> d!391131 m!1541697))

(declare-fun m!1541699 () Bool)

(assert (=> d!391131 m!1541699))

(declare-fun m!1541701 () Bool)

(assert (=> b!1371370 m!1541701))

(assert (=> b!1371370 m!1540793))

(assert (=> b!1371370 m!1540793))

(assert (=> b!1371370 m!1540795))

(assert (=> b!1370738 d!391131))

(declare-fun d!391133 () Bool)

(declare-fun lt!455194 () BalanceConc!9084)

(assert (=> d!391133 (= (list!5350 lt!455194) (printList!608 thiss!19762 (list!5351 (singletonSeq!1036 t2!34))))))

(assert (=> d!391133 (= lt!455194 (printTailRec!590 thiss!19762 (singletonSeq!1036 t2!34) 0 (BalanceConc!9085 Empty!4572)))))

(assert (=> d!391133 (= (print!866 thiss!19762 (singletonSeq!1036 t2!34)) lt!455194)))

(declare-fun bs!335652 () Bool)

(assert (= bs!335652 d!391133))

(declare-fun m!1541703 () Bool)

(assert (=> bs!335652 m!1541703))

(assert (=> bs!335652 m!1540779))

(assert (=> bs!335652 m!1541113))

(assert (=> bs!335652 m!1541113))

(declare-fun m!1541705 () Bool)

(assert (=> bs!335652 m!1541705))

(assert (=> bs!335652 m!1540779))

(declare-fun m!1541707 () Bool)

(assert (=> bs!335652 m!1541707))

(assert (=> b!1370738 d!391133))

(declare-fun d!391135 () Bool)

(declare-fun e!876641 () Bool)

(assert (=> d!391135 e!876641))

(declare-fun res!617883 () Bool)

(assert (=> d!391135 (=> (not res!617883) (not e!876641))))

(declare-fun lt!455195 () BalanceConc!9086)

(assert (=> d!391135 (= res!617883 (= (list!5351 lt!455195) (Cons!13891 t2!34 Nil!13891)))))

(assert (=> d!391135 (= lt!455195 (singleton!452 t2!34))))

(assert (=> d!391135 (= (singletonSeq!1036 t2!34) lt!455195)))

(declare-fun b!1371373 () Bool)

(assert (=> b!1371373 (= e!876641 (isBalanced!1346 (c!225514 lt!455195)))))

(assert (= (and d!391135 res!617883) b!1371373))

(declare-fun m!1541709 () Bool)

(assert (=> d!391135 m!1541709))

(declare-fun m!1541711 () Bool)

(assert (=> d!391135 m!1541711))

(declare-fun m!1541713 () Bool)

(assert (=> b!1371373 m!1541713))

(assert (=> b!1370738 d!391135))

(declare-fun bs!335653 () Bool)

(declare-fun d!391137 () Bool)

(assert (= bs!335653 (and d!391137 b!1370759)))

(declare-fun lambda!58221 () Int)

(assert (=> bs!335653 (not (= lambda!58221 lambda!58185))))

(assert (=> d!391137 true))

(declare-fun order!8473 () Int)

(declare-fun dynLambda!6313 (Int Int) Int)

(assert (=> d!391137 (< (dynLambda!6313 order!8473 lambda!58185) (dynLambda!6313 order!8473 lambda!58221))))

(declare-fun forall!3398 (List!13958 Int) Bool)

(assert (=> d!391137 (= (exists!468 lt!454962 lambda!58185) (not (forall!3398 lt!454962 lambda!58221)))))

(declare-fun bs!335654 () Bool)

(assert (= bs!335654 d!391137))

(declare-fun m!1541715 () Bool)

(assert (=> bs!335654 m!1541715))

(assert (=> b!1370759 d!391137))

(declare-fun bs!335655 () Bool)

(declare-fun d!391139 () Bool)

(assert (= bs!335655 (and d!391139 b!1370759)))

(declare-fun lambda!58226 () Int)

(assert (=> bs!335655 (not (= lambda!58226 lambda!58185))))

(declare-fun bs!335656 () Bool)

(assert (= bs!335656 (and d!391139 d!391137)))

(assert (=> bs!335656 (not (= lambda!58226 lambda!58221))))

(declare-fun lambda!58227 () Int)

(assert (=> bs!335655 (= lambda!58227 lambda!58185)))

(assert (=> bs!335656 (not (= lambda!58227 lambda!58221))))

(declare-fun bs!335657 () Bool)

(assert (= bs!335657 d!391139))

(assert (=> bs!335657 (not (= lambda!58227 lambda!58226))))

(assert (=> d!391139 true))

(assert (=> d!391139 (= (matchR!1712 lt!454967 lt!454960) (exists!468 lt!454962 lambda!58227))))

(declare-fun lt!455198 () Unit!20107)

(declare-fun choose!8442 (Regex!3719 List!13958 List!13954) Unit!20107)

(assert (=> d!391139 (= lt!455198 (choose!8442 lt!454967 lt!454962 lt!454960))))

(assert (=> d!391139 (forall!3398 lt!454962 lambda!58226)))

(assert (=> d!391139 (= (matchRGenUnionSpec!136 lt!454967 lt!454962 lt!454960) lt!455198)))

(assert (=> bs!335657 m!1540847))

(declare-fun m!1541717 () Bool)

(assert (=> bs!335657 m!1541717))

(declare-fun m!1541719 () Bool)

(assert (=> bs!335657 m!1541719))

(declare-fun m!1541721 () Bool)

(assert (=> bs!335657 m!1541721))

(assert (=> b!1370759 d!391139))

(declare-fun d!391141 () Bool)

(declare-fun lt!455201 () List!13958)

(declare-fun size!11403 (List!13958) Int)

(declare-fun size!11404 (List!13956) Int)

(assert (=> d!391141 (= (size!11403 lt!455201) (size!11404 rules!2550))))

(declare-fun e!876646 () List!13958)

(assert (=> d!391141 (= lt!455201 e!876646)))

(declare-fun c!225618 () Bool)

(assert (=> d!391141 (= c!225618 ((_ is Nil!13890) rules!2550))))

(assert (=> d!391141 (= (map!3068 rules!2550 lambda!58184) lt!455201)))

(declare-fun b!1371382 () Bool)

(assert (=> b!1371382 (= e!876646 Nil!13892)))

(declare-fun b!1371383 () Bool)

(declare-fun $colon$colon!201 (List!13958 Regex!3719) List!13958)

(declare-fun dynLambda!6314 (Int Rule!4610) Regex!3719)

(assert (=> b!1371383 (= e!876646 ($colon$colon!201 (map!3068 (t!121485 rules!2550) lambda!58184) (dynLambda!6314 lambda!58184 (h!19291 rules!2550))))))

(assert (= (and d!391141 c!225618) b!1371382))

(assert (= (and d!391141 (not c!225618)) b!1371383))

(declare-fun b_lambda!41955 () Bool)

(assert (=> (not b_lambda!41955) (not b!1371383)))

(declare-fun m!1541723 () Bool)

(assert (=> d!391141 m!1541723))

(declare-fun m!1541725 () Bool)

(assert (=> d!391141 m!1541725))

(declare-fun m!1541727 () Bool)

(assert (=> b!1371383 m!1541727))

(declare-fun m!1541729 () Bool)

(assert (=> b!1371383 m!1541729))

(assert (=> b!1371383 m!1541727))

(assert (=> b!1371383 m!1541729))

(declare-fun m!1541731 () Bool)

(assert (=> b!1371383 m!1541731))

(assert (=> b!1370759 d!391141))

(declare-fun bs!335658 () Bool)

(declare-fun d!391143 () Bool)

(assert (= bs!335658 (and d!391143 b!1370759)))

(declare-fun lambda!58228 () Int)

(assert (=> bs!335658 (not (= lambda!58228 lambda!58185))))

(declare-fun bs!335659 () Bool)

(assert (= bs!335659 (and d!391143 d!391137)))

(assert (=> bs!335659 (= lambda!58228 lambda!58221)))

(declare-fun bs!335660 () Bool)

(assert (= bs!335660 (and d!391143 d!391139)))

(assert (=> bs!335660 (not (= lambda!58228 lambda!58226))))

(assert (=> bs!335660 (not (= lambda!58228 lambda!58227))))

(assert (=> d!391143 true))

(assert (=> d!391143 (< (dynLambda!6313 order!8473 lambda!58185) (dynLambda!6313 order!8473 lambda!58228))))

(assert (=> d!391143 (= (exists!468 (map!3068 rules!2550 lambda!58184) lambda!58185) (not (forall!3398 (map!3068 rules!2550 lambda!58184) lambda!58228)))))

(declare-fun bs!335661 () Bool)

(assert (= bs!335661 d!391143))

(assert (=> bs!335661 m!1540859))

(declare-fun m!1541733 () Bool)

(assert (=> bs!335661 m!1541733))

(assert (=> b!1370759 d!391143))

(declare-fun d!391145 () Bool)

(declare-fun lt!455202 () Bool)

(assert (=> d!391145 (= lt!455202 (select (content!2031 lt!454960) lt!454970))))

(declare-fun e!876647 () Bool)

(assert (=> d!391145 (= lt!455202 e!876647)))

(declare-fun res!617887 () Bool)

(assert (=> d!391145 (=> (not res!617887) (not e!876647))))

(assert (=> d!391145 (= res!617887 ((_ is Cons!13888) lt!454960))))

(assert (=> d!391145 (= (contains!2600 lt!454960 lt!454970) lt!455202)))

(declare-fun b!1371384 () Bool)

(declare-fun e!876648 () Bool)

(assert (=> b!1371384 (= e!876647 e!876648)))

(declare-fun res!617886 () Bool)

(assert (=> b!1371384 (=> res!617886 e!876648)))

(assert (=> b!1371384 (= res!617886 (= (h!19289 lt!454960) lt!454970))))

(declare-fun b!1371385 () Bool)

(assert (=> b!1371385 (= e!876648 (contains!2600 (t!121483 lt!454960) lt!454970))))

(assert (= (and d!391145 res!617887) b!1371384))

(assert (= (and b!1371384 (not res!617886)) b!1371385))

(assert (=> d!391145 m!1541583))

(declare-fun m!1541735 () Bool)

(assert (=> d!391145 m!1541735))

(declare-fun m!1541737 () Bool)

(assert (=> b!1371385 m!1541737))

(assert (=> b!1370750 d!391145))

(declare-fun b!1371386 () Bool)

(declare-fun e!876650 () tuple2!13486)

(assert (=> b!1371386 (= e!876650 (tuple2!13487 Nil!13891 (list!5350 lt!454972)))))

(declare-fun b!1371387 () Bool)

(declare-fun lt!455204 () Option!2668)

(declare-fun lt!455205 () tuple2!13486)

(assert (=> b!1371387 (= e!876650 (tuple2!13487 (Cons!13891 (_1!7631 (v!21471 lt!455204)) (_1!7629 lt!455205)) (_2!7629 lt!455205)))))

(assert (=> b!1371387 (= lt!455205 (lexList!618 thiss!19762 rules!2550 (_2!7631 (v!21471 lt!455204))))))

(declare-fun b!1371388 () Bool)

(declare-fun e!876651 () Bool)

(declare-fun lt!455203 () tuple2!13486)

(assert (=> b!1371388 (= e!876651 (not (isEmpty!8381 (_1!7629 lt!455203))))))

(declare-fun b!1371389 () Bool)

(declare-fun e!876649 () Bool)

(assert (=> b!1371389 (= e!876649 e!876651)))

(declare-fun res!617888 () Bool)

(assert (=> b!1371389 (= res!617888 (< (size!11399 (_2!7629 lt!455203)) (size!11399 (list!5350 lt!454972))))))

(assert (=> b!1371389 (=> (not res!617888) (not e!876651))))

(declare-fun b!1371390 () Bool)

(assert (=> b!1371390 (= e!876649 (= (_2!7629 lt!455203) (list!5350 lt!454972)))))

(declare-fun d!391147 () Bool)

(assert (=> d!391147 e!876649))

(declare-fun c!225620 () Bool)

(assert (=> d!391147 (= c!225620 (> (size!11402 (_1!7629 lt!455203)) 0))))

(assert (=> d!391147 (= lt!455203 e!876650)))

(declare-fun c!225619 () Bool)

(assert (=> d!391147 (= c!225619 ((_ is Some!2667) lt!455204))))

(assert (=> d!391147 (= lt!455204 (maxPrefix!1082 thiss!19762 rules!2550 (list!5350 lt!454972)))))

(assert (=> d!391147 (= (lexList!618 thiss!19762 rules!2550 (list!5350 lt!454972)) lt!455203)))

(assert (= (and d!391147 c!225619) b!1371387))

(assert (= (and d!391147 (not c!225619)) b!1371386))

(assert (= (and d!391147 c!225620) b!1371389))

(assert (= (and d!391147 (not c!225620)) b!1371390))

(assert (= (and b!1371389 res!617888) b!1371388))

(declare-fun m!1541739 () Bool)

(assert (=> b!1371387 m!1541739))

(declare-fun m!1541741 () Bool)

(assert (=> b!1371388 m!1541741))

(declare-fun m!1541743 () Bool)

(assert (=> b!1371389 m!1541743))

(assert (=> b!1371389 m!1540793))

(declare-fun m!1541745 () Bool)

(assert (=> b!1371389 m!1541745))

(declare-fun m!1541747 () Bool)

(assert (=> d!391147 m!1541747))

(assert (=> d!391147 m!1540793))

(declare-fun m!1541749 () Bool)

(assert (=> d!391147 m!1541749))

(assert (=> b!1370771 d!391147))

(declare-fun d!391149 () Bool)

(assert (=> d!391149 (= (list!5350 lt!454972) (list!5355 (c!225513 lt!454972)))))

(declare-fun bs!335662 () Bool)

(assert (= bs!335662 d!391149))

(declare-fun m!1541751 () Bool)

(assert (=> bs!335662 m!1541751))

(assert (=> b!1370771 d!391149))

(declare-fun d!391151 () Bool)

(declare-fun lt!455206 () Bool)

(assert (=> d!391151 (= lt!455206 (isEmpty!8376 (list!5350 (_2!7630 lt!454968))))))

(assert (=> d!391151 (= lt!455206 (isEmpty!8377 (c!225513 (_2!7630 lt!454968))))))

(assert (=> d!391151 (= (isEmpty!8370 (_2!7630 lt!454968)) lt!455206)))

(declare-fun bs!335663 () Bool)

(assert (= bs!335663 d!391151))

(declare-fun m!1541753 () Bool)

(assert (=> bs!335663 m!1541753))

(assert (=> bs!335663 m!1541753))

(declare-fun m!1541755 () Bool)

(assert (=> bs!335663 m!1541755))

(declare-fun m!1541757 () Bool)

(assert (=> bs!335663 m!1541757))

(assert (=> b!1370751 d!391151))

(declare-fun b!1371400 () Bool)

(declare-fun e!876656 () List!13954)

(assert (=> b!1371400 (= e!876656 (Cons!13888 (h!19289 lt!454969) (++!3590 (t!121483 lt!454969) (getSuffix!567 lt!454960 lt!454969))))))

(declare-fun d!391153 () Bool)

(declare-fun e!876657 () Bool)

(assert (=> d!391153 e!876657))

(declare-fun res!617893 () Bool)

(assert (=> d!391153 (=> (not res!617893) (not e!876657))))

(declare-fun lt!455209 () List!13954)

(assert (=> d!391153 (= res!617893 (= (content!2031 lt!455209) ((_ map or) (content!2031 lt!454969) (content!2031 (getSuffix!567 lt!454960 lt!454969)))))))

(assert (=> d!391153 (= lt!455209 e!876656)))

(declare-fun c!225623 () Bool)

(assert (=> d!391153 (= c!225623 ((_ is Nil!13888) lt!454969))))

(assert (=> d!391153 (= (++!3590 lt!454969 (getSuffix!567 lt!454960 lt!454969)) lt!455209)))

(declare-fun b!1371401 () Bool)

(declare-fun res!617894 () Bool)

(assert (=> b!1371401 (=> (not res!617894) (not e!876657))))

(assert (=> b!1371401 (= res!617894 (= (size!11399 lt!455209) (+ (size!11399 lt!454969) (size!11399 (getSuffix!567 lt!454960 lt!454969)))))))

(declare-fun b!1371399 () Bool)

(assert (=> b!1371399 (= e!876656 (getSuffix!567 lt!454960 lt!454969))))

(declare-fun b!1371402 () Bool)

(assert (=> b!1371402 (= e!876657 (or (not (= (getSuffix!567 lt!454960 lt!454969) Nil!13888)) (= lt!455209 lt!454969)))))

(assert (= (and d!391153 c!225623) b!1371399))

(assert (= (and d!391153 (not c!225623)) b!1371400))

(assert (= (and d!391153 res!617893) b!1371401))

(assert (= (and b!1371401 res!617894) b!1371402))

(assert (=> b!1371400 m!1540851))

(declare-fun m!1541759 () Bool)

(assert (=> b!1371400 m!1541759))

(declare-fun m!1541761 () Bool)

(assert (=> d!391153 m!1541761))

(assert (=> d!391153 m!1541205))

(assert (=> d!391153 m!1540851))

(declare-fun m!1541763 () Bool)

(assert (=> d!391153 m!1541763))

(declare-fun m!1541765 () Bool)

(assert (=> b!1371401 m!1541765))

(declare-fun m!1541767 () Bool)

(assert (=> b!1371401 m!1541767))

(assert (=> b!1371401 m!1540851))

(declare-fun m!1541769 () Bool)

(assert (=> b!1371401 m!1541769))

(assert (=> b!1370753 d!391153))

(declare-fun d!391155 () Bool)

(declare-fun lt!455212 () List!13954)

(assert (=> d!391155 (= (++!3590 lt!454969 lt!455212) lt!454960)))

(declare-fun e!876660 () List!13954)

(assert (=> d!391155 (= lt!455212 e!876660)))

(declare-fun c!225626 () Bool)

(assert (=> d!391155 (= c!225626 ((_ is Cons!13888) lt!454969))))

(assert (=> d!391155 (>= (size!11399 lt!454960) (size!11399 lt!454969))))

(assert (=> d!391155 (= (getSuffix!567 lt!454960 lt!454969) lt!455212)))

(declare-fun b!1371407 () Bool)

(assert (=> b!1371407 (= e!876660 (getSuffix!567 (tail!1982 lt!454960) (t!121483 lt!454969)))))

(declare-fun b!1371408 () Bool)

(assert (=> b!1371408 (= e!876660 lt!454960)))

(assert (= (and d!391155 c!225626) b!1371407))

(assert (= (and d!391155 (not c!225626)) b!1371408))

(declare-fun m!1541771 () Bool)

(assert (=> d!391155 m!1541771))

(declare-fun m!1541773 () Bool)

(assert (=> d!391155 m!1541773))

(assert (=> d!391155 m!1541767))

(assert (=> b!1371407 m!1541629))

(assert (=> b!1371407 m!1541629))

(declare-fun m!1541775 () Bool)

(assert (=> b!1371407 m!1541775))

(assert (=> b!1370753 d!391155))

(declare-fun d!391157 () Bool)

(declare-fun lt!455215 () List!13954)

(declare-fun dynLambda!6315 (Int List!13954) Bool)

(assert (=> d!391157 (dynLambda!6315 lambda!58183 lt!455215)))

(declare-fun choose!8443 (Int) List!13954)

(assert (=> d!391157 (= lt!455215 (choose!8443 lambda!58183))))

(assert (=> d!391157 (Exists!871 lambda!58183)))

(assert (=> d!391157 (= (pickWitness!174 lambda!58183) lt!455215)))

(declare-fun b_lambda!41957 () Bool)

(assert (=> (not b_lambda!41957) (not d!391157)))

(declare-fun bs!335664 () Bool)

(assert (= bs!335664 d!391157))

(declare-fun m!1541777 () Bool)

(assert (=> bs!335664 m!1541777))

(declare-fun m!1541779 () Bool)

(assert (=> bs!335664 m!1541779))

(assert (=> bs!335664 m!1540789))

(assert (=> b!1370753 d!391157))

(declare-fun d!391159 () Bool)

(declare-fun res!617899 () Bool)

(declare-fun e!876663 () Bool)

(assert (=> d!391159 (=> (not res!617899) (not e!876663))))

(assert (=> d!391159 (= res!617899 (not (isEmpty!8376 (originalCharacters!3267 t1!34))))))

(assert (=> d!391159 (= (inv!18245 t1!34) e!876663)))

(declare-fun b!1371413 () Bool)

(declare-fun res!617900 () Bool)

(assert (=> b!1371413 (=> (not res!617900) (not e!876663))))

(assert (=> b!1371413 (= res!617900 (= (originalCharacters!3267 t1!34) (list!5350 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34)))))))

(declare-fun b!1371414 () Bool)

(assert (=> b!1371414 (= e!876663 (= (size!11391 t1!34) (size!11399 (originalCharacters!3267 t1!34))))))

(assert (= (and d!391159 res!617899) b!1371413))

(assert (= (and b!1371413 res!617900) b!1371414))

(declare-fun b_lambda!41959 () Bool)

(assert (=> (not b_lambda!41959) (not b!1371413)))

(declare-fun t!121515 () Bool)

(declare-fun tb!72223 () Bool)

(assert (=> (and b!1370765 (= (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toChars!3531 (transformation!2405 (rule!4160 t1!34)))) t!121515) tb!72223))

(declare-fun b!1371415 () Bool)

(declare-fun e!876664 () Bool)

(declare-fun tp!393877 () Bool)

(assert (=> b!1371415 (= e!876664 (and (inv!18248 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34)))) tp!393877))))

(declare-fun result!87702 () Bool)

(assert (=> tb!72223 (= result!87702 (and (inv!18249 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34))) e!876664))))

(assert (= tb!72223 b!1371415))

(declare-fun m!1541781 () Bool)

(assert (=> b!1371415 m!1541781))

(declare-fun m!1541783 () Bool)

(assert (=> tb!72223 m!1541783))

(assert (=> b!1371413 t!121515))

(declare-fun b_and!91921 () Bool)

(assert (= b_and!91893 (and (=> t!121515 result!87702) b_and!91921)))

(declare-fun t!121517 () Bool)

(declare-fun tb!72225 () Bool)

(assert (=> (and b!1370761 (= (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (toChars!3531 (transformation!2405 (rule!4160 t1!34)))) t!121517) tb!72225))

(declare-fun result!87704 () Bool)

(assert (= result!87704 result!87702))

(assert (=> b!1371413 t!121517))

(declare-fun b_and!91923 () Bool)

(assert (= b_and!91895 (and (=> t!121517 result!87704) b_and!91923)))

(declare-fun t!121519 () Bool)

(declare-fun tb!72227 () Bool)

(assert (=> (and b!1370756 (= (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (toChars!3531 (transformation!2405 (rule!4160 t1!34)))) t!121519) tb!72227))

(declare-fun result!87706 () Bool)

(assert (= result!87706 result!87702))

(assert (=> b!1371413 t!121519))

(declare-fun b_and!91925 () Bool)

(assert (= b_and!91897 (and (=> t!121519 result!87706) b_and!91925)))

(declare-fun m!1541785 () Bool)

(assert (=> d!391159 m!1541785))

(declare-fun m!1541787 () Bool)

(assert (=> b!1371413 m!1541787))

(assert (=> b!1371413 m!1541787))

(declare-fun m!1541789 () Bool)

(assert (=> b!1371413 m!1541789))

(declare-fun m!1541791 () Bool)

(assert (=> b!1371414 m!1541791))

(assert (=> start!123770 d!391159))

(declare-fun d!391161 () Bool)

(declare-fun res!617901 () Bool)

(declare-fun e!876665 () Bool)

(assert (=> d!391161 (=> (not res!617901) (not e!876665))))

(assert (=> d!391161 (= res!617901 (not (isEmpty!8376 (originalCharacters!3267 t2!34))))))

(assert (=> d!391161 (= (inv!18245 t2!34) e!876665)))

(declare-fun b!1371416 () Bool)

(declare-fun res!617902 () Bool)

(assert (=> b!1371416 (=> (not res!617902) (not e!876665))))

(assert (=> b!1371416 (= res!617902 (= (originalCharacters!3267 t2!34) (list!5350 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34)))))))

(declare-fun b!1371417 () Bool)

(assert (=> b!1371417 (= e!876665 (= (size!11391 t2!34) (size!11399 (originalCharacters!3267 t2!34))))))

(assert (= (and d!391161 res!617901) b!1371416))

(assert (= (and b!1371416 res!617902) b!1371417))

(declare-fun b_lambda!41961 () Bool)

(assert (=> (not b_lambda!41961) (not b!1371416)))

(assert (=> b!1371416 t!121497))

(declare-fun b_and!91927 () Bool)

(assert (= b_and!91921 (and (=> t!121497 result!87678) b_and!91927)))

(assert (=> b!1371416 t!121499))

(declare-fun b_and!91929 () Bool)

(assert (= b_and!91923 (and (=> t!121499 result!87682) b_and!91929)))

(assert (=> b!1371416 t!121501))

(declare-fun b_and!91931 () Bool)

(assert (= b_and!91925 (and (=> t!121501 result!87684) b_and!91931)))

(declare-fun m!1541793 () Bool)

(assert (=> d!391161 m!1541793))

(assert (=> b!1371416 m!1541187))

(assert (=> b!1371416 m!1541187))

(declare-fun m!1541795 () Bool)

(assert (=> b!1371416 m!1541795))

(declare-fun m!1541797 () Bool)

(assert (=> b!1371417 m!1541797))

(assert (=> start!123770 d!391161))

(declare-fun d!391163 () Bool)

(declare-fun lt!455218 () Bool)

(declare-fun content!2033 (List!13958) (InoxSet Regex!3719))

(assert (=> d!391163 (= lt!455218 (select (content!2033 (map!3068 rules!2550 lambda!58184)) lt!454964))))

(declare-fun e!876671 () Bool)

(assert (=> d!391163 (= lt!455218 e!876671)))

(declare-fun res!617908 () Bool)

(assert (=> d!391163 (=> (not res!617908) (not e!876671))))

(assert (=> d!391163 (= res!617908 ((_ is Cons!13892) (map!3068 rules!2550 lambda!58184)))))

(assert (=> d!391163 (= (contains!2601 (map!3068 rules!2550 lambda!58184) lt!454964) lt!455218)))

(declare-fun b!1371422 () Bool)

(declare-fun e!876670 () Bool)

(assert (=> b!1371422 (= e!876671 e!876670)))

(declare-fun res!617907 () Bool)

(assert (=> b!1371422 (=> res!617907 e!876670)))

(assert (=> b!1371422 (= res!617907 (= (h!19293 (map!3068 rules!2550 lambda!58184)) lt!454964))))

(declare-fun b!1371423 () Bool)

(assert (=> b!1371423 (= e!876670 (contains!2601 (t!121487 (map!3068 rules!2550 lambda!58184)) lt!454964))))

(assert (= (and d!391163 res!617908) b!1371422))

(assert (= (and b!1371422 (not res!617907)) b!1371423))

(assert (=> d!391163 m!1540859))

(declare-fun m!1541799 () Bool)

(assert (=> d!391163 m!1541799))

(declare-fun m!1541801 () Bool)

(assert (=> d!391163 m!1541801))

(declare-fun m!1541803 () Bool)

(assert (=> b!1371423 m!1541803))

(assert (=> b!1370752 d!391163))

(assert (=> b!1370752 d!391141))

(declare-fun e!876682 () Bool)

(declare-fun lt!455224 () Regex!3719)

(declare-fun b!1371436 () Bool)

(assert (=> b!1371436 (= e!876682 (contains!2601 (map!3068 rules!2550 lambda!58184) lt!455224))))

(declare-fun e!876681 () Bool)

(declare-fun b!1371437 () Bool)

(declare-fun dynLambda!6316 (Int Regex!3719) Bool)

(assert (=> b!1371437 (= e!876681 (dynLambda!6316 lambda!58185 (h!19293 (map!3068 rules!2550 lambda!58184))))))

(declare-fun b!1371438 () Bool)

(declare-fun lt!455223 () Unit!20107)

(declare-fun Unit!20112 () Unit!20107)

(assert (=> b!1371438 (= lt!455223 Unit!20112)))

(assert (=> b!1371438 false))

(declare-fun e!876683 () Regex!3719)

(declare-fun head!2471 (List!13958) Regex!3719)

(assert (=> b!1371438 (= e!876683 (head!2471 (map!3068 rules!2550 lambda!58184)))))

(declare-fun d!391165 () Bool)

(assert (=> d!391165 e!876682))

(declare-fun res!617914 () Bool)

(assert (=> d!391165 (=> (not res!617914) (not e!876682))))

(assert (=> d!391165 (= res!617914 (dynLambda!6316 lambda!58185 lt!455224))))

(declare-fun e!876680 () Regex!3719)

(assert (=> d!391165 (= lt!455224 e!876680)))

(declare-fun c!225632 () Bool)

(assert (=> d!391165 (= c!225632 e!876681)))

(declare-fun res!617913 () Bool)

(assert (=> d!391165 (=> (not res!617913) (not e!876681))))

(assert (=> d!391165 (= res!617913 ((_ is Cons!13892) (map!3068 rules!2550 lambda!58184)))))

(assert (=> d!391165 (exists!468 (map!3068 rules!2550 lambda!58184) lambda!58185)))

(assert (=> d!391165 (= (getWitness!356 (map!3068 rules!2550 lambda!58184) lambda!58185) lt!455224)))

(declare-fun b!1371439 () Bool)

(assert (=> b!1371439 (= e!876680 e!876683)))

(declare-fun c!225631 () Bool)

(assert (=> b!1371439 (= c!225631 ((_ is Cons!13892) (map!3068 rules!2550 lambda!58184)))))

(declare-fun b!1371440 () Bool)

(assert (=> b!1371440 (= e!876680 (h!19293 (map!3068 rules!2550 lambda!58184)))))

(declare-fun b!1371441 () Bool)

(assert (=> b!1371441 (= e!876683 (getWitness!356 (t!121487 (map!3068 rules!2550 lambda!58184)) lambda!58185))))

(assert (= (and d!391165 res!617913) b!1371437))

(assert (= (and d!391165 c!225632) b!1371440))

(assert (= (and d!391165 (not c!225632)) b!1371439))

(assert (= (and b!1371439 c!225631) b!1371441))

(assert (= (and b!1371439 (not c!225631)) b!1371438))

(assert (= (and d!391165 res!617914) b!1371436))

(declare-fun b_lambda!41963 () Bool)

(assert (=> (not b_lambda!41963) (not b!1371437)))

(declare-fun b_lambda!41965 () Bool)

(assert (=> (not b_lambda!41965) (not d!391165)))

(declare-fun m!1541805 () Bool)

(assert (=> d!391165 m!1541805))

(assert (=> d!391165 m!1540859))

(assert (=> d!391165 m!1540861))

(declare-fun m!1541807 () Bool)

(assert (=> b!1371437 m!1541807))

(assert (=> b!1371436 m!1540859))

(declare-fun m!1541809 () Bool)

(assert (=> b!1371436 m!1541809))

(assert (=> b!1371438 m!1540859))

(declare-fun m!1541811 () Bool)

(assert (=> b!1371438 m!1541811))

(declare-fun m!1541813 () Bool)

(assert (=> b!1371441 m!1541813))

(assert (=> b!1370752 d!391165))

(declare-fun b!1371443 () Bool)

(declare-fun e!876684 () List!13954)

(assert (=> b!1371443 (= e!876684 (Cons!13888 (h!19289 lt!454961) (++!3590 (t!121483 lt!454961) (Cons!13888 lt!454970 Nil!13888))))))

(declare-fun d!391167 () Bool)

(declare-fun e!876685 () Bool)

(assert (=> d!391167 e!876685))

(declare-fun res!617915 () Bool)

(assert (=> d!391167 (=> (not res!617915) (not e!876685))))

(declare-fun lt!455225 () List!13954)

(assert (=> d!391167 (= res!617915 (= (content!2031 lt!455225) ((_ map or) (content!2031 lt!454961) (content!2031 (Cons!13888 lt!454970 Nil!13888)))))))

(assert (=> d!391167 (= lt!455225 e!876684)))

(declare-fun c!225633 () Bool)

(assert (=> d!391167 (= c!225633 ((_ is Nil!13888) lt!454961))))

(assert (=> d!391167 (= (++!3590 lt!454961 (Cons!13888 lt!454970 Nil!13888)) lt!455225)))

(declare-fun b!1371444 () Bool)

(declare-fun res!617916 () Bool)

(assert (=> b!1371444 (=> (not res!617916) (not e!876685))))

(assert (=> b!1371444 (= res!617916 (= (size!11399 lt!455225) (+ (size!11399 lt!454961) (size!11399 (Cons!13888 lt!454970 Nil!13888)))))))

(declare-fun b!1371442 () Bool)

(assert (=> b!1371442 (= e!876684 (Cons!13888 lt!454970 Nil!13888))))

(declare-fun b!1371445 () Bool)

(assert (=> b!1371445 (= e!876685 (or (not (= (Cons!13888 lt!454970 Nil!13888) Nil!13888)) (= lt!455225 lt!454961)))))

(assert (= (and d!391167 c!225633) b!1371442))

(assert (= (and d!391167 (not c!225633)) b!1371443))

(assert (= (and d!391167 res!617915) b!1371444))

(assert (= (and b!1371444 res!617916) b!1371445))

(declare-fun m!1541815 () Bool)

(assert (=> b!1371443 m!1541815))

(declare-fun m!1541817 () Bool)

(assert (=> d!391167 m!1541817))

(declare-fun m!1541819 () Bool)

(assert (=> d!391167 m!1541819))

(declare-fun m!1541821 () Bool)

(assert (=> d!391167 m!1541821))

(declare-fun m!1541823 () Bool)

(assert (=> b!1371444 m!1541823))

(assert (=> b!1371444 m!1541671))

(declare-fun m!1541825 () Bool)

(assert (=> b!1371444 m!1541825))

(assert (=> b!1370733 d!391167))

(declare-fun d!391169 () Bool)

(declare-fun c!225636 () Bool)

(assert (=> d!391169 (= c!225636 (isEmpty!8376 lt!454969))))

(declare-fun e!876688 () Bool)

(assert (=> d!391169 (= (prefixMatch!228 lt!454967 lt!454969) e!876688)))

(declare-fun b!1371450 () Bool)

(declare-fun lostCause!333 (Regex!3719) Bool)

(assert (=> b!1371450 (= e!876688 (not (lostCause!333 lt!454967)))))

(declare-fun b!1371451 () Bool)

(assert (=> b!1371451 (= e!876688 (prefixMatch!228 (derivativeStep!957 lt!454967 (head!2469 lt!454969)) (tail!1982 lt!454969)))))

(assert (= (and d!391169 c!225636) b!1371450))

(assert (= (and d!391169 (not c!225636)) b!1371451))

(declare-fun m!1541827 () Bool)

(assert (=> d!391169 m!1541827))

(declare-fun m!1541829 () Bool)

(assert (=> b!1371450 m!1541829))

(declare-fun m!1541831 () Bool)

(assert (=> b!1371451 m!1541831))

(assert (=> b!1371451 m!1541831))

(declare-fun m!1541833 () Bool)

(assert (=> b!1371451 m!1541833))

(declare-fun m!1541835 () Bool)

(assert (=> b!1371451 m!1541835))

(assert (=> b!1371451 m!1541833))

(assert (=> b!1371451 m!1541835))

(declare-fun m!1541837 () Bool)

(assert (=> b!1371451 m!1541837))

(assert (=> b!1370733 d!391169))

(declare-fun d!391171 () Bool)

(declare-fun lt!455226 () C!7728)

(assert (=> d!391171 (= lt!455226 (apply!3412 (list!5350 lt!454959) 0))))

(assert (=> d!391171 (= lt!455226 (apply!3413 (c!225513 lt!454959) 0))))

(declare-fun e!876689 () Bool)

(assert (=> d!391171 e!876689))

(declare-fun res!617917 () Bool)

(assert (=> d!391171 (=> (not res!617917) (not e!876689))))

(assert (=> d!391171 (= res!617917 (<= 0 0))))

(assert (=> d!391171 (= (apply!3407 lt!454959 0) lt!455226)))

(declare-fun b!1371452 () Bool)

(assert (=> b!1371452 (= e!876689 (< 0 (size!11392 lt!454959)))))

(assert (= (and d!391171 res!617917) b!1371452))

(assert (=> d!391171 m!1540839))

(assert (=> d!391171 m!1540839))

(declare-fun m!1541839 () Bool)

(assert (=> d!391171 m!1541839))

(declare-fun m!1541841 () Bool)

(assert (=> d!391171 m!1541841))

(assert (=> b!1371452 m!1540903))

(assert (=> b!1370733 d!391171))

(declare-fun d!391173 () Bool)

(declare-fun lt!455227 () BalanceConc!9084)

(assert (=> d!391173 (= (list!5350 lt!455227) (originalCharacters!3267 t1!34))))

(assert (=> d!391173 (= lt!455227 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34)))))

(assert (=> d!391173 (= (charsOf!1377 t1!34) lt!455227)))

(declare-fun b_lambda!41967 () Bool)

(assert (=> (not b_lambda!41967) (not d!391173)))

(assert (=> d!391173 t!121515))

(declare-fun b_and!91933 () Bool)

(assert (= b_and!91927 (and (=> t!121515 result!87702) b_and!91933)))

(assert (=> d!391173 t!121517))

(declare-fun b_and!91935 () Bool)

(assert (= b_and!91929 (and (=> t!121517 result!87704) b_and!91935)))

(assert (=> d!391173 t!121519))

(declare-fun b_and!91937 () Bool)

(assert (= b_and!91931 (and (=> t!121519 result!87706) b_and!91937)))

(declare-fun m!1541843 () Bool)

(assert (=> d!391173 m!1541843))

(assert (=> d!391173 m!1541787))

(assert (=> b!1370733 d!391173))

(declare-fun d!391175 () Bool)

(assert (=> d!391175 (= (list!5350 lt!454963) (list!5355 (c!225513 lt!454963)))))

(declare-fun bs!335665 () Bool)

(assert (= bs!335665 d!391175))

(declare-fun m!1541845 () Bool)

(assert (=> bs!335665 m!1541845))

(assert (=> b!1370733 d!391175))

(declare-fun bs!335666 () Bool)

(declare-fun d!391177 () Bool)

(assert (= bs!335666 (and d!391177 b!1370759)))

(declare-fun lambda!58231 () Int)

(assert (=> bs!335666 (= lambda!58231 lambda!58184)))

(declare-fun lt!455230 () Unit!20107)

(declare-fun lemma!127 (List!13956 LexerInterface!2100 List!13956) Unit!20107)

(assert (=> d!391177 (= lt!455230 (lemma!127 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!135 (List!13958) Regex!3719)

(assert (=> d!391177 (= (rulesRegex!288 thiss!19762 rules!2550) (generalisedUnion!135 (map!3068 rules!2550 lambda!58231)))))

(declare-fun bs!335667 () Bool)

(assert (= bs!335667 d!391177))

(declare-fun m!1541847 () Bool)

(assert (=> bs!335667 m!1541847))

(declare-fun m!1541849 () Bool)

(assert (=> bs!335667 m!1541849))

(assert (=> bs!335667 m!1541849))

(declare-fun m!1541851 () Bool)

(assert (=> bs!335667 m!1541851))

(assert (=> b!1370733 d!391177))

(declare-fun d!391179 () Bool)

(assert (=> d!391179 (= (isEmpty!8371 rules!2550) ((_ is Nil!13890) rules!2550))))

(assert (=> b!1370754 d!391179))

(declare-fun d!391181 () Bool)

(assert (=> d!391181 (= (inv!18241 (tag!2667 (rule!4160 t1!34))) (= (mod (str.len (value!78174 (tag!2667 (rule!4160 t1!34)))) 2) 0))))

(assert (=> b!1370732 d!391181))

(declare-fun d!391183 () Bool)

(declare-fun res!617918 () Bool)

(declare-fun e!876690 () Bool)

(assert (=> d!391183 (=> (not res!617918) (not e!876690))))

(assert (=> d!391183 (= res!617918 (semiInverseModEq!928 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (toValue!3672 (transformation!2405 (rule!4160 t1!34)))))))

(assert (=> d!391183 (= (inv!18244 (transformation!2405 (rule!4160 t1!34))) e!876690)))

(declare-fun b!1371453 () Bool)

(assert (=> b!1371453 (= e!876690 (equivClasses!887 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (toValue!3672 (transformation!2405 (rule!4160 t1!34)))))))

(assert (= (and d!391183 res!617918) b!1371453))

(declare-fun m!1541853 () Bool)

(assert (=> d!391183 m!1541853))

(declare-fun m!1541855 () Bool)

(assert (=> b!1371453 m!1541855))

(assert (=> b!1370732 d!391183))

(declare-fun b!1371458 () Bool)

(declare-fun e!876693 () Bool)

(declare-fun tp_is_empty!6747 () Bool)

(declare-fun tp!393880 () Bool)

(assert (=> b!1371458 (= e!876693 (and tp_is_empty!6747 tp!393880))))

(assert (=> b!1370734 (= tp!393825 e!876693)))

(assert (= (and b!1370734 ((_ is Cons!13888) (originalCharacters!3267 t1!34))) b!1371458))

(declare-fun b!1371469 () Bool)

(declare-fun e!876696 () Bool)

(assert (=> b!1371469 (= e!876696 tp_is_empty!6747)))

(declare-fun b!1371470 () Bool)

(declare-fun tp!393891 () Bool)

(declare-fun tp!393893 () Bool)

(assert (=> b!1371470 (= e!876696 (and tp!393891 tp!393893))))

(declare-fun b!1371471 () Bool)

(declare-fun tp!393894 () Bool)

(assert (=> b!1371471 (= e!876696 tp!393894)))

(declare-fun b!1371472 () Bool)

(declare-fun tp!393895 () Bool)

(declare-fun tp!393892 () Bool)

(assert (=> b!1371472 (= e!876696 (and tp!393895 tp!393892))))

(assert (=> b!1370744 (= tp!393824 e!876696)))

(assert (= (and b!1370744 ((_ is ElementMatch!3719) (regex!2405 (h!19291 rules!2550)))) b!1371469))

(assert (= (and b!1370744 ((_ is Concat!6214) (regex!2405 (h!19291 rules!2550)))) b!1371470))

(assert (= (and b!1370744 ((_ is Star!3719) (regex!2405 (h!19291 rules!2550)))) b!1371471))

(assert (= (and b!1370744 ((_ is Union!3719) (regex!2405 (h!19291 rules!2550)))) b!1371472))

(declare-fun b!1371483 () Bool)

(declare-fun b_free!33235 () Bool)

(declare-fun b_next!33939 () Bool)

(assert (=> b!1371483 (= b_free!33235 (not b_next!33939))))

(declare-fun tp!393904 () Bool)

(declare-fun b_and!91939 () Bool)

(assert (=> b!1371483 (= tp!393904 b_and!91939)))

(declare-fun b_free!33237 () Bool)

(declare-fun b_next!33941 () Bool)

(assert (=> b!1371483 (= b_free!33237 (not b_next!33941))))

(declare-fun tb!72229 () Bool)

(declare-fun t!121521 () Bool)

(assert (=> (and b!1371483 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toChars!3531 (transformation!2405 (rule!4160 t2!34)))) t!121521) tb!72229))

(declare-fun result!87714 () Bool)

(assert (= result!87714 result!87678))

(assert (=> d!390973 t!121521))

(declare-fun t!121523 () Bool)

(declare-fun tb!72231 () Bool)

(assert (=> (and b!1371483 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toChars!3531 (transformation!2405 (rule!4160 t1!34)))) t!121523) tb!72231))

(declare-fun result!87716 () Bool)

(assert (= result!87716 result!87702))

(assert (=> b!1371413 t!121523))

(assert (=> b!1371416 t!121521))

(assert (=> d!391173 t!121523))

(declare-fun b_and!91941 () Bool)

(declare-fun tp!393907 () Bool)

(assert (=> b!1371483 (= tp!393907 (and (=> t!121521 result!87714) (=> t!121523 result!87716) b_and!91941))))

(declare-fun e!876706 () Bool)

(assert (=> b!1371483 (= e!876706 (and tp!393904 tp!393907))))

(declare-fun b!1371482 () Bool)

(declare-fun e!876705 () Bool)

(declare-fun tp!393906 () Bool)

(assert (=> b!1371482 (= e!876705 (and tp!393906 (inv!18241 (tag!2667 (h!19291 (t!121485 rules!2550)))) (inv!18244 (transformation!2405 (h!19291 (t!121485 rules!2550)))) e!876706))))

(declare-fun b!1371481 () Bool)

(declare-fun e!876707 () Bool)

(declare-fun tp!393905 () Bool)

(assert (=> b!1371481 (= e!876707 (and e!876705 tp!393905))))

(assert (=> b!1370741 (= tp!393826 e!876707)))

(assert (= b!1371482 b!1371483))

(assert (= b!1371481 b!1371482))

(assert (= (and b!1370741 ((_ is Cons!13890) (t!121485 rules!2550))) b!1371481))

(declare-fun m!1541857 () Bool)

(assert (=> b!1371482 m!1541857))

(declare-fun m!1541859 () Bool)

(assert (=> b!1371482 m!1541859))

(declare-fun b!1371484 () Bool)

(declare-fun e!876709 () Bool)

(assert (=> b!1371484 (= e!876709 tp_is_empty!6747)))

(declare-fun b!1371485 () Bool)

(declare-fun tp!393908 () Bool)

(declare-fun tp!393910 () Bool)

(assert (=> b!1371485 (= e!876709 (and tp!393908 tp!393910))))

(declare-fun b!1371486 () Bool)

(declare-fun tp!393911 () Bool)

(assert (=> b!1371486 (= e!876709 tp!393911)))

(declare-fun b!1371487 () Bool)

(declare-fun tp!393912 () Bool)

(declare-fun tp!393909 () Bool)

(assert (=> b!1371487 (= e!876709 (and tp!393912 tp!393909))))

(assert (=> b!1370767 (= tp!393817 e!876709)))

(assert (= (and b!1370767 ((_ is ElementMatch!3719) (regex!2405 (rule!4160 t2!34)))) b!1371484))

(assert (= (and b!1370767 ((_ is Concat!6214) (regex!2405 (rule!4160 t2!34)))) b!1371485))

(assert (= (and b!1370767 ((_ is Star!3719) (regex!2405 (rule!4160 t2!34)))) b!1371486))

(assert (= (and b!1370767 ((_ is Union!3719) (regex!2405 (rule!4160 t2!34)))) b!1371487))

(declare-fun b!1371488 () Bool)

(declare-fun e!876710 () Bool)

(declare-fun tp!393913 () Bool)

(assert (=> b!1371488 (= e!876710 (and tp_is_empty!6747 tp!393913))))

(assert (=> b!1370747 (= tp!393818 e!876710)))

(assert (= (and b!1370747 ((_ is Cons!13888) (originalCharacters!3267 t2!34))) b!1371488))

(declare-fun b!1371489 () Bool)

(declare-fun e!876711 () Bool)

(assert (=> b!1371489 (= e!876711 tp_is_empty!6747)))

(declare-fun b!1371490 () Bool)

(declare-fun tp!393914 () Bool)

(declare-fun tp!393916 () Bool)

(assert (=> b!1371490 (= e!876711 (and tp!393914 tp!393916))))

(declare-fun b!1371491 () Bool)

(declare-fun tp!393917 () Bool)

(assert (=> b!1371491 (= e!876711 tp!393917)))

(declare-fun b!1371492 () Bool)

(declare-fun tp!393918 () Bool)

(declare-fun tp!393915 () Bool)

(assert (=> b!1371492 (= e!876711 (and tp!393918 tp!393915))))

(assert (=> b!1370732 (= tp!393827 e!876711)))

(assert (= (and b!1370732 ((_ is ElementMatch!3719) (regex!2405 (rule!4160 t1!34)))) b!1371489))

(assert (= (and b!1370732 ((_ is Concat!6214) (regex!2405 (rule!4160 t1!34)))) b!1371490))

(assert (= (and b!1370732 ((_ is Star!3719) (regex!2405 (rule!4160 t1!34)))) b!1371491))

(assert (= (and b!1370732 ((_ is Union!3719) (regex!2405 (rule!4160 t1!34)))) b!1371492))

(declare-fun b_lambda!41969 () Bool)

(assert (= b_lambda!41959 (or (and b!1370765 b_free!33221 (= (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toChars!3531 (transformation!2405 (rule!4160 t1!34))))) (and b!1370761 b_free!33225 (= (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (toChars!3531 (transformation!2405 (rule!4160 t1!34))))) (and b!1370756 b_free!33229) (and b!1371483 b_free!33237 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toChars!3531 (transformation!2405 (rule!4160 t1!34))))) b_lambda!41969)))

(declare-fun b_lambda!41971 () Bool)

(assert (= b_lambda!41967 (or (and b!1370765 b_free!33221 (= (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toChars!3531 (transformation!2405 (rule!4160 t1!34))))) (and b!1370761 b_free!33225 (= (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (toChars!3531 (transformation!2405 (rule!4160 t1!34))))) (and b!1370756 b_free!33229) (and b!1371483 b_free!33237 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toChars!3531 (transformation!2405 (rule!4160 t1!34))))) b_lambda!41971)))

(declare-fun b_lambda!41973 () Bool)

(assert (= b_lambda!41957 (or b!1370737 b_lambda!41973)))

(declare-fun bs!335668 () Bool)

(declare-fun d!391185 () Bool)

(assert (= bs!335668 (and d!391185 b!1370737)))

(declare-fun res!617919 () Bool)

(declare-fun e!876712 () Bool)

(assert (=> bs!335668 (=> (not res!617919) (not e!876712))))

(assert (=> bs!335668 (= res!617919 (matchR!1712 lt!454967 lt!455215))))

(assert (=> bs!335668 (= (dynLambda!6315 lambda!58183 lt!455215) e!876712)))

(declare-fun b!1371493 () Bool)

(assert (=> b!1371493 (= e!876712 (isPrefix!1129 lt!454969 lt!455215))))

(assert (= (and bs!335668 res!617919) b!1371493))

(declare-fun m!1541861 () Bool)

(assert (=> bs!335668 m!1541861))

(declare-fun m!1541863 () Bool)

(assert (=> b!1371493 m!1541863))

(assert (=> d!391157 d!391185))

(declare-fun b_lambda!41975 () Bool)

(assert (= b_lambda!41915 (or b!1370766 b_lambda!41975)))

(declare-fun bs!335669 () Bool)

(declare-fun d!391187 () Bool)

(assert (= bs!335669 (and d!391187 b!1370766)))

(assert (=> bs!335669 (= (dynLambda!6311 lambda!58186 (h!19291 rules!2550)) (= (regex!2405 (h!19291 rules!2550)) lt!454964))))

(assert (=> b!1371170 d!391187))

(declare-fun b_lambda!41977 () Bool)

(assert (= b_lambda!41961 (or (and b!1370765 b_free!33221 (= (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toChars!3531 (transformation!2405 (rule!4160 t2!34))))) (and b!1370761 b_free!33225) (and b!1370756 b_free!33229 (= (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (toChars!3531 (transformation!2405 (rule!4160 t2!34))))) (and b!1371483 b_free!33237 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toChars!3531 (transformation!2405 (rule!4160 t2!34))))) b_lambda!41977)))

(declare-fun b_lambda!41979 () Bool)

(assert (= b_lambda!41917 (or b!1370766 b_lambda!41979)))

(declare-fun bs!335670 () Bool)

(declare-fun d!391189 () Bool)

(assert (= bs!335670 (and d!391189 b!1370766)))

(assert (=> bs!335670 (= (dynLambda!6311 lambda!58186 lt!455137) (= (regex!2405 lt!455137) lt!454964))))

(assert (=> d!391047 d!391189))

(declare-fun b_lambda!41981 () Bool)

(assert (= b_lambda!41951 (or b!1370757 b_lambda!41981)))

(declare-fun bs!335671 () Bool)

(declare-fun d!391191 () Bool)

(assert (= bs!335671 (and d!391191 b!1370757)))

(declare-fun ruleValid!592 (LexerInterface!2100 Rule!4610) Bool)

(assert (=> bs!335671 (= (dynLambda!6311 lambda!58187 (rule!4160 t1!34)) (ruleValid!592 thiss!19762 (rule!4160 t1!34)))))

(declare-fun m!1541865 () Bool)

(assert (=> bs!335671 m!1541865))

(assert (=> d!391113 d!391191))

(declare-fun b_lambda!41983 () Bool)

(assert (= b_lambda!41955 (or b!1370759 b_lambda!41983)))

(declare-fun bs!335672 () Bool)

(declare-fun d!391193 () Bool)

(assert (= bs!335672 (and d!391193 b!1370759)))

(assert (=> bs!335672 (= (dynLambda!6314 lambda!58184 (h!19291 rules!2550)) (regex!2405 (h!19291 rules!2550)))))

(assert (=> b!1371383 d!391193))

(declare-fun b_lambda!41985 () Bool)

(assert (= b_lambda!41963 (or b!1370759 b_lambda!41985)))

(declare-fun bs!335673 () Bool)

(declare-fun d!391195 () Bool)

(assert (= bs!335673 (and d!391195 b!1370759)))

(declare-fun res!617920 () Bool)

(declare-fun e!876713 () Bool)

(assert (=> bs!335673 (=> (not res!617920) (not e!876713))))

(assert (=> bs!335673 (= res!617920 (validRegex!1619 (h!19293 (map!3068 rules!2550 lambda!58184))))))

(assert (=> bs!335673 (= (dynLambda!6316 lambda!58185 (h!19293 (map!3068 rules!2550 lambda!58184))) e!876713)))

(declare-fun b!1371494 () Bool)

(assert (=> b!1371494 (= e!876713 (matchR!1712 (h!19293 (map!3068 rules!2550 lambda!58184)) lt!454960))))

(assert (= (and bs!335673 res!617920) b!1371494))

(declare-fun m!1541867 () Bool)

(assert (=> bs!335673 m!1541867))

(declare-fun m!1541869 () Bool)

(assert (=> b!1371494 m!1541869))

(assert (=> b!1371437 d!391195))

(declare-fun b_lambda!41987 () Bool)

(assert (= b_lambda!41949 (or b!1370757 b_lambda!41987)))

(declare-fun bs!335674 () Bool)

(declare-fun d!391197 () Bool)

(assert (= bs!335674 (and d!391197 b!1370757)))

(assert (=> bs!335674 (= (dynLambda!6311 lambda!58187 (rule!4160 t2!34)) (ruleValid!592 thiss!19762 (rule!4160 t2!34)))))

(declare-fun m!1541871 () Bool)

(assert (=> bs!335674 m!1541871))

(assert (=> d!391111 d!391197))

(declare-fun b_lambda!41989 () Bool)

(assert (= b_lambda!41899 (or (and b!1370765 b_free!33221 (= (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toChars!3531 (transformation!2405 (rule!4160 t2!34))))) (and b!1370761 b_free!33225) (and b!1370756 b_free!33229 (= (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (toChars!3531 (transformation!2405 (rule!4160 t2!34))))) (and b!1371483 b_free!33237 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toChars!3531 (transformation!2405 (rule!4160 t2!34))))) b_lambda!41989)))

(declare-fun b_lambda!41991 () Bool)

(assert (= b_lambda!41953 (or b!1370757 b_lambda!41991)))

(declare-fun bs!335675 () Bool)

(declare-fun d!391199 () Bool)

(assert (= bs!335675 (and d!391199 b!1370757)))

(assert (=> bs!335675 (= (dynLambda!6311 lambda!58187 lt!454957) (ruleValid!592 thiss!19762 lt!454957))))

(declare-fun m!1541873 () Bool)

(assert (=> bs!335675 m!1541873))

(assert (=> d!391115 d!391199))

(declare-fun b_lambda!41993 () Bool)

(assert (= b_lambda!41965 (or b!1370759 b_lambda!41993)))

(declare-fun bs!335676 () Bool)

(declare-fun d!391201 () Bool)

(assert (= bs!335676 (and d!391201 b!1370759)))

(declare-fun res!617921 () Bool)

(declare-fun e!876714 () Bool)

(assert (=> bs!335676 (=> (not res!617921) (not e!876714))))

(assert (=> bs!335676 (= res!617921 (validRegex!1619 lt!455224))))

(assert (=> bs!335676 (= (dynLambda!6316 lambda!58185 lt!455224) e!876714)))

(declare-fun b!1371495 () Bool)

(assert (=> b!1371495 (= e!876714 (matchR!1712 lt!455224 lt!454960))))

(assert (= (and bs!335676 res!617921) b!1371495))

(declare-fun m!1541875 () Bool)

(assert (=> bs!335676 m!1541875))

(declare-fun m!1541877 () Bool)

(assert (=> b!1371495 m!1541877))

(assert (=> d!391165 d!391201))

(check-sat (not d!391013) (not b!1371481) (not d!391097) (not d!390999) (not d!390963) (not b_next!33929) (not b!1371260) (not b!1371103) (not b!1370994) (not b!1371366) (not b!1371436) (not b!1371314) (not b!1371452) (not b!1371268) (not b!1371388) (not d!391065) (not b_lambda!41979) (not d!391005) (not d!390997) (not b!1371352) b_and!91941 (not b_next!33933) (not b!1371185) (not b!1371278) (not b!1371337) (not b!1371482) (not d!390959) (not b!1371340) (not d!391123) (not b_lambda!41983) (not d!391169) (not b!1371453) (not b!1371261) (not d!391109) (not b_next!33923) (not tb!72223) (not d!391151) (not b!1371491) (not d!390991) (not b!1371485) (not b!1371471) (not b!1371319) (not b!1371351) (not b!1371345) (not d!391161) (not b!1371105) (not b_next!33927) (not b!1371385) (not b!1371407) (not b_next!33931) (not b!1371050) (not d!391111) (not bs!335673) (not b!1371401) (not b!1371417) (not b!1371271) (not d!391129) (not b!1371168) (not d!391153) (not d!391141) (not b!1371028) (not d!391175) (not b!1371423) (not b!1371450) (not b!1371414) (not d!391103) (not b!1371322) (not b!1371488) (not b!1371336) (not b!1371347) (not d!391119) (not d!391139) (not b!1371365) b_and!91883 (not b_lambda!41969) (not d!391107) (not d!391165) (not b!1371400) (not d!391045) (not b_lambda!41981) (not d!391131) (not d!391173) (not b!1371451) (not b!1371470) (not d!391171) (not b!1371487) (not d!391157) (not b_lambda!41977) (not bs!335674) (not b_lambda!41971) (not b!1371490) (not d!391159) (not b!1371257) (not b!1371317) b_and!91875 (not b!1371492) (not b!1371270) (not bs!335676) (not b_lambda!41973) (not b!1371255) (not d!391117) (not b!1371371) (not b!1371441) (not b!1371348) (not b_lambda!41975) (not d!390969) (not b!1371167) (not d!391137) (not b_next!33925) b_and!91935 (not d!390965) (not bm!92087) (not d!391167) b_and!91939 (not b!1371338) (not b!1371010) (not d!390971) (not b!1371029) (not d!391047) (not d!391135) (not d!391075) (not b!1371172) (not b!1371267) (not d!391149) (not b!1371368) (not b!1371258) (not d!391177) (not b!1371415) (not b_lambda!41985) (not d!391183) (not b!1371349) (not d!390973) (not b!1370974) (not b_lambda!41989) (not b!1371275) (not b!1371458) (not b!1371318) (not bs!335668) (not b_lambda!41991) (not b!1371443) (not b!1371369) (not b!1371416) (not bs!335671) (not d!391113) (not b!1371494) (not d!391125) (not b!1370973) (not d!390957) (not b!1371346) (not b!1371321) (not b!1371042) (not bs!335675) (not b!1371486) (not b!1371280) (not d!390985) (not b!1370972) (not b_lambda!41993) (not tb!72207) (not b!1371256) (not bm!92083) (not d!391127) (not b!1371493) (not d!391027) (not d!391143) (not b!1371383) (not d!390931) (not b!1371273) (not b!1371444) (not bm!92086) (not b!1371106) b_and!91933 (not b!1371326) (not d!391071) (not d!391145) (not b_next!33939) (not b!1371053) (not d!391163) (not b!1371325) (not bm!92088) (not d!391155) (not b!1371327) tp_is_empty!6747 b_and!91879 (not b!1371262) (not b!1371350) (not b!1371259) (not d!391057) (not b!1371413) (not b!1371370) (not b!1371472) (not b!1371438) (not d!391115) (not b!1371373) (not b!1371389) (not d!391101) b_and!91937 (not b!1371180) (not b!1371104) (not b!1371495) (not b!1371277) (not b!1371341) (not b_next!33941) (not b!1371364) (not b!1371037) (not b!1371182) (not d!391133) (not b!1370983) (not b_lambda!41987) (not b!1371387) (not b!1371272) (not d!391147) (not b!1371333) (not b!1371026) (not d!391121))
(check-sat (not b_next!33929) (not b_next!33923) b_and!91883 b_and!91875 (not b_next!33925) b_and!91879 b_and!91937 (not b_next!33941) b_and!91941 (not b_next!33933) (not b_next!33927) (not b_next!33931) b_and!91935 b_and!91939 b_and!91933 (not b_next!33939))
(get-model)

(declare-fun b!1371582 () Bool)

(declare-fun res!617955 () Bool)

(declare-fun e!876766 () Bool)

(assert (=> b!1371582 (=> (not res!617955) (not e!876766))))

(declare-fun lt!455364 () tuple2!13488)

(assert (=> b!1371582 (= res!617955 (= (list!5351 (_1!7630 lt!455364)) (_1!7629 (lexList!618 thiss!19762 rules!2550 (list!5350 (print!866 thiss!19762 (singletonSeq!1036 t1!34)))))))))

(declare-fun b!1371583 () Bool)

(declare-fun e!876764 () Bool)

(assert (=> b!1371583 (= e!876764 (not (isEmpty!8378 (_1!7630 lt!455364))))))

(declare-fun b!1371584 () Bool)

(assert (=> b!1371584 (= e!876766 (= (list!5350 (_2!7630 lt!455364)) (_2!7629 (lexList!618 thiss!19762 rules!2550 (list!5350 (print!866 thiss!19762 (singletonSeq!1036 t1!34)))))))))

(declare-fun b!1371585 () Bool)

(declare-fun e!876765 () Bool)

(assert (=> b!1371585 (= e!876765 e!876764)))

(declare-fun res!617957 () Bool)

(assert (=> b!1371585 (= res!617957 (< (size!11392 (_2!7630 lt!455364)) (size!11392 (print!866 thiss!19762 (singletonSeq!1036 t1!34)))))))

(assert (=> b!1371585 (=> (not res!617957) (not e!876764))))

(declare-fun b!1371586 () Bool)

(assert (=> b!1371586 (= e!876765 (= (_2!7630 lt!455364) (print!866 thiss!19762 (singletonSeq!1036 t1!34))))))

(declare-fun d!391241 () Bool)

(assert (=> d!391241 e!876766))

(declare-fun res!617956 () Bool)

(assert (=> d!391241 (=> (not res!617956) (not e!876766))))

(assert (=> d!391241 (= res!617956 e!876765)))

(declare-fun c!225668 () Bool)

(assert (=> d!391241 (= c!225668 (> (size!11397 (_1!7630 lt!455364)) 0))))

(assert (=> d!391241 (= lt!455364 (lexTailRecV2!413 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t1!34)) (BalanceConc!9085 Empty!4572) (print!866 thiss!19762 (singletonSeq!1036 t1!34)) (BalanceConc!9087 Empty!4573)))))

(assert (=> d!391241 (= (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t1!34))) lt!455364)))

(assert (= (and d!391241 c!225668) b!1371585))

(assert (= (and d!391241 (not c!225668)) b!1371586))

(assert (= (and b!1371585 res!617957) b!1371583))

(assert (= (and d!391241 res!617956) b!1371582))

(assert (= (and b!1371582 res!617955) b!1371584))

(declare-fun m!1542073 () Bool)

(assert (=> b!1371582 m!1542073))

(assert (=> b!1371582 m!1540835))

(declare-fun m!1542075 () Bool)

(assert (=> b!1371582 m!1542075))

(assert (=> b!1371582 m!1542075))

(declare-fun m!1542077 () Bool)

(assert (=> b!1371582 m!1542077))

(declare-fun m!1542079 () Bool)

(assert (=> b!1371583 m!1542079))

(declare-fun m!1542081 () Bool)

(assert (=> b!1371585 m!1542081))

(assert (=> b!1371585 m!1540835))

(declare-fun m!1542083 () Bool)

(assert (=> b!1371585 m!1542083))

(declare-fun m!1542085 () Bool)

(assert (=> d!391241 m!1542085))

(assert (=> d!391241 m!1540835))

(assert (=> d!391241 m!1540835))

(declare-fun m!1542087 () Bool)

(assert (=> d!391241 m!1542087))

(declare-fun m!1542089 () Bool)

(assert (=> b!1371584 m!1542089))

(assert (=> b!1371584 m!1540835))

(assert (=> b!1371584 m!1542075))

(assert (=> b!1371584 m!1542075))

(assert (=> b!1371584 m!1542077))

(assert (=> d!391103 d!391241))

(assert (=> d!391103 d!391027))

(declare-fun d!391247 () Bool)

(declare-fun lt!455369 () Int)

(assert (=> d!391247 (= lt!455369 (size!11402 (list!5351 (_1!7630 lt!455164))))))

(declare-fun size!11406 (Conc!4573) Int)

(assert (=> d!391247 (= lt!455369 (size!11406 (c!225514 (_1!7630 lt!455164))))))

(assert (=> d!391247 (= (size!11397 (_1!7630 lt!455164)) lt!455369)))

(declare-fun bs!335699 () Bool)

(assert (= bs!335699 d!391247))

(declare-fun m!1542109 () Bool)

(assert (=> bs!335699 m!1542109))

(assert (=> bs!335699 m!1542109))

(declare-fun m!1542111 () Bool)

(assert (=> bs!335699 m!1542111))

(declare-fun m!1542113 () Bool)

(assert (=> bs!335699 m!1542113))

(assert (=> d!391103 d!391247))

(assert (=> d!391103 d!391057))

(declare-fun d!391259 () Bool)

(assert (=> d!391259 (= (list!5351 (_1!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t1!34))))) (list!5354 (c!225514 (_1!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t1!34)))))))))

(declare-fun bs!335700 () Bool)

(assert (= bs!335700 d!391259))

(declare-fun m!1542115 () Bool)

(assert (=> bs!335700 m!1542115))

(assert (=> d!391103 d!391259))

(declare-fun d!391261 () Bool)

(assert (=> d!391261 (= (list!5351 (singletonSeq!1036 t1!34)) (list!5354 (c!225514 (singletonSeq!1036 t1!34))))))

(declare-fun bs!335701 () Bool)

(assert (= bs!335701 d!391261))

(declare-fun m!1542117 () Bool)

(assert (=> bs!335701 m!1542117))

(assert (=> d!391103 d!391261))

(assert (=> d!391103 d!391179))

(declare-fun d!391263 () Bool)

(assert (=> d!391263 (= (isEmpty!8376 (originalCharacters!3267 t1!34)) ((_ is Nil!13888) (originalCharacters!3267 t1!34)))))

(assert (=> d!391159 d!391263))

(declare-fun d!391265 () Bool)

(assert (=> d!391265 (= (list!5350 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34))) (list!5355 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34)))))))

(declare-fun bs!335702 () Bool)

(assert (= bs!335702 d!391265))

(declare-fun m!1542119 () Bool)

(assert (=> bs!335702 m!1542119))

(assert (=> b!1371413 d!391265))

(declare-fun d!391267 () Bool)

(assert (=> d!391267 (dynLambda!6311 lambda!58187 (rule!4160 t1!34))))

(assert (=> d!391267 true))

(declare-fun _$7!717 () Unit!20107)

(assert (=> d!391267 (= (choose!8439 rules!2550 lambda!58187 (rule!4160 t1!34)) _$7!717)))

(declare-fun b_lambda!41997 () Bool)

(assert (=> (not b_lambda!41997) (not d!391267)))

(declare-fun bs!335703 () Bool)

(assert (= bs!335703 d!391267))

(assert (=> bs!335703 m!1541611))

(assert (=> d!391113 d!391267))

(declare-fun d!391275 () Bool)

(declare-fun res!617970 () Bool)

(declare-fun e!876782 () Bool)

(assert (=> d!391275 (=> res!617970 e!876782)))

(assert (=> d!391275 (= res!617970 ((_ is Nil!13890) rules!2550))))

(assert (=> d!391275 (= (forall!3396 rules!2550 lambda!58187) e!876782)))

(declare-fun b!1371611 () Bool)

(declare-fun e!876783 () Bool)

(assert (=> b!1371611 (= e!876782 e!876783)))

(declare-fun res!617971 () Bool)

(assert (=> b!1371611 (=> (not res!617971) (not e!876783))))

(assert (=> b!1371611 (= res!617971 (dynLambda!6311 lambda!58187 (h!19291 rules!2550)))))

(declare-fun b!1371612 () Bool)

(assert (=> b!1371612 (= e!876783 (forall!3396 (t!121485 rules!2550) lambda!58187))))

(assert (= (and d!391275 (not res!617970)) b!1371611))

(assert (= (and b!1371611 res!617971) b!1371612))

(declare-fun b_lambda!41999 () Bool)

(assert (=> (not b_lambda!41999) (not b!1371611)))

(declare-fun m!1542121 () Bool)

(assert (=> b!1371611 m!1542121))

(declare-fun m!1542123 () Bool)

(assert (=> b!1371612 m!1542123))

(assert (=> d!391113 d!391275))

(declare-fun bs!335704 () Bool)

(declare-fun d!391277 () Bool)

(assert (= bs!335704 (and d!391277 b!1370766)))

(declare-fun lambda!58244 () Int)

(assert (=> bs!335704 (not (= lambda!58244 lambda!58186))))

(declare-fun bs!335705 () Bool)

(assert (= bs!335705 (and d!391277 b!1370757)))

(assert (=> bs!335705 (not (= lambda!58244 lambda!58187))))

(declare-fun bs!335706 () Bool)

(assert (= bs!335706 (and d!391277 d!390957)))

(assert (=> bs!335706 (= (= lambda!58205 lambda!58186) (= lambda!58244 lambda!58202))))

(declare-fun bs!335707 () Bool)

(assert (= bs!335707 (and d!391277 d!390959)))

(assert (=> bs!335707 (not (= lambda!58244 lambda!58205))))

(assert (=> d!391277 true))

(assert (=> d!391277 (< (dynLambda!6306 order!8467 lambda!58205) (dynLambda!6306 order!8467 lambda!58244))))

(assert (=> d!391277 (= (exists!469 rules!2550 lambda!58205) (not (forall!3396 rules!2550 lambda!58244)))))

(declare-fun bs!335708 () Bool)

(assert (= bs!335708 d!391277))

(declare-fun m!1542129 () Bool)

(assert (=> bs!335708 m!1542129))

(assert (=> d!390959 d!391277))

(declare-fun bs!335709 () Bool)

(declare-fun d!391281 () Bool)

(assert (= bs!335709 (and d!391281 b!1370766)))

(declare-fun lambda!58247 () Int)

(assert (=> bs!335709 (not (= lambda!58247 lambda!58186))))

(declare-fun bs!335710 () Bool)

(assert (= bs!335710 (and d!391281 b!1370757)))

(assert (=> bs!335710 (not (= lambda!58247 lambda!58187))))

(declare-fun bs!335711 () Bool)

(assert (= bs!335711 (and d!391281 d!390959)))

(assert (=> bs!335711 (= lambda!58247 lambda!58205)))

(declare-fun bs!335712 () Bool)

(assert (= bs!335712 (and d!391281 d!391277)))

(assert (=> bs!335712 (not (= lambda!58247 lambda!58244))))

(declare-fun bs!335713 () Bool)

(assert (= bs!335713 (and d!391281 d!390957)))

(assert (=> bs!335713 (not (= lambda!58247 lambda!58202))))

(assert (=> d!391281 true))

(assert (=> d!391281 true))

(assert (=> d!391281 (< (dynLambda!6307 order!8469 lambda!58184) (dynLambda!6306 order!8467 lambda!58247))))

(assert (=> d!391281 (exists!469 rules!2550 lambda!58247)))

(assert (=> d!391281 true))

(declare-fun _$24!109 () Unit!20107)

(assert (=> d!391281 (= (choose!8435 rules!2550 lambda!58184 lt!454964) _$24!109)))

(declare-fun bs!335714 () Bool)

(assert (= bs!335714 d!391281))

(declare-fun m!1542143 () Bool)

(assert (=> bs!335714 m!1542143))

(assert (=> d!390959 d!391281))

(assert (=> d!390959 d!391163))

(assert (=> d!390959 d!391141))

(declare-fun d!391285 () Bool)

(declare-fun lt!455373 () Int)

(assert (=> d!391285 (>= lt!455373 0)))

(declare-fun e!876797 () Int)

(assert (=> d!391285 (= lt!455373 e!876797)))

(declare-fun c!225681 () Bool)

(assert (=> d!391285 (= c!225681 ((_ is Nil!13888) (_2!7629 lt!455190)))))

(assert (=> d!391285 (= (size!11399 (_2!7629 lt!455190)) lt!455373)))

(declare-fun b!1371638 () Bool)

(assert (=> b!1371638 (= e!876797 0)))

(declare-fun b!1371639 () Bool)

(assert (=> b!1371639 (= e!876797 (+ 1 (size!11399 (t!121483 (_2!7629 lt!455190)))))))

(assert (= (and d!391285 c!225681) b!1371638))

(assert (= (and d!391285 (not c!225681)) b!1371639))

(declare-fun m!1542145 () Bool)

(assert (=> b!1371639 m!1542145))

(assert (=> b!1371366 d!391285))

(declare-fun d!391287 () Bool)

(declare-fun lt!455374 () Int)

(assert (=> d!391287 (>= lt!455374 0)))

(declare-fun e!876798 () Int)

(assert (=> d!391287 (= lt!455374 e!876798)))

(declare-fun c!225682 () Bool)

(assert (=> d!391287 (= c!225682 ((_ is Nil!13888) (list!5350 lt!454956)))))

(assert (=> d!391287 (= (size!11399 (list!5350 lt!454956)) lt!455374)))

(declare-fun b!1371640 () Bool)

(assert (=> b!1371640 (= e!876798 0)))

(declare-fun b!1371641 () Bool)

(assert (=> b!1371641 (= e!876798 (+ 1 (size!11399 (t!121483 (list!5350 lt!454956)))))))

(assert (= (and d!391287 c!225682) b!1371640))

(assert (= (and d!391287 (not c!225682)) b!1371641))

(declare-fun m!1542147 () Bool)

(assert (=> b!1371641 m!1542147))

(assert (=> b!1371366 d!391287))

(declare-fun d!391289 () Bool)

(declare-fun lt!455375 () Bool)

(assert (=> d!391289 (= lt!455375 (select (content!2032 rules!2550) lt!455137))))

(declare-fun e!876800 () Bool)

(assert (=> d!391289 (= lt!455375 e!876800)))

(declare-fun res!617984 () Bool)

(assert (=> d!391289 (=> (not res!617984) (not e!876800))))

(assert (=> d!391289 (= res!617984 ((_ is Cons!13890) rules!2550))))

(assert (=> d!391289 (= (contains!2599 rules!2550 lt!455137) lt!455375)))

(declare-fun b!1371642 () Bool)

(declare-fun e!876799 () Bool)

(assert (=> b!1371642 (= e!876800 e!876799)))

(declare-fun res!617983 () Bool)

(assert (=> b!1371642 (=> res!617983 e!876799)))

(assert (=> b!1371642 (= res!617983 (= (h!19291 rules!2550) lt!455137))))

(declare-fun b!1371643 () Bool)

(assert (=> b!1371643 (= e!876799 (contains!2599 (t!121485 rules!2550) lt!455137))))

(assert (= (and d!391289 res!617984) b!1371642))

(assert (= (and b!1371642 (not res!617983)) b!1371643))

(assert (=> d!391289 m!1541221))

(declare-fun m!1542149 () Bool)

(assert (=> d!391289 m!1542149))

(declare-fun m!1542151 () Bool)

(assert (=> b!1371643 m!1542151))

(assert (=> b!1371167 d!391289))

(declare-fun d!391291 () Bool)

(assert (=> d!391291 (= (list!5350 lt!455067) (list!5355 (c!225513 lt!455067)))))

(declare-fun bs!335715 () Bool)

(assert (= bs!335715 d!391291))

(declare-fun m!1542153 () Bool)

(assert (=> bs!335715 m!1542153))

(assert (=> d!390973 d!391291))

(declare-fun d!391293 () Bool)

(assert (=> d!391293 (= (head!2471 (map!3068 rules!2550 lambda!58184)) (h!19293 (map!3068 rules!2550 lambda!58184)))))

(assert (=> b!1371438 d!391293))

(declare-fun b!1371645 () Bool)

(declare-fun e!876801 () List!13954)

(assert (=> b!1371645 (= e!876801 (Cons!13888 (h!19289 lt!454969) (++!3590 (t!121483 lt!454969) lt!455212)))))

(declare-fun d!391295 () Bool)

(declare-fun e!876802 () Bool)

(assert (=> d!391295 e!876802))

(declare-fun res!617985 () Bool)

(assert (=> d!391295 (=> (not res!617985) (not e!876802))))

(declare-fun lt!455376 () List!13954)

(assert (=> d!391295 (= res!617985 (= (content!2031 lt!455376) ((_ map or) (content!2031 lt!454969) (content!2031 lt!455212))))))

(assert (=> d!391295 (= lt!455376 e!876801)))

(declare-fun c!225683 () Bool)

(assert (=> d!391295 (= c!225683 ((_ is Nil!13888) lt!454969))))

(assert (=> d!391295 (= (++!3590 lt!454969 lt!455212) lt!455376)))

(declare-fun b!1371646 () Bool)

(declare-fun res!617986 () Bool)

(assert (=> b!1371646 (=> (not res!617986) (not e!876802))))

(assert (=> b!1371646 (= res!617986 (= (size!11399 lt!455376) (+ (size!11399 lt!454969) (size!11399 lt!455212))))))

(declare-fun b!1371644 () Bool)

(assert (=> b!1371644 (= e!876801 lt!455212)))

(declare-fun b!1371647 () Bool)

(assert (=> b!1371647 (= e!876802 (or (not (= lt!455212 Nil!13888)) (= lt!455376 lt!454969)))))

(assert (= (and d!391295 c!225683) b!1371644))

(assert (= (and d!391295 (not c!225683)) b!1371645))

(assert (= (and d!391295 res!617985) b!1371646))

(assert (= (and b!1371646 res!617986) b!1371647))

(declare-fun m!1542155 () Bool)

(assert (=> b!1371645 m!1542155))

(declare-fun m!1542157 () Bool)

(assert (=> d!391295 m!1542157))

(assert (=> d!391295 m!1541205))

(declare-fun m!1542159 () Bool)

(assert (=> d!391295 m!1542159))

(declare-fun m!1542161 () Bool)

(assert (=> b!1371646 m!1542161))

(assert (=> b!1371646 m!1541767))

(declare-fun m!1542163 () Bool)

(assert (=> b!1371646 m!1542163))

(assert (=> d!391155 d!391295))

(declare-fun d!391297 () Bool)

(declare-fun lt!455379 () Int)

(assert (=> d!391297 (>= lt!455379 0)))

(declare-fun e!876807 () Int)

(assert (=> d!391297 (= lt!455379 e!876807)))

(declare-fun c!225688 () Bool)

(assert (=> d!391297 (= c!225688 ((_ is Nil!13888) lt!454960))))

(assert (=> d!391297 (= (size!11399 lt!454960) lt!455379)))

(declare-fun b!1371656 () Bool)

(assert (=> b!1371656 (= e!876807 0)))

(declare-fun b!1371657 () Bool)

(assert (=> b!1371657 (= e!876807 (+ 1 (size!11399 (t!121483 lt!454960))))))

(assert (= (and d!391297 c!225688) b!1371656))

(assert (= (and d!391297 (not c!225688)) b!1371657))

(declare-fun m!1542165 () Bool)

(assert (=> b!1371657 m!1542165))

(assert (=> d!391155 d!391297))

(declare-fun d!391299 () Bool)

(declare-fun lt!455380 () Int)

(assert (=> d!391299 (>= lt!455380 0)))

(declare-fun e!876814 () Int)

(assert (=> d!391299 (= lt!455380 e!876814)))

(declare-fun c!225695 () Bool)

(assert (=> d!391299 (= c!225695 ((_ is Nil!13888) lt!454969))))

(assert (=> d!391299 (= (size!11399 lt!454969) lt!455380)))

(declare-fun b!1371670 () Bool)

(assert (=> b!1371670 (= e!876814 0)))

(declare-fun b!1371671 () Bool)

(assert (=> b!1371671 (= e!876814 (+ 1 (size!11399 (t!121483 lt!454969))))))

(assert (= (and d!391299 c!225695) b!1371670))

(assert (= (and d!391299 (not c!225695)) b!1371671))

(declare-fun m!1542167 () Bool)

(assert (=> b!1371671 m!1542167))

(assert (=> d!391155 d!391299))

(declare-fun d!391301 () Bool)

(declare-fun lt!455381 () List!13954)

(assert (=> d!391301 (= (++!3590 (t!121483 lt!454969) lt!455381) (tail!1982 lt!454960))))

(declare-fun e!876815 () List!13954)

(assert (=> d!391301 (= lt!455381 e!876815)))

(declare-fun c!225696 () Bool)

(assert (=> d!391301 (= c!225696 ((_ is Cons!13888) (t!121483 lt!454969)))))

(assert (=> d!391301 (>= (size!11399 (tail!1982 lt!454960)) (size!11399 (t!121483 lt!454969)))))

(assert (=> d!391301 (= (getSuffix!567 (tail!1982 lt!454960) (t!121483 lt!454969)) lt!455381)))

(declare-fun b!1371672 () Bool)

(assert (=> b!1371672 (= e!876815 (getSuffix!567 (tail!1982 (tail!1982 lt!454960)) (t!121483 (t!121483 lt!454969))))))

(declare-fun b!1371673 () Bool)

(assert (=> b!1371673 (= e!876815 (tail!1982 lt!454960))))

(assert (= (and d!391301 c!225696) b!1371672))

(assert (= (and d!391301 (not c!225696)) b!1371673))

(declare-fun m!1542169 () Bool)

(assert (=> d!391301 m!1542169))

(assert (=> d!391301 m!1541629))

(declare-fun m!1542171 () Bool)

(assert (=> d!391301 m!1542171))

(assert (=> d!391301 m!1542167))

(assert (=> b!1371672 m!1541629))

(declare-fun m!1542173 () Bool)

(assert (=> b!1371672 m!1542173))

(assert (=> b!1371672 m!1542173))

(declare-fun m!1542175 () Bool)

(assert (=> b!1371672 m!1542175))

(assert (=> b!1371407 d!391301))

(declare-fun d!391303 () Bool)

(assert (=> d!391303 (= (tail!1982 lt!454960) (t!121483 lt!454960))))

(assert (=> b!1371407 d!391303))

(declare-fun d!391305 () Bool)

(assert (=> d!391305 (= (list!5350 lt!455227) (list!5355 (c!225513 lt!455227)))))

(declare-fun bs!335716 () Bool)

(assert (= bs!335716 d!391305))

(declare-fun m!1542177 () Bool)

(assert (=> bs!335716 m!1542177))

(assert (=> d!391173 d!391305))

(declare-fun b!1371674 () Bool)

(declare-fun res!617994 () Bool)

(declare-fun e!876817 () Bool)

(assert (=> b!1371674 (=> res!617994 e!876817)))

(assert (=> b!1371674 (= res!617994 (not ((_ is ElementMatch!3719) (h!19293 (map!3068 rules!2550 lambda!58184)))))))

(declare-fun e!876818 () Bool)

(assert (=> b!1371674 (= e!876818 e!876817)))

(declare-fun b!1371675 () Bool)

(declare-fun lt!455382 () Bool)

(assert (=> b!1371675 (= e!876818 (not lt!455382))))

(declare-fun b!1371676 () Bool)

(declare-fun res!617992 () Bool)

(declare-fun e!876822 () Bool)

(assert (=> b!1371676 (=> (not res!617992) (not e!876822))))

(declare-fun call!92102 () Bool)

(assert (=> b!1371676 (= res!617992 (not call!92102))))

(declare-fun d!391307 () Bool)

(declare-fun e!876819 () Bool)

(assert (=> d!391307 e!876819))

(declare-fun c!225698 () Bool)

(assert (=> d!391307 (= c!225698 ((_ is EmptyExpr!3719) (h!19293 (map!3068 rules!2550 lambda!58184))))))

(declare-fun e!876820 () Bool)

(assert (=> d!391307 (= lt!455382 e!876820)))

(declare-fun c!225697 () Bool)

(assert (=> d!391307 (= c!225697 (isEmpty!8376 lt!454960))))

(assert (=> d!391307 (validRegex!1619 (h!19293 (map!3068 rules!2550 lambda!58184)))))

(assert (=> d!391307 (= (matchR!1712 (h!19293 (map!3068 rules!2550 lambda!58184)) lt!454960) lt!455382)))

(declare-fun bm!92095 () Bool)

(assert (=> bm!92095 (= call!92102 (isEmpty!8376 lt!454960))))

(declare-fun b!1371677 () Bool)

(assert (=> b!1371677 (= e!876819 e!876818)))

(declare-fun c!225699 () Bool)

(assert (=> b!1371677 (= c!225699 ((_ is EmptyLang!3719) (h!19293 (map!3068 rules!2550 lambda!58184))))))

(declare-fun b!1371678 () Bool)

(declare-fun e!876816 () Bool)

(assert (=> b!1371678 (= e!876817 e!876816)))

(declare-fun res!617990 () Bool)

(assert (=> b!1371678 (=> (not res!617990) (not e!876816))))

(assert (=> b!1371678 (= res!617990 (not lt!455382))))

(declare-fun b!1371679 () Bool)

(declare-fun e!876821 () Bool)

(assert (=> b!1371679 (= e!876821 (not (= (head!2469 lt!454960) (c!225512 (h!19293 (map!3068 rules!2550 lambda!58184))))))))

(declare-fun b!1371680 () Bool)

(assert (=> b!1371680 (= e!876819 (= lt!455382 call!92102))))

(declare-fun b!1371681 () Bool)

(assert (=> b!1371681 (= e!876816 e!876821)))

(declare-fun res!617987 () Bool)

(assert (=> b!1371681 (=> res!617987 e!876821)))

(assert (=> b!1371681 (= res!617987 call!92102)))

(declare-fun b!1371682 () Bool)

(assert (=> b!1371682 (= e!876820 (nullable!1199 (h!19293 (map!3068 rules!2550 lambda!58184))))))

(declare-fun b!1371683 () Bool)

(assert (=> b!1371683 (= e!876822 (= (head!2469 lt!454960) (c!225512 (h!19293 (map!3068 rules!2550 lambda!58184)))))))

(declare-fun b!1371684 () Bool)

(declare-fun res!617989 () Bool)

(assert (=> b!1371684 (=> res!617989 e!876821)))

(assert (=> b!1371684 (= res!617989 (not (isEmpty!8376 (tail!1982 lt!454960))))))

(declare-fun b!1371685 () Bool)

(declare-fun res!617993 () Bool)

(assert (=> b!1371685 (=> res!617993 e!876817)))

(assert (=> b!1371685 (= res!617993 e!876822)))

(declare-fun res!617991 () Bool)

(assert (=> b!1371685 (=> (not res!617991) (not e!876822))))

(assert (=> b!1371685 (= res!617991 lt!455382)))

(declare-fun b!1371686 () Bool)

(assert (=> b!1371686 (= e!876820 (matchR!1712 (derivativeStep!957 (h!19293 (map!3068 rules!2550 lambda!58184)) (head!2469 lt!454960)) (tail!1982 lt!454960)))))

(declare-fun b!1371687 () Bool)

(declare-fun res!617988 () Bool)

(assert (=> b!1371687 (=> (not res!617988) (not e!876822))))

(assert (=> b!1371687 (= res!617988 (isEmpty!8376 (tail!1982 lt!454960)))))

(assert (= (and d!391307 c!225697) b!1371682))

(assert (= (and d!391307 (not c!225697)) b!1371686))

(assert (= (and d!391307 c!225698) b!1371680))

(assert (= (and d!391307 (not c!225698)) b!1371677))

(assert (= (and b!1371677 c!225699) b!1371675))

(assert (= (and b!1371677 (not c!225699)) b!1371674))

(assert (= (and b!1371674 (not res!617994)) b!1371685))

(assert (= (and b!1371685 res!617991) b!1371676))

(assert (= (and b!1371676 res!617992) b!1371687))

(assert (= (and b!1371687 res!617988) b!1371683))

(assert (= (and b!1371685 (not res!617993)) b!1371678))

(assert (= (and b!1371678 res!617990) b!1371681))

(assert (= (and b!1371681 (not res!617987)) b!1371684))

(assert (= (and b!1371684 (not res!617989)) b!1371679))

(assert (= (or b!1371680 b!1371676 b!1371681) bm!92095))

(declare-fun m!1542179 () Bool)

(assert (=> b!1371682 m!1542179))

(assert (=> bm!92095 m!1541621))

(assert (=> d!391307 m!1541621))

(assert (=> d!391307 m!1541867))

(assert (=> b!1371686 m!1541625))

(assert (=> b!1371686 m!1541625))

(declare-fun m!1542181 () Bool)

(assert (=> b!1371686 m!1542181))

(assert (=> b!1371686 m!1541629))

(assert (=> b!1371686 m!1542181))

(assert (=> b!1371686 m!1541629))

(declare-fun m!1542183 () Bool)

(assert (=> b!1371686 m!1542183))

(assert (=> b!1371687 m!1541629))

(assert (=> b!1371687 m!1541629))

(assert (=> b!1371687 m!1541633))

(assert (=> b!1371684 m!1541629))

(assert (=> b!1371684 m!1541629))

(assert (=> b!1371684 m!1541633))

(assert (=> b!1371683 m!1541625))

(assert (=> b!1371679 m!1541625))

(assert (=> b!1371494 d!391307))

(assert (=> b!1371326 d!390997))

(declare-fun d!391309 () Bool)

(declare-fun lt!455383 () Int)

(assert (=> d!391309 (= lt!455383 (size!11402 (list!5351 (_1!7630 lt!455193))))))

(assert (=> d!391309 (= lt!455383 (size!11406 (c!225514 (_1!7630 lt!455193))))))

(assert (=> d!391309 (= (size!11397 (_1!7630 lt!455193)) lt!455383)))

(declare-fun bs!335717 () Bool)

(assert (= bs!335717 d!391309))

(assert (=> bs!335717 m!1541689))

(assert (=> bs!335717 m!1541689))

(declare-fun m!1542185 () Bool)

(assert (=> bs!335717 m!1542185))

(declare-fun m!1542187 () Bool)

(assert (=> bs!335717 m!1542187))

(assert (=> d!391131 d!391309))

(declare-fun b!1371956 () Bool)

(declare-fun e!876979 () tuple2!13488)

(assert (=> b!1371956 (= e!876979 (tuple2!13489 (BalanceConc!9087 Empty!4573) lt!454972))))

(declare-fun b!1371957 () Bool)

(declare-fun e!876978 () tuple2!13488)

(assert (=> b!1371957 (= e!876978 (tuple2!13489 (BalanceConc!9087 Empty!4573) lt!454972))))

(declare-fun d!391311 () Bool)

(declare-fun e!876977 () Bool)

(assert (=> d!391311 e!876977))

(declare-fun res!618124 () Bool)

(assert (=> d!391311 (=> (not res!618124) (not e!876977))))

(declare-fun lt!455545 () tuple2!13488)

(declare-fun lexRec!281 (LexerInterface!2100 List!13956 BalanceConc!9084) tuple2!13488)

(assert (=> d!391311 (= res!618124 (= (list!5351 (_1!7630 lt!455545)) (list!5351 (_1!7630 (lexRec!281 thiss!19762 rules!2550 lt!454972)))))))

(assert (=> d!391311 (= lt!455545 e!876978)))

(declare-fun c!225769 () Bool)

(declare-datatypes ((tuple2!13494 0))(
  ( (tuple2!13495 (_1!7633 Token!4472) (_2!7633 BalanceConc!9084)) )
))
(declare-datatypes ((Option!2670 0))(
  ( (None!2669) (Some!2669 (v!21486 tuple2!13494)) )
))
(declare-fun lt!455554 () Option!2670)

(assert (=> d!391311 (= c!225769 ((_ is Some!2669) lt!455554))))

(declare-fun maxPrefixZipperSequenceV2!226 (LexerInterface!2100 List!13956 BalanceConc!9084 BalanceConc!9084) Option!2670)

(assert (=> d!391311 (= lt!455554 (maxPrefixZipperSequenceV2!226 thiss!19762 rules!2550 lt!454972 lt!454972))))

(declare-fun lt!455564 () Unit!20107)

(declare-fun lt!455558 () Unit!20107)

(assert (=> d!391311 (= lt!455564 lt!455558)))

(declare-fun lt!455543 () List!13954)

(declare-fun lt!455563 () List!13954)

(declare-fun isSuffix!259 (List!13954 List!13954) Bool)

(assert (=> d!391311 (isSuffix!259 lt!455543 (++!3590 lt!455563 lt!455543))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!237 (List!13954 List!13954) Unit!20107)

(assert (=> d!391311 (= lt!455558 (lemmaConcatTwoListThenFSndIsSuffix!237 lt!455563 lt!455543))))

(assert (=> d!391311 (= lt!455543 (list!5350 lt!454972))))

(assert (=> d!391311 (= lt!455563 (list!5350 (BalanceConc!9085 Empty!4572)))))

(assert (=> d!391311 (= (lexTailRecV2!413 thiss!19762 rules!2550 lt!454972 (BalanceConc!9085 Empty!4572) lt!454972 (BalanceConc!9087 Empty!4573)) lt!455545)))

(declare-fun b!1371958 () Bool)

(declare-fun lt!455544 () BalanceConc!9084)

(declare-fun append!406 (BalanceConc!9086 Token!4472) BalanceConc!9086)

(assert (=> b!1371958 (= e!876978 (lexTailRecV2!413 thiss!19762 rules!2550 lt!454972 lt!455544 (_2!7633 (v!21486 lt!455554)) (append!406 (BalanceConc!9087 Empty!4573) (_1!7633 (v!21486 lt!455554)))))))

(declare-fun lt!455550 () tuple2!13488)

(assert (=> b!1371958 (= lt!455550 (lexRec!281 thiss!19762 rules!2550 (_2!7633 (v!21486 lt!455554))))))

(declare-fun lt!455561 () List!13954)

(assert (=> b!1371958 (= lt!455561 (list!5350 (BalanceConc!9085 Empty!4572)))))

(declare-fun lt!455546 () List!13954)

(assert (=> b!1371958 (= lt!455546 (list!5350 (charsOf!1377 (_1!7633 (v!21486 lt!455554)))))))

(declare-fun lt!455565 () List!13954)

(assert (=> b!1371958 (= lt!455565 (list!5350 (_2!7633 (v!21486 lt!455554))))))

(declare-fun lt!455555 () Unit!20107)

(declare-fun lemmaConcatAssociativity!861 (List!13954 List!13954 List!13954) Unit!20107)

(assert (=> b!1371958 (= lt!455555 (lemmaConcatAssociativity!861 lt!455561 lt!455546 lt!455565))))

(assert (=> b!1371958 (= (++!3590 (++!3590 lt!455561 lt!455546) lt!455565) (++!3590 lt!455561 (++!3590 lt!455546 lt!455565)))))

(declare-fun lt!455568 () Unit!20107)

(assert (=> b!1371958 (= lt!455568 lt!455555)))

(declare-fun lt!455552 () Option!2670)

(declare-fun maxPrefixZipperSequence!554 (LexerInterface!2100 List!13956 BalanceConc!9084) Option!2670)

(assert (=> b!1371958 (= lt!455552 (maxPrefixZipperSequence!554 thiss!19762 rules!2550 lt!454972))))

(declare-fun c!225770 () Bool)

(assert (=> b!1371958 (= c!225770 ((_ is Some!2669) lt!455552))))

(assert (=> b!1371958 (= (lexRec!281 thiss!19762 rules!2550 lt!454972) e!876979)))

(declare-fun lt!455566 () Unit!20107)

(declare-fun Unit!20119 () Unit!20107)

(assert (=> b!1371958 (= lt!455566 Unit!20119)))

(declare-fun lt!455539 () List!13957)

(assert (=> b!1371958 (= lt!455539 (list!5351 (BalanceConc!9087 Empty!4573)))))

(declare-fun lt!455547 () List!13957)

(assert (=> b!1371958 (= lt!455547 (Cons!13891 (_1!7633 (v!21486 lt!455554)) Nil!13891))))

(declare-fun lt!455549 () List!13957)

(assert (=> b!1371958 (= lt!455549 (list!5351 (_1!7630 lt!455550)))))

(declare-fun lt!455557 () Unit!20107)

(declare-fun lemmaConcatAssociativity!862 (List!13957 List!13957 List!13957) Unit!20107)

(assert (=> b!1371958 (= lt!455557 (lemmaConcatAssociativity!862 lt!455539 lt!455547 lt!455549))))

(declare-fun ++!3594 (List!13957 List!13957) List!13957)

(assert (=> b!1371958 (= (++!3594 (++!3594 lt!455539 lt!455547) lt!455549) (++!3594 lt!455539 (++!3594 lt!455547 lt!455549)))))

(declare-fun lt!455551 () Unit!20107)

(assert (=> b!1371958 (= lt!455551 lt!455557)))

(declare-fun lt!455567 () List!13954)

(assert (=> b!1371958 (= lt!455567 (++!3590 (list!5350 (BalanceConc!9085 Empty!4572)) (list!5350 (charsOf!1377 (_1!7633 (v!21486 lt!455554))))))))

(declare-fun lt!455538 () List!13954)

(assert (=> b!1371958 (= lt!455538 (list!5350 (_2!7633 (v!21486 lt!455554))))))

(declare-fun lt!455542 () List!13957)

(assert (=> b!1371958 (= lt!455542 (list!5351 (append!406 (BalanceConc!9087 Empty!4573) (_1!7633 (v!21486 lt!455554)))))))

(declare-fun lt!455559 () Unit!20107)

(declare-fun lemmaLexThenLexPrefix!196 (LexerInterface!2100 List!13956 List!13954 List!13954 List!13957 List!13957 List!13954) Unit!20107)

(assert (=> b!1371958 (= lt!455559 (lemmaLexThenLexPrefix!196 thiss!19762 rules!2550 lt!455567 lt!455538 lt!455542 (list!5351 (_1!7630 lt!455550)) (list!5350 (_2!7630 lt!455550))))))

(assert (=> b!1371958 (= (lexList!618 thiss!19762 rules!2550 lt!455567) (tuple2!13487 lt!455542 Nil!13888))))

(declare-fun lt!455548 () Unit!20107)

(assert (=> b!1371958 (= lt!455548 lt!455559)))

(declare-fun lt!455553 () BalanceConc!9084)

(assert (=> b!1371958 (= lt!455553 (++!3592 (BalanceConc!9085 Empty!4572) (charsOf!1377 (_1!7633 (v!21486 lt!455554)))))))

(declare-fun lt!455571 () Option!2670)

(assert (=> b!1371958 (= lt!455571 (maxPrefixZipperSequence!554 thiss!19762 rules!2550 lt!455553))))

(declare-fun c!225771 () Bool)

(assert (=> b!1371958 (= c!225771 ((_ is Some!2669) lt!455571))))

(declare-fun e!876976 () tuple2!13488)

(assert (=> b!1371958 (= (lexRec!281 thiss!19762 rules!2550 (++!3592 (BalanceConc!9085 Empty!4572) (charsOf!1377 (_1!7633 (v!21486 lt!455554))))) e!876976)))

(declare-fun lt!455570 () Unit!20107)

(declare-fun Unit!20120 () Unit!20107)

(assert (=> b!1371958 (= lt!455570 Unit!20120)))

(assert (=> b!1371958 (= lt!455544 (++!3592 (BalanceConc!9085 Empty!4572) (charsOf!1377 (_1!7633 (v!21486 lt!455554)))))))

(declare-fun lt!455569 () List!13954)

(assert (=> b!1371958 (= lt!455569 (list!5350 lt!455544))))

(declare-fun lt!455562 () List!13954)

(assert (=> b!1371958 (= lt!455562 (list!5350 (_2!7633 (v!21486 lt!455554))))))

(declare-fun lt!455540 () Unit!20107)

(assert (=> b!1371958 (= lt!455540 (lemmaConcatTwoListThenFSndIsSuffix!237 lt!455569 lt!455562))))

(assert (=> b!1371958 (isSuffix!259 lt!455562 (++!3590 lt!455569 lt!455562))))

(declare-fun lt!455541 () Unit!20107)

(assert (=> b!1371958 (= lt!455541 lt!455540)))

(declare-fun b!1371959 () Bool)

(declare-fun lt!455560 () tuple2!13488)

(assert (=> b!1371959 (= lt!455560 (lexRec!281 thiss!19762 rules!2550 (_2!7633 (v!21486 lt!455571))))))

(declare-fun prepend!370 (BalanceConc!9086 Token!4472) BalanceConc!9086)

(assert (=> b!1371959 (= e!876976 (tuple2!13489 (prepend!370 (_1!7630 lt!455560) (_1!7633 (v!21486 lt!455571))) (_2!7630 lt!455560)))))

(declare-fun b!1371960 () Bool)

(assert (=> b!1371960 (= e!876977 (= (list!5350 (_2!7630 lt!455545)) (list!5350 (_2!7630 (lexRec!281 thiss!19762 rules!2550 lt!454972)))))))

(declare-fun b!1371961 () Bool)

(declare-fun lt!455556 () tuple2!13488)

(assert (=> b!1371961 (= lt!455556 (lexRec!281 thiss!19762 rules!2550 (_2!7633 (v!21486 lt!455552))))))

(assert (=> b!1371961 (= e!876979 (tuple2!13489 (prepend!370 (_1!7630 lt!455556) (_1!7633 (v!21486 lt!455552))) (_2!7630 lt!455556)))))

(declare-fun b!1371962 () Bool)

(assert (=> b!1371962 (= e!876976 (tuple2!13489 (BalanceConc!9087 Empty!4573) lt!455553))))

(assert (= (and d!391311 c!225769) b!1371958))

(assert (= (and d!391311 (not c!225769)) b!1371957))

(assert (= (and b!1371958 c!225770) b!1371961))

(assert (= (and b!1371958 (not c!225770)) b!1371956))

(assert (= (and b!1371958 c!225771) b!1371959))

(assert (= (and b!1371958 (not c!225771)) b!1371962))

(assert (= (and d!391311 res!618124) b!1371960))

(declare-fun m!1542605 () Bool)

(assert (=> b!1371958 m!1542605))

(declare-fun m!1542607 () Bool)

(assert (=> b!1371958 m!1542607))

(declare-fun m!1542609 () Bool)

(assert (=> b!1371958 m!1542609))

(declare-fun m!1542611 () Bool)

(assert (=> b!1371958 m!1542611))

(declare-fun m!1542613 () Bool)

(assert (=> b!1371958 m!1542613))

(declare-fun m!1542615 () Bool)

(assert (=> b!1371958 m!1542615))

(declare-fun m!1542617 () Bool)

(assert (=> b!1371958 m!1542617))

(declare-fun m!1542619 () Bool)

(assert (=> b!1371958 m!1542619))

(declare-fun m!1542621 () Bool)

(assert (=> b!1371958 m!1542621))

(declare-fun m!1542624 () Bool)

(assert (=> b!1371958 m!1542624))

(assert (=> b!1371958 m!1542605))

(declare-fun m!1542627 () Bool)

(assert (=> b!1371958 m!1542627))

(declare-fun m!1542629 () Bool)

(assert (=> b!1371958 m!1542629))

(declare-fun m!1542631 () Bool)

(assert (=> b!1371958 m!1542631))

(declare-fun m!1542633 () Bool)

(assert (=> b!1371958 m!1542633))

(declare-fun m!1542635 () Bool)

(assert (=> b!1371958 m!1542635))

(declare-fun m!1542637 () Bool)

(assert (=> b!1371958 m!1542637))

(declare-fun m!1542639 () Bool)

(assert (=> b!1371958 m!1542639))

(declare-fun m!1542641 () Bool)

(assert (=> b!1371958 m!1542641))

(declare-fun m!1542643 () Bool)

(assert (=> b!1371958 m!1542643))

(declare-fun m!1542645 () Bool)

(assert (=> b!1371958 m!1542645))

(declare-fun m!1542647 () Bool)

(assert (=> b!1371958 m!1542647))

(declare-fun m!1542649 () Bool)

(assert (=> b!1371958 m!1542649))

(declare-fun m!1542651 () Bool)

(assert (=> b!1371958 m!1542651))

(declare-fun m!1542653 () Bool)

(assert (=> b!1371958 m!1542653))

(declare-fun m!1542655 () Bool)

(assert (=> b!1371958 m!1542655))

(declare-fun m!1542657 () Bool)

(assert (=> b!1371958 m!1542657))

(declare-fun m!1542659 () Bool)

(assert (=> b!1371958 m!1542659))

(assert (=> b!1371958 m!1542637))

(assert (=> b!1371958 m!1542613))

(declare-fun m!1542661 () Bool)

(assert (=> b!1371958 m!1542661))

(declare-fun m!1542665 () Bool)

(assert (=> b!1371958 m!1542665))

(assert (=> b!1371958 m!1542609))

(declare-fun m!1542667 () Bool)

(assert (=> b!1371958 m!1542667))

(assert (=> b!1371958 m!1542631))

(assert (=> b!1371958 m!1542627))

(declare-fun m!1542669 () Bool)

(assert (=> b!1371958 m!1542669))

(assert (=> b!1371958 m!1542613))

(assert (=> b!1371958 m!1542665))

(assert (=> b!1371958 m!1542624))

(assert (=> b!1371958 m!1542643))

(assert (=> b!1371958 m!1542647))

(declare-fun m!1542671 () Bool)

(assert (=> b!1371958 m!1542671))

(declare-fun m!1542673 () Bool)

(assert (=> b!1371958 m!1542673))

(assert (=> b!1371958 m!1542619))

(assert (=> b!1371958 m!1542624))

(assert (=> b!1371958 m!1542633))

(declare-fun m!1542675 () Bool)

(assert (=> b!1371959 m!1542675))

(declare-fun m!1542677 () Bool)

(assert (=> b!1371959 m!1542677))

(declare-fun m!1542679 () Bool)

(assert (=> b!1371961 m!1542679))

(declare-fun m!1542681 () Bool)

(assert (=> b!1371961 m!1542681))

(declare-fun m!1542683 () Bool)

(assert (=> b!1371960 m!1542683))

(assert (=> b!1371960 m!1542671))

(declare-fun m!1542685 () Bool)

(assert (=> b!1371960 m!1542685))

(assert (=> d!391311 m!1540793))

(declare-fun m!1542687 () Bool)

(assert (=> d!391311 m!1542687))

(assert (=> d!391311 m!1542671))

(assert (=> d!391311 m!1542631))

(declare-fun m!1542689 () Bool)

(assert (=> d!391311 m!1542689))

(declare-fun m!1542691 () Bool)

(assert (=> d!391311 m!1542691))

(assert (=> d!391311 m!1542689))

(declare-fun m!1542693 () Bool)

(assert (=> d!391311 m!1542693))

(declare-fun m!1542695 () Bool)

(assert (=> d!391311 m!1542695))

(declare-fun m!1542697 () Bool)

(assert (=> d!391311 m!1542697))

(assert (=> d!391131 d!391311))

(declare-fun d!391433 () Bool)

(assert (=> d!391433 (= (isEmpty!8380 lt!455162) (not ((_ is Some!2667) lt!455162)))))

(assert (=> d!391075 d!391433))

(declare-fun b!1372008 () Bool)

(declare-fun e!877006 () Bool)

(declare-fun e!877008 () Bool)

(assert (=> b!1372008 (= e!877006 e!877008)))

(declare-fun res!618140 () Bool)

(assert (=> b!1372008 (=> (not res!618140) (not e!877008))))

(assert (=> b!1372008 (= res!618140 (not ((_ is Nil!13888) (list!5350 lt!454959))))))

(declare-fun b!1372010 () Bool)

(assert (=> b!1372010 (= e!877008 (isPrefix!1129 (tail!1982 (list!5350 lt!454959)) (tail!1982 (list!5350 lt!454959))))))

(declare-fun b!1372011 () Bool)

(declare-fun e!877007 () Bool)

(assert (=> b!1372011 (= e!877007 (>= (size!11399 (list!5350 lt!454959)) (size!11399 (list!5350 lt!454959))))))

(declare-fun d!391435 () Bool)

(assert (=> d!391435 e!877007))

(declare-fun res!618143 () Bool)

(assert (=> d!391435 (=> res!618143 e!877007)))

(declare-fun lt!455581 () Bool)

(assert (=> d!391435 (= res!618143 (not lt!455581))))

(assert (=> d!391435 (= lt!455581 e!877006)))

(declare-fun res!618142 () Bool)

(assert (=> d!391435 (=> res!618142 e!877006)))

(assert (=> d!391435 (= res!618142 ((_ is Nil!13888) (list!5350 lt!454959)))))

(assert (=> d!391435 (= (isPrefix!1129 (list!5350 lt!454959) (list!5350 lt!454959)) lt!455581)))

(declare-fun b!1372009 () Bool)

(declare-fun res!618141 () Bool)

(assert (=> b!1372009 (=> (not res!618141) (not e!877008))))

(assert (=> b!1372009 (= res!618141 (= (head!2469 (list!5350 lt!454959)) (head!2469 (list!5350 lt!454959))))))

(assert (= (and d!391435 (not res!618142)) b!1372008))

(assert (= (and b!1372008 res!618140) b!1372009))

(assert (= (and b!1372009 res!618141) b!1372010))

(assert (= (and d!391435 (not res!618143)) b!1372011))

(assert (=> b!1372010 m!1540839))

(declare-fun m!1542723 () Bool)

(assert (=> b!1372010 m!1542723))

(assert (=> b!1372010 m!1540839))

(assert (=> b!1372010 m!1542723))

(assert (=> b!1372010 m!1542723))

(assert (=> b!1372010 m!1542723))

(declare-fun m!1542725 () Bool)

(assert (=> b!1372010 m!1542725))

(assert (=> b!1372011 m!1540839))

(assert (=> b!1372011 m!1541147))

(assert (=> b!1372011 m!1540839))

(assert (=> b!1372011 m!1541147))

(assert (=> b!1372009 m!1540839))

(declare-fun m!1542727 () Bool)

(assert (=> b!1372009 m!1542727))

(assert (=> b!1372009 m!1540839))

(assert (=> b!1372009 m!1542727))

(assert (=> d!391075 d!391435))

(declare-fun d!391447 () Bool)

(assert (=> d!391447 (isPrefix!1129 (list!5350 lt!454959) (list!5350 lt!454959))))

(declare-fun lt!455586 () Unit!20107)

(declare-fun choose!8445 (List!13954 List!13954) Unit!20107)

(assert (=> d!391447 (= lt!455586 (choose!8445 (list!5350 lt!454959) (list!5350 lt!454959)))))

(assert (=> d!391447 (= (lemmaIsPrefixRefl!791 (list!5350 lt!454959) (list!5350 lt!454959)) lt!455586)))

(declare-fun bs!335768 () Bool)

(assert (= bs!335768 d!391447))

(assert (=> bs!335768 m!1540839))

(assert (=> bs!335768 m!1540839))

(assert (=> bs!335768 m!1541539))

(assert (=> bs!335768 m!1540839))

(assert (=> bs!335768 m!1540839))

(declare-fun m!1542729 () Bool)

(assert (=> bs!335768 m!1542729))

(assert (=> d!391075 d!391447))

(declare-fun bs!335770 () Bool)

(declare-fun d!391449 () Bool)

(assert (= bs!335770 (and d!391449 b!1370766)))

(declare-fun lambda!58264 () Int)

(assert (=> bs!335770 (not (= lambda!58264 lambda!58186))))

(declare-fun bs!335771 () Bool)

(assert (= bs!335771 (and d!391449 b!1370757)))

(assert (=> bs!335771 (= lambda!58264 lambda!58187)))

(declare-fun bs!335772 () Bool)

(assert (= bs!335772 (and d!391449 d!390959)))

(assert (=> bs!335772 (not (= lambda!58264 lambda!58205))))

(declare-fun bs!335773 () Bool)

(assert (= bs!335773 (and d!391449 d!391281)))

(assert (=> bs!335773 (not (= lambda!58264 lambda!58247))))

(declare-fun bs!335774 () Bool)

(assert (= bs!335774 (and d!391449 d!391277)))

(assert (=> bs!335774 (not (= lambda!58264 lambda!58244))))

(declare-fun bs!335775 () Bool)

(assert (= bs!335775 (and d!391449 d!390957)))

(assert (=> bs!335775 (not (= lambda!58264 lambda!58202))))

(assert (=> d!391449 true))

(declare-fun lt!455594 () Bool)

(assert (=> d!391449 (= lt!455594 (forall!3396 rules!2550 lambda!58264))))

(declare-fun e!877032 () Bool)

(assert (=> d!391449 (= lt!455594 e!877032)))

(declare-fun res!618153 () Bool)

(assert (=> d!391449 (=> res!618153 e!877032)))

(assert (=> d!391449 (= res!618153 (not ((_ is Cons!13890) rules!2550)))))

(assert (=> d!391449 (= (rulesValidInductive!770 thiss!19762 rules!2550) lt!455594)))

(declare-fun b!1372049 () Bool)

(declare-fun e!877031 () Bool)

(assert (=> b!1372049 (= e!877032 e!877031)))

(declare-fun res!618154 () Bool)

(assert (=> b!1372049 (=> (not res!618154) (not e!877031))))

(assert (=> b!1372049 (= res!618154 (ruleValid!592 thiss!19762 (h!19291 rules!2550)))))

(declare-fun b!1372050 () Bool)

(assert (=> b!1372050 (= e!877031 (rulesValidInductive!770 thiss!19762 (t!121485 rules!2550)))))

(assert (= (and d!391449 (not res!618153)) b!1372049))

(assert (= (and b!1372049 res!618154) b!1372050))

(declare-fun m!1542797 () Bool)

(assert (=> d!391449 m!1542797))

(declare-fun m!1542799 () Bool)

(assert (=> b!1372049 m!1542799))

(declare-fun m!1542801 () Bool)

(assert (=> b!1372050 m!1542801))

(assert (=> d!391075 d!391449))

(declare-fun d!391479 () Bool)

(declare-fun lt!455600 () Int)

(assert (=> d!391479 (>= lt!455600 0)))

(declare-fun e!877044 () Int)

(assert (=> d!391479 (= lt!455600 e!877044)))

(declare-fun c!225802 () Bool)

(assert (=> d!391479 (= c!225802 ((_ is Nil!13892) lt!455201))))

(assert (=> d!391479 (= (size!11403 lt!455201) lt!455600)))

(declare-fun b!1372071 () Bool)

(assert (=> b!1372071 (= e!877044 0)))

(declare-fun b!1372072 () Bool)

(assert (=> b!1372072 (= e!877044 (+ 1 (size!11403 (t!121487 lt!455201))))))

(assert (= (and d!391479 c!225802) b!1372071))

(assert (= (and d!391479 (not c!225802)) b!1372072))

(declare-fun m!1542821 () Bool)

(assert (=> b!1372072 m!1542821))

(assert (=> d!391141 d!391479))

(declare-fun d!391489 () Bool)

(declare-fun lt!455603 () Int)

(assert (=> d!391489 (>= lt!455603 0)))

(declare-fun e!877050 () Int)

(assert (=> d!391489 (= lt!455603 e!877050)))

(declare-fun c!225806 () Bool)

(assert (=> d!391489 (= c!225806 ((_ is Nil!13890) rules!2550))))

(assert (=> d!391489 (= (size!11404 rules!2550) lt!455603)))

(declare-fun b!1372083 () Bool)

(assert (=> b!1372083 (= e!877050 0)))

(declare-fun b!1372084 () Bool)

(assert (=> b!1372084 (= e!877050 (+ 1 (size!11404 (t!121485 rules!2550))))))

(assert (= (and d!391489 c!225806) b!1372083))

(assert (= (and d!391489 (not c!225806)) b!1372084))

(declare-fun m!1542823 () Bool)

(assert (=> b!1372084 m!1542823))

(assert (=> d!391141 d!391489))

(declare-fun d!391491 () Bool)

(declare-fun c!225812 () Bool)

(assert (=> d!391491 (= c!225812 ((_ is Nil!13888) lt!454969))))

(declare-fun e!877064 () (InoxSet C!7728))

(assert (=> d!391491 (= (content!2031 lt!454969) e!877064)))

(declare-fun b!1372101 () Bool)

(assert (=> b!1372101 (= e!877064 ((as const (Array C!7728 Bool)) false))))

(declare-fun b!1372102 () Bool)

(assert (=> b!1372102 (= e!877064 ((_ map or) (store ((as const (Array C!7728 Bool)) false) (h!19289 lt!454969) true) (content!2031 (t!121483 lt!454969))))))

(assert (= (and d!391491 c!225812) b!1372101))

(assert (= (and d!391491 (not c!225812)) b!1372102))

(declare-fun m!1542825 () Bool)

(assert (=> b!1372102 m!1542825))

(declare-fun m!1542827 () Bool)

(assert (=> b!1372102 m!1542827))

(assert (=> d!390985 d!391491))

(assert (=> b!1371327 d!391065))

(declare-fun d!391493 () Bool)

(assert (=> d!391493 (= (list!5351 lt!455145) (list!5354 (c!225514 lt!455145)))))

(declare-fun bs!335779 () Bool)

(assert (= bs!335779 d!391493))

(declare-fun m!1542829 () Bool)

(assert (=> bs!335779 m!1542829))

(assert (=> d!391057 d!391493))

(declare-fun d!391495 () Bool)

(declare-fun e!877074 () Bool)

(assert (=> d!391495 e!877074))

(declare-fun res!618182 () Bool)

(assert (=> d!391495 (=> (not res!618182) (not e!877074))))

(declare-fun lt!455606 () BalanceConc!9086)

(assert (=> d!391495 (= res!618182 (= (list!5351 lt!455606) (Cons!13891 t1!34 Nil!13891)))))

(declare-fun choose!8446 (Token!4472) BalanceConc!9086)

(assert (=> d!391495 (= lt!455606 (choose!8446 t1!34))))

(assert (=> d!391495 (= (singleton!452 t1!34) lt!455606)))

(declare-fun b!1372114 () Bool)

(assert (=> b!1372114 (= e!877074 (isBalanced!1346 (c!225514 lt!455606)))))

(assert (= (and d!391495 res!618182) b!1372114))

(declare-fun m!1542837 () Bool)

(assert (=> d!391495 m!1542837))

(declare-fun m!1542839 () Bool)

(assert (=> d!391495 m!1542839))

(declare-fun m!1542841 () Bool)

(assert (=> b!1372114 m!1542841))

(assert (=> d!391057 d!391495))

(declare-fun b!1372199 () Bool)

(declare-fun res!618227 () Bool)

(declare-fun e!877126 () Bool)

(assert (=> b!1372199 (=> (not res!618227) (not e!877126))))

(declare-fun lt!455655 () Option!2668)

(assert (=> b!1372199 (= res!618227 (= (++!3590 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455655)))) (_2!7631 (get!4347 lt!455655))) (list!5350 lt!454959)))))

(declare-fun b!1372200 () Bool)

(declare-fun res!618231 () Bool)

(assert (=> b!1372200 (=> (not res!618231) (not e!877126))))

(assert (=> b!1372200 (= res!618231 (= (value!78175 (_1!7631 (get!4347 lt!455655))) (apply!3415 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455655)))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455655)))))))))

(declare-fun b!1372201 () Bool)

(declare-fun e!877125 () Bool)

(assert (=> b!1372201 (= e!877125 e!877126)))

(declare-fun res!618226 () Bool)

(assert (=> b!1372201 (=> (not res!618226) (not e!877126))))

(assert (=> b!1372201 (= res!618226 (matchR!1712 (regex!2405 (h!19291 rules!2550)) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455655))))))))

(declare-fun b!1372202 () Bool)

(declare-fun e!877128 () Option!2668)

(assert (=> b!1372202 (= e!877128 None!2667)))

(declare-fun d!391499 () Bool)

(assert (=> d!391499 e!877125))

(declare-fun res!618230 () Bool)

(assert (=> d!391499 (=> res!618230 e!877125)))

(assert (=> d!391499 (= res!618230 (isEmpty!8380 lt!455655))))

(assert (=> d!391499 (= lt!455655 e!877128)))

(declare-fun c!225834 () Bool)

(declare-datatypes ((tuple2!13496 0))(
  ( (tuple2!13497 (_1!7634 List!13954) (_2!7634 List!13954)) )
))
(declare-fun lt!455654 () tuple2!13496)

(assert (=> d!391499 (= c!225834 (isEmpty!8376 (_1!7634 lt!455654)))))

(declare-fun findLongestMatch!237 (Regex!3719 List!13954) tuple2!13496)

(assert (=> d!391499 (= lt!455654 (findLongestMatch!237 (regex!2405 (h!19291 rules!2550)) (list!5350 lt!454959)))))

(assert (=> d!391499 (ruleValid!592 thiss!19762 (h!19291 rules!2550))))

(assert (=> d!391499 (= (maxPrefixOneRule!617 thiss!19762 (h!19291 rules!2550) (list!5350 lt!454959)) lt!455655)))

(declare-fun b!1372203 () Bool)

(declare-fun res!618232 () Bool)

(assert (=> b!1372203 (=> (not res!618232) (not e!877126))))

(assert (=> b!1372203 (= res!618232 (= (rule!4160 (_1!7631 (get!4347 lt!455655))) (h!19291 rules!2550)))))

(declare-fun b!1372204 () Bool)

(assert (=> b!1372204 (= e!877126 (= (size!11391 (_1!7631 (get!4347 lt!455655))) (size!11399 (originalCharacters!3267 (_1!7631 (get!4347 lt!455655))))))))

(declare-fun b!1372205 () Bool)

(declare-fun res!618228 () Bool)

(assert (=> b!1372205 (=> (not res!618228) (not e!877126))))

(assert (=> b!1372205 (= res!618228 (< (size!11399 (_2!7631 (get!4347 lt!455655))) (size!11399 (list!5350 lt!454959))))))

(declare-fun b!1372206 () Bool)

(assert (=> b!1372206 (= e!877128 (Some!2667 (tuple2!13491 (Token!4473 (apply!3415 (transformation!2405 (h!19291 rules!2550)) (seqFromList!1635 (_1!7634 lt!455654))) (h!19291 rules!2550) (size!11392 (seqFromList!1635 (_1!7634 lt!455654))) (_1!7634 lt!455654)) (_2!7634 lt!455654))))))

(declare-fun lt!455653 () Unit!20107)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!265 (Regex!3719 List!13954) Unit!20107)

(assert (=> b!1372206 (= lt!455653 (longestMatchIsAcceptedByMatchOrIsEmpty!265 (regex!2405 (h!19291 rules!2550)) (list!5350 lt!454959)))))

(declare-fun res!618229 () Bool)

(declare-fun findLongestMatchInner!281 (Regex!3719 List!13954 Int List!13954 List!13954 Int) tuple2!13496)

(assert (=> b!1372206 (= res!618229 (isEmpty!8376 (_1!7634 (findLongestMatchInner!281 (regex!2405 (h!19291 rules!2550)) Nil!13888 (size!11399 Nil!13888) (list!5350 lt!454959) (list!5350 lt!454959) (size!11399 (list!5350 lt!454959))))))))

(declare-fun e!877127 () Bool)

(assert (=> b!1372206 (=> res!618229 e!877127)))

(assert (=> b!1372206 e!877127))

(declare-fun lt!455656 () Unit!20107)

(assert (=> b!1372206 (= lt!455656 lt!455653)))

(declare-fun lt!455652 () Unit!20107)

(declare-fun lemmaSemiInverse!335 (TokenValueInjection!4650 BalanceConc!9084) Unit!20107)

(assert (=> b!1372206 (= lt!455652 (lemmaSemiInverse!335 (transformation!2405 (h!19291 rules!2550)) (seqFromList!1635 (_1!7634 lt!455654))))))

(declare-fun b!1372207 () Bool)

(assert (=> b!1372207 (= e!877127 (matchR!1712 (regex!2405 (h!19291 rules!2550)) (_1!7634 (findLongestMatchInner!281 (regex!2405 (h!19291 rules!2550)) Nil!13888 (size!11399 Nil!13888) (list!5350 lt!454959) (list!5350 lt!454959) (size!11399 (list!5350 lt!454959))))))))

(assert (= (and d!391499 c!225834) b!1372202))

(assert (= (and d!391499 (not c!225834)) b!1372206))

(assert (= (and b!1372206 (not res!618229)) b!1372207))

(assert (= (and d!391499 (not res!618230)) b!1372201))

(assert (= (and b!1372201 res!618226) b!1372199))

(assert (= (and b!1372199 res!618227) b!1372205))

(assert (= (and b!1372205 res!618228) b!1372203))

(assert (= (and b!1372203 res!618232) b!1372200))

(assert (= (and b!1372200 res!618231) b!1372204))

(declare-fun m!1543023 () Bool)

(assert (=> b!1372203 m!1543023))

(assert (=> b!1372204 m!1543023))

(declare-fun m!1543025 () Bool)

(assert (=> b!1372204 m!1543025))

(assert (=> b!1372201 m!1543023))

(declare-fun m!1543027 () Bool)

(assert (=> b!1372201 m!1543027))

(assert (=> b!1372201 m!1543027))

(declare-fun m!1543029 () Bool)

(assert (=> b!1372201 m!1543029))

(assert (=> b!1372201 m!1543029))

(declare-fun m!1543033 () Bool)

(assert (=> b!1372201 m!1543033))

(assert (=> b!1372199 m!1543023))

(assert (=> b!1372199 m!1543027))

(assert (=> b!1372199 m!1543027))

(assert (=> b!1372199 m!1543029))

(assert (=> b!1372199 m!1543029))

(declare-fun m!1543035 () Bool)

(assert (=> b!1372199 m!1543035))

(declare-fun m!1543039 () Bool)

(assert (=> b!1372206 m!1543039))

(assert (=> b!1372206 m!1540839))

(assert (=> b!1372206 m!1540839))

(assert (=> b!1372206 m!1541147))

(declare-fun m!1543041 () Bool)

(assert (=> b!1372206 m!1543041))

(declare-fun m!1543043 () Bool)

(assert (=> b!1372206 m!1543043))

(declare-fun m!1543045 () Bool)

(assert (=> b!1372206 m!1543045))

(assert (=> b!1372206 m!1540839))

(declare-fun m!1543047 () Bool)

(assert (=> b!1372206 m!1543047))

(assert (=> b!1372206 m!1543039))

(assert (=> b!1372206 m!1543043))

(declare-fun m!1543049 () Bool)

(assert (=> b!1372206 m!1543049))

(declare-fun m!1543051 () Bool)

(assert (=> b!1372206 m!1543051))

(assert (=> b!1372206 m!1540839))

(assert (=> b!1372206 m!1541147))

(assert (=> b!1372206 m!1543043))

(assert (=> b!1372206 m!1543043))

(declare-fun m!1543053 () Bool)

(assert (=> b!1372206 m!1543053))

(declare-fun m!1543055 () Bool)

(assert (=> d!391499 m!1543055))

(declare-fun m!1543057 () Bool)

(assert (=> d!391499 m!1543057))

(assert (=> d!391499 m!1540839))

(declare-fun m!1543059 () Bool)

(assert (=> d!391499 m!1543059))

(assert (=> d!391499 m!1542799))

(assert (=> b!1372207 m!1543039))

(assert (=> b!1372207 m!1540839))

(assert (=> b!1372207 m!1541147))

(assert (=> b!1372207 m!1543039))

(assert (=> b!1372207 m!1540839))

(assert (=> b!1372207 m!1540839))

(assert (=> b!1372207 m!1541147))

(assert (=> b!1372207 m!1543041))

(declare-fun m!1543061 () Bool)

(assert (=> b!1372207 m!1543061))

(assert (=> b!1372205 m!1543023))

(declare-fun m!1543063 () Bool)

(assert (=> b!1372205 m!1543063))

(assert (=> b!1372205 m!1540839))

(assert (=> b!1372205 m!1541147))

(assert (=> b!1372200 m!1543023))

(declare-fun m!1543065 () Bool)

(assert (=> b!1372200 m!1543065))

(assert (=> b!1372200 m!1543065))

(declare-fun m!1543067 () Bool)

(assert (=> b!1372200 m!1543067))

(assert (=> bm!92083 d!391499))

(declare-fun b!1372215 () Bool)

(declare-fun res!618245 () Bool)

(declare-fun e!877135 () Bool)

(assert (=> b!1372215 (=> res!618245 e!877135)))

(assert (=> b!1372215 (= res!618245 (not ((_ is ElementMatch!3719) (derivativeStep!957 (regex!2405 (rule!4160 t1!34)) (head!2469 lt!454961)))))))

(declare-fun e!877136 () Bool)

(assert (=> b!1372215 (= e!877136 e!877135)))

(declare-fun b!1372216 () Bool)

(declare-fun lt!455666 () Bool)

(assert (=> b!1372216 (= e!877136 (not lt!455666))))

(declare-fun b!1372217 () Bool)

(declare-fun res!618243 () Bool)

(declare-fun e!877140 () Bool)

(assert (=> b!1372217 (=> (not res!618243) (not e!877140))))

(declare-fun call!92144 () Bool)

(assert (=> b!1372217 (= res!618243 (not call!92144))))

(declare-fun d!391563 () Bool)

(declare-fun e!877137 () Bool)

(assert (=> d!391563 e!877137))

(declare-fun c!225837 () Bool)

(assert (=> d!391563 (= c!225837 ((_ is EmptyExpr!3719) (derivativeStep!957 (regex!2405 (rule!4160 t1!34)) (head!2469 lt!454961))))))

(declare-fun e!877138 () Bool)

(assert (=> d!391563 (= lt!455666 e!877138)))

(declare-fun c!225836 () Bool)

(assert (=> d!391563 (= c!225836 (isEmpty!8376 (tail!1982 lt!454961)))))

(assert (=> d!391563 (validRegex!1619 (derivativeStep!957 (regex!2405 (rule!4160 t1!34)) (head!2469 lt!454961)))))

(assert (=> d!391563 (= (matchR!1712 (derivativeStep!957 (regex!2405 (rule!4160 t1!34)) (head!2469 lt!454961)) (tail!1982 lt!454961)) lt!455666)))

(declare-fun bm!92139 () Bool)

(assert (=> bm!92139 (= call!92144 (isEmpty!8376 (tail!1982 lt!454961)))))

(declare-fun b!1372218 () Bool)

(assert (=> b!1372218 (= e!877137 e!877136)))

(declare-fun c!225838 () Bool)

(assert (=> b!1372218 (= c!225838 ((_ is EmptyLang!3719) (derivativeStep!957 (regex!2405 (rule!4160 t1!34)) (head!2469 lt!454961))))))

(declare-fun b!1372219 () Bool)

(declare-fun e!877134 () Bool)

(assert (=> b!1372219 (= e!877135 e!877134)))

(declare-fun res!618241 () Bool)

(assert (=> b!1372219 (=> (not res!618241) (not e!877134))))

(assert (=> b!1372219 (= res!618241 (not lt!455666))))

(declare-fun b!1372220 () Bool)

(declare-fun e!877139 () Bool)

(assert (=> b!1372220 (= e!877139 (not (= (head!2469 (tail!1982 lt!454961)) (c!225512 (derivativeStep!957 (regex!2405 (rule!4160 t1!34)) (head!2469 lt!454961))))))))

(declare-fun b!1372221 () Bool)

(assert (=> b!1372221 (= e!877137 (= lt!455666 call!92144))))

(declare-fun b!1372222 () Bool)

(assert (=> b!1372222 (= e!877134 e!877139)))

(declare-fun res!618238 () Bool)

(assert (=> b!1372222 (=> res!618238 e!877139)))

(assert (=> b!1372222 (= res!618238 call!92144)))

(declare-fun b!1372223 () Bool)

(assert (=> b!1372223 (= e!877138 (nullable!1199 (derivativeStep!957 (regex!2405 (rule!4160 t1!34)) (head!2469 lt!454961))))))

(declare-fun b!1372224 () Bool)

(assert (=> b!1372224 (= e!877140 (= (head!2469 (tail!1982 lt!454961)) (c!225512 (derivativeStep!957 (regex!2405 (rule!4160 t1!34)) (head!2469 lt!454961)))))))

(declare-fun b!1372225 () Bool)

(declare-fun res!618240 () Bool)

(assert (=> b!1372225 (=> res!618240 e!877139)))

(assert (=> b!1372225 (= res!618240 (not (isEmpty!8376 (tail!1982 (tail!1982 lt!454961)))))))

(declare-fun b!1372226 () Bool)

(declare-fun res!618244 () Bool)

(assert (=> b!1372226 (=> res!618244 e!877135)))

(assert (=> b!1372226 (= res!618244 e!877140)))

(declare-fun res!618242 () Bool)

(assert (=> b!1372226 (=> (not res!618242) (not e!877140))))

(assert (=> b!1372226 (= res!618242 lt!455666)))

(declare-fun b!1372227 () Bool)

(assert (=> b!1372227 (= e!877138 (matchR!1712 (derivativeStep!957 (derivativeStep!957 (regex!2405 (rule!4160 t1!34)) (head!2469 lt!454961)) (head!2469 (tail!1982 lt!454961))) (tail!1982 (tail!1982 lt!454961))))))

(declare-fun b!1372228 () Bool)

(declare-fun res!618239 () Bool)

(assert (=> b!1372228 (=> (not res!618239) (not e!877140))))

(assert (=> b!1372228 (= res!618239 (isEmpty!8376 (tail!1982 (tail!1982 lt!454961))))))

(assert (= (and d!391563 c!225836) b!1372223))

(assert (= (and d!391563 (not c!225836)) b!1372227))

(assert (= (and d!391563 c!225837) b!1372221))

(assert (= (and d!391563 (not c!225837)) b!1372218))

(assert (= (and b!1372218 c!225838) b!1372216))

(assert (= (and b!1372218 (not c!225838)) b!1372215))

(assert (= (and b!1372215 (not res!618245)) b!1372226))

(assert (= (and b!1372226 res!618242) b!1372217))

(assert (= (and b!1372217 res!618243) b!1372228))

(assert (= (and b!1372228 res!618239) b!1372224))

(assert (= (and b!1372226 (not res!618244)) b!1372219))

(assert (= (and b!1372219 res!618241) b!1372222))

(assert (= (and b!1372222 (not res!618238)) b!1372225))

(assert (= (and b!1372225 (not res!618240)) b!1372220))

(assert (= (or b!1372221 b!1372217 b!1372222) bm!92139))

(assert (=> b!1372223 m!1541597))

(declare-fun m!1543069 () Bool)

(assert (=> b!1372223 m!1543069))

(assert (=> bm!92139 m!1541599))

(assert (=> bm!92139 m!1541603))

(assert (=> d!391563 m!1541599))

(assert (=> d!391563 m!1541603))

(assert (=> d!391563 m!1541597))

(declare-fun m!1543071 () Bool)

(assert (=> d!391563 m!1543071))

(assert (=> b!1372227 m!1541599))

(declare-fun m!1543073 () Bool)

(assert (=> b!1372227 m!1543073))

(assert (=> b!1372227 m!1541597))

(assert (=> b!1372227 m!1543073))

(declare-fun m!1543075 () Bool)

(assert (=> b!1372227 m!1543075))

(assert (=> b!1372227 m!1541599))

(declare-fun m!1543077 () Bool)

(assert (=> b!1372227 m!1543077))

(assert (=> b!1372227 m!1543075))

(assert (=> b!1372227 m!1543077))

(declare-fun m!1543079 () Bool)

(assert (=> b!1372227 m!1543079))

(assert (=> b!1372228 m!1541599))

(assert (=> b!1372228 m!1543077))

(assert (=> b!1372228 m!1543077))

(declare-fun m!1543081 () Bool)

(assert (=> b!1372228 m!1543081))

(assert (=> b!1372225 m!1541599))

(assert (=> b!1372225 m!1543077))

(assert (=> b!1372225 m!1543077))

(assert (=> b!1372225 m!1543081))

(assert (=> b!1372224 m!1541599))

(assert (=> b!1372224 m!1543073))

(assert (=> b!1372220 m!1541599))

(assert (=> b!1372220 m!1543073))

(assert (=> b!1371321 d!391563))

(declare-fun b!1372266 () Bool)

(declare-fun e!877164 () Regex!3719)

(declare-fun e!877165 () Regex!3719)

(assert (=> b!1372266 (= e!877164 e!877165)))

(declare-fun c!225855 () Bool)

(assert (=> b!1372266 (= c!225855 ((_ is ElementMatch!3719) (regex!2405 (rule!4160 t1!34))))))

(declare-fun call!92153 () Regex!3719)

(declare-fun bm!92148 () Bool)

(declare-fun c!225857 () Bool)

(assert (=> bm!92148 (= call!92153 (derivativeStep!957 (ite c!225857 (regTwo!7951 (regex!2405 (rule!4160 t1!34))) (regOne!7950 (regex!2405 (rule!4160 t1!34)))) (head!2469 lt!454961)))))

(declare-fun bm!92149 () Bool)

(declare-fun call!92154 () Regex!3719)

(declare-fun c!225856 () Bool)

(declare-fun c!225853 () Bool)

(assert (=> bm!92149 (= call!92154 (derivativeStep!957 (ite c!225857 (regOne!7951 (regex!2405 (rule!4160 t1!34))) (ite c!225856 (reg!4048 (regex!2405 (rule!4160 t1!34))) (ite c!225853 (regTwo!7950 (regex!2405 (rule!4160 t1!34))) (regOne!7950 (regex!2405 (rule!4160 t1!34)))))) (head!2469 lt!454961)))))

(declare-fun b!1372267 () Bool)

(assert (=> b!1372267 (= e!877164 EmptyLang!3719)))

(declare-fun b!1372268 () Bool)

(declare-fun e!877166 () Regex!3719)

(declare-fun call!92155 () Regex!3719)

(assert (=> b!1372268 (= e!877166 (Concat!6214 call!92155 (regex!2405 (rule!4160 t1!34))))))

(declare-fun e!877168 () Regex!3719)

(declare-fun call!92156 () Regex!3719)

(declare-fun b!1372269 () Bool)

(assert (=> b!1372269 (= e!877168 (Union!3719 (Concat!6214 call!92153 (regTwo!7950 (regex!2405 (rule!4160 t1!34)))) call!92156))))

(declare-fun b!1372270 () Bool)

(assert (=> b!1372270 (= e!877168 (Union!3719 (Concat!6214 call!92156 (regTwo!7950 (regex!2405 (rule!4160 t1!34)))) EmptyLang!3719))))

(declare-fun bm!92150 () Bool)

(assert (=> bm!92150 (= call!92155 call!92154)))

(declare-fun d!391565 () Bool)

(declare-fun lt!455679 () Regex!3719)

(assert (=> d!391565 (validRegex!1619 lt!455679)))

(assert (=> d!391565 (= lt!455679 e!877164)))

(declare-fun c!225854 () Bool)

(assert (=> d!391565 (= c!225854 (or ((_ is EmptyExpr!3719) (regex!2405 (rule!4160 t1!34))) ((_ is EmptyLang!3719) (regex!2405 (rule!4160 t1!34)))))))

(assert (=> d!391565 (validRegex!1619 (regex!2405 (rule!4160 t1!34)))))

(assert (=> d!391565 (= (derivativeStep!957 (regex!2405 (rule!4160 t1!34)) (head!2469 lt!454961)) lt!455679)))

(declare-fun b!1372271 () Bool)

(assert (=> b!1372271 (= e!877165 (ite (= (head!2469 lt!454961) (c!225512 (regex!2405 (rule!4160 t1!34)))) EmptyExpr!3719 EmptyLang!3719))))

(declare-fun bm!92151 () Bool)

(assert (=> bm!92151 (= call!92156 call!92155)))

(declare-fun b!1372272 () Bool)

(assert (=> b!1372272 (= c!225853 (nullable!1199 (regOne!7950 (regex!2405 (rule!4160 t1!34)))))))

(assert (=> b!1372272 (= e!877166 e!877168)))

(declare-fun b!1372273 () Bool)

(declare-fun e!877167 () Regex!3719)

(assert (=> b!1372273 (= e!877167 e!877166)))

(assert (=> b!1372273 (= c!225856 ((_ is Star!3719) (regex!2405 (rule!4160 t1!34))))))

(declare-fun b!1372274 () Bool)

(assert (=> b!1372274 (= c!225857 ((_ is Union!3719) (regex!2405 (rule!4160 t1!34))))))

(assert (=> b!1372274 (= e!877165 e!877167)))

(declare-fun b!1372275 () Bool)

(assert (=> b!1372275 (= e!877167 (Union!3719 call!92154 call!92153))))

(assert (= (and d!391565 c!225854) b!1372267))

(assert (= (and d!391565 (not c!225854)) b!1372266))

(assert (= (and b!1372266 c!225855) b!1372271))

(assert (= (and b!1372266 (not c!225855)) b!1372274))

(assert (= (and b!1372274 c!225857) b!1372275))

(assert (= (and b!1372274 (not c!225857)) b!1372273))

(assert (= (and b!1372273 c!225856) b!1372268))

(assert (= (and b!1372273 (not c!225856)) b!1372272))

(assert (= (and b!1372272 c!225853) b!1372269))

(assert (= (and b!1372272 (not c!225853)) b!1372270))

(assert (= (or b!1372269 b!1372270) bm!92151))

(assert (= (or b!1372268 bm!92151) bm!92150))

(assert (= (or b!1372275 bm!92150) bm!92149))

(assert (= (or b!1372275 b!1372269) bm!92148))

(assert (=> bm!92148 m!1541595))

(declare-fun m!1543135 () Bool)

(assert (=> bm!92148 m!1543135))

(assert (=> bm!92149 m!1541595))

(declare-fun m!1543137 () Bool)

(assert (=> bm!92149 m!1543137))

(declare-fun m!1543139 () Bool)

(assert (=> d!391565 m!1543139))

(assert (=> d!391565 m!1541593))

(declare-fun m!1543141 () Bool)

(assert (=> b!1372272 m!1543141))

(assert (=> b!1371321 d!391565))

(declare-fun d!391599 () Bool)

(assert (=> d!391599 (= (head!2469 lt!454961) (h!19289 lt!454961))))

(assert (=> b!1371321 d!391599))

(declare-fun d!391601 () Bool)

(assert (=> d!391601 (= (tail!1982 lt!454961) (t!121483 lt!454961))))

(assert (=> b!1371321 d!391601))

(declare-fun d!391603 () Bool)

(declare-fun lt!455685 () Bool)

(assert (=> d!391603 (= lt!455685 (select (content!2032 (t!121485 rules!2550)) (rule!4160 t2!34)))))

(declare-fun e!877173 () Bool)

(assert (=> d!391603 (= lt!455685 e!877173)))

(declare-fun res!618266 () Bool)

(assert (=> d!391603 (=> (not res!618266) (not e!877173))))

(assert (=> d!391603 (= res!618266 ((_ is Cons!13890) (t!121485 rules!2550)))))

(assert (=> d!391603 (= (contains!2599 (t!121485 rules!2550) (rule!4160 t2!34)) lt!455685)))

(declare-fun b!1372285 () Bool)

(declare-fun e!877172 () Bool)

(assert (=> b!1372285 (= e!877173 e!877172)))

(declare-fun res!618265 () Bool)

(assert (=> b!1372285 (=> res!618265 e!877172)))

(assert (=> b!1372285 (= res!618265 (= (h!19291 (t!121485 rules!2550)) (rule!4160 t2!34)))))

(declare-fun b!1372286 () Bool)

(assert (=> b!1372286 (= e!877172 (contains!2599 (t!121485 (t!121485 rules!2550)) (rule!4160 t2!34)))))

(assert (= (and d!391603 res!618266) b!1372285))

(assert (= (and b!1372285 (not res!618265)) b!1372286))

(declare-fun m!1543159 () Bool)

(assert (=> d!391603 m!1543159))

(declare-fun m!1543161 () Bool)

(assert (=> d!391603 m!1543161))

(declare-fun m!1543165 () Bool)

(assert (=> b!1372286 m!1543165))

(assert (=> b!1371185 d!391603))

(declare-fun b!1372288 () Bool)

(declare-fun e!877174 () List!13954)

(assert (=> b!1372288 (= e!877174 (Cons!13888 (h!19289 (t!121483 lt!454969)) (++!3590 (t!121483 (t!121483 lt!454969)) (getSuffix!567 lt!454960 lt!454969))))))

(declare-fun d!391605 () Bool)

(declare-fun e!877175 () Bool)

(assert (=> d!391605 e!877175))

(declare-fun res!618267 () Bool)

(assert (=> d!391605 (=> (not res!618267) (not e!877175))))

(declare-fun lt!455686 () List!13954)

(assert (=> d!391605 (= res!618267 (= (content!2031 lt!455686) ((_ map or) (content!2031 (t!121483 lt!454969)) (content!2031 (getSuffix!567 lt!454960 lt!454969)))))))

(assert (=> d!391605 (= lt!455686 e!877174)))

(declare-fun c!225859 () Bool)

(assert (=> d!391605 (= c!225859 ((_ is Nil!13888) (t!121483 lt!454969)))))

(assert (=> d!391605 (= (++!3590 (t!121483 lt!454969) (getSuffix!567 lt!454960 lt!454969)) lt!455686)))

(declare-fun b!1372289 () Bool)

(declare-fun res!618268 () Bool)

(assert (=> b!1372289 (=> (not res!618268) (not e!877175))))

(assert (=> b!1372289 (= res!618268 (= (size!11399 lt!455686) (+ (size!11399 (t!121483 lt!454969)) (size!11399 (getSuffix!567 lt!454960 lt!454969)))))))

(declare-fun b!1372287 () Bool)

(assert (=> b!1372287 (= e!877174 (getSuffix!567 lt!454960 lt!454969))))

(declare-fun b!1372290 () Bool)

(assert (=> b!1372290 (= e!877175 (or (not (= (getSuffix!567 lt!454960 lt!454969) Nil!13888)) (= lt!455686 (t!121483 lt!454969))))))

(assert (= (and d!391605 c!225859) b!1372287))

(assert (= (and d!391605 (not c!225859)) b!1372288))

(assert (= (and d!391605 res!618267) b!1372289))

(assert (= (and b!1372289 res!618268) b!1372290))

(assert (=> b!1372288 m!1540851))

(declare-fun m!1543173 () Bool)

(assert (=> b!1372288 m!1543173))

(declare-fun m!1543175 () Bool)

(assert (=> d!391605 m!1543175))

(assert (=> d!391605 m!1542827))

(assert (=> d!391605 m!1540851))

(assert (=> d!391605 m!1541763))

(declare-fun m!1543179 () Bool)

(assert (=> b!1372289 m!1543179))

(assert (=> b!1372289 m!1542167))

(assert (=> b!1372289 m!1540851))

(assert (=> b!1372289 m!1541769))

(assert (=> b!1371400 d!391605))

(declare-fun d!391607 () Bool)

(assert (=> d!391607 (= (isDefined!2219 lt!455183) (not (isEmpty!8380 lt!455183)))))

(declare-fun bs!335806 () Bool)

(assert (= bs!335806 d!391607))

(assert (=> bs!335806 m!1541655))

(assert (=> b!1371346 d!391607))

(declare-fun d!391615 () Bool)

(declare-fun lt!455689 () Int)

(assert (=> d!391615 (>= lt!455689 0)))

(declare-fun e!877177 () Int)

(assert (=> d!391615 (= lt!455689 e!877177)))

(declare-fun c!225861 () Bool)

(assert (=> d!391615 (= c!225861 ((_ is Nil!13888) (list!5350 lt!454959)))))

(assert (=> d!391615 (= (size!11399 (list!5350 lt!454959)) lt!455689)))

(declare-fun b!1372293 () Bool)

(assert (=> b!1372293 (= e!877177 0)))

(declare-fun b!1372294 () Bool)

(assert (=> b!1372294 (= e!877177 (+ 1 (size!11399 (t!121483 (list!5350 lt!454959)))))))

(assert (= (and d!391615 c!225861) b!1372293))

(assert (= (and d!391615 (not c!225861)) b!1372294))

(declare-fun m!1543195 () Bool)

(assert (=> b!1372294 m!1543195))

(assert (=> d!390971 d!391615))

(assert (=> d!390971 d!391097))

(declare-fun d!391619 () Bool)

(declare-fun lt!455692 () Int)

(assert (=> d!391619 (= lt!455692 (size!11399 (list!5355 (c!225513 lt!454959))))))

(assert (=> d!391619 (= lt!455692 (ite ((_ is Empty!4572) (c!225513 lt!454959)) 0 (ite ((_ is Leaf!6971) (c!225513 lt!454959)) (csize!9375 (c!225513 lt!454959)) (csize!9374 (c!225513 lt!454959)))))))

(assert (=> d!391619 (= (size!11400 (c!225513 lt!454959)) lt!455692)))

(declare-fun bs!335811 () Bool)

(assert (= bs!335811 d!391619))

(assert (=> bs!335811 m!1541555))

(assert (=> bs!335811 m!1541555))

(declare-fun m!1543201 () Bool)

(assert (=> bs!335811 m!1543201))

(assert (=> d!390971 d!391619))

(declare-fun d!391627 () Bool)

(declare-fun c!225862 () Bool)

(assert (=> d!391627 (= c!225862 ((_ is Nil!13888) lt!455209))))

(declare-fun e!877178 () (InoxSet C!7728))

(assert (=> d!391627 (= (content!2031 lt!455209) e!877178)))

(declare-fun b!1372295 () Bool)

(assert (=> b!1372295 (= e!877178 ((as const (Array C!7728 Bool)) false))))

(declare-fun b!1372296 () Bool)

(assert (=> b!1372296 (= e!877178 ((_ map or) (store ((as const (Array C!7728 Bool)) false) (h!19289 lt!455209) true) (content!2031 (t!121483 lt!455209))))))

(assert (= (and d!391627 c!225862) b!1372295))

(assert (= (and d!391627 (not c!225862)) b!1372296))

(declare-fun m!1543203 () Bool)

(assert (=> b!1372296 m!1543203))

(declare-fun m!1543205 () Bool)

(assert (=> b!1372296 m!1543205))

(assert (=> d!391153 d!391627))

(assert (=> d!391153 d!391491))

(declare-fun d!391629 () Bool)

(declare-fun c!225863 () Bool)

(assert (=> d!391629 (= c!225863 ((_ is Nil!13888) (getSuffix!567 lt!454960 lt!454969)))))

(declare-fun e!877179 () (InoxSet C!7728))

(assert (=> d!391629 (= (content!2031 (getSuffix!567 lt!454960 lt!454969)) e!877179)))

(declare-fun b!1372297 () Bool)

(assert (=> b!1372297 (= e!877179 ((as const (Array C!7728 Bool)) false))))

(declare-fun b!1372298 () Bool)

(assert (=> b!1372298 (= e!877179 ((_ map or) (store ((as const (Array C!7728 Bool)) false) (h!19289 (getSuffix!567 lt!454960 lt!454969)) true) (content!2031 (t!121483 (getSuffix!567 lt!454960 lt!454969)))))))

(assert (= (and d!391629 c!225863) b!1372297))

(assert (= (and d!391629 (not c!225863)) b!1372298))

(declare-fun m!1543207 () Bool)

(assert (=> b!1372298 m!1543207))

(declare-fun m!1543209 () Bool)

(assert (=> b!1372298 m!1543209))

(assert (=> d!391153 d!391629))

(declare-fun d!391631 () Bool)

(declare-fun res!618295 () Bool)

(declare-fun e!877192 () Bool)

(assert (=> d!391631 (=> res!618295 e!877192)))

(assert (=> d!391631 (= res!618295 (not ((_ is Node!4573) (c!225514 lt!455145))))))

(assert (=> d!391631 (= (isBalanced!1346 (c!225514 lt!455145)) e!877192)))

(declare-fun b!1372324 () Bool)

(declare-fun e!877193 () Bool)

(declare-fun isEmpty!8384 (Conc!4573) Bool)

(assert (=> b!1372324 (= e!877193 (not (isEmpty!8384 (right!12215 (c!225514 lt!455145)))))))

(declare-fun b!1372325 () Bool)

(declare-fun res!618293 () Bool)

(assert (=> b!1372325 (=> (not res!618293) (not e!877193))))

(assert (=> b!1372325 (= res!618293 (isBalanced!1346 (right!12215 (c!225514 lt!455145))))))

(declare-fun b!1372326 () Bool)

(declare-fun res!618292 () Bool)

(assert (=> b!1372326 (=> (not res!618292) (not e!877193))))

(declare-fun height!665 (Conc!4573) Int)

(assert (=> b!1372326 (= res!618292 (<= (- (height!665 (left!11885 (c!225514 lt!455145))) (height!665 (right!12215 (c!225514 lt!455145)))) 1))))

(declare-fun b!1372327 () Bool)

(assert (=> b!1372327 (= e!877192 e!877193)))

(declare-fun res!618296 () Bool)

(assert (=> b!1372327 (=> (not res!618296) (not e!877193))))

(assert (=> b!1372327 (= res!618296 (<= (- 1) (- (height!665 (left!11885 (c!225514 lt!455145))) (height!665 (right!12215 (c!225514 lt!455145))))))))

(declare-fun b!1372328 () Bool)

(declare-fun res!618297 () Bool)

(assert (=> b!1372328 (=> (not res!618297) (not e!877193))))

(assert (=> b!1372328 (= res!618297 (not (isEmpty!8384 (left!11885 (c!225514 lt!455145)))))))

(declare-fun b!1372329 () Bool)

(declare-fun res!618294 () Bool)

(assert (=> b!1372329 (=> (not res!618294) (not e!877193))))

(assert (=> b!1372329 (= res!618294 (isBalanced!1346 (left!11885 (c!225514 lt!455145))))))

(assert (= (and d!391631 (not res!618295)) b!1372327))

(assert (= (and b!1372327 res!618296) b!1372326))

(assert (= (and b!1372326 res!618292) b!1372329))

(assert (= (and b!1372329 res!618294) b!1372325))

(assert (= (and b!1372325 res!618293) b!1372328))

(assert (= (and b!1372328 res!618297) b!1372324))

(declare-fun m!1543229 () Bool)

(assert (=> b!1372329 m!1543229))

(declare-fun m!1543231 () Bool)

(assert (=> b!1372327 m!1543231))

(declare-fun m!1543233 () Bool)

(assert (=> b!1372327 m!1543233))

(declare-fun m!1543235 () Bool)

(assert (=> b!1372324 m!1543235))

(assert (=> b!1372326 m!1543231))

(assert (=> b!1372326 m!1543233))

(declare-fun m!1543237 () Bool)

(assert (=> b!1372328 m!1543237))

(declare-fun m!1543239 () Bool)

(assert (=> b!1372325 m!1543239))

(assert (=> b!1371180 d!391631))

(declare-fun d!391647 () Bool)

(declare-fun lt!455706 () Bool)

(assert (=> d!391647 (= lt!455706 (select (content!2032 (t!121485 rules!2550)) (rule!4160 t1!34)))))

(declare-fun e!877195 () Bool)

(assert (=> d!391647 (= lt!455706 e!877195)))

(declare-fun res!618299 () Bool)

(assert (=> d!391647 (=> (not res!618299) (not e!877195))))

(assert (=> d!391647 (= res!618299 ((_ is Cons!13890) (t!121485 rules!2550)))))

(assert (=> d!391647 (= (contains!2599 (t!121485 rules!2550) (rule!4160 t1!34)) lt!455706)))

(declare-fun b!1372330 () Bool)

(declare-fun e!877194 () Bool)

(assert (=> b!1372330 (= e!877195 e!877194)))

(declare-fun res!618298 () Bool)

(assert (=> b!1372330 (=> res!618298 e!877194)))

(assert (=> b!1372330 (= res!618298 (= (h!19291 (t!121485 rules!2550)) (rule!4160 t1!34)))))

(declare-fun b!1372331 () Bool)

(assert (=> b!1372331 (= e!877194 (contains!2599 (t!121485 (t!121485 rules!2550)) (rule!4160 t1!34)))))

(assert (= (and d!391647 res!618299) b!1372330))

(assert (= (and b!1372330 (not res!618298)) b!1372331))

(assert (=> d!391647 m!1543159))

(declare-fun m!1543245 () Bool)

(assert (=> d!391647 m!1543245))

(declare-fun m!1543249 () Bool)

(assert (=> b!1372331 m!1543249))

(assert (=> b!1371050 d!391647))

(declare-fun b!1372351 () Bool)

(declare-fun e!877207 () List!13954)

(declare-fun e!877208 () List!13954)

(assert (=> b!1372351 (= e!877207 e!877208)))

(declare-fun c!225872 () Bool)

(assert (=> b!1372351 (= c!225872 ((_ is Leaf!6971) (c!225513 lt!454959)))))

(declare-fun b!1372353 () Bool)

(assert (=> b!1372353 (= e!877208 (++!3590 (list!5355 (left!11884 (c!225513 lt!454959))) (list!5355 (right!12214 (c!225513 lt!454959)))))))

(declare-fun d!391649 () Bool)

(declare-fun c!225871 () Bool)

(assert (=> d!391649 (= c!225871 ((_ is Empty!4572) (c!225513 lt!454959)))))

(assert (=> d!391649 (= (list!5355 (c!225513 lt!454959)) e!877207)))

(declare-fun b!1372350 () Bool)

(assert (=> b!1372350 (= e!877207 Nil!13888)))

(declare-fun b!1372352 () Bool)

(declare-fun list!5358 (IArray!9149) List!13954)

(assert (=> b!1372352 (= e!877208 (list!5358 (xs!7299 (c!225513 lt!454959))))))

(assert (= (and d!391649 c!225871) b!1372350))

(assert (= (and d!391649 (not c!225871)) b!1372351))

(assert (= (and b!1372351 c!225872) b!1372352))

(assert (= (and b!1372351 (not c!225872)) b!1372353))

(declare-fun m!1543301 () Bool)

(assert (=> b!1372353 m!1543301))

(declare-fun m!1543303 () Bool)

(assert (=> b!1372353 m!1543303))

(assert (=> b!1372353 m!1543301))

(assert (=> b!1372353 m!1543303))

(declare-fun m!1543305 () Bool)

(assert (=> b!1372353 m!1543305))

(declare-fun m!1543307 () Bool)

(assert (=> b!1372352 m!1543307))

(assert (=> d!391097 d!391649))

(declare-fun d!391665 () Bool)

(declare-fun res!618321 () Bool)

(declare-fun e!877221 () Bool)

(assert (=> d!391665 (=> (not res!618321) (not e!877221))))

(assert (=> d!391665 (= res!618321 (validRegex!1619 (regex!2405 lt!454957)))))

(assert (=> d!391665 (= (ruleValid!592 thiss!19762 lt!454957) e!877221)))

(declare-fun b!1372377 () Bool)

(declare-fun res!618322 () Bool)

(assert (=> b!1372377 (=> (not res!618322) (not e!877221))))

(assert (=> b!1372377 (= res!618322 (not (nullable!1199 (regex!2405 lt!454957))))))

(declare-fun b!1372378 () Bool)

(assert (=> b!1372378 (= e!877221 (not (= (tag!2667 lt!454957) (String!16712 ""))))))

(assert (= (and d!391665 res!618321) b!1372377))

(assert (= (and b!1372377 res!618322) b!1372378))

(declare-fun m!1543333 () Bool)

(assert (=> d!391665 m!1543333))

(declare-fun m!1543335 () Bool)

(assert (=> b!1372377 m!1543335))

(assert (=> bs!335675 d!391665))

(declare-fun d!391673 () Bool)

(assert (=> d!391673 (= (isDefined!2219 lt!455162) (not (isEmpty!8380 lt!455162)))))

(declare-fun bs!335820 () Bool)

(assert (= bs!335820 d!391673))

(assert (=> bs!335820 m!1541537))

(assert (=> b!1371256 d!391673))

(declare-fun b!1372389 () Bool)

(declare-fun e!877229 () List!13954)

(assert (=> b!1372389 (= e!877229 (Cons!13888 (h!19289 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))) (++!3590 (t!121483 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))) (_2!7631 (get!4347 lt!455183)))))))

(declare-fun d!391675 () Bool)

(declare-fun e!877230 () Bool)

(assert (=> d!391675 e!877230))

(declare-fun res!618328 () Bool)

(assert (=> d!391675 (=> (not res!618328) (not e!877230))))

(declare-fun lt!455714 () List!13954)

(assert (=> d!391675 (= res!618328 (= (content!2031 lt!455714) ((_ map or) (content!2031 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))) (content!2031 (_2!7631 (get!4347 lt!455183))))))))

(assert (=> d!391675 (= lt!455714 e!877229)))

(declare-fun c!225879 () Bool)

(assert (=> d!391675 (= c!225879 ((_ is Nil!13888) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))))))

(assert (=> d!391675 (= (++!3590 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183)))) (_2!7631 (get!4347 lt!455183))) lt!455714)))

(declare-fun b!1372390 () Bool)

(declare-fun res!618329 () Bool)

(assert (=> b!1372390 (=> (not res!618329) (not e!877230))))

(assert (=> b!1372390 (= res!618329 (= (size!11399 lt!455714) (+ (size!11399 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))) (size!11399 (_2!7631 (get!4347 lt!455183))))))))

(declare-fun b!1372388 () Bool)

(assert (=> b!1372388 (= e!877229 (_2!7631 (get!4347 lt!455183)))))

(declare-fun b!1372391 () Bool)

(assert (=> b!1372391 (= e!877230 (or (not (= (_2!7631 (get!4347 lt!455183)) Nil!13888)) (= lt!455714 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183)))))))))

(assert (= (and d!391675 c!225879) b!1372388))

(assert (= (and d!391675 (not c!225879)) b!1372389))

(assert (= (and d!391675 res!618328) b!1372390))

(assert (= (and b!1372390 res!618329) b!1372391))

(declare-fun m!1543341 () Bool)

(assert (=> b!1372389 m!1543341))

(declare-fun m!1543343 () Bool)

(assert (=> d!391675 m!1543343))

(assert (=> d!391675 m!1541649))

(declare-fun m!1543347 () Bool)

(assert (=> d!391675 m!1543347))

(declare-fun m!1543349 () Bool)

(assert (=> d!391675 m!1543349))

(declare-fun m!1543351 () Bool)

(assert (=> b!1372390 m!1543351))

(assert (=> b!1372390 m!1541649))

(declare-fun m!1543353 () Bool)

(assert (=> b!1372390 m!1543353))

(assert (=> b!1372390 m!1541669))

(assert (=> b!1371350 d!391675))

(declare-fun d!391679 () Bool)

(assert (=> d!391679 (= (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183)))) (list!5355 (c!225513 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))))))

(declare-fun bs!335821 () Bool)

(assert (= bs!335821 d!391679))

(declare-fun m!1543355 () Bool)

(assert (=> bs!335821 m!1543355))

(assert (=> b!1371350 d!391679))

(declare-fun d!391681 () Bool)

(declare-fun lt!455717 () BalanceConc!9084)

(assert (=> d!391681 (= (list!5350 lt!455717) (originalCharacters!3267 (_1!7631 (get!4347 lt!455183))))))

(assert (=> d!391681 (= lt!455717 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183))))) (value!78175 (_1!7631 (get!4347 lt!455183)))))))

(assert (=> d!391681 (= (charsOf!1377 (_1!7631 (get!4347 lt!455183))) lt!455717)))

(declare-fun b_lambda!42025 () Bool)

(assert (=> (not b_lambda!42025) (not d!391681)))

(declare-fun t!121570 () Bool)

(declare-fun tb!72265 () Bool)

(assert (=> (and b!1370765 (= (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))) t!121570) tb!72265))

(declare-fun b!1372398 () Bool)

(declare-fun e!877235 () Bool)

(declare-fun tp!393921 () Bool)

(assert (=> b!1372398 (= e!877235 (and (inv!18248 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183))))) (value!78175 (_1!7631 (get!4347 lt!455183)))))) tp!393921))))

(declare-fun result!87752 () Bool)

(assert (=> tb!72265 (= result!87752 (and (inv!18249 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183))))) (value!78175 (_1!7631 (get!4347 lt!455183))))) e!877235))))

(assert (= tb!72265 b!1372398))

(declare-fun m!1543369 () Bool)

(assert (=> b!1372398 m!1543369))

(declare-fun m!1543371 () Bool)

(assert (=> tb!72265 m!1543371))

(assert (=> d!391681 t!121570))

(declare-fun b_and!91975 () Bool)

(assert (= b_and!91933 (and (=> t!121570 result!87752) b_and!91975)))

(declare-fun t!121572 () Bool)

(declare-fun tb!72267 () Bool)

(assert (=> (and b!1370761 (= (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))) t!121572) tb!72267))

(declare-fun result!87754 () Bool)

(assert (= result!87754 result!87752))

(assert (=> d!391681 t!121572))

(declare-fun b_and!91977 () Bool)

(assert (= b_and!91935 (and (=> t!121572 result!87754) b_and!91977)))

(declare-fun tb!72269 () Bool)

(declare-fun t!121574 () Bool)

(assert (=> (and b!1370756 (= (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))) t!121574) tb!72269))

(declare-fun result!87756 () Bool)

(assert (= result!87756 result!87752))

(assert (=> d!391681 t!121574))

(declare-fun b_and!91979 () Bool)

(assert (= b_and!91937 (and (=> t!121574 result!87756) b_and!91979)))

(declare-fun t!121576 () Bool)

(declare-fun tb!72271 () Bool)

(assert (=> (and b!1371483 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))) t!121576) tb!72271))

(declare-fun result!87758 () Bool)

(assert (= result!87758 result!87752))

(assert (=> d!391681 t!121576))

(declare-fun b_and!91981 () Bool)

(assert (= b_and!91941 (and (=> t!121576 result!87758) b_and!91981)))

(declare-fun m!1543373 () Bool)

(assert (=> d!391681 m!1543373))

(declare-fun m!1543375 () Bool)

(assert (=> d!391681 m!1543375))

(assert (=> b!1371350 d!391681))

(declare-fun d!391685 () Bool)

(assert (=> d!391685 (= (get!4347 lt!455183) (v!21471 lt!455183))))

(assert (=> b!1371350 d!391685))

(declare-fun d!391687 () Bool)

(assert (=> d!391687 (= (isEmpty!8376 (list!5350 (_2!7630 lt!454965))) ((_ is Nil!13888) (list!5350 (_2!7630 lt!454965))))))

(assert (=> d!390965 d!391687))

(declare-fun d!391689 () Bool)

(assert (=> d!391689 (= (list!5350 (_2!7630 lt!454965)) (list!5355 (c!225513 (_2!7630 lt!454965))))))

(declare-fun bs!335822 () Bool)

(assert (= bs!335822 d!391689))

(declare-fun m!1543377 () Bool)

(assert (=> bs!335822 m!1543377))

(assert (=> d!390965 d!391689))

(declare-fun d!391691 () Bool)

(declare-fun lt!455720 () Bool)

(assert (=> d!391691 (= lt!455720 (isEmpty!8376 (list!5355 (c!225513 (_2!7630 lt!454965)))))))

(assert (=> d!391691 (= lt!455720 (= (size!11400 (c!225513 (_2!7630 lt!454965))) 0))))

(assert (=> d!391691 (= (isEmpty!8377 (c!225513 (_2!7630 lt!454965))) lt!455720)))

(declare-fun bs!335823 () Bool)

(assert (= bs!335823 d!391691))

(assert (=> bs!335823 m!1543377))

(assert (=> bs!335823 m!1543377))

(declare-fun m!1543379 () Bool)

(assert (=> bs!335823 m!1543379))

(declare-fun m!1543381 () Bool)

(assert (=> bs!335823 m!1543381))

(assert (=> d!390965 d!391691))

(declare-fun d!391693 () Bool)

(assert (=> d!391693 (= (isEmpty!8376 lt!454961) ((_ is Nil!13888) lt!454961))))

(assert (=> d!391109 d!391693))

(declare-fun c!225890 () Bool)

(declare-fun c!225889 () Bool)

(declare-fun call!92168 () Bool)

(declare-fun bm!92163 () Bool)

(assert (=> bm!92163 (= call!92168 (validRegex!1619 (ite c!225889 (reg!4048 (regex!2405 (rule!4160 t1!34))) (ite c!225890 (regTwo!7951 (regex!2405 (rule!4160 t1!34))) (regTwo!7950 (regex!2405 (rule!4160 t1!34)))))))))

(declare-fun b!1372425 () Bool)

(declare-fun e!877255 () Bool)

(declare-fun e!877254 () Bool)

(assert (=> b!1372425 (= e!877255 e!877254)))

(declare-fun res!618352 () Bool)

(assert (=> b!1372425 (=> (not res!618352) (not e!877254))))

(declare-fun call!92169 () Bool)

(assert (=> b!1372425 (= res!618352 call!92169)))

(declare-fun b!1372426 () Bool)

(declare-fun e!877253 () Bool)

(declare-fun e!877257 () Bool)

(assert (=> b!1372426 (= e!877253 e!877257)))

(declare-fun res!618353 () Bool)

(assert (=> b!1372426 (= res!618353 (not (nullable!1199 (reg!4048 (regex!2405 (rule!4160 t1!34))))))))

(assert (=> b!1372426 (=> (not res!618353) (not e!877257))))

(declare-fun b!1372427 () Bool)

(assert (=> b!1372427 (= e!877257 call!92168)))

(declare-fun b!1372428 () Bool)

(declare-fun call!92170 () Bool)

(assert (=> b!1372428 (= e!877254 call!92170)))

(declare-fun bm!92164 () Bool)

(assert (=> bm!92164 (= call!92170 call!92168)))

(declare-fun b!1372429 () Bool)

(declare-fun e!877256 () Bool)

(assert (=> b!1372429 (= e!877253 e!877256)))

(assert (=> b!1372429 (= c!225890 ((_ is Union!3719) (regex!2405 (rule!4160 t1!34))))))

(declare-fun bm!92165 () Bool)

(assert (=> bm!92165 (= call!92169 (validRegex!1619 (ite c!225890 (regOne!7951 (regex!2405 (rule!4160 t1!34))) (regOne!7950 (regex!2405 (rule!4160 t1!34))))))))

(declare-fun b!1372430 () Bool)

(declare-fun res!618354 () Bool)

(assert (=> b!1372430 (=> res!618354 e!877255)))

(assert (=> b!1372430 (= res!618354 (not ((_ is Concat!6214) (regex!2405 (rule!4160 t1!34)))))))

(assert (=> b!1372430 (= e!877256 e!877255)))

(declare-fun b!1372431 () Bool)

(declare-fun e!877252 () Bool)

(assert (=> b!1372431 (= e!877252 e!877253)))

(assert (=> b!1372431 (= c!225889 ((_ is Star!3719) (regex!2405 (rule!4160 t1!34))))))

(declare-fun d!391695 () Bool)

(declare-fun res!618350 () Bool)

(assert (=> d!391695 (=> res!618350 e!877252)))

(assert (=> d!391695 (= res!618350 ((_ is ElementMatch!3719) (regex!2405 (rule!4160 t1!34))))))

(assert (=> d!391695 (= (validRegex!1619 (regex!2405 (rule!4160 t1!34))) e!877252)))

(declare-fun b!1372432 () Bool)

(declare-fun res!618351 () Bool)

(declare-fun e!877258 () Bool)

(assert (=> b!1372432 (=> (not res!618351) (not e!877258))))

(assert (=> b!1372432 (= res!618351 call!92169)))

(assert (=> b!1372432 (= e!877256 e!877258)))

(declare-fun b!1372433 () Bool)

(assert (=> b!1372433 (= e!877258 call!92170)))

(assert (= (and d!391695 (not res!618350)) b!1372431))

(assert (= (and b!1372431 c!225889) b!1372426))

(assert (= (and b!1372431 (not c!225889)) b!1372429))

(assert (= (and b!1372426 res!618353) b!1372427))

(assert (= (and b!1372429 c!225890) b!1372432))

(assert (= (and b!1372429 (not c!225890)) b!1372430))

(assert (= (and b!1372432 res!618351) b!1372433))

(assert (= (and b!1372430 (not res!618354)) b!1372425))

(assert (= (and b!1372425 res!618352) b!1372428))

(assert (= (or b!1372432 b!1372425) bm!92165))

(assert (= (or b!1372433 b!1372428) bm!92164))

(assert (= (or b!1372427 bm!92164) bm!92163))

(declare-fun m!1543383 () Bool)

(assert (=> bm!92163 m!1543383))

(declare-fun m!1543385 () Bool)

(assert (=> b!1372426 m!1543385))

(declare-fun m!1543387 () Bool)

(assert (=> bm!92165 m!1543387))

(assert (=> d!391109 d!391695))

(declare-fun d!391697 () Bool)

(assert (=> d!391697 (= (list!5350 lt!455126) (list!5355 (c!225513 lt!455126)))))

(declare-fun bs!335824 () Bool)

(assert (= bs!335824 d!391697))

(declare-fun m!1543389 () Bool)

(assert (=> bs!335824 m!1543389))

(assert (=> d!391027 d!391697))

(declare-fun d!391699 () Bool)

(declare-fun c!225893 () Bool)

(assert (=> d!391699 (= c!225893 ((_ is Cons!13891) (list!5351 (singletonSeq!1036 t1!34))))))

(declare-fun e!877262 () List!13954)

(assert (=> d!391699 (= (printList!608 thiss!19762 (list!5351 (singletonSeq!1036 t1!34))) e!877262)))

(declare-fun b!1372442 () Bool)

(assert (=> b!1372442 (= e!877262 (++!3590 (list!5350 (charsOf!1377 (h!19292 (list!5351 (singletonSeq!1036 t1!34))))) (printList!608 thiss!19762 (t!121486 (list!5351 (singletonSeq!1036 t1!34))))))))

(declare-fun b!1372443 () Bool)

(assert (=> b!1372443 (= e!877262 Nil!13888)))

(assert (= (and d!391699 c!225893) b!1372442))

(assert (= (and d!391699 (not c!225893)) b!1372443))

(declare-fun m!1543413 () Bool)

(assert (=> b!1372442 m!1543413))

(assert (=> b!1372442 m!1543413))

(declare-fun m!1543415 () Bool)

(assert (=> b!1372442 m!1543415))

(declare-fun m!1543417 () Bool)

(assert (=> b!1372442 m!1543417))

(assert (=> b!1372442 m!1543415))

(assert (=> b!1372442 m!1543417))

(declare-fun m!1543419 () Bool)

(assert (=> b!1372442 m!1543419))

(assert (=> d!391027 d!391699))

(assert (=> d!391027 d!391261))

(declare-fun d!391703 () Bool)

(declare-fun lt!455744 () BalanceConc!9084)

(declare-fun printListTailRec!250 (LexerInterface!2100 List!13957 List!13954) List!13954)

(declare-fun dropList!407 (BalanceConc!9086 Int) List!13957)

(assert (=> d!391703 (= (list!5350 lt!455744) (printListTailRec!250 thiss!19762 (dropList!407 (singletonSeq!1036 t1!34) 0) (list!5350 (BalanceConc!9085 Empty!4572))))))

(declare-fun e!877268 () BalanceConc!9084)

(assert (=> d!391703 (= lt!455744 e!877268)))

(declare-fun c!225896 () Bool)

(assert (=> d!391703 (= c!225896 (>= 0 (size!11397 (singletonSeq!1036 t1!34))))))

(declare-fun e!877267 () Bool)

(assert (=> d!391703 e!877267))

(declare-fun res!618361 () Bool)

(assert (=> d!391703 (=> (not res!618361) (not e!877267))))

(assert (=> d!391703 (= res!618361 (>= 0 0))))

(assert (=> d!391703 (= (printTailRec!590 thiss!19762 (singletonSeq!1036 t1!34) 0 (BalanceConc!9085 Empty!4572)) lt!455744)))

(declare-fun b!1372450 () Bool)

(assert (=> b!1372450 (= e!877267 (<= 0 (size!11397 (singletonSeq!1036 t1!34))))))

(declare-fun b!1372451 () Bool)

(assert (=> b!1372451 (= e!877268 (BalanceConc!9085 Empty!4572))))

(declare-fun b!1372452 () Bool)

(assert (=> b!1372452 (= e!877268 (printTailRec!590 thiss!19762 (singletonSeq!1036 t1!34) (+ 0 1) (++!3592 (BalanceConc!9085 Empty!4572) (charsOf!1377 (apply!3411 (singletonSeq!1036 t1!34) 0)))))))

(declare-fun lt!455742 () List!13957)

(assert (=> b!1372452 (= lt!455742 (list!5351 (singletonSeq!1036 t1!34)))))

(declare-fun lt!455741 () Unit!20107)

(declare-fun lemmaDropApply!441 (List!13957 Int) Unit!20107)

(assert (=> b!1372452 (= lt!455741 (lemmaDropApply!441 lt!455742 0))))

(declare-fun head!2472 (List!13957) Token!4472)

(declare-fun drop!686 (List!13957 Int) List!13957)

(declare-fun apply!3416 (List!13957 Int) Token!4472)

(assert (=> b!1372452 (= (head!2472 (drop!686 lt!455742 0)) (apply!3416 lt!455742 0))))

(declare-fun lt!455743 () Unit!20107)

(assert (=> b!1372452 (= lt!455743 lt!455741)))

(declare-fun lt!455740 () List!13957)

(assert (=> b!1372452 (= lt!455740 (list!5351 (singletonSeq!1036 t1!34)))))

(declare-fun lt!455739 () Unit!20107)

(declare-fun lemmaDropTail!421 (List!13957 Int) Unit!20107)

(assert (=> b!1372452 (= lt!455739 (lemmaDropTail!421 lt!455740 0))))

(declare-fun tail!1984 (List!13957) List!13957)

(assert (=> b!1372452 (= (tail!1984 (drop!686 lt!455740 0)) (drop!686 lt!455740 (+ 0 1)))))

(declare-fun lt!455738 () Unit!20107)

(assert (=> b!1372452 (= lt!455738 lt!455739)))

(assert (= (and d!391703 res!618361) b!1372450))

(assert (= (and d!391703 c!225896) b!1372451))

(assert (= (and d!391703 (not c!225896)) b!1372452))

(assert (=> d!391703 m!1540833))

(declare-fun m!1543421 () Bool)

(assert (=> d!391703 m!1543421))

(declare-fun m!1543423 () Bool)

(assert (=> d!391703 m!1543423))

(declare-fun m!1543425 () Bool)

(assert (=> d!391703 m!1543425))

(assert (=> d!391703 m!1542631))

(declare-fun m!1543427 () Bool)

(assert (=> d!391703 m!1543427))

(assert (=> d!391703 m!1540833))

(assert (=> d!391703 m!1543425))

(assert (=> d!391703 m!1542631))

(assert (=> b!1372450 m!1540833))

(assert (=> b!1372450 m!1543421))

(declare-fun m!1543429 () Bool)

(assert (=> b!1372452 m!1543429))

(declare-fun m!1543431 () Bool)

(assert (=> b!1372452 m!1543431))

(assert (=> b!1372452 m!1540833))

(assert (=> b!1372452 m!1541401))

(declare-fun m!1543433 () Bool)

(assert (=> b!1372452 m!1543433))

(declare-fun m!1543435 () Bool)

(assert (=> b!1372452 m!1543435))

(declare-fun m!1543437 () Bool)

(assert (=> b!1372452 m!1543437))

(declare-fun m!1543439 () Bool)

(assert (=> b!1372452 m!1543439))

(assert (=> b!1372452 m!1540833))

(declare-fun m!1543441 () Bool)

(assert (=> b!1372452 m!1543441))

(declare-fun m!1543443 () Bool)

(assert (=> b!1372452 m!1543443))

(assert (=> b!1372452 m!1543433))

(assert (=> b!1372452 m!1540833))

(declare-fun m!1543445 () Bool)

(assert (=> b!1372452 m!1543445))

(declare-fun m!1543447 () Bool)

(assert (=> b!1372452 m!1543447))

(declare-fun m!1543449 () Bool)

(assert (=> b!1372452 m!1543449))

(assert (=> b!1372452 m!1543445))

(assert (=> b!1372452 m!1543429))

(assert (=> b!1372452 m!1543441))

(assert (=> b!1372452 m!1543449))

(declare-fun m!1543451 () Bool)

(assert (=> b!1372452 m!1543451))

(assert (=> d!391027 d!391703))

(declare-fun d!391705 () Bool)

(assert (=> d!391705 true))

(assert (=> d!391705 true))

(declare-fun res!618364 () Bool)

(assert (=> d!391705 (= (choose!8440 lambda!58183) res!618364)))

(assert (=> d!391119 d!391705))

(declare-fun b!1372453 () Bool)

(declare-fun res!618372 () Bool)

(declare-fun e!877270 () Bool)

(assert (=> b!1372453 (=> res!618372 e!877270)))

(assert (=> b!1372453 (= res!618372 (not ((_ is ElementMatch!3719) lt!455224)))))

(declare-fun e!877271 () Bool)

(assert (=> b!1372453 (= e!877271 e!877270)))

(declare-fun b!1372454 () Bool)

(declare-fun lt!455745 () Bool)

(assert (=> b!1372454 (= e!877271 (not lt!455745))))

(declare-fun b!1372455 () Bool)

(declare-fun res!618370 () Bool)

(declare-fun e!877275 () Bool)

(assert (=> b!1372455 (=> (not res!618370) (not e!877275))))

(declare-fun call!92171 () Bool)

(assert (=> b!1372455 (= res!618370 (not call!92171))))

(declare-fun d!391707 () Bool)

(declare-fun e!877272 () Bool)

(assert (=> d!391707 e!877272))

(declare-fun c!225898 () Bool)

(assert (=> d!391707 (= c!225898 ((_ is EmptyExpr!3719) lt!455224))))

(declare-fun e!877273 () Bool)

(assert (=> d!391707 (= lt!455745 e!877273)))

(declare-fun c!225897 () Bool)

(assert (=> d!391707 (= c!225897 (isEmpty!8376 lt!454960))))

(assert (=> d!391707 (validRegex!1619 lt!455224)))

(assert (=> d!391707 (= (matchR!1712 lt!455224 lt!454960) lt!455745)))

(declare-fun bm!92166 () Bool)

(assert (=> bm!92166 (= call!92171 (isEmpty!8376 lt!454960))))

(declare-fun b!1372456 () Bool)

(assert (=> b!1372456 (= e!877272 e!877271)))

(declare-fun c!225899 () Bool)

(assert (=> b!1372456 (= c!225899 ((_ is EmptyLang!3719) lt!455224))))

(declare-fun b!1372457 () Bool)

(declare-fun e!877269 () Bool)

(assert (=> b!1372457 (= e!877270 e!877269)))

(declare-fun res!618368 () Bool)

(assert (=> b!1372457 (=> (not res!618368) (not e!877269))))

(assert (=> b!1372457 (= res!618368 (not lt!455745))))

(declare-fun b!1372458 () Bool)

(declare-fun e!877274 () Bool)

(assert (=> b!1372458 (= e!877274 (not (= (head!2469 lt!454960) (c!225512 lt!455224))))))

(declare-fun b!1372459 () Bool)

(assert (=> b!1372459 (= e!877272 (= lt!455745 call!92171))))

(declare-fun b!1372460 () Bool)

(assert (=> b!1372460 (= e!877269 e!877274)))

(declare-fun res!618365 () Bool)

(assert (=> b!1372460 (=> res!618365 e!877274)))

(assert (=> b!1372460 (= res!618365 call!92171)))

(declare-fun b!1372461 () Bool)

(assert (=> b!1372461 (= e!877273 (nullable!1199 lt!455224))))

(declare-fun b!1372462 () Bool)

(assert (=> b!1372462 (= e!877275 (= (head!2469 lt!454960) (c!225512 lt!455224)))))

(declare-fun b!1372463 () Bool)

(declare-fun res!618367 () Bool)

(assert (=> b!1372463 (=> res!618367 e!877274)))

(assert (=> b!1372463 (= res!618367 (not (isEmpty!8376 (tail!1982 lt!454960))))))

(declare-fun b!1372464 () Bool)

(declare-fun res!618371 () Bool)

(assert (=> b!1372464 (=> res!618371 e!877270)))

(assert (=> b!1372464 (= res!618371 e!877275)))

(declare-fun res!618369 () Bool)

(assert (=> b!1372464 (=> (not res!618369) (not e!877275))))

(assert (=> b!1372464 (= res!618369 lt!455745)))

(declare-fun b!1372465 () Bool)

(assert (=> b!1372465 (= e!877273 (matchR!1712 (derivativeStep!957 lt!455224 (head!2469 lt!454960)) (tail!1982 lt!454960)))))

(declare-fun b!1372466 () Bool)

(declare-fun res!618366 () Bool)

(assert (=> b!1372466 (=> (not res!618366) (not e!877275))))

(assert (=> b!1372466 (= res!618366 (isEmpty!8376 (tail!1982 lt!454960)))))

(assert (= (and d!391707 c!225897) b!1372461))

(assert (= (and d!391707 (not c!225897)) b!1372465))

(assert (= (and d!391707 c!225898) b!1372459))

(assert (= (and d!391707 (not c!225898)) b!1372456))

(assert (= (and b!1372456 c!225899) b!1372454))

(assert (= (and b!1372456 (not c!225899)) b!1372453))

(assert (= (and b!1372453 (not res!618372)) b!1372464))

(assert (= (and b!1372464 res!618369) b!1372455))

(assert (= (and b!1372455 res!618370) b!1372466))

(assert (= (and b!1372466 res!618366) b!1372462))

(assert (= (and b!1372464 (not res!618371)) b!1372457))

(assert (= (and b!1372457 res!618368) b!1372460))

(assert (= (and b!1372460 (not res!618365)) b!1372463))

(assert (= (and b!1372463 (not res!618367)) b!1372458))

(assert (= (or b!1372459 b!1372455 b!1372460) bm!92166))

(declare-fun m!1543453 () Bool)

(assert (=> b!1372461 m!1543453))

(assert (=> bm!92166 m!1541621))

(assert (=> d!391707 m!1541621))

(assert (=> d!391707 m!1541875))

(assert (=> b!1372465 m!1541625))

(assert (=> b!1372465 m!1541625))

(declare-fun m!1543455 () Bool)

(assert (=> b!1372465 m!1543455))

(assert (=> b!1372465 m!1541629))

(assert (=> b!1372465 m!1543455))

(assert (=> b!1372465 m!1541629))

(declare-fun m!1543457 () Bool)

(assert (=> b!1372465 m!1543457))

(assert (=> b!1372466 m!1541629))

(assert (=> b!1372466 m!1541629))

(assert (=> b!1372466 m!1541633))

(assert (=> b!1372463 m!1541629))

(assert (=> b!1372463 m!1541629))

(assert (=> b!1372463 m!1541633))

(assert (=> b!1372462 m!1541625))

(assert (=> b!1372458 m!1541625))

(assert (=> b!1371495 d!391707))

(declare-fun d!391709 () Bool)

(declare-fun charsToBigInt!1 (List!13955) Int)

(assert (=> d!391709 (= (inv!17 (value!78175 t2!34)) (= (charsToBigInt!1 (text!17913 (value!78175 t2!34))) (value!78167 (value!78175 t2!34))))))

(declare-fun bs!335825 () Bool)

(assert (= bs!335825 d!391709))

(declare-fun m!1543459 () Bool)

(assert (=> bs!335825 m!1543459))

(assert (=> b!1371028 d!391709))

(declare-fun d!391711 () Bool)

(assert (=> d!391711 (= (list!5350 (_2!7630 lt!455107)) (list!5355 (c!225513 (_2!7630 lt!455107))))))

(declare-fun bs!335826 () Bool)

(assert (= bs!335826 d!391711))

(declare-fun m!1543461 () Bool)

(assert (=> bs!335826 m!1543461))

(assert (=> b!1371105 d!391711))

(assert (=> b!1371105 d!391125))

(assert (=> b!1371105 d!391127))

(declare-fun d!391713 () Bool)

(declare-fun lt!455766 () Bool)

(assert (=> d!391713 (= lt!455766 (select (content!2031 (t!121483 lt!454960)) lt!454955))))

(declare-fun e!877276 () Bool)

(assert (=> d!391713 (= lt!455766 e!877276)))

(declare-fun res!618374 () Bool)

(assert (=> d!391713 (=> (not res!618374) (not e!877276))))

(assert (=> d!391713 (= res!618374 ((_ is Cons!13888) (t!121483 lt!454960)))))

(assert (=> d!391713 (= (contains!2600 (t!121483 lt!454960) lt!454955) lt!455766)))

(declare-fun b!1372467 () Bool)

(declare-fun e!877277 () Bool)

(assert (=> b!1372467 (= e!877276 e!877277)))

(declare-fun res!618373 () Bool)

(assert (=> b!1372467 (=> res!618373 e!877277)))

(assert (=> b!1372467 (= res!618373 (= (h!19289 (t!121483 lt!454960)) lt!454955))))

(declare-fun b!1372468 () Bool)

(assert (=> b!1372468 (= e!877277 (contains!2600 (t!121483 (t!121483 lt!454960)) lt!454955))))

(assert (= (and d!391713 res!618374) b!1372467))

(assert (= (and b!1372467 (not res!618373)) b!1372468))

(declare-fun m!1543463 () Bool)

(assert (=> d!391713 m!1543463))

(declare-fun m!1543465 () Bool)

(assert (=> d!391713 m!1543465))

(declare-fun m!1543467 () Bool)

(assert (=> b!1372468 m!1543467))

(assert (=> b!1371280 d!391713))

(declare-fun d!391715 () Bool)

(declare-fun lt!455779 () Token!4472)

(assert (=> d!391715 (= lt!455779 (apply!3416 (list!5351 (_1!7630 lt!455164)) 0))))

(declare-fun apply!3417 (Conc!4573 Int) Token!4472)

(assert (=> d!391715 (= lt!455779 (apply!3417 (c!225514 (_1!7630 lt!455164)) 0))))

(declare-fun e!877280 () Bool)

(assert (=> d!391715 e!877280))

(declare-fun res!618377 () Bool)

(assert (=> d!391715 (=> (not res!618377) (not e!877280))))

(assert (=> d!391715 (= res!618377 (<= 0 0))))

(assert (=> d!391715 (= (apply!3411 (_1!7630 lt!455164) 0) lt!455779)))

(declare-fun b!1372471 () Bool)

(assert (=> b!1372471 (= e!877280 (< 0 (size!11397 (_1!7630 lt!455164))))))

(assert (= (and d!391715 res!618377) b!1372471))

(assert (=> d!391715 m!1542109))

(assert (=> d!391715 m!1542109))

(declare-fun m!1543495 () Bool)

(assert (=> d!391715 m!1543495))

(declare-fun m!1543497 () Bool)

(assert (=> d!391715 m!1543497))

(assert (=> b!1372471 m!1541569))

(assert (=> b!1371271 d!391715))

(declare-fun d!391719 () Bool)

(assert (=> d!391719 (= (isEmpty!8376 lt!454960) ((_ is Nil!13888) lt!454960))))

(assert (=> bm!92087 d!391719))

(assert (=> d!391101 d!391491))

(declare-fun d!391721 () Bool)

(declare-fun c!225904 () Bool)

(assert (=> d!391721 (= c!225904 ((_ is Node!4572) (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34)))))))

(declare-fun e!877291 () Bool)

(assert (=> d!391721 (= (inv!18248 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34)))) e!877291)))

(declare-fun b!1372486 () Bool)

(declare-fun inv!18252 (Conc!4572) Bool)

(assert (=> b!1372486 (= e!877291 (inv!18252 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34)))))))

(declare-fun b!1372487 () Bool)

(declare-fun e!877292 () Bool)

(assert (=> b!1372487 (= e!877291 e!877292)))

(declare-fun res!618384 () Bool)

(assert (=> b!1372487 (= res!618384 (not ((_ is Leaf!6971) (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34))))))))

(assert (=> b!1372487 (=> res!618384 e!877292)))

(declare-fun b!1372488 () Bool)

(declare-fun inv!18253 (Conc!4572) Bool)

(assert (=> b!1372488 (= e!877292 (inv!18253 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34)))))))

(assert (= (and d!391721 c!225904) b!1372486))

(assert (= (and d!391721 (not c!225904)) b!1372487))

(assert (= (and b!1372487 (not res!618384)) b!1372488))

(declare-fun m!1543529 () Bool)

(assert (=> b!1372486 m!1543529))

(declare-fun m!1543531 () Bool)

(assert (=> b!1372488 m!1543531))

(assert (=> b!1371415 d!391721))

(declare-fun d!391743 () Bool)

(assert (=> d!391743 (= (isEmpty!8381 (_1!7629 lt!455190)) ((_ is Nil!13891) (_1!7629 lt!455190)))))

(assert (=> b!1371365 d!391743))

(declare-fun d!391745 () Bool)

(declare-fun lt!455794 () Bool)

(assert (=> d!391745 (= lt!455794 (isEmpty!8376 (list!5350 (_2!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t2!34)))))))))

(assert (=> d!391745 (= lt!455794 (isEmpty!8377 (c!225513 (_2!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t2!34)))))))))

(assert (=> d!391745 (= (isEmpty!8370 (_2!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t2!34))))) lt!455794)))

(declare-fun bs!335833 () Bool)

(assert (= bs!335833 d!391745))

(declare-fun m!1543533 () Bool)

(assert (=> bs!335833 m!1543533))

(assert (=> bs!335833 m!1543533))

(declare-fun m!1543535 () Bool)

(assert (=> bs!335833 m!1543535))

(declare-fun m!1543537 () Bool)

(assert (=> bs!335833 m!1543537))

(assert (=> b!1370974 d!391745))

(declare-fun b!1372498 () Bool)

(declare-fun res!618392 () Bool)

(declare-fun e!877298 () Bool)

(assert (=> b!1372498 (=> (not res!618392) (not e!877298))))

(declare-fun lt!455795 () tuple2!13488)

(assert (=> b!1372498 (= res!618392 (= (list!5351 (_1!7630 lt!455795)) (_1!7629 (lexList!618 thiss!19762 rules!2550 (list!5350 (print!866 thiss!19762 (singletonSeq!1036 t2!34)))))))))

(declare-fun b!1372499 () Bool)

(declare-fun e!877296 () Bool)

(assert (=> b!1372499 (= e!877296 (not (isEmpty!8378 (_1!7630 lt!455795))))))

(declare-fun b!1372500 () Bool)

(assert (=> b!1372500 (= e!877298 (= (list!5350 (_2!7630 lt!455795)) (_2!7629 (lexList!618 thiss!19762 rules!2550 (list!5350 (print!866 thiss!19762 (singletonSeq!1036 t2!34)))))))))

(declare-fun b!1372501 () Bool)

(declare-fun e!877297 () Bool)

(assert (=> b!1372501 (= e!877297 e!877296)))

(declare-fun res!618394 () Bool)

(assert (=> b!1372501 (= res!618394 (< (size!11392 (_2!7630 lt!455795)) (size!11392 (print!866 thiss!19762 (singletonSeq!1036 t2!34)))))))

(assert (=> b!1372501 (=> (not res!618394) (not e!877296))))

(declare-fun b!1372502 () Bool)

(assert (=> b!1372502 (= e!877297 (= (_2!7630 lt!455795) (print!866 thiss!19762 (singletonSeq!1036 t2!34))))))

(declare-fun d!391747 () Bool)

(assert (=> d!391747 e!877298))

(declare-fun res!618393 () Bool)

(assert (=> d!391747 (=> (not res!618393) (not e!877298))))

(assert (=> d!391747 (= res!618393 e!877297)))

(declare-fun c!225906 () Bool)

(assert (=> d!391747 (= c!225906 (> (size!11397 (_1!7630 lt!455795)) 0))))

(assert (=> d!391747 (= lt!455795 (lexTailRecV2!413 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t2!34)) (BalanceConc!9085 Empty!4572) (print!866 thiss!19762 (singletonSeq!1036 t2!34)) (BalanceConc!9087 Empty!4573)))))

(assert (=> d!391747 (= (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t2!34))) lt!455795)))

(assert (= (and d!391747 c!225906) b!1372501))

(assert (= (and d!391747 (not c!225906)) b!1372502))

(assert (= (and b!1372501 res!618394) b!1372499))

(assert (= (and d!391747 res!618393) b!1372498))

(assert (= (and b!1372498 res!618392) b!1372500))

(declare-fun m!1543547 () Bool)

(assert (=> b!1372498 m!1543547))

(assert (=> b!1372498 m!1540781))

(declare-fun m!1543551 () Bool)

(assert (=> b!1372498 m!1543551))

(assert (=> b!1372498 m!1543551))

(declare-fun m!1543553 () Bool)

(assert (=> b!1372498 m!1543553))

(declare-fun m!1543555 () Bool)

(assert (=> b!1372499 m!1543555))

(declare-fun m!1543557 () Bool)

(assert (=> b!1372501 m!1543557))

(assert (=> b!1372501 m!1540781))

(declare-fun m!1543561 () Bool)

(assert (=> b!1372501 m!1543561))

(declare-fun m!1543565 () Bool)

(assert (=> d!391747 m!1543565))

(assert (=> d!391747 m!1540781))

(assert (=> d!391747 m!1540781))

(declare-fun m!1543567 () Bool)

(assert (=> d!391747 m!1543567))

(declare-fun m!1543569 () Bool)

(assert (=> b!1372500 m!1543569))

(assert (=> b!1372500 m!1540781))

(assert (=> b!1372500 m!1543551))

(assert (=> b!1372500 m!1543551))

(assert (=> b!1372500 m!1543553))

(assert (=> b!1370974 d!391747))

(assert (=> b!1370974 d!391133))

(assert (=> b!1370974 d!391135))

(declare-fun d!391749 () Bool)

(assert (=> d!391749 true))

(declare-fun lambda!58276 () Int)

(declare-fun order!8483 () Int)

(declare-fun order!8485 () Int)

(declare-fun dynLambda!6321 (Int Int) Int)

(declare-fun dynLambda!6322 (Int Int) Int)

(assert (=> d!391749 (< (dynLambda!6321 order!8483 (toChars!3531 (transformation!2405 (rule!4160 t2!34)))) (dynLambda!6322 order!8485 lambda!58276))))

(assert (=> d!391749 true))

(declare-fun order!8487 () Int)

(declare-fun dynLambda!6323 (Int Int) Int)

(assert (=> d!391749 (< (dynLambda!6323 order!8487 (toValue!3672 (transformation!2405 (rule!4160 t2!34)))) (dynLambda!6322 order!8485 lambda!58276))))

(declare-fun Forall!539 (Int) Bool)

(assert (=> d!391749 (= (semiInverseModEq!928 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (toValue!3672 (transformation!2405 (rule!4160 t2!34)))) (Forall!539 lambda!58276))))

(declare-fun bs!335836 () Bool)

(assert (= bs!335836 d!391749))

(declare-fun m!1543609 () Bool)

(assert (=> bs!335836 m!1543609))

(assert (=> d!390969 d!391749))

(declare-fun d!391771 () Bool)

(assert (=> d!391771 (= (Exists!871 lambda!58218) (choose!8440 lambda!58218))))

(declare-fun bs!335837 () Bool)

(assert (= bs!335837 d!391771))

(declare-fun m!1543611 () Bool)

(assert (=> bs!335837 m!1543611))

(assert (=> d!391121 d!391771))

(declare-fun bs!335838 () Bool)

(declare-fun d!391773 () Bool)

(assert (= bs!335838 (and d!391773 b!1370737)))

(declare-fun lambda!58279 () Int)

(assert (=> bs!335838 (= lambda!58279 lambda!58183)))

(declare-fun bs!335839 () Bool)

(assert (= bs!335839 (and d!391773 d!391121)))

(assert (=> bs!335839 (= lambda!58279 lambda!58218)))

(assert (=> d!391773 true))

(assert (=> d!391773 true))

(assert (=> d!391773 (Exists!871 lambda!58279)))

(assert (=> d!391773 true))

(declare-fun _$103!137 () Unit!20107)

(assert (=> d!391773 (= (choose!8441 lt!454967 lt!454969) _$103!137)))

(declare-fun bs!335840 () Bool)

(assert (= bs!335840 d!391773))

(declare-fun m!1543615 () Bool)

(assert (=> bs!335840 m!1543615))

(assert (=> d!391121 d!391773))

(declare-fun c!225917 () Bool)

(declare-fun bm!92168 () Bool)

(declare-fun c!225918 () Bool)

(declare-fun call!92173 () Bool)

(assert (=> bm!92168 (= call!92173 (validRegex!1619 (ite c!225917 (reg!4048 lt!454967) (ite c!225918 (regTwo!7951 lt!454967) (regTwo!7950 lt!454967)))))))

(declare-fun b!1372532 () Bool)

(declare-fun e!877315 () Bool)

(declare-fun e!877314 () Bool)

(assert (=> b!1372532 (= e!877315 e!877314)))

(declare-fun res!618400 () Bool)

(assert (=> b!1372532 (=> (not res!618400) (not e!877314))))

(declare-fun call!92174 () Bool)

(assert (=> b!1372532 (= res!618400 call!92174)))

(declare-fun b!1372533 () Bool)

(declare-fun e!877313 () Bool)

(declare-fun e!877317 () Bool)

(assert (=> b!1372533 (= e!877313 e!877317)))

(declare-fun res!618401 () Bool)

(assert (=> b!1372533 (= res!618401 (not (nullable!1199 (reg!4048 lt!454967))))))

(assert (=> b!1372533 (=> (not res!618401) (not e!877317))))

(declare-fun b!1372534 () Bool)

(assert (=> b!1372534 (= e!877317 call!92173)))

(declare-fun b!1372535 () Bool)

(declare-fun call!92175 () Bool)

(assert (=> b!1372535 (= e!877314 call!92175)))

(declare-fun bm!92169 () Bool)

(assert (=> bm!92169 (= call!92175 call!92173)))

(declare-fun b!1372536 () Bool)

(declare-fun e!877316 () Bool)

(assert (=> b!1372536 (= e!877313 e!877316)))

(assert (=> b!1372536 (= c!225918 ((_ is Union!3719) lt!454967))))

(declare-fun bm!92170 () Bool)

(assert (=> bm!92170 (= call!92174 (validRegex!1619 (ite c!225918 (regOne!7951 lt!454967) (regOne!7950 lt!454967))))))

(declare-fun b!1372537 () Bool)

(declare-fun res!618402 () Bool)

(assert (=> b!1372537 (=> res!618402 e!877315)))

(assert (=> b!1372537 (= res!618402 (not ((_ is Concat!6214) lt!454967)))))

(assert (=> b!1372537 (= e!877316 e!877315)))

(declare-fun b!1372538 () Bool)

(declare-fun e!877312 () Bool)

(assert (=> b!1372538 (= e!877312 e!877313)))

(assert (=> b!1372538 (= c!225917 ((_ is Star!3719) lt!454967))))

(declare-fun d!391777 () Bool)

(declare-fun res!618398 () Bool)

(assert (=> d!391777 (=> res!618398 e!877312)))

(assert (=> d!391777 (= res!618398 ((_ is ElementMatch!3719) lt!454967))))

(assert (=> d!391777 (= (validRegex!1619 lt!454967) e!877312)))

(declare-fun b!1372539 () Bool)

(declare-fun res!618399 () Bool)

(declare-fun e!877319 () Bool)

(assert (=> b!1372539 (=> (not res!618399) (not e!877319))))

(assert (=> b!1372539 (= res!618399 call!92174)))

(assert (=> b!1372539 (= e!877316 e!877319)))

(declare-fun b!1372540 () Bool)

(assert (=> b!1372540 (= e!877319 call!92175)))

(assert (= (and d!391777 (not res!618398)) b!1372538))

(assert (= (and b!1372538 c!225917) b!1372533))

(assert (= (and b!1372538 (not c!225917)) b!1372536))

(assert (= (and b!1372533 res!618401) b!1372534))

(assert (= (and b!1372536 c!225918) b!1372539))

(assert (= (and b!1372536 (not c!225918)) b!1372537))

(assert (= (and b!1372539 res!618399) b!1372540))

(assert (= (and b!1372537 (not res!618402)) b!1372532))

(assert (= (and b!1372532 res!618400) b!1372535))

(assert (= (or b!1372539 b!1372532) bm!92170))

(assert (= (or b!1372540 b!1372535) bm!92169))

(assert (= (or b!1372534 bm!92169) bm!92168))

(declare-fun m!1543621 () Bool)

(assert (=> bm!92168 m!1543621))

(declare-fun m!1543623 () Bool)

(assert (=> b!1372533 m!1543623))

(declare-fun m!1543625 () Bool)

(assert (=> bm!92170 m!1543625))

(assert (=> d!391121 d!391777))

(declare-fun bs!335841 () Bool)

(declare-fun d!391785 () Bool)

(assert (= bs!335841 (and d!391785 b!1370766)))

(declare-fun lambda!58282 () Int)

(assert (=> bs!335841 (not (= lambda!58282 lambda!58186))))

(declare-fun bs!335842 () Bool)

(assert (= bs!335842 (and d!391785 b!1370757)))

(assert (=> bs!335842 (= lambda!58282 lambda!58187)))

(declare-fun bs!335843 () Bool)

(assert (= bs!335843 (and d!391785 d!390959)))

(assert (=> bs!335843 (not (= lambda!58282 lambda!58205))))

(declare-fun bs!335844 () Bool)

(assert (= bs!335844 (and d!391785 d!391281)))

(assert (=> bs!335844 (not (= lambda!58282 lambda!58247))))

(declare-fun bs!335845 () Bool)

(assert (= bs!335845 (and d!391785 d!391449)))

(assert (=> bs!335845 (= lambda!58282 lambda!58264)))

(declare-fun bs!335846 () Bool)

(assert (= bs!335846 (and d!391785 d!391277)))

(assert (=> bs!335846 (not (= lambda!58282 lambda!58244))))

(declare-fun bs!335847 () Bool)

(assert (= bs!335847 (and d!391785 d!390957)))

(assert (=> bs!335847 (not (= lambda!58282 lambda!58202))))

(assert (=> d!391785 true))

(declare-fun lt!455808 () Bool)

(assert (=> d!391785 (= lt!455808 (rulesValidInductive!770 thiss!19762 rules!2550))))

(assert (=> d!391785 (= lt!455808 (forall!3396 rules!2550 lambda!58282))))

(assert (=> d!391785 (= (rulesValid!896 thiss!19762 rules!2550) lt!455808)))

(declare-fun bs!335848 () Bool)

(assert (= bs!335848 d!391785))

(assert (=> bs!335848 m!1541543))

(declare-fun m!1543635 () Bool)

(assert (=> bs!335848 m!1543635))

(assert (=> d!390999 d!391785))

(declare-fun b!1372607 () Bool)

(declare-fun e!877360 () Bool)

(declare-fun lt!455815 () BalanceConc!9084)

(assert (=> b!1372607 (= e!877360 (= (list!5350 lt!455815) (++!3590 (list!5350 (charsOf!1377 t1!34)) (list!5350 (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))))))))

(declare-fun b!1372606 () Bool)

(declare-fun res!618435 () Bool)

(assert (=> b!1372606 (=> (not res!618435) (not e!877360))))

(declare-fun height!666 (Conc!4572) Int)

(declare-fun ++!3595 (Conc!4572 Conc!4572) Conc!4572)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1372606 (= res!618435 (>= (height!666 (++!3595 (c!225513 (charsOf!1377 t1!34)) (c!225513 (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))))) (max!0 (height!666 (c!225513 (charsOf!1377 t1!34))) (height!666 (c!225513 (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0)))))))))

(declare-fun b!1372605 () Bool)

(declare-fun res!618437 () Bool)

(assert (=> b!1372605 (=> (not res!618437) (not e!877360))))

(assert (=> b!1372605 (= res!618437 (<= (height!666 (++!3595 (c!225513 (charsOf!1377 t1!34)) (c!225513 (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))))) (+ (max!0 (height!666 (c!225513 (charsOf!1377 t1!34))) (height!666 (c!225513 (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))))) 1)))))

(declare-fun d!391791 () Bool)

(assert (=> d!391791 e!877360))

(declare-fun res!618438 () Bool)

(assert (=> d!391791 (=> (not res!618438) (not e!877360))))

(declare-fun appendAssocInst!280 (Conc!4572 Conc!4572) Bool)

(assert (=> d!391791 (= res!618438 (appendAssocInst!280 (c!225513 (charsOf!1377 t1!34)) (c!225513 (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0)))))))

(assert (=> d!391791 (= lt!455815 (BalanceConc!9085 (++!3595 (c!225513 (charsOf!1377 t1!34)) (c!225513 (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))))))))

(assert (=> d!391791 (= (++!3592 (charsOf!1377 t1!34) (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))) lt!455815)))

(declare-fun b!1372604 () Bool)

(declare-fun res!618436 () Bool)

(assert (=> b!1372604 (=> (not res!618436) (not e!877360))))

(declare-fun isBalanced!1348 (Conc!4572) Bool)

(assert (=> b!1372604 (= res!618436 (isBalanced!1348 (++!3595 (c!225513 (charsOf!1377 t1!34)) (c!225513 (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))))))))

(assert (= (and d!391791 res!618438) b!1372604))

(assert (= (and b!1372604 res!618436) b!1372605))

(assert (= (and b!1372605 res!618437) b!1372606))

(assert (= (and b!1372606 res!618435) b!1372607))

(declare-fun m!1543689 () Bool)

(assert (=> b!1372605 m!1543689))

(declare-fun m!1543691 () Bool)

(assert (=> b!1372605 m!1543691))

(declare-fun m!1543693 () Bool)

(assert (=> b!1372605 m!1543693))

(declare-fun m!1543695 () Bool)

(assert (=> b!1372605 m!1543695))

(declare-fun m!1543697 () Bool)

(assert (=> b!1372605 m!1543697))

(assert (=> b!1372605 m!1543695))

(assert (=> b!1372605 m!1543689))

(assert (=> b!1372605 m!1543691))

(assert (=> b!1372604 m!1543695))

(assert (=> b!1372604 m!1543695))

(declare-fun m!1543701 () Bool)

(assert (=> b!1372604 m!1543701))

(declare-fun m!1543707 () Bool)

(assert (=> d!391791 m!1543707))

(assert (=> d!391791 m!1543695))

(assert (=> b!1372606 m!1543689))

(assert (=> b!1372606 m!1543691))

(assert (=> b!1372606 m!1543693))

(assert (=> b!1372606 m!1543695))

(assert (=> b!1372606 m!1543697))

(assert (=> b!1372606 m!1543695))

(assert (=> b!1372606 m!1543689))

(assert (=> b!1372606 m!1543691))

(declare-fun m!1543709 () Bool)

(assert (=> b!1372607 m!1543709))

(assert (=> b!1372607 m!1540883))

(declare-fun m!1543711 () Bool)

(assert (=> b!1372607 m!1543711))

(assert (=> b!1372607 m!1541261))

(declare-fun m!1543713 () Bool)

(assert (=> b!1372607 m!1543713))

(assert (=> b!1372607 m!1543711))

(assert (=> b!1372607 m!1543713))

(declare-fun m!1543715 () Bool)

(assert (=> b!1372607 m!1543715))

(assert (=> d!391005 d!391791))

(declare-fun d!391809 () Bool)

(declare-fun lt!455841 () Bool)

(assert (=> d!391809 (= lt!455841 (prefixMatch!228 (rulesRegex!288 thiss!19762 rules!2550) (list!5350 (++!3592 (charsOf!1377 t1!34) (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))))))))

(declare-datatypes ((Context!1204 0))(
  ( (Context!1205 (exprs!1102 List!13958)) )
))
(declare-fun prefixMatchZipperSequence!259 ((InoxSet Context!1204) BalanceConc!9084 Int) Bool)

(declare-fun focus!93 (Regex!3719) (InoxSet Context!1204))

(assert (=> d!391809 (= lt!455841 (prefixMatchZipperSequence!259 (focus!93 (rulesRegex!288 thiss!19762 rules!2550)) (++!3592 (charsOf!1377 t1!34) (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))) 0))))

(declare-fun lt!455843 () Unit!20107)

(declare-fun lt!455838 () Unit!20107)

(assert (=> d!391809 (= lt!455843 lt!455838)))

(declare-fun lt!455840 () List!13954)

(declare-fun lt!455842 () (InoxSet Context!1204))

(declare-fun prefixMatchZipper!73 ((InoxSet Context!1204) List!13954) Bool)

(assert (=> d!391809 (= (prefixMatch!228 (rulesRegex!288 thiss!19762 rules!2550) lt!455840) (prefixMatchZipper!73 lt!455842 lt!455840))))

(declare-datatypes ((List!13961 0))(
  ( (Nil!13895) (Cons!13895 (h!19296 Context!1204) (t!121632 List!13961)) )
))
(declare-fun lt!455844 () List!13961)

(declare-fun prefixMatchZipperRegexEquiv!73 ((InoxSet Context!1204) List!13961 Regex!3719 List!13954) Unit!20107)

(assert (=> d!391809 (= lt!455838 (prefixMatchZipperRegexEquiv!73 lt!455842 lt!455844 (rulesRegex!288 thiss!19762 rules!2550) lt!455840))))

(assert (=> d!391809 (= lt!455840 (list!5350 (++!3592 (charsOf!1377 t1!34) (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0)))))))

(declare-fun toList!757 ((InoxSet Context!1204)) List!13961)

(assert (=> d!391809 (= lt!455844 (toList!757 (focus!93 (rulesRegex!288 thiss!19762 rules!2550))))))

(assert (=> d!391809 (= lt!455842 (focus!93 (rulesRegex!288 thiss!19762 rules!2550)))))

(declare-fun lt!455837 () Unit!20107)

(declare-fun lt!455836 () Unit!20107)

(assert (=> d!391809 (= lt!455837 lt!455836)))

(declare-fun lt!455845 () (InoxSet Context!1204))

(declare-fun lt!455839 () Int)

(declare-fun dropList!408 (BalanceConc!9084 Int) List!13954)

(assert (=> d!391809 (= (prefixMatchZipper!73 lt!455845 (dropList!408 (++!3592 (charsOf!1377 t1!34) (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))) lt!455839)) (prefixMatchZipperSequence!259 lt!455845 (++!3592 (charsOf!1377 t1!34) (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))) lt!455839))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!73 ((InoxSet Context!1204) BalanceConc!9084 Int) Unit!20107)

(assert (=> d!391809 (= lt!455836 (lemmaprefixMatchZipperSequenceEquivalent!73 lt!455845 (++!3592 (charsOf!1377 t1!34) (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0))) lt!455839))))

(assert (=> d!391809 (= lt!455839 0)))

(assert (=> d!391809 (= lt!455845 (focus!93 (rulesRegex!288 thiss!19762 rules!2550)))))

(assert (=> d!391809 (validRegex!1619 (rulesRegex!288 thiss!19762 rules!2550))))

(assert (=> d!391809 (= (prefixMatchZipperSequence!258 (rulesRegex!288 thiss!19762 rules!2550) (++!3592 (charsOf!1377 t1!34) (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0)))) lt!455841)))

(declare-fun bs!335864 () Bool)

(assert (= bs!335864 d!391809))

(assert (=> bs!335864 m!1540889))

(declare-fun m!1543739 () Bool)

(assert (=> bs!335864 m!1543739))

(assert (=> bs!335864 m!1541255))

(declare-fun m!1543741 () Bool)

(assert (=> bs!335864 m!1543741))

(assert (=> bs!335864 m!1541255))

(declare-fun m!1543743 () Bool)

(assert (=> bs!335864 m!1543743))

(assert (=> bs!335864 m!1541255))

(declare-fun m!1543745 () Bool)

(assert (=> bs!335864 m!1543745))

(assert (=> bs!335864 m!1540889))

(declare-fun m!1543747 () Bool)

(assert (=> bs!335864 m!1543747))

(assert (=> bs!335864 m!1540889))

(assert (=> bs!335864 m!1543743))

(declare-fun m!1543749 () Bool)

(assert (=> bs!335864 m!1543749))

(assert (=> bs!335864 m!1540889))

(declare-fun m!1543751 () Bool)

(assert (=> bs!335864 m!1543751))

(assert (=> bs!335864 m!1543751))

(declare-fun m!1543753 () Bool)

(assert (=> bs!335864 m!1543753))

(assert (=> bs!335864 m!1541255))

(declare-fun m!1543755 () Bool)

(assert (=> bs!335864 m!1543755))

(declare-fun m!1543757 () Bool)

(assert (=> bs!335864 m!1543757))

(assert (=> bs!335864 m!1543751))

(assert (=> bs!335864 m!1541255))

(declare-fun m!1543759 () Bool)

(assert (=> bs!335864 m!1543759))

(assert (=> bs!335864 m!1543745))

(declare-fun m!1543761 () Bool)

(assert (=> bs!335864 m!1543761))

(assert (=> bs!335864 m!1540889))

(declare-fun m!1543763 () Bool)

(assert (=> bs!335864 m!1543763))

(assert (=> d!391005 d!391809))

(declare-fun d!391835 () Bool)

(declare-fun e!877386 () Bool)

(assert (=> d!391835 e!877386))

(declare-fun res!618444 () Bool)

(assert (=> d!391835 (=> (not res!618444) (not e!877386))))

(declare-fun lt!455848 () BalanceConc!9084)

(assert (=> d!391835 (= res!618444 (= (list!5350 lt!455848) (Cons!13888 (apply!3407 (charsOf!1377 t2!34) 0) Nil!13888)))))

(declare-fun singleton!453 (C!7728) BalanceConc!9084)

(assert (=> d!391835 (= lt!455848 (singleton!453 (apply!3407 (charsOf!1377 t2!34) 0)))))

(assert (=> d!391835 (= (singletonSeq!1038 (apply!3407 (charsOf!1377 t2!34) 0)) lt!455848)))

(declare-fun b!1372683 () Bool)

(assert (=> b!1372683 (= e!877386 (isBalanced!1348 (c!225513 lt!455848)))))

(assert (= (and d!391835 res!618444) b!1372683))

(declare-fun m!1543765 () Bool)

(assert (=> d!391835 m!1543765))

(assert (=> d!391835 m!1541259))

(declare-fun m!1543767 () Bool)

(assert (=> d!391835 m!1543767))

(declare-fun m!1543769 () Bool)

(assert (=> b!1372683 m!1543769))

(assert (=> d!391005 d!391835))

(assert (=> d!391005 d!391177))

(declare-fun d!391837 () Bool)

(declare-fun lt!455849 () C!7728)

(assert (=> d!391837 (= lt!455849 (apply!3412 (list!5350 (charsOf!1377 t2!34)) 0))))

(assert (=> d!391837 (= lt!455849 (apply!3413 (c!225513 (charsOf!1377 t2!34)) 0))))

(declare-fun e!877387 () Bool)

(assert (=> d!391837 e!877387))

(declare-fun res!618445 () Bool)

(assert (=> d!391837 (=> (not res!618445) (not e!877387))))

(assert (=> d!391837 (= res!618445 (<= 0 0))))

(assert (=> d!391837 (= (apply!3407 (charsOf!1377 t2!34) 0) lt!455849)))

(declare-fun b!1372684 () Bool)

(assert (=> b!1372684 (= e!877387 (< 0 (size!11392 (charsOf!1377 t2!34))))))

(assert (= (and d!391837 res!618445) b!1372684))

(assert (=> d!391837 m!1540905))

(declare-fun m!1543771 () Bool)

(assert (=> d!391837 m!1543771))

(assert (=> d!391837 m!1543771))

(declare-fun m!1543773 () Bool)

(assert (=> d!391837 m!1543773))

(declare-fun m!1543775 () Bool)

(assert (=> d!391837 m!1543775))

(assert (=> b!1372684 m!1540905))

(declare-fun m!1543777 () Bool)

(assert (=> b!1372684 m!1543777))

(assert (=> d!391005 d!391837))

(assert (=> d!391005 d!391173))

(assert (=> d!391005 d!390973))

(declare-fun d!391839 () Bool)

(assert (=> d!391839 (= (isEmpty!8376 (tail!1982 lt!454960)) ((_ is Nil!13888) (tail!1982 lt!454960)))))

(assert (=> b!1371338 d!391839))

(assert (=> b!1371338 d!391303))

(declare-fun d!391841 () Bool)

(declare-fun lt!455850 () Int)

(assert (=> d!391841 (= lt!455850 (size!11399 (list!5350 (_2!7630 lt!455193))))))

(assert (=> d!391841 (= lt!455850 (size!11400 (c!225513 (_2!7630 lt!455193))))))

(assert (=> d!391841 (= (size!11392 (_2!7630 lt!455193)) lt!455850)))

(declare-fun bs!335865 () Bool)

(assert (= bs!335865 d!391841))

(assert (=> bs!335865 m!1541701))

(assert (=> bs!335865 m!1541701))

(declare-fun m!1543779 () Bool)

(assert (=> bs!335865 m!1543779))

(declare-fun m!1543781 () Bool)

(assert (=> bs!335865 m!1543781))

(assert (=> b!1371371 d!391841))

(declare-fun d!391843 () Bool)

(declare-fun lt!455851 () Int)

(assert (=> d!391843 (= lt!455851 (size!11399 (list!5350 lt!454972)))))

(assert (=> d!391843 (= lt!455851 (size!11400 (c!225513 lt!454972)))))

(assert (=> d!391843 (= (size!11392 lt!454972) lt!455851)))

(declare-fun bs!335866 () Bool)

(assert (= bs!335866 d!391843))

(assert (=> bs!335866 m!1540793))

(assert (=> bs!335866 m!1540793))

(assert (=> bs!335866 m!1541745))

(declare-fun m!1543783 () Bool)

(assert (=> bs!335866 m!1543783))

(assert (=> b!1371371 d!391843))

(declare-fun d!391845 () Bool)

(declare-fun lt!455852 () Int)

(assert (=> d!391845 (>= lt!455852 0)))

(declare-fun e!877388 () Int)

(assert (=> d!391845 (= lt!455852 e!877388)))

(declare-fun c!225932 () Bool)

(assert (=> d!391845 (= c!225932 ((_ is Nil!13888) lt!455225))))

(assert (=> d!391845 (= (size!11399 lt!455225) lt!455852)))

(declare-fun b!1372685 () Bool)

(assert (=> b!1372685 (= e!877388 0)))

(declare-fun b!1372686 () Bool)

(assert (=> b!1372686 (= e!877388 (+ 1 (size!11399 (t!121483 lt!455225))))))

(assert (= (and d!391845 c!225932) b!1372685))

(assert (= (and d!391845 (not c!225932)) b!1372686))

(declare-fun m!1543785 () Bool)

(assert (=> b!1372686 m!1543785))

(assert (=> b!1371444 d!391845))

(declare-fun d!391847 () Bool)

(declare-fun lt!455853 () Int)

(assert (=> d!391847 (>= lt!455853 0)))

(declare-fun e!877389 () Int)

(assert (=> d!391847 (= lt!455853 e!877389)))

(declare-fun c!225933 () Bool)

(assert (=> d!391847 (= c!225933 ((_ is Nil!13888) lt!454961))))

(assert (=> d!391847 (= (size!11399 lt!454961) lt!455853)))

(declare-fun b!1372687 () Bool)

(assert (=> b!1372687 (= e!877389 0)))

(declare-fun b!1372688 () Bool)

(assert (=> b!1372688 (= e!877389 (+ 1 (size!11399 (t!121483 lt!454961))))))

(assert (= (and d!391847 c!225933) b!1372687))

(assert (= (and d!391847 (not c!225933)) b!1372688))

(declare-fun m!1543787 () Bool)

(assert (=> b!1372688 m!1543787))

(assert (=> b!1371444 d!391847))

(declare-fun d!391849 () Bool)

(declare-fun lt!455854 () Int)

(assert (=> d!391849 (>= lt!455854 0)))

(declare-fun e!877390 () Int)

(assert (=> d!391849 (= lt!455854 e!877390)))

(declare-fun c!225934 () Bool)

(assert (=> d!391849 (= c!225934 ((_ is Nil!13888) (Cons!13888 lt!454970 Nil!13888)))))

(assert (=> d!391849 (= (size!11399 (Cons!13888 lt!454970 Nil!13888)) lt!455854)))

(declare-fun b!1372689 () Bool)

(assert (=> b!1372689 (= e!877390 0)))

(declare-fun b!1372690 () Bool)

(assert (=> b!1372690 (= e!877390 (+ 1 (size!11399 (t!121483 (Cons!13888 lt!454970 Nil!13888)))))))

(assert (= (and d!391849 c!225934) b!1372689))

(assert (= (and d!391849 (not c!225934)) b!1372690))

(declare-fun m!1543789 () Bool)

(assert (=> b!1372690 m!1543789))

(assert (=> b!1371444 d!391849))

(declare-fun b!1372692 () Bool)

(declare-fun e!877391 () List!13954)

(assert (=> b!1372692 (= e!877391 (Cons!13888 (h!19289 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))) (++!3590 (t!121483 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))) (_2!7631 (get!4347 lt!455162)))))))

(declare-fun d!391851 () Bool)

(declare-fun e!877392 () Bool)

(assert (=> d!391851 e!877392))

(declare-fun res!618446 () Bool)

(assert (=> d!391851 (=> (not res!618446) (not e!877392))))

(declare-fun lt!455855 () List!13954)

(assert (=> d!391851 (= res!618446 (= (content!2031 lt!455855) ((_ map or) (content!2031 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))) (content!2031 (_2!7631 (get!4347 lt!455162))))))))

(assert (=> d!391851 (= lt!455855 e!877391)))

(declare-fun c!225935 () Bool)

(assert (=> d!391851 (= c!225935 ((_ is Nil!13888) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))))))

(assert (=> d!391851 (= (++!3590 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162)))) (_2!7631 (get!4347 lt!455162))) lt!455855)))

(declare-fun b!1372693 () Bool)

(declare-fun res!618447 () Bool)

(assert (=> b!1372693 (=> (not res!618447) (not e!877392))))

(assert (=> b!1372693 (= res!618447 (= (size!11399 lt!455855) (+ (size!11399 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))) (size!11399 (_2!7631 (get!4347 lt!455162))))))))

(declare-fun b!1372691 () Bool)

(assert (=> b!1372691 (= e!877391 (_2!7631 (get!4347 lt!455162)))))

(declare-fun b!1372694 () Bool)

(assert (=> b!1372694 (= e!877392 (or (not (= (_2!7631 (get!4347 lt!455162)) Nil!13888)) (= lt!455855 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162)))))))))

(assert (= (and d!391851 c!225935) b!1372691))

(assert (= (and d!391851 (not c!225935)) b!1372692))

(assert (= (and d!391851 res!618446) b!1372693))

(assert (= (and b!1372693 res!618447) b!1372694))

(declare-fun m!1543791 () Bool)

(assert (=> b!1372692 m!1543791))

(declare-fun m!1543793 () Bool)

(assert (=> d!391851 m!1543793))

(assert (=> d!391851 m!1541531))

(declare-fun m!1543795 () Bool)

(assert (=> d!391851 m!1543795))

(declare-fun m!1543797 () Bool)

(assert (=> d!391851 m!1543797))

(declare-fun m!1543799 () Bool)

(assert (=> b!1372693 m!1543799))

(assert (=> b!1372693 m!1541531))

(declare-fun m!1543801 () Bool)

(assert (=> b!1372693 m!1543801))

(assert (=> b!1372693 m!1541553))

(assert (=> b!1371260 d!391851))

(declare-fun d!391853 () Bool)

(assert (=> d!391853 (= (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162)))) (list!5355 (c!225513 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))))))

(declare-fun bs!335867 () Bool)

(assert (= bs!335867 d!391853))

(declare-fun m!1543803 () Bool)

(assert (=> bs!335867 m!1543803))

(assert (=> b!1371260 d!391853))

(declare-fun d!391855 () Bool)

(declare-fun lt!455856 () BalanceConc!9084)

(assert (=> d!391855 (= (list!5350 lt!455856) (originalCharacters!3267 (_1!7631 (get!4347 lt!455162))))))

(assert (=> d!391855 (= lt!455856 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162))))) (value!78175 (_1!7631 (get!4347 lt!455162)))))))

(assert (=> d!391855 (= (charsOf!1377 (_1!7631 (get!4347 lt!455162))) lt!455856)))

(declare-fun b_lambda!42075 () Bool)

(assert (=> (not b_lambda!42075) (not d!391855)))

(declare-fun t!121594 () Bool)

(declare-fun tb!72285 () Bool)

(assert (=> (and b!1370765 (= (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))) t!121594) tb!72285))

(declare-fun b!1372695 () Bool)

(declare-fun e!877393 () Bool)

(declare-fun tp!394023 () Bool)

(assert (=> b!1372695 (= e!877393 (and (inv!18248 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162))))) (value!78175 (_1!7631 (get!4347 lt!455162)))))) tp!394023))))

(declare-fun result!87774 () Bool)

(assert (=> tb!72285 (= result!87774 (and (inv!18249 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162))))) (value!78175 (_1!7631 (get!4347 lt!455162))))) e!877393))))

(assert (= tb!72285 b!1372695))

(declare-fun m!1543805 () Bool)

(assert (=> b!1372695 m!1543805))

(declare-fun m!1543807 () Bool)

(assert (=> tb!72285 m!1543807))

(assert (=> d!391855 t!121594))

(declare-fun b_and!91987 () Bool)

(assert (= b_and!91975 (and (=> t!121594 result!87774) b_and!91987)))

(declare-fun t!121596 () Bool)

(declare-fun tb!72287 () Bool)

(assert (=> (and b!1370761 (= (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))) t!121596) tb!72287))

(declare-fun result!87776 () Bool)

(assert (= result!87776 result!87774))

(assert (=> d!391855 t!121596))

(declare-fun b_and!91989 () Bool)

(assert (= b_and!91977 (and (=> t!121596 result!87776) b_and!91989)))

(declare-fun tb!72289 () Bool)

(declare-fun t!121598 () Bool)

(assert (=> (and b!1370756 (= (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))) t!121598) tb!72289))

(declare-fun result!87778 () Bool)

(assert (= result!87778 result!87774))

(assert (=> d!391855 t!121598))

(declare-fun b_and!91991 () Bool)

(assert (= b_and!91979 (and (=> t!121598 result!87778) b_and!91991)))

(declare-fun tb!72291 () Bool)

(declare-fun t!121600 () Bool)

(assert (=> (and b!1371483 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))) t!121600) tb!72291))

(declare-fun result!87780 () Bool)

(assert (= result!87780 result!87774))

(assert (=> d!391855 t!121600))

(declare-fun b_and!91993 () Bool)

(assert (= b_and!91981 (and (=> t!121600 result!87780) b_and!91993)))

(declare-fun m!1543809 () Bool)

(assert (=> d!391855 m!1543809))

(declare-fun m!1543811 () Bool)

(assert (=> d!391855 m!1543811))

(assert (=> b!1371260 d!391855))

(declare-fun d!391857 () Bool)

(assert (=> d!391857 (= (get!4347 lt!455162) (v!21471 lt!455162))))

(assert (=> b!1371260 d!391857))

(declare-fun d!391859 () Bool)

(declare-fun res!618448 () Bool)

(declare-fun e!877394 () Bool)

(assert (=> d!391859 (=> (not res!618448) (not e!877394))))

(assert (=> d!391859 (= res!618448 (validRegex!1619 (regex!2405 (rule!4160 t2!34))))))

(assert (=> d!391859 (= (ruleValid!592 thiss!19762 (rule!4160 t2!34)) e!877394)))

(declare-fun b!1372696 () Bool)

(declare-fun res!618449 () Bool)

(assert (=> b!1372696 (=> (not res!618449) (not e!877394))))

(assert (=> b!1372696 (= res!618449 (not (nullable!1199 (regex!2405 (rule!4160 t2!34)))))))

(declare-fun b!1372697 () Bool)

(assert (=> b!1372697 (= e!877394 (not (= (tag!2667 (rule!4160 t2!34)) (String!16712 ""))))))

(assert (= (and d!391859 res!618448) b!1372696))

(assert (= (and b!1372696 res!618449) b!1372697))

(declare-fun m!1543813 () Bool)

(assert (=> d!391859 m!1543813))

(declare-fun m!1543815 () Bool)

(assert (=> b!1372696 m!1543815))

(assert (=> bs!335674 d!391859))

(declare-fun bs!335868 () Bool)

(declare-fun d!391861 () Bool)

(assert (= bs!335868 (and d!391861 d!391749)))

(declare-fun lambda!58284 () Int)

(assert (=> bs!335868 (= (and (= (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (toChars!3531 (transformation!2405 (rule!4160 t2!34)))) (= (toValue!3672 (transformation!2405 (rule!4160 t1!34))) (toValue!3672 (transformation!2405 (rule!4160 t2!34))))) (= lambda!58284 lambda!58276))))

(assert (=> d!391861 true))

(assert (=> d!391861 (< (dynLambda!6321 order!8483 (toChars!3531 (transformation!2405 (rule!4160 t1!34)))) (dynLambda!6322 order!8485 lambda!58284))))

(assert (=> d!391861 true))

(assert (=> d!391861 (< (dynLambda!6323 order!8487 (toValue!3672 (transformation!2405 (rule!4160 t1!34)))) (dynLambda!6322 order!8485 lambda!58284))))

(assert (=> d!391861 (= (semiInverseModEq!928 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (toValue!3672 (transformation!2405 (rule!4160 t1!34)))) (Forall!539 lambda!58284))))

(declare-fun bs!335869 () Bool)

(assert (= bs!335869 d!391861))

(declare-fun m!1543817 () Bool)

(assert (=> bs!335869 m!1543817))

(assert (=> d!391183 d!391861))

(assert (=> d!391139 d!391117))

(declare-fun bs!335870 () Bool)

(declare-fun d!391863 () Bool)

(assert (= bs!335870 (and d!391863 b!1370759)))

(declare-fun lambda!58285 () Int)

(assert (=> bs!335870 (not (= lambda!58285 lambda!58185))))

(declare-fun bs!335871 () Bool)

(assert (= bs!335871 (and d!391863 d!391143)))

(assert (=> bs!335871 (= (= lambda!58227 lambda!58185) (= lambda!58285 lambda!58228))))

(declare-fun bs!335872 () Bool)

(assert (= bs!335872 (and d!391863 d!391137)))

(assert (=> bs!335872 (= (= lambda!58227 lambda!58185) (= lambda!58285 lambda!58221))))

(declare-fun bs!335873 () Bool)

(assert (= bs!335873 (and d!391863 d!391139)))

(assert (=> bs!335873 (not (= lambda!58285 lambda!58226))))

(assert (=> bs!335873 (not (= lambda!58285 lambda!58227))))

(assert (=> d!391863 true))

(assert (=> d!391863 (< (dynLambda!6313 order!8473 lambda!58227) (dynLambda!6313 order!8473 lambda!58285))))

(assert (=> d!391863 (= (exists!468 lt!454962 lambda!58227) (not (forall!3398 lt!454962 lambda!58285)))))

(declare-fun bs!335874 () Bool)

(assert (= bs!335874 d!391863))

(declare-fun m!1543819 () Bool)

(assert (=> bs!335874 m!1543819))

(assert (=> d!391139 d!391863))

(declare-fun bs!335875 () Bool)

(declare-fun d!391865 () Bool)

(assert (= bs!335875 (and d!391865 b!1370759)))

(declare-fun lambda!58288 () Int)

(assert (=> bs!335875 (= lambda!58288 lambda!58185)))

(declare-fun bs!335876 () Bool)

(assert (= bs!335876 (and d!391865 d!391143)))

(assert (=> bs!335876 (not (= lambda!58288 lambda!58228))))

(declare-fun bs!335877 () Bool)

(assert (= bs!335877 (and d!391865 d!391863)))

(assert (=> bs!335877 (not (= lambda!58288 lambda!58285))))

(declare-fun bs!335878 () Bool)

(assert (= bs!335878 (and d!391865 d!391137)))

(assert (=> bs!335878 (not (= lambda!58288 lambda!58221))))

(declare-fun bs!335879 () Bool)

(assert (= bs!335879 (and d!391865 d!391139)))

(assert (=> bs!335879 (not (= lambda!58288 lambda!58226))))

(assert (=> bs!335879 (= lambda!58288 lambda!58227)))

(assert (=> d!391865 true))

(assert (=> d!391865 (= (matchR!1712 lt!454967 lt!454960) (exists!468 lt!454962 lambda!58288))))

(assert (=> d!391865 true))

(declare-fun _$85!155 () Unit!20107)

(assert (=> d!391865 (= (choose!8442 lt!454967 lt!454962 lt!454960) _$85!155)))

(declare-fun bs!335880 () Bool)

(assert (= bs!335880 d!391865))

(assert (=> bs!335880 m!1540847))

(declare-fun m!1543821 () Bool)

(assert (=> bs!335880 m!1543821))

(assert (=> d!391139 d!391865))

(declare-fun d!391867 () Bool)

(declare-fun res!618456 () Bool)

(declare-fun e!877401 () Bool)

(assert (=> d!391867 (=> res!618456 e!877401)))

(assert (=> d!391867 (= res!618456 ((_ is Nil!13892) lt!454962))))

(assert (=> d!391867 (= (forall!3398 lt!454962 lambda!58226) e!877401)))

(declare-fun b!1372704 () Bool)

(declare-fun e!877402 () Bool)

(assert (=> b!1372704 (= e!877401 e!877402)))

(declare-fun res!618457 () Bool)

(assert (=> b!1372704 (=> (not res!618457) (not e!877402))))

(assert (=> b!1372704 (= res!618457 (dynLambda!6316 lambda!58226 (h!19293 lt!454962)))))

(declare-fun b!1372705 () Bool)

(assert (=> b!1372705 (= e!877402 (forall!3398 (t!121487 lt!454962) lambda!58226))))

(assert (= (and d!391867 (not res!618456)) b!1372704))

(assert (= (and b!1372704 res!618457) b!1372705))

(declare-fun b_lambda!42077 () Bool)

(assert (=> (not b_lambda!42077) (not b!1372704)))

(declare-fun m!1543823 () Bool)

(assert (=> b!1372704 m!1543823))

(declare-fun m!1543825 () Bool)

(assert (=> b!1372705 m!1543825))

(assert (=> d!391139 d!391867))

(declare-fun b!1372716 () Bool)

(declare-fun e!877408 () List!13957)

(declare-fun list!5359 (IArray!9151) List!13957)

(assert (=> b!1372716 (= e!877408 (list!5359 (xs!7300 (c!225514 (_1!7630 lt!454968)))))))

(declare-fun b!1372715 () Bool)

(declare-fun e!877407 () List!13957)

(assert (=> b!1372715 (= e!877407 e!877408)))

(declare-fun c!225941 () Bool)

(assert (=> b!1372715 (= c!225941 ((_ is Leaf!6972) (c!225514 (_1!7630 lt!454968))))))

(declare-fun b!1372714 () Bool)

(assert (=> b!1372714 (= e!877407 Nil!13891)))

(declare-fun b!1372717 () Bool)

(assert (=> b!1372717 (= e!877408 (++!3594 (list!5354 (left!11885 (c!225514 (_1!7630 lt!454968)))) (list!5354 (right!12215 (c!225514 (_1!7630 lt!454968))))))))

(declare-fun d!391869 () Bool)

(declare-fun c!225940 () Bool)

(assert (=> d!391869 (= c!225940 ((_ is Empty!4573) (c!225514 (_1!7630 lt!454968))))))

(assert (=> d!391869 (= (list!5354 (c!225514 (_1!7630 lt!454968))) e!877407)))

(assert (= (and d!391869 c!225940) b!1372714))

(assert (= (and d!391869 (not c!225940)) b!1372715))

(assert (= (and b!1372715 c!225941) b!1372716))

(assert (= (and b!1372715 (not c!225941)) b!1372717))

(declare-fun m!1543827 () Bool)

(assert (=> b!1372716 m!1543827))

(declare-fun m!1543829 () Bool)

(assert (=> b!1372717 m!1543829))

(declare-fun m!1543831 () Bool)

(assert (=> b!1372717 m!1543831))

(assert (=> b!1372717 m!1543829))

(assert (=> b!1372717 m!1543831))

(declare-fun m!1543833 () Bool)

(assert (=> b!1372717 m!1543833))

(assert (=> d!391045 d!391869))

(declare-fun d!391871 () Bool)

(declare-fun lt!455857 () Int)

(assert (=> d!391871 (>= lt!455857 0)))

(declare-fun e!877409 () Int)

(assert (=> d!391871 (= lt!455857 e!877409)))

(declare-fun c!225942 () Bool)

(assert (=> d!391871 (= c!225942 ((_ is Nil!13888) (_2!7629 lt!455203)))))

(assert (=> d!391871 (= (size!11399 (_2!7629 lt!455203)) lt!455857)))

(declare-fun b!1372718 () Bool)

(assert (=> b!1372718 (= e!877409 0)))

(declare-fun b!1372719 () Bool)

(assert (=> b!1372719 (= e!877409 (+ 1 (size!11399 (t!121483 (_2!7629 lt!455203)))))))

(assert (= (and d!391871 c!225942) b!1372718))

(assert (= (and d!391871 (not c!225942)) b!1372719))

(declare-fun m!1543835 () Bool)

(assert (=> b!1372719 m!1543835))

(assert (=> b!1371389 d!391871))

(declare-fun d!391873 () Bool)

(declare-fun lt!455858 () Int)

(assert (=> d!391873 (>= lt!455858 0)))

(declare-fun e!877410 () Int)

(assert (=> d!391873 (= lt!455858 e!877410)))

(declare-fun c!225943 () Bool)

(assert (=> d!391873 (= c!225943 ((_ is Nil!13888) (list!5350 lt!454972)))))

(assert (=> d!391873 (= (size!11399 (list!5350 lt!454972)) lt!455858)))

(declare-fun b!1372720 () Bool)

(assert (=> b!1372720 (= e!877410 0)))

(declare-fun b!1372721 () Bool)

(assert (=> b!1372721 (= e!877410 (+ 1 (size!11399 (t!121483 (list!5350 lt!454972)))))))

(assert (= (and d!391873 c!225943) b!1372720))

(assert (= (and d!391873 (not c!225943)) b!1372721))

(declare-fun m!1543837 () Bool)

(assert (=> b!1372721 m!1543837))

(assert (=> b!1371389 d!391873))

(declare-fun b!1372724 () Bool)

(declare-fun e!877412 () List!13957)

(assert (=> b!1372724 (= e!877412 (list!5359 (xs!7300 (c!225514 (_1!7630 lt!454965)))))))

(declare-fun b!1372723 () Bool)

(declare-fun e!877411 () List!13957)

(assert (=> b!1372723 (= e!877411 e!877412)))

(declare-fun c!225945 () Bool)

(assert (=> b!1372723 (= c!225945 ((_ is Leaf!6972) (c!225514 (_1!7630 lt!454965))))))

(declare-fun b!1372722 () Bool)

(assert (=> b!1372722 (= e!877411 Nil!13891)))

(declare-fun b!1372725 () Bool)

(assert (=> b!1372725 (= e!877412 (++!3594 (list!5354 (left!11885 (c!225514 (_1!7630 lt!454965)))) (list!5354 (right!12215 (c!225514 (_1!7630 lt!454965))))))))

(declare-fun d!391875 () Bool)

(declare-fun c!225944 () Bool)

(assert (=> d!391875 (= c!225944 ((_ is Empty!4573) (c!225514 (_1!7630 lt!454965))))))

(assert (=> d!391875 (= (list!5354 (c!225514 (_1!7630 lt!454965))) e!877411)))

(assert (= (and d!391875 c!225944) b!1372722))

(assert (= (and d!391875 (not c!225944)) b!1372723))

(assert (= (and b!1372723 c!225945) b!1372724))

(assert (= (and b!1372723 (not c!225945)) b!1372725))

(declare-fun m!1543839 () Bool)

(assert (=> b!1372724 m!1543839))

(declare-fun m!1543841 () Bool)

(assert (=> b!1372725 m!1543841))

(declare-fun m!1543843 () Bool)

(assert (=> b!1372725 m!1543843))

(assert (=> b!1372725 m!1543841))

(assert (=> b!1372725 m!1543843))

(declare-fun m!1543845 () Bool)

(assert (=> b!1372725 m!1543845))

(assert (=> d!391129 d!391875))

(declare-fun lt!455860 () Regex!3719)

(declare-fun b!1372726 () Bool)

(declare-fun e!877415 () Bool)

(assert (=> b!1372726 (= e!877415 (contains!2601 (t!121487 (map!3068 rules!2550 lambda!58184)) lt!455860))))

(declare-fun b!1372727 () Bool)

(declare-fun e!877414 () Bool)

(assert (=> b!1372727 (= e!877414 (dynLambda!6316 lambda!58185 (h!19293 (t!121487 (map!3068 rules!2550 lambda!58184)))))))

(declare-fun b!1372728 () Bool)

(declare-fun lt!455859 () Unit!20107)

(declare-fun Unit!20121 () Unit!20107)

(assert (=> b!1372728 (= lt!455859 Unit!20121)))

(assert (=> b!1372728 false))

(declare-fun e!877416 () Regex!3719)

(assert (=> b!1372728 (= e!877416 (head!2471 (t!121487 (map!3068 rules!2550 lambda!58184))))))

(declare-fun d!391877 () Bool)

(assert (=> d!391877 e!877415))

(declare-fun res!618459 () Bool)

(assert (=> d!391877 (=> (not res!618459) (not e!877415))))

(assert (=> d!391877 (= res!618459 (dynLambda!6316 lambda!58185 lt!455860))))

(declare-fun e!877413 () Regex!3719)

(assert (=> d!391877 (= lt!455860 e!877413)))

(declare-fun c!225947 () Bool)

(assert (=> d!391877 (= c!225947 e!877414)))

(declare-fun res!618458 () Bool)

(assert (=> d!391877 (=> (not res!618458) (not e!877414))))

(assert (=> d!391877 (= res!618458 ((_ is Cons!13892) (t!121487 (map!3068 rules!2550 lambda!58184))))))

(assert (=> d!391877 (exists!468 (t!121487 (map!3068 rules!2550 lambda!58184)) lambda!58185)))

(assert (=> d!391877 (= (getWitness!356 (t!121487 (map!3068 rules!2550 lambda!58184)) lambda!58185) lt!455860)))

(declare-fun b!1372729 () Bool)

(assert (=> b!1372729 (= e!877413 e!877416)))

(declare-fun c!225946 () Bool)

(assert (=> b!1372729 (= c!225946 ((_ is Cons!13892) (t!121487 (map!3068 rules!2550 lambda!58184))))))

(declare-fun b!1372730 () Bool)

(assert (=> b!1372730 (= e!877413 (h!19293 (t!121487 (map!3068 rules!2550 lambda!58184))))))

(declare-fun b!1372731 () Bool)

(assert (=> b!1372731 (= e!877416 (getWitness!356 (t!121487 (t!121487 (map!3068 rules!2550 lambda!58184))) lambda!58185))))

(assert (= (and d!391877 res!618458) b!1372727))

(assert (= (and d!391877 c!225947) b!1372730))

(assert (= (and d!391877 (not c!225947)) b!1372729))

(assert (= (and b!1372729 c!225946) b!1372731))

(assert (= (and b!1372729 (not c!225946)) b!1372728))

(assert (= (and d!391877 res!618459) b!1372726))

(declare-fun b_lambda!42079 () Bool)

(assert (=> (not b_lambda!42079) (not b!1372727)))

(declare-fun b_lambda!42081 () Bool)

(assert (=> (not b_lambda!42081) (not d!391877)))

(declare-fun m!1543847 () Bool)

(assert (=> d!391877 m!1543847))

(declare-fun m!1543849 () Bool)

(assert (=> d!391877 m!1543849))

(declare-fun m!1543851 () Bool)

(assert (=> b!1372727 m!1543851))

(declare-fun m!1543853 () Bool)

(assert (=> b!1372726 m!1543853))

(declare-fun m!1543855 () Bool)

(assert (=> b!1372728 m!1543855))

(declare-fun m!1543857 () Bool)

(assert (=> b!1372731 m!1543857))

(assert (=> b!1371441 d!391877))

(declare-fun d!391879 () Bool)

(declare-fun charsToBigInt!0 (List!13955 Int) Int)

(assert (=> d!391879 (= (inv!15 (value!78175 t1!34)) (= (charsToBigInt!0 (text!17914 (value!78175 t1!34)) 0) (value!78170 (value!78175 t1!34))))))

(declare-fun bs!335881 () Bool)

(assert (= bs!335881 d!391879))

(declare-fun m!1543859 () Bool)

(assert (=> bs!335881 m!1543859))

(assert (=> b!1371275 d!391879))

(declare-fun d!391881 () Bool)

(assert (=> d!391881 (= (head!2469 lt!454960) (h!19289 lt!454960))))

(assert (=> b!1371333 d!391881))

(assert (=> b!1371325 d!391071))

(declare-fun d!391883 () Bool)

(declare-fun lt!455863 () Int)

(assert (=> d!391883 (>= lt!455863 0)))

(declare-fun e!877419 () Int)

(assert (=> d!391883 (= lt!455863 e!877419)))

(declare-fun c!225950 () Bool)

(assert (=> d!391883 (= c!225950 ((_ is Nil!13891) (_1!7629 lt!455203)))))

(assert (=> d!391883 (= (size!11402 (_1!7629 lt!455203)) lt!455863)))

(declare-fun b!1372736 () Bool)

(assert (=> b!1372736 (= e!877419 0)))

(declare-fun b!1372737 () Bool)

(assert (=> b!1372737 (= e!877419 (+ 1 (size!11402 (t!121486 (_1!7629 lt!455203)))))))

(assert (= (and d!391883 c!225950) b!1372736))

(assert (= (and d!391883 (not c!225950)) b!1372737))

(declare-fun m!1543861 () Bool)

(assert (=> b!1372737 m!1543861))

(assert (=> d!391147 d!391883))

(declare-fun b!1372738 () Bool)

(declare-fun e!877420 () Option!2668)

(declare-fun call!92177 () Option!2668)

(assert (=> b!1372738 (= e!877420 call!92177)))

(declare-fun b!1372739 () Bool)

(declare-fun res!618463 () Bool)

(declare-fun e!877422 () Bool)

(assert (=> b!1372739 (=> (not res!618463) (not e!877422))))

(declare-fun lt!455868 () Option!2668)

(assert (=> b!1372739 (= res!618463 (matchR!1712 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455868)))) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455868))))))))

(declare-fun b!1372740 () Bool)

(declare-fun e!877421 () Bool)

(assert (=> b!1372740 (= e!877421 e!877422)))

(declare-fun res!618465 () Bool)

(assert (=> b!1372740 (=> (not res!618465) (not e!877422))))

(assert (=> b!1372740 (= res!618465 (isDefined!2219 lt!455868))))

(declare-fun b!1372741 () Bool)

(declare-fun res!618460 () Bool)

(assert (=> b!1372741 (=> (not res!618460) (not e!877422))))

(assert (=> b!1372741 (= res!618460 (= (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455868)))) (originalCharacters!3267 (_1!7631 (get!4347 lt!455868)))))))

(declare-fun b!1372742 () Bool)

(assert (=> b!1372742 (= e!877422 (contains!2599 rules!2550 (rule!4160 (_1!7631 (get!4347 lt!455868)))))))

(declare-fun b!1372743 () Bool)

(declare-fun res!618461 () Bool)

(assert (=> b!1372743 (=> (not res!618461) (not e!877422))))

(assert (=> b!1372743 (= res!618461 (< (size!11399 (_2!7631 (get!4347 lt!455868))) (size!11399 (list!5350 lt!454972))))))

(declare-fun b!1372744 () Bool)

(declare-fun res!618464 () Bool)

(assert (=> b!1372744 (=> (not res!618464) (not e!877422))))

(assert (=> b!1372744 (= res!618464 (= (++!3590 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455868)))) (_2!7631 (get!4347 lt!455868))) (list!5350 lt!454972)))))

(declare-fun bm!92172 () Bool)

(assert (=> bm!92172 (= call!92177 (maxPrefixOneRule!617 thiss!19762 (h!19291 rules!2550) (list!5350 lt!454972)))))

(declare-fun d!391885 () Bool)

(assert (=> d!391885 e!877421))

(declare-fun res!618462 () Bool)

(assert (=> d!391885 (=> res!618462 e!877421)))

(assert (=> d!391885 (= res!618462 (isEmpty!8380 lt!455868))))

(assert (=> d!391885 (= lt!455868 e!877420)))

(declare-fun c!225951 () Bool)

(assert (=> d!391885 (= c!225951 (and ((_ is Cons!13890) rules!2550) ((_ is Nil!13890) (t!121485 rules!2550))))))

(declare-fun lt!455864 () Unit!20107)

(declare-fun lt!455865 () Unit!20107)

(assert (=> d!391885 (= lt!455864 lt!455865)))

(assert (=> d!391885 (isPrefix!1129 (list!5350 lt!454972) (list!5350 lt!454972))))

(assert (=> d!391885 (= lt!455865 (lemmaIsPrefixRefl!791 (list!5350 lt!454972) (list!5350 lt!454972)))))

(assert (=> d!391885 (rulesValidInductive!770 thiss!19762 rules!2550)))

(assert (=> d!391885 (= (maxPrefix!1082 thiss!19762 rules!2550 (list!5350 lt!454972)) lt!455868)))

(declare-fun b!1372745 () Bool)

(declare-fun res!618466 () Bool)

(assert (=> b!1372745 (=> (not res!618466) (not e!877422))))

(assert (=> b!1372745 (= res!618466 (= (value!78175 (_1!7631 (get!4347 lt!455868))) (apply!3415 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455868)))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455868)))))))))

(declare-fun b!1372746 () Bool)

(declare-fun lt!455867 () Option!2668)

(declare-fun lt!455866 () Option!2668)

(assert (=> b!1372746 (= e!877420 (ite (and ((_ is None!2667) lt!455867) ((_ is None!2667) lt!455866)) None!2667 (ite ((_ is None!2667) lt!455866) lt!455867 (ite ((_ is None!2667) lt!455867) lt!455866 (ite (>= (size!11391 (_1!7631 (v!21471 lt!455867))) (size!11391 (_1!7631 (v!21471 lt!455866)))) lt!455867 lt!455866)))))))

(assert (=> b!1372746 (= lt!455867 call!92177)))

(assert (=> b!1372746 (= lt!455866 (maxPrefix!1082 thiss!19762 (t!121485 rules!2550) (list!5350 lt!454972)))))

(assert (= (and d!391885 c!225951) b!1372738))

(assert (= (and d!391885 (not c!225951)) b!1372746))

(assert (= (or b!1372738 b!1372746) bm!92172))

(assert (= (and d!391885 (not res!618462)) b!1372740))

(assert (= (and b!1372740 res!618465) b!1372741))

(assert (= (and b!1372741 res!618460) b!1372743))

(assert (= (and b!1372743 res!618461) b!1372744))

(assert (= (and b!1372744 res!618464) b!1372745))

(assert (= (and b!1372745 res!618466) b!1372739))

(assert (= (and b!1372739 res!618463) b!1372742))

(declare-fun m!1543863 () Bool)

(assert (=> b!1372745 m!1543863))

(declare-fun m!1543865 () Bool)

(assert (=> b!1372745 m!1543865))

(assert (=> b!1372745 m!1543865))

(declare-fun m!1543867 () Bool)

(assert (=> b!1372745 m!1543867))

(assert (=> b!1372741 m!1543863))

(declare-fun m!1543869 () Bool)

(assert (=> b!1372741 m!1543869))

(assert (=> b!1372741 m!1543869))

(declare-fun m!1543871 () Bool)

(assert (=> b!1372741 m!1543871))

(assert (=> b!1372746 m!1540793))

(declare-fun m!1543873 () Bool)

(assert (=> b!1372746 m!1543873))

(assert (=> b!1372739 m!1543863))

(assert (=> b!1372739 m!1543869))

(assert (=> b!1372739 m!1543869))

(assert (=> b!1372739 m!1543871))

(assert (=> b!1372739 m!1543871))

(declare-fun m!1543875 () Bool)

(assert (=> b!1372739 m!1543875))

(declare-fun m!1543877 () Bool)

(assert (=> d!391885 m!1543877))

(assert (=> d!391885 m!1540793))

(assert (=> d!391885 m!1540793))

(declare-fun m!1543879 () Bool)

(assert (=> d!391885 m!1543879))

(assert (=> d!391885 m!1540793))

(assert (=> d!391885 m!1540793))

(declare-fun m!1543881 () Bool)

(assert (=> d!391885 m!1543881))

(assert (=> d!391885 m!1541543))

(assert (=> b!1372744 m!1543863))

(assert (=> b!1372744 m!1543869))

(assert (=> b!1372744 m!1543869))

(assert (=> b!1372744 m!1543871))

(assert (=> b!1372744 m!1543871))

(declare-fun m!1543883 () Bool)

(assert (=> b!1372744 m!1543883))

(declare-fun m!1543885 () Bool)

(assert (=> b!1372740 m!1543885))

(assert (=> bm!92172 m!1540793))

(declare-fun m!1543887 () Bool)

(assert (=> bm!92172 m!1543887))

(assert (=> b!1372742 m!1543863))

(declare-fun m!1543889 () Bool)

(assert (=> b!1372742 m!1543889))

(assert (=> b!1372743 m!1543863))

(declare-fun m!1543891 () Bool)

(assert (=> b!1372743 m!1543891))

(assert (=> b!1372743 m!1540793))

(assert (=> b!1372743 m!1541745))

(assert (=> d!391147 d!391885))

(declare-fun b!1372747 () Bool)

(declare-fun res!618474 () Bool)

(declare-fun e!877424 () Bool)

(assert (=> b!1372747 (=> res!618474 e!877424)))

(assert (=> b!1372747 (= res!618474 (not ((_ is ElementMatch!3719) (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))))))

(declare-fun e!877425 () Bool)

(assert (=> b!1372747 (= e!877425 e!877424)))

(declare-fun b!1372748 () Bool)

(declare-fun lt!455869 () Bool)

(assert (=> b!1372748 (= e!877425 (not lt!455869))))

(declare-fun b!1372749 () Bool)

(declare-fun res!618472 () Bool)

(declare-fun e!877429 () Bool)

(assert (=> b!1372749 (=> (not res!618472) (not e!877429))))

(declare-fun call!92178 () Bool)

(assert (=> b!1372749 (= res!618472 (not call!92178))))

(declare-fun d!391887 () Bool)

(declare-fun e!877426 () Bool)

(assert (=> d!391887 e!877426))

(declare-fun c!225953 () Bool)

(assert (=> d!391887 (= c!225953 ((_ is EmptyExpr!3719) (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455162))))))))

(declare-fun e!877427 () Bool)

(assert (=> d!391887 (= lt!455869 e!877427)))

(declare-fun c!225952 () Bool)

(assert (=> d!391887 (= c!225952 (isEmpty!8376 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))))))

(assert (=> d!391887 (validRegex!1619 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))))

(assert (=> d!391887 (= (matchR!1712 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))) lt!455869)))

(declare-fun bm!92173 () Bool)

(assert (=> bm!92173 (= call!92178 (isEmpty!8376 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))))))

(declare-fun b!1372750 () Bool)

(assert (=> b!1372750 (= e!877426 e!877425)))

(declare-fun c!225954 () Bool)

(assert (=> b!1372750 (= c!225954 ((_ is EmptyLang!3719) (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455162))))))))

(declare-fun b!1372751 () Bool)

(declare-fun e!877423 () Bool)

(assert (=> b!1372751 (= e!877424 e!877423)))

(declare-fun res!618470 () Bool)

(assert (=> b!1372751 (=> (not res!618470) (not e!877423))))

(assert (=> b!1372751 (= res!618470 (not lt!455869))))

(declare-fun b!1372752 () Bool)

(declare-fun e!877428 () Bool)

(assert (=> b!1372752 (= e!877428 (not (= (head!2469 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))) (c!225512 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455162))))))))))

(declare-fun b!1372753 () Bool)

(assert (=> b!1372753 (= e!877426 (= lt!455869 call!92178))))

(declare-fun b!1372754 () Bool)

(assert (=> b!1372754 (= e!877423 e!877428)))

(declare-fun res!618467 () Bool)

(assert (=> b!1372754 (=> res!618467 e!877428)))

(assert (=> b!1372754 (= res!618467 call!92178)))

(declare-fun b!1372755 () Bool)

(assert (=> b!1372755 (= e!877427 (nullable!1199 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455162))))))))

(declare-fun b!1372756 () Bool)

(assert (=> b!1372756 (= e!877429 (= (head!2469 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))) (c!225512 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))))))

(declare-fun b!1372757 () Bool)

(declare-fun res!618469 () Bool)

(assert (=> b!1372757 (=> res!618469 e!877428)))

(assert (=> b!1372757 (= res!618469 (not (isEmpty!8376 (tail!1982 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162))))))))))

(declare-fun b!1372758 () Bool)

(declare-fun res!618473 () Bool)

(assert (=> b!1372758 (=> res!618473 e!877424)))

(assert (=> b!1372758 (= res!618473 e!877429)))

(declare-fun res!618471 () Bool)

(assert (=> b!1372758 (=> (not res!618471) (not e!877429))))

(assert (=> b!1372758 (= res!618471 lt!455869)))

(declare-fun b!1372759 () Bool)

(assert (=> b!1372759 (= e!877427 (matchR!1712 (derivativeStep!957 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))) (head!2469 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162)))))) (tail!1982 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162)))))))))

(declare-fun b!1372760 () Bool)

(declare-fun res!618468 () Bool)

(assert (=> b!1372760 (=> (not res!618468) (not e!877429))))

(assert (=> b!1372760 (= res!618468 (isEmpty!8376 (tail!1982 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455162)))))))))

(assert (= (and d!391887 c!225952) b!1372755))

(assert (= (and d!391887 (not c!225952)) b!1372759))

(assert (= (and d!391887 c!225953) b!1372753))

(assert (= (and d!391887 (not c!225953)) b!1372750))

(assert (= (and b!1372750 c!225954) b!1372748))

(assert (= (and b!1372750 (not c!225954)) b!1372747))

(assert (= (and b!1372747 (not res!618474)) b!1372758))

(assert (= (and b!1372758 res!618471) b!1372749))

(assert (= (and b!1372749 res!618472) b!1372760))

(assert (= (and b!1372760 res!618468) b!1372756))

(assert (= (and b!1372758 (not res!618473)) b!1372751))

(assert (= (and b!1372751 res!618470) b!1372754))

(assert (= (and b!1372754 (not res!618467)) b!1372757))

(assert (= (and b!1372757 (not res!618469)) b!1372752))

(assert (= (or b!1372753 b!1372749 b!1372754) bm!92173))

(declare-fun m!1543893 () Bool)

(assert (=> b!1372755 m!1543893))

(assert (=> bm!92173 m!1541531))

(declare-fun m!1543895 () Bool)

(assert (=> bm!92173 m!1543895))

(assert (=> d!391887 m!1541531))

(assert (=> d!391887 m!1543895))

(declare-fun m!1543897 () Bool)

(assert (=> d!391887 m!1543897))

(assert (=> b!1372759 m!1541531))

(declare-fun m!1543899 () Bool)

(assert (=> b!1372759 m!1543899))

(assert (=> b!1372759 m!1543899))

(declare-fun m!1543901 () Bool)

(assert (=> b!1372759 m!1543901))

(assert (=> b!1372759 m!1541531))

(declare-fun m!1543903 () Bool)

(assert (=> b!1372759 m!1543903))

(assert (=> b!1372759 m!1543901))

(assert (=> b!1372759 m!1543903))

(declare-fun m!1543905 () Bool)

(assert (=> b!1372759 m!1543905))

(assert (=> b!1372760 m!1541531))

(assert (=> b!1372760 m!1543903))

(assert (=> b!1372760 m!1543903))

(declare-fun m!1543907 () Bool)

(assert (=> b!1372760 m!1543907))

(assert (=> b!1372757 m!1541531))

(assert (=> b!1372757 m!1543903))

(assert (=> b!1372757 m!1543903))

(assert (=> b!1372757 m!1543907))

(assert (=> b!1372756 m!1541531))

(assert (=> b!1372756 m!1543899))

(assert (=> b!1372752 m!1541531))

(assert (=> b!1372752 m!1543899))

(assert (=> b!1371255 d!391887))

(assert (=> b!1371255 d!391857))

(assert (=> b!1371255 d!391853))

(assert (=> b!1371255 d!391855))

(declare-fun d!391889 () Bool)

(declare-fun lt!455872 () C!7728)

(assert (=> d!391889 (contains!2600 (list!5350 lt!454963) lt!455872)))

(declare-fun e!877435 () C!7728)

(assert (=> d!391889 (= lt!455872 e!877435)))

(declare-fun c!225957 () Bool)

(assert (=> d!391889 (= c!225957 (= 0 0))))

(declare-fun e!877434 () Bool)

(assert (=> d!391889 e!877434))

(declare-fun res!618477 () Bool)

(assert (=> d!391889 (=> (not res!618477) (not e!877434))))

(assert (=> d!391889 (= res!618477 (<= 0 0))))

(assert (=> d!391889 (= (apply!3412 (list!5350 lt!454963) 0) lt!455872)))

(declare-fun b!1372767 () Bool)

(assert (=> b!1372767 (= e!877434 (< 0 (size!11399 (list!5350 lt!454963))))))

(declare-fun b!1372768 () Bool)

(assert (=> b!1372768 (= e!877435 (head!2469 (list!5350 lt!454963)))))

(declare-fun b!1372769 () Bool)

(assert (=> b!1372769 (= e!877435 (apply!3412 (tail!1982 (list!5350 lt!454963)) (- 0 1)))))

(assert (= (and d!391889 res!618477) b!1372767))

(assert (= (and d!391889 c!225957) b!1372768))

(assert (= (and d!391889 (not c!225957)) b!1372769))

(assert (=> d!391889 m!1540885))

(declare-fun m!1543909 () Bool)

(assert (=> d!391889 m!1543909))

(assert (=> b!1372767 m!1540885))

(declare-fun m!1543911 () Bool)

(assert (=> b!1372767 m!1543911))

(assert (=> b!1372768 m!1540885))

(declare-fun m!1543913 () Bool)

(assert (=> b!1372768 m!1543913))

(assert (=> b!1372769 m!1540885))

(declare-fun m!1543915 () Bool)

(assert (=> b!1372769 m!1543915))

(assert (=> b!1372769 m!1543915))

(declare-fun m!1543917 () Bool)

(assert (=> b!1372769 m!1543917))

(assert (=> d!390991 d!391889))

(assert (=> d!390991 d!391175))

(declare-fun d!391891 () Bool)

(declare-fun lt!455878 () C!7728)

(assert (=> d!391891 (= lt!455878 (apply!3412 (list!5355 (c!225513 lt!454963)) 0))))

(declare-fun e!877445 () C!7728)

(assert (=> d!391891 (= lt!455878 e!877445)))

(declare-fun c!225965 () Bool)

(assert (=> d!391891 (= c!225965 ((_ is Leaf!6971) (c!225513 lt!454963)))))

(declare-fun e!877444 () Bool)

(assert (=> d!391891 e!877444))

(declare-fun res!618480 () Bool)

(assert (=> d!391891 (=> (not res!618480) (not e!877444))))

(assert (=> d!391891 (= res!618480 (<= 0 0))))

(assert (=> d!391891 (= (apply!3413 (c!225513 lt!454963) 0) lt!455878)))

(declare-fun b!1372784 () Bool)

(declare-fun e!877446 () C!7728)

(assert (=> b!1372784 (= e!877445 e!877446)))

(declare-fun lt!455877 () Bool)

(declare-fun appendIndex!169 (List!13954 List!13954 Int) Bool)

(assert (=> b!1372784 (= lt!455877 (appendIndex!169 (list!5355 (left!11884 (c!225513 lt!454963))) (list!5355 (right!12214 (c!225513 lt!454963))) 0))))

(declare-fun c!225964 () Bool)

(assert (=> b!1372784 (= c!225964 (< 0 (size!11400 (left!11884 (c!225513 lt!454963)))))))

(declare-fun b!1372785 () Bool)

(assert (=> b!1372785 (= e!877444 (< 0 (size!11400 (c!225513 lt!454963))))))

(declare-fun b!1372786 () Bool)

(declare-fun e!877447 () Int)

(assert (=> b!1372786 (= e!877447 0)))

(declare-fun b!1372787 () Bool)

(declare-fun call!92181 () C!7728)

(assert (=> b!1372787 (= e!877446 call!92181)))

(declare-fun b!1372788 () Bool)

(assert (=> b!1372788 (= e!877446 call!92181)))

(declare-fun b!1372789 () Bool)

(declare-fun apply!3420 (IArray!9149 Int) C!7728)

(assert (=> b!1372789 (= e!877445 (apply!3420 (xs!7299 (c!225513 lt!454963)) 0))))

(declare-fun b!1372790 () Bool)

(assert (=> b!1372790 (= e!877447 (- 0 (size!11400 (left!11884 (c!225513 lt!454963)))))))

(declare-fun bm!92176 () Bool)

(declare-fun c!225966 () Bool)

(assert (=> bm!92176 (= c!225966 c!225964)))

(assert (=> bm!92176 (= call!92181 (apply!3413 (ite c!225964 (left!11884 (c!225513 lt!454963)) (right!12214 (c!225513 lt!454963))) e!877447))))

(assert (= (and d!391891 res!618480) b!1372785))

(assert (= (and d!391891 c!225965) b!1372789))

(assert (= (and d!391891 (not c!225965)) b!1372784))

(assert (= (and b!1372784 c!225964) b!1372788))

(assert (= (and b!1372784 (not c!225964)) b!1372787))

(assert (= (or b!1372788 b!1372787) bm!92176))

(assert (= (and bm!92176 c!225966) b!1372786))

(assert (= (and bm!92176 (not c!225966)) b!1372790))

(assert (=> d!391891 m!1541845))

(assert (=> d!391891 m!1541845))

(declare-fun m!1543919 () Bool)

(assert (=> d!391891 m!1543919))

(declare-fun m!1543921 () Bool)

(assert (=> b!1372785 m!1543921))

(declare-fun m!1543923 () Bool)

(assert (=> bm!92176 m!1543923))

(declare-fun m!1543925 () Bool)

(assert (=> b!1372784 m!1543925))

(declare-fun m!1543927 () Bool)

(assert (=> b!1372784 m!1543927))

(assert (=> b!1372784 m!1543925))

(assert (=> b!1372784 m!1543927))

(declare-fun m!1543929 () Bool)

(assert (=> b!1372784 m!1543929))

(declare-fun m!1543931 () Bool)

(assert (=> b!1372784 m!1543931))

(assert (=> b!1372790 m!1543931))

(declare-fun m!1543933 () Bool)

(assert (=> b!1372789 m!1543933))

(assert (=> d!390991 d!391891))

(declare-fun d!391893 () Bool)

(declare-fun lt!455879 () Int)

(assert (=> d!391893 (>= lt!455879 0)))

(declare-fun e!877448 () Int)

(assert (=> d!391893 (= lt!455879 e!877448)))

(declare-fun c!225967 () Bool)

(assert (=> d!391893 (= c!225967 ((_ is Nil!13888) (_2!7631 (get!4347 lt!455183))))))

(assert (=> d!391893 (= (size!11399 (_2!7631 (get!4347 lt!455183))) lt!455879)))

(declare-fun b!1372791 () Bool)

(assert (=> b!1372791 (= e!877448 0)))

(declare-fun b!1372792 () Bool)

(assert (=> b!1372792 (= e!877448 (+ 1 (size!11399 (t!121483 (_2!7631 (get!4347 lt!455183))))))))

(assert (= (and d!391893 c!225967) b!1372791))

(assert (= (and d!391893 (not c!225967)) b!1372792))

(declare-fun m!1543935 () Bool)

(assert (=> b!1372792 m!1543935))

(assert (=> b!1371349 d!391893))

(assert (=> b!1371349 d!391685))

(assert (=> b!1371349 d!391847))

(declare-fun d!391895 () Bool)

(declare-fun lt!455880 () C!7728)

(assert (=> d!391895 (contains!2600 (list!5350 lt!454959) lt!455880)))

(declare-fun e!877450 () C!7728)

(assert (=> d!391895 (= lt!455880 e!877450)))

(declare-fun c!225968 () Bool)

(assert (=> d!391895 (= c!225968 (= 0 0))))

(declare-fun e!877449 () Bool)

(assert (=> d!391895 e!877449))

(declare-fun res!618481 () Bool)

(assert (=> d!391895 (=> (not res!618481) (not e!877449))))

(assert (=> d!391895 (= res!618481 (<= 0 0))))

(assert (=> d!391895 (= (apply!3412 (list!5350 lt!454959) 0) lt!455880)))

(declare-fun b!1372793 () Bool)

(assert (=> b!1372793 (= e!877449 (< 0 (size!11399 (list!5350 lt!454959))))))

(declare-fun b!1372794 () Bool)

(assert (=> b!1372794 (= e!877450 (head!2469 (list!5350 lt!454959)))))

(declare-fun b!1372795 () Bool)

(assert (=> b!1372795 (= e!877450 (apply!3412 (tail!1982 (list!5350 lt!454959)) (- 0 1)))))

(assert (= (and d!391895 res!618481) b!1372793))

(assert (= (and d!391895 c!225968) b!1372794))

(assert (= (and d!391895 (not c!225968)) b!1372795))

(assert (=> d!391895 m!1540839))

(declare-fun m!1543937 () Bool)

(assert (=> d!391895 m!1543937))

(assert (=> b!1372793 m!1540839))

(assert (=> b!1372793 m!1541147))

(assert (=> b!1372794 m!1540839))

(assert (=> b!1372794 m!1542727))

(assert (=> b!1372795 m!1540839))

(assert (=> b!1372795 m!1542723))

(assert (=> b!1372795 m!1542723))

(declare-fun m!1543939 () Bool)

(assert (=> b!1372795 m!1543939))

(assert (=> d!391171 d!391895))

(assert (=> d!391171 d!391097))

(declare-fun d!391897 () Bool)

(declare-fun lt!455882 () C!7728)

(assert (=> d!391897 (= lt!455882 (apply!3412 (list!5355 (c!225513 lt!454959)) 0))))

(declare-fun e!877452 () C!7728)

(assert (=> d!391897 (= lt!455882 e!877452)))

(declare-fun c!225970 () Bool)

(assert (=> d!391897 (= c!225970 ((_ is Leaf!6971) (c!225513 lt!454959)))))

(declare-fun e!877451 () Bool)

(assert (=> d!391897 e!877451))

(declare-fun res!618482 () Bool)

(assert (=> d!391897 (=> (not res!618482) (not e!877451))))

(assert (=> d!391897 (= res!618482 (<= 0 0))))

(assert (=> d!391897 (= (apply!3413 (c!225513 lt!454959) 0) lt!455882)))

(declare-fun b!1372796 () Bool)

(declare-fun e!877453 () C!7728)

(assert (=> b!1372796 (= e!877452 e!877453)))

(declare-fun lt!455881 () Bool)

(assert (=> b!1372796 (= lt!455881 (appendIndex!169 (list!5355 (left!11884 (c!225513 lt!454959))) (list!5355 (right!12214 (c!225513 lt!454959))) 0))))

(declare-fun c!225969 () Bool)

(assert (=> b!1372796 (= c!225969 (< 0 (size!11400 (left!11884 (c!225513 lt!454959)))))))

(declare-fun b!1372797 () Bool)

(assert (=> b!1372797 (= e!877451 (< 0 (size!11400 (c!225513 lt!454959))))))

(declare-fun b!1372798 () Bool)

(declare-fun e!877454 () Int)

(assert (=> b!1372798 (= e!877454 0)))

(declare-fun b!1372799 () Bool)

(declare-fun call!92182 () C!7728)

(assert (=> b!1372799 (= e!877453 call!92182)))

(declare-fun b!1372800 () Bool)

(assert (=> b!1372800 (= e!877453 call!92182)))

(declare-fun b!1372801 () Bool)

(assert (=> b!1372801 (= e!877452 (apply!3420 (xs!7299 (c!225513 lt!454959)) 0))))

(declare-fun b!1372802 () Bool)

(assert (=> b!1372802 (= e!877454 (- 0 (size!11400 (left!11884 (c!225513 lt!454959)))))))

(declare-fun bm!92177 () Bool)

(declare-fun c!225971 () Bool)

(assert (=> bm!92177 (= c!225971 c!225969)))

(assert (=> bm!92177 (= call!92182 (apply!3413 (ite c!225969 (left!11884 (c!225513 lt!454959)) (right!12214 (c!225513 lt!454959))) e!877454))))

(assert (= (and d!391897 res!618482) b!1372797))

(assert (= (and d!391897 c!225970) b!1372801))

(assert (= (and d!391897 (not c!225970)) b!1372796))

(assert (= (and b!1372796 c!225969) b!1372800))

(assert (= (and b!1372796 (not c!225969)) b!1372799))

(assert (= (or b!1372800 b!1372799) bm!92177))

(assert (= (and bm!92177 c!225971) b!1372798))

(assert (= (and bm!92177 (not c!225971)) b!1372802))

(assert (=> d!391897 m!1541555))

(assert (=> d!391897 m!1541555))

(declare-fun m!1543941 () Bool)

(assert (=> d!391897 m!1543941))

(assert (=> b!1372797 m!1541149))

(declare-fun m!1543943 () Bool)

(assert (=> bm!92177 m!1543943))

(assert (=> b!1372796 m!1543301))

(assert (=> b!1372796 m!1543303))

(assert (=> b!1372796 m!1543301))

(assert (=> b!1372796 m!1543303))

(declare-fun m!1543945 () Bool)

(assert (=> b!1372796 m!1543945))

(declare-fun m!1543947 () Bool)

(assert (=> b!1372796 m!1543947))

(assert (=> b!1372802 m!1543947))

(declare-fun m!1543949 () Bool)

(assert (=> b!1372801 m!1543949))

(assert (=> d!391171 d!391897))

(declare-fun d!391899 () Bool)

(assert (=> d!391899 (= (inv!18249 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34))) (isBalanced!1348 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34)))))))

(declare-fun bs!335882 () Bool)

(assert (= bs!335882 d!391899))

(declare-fun m!1543951 () Bool)

(assert (=> bs!335882 m!1543951))

(assert (=> tb!72223 d!391899))

(assert (=> b!1371337 d!391881))

(declare-fun d!391901 () Bool)

(assert (=> d!391901 true))

(declare-fun order!8489 () Int)

(declare-fun lambda!58291 () Int)

(declare-fun dynLambda!6325 (Int Int) Int)

(assert (=> d!391901 (< (dynLambda!6323 order!8487 (toValue!3672 (transformation!2405 (rule!4160 t1!34)))) (dynLambda!6325 order!8489 lambda!58291))))

(declare-fun Forall2!441 (Int) Bool)

(assert (=> d!391901 (= (equivClasses!887 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (toValue!3672 (transformation!2405 (rule!4160 t1!34)))) (Forall2!441 lambda!58291))))

(declare-fun bs!335883 () Bool)

(assert (= bs!335883 d!391901))

(declare-fun m!1543953 () Bool)

(assert (=> bs!335883 m!1543953))

(assert (=> b!1371453 d!391901))

(declare-fun d!391903 () Bool)

(declare-fun lt!455883 () Bool)

(assert (=> d!391903 (= lt!455883 (select (content!2031 (t!121483 lt!454969)) lt!454970))))

(declare-fun e!877457 () Bool)

(assert (=> d!391903 (= lt!455883 e!877457)))

(declare-fun res!618486 () Bool)

(assert (=> d!391903 (=> (not res!618486) (not e!877457))))

(assert (=> d!391903 (= res!618486 ((_ is Cons!13888) (t!121483 lt!454969)))))

(assert (=> d!391903 (= (contains!2600 (t!121483 lt!454969) lt!454970) lt!455883)))

(declare-fun b!1372807 () Bool)

(declare-fun e!877458 () Bool)

(assert (=> b!1372807 (= e!877457 e!877458)))

(declare-fun res!618485 () Bool)

(assert (=> b!1372807 (=> res!618485 e!877458)))

(assert (=> b!1372807 (= res!618485 (= (h!19289 (t!121483 lt!454969)) lt!454970))))

(declare-fun b!1372808 () Bool)

(assert (=> b!1372808 (= e!877458 (contains!2600 (t!121483 (t!121483 lt!454969)) lt!454970))))

(assert (= (and d!391903 res!618486) b!1372807))

(assert (= (and b!1372807 (not res!618485)) b!1372808))

(assert (=> d!391903 m!1542827))

(declare-fun m!1543955 () Bool)

(assert (=> d!391903 m!1543955))

(declare-fun m!1543957 () Bool)

(assert (=> b!1372808 m!1543957))

(assert (=> b!1371270 d!391903))

(declare-fun d!391905 () Bool)

(declare-fun lt!455884 () Int)

(assert (=> d!391905 (>= lt!455884 0)))

(declare-fun e!877459 () Int)

(assert (=> d!391905 (= lt!455884 e!877459)))

(declare-fun c!225972 () Bool)

(assert (=> d!391905 (= c!225972 ((_ is Nil!13888) (originalCharacters!3267 t2!34)))))

(assert (=> d!391905 (= (size!11399 (originalCharacters!3267 t2!34)) lt!455884)))

(declare-fun b!1372809 () Bool)

(assert (=> b!1372809 (= e!877459 0)))

(declare-fun b!1372810 () Bool)

(assert (=> b!1372810 (= e!877459 (+ 1 (size!11399 (t!121483 (originalCharacters!3267 t2!34)))))))

(assert (= (and d!391905 c!225972) b!1372809))

(assert (= (and d!391905 (not c!225972)) b!1372810))

(declare-fun m!1543959 () Bool)

(assert (=> b!1372810 m!1543959))

(assert (=> b!1371417 d!391905))

(declare-fun d!391907 () Bool)

(assert (=> d!391907 (= (list!5350 (_2!7630 lt!455193)) (list!5355 (c!225513 (_2!7630 lt!455193))))))

(declare-fun bs!335884 () Bool)

(assert (= bs!335884 d!391907))

(declare-fun m!1543961 () Bool)

(assert (=> bs!335884 m!1543961))

(assert (=> b!1371370 d!391907))

(assert (=> b!1371370 d!391147))

(assert (=> b!1371370 d!391149))

(declare-fun d!391909 () Bool)

(declare-fun lt!455887 () Bool)

(assert (=> d!391909 (= lt!455887 (isEmpty!8381 (list!5351 (_1!7630 lt!455107))))))

(assert (=> d!391909 (= lt!455887 (isEmpty!8384 (c!225514 (_1!7630 lt!455107))))))

(assert (=> d!391909 (= (isEmpty!8378 (_1!7630 lt!455107)) lt!455887)))

(declare-fun bs!335885 () Bool)

(assert (= bs!335885 d!391909))

(assert (=> bs!335885 m!1541321))

(assert (=> bs!335885 m!1541321))

(declare-fun m!1543963 () Bool)

(assert (=> bs!335885 m!1543963))

(declare-fun m!1543965 () Bool)

(assert (=> bs!335885 m!1543965))

(assert (=> b!1371104 d!391909))

(assert (=> bm!92086 d!391693))

(declare-fun b!1372811 () Bool)

(declare-fun res!618494 () Bool)

(declare-fun e!877461 () Bool)

(assert (=> b!1372811 (=> res!618494 e!877461)))

(assert (=> b!1372811 (= res!618494 (not ((_ is ElementMatch!3719) (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))))))

(declare-fun e!877462 () Bool)

(assert (=> b!1372811 (= e!877462 e!877461)))

(declare-fun b!1372812 () Bool)

(declare-fun lt!455888 () Bool)

(assert (=> b!1372812 (= e!877462 (not lt!455888))))

(declare-fun b!1372813 () Bool)

(declare-fun res!618492 () Bool)

(declare-fun e!877466 () Bool)

(assert (=> b!1372813 (=> (not res!618492) (not e!877466))))

(declare-fun call!92183 () Bool)

(assert (=> b!1372813 (= res!618492 (not call!92183))))

(declare-fun d!391911 () Bool)

(declare-fun e!877463 () Bool)

(assert (=> d!391911 e!877463))

(declare-fun c!225974 () Bool)

(assert (=> d!391911 (= c!225974 ((_ is EmptyExpr!3719) (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455183))))))))

(declare-fun e!877464 () Bool)

(assert (=> d!391911 (= lt!455888 e!877464)))

(declare-fun c!225973 () Bool)

(assert (=> d!391911 (= c!225973 (isEmpty!8376 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))))))

(assert (=> d!391911 (validRegex!1619 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))))

(assert (=> d!391911 (= (matchR!1712 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))) lt!455888)))

(declare-fun bm!92178 () Bool)

(assert (=> bm!92178 (= call!92183 (isEmpty!8376 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))))))

(declare-fun b!1372814 () Bool)

(assert (=> b!1372814 (= e!877463 e!877462)))

(declare-fun c!225975 () Bool)

(assert (=> b!1372814 (= c!225975 ((_ is EmptyLang!3719) (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455183))))))))

(declare-fun b!1372815 () Bool)

(declare-fun e!877460 () Bool)

(assert (=> b!1372815 (= e!877461 e!877460)))

(declare-fun res!618490 () Bool)

(assert (=> b!1372815 (=> (not res!618490) (not e!877460))))

(assert (=> b!1372815 (= res!618490 (not lt!455888))))

(declare-fun b!1372816 () Bool)

(declare-fun e!877465 () Bool)

(assert (=> b!1372816 (= e!877465 (not (= (head!2469 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))) (c!225512 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455183))))))))))

(declare-fun b!1372817 () Bool)

(assert (=> b!1372817 (= e!877463 (= lt!455888 call!92183))))

(declare-fun b!1372818 () Bool)

(assert (=> b!1372818 (= e!877460 e!877465)))

(declare-fun res!618487 () Bool)

(assert (=> b!1372818 (=> res!618487 e!877465)))

(assert (=> b!1372818 (= res!618487 call!92183)))

(declare-fun b!1372819 () Bool)

(assert (=> b!1372819 (= e!877464 (nullable!1199 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455183))))))))

(declare-fun b!1372820 () Bool)

(assert (=> b!1372820 (= e!877466 (= (head!2469 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))) (c!225512 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))))))

(declare-fun b!1372821 () Bool)

(declare-fun res!618489 () Bool)

(assert (=> b!1372821 (=> res!618489 e!877465)))

(assert (=> b!1372821 (= res!618489 (not (isEmpty!8376 (tail!1982 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183))))))))))

(declare-fun b!1372822 () Bool)

(declare-fun res!618493 () Bool)

(assert (=> b!1372822 (=> res!618493 e!877461)))

(assert (=> b!1372822 (= res!618493 e!877466)))

(declare-fun res!618491 () Bool)

(assert (=> b!1372822 (=> (not res!618491) (not e!877466))))

(assert (=> b!1372822 (= res!618491 lt!455888)))

(declare-fun b!1372823 () Bool)

(assert (=> b!1372823 (= e!877464 (matchR!1712 (derivativeStep!957 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))) (head!2469 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183)))))) (tail!1982 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183)))))))))

(declare-fun b!1372824 () Bool)

(declare-fun res!618488 () Bool)

(assert (=> b!1372824 (=> (not res!618488) (not e!877466))))

(assert (=> b!1372824 (= res!618488 (isEmpty!8376 (tail!1982 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455183)))))))))

(assert (= (and d!391911 c!225973) b!1372819))

(assert (= (and d!391911 (not c!225973)) b!1372823))

(assert (= (and d!391911 c!225974) b!1372817))

(assert (= (and d!391911 (not c!225974)) b!1372814))

(assert (= (and b!1372814 c!225975) b!1372812))

(assert (= (and b!1372814 (not c!225975)) b!1372811))

(assert (= (and b!1372811 (not res!618494)) b!1372822))

(assert (= (and b!1372822 res!618491) b!1372813))

(assert (= (and b!1372813 res!618492) b!1372824))

(assert (= (and b!1372824 res!618488) b!1372820))

(assert (= (and b!1372822 (not res!618493)) b!1372815))

(assert (= (and b!1372815 res!618490) b!1372818))

(assert (= (and b!1372818 (not res!618487)) b!1372821))

(assert (= (and b!1372821 (not res!618489)) b!1372816))

(assert (= (or b!1372817 b!1372813 b!1372818) bm!92178))

(declare-fun m!1543967 () Bool)

(assert (=> b!1372819 m!1543967))

(assert (=> bm!92178 m!1541649))

(declare-fun m!1543969 () Bool)

(assert (=> bm!92178 m!1543969))

(assert (=> d!391911 m!1541649))

(assert (=> d!391911 m!1543969))

(declare-fun m!1543971 () Bool)

(assert (=> d!391911 m!1543971))

(assert (=> b!1372823 m!1541649))

(declare-fun m!1543973 () Bool)

(assert (=> b!1372823 m!1543973))

(assert (=> b!1372823 m!1543973))

(declare-fun m!1543975 () Bool)

(assert (=> b!1372823 m!1543975))

(assert (=> b!1372823 m!1541649))

(declare-fun m!1543977 () Bool)

(assert (=> b!1372823 m!1543977))

(assert (=> b!1372823 m!1543975))

(assert (=> b!1372823 m!1543977))

(declare-fun m!1543979 () Bool)

(assert (=> b!1372823 m!1543979))

(assert (=> b!1372824 m!1541649))

(assert (=> b!1372824 m!1543977))

(assert (=> b!1372824 m!1543977))

(declare-fun m!1543981 () Bool)

(assert (=> b!1372824 m!1543981))

(assert (=> b!1372821 m!1541649))

(assert (=> b!1372821 m!1543977))

(assert (=> b!1372821 m!1543977))

(assert (=> b!1372821 m!1543981))

(assert (=> b!1372820 m!1541649))

(assert (=> b!1372820 m!1543973))

(assert (=> b!1372816 m!1541649))

(assert (=> b!1372816 m!1543973))

(assert (=> b!1371345 d!391911))

(assert (=> b!1371345 d!391685))

(assert (=> b!1371345 d!391679))

(assert (=> b!1371345 d!391681))

(declare-fun b!1372825 () Bool)

(declare-fun res!618502 () Bool)

(declare-fun e!877468 () Bool)

(assert (=> b!1372825 (=> res!618502 e!877468)))

(assert (=> b!1372825 (= res!618502 (not ((_ is ElementMatch!3719) lt!454967)))))

(declare-fun e!877469 () Bool)

(assert (=> b!1372825 (= e!877469 e!877468)))

(declare-fun b!1372826 () Bool)

(declare-fun lt!455889 () Bool)

(assert (=> b!1372826 (= e!877469 (not lt!455889))))

(declare-fun b!1372827 () Bool)

(declare-fun res!618500 () Bool)

(declare-fun e!877473 () Bool)

(assert (=> b!1372827 (=> (not res!618500) (not e!877473))))

(declare-fun call!92184 () Bool)

(assert (=> b!1372827 (= res!618500 (not call!92184))))

(declare-fun d!391913 () Bool)

(declare-fun e!877470 () Bool)

(assert (=> d!391913 e!877470))

(declare-fun c!225977 () Bool)

(assert (=> d!391913 (= c!225977 ((_ is EmptyExpr!3719) lt!454967))))

(declare-fun e!877471 () Bool)

(assert (=> d!391913 (= lt!455889 e!877471)))

(declare-fun c!225976 () Bool)

(assert (=> d!391913 (= c!225976 (isEmpty!8376 lt!455215))))

(assert (=> d!391913 (validRegex!1619 lt!454967)))

(assert (=> d!391913 (= (matchR!1712 lt!454967 lt!455215) lt!455889)))

(declare-fun bm!92179 () Bool)

(assert (=> bm!92179 (= call!92184 (isEmpty!8376 lt!455215))))

(declare-fun b!1372828 () Bool)

(assert (=> b!1372828 (= e!877470 e!877469)))

(declare-fun c!225978 () Bool)

(assert (=> b!1372828 (= c!225978 ((_ is EmptyLang!3719) lt!454967))))

(declare-fun b!1372829 () Bool)

(declare-fun e!877467 () Bool)

(assert (=> b!1372829 (= e!877468 e!877467)))

(declare-fun res!618498 () Bool)

(assert (=> b!1372829 (=> (not res!618498) (not e!877467))))

(assert (=> b!1372829 (= res!618498 (not lt!455889))))

(declare-fun b!1372830 () Bool)

(declare-fun e!877472 () Bool)

(assert (=> b!1372830 (= e!877472 (not (= (head!2469 lt!455215) (c!225512 lt!454967))))))

(declare-fun b!1372831 () Bool)

(assert (=> b!1372831 (= e!877470 (= lt!455889 call!92184))))

(declare-fun b!1372832 () Bool)

(assert (=> b!1372832 (= e!877467 e!877472)))

(declare-fun res!618495 () Bool)

(assert (=> b!1372832 (=> res!618495 e!877472)))

(assert (=> b!1372832 (= res!618495 call!92184)))

(declare-fun b!1372833 () Bool)

(assert (=> b!1372833 (= e!877471 (nullable!1199 lt!454967))))

(declare-fun b!1372834 () Bool)

(assert (=> b!1372834 (= e!877473 (= (head!2469 lt!455215) (c!225512 lt!454967)))))

(declare-fun b!1372835 () Bool)

(declare-fun res!618497 () Bool)

(assert (=> b!1372835 (=> res!618497 e!877472)))

(assert (=> b!1372835 (= res!618497 (not (isEmpty!8376 (tail!1982 lt!455215))))))

(declare-fun b!1372836 () Bool)

(declare-fun res!618501 () Bool)

(assert (=> b!1372836 (=> res!618501 e!877468)))

(assert (=> b!1372836 (= res!618501 e!877473)))

(declare-fun res!618499 () Bool)

(assert (=> b!1372836 (=> (not res!618499) (not e!877473))))

(assert (=> b!1372836 (= res!618499 lt!455889)))

(declare-fun b!1372837 () Bool)

(assert (=> b!1372837 (= e!877471 (matchR!1712 (derivativeStep!957 lt!454967 (head!2469 lt!455215)) (tail!1982 lt!455215)))))

(declare-fun b!1372838 () Bool)

(declare-fun res!618496 () Bool)

(assert (=> b!1372838 (=> (not res!618496) (not e!877473))))

(assert (=> b!1372838 (= res!618496 (isEmpty!8376 (tail!1982 lt!455215)))))

(assert (= (and d!391913 c!225976) b!1372833))

(assert (= (and d!391913 (not c!225976)) b!1372837))

(assert (= (and d!391913 c!225977) b!1372831))

(assert (= (and d!391913 (not c!225977)) b!1372828))

(assert (= (and b!1372828 c!225978) b!1372826))

(assert (= (and b!1372828 (not c!225978)) b!1372825))

(assert (= (and b!1372825 (not res!618502)) b!1372836))

(assert (= (and b!1372836 res!618499) b!1372827))

(assert (= (and b!1372827 res!618500) b!1372838))

(assert (= (and b!1372838 res!618496) b!1372834))

(assert (= (and b!1372836 (not res!618501)) b!1372829))

(assert (= (and b!1372829 res!618498) b!1372832))

(assert (= (and b!1372832 (not res!618495)) b!1372835))

(assert (= (and b!1372835 (not res!618497)) b!1372830))

(assert (= (or b!1372831 b!1372827 b!1372832) bm!92179))

(assert (=> b!1372833 m!1541619))

(declare-fun m!1543983 () Bool)

(assert (=> bm!92179 m!1543983))

(assert (=> d!391913 m!1543983))

(assert (=> d!391913 m!1541623))

(declare-fun m!1543985 () Bool)

(assert (=> b!1372837 m!1543985))

(assert (=> b!1372837 m!1543985))

(declare-fun m!1543987 () Bool)

(assert (=> b!1372837 m!1543987))

(declare-fun m!1543989 () Bool)

(assert (=> b!1372837 m!1543989))

(assert (=> b!1372837 m!1543987))

(assert (=> b!1372837 m!1543989))

(declare-fun m!1543991 () Bool)

(assert (=> b!1372837 m!1543991))

(assert (=> b!1372838 m!1543989))

(assert (=> b!1372838 m!1543989))

(declare-fun m!1543993 () Bool)

(assert (=> b!1372838 m!1543993))

(assert (=> b!1372835 m!1543989))

(assert (=> b!1372835 m!1543989))

(assert (=> b!1372835 m!1543993))

(assert (=> b!1372834 m!1543985))

(assert (=> b!1372830 m!1543985))

(assert (=> bs!335668 d!391913))

(assert (=> b!1371452 d!390971))

(declare-fun d!391915 () Bool)

(assert (=> d!391915 (= (isEmpty!8381 (_1!7629 lt!455203)) ((_ is Nil!13891) (_1!7629 lt!455203)))))

(assert (=> b!1371388 d!391915))

(declare-fun d!391917 () Bool)

(assert (=> d!391917 (= (isEmpty!8376 (list!5350 (_2!7630 lt!454968))) ((_ is Nil!13888) (list!5350 (_2!7630 lt!454968))))))

(assert (=> d!391151 d!391917))

(declare-fun d!391919 () Bool)

(assert (=> d!391919 (= (list!5350 (_2!7630 lt!454968)) (list!5355 (c!225513 (_2!7630 lt!454968))))))

(declare-fun bs!335886 () Bool)

(assert (= bs!335886 d!391919))

(declare-fun m!1543995 () Bool)

(assert (=> bs!335886 m!1543995))

(assert (=> d!391151 d!391919))

(declare-fun d!391921 () Bool)

(declare-fun lt!455890 () Bool)

(assert (=> d!391921 (= lt!455890 (isEmpty!8376 (list!5355 (c!225513 (_2!7630 lt!454968)))))))

(assert (=> d!391921 (= lt!455890 (= (size!11400 (c!225513 (_2!7630 lt!454968))) 0))))

(assert (=> d!391921 (= (isEmpty!8377 (c!225513 (_2!7630 lt!454968))) lt!455890)))

(declare-fun bs!335887 () Bool)

(assert (= bs!335887 d!391921))

(assert (=> bs!335887 m!1543995))

(assert (=> bs!335887 m!1543995))

(declare-fun m!1543997 () Bool)

(assert (=> bs!335887 m!1543997))

(declare-fun m!1543999 () Bool)

(assert (=> bs!335887 m!1543999))

(assert (=> d!391151 d!391921))

(declare-fun d!391923 () Bool)

(assert (=> d!391923 (= (list!5351 lt!455195) (list!5354 (c!225514 lt!455195)))))

(declare-fun bs!335888 () Bool)

(assert (= bs!335888 d!391923))

(declare-fun m!1544001 () Bool)

(assert (=> bs!335888 m!1544001))

(assert (=> d!391135 d!391923))

(declare-fun d!391925 () Bool)

(declare-fun e!877474 () Bool)

(assert (=> d!391925 e!877474))

(declare-fun res!618503 () Bool)

(assert (=> d!391925 (=> (not res!618503) (not e!877474))))

(declare-fun lt!455891 () BalanceConc!9086)

(assert (=> d!391925 (= res!618503 (= (list!5351 lt!455891) (Cons!13891 t2!34 Nil!13891)))))

(assert (=> d!391925 (= lt!455891 (choose!8446 t2!34))))

(assert (=> d!391925 (= (singleton!452 t2!34) lt!455891)))

(declare-fun b!1372839 () Bool)

(assert (=> b!1372839 (= e!877474 (isBalanced!1346 (c!225514 lt!455891)))))

(assert (= (and d!391925 res!618503) b!1372839))

(declare-fun m!1544003 () Bool)

(assert (=> d!391925 m!1544003))

(declare-fun m!1544005 () Bool)

(assert (=> d!391925 m!1544005))

(declare-fun m!1544007 () Bool)

(assert (=> b!1372839 m!1544007))

(assert (=> d!391135 d!391925))

(declare-fun d!391927 () Bool)

(declare-fun res!618504 () Bool)

(declare-fun e!877475 () Bool)

(assert (=> d!391927 (=> res!618504 e!877475)))

(assert (=> d!391927 (= res!618504 (not ((_ is Cons!13890) (t!121485 rules!2550))))))

(assert (=> d!391927 (= (sepAndNonSepRulesDisjointChars!778 rules!2550 (t!121485 rules!2550)) e!877475)))

(declare-fun b!1372840 () Bool)

(declare-fun e!877476 () Bool)

(assert (=> b!1372840 (= e!877475 e!877476)))

(declare-fun res!618505 () Bool)

(assert (=> b!1372840 (=> (not res!618505) (not e!877476))))

(assert (=> b!1372840 (= res!618505 (ruleDisjointCharsFromAllFromOtherType!370 (h!19291 (t!121485 rules!2550)) rules!2550))))

(declare-fun b!1372841 () Bool)

(assert (=> b!1372841 (= e!877476 (sepAndNonSepRulesDisjointChars!778 rules!2550 (t!121485 (t!121485 rules!2550))))))

(assert (= (and d!391927 (not res!618504)) b!1372840))

(assert (= (and b!1372840 res!618505) b!1372841))

(declare-fun m!1544009 () Bool)

(assert (=> b!1372840 m!1544009))

(declare-fun m!1544011 () Bool)

(assert (=> b!1372841 m!1544011))

(assert (=> b!1371268 d!391927))

(declare-fun d!391929 () Bool)

(declare-fun c!225979 () Bool)

(assert (=> d!391929 (= c!225979 ((_ is Nil!13888) lt!454960))))

(declare-fun e!877477 () (InoxSet C!7728))

(assert (=> d!391929 (= (content!2031 lt!454960) e!877477)))

(declare-fun b!1372842 () Bool)

(assert (=> b!1372842 (= e!877477 ((as const (Array C!7728 Bool)) false))))

(declare-fun b!1372843 () Bool)

(assert (=> b!1372843 (= e!877477 ((_ map or) (store ((as const (Array C!7728 Bool)) false) (h!19289 lt!454960) true) (content!2031 (t!121483 lt!454960))))))

(assert (= (and d!391929 c!225979) b!1372842))

(assert (= (and d!391929 (not c!225979)) b!1372843))

(declare-fun m!1544013 () Bool)

(assert (=> b!1372843 m!1544013))

(assert (=> b!1372843 m!1543463))

(assert (=> d!391145 d!391929))

(declare-fun bs!335889 () Bool)

(declare-fun d!391931 () Bool)

(assert (= bs!335889 (and d!391931 d!391901)))

(declare-fun lambda!58292 () Int)

(assert (=> bs!335889 (= (= (toValue!3672 (transformation!2405 (rule!4160 t2!34))) (toValue!3672 (transformation!2405 (rule!4160 t1!34)))) (= lambda!58292 lambda!58291))))

(assert (=> d!391931 true))

(assert (=> d!391931 (< (dynLambda!6323 order!8487 (toValue!3672 (transformation!2405 (rule!4160 t2!34)))) (dynLambda!6325 order!8489 lambda!58292))))

(assert (=> d!391931 (= (equivClasses!887 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (toValue!3672 (transformation!2405 (rule!4160 t2!34)))) (Forall2!441 lambda!58292))))

(declare-fun bs!335890 () Bool)

(assert (= bs!335890 d!391931))

(declare-fun m!1544015 () Bool)

(assert (=> bs!335890 m!1544015))

(assert (=> b!1370994 d!391931))

(declare-fun d!391933 () Bool)

(declare-fun lt!455892 () Bool)

(assert (=> d!391933 (= lt!455892 (select (content!2033 (map!3068 rules!2550 lambda!58184)) lt!455224))))

(declare-fun e!877479 () Bool)

(assert (=> d!391933 (= lt!455892 e!877479)))

(declare-fun res!618507 () Bool)

(assert (=> d!391933 (=> (not res!618507) (not e!877479))))

(assert (=> d!391933 (= res!618507 ((_ is Cons!13892) (map!3068 rules!2550 lambda!58184)))))

(assert (=> d!391933 (= (contains!2601 (map!3068 rules!2550 lambda!58184) lt!455224) lt!455892)))

(declare-fun b!1372844 () Bool)

(declare-fun e!877478 () Bool)

(assert (=> b!1372844 (= e!877479 e!877478)))

(declare-fun res!618506 () Bool)

(assert (=> b!1372844 (=> res!618506 e!877478)))

(assert (=> b!1372844 (= res!618506 (= (h!19293 (map!3068 rules!2550 lambda!58184)) lt!455224))))

(declare-fun b!1372845 () Bool)

(assert (=> b!1372845 (= e!877478 (contains!2601 (t!121487 (map!3068 rules!2550 lambda!58184)) lt!455224))))

(assert (= (and d!391933 res!618507) b!1372844))

(assert (= (and b!1372844 (not res!618506)) b!1372845))

(assert (=> d!391933 m!1540859))

(assert (=> d!391933 m!1541799))

(declare-fun m!1544017 () Bool)

(assert (=> d!391933 m!1544017))

(declare-fun m!1544019 () Bool)

(assert (=> b!1372845 m!1544019))

(assert (=> b!1371436 d!391933))

(declare-fun d!391935 () Bool)

(declare-fun c!225980 () Bool)

(assert (=> d!391935 (= c!225980 ((_ is Nil!13888) lt!455225))))

(declare-fun e!877480 () (InoxSet C!7728))

(assert (=> d!391935 (= (content!2031 lt!455225) e!877480)))

(declare-fun b!1372846 () Bool)

(assert (=> b!1372846 (= e!877480 ((as const (Array C!7728 Bool)) false))))

(declare-fun b!1372847 () Bool)

(assert (=> b!1372847 (= e!877480 ((_ map or) (store ((as const (Array C!7728 Bool)) false) (h!19289 lt!455225) true) (content!2031 (t!121483 lt!455225))))))

(assert (= (and d!391935 c!225980) b!1372846))

(assert (= (and d!391935 (not c!225980)) b!1372847))

(declare-fun m!1544021 () Bool)

(assert (=> b!1372847 m!1544021))

(declare-fun m!1544023 () Bool)

(assert (=> b!1372847 m!1544023))

(assert (=> d!391167 d!391935))

(declare-fun d!391937 () Bool)

(declare-fun c!225981 () Bool)

(assert (=> d!391937 (= c!225981 ((_ is Nil!13888) lt!454961))))

(declare-fun e!877481 () (InoxSet C!7728))

(assert (=> d!391937 (= (content!2031 lt!454961) e!877481)))

(declare-fun b!1372848 () Bool)

(assert (=> b!1372848 (= e!877481 ((as const (Array C!7728 Bool)) false))))

(declare-fun b!1372849 () Bool)

(assert (=> b!1372849 (= e!877481 ((_ map or) (store ((as const (Array C!7728 Bool)) false) (h!19289 lt!454961) true) (content!2031 (t!121483 lt!454961))))))

(assert (= (and d!391937 c!225981) b!1372848))

(assert (= (and d!391937 (not c!225981)) b!1372849))

(declare-fun m!1544025 () Bool)

(assert (=> b!1372849 m!1544025))

(declare-fun m!1544027 () Bool)

(assert (=> b!1372849 m!1544027))

(assert (=> d!391167 d!391937))

(declare-fun d!391939 () Bool)

(declare-fun c!225982 () Bool)

(assert (=> d!391939 (= c!225982 ((_ is Nil!13888) (Cons!13888 lt!454970 Nil!13888)))))

(declare-fun e!877482 () (InoxSet C!7728))

(assert (=> d!391939 (= (content!2031 (Cons!13888 lt!454970 Nil!13888)) e!877482)))

(declare-fun b!1372850 () Bool)

(assert (=> b!1372850 (= e!877482 ((as const (Array C!7728 Bool)) false))))

(declare-fun b!1372851 () Bool)

(assert (=> b!1372851 (= e!877482 ((_ map or) (store ((as const (Array C!7728 Bool)) false) (h!19289 (Cons!13888 lt!454970 Nil!13888)) true) (content!2031 (t!121483 (Cons!13888 lt!454970 Nil!13888)))))))

(assert (= (and d!391939 c!225982) b!1372850))

(assert (= (and d!391939 (not c!225982)) b!1372851))

(declare-fun m!1544029 () Bool)

(assert (=> b!1372851 m!1544029))

(declare-fun m!1544031 () Bool)

(assert (=> b!1372851 m!1544031))

(assert (=> d!391167 d!391939))

(declare-fun b!1372853 () Bool)

(declare-fun e!877483 () List!13954)

(declare-fun e!877484 () List!13954)

(assert (=> b!1372853 (= e!877483 e!877484)))

(declare-fun c!225984 () Bool)

(assert (=> b!1372853 (= c!225984 ((_ is Leaf!6971) (c!225513 lt!454956)))))

(declare-fun b!1372855 () Bool)

(assert (=> b!1372855 (= e!877484 (++!3590 (list!5355 (left!11884 (c!225513 lt!454956))) (list!5355 (right!12214 (c!225513 lt!454956)))))))

(declare-fun d!391941 () Bool)

(declare-fun c!225983 () Bool)

(assert (=> d!391941 (= c!225983 ((_ is Empty!4572) (c!225513 lt!454956)))))

(assert (=> d!391941 (= (list!5355 (c!225513 lt!454956)) e!877483)))

(declare-fun b!1372852 () Bool)

(assert (=> b!1372852 (= e!877483 Nil!13888)))

(declare-fun b!1372854 () Bool)

(assert (=> b!1372854 (= e!877484 (list!5358 (xs!7299 (c!225513 lt!454956))))))

(assert (= (and d!391941 c!225983) b!1372852))

(assert (= (and d!391941 (not c!225983)) b!1372853))

(assert (= (and b!1372853 c!225984) b!1372854))

(assert (= (and b!1372853 (not c!225984)) b!1372855))

(declare-fun m!1544033 () Bool)

(assert (=> b!1372855 m!1544033))

(declare-fun m!1544035 () Bool)

(assert (=> b!1372855 m!1544035))

(assert (=> b!1372855 m!1544033))

(assert (=> b!1372855 m!1544035))

(declare-fun m!1544037 () Bool)

(assert (=> b!1372855 m!1544037))

(declare-fun m!1544039 () Bool)

(assert (=> b!1372854 m!1544039))

(assert (=> d!391127 d!391941))

(declare-fun d!391943 () Bool)

(assert (=> d!391943 (dynLambda!6311 lambda!58187 (rule!4160 t2!34))))

(assert (=> d!391943 true))

(declare-fun _$7!723 () Unit!20107)

(assert (=> d!391943 (= (choose!8439 rules!2550 lambda!58187 (rule!4160 t2!34)) _$7!723)))

(declare-fun b_lambda!42083 () Bool)

(assert (=> (not b_lambda!42083) (not d!391943)))

(declare-fun bs!335891 () Bool)

(assert (= bs!335891 d!391943))

(assert (=> bs!335891 m!1541605))

(assert (=> d!391111 d!391943))

(assert (=> d!391111 d!391275))

(declare-fun d!391945 () Bool)

(assert (=> d!391945 (= (list!5350 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34))) (list!5355 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34)))))))

(declare-fun bs!335892 () Bool)

(assert (= bs!335892 d!391945))

(declare-fun m!1544041 () Bool)

(assert (=> bs!335892 m!1544041))

(assert (=> b!1371416 d!391945))

(declare-fun d!391947 () Bool)

(declare-fun res!618508 () Bool)

(declare-fun e!877485 () Bool)

(assert (=> d!391947 (=> res!618508 e!877485)))

(assert (=> d!391947 (= res!618508 ((_ is Nil!13890) rules!2550))))

(assert (=> d!391947 (= (forall!3396 rules!2550 lambda!58202) e!877485)))

(declare-fun b!1372856 () Bool)

(declare-fun e!877486 () Bool)

(assert (=> b!1372856 (= e!877485 e!877486)))

(declare-fun res!618509 () Bool)

(assert (=> b!1372856 (=> (not res!618509) (not e!877486))))

(assert (=> b!1372856 (= res!618509 (dynLambda!6311 lambda!58202 (h!19291 rules!2550)))))

(declare-fun b!1372857 () Bool)

(assert (=> b!1372857 (= e!877486 (forall!3396 (t!121485 rules!2550) lambda!58202))))

(assert (= (and d!391947 (not res!618508)) b!1372856))

(assert (= (and b!1372856 res!618509) b!1372857))

(declare-fun b_lambda!42085 () Bool)

(assert (=> (not b_lambda!42085) (not b!1372856)))

(declare-fun m!1544043 () Bool)

(assert (=> b!1372856 m!1544043))

(declare-fun m!1544045 () Bool)

(assert (=> b!1372857 m!1544045))

(assert (=> d!390957 d!391947))

(declare-fun d!391949 () Bool)

(declare-fun lt!455893 () Int)

(assert (=> d!391949 (>= lt!455893 0)))

(declare-fun e!877487 () Int)

(assert (=> d!391949 (= lt!455893 e!877487)))

(declare-fun c!225985 () Bool)

(assert (=> d!391949 (= c!225985 ((_ is Nil!13888) (_2!7631 (get!4347 lt!455162))))))

(assert (=> d!391949 (= (size!11399 (_2!7631 (get!4347 lt!455162))) lt!455893)))

(declare-fun b!1372858 () Bool)

(assert (=> b!1372858 (= e!877487 0)))

(declare-fun b!1372859 () Bool)

(assert (=> b!1372859 (= e!877487 (+ 1 (size!11399 (t!121483 (_2!7631 (get!4347 lt!455162))))))))

(assert (= (and d!391949 c!225985) b!1372858))

(assert (= (and d!391949 (not c!225985)) b!1372859))

(declare-fun m!1544047 () Bool)

(assert (=> b!1372859 m!1544047))

(assert (=> b!1371259 d!391949))

(assert (=> b!1371259 d!391857))

(assert (=> b!1371259 d!391615))

(declare-fun d!391951 () Bool)

(assert (=> d!391951 (= (isEmpty!8376 (tail!1982 lt!454961)) ((_ is Nil!13888) (tail!1982 lt!454961)))))

(assert (=> b!1371319 d!391951))

(assert (=> b!1371319 d!391601))

(declare-fun d!391953 () Bool)

(declare-fun lt!455894 () Bool)

(assert (=> d!391953 (= lt!455894 (select (content!2033 (t!121487 (map!3068 rules!2550 lambda!58184))) lt!454964))))

(declare-fun e!877489 () Bool)

(assert (=> d!391953 (= lt!455894 e!877489)))

(declare-fun res!618511 () Bool)

(assert (=> d!391953 (=> (not res!618511) (not e!877489))))

(assert (=> d!391953 (= res!618511 ((_ is Cons!13892) (t!121487 (map!3068 rules!2550 lambda!58184))))))

(assert (=> d!391953 (= (contains!2601 (t!121487 (map!3068 rules!2550 lambda!58184)) lt!454964) lt!455894)))

(declare-fun b!1372860 () Bool)

(declare-fun e!877488 () Bool)

(assert (=> b!1372860 (= e!877489 e!877488)))

(declare-fun res!618510 () Bool)

(assert (=> b!1372860 (=> res!618510 e!877488)))

(assert (=> b!1372860 (= res!618510 (= (h!19293 (t!121487 (map!3068 rules!2550 lambda!58184))) lt!454964))))

(declare-fun b!1372861 () Bool)

(assert (=> b!1372861 (= e!877488 (contains!2601 (t!121487 (t!121487 (map!3068 rules!2550 lambda!58184))) lt!454964))))

(assert (= (and d!391953 res!618511) b!1372860))

(assert (= (and b!1372860 (not res!618510)) b!1372861))

(declare-fun m!1544049 () Bool)

(assert (=> d!391953 m!1544049))

(declare-fun m!1544051 () Bool)

(assert (=> d!391953 m!1544051))

(declare-fun m!1544053 () Bool)

(assert (=> b!1372861 m!1544053))

(assert (=> b!1371423 d!391953))

(declare-fun b!1372862 () Bool)

(declare-fun e!877490 () Option!2668)

(declare-fun call!92185 () Option!2668)

(assert (=> b!1372862 (= e!877490 call!92185)))

(declare-fun b!1372863 () Bool)

(declare-fun res!618515 () Bool)

(declare-fun e!877492 () Bool)

(assert (=> b!1372863 (=> (not res!618515) (not e!877492))))

(declare-fun lt!455899 () Option!2668)

(assert (=> b!1372863 (= res!618515 (matchR!1712 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455899)))) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455899))))))))

(declare-fun b!1372864 () Bool)

(declare-fun e!877491 () Bool)

(assert (=> b!1372864 (= e!877491 e!877492)))

(declare-fun res!618517 () Bool)

(assert (=> b!1372864 (=> (not res!618517) (not e!877492))))

(assert (=> b!1372864 (= res!618517 (isDefined!2219 lt!455899))))

(declare-fun b!1372865 () Bool)

(declare-fun res!618512 () Bool)

(assert (=> b!1372865 (=> (not res!618512) (not e!877492))))

(assert (=> b!1372865 (= res!618512 (= (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455899)))) (originalCharacters!3267 (_1!7631 (get!4347 lt!455899)))))))

(declare-fun b!1372866 () Bool)

(assert (=> b!1372866 (= e!877492 (contains!2599 (t!121485 rules!2550) (rule!4160 (_1!7631 (get!4347 lt!455899)))))))

(declare-fun b!1372867 () Bool)

(declare-fun res!618513 () Bool)

(assert (=> b!1372867 (=> (not res!618513) (not e!877492))))

(assert (=> b!1372867 (= res!618513 (< (size!11399 (_2!7631 (get!4347 lt!455899))) (size!11399 lt!454961)))))

(declare-fun b!1372868 () Bool)

(declare-fun res!618516 () Bool)

(assert (=> b!1372868 (=> (not res!618516) (not e!877492))))

(assert (=> b!1372868 (= res!618516 (= (++!3590 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455899)))) (_2!7631 (get!4347 lt!455899))) lt!454961))))

(declare-fun bm!92180 () Bool)

(assert (=> bm!92180 (= call!92185 (maxPrefixOneRule!617 thiss!19762 (h!19291 (t!121485 rules!2550)) lt!454961))))

(declare-fun d!391955 () Bool)

(assert (=> d!391955 e!877491))

(declare-fun res!618514 () Bool)

(assert (=> d!391955 (=> res!618514 e!877491)))

(assert (=> d!391955 (= res!618514 (isEmpty!8380 lt!455899))))

(assert (=> d!391955 (= lt!455899 e!877490)))

(declare-fun c!225986 () Bool)

(assert (=> d!391955 (= c!225986 (and ((_ is Cons!13890) (t!121485 rules!2550)) ((_ is Nil!13890) (t!121485 (t!121485 rules!2550)))))))

(declare-fun lt!455895 () Unit!20107)

(declare-fun lt!455896 () Unit!20107)

(assert (=> d!391955 (= lt!455895 lt!455896)))

(assert (=> d!391955 (isPrefix!1129 lt!454961 lt!454961)))

(assert (=> d!391955 (= lt!455896 (lemmaIsPrefixRefl!791 lt!454961 lt!454961))))

(assert (=> d!391955 (rulesValidInductive!770 thiss!19762 (t!121485 rules!2550))))

(assert (=> d!391955 (= (maxPrefix!1082 thiss!19762 (t!121485 rules!2550) lt!454961) lt!455899)))

(declare-fun b!1372869 () Bool)

(declare-fun res!618518 () Bool)

(assert (=> b!1372869 (=> (not res!618518) (not e!877492))))

(assert (=> b!1372869 (= res!618518 (= (value!78175 (_1!7631 (get!4347 lt!455899))) (apply!3415 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455899)))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455899)))))))))

(declare-fun b!1372870 () Bool)

(declare-fun lt!455898 () Option!2668)

(declare-fun lt!455897 () Option!2668)

(assert (=> b!1372870 (= e!877490 (ite (and ((_ is None!2667) lt!455898) ((_ is None!2667) lt!455897)) None!2667 (ite ((_ is None!2667) lt!455897) lt!455898 (ite ((_ is None!2667) lt!455898) lt!455897 (ite (>= (size!11391 (_1!7631 (v!21471 lt!455898))) (size!11391 (_1!7631 (v!21471 lt!455897)))) lt!455898 lt!455897)))))))

(assert (=> b!1372870 (= lt!455898 call!92185)))

(assert (=> b!1372870 (= lt!455897 (maxPrefix!1082 thiss!19762 (t!121485 (t!121485 rules!2550)) lt!454961))))

(assert (= (and d!391955 c!225986) b!1372862))

(assert (= (and d!391955 (not c!225986)) b!1372870))

(assert (= (or b!1372862 b!1372870) bm!92180))

(assert (= (and d!391955 (not res!618514)) b!1372864))

(assert (= (and b!1372864 res!618517) b!1372865))

(assert (= (and b!1372865 res!618512) b!1372867))

(assert (= (and b!1372867 res!618513) b!1372868))

(assert (= (and b!1372868 res!618516) b!1372869))

(assert (= (and b!1372869 res!618518) b!1372863))

(assert (= (and b!1372863 res!618515) b!1372866))

(declare-fun m!1544055 () Bool)

(assert (=> b!1372869 m!1544055))

(declare-fun m!1544057 () Bool)

(assert (=> b!1372869 m!1544057))

(assert (=> b!1372869 m!1544057))

(declare-fun m!1544059 () Bool)

(assert (=> b!1372869 m!1544059))

(assert (=> b!1372865 m!1544055))

(declare-fun m!1544061 () Bool)

(assert (=> b!1372865 m!1544061))

(assert (=> b!1372865 m!1544061))

(declare-fun m!1544063 () Bool)

(assert (=> b!1372865 m!1544063))

(declare-fun m!1544065 () Bool)

(assert (=> b!1372870 m!1544065))

(assert (=> b!1372863 m!1544055))

(assert (=> b!1372863 m!1544061))

(assert (=> b!1372863 m!1544061))

(assert (=> b!1372863 m!1544063))

(assert (=> b!1372863 m!1544063))

(declare-fun m!1544067 () Bool)

(assert (=> b!1372863 m!1544067))

(declare-fun m!1544069 () Bool)

(assert (=> d!391955 m!1544069))

(assert (=> d!391955 m!1541657))

(assert (=> d!391955 m!1541659))

(assert (=> d!391955 m!1542801))

(assert (=> b!1372868 m!1544055))

(assert (=> b!1372868 m!1544061))

(assert (=> b!1372868 m!1544061))

(assert (=> b!1372868 m!1544063))

(assert (=> b!1372868 m!1544063))

(declare-fun m!1544071 () Bool)

(assert (=> b!1372868 m!1544071))

(declare-fun m!1544073 () Bool)

(assert (=> b!1372864 m!1544073))

(declare-fun m!1544075 () Bool)

(assert (=> bm!92180 m!1544075))

(assert (=> b!1372866 m!1544055))

(declare-fun m!1544077 () Bool)

(assert (=> b!1372866 m!1544077))

(assert (=> b!1372867 m!1544055))

(declare-fun m!1544079 () Bool)

(assert (=> b!1372867 m!1544079))

(assert (=> b!1372867 m!1541671))

(assert (=> b!1371352 d!391955))

(declare-fun d!391957 () Bool)

(declare-fun lt!455900 () Bool)

(assert (=> d!391957 (= lt!455900 (select (content!2031 (t!121483 lt!454969)) lt!454955))))

(declare-fun e!877493 () Bool)

(assert (=> d!391957 (= lt!455900 e!877493)))

(declare-fun res!618520 () Bool)

(assert (=> d!391957 (=> (not res!618520) (not e!877493))))

(assert (=> d!391957 (= res!618520 ((_ is Cons!13888) (t!121483 lt!454969)))))

(assert (=> d!391957 (= (contains!2600 (t!121483 lt!454969) lt!454955) lt!455900)))

(declare-fun b!1372871 () Bool)

(declare-fun e!877494 () Bool)

(assert (=> b!1372871 (= e!877493 e!877494)))

(declare-fun res!618519 () Bool)

(assert (=> b!1372871 (=> res!618519 e!877494)))

(assert (=> b!1372871 (= res!618519 (= (h!19289 (t!121483 lt!454969)) lt!454955))))

(declare-fun b!1372872 () Bool)

(assert (=> b!1372872 (= e!877494 (contains!2600 (t!121483 (t!121483 lt!454969)) lt!454955))))

(assert (= (and d!391957 res!618520) b!1372871))

(assert (= (and b!1372871 (not res!618519)) b!1372872))

(assert (=> d!391957 m!1542827))

(declare-fun m!1544081 () Bool)

(assert (=> d!391957 m!1544081))

(declare-fun m!1544083 () Bool)

(assert (=> b!1372872 m!1544083))

(assert (=> b!1371037 d!391957))

(declare-fun b!1372874 () Bool)

(declare-fun e!877495 () List!13954)

(assert (=> b!1372874 (= e!877495 (Cons!13888 (h!19289 (t!121483 lt!454961)) (++!3590 (t!121483 (t!121483 lt!454961)) (Cons!13888 lt!454970 Nil!13888))))))

(declare-fun d!391959 () Bool)

(declare-fun e!877496 () Bool)

(assert (=> d!391959 e!877496))

(declare-fun res!618521 () Bool)

(assert (=> d!391959 (=> (not res!618521) (not e!877496))))

(declare-fun lt!455901 () List!13954)

(assert (=> d!391959 (= res!618521 (= (content!2031 lt!455901) ((_ map or) (content!2031 (t!121483 lt!454961)) (content!2031 (Cons!13888 lt!454970 Nil!13888)))))))

(assert (=> d!391959 (= lt!455901 e!877495)))

(declare-fun c!225987 () Bool)

(assert (=> d!391959 (= c!225987 ((_ is Nil!13888) (t!121483 lt!454961)))))

(assert (=> d!391959 (= (++!3590 (t!121483 lt!454961) (Cons!13888 lt!454970 Nil!13888)) lt!455901)))

(declare-fun b!1372875 () Bool)

(declare-fun res!618522 () Bool)

(assert (=> b!1372875 (=> (not res!618522) (not e!877496))))

(assert (=> b!1372875 (= res!618522 (= (size!11399 lt!455901) (+ (size!11399 (t!121483 lt!454961)) (size!11399 (Cons!13888 lt!454970 Nil!13888)))))))

(declare-fun b!1372873 () Bool)

(assert (=> b!1372873 (= e!877495 (Cons!13888 lt!454970 Nil!13888))))

(declare-fun b!1372876 () Bool)

(assert (=> b!1372876 (= e!877496 (or (not (= (Cons!13888 lt!454970 Nil!13888) Nil!13888)) (= lt!455901 (t!121483 lt!454961))))))

(assert (= (and d!391959 c!225987) b!1372873))

(assert (= (and d!391959 (not c!225987)) b!1372874))

(assert (= (and d!391959 res!618521) b!1372875))

(assert (= (and b!1372875 res!618522) b!1372876))

(declare-fun m!1544085 () Bool)

(assert (=> b!1372874 m!1544085))

(declare-fun m!1544087 () Bool)

(assert (=> d!391959 m!1544087))

(assert (=> d!391959 m!1544027))

(assert (=> d!391959 m!1541821))

(declare-fun m!1544089 () Bool)

(assert (=> b!1372875 m!1544089))

(assert (=> b!1372875 m!1543787))

(assert (=> b!1372875 m!1541825))

(assert (=> b!1371443 d!391959))

(assert (=> b!1371341 d!391839))

(assert (=> b!1371341 d!391303))

(declare-fun bs!335893 () Bool)

(declare-fun d!391961 () Bool)

(assert (= bs!335893 (and d!391961 d!391749)))

(declare-fun lambda!58293 () Int)

(assert (=> bs!335893 (= (and (= (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toChars!3531 (transformation!2405 (rule!4160 t2!34)))) (= (toValue!3672 (transformation!2405 (h!19291 rules!2550))) (toValue!3672 (transformation!2405 (rule!4160 t2!34))))) (= lambda!58293 lambda!58276))))

(declare-fun bs!335894 () Bool)

(assert (= bs!335894 (and d!391961 d!391861)))

(assert (=> bs!335894 (= (and (= (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toChars!3531 (transformation!2405 (rule!4160 t1!34)))) (= (toValue!3672 (transformation!2405 (h!19291 rules!2550))) (toValue!3672 (transformation!2405 (rule!4160 t1!34))))) (= lambda!58293 lambda!58284))))

(assert (=> d!391961 true))

(assert (=> d!391961 (< (dynLambda!6321 order!8483 (toChars!3531 (transformation!2405 (h!19291 rules!2550)))) (dynLambda!6322 order!8485 lambda!58293))))

(assert (=> d!391961 true))

(assert (=> d!391961 (< (dynLambda!6323 order!8487 (toValue!3672 (transformation!2405 (h!19291 rules!2550)))) (dynLambda!6322 order!8485 lambda!58293))))

(assert (=> d!391961 (= (semiInverseModEq!928 (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toValue!3672 (transformation!2405 (h!19291 rules!2550)))) (Forall!539 lambda!58293))))

(declare-fun bs!335895 () Bool)

(assert (= bs!335895 d!391961))

(declare-fun m!1544091 () Bool)

(assert (=> bs!335895 m!1544091))

(assert (=> d!390963 d!391961))

(declare-fun b!1372877 () Bool)

(declare-fun e!877498 () tuple2!13486)

(assert (=> b!1372877 (= e!877498 (tuple2!13487 Nil!13891 (_2!7631 (v!21471 lt!455191))))))

(declare-fun b!1372878 () Bool)

(declare-fun lt!455903 () Option!2668)

(declare-fun lt!455904 () tuple2!13486)

(assert (=> b!1372878 (= e!877498 (tuple2!13487 (Cons!13891 (_1!7631 (v!21471 lt!455903)) (_1!7629 lt!455904)) (_2!7629 lt!455904)))))

(assert (=> b!1372878 (= lt!455904 (lexList!618 thiss!19762 rules!2550 (_2!7631 (v!21471 lt!455903))))))

(declare-fun b!1372879 () Bool)

(declare-fun e!877499 () Bool)

(declare-fun lt!455902 () tuple2!13486)

(assert (=> b!1372879 (= e!877499 (not (isEmpty!8381 (_1!7629 lt!455902))))))

(declare-fun b!1372880 () Bool)

(declare-fun e!877497 () Bool)

(assert (=> b!1372880 (= e!877497 e!877499)))

(declare-fun res!618523 () Bool)

(assert (=> b!1372880 (= res!618523 (< (size!11399 (_2!7629 lt!455902)) (size!11399 (_2!7631 (v!21471 lt!455191)))))))

(assert (=> b!1372880 (=> (not res!618523) (not e!877499))))

(declare-fun b!1372881 () Bool)

(assert (=> b!1372881 (= e!877497 (= (_2!7629 lt!455902) (_2!7631 (v!21471 lt!455191))))))

(declare-fun d!391963 () Bool)

(assert (=> d!391963 e!877497))

(declare-fun c!225989 () Bool)

(assert (=> d!391963 (= c!225989 (> (size!11402 (_1!7629 lt!455902)) 0))))

(assert (=> d!391963 (= lt!455902 e!877498)))

(declare-fun c!225988 () Bool)

(assert (=> d!391963 (= c!225988 ((_ is Some!2667) lt!455903))))

(assert (=> d!391963 (= lt!455903 (maxPrefix!1082 thiss!19762 rules!2550 (_2!7631 (v!21471 lt!455191))))))

(assert (=> d!391963 (= (lexList!618 thiss!19762 rules!2550 (_2!7631 (v!21471 lt!455191))) lt!455902)))

(assert (= (and d!391963 c!225988) b!1372878))

(assert (= (and d!391963 (not c!225988)) b!1372877))

(assert (= (and d!391963 c!225989) b!1372880))

(assert (= (and d!391963 (not c!225989)) b!1372881))

(assert (= (and b!1372880 res!618523) b!1372879))

(declare-fun m!1544093 () Bool)

(assert (=> b!1372878 m!1544093))

(declare-fun m!1544095 () Bool)

(assert (=> b!1372879 m!1544095))

(declare-fun m!1544097 () Bool)

(assert (=> b!1372880 m!1544097))

(declare-fun m!1544099 () Bool)

(assert (=> b!1372880 m!1544099))

(declare-fun m!1544101 () Bool)

(assert (=> d!391963 m!1544101))

(declare-fun m!1544103 () Bool)

(assert (=> d!391963 m!1544103))

(assert (=> b!1371364 d!391963))

(declare-fun d!391965 () Bool)

(assert (=> d!391965 (= (isEmpty!8376 (originalCharacters!3267 t2!34)) ((_ is Nil!13888) (originalCharacters!3267 t2!34)))))

(assert (=> d!391161 d!391965))

(declare-fun d!391967 () Bool)

(declare-fun lt!455905 () Int)

(assert (=> d!391967 (= lt!455905 (size!11399 (list!5350 lt!454963)))))

(assert (=> d!391967 (= lt!455905 (size!11400 (c!225513 lt!454963)))))

(assert (=> d!391967 (= (size!11392 lt!454963) lt!455905)))

(declare-fun bs!335896 () Bool)

(assert (= bs!335896 d!391967))

(assert (=> bs!335896 m!1540885))

(assert (=> bs!335896 m!1540885))

(assert (=> bs!335896 m!1543911))

(assert (=> bs!335896 m!1543921))

(assert (=> b!1371042 d!391967))

(declare-fun b!1372882 () Bool)

(declare-fun e!877500 () Option!2668)

(declare-fun call!92186 () Option!2668)

(assert (=> b!1372882 (= e!877500 call!92186)))

(declare-fun b!1372883 () Bool)

(declare-fun res!618527 () Bool)

(declare-fun e!877502 () Bool)

(assert (=> b!1372883 (=> (not res!618527) (not e!877502))))

(declare-fun lt!455910 () Option!2668)

(assert (=> b!1372883 (= res!618527 (matchR!1712 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455910)))) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455910))))))))

(declare-fun b!1372884 () Bool)

(declare-fun e!877501 () Bool)

(assert (=> b!1372884 (= e!877501 e!877502)))

(declare-fun res!618529 () Bool)

(assert (=> b!1372884 (=> (not res!618529) (not e!877502))))

(assert (=> b!1372884 (= res!618529 (isDefined!2219 lt!455910))))

(declare-fun b!1372885 () Bool)

(declare-fun res!618524 () Bool)

(assert (=> b!1372885 (=> (not res!618524) (not e!877502))))

(assert (=> b!1372885 (= res!618524 (= (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455910)))) (originalCharacters!3267 (_1!7631 (get!4347 lt!455910)))))))

(declare-fun b!1372886 () Bool)

(assert (=> b!1372886 (= e!877502 (contains!2599 (t!121485 rules!2550) (rule!4160 (_1!7631 (get!4347 lt!455910)))))))

(declare-fun b!1372887 () Bool)

(declare-fun res!618525 () Bool)

(assert (=> b!1372887 (=> (not res!618525) (not e!877502))))

(assert (=> b!1372887 (= res!618525 (< (size!11399 (_2!7631 (get!4347 lt!455910))) (size!11399 (list!5350 lt!454959))))))

(declare-fun b!1372888 () Bool)

(declare-fun res!618528 () Bool)

(assert (=> b!1372888 (=> (not res!618528) (not e!877502))))

(assert (=> b!1372888 (= res!618528 (= (++!3590 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455910)))) (_2!7631 (get!4347 lt!455910))) (list!5350 lt!454959)))))

(declare-fun bm!92181 () Bool)

(assert (=> bm!92181 (= call!92186 (maxPrefixOneRule!617 thiss!19762 (h!19291 (t!121485 rules!2550)) (list!5350 lt!454959)))))

(declare-fun d!391969 () Bool)

(assert (=> d!391969 e!877501))

(declare-fun res!618526 () Bool)

(assert (=> d!391969 (=> res!618526 e!877501)))

(assert (=> d!391969 (= res!618526 (isEmpty!8380 lt!455910))))

(assert (=> d!391969 (= lt!455910 e!877500)))

(declare-fun c!225990 () Bool)

(assert (=> d!391969 (= c!225990 (and ((_ is Cons!13890) (t!121485 rules!2550)) ((_ is Nil!13890) (t!121485 (t!121485 rules!2550)))))))

(declare-fun lt!455906 () Unit!20107)

(declare-fun lt!455907 () Unit!20107)

(assert (=> d!391969 (= lt!455906 lt!455907)))

(assert (=> d!391969 (isPrefix!1129 (list!5350 lt!454959) (list!5350 lt!454959))))

(assert (=> d!391969 (= lt!455907 (lemmaIsPrefixRefl!791 (list!5350 lt!454959) (list!5350 lt!454959)))))

(assert (=> d!391969 (rulesValidInductive!770 thiss!19762 (t!121485 rules!2550))))

(assert (=> d!391969 (= (maxPrefix!1082 thiss!19762 (t!121485 rules!2550) (list!5350 lt!454959)) lt!455910)))

(declare-fun b!1372889 () Bool)

(declare-fun res!618530 () Bool)

(assert (=> b!1372889 (=> (not res!618530) (not e!877502))))

(assert (=> b!1372889 (= res!618530 (= (value!78175 (_1!7631 (get!4347 lt!455910))) (apply!3415 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455910)))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455910)))))))))

(declare-fun b!1372890 () Bool)

(declare-fun lt!455909 () Option!2668)

(declare-fun lt!455908 () Option!2668)

(assert (=> b!1372890 (= e!877500 (ite (and ((_ is None!2667) lt!455909) ((_ is None!2667) lt!455908)) None!2667 (ite ((_ is None!2667) lt!455908) lt!455909 (ite ((_ is None!2667) lt!455909) lt!455908 (ite (>= (size!11391 (_1!7631 (v!21471 lt!455909))) (size!11391 (_1!7631 (v!21471 lt!455908)))) lt!455909 lt!455908)))))))

(assert (=> b!1372890 (= lt!455909 call!92186)))

(assert (=> b!1372890 (= lt!455908 (maxPrefix!1082 thiss!19762 (t!121485 (t!121485 rules!2550)) (list!5350 lt!454959)))))

(assert (= (and d!391969 c!225990) b!1372882))

(assert (= (and d!391969 (not c!225990)) b!1372890))

(assert (= (or b!1372882 b!1372890) bm!92181))

(assert (= (and d!391969 (not res!618526)) b!1372884))

(assert (= (and b!1372884 res!618529) b!1372885))

(assert (= (and b!1372885 res!618524) b!1372887))

(assert (= (and b!1372887 res!618525) b!1372888))

(assert (= (and b!1372888 res!618528) b!1372889))

(assert (= (and b!1372889 res!618530) b!1372883))

(assert (= (and b!1372883 res!618527) b!1372886))

(declare-fun m!1544105 () Bool)

(assert (=> b!1372889 m!1544105))

(declare-fun m!1544107 () Bool)

(assert (=> b!1372889 m!1544107))

(assert (=> b!1372889 m!1544107))

(declare-fun m!1544109 () Bool)

(assert (=> b!1372889 m!1544109))

(assert (=> b!1372885 m!1544105))

(declare-fun m!1544111 () Bool)

(assert (=> b!1372885 m!1544111))

(assert (=> b!1372885 m!1544111))

(declare-fun m!1544113 () Bool)

(assert (=> b!1372885 m!1544113))

(assert (=> b!1372890 m!1540839))

(declare-fun m!1544115 () Bool)

(assert (=> b!1372890 m!1544115))

(assert (=> b!1372883 m!1544105))

(assert (=> b!1372883 m!1544111))

(assert (=> b!1372883 m!1544111))

(assert (=> b!1372883 m!1544113))

(assert (=> b!1372883 m!1544113))

(declare-fun m!1544117 () Bool)

(assert (=> b!1372883 m!1544117))

(declare-fun m!1544119 () Bool)

(assert (=> d!391969 m!1544119))

(assert (=> d!391969 m!1540839))

(assert (=> d!391969 m!1540839))

(assert (=> d!391969 m!1541539))

(assert (=> d!391969 m!1540839))

(assert (=> d!391969 m!1540839))

(assert (=> d!391969 m!1541541))

(assert (=> d!391969 m!1542801))

(assert (=> b!1372888 m!1544105))

(assert (=> b!1372888 m!1544111))

(assert (=> b!1372888 m!1544111))

(assert (=> b!1372888 m!1544113))

(assert (=> b!1372888 m!1544113))

(declare-fun m!1544121 () Bool)

(assert (=> b!1372888 m!1544121))

(declare-fun m!1544123 () Bool)

(assert (=> b!1372884 m!1544123))

(assert (=> bm!92181 m!1540839))

(declare-fun m!1544125 () Bool)

(assert (=> bm!92181 m!1544125))

(assert (=> b!1372886 m!1544105))

(declare-fun m!1544127 () Bool)

(assert (=> b!1372886 m!1544127))

(assert (=> b!1372887 m!1544105))

(declare-fun m!1544129 () Bool)

(assert (=> b!1372887 m!1544129))

(assert (=> b!1372887 m!1540839))

(assert (=> b!1372887 m!1541147))

(assert (=> b!1371262 d!391969))

(declare-fun d!391971 () Bool)

(declare-fun c!225993 () Bool)

(assert (=> d!391971 (= c!225993 ((_ is Nil!13892) (map!3068 rules!2550 lambda!58184)))))

(declare-fun e!877505 () (InoxSet Regex!3719))

(assert (=> d!391971 (= (content!2033 (map!3068 rules!2550 lambda!58184)) e!877505)))

(declare-fun b!1372895 () Bool)

(assert (=> b!1372895 (= e!877505 ((as const (Array Regex!3719 Bool)) false))))

(declare-fun b!1372896 () Bool)

(assert (=> b!1372896 (= e!877505 ((_ map or) (store ((as const (Array Regex!3719 Bool)) false) (h!19293 (map!3068 rules!2550 lambda!58184)) true) (content!2033 (t!121487 (map!3068 rules!2550 lambda!58184)))))))

(assert (= (and d!391971 c!225993) b!1372895))

(assert (= (and d!391971 (not c!225993)) b!1372896))

(declare-fun m!1544131 () Bool)

(assert (=> b!1372896 m!1544131))

(assert (=> b!1372896 m!1544049))

(assert (=> d!391163 d!391971))

(declare-fun d!391973 () Bool)

(declare-fun lt!455911 () Bool)

(assert (=> d!391973 (= lt!455911 (isEmpty!8376 (list!5350 (_2!7630 lt!455045))))))

(assert (=> d!391973 (= lt!455911 (isEmpty!8377 (c!225513 (_2!7630 lt!455045))))))

(assert (=> d!391973 (= (isEmpty!8370 (_2!7630 lt!455045)) lt!455911)))

(declare-fun bs!335897 () Bool)

(assert (= bs!335897 d!391973))

(declare-fun m!1544133 () Bool)

(assert (=> bs!335897 m!1544133))

(assert (=> bs!335897 m!1544133))

(declare-fun m!1544135 () Bool)

(assert (=> bs!335897 m!1544135))

(declare-fun m!1544137 () Bool)

(assert (=> bs!335897 m!1544137))

(assert (=> b!1370973 d!391973))

(assert (=> b!1371314 d!391599))

(declare-fun d!391975 () Bool)

(declare-fun lt!455912 () Bool)

(assert (=> d!391975 (= lt!455912 (select (content!2032 rules!2550) (rule!4160 (_1!7631 (get!4347 lt!455183)))))))

(declare-fun e!877507 () Bool)

(assert (=> d!391975 (= lt!455912 e!877507)))

(declare-fun res!618532 () Bool)

(assert (=> d!391975 (=> (not res!618532) (not e!877507))))

(assert (=> d!391975 (= res!618532 ((_ is Cons!13890) rules!2550))))

(assert (=> d!391975 (= (contains!2599 rules!2550 (rule!4160 (_1!7631 (get!4347 lt!455183)))) lt!455912)))

(declare-fun b!1372897 () Bool)

(declare-fun e!877506 () Bool)

(assert (=> b!1372897 (= e!877507 e!877506)))

(declare-fun res!618531 () Bool)

(assert (=> b!1372897 (=> res!618531 e!877506)))

(assert (=> b!1372897 (= res!618531 (= (h!19291 rules!2550) (rule!4160 (_1!7631 (get!4347 lt!455183)))))))

(declare-fun b!1372898 () Bool)

(assert (=> b!1372898 (= e!877506 (contains!2599 (t!121485 rules!2550) (rule!4160 (_1!7631 (get!4347 lt!455183)))))))

(assert (= (and d!391975 res!618532) b!1372897))

(assert (= (and b!1372897 (not res!618531)) b!1372898))

(assert (=> d!391975 m!1541221))

(declare-fun m!1544139 () Bool)

(assert (=> d!391975 m!1544139))

(declare-fun m!1544141 () Bool)

(assert (=> b!1372898 m!1544141))

(assert (=> b!1371348 d!391975))

(assert (=> b!1371348 d!391685))

(declare-fun d!391977 () Bool)

(declare-fun res!618533 () Bool)

(declare-fun e!877508 () Bool)

(assert (=> d!391977 (=> res!618533 e!877508)))

(assert (=> d!391977 (= res!618533 ((_ is Nil!13892) (map!3068 rules!2550 lambda!58184)))))

(assert (=> d!391977 (= (forall!3398 (map!3068 rules!2550 lambda!58184) lambda!58228) e!877508)))

(declare-fun b!1372899 () Bool)

(declare-fun e!877509 () Bool)

(assert (=> b!1372899 (= e!877508 e!877509)))

(declare-fun res!618534 () Bool)

(assert (=> b!1372899 (=> (not res!618534) (not e!877509))))

(assert (=> b!1372899 (= res!618534 (dynLambda!6316 lambda!58228 (h!19293 (map!3068 rules!2550 lambda!58184))))))

(declare-fun b!1372900 () Bool)

(assert (=> b!1372900 (= e!877509 (forall!3398 (t!121487 (map!3068 rules!2550 lambda!58184)) lambda!58228))))

(assert (= (and d!391977 (not res!618533)) b!1372899))

(assert (= (and b!1372899 res!618534) b!1372900))

(declare-fun b_lambda!42087 () Bool)

(assert (=> (not b_lambda!42087) (not b!1372899)))

(declare-fun m!1544143 () Bool)

(assert (=> b!1372899 m!1544143))

(declare-fun m!1544145 () Bool)

(assert (=> b!1372900 m!1544145))

(assert (=> d!391143 d!391977))

(declare-fun d!391979 () Bool)

(declare-fun charsToInt!0 (List!13955) (_ BitVec 32))

(assert (=> d!391979 (= (inv!16 (value!78175 t1!34)) (= (charsToInt!0 (text!17912 (value!78175 t1!34))) (value!78166 (value!78175 t1!34))))))

(declare-fun bs!335898 () Bool)

(assert (= bs!335898 d!391979))

(declare-fun m!1544147 () Bool)

(assert (=> bs!335898 m!1544147))

(assert (=> b!1371278 d!391979))

(declare-fun d!391981 () Bool)

(declare-fun nullableFct!281 (Regex!3719) Bool)

(assert (=> d!391981 (= (nullable!1199 lt!454967) (nullableFct!281 lt!454967))))

(declare-fun bs!335899 () Bool)

(assert (= bs!335899 d!391981))

(declare-fun m!1544149 () Bool)

(assert (=> bs!335899 m!1544149))

(assert (=> b!1371336 d!391981))

(declare-fun d!391983 () Bool)

(declare-fun res!618535 () Bool)

(declare-fun e!877510 () Bool)

(assert (=> d!391983 (=> res!618535 e!877510)))

(assert (=> d!391983 (= res!618535 ((_ is Nil!13892) lt!454962))))

(assert (=> d!391983 (= (forall!3398 lt!454962 lambda!58221) e!877510)))

(declare-fun b!1372901 () Bool)

(declare-fun e!877511 () Bool)

(assert (=> b!1372901 (= e!877510 e!877511)))

(declare-fun res!618536 () Bool)

(assert (=> b!1372901 (=> (not res!618536) (not e!877511))))

(assert (=> b!1372901 (= res!618536 (dynLambda!6316 lambda!58221 (h!19293 lt!454962)))))

(declare-fun b!1372902 () Bool)

(assert (=> b!1372902 (= e!877511 (forall!3398 (t!121487 lt!454962) lambda!58221))))

(assert (= (and d!391983 (not res!618535)) b!1372901))

(assert (= (and b!1372901 res!618536) b!1372902))

(declare-fun b_lambda!42089 () Bool)

(assert (=> (not b_lambda!42089) (not b!1372901)))

(declare-fun m!1544151 () Bool)

(assert (=> b!1372901 m!1544151))

(declare-fun m!1544153 () Bool)

(assert (=> b!1372902 m!1544153))

(assert (=> d!391137 d!391983))

(declare-fun d!391985 () Bool)

(declare-fun lt!455913 () Bool)

(assert (=> d!391985 (= lt!455913 (isEmpty!8381 (list!5351 (_1!7630 lt!455193))))))

(assert (=> d!391985 (= lt!455913 (isEmpty!8384 (c!225514 (_1!7630 lt!455193))))))

(assert (=> d!391985 (= (isEmpty!8378 (_1!7630 lt!455193)) lt!455913)))

(declare-fun bs!335900 () Bool)

(assert (= bs!335900 d!391985))

(assert (=> bs!335900 m!1541689))

(assert (=> bs!335900 m!1541689))

(declare-fun m!1544155 () Bool)

(assert (=> bs!335900 m!1544155))

(declare-fun m!1544157 () Bool)

(assert (=> bs!335900 m!1544157))

(assert (=> b!1371369 d!391985))

(declare-fun d!391987 () Bool)

(declare-fun res!618537 () Bool)

(declare-fun e!877512 () Bool)

(assert (=> d!391987 (=> (not res!618537) (not e!877512))))

(assert (=> d!391987 (= res!618537 (validRegex!1619 (regex!2405 (rule!4160 t1!34))))))

(assert (=> d!391987 (= (ruleValid!592 thiss!19762 (rule!4160 t1!34)) e!877512)))

(declare-fun b!1372903 () Bool)

(declare-fun res!618538 () Bool)

(assert (=> b!1372903 (=> (not res!618538) (not e!877512))))

(assert (=> b!1372903 (= res!618538 (not (nullable!1199 (regex!2405 (rule!4160 t1!34)))))))

(declare-fun b!1372904 () Bool)

(assert (=> b!1372904 (= e!877512 (not (= (tag!2667 (rule!4160 t1!34)) (String!16712 ""))))))

(assert (= (and d!391987 res!618537) b!1372903))

(assert (= (and b!1372903 res!618538) b!1372904))

(assert (=> d!391987 m!1541593))

(assert (=> b!1372903 m!1541589))

(assert (=> bs!335671 d!391987))

(declare-fun d!391989 () Bool)

(declare-fun lt!455914 () Bool)

(assert (=> d!391989 (= lt!455914 (select (content!2032 rules!2550) (rule!4160 (_1!7631 (get!4347 lt!455162)))))))

(declare-fun e!877514 () Bool)

(assert (=> d!391989 (= lt!455914 e!877514)))

(declare-fun res!618540 () Bool)

(assert (=> d!391989 (=> (not res!618540) (not e!877514))))

(assert (=> d!391989 (= res!618540 ((_ is Cons!13890) rules!2550))))

(assert (=> d!391989 (= (contains!2599 rules!2550 (rule!4160 (_1!7631 (get!4347 lt!455162)))) lt!455914)))

(declare-fun b!1372905 () Bool)

(declare-fun e!877513 () Bool)

(assert (=> b!1372905 (= e!877514 e!877513)))

(declare-fun res!618539 () Bool)

(assert (=> b!1372905 (=> res!618539 e!877513)))

(assert (=> b!1372905 (= res!618539 (= (h!19291 rules!2550) (rule!4160 (_1!7631 (get!4347 lt!455162)))))))

(declare-fun b!1372906 () Bool)

(assert (=> b!1372906 (= e!877513 (contains!2599 (t!121485 rules!2550) (rule!4160 (_1!7631 (get!4347 lt!455162)))))))

(assert (= (and d!391989 res!618540) b!1372905))

(assert (= (and b!1372905 (not res!618539)) b!1372906))

(assert (=> d!391989 m!1541221))

(declare-fun m!1544159 () Bool)

(assert (=> d!391989 m!1544159))

(declare-fun m!1544161 () Bool)

(assert (=> b!1372906 m!1544161))

(assert (=> b!1371258 d!391989))

(assert (=> b!1371258 d!391857))

(assert (=> b!1371318 d!391599))

(declare-fun d!391991 () Bool)

(assert (=> d!391991 (= (inv!15 (value!78175 t2!34)) (= (charsToBigInt!0 (text!17914 (value!78175 t2!34)) 0) (value!78170 (value!78175 t2!34))))))

(declare-fun bs!335901 () Bool)

(assert (= bs!335901 d!391991))

(declare-fun m!1544163 () Bool)

(assert (=> bs!335901 m!1544163))

(assert (=> b!1371026 d!391991))

(declare-fun d!391993 () Bool)

(assert (=> d!391993 (= (list!5351 (_1!7630 lt!455107)) (list!5354 (c!225514 (_1!7630 lt!455107))))))

(declare-fun bs!335902 () Bool)

(assert (= bs!335902 d!391993))

(declare-fun m!1544165 () Bool)

(assert (=> bs!335902 m!1544165))

(assert (=> b!1371103 d!391993))

(assert (=> b!1371103 d!391125))

(assert (=> b!1371103 d!391127))

(declare-fun b!1372908 () Bool)

(declare-fun e!877515 () List!13954)

(declare-fun e!877516 () List!13954)

(assert (=> b!1372908 (= e!877515 e!877516)))

(declare-fun c!225995 () Bool)

(assert (=> b!1372908 (= c!225995 ((_ is Leaf!6971) (c!225513 lt!454972)))))

(declare-fun b!1372910 () Bool)

(assert (=> b!1372910 (= e!877516 (++!3590 (list!5355 (left!11884 (c!225513 lt!454972))) (list!5355 (right!12214 (c!225513 lt!454972)))))))

(declare-fun d!391995 () Bool)

(declare-fun c!225994 () Bool)

(assert (=> d!391995 (= c!225994 ((_ is Empty!4572) (c!225513 lt!454972)))))

(assert (=> d!391995 (= (list!5355 (c!225513 lt!454972)) e!877515)))

(declare-fun b!1372907 () Bool)

(assert (=> b!1372907 (= e!877515 Nil!13888)))

(declare-fun b!1372909 () Bool)

(assert (=> b!1372909 (= e!877516 (list!5358 (xs!7299 (c!225513 lt!454972))))))

(assert (= (and d!391995 c!225994) b!1372907))

(assert (= (and d!391995 (not c!225994)) b!1372908))

(assert (= (and b!1372908 c!225995) b!1372909))

(assert (= (and b!1372908 (not c!225995)) b!1372910))

(declare-fun m!1544167 () Bool)

(assert (=> b!1372910 m!1544167))

(declare-fun m!1544169 () Bool)

(assert (=> b!1372910 m!1544169))

(assert (=> b!1372910 m!1544167))

(assert (=> b!1372910 m!1544169))

(declare-fun m!1544171 () Bool)

(assert (=> b!1372910 m!1544171))

(declare-fun m!1544173 () Bool)

(assert (=> b!1372909 m!1544173))

(assert (=> d!391149 d!391995))

(declare-fun d!391997 () Bool)

(assert (=> d!391997 (= (inv!18241 (tag!2667 (h!19291 (t!121485 rules!2550)))) (= (mod (str.len (value!78174 (tag!2667 (h!19291 (t!121485 rules!2550))))) 2) 0))))

(assert (=> b!1371482 d!391997))

(declare-fun d!391999 () Bool)

(declare-fun res!618541 () Bool)

(declare-fun e!877517 () Bool)

(assert (=> d!391999 (=> (not res!618541) (not e!877517))))

(assert (=> d!391999 (= res!618541 (semiInverseModEq!928 (toChars!3531 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toValue!3672 (transformation!2405 (h!19291 (t!121485 rules!2550))))))))

(assert (=> d!391999 (= (inv!18244 (transformation!2405 (h!19291 (t!121485 rules!2550)))) e!877517)))

(declare-fun b!1372911 () Bool)

(assert (=> b!1372911 (= e!877517 (equivClasses!887 (toChars!3531 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toValue!3672 (transformation!2405 (h!19291 (t!121485 rules!2550))))))))

(assert (= (and d!391999 res!618541) b!1372911))

(declare-fun m!1544175 () Bool)

(assert (=> d!391999 m!1544175))

(declare-fun m!1544177 () Bool)

(assert (=> b!1372911 m!1544177))

(assert (=> b!1371482 d!391999))

(declare-fun d!392001 () Bool)

(declare-fun res!618545 () Bool)

(declare-fun e!877518 () Bool)

(assert (=> d!392001 (=> res!618545 e!877518)))

(assert (=> d!392001 (= res!618545 (not ((_ is Node!4573) (c!225514 lt!455195))))))

(assert (=> d!392001 (= (isBalanced!1346 (c!225514 lt!455195)) e!877518)))

(declare-fun b!1372912 () Bool)

(declare-fun e!877519 () Bool)

(assert (=> b!1372912 (= e!877519 (not (isEmpty!8384 (right!12215 (c!225514 lt!455195)))))))

(declare-fun b!1372913 () Bool)

(declare-fun res!618543 () Bool)

(assert (=> b!1372913 (=> (not res!618543) (not e!877519))))

(assert (=> b!1372913 (= res!618543 (isBalanced!1346 (right!12215 (c!225514 lt!455195))))))

(declare-fun b!1372914 () Bool)

(declare-fun res!618542 () Bool)

(assert (=> b!1372914 (=> (not res!618542) (not e!877519))))

(assert (=> b!1372914 (= res!618542 (<= (- (height!665 (left!11885 (c!225514 lt!455195))) (height!665 (right!12215 (c!225514 lt!455195)))) 1))))

(declare-fun b!1372915 () Bool)

(assert (=> b!1372915 (= e!877518 e!877519)))

(declare-fun res!618546 () Bool)

(assert (=> b!1372915 (=> (not res!618546) (not e!877519))))

(assert (=> b!1372915 (= res!618546 (<= (- 1) (- (height!665 (left!11885 (c!225514 lt!455195))) (height!665 (right!12215 (c!225514 lt!455195))))))))

(declare-fun b!1372916 () Bool)

(declare-fun res!618547 () Bool)

(assert (=> b!1372916 (=> (not res!618547) (not e!877519))))

(assert (=> b!1372916 (= res!618547 (not (isEmpty!8384 (left!11885 (c!225514 lt!455195)))))))

(declare-fun b!1372917 () Bool)

(declare-fun res!618544 () Bool)

(assert (=> b!1372917 (=> (not res!618544) (not e!877519))))

(assert (=> b!1372917 (= res!618544 (isBalanced!1346 (left!11885 (c!225514 lt!455195))))))

(assert (= (and d!392001 (not res!618545)) b!1372915))

(assert (= (and b!1372915 res!618546) b!1372914))

(assert (= (and b!1372914 res!618542) b!1372917))

(assert (= (and b!1372917 res!618544) b!1372913))

(assert (= (and b!1372913 res!618543) b!1372916))

(assert (= (and b!1372916 res!618547) b!1372912))

(declare-fun m!1544179 () Bool)

(assert (=> b!1372917 m!1544179))

(declare-fun m!1544181 () Bool)

(assert (=> b!1372915 m!1544181))

(declare-fun m!1544183 () Bool)

(assert (=> b!1372915 m!1544183))

(declare-fun m!1544185 () Bool)

(assert (=> b!1372912 m!1544185))

(assert (=> b!1372914 m!1544181))

(assert (=> b!1372914 m!1544183))

(declare-fun m!1544187 () Bool)

(assert (=> b!1372916 m!1544187))

(declare-fun m!1544189 () Bool)

(assert (=> b!1372913 m!1544189))

(assert (=> b!1371373 d!392001))

(declare-fun d!392003 () Bool)

(declare-fun c!225996 () Bool)

(assert (=> d!392003 (= c!225996 (isEmpty!8376 (tail!1982 lt!454969)))))

(declare-fun e!877520 () Bool)

(assert (=> d!392003 (= (prefixMatch!228 (derivativeStep!957 lt!454967 (head!2469 lt!454969)) (tail!1982 lt!454969)) e!877520)))

(declare-fun b!1372918 () Bool)

(assert (=> b!1372918 (= e!877520 (not (lostCause!333 (derivativeStep!957 lt!454967 (head!2469 lt!454969)))))))

(declare-fun b!1372919 () Bool)

(assert (=> b!1372919 (= e!877520 (prefixMatch!228 (derivativeStep!957 (derivativeStep!957 lt!454967 (head!2469 lt!454969)) (head!2469 (tail!1982 lt!454969))) (tail!1982 (tail!1982 lt!454969))))))

(assert (= (and d!392003 c!225996) b!1372918))

(assert (= (and d!392003 (not c!225996)) b!1372919))

(assert (=> d!392003 m!1541835))

(declare-fun m!1544191 () Bool)

(assert (=> d!392003 m!1544191))

(assert (=> b!1372918 m!1541833))

(declare-fun m!1544193 () Bool)

(assert (=> b!1372918 m!1544193))

(assert (=> b!1372919 m!1541835))

(declare-fun m!1544195 () Bool)

(assert (=> b!1372919 m!1544195))

(assert (=> b!1372919 m!1541833))

(assert (=> b!1372919 m!1544195))

(declare-fun m!1544197 () Bool)

(assert (=> b!1372919 m!1544197))

(assert (=> b!1372919 m!1541835))

(declare-fun m!1544199 () Bool)

(assert (=> b!1372919 m!1544199))

(assert (=> b!1372919 m!1544197))

(assert (=> b!1372919 m!1544199))

(declare-fun m!1544201 () Bool)

(assert (=> b!1372919 m!1544201))

(assert (=> b!1371451 d!392003))

(declare-fun b!1372920 () Bool)

(declare-fun e!877521 () Regex!3719)

(declare-fun e!877522 () Regex!3719)

(assert (=> b!1372920 (= e!877521 e!877522)))

(declare-fun c!225999 () Bool)

(assert (=> b!1372920 (= c!225999 ((_ is ElementMatch!3719) lt!454967))))

(declare-fun c!226001 () Bool)

(declare-fun call!92187 () Regex!3719)

(declare-fun bm!92182 () Bool)

(assert (=> bm!92182 (= call!92187 (derivativeStep!957 (ite c!226001 (regTwo!7951 lt!454967) (regOne!7950 lt!454967)) (head!2469 lt!454969)))))

(declare-fun c!226000 () Bool)

(declare-fun bm!92183 () Bool)

(declare-fun call!92188 () Regex!3719)

(declare-fun c!225997 () Bool)

(assert (=> bm!92183 (= call!92188 (derivativeStep!957 (ite c!226001 (regOne!7951 lt!454967) (ite c!226000 (reg!4048 lt!454967) (ite c!225997 (regTwo!7950 lt!454967) (regOne!7950 lt!454967)))) (head!2469 lt!454969)))))

(declare-fun b!1372921 () Bool)

(assert (=> b!1372921 (= e!877521 EmptyLang!3719)))

(declare-fun b!1372922 () Bool)

(declare-fun e!877523 () Regex!3719)

(declare-fun call!92189 () Regex!3719)

(assert (=> b!1372922 (= e!877523 (Concat!6214 call!92189 lt!454967))))

(declare-fun b!1372923 () Bool)

(declare-fun call!92190 () Regex!3719)

(declare-fun e!877525 () Regex!3719)

(assert (=> b!1372923 (= e!877525 (Union!3719 (Concat!6214 call!92187 (regTwo!7950 lt!454967)) call!92190))))

(declare-fun b!1372924 () Bool)

(assert (=> b!1372924 (= e!877525 (Union!3719 (Concat!6214 call!92190 (regTwo!7950 lt!454967)) EmptyLang!3719))))

(declare-fun bm!92184 () Bool)

(assert (=> bm!92184 (= call!92189 call!92188)))

(declare-fun d!392005 () Bool)

(declare-fun lt!455915 () Regex!3719)

(assert (=> d!392005 (validRegex!1619 lt!455915)))

(assert (=> d!392005 (= lt!455915 e!877521)))

(declare-fun c!225998 () Bool)

(assert (=> d!392005 (= c!225998 (or ((_ is EmptyExpr!3719) lt!454967) ((_ is EmptyLang!3719) lt!454967)))))

(assert (=> d!392005 (validRegex!1619 lt!454967)))

(assert (=> d!392005 (= (derivativeStep!957 lt!454967 (head!2469 lt!454969)) lt!455915)))

(declare-fun b!1372925 () Bool)

(assert (=> b!1372925 (= e!877522 (ite (= (head!2469 lt!454969) (c!225512 lt!454967)) EmptyExpr!3719 EmptyLang!3719))))

(declare-fun bm!92185 () Bool)

(assert (=> bm!92185 (= call!92190 call!92189)))

(declare-fun b!1372926 () Bool)

(assert (=> b!1372926 (= c!225997 (nullable!1199 (regOne!7950 lt!454967)))))

(assert (=> b!1372926 (= e!877523 e!877525)))

(declare-fun b!1372927 () Bool)

(declare-fun e!877524 () Regex!3719)

(assert (=> b!1372927 (= e!877524 e!877523)))

(assert (=> b!1372927 (= c!226000 ((_ is Star!3719) lt!454967))))

(declare-fun b!1372928 () Bool)

(assert (=> b!1372928 (= c!226001 ((_ is Union!3719) lt!454967))))

(assert (=> b!1372928 (= e!877522 e!877524)))

(declare-fun b!1372929 () Bool)

(assert (=> b!1372929 (= e!877524 (Union!3719 call!92188 call!92187))))

(assert (= (and d!392005 c!225998) b!1372921))

(assert (= (and d!392005 (not c!225998)) b!1372920))

(assert (= (and b!1372920 c!225999) b!1372925))

(assert (= (and b!1372920 (not c!225999)) b!1372928))

(assert (= (and b!1372928 c!226001) b!1372929))

(assert (= (and b!1372928 (not c!226001)) b!1372927))

(assert (= (and b!1372927 c!226000) b!1372922))

(assert (= (and b!1372927 (not c!226000)) b!1372926))

(assert (= (and b!1372926 c!225997) b!1372923))

(assert (= (and b!1372926 (not c!225997)) b!1372924))

(assert (= (or b!1372923 b!1372924) bm!92185))

(assert (= (or b!1372922 bm!92185) bm!92184))

(assert (= (or b!1372929 bm!92184) bm!92183))

(assert (= (or b!1372929 b!1372923) bm!92182))

(assert (=> bm!92182 m!1541831))

(declare-fun m!1544203 () Bool)

(assert (=> bm!92182 m!1544203))

(assert (=> bm!92183 m!1541831))

(declare-fun m!1544205 () Bool)

(assert (=> bm!92183 m!1544205))

(declare-fun m!1544207 () Bool)

(assert (=> d!392005 m!1544207))

(assert (=> d!392005 m!1541623))

(declare-fun m!1544209 () Bool)

(assert (=> b!1372926 m!1544209))

(assert (=> b!1371451 d!392005))

(declare-fun d!392007 () Bool)

(assert (=> d!392007 (= (head!2469 lt!454969) (h!19289 lt!454969))))

(assert (=> b!1371451 d!392007))

(declare-fun d!392009 () Bool)

(assert (=> d!392009 (= (tail!1982 lt!454969) (t!121483 lt!454969))))

(assert (=> b!1371451 d!392009))

(declare-fun b!1372930 () Bool)

(declare-fun e!877526 () Bool)

(declare-fun e!877528 () Bool)

(assert (=> b!1372930 (= e!877526 e!877528)))

(declare-fun res!618548 () Bool)

(assert (=> b!1372930 (=> (not res!618548) (not e!877528))))

(assert (=> b!1372930 (= res!618548 (not ((_ is Nil!13888) lt!455215)))))

(declare-fun b!1372932 () Bool)

(assert (=> b!1372932 (= e!877528 (isPrefix!1129 (tail!1982 lt!454969) (tail!1982 lt!455215)))))

(declare-fun b!1372933 () Bool)

(declare-fun e!877527 () Bool)

(assert (=> b!1372933 (= e!877527 (>= (size!11399 lt!455215) (size!11399 lt!454969)))))

(declare-fun d!392011 () Bool)

(assert (=> d!392011 e!877527))

(declare-fun res!618551 () Bool)

(assert (=> d!392011 (=> res!618551 e!877527)))

(declare-fun lt!455916 () Bool)

(assert (=> d!392011 (= res!618551 (not lt!455916))))

(assert (=> d!392011 (= lt!455916 e!877526)))

(declare-fun res!618550 () Bool)

(assert (=> d!392011 (=> res!618550 e!877526)))

(assert (=> d!392011 (= res!618550 ((_ is Nil!13888) lt!454969))))

(assert (=> d!392011 (= (isPrefix!1129 lt!454969 lt!455215) lt!455916)))

(declare-fun b!1372931 () Bool)

(declare-fun res!618549 () Bool)

(assert (=> b!1372931 (=> (not res!618549) (not e!877528))))

(assert (=> b!1372931 (= res!618549 (= (head!2469 lt!454969) (head!2469 lt!455215)))))

(assert (= (and d!392011 (not res!618550)) b!1372930))

(assert (= (and b!1372930 res!618548) b!1372931))

(assert (= (and b!1372931 res!618549) b!1372932))

(assert (= (and d!392011 (not res!618551)) b!1372933))

(assert (=> b!1372932 m!1541835))

(assert (=> b!1372932 m!1543989))

(assert (=> b!1372932 m!1541835))

(assert (=> b!1372932 m!1543989))

(declare-fun m!1544211 () Bool)

(assert (=> b!1372932 m!1544211))

(declare-fun m!1544213 () Bool)

(assert (=> b!1372933 m!1544213))

(assert (=> b!1372933 m!1541767))

(assert (=> b!1372931 m!1541831))

(assert (=> b!1372931 m!1543985))

(assert (=> b!1371493 d!392011))

(declare-fun call!92191 () Bool)

(declare-fun bm!92186 () Bool)

(declare-fun c!226002 () Bool)

(declare-fun c!226003 () Bool)

(assert (=> bm!92186 (= call!92191 (validRegex!1619 (ite c!226002 (reg!4048 (h!19293 (map!3068 rules!2550 lambda!58184))) (ite c!226003 (regTwo!7951 (h!19293 (map!3068 rules!2550 lambda!58184))) (regTwo!7950 (h!19293 (map!3068 rules!2550 lambda!58184)))))))))

(declare-fun b!1372934 () Bool)

(declare-fun e!877532 () Bool)

(declare-fun e!877531 () Bool)

(assert (=> b!1372934 (= e!877532 e!877531)))

(declare-fun res!618554 () Bool)

(assert (=> b!1372934 (=> (not res!618554) (not e!877531))))

(declare-fun call!92192 () Bool)

(assert (=> b!1372934 (= res!618554 call!92192)))

(declare-fun b!1372935 () Bool)

(declare-fun e!877530 () Bool)

(declare-fun e!877534 () Bool)

(assert (=> b!1372935 (= e!877530 e!877534)))

(declare-fun res!618555 () Bool)

(assert (=> b!1372935 (= res!618555 (not (nullable!1199 (reg!4048 (h!19293 (map!3068 rules!2550 lambda!58184))))))))

(assert (=> b!1372935 (=> (not res!618555) (not e!877534))))

(declare-fun b!1372936 () Bool)

(assert (=> b!1372936 (= e!877534 call!92191)))

(declare-fun b!1372937 () Bool)

(declare-fun call!92193 () Bool)

(assert (=> b!1372937 (= e!877531 call!92193)))

(declare-fun bm!92187 () Bool)

(assert (=> bm!92187 (= call!92193 call!92191)))

(declare-fun b!1372938 () Bool)

(declare-fun e!877533 () Bool)

(assert (=> b!1372938 (= e!877530 e!877533)))

(assert (=> b!1372938 (= c!226003 ((_ is Union!3719) (h!19293 (map!3068 rules!2550 lambda!58184))))))

(declare-fun bm!92188 () Bool)

(assert (=> bm!92188 (= call!92192 (validRegex!1619 (ite c!226003 (regOne!7951 (h!19293 (map!3068 rules!2550 lambda!58184))) (regOne!7950 (h!19293 (map!3068 rules!2550 lambda!58184))))))))

(declare-fun b!1372939 () Bool)

(declare-fun res!618556 () Bool)

(assert (=> b!1372939 (=> res!618556 e!877532)))

(assert (=> b!1372939 (= res!618556 (not ((_ is Concat!6214) (h!19293 (map!3068 rules!2550 lambda!58184)))))))

(assert (=> b!1372939 (= e!877533 e!877532)))

(declare-fun b!1372940 () Bool)

(declare-fun e!877529 () Bool)

(assert (=> b!1372940 (= e!877529 e!877530)))

(assert (=> b!1372940 (= c!226002 ((_ is Star!3719) (h!19293 (map!3068 rules!2550 lambda!58184))))))

(declare-fun d!392013 () Bool)

(declare-fun res!618552 () Bool)

(assert (=> d!392013 (=> res!618552 e!877529)))

(assert (=> d!392013 (= res!618552 ((_ is ElementMatch!3719) (h!19293 (map!3068 rules!2550 lambda!58184))))))

(assert (=> d!392013 (= (validRegex!1619 (h!19293 (map!3068 rules!2550 lambda!58184))) e!877529)))

(declare-fun b!1372941 () Bool)

(declare-fun res!618553 () Bool)

(declare-fun e!877535 () Bool)

(assert (=> b!1372941 (=> (not res!618553) (not e!877535))))

(assert (=> b!1372941 (= res!618553 call!92192)))

(assert (=> b!1372941 (= e!877533 e!877535)))

(declare-fun b!1372942 () Bool)

(assert (=> b!1372942 (= e!877535 call!92193)))

(assert (= (and d!392013 (not res!618552)) b!1372940))

(assert (= (and b!1372940 c!226002) b!1372935))

(assert (= (and b!1372940 (not c!226002)) b!1372938))

(assert (= (and b!1372935 res!618555) b!1372936))

(assert (= (and b!1372938 c!226003) b!1372941))

(assert (= (and b!1372938 (not c!226003)) b!1372939))

(assert (= (and b!1372941 res!618553) b!1372942))

(assert (= (and b!1372939 (not res!618556)) b!1372934))

(assert (= (and b!1372934 res!618554) b!1372937))

(assert (= (or b!1372941 b!1372934) bm!92188))

(assert (= (or b!1372942 b!1372937) bm!92187))

(assert (= (or b!1372936 bm!92187) bm!92186))

(declare-fun m!1544215 () Bool)

(assert (=> bm!92186 m!1544215))

(declare-fun m!1544217 () Bool)

(assert (=> b!1372935 m!1544217))

(declare-fun m!1544219 () Bool)

(assert (=> bm!92188 m!1544219))

(assert (=> bs!335673 d!392013))

(declare-fun d!392015 () Bool)

(declare-fun c!226006 () Bool)

(assert (=> d!392015 (= c!226006 ((_ is Nil!13890) rules!2550))))

(declare-fun e!877538 () (InoxSet Rule!4610))

(assert (=> d!392015 (= (content!2032 rules!2550) e!877538)))

(declare-fun b!1372947 () Bool)

(assert (=> b!1372947 (= e!877538 ((as const (Array Rule!4610 Bool)) false))))

(declare-fun b!1372948 () Bool)

(assert (=> b!1372948 (= e!877538 ((_ map or) (store ((as const (Array Rule!4610 Bool)) false) (h!19291 rules!2550) true) (content!2032 (t!121485 rules!2550))))))

(assert (= (and d!392015 c!226006) b!1372947))

(assert (= (and d!392015 (not c!226006)) b!1372948))

(declare-fun m!1544221 () Bool)

(assert (=> b!1372948 m!1544221))

(assert (=> b!1372948 m!1543159))

(assert (=> d!390997 d!392015))

(declare-fun bs!335903 () Bool)

(declare-fun d!392017 () Bool)

(assert (= bs!335903 (and d!392017 b!1370759)))

(declare-fun lambda!58298 () Int)

(assert (=> bs!335903 (= lambda!58298 lambda!58184)))

(declare-fun bs!335904 () Bool)

(assert (= bs!335904 (and d!392017 d!391177)))

(assert (=> bs!335904 (= lambda!58298 lambda!58231)))

(declare-fun lambda!58299 () Int)

(assert (=> bs!335903 (not (= lambda!58299 lambda!58185))))

(declare-fun bs!335905 () Bool)

(assert (= bs!335905 (and d!392017 d!391865)))

(assert (=> bs!335905 (not (= lambda!58299 lambda!58288))))

(declare-fun bs!335906 () Bool)

(assert (= bs!335906 (and d!392017 d!391143)))

(assert (=> bs!335906 (not (= lambda!58299 lambda!58228))))

(declare-fun bs!335907 () Bool)

(assert (= bs!335907 (and d!392017 d!391863)))

(assert (=> bs!335907 (not (= lambda!58299 lambda!58285))))

(declare-fun bs!335908 () Bool)

(assert (= bs!335908 (and d!392017 d!391137)))

(assert (=> bs!335908 (not (= lambda!58299 lambda!58221))))

(declare-fun bs!335909 () Bool)

(assert (= bs!335909 (and d!392017 d!391139)))

(assert (=> bs!335909 (= lambda!58299 lambda!58226)))

(assert (=> bs!335909 (not (= lambda!58299 lambda!58227))))

(assert (=> d!392017 (forall!3398 (map!3068 rules!2550 lambda!58298) lambda!58299)))

(declare-fun lt!455921 () Unit!20107)

(declare-fun e!877541 () Unit!20107)

(assert (=> d!392017 (= lt!455921 e!877541)))

(declare-fun c!226009 () Bool)

(assert (=> d!392017 (= c!226009 ((_ is Nil!13890) rules!2550))))

(assert (=> d!392017 (rulesValidInductive!770 thiss!19762 rules!2550)))

(assert (=> d!392017 (= (lemma!127 rules!2550 thiss!19762 rules!2550) lt!455921)))

(declare-fun b!1372953 () Bool)

(declare-fun Unit!20124 () Unit!20107)

(assert (=> b!1372953 (= e!877541 Unit!20124)))

(declare-fun b!1372954 () Bool)

(declare-fun Unit!20125 () Unit!20107)

(assert (=> b!1372954 (= e!877541 Unit!20125)))

(declare-fun lt!455922 () Unit!20107)

(assert (=> b!1372954 (= lt!455922 (lemma!127 rules!2550 thiss!19762 (t!121485 rules!2550)))))

(assert (= (and d!392017 c!226009) b!1372953))

(assert (= (and d!392017 (not c!226009)) b!1372954))

(declare-fun m!1544223 () Bool)

(assert (=> d!392017 m!1544223))

(assert (=> d!392017 m!1544223))

(declare-fun m!1544225 () Bool)

(assert (=> d!392017 m!1544225))

(assert (=> d!392017 m!1541543))

(declare-fun m!1544227 () Bool)

(assert (=> b!1372954 m!1544227))

(assert (=> d!391177 d!392017))

(declare-fun bs!335910 () Bool)

(declare-fun d!392019 () Bool)

(assert (= bs!335910 (and d!392019 d!392017)))

(declare-fun lambda!58302 () Int)

(assert (=> bs!335910 (= lambda!58302 lambda!58299)))

(declare-fun bs!335911 () Bool)

(assert (= bs!335911 (and d!392019 b!1370759)))

(assert (=> bs!335911 (not (= lambda!58302 lambda!58185))))

(declare-fun bs!335912 () Bool)

(assert (= bs!335912 (and d!392019 d!391865)))

(assert (=> bs!335912 (not (= lambda!58302 lambda!58288))))

(declare-fun bs!335913 () Bool)

(assert (= bs!335913 (and d!392019 d!391143)))

(assert (=> bs!335913 (not (= lambda!58302 lambda!58228))))

(declare-fun bs!335914 () Bool)

(assert (= bs!335914 (and d!392019 d!391863)))

(assert (=> bs!335914 (not (= lambda!58302 lambda!58285))))

(declare-fun bs!335915 () Bool)

(assert (= bs!335915 (and d!392019 d!391137)))

(assert (=> bs!335915 (not (= lambda!58302 lambda!58221))))

(declare-fun bs!335916 () Bool)

(assert (= bs!335916 (and d!392019 d!391139)))

(assert (=> bs!335916 (= lambda!58302 lambda!58226)))

(assert (=> bs!335916 (not (= lambda!58302 lambda!58227))))

(declare-fun b!1372975 () Bool)

(declare-fun e!877558 () Bool)

(declare-fun e!877554 () Bool)

(assert (=> b!1372975 (= e!877558 e!877554)))

(declare-fun c!226021 () Bool)

(declare-fun isEmpty!8385 (List!13958) Bool)

(declare-fun tail!1986 (List!13958) List!13958)

(assert (=> b!1372975 (= c!226021 (isEmpty!8385 (tail!1986 (map!3068 rules!2550 lambda!58231))))))

(declare-fun b!1372976 () Bool)

(declare-fun e!877555 () Regex!3719)

(declare-fun e!877557 () Regex!3719)

(assert (=> b!1372976 (= e!877555 e!877557)))

(declare-fun c!226018 () Bool)

(assert (=> b!1372976 (= c!226018 ((_ is Cons!13892) (map!3068 rules!2550 lambda!58231)))))

(declare-fun b!1372977 () Bool)

(declare-fun lt!455925 () Regex!3719)

(declare-fun isEmptyLang!45 (Regex!3719) Bool)

(assert (=> b!1372977 (= e!877558 (isEmptyLang!45 lt!455925))))

(declare-fun b!1372978 () Bool)

(assert (=> b!1372978 (= e!877554 (= lt!455925 (head!2471 (map!3068 rules!2550 lambda!58231))))))

(declare-fun b!1372979 () Bool)

(assert (=> b!1372979 (= e!877555 (h!19293 (map!3068 rules!2550 lambda!58231)))))

(declare-fun b!1372980 () Bool)

(assert (=> b!1372980 (= e!877557 EmptyLang!3719)))

(declare-fun e!877559 () Bool)

(assert (=> d!392019 e!877559))

(declare-fun res!618562 () Bool)

(assert (=> d!392019 (=> (not res!618562) (not e!877559))))

(assert (=> d!392019 (= res!618562 (validRegex!1619 lt!455925))))

(assert (=> d!392019 (= lt!455925 e!877555)))

(declare-fun c!226020 () Bool)

(declare-fun e!877556 () Bool)

(assert (=> d!392019 (= c!226020 e!877556)))

(declare-fun res!618561 () Bool)

(assert (=> d!392019 (=> (not res!618561) (not e!877556))))

(assert (=> d!392019 (= res!618561 ((_ is Cons!13892) (map!3068 rules!2550 lambda!58231)))))

(assert (=> d!392019 (forall!3398 (map!3068 rules!2550 lambda!58231) lambda!58302)))

(assert (=> d!392019 (= (generalisedUnion!135 (map!3068 rules!2550 lambda!58231)) lt!455925)))

(declare-fun b!1372981 () Bool)

(assert (=> b!1372981 (= e!877559 e!877558)))

(declare-fun c!226019 () Bool)

(assert (=> b!1372981 (= c!226019 (isEmpty!8385 (map!3068 rules!2550 lambda!58231)))))

(declare-fun b!1372982 () Bool)

(assert (=> b!1372982 (= e!877556 (isEmpty!8385 (t!121487 (map!3068 rules!2550 lambda!58231))))))

(declare-fun b!1372983 () Bool)

(assert (=> b!1372983 (= e!877557 (Union!3719 (h!19293 (map!3068 rules!2550 lambda!58231)) (generalisedUnion!135 (t!121487 (map!3068 rules!2550 lambda!58231)))))))

(declare-fun b!1372984 () Bool)

(declare-fun isUnion!45 (Regex!3719) Bool)

(assert (=> b!1372984 (= e!877554 (isUnion!45 lt!455925))))

(assert (= (and d!392019 res!618561) b!1372982))

(assert (= (and d!392019 c!226020) b!1372979))

(assert (= (and d!392019 (not c!226020)) b!1372976))

(assert (= (and b!1372976 c!226018) b!1372983))

(assert (= (and b!1372976 (not c!226018)) b!1372980))

(assert (= (and d!392019 res!618562) b!1372981))

(assert (= (and b!1372981 c!226019) b!1372977))

(assert (= (and b!1372981 (not c!226019)) b!1372975))

(assert (= (and b!1372975 c!226021) b!1372978))

(assert (= (and b!1372975 (not c!226021)) b!1372984))

(declare-fun m!1544229 () Bool)

(assert (=> d!392019 m!1544229))

(assert (=> d!392019 m!1541849))

(declare-fun m!1544231 () Bool)

(assert (=> d!392019 m!1544231))

(declare-fun m!1544233 () Bool)

(assert (=> b!1372982 m!1544233))

(declare-fun m!1544235 () Bool)

(assert (=> b!1372983 m!1544235))

(assert (=> b!1372978 m!1541849))

(declare-fun m!1544237 () Bool)

(assert (=> b!1372978 m!1544237))

(assert (=> b!1372975 m!1541849))

(declare-fun m!1544239 () Bool)

(assert (=> b!1372975 m!1544239))

(assert (=> b!1372975 m!1544239))

(declare-fun m!1544241 () Bool)

(assert (=> b!1372975 m!1544241))

(declare-fun m!1544243 () Bool)

(assert (=> b!1372977 m!1544243))

(declare-fun m!1544245 () Bool)

(assert (=> b!1372984 m!1544245))

(assert (=> b!1372981 m!1541849))

(declare-fun m!1544247 () Bool)

(assert (=> b!1372981 m!1544247))

(assert (=> d!391177 d!392019))

(declare-fun d!392021 () Bool)

(declare-fun lt!455926 () List!13958)

(assert (=> d!392021 (= (size!11403 lt!455926) (size!11404 rules!2550))))

(declare-fun e!877560 () List!13958)

(assert (=> d!392021 (= lt!455926 e!877560)))

(declare-fun c!226022 () Bool)

(assert (=> d!392021 (= c!226022 ((_ is Nil!13890) rules!2550))))

(assert (=> d!392021 (= (map!3068 rules!2550 lambda!58231) lt!455926)))

(declare-fun b!1372985 () Bool)

(assert (=> b!1372985 (= e!877560 Nil!13892)))

(declare-fun b!1372986 () Bool)

(assert (=> b!1372986 (= e!877560 ($colon$colon!201 (map!3068 (t!121485 rules!2550) lambda!58231) (dynLambda!6314 lambda!58231 (h!19291 rules!2550))))))

(assert (= (and d!392021 c!226022) b!1372985))

(assert (= (and d!392021 (not c!226022)) b!1372986))

(declare-fun b_lambda!42091 () Bool)

(assert (=> (not b_lambda!42091) (not b!1372986)))

(declare-fun m!1544249 () Bool)

(assert (=> d!392021 m!1544249))

(assert (=> d!392021 m!1541725))

(declare-fun m!1544251 () Bool)

(assert (=> b!1372986 m!1544251))

(declare-fun m!1544253 () Bool)

(assert (=> b!1372986 m!1544253))

(assert (=> b!1372986 m!1544251))

(assert (=> b!1372986 m!1544253))

(declare-fun m!1544255 () Bool)

(assert (=> b!1372986 m!1544255))

(assert (=> d!391177 d!392021))

(declare-fun d!392023 () Bool)

(declare-fun lt!455927 () Int)

(assert (=> d!392023 (= lt!455927 (size!11402 (list!5351 (_1!7630 lt!455107))))))

(assert (=> d!392023 (= lt!455927 (size!11406 (c!225514 (_1!7630 lt!455107))))))

(assert (=> d!392023 (= (size!11397 (_1!7630 lt!455107)) lt!455927)))

(declare-fun bs!335917 () Bool)

(assert (= bs!335917 d!392023))

(assert (=> bs!335917 m!1541321))

(assert (=> bs!335917 m!1541321))

(declare-fun m!1544257 () Bool)

(assert (=> bs!335917 m!1544257))

(declare-fun m!1544259 () Bool)

(assert (=> bs!335917 m!1544259))

(assert (=> d!391013 d!392023))

(declare-fun b!1372987 () Bool)

(declare-fun e!877564 () tuple2!13488)

(assert (=> b!1372987 (= e!877564 (tuple2!13489 (BalanceConc!9087 Empty!4573) lt!454956))))

(declare-fun b!1372988 () Bool)

(declare-fun e!877563 () tuple2!13488)

(assert (=> b!1372988 (= e!877563 (tuple2!13489 (BalanceConc!9087 Empty!4573) lt!454956))))

(declare-fun d!392025 () Bool)

(declare-fun e!877562 () Bool)

(assert (=> d!392025 e!877562))

(declare-fun res!618563 () Bool)

(assert (=> d!392025 (=> (not res!618563) (not e!877562))))

(declare-fun lt!455935 () tuple2!13488)

(assert (=> d!392025 (= res!618563 (= (list!5351 (_1!7630 lt!455935)) (list!5351 (_1!7630 (lexRec!281 thiss!19762 rules!2550 lt!454956)))))))

(assert (=> d!392025 (= lt!455935 e!877563)))

(declare-fun c!226023 () Bool)

(declare-fun lt!455944 () Option!2670)

(assert (=> d!392025 (= c!226023 ((_ is Some!2669) lt!455944))))

(assert (=> d!392025 (= lt!455944 (maxPrefixZipperSequenceV2!226 thiss!19762 rules!2550 lt!454956 lt!454956))))

(declare-fun lt!455954 () Unit!20107)

(declare-fun lt!455948 () Unit!20107)

(assert (=> d!392025 (= lt!455954 lt!455948)))

(declare-fun lt!455933 () List!13954)

(declare-fun lt!455953 () List!13954)

(assert (=> d!392025 (isSuffix!259 lt!455933 (++!3590 lt!455953 lt!455933))))

(assert (=> d!392025 (= lt!455948 (lemmaConcatTwoListThenFSndIsSuffix!237 lt!455953 lt!455933))))

(assert (=> d!392025 (= lt!455933 (list!5350 lt!454956))))

(assert (=> d!392025 (= lt!455953 (list!5350 (BalanceConc!9085 Empty!4572)))))

(assert (=> d!392025 (= (lexTailRecV2!413 thiss!19762 rules!2550 lt!454956 (BalanceConc!9085 Empty!4572) lt!454956 (BalanceConc!9087 Empty!4573)) lt!455935)))

(declare-fun lt!455934 () BalanceConc!9084)

(declare-fun b!1372989 () Bool)

(assert (=> b!1372989 (= e!877563 (lexTailRecV2!413 thiss!19762 rules!2550 lt!454956 lt!455934 (_2!7633 (v!21486 lt!455944)) (append!406 (BalanceConc!9087 Empty!4573) (_1!7633 (v!21486 lt!455944)))))))

(declare-fun lt!455940 () tuple2!13488)

(assert (=> b!1372989 (= lt!455940 (lexRec!281 thiss!19762 rules!2550 (_2!7633 (v!21486 lt!455944))))))

(declare-fun lt!455951 () List!13954)

(assert (=> b!1372989 (= lt!455951 (list!5350 (BalanceConc!9085 Empty!4572)))))

(declare-fun lt!455936 () List!13954)

(assert (=> b!1372989 (= lt!455936 (list!5350 (charsOf!1377 (_1!7633 (v!21486 lt!455944)))))))

(declare-fun lt!455955 () List!13954)

(assert (=> b!1372989 (= lt!455955 (list!5350 (_2!7633 (v!21486 lt!455944))))))

(declare-fun lt!455945 () Unit!20107)

(assert (=> b!1372989 (= lt!455945 (lemmaConcatAssociativity!861 lt!455951 lt!455936 lt!455955))))

(assert (=> b!1372989 (= (++!3590 (++!3590 lt!455951 lt!455936) lt!455955) (++!3590 lt!455951 (++!3590 lt!455936 lt!455955)))))

(declare-fun lt!455958 () Unit!20107)

(assert (=> b!1372989 (= lt!455958 lt!455945)))

(declare-fun lt!455942 () Option!2670)

(assert (=> b!1372989 (= lt!455942 (maxPrefixZipperSequence!554 thiss!19762 rules!2550 lt!454956))))

(declare-fun c!226024 () Bool)

(assert (=> b!1372989 (= c!226024 ((_ is Some!2669) lt!455942))))

(assert (=> b!1372989 (= (lexRec!281 thiss!19762 rules!2550 lt!454956) e!877564)))

(declare-fun lt!455956 () Unit!20107)

(declare-fun Unit!20126 () Unit!20107)

(assert (=> b!1372989 (= lt!455956 Unit!20126)))

(declare-fun lt!455929 () List!13957)

(assert (=> b!1372989 (= lt!455929 (list!5351 (BalanceConc!9087 Empty!4573)))))

(declare-fun lt!455937 () List!13957)

(assert (=> b!1372989 (= lt!455937 (Cons!13891 (_1!7633 (v!21486 lt!455944)) Nil!13891))))

(declare-fun lt!455939 () List!13957)

(assert (=> b!1372989 (= lt!455939 (list!5351 (_1!7630 lt!455940)))))

(declare-fun lt!455947 () Unit!20107)

(assert (=> b!1372989 (= lt!455947 (lemmaConcatAssociativity!862 lt!455929 lt!455937 lt!455939))))

(assert (=> b!1372989 (= (++!3594 (++!3594 lt!455929 lt!455937) lt!455939) (++!3594 lt!455929 (++!3594 lt!455937 lt!455939)))))

(declare-fun lt!455941 () Unit!20107)

(assert (=> b!1372989 (= lt!455941 lt!455947)))

(declare-fun lt!455957 () List!13954)

(assert (=> b!1372989 (= lt!455957 (++!3590 (list!5350 (BalanceConc!9085 Empty!4572)) (list!5350 (charsOf!1377 (_1!7633 (v!21486 lt!455944))))))))

(declare-fun lt!455928 () List!13954)

(assert (=> b!1372989 (= lt!455928 (list!5350 (_2!7633 (v!21486 lt!455944))))))

(declare-fun lt!455932 () List!13957)

(assert (=> b!1372989 (= lt!455932 (list!5351 (append!406 (BalanceConc!9087 Empty!4573) (_1!7633 (v!21486 lt!455944)))))))

(declare-fun lt!455949 () Unit!20107)

(assert (=> b!1372989 (= lt!455949 (lemmaLexThenLexPrefix!196 thiss!19762 rules!2550 lt!455957 lt!455928 lt!455932 (list!5351 (_1!7630 lt!455940)) (list!5350 (_2!7630 lt!455940))))))

(assert (=> b!1372989 (= (lexList!618 thiss!19762 rules!2550 lt!455957) (tuple2!13487 lt!455932 Nil!13888))))

(declare-fun lt!455938 () Unit!20107)

(assert (=> b!1372989 (= lt!455938 lt!455949)))

(declare-fun lt!455943 () BalanceConc!9084)

(assert (=> b!1372989 (= lt!455943 (++!3592 (BalanceConc!9085 Empty!4572) (charsOf!1377 (_1!7633 (v!21486 lt!455944)))))))

(declare-fun lt!455961 () Option!2670)

(assert (=> b!1372989 (= lt!455961 (maxPrefixZipperSequence!554 thiss!19762 rules!2550 lt!455943))))

(declare-fun c!226025 () Bool)

(assert (=> b!1372989 (= c!226025 ((_ is Some!2669) lt!455961))))

(declare-fun e!877561 () tuple2!13488)

(assert (=> b!1372989 (= (lexRec!281 thiss!19762 rules!2550 (++!3592 (BalanceConc!9085 Empty!4572) (charsOf!1377 (_1!7633 (v!21486 lt!455944))))) e!877561)))

(declare-fun lt!455960 () Unit!20107)

(declare-fun Unit!20127 () Unit!20107)

(assert (=> b!1372989 (= lt!455960 Unit!20127)))

(assert (=> b!1372989 (= lt!455934 (++!3592 (BalanceConc!9085 Empty!4572) (charsOf!1377 (_1!7633 (v!21486 lt!455944)))))))

(declare-fun lt!455959 () List!13954)

(assert (=> b!1372989 (= lt!455959 (list!5350 lt!455934))))

(declare-fun lt!455952 () List!13954)

(assert (=> b!1372989 (= lt!455952 (list!5350 (_2!7633 (v!21486 lt!455944))))))

(declare-fun lt!455930 () Unit!20107)

(assert (=> b!1372989 (= lt!455930 (lemmaConcatTwoListThenFSndIsSuffix!237 lt!455959 lt!455952))))

(assert (=> b!1372989 (isSuffix!259 lt!455952 (++!3590 lt!455959 lt!455952))))

(declare-fun lt!455931 () Unit!20107)

(assert (=> b!1372989 (= lt!455931 lt!455930)))

(declare-fun lt!455950 () tuple2!13488)

(declare-fun b!1372990 () Bool)

(assert (=> b!1372990 (= lt!455950 (lexRec!281 thiss!19762 rules!2550 (_2!7633 (v!21486 lt!455961))))))

(assert (=> b!1372990 (= e!877561 (tuple2!13489 (prepend!370 (_1!7630 lt!455950) (_1!7633 (v!21486 lt!455961))) (_2!7630 lt!455950)))))

(declare-fun b!1372991 () Bool)

(assert (=> b!1372991 (= e!877562 (= (list!5350 (_2!7630 lt!455935)) (list!5350 (_2!7630 (lexRec!281 thiss!19762 rules!2550 lt!454956)))))))

(declare-fun lt!455946 () tuple2!13488)

(declare-fun b!1372992 () Bool)

(assert (=> b!1372992 (= lt!455946 (lexRec!281 thiss!19762 rules!2550 (_2!7633 (v!21486 lt!455942))))))

(assert (=> b!1372992 (= e!877564 (tuple2!13489 (prepend!370 (_1!7630 lt!455946) (_1!7633 (v!21486 lt!455942))) (_2!7630 lt!455946)))))

(declare-fun b!1372993 () Bool)

(assert (=> b!1372993 (= e!877561 (tuple2!13489 (BalanceConc!9087 Empty!4573) lt!455943))))

(assert (= (and d!392025 c!226023) b!1372989))

(assert (= (and d!392025 (not c!226023)) b!1372988))

(assert (= (and b!1372989 c!226024) b!1372992))

(assert (= (and b!1372989 (not c!226024)) b!1372987))

(assert (= (and b!1372989 c!226025) b!1372990))

(assert (= (and b!1372989 (not c!226025)) b!1372993))

(assert (= (and d!392025 res!618563) b!1372991))

(declare-fun m!1544261 () Bool)

(assert (=> b!1372989 m!1544261))

(declare-fun m!1544263 () Bool)

(assert (=> b!1372989 m!1544263))

(declare-fun m!1544265 () Bool)

(assert (=> b!1372989 m!1544265))

(declare-fun m!1544267 () Bool)

(assert (=> b!1372989 m!1544267))

(declare-fun m!1544269 () Bool)

(assert (=> b!1372989 m!1544269))

(declare-fun m!1544271 () Bool)

(assert (=> b!1372989 m!1544271))

(declare-fun m!1544273 () Bool)

(assert (=> b!1372989 m!1544273))

(declare-fun m!1544275 () Bool)

(assert (=> b!1372989 m!1544275))

(declare-fun m!1544277 () Bool)

(assert (=> b!1372989 m!1544277))

(declare-fun m!1544279 () Bool)

(assert (=> b!1372989 m!1544279))

(assert (=> b!1372989 m!1544261))

(declare-fun m!1544281 () Bool)

(assert (=> b!1372989 m!1544281))

(declare-fun m!1544283 () Bool)

(assert (=> b!1372989 m!1544283))

(assert (=> b!1372989 m!1542631))

(declare-fun m!1544285 () Bool)

(assert (=> b!1372989 m!1544285))

(declare-fun m!1544287 () Bool)

(assert (=> b!1372989 m!1544287))

(declare-fun m!1544289 () Bool)

(assert (=> b!1372989 m!1544289))

(declare-fun m!1544291 () Bool)

(assert (=> b!1372989 m!1544291))

(assert (=> b!1372989 m!1542641))

(declare-fun m!1544293 () Bool)

(assert (=> b!1372989 m!1544293))

(declare-fun m!1544295 () Bool)

(assert (=> b!1372989 m!1544295))

(declare-fun m!1544297 () Bool)

(assert (=> b!1372989 m!1544297))

(declare-fun m!1544299 () Bool)

(assert (=> b!1372989 m!1544299))

(declare-fun m!1544301 () Bool)

(assert (=> b!1372989 m!1544301))

(declare-fun m!1544303 () Bool)

(assert (=> b!1372989 m!1544303))

(declare-fun m!1544305 () Bool)

(assert (=> b!1372989 m!1544305))

(declare-fun m!1544307 () Bool)

(assert (=> b!1372989 m!1544307))

(declare-fun m!1544309 () Bool)

(assert (=> b!1372989 m!1544309))

(assert (=> b!1372989 m!1544289))

(assert (=> b!1372989 m!1544269))

(declare-fun m!1544311 () Bool)

(assert (=> b!1372989 m!1544311))

(declare-fun m!1544313 () Bool)

(assert (=> b!1372989 m!1544313))

(assert (=> b!1372989 m!1544265))

(declare-fun m!1544315 () Bool)

(assert (=> b!1372989 m!1544315))

(assert (=> b!1372989 m!1542631))

(assert (=> b!1372989 m!1544281))

(declare-fun m!1544317 () Bool)

(assert (=> b!1372989 m!1544317))

(assert (=> b!1372989 m!1544269))

(assert (=> b!1372989 m!1544313))

(assert (=> b!1372989 m!1544279))

(assert (=> b!1372989 m!1544293))

(assert (=> b!1372989 m!1544297))

(declare-fun m!1544319 () Bool)

(assert (=> b!1372989 m!1544319))

(declare-fun m!1544321 () Bool)

(assert (=> b!1372989 m!1544321))

(assert (=> b!1372989 m!1544275))

(assert (=> b!1372989 m!1544279))

(assert (=> b!1372989 m!1544285))

(declare-fun m!1544323 () Bool)

(assert (=> b!1372990 m!1544323))

(declare-fun m!1544325 () Bool)

(assert (=> b!1372990 m!1544325))

(declare-fun m!1544327 () Bool)

(assert (=> b!1372992 m!1544327))

(declare-fun m!1544329 () Bool)

(assert (=> b!1372992 m!1544329))

(declare-fun m!1544331 () Bool)

(assert (=> b!1372991 m!1544331))

(assert (=> b!1372991 m!1544319))

(declare-fun m!1544333 () Bool)

(assert (=> b!1372991 m!1544333))

(assert (=> d!392025 m!1540785))

(declare-fun m!1544335 () Bool)

(assert (=> d!392025 m!1544335))

(assert (=> d!392025 m!1544319))

(assert (=> d!392025 m!1542631))

(declare-fun m!1544337 () Bool)

(assert (=> d!392025 m!1544337))

(declare-fun m!1544339 () Bool)

(assert (=> d!392025 m!1544339))

(assert (=> d!392025 m!1544337))

(declare-fun m!1544341 () Bool)

(assert (=> d!392025 m!1544341))

(declare-fun m!1544343 () Bool)

(assert (=> d!392025 m!1544343))

(declare-fun m!1544345 () Bool)

(assert (=> d!392025 m!1544345))

(assert (=> d!391013 d!392025))

(assert (=> d!391165 d!391143))

(assert (=> d!391071 d!392015))

(declare-fun d!392027 () Bool)

(declare-fun res!618568 () Bool)

(declare-fun e!877569 () Bool)

(assert (=> d!392027 (=> res!618568 e!877569)))

(assert (=> d!392027 (= res!618568 ((_ is Nil!13890) rules!2550))))

(assert (=> d!392027 (= (noDuplicateTag!896 thiss!19762 rules!2550 Nil!13893) e!877569)))

(declare-fun b!1372998 () Bool)

(declare-fun e!877570 () Bool)

(assert (=> b!1372998 (= e!877569 e!877570)))

(declare-fun res!618569 () Bool)

(assert (=> b!1372998 (=> (not res!618569) (not e!877570))))

(declare-fun contains!2603 (List!13959 String!16711) Bool)

(assert (=> b!1372998 (= res!618569 (not (contains!2603 Nil!13893 (tag!2667 (h!19291 rules!2550)))))))

(declare-fun b!1372999 () Bool)

(assert (=> b!1372999 (= e!877570 (noDuplicateTag!896 thiss!19762 (t!121485 rules!2550) (Cons!13893 (tag!2667 (h!19291 rules!2550)) Nil!13893)))))

(assert (= (and d!392027 (not res!618568)) b!1372998))

(assert (= (and b!1372998 res!618569) b!1372999))

(declare-fun m!1544347 () Bool)

(assert (=> b!1372998 m!1544347))

(declare-fun m!1544349 () Bool)

(assert (=> b!1372999 m!1544349))

(assert (=> b!1371053 d!392027))

(declare-fun lt!455962 () Bool)

(declare-fun d!392029 () Bool)

(assert (=> d!392029 (= lt!455962 (isEmpty!8376 (list!5350 (_2!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t1!34)))))))))

(assert (=> d!392029 (= lt!455962 (isEmpty!8377 (c!225513 (_2!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t1!34)))))))))

(assert (=> d!392029 (= (isEmpty!8370 (_2!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t1!34))))) lt!455962)))

(declare-fun bs!335918 () Bool)

(assert (= bs!335918 d!392029))

(declare-fun m!1544351 () Bool)

(assert (=> bs!335918 m!1544351))

(assert (=> bs!335918 m!1544351))

(declare-fun m!1544353 () Bool)

(assert (=> bs!335918 m!1544353))

(declare-fun m!1544355 () Bool)

(assert (=> bs!335918 m!1544355))

(assert (=> b!1371273 d!392029))

(assert (=> b!1371273 d!391241))

(assert (=> b!1371273 d!391027))

(assert (=> b!1371273 d!391057))

(declare-fun bs!335919 () Bool)

(declare-fun d!392031 () Bool)

(assert (= bs!335919 (and d!392031 d!391901)))

(declare-fun lambda!58303 () Int)

(assert (=> bs!335919 (= (= (toValue!3672 (transformation!2405 (h!19291 rules!2550))) (toValue!3672 (transformation!2405 (rule!4160 t1!34)))) (= lambda!58303 lambda!58291))))

(declare-fun bs!335920 () Bool)

(assert (= bs!335920 (and d!392031 d!391931)))

(assert (=> bs!335920 (= (= (toValue!3672 (transformation!2405 (h!19291 rules!2550))) (toValue!3672 (transformation!2405 (rule!4160 t2!34)))) (= lambda!58303 lambda!58292))))

(assert (=> d!392031 true))

(assert (=> d!392031 (< (dynLambda!6323 order!8487 (toValue!3672 (transformation!2405 (h!19291 rules!2550)))) (dynLambda!6325 order!8489 lambda!58303))))

(assert (=> d!392031 (= (equivClasses!887 (toChars!3531 (transformation!2405 (h!19291 rules!2550))) (toValue!3672 (transformation!2405 (h!19291 rules!2550)))) (Forall2!441 lambda!58303))))

(declare-fun bs!335921 () Bool)

(assert (= bs!335921 d!392031))

(declare-fun m!1544357 () Bool)

(assert (=> bs!335921 m!1544357))

(assert (=> b!1370983 d!392031))

(assert (=> d!391107 d!391929))

(declare-fun b!1373000 () Bool)

(declare-fun e!877572 () tuple2!13486)

(assert (=> b!1373000 (= e!877572 (tuple2!13487 Nil!13891 (_2!7631 (v!21471 lt!455204))))))

(declare-fun b!1373001 () Bool)

(declare-fun lt!455964 () Option!2668)

(declare-fun lt!455965 () tuple2!13486)

(assert (=> b!1373001 (= e!877572 (tuple2!13487 (Cons!13891 (_1!7631 (v!21471 lt!455964)) (_1!7629 lt!455965)) (_2!7629 lt!455965)))))

(assert (=> b!1373001 (= lt!455965 (lexList!618 thiss!19762 rules!2550 (_2!7631 (v!21471 lt!455964))))))

(declare-fun b!1373002 () Bool)

(declare-fun e!877573 () Bool)

(declare-fun lt!455963 () tuple2!13486)

(assert (=> b!1373002 (= e!877573 (not (isEmpty!8381 (_1!7629 lt!455963))))))

(declare-fun b!1373003 () Bool)

(declare-fun e!877571 () Bool)

(assert (=> b!1373003 (= e!877571 e!877573)))

(declare-fun res!618570 () Bool)

(assert (=> b!1373003 (= res!618570 (< (size!11399 (_2!7629 lt!455963)) (size!11399 (_2!7631 (v!21471 lt!455204)))))))

(assert (=> b!1373003 (=> (not res!618570) (not e!877573))))

(declare-fun b!1373004 () Bool)

(assert (=> b!1373004 (= e!877571 (= (_2!7629 lt!455963) (_2!7631 (v!21471 lt!455204))))))

(declare-fun d!392033 () Bool)

(assert (=> d!392033 e!877571))

(declare-fun c!226027 () Bool)

(assert (=> d!392033 (= c!226027 (> (size!11402 (_1!7629 lt!455963)) 0))))

(assert (=> d!392033 (= lt!455963 e!877572)))

(declare-fun c!226026 () Bool)

(assert (=> d!392033 (= c!226026 ((_ is Some!2667) lt!455964))))

(assert (=> d!392033 (= lt!455964 (maxPrefix!1082 thiss!19762 rules!2550 (_2!7631 (v!21471 lt!455204))))))

(assert (=> d!392033 (= (lexList!618 thiss!19762 rules!2550 (_2!7631 (v!21471 lt!455204))) lt!455963)))

(assert (= (and d!392033 c!226026) b!1373001))

(assert (= (and d!392033 (not c!226026)) b!1373000))

(assert (= (and d!392033 c!226027) b!1373003))

(assert (= (and d!392033 (not c!226027)) b!1373004))

(assert (= (and b!1373003 res!618570) b!1373002))

(declare-fun m!1544359 () Bool)

(assert (=> b!1373001 m!1544359))

(declare-fun m!1544361 () Bool)

(assert (=> b!1373002 m!1544361))

(declare-fun m!1544363 () Bool)

(assert (=> b!1373003 m!1544363))

(declare-fun m!1544365 () Bool)

(assert (=> b!1373003 m!1544365))

(declare-fun m!1544367 () Bool)

(assert (=> d!392033 m!1544367))

(declare-fun m!1544369 () Bool)

(assert (=> d!392033 m!1544369))

(assert (=> b!1371387 d!392033))

(declare-fun d!392035 () Bool)

(declare-fun c!226028 () Bool)

(assert (=> d!392035 (= c!226028 ((_ is Node!4572) (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34)))))))

(declare-fun e!877574 () Bool)

(assert (=> d!392035 (= (inv!18248 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34)))) e!877574)))

(declare-fun b!1373005 () Bool)

(assert (=> b!1373005 (= e!877574 (inv!18252 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34)))))))

(declare-fun b!1373006 () Bool)

(declare-fun e!877575 () Bool)

(assert (=> b!1373006 (= e!877574 e!877575)))

(declare-fun res!618571 () Bool)

(assert (=> b!1373006 (= res!618571 (not ((_ is Leaf!6971) (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34))))))))

(assert (=> b!1373006 (=> res!618571 e!877575)))

(declare-fun b!1373007 () Bool)

(assert (=> b!1373007 (= e!877575 (inv!18253 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34)))))))

(assert (= (and d!392035 c!226028) b!1373005))

(assert (= (and d!392035 (not c!226028)) b!1373006))

(assert (= (and b!1373006 (not res!618571)) b!1373007))

(declare-fun m!1544371 () Bool)

(assert (=> b!1373005 m!1544371))

(declare-fun m!1544373 () Bool)

(assert (=> b!1373007 m!1544373))

(assert (=> b!1371010 d!392035))

(declare-fun b!1373016 () Bool)

(declare-fun e!877583 () Bool)

(declare-fun e!877582 () Bool)

(assert (=> b!1373016 (= e!877583 e!877582)))

(declare-fun res!618577 () Bool)

(assert (=> b!1373016 (= res!618577 (not ((_ is Cons!13890) rules!2550)))))

(assert (=> b!1373016 (=> res!618577 e!877582)))

(declare-fun b!1373017 () Bool)

(declare-fun call!92196 () Bool)

(assert (=> b!1373017 (= e!877582 call!92196)))

(declare-fun bm!92191 () Bool)

(assert (=> bm!92191 (= call!92196 (ruleDisjointCharsFromAllFromOtherType!370 (h!19291 rules!2550) (t!121485 rules!2550)))))

(declare-fun b!1373019 () Bool)

(declare-fun e!877584 () Bool)

(assert (=> b!1373019 (= e!877584 call!92196)))

(declare-fun b!1373018 () Bool)

(assert (=> b!1373018 (= e!877583 e!877584)))

(declare-fun res!618576 () Bool)

(declare-fun rulesUseDisjointChars!182 (Rule!4610 Rule!4610) Bool)

(assert (=> b!1373018 (= res!618576 (rulesUseDisjointChars!182 (h!19291 rules!2550) (h!19291 rules!2550)))))

(assert (=> b!1373018 (=> (not res!618576) (not e!877584))))

(declare-fun d!392037 () Bool)

(declare-fun c!226031 () Bool)

(assert (=> d!392037 (= c!226031 (and ((_ is Cons!13890) rules!2550) (not (= (isSeparator!2405 (h!19291 rules!2550)) (isSeparator!2405 (h!19291 rules!2550))))))))

(assert (=> d!392037 (= (ruleDisjointCharsFromAllFromOtherType!370 (h!19291 rules!2550) rules!2550) e!877583)))

(assert (= (and d!392037 c!226031) b!1373018))

(assert (= (and d!392037 (not c!226031)) b!1373016))

(assert (= (and b!1373018 res!618576) b!1373019))

(assert (= (and b!1373016 (not res!618577)) b!1373017))

(assert (= (or b!1373019 b!1373017) bm!92191))

(declare-fun m!1544375 () Bool)

(assert (=> bm!92191 m!1544375))

(declare-fun m!1544377 () Bool)

(assert (=> b!1373018 m!1544377))

(assert (=> b!1371267 d!392037))

(declare-fun d!392039 () Bool)

(assert (=> d!392039 (= (isEmpty!8376 lt!454969) ((_ is Nil!13888) lt!454969))))

(assert (=> d!391169 d!392039))

(declare-fun d!392041 () Bool)

(assert (=> d!392041 (= (head!2468 rules!2550) (h!19291 rules!2550))))

(assert (=> b!1371168 d!392041))

(declare-fun d!392043 () Bool)

(assert (=> d!392043 (= (list!5351 (_1!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t2!34))))) (list!5354 (c!225514 (_1!7630 (lex!927 thiss!19762 rules!2550 (print!866 thiss!19762 (singletonSeq!1036 t2!34)))))))))

(declare-fun bs!335922 () Bool)

(assert (= bs!335922 d!392043))

(declare-fun m!1544379 () Bool)

(assert (=> bs!335922 m!1544379))

(assert (=> d!390931 d!392043))

(declare-fun d!392045 () Bool)

(declare-fun lt!455966 () Int)

(assert (=> d!392045 (= lt!455966 (size!11402 (list!5351 (_1!7630 lt!455045))))))

(assert (=> d!392045 (= lt!455966 (size!11406 (c!225514 (_1!7630 lt!455045))))))

(assert (=> d!392045 (= (size!11397 (_1!7630 lt!455045)) lt!455966)))

(declare-fun bs!335923 () Bool)

(assert (= bs!335923 d!392045))

(declare-fun m!1544381 () Bool)

(assert (=> bs!335923 m!1544381))

(assert (=> bs!335923 m!1544381))

(declare-fun m!1544383 () Bool)

(assert (=> bs!335923 m!1544383))

(declare-fun m!1544385 () Bool)

(assert (=> bs!335923 m!1544385))

(assert (=> d!390931 d!392045))

(assert (=> d!390931 d!391133))

(assert (=> d!390931 d!391135))

(assert (=> d!390931 d!391179))

(assert (=> d!390931 d!391747))

(declare-fun d!392047 () Bool)

(assert (=> d!392047 (= (list!5351 (singletonSeq!1036 t2!34)) (list!5354 (c!225514 (singletonSeq!1036 t2!34))))))

(declare-fun bs!335924 () Bool)

(assert (= bs!335924 d!392047))

(declare-fun m!1544387 () Bool)

(assert (=> bs!335924 m!1544387))

(assert (=> d!390931 d!392047))

(declare-fun d!392049 () Bool)

(declare-fun res!618580 () List!13954)

(assert (=> d!392049 (dynLambda!6315 lambda!58183 res!618580)))

(declare-fun e!877587 () Bool)

(assert (=> d!392049 e!877587))

(assert (=> d!392049 (= (choose!8443 lambda!58183) res!618580)))

(declare-fun b!1373022 () Bool)

(declare-fun tp!394026 () Bool)

(assert (=> b!1373022 (= e!877587 (and tp_is_empty!6747 tp!394026))))

(assert (= (and d!392049 ((_ is Cons!13888) res!618580)) b!1373022))

(declare-fun b_lambda!42093 () Bool)

(assert (=> (not b_lambda!42093) (not d!392049)))

(declare-fun m!1544389 () Bool)

(assert (=> d!392049 m!1544389))

(assert (=> d!391157 d!392049))

(assert (=> d!391157 d!391119))

(assert (=> b!1371351 d!391685))

(declare-fun d!392051 () Bool)

(declare-fun dynLambda!6326 (Int BalanceConc!9084) TokenValue!2495)

(assert (=> d!392051 (= (apply!3415 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455183))))) (dynLambda!6326 (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183))))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455183))))))))

(declare-fun b_lambda!42095 () Bool)

(assert (=> (not b_lambda!42095) (not d!392051)))

(declare-fun t!121604 () Bool)

(declare-fun tb!72293 () Bool)

(assert (=> (and b!1370765 (= (toValue!3672 (transformation!2405 (h!19291 rules!2550))) (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))) t!121604) tb!72293))

(declare-fun result!87782 () Bool)

(assert (=> tb!72293 (= result!87782 (inv!21 (dynLambda!6326 (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183))))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455183)))))))))

(declare-fun m!1544391 () Bool)

(assert (=> tb!72293 m!1544391))

(assert (=> d!392051 t!121604))

(declare-fun b_and!91995 () Bool)

(assert (= b_and!91875 (and (=> t!121604 result!87782) b_and!91995)))

(declare-fun t!121606 () Bool)

(declare-fun tb!72295 () Bool)

(assert (=> (and b!1370761 (= (toValue!3672 (transformation!2405 (rule!4160 t2!34))) (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))) t!121606) tb!72295))

(declare-fun result!87786 () Bool)

(assert (= result!87786 result!87782))

(assert (=> d!392051 t!121606))

(declare-fun b_and!91997 () Bool)

(assert (= b_and!91879 (and (=> t!121606 result!87786) b_and!91997)))

(declare-fun t!121608 () Bool)

(declare-fun tb!72297 () Bool)

(assert (=> (and b!1370756 (= (toValue!3672 (transformation!2405 (rule!4160 t1!34))) (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))) t!121608) tb!72297))

(declare-fun result!87788 () Bool)

(assert (= result!87788 result!87782))

(assert (=> d!392051 t!121608))

(declare-fun b_and!91999 () Bool)

(assert (= b_and!91883 (and (=> t!121608 result!87788) b_and!91999)))

(declare-fun t!121610 () Bool)

(declare-fun tb!72299 () Bool)

(assert (=> (and b!1371483 (= (toValue!3672 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))) t!121610) tb!72299))

(declare-fun result!87790 () Bool)

(assert (= result!87790 result!87782))

(assert (=> d!392051 t!121610))

(declare-fun b_and!92001 () Bool)

(assert (= b_and!91939 (and (=> t!121610 result!87790) b_and!92001)))

(assert (=> d!392051 m!1541643))

(declare-fun m!1544393 () Bool)

(assert (=> d!392051 m!1544393))

(assert (=> b!1371351 d!392051))

(declare-fun d!392053 () Bool)

(declare-fun fromListB!720 (List!13954) BalanceConc!9084)

(assert (=> d!392053 (= (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455183)))) (fromListB!720 (originalCharacters!3267 (_1!7631 (get!4347 lt!455183)))))))

(declare-fun bs!335925 () Bool)

(assert (= bs!335925 d!392053))

(declare-fun m!1544395 () Bool)

(assert (=> bs!335925 m!1544395))

(assert (=> b!1371351 d!392053))

(declare-fun d!392055 () Bool)

(declare-fun lt!455967 () Bool)

(assert (=> d!392055 (= lt!455967 (select (content!2032 (t!121485 rules!2550)) lt!454957))))

(declare-fun e!877592 () Bool)

(assert (=> d!392055 (= lt!455967 e!877592)))

(declare-fun res!618582 () Bool)

(assert (=> d!392055 (=> (not res!618582) (not e!877592))))

(assert (=> d!392055 (= res!618582 ((_ is Cons!13890) (t!121485 rules!2550)))))

(assert (=> d!392055 (= (contains!2599 (t!121485 rules!2550) lt!454957) lt!455967)))

(declare-fun b!1373025 () Bool)

(declare-fun e!877591 () Bool)

(assert (=> b!1373025 (= e!877592 e!877591)))

(declare-fun res!618581 () Bool)

(assert (=> b!1373025 (=> res!618581 e!877591)))

(assert (=> b!1373025 (= res!618581 (= (h!19291 (t!121485 rules!2550)) lt!454957))))

(declare-fun b!1373026 () Bool)

(assert (=> b!1373026 (= e!877591 (contains!2599 (t!121485 (t!121485 rules!2550)) lt!454957))))

(assert (= (and d!392055 res!618582) b!1373025))

(assert (= (and b!1373025 (not res!618581)) b!1373026))

(assert (=> d!392055 m!1543159))

(declare-fun m!1544397 () Bool)

(assert (=> d!392055 m!1544397))

(declare-fun m!1544399 () Bool)

(assert (=> b!1373026 m!1544399))

(assert (=> b!1371182 d!392055))

(declare-fun b!1373027 () Bool)

(declare-fun res!618590 () Bool)

(declare-fun e!877594 () Bool)

(assert (=> b!1373027 (=> res!618590 e!877594)))

(assert (=> b!1373027 (= res!618590 (not ((_ is ElementMatch!3719) (derivativeStep!957 lt!454967 (head!2469 lt!454960)))))))

(declare-fun e!877595 () Bool)

(assert (=> b!1373027 (= e!877595 e!877594)))

(declare-fun b!1373028 () Bool)

(declare-fun lt!455968 () Bool)

(assert (=> b!1373028 (= e!877595 (not lt!455968))))

(declare-fun b!1373029 () Bool)

(declare-fun res!618588 () Bool)

(declare-fun e!877599 () Bool)

(assert (=> b!1373029 (=> (not res!618588) (not e!877599))))

(declare-fun call!92197 () Bool)

(assert (=> b!1373029 (= res!618588 (not call!92197))))

(declare-fun d!392057 () Bool)

(declare-fun e!877596 () Bool)

(assert (=> d!392057 e!877596))

(declare-fun c!226033 () Bool)

(assert (=> d!392057 (= c!226033 ((_ is EmptyExpr!3719) (derivativeStep!957 lt!454967 (head!2469 lt!454960))))))

(declare-fun e!877597 () Bool)

(assert (=> d!392057 (= lt!455968 e!877597)))

(declare-fun c!226032 () Bool)

(assert (=> d!392057 (= c!226032 (isEmpty!8376 (tail!1982 lt!454960)))))

(assert (=> d!392057 (validRegex!1619 (derivativeStep!957 lt!454967 (head!2469 lt!454960)))))

(assert (=> d!392057 (= (matchR!1712 (derivativeStep!957 lt!454967 (head!2469 lt!454960)) (tail!1982 lt!454960)) lt!455968)))

(declare-fun bm!92192 () Bool)

(assert (=> bm!92192 (= call!92197 (isEmpty!8376 (tail!1982 lt!454960)))))

(declare-fun b!1373030 () Bool)

(assert (=> b!1373030 (= e!877596 e!877595)))

(declare-fun c!226034 () Bool)

(assert (=> b!1373030 (= c!226034 ((_ is EmptyLang!3719) (derivativeStep!957 lt!454967 (head!2469 lt!454960))))))

(declare-fun b!1373031 () Bool)

(declare-fun e!877593 () Bool)

(assert (=> b!1373031 (= e!877594 e!877593)))

(declare-fun res!618586 () Bool)

(assert (=> b!1373031 (=> (not res!618586) (not e!877593))))

(assert (=> b!1373031 (= res!618586 (not lt!455968))))

(declare-fun b!1373032 () Bool)

(declare-fun e!877598 () Bool)

(assert (=> b!1373032 (= e!877598 (not (= (head!2469 (tail!1982 lt!454960)) (c!225512 (derivativeStep!957 lt!454967 (head!2469 lt!454960))))))))

(declare-fun b!1373033 () Bool)

(assert (=> b!1373033 (= e!877596 (= lt!455968 call!92197))))

(declare-fun b!1373034 () Bool)

(assert (=> b!1373034 (= e!877593 e!877598)))

(declare-fun res!618583 () Bool)

(assert (=> b!1373034 (=> res!618583 e!877598)))

(assert (=> b!1373034 (= res!618583 call!92197)))

(declare-fun b!1373035 () Bool)

(assert (=> b!1373035 (= e!877597 (nullable!1199 (derivativeStep!957 lt!454967 (head!2469 lt!454960))))))

(declare-fun b!1373036 () Bool)

(assert (=> b!1373036 (= e!877599 (= (head!2469 (tail!1982 lt!454960)) (c!225512 (derivativeStep!957 lt!454967 (head!2469 lt!454960)))))))

(declare-fun b!1373037 () Bool)

(declare-fun res!618585 () Bool)

(assert (=> b!1373037 (=> res!618585 e!877598)))

(assert (=> b!1373037 (= res!618585 (not (isEmpty!8376 (tail!1982 (tail!1982 lt!454960)))))))

(declare-fun b!1373038 () Bool)

(declare-fun res!618589 () Bool)

(assert (=> b!1373038 (=> res!618589 e!877594)))

(assert (=> b!1373038 (= res!618589 e!877599)))

(declare-fun res!618587 () Bool)

(assert (=> b!1373038 (=> (not res!618587) (not e!877599))))

(assert (=> b!1373038 (= res!618587 lt!455968)))

(declare-fun b!1373039 () Bool)

(assert (=> b!1373039 (= e!877597 (matchR!1712 (derivativeStep!957 (derivativeStep!957 lt!454967 (head!2469 lt!454960)) (head!2469 (tail!1982 lt!454960))) (tail!1982 (tail!1982 lt!454960))))))

(declare-fun b!1373040 () Bool)

(declare-fun res!618584 () Bool)

(assert (=> b!1373040 (=> (not res!618584) (not e!877599))))

(assert (=> b!1373040 (= res!618584 (isEmpty!8376 (tail!1982 (tail!1982 lt!454960))))))

(assert (= (and d!392057 c!226032) b!1373035))

(assert (= (and d!392057 (not c!226032)) b!1373039))

(assert (= (and d!392057 c!226033) b!1373033))

(assert (= (and d!392057 (not c!226033)) b!1373030))

(assert (= (and b!1373030 c!226034) b!1373028))

(assert (= (and b!1373030 (not c!226034)) b!1373027))

(assert (= (and b!1373027 (not res!618590)) b!1373038))

(assert (= (and b!1373038 res!618587) b!1373029))

(assert (= (and b!1373029 res!618588) b!1373040))

(assert (= (and b!1373040 res!618584) b!1373036))

(assert (= (and b!1373038 (not res!618589)) b!1373031))

(assert (= (and b!1373031 res!618586) b!1373034))

(assert (= (and b!1373034 (not res!618583)) b!1373037))

(assert (= (and b!1373037 (not res!618585)) b!1373032))

(assert (= (or b!1373033 b!1373029 b!1373034) bm!92192))

(assert (=> b!1373035 m!1541627))

(declare-fun m!1544401 () Bool)

(assert (=> b!1373035 m!1544401))

(assert (=> bm!92192 m!1541629))

(assert (=> bm!92192 m!1541633))

(assert (=> d!392057 m!1541629))

(assert (=> d!392057 m!1541633))

(assert (=> d!392057 m!1541627))

(declare-fun m!1544403 () Bool)

(assert (=> d!392057 m!1544403))

(assert (=> b!1373039 m!1541629))

(declare-fun m!1544405 () Bool)

(assert (=> b!1373039 m!1544405))

(assert (=> b!1373039 m!1541627))

(assert (=> b!1373039 m!1544405))

(declare-fun m!1544407 () Bool)

(assert (=> b!1373039 m!1544407))

(assert (=> b!1373039 m!1541629))

(assert (=> b!1373039 m!1542173))

(assert (=> b!1373039 m!1544407))

(assert (=> b!1373039 m!1542173))

(declare-fun m!1544409 () Bool)

(assert (=> b!1373039 m!1544409))

(assert (=> b!1373040 m!1541629))

(assert (=> b!1373040 m!1542173))

(assert (=> b!1373040 m!1542173))

(declare-fun m!1544411 () Bool)

(assert (=> b!1373040 m!1544411))

(assert (=> b!1373037 m!1541629))

(assert (=> b!1373037 m!1542173))

(assert (=> b!1373037 m!1542173))

(assert (=> b!1373037 m!1544411))

(assert (=> b!1373036 m!1541629))

(assert (=> b!1373036 m!1544405))

(assert (=> b!1373032 m!1541629))

(assert (=> b!1373032 m!1544405))

(assert (=> b!1371340 d!392057))

(declare-fun b!1373041 () Bool)

(declare-fun e!877600 () Regex!3719)

(declare-fun e!877601 () Regex!3719)

(assert (=> b!1373041 (= e!877600 e!877601)))

(declare-fun c!226037 () Bool)

(assert (=> b!1373041 (= c!226037 ((_ is ElementMatch!3719) lt!454967))))

(declare-fun bm!92193 () Bool)

(declare-fun call!92198 () Regex!3719)

(declare-fun c!226039 () Bool)

(assert (=> bm!92193 (= call!92198 (derivativeStep!957 (ite c!226039 (regTwo!7951 lt!454967) (regOne!7950 lt!454967)) (head!2469 lt!454960)))))

(declare-fun call!92199 () Regex!3719)

(declare-fun c!226035 () Bool)

(declare-fun bm!92194 () Bool)

(declare-fun c!226038 () Bool)

(assert (=> bm!92194 (= call!92199 (derivativeStep!957 (ite c!226039 (regOne!7951 lt!454967) (ite c!226038 (reg!4048 lt!454967) (ite c!226035 (regTwo!7950 lt!454967) (regOne!7950 lt!454967)))) (head!2469 lt!454960)))))

(declare-fun b!1373042 () Bool)

(assert (=> b!1373042 (= e!877600 EmptyLang!3719)))

(declare-fun b!1373043 () Bool)

(declare-fun e!877602 () Regex!3719)

(declare-fun call!92200 () Regex!3719)

(assert (=> b!1373043 (= e!877602 (Concat!6214 call!92200 lt!454967))))

(declare-fun b!1373044 () Bool)

(declare-fun e!877604 () Regex!3719)

(declare-fun call!92201 () Regex!3719)

(assert (=> b!1373044 (= e!877604 (Union!3719 (Concat!6214 call!92198 (regTwo!7950 lt!454967)) call!92201))))

(declare-fun b!1373045 () Bool)

(assert (=> b!1373045 (= e!877604 (Union!3719 (Concat!6214 call!92201 (regTwo!7950 lt!454967)) EmptyLang!3719))))

(declare-fun bm!92195 () Bool)

(assert (=> bm!92195 (= call!92200 call!92199)))

(declare-fun d!392059 () Bool)

(declare-fun lt!455969 () Regex!3719)

(assert (=> d!392059 (validRegex!1619 lt!455969)))

(assert (=> d!392059 (= lt!455969 e!877600)))

(declare-fun c!226036 () Bool)

(assert (=> d!392059 (= c!226036 (or ((_ is EmptyExpr!3719) lt!454967) ((_ is EmptyLang!3719) lt!454967)))))

(assert (=> d!392059 (validRegex!1619 lt!454967)))

(assert (=> d!392059 (= (derivativeStep!957 lt!454967 (head!2469 lt!454960)) lt!455969)))

(declare-fun b!1373046 () Bool)

(assert (=> b!1373046 (= e!877601 (ite (= (head!2469 lt!454960) (c!225512 lt!454967)) EmptyExpr!3719 EmptyLang!3719))))

(declare-fun bm!92196 () Bool)

(assert (=> bm!92196 (= call!92201 call!92200)))

(declare-fun b!1373047 () Bool)

(assert (=> b!1373047 (= c!226035 (nullable!1199 (regOne!7950 lt!454967)))))

(assert (=> b!1373047 (= e!877602 e!877604)))

(declare-fun b!1373048 () Bool)

(declare-fun e!877603 () Regex!3719)

(assert (=> b!1373048 (= e!877603 e!877602)))

(assert (=> b!1373048 (= c!226038 ((_ is Star!3719) lt!454967))))

(declare-fun b!1373049 () Bool)

(assert (=> b!1373049 (= c!226039 ((_ is Union!3719) lt!454967))))

(assert (=> b!1373049 (= e!877601 e!877603)))

(declare-fun b!1373050 () Bool)

(assert (=> b!1373050 (= e!877603 (Union!3719 call!92199 call!92198))))

(assert (= (and d!392059 c!226036) b!1373042))

(assert (= (and d!392059 (not c!226036)) b!1373041))

(assert (= (and b!1373041 c!226037) b!1373046))

(assert (= (and b!1373041 (not c!226037)) b!1373049))

(assert (= (and b!1373049 c!226039) b!1373050))

(assert (= (and b!1373049 (not c!226039)) b!1373048))

(assert (= (and b!1373048 c!226038) b!1373043))

(assert (= (and b!1373048 (not c!226038)) b!1373047))

(assert (= (and b!1373047 c!226035) b!1373044))

(assert (= (and b!1373047 (not c!226035)) b!1373045))

(assert (= (or b!1373044 b!1373045) bm!92196))

(assert (= (or b!1373043 bm!92196) bm!92195))

(assert (= (or b!1373050 bm!92195) bm!92194))

(assert (= (or b!1373050 b!1373044) bm!92193))

(assert (=> bm!92193 m!1541625))

(declare-fun m!1544413 () Bool)

(assert (=> bm!92193 m!1544413))

(assert (=> bm!92194 m!1541625))

(declare-fun m!1544415 () Bool)

(assert (=> bm!92194 m!1544415))

(declare-fun m!1544417 () Bool)

(assert (=> d!392059 m!1544417))

(assert (=> d!392059 m!1541623))

(assert (=> b!1373047 m!1544209))

(assert (=> b!1371340 d!392059))

(assert (=> b!1371340 d!391881))

(assert (=> b!1371340 d!391303))

(declare-fun d!392061 () Bool)

(declare-fun lt!455970 () Bool)

(assert (=> d!392061 (= lt!455970 (select (content!2031 (t!121483 lt!454960)) lt!454970))))

(declare-fun e!877605 () Bool)

(assert (=> d!392061 (= lt!455970 e!877605)))

(declare-fun res!618592 () Bool)

(assert (=> d!392061 (=> (not res!618592) (not e!877605))))

(assert (=> d!392061 (= res!618592 ((_ is Cons!13888) (t!121483 lt!454960)))))

(assert (=> d!392061 (= (contains!2600 (t!121483 lt!454960) lt!454970) lt!455970)))

(declare-fun b!1373051 () Bool)

(declare-fun e!877606 () Bool)

(assert (=> b!1373051 (= e!877605 e!877606)))

(declare-fun res!618591 () Bool)

(assert (=> b!1373051 (=> res!618591 e!877606)))

(assert (=> b!1373051 (= res!618591 (= (h!19289 (t!121483 lt!454960)) lt!454970))))

(declare-fun b!1373052 () Bool)

(assert (=> b!1373052 (= e!877606 (contains!2600 (t!121483 (t!121483 lt!454960)) lt!454970))))

(assert (= (and d!392061 res!618592) b!1373051))

(assert (= (and b!1373051 (not res!618591)) b!1373052))

(assert (=> d!392061 m!1543463))

(declare-fun m!1544419 () Bool)

(assert (=> d!392061 m!1544419))

(declare-fun m!1544421 () Bool)

(assert (=> b!1373052 m!1544421))

(assert (=> b!1371385 d!392061))

(declare-fun d!392063 () Bool)

(declare-fun lt!455971 () Token!4472)

(assert (=> d!392063 (= lt!455971 (apply!3416 (list!5351 (_1!7630 lt!455045)) 0))))

(assert (=> d!392063 (= lt!455971 (apply!3417 (c!225514 (_1!7630 lt!455045)) 0))))

(declare-fun e!877607 () Bool)

(assert (=> d!392063 e!877607))

(declare-fun res!618593 () Bool)

(assert (=> d!392063 (=> (not res!618593) (not e!877607))))

(assert (=> d!392063 (= res!618593 (<= 0 0))))

(assert (=> d!392063 (= (apply!3411 (_1!7630 lt!455045) 0) lt!455971)))

(declare-fun b!1373053 () Bool)

(assert (=> b!1373053 (= e!877607 (< 0 (size!11397 (_1!7630 lt!455045))))))

(assert (= (and d!392063 res!618593) b!1373053))

(assert (=> d!392063 m!1544381))

(assert (=> d!392063 m!1544381))

(declare-fun m!1544423 () Bool)

(assert (=> d!392063 m!1544423))

(declare-fun m!1544425 () Bool)

(assert (=> d!392063 m!1544425))

(assert (=> b!1373053 m!1541119))

(assert (=> b!1370972 d!392063))

(declare-fun d!392065 () Bool)

(declare-fun lt!455972 () Int)

(assert (=> d!392065 (>= lt!455972 0)))

(declare-fun e!877608 () Int)

(assert (=> d!392065 (= lt!455972 e!877608)))

(declare-fun c!226040 () Bool)

(assert (=> d!392065 (= c!226040 ((_ is Nil!13888) lt!455209))))

(assert (=> d!392065 (= (size!11399 lt!455209) lt!455972)))

(declare-fun b!1373054 () Bool)

(assert (=> b!1373054 (= e!877608 0)))

(declare-fun b!1373055 () Bool)

(assert (=> b!1373055 (= e!877608 (+ 1 (size!11399 (t!121483 lt!455209))))))

(assert (= (and d!392065 c!226040) b!1373054))

(assert (= (and d!392065 (not c!226040)) b!1373055))

(declare-fun m!1544427 () Bool)

(assert (=> b!1373055 m!1544427))

(assert (=> b!1371401 d!392065))

(assert (=> b!1371401 d!391299))

(declare-fun d!392067 () Bool)

(declare-fun lt!455973 () Int)

(assert (=> d!392067 (>= lt!455973 0)))

(declare-fun e!877609 () Int)

(assert (=> d!392067 (= lt!455973 e!877609)))

(declare-fun c!226041 () Bool)

(assert (=> d!392067 (= c!226041 ((_ is Nil!13888) (getSuffix!567 lt!454960 lt!454969)))))

(assert (=> d!392067 (= (size!11399 (getSuffix!567 lt!454960 lt!454969)) lt!455973)))

(declare-fun b!1373056 () Bool)

(assert (=> b!1373056 (= e!877609 0)))

(declare-fun b!1373057 () Bool)

(assert (=> b!1373057 (= e!877609 (+ 1 (size!11399 (t!121483 (getSuffix!567 lt!454960 lt!454969)))))))

(assert (= (and d!392067 c!226041) b!1373056))

(assert (= (and d!392067 (not c!226041)) b!1373057))

(declare-fun m!1544429 () Bool)

(assert (=> b!1373057 m!1544429))

(assert (=> b!1371401 d!392067))

(assert (=> b!1371261 d!391857))

(declare-fun d!392069 () Bool)

(assert (=> d!392069 (= (apply!3415 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455162))))) (dynLambda!6326 (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162))))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455162))))))))

(declare-fun b_lambda!42097 () Bool)

(assert (=> (not b_lambda!42097) (not d!392069)))

(declare-fun tb!72301 () Bool)

(declare-fun t!121612 () Bool)

(assert (=> (and b!1370765 (= (toValue!3672 (transformation!2405 (h!19291 rules!2550))) (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))) t!121612) tb!72301))

(declare-fun result!87792 () Bool)

(assert (=> tb!72301 (= result!87792 (inv!21 (dynLambda!6326 (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162))))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455162)))))))))

(declare-fun m!1544431 () Bool)

(assert (=> tb!72301 m!1544431))

(assert (=> d!392069 t!121612))

(declare-fun b_and!92003 () Bool)

(assert (= b_and!91995 (and (=> t!121612 result!87792) b_and!92003)))

(declare-fun t!121614 () Bool)

(declare-fun tb!72303 () Bool)

(assert (=> (and b!1370761 (= (toValue!3672 (transformation!2405 (rule!4160 t2!34))) (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))) t!121614) tb!72303))

(declare-fun result!87794 () Bool)

(assert (= result!87794 result!87792))

(assert (=> d!392069 t!121614))

(declare-fun b_and!92005 () Bool)

(assert (= b_and!91997 (and (=> t!121614 result!87794) b_and!92005)))

(declare-fun tb!72305 () Bool)

(declare-fun t!121616 () Bool)

(assert (=> (and b!1370756 (= (toValue!3672 (transformation!2405 (rule!4160 t1!34))) (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))) t!121616) tb!72305))

(declare-fun result!87796 () Bool)

(assert (= result!87796 result!87792))

(assert (=> d!392069 t!121616))

(declare-fun b_and!92007 () Bool)

(assert (= b_and!91999 (and (=> t!121616 result!87796) b_and!92007)))

(declare-fun t!121618 () Bool)

(declare-fun tb!72307 () Bool)

(assert (=> (and b!1371483 (= (toValue!3672 (transformation!2405 (h!19291 (t!121485 rules!2550)))) (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))) t!121618) tb!72307))

(declare-fun result!87798 () Bool)

(assert (= result!87798 result!87792))

(assert (=> d!392069 t!121618))

(declare-fun b_and!92009 () Bool)

(assert (= b_and!92001 (and (=> t!121618 result!87798) b_and!92009)))

(assert (=> d!392069 m!1541525))

(declare-fun m!1544433 () Bool)

(assert (=> d!392069 m!1544433))

(assert (=> b!1371261 d!392069))

(declare-fun d!392071 () Bool)

(assert (=> d!392071 (= (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455162)))) (fromListB!720 (originalCharacters!3267 (_1!7631 (get!4347 lt!455162)))))))

(declare-fun bs!335926 () Bool)

(assert (= bs!335926 d!392071))

(declare-fun m!1544435 () Bool)

(assert (=> bs!335926 m!1544435))

(assert (=> b!1371261 d!392071))

(assert (=> b!1371322 d!391951))

(assert (=> b!1371322 d!391601))

(declare-fun d!392073 () Bool)

(declare-fun lt!455974 () Int)

(assert (=> d!392073 (>= lt!455974 0)))

(declare-fun e!877611 () Int)

(assert (=> d!392073 (= lt!455974 e!877611)))

(declare-fun c!226042 () Bool)

(assert (=> d!392073 (= c!226042 ((_ is Nil!13888) (originalCharacters!3267 t1!34)))))

(assert (=> d!392073 (= (size!11399 (originalCharacters!3267 t1!34)) lt!455974)))

(declare-fun b!1373058 () Bool)

(assert (=> b!1373058 (= e!877611 0)))

(declare-fun b!1373059 () Bool)

(assert (=> b!1373059 (= e!877611 (+ 1 (size!11399 (t!121483 (originalCharacters!3267 t1!34)))))))

(assert (= (and d!392073 c!226042) b!1373058))

(assert (= (and d!392073 (not c!226042)) b!1373059))

(declare-fun m!1544437 () Bool)

(assert (=> b!1373059 m!1544437))

(assert (=> b!1371414 d!392073))

(declare-fun d!392075 () Bool)

(declare-fun lt!455975 () Int)

(assert (=> d!392075 (>= lt!455975 0)))

(declare-fun e!877612 () Int)

(assert (=> d!392075 (= lt!455975 e!877612)))

(declare-fun c!226043 () Bool)

(assert (=> d!392075 (= c!226043 ((_ is Nil!13891) (_1!7629 lt!455190)))))

(assert (=> d!392075 (= (size!11402 (_1!7629 lt!455190)) lt!455975)))

(declare-fun b!1373060 () Bool)

(assert (=> b!1373060 (= e!877612 0)))

(declare-fun b!1373061 () Bool)

(assert (=> b!1373061 (= e!877612 (+ 1 (size!11402 (t!121486 (_1!7629 lt!455190)))))))

(assert (= (and d!392075 c!226043) b!1373060))

(assert (= (and d!392075 (not c!226043)) b!1373061))

(declare-fun m!1544439 () Bool)

(assert (=> b!1373061 m!1544439))

(assert (=> d!391125 d!392075))

(declare-fun b!1373062 () Bool)

(declare-fun e!877613 () Option!2668)

(declare-fun call!92202 () Option!2668)

(assert (=> b!1373062 (= e!877613 call!92202)))

(declare-fun b!1373063 () Bool)

(declare-fun res!618597 () Bool)

(declare-fun e!877615 () Bool)

(assert (=> b!1373063 (=> (not res!618597) (not e!877615))))

(declare-fun lt!455980 () Option!2668)

(assert (=> b!1373063 (= res!618597 (matchR!1712 (regex!2405 (rule!4160 (_1!7631 (get!4347 lt!455980)))) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455980))))))))

(declare-fun b!1373064 () Bool)

(declare-fun e!877614 () Bool)

(assert (=> b!1373064 (= e!877614 e!877615)))

(declare-fun res!618599 () Bool)

(assert (=> b!1373064 (=> (not res!618599) (not e!877615))))

(assert (=> b!1373064 (= res!618599 (isDefined!2219 lt!455980))))

(declare-fun b!1373065 () Bool)

(declare-fun res!618594 () Bool)

(assert (=> b!1373065 (=> (not res!618594) (not e!877615))))

(assert (=> b!1373065 (= res!618594 (= (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455980)))) (originalCharacters!3267 (_1!7631 (get!4347 lt!455980)))))))

(declare-fun b!1373066 () Bool)

(assert (=> b!1373066 (= e!877615 (contains!2599 rules!2550 (rule!4160 (_1!7631 (get!4347 lt!455980)))))))

(declare-fun b!1373067 () Bool)

(declare-fun res!618595 () Bool)

(assert (=> b!1373067 (=> (not res!618595) (not e!877615))))

(assert (=> b!1373067 (= res!618595 (< (size!11399 (_2!7631 (get!4347 lt!455980))) (size!11399 (list!5350 lt!454956))))))

(declare-fun b!1373068 () Bool)

(declare-fun res!618598 () Bool)

(assert (=> b!1373068 (=> (not res!618598) (not e!877615))))

(assert (=> b!1373068 (= res!618598 (= (++!3590 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455980)))) (_2!7631 (get!4347 lt!455980))) (list!5350 lt!454956)))))

(declare-fun bm!92197 () Bool)

(assert (=> bm!92197 (= call!92202 (maxPrefixOneRule!617 thiss!19762 (h!19291 rules!2550) (list!5350 lt!454956)))))

(declare-fun d!392077 () Bool)

(assert (=> d!392077 e!877614))

(declare-fun res!618596 () Bool)

(assert (=> d!392077 (=> res!618596 e!877614)))

(assert (=> d!392077 (= res!618596 (isEmpty!8380 lt!455980))))

(assert (=> d!392077 (= lt!455980 e!877613)))

(declare-fun c!226044 () Bool)

(assert (=> d!392077 (= c!226044 (and ((_ is Cons!13890) rules!2550) ((_ is Nil!13890) (t!121485 rules!2550))))))

(declare-fun lt!455976 () Unit!20107)

(declare-fun lt!455977 () Unit!20107)

(assert (=> d!392077 (= lt!455976 lt!455977)))

(assert (=> d!392077 (isPrefix!1129 (list!5350 lt!454956) (list!5350 lt!454956))))

(assert (=> d!392077 (= lt!455977 (lemmaIsPrefixRefl!791 (list!5350 lt!454956) (list!5350 lt!454956)))))

(assert (=> d!392077 (rulesValidInductive!770 thiss!19762 rules!2550)))

(assert (=> d!392077 (= (maxPrefix!1082 thiss!19762 rules!2550 (list!5350 lt!454956)) lt!455980)))

(declare-fun b!1373069 () Bool)

(declare-fun res!618600 () Bool)

(assert (=> b!1373069 (=> (not res!618600) (not e!877615))))

(assert (=> b!1373069 (= res!618600 (= (value!78175 (_1!7631 (get!4347 lt!455980))) (apply!3415 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455980)))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455980)))))))))

(declare-fun b!1373070 () Bool)

(declare-fun lt!455979 () Option!2668)

(declare-fun lt!455978 () Option!2668)

(assert (=> b!1373070 (= e!877613 (ite (and ((_ is None!2667) lt!455979) ((_ is None!2667) lt!455978)) None!2667 (ite ((_ is None!2667) lt!455978) lt!455979 (ite ((_ is None!2667) lt!455979) lt!455978 (ite (>= (size!11391 (_1!7631 (v!21471 lt!455979))) (size!11391 (_1!7631 (v!21471 lt!455978)))) lt!455979 lt!455978)))))))

(assert (=> b!1373070 (= lt!455979 call!92202)))

(assert (=> b!1373070 (= lt!455978 (maxPrefix!1082 thiss!19762 (t!121485 rules!2550) (list!5350 lt!454956)))))

(assert (= (and d!392077 c!226044) b!1373062))

(assert (= (and d!392077 (not c!226044)) b!1373070))

(assert (= (or b!1373062 b!1373070) bm!92197))

(assert (= (and d!392077 (not res!618596)) b!1373064))

(assert (= (and b!1373064 res!618599) b!1373065))

(assert (= (and b!1373065 res!618594) b!1373067))

(assert (= (and b!1373067 res!618595) b!1373068))

(assert (= (and b!1373068 res!618598) b!1373069))

(assert (= (and b!1373069 res!618600) b!1373063))

(assert (= (and b!1373063 res!618597) b!1373066))

(declare-fun m!1544441 () Bool)

(assert (=> b!1373069 m!1544441))

(declare-fun m!1544443 () Bool)

(assert (=> b!1373069 m!1544443))

(assert (=> b!1373069 m!1544443))

(declare-fun m!1544445 () Bool)

(assert (=> b!1373069 m!1544445))

(assert (=> b!1373065 m!1544441))

(declare-fun m!1544447 () Bool)

(assert (=> b!1373065 m!1544447))

(assert (=> b!1373065 m!1544447))

(declare-fun m!1544449 () Bool)

(assert (=> b!1373065 m!1544449))

(assert (=> b!1373070 m!1540785))

(declare-fun m!1544451 () Bool)

(assert (=> b!1373070 m!1544451))

(assert (=> b!1373063 m!1544441))

(assert (=> b!1373063 m!1544447))

(assert (=> b!1373063 m!1544447))

(assert (=> b!1373063 m!1544449))

(assert (=> b!1373063 m!1544449))

(declare-fun m!1544453 () Bool)

(assert (=> b!1373063 m!1544453))

(declare-fun m!1544455 () Bool)

(assert (=> d!392077 m!1544455))

(assert (=> d!392077 m!1540785))

(assert (=> d!392077 m!1540785))

(declare-fun m!1544457 () Bool)

(assert (=> d!392077 m!1544457))

(assert (=> d!392077 m!1540785))

(assert (=> d!392077 m!1540785))

(declare-fun m!1544459 () Bool)

(assert (=> d!392077 m!1544459))

(assert (=> d!392077 m!1541543))

(assert (=> b!1373068 m!1544441))

(assert (=> b!1373068 m!1544447))

(assert (=> b!1373068 m!1544447))

(assert (=> b!1373068 m!1544449))

(assert (=> b!1373068 m!1544449))

(declare-fun m!1544461 () Bool)

(assert (=> b!1373068 m!1544461))

(declare-fun m!1544463 () Bool)

(assert (=> b!1373064 m!1544463))

(assert (=> bm!92197 m!1540785))

(declare-fun m!1544465 () Bool)

(assert (=> bm!92197 m!1544465))

(assert (=> b!1373066 m!1544441))

(declare-fun m!1544467 () Bool)

(assert (=> b!1373066 m!1544467))

(assert (=> b!1373067 m!1544441))

(declare-fun m!1544469 () Bool)

(assert (=> b!1373067 m!1544469))

(assert (=> b!1373067 m!1540785))

(assert (=> b!1373067 m!1541679))

(assert (=> d!391125 d!392077))

(declare-fun d!392079 () Bool)

(assert (=> d!392079 (= (inv!18249 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34))) (isBalanced!1348 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34)))))))

(declare-fun bs!335927 () Bool)

(assert (= bs!335927 d!392079))

(declare-fun m!1544471 () Bool)

(assert (=> bs!335927 m!1544471))

(assert (=> tb!72207 d!392079))

(assert (=> b!1371347 d!391679))

(assert (=> b!1371347 d!391681))

(assert (=> b!1371347 d!391685))

(declare-fun d!392081 () Bool)

(assert (=> d!392081 (= (isEmpty!8380 lt!455183) (not ((_ is Some!2667) lt!455183)))))

(assert (=> d!391123 d!392081))

(declare-fun b!1373071 () Bool)

(declare-fun e!877616 () Bool)

(declare-fun e!877618 () Bool)

(assert (=> b!1373071 (= e!877616 e!877618)))

(declare-fun res!618601 () Bool)

(assert (=> b!1373071 (=> (not res!618601) (not e!877618))))

(assert (=> b!1373071 (= res!618601 (not ((_ is Nil!13888) lt!454961)))))

(declare-fun b!1373073 () Bool)

(assert (=> b!1373073 (= e!877618 (isPrefix!1129 (tail!1982 lt!454961) (tail!1982 lt!454961)))))

(declare-fun b!1373074 () Bool)

(declare-fun e!877617 () Bool)

(assert (=> b!1373074 (= e!877617 (>= (size!11399 lt!454961) (size!11399 lt!454961)))))

(declare-fun d!392083 () Bool)

(assert (=> d!392083 e!877617))

(declare-fun res!618604 () Bool)

(assert (=> d!392083 (=> res!618604 e!877617)))

(declare-fun lt!455981 () Bool)

(assert (=> d!392083 (= res!618604 (not lt!455981))))

(assert (=> d!392083 (= lt!455981 e!877616)))

(declare-fun res!618603 () Bool)

(assert (=> d!392083 (=> res!618603 e!877616)))

(assert (=> d!392083 (= res!618603 ((_ is Nil!13888) lt!454961))))

(assert (=> d!392083 (= (isPrefix!1129 lt!454961 lt!454961) lt!455981)))

(declare-fun b!1373072 () Bool)

(declare-fun res!618602 () Bool)

(assert (=> b!1373072 (=> (not res!618602) (not e!877618))))

(assert (=> b!1373072 (= res!618602 (= (head!2469 lt!454961) (head!2469 lt!454961)))))

(assert (= (and d!392083 (not res!618603)) b!1373071))

(assert (= (and b!1373071 res!618601) b!1373072))

(assert (= (and b!1373072 res!618602) b!1373073))

(assert (= (and d!392083 (not res!618604)) b!1373074))

(assert (=> b!1373073 m!1541599))

(assert (=> b!1373073 m!1541599))

(assert (=> b!1373073 m!1541599))

(assert (=> b!1373073 m!1541599))

(declare-fun m!1544473 () Bool)

(assert (=> b!1373073 m!1544473))

(assert (=> b!1373074 m!1541671))

(assert (=> b!1373074 m!1541671))

(assert (=> b!1373072 m!1541595))

(assert (=> b!1373072 m!1541595))

(assert (=> d!391123 d!392083))

(declare-fun d!392085 () Bool)

(assert (=> d!392085 (isPrefix!1129 lt!454961 lt!454961)))

(declare-fun lt!455982 () Unit!20107)

(assert (=> d!392085 (= lt!455982 (choose!8445 lt!454961 lt!454961))))

(assert (=> d!392085 (= (lemmaIsPrefixRefl!791 lt!454961 lt!454961) lt!455982)))

(declare-fun bs!335928 () Bool)

(assert (= bs!335928 d!392085))

(assert (=> bs!335928 m!1541657))

(declare-fun m!1544475 () Bool)

(assert (=> bs!335928 m!1544475))

(assert (=> d!391123 d!392085))

(assert (=> d!391123 d!391449))

(declare-fun b!1373076 () Bool)

(declare-fun e!877619 () List!13954)

(declare-fun e!877620 () List!13954)

(assert (=> b!1373076 (= e!877619 e!877620)))

(declare-fun c!226046 () Bool)

(assert (=> b!1373076 (= c!226046 ((_ is Leaf!6971) (c!225513 lt!454963)))))

(declare-fun b!1373078 () Bool)

(assert (=> b!1373078 (= e!877620 (++!3590 (list!5355 (left!11884 (c!225513 lt!454963))) (list!5355 (right!12214 (c!225513 lt!454963)))))))

(declare-fun d!392087 () Bool)

(declare-fun c!226045 () Bool)

(assert (=> d!392087 (= c!226045 ((_ is Empty!4572) (c!225513 lt!454963)))))

(assert (=> d!392087 (= (list!5355 (c!225513 lt!454963)) e!877619)))

(declare-fun b!1373075 () Bool)

(assert (=> b!1373075 (= e!877619 Nil!13888)))

(declare-fun b!1373077 () Bool)

(assert (=> b!1373077 (= e!877620 (list!5358 (xs!7299 (c!225513 lt!454963))))))

(assert (= (and d!392087 c!226045) b!1373075))

(assert (= (and d!392087 (not c!226045)) b!1373076))

(assert (= (and b!1373076 c!226046) b!1373077))

(assert (= (and b!1373076 (not c!226046)) b!1373078))

(assert (=> b!1373078 m!1543925))

(assert (=> b!1373078 m!1543927))

(assert (=> b!1373078 m!1543925))

(assert (=> b!1373078 m!1543927))

(declare-fun m!1544477 () Bool)

(assert (=> b!1373078 m!1544477))

(declare-fun m!1544479 () Bool)

(assert (=> b!1373077 m!1544479))

(assert (=> d!391175 d!392087))

(assert (=> d!391047 d!390957))

(declare-fun d!392089 () Bool)

(assert (=> d!392089 (= (inv!17 (value!78175 t1!34)) (= (charsToBigInt!1 (text!17913 (value!78175 t1!34))) (value!78167 (value!78175 t1!34))))))

(declare-fun bs!335929 () Bool)

(assert (= bs!335929 d!392089))

(declare-fun m!1544481 () Bool)

(assert (=> bs!335929 m!1544481))

(assert (=> b!1371277 d!392089))

(declare-fun d!392091 () Bool)

(assert (=> d!392091 (= (list!5350 lt!455194) (list!5355 (c!225513 lt!455194)))))

(declare-fun bs!335930 () Bool)

(assert (= bs!335930 d!392091))

(declare-fun m!1544483 () Bool)

(assert (=> bs!335930 m!1544483))

(assert (=> d!391133 d!392091))

(declare-fun d!392093 () Bool)

(declare-fun c!226047 () Bool)

(assert (=> d!392093 (= c!226047 ((_ is Cons!13891) (list!5351 (singletonSeq!1036 t2!34))))))

(declare-fun e!877621 () List!13954)

(assert (=> d!392093 (= (printList!608 thiss!19762 (list!5351 (singletonSeq!1036 t2!34))) e!877621)))

(declare-fun b!1373079 () Bool)

(assert (=> b!1373079 (= e!877621 (++!3590 (list!5350 (charsOf!1377 (h!19292 (list!5351 (singletonSeq!1036 t2!34))))) (printList!608 thiss!19762 (t!121486 (list!5351 (singletonSeq!1036 t2!34))))))))

(declare-fun b!1373080 () Bool)

(assert (=> b!1373080 (= e!877621 Nil!13888)))

(assert (= (and d!392093 c!226047) b!1373079))

(assert (= (and d!392093 (not c!226047)) b!1373080))

(declare-fun m!1544485 () Bool)

(assert (=> b!1373079 m!1544485))

(assert (=> b!1373079 m!1544485))

(declare-fun m!1544487 () Bool)

(assert (=> b!1373079 m!1544487))

(declare-fun m!1544489 () Bool)

(assert (=> b!1373079 m!1544489))

(assert (=> b!1373079 m!1544487))

(assert (=> b!1373079 m!1544489))

(declare-fun m!1544491 () Bool)

(assert (=> b!1373079 m!1544491))

(assert (=> d!391133 d!392093))

(assert (=> d!391133 d!392047))

(declare-fun d!392095 () Bool)

(declare-fun lt!455989 () BalanceConc!9084)

(assert (=> d!392095 (= (list!5350 lt!455989) (printListTailRec!250 thiss!19762 (dropList!407 (singletonSeq!1036 t2!34) 0) (list!5350 (BalanceConc!9085 Empty!4572))))))

(declare-fun e!877623 () BalanceConc!9084)

(assert (=> d!392095 (= lt!455989 e!877623)))

(declare-fun c!226048 () Bool)

(assert (=> d!392095 (= c!226048 (>= 0 (size!11397 (singletonSeq!1036 t2!34))))))

(declare-fun e!877622 () Bool)

(assert (=> d!392095 e!877622))

(declare-fun res!618605 () Bool)

(assert (=> d!392095 (=> (not res!618605) (not e!877622))))

(assert (=> d!392095 (= res!618605 (>= 0 0))))

(assert (=> d!392095 (= (printTailRec!590 thiss!19762 (singletonSeq!1036 t2!34) 0 (BalanceConc!9085 Empty!4572)) lt!455989)))

(declare-fun b!1373081 () Bool)

(assert (=> b!1373081 (= e!877622 (<= 0 (size!11397 (singletonSeq!1036 t2!34))))))

(declare-fun b!1373082 () Bool)

(assert (=> b!1373082 (= e!877623 (BalanceConc!9085 Empty!4572))))

(declare-fun b!1373083 () Bool)

(assert (=> b!1373083 (= e!877623 (printTailRec!590 thiss!19762 (singletonSeq!1036 t2!34) (+ 0 1) (++!3592 (BalanceConc!9085 Empty!4572) (charsOf!1377 (apply!3411 (singletonSeq!1036 t2!34) 0)))))))

(declare-fun lt!455987 () List!13957)

(assert (=> b!1373083 (= lt!455987 (list!5351 (singletonSeq!1036 t2!34)))))

(declare-fun lt!455986 () Unit!20107)

(assert (=> b!1373083 (= lt!455986 (lemmaDropApply!441 lt!455987 0))))

(assert (=> b!1373083 (= (head!2472 (drop!686 lt!455987 0)) (apply!3416 lt!455987 0))))

(declare-fun lt!455988 () Unit!20107)

(assert (=> b!1373083 (= lt!455988 lt!455986)))

(declare-fun lt!455985 () List!13957)

(assert (=> b!1373083 (= lt!455985 (list!5351 (singletonSeq!1036 t2!34)))))

(declare-fun lt!455984 () Unit!20107)

(assert (=> b!1373083 (= lt!455984 (lemmaDropTail!421 lt!455985 0))))

(assert (=> b!1373083 (= (tail!1984 (drop!686 lt!455985 0)) (drop!686 lt!455985 (+ 0 1)))))

(declare-fun lt!455983 () Unit!20107)

(assert (=> b!1373083 (= lt!455983 lt!455984)))

(assert (= (and d!392095 res!618605) b!1373081))

(assert (= (and d!392095 c!226048) b!1373082))

(assert (= (and d!392095 (not c!226048)) b!1373083))

(assert (=> d!392095 m!1540779))

(declare-fun m!1544493 () Bool)

(assert (=> d!392095 m!1544493))

(declare-fun m!1544495 () Bool)

(assert (=> d!392095 m!1544495))

(declare-fun m!1544497 () Bool)

(assert (=> d!392095 m!1544497))

(assert (=> d!392095 m!1542631))

(declare-fun m!1544499 () Bool)

(assert (=> d!392095 m!1544499))

(assert (=> d!392095 m!1540779))

(assert (=> d!392095 m!1544497))

(assert (=> d!392095 m!1542631))

(assert (=> b!1373081 m!1540779))

(assert (=> b!1373081 m!1544493))

(declare-fun m!1544501 () Bool)

(assert (=> b!1373083 m!1544501))

(declare-fun m!1544503 () Bool)

(assert (=> b!1373083 m!1544503))

(assert (=> b!1373083 m!1540779))

(assert (=> b!1373083 m!1541113))

(declare-fun m!1544505 () Bool)

(assert (=> b!1373083 m!1544505))

(declare-fun m!1544507 () Bool)

(assert (=> b!1373083 m!1544507))

(declare-fun m!1544509 () Bool)

(assert (=> b!1373083 m!1544509))

(declare-fun m!1544511 () Bool)

(assert (=> b!1373083 m!1544511))

(assert (=> b!1373083 m!1540779))

(declare-fun m!1544513 () Bool)

(assert (=> b!1373083 m!1544513))

(declare-fun m!1544515 () Bool)

(assert (=> b!1373083 m!1544515))

(assert (=> b!1373083 m!1544505))

(assert (=> b!1373083 m!1540779))

(declare-fun m!1544517 () Bool)

(assert (=> b!1373083 m!1544517))

(declare-fun m!1544519 () Bool)

(assert (=> b!1373083 m!1544519))

(declare-fun m!1544521 () Bool)

(assert (=> b!1373083 m!1544521))

(assert (=> b!1373083 m!1544517))

(assert (=> b!1373083 m!1544501))

(assert (=> b!1373083 m!1544513))

(assert (=> b!1373083 m!1544521))

(declare-fun m!1544523 () Bool)

(assert (=> b!1373083 m!1544523))

(assert (=> d!391133 d!392095))

(declare-fun d!392097 () Bool)

(assert (=> d!392097 (dynLambda!6311 lambda!58187 lt!454957)))

(assert (=> d!392097 true))

(declare-fun _$7!724 () Unit!20107)

(assert (=> d!392097 (= (choose!8439 rules!2550 lambda!58187 lt!454957) _$7!724)))

(declare-fun b_lambda!42099 () Bool)

(assert (=> (not b_lambda!42099) (not d!392097)))

(declare-fun bs!335931 () Bool)

(assert (= bs!335931 d!392097))

(assert (=> bs!335931 m!1541615))

(assert (=> d!391115 d!392097))

(assert (=> d!391115 d!391275))

(declare-fun d!392099 () Bool)

(assert (=> d!392099 (= (list!5351 (_1!7630 lt!455193)) (list!5354 (c!225514 (_1!7630 lt!455193))))))

(declare-fun bs!335932 () Bool)

(assert (= bs!335932 d!392099))

(declare-fun m!1544525 () Bool)

(assert (=> bs!335932 m!1544525))

(assert (=> b!1371368 d!392099))

(assert (=> b!1371368 d!391147))

(assert (=> b!1371368 d!391149))

(assert (=> b!1371257 d!391853))

(assert (=> b!1371257 d!391855))

(assert (=> b!1371257 d!391857))

(declare-fun d!392101 () Bool)

(assert (=> d!392101 (= (nullable!1199 (regex!2405 (rule!4160 t1!34))) (nullableFct!281 (regex!2405 (rule!4160 t1!34))))))

(declare-fun bs!335933 () Bool)

(assert (= bs!335933 d!392101))

(declare-fun m!1544527 () Bool)

(assert (=> bs!335933 m!1544527))

(assert (=> b!1371317 d!392101))

(declare-fun b!1373084 () Bool)

(declare-fun res!618607 () Bool)

(declare-fun e!877625 () Bool)

(assert (=> b!1373084 (=> (not res!618607) (not e!877625))))

(declare-fun lt!455993 () Option!2668)

(assert (=> b!1373084 (= res!618607 (= (++!3590 (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455993)))) (_2!7631 (get!4347 lt!455993))) lt!454961))))

(declare-fun b!1373085 () Bool)

(declare-fun res!618611 () Bool)

(assert (=> b!1373085 (=> (not res!618611) (not e!877625))))

(assert (=> b!1373085 (= res!618611 (= (value!78175 (_1!7631 (get!4347 lt!455993))) (apply!3415 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455993)))) (seqFromList!1635 (originalCharacters!3267 (_1!7631 (get!4347 lt!455993)))))))))

(declare-fun b!1373086 () Bool)

(declare-fun e!877624 () Bool)

(assert (=> b!1373086 (= e!877624 e!877625)))

(declare-fun res!618606 () Bool)

(assert (=> b!1373086 (=> (not res!618606) (not e!877625))))

(assert (=> b!1373086 (= res!618606 (matchR!1712 (regex!2405 (h!19291 rules!2550)) (list!5350 (charsOf!1377 (_1!7631 (get!4347 lt!455993))))))))

(declare-fun b!1373087 () Bool)

(declare-fun e!877627 () Option!2668)

(assert (=> b!1373087 (= e!877627 None!2667)))

(declare-fun d!392103 () Bool)

(assert (=> d!392103 e!877624))

(declare-fun res!618610 () Bool)

(assert (=> d!392103 (=> res!618610 e!877624)))

(assert (=> d!392103 (= res!618610 (isEmpty!8380 lt!455993))))

(assert (=> d!392103 (= lt!455993 e!877627)))

(declare-fun c!226049 () Bool)

(declare-fun lt!455992 () tuple2!13496)

(assert (=> d!392103 (= c!226049 (isEmpty!8376 (_1!7634 lt!455992)))))

(assert (=> d!392103 (= lt!455992 (findLongestMatch!237 (regex!2405 (h!19291 rules!2550)) lt!454961))))

(assert (=> d!392103 (ruleValid!592 thiss!19762 (h!19291 rules!2550))))

(assert (=> d!392103 (= (maxPrefixOneRule!617 thiss!19762 (h!19291 rules!2550) lt!454961) lt!455993)))

(declare-fun b!1373088 () Bool)

(declare-fun res!618612 () Bool)

(assert (=> b!1373088 (=> (not res!618612) (not e!877625))))

(assert (=> b!1373088 (= res!618612 (= (rule!4160 (_1!7631 (get!4347 lt!455993))) (h!19291 rules!2550)))))

(declare-fun b!1373089 () Bool)

(assert (=> b!1373089 (= e!877625 (= (size!11391 (_1!7631 (get!4347 lt!455993))) (size!11399 (originalCharacters!3267 (_1!7631 (get!4347 lt!455993))))))))

(declare-fun b!1373090 () Bool)

(declare-fun res!618608 () Bool)

(assert (=> b!1373090 (=> (not res!618608) (not e!877625))))

(assert (=> b!1373090 (= res!618608 (< (size!11399 (_2!7631 (get!4347 lt!455993))) (size!11399 lt!454961)))))

(declare-fun b!1373091 () Bool)

(assert (=> b!1373091 (= e!877627 (Some!2667 (tuple2!13491 (Token!4473 (apply!3415 (transformation!2405 (h!19291 rules!2550)) (seqFromList!1635 (_1!7634 lt!455992))) (h!19291 rules!2550) (size!11392 (seqFromList!1635 (_1!7634 lt!455992))) (_1!7634 lt!455992)) (_2!7634 lt!455992))))))

(declare-fun lt!455991 () Unit!20107)

(assert (=> b!1373091 (= lt!455991 (longestMatchIsAcceptedByMatchOrIsEmpty!265 (regex!2405 (h!19291 rules!2550)) lt!454961))))

(declare-fun res!618609 () Bool)

(assert (=> b!1373091 (= res!618609 (isEmpty!8376 (_1!7634 (findLongestMatchInner!281 (regex!2405 (h!19291 rules!2550)) Nil!13888 (size!11399 Nil!13888) lt!454961 lt!454961 (size!11399 lt!454961)))))))

(declare-fun e!877626 () Bool)

(assert (=> b!1373091 (=> res!618609 e!877626)))

(assert (=> b!1373091 e!877626))

(declare-fun lt!455994 () Unit!20107)

(assert (=> b!1373091 (= lt!455994 lt!455991)))

(declare-fun lt!455990 () Unit!20107)

(assert (=> b!1373091 (= lt!455990 (lemmaSemiInverse!335 (transformation!2405 (h!19291 rules!2550)) (seqFromList!1635 (_1!7634 lt!455992))))))

(declare-fun b!1373092 () Bool)

(assert (=> b!1373092 (= e!877626 (matchR!1712 (regex!2405 (h!19291 rules!2550)) (_1!7634 (findLongestMatchInner!281 (regex!2405 (h!19291 rules!2550)) Nil!13888 (size!11399 Nil!13888) lt!454961 lt!454961 (size!11399 lt!454961)))))))

(assert (= (and d!392103 c!226049) b!1373087))

(assert (= (and d!392103 (not c!226049)) b!1373091))

(assert (= (and b!1373091 (not res!618609)) b!1373092))

(assert (= (and d!392103 (not res!618610)) b!1373086))

(assert (= (and b!1373086 res!618606) b!1373084))

(assert (= (and b!1373084 res!618607) b!1373090))

(assert (= (and b!1373090 res!618608) b!1373088))

(assert (= (and b!1373088 res!618612) b!1373085))

(assert (= (and b!1373085 res!618611) b!1373089))

(declare-fun m!1544529 () Bool)

(assert (=> b!1373088 m!1544529))

(assert (=> b!1373089 m!1544529))

(declare-fun m!1544531 () Bool)

(assert (=> b!1373089 m!1544531))

(assert (=> b!1373086 m!1544529))

(declare-fun m!1544533 () Bool)

(assert (=> b!1373086 m!1544533))

(assert (=> b!1373086 m!1544533))

(declare-fun m!1544535 () Bool)

(assert (=> b!1373086 m!1544535))

(assert (=> b!1373086 m!1544535))

(declare-fun m!1544537 () Bool)

(assert (=> b!1373086 m!1544537))

(assert (=> b!1373084 m!1544529))

(assert (=> b!1373084 m!1544533))

(assert (=> b!1373084 m!1544533))

(assert (=> b!1373084 m!1544535))

(assert (=> b!1373084 m!1544535))

(declare-fun m!1544539 () Bool)

(assert (=> b!1373084 m!1544539))

(assert (=> b!1373091 m!1543039))

(assert (=> b!1373091 m!1541671))

(declare-fun m!1544541 () Bool)

(assert (=> b!1373091 m!1544541))

(declare-fun m!1544543 () Bool)

(assert (=> b!1373091 m!1544543))

(declare-fun m!1544545 () Bool)

(assert (=> b!1373091 m!1544545))

(declare-fun m!1544547 () Bool)

(assert (=> b!1373091 m!1544547))

(assert (=> b!1373091 m!1543039))

(assert (=> b!1373091 m!1544543))

(declare-fun m!1544549 () Bool)

(assert (=> b!1373091 m!1544549))

(declare-fun m!1544551 () Bool)

(assert (=> b!1373091 m!1544551))

(assert (=> b!1373091 m!1541671))

(assert (=> b!1373091 m!1544543))

(assert (=> b!1373091 m!1544543))

(declare-fun m!1544553 () Bool)

(assert (=> b!1373091 m!1544553))

(declare-fun m!1544555 () Bool)

(assert (=> d!392103 m!1544555))

(declare-fun m!1544557 () Bool)

(assert (=> d!392103 m!1544557))

(declare-fun m!1544559 () Bool)

(assert (=> d!392103 m!1544559))

(assert (=> d!392103 m!1542799))

(assert (=> b!1373092 m!1543039))

(assert (=> b!1373092 m!1541671))

(assert (=> b!1373092 m!1543039))

(assert (=> b!1373092 m!1541671))

(assert (=> b!1373092 m!1544541))

(declare-fun m!1544561 () Bool)

(assert (=> b!1373092 m!1544561))

(assert (=> b!1373090 m!1544529))

(declare-fun m!1544563 () Bool)

(assert (=> b!1373090 m!1544563))

(assert (=> b!1373090 m!1541671))

(assert (=> b!1373085 m!1544529))

(declare-fun m!1544565 () Bool)

(assert (=> b!1373085 m!1544565))

(assert (=> b!1373085 m!1544565))

(declare-fun m!1544567 () Bool)

(assert (=> b!1373085 m!1544567))

(assert (=> bm!92088 d!392103))

(assert (=> d!391117 d!391719))

(assert (=> d!391117 d!391777))

(declare-fun d!392105 () Bool)

(assert (=> d!392105 (= ($colon$colon!201 (map!3068 (t!121485 rules!2550) lambda!58184) (dynLambda!6314 lambda!58184 (h!19291 rules!2550))) (Cons!13892 (dynLambda!6314 lambda!58184 (h!19291 rules!2550)) (map!3068 (t!121485 rules!2550) lambda!58184)))))

(assert (=> b!1371383 d!392105))

(declare-fun d!392107 () Bool)

(declare-fun lt!455995 () List!13958)

(assert (=> d!392107 (= (size!11403 lt!455995) (size!11404 (t!121485 rules!2550)))))

(declare-fun e!877628 () List!13958)

(assert (=> d!392107 (= lt!455995 e!877628)))

(declare-fun c!226050 () Bool)

(assert (=> d!392107 (= c!226050 ((_ is Nil!13890) (t!121485 rules!2550)))))

(assert (=> d!392107 (= (map!3068 (t!121485 rules!2550) lambda!58184) lt!455995)))

(declare-fun b!1373093 () Bool)

(assert (=> b!1373093 (= e!877628 Nil!13892)))

(declare-fun b!1373094 () Bool)

(assert (=> b!1373094 (= e!877628 ($colon$colon!201 (map!3068 (t!121485 (t!121485 rules!2550)) lambda!58184) (dynLambda!6314 lambda!58184 (h!19291 (t!121485 rules!2550)))))))

(assert (= (and d!392107 c!226050) b!1373093))

(assert (= (and d!392107 (not c!226050)) b!1373094))

(declare-fun b_lambda!42101 () Bool)

(assert (=> (not b_lambda!42101) (not b!1373094)))

(declare-fun m!1544569 () Bool)

(assert (=> d!392107 m!1544569))

(assert (=> d!392107 m!1542823))

(declare-fun m!1544571 () Bool)

(assert (=> b!1373094 m!1544571))

(declare-fun m!1544573 () Bool)

(assert (=> b!1373094 m!1544573))

(assert (=> b!1373094 m!1544571))

(assert (=> b!1373094 m!1544573))

(declare-fun m!1544575 () Bool)

(assert (=> b!1373094 m!1544575))

(assert (=> b!1371383 d!392107))

(declare-fun b!1373095 () Bool)

(declare-fun e!877631 () Bool)

(declare-fun lt!455996 () Rule!4610)

(assert (=> b!1373095 (= e!877631 (contains!2599 (t!121485 rules!2550) lt!455996))))

(declare-fun b!1373096 () Bool)

(declare-fun lt!455997 () Unit!20107)

(declare-fun Unit!20128 () Unit!20107)

(assert (=> b!1373096 (= lt!455997 Unit!20128)))

(assert (=> b!1373096 false))

(declare-fun e!877629 () Rule!4610)

(assert (=> b!1373096 (= e!877629 (head!2468 (t!121485 rules!2550)))))

(declare-fun b!1373097 () Bool)

(declare-fun e!877630 () Rule!4610)

(assert (=> b!1373097 (= e!877630 (h!19291 (t!121485 rules!2550)))))

(declare-fun b!1373098 () Bool)

(declare-fun e!877632 () Bool)

(assert (=> b!1373098 (= e!877632 (dynLambda!6311 lambda!58186 (h!19291 (t!121485 rules!2550))))))

(declare-fun b!1373099 () Bool)

(assert (=> b!1373099 (= e!877630 e!877629)))

(declare-fun c!226051 () Bool)

(assert (=> b!1373099 (= c!226051 ((_ is Cons!13890) (t!121485 rules!2550)))))

(declare-fun d!392109 () Bool)

(assert (=> d!392109 e!877631))

(declare-fun res!618614 () Bool)

(assert (=> d!392109 (=> (not res!618614) (not e!877631))))

(assert (=> d!392109 (= res!618614 (dynLambda!6311 lambda!58186 lt!455996))))

(assert (=> d!392109 (= lt!455996 e!877630)))

(declare-fun c!226052 () Bool)

(assert (=> d!392109 (= c!226052 e!877632)))

(declare-fun res!618613 () Bool)

(assert (=> d!392109 (=> (not res!618613) (not e!877632))))

(assert (=> d!392109 (= res!618613 ((_ is Cons!13890) (t!121485 rules!2550)))))

(assert (=> d!392109 (exists!469 (t!121485 rules!2550) lambda!58186)))

(assert (=> d!392109 (= (getWitness!357 (t!121485 rules!2550) lambda!58186) lt!455996)))

(declare-fun b!1373100 () Bool)

(assert (=> b!1373100 (= e!877629 (getWitness!357 (t!121485 (t!121485 rules!2550)) lambda!58186))))

(assert (= (and d!392109 res!618613) b!1373098))

(assert (= (and d!392109 c!226052) b!1373097))

(assert (= (and d!392109 (not c!226052)) b!1373099))

(assert (= (and b!1373099 c!226051) b!1373100))

(assert (= (and b!1373099 (not c!226051)) b!1373096))

(assert (= (and d!392109 res!618614) b!1373095))

(declare-fun b_lambda!42103 () Bool)

(assert (=> (not b_lambda!42103) (not b!1373098)))

(declare-fun b_lambda!42105 () Bool)

(assert (=> (not b_lambda!42105) (not d!392109)))

(declare-fun m!1544577 () Bool)

(assert (=> b!1373096 m!1544577))

(declare-fun m!1544579 () Bool)

(assert (=> d!392109 m!1544579))

(declare-fun m!1544581 () Bool)

(assert (=> d!392109 m!1544581))

(declare-fun m!1544583 () Bool)

(assert (=> b!1373100 m!1544583))

(declare-fun m!1544585 () Bool)

(assert (=> b!1373098 m!1544585))

(declare-fun m!1544587 () Bool)

(assert (=> b!1373095 m!1544587))

(assert (=> b!1371172 d!392109))

(declare-fun d!392111 () Bool)

(declare-fun lostCauseFct!134 (Regex!3719) Bool)

(assert (=> d!392111 (= (lostCause!333 lt!454967) (lostCauseFct!134 lt!454967))))

(declare-fun bs!335934 () Bool)

(assert (= bs!335934 d!392111))

(declare-fun m!1544589 () Bool)

(assert (=> bs!335934 m!1544589))

(assert (=> b!1371450 d!392111))

(declare-fun call!92203 () Bool)

(declare-fun bm!92198 () Bool)

(declare-fun c!226054 () Bool)

(declare-fun c!226053 () Bool)

(assert (=> bm!92198 (= call!92203 (validRegex!1619 (ite c!226053 (reg!4048 lt!455224) (ite c!226054 (regTwo!7951 lt!455224) (regTwo!7950 lt!455224)))))))

(declare-fun b!1373101 () Bool)

(declare-fun e!877636 () Bool)

(declare-fun e!877635 () Bool)

(assert (=> b!1373101 (= e!877636 e!877635)))

(declare-fun res!618617 () Bool)

(assert (=> b!1373101 (=> (not res!618617) (not e!877635))))

(declare-fun call!92204 () Bool)

(assert (=> b!1373101 (= res!618617 call!92204)))

(declare-fun b!1373102 () Bool)

(declare-fun e!877634 () Bool)

(declare-fun e!877638 () Bool)

(assert (=> b!1373102 (= e!877634 e!877638)))

(declare-fun res!618618 () Bool)

(assert (=> b!1373102 (= res!618618 (not (nullable!1199 (reg!4048 lt!455224))))))

(assert (=> b!1373102 (=> (not res!618618) (not e!877638))))

(declare-fun b!1373103 () Bool)

(assert (=> b!1373103 (= e!877638 call!92203)))

(declare-fun b!1373104 () Bool)

(declare-fun call!92205 () Bool)

(assert (=> b!1373104 (= e!877635 call!92205)))

(declare-fun bm!92199 () Bool)

(assert (=> bm!92199 (= call!92205 call!92203)))

(declare-fun b!1373105 () Bool)

(declare-fun e!877637 () Bool)

(assert (=> b!1373105 (= e!877634 e!877637)))

(assert (=> b!1373105 (= c!226054 ((_ is Union!3719) lt!455224))))

(declare-fun bm!92200 () Bool)

(assert (=> bm!92200 (= call!92204 (validRegex!1619 (ite c!226054 (regOne!7951 lt!455224) (regOne!7950 lt!455224))))))

(declare-fun b!1373106 () Bool)

(declare-fun res!618619 () Bool)

(assert (=> b!1373106 (=> res!618619 e!877636)))

(assert (=> b!1373106 (= res!618619 (not ((_ is Concat!6214) lt!455224)))))

(assert (=> b!1373106 (= e!877637 e!877636)))

(declare-fun b!1373107 () Bool)

(declare-fun e!877633 () Bool)

(assert (=> b!1373107 (= e!877633 e!877634)))

(assert (=> b!1373107 (= c!226053 ((_ is Star!3719) lt!455224))))

(declare-fun d!392113 () Bool)

(declare-fun res!618615 () Bool)

(assert (=> d!392113 (=> res!618615 e!877633)))

(assert (=> d!392113 (= res!618615 ((_ is ElementMatch!3719) lt!455224))))

(assert (=> d!392113 (= (validRegex!1619 lt!455224) e!877633)))

(declare-fun b!1373108 () Bool)

(declare-fun res!618616 () Bool)

(declare-fun e!877639 () Bool)

(assert (=> b!1373108 (=> (not res!618616) (not e!877639))))

(assert (=> b!1373108 (= res!618616 call!92204)))

(assert (=> b!1373108 (= e!877637 e!877639)))

(declare-fun b!1373109 () Bool)

(assert (=> b!1373109 (= e!877639 call!92205)))

(assert (= (and d!392113 (not res!618615)) b!1373107))

(assert (= (and b!1373107 c!226053) b!1373102))

(assert (= (and b!1373107 (not c!226053)) b!1373105))

(assert (= (and b!1373102 res!618618) b!1373103))

(assert (= (and b!1373105 c!226054) b!1373108))

(assert (= (and b!1373105 (not c!226054)) b!1373106))

(assert (= (and b!1373108 res!618616) b!1373109))

(assert (= (and b!1373106 (not res!618619)) b!1373101))

(assert (= (and b!1373101 res!618617) b!1373104))

(assert (= (or b!1373108 b!1373101) bm!92200))

(assert (= (or b!1373109 b!1373104) bm!92199))

(assert (= (or b!1373103 bm!92199) bm!92198))

(declare-fun m!1544591 () Bool)

(assert (=> bm!92198 m!1544591))

(declare-fun m!1544593 () Bool)

(assert (=> b!1373102 m!1544593))

(declare-fun m!1544595 () Bool)

(assert (=> bm!92200 m!1544595))

(assert (=> bs!335676 d!392113))

(declare-fun d!392115 () Bool)

(assert (=> d!392115 (= (inv!16 (value!78175 t2!34)) (= (charsToInt!0 (text!17912 (value!78175 t2!34))) (value!78166 (value!78175 t2!34))))))

(declare-fun bs!335935 () Bool)

(assert (= bs!335935 d!392115))

(declare-fun m!1544597 () Bool)

(assert (=> bs!335935 m!1544597))

(assert (=> b!1371029 d!392115))

(declare-fun d!392117 () Bool)

(declare-fun lt!455998 () Int)

(assert (=> d!392117 (= lt!455998 (size!11399 (list!5350 (_2!7630 lt!455107))))))

(assert (=> d!392117 (= lt!455998 (size!11400 (c!225513 (_2!7630 lt!455107))))))

(assert (=> d!392117 (= (size!11392 (_2!7630 lt!455107)) lt!455998)))

(declare-fun bs!335936 () Bool)

(assert (= bs!335936 d!392117))

(assert (=> bs!335936 m!1541333))

(assert (=> bs!335936 m!1541333))

(declare-fun m!1544599 () Bool)

(assert (=> bs!335936 m!1544599))

(declare-fun m!1544601 () Bool)

(assert (=> bs!335936 m!1544601))

(assert (=> b!1371106 d!392117))

(declare-fun d!392119 () Bool)

(declare-fun lt!455999 () Int)

(assert (=> d!392119 (= lt!455999 (size!11399 (list!5350 lt!454956)))))

(assert (=> d!392119 (= lt!455999 (size!11400 (c!225513 lt!454956)))))

(assert (=> d!392119 (= (size!11392 lt!454956) lt!455999)))

(declare-fun bs!335937 () Bool)

(assert (= bs!335937 d!392119))

(assert (=> bs!335937 m!1540785))

(assert (=> bs!335937 m!1540785))

(assert (=> bs!335937 m!1541679))

(declare-fun m!1544603 () Bool)

(assert (=> bs!335937 m!1544603))

(assert (=> b!1371106 d!392119))

(assert (=> d!391065 d!392015))

(declare-fun d!392121 () Bool)

(declare-fun lt!456000 () Bool)

(assert (=> d!392121 (= lt!456000 (isEmpty!8376 (list!5350 (_2!7630 lt!455164))))))

(assert (=> d!392121 (= lt!456000 (isEmpty!8377 (c!225513 (_2!7630 lt!455164))))))

(assert (=> d!392121 (= (isEmpty!8370 (_2!7630 lt!455164)) lt!456000)))

(declare-fun bs!335938 () Bool)

(assert (= bs!335938 d!392121))

(declare-fun m!1544605 () Bool)

(assert (=> bs!335938 m!1544605))

(assert (=> bs!335938 m!1544605))

(declare-fun m!1544607 () Bool)

(assert (=> bs!335938 m!1544607))

(declare-fun m!1544609 () Bool)

(assert (=> bs!335938 m!1544609))

(assert (=> b!1371272 d!392121))

(declare-fun b!1373110 () Bool)

(declare-fun e!877640 () Bool)

(assert (=> b!1373110 (= e!877640 tp_is_empty!6747)))

(declare-fun b!1373111 () Bool)

(declare-fun tp!394027 () Bool)

(declare-fun tp!394029 () Bool)

(assert (=> b!1373111 (= e!877640 (and tp!394027 tp!394029))))

(declare-fun b!1373112 () Bool)

(declare-fun tp!394030 () Bool)

(assert (=> b!1373112 (= e!877640 tp!394030)))

(declare-fun b!1373113 () Bool)

(declare-fun tp!394031 () Bool)

(declare-fun tp!394028 () Bool)

(assert (=> b!1373113 (= e!877640 (and tp!394031 tp!394028))))

(assert (=> b!1371485 (= tp!393908 e!877640)))

(assert (= (and b!1371485 ((_ is ElementMatch!3719) (regOne!7950 (regex!2405 (rule!4160 t2!34))))) b!1373110))

(assert (= (and b!1371485 ((_ is Concat!6214) (regOne!7950 (regex!2405 (rule!4160 t2!34))))) b!1373111))

(assert (= (and b!1371485 ((_ is Star!3719) (regOne!7950 (regex!2405 (rule!4160 t2!34))))) b!1373112))

(assert (= (and b!1371485 ((_ is Union!3719) (regOne!7950 (regex!2405 (rule!4160 t2!34))))) b!1373113))

(declare-fun b!1373114 () Bool)

(declare-fun e!877641 () Bool)

(assert (=> b!1373114 (= e!877641 tp_is_empty!6747)))

(declare-fun b!1373115 () Bool)

(declare-fun tp!394032 () Bool)

(declare-fun tp!394034 () Bool)

(assert (=> b!1373115 (= e!877641 (and tp!394032 tp!394034))))

(declare-fun b!1373116 () Bool)

(declare-fun tp!394035 () Bool)

(assert (=> b!1373116 (= e!877641 tp!394035)))

(declare-fun b!1373117 () Bool)

(declare-fun tp!394036 () Bool)

(declare-fun tp!394033 () Bool)

(assert (=> b!1373117 (= e!877641 (and tp!394036 tp!394033))))

(assert (=> b!1371485 (= tp!393910 e!877641)))

(assert (= (and b!1371485 ((_ is ElementMatch!3719) (regTwo!7950 (regex!2405 (rule!4160 t2!34))))) b!1373114))

(assert (= (and b!1371485 ((_ is Concat!6214) (regTwo!7950 (regex!2405 (rule!4160 t2!34))))) b!1373115))

(assert (= (and b!1371485 ((_ is Star!3719) (regTwo!7950 (regex!2405 (rule!4160 t2!34))))) b!1373116))

(assert (= (and b!1371485 ((_ is Union!3719) (regTwo!7950 (regex!2405 (rule!4160 t2!34))))) b!1373117))

(declare-fun b!1373118 () Bool)

(declare-fun e!877642 () Bool)

(assert (=> b!1373118 (= e!877642 tp_is_empty!6747)))

(declare-fun b!1373119 () Bool)

(declare-fun tp!394037 () Bool)

(declare-fun tp!394039 () Bool)

(assert (=> b!1373119 (= e!877642 (and tp!394037 tp!394039))))

(declare-fun b!1373120 () Bool)

(declare-fun tp!394040 () Bool)

(assert (=> b!1373120 (= e!877642 tp!394040)))

(declare-fun b!1373121 () Bool)

(declare-fun tp!394041 () Bool)

(declare-fun tp!394038 () Bool)

(assert (=> b!1373121 (= e!877642 (and tp!394041 tp!394038))))

(assert (=> b!1371472 (= tp!393895 e!877642)))

(assert (= (and b!1371472 ((_ is ElementMatch!3719) (regOne!7951 (regex!2405 (h!19291 rules!2550))))) b!1373118))

(assert (= (and b!1371472 ((_ is Concat!6214) (regOne!7951 (regex!2405 (h!19291 rules!2550))))) b!1373119))

(assert (= (and b!1371472 ((_ is Star!3719) (regOne!7951 (regex!2405 (h!19291 rules!2550))))) b!1373120))

(assert (= (and b!1371472 ((_ is Union!3719) (regOne!7951 (regex!2405 (h!19291 rules!2550))))) b!1373121))

(declare-fun b!1373122 () Bool)

(declare-fun e!877643 () Bool)

(assert (=> b!1373122 (= e!877643 tp_is_empty!6747)))

(declare-fun b!1373123 () Bool)

(declare-fun tp!394042 () Bool)

(declare-fun tp!394044 () Bool)

(assert (=> b!1373123 (= e!877643 (and tp!394042 tp!394044))))

(declare-fun b!1373124 () Bool)

(declare-fun tp!394045 () Bool)

(assert (=> b!1373124 (= e!877643 tp!394045)))

(declare-fun b!1373125 () Bool)

(declare-fun tp!394046 () Bool)

(declare-fun tp!394043 () Bool)

(assert (=> b!1373125 (= e!877643 (and tp!394046 tp!394043))))

(assert (=> b!1371472 (= tp!393892 e!877643)))

(assert (= (and b!1371472 ((_ is ElementMatch!3719) (regTwo!7951 (regex!2405 (h!19291 rules!2550))))) b!1373122))

(assert (= (and b!1371472 ((_ is Concat!6214) (regTwo!7951 (regex!2405 (h!19291 rules!2550))))) b!1373123))

(assert (= (and b!1371472 ((_ is Star!3719) (regTwo!7951 (regex!2405 (h!19291 rules!2550))))) b!1373124))

(assert (= (and b!1371472 ((_ is Union!3719) (regTwo!7951 (regex!2405 (h!19291 rules!2550))))) b!1373125))

(declare-fun e!877648 () Bool)

(declare-fun b!1373134 () Bool)

(declare-fun tp!394055 () Bool)

(declare-fun tp!394053 () Bool)

(assert (=> b!1373134 (= e!877648 (and (inv!18248 (left!11884 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34))))) tp!394053 (inv!18248 (right!12214 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34))))) tp!394055))))

(declare-fun b!1373136 () Bool)

(declare-fun e!877649 () Bool)

(declare-fun tp!394054 () Bool)

(assert (=> b!1373136 (= e!877649 tp!394054)))

(declare-fun b!1373135 () Bool)

(declare-fun inv!18255 (IArray!9149) Bool)

(assert (=> b!1373135 (= e!877648 (and (inv!18255 (xs!7299 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34))))) e!877649))))

(assert (=> b!1371010 (= tp!393834 (and (inv!18248 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34)))) e!877648))))

(assert (= (and b!1371010 ((_ is Node!4572) (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34))))) b!1373134))

(assert (= b!1373135 b!1373136))

(assert (= (and b!1371010 ((_ is Leaf!6971) (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t2!34))) (value!78175 t2!34))))) b!1373135))

(declare-fun m!1544611 () Bool)

(assert (=> b!1373134 m!1544611))

(declare-fun m!1544613 () Bool)

(assert (=> b!1373134 m!1544613))

(declare-fun m!1544615 () Bool)

(assert (=> b!1373135 m!1544615))

(assert (=> b!1371010 m!1541169))

(declare-fun b!1373137 () Bool)

(declare-fun e!877650 () Bool)

(assert (=> b!1373137 (= e!877650 tp_is_empty!6747)))

(declare-fun b!1373138 () Bool)

(declare-fun tp!394056 () Bool)

(declare-fun tp!394058 () Bool)

(assert (=> b!1373138 (= e!877650 (and tp!394056 tp!394058))))

(declare-fun b!1373139 () Bool)

(declare-fun tp!394059 () Bool)

(assert (=> b!1373139 (= e!877650 tp!394059)))

(declare-fun b!1373140 () Bool)

(declare-fun tp!394060 () Bool)

(declare-fun tp!394057 () Bool)

(assert (=> b!1373140 (= e!877650 (and tp!394060 tp!394057))))

(assert (=> b!1371471 (= tp!393894 e!877650)))

(assert (= (and b!1371471 ((_ is ElementMatch!3719) (reg!4048 (regex!2405 (h!19291 rules!2550))))) b!1373137))

(assert (= (and b!1371471 ((_ is Concat!6214) (reg!4048 (regex!2405 (h!19291 rules!2550))))) b!1373138))

(assert (= (and b!1371471 ((_ is Star!3719) (reg!4048 (regex!2405 (h!19291 rules!2550))))) b!1373139))

(assert (= (and b!1371471 ((_ is Union!3719) (reg!4048 (regex!2405 (h!19291 rules!2550))))) b!1373140))

(declare-fun b!1373141 () Bool)

(declare-fun e!877651 () Bool)

(assert (=> b!1373141 (= e!877651 tp_is_empty!6747)))

(declare-fun b!1373142 () Bool)

(declare-fun tp!394061 () Bool)

(declare-fun tp!394063 () Bool)

(assert (=> b!1373142 (= e!877651 (and tp!394061 tp!394063))))

(declare-fun b!1373143 () Bool)

(declare-fun tp!394064 () Bool)

(assert (=> b!1373143 (= e!877651 tp!394064)))

(declare-fun b!1373144 () Bool)

(declare-fun tp!394065 () Bool)

(declare-fun tp!394062 () Bool)

(assert (=> b!1373144 (= e!877651 (and tp!394065 tp!394062))))

(assert (=> b!1371470 (= tp!393891 e!877651)))

(assert (= (and b!1371470 ((_ is ElementMatch!3719) (regOne!7950 (regex!2405 (h!19291 rules!2550))))) b!1373141))

(assert (= (and b!1371470 ((_ is Concat!6214) (regOne!7950 (regex!2405 (h!19291 rules!2550))))) b!1373142))

(assert (= (and b!1371470 ((_ is Star!3719) (regOne!7950 (regex!2405 (h!19291 rules!2550))))) b!1373143))

(assert (= (and b!1371470 ((_ is Union!3719) (regOne!7950 (regex!2405 (h!19291 rules!2550))))) b!1373144))

(declare-fun b!1373145 () Bool)

(declare-fun e!877652 () Bool)

(assert (=> b!1373145 (= e!877652 tp_is_empty!6747)))

(declare-fun b!1373146 () Bool)

(declare-fun tp!394066 () Bool)

(declare-fun tp!394068 () Bool)

(assert (=> b!1373146 (= e!877652 (and tp!394066 tp!394068))))

(declare-fun b!1373147 () Bool)

(declare-fun tp!394069 () Bool)

(assert (=> b!1373147 (= e!877652 tp!394069)))

(declare-fun b!1373148 () Bool)

(declare-fun tp!394070 () Bool)

(declare-fun tp!394067 () Bool)

(assert (=> b!1373148 (= e!877652 (and tp!394070 tp!394067))))

(assert (=> b!1371470 (= tp!393893 e!877652)))

(assert (= (and b!1371470 ((_ is ElementMatch!3719) (regTwo!7950 (regex!2405 (h!19291 rules!2550))))) b!1373145))

(assert (= (and b!1371470 ((_ is Concat!6214) (regTwo!7950 (regex!2405 (h!19291 rules!2550))))) b!1373146))

(assert (= (and b!1371470 ((_ is Star!3719) (regTwo!7950 (regex!2405 (h!19291 rules!2550))))) b!1373147))

(assert (= (and b!1371470 ((_ is Union!3719) (regTwo!7950 (regex!2405 (h!19291 rules!2550))))) b!1373148))

(declare-fun b!1373149 () Bool)

(declare-fun e!877653 () Bool)

(declare-fun tp!394071 () Bool)

(assert (=> b!1373149 (= e!877653 (and tp_is_empty!6747 tp!394071))))

(assert (=> b!1371458 (= tp!393880 e!877653)))

(assert (= (and b!1371458 ((_ is Cons!13888) (t!121483 (originalCharacters!3267 t1!34)))) b!1373149))

(declare-fun b!1373150 () Bool)

(declare-fun e!877654 () Bool)

(assert (=> b!1373150 (= e!877654 tp_is_empty!6747)))

(declare-fun b!1373151 () Bool)

(declare-fun tp!394072 () Bool)

(declare-fun tp!394074 () Bool)

(assert (=> b!1373151 (= e!877654 (and tp!394072 tp!394074))))

(declare-fun b!1373152 () Bool)

(declare-fun tp!394075 () Bool)

(assert (=> b!1373152 (= e!877654 tp!394075)))

(declare-fun b!1373153 () Bool)

(declare-fun tp!394076 () Bool)

(declare-fun tp!394073 () Bool)

(assert (=> b!1373153 (= e!877654 (and tp!394076 tp!394073))))

(assert (=> b!1371482 (= tp!393906 e!877654)))

(assert (= (and b!1371482 ((_ is ElementMatch!3719) (regex!2405 (h!19291 (t!121485 rules!2550))))) b!1373150))

(assert (= (and b!1371482 ((_ is Concat!6214) (regex!2405 (h!19291 (t!121485 rules!2550))))) b!1373151))

(assert (= (and b!1371482 ((_ is Star!3719) (regex!2405 (h!19291 (t!121485 rules!2550))))) b!1373152))

(assert (= (and b!1371482 ((_ is Union!3719) (regex!2405 (h!19291 (t!121485 rules!2550))))) b!1373153))

(declare-fun b!1373154 () Bool)

(declare-fun e!877655 () Bool)

(declare-fun tp!394077 () Bool)

(assert (=> b!1373154 (= e!877655 (and tp_is_empty!6747 tp!394077))))

(assert (=> b!1371488 (= tp!393913 e!877655)))

(assert (= (and b!1371488 ((_ is Cons!13888) (t!121483 (originalCharacters!3267 t2!34)))) b!1373154))

(declare-fun b!1373157 () Bool)

(declare-fun b_free!33243 () Bool)

(declare-fun b_next!33947 () Bool)

(assert (=> b!1373157 (= b_free!33243 (not b_next!33947))))

(declare-fun tb!72309 () Bool)

(declare-fun t!121621 () Bool)

(assert (=> (and b!1373157 (= (toValue!3672 (transformation!2405 (h!19291 (t!121485 (t!121485 rules!2550))))) (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))) t!121621) tb!72309))

(declare-fun result!87802 () Bool)

(assert (= result!87802 result!87782))

(assert (=> d!392051 t!121621))

(declare-fun tb!72311 () Bool)

(declare-fun t!121623 () Bool)

(assert (=> (and b!1373157 (= (toValue!3672 (transformation!2405 (h!19291 (t!121485 (t!121485 rules!2550))))) (toValue!3672 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))) t!121623) tb!72311))

(declare-fun result!87804 () Bool)

(assert (= result!87804 result!87792))

(assert (=> d!392069 t!121623))

(declare-fun tp!394078 () Bool)

(declare-fun b_and!92011 () Bool)

(assert (=> b!1373157 (= tp!394078 (and (=> t!121621 result!87802) (=> t!121623 result!87804) b_and!92011))))

(declare-fun b_free!33245 () Bool)

(declare-fun b_next!33949 () Bool)

(assert (=> b!1373157 (= b_free!33245 (not b_next!33949))))

(declare-fun t!121625 () Bool)

(declare-fun tb!72313 () Bool)

(assert (=> (and b!1373157 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 (t!121485 rules!2550))))) (toChars!3531 (transformation!2405 (rule!4160 t2!34)))) t!121625) tb!72313))

(declare-fun result!87806 () Bool)

(assert (= result!87806 result!87678))

(assert (=> d!390973 t!121625))

(declare-fun tb!72315 () Bool)

(declare-fun t!121627 () Bool)

(assert (=> (and b!1373157 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 (t!121485 rules!2550))))) (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455183)))))) t!121627) tb!72315))

(declare-fun result!87808 () Bool)

(assert (= result!87808 result!87752))

(assert (=> d!391681 t!121627))

(declare-fun tb!72317 () Bool)

(declare-fun t!121629 () Bool)

(assert (=> (and b!1373157 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 (t!121485 rules!2550))))) (toChars!3531 (transformation!2405 (rule!4160 (_1!7631 (get!4347 lt!455162)))))) t!121629) tb!72317))

(declare-fun result!87810 () Bool)

(assert (= result!87810 result!87774))

(assert (=> d!391855 t!121629))

(declare-fun tb!72319 () Bool)

(declare-fun t!121631 () Bool)

(assert (=> (and b!1373157 (= (toChars!3531 (transformation!2405 (h!19291 (t!121485 (t!121485 rules!2550))))) (toChars!3531 (transformation!2405 (rule!4160 t1!34)))) t!121631) tb!72319))

(declare-fun result!87812 () Bool)

(assert (= result!87812 result!87702))

(assert (=> d!391173 t!121631))

(assert (=> b!1371413 t!121631))

(assert (=> b!1371416 t!121625))

(declare-fun tp!394081 () Bool)

(declare-fun b_and!92013 () Bool)

(assert (=> b!1373157 (= tp!394081 (and (=> t!121631 result!87812) (=> t!121629 result!87810) (=> t!121625 result!87806) (=> t!121627 result!87808) b_and!92013))))

(declare-fun e!877657 () Bool)

(assert (=> b!1373157 (= e!877657 (and tp!394078 tp!394081))))

(declare-fun b!1373156 () Bool)

(declare-fun tp!394080 () Bool)

(declare-fun e!877656 () Bool)

(assert (=> b!1373156 (= e!877656 (and tp!394080 (inv!18241 (tag!2667 (h!19291 (t!121485 (t!121485 rules!2550))))) (inv!18244 (transformation!2405 (h!19291 (t!121485 (t!121485 rules!2550))))) e!877657))))

(declare-fun b!1373155 () Bool)

(declare-fun e!877658 () Bool)

(declare-fun tp!394079 () Bool)

(assert (=> b!1373155 (= e!877658 (and e!877656 tp!394079))))

(assert (=> b!1371481 (= tp!393905 e!877658)))

(assert (= b!1373156 b!1373157))

(assert (= b!1373155 b!1373156))

(assert (= (and b!1371481 ((_ is Cons!13890) (t!121485 (t!121485 rules!2550)))) b!1373155))

(declare-fun m!1544617 () Bool)

(assert (=> b!1373156 m!1544617))

(declare-fun m!1544619 () Bool)

(assert (=> b!1373156 m!1544619))

(declare-fun b!1373158 () Bool)

(declare-fun e!877660 () Bool)

(assert (=> b!1373158 (= e!877660 tp_is_empty!6747)))

(declare-fun b!1373159 () Bool)

(declare-fun tp!394082 () Bool)

(declare-fun tp!394084 () Bool)

(assert (=> b!1373159 (= e!877660 (and tp!394082 tp!394084))))

(declare-fun b!1373160 () Bool)

(declare-fun tp!394085 () Bool)

(assert (=> b!1373160 (= e!877660 tp!394085)))

(declare-fun b!1373161 () Bool)

(declare-fun tp!394086 () Bool)

(declare-fun tp!394083 () Bool)

(assert (=> b!1373161 (= e!877660 (and tp!394086 tp!394083))))

(assert (=> b!1371492 (= tp!393918 e!877660)))

(assert (= (and b!1371492 ((_ is ElementMatch!3719) (regOne!7951 (regex!2405 (rule!4160 t1!34))))) b!1373158))

(assert (= (and b!1371492 ((_ is Concat!6214) (regOne!7951 (regex!2405 (rule!4160 t1!34))))) b!1373159))

(assert (= (and b!1371492 ((_ is Star!3719) (regOne!7951 (regex!2405 (rule!4160 t1!34))))) b!1373160))

(assert (= (and b!1371492 ((_ is Union!3719) (regOne!7951 (regex!2405 (rule!4160 t1!34))))) b!1373161))

(declare-fun b!1373162 () Bool)

(declare-fun e!877661 () Bool)

(assert (=> b!1373162 (= e!877661 tp_is_empty!6747)))

(declare-fun b!1373163 () Bool)

(declare-fun tp!394087 () Bool)

(declare-fun tp!394089 () Bool)

(assert (=> b!1373163 (= e!877661 (and tp!394087 tp!394089))))

(declare-fun b!1373164 () Bool)

(declare-fun tp!394090 () Bool)

(assert (=> b!1373164 (= e!877661 tp!394090)))

(declare-fun b!1373165 () Bool)

(declare-fun tp!394091 () Bool)

(declare-fun tp!394088 () Bool)

(assert (=> b!1373165 (= e!877661 (and tp!394091 tp!394088))))

(assert (=> b!1371492 (= tp!393915 e!877661)))

(assert (= (and b!1371492 ((_ is ElementMatch!3719) (regTwo!7951 (regex!2405 (rule!4160 t1!34))))) b!1373162))

(assert (= (and b!1371492 ((_ is Concat!6214) (regTwo!7951 (regex!2405 (rule!4160 t1!34))))) b!1373163))

(assert (= (and b!1371492 ((_ is Star!3719) (regTwo!7951 (regex!2405 (rule!4160 t1!34))))) b!1373164))

(assert (= (and b!1371492 ((_ is Union!3719) (regTwo!7951 (regex!2405 (rule!4160 t1!34))))) b!1373165))

(declare-fun b!1373166 () Bool)

(declare-fun e!877662 () Bool)

(assert (=> b!1373166 (= e!877662 tp_is_empty!6747)))

(declare-fun b!1373167 () Bool)

(declare-fun tp!394092 () Bool)

(declare-fun tp!394094 () Bool)

(assert (=> b!1373167 (= e!877662 (and tp!394092 tp!394094))))

(declare-fun b!1373168 () Bool)

(declare-fun tp!394095 () Bool)

(assert (=> b!1373168 (= e!877662 tp!394095)))

(declare-fun b!1373169 () Bool)

(declare-fun tp!394096 () Bool)

(declare-fun tp!394093 () Bool)

(assert (=> b!1373169 (= e!877662 (and tp!394096 tp!394093))))

(assert (=> b!1371491 (= tp!393917 e!877662)))

(assert (= (and b!1371491 ((_ is ElementMatch!3719) (reg!4048 (regex!2405 (rule!4160 t1!34))))) b!1373166))

(assert (= (and b!1371491 ((_ is Concat!6214) (reg!4048 (regex!2405 (rule!4160 t1!34))))) b!1373167))

(assert (= (and b!1371491 ((_ is Star!3719) (reg!4048 (regex!2405 (rule!4160 t1!34))))) b!1373168))

(assert (= (and b!1371491 ((_ is Union!3719) (reg!4048 (regex!2405 (rule!4160 t1!34))))) b!1373169))

(declare-fun b!1373170 () Bool)

(declare-fun e!877663 () Bool)

(assert (=> b!1373170 (= e!877663 tp_is_empty!6747)))

(declare-fun b!1373171 () Bool)

(declare-fun tp!394097 () Bool)

(declare-fun tp!394099 () Bool)

(assert (=> b!1373171 (= e!877663 (and tp!394097 tp!394099))))

(declare-fun b!1373172 () Bool)

(declare-fun tp!394100 () Bool)

(assert (=> b!1373172 (= e!877663 tp!394100)))

(declare-fun b!1373173 () Bool)

(declare-fun tp!394101 () Bool)

(declare-fun tp!394098 () Bool)

(assert (=> b!1373173 (= e!877663 (and tp!394101 tp!394098))))

(assert (=> b!1371490 (= tp!393914 e!877663)))

(assert (= (and b!1371490 ((_ is ElementMatch!3719) (regOne!7950 (regex!2405 (rule!4160 t1!34))))) b!1373170))

(assert (= (and b!1371490 ((_ is Concat!6214) (regOne!7950 (regex!2405 (rule!4160 t1!34))))) b!1373171))

(assert (= (and b!1371490 ((_ is Star!3719) (regOne!7950 (regex!2405 (rule!4160 t1!34))))) b!1373172))

(assert (= (and b!1371490 ((_ is Union!3719) (regOne!7950 (regex!2405 (rule!4160 t1!34))))) b!1373173))

(declare-fun b!1373174 () Bool)

(declare-fun e!877664 () Bool)

(assert (=> b!1373174 (= e!877664 tp_is_empty!6747)))

(declare-fun b!1373175 () Bool)

(declare-fun tp!394102 () Bool)

(declare-fun tp!394104 () Bool)

(assert (=> b!1373175 (= e!877664 (and tp!394102 tp!394104))))

(declare-fun b!1373176 () Bool)

(declare-fun tp!394105 () Bool)

(assert (=> b!1373176 (= e!877664 tp!394105)))

(declare-fun b!1373177 () Bool)

(declare-fun tp!394106 () Bool)

(declare-fun tp!394103 () Bool)

(assert (=> b!1373177 (= e!877664 (and tp!394106 tp!394103))))

(assert (=> b!1371490 (= tp!393916 e!877664)))

(assert (= (and b!1371490 ((_ is ElementMatch!3719) (regTwo!7950 (regex!2405 (rule!4160 t1!34))))) b!1373174))

(assert (= (and b!1371490 ((_ is Concat!6214) (regTwo!7950 (regex!2405 (rule!4160 t1!34))))) b!1373175))

(assert (= (and b!1371490 ((_ is Star!3719) (regTwo!7950 (regex!2405 (rule!4160 t1!34))))) b!1373176))

(assert (= (and b!1371490 ((_ is Union!3719) (regTwo!7950 (regex!2405 (rule!4160 t1!34))))) b!1373177))

(declare-fun b!1373178 () Bool)

(declare-fun e!877665 () Bool)

(assert (=> b!1373178 (= e!877665 tp_is_empty!6747)))

(declare-fun b!1373179 () Bool)

(declare-fun tp!394107 () Bool)

(declare-fun tp!394109 () Bool)

(assert (=> b!1373179 (= e!877665 (and tp!394107 tp!394109))))

(declare-fun b!1373180 () Bool)

(declare-fun tp!394110 () Bool)

(assert (=> b!1373180 (= e!877665 tp!394110)))

(declare-fun b!1373181 () Bool)

(declare-fun tp!394111 () Bool)

(declare-fun tp!394108 () Bool)

(assert (=> b!1373181 (= e!877665 (and tp!394111 tp!394108))))

(assert (=> b!1371487 (= tp!393912 e!877665)))

(assert (= (and b!1371487 ((_ is ElementMatch!3719) (regOne!7951 (regex!2405 (rule!4160 t2!34))))) b!1373178))

(assert (= (and b!1371487 ((_ is Concat!6214) (regOne!7951 (regex!2405 (rule!4160 t2!34))))) b!1373179))

(assert (= (and b!1371487 ((_ is Star!3719) (regOne!7951 (regex!2405 (rule!4160 t2!34))))) b!1373180))

(assert (= (and b!1371487 ((_ is Union!3719) (regOne!7951 (regex!2405 (rule!4160 t2!34))))) b!1373181))

(declare-fun b!1373182 () Bool)

(declare-fun e!877666 () Bool)

(assert (=> b!1373182 (= e!877666 tp_is_empty!6747)))

(declare-fun b!1373183 () Bool)

(declare-fun tp!394112 () Bool)

(declare-fun tp!394114 () Bool)

(assert (=> b!1373183 (= e!877666 (and tp!394112 tp!394114))))

(declare-fun b!1373184 () Bool)

(declare-fun tp!394115 () Bool)

(assert (=> b!1373184 (= e!877666 tp!394115)))

(declare-fun b!1373185 () Bool)

(declare-fun tp!394116 () Bool)

(declare-fun tp!394113 () Bool)

(assert (=> b!1373185 (= e!877666 (and tp!394116 tp!394113))))

(assert (=> b!1371487 (= tp!393909 e!877666)))

(assert (= (and b!1371487 ((_ is ElementMatch!3719) (regTwo!7951 (regex!2405 (rule!4160 t2!34))))) b!1373182))

(assert (= (and b!1371487 ((_ is Concat!6214) (regTwo!7951 (regex!2405 (rule!4160 t2!34))))) b!1373183))

(assert (= (and b!1371487 ((_ is Star!3719) (regTwo!7951 (regex!2405 (rule!4160 t2!34))))) b!1373184))

(assert (= (and b!1371487 ((_ is Union!3719) (regTwo!7951 (regex!2405 (rule!4160 t2!34))))) b!1373185))

(declare-fun b!1373186 () Bool)

(declare-fun tp!394117 () Bool)

(declare-fun e!877667 () Bool)

(declare-fun tp!394119 () Bool)

(assert (=> b!1373186 (= e!877667 (and (inv!18248 (left!11884 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34))))) tp!394117 (inv!18248 (right!12214 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34))))) tp!394119))))

(declare-fun b!1373188 () Bool)

(declare-fun e!877668 () Bool)

(declare-fun tp!394118 () Bool)

(assert (=> b!1373188 (= e!877668 tp!394118)))

(declare-fun b!1373187 () Bool)

(assert (=> b!1373187 (= e!877667 (and (inv!18255 (xs!7299 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34))))) e!877668))))

(assert (=> b!1371415 (= tp!393877 (and (inv!18248 (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34)))) e!877667))))

(assert (= (and b!1371415 ((_ is Node!4572) (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34))))) b!1373186))

(assert (= b!1373187 b!1373188))

(assert (= (and b!1371415 ((_ is Leaf!6971) (c!225513 (dynLambda!6308 (toChars!3531 (transformation!2405 (rule!4160 t1!34))) (value!78175 t1!34))))) b!1373187))

(declare-fun m!1544621 () Bool)

(assert (=> b!1373186 m!1544621))

(declare-fun m!1544623 () Bool)

(assert (=> b!1373186 m!1544623))

(declare-fun m!1544625 () Bool)

(assert (=> b!1373187 m!1544625))

(assert (=> b!1371415 m!1541781))

(declare-fun b!1373189 () Bool)

(declare-fun e!877669 () Bool)

(assert (=> b!1373189 (= e!877669 tp_is_empty!6747)))

(declare-fun b!1373190 () Bool)

(declare-fun tp!394120 () Bool)

(declare-fun tp!394122 () Bool)

(assert (=> b!1373190 (= e!877669 (and tp!394120 tp!394122))))

(declare-fun b!1373191 () Bool)

(declare-fun tp!394123 () Bool)

(assert (=> b!1373191 (= e!877669 tp!394123)))

(declare-fun b!1373192 () Bool)

(declare-fun tp!394124 () Bool)

(declare-fun tp!394121 () Bool)

(assert (=> b!1373192 (= e!877669 (and tp!394124 tp!394121))))

(assert (=> b!1371486 (= tp!393911 e!877669)))

(assert (= (and b!1371486 ((_ is ElementMatch!3719) (reg!4048 (regex!2405 (rule!4160 t2!34))))) b!1373189))

(assert (= (and b!1371486 ((_ is Concat!6214) (reg!4048 (regex!2405 (rule!4160 t2!34))))) b!1373190))

(assert (= (and b!1371486 ((_ is Star!3719) (reg!4048 (regex!2405 (rule!4160 t2!34))))) b!1373191))

(assert (= (and b!1371486 ((_ is Union!3719) (reg!4048 (regex!2405 (rule!4160 t2!34))))) b!1373192))

(declare-fun b_lambda!42107 () Bool)

(assert (= b_lambda!42083 (or b!1370757 b_lambda!42107)))

(assert (=> d!391943 d!391197))

(declare-fun b_lambda!42109 () Bool)

(assert (= b_lambda!42101 (or b!1370759 b_lambda!42109)))

(declare-fun bs!335939 () Bool)

(declare-fun d!392123 () Bool)

(assert (= bs!335939 (and d!392123 b!1370759)))

(assert (=> bs!335939 (= (dynLambda!6314 lambda!58184 (h!19291 (t!121485 rules!2550))) (regex!2405 (h!19291 (t!121485 rules!2550))))))

(assert (=> b!1373094 d!392123))

(declare-fun b_lambda!42111 () Bool)

(assert (= b_lambda!42087 (or d!391143 b_lambda!42111)))

(declare-fun bs!335940 () Bool)

(declare-fun d!392125 () Bool)

(assert (= bs!335940 (and d!392125 d!391143)))

(assert (=> bs!335940 (= (dynLambda!6316 lambda!58228 (h!19293 (map!3068 rules!2550 lambda!58184))) (not (dynLambda!6316 lambda!58185 (h!19293 (map!3068 rules!2550 lambda!58184)))))))

(declare-fun b_lambda!42137 () Bool)

(assert (=> (not b_lambda!42137) (not bs!335940)))

(assert (=> bs!335940 m!1541807))

(assert (=> b!1372899 d!392125))

(declare-fun b_lambda!42113 () Bool)

(assert (= b_lambda!42077 (or d!391139 b_lambda!42113)))

(declare-fun bs!335941 () Bool)

(declare-fun d!392127 () Bool)

(assert (= bs!335941 (and d!392127 d!391139)))

(assert (=> bs!335941 (= (dynLambda!6316 lambda!58226 (h!19293 lt!454962)) (validRegex!1619 (h!19293 lt!454962)))))

(declare-fun m!1544627 () Bool)

(assert (=> bs!335941 m!1544627))

(assert (=> b!1372704 d!392127))

(declare-fun b_lambda!42115 () Bool)

(assert (= b_lambda!42105 (or b!1370766 b_lambda!42115)))

(declare-fun bs!335942 () Bool)

(declare-fun d!392129 () Bool)

(assert (= bs!335942 (and d!392129 b!1370766)))

(assert (=> bs!335942 (= (dynLambda!6311 lambda!58186 lt!455996) (= (regex!2405 lt!455996) lt!454964))))

(assert (=> d!392109 d!392129))

(declare-fun b_lambda!42117 () Bool)

(assert (= b_lambda!42089 (or d!391137 b_lambda!42117)))

(declare-fun bs!335943 () Bool)

(declare-fun d!392131 () Bool)

(assert (= bs!335943 (and d!392131 d!391137)))

(assert (=> bs!335943 (= (dynLambda!6316 lambda!58221 (h!19293 lt!454962)) (not (dynLambda!6316 lambda!58185 (h!19293 lt!454962))))))

(declare-fun b_lambda!42139 () Bool)

(assert (=> (not b_lambda!42139) (not bs!335943)))

(declare-fun m!1544629 () Bool)

(assert (=> bs!335943 m!1544629))

(assert (=> b!1372901 d!392131))

(declare-fun b_lambda!42119 () Bool)

(assert (= b_lambda!42091 (or d!391177 b_lambda!42119)))

(declare-fun bs!335944 () Bool)

(declare-fun d!392133 () Bool)

(assert (= bs!335944 (and d!392133 d!391177)))

(assert (=> bs!335944 (= (dynLambda!6314 lambda!58231 (h!19291 rules!2550)) (regex!2405 (h!19291 rules!2550)))))

(assert (=> b!1372986 d!392133))

(declare-fun b_lambda!42121 () Bool)

(assert (= b_lambda!42081 (or b!1370759 b_lambda!42121)))

(declare-fun bs!335945 () Bool)

(declare-fun d!392135 () Bool)

(assert (= bs!335945 (and d!392135 b!1370759)))

(declare-fun res!618620 () Bool)

(declare-fun e!877670 () Bool)

(assert (=> bs!335945 (=> (not res!618620) (not e!877670))))

(assert (=> bs!335945 (= res!618620 (validRegex!1619 lt!455860))))

(assert (=> bs!335945 (= (dynLambda!6316 lambda!58185 lt!455860) e!877670)))

(declare-fun b!1373193 () Bool)

(assert (=> b!1373193 (= e!877670 (matchR!1712 lt!455860 lt!454960))))

(assert (= (and bs!335945 res!618620) b!1373193))

(declare-fun m!1544631 () Bool)

(assert (=> bs!335945 m!1544631))

(declare-fun m!1544633 () Bool)

(assert (=> b!1373193 m!1544633))

(assert (=> d!391877 d!392135))

(declare-fun b_lambda!42123 () Bool)

(assert (= b_lambda!42085 (or d!390957 b_lambda!42123)))

(declare-fun bs!335946 () Bool)

(declare-fun d!392137 () Bool)

(assert (= bs!335946 (and d!392137 d!390957)))

(assert (=> bs!335946 (= (dynLambda!6311 lambda!58202 (h!19291 rules!2550)) (not (dynLambda!6311 lambda!58186 (h!19291 rules!2550))))))

(declare-fun b_lambda!42141 () Bool)

(assert (=> (not b_lambda!42141) (not bs!335946)))

(assert (=> bs!335946 m!1541449))

(assert (=> b!1372856 d!392137))

(declare-fun b_lambda!42125 () Bool)

(assert (= b_lambda!41997 (or b!1370757 b_lambda!42125)))

(assert (=> d!391267 d!391191))

(declare-fun b_lambda!42127 () Bool)

(assert (= b_lambda!42103 (or b!1370766 b_lambda!42127)))

(declare-fun bs!335947 () Bool)

(declare-fun d!392139 () Bool)

(assert (= bs!335947 (and d!392139 b!1370766)))

(assert (=> bs!335947 (= (dynLambda!6311 lambda!58186 (h!19291 (t!121485 rules!2550))) (= (regex!2405 (h!19291 (t!121485 rules!2550))) lt!454964))))

(assert (=> b!1373098 d!392139))

(declare-fun b_lambda!42129 () Bool)

(assert (= b_lambda!42093 (or b!1370737 b_lambda!42129)))

(declare-fun bs!335948 () Bool)

(declare-fun d!392141 () Bool)

(assert (= bs!335948 (and d!392141 b!1370737)))

(declare-fun res!618621 () Bool)

(declare-fun e!877671 () Bool)

(assert (=> bs!335948 (=> (not res!618621) (not e!877671))))

(assert (=> bs!335948 (= res!618621 (matchR!1712 lt!454967 res!618580))))

(assert (=> bs!335948 (= (dynLambda!6315 lambda!58183 res!618580) e!877671)))

(declare-fun b!1373194 () Bool)

(assert (=> b!1373194 (= e!877671 (isPrefix!1129 lt!454969 res!618580))))

(assert (= (and bs!335948 res!618621) b!1373194))

(declare-fun m!1544635 () Bool)

(assert (=> bs!335948 m!1544635))

(declare-fun m!1544637 () Bool)

(assert (=> b!1373194 m!1544637))

(assert (=> d!392049 d!392141))

(declare-fun b_lambda!42131 () Bool)

(assert (= b_lambda!42099 (or b!1370757 b_lambda!42131)))

(assert (=> d!392097 d!391199))

(declare-fun b_lambda!42133 () Bool)

(assert (= b_lambda!42079 (or b!1370759 b_lambda!42133)))

(declare-fun bs!335949 () Bool)

(declare-fun d!392143 () Bool)

(assert (= bs!335949 (and d!392143 b!1370759)))

(declare-fun res!618622 () Bool)

(declare-fun e!877672 () Bool)

(assert (=> bs!335949 (=> (not res!618622) (not e!877672))))

(assert (=> bs!335949 (= res!618622 (validRegex!1619 (h!19293 (t!121487 (map!3068 rules!2550 lambda!58184)))))))

(assert (=> bs!335949 (= (dynLambda!6316 lambda!58185 (h!19293 (t!121487 (map!3068 rules!2550 lambda!58184)))) e!877672)))

(declare-fun b!1373195 () Bool)

(assert (=> b!1373195 (= e!877672 (matchR!1712 (h!19293 (t!121487 (map!3068 rules!2550 lambda!58184))) lt!454960))))

(assert (= (and bs!335949 res!618622) b!1373195))

(declare-fun m!1544639 () Bool)

(assert (=> bs!335949 m!1544639))

(declare-fun m!1544641 () Bool)

(assert (=> b!1373195 m!1544641))

(assert (=> b!1372727 d!392143))

(declare-fun b_lambda!42135 () Bool)

(assert (= b_lambda!41999 (or b!1370757 b_lambda!42135)))

(declare-fun bs!335950 () Bool)

(declare-fun d!392145 () Bool)

(assert (= bs!335950 (and d!392145 b!1370757)))

(assert (=> bs!335950 (= (dynLambda!6311 lambda!58187 (h!19291 rules!2550)) (ruleValid!592 thiss!19762 (h!19291 rules!2550)))))

(assert (=> bs!335950 m!1542799))

(assert (=> b!1371611 d!392145))

(check-sat (not bm!92173) (not b!1372721) (not d!391923) (not b!1373172) (not b!1372049) (not d!391837) (not d!391887) (not b!1372199) (not b!1373180) (not b!1372011) (not d!392019) (not d!392059) (not b!1372010) (not b!1373036) (not b!1373065) (not b!1372684) (not b!1372801) (not b!1373001) (not bm!92191) (not b!1372607) (not d!391911) (not d!391861) (not b!1372465) (not d!391565) (not b!1372885) (not d!392079) (not b!1372840) (not b!1372975) (not b!1373059) (not b!1372739) (not b!1372792) (not b!1373053) (not b_next!33929) (not b!1371582) (not b!1372830) (not b!1372863) (not b!1372755) (not b!1373190) (not b!1372009) (not d!391771) (not b!1373143) (not d!391675) (not b!1372847) (not b!1372914) (not d!392031) (not b!1372486) (not b!1372874) (not d!391959) (not b!1373142) (not b!1372796) (not b!1372752) (not d!392045) (not b!1372992) b_and!92003 (not d!391619) (not b!1373089) (not b!1373144) (not b_lambda!42131) (not b!1373177) (not b!1372442) (not d!391897) (not d!391989) (not b!1373079) (not d!391703) (not b!1373165) (not d!391895) (not b!1372982) (not b!1372688) (not b!1372880) (not d!391749) (not b_lambda!42139) (not d!391987) (not b!1373002) (not b!1371583) (not b!1373061) (not b!1373168) (not b!1373138) (not b!1372390) (not b_lambda!41979) (not b!1372918) (not b!1372989) (not bm!92193) (not d!391979) b_and!91989 (not b!1372272) (not b!1372224) (not b_next!33933) (not d!392017) (not b!1372760) (not b!1372686) (not b!1373088) (not bm!92166) (not b!1372984) (not b!1373163) (not d!391281) (not b!1373184) (not bs!335945) (not d!392107) (not b!1371961) (not d!392119) (not b!1372906) (not bm!92200) (not b!1371641) (not b!1371639) (not b!1372743) (not b!1373092) (not d!392043) (not b!1372909) b_and!91987 (not b_lambda!41983) (not b!1372450) (not b!1372705) (not d!392099) (not b!1373032) (not bs!335948) (not b!1372981) (not b_lambda!42133) (not b!1373091) (not d!392109) (not b!1372954) (not d!391991) (not d!391715) (not b!1372977) (not b_lambda!42111) (not b!1372889) (not b!1372820) (not b!1372768) (not b_next!33923) (not b!1372114) (not d!392071) (not b!1372690) (not b!1372724) (not d!391447) (not b!1372206) (not b!1373055) (not b!1372426) (not b!1373171) (not d!391901) (not b!1373123) (not d!391241) (not b!1372352) (not d!391931) (not d!391877) (not d!391247) (not b!1373164) (not b!1372790) (not b!1373047) (not tb!72301) (not bm!92165) (not b!1372693) b_and!92007 (not b!1372296) (not b!1372716) (not b!1373095) (not bm!92197) (not d!391261) (not b_next!33927) (not b!1372785) (not b!1373068) (not d!392115) (not b!1372227) (not b_next!33931) (not b!1373195) (not d!392085) (not b!1372879) (not b!1373063) (not d!392101) (not b!1372072) (not d!392053) (not d!392117) (not b!1373193) (not d!391309) (not b_lambda!42117) (not d!391605) (not bs!335950) (not b!1373073) (not tb!72293) (not b!1373173) (not b!1373111) (not b!1373156) (not b!1373194) (not b!1371683) (not d!392047) (not b!1372696) (not b!1372810) (not bm!92170) (not bm!92192) (not b!1373140) (not d!391913) (not d!392025) (not b!1372887) (not b!1373052) (not b!1372458) (not b!1373153) (not b!1373115) (not b!1372865) (not b_lambda!42113) (not tb!72285) (not b!1372500) (not b!1373066) (not b!1372740) (not d!391859) (not b!1372326) (not b!1372220) (not bm!92178) (not d!391449) (not b!1372869) (not b!1372389) (not d!392021) (not d!391301) (not b!1373154) (not b!1372816) (not b!1373064) (not b!1372533) (not b!1371682) (not b!1373148) (not d!391679) (not bm!92188) (not b!1373161) (not b!1372327) (not b!1372717) (not d!391265) (not b!1372759) (not d!392077) (not d!391745) (not b!1373117) (not b!1373094) (not b_lambda!41969) (not b!1373112) (not b!1373160) (not b!1372767) (not b!1373183) (not d!391499) (not b!1373070) (not b!1372990) (not d!391747) (not d!391973) (not b!1372835) (not b!1372843) (not b!1372859) (not d!391855) (not b_lambda!41981) (not bm!92194) (not d!391689) (not b!1373067) (not bs!335941) (not b!1373116) (not d!391899) (not b!1373159) (not b!1372353) (not b!1372605) (not b!1372866) (not b!1373057) (not b!1372839) (not b_lambda!42075) (not d!391967) (not b_lambda!41977) (not b!1373072) (not b_lambda!41971) (not b!1373139) (not b!1372683) (not b!1372933) (not d!391841) (not b_lambda!42109) (not b!1373179) (not b!1373185) (not bm!92176) (not d!392033) (not d!391665) (not b!1372461) (not b!1373155) (not bm!92139) (not d!391607) (not bm!92181) (not b!1373187) (not b!1372398) b_and!92009 (not b_lambda!41973) (not b!1373040) (not b!1372050) (not d!391791) (not b!1372298) (not b!1373100) (not b!1372205) (not b!1372756) (not d!391903) (not b!1372834) (not b!1372726) (not b!1372926) (not b!1372870) (not d!391957) (not b!1371959) (not b_lambda!41975) (not b!1373188) (not d!391295) (not b!1371643) (not b_lambda!42135) (not b_lambda!42107) (not b_next!33925) (not b!1373125) (not b!1372851) (not d!391955) (not d!391985) (not b!1372377) (not b!1371684) (not b_lambda!42121) (not b!1372915) (not b!1373175) (not b!1373083) (not b!1371645) (not d!391713) (not tb!72265) (not b!1372932) (not b!1371584) (not b!1372823) (not b!1372900) (not b!1372867) (not b_next!33947) (not d!391851) (not d!391963) (not b!1371010) (not b!1372695) (not b!1373121) (not b!1372917) (not b!1372488) (not b!1372084) (not b!1372919) (not b!1373135) (not b!1372462) (not b!1371646) (not b!1373191) (not bm!92172) (not b!1372864) (not b!1372289) (not b!1372742) (not b!1372737) (not d!391853) (not b!1371657) (not b!1372845) (not b!1373146) (not d!391809) (not d!391691) (not b!1372890) (not b!1373169) (not b!1372204) (not d!392023) (not d!391863) (not b!1372228) (not d!391907) (not b!1371415) (not b_lambda!41985) (not bs!335949) (not d!391291) (not b_lambda!42127) (not d!391961) (not b!1372916) (not b!1373181) (not d!391773) (not d!391711) (not b!1373186) (not d!392003) (not d!391953) (not b_lambda!41989) (not b!1372200) (not b!1372998) (not b!1372824) (not b!1372986) (not b!1372794) (not b!1372819) (not b!1372911) (not b!1372912) (not b_lambda!42125) (not b!1372802) (not b_lambda!41991) (not d!392063) (not b!1373152) (not b!1372286) (not bm!92177) (not b_lambda!42129) (not bm!92179) (not b_next!33949) (not b!1372935) (not b!1373149) (not d!391647) (not b!1372868) (not b!1372978) (not b!1372903) (not b!1373037) (not b!1372744) (not b!1373113) (not b!1373120) (not d!391925) (not b!1372225) (not b!1372841) (not bm!92168) (not b!1372948) (not d!392029) (not b!1372294) (not b!1373081) (not b!1373192) (not d!391259) (not b!1373102) (not b!1371671) (not d!391785) (not b_lambda!42137) (not b!1372855) (not b_lambda!42123) (not bm!92163) (not d!391945) (not b!1372468) (not b!1371958) (not b!1371585) (not d!392111) (not b!1372325) (not d!391289) (not b!1373069) (not b!1372725) (not b!1373005) (not d!391891) (not d!391707) (not b!1372288) (not b!1372719) (not d!392089) (not b!1372499) (not d!392057) (not d!391969) (not b_lambda!42095) (not bm!92180) (not b!1373090) b_and!92013 (not b!1372328) (not b!1372329) (not b!1372896) (not b!1373124) (not b!1372878) (not b!1372902) (not b!1372983) (not d!391493) (not b!1372857) (not b!1373077) b_and!92005 (not b!1372898) (not b!1372854) (not b!1373119) (not b!1372872) (not d!391921) (not b_lambda!41993) (not b!1372692) (not b!1373147) (not b!1373136) b_and!92011 (not bm!92148) (not b!1372837) (not b!1372223) (not d!391495) (not d!392103) (not b!1372501) (not d!391563) (not bm!92198) (not b!1371686) (not d!391311) (not b!1372910) (not b!1373151) (not b!1373078) (not b!1372728) (not b!1372875) (not b!1371672) (not b!1373085) (not b!1371960) (not b_lambda!42141) (not b!1373018) (not d!391885) b_and!91991 (not d!392061) (not d!391919) (not b!1371612) (not b!1372745) (not d!392055) (not b!1373039) (not d!391305) (not d!391843) (not b_next!33939) (not d!391909) (not b!1372861) (not b!1372498) (not b!1372207) (not b!1373003) (not d!391673) (not b_lambda!42025) (not b!1372931) (not bm!92095) (not bm!92186) (not b!1372604) (not b!1373086) (not d!391993) tp_is_empty!6747 (not d!391889) (not b!1372991) (not b!1372884) (not b!1372795) (not d!391879) (not b!1373074) (not d!391277) (not b!1373176) (not b!1372203) (not b!1372913) (not b!1372769) (not b!1373096) (not d!392095) (not b!1372789) (not b!1373022) (not bm!92183) (not b!1372808) (not b!1372883) (not b!1372838) (not d!392121) (not b!1372731) (not d!391975) b_and!91993 (not b!1372331) (not b!1373035) (not b!1372797) (not d!391865) (not b_lambda!42097) (not bm!92149) (not b_lambda!42115) (not d!391981) (not b!1373084) (not d!391709) (not b!1373134) (not b!1372463) (not b!1372886) (not b!1372821) (not d!392005) (not b!1372888) (not b!1371679) (not b!1372201) (not d!391697) (not b!1372606) (not b!1372833) (not b!1372324) (not b!1372999) (not b!1372849) (not b!1373026) (not b_next!33941) (not b!1372741) (not b!1372466) (not d!391603) (not d!392091) (not d!391999) (not d!391307) (not b!1373007) (not b_lambda!41987) (not b!1373167) (not b!1371687) (not bm!92182) (not b!1372793) (not b!1372452) (not b!1372102) (not b!1372784) (not b!1372471) (not b!1372757) (not d!391835) (not d!391933) (not b_lambda!42119) (not b!1372746) (not d!391681))
(check-sat (not b_next!33929) b_and!92003 b_and!92009 (not b_next!33925) (not b_next!33947) (not b_next!33949) b_and!92011 b_and!91991 (not b_next!33939) b_and!91993 (not b_next!33941) b_and!91989 (not b_next!33933) b_and!91987 (not b_next!33923) (not b_next!33927) (not b_next!33931) b_and!92007 b_and!92005 b_and!92013)
