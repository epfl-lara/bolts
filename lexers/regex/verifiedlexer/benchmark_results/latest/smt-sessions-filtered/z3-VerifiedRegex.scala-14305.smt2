; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747076 () Bool)

(assert start!747076)

(declare-fun b!7912318 () Bool)

(declare-fun b_free!135247 () Bool)

(declare-fun b_next!136037 () Bool)

(assert (=> b!7912318 (= b_free!135247 (not b_next!136037))))

(declare-fun tp!2356825 () Bool)

(declare-fun b_and!353603 () Bool)

(assert (=> b!7912318 (= tp!2356825 b_and!353603)))

(declare-fun b_free!135249 () Bool)

(declare-fun b_next!136039 () Bool)

(assert (=> b!7912318 (= b_free!135249 (not b_next!136039))))

(declare-fun tp!2356826 () Bool)

(declare-fun b_and!353605 () Bool)

(assert (=> b!7912318 (= tp!2356826 b_and!353605)))

(declare-fun e!4670643 () Bool)

(declare-datatypes ((List!74513 0))(
  ( (Nil!74389) (Cons!74389 (h!80837 (_ BitVec 16)) (t!389950 List!74513)) )
))
(declare-datatypes ((C!43088 0))(
  ( (C!43089 (val!32008 Int)) )
))
(declare-datatypes ((List!74514 0))(
  ( (Nil!74390) (Cons!74390 (h!80838 C!43088) (t!389951 List!74514)) )
))
(declare-datatypes ((IArray!31761 0))(
  ( (IArray!31762 (innerList!15938 List!74514)) )
))
(declare-datatypes ((Conc!15850 0))(
  ( (Node!15850 (left!56779 Conc!15850) (right!57109 Conc!15850) (csize!31930 Int) (cheight!16061 Int)) (Leaf!30156 (xs!19232 IArray!31761) (csize!31931 Int)) (Empty!15850) )
))
(declare-datatypes ((BalanceConc!30818 0))(
  ( (BalanceConc!30819 (c!1451653 Conc!15850)) )
))
(declare-datatypes ((TokenValue!8992 0))(
  ( (FloatLiteralValue!17984 (text!63389 List!74513)) (TokenValueExt!8991 (__x!35271 Int)) (Broken!44960 (value!289215 List!74513)) (Object!9115) (End!8992) (Def!8992) (Underscore!8992) (Match!8992) (Else!8992) (Error!8992) (Case!8992) (If!8992) (Extends!8992) (Abstract!8992) (Class!8992) (Val!8992) (DelimiterValue!17984 (del!9052 List!74513)) (KeywordValue!8998 (value!289216 List!74513)) (CommentValue!17984 (value!289217 List!74513)) (WhitespaceValue!17984 (value!289218 List!74513)) (IndentationValue!8992 (value!289219 List!74513)) (String!83381) (Int32!8992) (Broken!44961 (value!289220 List!74513)) (Boolean!8993) (Unit!169466) (OperatorValue!8995 (op!9052 List!74513)) (IdentifierValue!17984 (value!289221 List!74513)) (IdentifierValue!17985 (value!289222 List!74513)) (WhitespaceValue!17985 (value!289223 List!74513)) (True!17984) (False!17984) (Broken!44962 (value!289224 List!74513)) (Broken!44963 (value!289225 List!74513)) (True!17985) (RightBrace!8992) (RightBracket!8992) (Colon!8992) (Null!8992) (Comma!8992) (LeftBracket!8992) (False!17985) (LeftBrace!8992) (ImaginaryLiteralValue!8992 (text!63390 List!74513)) (StringLiteralValue!26976 (value!289226 List!74513)) (EOFValue!8992 (value!289227 List!74513)) (IdentValue!8992 (value!289228 List!74513)) (DelimiterValue!17985 (value!289229 List!74513)) (DedentValue!8992 (value!289230 List!74513)) (NewLineValue!8992 (value!289231 List!74513)) (IntegerValue!26976 (value!289232 (_ BitVec 32)) (text!63391 List!74513)) (IntegerValue!26977 (value!289233 Int) (text!63392 List!74513)) (Times!8992) (Or!8992) (Equal!8992) (Minus!8992) (Broken!44964 (value!289234 List!74513)) (And!8992) (Div!8992) (LessEqual!8992) (Mod!8992) (Concat!30371) (Not!8992) (Plus!8992) (SpaceValue!8992 (value!289235 List!74513)) (IntegerValue!26978 (value!289236 Int) (text!63393 List!74513)) (StringLiteralValue!26977 (text!63394 List!74513)) (FloatLiteralValue!17985 (text!63395 List!74513)) (BytesLiteralValue!8992 (value!289237 List!74513)) (CommentValue!17985 (value!289238 List!74513)) (StringLiteralValue!26978 (value!289239 List!74513)) (ErrorTokenValue!8992 (msg!9053 List!74513)) )
))
(declare-datatypes ((String!83382 0))(
  ( (String!83383 (value!289240 String)) )
))
(declare-datatypes ((Regex!21379 0))(
  ( (ElementMatch!21379 (c!1451654 C!43088)) (Concat!30372 (regOne!43270 Regex!21379) (regTwo!43270 Regex!21379)) (EmptyExpr!21379) (Star!21379 (reg!21708 Regex!21379)) (EmptyLang!21379) (Union!21379 (regOne!43271 Regex!21379) (regTwo!43271 Regex!21379)) )
))
(declare-datatypes ((TokenValueInjection!17292 0))(
  ( (TokenValueInjection!17293 (toValue!11733 Int) (toChars!11592 Int)) )
))
(declare-datatypes ((Rule!17152 0))(
  ( (Rule!17153 (regex!8676 Regex!21379) (tag!9540 String!83382) (isSeparator!8676 Bool) (transformation!8676 TokenValueInjection!17292)) )
))
(declare-fun rule!156 () Rule!17152)

(declare-datatypes ((tuple2!70464 0))(
  ( (tuple2!70465 (_1!38535 List!74514) (_2!38535 List!74514)) )
))
(declare-fun lt!2688245 () tuple2!70464)

(declare-fun b!7912316 () Bool)

(declare-fun lt!2688244 () BalanceConc!30818)

(declare-datatypes ((Token!15760 0))(
  ( (Token!15761 (value!289241 TokenValue!8992) (rule!11974 Rule!17152) (size!43173 Int) (originalCharacters!8911 List!74514)) )
))
(declare-fun inv!95461 (Token!15760) Bool)

(declare-fun apply!14383 (TokenValueInjection!17292 BalanceConc!30818) TokenValue!8992)

(declare-fun size!43174 (BalanceConc!30818) Int)

(assert (=> b!7912316 (= e!4670643 (not (inv!95461 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))))

(declare-datatypes ((Unit!169467 0))(
  ( (Unit!169468) )
))
(declare-fun lt!2688247 () Unit!169467)

(declare-fun lemmaSemiInverse!2692 (TokenValueInjection!17292 BalanceConc!30818) Unit!169467)

(assert (=> b!7912316 (= lt!2688247 (lemmaSemiInverse!2692 (transformation!8676 rule!156) lt!2688244))))

(declare-fun seqFromList!6201 (List!74514) BalanceConc!30818)

(assert (=> b!7912316 (= lt!2688244 (seqFromList!6201 (_1!38535 lt!2688245)))))

(declare-fun e!4670647 () Bool)

(assert (=> b!7912316 e!4670647))

(declare-fun res!3140510 () Bool)

(assert (=> b!7912316 (=> res!3140510 e!4670647)))

(declare-fun lt!2688248 () tuple2!70464)

(declare-fun isEmpty!42717 (List!74514) Bool)

(assert (=> b!7912316 (= res!3140510 (isEmpty!42717 (_1!38535 lt!2688248)))))

(declare-fun input!1480 () List!74514)

(declare-fun findLongestMatchInner!2184 (Regex!21379 List!74514 Int List!74514 List!74514 Int) tuple2!70464)

(declare-fun size!43175 (List!74514) Int)

(assert (=> b!7912316 (= lt!2688248 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))))

(declare-fun lt!2688246 () Unit!169467)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2145 (Regex!21379 List!74514) Unit!169467)

(assert (=> b!7912316 (= lt!2688246 (longestMatchIsAcceptedByMatchOrIsEmpty!2145 (regex!8676 rule!156) input!1480))))

(declare-fun res!3140507 () Bool)

(declare-fun e!4670645 () Bool)

(assert (=> start!747076 (=> (not res!3140507) (not e!4670645))))

(declare-datatypes ((LexerInterface!8268 0))(
  ( (LexerInterfaceExt!8265 (__x!35272 Int)) (Lexer!8266) )
))
(declare-fun thiss!15815 () LexerInterface!8268)

(get-info :version)

(assert (=> start!747076 (= res!3140507 ((_ is Lexer!8266) thiss!15815))))

(assert (=> start!747076 e!4670645))

(assert (=> start!747076 true))

(declare-fun e!4670646 () Bool)

(assert (=> start!747076 e!4670646))

(declare-fun e!4670644 () Bool)

(assert (=> start!747076 e!4670644))

(declare-fun b!7912317 () Bool)

(assert (=> b!7912317 (= e!4670645 e!4670643)))

(declare-fun res!3140509 () Bool)

(assert (=> b!7912317 (=> (not res!3140509) (not e!4670643))))

(assert (=> b!7912317 (= res!3140509 (not (isEmpty!42717 (_1!38535 lt!2688245))))))

(declare-fun findLongestMatch!1969 (Regex!21379 List!74514) tuple2!70464)

(assert (=> b!7912317 (= lt!2688245 (findLongestMatch!1969 (regex!8676 rule!156) input!1480))))

(declare-fun e!4670642 () Bool)

(assert (=> b!7912318 (= e!4670642 (and tp!2356825 tp!2356826))))

(declare-fun b!7912319 () Bool)

(declare-fun tp_is_empty!53133 () Bool)

(declare-fun tp!2356828 () Bool)

(assert (=> b!7912319 (= e!4670644 (and tp_is_empty!53133 tp!2356828))))

(declare-fun b!7912320 () Bool)

(declare-fun tp!2356827 () Bool)

(declare-fun inv!95458 (String!83382) Bool)

(declare-fun inv!95462 (TokenValueInjection!17292) Bool)

(assert (=> b!7912320 (= e!4670646 (and tp!2356827 (inv!95458 (tag!9540 rule!156)) (inv!95462 (transformation!8676 rule!156)) e!4670642))))

(declare-fun b!7912321 () Bool)

(declare-fun matchR!10698 (Regex!21379 List!74514) Bool)

(assert (=> b!7912321 (= e!4670647 (matchR!10698 (regex!8676 rule!156) (_1!38535 lt!2688248)))))

(declare-fun b!7912322 () Bool)

(declare-fun res!3140508 () Bool)

(assert (=> b!7912322 (=> (not res!3140508) (not e!4670645))))

(declare-fun ruleValid!3987 (LexerInterface!8268 Rule!17152) Bool)

(assert (=> b!7912322 (= res!3140508 (ruleValid!3987 thiss!15815 rule!156))))

(assert (= (and start!747076 res!3140507) b!7912322))

(assert (= (and b!7912322 res!3140508) b!7912317))

(assert (= (and b!7912317 res!3140509) b!7912316))

(assert (= (and b!7912316 (not res!3140510)) b!7912321))

(assert (= b!7912320 b!7912318))

(assert (= start!747076 b!7912320))

(assert (= (and start!747076 ((_ is Cons!74390) input!1480)) b!7912319))

(declare-fun m!8285856 () Bool)

(assert (=> b!7912317 m!8285856))

(declare-fun m!8285858 () Bool)

(assert (=> b!7912317 m!8285858))

(declare-fun m!8285860 () Bool)

(assert (=> b!7912322 m!8285860))

(declare-fun m!8285862 () Bool)

(assert (=> b!7912320 m!8285862))

(declare-fun m!8285864 () Bool)

(assert (=> b!7912320 m!8285864))

(declare-fun m!8285866 () Bool)

(assert (=> b!7912321 m!8285866))

(declare-fun m!8285868 () Bool)

(assert (=> b!7912316 m!8285868))

(declare-fun m!8285870 () Bool)

(assert (=> b!7912316 m!8285870))

(declare-fun m!8285872 () Bool)

(assert (=> b!7912316 m!8285872))

(declare-fun m!8285874 () Bool)

(assert (=> b!7912316 m!8285874))

(assert (=> b!7912316 m!8285868))

(declare-fun m!8285876 () Bool)

(assert (=> b!7912316 m!8285876))

(declare-fun m!8285878 () Bool)

(assert (=> b!7912316 m!8285878))

(declare-fun m!8285880 () Bool)

(assert (=> b!7912316 m!8285880))

(assert (=> b!7912316 m!8285876))

(declare-fun m!8285882 () Bool)

(assert (=> b!7912316 m!8285882))

(declare-fun m!8285884 () Bool)

(assert (=> b!7912316 m!8285884))

(declare-fun m!8285886 () Bool)

(assert (=> b!7912316 m!8285886))

(check-sat b_and!353603 (not b_next!136039) (not b!7912319) tp_is_empty!53133 (not b!7912316) (not b!7912321) (not b!7912317) (not b_next!136037) (not b!7912320) b_and!353605 (not b!7912322))
(check-sat b_and!353603 b_and!353605 (not b_next!136037) (not b_next!136039))
(get-model)

(declare-fun d!2360516 () Bool)

(assert (=> d!2360516 (= (inv!95458 (tag!9540 rule!156)) (= (mod (str.len (value!289240 (tag!9540 rule!156))) 2) 0))))

(assert (=> b!7912320 d!2360516))

(declare-fun d!2360518 () Bool)

(declare-fun res!3140531 () Bool)

(declare-fun e!4670665 () Bool)

(assert (=> d!2360518 (=> (not res!3140531) (not e!4670665))))

(declare-fun semiInverseModEq!3846 (Int Int) Bool)

(assert (=> d!2360518 (= res!3140531 (semiInverseModEq!3846 (toChars!11592 (transformation!8676 rule!156)) (toValue!11733 (transformation!8676 rule!156))))))

(assert (=> d!2360518 (= (inv!95462 (transformation!8676 rule!156)) e!4670665)))

(declare-fun b!7912350 () Bool)

(declare-fun equivClasses!3661 (Int Int) Bool)

(assert (=> b!7912350 (= e!4670665 (equivClasses!3661 (toChars!11592 (transformation!8676 rule!156)) (toValue!11733 (transformation!8676 rule!156))))))

(assert (= (and d!2360518 res!3140531) b!7912350))

(declare-fun m!8285888 () Bool)

(assert (=> d!2360518 m!8285888))

(declare-fun m!8285890 () Bool)

(assert (=> b!7912350 m!8285890))

(assert (=> b!7912320 d!2360518))

(declare-fun b!7912405 () Bool)

(declare-fun e!4670693 () Bool)

(declare-fun e!4670699 () Bool)

(assert (=> b!7912405 (= e!4670693 e!4670699)))

(declare-fun res!3140573 () Bool)

(assert (=> b!7912405 (=> (not res!3140573) (not e!4670699))))

(declare-fun lt!2688254 () Bool)

(assert (=> b!7912405 (= res!3140573 (not lt!2688254))))

(declare-fun d!2360520 () Bool)

(declare-fun e!4670695 () Bool)

(assert (=> d!2360520 e!4670695))

(declare-fun c!1451670 () Bool)

(assert (=> d!2360520 (= c!1451670 ((_ is EmptyExpr!21379) (regex!8676 rule!156)))))

(declare-fun e!4670694 () Bool)

(assert (=> d!2360520 (= lt!2688254 e!4670694)))

(declare-fun c!1451671 () Bool)

(assert (=> d!2360520 (= c!1451671 (isEmpty!42717 (_1!38535 lt!2688248)))))

(declare-fun validRegex!11683 (Regex!21379) Bool)

(assert (=> d!2360520 (validRegex!11683 (regex!8676 rule!156))))

(assert (=> d!2360520 (= (matchR!10698 (regex!8676 rule!156) (_1!38535 lt!2688248)) lt!2688254)))

(declare-fun b!7912406 () Bool)

(declare-fun res!3140568 () Bool)

(declare-fun e!4670697 () Bool)

(assert (=> b!7912406 (=> res!3140568 e!4670697)))

(declare-fun tail!15722 (List!74514) List!74514)

(assert (=> b!7912406 (= res!3140568 (not (isEmpty!42717 (tail!15722 (_1!38535 lt!2688248)))))))

(declare-fun b!7912407 () Bool)

(assert (=> b!7912407 (= e!4670699 e!4670697)))

(declare-fun res!3140570 () Bool)

(assert (=> b!7912407 (=> res!3140570 e!4670697)))

(declare-fun call!733934 () Bool)

(assert (=> b!7912407 (= res!3140570 call!733934)))

(declare-fun bm!733929 () Bool)

(assert (=> bm!733929 (= call!733934 (isEmpty!42717 (_1!38535 lt!2688248)))))

(declare-fun b!7912408 () Bool)

(declare-fun head!16179 (List!74514) C!43088)

(assert (=> b!7912408 (= e!4670697 (not (= (head!16179 (_1!38535 lt!2688248)) (c!1451654 (regex!8676 rule!156)))))))

(declare-fun b!7912409 () Bool)

(declare-fun res!3140567 () Bool)

(declare-fun e!4670696 () Bool)

(assert (=> b!7912409 (=> (not res!3140567) (not e!4670696))))

(assert (=> b!7912409 (= res!3140567 (isEmpty!42717 (tail!15722 (_1!38535 lt!2688248))))))

(declare-fun b!7912410 () Bool)

(declare-fun e!4670698 () Bool)

(assert (=> b!7912410 (= e!4670698 (not lt!2688254))))

(declare-fun b!7912411 () Bool)

(assert (=> b!7912411 (= e!4670695 e!4670698)))

(declare-fun c!1451672 () Bool)

(assert (=> b!7912411 (= c!1451672 ((_ is EmptyLang!21379) (regex!8676 rule!156)))))

(declare-fun b!7912412 () Bool)

(declare-fun derivativeStep!6458 (Regex!21379 C!43088) Regex!21379)

(assert (=> b!7912412 (= e!4670694 (matchR!10698 (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 lt!2688248))) (tail!15722 (_1!38535 lt!2688248))))))

(declare-fun b!7912413 () Bool)

(declare-fun res!3140571 () Bool)

(assert (=> b!7912413 (=> res!3140571 e!4670693)))

(assert (=> b!7912413 (= res!3140571 (not ((_ is ElementMatch!21379) (regex!8676 rule!156))))))

(assert (=> b!7912413 (= e!4670698 e!4670693)))

(declare-fun b!7912414 () Bool)

(assert (=> b!7912414 (= e!4670696 (= (head!16179 (_1!38535 lt!2688248)) (c!1451654 (regex!8676 rule!156))))))

(declare-fun b!7912415 () Bool)

(declare-fun nullable!9518 (Regex!21379) Bool)

(assert (=> b!7912415 (= e!4670694 (nullable!9518 (regex!8676 rule!156)))))

(declare-fun b!7912416 () Bool)

(assert (=> b!7912416 (= e!4670695 (= lt!2688254 call!733934))))

(declare-fun b!7912417 () Bool)

(declare-fun res!3140574 () Bool)

(assert (=> b!7912417 (=> res!3140574 e!4670693)))

(assert (=> b!7912417 (= res!3140574 e!4670696)))

(declare-fun res!3140569 () Bool)

(assert (=> b!7912417 (=> (not res!3140569) (not e!4670696))))

(assert (=> b!7912417 (= res!3140569 lt!2688254)))

(declare-fun b!7912418 () Bool)

(declare-fun res!3140572 () Bool)

(assert (=> b!7912418 (=> (not res!3140572) (not e!4670696))))

(assert (=> b!7912418 (= res!3140572 (not call!733934))))

(assert (= (and d!2360520 c!1451671) b!7912415))

(assert (= (and d!2360520 (not c!1451671)) b!7912412))

(assert (= (and d!2360520 c!1451670) b!7912416))

(assert (= (and d!2360520 (not c!1451670)) b!7912411))

(assert (= (and b!7912411 c!1451672) b!7912410))

(assert (= (and b!7912411 (not c!1451672)) b!7912413))

(assert (= (and b!7912413 (not res!3140571)) b!7912417))

(assert (= (and b!7912417 res!3140569) b!7912418))

(assert (= (and b!7912418 res!3140572) b!7912409))

(assert (= (and b!7912409 res!3140567) b!7912414))

(assert (= (and b!7912417 (not res!3140574)) b!7912405))

(assert (= (and b!7912405 res!3140573) b!7912407))

(assert (= (and b!7912407 (not res!3140570)) b!7912406))

(assert (= (and b!7912406 (not res!3140568)) b!7912408))

(assert (= (or b!7912416 b!7912407 b!7912418) bm!733929))

(declare-fun m!8285910 () Bool)

(assert (=> b!7912406 m!8285910))

(assert (=> b!7912406 m!8285910))

(declare-fun m!8285912 () Bool)

(assert (=> b!7912406 m!8285912))

(declare-fun m!8285914 () Bool)

(assert (=> b!7912412 m!8285914))

(assert (=> b!7912412 m!8285914))

(declare-fun m!8285916 () Bool)

(assert (=> b!7912412 m!8285916))

(assert (=> b!7912412 m!8285910))

(assert (=> b!7912412 m!8285916))

(assert (=> b!7912412 m!8285910))

(declare-fun m!8285918 () Bool)

(assert (=> b!7912412 m!8285918))

(assert (=> b!7912408 m!8285914))

(assert (=> b!7912409 m!8285910))

(assert (=> b!7912409 m!8285910))

(assert (=> b!7912409 m!8285912))

(assert (=> bm!733929 m!8285882))

(declare-fun m!8285920 () Bool)

(assert (=> b!7912415 m!8285920))

(assert (=> d!2360520 m!8285882))

(declare-fun m!8285922 () Bool)

(assert (=> d!2360520 m!8285922))

(assert (=> b!7912414 m!8285914))

(assert (=> b!7912321 d!2360520))

(declare-fun d!2360532 () Bool)

(declare-fun lt!2688257 () Int)

(assert (=> d!2360532 (>= lt!2688257 0)))

(declare-fun e!4670702 () Int)

(assert (=> d!2360532 (= lt!2688257 e!4670702)))

(declare-fun c!1451675 () Bool)

(assert (=> d!2360532 (= c!1451675 ((_ is Nil!74390) input!1480))))

(assert (=> d!2360532 (= (size!43175 input!1480) lt!2688257)))

(declare-fun b!7912423 () Bool)

(assert (=> b!7912423 (= e!4670702 0)))

(declare-fun b!7912424 () Bool)

(assert (=> b!7912424 (= e!4670702 (+ 1 (size!43175 (t!389951 input!1480))))))

(assert (= (and d!2360532 c!1451675) b!7912423))

(assert (= (and d!2360532 (not c!1451675)) b!7912424))

(declare-fun m!8285924 () Bool)

(assert (=> b!7912424 m!8285924))

(assert (=> b!7912316 d!2360532))

(declare-fun d!2360534 () Bool)

(declare-fun lt!2688258 () Int)

(assert (=> d!2360534 (>= lt!2688258 0)))

(declare-fun e!4670703 () Int)

(assert (=> d!2360534 (= lt!2688258 e!4670703)))

(declare-fun c!1451676 () Bool)

(assert (=> d!2360534 (= c!1451676 ((_ is Nil!74390) Nil!74390))))

(assert (=> d!2360534 (= (size!43175 Nil!74390) lt!2688258)))

(declare-fun b!7912425 () Bool)

(assert (=> b!7912425 (= e!4670703 0)))

(declare-fun b!7912426 () Bool)

(assert (=> b!7912426 (= e!4670703 (+ 1 (size!43175 (t!389951 Nil!74390))))))

(assert (= (and d!2360534 c!1451676) b!7912425))

(assert (= (and d!2360534 (not c!1451676)) b!7912426))

(declare-fun m!8285926 () Bool)

(assert (=> b!7912426 m!8285926))

(assert (=> b!7912316 d!2360534))

(declare-fun b!7912503 () Bool)

(declare-fun e!4670750 () tuple2!70464)

(assert (=> b!7912503 (= e!4670750 (tuple2!70465 Nil!74390 input!1480))))

(declare-fun b!7912504 () Bool)

(declare-fun c!1451716 () Bool)

(declare-fun call!733981 () Bool)

(assert (=> b!7912504 (= c!1451716 call!733981)))

(declare-fun lt!2688430 () Unit!169467)

(declare-fun lt!2688437 () Unit!169467)

(assert (=> b!7912504 (= lt!2688430 lt!2688437)))

(assert (=> b!7912504 (= input!1480 Nil!74390)))

(declare-fun call!733980 () Unit!169467)

(assert (=> b!7912504 (= lt!2688437 call!733980)))

(declare-fun lt!2688432 () Unit!169467)

(declare-fun lt!2688429 () Unit!169467)

(assert (=> b!7912504 (= lt!2688432 lt!2688429)))

(declare-fun call!733976 () Bool)

(assert (=> b!7912504 call!733976))

(declare-fun call!733977 () Unit!169467)

(assert (=> b!7912504 (= lt!2688429 call!733977)))

(declare-fun e!4670751 () tuple2!70464)

(declare-fun e!4670752 () tuple2!70464)

(assert (=> b!7912504 (= e!4670751 e!4670752)))

(declare-fun bm!733971 () Bool)

(declare-fun call!733978 () List!74514)

(assert (=> bm!733971 (= call!733978 (tail!15722 input!1480))))

(declare-fun b!7912505 () Bool)

(declare-fun e!4670749 () tuple2!70464)

(assert (=> b!7912505 (= e!4670749 e!4670751)))

(declare-fun c!1451712 () Bool)

(assert (=> b!7912505 (= c!1451712 (= (size!43175 Nil!74390) (size!43175 input!1480)))))

(declare-fun b!7912506 () Bool)

(declare-fun e!4670748 () tuple2!70464)

(assert (=> b!7912506 (= e!4670748 e!4670750)))

(declare-fun lt!2688434 () tuple2!70464)

(declare-fun call!733975 () tuple2!70464)

(assert (=> b!7912506 (= lt!2688434 call!733975)))

(declare-fun c!1451711 () Bool)

(assert (=> b!7912506 (= c!1451711 (isEmpty!42717 (_1!38535 lt!2688434)))))

(declare-fun b!7912507 () Bool)

(assert (=> b!7912507 (= e!4670752 (tuple2!70465 Nil!74390 Nil!74390))))

(declare-fun b!7912508 () Bool)

(declare-fun e!4670747 () Unit!169467)

(declare-fun Unit!169472 () Unit!169467)

(assert (=> b!7912508 (= e!4670747 Unit!169472)))

(declare-fun bm!733972 () Bool)

(declare-fun call!733982 () Regex!21379)

(declare-fun lt!2688435 () List!74514)

(assert (=> bm!733972 (= call!733975 (findLongestMatchInner!2184 call!733982 lt!2688435 (+ (size!43175 Nil!74390) 1) call!733978 input!1480 (size!43175 input!1480)))))

(declare-fun b!7912509 () Bool)

(assert (=> b!7912509 (= e!4670748 call!733975)))

(declare-fun b!7912510 () Bool)

(assert (=> b!7912510 (= e!4670749 (tuple2!70465 Nil!74390 input!1480))))

(declare-fun bm!733973 () Bool)

(assert (=> bm!733973 (= call!733981 (nullable!9518 (regex!8676 rule!156)))))

(declare-fun bm!733974 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1580 (List!74514 List!74514 List!74514) Unit!169467)

(assert (=> bm!733974 (= call!733980 (lemmaIsPrefixSameLengthThenSameList!1580 input!1480 Nil!74390 input!1480))))

(declare-fun bm!733975 () Bool)

(declare-fun call!733979 () C!43088)

(assert (=> bm!733975 (= call!733979 (head!16179 input!1480))))

(declare-fun b!7912511 () Bool)

(declare-fun Unit!169473 () Unit!169467)

(assert (=> b!7912511 (= e!4670747 Unit!169473)))

(declare-fun lt!2688443 () Unit!169467)

(assert (=> b!7912511 (= lt!2688443 call!733977)))

(assert (=> b!7912511 call!733976))

(declare-fun lt!2688446 () Unit!169467)

(assert (=> b!7912511 (= lt!2688446 lt!2688443)))

(declare-fun lt!2688431 () Unit!169467)

(assert (=> b!7912511 (= lt!2688431 call!733980)))

(assert (=> b!7912511 (= input!1480 Nil!74390)))

(declare-fun lt!2688447 () Unit!169467)

(assert (=> b!7912511 (= lt!2688447 lt!2688431)))

(assert (=> b!7912511 false))

(declare-fun b!7912512 () Bool)

(declare-fun c!1451713 () Bool)

(assert (=> b!7912512 (= c!1451713 call!733981)))

(declare-fun lt!2688450 () Unit!169467)

(declare-fun lt!2688436 () Unit!169467)

(assert (=> b!7912512 (= lt!2688450 lt!2688436)))

(declare-fun lt!2688451 () C!43088)

(declare-fun lt!2688428 () List!74514)

(declare-fun ++!18222 (List!74514 List!74514) List!74514)

(assert (=> b!7912512 (= (++!18222 (++!18222 Nil!74390 (Cons!74390 lt!2688451 Nil!74390)) lt!2688428) input!1480)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3487 (List!74514 C!43088 List!74514 List!74514) Unit!169467)

(assert (=> b!7912512 (= lt!2688436 (lemmaMoveElementToOtherListKeepsConcatEq!3487 Nil!74390 lt!2688451 lt!2688428 input!1480))))

(assert (=> b!7912512 (= lt!2688428 (tail!15722 input!1480))))

(assert (=> b!7912512 (= lt!2688451 (head!16179 input!1480))))

(declare-fun lt!2688452 () Unit!169467)

(declare-fun lt!2688453 () Unit!169467)

(assert (=> b!7912512 (= lt!2688452 lt!2688453)))

(declare-fun isPrefix!6487 (List!74514 List!74514) Bool)

(declare-fun getSuffix!3700 (List!74514 List!74514) List!74514)

(assert (=> b!7912512 (isPrefix!6487 (++!18222 Nil!74390 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390)) input!1480)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1265 (List!74514 List!74514) Unit!169467)

(assert (=> b!7912512 (= lt!2688453 (lemmaAddHeadSuffixToPrefixStillPrefix!1265 Nil!74390 input!1480))))

(declare-fun lt!2688438 () Unit!169467)

(declare-fun lt!2688440 () Unit!169467)

(assert (=> b!7912512 (= lt!2688438 lt!2688440)))

(assert (=> b!7912512 (= lt!2688440 (lemmaAddHeadSuffixToPrefixStillPrefix!1265 Nil!74390 input!1480))))

(assert (=> b!7912512 (= lt!2688435 (++!18222 Nil!74390 (Cons!74390 (head!16179 input!1480) Nil!74390)))))

(declare-fun lt!2688441 () Unit!169467)

(assert (=> b!7912512 (= lt!2688441 e!4670747)))

(declare-fun c!1451714 () Bool)

(assert (=> b!7912512 (= c!1451714 (= (size!43175 Nil!74390) (size!43175 input!1480)))))

(declare-fun lt!2688445 () Unit!169467)

(declare-fun lt!2688454 () Unit!169467)

(assert (=> b!7912512 (= lt!2688445 lt!2688454)))

(assert (=> b!7912512 (<= (size!43175 Nil!74390) (size!43175 input!1480))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1045 (List!74514 List!74514) Unit!169467)

(assert (=> b!7912512 (= lt!2688454 (lemmaIsPrefixThenSmallerEqSize!1045 Nil!74390 input!1480))))

(assert (=> b!7912512 (= e!4670751 e!4670748)))

(declare-fun bm!733976 () Bool)

(assert (=> bm!733976 (= call!733976 (isPrefix!6487 input!1480 input!1480))))

(declare-fun b!7912513 () Bool)

(assert (=> b!7912513 (= e!4670750 lt!2688434)))

(declare-fun bm!733977 () Bool)

(declare-fun lemmaIsPrefixRefl!3998 (List!74514 List!74514) Unit!169467)

(assert (=> bm!733977 (= call!733977 (lemmaIsPrefixRefl!3998 input!1480 input!1480))))

(declare-fun b!7912514 () Bool)

(assert (=> b!7912514 (= e!4670752 (tuple2!70465 Nil!74390 input!1480))))

(declare-fun b!7912515 () Bool)

(declare-fun e!4670753 () Bool)

(declare-fun lt!2688455 () tuple2!70464)

(assert (=> b!7912515 (= e!4670753 (>= (size!43175 (_1!38535 lt!2688455)) (size!43175 Nil!74390)))))

(declare-fun b!7912516 () Bool)

(declare-fun e!4670754 () Bool)

(assert (=> b!7912516 (= e!4670754 e!4670753)))

(declare-fun res!3140585 () Bool)

(assert (=> b!7912516 (=> res!3140585 e!4670753)))

(assert (=> b!7912516 (= res!3140585 (isEmpty!42717 (_1!38535 lt!2688455)))))

(declare-fun d!2360536 () Bool)

(assert (=> d!2360536 e!4670754))

(declare-fun res!3140586 () Bool)

(assert (=> d!2360536 (=> (not res!3140586) (not e!4670754))))

(assert (=> d!2360536 (= res!3140586 (= (++!18222 (_1!38535 lt!2688455) (_2!38535 lt!2688455)) input!1480))))

(assert (=> d!2360536 (= lt!2688455 e!4670749)))

(declare-fun c!1451715 () Bool)

(declare-fun lostCause!1931 (Regex!21379) Bool)

(assert (=> d!2360536 (= c!1451715 (lostCause!1931 (regex!8676 rule!156)))))

(declare-fun lt!2688439 () Unit!169467)

(declare-fun Unit!169474 () Unit!169467)

(assert (=> d!2360536 (= lt!2688439 Unit!169474)))

(assert (=> d!2360536 (= (getSuffix!3700 input!1480 Nil!74390) input!1480)))

(declare-fun lt!2688433 () Unit!169467)

(declare-fun lt!2688444 () Unit!169467)

(assert (=> d!2360536 (= lt!2688433 lt!2688444)))

(declare-fun lt!2688442 () List!74514)

(assert (=> d!2360536 (= input!1480 lt!2688442)))

(declare-fun lemmaSamePrefixThenSameSuffix!2947 (List!74514 List!74514 List!74514 List!74514 List!74514) Unit!169467)

(assert (=> d!2360536 (= lt!2688444 (lemmaSamePrefixThenSameSuffix!2947 Nil!74390 input!1480 Nil!74390 lt!2688442 input!1480))))

(assert (=> d!2360536 (= lt!2688442 (getSuffix!3700 input!1480 Nil!74390))))

(declare-fun lt!2688448 () Unit!169467)

(declare-fun lt!2688449 () Unit!169467)

(assert (=> d!2360536 (= lt!2688448 lt!2688449)))

(assert (=> d!2360536 (isPrefix!6487 Nil!74390 (++!18222 Nil!74390 input!1480))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3809 (List!74514 List!74514) Unit!169467)

(assert (=> d!2360536 (= lt!2688449 (lemmaConcatTwoListThenFirstIsPrefix!3809 Nil!74390 input!1480))))

(assert (=> d!2360536 (validRegex!11683 (regex!8676 rule!156))))

(assert (=> d!2360536 (= (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)) lt!2688455)))

(declare-fun bm!733970 () Bool)

(assert (=> bm!733970 (= call!733982 (derivativeStep!6458 (regex!8676 rule!156) call!733979))))

(assert (= (and d!2360536 c!1451715) b!7912510))

(assert (= (and d!2360536 (not c!1451715)) b!7912505))

(assert (= (and b!7912505 c!1451712) b!7912504))

(assert (= (and b!7912505 (not c!1451712)) b!7912512))

(assert (= (and b!7912504 c!1451716) b!7912507))

(assert (= (and b!7912504 (not c!1451716)) b!7912514))

(assert (= (and b!7912512 c!1451714) b!7912511))

(assert (= (and b!7912512 (not c!1451714)) b!7912508))

(assert (= (and b!7912512 c!1451713) b!7912506))

(assert (= (and b!7912512 (not c!1451713)) b!7912509))

(assert (= (and b!7912506 c!1451711) b!7912503))

(assert (= (and b!7912506 (not c!1451711)) b!7912513))

(assert (= (or b!7912506 b!7912509) bm!733975))

(assert (= (or b!7912506 b!7912509) bm!733971))

(assert (= (or b!7912506 b!7912509) bm!733970))

(assert (= (or b!7912506 b!7912509) bm!733972))

(assert (= (or b!7912504 b!7912512) bm!733973))

(assert (= (or b!7912504 b!7912511) bm!733976))

(assert (= (or b!7912504 b!7912511) bm!733977))

(assert (= (or b!7912504 b!7912511) bm!733974))

(assert (= (and d!2360536 res!3140586) b!7912516))

(assert (= (and b!7912516 (not res!3140585)) b!7912515))

(assert (=> bm!733973 m!8285920))

(declare-fun m!8286000 () Bool)

(assert (=> bm!733970 m!8286000))

(declare-fun m!8286002 () Bool)

(assert (=> b!7912512 m!8286002))

(assert (=> b!7912512 m!8285876))

(declare-fun m!8286004 () Bool)

(assert (=> b!7912512 m!8286004))

(declare-fun m!8286006 () Bool)

(assert (=> b!7912512 m!8286006))

(declare-fun m!8286008 () Bool)

(assert (=> b!7912512 m!8286008))

(declare-fun m!8286010 () Bool)

(assert (=> b!7912512 m!8286010))

(declare-fun m!8286012 () Bool)

(assert (=> b!7912512 m!8286012))

(declare-fun m!8286014 () Bool)

(assert (=> b!7912512 m!8286014))

(declare-fun m!8286016 () Bool)

(assert (=> b!7912512 m!8286016))

(declare-fun m!8286018 () Bool)

(assert (=> b!7912512 m!8286018))

(assert (=> b!7912512 m!8286008))

(declare-fun m!8286020 () Bool)

(assert (=> b!7912512 m!8286020))

(declare-fun m!8286022 () Bool)

(assert (=> b!7912512 m!8286022))

(assert (=> b!7912512 m!8286006))

(declare-fun m!8286024 () Bool)

(assert (=> b!7912512 m!8286024))

(assert (=> b!7912512 m!8286016))

(assert (=> b!7912512 m!8285868))

(assert (=> bm!733972 m!8285876))

(declare-fun m!8286026 () Bool)

(assert (=> bm!733972 m!8286026))

(assert (=> d!2360536 m!8286008))

(declare-fun m!8286028 () Bool)

(assert (=> d!2360536 m!8286028))

(assert (=> d!2360536 m!8286028))

(declare-fun m!8286030 () Bool)

(assert (=> d!2360536 m!8286030))

(declare-fun m!8286032 () Bool)

(assert (=> d!2360536 m!8286032))

(declare-fun m!8286034 () Bool)

(assert (=> d!2360536 m!8286034))

(declare-fun m!8286036 () Bool)

(assert (=> d!2360536 m!8286036))

(declare-fun m!8286038 () Bool)

(assert (=> d!2360536 m!8286038))

(assert (=> d!2360536 m!8285922))

(declare-fun m!8286040 () Bool)

(assert (=> bm!733976 m!8286040))

(declare-fun m!8286042 () Bool)

(assert (=> b!7912516 m!8286042))

(assert (=> bm!733975 m!8286002))

(assert (=> bm!733971 m!8286022))

(declare-fun m!8286044 () Bool)

(assert (=> b!7912506 m!8286044))

(declare-fun m!8286046 () Bool)

(assert (=> b!7912515 m!8286046))

(assert (=> b!7912515 m!8285868))

(declare-fun m!8286048 () Bool)

(assert (=> bm!733977 m!8286048))

(declare-fun m!8286050 () Bool)

(assert (=> bm!733974 m!8286050))

(assert (=> b!7912316 d!2360536))

(declare-fun d!2360546 () Bool)

(declare-fun lt!2688458 () Int)

(declare-fun list!19329 (BalanceConc!30818) List!74514)

(assert (=> d!2360546 (= lt!2688458 (size!43175 (list!19329 lt!2688244)))))

(declare-fun size!43177 (Conc!15850) Int)

(assert (=> d!2360546 (= lt!2688458 (size!43177 (c!1451653 lt!2688244)))))

(assert (=> d!2360546 (= (size!43174 lt!2688244) lt!2688458)))

(declare-fun bs!1968298 () Bool)

(assert (= bs!1968298 d!2360546))

(declare-fun m!8286052 () Bool)

(assert (=> bs!1968298 m!8286052))

(assert (=> bs!1968298 m!8286052))

(declare-fun m!8286054 () Bool)

(assert (=> bs!1968298 m!8286054))

(declare-fun m!8286056 () Bool)

(assert (=> bs!1968298 m!8286056))

(assert (=> b!7912316 d!2360546))

(declare-fun d!2360548 () Bool)

(declare-fun dynLambda!30180 (Int BalanceConc!30818) TokenValue!8992)

(assert (=> d!2360548 (= (apply!14383 (transformation!8676 rule!156) lt!2688244) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))))

(declare-fun b_lambda!290127 () Bool)

(assert (=> (not b_lambda!290127) (not d!2360548)))

(declare-fun t!389953 () Bool)

(declare-fun tb!263275 () Bool)

(assert (=> (and b!7912318 (= (toValue!11733 (transformation!8676 rule!156)) (toValue!11733 (transformation!8676 rule!156))) t!389953) tb!263275))

(declare-fun result!360658 () Bool)

(declare-fun inv!21 (TokenValue!8992) Bool)

(assert (=> tb!263275 (= result!360658 (inv!21 (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))))

(declare-fun m!8286058 () Bool)

(assert (=> tb!263275 m!8286058))

(assert (=> d!2360548 t!389953))

(declare-fun b_and!353607 () Bool)

(assert (= b_and!353603 (and (=> t!389953 result!360658) b_and!353607)))

(declare-fun m!8286060 () Bool)

(assert (=> d!2360548 m!8286060))

(assert (=> b!7912316 d!2360548))

(declare-fun d!2360550 () Bool)

(declare-fun e!4670760 () Bool)

(assert (=> d!2360550 e!4670760))

(declare-fun res!3140589 () Bool)

(assert (=> d!2360550 (=> res!3140589 e!4670760)))

(assert (=> d!2360550 (= res!3140589 (isEmpty!42717 (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))))))

(declare-fun lt!2688461 () Unit!169467)

(declare-fun choose!59749 (Regex!21379 List!74514) Unit!169467)

(assert (=> d!2360550 (= lt!2688461 (choose!59749 (regex!8676 rule!156) input!1480))))

(assert (=> d!2360550 (validRegex!11683 (regex!8676 rule!156))))

(assert (=> d!2360550 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2145 (regex!8676 rule!156) input!1480) lt!2688461)))

(declare-fun b!7912521 () Bool)

(assert (=> b!7912521 (= e!4670760 (matchR!10698 (regex!8676 rule!156) (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))))))

(assert (= (and d!2360550 (not res!3140589)) b!7912521))

(assert (=> d!2360550 m!8285868))

(assert (=> d!2360550 m!8285922))

(declare-fun m!8286062 () Bool)

(assert (=> d!2360550 m!8286062))

(assert (=> d!2360550 m!8285876))

(declare-fun m!8286064 () Bool)

(assert (=> d!2360550 m!8286064))

(assert (=> d!2360550 m!8285868))

(assert (=> d!2360550 m!8285876))

(assert (=> d!2360550 m!8285878))

(assert (=> b!7912521 m!8285868))

(assert (=> b!7912521 m!8285876))

(assert (=> b!7912521 m!8285868))

(assert (=> b!7912521 m!8285876))

(assert (=> b!7912521 m!8285878))

(declare-fun m!8286066 () Bool)

(assert (=> b!7912521 m!8286066))

(assert (=> b!7912316 d!2360550))

(declare-fun d!2360552 () Bool)

(declare-fun res!3140594 () Bool)

(declare-fun e!4670763 () Bool)

(assert (=> d!2360552 (=> (not res!3140594) (not e!4670763))))

(assert (=> d!2360552 (= res!3140594 (not (isEmpty!42717 (originalCharacters!8911 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))))))

(assert (=> d!2360552 (= (inv!95461 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))) e!4670763)))

(declare-fun b!7912526 () Bool)

(declare-fun res!3140595 () Bool)

(assert (=> b!7912526 (=> (not res!3140595) (not e!4670763))))

(declare-fun dynLambda!30181 (Int TokenValue!8992) BalanceConc!30818)

(assert (=> b!7912526 (= res!3140595 (= (originalCharacters!8911 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))) (list!19329 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))))))

(declare-fun b!7912527 () Bool)

(assert (=> b!7912527 (= e!4670763 (= (size!43173 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))) (size!43175 (originalCharacters!8911 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))))))

(assert (= (and d!2360552 res!3140594) b!7912526))

(assert (= (and b!7912526 res!3140595) b!7912527))

(declare-fun b_lambda!290129 () Bool)

(assert (=> (not b_lambda!290129) (not b!7912526)))

(declare-fun t!389955 () Bool)

(declare-fun tb!263277 () Bool)

(assert (=> (and b!7912318 (= (toChars!11592 (transformation!8676 rule!156)) (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))) t!389955) tb!263277))

(declare-fun tp!2356831 () Bool)

(declare-fun e!4670766 () Bool)

(declare-fun b!7912532 () Bool)

(declare-fun inv!95465 (Conc!15850) Bool)

(assert (=> b!7912532 (= e!4670766 (and (inv!95465 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))) tp!2356831))))

(declare-fun result!360662 () Bool)

(declare-fun inv!95466 (BalanceConc!30818) Bool)

(assert (=> tb!263277 (= result!360662 (and (inv!95466 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) e!4670766))))

(assert (= tb!263277 b!7912532))

(declare-fun m!8286068 () Bool)

(assert (=> b!7912532 m!8286068))

(declare-fun m!8286070 () Bool)

(assert (=> tb!263277 m!8286070))

(assert (=> b!7912526 t!389955))

(declare-fun b_and!353609 () Bool)

(assert (= b_and!353605 (and (=> t!389955 result!360662) b_and!353609)))

(declare-fun m!8286072 () Bool)

(assert (=> d!2360552 m!8286072))

(declare-fun m!8286074 () Bool)

(assert (=> b!7912526 m!8286074))

(assert (=> b!7912526 m!8286074))

(declare-fun m!8286076 () Bool)

(assert (=> b!7912526 m!8286076))

(declare-fun m!8286078 () Bool)

(assert (=> b!7912527 m!8286078))

(assert (=> b!7912316 d!2360552))

(declare-fun d!2360554 () Bool)

(assert (=> d!2360554 (= (isEmpty!42717 (_1!38535 lt!2688248)) ((_ is Nil!74390) (_1!38535 lt!2688248)))))

(assert (=> b!7912316 d!2360554))

(declare-fun b!7912580 () Bool)

(declare-fun e!4670792 () Bool)

(assert (=> b!7912580 (= e!4670792 true)))

(declare-fun d!2360556 () Bool)

(assert (=> d!2360556 e!4670792))

(assert (= d!2360556 b!7912580))

(declare-fun order!29949 () Int)

(declare-fun order!29947 () Int)

(declare-fun lambda!472587 () Int)

(declare-fun dynLambda!30182 (Int Int) Int)

(declare-fun dynLambda!30183 (Int Int) Int)

(assert (=> b!7912580 (< (dynLambda!30182 order!29947 (toValue!11733 (transformation!8676 rule!156))) (dynLambda!30183 order!29949 lambda!472587))))

(declare-fun order!29951 () Int)

(declare-fun dynLambda!30184 (Int Int) Int)

(assert (=> b!7912580 (< (dynLambda!30184 order!29951 (toChars!11592 (transformation!8676 rule!156))) (dynLambda!30183 order!29949 lambda!472587))))

(assert (=> d!2360556 (= (list!19329 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))) (list!19329 lt!2688244))))

(declare-fun lt!2688472 () Unit!169467)

(declare-fun ForallOf!1317 (Int BalanceConc!30818) Unit!169467)

(assert (=> d!2360556 (= lt!2688472 (ForallOf!1317 lambda!472587 lt!2688244))))

(assert (=> d!2360556 (= (lemmaSemiInverse!2692 (transformation!8676 rule!156) lt!2688244) lt!2688472)))

(declare-fun b_lambda!290145 () Bool)

(assert (=> (not b_lambda!290145) (not d!2360556)))

(declare-fun t!389963 () Bool)

(declare-fun tb!263285 () Bool)

(assert (=> (and b!7912318 (= (toChars!11592 (transformation!8676 rule!156)) (toChars!11592 (transformation!8676 rule!156))) t!389963) tb!263285))

(declare-fun e!4670793 () Bool)

(declare-fun tp!2356854 () Bool)

(declare-fun b!7912581 () Bool)

(assert (=> b!7912581 (= e!4670793 (and (inv!95465 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))) tp!2356854))))

(declare-fun result!360680 () Bool)

(assert (=> tb!263285 (= result!360680 (and (inv!95466 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))) e!4670793))))

(assert (= tb!263285 b!7912581))

(declare-fun m!8286120 () Bool)

(assert (=> b!7912581 m!8286120))

(declare-fun m!8286122 () Bool)

(assert (=> tb!263285 m!8286122))

(assert (=> d!2360556 t!389963))

(declare-fun b_and!353619 () Bool)

(assert (= b_and!353609 (and (=> t!389963 result!360680) b_and!353619)))

(declare-fun b_lambda!290147 () Bool)

(assert (=> (not b_lambda!290147) (not d!2360556)))

(assert (=> d!2360556 t!389953))

(declare-fun b_and!353621 () Bool)

(assert (= b_and!353607 (and (=> t!389953 result!360658) b_and!353621)))

(assert (=> d!2360556 m!8286060))

(declare-fun m!8286124 () Bool)

(assert (=> d!2360556 m!8286124))

(assert (=> d!2360556 m!8286124))

(declare-fun m!8286126 () Bool)

(assert (=> d!2360556 m!8286126))

(assert (=> d!2360556 m!8286060))

(declare-fun m!8286128 () Bool)

(assert (=> d!2360556 m!8286128))

(assert (=> d!2360556 m!8286052))

(assert (=> b!7912316 d!2360556))

(declare-fun d!2360570 () Bool)

(declare-fun fromListB!2803 (List!74514) BalanceConc!30818)

(assert (=> d!2360570 (= (seqFromList!6201 (_1!38535 lt!2688245)) (fromListB!2803 (_1!38535 lt!2688245)))))

(declare-fun bs!1968300 () Bool)

(assert (= bs!1968300 d!2360570))

(declare-fun m!8286130 () Bool)

(assert (=> bs!1968300 m!8286130))

(assert (=> b!7912316 d!2360570))

(declare-fun d!2360572 () Bool)

(declare-fun res!3140609 () Bool)

(declare-fun e!4670796 () Bool)

(assert (=> d!2360572 (=> (not res!3140609) (not e!4670796))))

(assert (=> d!2360572 (= res!3140609 (validRegex!11683 (regex!8676 rule!156)))))

(assert (=> d!2360572 (= (ruleValid!3987 thiss!15815 rule!156) e!4670796)))

(declare-fun b!7912586 () Bool)

(declare-fun res!3140610 () Bool)

(assert (=> b!7912586 (=> (not res!3140610) (not e!4670796))))

(assert (=> b!7912586 (= res!3140610 (not (nullable!9518 (regex!8676 rule!156))))))

(declare-fun b!7912587 () Bool)

(assert (=> b!7912587 (= e!4670796 (not (= (tag!9540 rule!156) (String!83383 ""))))))

(assert (= (and d!2360572 res!3140609) b!7912586))

(assert (= (and b!7912586 res!3140610) b!7912587))

(assert (=> d!2360572 m!8285922))

(assert (=> b!7912586 m!8285920))

(assert (=> b!7912322 d!2360572))

(declare-fun d!2360574 () Bool)

(assert (=> d!2360574 (= (isEmpty!42717 (_1!38535 lt!2688245)) ((_ is Nil!74390) (_1!38535 lt!2688245)))))

(assert (=> b!7912317 d!2360574))

(declare-fun d!2360576 () Bool)

(declare-fun lt!2688496 () tuple2!70464)

(assert (=> d!2360576 (= (++!18222 (_1!38535 lt!2688496) (_2!38535 lt!2688496)) input!1480)))

(declare-fun sizeTr!471 (List!74514 Int) Int)

(assert (=> d!2360576 (= lt!2688496 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 0 input!1480 input!1480 (sizeTr!471 input!1480 0)))))

(declare-fun lt!2688494 () Unit!169467)

(declare-fun lt!2688495 () Unit!169467)

(assert (=> d!2360576 (= lt!2688494 lt!2688495)))

(declare-fun lt!2688493 () List!74514)

(declare-fun lt!2688489 () Int)

(assert (=> d!2360576 (= (sizeTr!471 lt!2688493 lt!2688489) (+ (size!43175 lt!2688493) lt!2688489))))

(declare-fun lemmaSizeTrEqualsSize!470 (List!74514 Int) Unit!169467)

(assert (=> d!2360576 (= lt!2688495 (lemmaSizeTrEqualsSize!470 lt!2688493 lt!2688489))))

(assert (=> d!2360576 (= lt!2688489 0)))

(assert (=> d!2360576 (= lt!2688493 Nil!74390)))

(declare-fun lt!2688492 () Unit!169467)

(declare-fun lt!2688490 () Unit!169467)

(assert (=> d!2360576 (= lt!2688492 lt!2688490)))

(declare-fun lt!2688491 () Int)

(assert (=> d!2360576 (= (sizeTr!471 input!1480 lt!2688491) (+ (size!43175 input!1480) lt!2688491))))

(assert (=> d!2360576 (= lt!2688490 (lemmaSizeTrEqualsSize!470 input!1480 lt!2688491))))

(assert (=> d!2360576 (= lt!2688491 0)))

(assert (=> d!2360576 (validRegex!11683 (regex!8676 rule!156))))

(assert (=> d!2360576 (= (findLongestMatch!1969 (regex!8676 rule!156) input!1480) lt!2688496)))

(declare-fun bs!1968301 () Bool)

(assert (= bs!1968301 d!2360576))

(declare-fun m!8286132 () Bool)

(assert (=> bs!1968301 m!8286132))

(declare-fun m!8286134 () Bool)

(assert (=> bs!1968301 m!8286134))

(declare-fun m!8286136 () Bool)

(assert (=> bs!1968301 m!8286136))

(assert (=> bs!1968301 m!8285922))

(declare-fun m!8286138 () Bool)

(assert (=> bs!1968301 m!8286138))

(declare-fun m!8286140 () Bool)

(assert (=> bs!1968301 m!8286140))

(declare-fun m!8286142 () Bool)

(assert (=> bs!1968301 m!8286142))

(declare-fun m!8286144 () Bool)

(assert (=> bs!1968301 m!8286144))

(declare-fun m!8286146 () Bool)

(assert (=> bs!1968301 m!8286146))

(assert (=> bs!1968301 m!8285876))

(assert (=> bs!1968301 m!8286142))

(assert (=> b!7912317 d!2360576))

(declare-fun e!4670799 () Bool)

(assert (=> b!7912320 (= tp!2356827 e!4670799)))

(declare-fun b!7912599 () Bool)

(declare-fun tp!2356867 () Bool)

(declare-fun tp!2356869 () Bool)

(assert (=> b!7912599 (= e!4670799 (and tp!2356867 tp!2356869))))

(declare-fun b!7912598 () Bool)

(assert (=> b!7912598 (= e!4670799 tp_is_empty!53133)))

(declare-fun b!7912601 () Bool)

(declare-fun tp!2356866 () Bool)

(declare-fun tp!2356865 () Bool)

(assert (=> b!7912601 (= e!4670799 (and tp!2356866 tp!2356865))))

(declare-fun b!7912600 () Bool)

(declare-fun tp!2356868 () Bool)

(assert (=> b!7912600 (= e!4670799 tp!2356868)))

(assert (= (and b!7912320 ((_ is ElementMatch!21379) (regex!8676 rule!156))) b!7912598))

(assert (= (and b!7912320 ((_ is Concat!30372) (regex!8676 rule!156))) b!7912599))

(assert (= (and b!7912320 ((_ is Star!21379) (regex!8676 rule!156))) b!7912600))

(assert (= (and b!7912320 ((_ is Union!21379) (regex!8676 rule!156))) b!7912601))

(declare-fun b!7912606 () Bool)

(declare-fun e!4670802 () Bool)

(declare-fun tp!2356872 () Bool)

(assert (=> b!7912606 (= e!4670802 (and tp_is_empty!53133 tp!2356872))))

(assert (=> b!7912319 (= tp!2356828 e!4670802)))

(assert (= (and b!7912319 ((_ is Cons!74390) (t!389951 input!1480))) b!7912606))

(declare-fun b_lambda!290149 () Bool)

(assert (= b_lambda!290145 (or (and b!7912318 b_free!135249) b_lambda!290149)))

(declare-fun b_lambda!290151 () Bool)

(assert (= b_lambda!290127 (or (and b!7912318 b_free!135247) b_lambda!290151)))

(declare-fun b_lambda!290153 () Bool)

(assert (= b_lambda!290147 (or (and b!7912318 b_free!135247) b_lambda!290153)))

(check-sat (not d!2360576) (not b!7912426) (not bm!733977) (not b_lambda!290129) (not b_lambda!290149) (not d!2360552) (not b!7912424) (not b!7912414) (not d!2360536) (not b!7912526) (not b!7912516) (not d!2360546) (not d!2360572) (not b!7912527) (not bm!733971) (not b!7912600) (not b_next!136039) (not d!2360570) (not b_lambda!290153) (not bm!733975) (not b!7912586) (not b!7912601) (not b!7912409) (not b!7912606) (not b!7912599) (not b!7912350) b_and!353621 (not b!7912506) (not b!7912415) (not bm!733974) (not tb!263275) b_and!353619 tp_is_empty!53133 (not b!7912512) (not d!2360556) (not b!7912406) (not b_next!136037) (not bm!733929) (not b!7912532) (not tb!263277) (not d!2360520) (not b!7912521) (not bm!733972) (not tb!263285) (not d!2360518) (not b!7912412) (not bm!733976) (not b!7912581) (not b_lambda!290151) (not bm!733973) (not d!2360550) (not bm!733970) (not b!7912515) (not b!7912408))
(check-sat b_and!353621 b_and!353619 (not b_next!136037) (not b_next!136039))
(get-model)

(declare-fun b!7912617 () Bool)

(declare-fun e!4670810 () Bool)

(declare-fun inv!15 (TokenValue!8992) Bool)

(assert (=> b!7912617 (= e!4670810 (inv!15 (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))))

(declare-fun b!7912618 () Bool)

(declare-fun res!3140613 () Bool)

(assert (=> b!7912618 (=> res!3140613 e!4670810)))

(assert (=> b!7912618 (= res!3140613 (not ((_ is IntegerValue!26978) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))))))

(declare-fun e!4670811 () Bool)

(assert (=> b!7912618 (= e!4670811 e!4670810)))

(declare-fun b!7912619 () Bool)

(declare-fun e!4670809 () Bool)

(declare-fun inv!16 (TokenValue!8992) Bool)

(assert (=> b!7912619 (= e!4670809 (inv!16 (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))))

(declare-fun b!7912620 () Bool)

(declare-fun inv!17 (TokenValue!8992) Bool)

(assert (=> b!7912620 (= e!4670811 (inv!17 (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))))

(declare-fun b!7912621 () Bool)

(assert (=> b!7912621 (= e!4670809 e!4670811)))

(declare-fun c!1451723 () Bool)

(assert (=> b!7912621 (= c!1451723 ((_ is IntegerValue!26977) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))))

(declare-fun d!2360578 () Bool)

(declare-fun c!1451724 () Bool)

(assert (=> d!2360578 (= c!1451724 ((_ is IntegerValue!26976) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))))

(assert (=> d!2360578 (= (inv!21 (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)) e!4670809)))

(assert (= (and d!2360578 c!1451724) b!7912619))

(assert (= (and d!2360578 (not c!1451724)) b!7912621))

(assert (= (and b!7912621 c!1451723) b!7912620))

(assert (= (and b!7912621 (not c!1451723)) b!7912618))

(assert (= (and b!7912618 (not res!3140613)) b!7912617))

(declare-fun m!8286148 () Bool)

(assert (=> b!7912617 m!8286148))

(declare-fun m!8286150 () Bool)

(assert (=> b!7912619 m!8286150))

(declare-fun m!8286152 () Bool)

(assert (=> b!7912620 m!8286152))

(assert (=> tb!263275 d!2360578))

(assert (=> d!2360520 d!2360554))

(declare-fun b!7912658 () Bool)

(declare-fun e!4670842 () Bool)

(declare-fun e!4670843 () Bool)

(assert (=> b!7912658 (= e!4670842 e!4670843)))

(declare-fun c!1451733 () Bool)

(assert (=> b!7912658 (= c!1451733 ((_ is Star!21379) (regex!8676 rule!156)))))

(declare-fun b!7912659 () Bool)

(declare-fun e!4670840 () Bool)

(assert (=> b!7912659 (= e!4670843 e!4670840)))

(declare-fun res!3140638 () Bool)

(assert (=> b!7912659 (= res!3140638 (not (nullable!9518 (reg!21708 (regex!8676 rule!156)))))))

(assert (=> b!7912659 (=> (not res!3140638) (not e!4670840))))

(declare-fun bm!733984 () Bool)

(declare-fun call!733989 () Bool)

(declare-fun c!1451734 () Bool)

(assert (=> bm!733984 (= call!733989 (validRegex!11683 (ite c!1451734 (regOne!43271 (regex!8676 rule!156)) (regOne!43270 (regex!8676 rule!156)))))))

(declare-fun b!7912660 () Bool)

(declare-fun e!4670844 () Bool)

(declare-fun e!4670845 () Bool)

(assert (=> b!7912660 (= e!4670844 e!4670845)))

(declare-fun res!3140634 () Bool)

(assert (=> b!7912660 (=> (not res!3140634) (not e!4670845))))

(assert (=> b!7912660 (= res!3140634 call!733989)))

(declare-fun b!7912661 () Bool)

(declare-fun res!3140636 () Bool)

(assert (=> b!7912661 (=> res!3140636 e!4670844)))

(assert (=> b!7912661 (= res!3140636 (not ((_ is Concat!30372) (regex!8676 rule!156))))))

(declare-fun e!4670841 () Bool)

(assert (=> b!7912661 (= e!4670841 e!4670844)))

(declare-fun b!7912662 () Bool)

(declare-fun call!733991 () Bool)

(assert (=> b!7912662 (= e!4670840 call!733991)))

(declare-fun b!7912663 () Bool)

(declare-fun e!4670846 () Bool)

(declare-fun call!733990 () Bool)

(assert (=> b!7912663 (= e!4670846 call!733990)))

(declare-fun b!7912664 () Bool)

(declare-fun res!3140635 () Bool)

(assert (=> b!7912664 (=> (not res!3140635) (not e!4670846))))

(assert (=> b!7912664 (= res!3140635 call!733989)))

(assert (=> b!7912664 (= e!4670841 e!4670846)))

(declare-fun d!2360580 () Bool)

(declare-fun res!3140637 () Bool)

(assert (=> d!2360580 (=> res!3140637 e!4670842)))

(assert (=> d!2360580 (= res!3140637 ((_ is ElementMatch!21379) (regex!8676 rule!156)))))

(assert (=> d!2360580 (= (validRegex!11683 (regex!8676 rule!156)) e!4670842)))

(declare-fun b!7912665 () Bool)

(assert (=> b!7912665 (= e!4670845 call!733990)))

(declare-fun bm!733985 () Bool)

(assert (=> bm!733985 (= call!733991 (validRegex!11683 (ite c!1451733 (reg!21708 (regex!8676 rule!156)) (ite c!1451734 (regTwo!43271 (regex!8676 rule!156)) (regTwo!43270 (regex!8676 rule!156))))))))

(declare-fun b!7912666 () Bool)

(assert (=> b!7912666 (= e!4670843 e!4670841)))

(assert (=> b!7912666 (= c!1451734 ((_ is Union!21379) (regex!8676 rule!156)))))

(declare-fun bm!733986 () Bool)

(assert (=> bm!733986 (= call!733990 call!733991)))

(assert (= (and d!2360580 (not res!3140637)) b!7912658))

(assert (= (and b!7912658 c!1451733) b!7912659))

(assert (= (and b!7912658 (not c!1451733)) b!7912666))

(assert (= (and b!7912659 res!3140638) b!7912662))

(assert (= (and b!7912666 c!1451734) b!7912664))

(assert (= (and b!7912666 (not c!1451734)) b!7912661))

(assert (= (and b!7912664 res!3140635) b!7912663))

(assert (= (and b!7912661 (not res!3140636)) b!7912660))

(assert (= (and b!7912660 res!3140634) b!7912665))

(assert (= (or b!7912664 b!7912660) bm!733984))

(assert (= (or b!7912663 b!7912665) bm!733986))

(assert (= (or b!7912662 bm!733986) bm!733985))

(declare-fun m!8286154 () Bool)

(assert (=> b!7912659 m!8286154))

(declare-fun m!8286156 () Bool)

(assert (=> bm!733984 m!8286156))

(declare-fun m!8286158 () Bool)

(assert (=> bm!733985 m!8286158))

(assert (=> d!2360520 d!2360580))

(declare-fun d!2360586 () Bool)

(assert (not d!2360586))

(assert (=> b!7912426 d!2360586))

(declare-fun c!1451739 () Bool)

(declare-fun d!2360588 () Bool)

(assert (=> d!2360588 (= c!1451739 ((_ is Node!15850) (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))))))

(declare-fun e!4670858 () Bool)

(assert (=> d!2360588 (= (inv!95465 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))) e!4670858)))

(declare-fun b!7912682 () Bool)

(declare-fun inv!95467 (Conc!15850) Bool)

(assert (=> b!7912682 (= e!4670858 (inv!95467 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))))))

(declare-fun b!7912683 () Bool)

(declare-fun e!4670859 () Bool)

(assert (=> b!7912683 (= e!4670858 e!4670859)))

(declare-fun res!3140646 () Bool)

(assert (=> b!7912683 (= res!3140646 (not ((_ is Leaf!30156) (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))))))))

(assert (=> b!7912683 (=> res!3140646 e!4670859)))

(declare-fun b!7912684 () Bool)

(declare-fun inv!95468 (Conc!15850) Bool)

(assert (=> b!7912684 (= e!4670859 (inv!95468 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))))))

(assert (= (and d!2360588 c!1451739) b!7912682))

(assert (= (and d!2360588 (not c!1451739)) b!7912683))

(assert (= (and b!7912683 (not res!3140646)) b!7912684))

(declare-fun m!8286166 () Bool)

(assert (=> b!7912682 m!8286166))

(declare-fun m!8286168 () Bool)

(assert (=> b!7912684 m!8286168))

(assert (=> b!7912532 d!2360588))

(assert (=> d!2360572 d!2360580))

(declare-fun d!2360594 () Bool)

(declare-fun list!19330 (Conc!15850) List!74514)

(assert (=> d!2360594 (= (list!19329 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))) (list!19330 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))))))

(declare-fun bs!1968302 () Bool)

(assert (= bs!1968302 d!2360594))

(declare-fun m!8286170 () Bool)

(assert (=> bs!1968302 m!8286170))

(assert (=> d!2360556 d!2360594))

(declare-fun d!2360596 () Bool)

(assert (=> d!2360596 (= (list!19329 lt!2688244) (list!19330 (c!1451653 lt!2688244)))))

(declare-fun bs!1968303 () Bool)

(assert (= bs!1968303 d!2360596))

(declare-fun m!8286172 () Bool)

(assert (=> bs!1968303 m!8286172))

(assert (=> d!2360556 d!2360596))

(declare-fun d!2360598 () Bool)

(declare-fun dynLambda!30185 (Int BalanceConc!30818) Bool)

(assert (=> d!2360598 (dynLambda!30185 lambda!472587 lt!2688244)))

(declare-fun lt!2688499 () Unit!169467)

(declare-fun choose!59750 (Int BalanceConc!30818) Unit!169467)

(assert (=> d!2360598 (= lt!2688499 (choose!59750 lambda!472587 lt!2688244))))

(declare-fun Forall!1847 (Int) Bool)

(assert (=> d!2360598 (Forall!1847 lambda!472587)))

(assert (=> d!2360598 (= (ForallOf!1317 lambda!472587 lt!2688244) lt!2688499)))

(declare-fun b_lambda!290155 () Bool)

(assert (=> (not b_lambda!290155) (not d!2360598)))

(declare-fun bs!1968304 () Bool)

(assert (= bs!1968304 d!2360598))

(declare-fun m!8286174 () Bool)

(assert (=> bs!1968304 m!8286174))

(declare-fun m!8286176 () Bool)

(assert (=> bs!1968304 m!8286176))

(declare-fun m!8286178 () Bool)

(assert (=> bs!1968304 m!8286178))

(assert (=> d!2360556 d!2360598))

(declare-fun d!2360600 () Bool)

(assert (=> d!2360600 (= (head!16179 input!1480) (h!80838 input!1480))))

(assert (=> bm!733975 d!2360600))

(assert (=> d!2360550 d!2360580))

(assert (=> d!2360550 d!2360532))

(assert (=> d!2360550 d!2360536))

(declare-fun d!2360602 () Bool)

(assert (=> d!2360602 (= (isEmpty!42717 (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))) ((_ is Nil!74390) (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))))))

(assert (=> d!2360550 d!2360602))

(declare-fun d!2360604 () Bool)

(declare-fun e!4670865 () Bool)

(assert (=> d!2360604 e!4670865))

(declare-fun res!3140652 () Bool)

(assert (=> d!2360604 (=> res!3140652 e!4670865)))

(assert (=> d!2360604 (= res!3140652 (isEmpty!42717 (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))))))

(assert (=> d!2360604 true))

(declare-fun _$92!593 () Unit!169467)

(assert (=> d!2360604 (= (choose!59749 (regex!8676 rule!156) input!1480) _$92!593)))

(declare-fun b!7912690 () Bool)

(assert (=> b!7912690 (= e!4670865 (matchR!10698 (regex!8676 rule!156) (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))))))

(assert (= (and d!2360604 (not res!3140652)) b!7912690))

(assert (=> d!2360604 m!8285868))

(assert (=> d!2360604 m!8285876))

(assert (=> d!2360604 m!8285868))

(assert (=> d!2360604 m!8285876))

(assert (=> d!2360604 m!8285878))

(assert (=> d!2360604 m!8286062))

(assert (=> b!7912690 m!8285868))

(assert (=> b!7912690 m!8285876))

(assert (=> b!7912690 m!8285868))

(assert (=> b!7912690 m!8285876))

(assert (=> b!7912690 m!8285878))

(assert (=> b!7912690 m!8286066))

(assert (=> d!2360550 d!2360604))

(assert (=> d!2360550 d!2360534))

(declare-fun bs!1968307 () Bool)

(declare-fun d!2360608 () Bool)

(assert (= bs!1968307 (and d!2360608 d!2360556)))

(declare-fun lambda!472593 () Int)

(assert (=> bs!1968307 (= lambda!472593 lambda!472587)))

(assert (=> d!2360608 true))

(assert (=> d!2360608 (< (dynLambda!30184 order!29951 (toChars!11592 (transformation!8676 rule!156))) (dynLambda!30183 order!29949 lambda!472593))))

(assert (=> d!2360608 true))

(assert (=> d!2360608 (< (dynLambda!30182 order!29947 (toValue!11733 (transformation!8676 rule!156))) (dynLambda!30183 order!29949 lambda!472593))))

(assert (=> d!2360608 (= (semiInverseModEq!3846 (toChars!11592 (transformation!8676 rule!156)) (toValue!11733 (transformation!8676 rule!156))) (Forall!1847 lambda!472593))))

(declare-fun bs!1968308 () Bool)

(assert (= bs!1968308 d!2360608))

(declare-fun m!8286182 () Bool)

(assert (=> bs!1968308 m!8286182))

(assert (=> d!2360518 d!2360608))

(assert (=> d!2360576 d!2360532))

(declare-fun d!2360614 () Bool)

(declare-fun c!1451742 () Bool)

(assert (=> d!2360614 (= c!1451742 ((_ is Nil!74390) input!1480))))

(declare-fun e!4670877 () Int)

(assert (=> d!2360614 (= (sizeTr!471 input!1480 0) e!4670877)))

(declare-fun b!7912715 () Bool)

(assert (=> b!7912715 (= e!4670877 0)))

(declare-fun b!7912716 () Bool)

(assert (=> b!7912716 (= e!4670877 (sizeTr!471 (t!389951 input!1480) (+ 0 1)))))

(assert (= (and d!2360614 c!1451742) b!7912715))

(assert (= (and d!2360614 (not c!1451742)) b!7912716))

(declare-fun m!8286192 () Bool)

(assert (=> b!7912716 m!8286192))

(assert (=> d!2360576 d!2360614))

(declare-fun d!2360618 () Bool)

(assert (=> d!2360618 (= (sizeTr!471 lt!2688493 lt!2688489) (+ (size!43175 lt!2688493) lt!2688489))))

(declare-fun lt!2688505 () Unit!169467)

(declare-fun choose!59752 (List!74514 Int) Unit!169467)

(assert (=> d!2360618 (= lt!2688505 (choose!59752 lt!2688493 lt!2688489))))

(assert (=> d!2360618 (= (lemmaSizeTrEqualsSize!470 lt!2688493 lt!2688489) lt!2688505)))

(declare-fun bs!1968309 () Bool)

(assert (= bs!1968309 d!2360618))

(assert (=> bs!1968309 m!8286146))

(assert (=> bs!1968309 m!8286136))

(declare-fun m!8286194 () Bool)

(assert (=> bs!1968309 m!8286194))

(assert (=> d!2360576 d!2360618))

(declare-fun d!2360620 () Bool)

(declare-fun c!1451743 () Bool)

(assert (=> d!2360620 (= c!1451743 ((_ is Nil!74390) lt!2688493))))

(declare-fun e!4670878 () Int)

(assert (=> d!2360620 (= (sizeTr!471 lt!2688493 lt!2688489) e!4670878)))

(declare-fun b!7912717 () Bool)

(assert (=> b!7912717 (= e!4670878 lt!2688489)))

(declare-fun b!7912718 () Bool)

(assert (=> b!7912718 (= e!4670878 (sizeTr!471 (t!389951 lt!2688493) (+ lt!2688489 1)))))

(assert (= (and d!2360620 c!1451743) b!7912717))

(assert (= (and d!2360620 (not c!1451743)) b!7912718))

(declare-fun m!8286196 () Bool)

(assert (=> b!7912718 m!8286196))

(assert (=> d!2360576 d!2360620))

(declare-fun d!2360622 () Bool)

(declare-fun c!1451744 () Bool)

(assert (=> d!2360622 (= c!1451744 ((_ is Nil!74390) input!1480))))

(declare-fun e!4670879 () Int)

(assert (=> d!2360622 (= (sizeTr!471 input!1480 lt!2688491) e!4670879)))

(declare-fun b!7912719 () Bool)

(assert (=> b!7912719 (= e!4670879 lt!2688491)))

(declare-fun b!7912720 () Bool)

(assert (=> b!7912720 (= e!4670879 (sizeTr!471 (t!389951 input!1480) (+ lt!2688491 1)))))

(assert (= (and d!2360622 c!1451744) b!7912719))

(assert (= (and d!2360622 (not c!1451744)) b!7912720))

(declare-fun m!8286198 () Bool)

(assert (=> b!7912720 m!8286198))

(assert (=> d!2360576 d!2360622))

(declare-fun d!2360624 () Bool)

(declare-fun lt!2688506 () Int)

(assert (=> d!2360624 (>= lt!2688506 0)))

(declare-fun e!4670880 () Int)

(assert (=> d!2360624 (= lt!2688506 e!4670880)))

(declare-fun c!1451745 () Bool)

(assert (=> d!2360624 (= c!1451745 ((_ is Nil!74390) lt!2688493))))

(assert (=> d!2360624 (= (size!43175 lt!2688493) lt!2688506)))

(declare-fun b!7912721 () Bool)

(assert (=> b!7912721 (= e!4670880 0)))

(declare-fun b!7912722 () Bool)

(assert (=> b!7912722 (= e!4670880 (+ 1 (size!43175 (t!389951 lt!2688493))))))

(assert (= (and d!2360624 c!1451745) b!7912721))

(assert (= (and d!2360624 (not c!1451745)) b!7912722))

(declare-fun m!8286200 () Bool)

(assert (=> b!7912722 m!8286200))

(assert (=> d!2360576 d!2360624))

(declare-fun b!7912732 () Bool)

(declare-fun e!4670885 () List!74514)

(assert (=> b!7912732 (= e!4670885 (Cons!74390 (h!80838 (_1!38535 lt!2688496)) (++!18222 (t!389951 (_1!38535 lt!2688496)) (_2!38535 lt!2688496))))))

(declare-fun d!2360626 () Bool)

(declare-fun e!4670886 () Bool)

(assert (=> d!2360626 e!4670886))

(declare-fun res!3140670 () Bool)

(assert (=> d!2360626 (=> (not res!3140670) (not e!4670886))))

(declare-fun lt!2688515 () List!74514)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15754 (List!74514) (InoxSet C!43088))

(assert (=> d!2360626 (= res!3140670 (= (content!15754 lt!2688515) ((_ map or) (content!15754 (_1!38535 lt!2688496)) (content!15754 (_2!38535 lt!2688496)))))))

(assert (=> d!2360626 (= lt!2688515 e!4670885)))

(declare-fun c!1451748 () Bool)

(assert (=> d!2360626 (= c!1451748 ((_ is Nil!74390) (_1!38535 lt!2688496)))))

(assert (=> d!2360626 (= (++!18222 (_1!38535 lt!2688496) (_2!38535 lt!2688496)) lt!2688515)))

(declare-fun b!7912731 () Bool)

(assert (=> b!7912731 (= e!4670885 (_2!38535 lt!2688496))))

(declare-fun b!7912733 () Bool)

(declare-fun res!3140669 () Bool)

(assert (=> b!7912733 (=> (not res!3140669) (not e!4670886))))

(assert (=> b!7912733 (= res!3140669 (= (size!43175 lt!2688515) (+ (size!43175 (_1!38535 lt!2688496)) (size!43175 (_2!38535 lt!2688496)))))))

(declare-fun b!7912734 () Bool)

(assert (=> b!7912734 (= e!4670886 (or (not (= (_2!38535 lt!2688496) Nil!74390)) (= lt!2688515 (_1!38535 lt!2688496))))))

(assert (= (and d!2360626 c!1451748) b!7912731))

(assert (= (and d!2360626 (not c!1451748)) b!7912732))

(assert (= (and d!2360626 res!3140670) b!7912733))

(assert (= (and b!7912733 res!3140669) b!7912734))

(declare-fun m!8286210 () Bool)

(assert (=> b!7912732 m!8286210))

(declare-fun m!8286212 () Bool)

(assert (=> d!2360626 m!8286212))

(declare-fun m!8286214 () Bool)

(assert (=> d!2360626 m!8286214))

(declare-fun m!8286216 () Bool)

(assert (=> d!2360626 m!8286216))

(declare-fun m!8286218 () Bool)

(assert (=> b!7912733 m!8286218))

(declare-fun m!8286220 () Bool)

(assert (=> b!7912733 m!8286220))

(declare-fun m!8286222 () Bool)

(assert (=> b!7912733 m!8286222))

(assert (=> d!2360576 d!2360626))

(declare-fun b!7912735 () Bool)

(declare-fun e!4670890 () tuple2!70464)

(assert (=> b!7912735 (= e!4670890 (tuple2!70465 Nil!74390 input!1480))))

(declare-fun b!7912736 () Bool)

(declare-fun c!1451754 () Bool)

(declare-fun call!734007 () Bool)

(assert (=> b!7912736 (= c!1451754 call!734007)))

(declare-fun lt!2688518 () Unit!169467)

(declare-fun lt!2688525 () Unit!169467)

(assert (=> b!7912736 (= lt!2688518 lt!2688525)))

(assert (=> b!7912736 (= input!1480 Nil!74390)))

(declare-fun call!734006 () Unit!169467)

(assert (=> b!7912736 (= lt!2688525 call!734006)))

(declare-fun lt!2688520 () Unit!169467)

(declare-fun lt!2688517 () Unit!169467)

(assert (=> b!7912736 (= lt!2688520 lt!2688517)))

(declare-fun call!734002 () Bool)

(assert (=> b!7912736 call!734002))

(declare-fun call!734003 () Unit!169467)

(assert (=> b!7912736 (= lt!2688517 call!734003)))

(declare-fun e!4670891 () tuple2!70464)

(declare-fun e!4670892 () tuple2!70464)

(assert (=> b!7912736 (= e!4670891 e!4670892)))

(declare-fun bm!733997 () Bool)

(declare-fun call!734004 () List!74514)

(assert (=> bm!733997 (= call!734004 (tail!15722 input!1480))))

(declare-fun b!7912737 () Bool)

(declare-fun e!4670889 () tuple2!70464)

(assert (=> b!7912737 (= e!4670889 e!4670891)))

(declare-fun c!1451750 () Bool)

(assert (=> b!7912737 (= c!1451750 (= 0 (sizeTr!471 input!1480 0)))))

(declare-fun b!7912738 () Bool)

(declare-fun e!4670888 () tuple2!70464)

(assert (=> b!7912738 (= e!4670888 e!4670890)))

(declare-fun lt!2688522 () tuple2!70464)

(declare-fun call!734001 () tuple2!70464)

(assert (=> b!7912738 (= lt!2688522 call!734001)))

(declare-fun c!1451749 () Bool)

(assert (=> b!7912738 (= c!1451749 (isEmpty!42717 (_1!38535 lt!2688522)))))

(declare-fun b!7912739 () Bool)

(assert (=> b!7912739 (= e!4670892 (tuple2!70465 Nil!74390 Nil!74390))))

(declare-fun b!7912740 () Bool)

(declare-fun e!4670887 () Unit!169467)

(declare-fun Unit!169475 () Unit!169467)

(assert (=> b!7912740 (= e!4670887 Unit!169475)))

(declare-fun lt!2688523 () List!74514)

(declare-fun call!734008 () Regex!21379)

(declare-fun bm!733998 () Bool)

(assert (=> bm!733998 (= call!734001 (findLongestMatchInner!2184 call!734008 lt!2688523 (+ 0 1) call!734004 input!1480 (sizeTr!471 input!1480 0)))))

(declare-fun b!7912741 () Bool)

(assert (=> b!7912741 (= e!4670888 call!734001)))

(declare-fun b!7912742 () Bool)

(assert (=> b!7912742 (= e!4670889 (tuple2!70465 Nil!74390 input!1480))))

(declare-fun bm!733999 () Bool)

(assert (=> bm!733999 (= call!734007 (nullable!9518 (regex!8676 rule!156)))))

(declare-fun bm!734000 () Bool)

(assert (=> bm!734000 (= call!734006 (lemmaIsPrefixSameLengthThenSameList!1580 input!1480 Nil!74390 input!1480))))

(declare-fun bm!734001 () Bool)

(declare-fun call!734005 () C!43088)

(assert (=> bm!734001 (= call!734005 (head!16179 input!1480))))

(declare-fun b!7912743 () Bool)

(declare-fun Unit!169476 () Unit!169467)

(assert (=> b!7912743 (= e!4670887 Unit!169476)))

(declare-fun lt!2688531 () Unit!169467)

(assert (=> b!7912743 (= lt!2688531 call!734003)))

(assert (=> b!7912743 call!734002))

(declare-fun lt!2688534 () Unit!169467)

(assert (=> b!7912743 (= lt!2688534 lt!2688531)))

(declare-fun lt!2688519 () Unit!169467)

(assert (=> b!7912743 (= lt!2688519 call!734006)))

(assert (=> b!7912743 (= input!1480 Nil!74390)))

(declare-fun lt!2688535 () Unit!169467)

(assert (=> b!7912743 (= lt!2688535 lt!2688519)))

(assert (=> b!7912743 false))

(declare-fun b!7912744 () Bool)

(declare-fun c!1451751 () Bool)

(assert (=> b!7912744 (= c!1451751 call!734007)))

(declare-fun lt!2688538 () Unit!169467)

(declare-fun lt!2688524 () Unit!169467)

(assert (=> b!7912744 (= lt!2688538 lt!2688524)))

(declare-fun lt!2688539 () C!43088)

(declare-fun lt!2688516 () List!74514)

(assert (=> b!7912744 (= (++!18222 (++!18222 Nil!74390 (Cons!74390 lt!2688539 Nil!74390)) lt!2688516) input!1480)))

(assert (=> b!7912744 (= lt!2688524 (lemmaMoveElementToOtherListKeepsConcatEq!3487 Nil!74390 lt!2688539 lt!2688516 input!1480))))

(assert (=> b!7912744 (= lt!2688516 (tail!15722 input!1480))))

(assert (=> b!7912744 (= lt!2688539 (head!16179 input!1480))))

(declare-fun lt!2688540 () Unit!169467)

(declare-fun lt!2688541 () Unit!169467)

(assert (=> b!7912744 (= lt!2688540 lt!2688541)))

(assert (=> b!7912744 (isPrefix!6487 (++!18222 Nil!74390 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390)) input!1480)))

(assert (=> b!7912744 (= lt!2688541 (lemmaAddHeadSuffixToPrefixStillPrefix!1265 Nil!74390 input!1480))))

(declare-fun lt!2688526 () Unit!169467)

(declare-fun lt!2688528 () Unit!169467)

(assert (=> b!7912744 (= lt!2688526 lt!2688528)))

(assert (=> b!7912744 (= lt!2688528 (lemmaAddHeadSuffixToPrefixStillPrefix!1265 Nil!74390 input!1480))))

(assert (=> b!7912744 (= lt!2688523 (++!18222 Nil!74390 (Cons!74390 (head!16179 input!1480) Nil!74390)))))

(declare-fun lt!2688529 () Unit!169467)

(assert (=> b!7912744 (= lt!2688529 e!4670887)))

(declare-fun c!1451752 () Bool)

(assert (=> b!7912744 (= c!1451752 (= (size!43175 Nil!74390) (size!43175 input!1480)))))

(declare-fun lt!2688533 () Unit!169467)

(declare-fun lt!2688542 () Unit!169467)

(assert (=> b!7912744 (= lt!2688533 lt!2688542)))

(assert (=> b!7912744 (<= (size!43175 Nil!74390) (size!43175 input!1480))))

(assert (=> b!7912744 (= lt!2688542 (lemmaIsPrefixThenSmallerEqSize!1045 Nil!74390 input!1480))))

(assert (=> b!7912744 (= e!4670891 e!4670888)))

(declare-fun bm!734002 () Bool)

(assert (=> bm!734002 (= call!734002 (isPrefix!6487 input!1480 input!1480))))

(declare-fun b!7912745 () Bool)

(assert (=> b!7912745 (= e!4670890 lt!2688522)))

(declare-fun bm!734003 () Bool)

(assert (=> bm!734003 (= call!734003 (lemmaIsPrefixRefl!3998 input!1480 input!1480))))

(declare-fun b!7912746 () Bool)

(assert (=> b!7912746 (= e!4670892 (tuple2!70465 Nil!74390 input!1480))))

(declare-fun b!7912747 () Bool)

(declare-fun e!4670893 () Bool)

(declare-fun lt!2688543 () tuple2!70464)

(assert (=> b!7912747 (= e!4670893 (>= (size!43175 (_1!38535 lt!2688543)) (size!43175 Nil!74390)))))

(declare-fun b!7912748 () Bool)

(declare-fun e!4670894 () Bool)

(assert (=> b!7912748 (= e!4670894 e!4670893)))

(declare-fun res!3140671 () Bool)

(assert (=> b!7912748 (=> res!3140671 e!4670893)))

(assert (=> b!7912748 (= res!3140671 (isEmpty!42717 (_1!38535 lt!2688543)))))

(declare-fun d!2360632 () Bool)

(assert (=> d!2360632 e!4670894))

(declare-fun res!3140672 () Bool)

(assert (=> d!2360632 (=> (not res!3140672) (not e!4670894))))

(assert (=> d!2360632 (= res!3140672 (= (++!18222 (_1!38535 lt!2688543) (_2!38535 lt!2688543)) input!1480))))

(assert (=> d!2360632 (= lt!2688543 e!4670889)))

(declare-fun c!1451753 () Bool)

(assert (=> d!2360632 (= c!1451753 (lostCause!1931 (regex!8676 rule!156)))))

(declare-fun lt!2688527 () Unit!169467)

(declare-fun Unit!169477 () Unit!169467)

(assert (=> d!2360632 (= lt!2688527 Unit!169477)))

(assert (=> d!2360632 (= (getSuffix!3700 input!1480 Nil!74390) input!1480)))

(declare-fun lt!2688521 () Unit!169467)

(declare-fun lt!2688532 () Unit!169467)

(assert (=> d!2360632 (= lt!2688521 lt!2688532)))

(declare-fun lt!2688530 () List!74514)

(assert (=> d!2360632 (= input!1480 lt!2688530)))

(assert (=> d!2360632 (= lt!2688532 (lemmaSamePrefixThenSameSuffix!2947 Nil!74390 input!1480 Nil!74390 lt!2688530 input!1480))))

(assert (=> d!2360632 (= lt!2688530 (getSuffix!3700 input!1480 Nil!74390))))

(declare-fun lt!2688536 () Unit!169467)

(declare-fun lt!2688537 () Unit!169467)

(assert (=> d!2360632 (= lt!2688536 lt!2688537)))

(assert (=> d!2360632 (isPrefix!6487 Nil!74390 (++!18222 Nil!74390 input!1480))))

(assert (=> d!2360632 (= lt!2688537 (lemmaConcatTwoListThenFirstIsPrefix!3809 Nil!74390 input!1480))))

(assert (=> d!2360632 (validRegex!11683 (regex!8676 rule!156))))

(assert (=> d!2360632 (= (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 0 input!1480 input!1480 (sizeTr!471 input!1480 0)) lt!2688543)))

(declare-fun bm!733996 () Bool)

(assert (=> bm!733996 (= call!734008 (derivativeStep!6458 (regex!8676 rule!156) call!734005))))

(assert (= (and d!2360632 c!1451753) b!7912742))

(assert (= (and d!2360632 (not c!1451753)) b!7912737))

(assert (= (and b!7912737 c!1451750) b!7912736))

(assert (= (and b!7912737 (not c!1451750)) b!7912744))

(assert (= (and b!7912736 c!1451754) b!7912739))

(assert (= (and b!7912736 (not c!1451754)) b!7912746))

(assert (= (and b!7912744 c!1451752) b!7912743))

(assert (= (and b!7912744 (not c!1451752)) b!7912740))

(assert (= (and b!7912744 c!1451751) b!7912738))

(assert (= (and b!7912744 (not c!1451751)) b!7912741))

(assert (= (and b!7912738 c!1451749) b!7912735))

(assert (= (and b!7912738 (not c!1451749)) b!7912745))

(assert (= (or b!7912738 b!7912741) bm!734001))

(assert (= (or b!7912738 b!7912741) bm!733997))

(assert (= (or b!7912738 b!7912741) bm!733996))

(assert (= (or b!7912738 b!7912741) bm!733998))

(assert (= (or b!7912736 b!7912744) bm!733999))

(assert (= (or b!7912736 b!7912743) bm!734002))

(assert (= (or b!7912736 b!7912743) bm!734003))

(assert (= (or b!7912736 b!7912743) bm!734000))

(assert (= (and d!2360632 res!3140672) b!7912748))

(assert (= (and b!7912748 (not res!3140671)) b!7912747))

(assert (=> bm!733999 m!8285920))

(declare-fun m!8286224 () Bool)

(assert (=> bm!733996 m!8286224))

(assert (=> b!7912744 m!8286002))

(assert (=> b!7912744 m!8285876))

(declare-fun m!8286226 () Bool)

(assert (=> b!7912744 m!8286226))

(assert (=> b!7912744 m!8286006))

(assert (=> b!7912744 m!8286008))

(assert (=> b!7912744 m!8286010))

(assert (=> b!7912744 m!8286012))

(assert (=> b!7912744 m!8286014))

(declare-fun m!8286228 () Bool)

(assert (=> b!7912744 m!8286228))

(declare-fun m!8286230 () Bool)

(assert (=> b!7912744 m!8286230))

(assert (=> b!7912744 m!8286008))

(assert (=> b!7912744 m!8286020))

(assert (=> b!7912744 m!8286022))

(assert (=> b!7912744 m!8286006))

(assert (=> b!7912744 m!8286024))

(assert (=> b!7912744 m!8286228))

(assert (=> b!7912744 m!8285868))

(assert (=> bm!733998 m!8286142))

(declare-fun m!8286232 () Bool)

(assert (=> bm!733998 m!8286232))

(assert (=> d!2360632 m!8286008))

(assert (=> d!2360632 m!8286028))

(assert (=> d!2360632 m!8286028))

(assert (=> d!2360632 m!8286030))

(assert (=> d!2360632 m!8286032))

(assert (=> d!2360632 m!8286034))

(declare-fun m!8286234 () Bool)

(assert (=> d!2360632 m!8286234))

(declare-fun m!8286236 () Bool)

(assert (=> d!2360632 m!8286236))

(assert (=> d!2360632 m!8285922))

(assert (=> bm!734002 m!8286040))

(declare-fun m!8286238 () Bool)

(assert (=> b!7912748 m!8286238))

(assert (=> bm!734001 m!8286002))

(assert (=> bm!733997 m!8286022))

(declare-fun m!8286240 () Bool)

(assert (=> b!7912738 m!8286240))

(declare-fun m!8286242 () Bool)

(assert (=> b!7912747 m!8286242))

(assert (=> b!7912747 m!8285868))

(assert (=> bm!734003 m!8286048))

(assert (=> bm!734000 m!8286050))

(assert (=> d!2360576 d!2360632))

(assert (=> d!2360576 d!2360580))

(declare-fun d!2360634 () Bool)

(assert (=> d!2360634 (= (sizeTr!471 input!1480 lt!2688491) (+ (size!43175 input!1480) lt!2688491))))

(declare-fun lt!2688546 () Unit!169467)

(assert (=> d!2360634 (= lt!2688546 (choose!59752 input!1480 lt!2688491))))

(assert (=> d!2360634 (= (lemmaSizeTrEqualsSize!470 input!1480 lt!2688491) lt!2688546)))

(declare-fun bs!1968312 () Bool)

(assert (= bs!1968312 d!2360634))

(assert (=> bs!1968312 m!8286132))

(assert (=> bs!1968312 m!8285876))

(declare-fun m!8286244 () Bool)

(assert (=> bs!1968312 m!8286244))

(assert (=> d!2360576 d!2360634))

(declare-fun b!7912773 () Bool)

(declare-fun e!4670909 () Bool)

(declare-fun e!4670911 () Bool)

(assert (=> b!7912773 (= e!4670909 e!4670911)))

(declare-fun res!3140692 () Bool)

(assert (=> b!7912773 (=> (not res!3140692) (not e!4670911))))

(assert (=> b!7912773 (= res!3140692 (not ((_ is Nil!74390) input!1480)))))

(declare-fun b!7912775 () Bool)

(assert (=> b!7912775 (= e!4670911 (isPrefix!6487 (tail!15722 input!1480) (tail!15722 input!1480)))))

(declare-fun d!2360636 () Bool)

(declare-fun e!4670910 () Bool)

(assert (=> d!2360636 e!4670910))

(declare-fun res!3140690 () Bool)

(assert (=> d!2360636 (=> res!3140690 e!4670910)))

(declare-fun lt!2688554 () Bool)

(assert (=> d!2360636 (= res!3140690 (not lt!2688554))))

(assert (=> d!2360636 (= lt!2688554 e!4670909)))

(declare-fun res!3140689 () Bool)

(assert (=> d!2360636 (=> res!3140689 e!4670909)))

(assert (=> d!2360636 (= res!3140689 ((_ is Nil!74390) input!1480))))

(assert (=> d!2360636 (= (isPrefix!6487 input!1480 input!1480) lt!2688554)))

(declare-fun b!7912776 () Bool)

(assert (=> b!7912776 (= e!4670910 (>= (size!43175 input!1480) (size!43175 input!1480)))))

(declare-fun b!7912774 () Bool)

(declare-fun res!3140691 () Bool)

(assert (=> b!7912774 (=> (not res!3140691) (not e!4670911))))

(assert (=> b!7912774 (= res!3140691 (= (head!16179 input!1480) (head!16179 input!1480)))))

(assert (= (and d!2360636 (not res!3140689)) b!7912773))

(assert (= (and b!7912773 res!3140692) b!7912774))

(assert (= (and b!7912774 res!3140691) b!7912775))

(assert (= (and d!2360636 (not res!3140690)) b!7912776))

(assert (=> b!7912775 m!8286022))

(assert (=> b!7912775 m!8286022))

(assert (=> b!7912775 m!8286022))

(assert (=> b!7912775 m!8286022))

(declare-fun m!8286270 () Bool)

(assert (=> b!7912775 m!8286270))

(assert (=> b!7912776 m!8285876))

(assert (=> b!7912776 m!8285876))

(assert (=> b!7912774 m!8286002))

(assert (=> b!7912774 m!8286002))

(assert (=> bm!733976 d!2360636))

(assert (=> b!7912512 d!2360532))

(declare-fun b!7912777 () Bool)

(declare-fun e!4670912 () Bool)

(declare-fun e!4670914 () Bool)

(assert (=> b!7912777 (= e!4670912 e!4670914)))

(declare-fun res!3140696 () Bool)

(assert (=> b!7912777 (=> (not res!3140696) (not e!4670914))))

(assert (=> b!7912777 (= res!3140696 (not ((_ is Nil!74390) input!1480)))))

(declare-fun b!7912779 () Bool)

(assert (=> b!7912779 (= e!4670914 (isPrefix!6487 (tail!15722 (++!18222 Nil!74390 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390))) (tail!15722 input!1480)))))

(declare-fun d!2360648 () Bool)

(declare-fun e!4670913 () Bool)

(assert (=> d!2360648 e!4670913))

(declare-fun res!3140694 () Bool)

(assert (=> d!2360648 (=> res!3140694 e!4670913)))

(declare-fun lt!2688555 () Bool)

(assert (=> d!2360648 (= res!3140694 (not lt!2688555))))

(assert (=> d!2360648 (= lt!2688555 e!4670912)))

(declare-fun res!3140693 () Bool)

(assert (=> d!2360648 (=> res!3140693 e!4670912)))

(assert (=> d!2360648 (= res!3140693 ((_ is Nil!74390) (++!18222 Nil!74390 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390))))))

(assert (=> d!2360648 (= (isPrefix!6487 (++!18222 Nil!74390 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390)) input!1480) lt!2688555)))

(declare-fun b!7912780 () Bool)

(assert (=> b!7912780 (= e!4670913 (>= (size!43175 input!1480) (size!43175 (++!18222 Nil!74390 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390)))))))

(declare-fun b!7912778 () Bool)

(declare-fun res!3140695 () Bool)

(assert (=> b!7912778 (=> (not res!3140695) (not e!4670914))))

(assert (=> b!7912778 (= res!3140695 (= (head!16179 (++!18222 Nil!74390 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390))) (head!16179 input!1480)))))

(assert (= (and d!2360648 (not res!3140693)) b!7912777))

(assert (= (and b!7912777 res!3140696) b!7912778))

(assert (= (and b!7912778 res!3140695) b!7912779))

(assert (= (and d!2360648 (not res!3140694)) b!7912780))

(assert (=> b!7912779 m!8286006))

(declare-fun m!8286272 () Bool)

(assert (=> b!7912779 m!8286272))

(assert (=> b!7912779 m!8286022))

(assert (=> b!7912779 m!8286272))

(assert (=> b!7912779 m!8286022))

(declare-fun m!8286274 () Bool)

(assert (=> b!7912779 m!8286274))

(assert (=> b!7912780 m!8285876))

(assert (=> b!7912780 m!8286006))

(declare-fun m!8286276 () Bool)

(assert (=> b!7912780 m!8286276))

(assert (=> b!7912778 m!8286006))

(declare-fun m!8286278 () Bool)

(assert (=> b!7912778 m!8286278))

(assert (=> b!7912778 m!8286002))

(assert (=> b!7912512 d!2360648))

(assert (=> b!7912512 d!2360534))

(declare-fun b!7912782 () Bool)

(declare-fun e!4670915 () List!74514)

(assert (=> b!7912782 (= e!4670915 (Cons!74390 (h!80838 Nil!74390) (++!18222 (t!389951 Nil!74390) (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390))))))

(declare-fun d!2360650 () Bool)

(declare-fun e!4670916 () Bool)

(assert (=> d!2360650 e!4670916))

(declare-fun res!3140698 () Bool)

(assert (=> d!2360650 (=> (not res!3140698) (not e!4670916))))

(declare-fun lt!2688556 () List!74514)

(assert (=> d!2360650 (= res!3140698 (= (content!15754 lt!2688556) ((_ map or) (content!15754 Nil!74390) (content!15754 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390)))))))

(assert (=> d!2360650 (= lt!2688556 e!4670915)))

(declare-fun c!1451759 () Bool)

(assert (=> d!2360650 (= c!1451759 ((_ is Nil!74390) Nil!74390))))

(assert (=> d!2360650 (= (++!18222 Nil!74390 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390)) lt!2688556)))

(declare-fun b!7912781 () Bool)

(assert (=> b!7912781 (= e!4670915 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390))))

(declare-fun b!7912783 () Bool)

(declare-fun res!3140697 () Bool)

(assert (=> b!7912783 (=> (not res!3140697) (not e!4670916))))

(assert (=> b!7912783 (= res!3140697 (= (size!43175 lt!2688556) (+ (size!43175 Nil!74390) (size!43175 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390)))))))

(declare-fun b!7912784 () Bool)

(assert (=> b!7912784 (= e!4670916 (or (not (= (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390) Nil!74390)) (= lt!2688556 Nil!74390)))))

(assert (= (and d!2360650 c!1451759) b!7912781))

(assert (= (and d!2360650 (not c!1451759)) b!7912782))

(assert (= (and d!2360650 res!3140698) b!7912783))

(assert (= (and b!7912783 res!3140697) b!7912784))

(declare-fun m!8286280 () Bool)

(assert (=> b!7912782 m!8286280))

(declare-fun m!8286282 () Bool)

(assert (=> d!2360650 m!8286282))

(declare-fun m!8286284 () Bool)

(assert (=> d!2360650 m!8286284))

(declare-fun m!8286286 () Bool)

(assert (=> d!2360650 m!8286286))

(declare-fun m!8286288 () Bool)

(assert (=> b!7912783 m!8286288))

(assert (=> b!7912783 m!8285868))

(declare-fun m!8286290 () Bool)

(assert (=> b!7912783 m!8286290))

(assert (=> b!7912512 d!2360650))

(declare-fun d!2360652 () Bool)

(assert (=> d!2360652 (isPrefix!6487 (++!18222 Nil!74390 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 Nil!74390)) Nil!74390)) input!1480)))

(declare-fun lt!2688564 () Unit!169467)

(declare-fun choose!59755 (List!74514 List!74514) Unit!169467)

(assert (=> d!2360652 (= lt!2688564 (choose!59755 Nil!74390 input!1480))))

(assert (=> d!2360652 (isPrefix!6487 Nil!74390 input!1480)))

(assert (=> d!2360652 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1265 Nil!74390 input!1480) lt!2688564)))

(declare-fun bs!1968314 () Bool)

(assert (= bs!1968314 d!2360652))

(assert (=> bs!1968314 m!8286006))

(assert (=> bs!1968314 m!8286024))

(declare-fun m!8286312 () Bool)

(assert (=> bs!1968314 m!8286312))

(assert (=> bs!1968314 m!8286008))

(assert (=> bs!1968314 m!8286008))

(assert (=> bs!1968314 m!8286010))

(assert (=> bs!1968314 m!8286006))

(declare-fun m!8286322 () Bool)

(assert (=> bs!1968314 m!8286322))

(assert (=> b!7912512 d!2360652))

(declare-fun d!2360660 () Bool)

(assert (=> d!2360660 (= (++!18222 (++!18222 Nil!74390 (Cons!74390 lt!2688451 Nil!74390)) lt!2688428) input!1480)))

(declare-fun lt!2688595 () Unit!169467)

(declare-fun choose!59756 (List!74514 C!43088 List!74514 List!74514) Unit!169467)

(assert (=> d!2360660 (= lt!2688595 (choose!59756 Nil!74390 lt!2688451 lt!2688428 input!1480))))

(assert (=> d!2360660 (= (++!18222 Nil!74390 (Cons!74390 lt!2688451 lt!2688428)) input!1480)))

(assert (=> d!2360660 (= (lemmaMoveElementToOtherListKeepsConcatEq!3487 Nil!74390 lt!2688451 lt!2688428 input!1480) lt!2688595)))

(declare-fun bs!1968315 () Bool)

(assert (= bs!1968315 d!2360660))

(assert (=> bs!1968315 m!8286016))

(assert (=> bs!1968315 m!8286016))

(assert (=> bs!1968315 m!8286018))

(declare-fun m!8286342 () Bool)

(assert (=> bs!1968315 m!8286342))

(declare-fun m!8286346 () Bool)

(assert (=> bs!1968315 m!8286346))

(assert (=> b!7912512 d!2360660))

(declare-fun b!7912814 () Bool)

(declare-fun e!4670932 () List!74514)

(assert (=> b!7912814 (= e!4670932 (Cons!74390 (h!80838 Nil!74390) (++!18222 (t!389951 Nil!74390) (Cons!74390 (head!16179 input!1480) Nil!74390))))))

(declare-fun d!2360662 () Bool)

(declare-fun e!4670933 () Bool)

(assert (=> d!2360662 e!4670933))

(declare-fun res!3140706 () Bool)

(assert (=> d!2360662 (=> (not res!3140706) (not e!4670933))))

(declare-fun lt!2688596 () List!74514)

(assert (=> d!2360662 (= res!3140706 (= (content!15754 lt!2688596) ((_ map or) (content!15754 Nil!74390) (content!15754 (Cons!74390 (head!16179 input!1480) Nil!74390)))))))

(assert (=> d!2360662 (= lt!2688596 e!4670932)))

(declare-fun c!1451771 () Bool)

(assert (=> d!2360662 (= c!1451771 ((_ is Nil!74390) Nil!74390))))

(assert (=> d!2360662 (= (++!18222 Nil!74390 (Cons!74390 (head!16179 input!1480) Nil!74390)) lt!2688596)))

(declare-fun b!7912813 () Bool)

(assert (=> b!7912813 (= e!4670932 (Cons!74390 (head!16179 input!1480) Nil!74390))))

(declare-fun b!7912815 () Bool)

(declare-fun res!3140705 () Bool)

(assert (=> b!7912815 (=> (not res!3140705) (not e!4670933))))

(assert (=> b!7912815 (= res!3140705 (= (size!43175 lt!2688596) (+ (size!43175 Nil!74390) (size!43175 (Cons!74390 (head!16179 input!1480) Nil!74390)))))))

(declare-fun b!7912816 () Bool)

(assert (=> b!7912816 (= e!4670933 (or (not (= (Cons!74390 (head!16179 input!1480) Nil!74390) Nil!74390)) (= lt!2688596 Nil!74390)))))

(assert (= (and d!2360662 c!1451771) b!7912813))

(assert (= (and d!2360662 (not c!1451771)) b!7912814))

(assert (= (and d!2360662 res!3140706) b!7912815))

(assert (= (and b!7912815 res!3140705) b!7912816))

(declare-fun m!8286378 () Bool)

(assert (=> b!7912814 m!8286378))

(declare-fun m!8286382 () Bool)

(assert (=> d!2360662 m!8286382))

(assert (=> d!2360662 m!8286284))

(declare-fun m!8286386 () Bool)

(assert (=> d!2360662 m!8286386))

(declare-fun m!8286388 () Bool)

(assert (=> b!7912815 m!8286388))

(assert (=> b!7912815 m!8285868))

(declare-fun m!8286390 () Bool)

(assert (=> b!7912815 m!8286390))

(assert (=> b!7912512 d!2360662))

(declare-fun d!2360666 () Bool)

(assert (=> d!2360666 (= (tail!15722 input!1480) (t!389951 input!1480))))

(assert (=> b!7912512 d!2360666))

(declare-fun d!2360668 () Bool)

(assert (=> d!2360668 (<= (size!43175 Nil!74390) (size!43175 input!1480))))

(declare-fun lt!2688599 () Unit!169467)

(declare-fun choose!59757 (List!74514 List!74514) Unit!169467)

(assert (=> d!2360668 (= lt!2688599 (choose!59757 Nil!74390 input!1480))))

(assert (=> d!2360668 (isPrefix!6487 Nil!74390 input!1480)))

(assert (=> d!2360668 (= (lemmaIsPrefixThenSmallerEqSize!1045 Nil!74390 input!1480) lt!2688599)))

(declare-fun bs!1968316 () Bool)

(assert (= bs!1968316 d!2360668))

(assert (=> bs!1968316 m!8285868))

(assert (=> bs!1968316 m!8285876))

(declare-fun m!8286392 () Bool)

(assert (=> bs!1968316 m!8286392))

(assert (=> bs!1968316 m!8286312))

(assert (=> b!7912512 d!2360668))

(assert (=> b!7912512 d!2360600))

(declare-fun d!2360670 () Bool)

(assert (=> d!2360670 (= (head!16179 (getSuffix!3700 input!1480 Nil!74390)) (h!80838 (getSuffix!3700 input!1480 Nil!74390)))))

(assert (=> b!7912512 d!2360670))

(declare-fun d!2360672 () Bool)

(declare-fun lt!2688604 () List!74514)

(assert (=> d!2360672 (= (++!18222 Nil!74390 lt!2688604) input!1480)))

(declare-fun e!4670944 () List!74514)

(assert (=> d!2360672 (= lt!2688604 e!4670944)))

(declare-fun c!1451779 () Bool)

(assert (=> d!2360672 (= c!1451779 ((_ is Cons!74390) Nil!74390))))

(assert (=> d!2360672 (>= (size!43175 input!1480) (size!43175 Nil!74390))))

(assert (=> d!2360672 (= (getSuffix!3700 input!1480 Nil!74390) lt!2688604)))

(declare-fun b!7912834 () Bool)

(assert (=> b!7912834 (= e!4670944 (getSuffix!3700 (tail!15722 input!1480) (t!389951 Nil!74390)))))

(declare-fun b!7912835 () Bool)

(assert (=> b!7912835 (= e!4670944 input!1480)))

(assert (= (and d!2360672 c!1451779) b!7912834))

(assert (= (and d!2360672 (not c!1451779)) b!7912835))

(declare-fun m!8286404 () Bool)

(assert (=> d!2360672 m!8286404))

(assert (=> d!2360672 m!8285876))

(assert (=> d!2360672 m!8285868))

(assert (=> b!7912834 m!8286022))

(assert (=> b!7912834 m!8286022))

(declare-fun m!8286406 () Bool)

(assert (=> b!7912834 m!8286406))

(assert (=> b!7912512 d!2360672))

(declare-fun b!7912837 () Bool)

(declare-fun e!4670945 () List!74514)

(assert (=> b!7912837 (= e!4670945 (Cons!74390 (h!80838 Nil!74390) (++!18222 (t!389951 Nil!74390) (Cons!74390 lt!2688451 Nil!74390))))))

(declare-fun d!2360682 () Bool)

(declare-fun e!4670946 () Bool)

(assert (=> d!2360682 e!4670946))

(declare-fun res!3140711 () Bool)

(assert (=> d!2360682 (=> (not res!3140711) (not e!4670946))))

(declare-fun lt!2688605 () List!74514)

(assert (=> d!2360682 (= res!3140711 (= (content!15754 lt!2688605) ((_ map or) (content!15754 Nil!74390) (content!15754 (Cons!74390 lt!2688451 Nil!74390)))))))

(assert (=> d!2360682 (= lt!2688605 e!4670945)))

(declare-fun c!1451780 () Bool)

(assert (=> d!2360682 (= c!1451780 ((_ is Nil!74390) Nil!74390))))

(assert (=> d!2360682 (= (++!18222 Nil!74390 (Cons!74390 lt!2688451 Nil!74390)) lt!2688605)))

(declare-fun b!7912836 () Bool)

(assert (=> b!7912836 (= e!4670945 (Cons!74390 lt!2688451 Nil!74390))))

(declare-fun b!7912838 () Bool)

(declare-fun res!3140710 () Bool)

(assert (=> b!7912838 (=> (not res!3140710) (not e!4670946))))

(assert (=> b!7912838 (= res!3140710 (= (size!43175 lt!2688605) (+ (size!43175 Nil!74390) (size!43175 (Cons!74390 lt!2688451 Nil!74390)))))))

(declare-fun b!7912839 () Bool)

(assert (=> b!7912839 (= e!4670946 (or (not (= (Cons!74390 lt!2688451 Nil!74390) Nil!74390)) (= lt!2688605 Nil!74390)))))

(assert (= (and d!2360682 c!1451780) b!7912836))

(assert (= (and d!2360682 (not c!1451780)) b!7912837))

(assert (= (and d!2360682 res!3140711) b!7912838))

(assert (= (and b!7912838 res!3140710) b!7912839))

(declare-fun m!8286408 () Bool)

(assert (=> b!7912837 m!8286408))

(declare-fun m!8286410 () Bool)

(assert (=> d!2360682 m!8286410))

(assert (=> d!2360682 m!8286284))

(declare-fun m!8286412 () Bool)

(assert (=> d!2360682 m!8286412))

(declare-fun m!8286414 () Bool)

(assert (=> b!7912838 m!8286414))

(assert (=> b!7912838 m!8285868))

(declare-fun m!8286416 () Bool)

(assert (=> b!7912838 m!8286416))

(assert (=> b!7912512 d!2360682))

(declare-fun b!7912841 () Bool)

(declare-fun e!4670947 () List!74514)

(assert (=> b!7912841 (= e!4670947 (Cons!74390 (h!80838 (++!18222 Nil!74390 (Cons!74390 lt!2688451 Nil!74390))) (++!18222 (t!389951 (++!18222 Nil!74390 (Cons!74390 lt!2688451 Nil!74390))) lt!2688428)))))

(declare-fun d!2360684 () Bool)

(declare-fun e!4670948 () Bool)

(assert (=> d!2360684 e!4670948))

(declare-fun res!3140713 () Bool)

(assert (=> d!2360684 (=> (not res!3140713) (not e!4670948))))

(declare-fun lt!2688606 () List!74514)

(assert (=> d!2360684 (= res!3140713 (= (content!15754 lt!2688606) ((_ map or) (content!15754 (++!18222 Nil!74390 (Cons!74390 lt!2688451 Nil!74390))) (content!15754 lt!2688428))))))

(assert (=> d!2360684 (= lt!2688606 e!4670947)))

(declare-fun c!1451781 () Bool)

(assert (=> d!2360684 (= c!1451781 ((_ is Nil!74390) (++!18222 Nil!74390 (Cons!74390 lt!2688451 Nil!74390))))))

(assert (=> d!2360684 (= (++!18222 (++!18222 Nil!74390 (Cons!74390 lt!2688451 Nil!74390)) lt!2688428) lt!2688606)))

(declare-fun b!7912840 () Bool)

(assert (=> b!7912840 (= e!4670947 lt!2688428)))

(declare-fun b!7912842 () Bool)

(declare-fun res!3140712 () Bool)

(assert (=> b!7912842 (=> (not res!3140712) (not e!4670948))))

(assert (=> b!7912842 (= res!3140712 (= (size!43175 lt!2688606) (+ (size!43175 (++!18222 Nil!74390 (Cons!74390 lt!2688451 Nil!74390))) (size!43175 lt!2688428))))))

(declare-fun b!7912843 () Bool)

(assert (=> b!7912843 (= e!4670948 (or (not (= lt!2688428 Nil!74390)) (= lt!2688606 (++!18222 Nil!74390 (Cons!74390 lt!2688451 Nil!74390)))))))

(assert (= (and d!2360684 c!1451781) b!7912840))

(assert (= (and d!2360684 (not c!1451781)) b!7912841))

(assert (= (and d!2360684 res!3140713) b!7912842))

(assert (= (and b!7912842 res!3140712) b!7912843))

(declare-fun m!8286418 () Bool)

(assert (=> b!7912841 m!8286418))

(declare-fun m!8286420 () Bool)

(assert (=> d!2360684 m!8286420))

(assert (=> d!2360684 m!8286016))

(declare-fun m!8286422 () Bool)

(assert (=> d!2360684 m!8286422))

(declare-fun m!8286424 () Bool)

(assert (=> d!2360684 m!8286424))

(declare-fun m!8286426 () Bool)

(assert (=> b!7912842 m!8286426))

(assert (=> b!7912842 m!8286016))

(declare-fun m!8286428 () Bool)

(assert (=> b!7912842 m!8286428))

(declare-fun m!8286430 () Bool)

(assert (=> b!7912842 m!8286430))

(assert (=> b!7912512 d!2360684))

(declare-fun d!2360686 () Bool)

(assert (=> d!2360686 (= (isEmpty!42717 (originalCharacters!8911 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))) ((_ is Nil!74390) (originalCharacters!8911 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))))

(assert (=> d!2360552 d!2360686))

(declare-fun d!2360688 () Bool)

(declare-fun lt!2688609 () Int)

(assert (=> d!2360688 (>= lt!2688609 0)))

(declare-fun e!4670949 () Int)

(assert (=> d!2360688 (= lt!2688609 e!4670949)))

(declare-fun c!1451782 () Bool)

(assert (=> d!2360688 (= c!1451782 ((_ is Nil!74390) (_1!38535 lt!2688455)))))

(assert (=> d!2360688 (= (size!43175 (_1!38535 lt!2688455)) lt!2688609)))

(declare-fun b!7912844 () Bool)

(assert (=> b!7912844 (= e!4670949 0)))

(declare-fun b!7912845 () Bool)

(assert (=> b!7912845 (= e!4670949 (+ 1 (size!43175 (t!389951 (_1!38535 lt!2688455)))))))

(assert (= (and d!2360688 c!1451782) b!7912844))

(assert (= (and d!2360688 (not c!1451782)) b!7912845))

(declare-fun m!8286432 () Bool)

(assert (=> b!7912845 m!8286432))

(assert (=> b!7912515 d!2360688))

(assert (=> b!7912515 d!2360534))

(declare-fun d!2360690 () Bool)

(assert (=> d!2360690 (isPrefix!6487 input!1480 input!1480)))

(declare-fun lt!2688614 () Unit!169467)

(declare-fun choose!59759 (List!74514 List!74514) Unit!169467)

(assert (=> d!2360690 (= lt!2688614 (choose!59759 input!1480 input!1480))))

(assert (=> d!2360690 (= (lemmaIsPrefixRefl!3998 input!1480 input!1480) lt!2688614)))

(declare-fun bs!1968319 () Bool)

(assert (= bs!1968319 d!2360690))

(assert (=> bs!1968319 m!8286040))

(declare-fun m!8286442 () Bool)

(assert (=> bs!1968319 m!8286442))

(assert (=> bm!733977 d!2360690))

(declare-fun d!2360698 () Bool)

(declare-fun isBalanced!4478 (Conc!15850) Bool)

(assert (=> d!2360698 (= (inv!95466 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (isBalanced!4478 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))))))

(declare-fun bs!1968320 () Bool)

(assert (= bs!1968320 d!2360698))

(declare-fun m!8286446 () Bool)

(assert (=> bs!1968320 m!8286446))

(assert (=> tb!263277 d!2360698))

(declare-fun d!2360702 () Bool)

(assert (=> d!2360702 (= (inv!95466 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))) (isBalanced!4478 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))))))

(declare-fun bs!1968321 () Bool)

(assert (= bs!1968321 d!2360702))

(declare-fun m!8286448 () Bool)

(assert (=> bs!1968321 m!8286448))

(assert (=> tb!263285 d!2360702))

(assert (=> d!2360536 d!2360580))

(declare-fun b!7912858 () Bool)

(declare-fun e!4670956 () List!74514)

(assert (=> b!7912858 (= e!4670956 (Cons!74390 (h!80838 (_1!38535 lt!2688455)) (++!18222 (t!389951 (_1!38535 lt!2688455)) (_2!38535 lt!2688455))))))

(declare-fun d!2360704 () Bool)

(declare-fun e!4670957 () Bool)

(assert (=> d!2360704 e!4670957))

(declare-fun res!3140716 () Bool)

(assert (=> d!2360704 (=> (not res!3140716) (not e!4670957))))

(declare-fun lt!2688615 () List!74514)

(assert (=> d!2360704 (= res!3140716 (= (content!15754 lt!2688615) ((_ map or) (content!15754 (_1!38535 lt!2688455)) (content!15754 (_2!38535 lt!2688455)))))))

(assert (=> d!2360704 (= lt!2688615 e!4670956)))

(declare-fun c!1451788 () Bool)

(assert (=> d!2360704 (= c!1451788 ((_ is Nil!74390) (_1!38535 lt!2688455)))))

(assert (=> d!2360704 (= (++!18222 (_1!38535 lt!2688455) (_2!38535 lt!2688455)) lt!2688615)))

(declare-fun b!7912857 () Bool)

(assert (=> b!7912857 (= e!4670956 (_2!38535 lt!2688455))))

(declare-fun b!7912859 () Bool)

(declare-fun res!3140715 () Bool)

(assert (=> b!7912859 (=> (not res!3140715) (not e!4670957))))

(assert (=> b!7912859 (= res!3140715 (= (size!43175 lt!2688615) (+ (size!43175 (_1!38535 lt!2688455)) (size!43175 (_2!38535 lt!2688455)))))))

(declare-fun b!7912860 () Bool)

(assert (=> b!7912860 (= e!4670957 (or (not (= (_2!38535 lt!2688455) Nil!74390)) (= lt!2688615 (_1!38535 lt!2688455))))))

(assert (= (and d!2360704 c!1451788) b!7912857))

(assert (= (and d!2360704 (not c!1451788)) b!7912858))

(assert (= (and d!2360704 res!3140716) b!7912859))

(assert (= (and b!7912859 res!3140715) b!7912860))

(declare-fun m!8286450 () Bool)

(assert (=> b!7912858 m!8286450))

(declare-fun m!8286452 () Bool)

(assert (=> d!2360704 m!8286452))

(declare-fun m!8286454 () Bool)

(assert (=> d!2360704 m!8286454))

(declare-fun m!8286456 () Bool)

(assert (=> d!2360704 m!8286456))

(declare-fun m!8286458 () Bool)

(assert (=> b!7912859 m!8286458))

(assert (=> b!7912859 m!8286046))

(declare-fun m!8286460 () Bool)

(assert (=> b!7912859 m!8286460))

(assert (=> d!2360536 d!2360704))

(declare-fun d!2360706 () Bool)

(assert (=> d!2360706 (= input!1480 lt!2688442)))

(declare-fun lt!2688650 () Unit!169467)

(declare-fun choose!59760 (List!74514 List!74514 List!74514 List!74514 List!74514) Unit!169467)

(assert (=> d!2360706 (= lt!2688650 (choose!59760 Nil!74390 input!1480 Nil!74390 lt!2688442 input!1480))))

(assert (=> d!2360706 (isPrefix!6487 Nil!74390 input!1480)))

(assert (=> d!2360706 (= (lemmaSamePrefixThenSameSuffix!2947 Nil!74390 input!1480 Nil!74390 lt!2688442 input!1480) lt!2688650)))

(declare-fun bs!1968324 () Bool)

(assert (= bs!1968324 d!2360706))

(declare-fun m!8286468 () Bool)

(assert (=> bs!1968324 m!8286468))

(assert (=> bs!1968324 m!8286312))

(assert (=> d!2360536 d!2360706))

(declare-fun d!2360714 () Bool)

(assert (=> d!2360714 (isPrefix!6487 Nil!74390 (++!18222 Nil!74390 input!1480))))

(declare-fun lt!2688653 () Unit!169467)

(declare-fun choose!59761 (List!74514 List!74514) Unit!169467)

(assert (=> d!2360714 (= lt!2688653 (choose!59761 Nil!74390 input!1480))))

(assert (=> d!2360714 (= (lemmaConcatTwoListThenFirstIsPrefix!3809 Nil!74390 input!1480) lt!2688653)))

(declare-fun bs!1968325 () Bool)

(assert (= bs!1968325 d!2360714))

(assert (=> bs!1968325 m!8286028))

(assert (=> bs!1968325 m!8286028))

(assert (=> bs!1968325 m!8286030))

(declare-fun m!8286486 () Bool)

(assert (=> bs!1968325 m!8286486))

(assert (=> d!2360536 d!2360714))

(declare-fun d!2360716 () Bool)

(declare-fun lostCauseFct!557 (Regex!21379) Bool)

(assert (=> d!2360716 (= (lostCause!1931 (regex!8676 rule!156)) (lostCauseFct!557 (regex!8676 rule!156)))))

(declare-fun bs!1968326 () Bool)

(assert (= bs!1968326 d!2360716))

(declare-fun m!8286508 () Bool)

(assert (=> bs!1968326 m!8286508))

(assert (=> d!2360536 d!2360716))

(assert (=> d!2360536 d!2360672))

(declare-fun b!7912884 () Bool)

(declare-fun e!4670970 () List!74514)

(assert (=> b!7912884 (= e!4670970 (Cons!74390 (h!80838 Nil!74390) (++!18222 (t!389951 Nil!74390) input!1480)))))

(declare-fun d!2360724 () Bool)

(declare-fun e!4670971 () Bool)

(assert (=> d!2360724 e!4670971))

(declare-fun res!3140722 () Bool)

(assert (=> d!2360724 (=> (not res!3140722) (not e!4670971))))

(declare-fun lt!2688655 () List!74514)

(assert (=> d!2360724 (= res!3140722 (= (content!15754 lt!2688655) ((_ map or) (content!15754 Nil!74390) (content!15754 input!1480))))))

(assert (=> d!2360724 (= lt!2688655 e!4670970)))

(declare-fun c!1451798 () Bool)

(assert (=> d!2360724 (= c!1451798 ((_ is Nil!74390) Nil!74390))))

(assert (=> d!2360724 (= (++!18222 Nil!74390 input!1480) lt!2688655)))

(declare-fun b!7912883 () Bool)

(assert (=> b!7912883 (= e!4670970 input!1480)))

(declare-fun b!7912885 () Bool)

(declare-fun res!3140721 () Bool)

(assert (=> b!7912885 (=> (not res!3140721) (not e!4670971))))

(assert (=> b!7912885 (= res!3140721 (= (size!43175 lt!2688655) (+ (size!43175 Nil!74390) (size!43175 input!1480))))))

(declare-fun b!7912886 () Bool)

(assert (=> b!7912886 (= e!4670971 (or (not (= input!1480 Nil!74390)) (= lt!2688655 Nil!74390)))))

(assert (= (and d!2360724 c!1451798) b!7912883))

(assert (= (and d!2360724 (not c!1451798)) b!7912884))

(assert (= (and d!2360724 res!3140722) b!7912885))

(assert (= (and b!7912885 res!3140721) b!7912886))

(declare-fun m!8286510 () Bool)

(assert (=> b!7912884 m!8286510))

(declare-fun m!8286512 () Bool)

(assert (=> d!2360724 m!8286512))

(assert (=> d!2360724 m!8286284))

(declare-fun m!8286514 () Bool)

(assert (=> d!2360724 m!8286514))

(declare-fun m!8286516 () Bool)

(assert (=> b!7912885 m!8286516))

(assert (=> b!7912885 m!8285868))

(assert (=> b!7912885 m!8285876))

(assert (=> d!2360536 d!2360724))

(declare-fun b!7912887 () Bool)

(declare-fun e!4670972 () Bool)

(declare-fun e!4670974 () Bool)

(assert (=> b!7912887 (= e!4670972 e!4670974)))

(declare-fun res!3140726 () Bool)

(assert (=> b!7912887 (=> (not res!3140726) (not e!4670974))))

(assert (=> b!7912887 (= res!3140726 (not ((_ is Nil!74390) (++!18222 Nil!74390 input!1480))))))

(declare-fun b!7912889 () Bool)

(assert (=> b!7912889 (= e!4670974 (isPrefix!6487 (tail!15722 Nil!74390) (tail!15722 (++!18222 Nil!74390 input!1480))))))

(declare-fun d!2360726 () Bool)

(declare-fun e!4670973 () Bool)

(assert (=> d!2360726 e!4670973))

(declare-fun res!3140724 () Bool)

(assert (=> d!2360726 (=> res!3140724 e!4670973)))

(declare-fun lt!2688656 () Bool)

(assert (=> d!2360726 (= res!3140724 (not lt!2688656))))

(assert (=> d!2360726 (= lt!2688656 e!4670972)))

(declare-fun res!3140723 () Bool)

(assert (=> d!2360726 (=> res!3140723 e!4670972)))

(assert (=> d!2360726 (= res!3140723 ((_ is Nil!74390) Nil!74390))))

(assert (=> d!2360726 (= (isPrefix!6487 Nil!74390 (++!18222 Nil!74390 input!1480)) lt!2688656)))

(declare-fun b!7912890 () Bool)

(assert (=> b!7912890 (= e!4670973 (>= (size!43175 (++!18222 Nil!74390 input!1480)) (size!43175 Nil!74390)))))

(declare-fun b!7912888 () Bool)

(declare-fun res!3140725 () Bool)

(assert (=> b!7912888 (=> (not res!3140725) (not e!4670974))))

(assert (=> b!7912888 (= res!3140725 (= (head!16179 Nil!74390) (head!16179 (++!18222 Nil!74390 input!1480))))))

(assert (= (and d!2360726 (not res!3140723)) b!7912887))

(assert (= (and b!7912887 res!3140726) b!7912888))

(assert (= (and b!7912888 res!3140725) b!7912889))

(assert (= (and d!2360726 (not res!3140724)) b!7912890))

(declare-fun m!8286518 () Bool)

(assert (=> b!7912889 m!8286518))

(assert (=> b!7912889 m!8286028))

(declare-fun m!8286520 () Bool)

(assert (=> b!7912889 m!8286520))

(assert (=> b!7912889 m!8286518))

(assert (=> b!7912889 m!8286520))

(declare-fun m!8286522 () Bool)

(assert (=> b!7912889 m!8286522))

(assert (=> b!7912890 m!8286028))

(declare-fun m!8286524 () Bool)

(assert (=> b!7912890 m!8286524))

(assert (=> b!7912890 m!8285868))

(declare-fun m!8286526 () Bool)

(assert (=> b!7912888 m!8286526))

(assert (=> b!7912888 m!8286028))

(declare-fun m!8286528 () Bool)

(assert (=> b!7912888 m!8286528))

(assert (=> d!2360536 d!2360726))

(declare-fun d!2360728 () Bool)

(assert (=> d!2360728 (= (isEmpty!42717 (_1!38535 lt!2688455)) ((_ is Nil!74390) (_1!38535 lt!2688455)))))

(assert (=> b!7912516 d!2360728))

(declare-fun d!2360730 () Bool)

(assert (=> d!2360730 true))

(declare-fun lambda!472596 () Int)

(declare-fun order!29953 () Int)

(declare-fun dynLambda!30186 (Int Int) Int)

(assert (=> d!2360730 (< (dynLambda!30182 order!29947 (toValue!11733 (transformation!8676 rule!156))) (dynLambda!30186 order!29953 lambda!472596))))

(declare-fun Forall2!1318 (Int) Bool)

(assert (=> d!2360730 (= (equivClasses!3661 (toChars!11592 (transformation!8676 rule!156)) (toValue!11733 (transformation!8676 rule!156))) (Forall2!1318 lambda!472596))))

(declare-fun bs!1968330 () Bool)

(assert (= bs!1968330 d!2360730))

(declare-fun m!8286540 () Bool)

(assert (=> bs!1968330 m!8286540))

(assert (=> b!7912350 d!2360730))

(declare-fun d!2360738 () Bool)

(assert (=> d!2360738 (= (head!16179 (_1!38535 lt!2688248)) (h!80838 (_1!38535 lt!2688248)))))

(assert (=> b!7912408 d!2360738))

(assert (=> bm!733971 d!2360666))

(declare-fun d!2360740 () Bool)

(assert (=> d!2360740 (= (isEmpty!42717 (tail!15722 (_1!38535 lt!2688248))) ((_ is Nil!74390) (tail!15722 (_1!38535 lt!2688248))))))

(assert (=> b!7912409 d!2360740))

(declare-fun d!2360742 () Bool)

(assert (=> d!2360742 (= (tail!15722 (_1!38535 lt!2688248)) (t!389951 (_1!38535 lt!2688248)))))

(assert (=> b!7912409 d!2360742))

(declare-fun d!2360744 () Bool)

(declare-fun e!4670989 () Bool)

(assert (=> d!2360744 e!4670989))

(declare-fun res!3140731 () Bool)

(assert (=> d!2360744 (=> (not res!3140731) (not e!4670989))))

(declare-fun lt!2688667 () BalanceConc!30818)

(assert (=> d!2360744 (= res!3140731 (= (list!19329 lt!2688667) (_1!38535 lt!2688245)))))

(declare-fun fromList!965 (List!74514) Conc!15850)

(assert (=> d!2360744 (= lt!2688667 (BalanceConc!30819 (fromList!965 (_1!38535 lt!2688245))))))

(assert (=> d!2360744 (= (fromListB!2803 (_1!38535 lt!2688245)) lt!2688667)))

(declare-fun b!7912917 () Bool)

(assert (=> b!7912917 (= e!4670989 (isBalanced!4478 (fromList!965 (_1!38535 lt!2688245))))))

(assert (= (and d!2360744 res!3140731) b!7912917))

(declare-fun m!8286542 () Bool)

(assert (=> d!2360744 m!8286542))

(declare-fun m!8286544 () Bool)

(assert (=> d!2360744 m!8286544))

(assert (=> b!7912917 m!8286544))

(assert (=> b!7912917 m!8286544))

(declare-fun m!8286546 () Bool)

(assert (=> b!7912917 m!8286546))

(assert (=> d!2360570 d!2360744))

(declare-fun d!2360746 () Bool)

(declare-fun lt!2688668 () Int)

(assert (=> d!2360746 (>= lt!2688668 0)))

(declare-fun e!4670990 () Int)

(assert (=> d!2360746 (= lt!2688668 e!4670990)))

(declare-fun c!1451810 () Bool)

(assert (=> d!2360746 (= c!1451810 ((_ is Nil!74390) (t!389951 input!1480)))))

(assert (=> d!2360746 (= (size!43175 (t!389951 input!1480)) lt!2688668)))

(declare-fun b!7912918 () Bool)

(assert (=> b!7912918 (= e!4670990 0)))

(declare-fun b!7912919 () Bool)

(assert (=> b!7912919 (= e!4670990 (+ 1 (size!43175 (t!389951 (t!389951 input!1480)))))))

(assert (= (and d!2360746 c!1451810) b!7912918))

(assert (= (and d!2360746 (not c!1451810)) b!7912919))

(declare-fun m!8286548 () Bool)

(assert (=> b!7912919 m!8286548))

(assert (=> b!7912424 d!2360746))

(declare-fun bm!734041 () Bool)

(declare-fun call!734047 () Regex!21379)

(declare-fun call!734048 () Regex!21379)

(assert (=> bm!734041 (= call!734047 call!734048)))

(declare-fun b!7912964 () Bool)

(declare-fun e!4671017 () Regex!21379)

(assert (=> b!7912964 (= e!4671017 (Union!21379 (Concat!30372 call!734047 (regTwo!43270 (regex!8676 rule!156))) EmptyLang!21379))))

(declare-fun b!7912965 () Bool)

(declare-fun c!1451829 () Bool)

(assert (=> b!7912965 (= c!1451829 ((_ is Union!21379) (regex!8676 rule!156)))))

(declare-fun e!4671014 () Regex!21379)

(declare-fun e!4671016 () Regex!21379)

(assert (=> b!7912965 (= e!4671014 e!4671016)))

(declare-fun b!7912966 () Bool)

(declare-fun call!734049 () Regex!21379)

(assert (=> b!7912966 (= e!4671016 (Union!21379 call!734049 call!734048))))

(declare-fun b!7912967 () Bool)

(declare-fun c!1451832 () Bool)

(assert (=> b!7912967 (= c!1451832 (nullable!9518 (regOne!43270 (regex!8676 rule!156))))))

(declare-fun e!4671013 () Regex!21379)

(assert (=> b!7912967 (= e!4671013 e!4671017)))

(declare-fun b!7912968 () Bool)

(assert (=> b!7912968 (= e!4671014 (ite (= call!733979 (c!1451654 (regex!8676 rule!156))) EmptyExpr!21379 EmptyLang!21379))))

(declare-fun bm!734042 () Bool)

(declare-fun c!1451831 () Bool)

(assert (=> bm!734042 (= call!734049 (derivativeStep!6458 (ite c!1451829 (regOne!43271 (regex!8676 rule!156)) (ite c!1451831 (reg!21708 (regex!8676 rule!156)) (regOne!43270 (regex!8676 rule!156)))) call!733979))))

(declare-fun bm!734043 () Bool)

(assert (=> bm!734043 (= call!734048 (derivativeStep!6458 (ite c!1451829 (regTwo!43271 (regex!8676 rule!156)) (ite c!1451832 (regTwo!43270 (regex!8676 rule!156)) (regOne!43270 (regex!8676 rule!156)))) call!733979))))

(declare-fun bm!734044 () Bool)

(declare-fun call!734046 () Regex!21379)

(assert (=> bm!734044 (= call!734046 call!734049)))

(declare-fun b!7912970 () Bool)

(declare-fun e!4671015 () Regex!21379)

(assert (=> b!7912970 (= e!4671015 EmptyLang!21379)))

(declare-fun b!7912971 () Bool)

(assert (=> b!7912971 (= e!4671013 (Concat!30372 call!734046 (regex!8676 rule!156)))))

(declare-fun b!7912972 () Bool)

(assert (=> b!7912972 (= e!4671015 e!4671014)))

(declare-fun c!1451830 () Bool)

(assert (=> b!7912972 (= c!1451830 ((_ is ElementMatch!21379) (regex!8676 rule!156)))))

(declare-fun b!7912973 () Bool)

(assert (=> b!7912973 (= e!4671017 (Union!21379 (Concat!30372 call!734046 (regTwo!43270 (regex!8676 rule!156))) call!734047))))

(declare-fun b!7912969 () Bool)

(assert (=> b!7912969 (= e!4671016 e!4671013)))

(assert (=> b!7912969 (= c!1451831 ((_ is Star!21379) (regex!8676 rule!156)))))

(declare-fun d!2360748 () Bool)

(declare-fun lt!2688673 () Regex!21379)

(assert (=> d!2360748 (validRegex!11683 lt!2688673)))

(assert (=> d!2360748 (= lt!2688673 e!4671015)))

(declare-fun c!1451833 () Bool)

(assert (=> d!2360748 (= c!1451833 (or ((_ is EmptyExpr!21379) (regex!8676 rule!156)) ((_ is EmptyLang!21379) (regex!8676 rule!156))))))

(assert (=> d!2360748 (validRegex!11683 (regex!8676 rule!156))))

(assert (=> d!2360748 (= (derivativeStep!6458 (regex!8676 rule!156) call!733979) lt!2688673)))

(assert (= (and d!2360748 c!1451833) b!7912970))

(assert (= (and d!2360748 (not c!1451833)) b!7912972))

(assert (= (and b!7912972 c!1451830) b!7912968))

(assert (= (and b!7912972 (not c!1451830)) b!7912965))

(assert (= (and b!7912965 c!1451829) b!7912966))

(assert (= (and b!7912965 (not c!1451829)) b!7912969))

(assert (= (and b!7912969 c!1451831) b!7912971))

(assert (= (and b!7912969 (not c!1451831)) b!7912967))

(assert (= (and b!7912967 c!1451832) b!7912973))

(assert (= (and b!7912967 (not c!1451832)) b!7912964))

(assert (= (or b!7912973 b!7912964) bm!734041))

(assert (= (or b!7912971 b!7912973) bm!734044))

(assert (= (or b!7912966 bm!734044) bm!734042))

(assert (= (or b!7912966 bm!734041) bm!734043))

(declare-fun m!8286578 () Bool)

(assert (=> b!7912967 m!8286578))

(declare-fun m!8286580 () Bool)

(assert (=> bm!734042 m!8286580))

(declare-fun m!8286586 () Bool)

(assert (=> bm!734043 m!8286586))

(declare-fun m!8286588 () Bool)

(assert (=> d!2360748 m!8286588))

(assert (=> d!2360748 m!8285922))

(assert (=> bm!733970 d!2360748))

(assert (=> b!7912406 d!2360740))

(assert (=> b!7912406 d!2360742))

(declare-fun d!2360768 () Bool)

(declare-fun c!1451839 () Bool)

(assert (=> d!2360768 (= c!1451839 ((_ is Node!15850) (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))))))

(declare-fun e!4671023 () Bool)

(assert (=> d!2360768 (= (inv!95465 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))) e!4671023)))

(declare-fun b!7912984 () Bool)

(assert (=> b!7912984 (= e!4671023 (inv!95467 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))))))

(declare-fun b!7912985 () Bool)

(declare-fun e!4671024 () Bool)

(assert (=> b!7912985 (= e!4671023 e!4671024)))

(declare-fun res!3140740 () Bool)

(assert (=> b!7912985 (= res!3140740 (not ((_ is Leaf!30156) (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))))))))

(assert (=> b!7912985 (=> res!3140740 e!4671024)))

(declare-fun b!7912986 () Bool)

(assert (=> b!7912986 (= e!4671024 (inv!95468 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))))))

(assert (= (and d!2360768 c!1451839) b!7912984))

(assert (= (and d!2360768 (not c!1451839)) b!7912985))

(assert (= (and b!7912985 (not res!3140740)) b!7912986))

(declare-fun m!8286592 () Bool)

(assert (=> b!7912984 m!8286592))

(declare-fun m!8286594 () Bool)

(assert (=> b!7912986 m!8286594))

(assert (=> b!7912581 d!2360768))

(declare-fun d!2360772 () Bool)

(assert (=> d!2360772 (= (isEmpty!42717 (_1!38535 lt!2688434)) ((_ is Nil!74390) (_1!38535 lt!2688434)))))

(assert (=> b!7912506 d!2360772))

(assert (=> bm!733929 d!2360554))

(assert (=> b!7912414 d!2360738))

(declare-fun b!7912987 () Bool)

(declare-fun e!4671028 () tuple2!70464)

(assert (=> b!7912987 (= e!4671028 (tuple2!70465 lt!2688435 call!733978))))

(declare-fun b!7912988 () Bool)

(declare-fun c!1451845 () Bool)

(declare-fun call!734060 () Bool)

(assert (=> b!7912988 (= c!1451845 call!734060)))

(declare-fun lt!2688677 () Unit!169467)

(declare-fun lt!2688684 () Unit!169467)

(assert (=> b!7912988 (= lt!2688677 lt!2688684)))

(assert (=> b!7912988 (= input!1480 lt!2688435)))

(declare-fun call!734059 () Unit!169467)

(assert (=> b!7912988 (= lt!2688684 call!734059)))

(declare-fun lt!2688679 () Unit!169467)

(declare-fun lt!2688676 () Unit!169467)

(assert (=> b!7912988 (= lt!2688679 lt!2688676)))

(declare-fun call!734055 () Bool)

(assert (=> b!7912988 call!734055))

(declare-fun call!734056 () Unit!169467)

(assert (=> b!7912988 (= lt!2688676 call!734056)))

(declare-fun e!4671029 () tuple2!70464)

(declare-fun e!4671030 () tuple2!70464)

(assert (=> b!7912988 (= e!4671029 e!4671030)))

(declare-fun bm!734050 () Bool)

(declare-fun call!734057 () List!74514)

(assert (=> bm!734050 (= call!734057 (tail!15722 call!733978))))

(declare-fun b!7912989 () Bool)

(declare-fun e!4671027 () tuple2!70464)

(assert (=> b!7912989 (= e!4671027 e!4671029)))

(declare-fun c!1451841 () Bool)

(assert (=> b!7912989 (= c!1451841 (= (+ (size!43175 Nil!74390) 1) (size!43175 input!1480)))))

(declare-fun b!7912990 () Bool)

(declare-fun e!4671026 () tuple2!70464)

(assert (=> b!7912990 (= e!4671026 e!4671028)))

(declare-fun lt!2688681 () tuple2!70464)

(declare-fun call!734054 () tuple2!70464)

(assert (=> b!7912990 (= lt!2688681 call!734054)))

(declare-fun c!1451840 () Bool)

(assert (=> b!7912990 (= c!1451840 (isEmpty!42717 (_1!38535 lt!2688681)))))

(declare-fun b!7912991 () Bool)

(assert (=> b!7912991 (= e!4671030 (tuple2!70465 lt!2688435 Nil!74390))))

(declare-fun b!7912992 () Bool)

(declare-fun e!4671025 () Unit!169467)

(declare-fun Unit!169484 () Unit!169467)

(assert (=> b!7912992 (= e!4671025 Unit!169484)))

(declare-fun bm!734051 () Bool)

(declare-fun call!734061 () Regex!21379)

(declare-fun lt!2688682 () List!74514)

(assert (=> bm!734051 (= call!734054 (findLongestMatchInner!2184 call!734061 lt!2688682 (+ (size!43175 Nil!74390) 1 1) call!734057 input!1480 (size!43175 input!1480)))))

(declare-fun b!7912993 () Bool)

(assert (=> b!7912993 (= e!4671026 call!734054)))

(declare-fun b!7912994 () Bool)

(assert (=> b!7912994 (= e!4671027 (tuple2!70465 Nil!74390 input!1480))))

(declare-fun bm!734052 () Bool)

(assert (=> bm!734052 (= call!734060 (nullable!9518 call!733982))))

(declare-fun bm!734053 () Bool)

(assert (=> bm!734053 (= call!734059 (lemmaIsPrefixSameLengthThenSameList!1580 input!1480 lt!2688435 input!1480))))

(declare-fun bm!734054 () Bool)

(declare-fun call!734058 () C!43088)

(assert (=> bm!734054 (= call!734058 (head!16179 call!733978))))

(declare-fun b!7912995 () Bool)

(declare-fun Unit!169485 () Unit!169467)

(assert (=> b!7912995 (= e!4671025 Unit!169485)))

(declare-fun lt!2688690 () Unit!169467)

(assert (=> b!7912995 (= lt!2688690 call!734056)))

(assert (=> b!7912995 call!734055))

(declare-fun lt!2688693 () Unit!169467)

(assert (=> b!7912995 (= lt!2688693 lt!2688690)))

(declare-fun lt!2688678 () Unit!169467)

(assert (=> b!7912995 (= lt!2688678 call!734059)))

(assert (=> b!7912995 (= input!1480 lt!2688435)))

(declare-fun lt!2688694 () Unit!169467)

(assert (=> b!7912995 (= lt!2688694 lt!2688678)))

(assert (=> b!7912995 false))

(declare-fun b!7912996 () Bool)

(declare-fun c!1451842 () Bool)

(assert (=> b!7912996 (= c!1451842 call!734060)))

(declare-fun lt!2688697 () Unit!169467)

(declare-fun lt!2688683 () Unit!169467)

(assert (=> b!7912996 (= lt!2688697 lt!2688683)))

(declare-fun lt!2688675 () List!74514)

(declare-fun lt!2688698 () C!43088)

(assert (=> b!7912996 (= (++!18222 (++!18222 lt!2688435 (Cons!74390 lt!2688698 Nil!74390)) lt!2688675) input!1480)))

(assert (=> b!7912996 (= lt!2688683 (lemmaMoveElementToOtherListKeepsConcatEq!3487 lt!2688435 lt!2688698 lt!2688675 input!1480))))

(assert (=> b!7912996 (= lt!2688675 (tail!15722 call!733978))))

(assert (=> b!7912996 (= lt!2688698 (head!16179 call!733978))))

(declare-fun lt!2688699 () Unit!169467)

(declare-fun lt!2688700 () Unit!169467)

(assert (=> b!7912996 (= lt!2688699 lt!2688700)))

(assert (=> b!7912996 (isPrefix!6487 (++!18222 lt!2688435 (Cons!74390 (head!16179 (getSuffix!3700 input!1480 lt!2688435)) Nil!74390)) input!1480)))

(assert (=> b!7912996 (= lt!2688700 (lemmaAddHeadSuffixToPrefixStillPrefix!1265 lt!2688435 input!1480))))

(declare-fun lt!2688685 () Unit!169467)

(declare-fun lt!2688687 () Unit!169467)

(assert (=> b!7912996 (= lt!2688685 lt!2688687)))

(assert (=> b!7912996 (= lt!2688687 (lemmaAddHeadSuffixToPrefixStillPrefix!1265 lt!2688435 input!1480))))

(assert (=> b!7912996 (= lt!2688682 (++!18222 lt!2688435 (Cons!74390 (head!16179 call!733978) Nil!74390)))))

(declare-fun lt!2688688 () Unit!169467)

(assert (=> b!7912996 (= lt!2688688 e!4671025)))

(declare-fun c!1451843 () Bool)

(assert (=> b!7912996 (= c!1451843 (= (size!43175 lt!2688435) (size!43175 input!1480)))))

(declare-fun lt!2688692 () Unit!169467)

(declare-fun lt!2688701 () Unit!169467)

(assert (=> b!7912996 (= lt!2688692 lt!2688701)))

(assert (=> b!7912996 (<= (size!43175 lt!2688435) (size!43175 input!1480))))

(assert (=> b!7912996 (= lt!2688701 (lemmaIsPrefixThenSmallerEqSize!1045 lt!2688435 input!1480))))

(assert (=> b!7912996 (= e!4671029 e!4671026)))

(declare-fun bm!734055 () Bool)

(assert (=> bm!734055 (= call!734055 (isPrefix!6487 input!1480 input!1480))))

(declare-fun b!7912997 () Bool)

(assert (=> b!7912997 (= e!4671028 lt!2688681)))

(declare-fun bm!734056 () Bool)

(assert (=> bm!734056 (= call!734056 (lemmaIsPrefixRefl!3998 input!1480 input!1480))))

(declare-fun b!7912998 () Bool)

(assert (=> b!7912998 (= e!4671030 (tuple2!70465 Nil!74390 input!1480))))

(declare-fun b!7912999 () Bool)

(declare-fun e!4671031 () Bool)

(declare-fun lt!2688702 () tuple2!70464)

(assert (=> b!7912999 (= e!4671031 (>= (size!43175 (_1!38535 lt!2688702)) (size!43175 lt!2688435)))))

(declare-fun b!7913000 () Bool)

(declare-fun e!4671032 () Bool)

(assert (=> b!7913000 (= e!4671032 e!4671031)))

(declare-fun res!3140741 () Bool)

(assert (=> b!7913000 (=> res!3140741 e!4671031)))

(assert (=> b!7913000 (= res!3140741 (isEmpty!42717 (_1!38535 lt!2688702)))))

(declare-fun d!2360774 () Bool)

(assert (=> d!2360774 e!4671032))

(declare-fun res!3140742 () Bool)

(assert (=> d!2360774 (=> (not res!3140742) (not e!4671032))))

(assert (=> d!2360774 (= res!3140742 (= (++!18222 (_1!38535 lt!2688702) (_2!38535 lt!2688702)) input!1480))))

(assert (=> d!2360774 (= lt!2688702 e!4671027)))

(declare-fun c!1451844 () Bool)

(assert (=> d!2360774 (= c!1451844 (lostCause!1931 call!733982))))

(declare-fun lt!2688686 () Unit!169467)

(declare-fun Unit!169486 () Unit!169467)

(assert (=> d!2360774 (= lt!2688686 Unit!169486)))

(assert (=> d!2360774 (= (getSuffix!3700 input!1480 lt!2688435) call!733978)))

(declare-fun lt!2688680 () Unit!169467)

(declare-fun lt!2688691 () Unit!169467)

(assert (=> d!2360774 (= lt!2688680 lt!2688691)))

(declare-fun lt!2688689 () List!74514)

(assert (=> d!2360774 (= call!733978 lt!2688689)))

(assert (=> d!2360774 (= lt!2688691 (lemmaSamePrefixThenSameSuffix!2947 lt!2688435 call!733978 lt!2688435 lt!2688689 input!1480))))

(assert (=> d!2360774 (= lt!2688689 (getSuffix!3700 input!1480 lt!2688435))))

(declare-fun lt!2688695 () Unit!169467)

(declare-fun lt!2688696 () Unit!169467)

(assert (=> d!2360774 (= lt!2688695 lt!2688696)))

(assert (=> d!2360774 (isPrefix!6487 lt!2688435 (++!18222 lt!2688435 call!733978))))

(assert (=> d!2360774 (= lt!2688696 (lemmaConcatTwoListThenFirstIsPrefix!3809 lt!2688435 call!733978))))

(assert (=> d!2360774 (validRegex!11683 call!733982)))

(assert (=> d!2360774 (= (findLongestMatchInner!2184 call!733982 lt!2688435 (+ (size!43175 Nil!74390) 1) call!733978 input!1480 (size!43175 input!1480)) lt!2688702)))

(declare-fun bm!734049 () Bool)

(assert (=> bm!734049 (= call!734061 (derivativeStep!6458 call!733982 call!734058))))

(assert (= (and d!2360774 c!1451844) b!7912994))

(assert (= (and d!2360774 (not c!1451844)) b!7912989))

(assert (= (and b!7912989 c!1451841) b!7912988))

(assert (= (and b!7912989 (not c!1451841)) b!7912996))

(assert (= (and b!7912988 c!1451845) b!7912991))

(assert (= (and b!7912988 (not c!1451845)) b!7912998))

(assert (= (and b!7912996 c!1451843) b!7912995))

(assert (= (and b!7912996 (not c!1451843)) b!7912992))

(assert (= (and b!7912996 c!1451842) b!7912990))

(assert (= (and b!7912996 (not c!1451842)) b!7912993))

(assert (= (and b!7912990 c!1451840) b!7912987))

(assert (= (and b!7912990 (not c!1451840)) b!7912997))

(assert (= (or b!7912990 b!7912993) bm!734054))

(assert (= (or b!7912990 b!7912993) bm!734050))

(assert (= (or b!7912990 b!7912993) bm!734049))

(assert (= (or b!7912990 b!7912993) bm!734051))

(assert (= (or b!7912988 b!7912996) bm!734052))

(assert (= (or b!7912988 b!7912995) bm!734055))

(assert (= (or b!7912988 b!7912995) bm!734056))

(assert (= (or b!7912988 b!7912995) bm!734053))

(assert (= (and d!2360774 res!3140742) b!7913000))

(assert (= (and b!7913000 (not res!3140741)) b!7912999))

(declare-fun m!8286600 () Bool)

(assert (=> bm!734052 m!8286600))

(declare-fun m!8286602 () Bool)

(assert (=> bm!734049 m!8286602))

(declare-fun m!8286604 () Bool)

(assert (=> b!7912996 m!8286604))

(assert (=> b!7912996 m!8285876))

(declare-fun m!8286608 () Bool)

(assert (=> b!7912996 m!8286608))

(declare-fun m!8286610 () Bool)

(assert (=> b!7912996 m!8286610))

(declare-fun m!8286612 () Bool)

(assert (=> b!7912996 m!8286612))

(declare-fun m!8286614 () Bool)

(assert (=> b!7912996 m!8286614))

(declare-fun m!8286616 () Bool)

(assert (=> b!7912996 m!8286616))

(declare-fun m!8286618 () Bool)

(assert (=> b!7912996 m!8286618))

(declare-fun m!8286620 () Bool)

(assert (=> b!7912996 m!8286620))

(declare-fun m!8286622 () Bool)

(assert (=> b!7912996 m!8286622))

(assert (=> b!7912996 m!8286612))

(declare-fun m!8286624 () Bool)

(assert (=> b!7912996 m!8286624))

(declare-fun m!8286626 () Bool)

(assert (=> b!7912996 m!8286626))

(assert (=> b!7912996 m!8286610))

(declare-fun m!8286628 () Bool)

(assert (=> b!7912996 m!8286628))

(assert (=> b!7912996 m!8286620))

(declare-fun m!8286630 () Bool)

(assert (=> b!7912996 m!8286630))

(assert (=> bm!734051 m!8285876))

(declare-fun m!8286632 () Bool)

(assert (=> bm!734051 m!8286632))

(assert (=> d!2360774 m!8286612))

(declare-fun m!8286634 () Bool)

(assert (=> d!2360774 m!8286634))

(assert (=> d!2360774 m!8286634))

(declare-fun m!8286638 () Bool)

(assert (=> d!2360774 m!8286638))

(declare-fun m!8286640 () Bool)

(assert (=> d!2360774 m!8286640))

(declare-fun m!8286642 () Bool)

(assert (=> d!2360774 m!8286642))

(declare-fun m!8286644 () Bool)

(assert (=> d!2360774 m!8286644))

(declare-fun m!8286646 () Bool)

(assert (=> d!2360774 m!8286646))

(declare-fun m!8286648 () Bool)

(assert (=> d!2360774 m!8286648))

(assert (=> bm!734055 m!8286040))

(declare-fun m!8286650 () Bool)

(assert (=> b!7913000 m!8286650))

(assert (=> bm!734054 m!8286604))

(assert (=> bm!734050 m!8286626))

(declare-fun m!8286652 () Bool)

(assert (=> b!7912990 m!8286652))

(declare-fun m!8286654 () Bool)

(assert (=> b!7912999 m!8286654))

(assert (=> b!7912999 m!8286630))

(assert (=> bm!734056 m!8286048))

(declare-fun m!8286656 () Bool)

(assert (=> bm!734053 m!8286656))

(assert (=> bm!733972 d!2360774))

(declare-fun d!2360780 () Bool)

(declare-fun nullableFct!3755 (Regex!21379) Bool)

(assert (=> d!2360780 (= (nullable!9518 (regex!8676 rule!156)) (nullableFct!3755 (regex!8676 rule!156)))))

(declare-fun bs!1968334 () Bool)

(assert (= bs!1968334 d!2360780))

(declare-fun m!8286662 () Bool)

(assert (=> bs!1968334 m!8286662))

(assert (=> b!7912415 d!2360780))

(declare-fun b!7913026 () Bool)

(declare-fun e!4671048 () Bool)

(declare-fun e!4671054 () Bool)

(assert (=> b!7913026 (= e!4671048 e!4671054)))

(declare-fun res!3140764 () Bool)

(assert (=> b!7913026 (=> (not res!3140764) (not e!4671054))))

(declare-fun lt!2688710 () Bool)

(assert (=> b!7913026 (= res!3140764 (not lt!2688710))))

(declare-fun d!2360786 () Bool)

(declare-fun e!4671050 () Bool)

(assert (=> d!2360786 e!4671050))

(declare-fun c!1451852 () Bool)

(assert (=> d!2360786 (= c!1451852 ((_ is EmptyExpr!21379) (regex!8676 rule!156)))))

(declare-fun e!4671049 () Bool)

(assert (=> d!2360786 (= lt!2688710 e!4671049)))

(declare-fun c!1451853 () Bool)

(assert (=> d!2360786 (= c!1451853 (isEmpty!42717 (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))))))

(assert (=> d!2360786 (validRegex!11683 (regex!8676 rule!156))))

(assert (=> d!2360786 (= (matchR!10698 (regex!8676 rule!156) (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))) lt!2688710)))

(declare-fun b!7913027 () Bool)

(declare-fun res!3140759 () Bool)

(declare-fun e!4671052 () Bool)

(assert (=> b!7913027 (=> res!3140759 e!4671052)))

(assert (=> b!7913027 (= res!3140759 (not (isEmpty!42717 (tail!15722 (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))))))))

(declare-fun b!7913028 () Bool)

(assert (=> b!7913028 (= e!4671054 e!4671052)))

(declare-fun res!3140761 () Bool)

(assert (=> b!7913028 (=> res!3140761 e!4671052)))

(declare-fun call!734063 () Bool)

(assert (=> b!7913028 (= res!3140761 call!734063)))

(declare-fun bm!734058 () Bool)

(assert (=> bm!734058 (= call!734063 (isEmpty!42717 (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))))))

(declare-fun b!7913029 () Bool)

(assert (=> b!7913029 (= e!4671052 (not (= (head!16179 (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))) (c!1451654 (regex!8676 rule!156)))))))

(declare-fun b!7913030 () Bool)

(declare-fun res!3140758 () Bool)

(declare-fun e!4671051 () Bool)

(assert (=> b!7913030 (=> (not res!3140758) (not e!4671051))))

(assert (=> b!7913030 (= res!3140758 (isEmpty!42717 (tail!15722 (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480))))))))

(declare-fun b!7913031 () Bool)

(declare-fun e!4671053 () Bool)

(assert (=> b!7913031 (= e!4671053 (not lt!2688710))))

(declare-fun b!7913032 () Bool)

(assert (=> b!7913032 (= e!4671050 e!4671053)))

(declare-fun c!1451854 () Bool)

(assert (=> b!7913032 (= c!1451854 ((_ is EmptyLang!21379) (regex!8676 rule!156)))))

(declare-fun b!7913033 () Bool)

(assert (=> b!7913033 (= e!4671049 (matchR!10698 (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480))))) (tail!15722 (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480))))))))

(declare-fun b!7913034 () Bool)

(declare-fun res!3140762 () Bool)

(assert (=> b!7913034 (=> res!3140762 e!4671048)))

(assert (=> b!7913034 (= res!3140762 (not ((_ is ElementMatch!21379) (regex!8676 rule!156))))))

(assert (=> b!7913034 (= e!4671053 e!4671048)))

(declare-fun b!7913035 () Bool)

(assert (=> b!7913035 (= e!4671051 (= (head!16179 (_1!38535 (findLongestMatchInner!2184 (regex!8676 rule!156) Nil!74390 (size!43175 Nil!74390) input!1480 input!1480 (size!43175 input!1480)))) (c!1451654 (regex!8676 rule!156))))))

(declare-fun b!7913036 () Bool)

(assert (=> b!7913036 (= e!4671049 (nullable!9518 (regex!8676 rule!156)))))

(declare-fun b!7913037 () Bool)

(assert (=> b!7913037 (= e!4671050 (= lt!2688710 call!734063))))

(declare-fun b!7913038 () Bool)

(declare-fun res!3140765 () Bool)

(assert (=> b!7913038 (=> res!3140765 e!4671048)))

(assert (=> b!7913038 (= res!3140765 e!4671051)))

(declare-fun res!3140760 () Bool)

(assert (=> b!7913038 (=> (not res!3140760) (not e!4671051))))

(assert (=> b!7913038 (= res!3140760 lt!2688710)))

(declare-fun b!7913039 () Bool)

(declare-fun res!3140763 () Bool)

(assert (=> b!7913039 (=> (not res!3140763) (not e!4671051))))

(assert (=> b!7913039 (= res!3140763 (not call!734063))))

(assert (= (and d!2360786 c!1451853) b!7913036))

(assert (= (and d!2360786 (not c!1451853)) b!7913033))

(assert (= (and d!2360786 c!1451852) b!7913037))

(assert (= (and d!2360786 (not c!1451852)) b!7913032))

(assert (= (and b!7913032 c!1451854) b!7913031))

(assert (= (and b!7913032 (not c!1451854)) b!7913034))

(assert (= (and b!7913034 (not res!3140762)) b!7913038))

(assert (= (and b!7913038 res!3140760) b!7913039))

(assert (= (and b!7913039 res!3140763) b!7913030))

(assert (= (and b!7913030 res!3140758) b!7913035))

(assert (= (and b!7913038 (not res!3140765)) b!7913026))

(assert (= (and b!7913026 res!3140764) b!7913028))

(assert (= (and b!7913028 (not res!3140761)) b!7913027))

(assert (= (and b!7913027 (not res!3140759)) b!7913029))

(assert (= (or b!7913037 b!7913028 b!7913039) bm!734058))

(declare-fun m!8286674 () Bool)

(assert (=> b!7913027 m!8286674))

(assert (=> b!7913027 m!8286674))

(declare-fun m!8286676 () Bool)

(assert (=> b!7913027 m!8286676))

(declare-fun m!8286678 () Bool)

(assert (=> b!7913033 m!8286678))

(assert (=> b!7913033 m!8286678))

(declare-fun m!8286680 () Bool)

(assert (=> b!7913033 m!8286680))

(assert (=> b!7913033 m!8286674))

(assert (=> b!7913033 m!8286680))

(assert (=> b!7913033 m!8286674))

(declare-fun m!8286682 () Bool)

(assert (=> b!7913033 m!8286682))

(assert (=> b!7913029 m!8286678))

(assert (=> b!7913030 m!8286674))

(assert (=> b!7913030 m!8286674))

(assert (=> b!7913030 m!8286676))

(assert (=> bm!734058 m!8286062))

(assert (=> b!7913036 m!8285920))

(assert (=> d!2360786 m!8286062))

(assert (=> d!2360786 m!8285922))

(assert (=> b!7913035 m!8286678))

(assert (=> b!7912521 d!2360786))

(assert (=> b!7912521 d!2360536))

(assert (=> b!7912521 d!2360534))

(assert (=> b!7912521 d!2360532))

(declare-fun d!2360790 () Bool)

(assert (=> d!2360790 (= input!1480 Nil!74390)))

(declare-fun lt!2688713 () Unit!169467)

(declare-fun choose!59764 (List!74514 List!74514 List!74514) Unit!169467)

(assert (=> d!2360790 (= lt!2688713 (choose!59764 input!1480 Nil!74390 input!1480))))

(assert (=> d!2360790 (isPrefix!6487 input!1480 input!1480)))

(assert (=> d!2360790 (= (lemmaIsPrefixSameLengthThenSameList!1580 input!1480 Nil!74390 input!1480) lt!2688713)))

(declare-fun bs!1968335 () Bool)

(assert (= bs!1968335 d!2360790))

(declare-fun m!8286684 () Bool)

(assert (=> bs!1968335 m!8286684))

(assert (=> bs!1968335 m!8286040))

(assert (=> bm!733974 d!2360790))

(declare-fun d!2360792 () Bool)

(declare-fun lt!2688714 () Int)

(assert (=> d!2360792 (>= lt!2688714 0)))

(declare-fun e!4671061 () Int)

(assert (=> d!2360792 (= lt!2688714 e!4671061)))

(declare-fun c!1451859 () Bool)

(assert (=> d!2360792 (= c!1451859 ((_ is Nil!74390) (originalCharacters!8911 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))))

(assert (=> d!2360792 (= (size!43175 (originalCharacters!8911 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))) lt!2688714)))

(declare-fun b!7913050 () Bool)

(assert (=> b!7913050 (= e!4671061 0)))

(declare-fun b!7913051 () Bool)

(assert (=> b!7913051 (= e!4671061 (+ 1 (size!43175 (t!389951 (originalCharacters!8911 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))))))

(assert (= (and d!2360792 c!1451859) b!7913050))

(assert (= (and d!2360792 (not c!1451859)) b!7913051))

(declare-fun m!8286686 () Bool)

(assert (=> b!7913051 m!8286686))

(assert (=> b!7912527 d!2360792))

(assert (=> b!7912586 d!2360780))

(assert (=> bm!733973 d!2360780))

(declare-fun d!2360794 () Bool)

(declare-fun lt!2688715 () Int)

(assert (=> d!2360794 (>= lt!2688715 0)))

(declare-fun e!4671062 () Int)

(assert (=> d!2360794 (= lt!2688715 e!4671062)))

(declare-fun c!1451860 () Bool)

(assert (=> d!2360794 (= c!1451860 ((_ is Nil!74390) (list!19329 lt!2688244)))))

(assert (=> d!2360794 (= (size!43175 (list!19329 lt!2688244)) lt!2688715)))

(declare-fun b!7913052 () Bool)

(assert (=> b!7913052 (= e!4671062 0)))

(declare-fun b!7913053 () Bool)

(assert (=> b!7913053 (= e!4671062 (+ 1 (size!43175 (t!389951 (list!19329 lt!2688244)))))))

(assert (= (and d!2360794 c!1451860) b!7913052))

(assert (= (and d!2360794 (not c!1451860)) b!7913053))

(declare-fun m!8286688 () Bool)

(assert (=> b!7913053 m!8286688))

(assert (=> d!2360546 d!2360794))

(assert (=> d!2360546 d!2360596))

(declare-fun d!2360796 () Bool)

(declare-fun lt!2688720 () Int)

(assert (=> d!2360796 (= lt!2688720 (size!43175 (list!19330 (c!1451653 lt!2688244))))))

(assert (=> d!2360796 (= lt!2688720 (ite ((_ is Empty!15850) (c!1451653 lt!2688244)) 0 (ite ((_ is Leaf!30156) (c!1451653 lt!2688244)) (csize!31931 (c!1451653 lt!2688244)) (csize!31930 (c!1451653 lt!2688244)))))))

(assert (=> d!2360796 (= (size!43177 (c!1451653 lt!2688244)) lt!2688720)))

(declare-fun bs!1968336 () Bool)

(assert (= bs!1968336 d!2360796))

(assert (=> bs!1968336 m!8286172))

(assert (=> bs!1968336 m!8286172))

(declare-fun m!8286696 () Bool)

(assert (=> bs!1968336 m!8286696))

(assert (=> d!2360546 d!2360796))

(declare-fun d!2360800 () Bool)

(assert (=> d!2360800 (= (list!19329 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (list!19330 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))))))

(declare-fun bs!1968338 () Bool)

(assert (= bs!1968338 d!2360800))

(declare-fun m!8286700 () Bool)

(assert (=> bs!1968338 m!8286700))

(assert (=> b!7912526 d!2360800))

(declare-fun b!7913061 () Bool)

(declare-fun e!4671066 () Bool)

(declare-fun e!4671074 () Bool)

(assert (=> b!7913061 (= e!4671066 e!4671074)))

(declare-fun res!3140777 () Bool)

(assert (=> b!7913061 (=> (not res!3140777) (not e!4671074))))

(declare-fun lt!2688723 () Bool)

(assert (=> b!7913061 (= res!3140777 (not lt!2688723))))

(declare-fun d!2360802 () Bool)

(declare-fun e!4671069 () Bool)

(assert (=> d!2360802 e!4671069))

(declare-fun c!1451863 () Bool)

(assert (=> d!2360802 (= c!1451863 ((_ is EmptyExpr!21379) (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 lt!2688248)))))))

(declare-fun e!4671067 () Bool)

(assert (=> d!2360802 (= lt!2688723 e!4671067)))

(declare-fun c!1451865 () Bool)

(assert (=> d!2360802 (= c!1451865 (isEmpty!42717 (tail!15722 (_1!38535 lt!2688248))))))

(assert (=> d!2360802 (validRegex!11683 (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 lt!2688248))))))

(assert (=> d!2360802 (= (matchR!10698 (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 lt!2688248))) (tail!15722 (_1!38535 lt!2688248))) lt!2688723)))

(declare-fun b!7913063 () Bool)

(declare-fun res!3140770 () Bool)

(declare-fun e!4671071 () Bool)

(assert (=> b!7913063 (=> res!3140770 e!4671071)))

(assert (=> b!7913063 (= res!3140770 (not (isEmpty!42717 (tail!15722 (tail!15722 (_1!38535 lt!2688248))))))))

(declare-fun b!7913065 () Bool)

(assert (=> b!7913065 (= e!4671074 e!4671071)))

(declare-fun res!3140774 () Bool)

(assert (=> b!7913065 (=> res!3140774 e!4671071)))

(declare-fun call!734064 () Bool)

(assert (=> b!7913065 (= res!3140774 call!734064)))

(declare-fun bm!734059 () Bool)

(assert (=> bm!734059 (= call!734064 (isEmpty!42717 (tail!15722 (_1!38535 lt!2688248))))))

(declare-fun b!7913066 () Bool)

(assert (=> b!7913066 (= e!4671071 (not (= (head!16179 (tail!15722 (_1!38535 lt!2688248))) (c!1451654 (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 lt!2688248)))))))))

(declare-fun b!7913067 () Bool)

(declare-fun res!3140769 () Bool)

(declare-fun e!4671070 () Bool)

(assert (=> b!7913067 (=> (not res!3140769) (not e!4671070))))

(assert (=> b!7913067 (= res!3140769 (isEmpty!42717 (tail!15722 (tail!15722 (_1!38535 lt!2688248)))))))

(declare-fun b!7913068 () Bool)

(declare-fun e!4671073 () Bool)

(assert (=> b!7913068 (= e!4671073 (not lt!2688723))))

(declare-fun b!7913069 () Bool)

(assert (=> b!7913069 (= e!4671069 e!4671073)))

(declare-fun c!1451866 () Bool)

(assert (=> b!7913069 (= c!1451866 ((_ is EmptyLang!21379) (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 lt!2688248)))))))

(declare-fun b!7913070 () Bool)

(assert (=> b!7913070 (= e!4671067 (matchR!10698 (derivativeStep!6458 (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 lt!2688248))) (head!16179 (tail!15722 (_1!38535 lt!2688248)))) (tail!15722 (tail!15722 (_1!38535 lt!2688248)))))))

(declare-fun b!7913071 () Bool)

(declare-fun res!3140775 () Bool)

(assert (=> b!7913071 (=> res!3140775 e!4671066)))

(assert (=> b!7913071 (= res!3140775 (not ((_ is ElementMatch!21379) (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 lt!2688248))))))))

(assert (=> b!7913071 (= e!4671073 e!4671066)))

(declare-fun b!7913072 () Bool)

(assert (=> b!7913072 (= e!4671070 (= (head!16179 (tail!15722 (_1!38535 lt!2688248))) (c!1451654 (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 lt!2688248))))))))

(declare-fun b!7913073 () Bool)

(assert (=> b!7913073 (= e!4671067 (nullable!9518 (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 lt!2688248)))))))

(declare-fun b!7913074 () Bool)

(assert (=> b!7913074 (= e!4671069 (= lt!2688723 call!734064))))

(declare-fun b!7913075 () Bool)

(declare-fun res!3140778 () Bool)

(assert (=> b!7913075 (=> res!3140778 e!4671066)))

(assert (=> b!7913075 (= res!3140778 e!4671070)))

(declare-fun res!3140773 () Bool)

(assert (=> b!7913075 (=> (not res!3140773) (not e!4671070))))

(assert (=> b!7913075 (= res!3140773 lt!2688723)))

(declare-fun b!7913076 () Bool)

(declare-fun res!3140776 () Bool)

(assert (=> b!7913076 (=> (not res!3140776) (not e!4671070))))

(assert (=> b!7913076 (= res!3140776 (not call!734064))))

(assert (= (and d!2360802 c!1451865) b!7913073))

(assert (= (and d!2360802 (not c!1451865)) b!7913070))

(assert (= (and d!2360802 c!1451863) b!7913074))

(assert (= (and d!2360802 (not c!1451863)) b!7913069))

(assert (= (and b!7913069 c!1451866) b!7913068))

(assert (= (and b!7913069 (not c!1451866)) b!7913071))

(assert (= (and b!7913071 (not res!3140775)) b!7913075))

(assert (= (and b!7913075 res!3140773) b!7913076))

(assert (= (and b!7913076 res!3140776) b!7913067))

(assert (= (and b!7913067 res!3140769) b!7913072))

(assert (= (and b!7913075 (not res!3140778)) b!7913061))

(assert (= (and b!7913061 res!3140777) b!7913065))

(assert (= (and b!7913065 (not res!3140774)) b!7913063))

(assert (= (and b!7913063 (not res!3140770)) b!7913066))

(assert (= (or b!7913074 b!7913065 b!7913076) bm!734059))

(assert (=> b!7913063 m!8285910))

(declare-fun m!8286714 () Bool)

(assert (=> b!7913063 m!8286714))

(assert (=> b!7913063 m!8286714))

(declare-fun m!8286716 () Bool)

(assert (=> b!7913063 m!8286716))

(assert (=> b!7913070 m!8285910))

(declare-fun m!8286718 () Bool)

(assert (=> b!7913070 m!8286718))

(assert (=> b!7913070 m!8285916))

(assert (=> b!7913070 m!8286718))

(declare-fun m!8286720 () Bool)

(assert (=> b!7913070 m!8286720))

(assert (=> b!7913070 m!8285910))

(assert (=> b!7913070 m!8286714))

(assert (=> b!7913070 m!8286720))

(assert (=> b!7913070 m!8286714))

(declare-fun m!8286722 () Bool)

(assert (=> b!7913070 m!8286722))

(assert (=> b!7913066 m!8285910))

(assert (=> b!7913066 m!8286718))

(assert (=> b!7913067 m!8285910))

(assert (=> b!7913067 m!8286714))

(assert (=> b!7913067 m!8286714))

(assert (=> b!7913067 m!8286716))

(assert (=> bm!734059 m!8285910))

(assert (=> bm!734059 m!8285912))

(assert (=> b!7913073 m!8285916))

(declare-fun m!8286724 () Bool)

(assert (=> b!7913073 m!8286724))

(assert (=> d!2360802 m!8285910))

(assert (=> d!2360802 m!8285912))

(assert (=> d!2360802 m!8285916))

(declare-fun m!8286726 () Bool)

(assert (=> d!2360802 m!8286726))

(assert (=> b!7913072 m!8285910))

(assert (=> b!7913072 m!8286718))

(assert (=> b!7912412 d!2360802))

(declare-fun bm!734060 () Bool)

(declare-fun call!734066 () Regex!21379)

(declare-fun call!734067 () Regex!21379)

(assert (=> bm!734060 (= call!734066 call!734067)))

(declare-fun b!7913077 () Bool)

(declare-fun e!4671079 () Regex!21379)

(assert (=> b!7913077 (= e!4671079 (Union!21379 (Concat!30372 call!734066 (regTwo!43270 (regex!8676 rule!156))) EmptyLang!21379))))

(declare-fun b!7913078 () Bool)

(declare-fun c!1451867 () Bool)

(assert (=> b!7913078 (= c!1451867 ((_ is Union!21379) (regex!8676 rule!156)))))

(declare-fun e!4671076 () Regex!21379)

(declare-fun e!4671078 () Regex!21379)

(assert (=> b!7913078 (= e!4671076 e!4671078)))

(declare-fun b!7913079 () Bool)

(declare-fun call!734068 () Regex!21379)

(assert (=> b!7913079 (= e!4671078 (Union!21379 call!734068 call!734067))))

(declare-fun b!7913080 () Bool)

(declare-fun c!1451870 () Bool)

(assert (=> b!7913080 (= c!1451870 (nullable!9518 (regOne!43270 (regex!8676 rule!156))))))

(declare-fun e!4671075 () Regex!21379)

(assert (=> b!7913080 (= e!4671075 e!4671079)))

(declare-fun b!7913081 () Bool)

(assert (=> b!7913081 (= e!4671076 (ite (= (head!16179 (_1!38535 lt!2688248)) (c!1451654 (regex!8676 rule!156))) EmptyExpr!21379 EmptyLang!21379))))

(declare-fun bm!734061 () Bool)

(declare-fun c!1451869 () Bool)

(assert (=> bm!734061 (= call!734068 (derivativeStep!6458 (ite c!1451867 (regOne!43271 (regex!8676 rule!156)) (ite c!1451869 (reg!21708 (regex!8676 rule!156)) (regOne!43270 (regex!8676 rule!156)))) (head!16179 (_1!38535 lt!2688248))))))

(declare-fun bm!734062 () Bool)

(assert (=> bm!734062 (= call!734067 (derivativeStep!6458 (ite c!1451867 (regTwo!43271 (regex!8676 rule!156)) (ite c!1451870 (regTwo!43270 (regex!8676 rule!156)) (regOne!43270 (regex!8676 rule!156)))) (head!16179 (_1!38535 lt!2688248))))))

(declare-fun bm!734063 () Bool)

(declare-fun call!734065 () Regex!21379)

(assert (=> bm!734063 (= call!734065 call!734068)))

(declare-fun b!7913083 () Bool)

(declare-fun e!4671077 () Regex!21379)

(assert (=> b!7913083 (= e!4671077 EmptyLang!21379)))

(declare-fun b!7913084 () Bool)

(assert (=> b!7913084 (= e!4671075 (Concat!30372 call!734065 (regex!8676 rule!156)))))

(declare-fun b!7913085 () Bool)

(assert (=> b!7913085 (= e!4671077 e!4671076)))

(declare-fun c!1451868 () Bool)

(assert (=> b!7913085 (= c!1451868 ((_ is ElementMatch!21379) (regex!8676 rule!156)))))

(declare-fun b!7913086 () Bool)

(assert (=> b!7913086 (= e!4671079 (Union!21379 (Concat!30372 call!734065 (regTwo!43270 (regex!8676 rule!156))) call!734066))))

(declare-fun b!7913082 () Bool)

(assert (=> b!7913082 (= e!4671078 e!4671075)))

(assert (=> b!7913082 (= c!1451869 ((_ is Star!21379) (regex!8676 rule!156)))))

(declare-fun d!2360808 () Bool)

(declare-fun lt!2688724 () Regex!21379)

(assert (=> d!2360808 (validRegex!11683 lt!2688724)))

(assert (=> d!2360808 (= lt!2688724 e!4671077)))

(declare-fun c!1451871 () Bool)

(assert (=> d!2360808 (= c!1451871 (or ((_ is EmptyExpr!21379) (regex!8676 rule!156)) ((_ is EmptyLang!21379) (regex!8676 rule!156))))))

(assert (=> d!2360808 (validRegex!11683 (regex!8676 rule!156))))

(assert (=> d!2360808 (= (derivativeStep!6458 (regex!8676 rule!156) (head!16179 (_1!38535 lt!2688248))) lt!2688724)))

(assert (= (and d!2360808 c!1451871) b!7913083))

(assert (= (and d!2360808 (not c!1451871)) b!7913085))

(assert (= (and b!7913085 c!1451868) b!7913081))

(assert (= (and b!7913085 (not c!1451868)) b!7913078))

(assert (= (and b!7913078 c!1451867) b!7913079))

(assert (= (and b!7913078 (not c!1451867)) b!7913082))

(assert (= (and b!7913082 c!1451869) b!7913084))

(assert (= (and b!7913082 (not c!1451869)) b!7913080))

(assert (= (and b!7913080 c!1451870) b!7913086))

(assert (= (and b!7913080 (not c!1451870)) b!7913077))

(assert (= (or b!7913086 b!7913077) bm!734060))

(assert (= (or b!7913084 b!7913086) bm!734063))

(assert (= (or b!7913079 bm!734063) bm!734061))

(assert (= (or b!7913079 bm!734060) bm!734062))

(assert (=> b!7913080 m!8286578))

(assert (=> bm!734061 m!8285914))

(declare-fun m!8286728 () Bool)

(assert (=> bm!734061 m!8286728))

(assert (=> bm!734062 m!8285914))

(declare-fun m!8286730 () Bool)

(assert (=> bm!734062 m!8286730))

(declare-fun m!8286732 () Bool)

(assert (=> d!2360808 m!8286732))

(assert (=> d!2360808 m!8285922))

(assert (=> b!7912412 d!2360808))

(assert (=> b!7912412 d!2360738))

(assert (=> b!7912412 d!2360742))

(declare-fun tp!2356879 () Bool)

(declare-fun tp!2356880 () Bool)

(declare-fun b!7913095 () Bool)

(declare-fun e!4671084 () Bool)

(assert (=> b!7913095 (= e!4671084 (and (inv!95465 (left!56779 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))))) tp!2356879 (inv!95465 (right!57109 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))))) tp!2356880))))

(declare-fun b!7913097 () Bool)

(declare-fun e!4671085 () Bool)

(declare-fun tp!2356881 () Bool)

(assert (=> b!7913097 (= e!4671085 tp!2356881)))

(declare-fun b!7913096 () Bool)

(declare-fun inv!95471 (IArray!31761) Bool)

(assert (=> b!7913096 (= e!4671084 (and (inv!95471 (xs!19232 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))))) e!4671085))))

(assert (=> b!7912532 (= tp!2356831 (and (inv!95465 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245)))))) e!4671084))))

(assert (= (and b!7912532 ((_ is Node!15850) (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))))) b!7913095))

(assert (= b!7913096 b!7913097))

(assert (= (and b!7912532 ((_ is Leaf!30156) (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))) (value!289241 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))))) b!7913096))

(declare-fun m!8286738 () Bool)

(assert (=> b!7913095 m!8286738))

(declare-fun m!8286740 () Bool)

(assert (=> b!7913095 m!8286740))

(declare-fun m!8286742 () Bool)

(assert (=> b!7913096 m!8286742))

(assert (=> b!7912532 m!8286068))

(declare-fun e!4671086 () Bool)

(assert (=> b!7912601 (= tp!2356866 e!4671086)))

(declare-fun b!7913099 () Bool)

(declare-fun tp!2356884 () Bool)

(declare-fun tp!2356886 () Bool)

(assert (=> b!7913099 (= e!4671086 (and tp!2356884 tp!2356886))))

(declare-fun b!7913098 () Bool)

(assert (=> b!7913098 (= e!4671086 tp_is_empty!53133)))

(declare-fun b!7913101 () Bool)

(declare-fun tp!2356883 () Bool)

(declare-fun tp!2356882 () Bool)

(assert (=> b!7913101 (= e!4671086 (and tp!2356883 tp!2356882))))

(declare-fun b!7913100 () Bool)

(declare-fun tp!2356885 () Bool)

(assert (=> b!7913100 (= e!4671086 tp!2356885)))

(assert (= (and b!7912601 ((_ is ElementMatch!21379) (regOne!43271 (regex!8676 rule!156)))) b!7913098))

(assert (= (and b!7912601 ((_ is Concat!30372) (regOne!43271 (regex!8676 rule!156)))) b!7913099))

(assert (= (and b!7912601 ((_ is Star!21379) (regOne!43271 (regex!8676 rule!156)))) b!7913100))

(assert (= (and b!7912601 ((_ is Union!21379) (regOne!43271 (regex!8676 rule!156)))) b!7913101))

(declare-fun e!4671087 () Bool)

(assert (=> b!7912601 (= tp!2356865 e!4671087)))

(declare-fun b!7913103 () Bool)

(declare-fun tp!2356889 () Bool)

(declare-fun tp!2356891 () Bool)

(assert (=> b!7913103 (= e!4671087 (and tp!2356889 tp!2356891))))

(declare-fun b!7913102 () Bool)

(assert (=> b!7913102 (= e!4671087 tp_is_empty!53133)))

(declare-fun b!7913105 () Bool)

(declare-fun tp!2356888 () Bool)

(declare-fun tp!2356887 () Bool)

(assert (=> b!7913105 (= e!4671087 (and tp!2356888 tp!2356887))))

(declare-fun b!7913104 () Bool)

(declare-fun tp!2356890 () Bool)

(assert (=> b!7913104 (= e!4671087 tp!2356890)))

(assert (= (and b!7912601 ((_ is ElementMatch!21379) (regTwo!43271 (regex!8676 rule!156)))) b!7913102))

(assert (= (and b!7912601 ((_ is Concat!30372) (regTwo!43271 (regex!8676 rule!156)))) b!7913103))

(assert (= (and b!7912601 ((_ is Star!21379) (regTwo!43271 (regex!8676 rule!156)))) b!7913104))

(assert (= (and b!7912601 ((_ is Union!21379) (regTwo!43271 (regex!8676 rule!156)))) b!7913105))

(declare-fun b!7913106 () Bool)

(declare-fun e!4671088 () Bool)

(declare-fun tp!2356892 () Bool)

(assert (=> b!7913106 (= e!4671088 (and tp_is_empty!53133 tp!2356892))))

(assert (=> b!7912606 (= tp!2356872 e!4671088)))

(assert (= (and b!7912606 ((_ is Cons!74390) (t!389951 (t!389951 input!1480)))) b!7913106))

(declare-fun e!4671089 () Bool)

(assert (=> b!7912600 (= tp!2356868 e!4671089)))

(declare-fun b!7913108 () Bool)

(declare-fun tp!2356895 () Bool)

(declare-fun tp!2356897 () Bool)

(assert (=> b!7913108 (= e!4671089 (and tp!2356895 tp!2356897))))

(declare-fun b!7913107 () Bool)

(assert (=> b!7913107 (= e!4671089 tp_is_empty!53133)))

(declare-fun b!7913110 () Bool)

(declare-fun tp!2356894 () Bool)

(declare-fun tp!2356893 () Bool)

(assert (=> b!7913110 (= e!4671089 (and tp!2356894 tp!2356893))))

(declare-fun b!7913109 () Bool)

(declare-fun tp!2356896 () Bool)

(assert (=> b!7913109 (= e!4671089 tp!2356896)))

(assert (= (and b!7912600 ((_ is ElementMatch!21379) (reg!21708 (regex!8676 rule!156)))) b!7913107))

(assert (= (and b!7912600 ((_ is Concat!30372) (reg!21708 (regex!8676 rule!156)))) b!7913108))

(assert (= (and b!7912600 ((_ is Star!21379) (reg!21708 (regex!8676 rule!156)))) b!7913109))

(assert (= (and b!7912600 ((_ is Union!21379) (reg!21708 (regex!8676 rule!156)))) b!7913110))

(declare-fun e!4671090 () Bool)

(declare-fun tp!2356899 () Bool)

(declare-fun b!7913111 () Bool)

(declare-fun tp!2356898 () Bool)

(assert (=> b!7913111 (= e!4671090 (and (inv!95465 (left!56779 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))))) tp!2356898 (inv!95465 (right!57109 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))))) tp!2356899))))

(declare-fun b!7913113 () Bool)

(declare-fun e!4671091 () Bool)

(declare-fun tp!2356900 () Bool)

(assert (=> b!7913113 (= e!4671091 tp!2356900)))

(declare-fun b!7913112 () Bool)

(assert (=> b!7913112 (= e!4671090 (and (inv!95471 (xs!19232 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))))) e!4671091))))

(assert (=> b!7912581 (= tp!2356854 (and (inv!95465 (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244)))) e!4671090))))

(assert (= (and b!7912581 ((_ is Node!15850) (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))))) b!7913111))

(assert (= b!7913112 b!7913113))

(assert (= (and b!7912581 ((_ is Leaf!30156) (c!1451653 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))))) b!7913112))

(declare-fun m!8286746 () Bool)

(assert (=> b!7913111 m!8286746))

(declare-fun m!8286748 () Bool)

(assert (=> b!7913111 m!8286748))

(declare-fun m!8286750 () Bool)

(assert (=> b!7913112 m!8286750))

(assert (=> b!7912581 m!8286120))

(declare-fun e!4671092 () Bool)

(assert (=> b!7912599 (= tp!2356867 e!4671092)))

(declare-fun b!7913115 () Bool)

(declare-fun tp!2356903 () Bool)

(declare-fun tp!2356905 () Bool)

(assert (=> b!7913115 (= e!4671092 (and tp!2356903 tp!2356905))))

(declare-fun b!7913114 () Bool)

(assert (=> b!7913114 (= e!4671092 tp_is_empty!53133)))

(declare-fun b!7913117 () Bool)

(declare-fun tp!2356902 () Bool)

(declare-fun tp!2356901 () Bool)

(assert (=> b!7913117 (= e!4671092 (and tp!2356902 tp!2356901))))

(declare-fun b!7913116 () Bool)

(declare-fun tp!2356904 () Bool)

(assert (=> b!7913116 (= e!4671092 tp!2356904)))

(assert (= (and b!7912599 ((_ is ElementMatch!21379) (regOne!43270 (regex!8676 rule!156)))) b!7913114))

(assert (= (and b!7912599 ((_ is Concat!30372) (regOne!43270 (regex!8676 rule!156)))) b!7913115))

(assert (= (and b!7912599 ((_ is Star!21379) (regOne!43270 (regex!8676 rule!156)))) b!7913116))

(assert (= (and b!7912599 ((_ is Union!21379) (regOne!43270 (regex!8676 rule!156)))) b!7913117))

(declare-fun e!4671095 () Bool)

(assert (=> b!7912599 (= tp!2356869 e!4671095)))

(declare-fun b!7913123 () Bool)

(declare-fun tp!2356908 () Bool)

(declare-fun tp!2356910 () Bool)

(assert (=> b!7913123 (= e!4671095 (and tp!2356908 tp!2356910))))

(declare-fun b!7913122 () Bool)

(assert (=> b!7913122 (= e!4671095 tp_is_empty!53133)))

(declare-fun b!7913125 () Bool)

(declare-fun tp!2356907 () Bool)

(declare-fun tp!2356906 () Bool)

(assert (=> b!7913125 (= e!4671095 (and tp!2356907 tp!2356906))))

(declare-fun b!7913124 () Bool)

(declare-fun tp!2356909 () Bool)

(assert (=> b!7913124 (= e!4671095 tp!2356909)))

(assert (= (and b!7912599 ((_ is ElementMatch!21379) (regTwo!43270 (regex!8676 rule!156)))) b!7913122))

(assert (= (and b!7912599 ((_ is Concat!30372) (regTwo!43270 (regex!8676 rule!156)))) b!7913123))

(assert (= (and b!7912599 ((_ is Star!21379) (regTwo!43270 (regex!8676 rule!156)))) b!7913124))

(assert (= (and b!7912599 ((_ is Union!21379) (regTwo!43270 (regex!8676 rule!156)))) b!7913125))

(declare-fun b_lambda!290159 () Bool)

(assert (= b_lambda!290129 (or (and b!7912318 b_free!135249 (= (toChars!11592 (transformation!8676 rule!156)) (toChars!11592 (transformation!8676 (rule!11974 (Token!15761 (apply!14383 (transformation!8676 rule!156) lt!2688244) rule!156 (size!43174 lt!2688244) (_1!38535 lt!2688245))))))) b_lambda!290159)))

(declare-fun b_lambda!290161 () Bool)

(assert (= b_lambda!290155 (or d!2360556 b_lambda!290161)))

(declare-fun bs!1968342 () Bool)

(declare-fun d!2360818 () Bool)

(assert (= bs!1968342 (and d!2360818 d!2360556)))

(assert (=> bs!1968342 (= (dynLambda!30185 lambda!472587 lt!2688244) (= (list!19329 (dynLambda!30181 (toChars!11592 (transformation!8676 rule!156)) (dynLambda!30180 (toValue!11733 (transformation!8676 rule!156)) lt!2688244))) (list!19329 lt!2688244)))))

(declare-fun b_lambda!290163 () Bool)

(assert (=> (not b_lambda!290163) (not bs!1968342)))

(assert (=> bs!1968342 t!389963))

(declare-fun b_and!353623 () Bool)

(assert (= b_and!353619 (and (=> t!389963 result!360680) b_and!353623)))

(declare-fun b_lambda!290165 () Bool)

(assert (=> (not b_lambda!290165) (not bs!1968342)))

(assert (=> bs!1968342 t!389953))

(declare-fun b_and!353625 () Bool)

(assert (= b_and!353621 (and (=> t!389953 result!360658) b_and!353625)))

(assert (=> bs!1968342 m!8286052))

(assert (=> bs!1968342 m!8286060))

(assert (=> bs!1968342 m!8286060))

(assert (=> bs!1968342 m!8286124))

(assert (=> bs!1968342 m!8286124))

(assert (=> bs!1968342 m!8286126))

(assert (=> d!2360598 d!2360818))

(check-sat (not bm!734058) (not b!7912738) (not b!7913096) (not b!7913111) (not b!7913104) (not b!7913103) (not b!7913105) (not b!7913109) (not b!7913125) (not b!7912834) (not b!7912684) (not b!7912884) (not b!7913070) (not b!7912837) (not b!7912845) (not d!2360730) (not bm!734000) (not b!7913106) (not b_next!136039) (not b!7913027) (not d!2360650) (not b!7912732) (not bm!734059) (not bm!734062) (not b!7913100) (not bm!733985) (not b!7912744) (not d!2360724) (not b!7913067) (not b_lambda!290159) (not d!2360598) (not b!7912747) (not bm!734049) (not d!2360594) (not d!2360780) (not b_lambda!290149) b_and!353623 (not d!2360774) (not b!7912996) (not b_lambda!290153) (not d!2360596) (not d!2360668) (not b!7912967) (not b!7913080) (not bm!733999) (not bm!733996) (not d!2360796) (not bm!734050) (not b!7912779) (not bm!733984) (not b!7912990) (not b!7912838) (not b!7913123) (not d!2360702) (not b!7912733) (not d!2360698) (not b!7912917) (not bm!734042) (not b!7912815) (not b!7912659) (not b!7913029) (not d!2360802) (not b!7912748) (not b!7913108) (not d!2360672) (not bs!1968342) (not d!2360608) (not bm!734056) (not b!7912842) (not b!7912775) (not bm!734001) (not b!7912919) (not b!7912999) (not b!7913030) (not b!7912783) (not b!7912984) tp_is_empty!53133 (not b_lambda!290165) (not b!7912814) (not b!7913117) (not b!7913124) (not d!2360714) (not d!2360800) (not bm!734053) (not bm!734002) (not b!7912776) (not b!7913053) (not d!2360744) (not b!7912716) (not b!7912722) (not b!7913101) (not bm!733998) (not bm!734003) (not d!2360706) (not b!7913073) (not b!7912885) (not b!7912690) (not bm!734051) (not bm!733997) (not d!2360626) (not d!2360790) (not bm!734052) (not b!7913035) (not b!7912718) (not b!7913036) (not d!2360652) (not d!2360662) (not b!7913112) (not d!2360690) (not b!7912774) (not b!7912890) (not b!7913110) (not b!7913051) (not b!7913116) (not b!7913113) (not d!2360748) (not b_next!136037) (not d!2360704) (not b!7912532) (not bm!734061) (not bm!734043) (not d!2360632) (not b!7913095) (not b!7913000) (not b!7912617) (not b!7912778) (not d!2360716) (not bm!734054) (not d!2360618) (not b!7912780) (not d!2360682) (not b!7913115) (not d!2360786) (not b!7912841) (not bm!734055) (not b!7912620) (not b!7912720) (not b!7912986) (not b!7912782) (not d!2360684) b_and!353625 (not b!7912888) (not b_lambda!290163) (not d!2360660) (not b!7912619) (not b!7913072) (not d!2360604) (not b!7912581) (not b_lambda!290151) (not b_lambda!290161) (not b!7913033) (not d!2360634) (not d!2360808) (not b!7912859) (not b!7913097) (not b!7913063) (not b!7912858) (not b!7912889) (not b!7913066) (not b!7913099) (not b!7912682))
(check-sat b_and!353625 b_and!353623 (not b_next!136037) (not b_next!136039))
