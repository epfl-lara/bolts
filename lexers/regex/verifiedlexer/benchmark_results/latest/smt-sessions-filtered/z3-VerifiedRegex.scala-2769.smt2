; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152342 () Bool)

(assert start!152342)

(declare-fun b!1612654 () Bool)

(declare-fun b_free!43351 () Bool)

(declare-fun b_next!44055 () Bool)

(assert (=> b!1612654 (= b_free!43351 (not b_next!44055))))

(declare-fun tp!470310 () Bool)

(declare-fun b_and!114333 () Bool)

(assert (=> b!1612654 (= tp!470310 b_and!114333)))

(declare-fun b_free!43353 () Bool)

(declare-fun b_next!44057 () Bool)

(assert (=> b!1612654 (= b_free!43353 (not b_next!44057))))

(declare-fun tp!470308 () Bool)

(declare-fun b_and!114335 () Bool)

(assert (=> b!1612654 (= tp!470308 b_and!114335)))

(declare-fun b!1612643 () Bool)

(declare-fun b_free!43355 () Bool)

(declare-fun b_next!44059 () Bool)

(assert (=> b!1612643 (= b_free!43355 (not b_next!44059))))

(declare-fun tp!470307 () Bool)

(declare-fun b_and!114337 () Bool)

(assert (=> b!1612643 (= tp!470307 b_and!114337)))

(declare-fun b_free!43357 () Bool)

(declare-fun b_next!44061 () Bool)

(assert (=> b!1612643 (= b_free!43357 (not b_next!44061))))

(declare-fun tp!470306 () Bool)

(declare-fun b_and!114339 () Bool)

(assert (=> b!1612643 (= tp!470306 b_and!114339)))

(declare-fun b!1612640 () Bool)

(declare-fun e!1034286 () Bool)

(declare-fun e!1034269 () Bool)

(declare-fun tp!470312 () Bool)

(assert (=> b!1612640 (= e!1034286 (and e!1034269 tp!470312))))

(declare-fun b!1612641 () Bool)

(declare-fun res!719186 () Bool)

(declare-fun e!1034288 () Bool)

(assert (=> b!1612641 (=> res!719186 e!1034288)))

(declare-datatypes ((C!9028 0))(
  ( (C!9029 (val!5110 Int)) )
))
(declare-datatypes ((List!17673 0))(
  ( (Nil!17603) (Cons!17603 (h!23004 C!9028) (t!148062 List!17673)) )
))
(declare-fun lt!575933 () List!17673)

(declare-datatypes ((List!17674 0))(
  ( (Nil!17604) (Cons!17604 (h!23005 (_ BitVec 16)) (t!148063 List!17674)) )
))
(declare-datatypes ((TokenValue!3189 0))(
  ( (FloatLiteralValue!6378 (text!22768 List!17674)) (TokenValueExt!3188 (__x!11680 Int)) (Broken!15945 (value!97968 List!17674)) (Object!3258) (End!3189) (Def!3189) (Underscore!3189) (Match!3189) (Else!3189) (Error!3189) (Case!3189) (If!3189) (Extends!3189) (Abstract!3189) (Class!3189) (Val!3189) (DelimiterValue!6378 (del!3249 List!17674)) (KeywordValue!3195 (value!97969 List!17674)) (CommentValue!6378 (value!97970 List!17674)) (WhitespaceValue!6378 (value!97971 List!17674)) (IndentationValue!3189 (value!97972 List!17674)) (String!20276) (Int32!3189) (Broken!15946 (value!97973 List!17674)) (Boolean!3190) (Unit!28290) (OperatorValue!3192 (op!3249 List!17674)) (IdentifierValue!6378 (value!97974 List!17674)) (IdentifierValue!6379 (value!97975 List!17674)) (WhitespaceValue!6379 (value!97976 List!17674)) (True!6378) (False!6378) (Broken!15947 (value!97977 List!17674)) (Broken!15948 (value!97978 List!17674)) (True!6379) (RightBrace!3189) (RightBracket!3189) (Colon!3189) (Null!3189) (Comma!3189) (LeftBracket!3189) (False!6379) (LeftBrace!3189) (ImaginaryLiteralValue!3189 (text!22769 List!17674)) (StringLiteralValue!9567 (value!97979 List!17674)) (EOFValue!3189 (value!97980 List!17674)) (IdentValue!3189 (value!97981 List!17674)) (DelimiterValue!6379 (value!97982 List!17674)) (DedentValue!3189 (value!97983 List!17674)) (NewLineValue!3189 (value!97984 List!17674)) (IntegerValue!9567 (value!97985 (_ BitVec 32)) (text!22770 List!17674)) (IntegerValue!9568 (value!97986 Int) (text!22771 List!17674)) (Times!3189) (Or!3189) (Equal!3189) (Minus!3189) (Broken!15949 (value!97987 List!17674)) (And!3189) (Div!3189) (LessEqual!3189) (Mod!3189) (Concat!7616) (Not!3189) (Plus!3189) (SpaceValue!3189 (value!97988 List!17674)) (IntegerValue!9569 (value!97989 Int) (text!22772 List!17674)) (StringLiteralValue!9568 (text!22773 List!17674)) (FloatLiteralValue!6379 (text!22774 List!17674)) (BytesLiteralValue!3189 (value!97990 List!17674)) (CommentValue!6379 (value!97991 List!17674)) (StringLiteralValue!9569 (value!97992 List!17674)) (ErrorTokenValue!3189 (msg!3250 List!17674)) )
))
(declare-datatypes ((IArray!11697 0))(
  ( (IArray!11698 (innerList!5906 List!17673)) )
))
(declare-datatypes ((Conc!5846 0))(
  ( (Node!5846 (left!14189 Conc!5846) (right!14519 Conc!5846) (csize!11922 Int) (cheight!6057 Int)) (Leaf!8616 (xs!8674 IArray!11697) (csize!11923 Int)) (Empty!5846) )
))
(declare-datatypes ((BalanceConc!11636 0))(
  ( (BalanceConc!11637 (c!262797 Conc!5846)) )
))
(declare-datatypes ((String!20277 0))(
  ( (String!20278 (value!97993 String)) )
))
(declare-datatypes ((Regex!4427 0))(
  ( (ElementMatch!4427 (c!262798 C!9028)) (Concat!7617 (regOne!9366 Regex!4427) (regTwo!9366 Regex!4427)) (EmptyExpr!4427) (Star!4427 (reg!4756 Regex!4427)) (EmptyLang!4427) (Union!4427 (regOne!9367 Regex!4427) (regTwo!9367 Regex!4427)) )
))
(declare-datatypes ((TokenValueInjection!6038 0))(
  ( (TokenValueInjection!6039 (toValue!4522 Int) (toChars!4381 Int)) )
))
(declare-datatypes ((Rule!5998 0))(
  ( (Rule!5999 (regex!3099 Regex!4427) (tag!3375 String!20277) (isSeparator!3099 Bool) (transformation!3099 TokenValueInjection!6038)) )
))
(declare-datatypes ((List!17675 0))(
  ( (Nil!17605) (Cons!17605 (h!23006 Rule!5998) (t!148064 List!17675)) )
))
(declare-fun rules!1846 () List!17675)

(declare-datatypes ((LexerInterface!2728 0))(
  ( (LexerInterfaceExt!2725 (__x!11681 Int)) (Lexer!2726) )
))
(declare-fun thiss!17113 () LexerInterface!2728)

(declare-datatypes ((Token!5764 0))(
  ( (Token!5765 (value!97994 TokenValue!3189) (rule!4919 Rule!5998) (size!14156 Int) (originalCharacters!3913 List!17673)) )
))
(declare-datatypes ((List!17676 0))(
  ( (Nil!17606) (Cons!17606 (h!23007 Token!5764) (t!148065 List!17676)) )
))
(declare-datatypes ((IArray!11699 0))(
  ( (IArray!11700 (innerList!5907 List!17676)) )
))
(declare-datatypes ((Conc!5847 0))(
  ( (Node!5847 (left!14190 Conc!5847) (right!14520 Conc!5847) (csize!11924 Int) (cheight!6058 Int)) (Leaf!8617 (xs!8675 IArray!11699) (csize!11925 Int)) (Empty!5847) )
))
(declare-datatypes ((BalanceConc!11638 0))(
  ( (BalanceConc!11639 (c!262799 Conc!5847)) )
))
(declare-fun isEmpty!10636 (BalanceConc!11638) Bool)

(declare-datatypes ((tuple2!17102 0))(
  ( (tuple2!17103 (_1!9953 BalanceConc!11638) (_2!9953 BalanceConc!11636)) )
))
(declare-fun lex!1212 (LexerInterface!2728 List!17675 BalanceConc!11636) tuple2!17102)

(declare-fun seqFromList!1947 (List!17673) BalanceConc!11636)

(assert (=> b!1612641 (= res!719186 (isEmpty!10636 (_1!9953 (lex!1212 thiss!17113 rules!1846 (seqFromList!1947 lt!575933)))))))

(declare-fun b!1612642 () Bool)

(declare-fun e!1034276 () Bool)

(declare-fun lt!575947 () List!17673)

(declare-fun lt!575944 () BalanceConc!11636)

(declare-fun head!3310 (BalanceConc!11636) C!9028)

(assert (=> b!1612642 (= e!1034276 (= lt!575947 (Cons!17603 (head!3310 lt!575944) Nil!17603)))))

(declare-fun e!1034278 () Bool)

(assert (=> b!1612643 (= e!1034278 (and tp!470307 tp!470306))))

(declare-fun b!1612644 () Bool)

(declare-fun res!719172 () Bool)

(declare-fun e!1034281 () Bool)

(assert (=> b!1612644 (=> res!719172 e!1034281)))

(declare-fun tokens!457 () List!17676)

(declare-fun separableTokensPredicate!670 (LexerInterface!2728 Token!5764 Token!5764 List!17675) Bool)

(assert (=> b!1612644 (= res!719172 (not (separableTokensPredicate!670 thiss!17113 (h!23007 tokens!457) (h!23007 (t!148065 tokens!457)) rules!1846)))))

(declare-fun tp!470314 () Bool)

(declare-fun e!1034285 () Bool)

(declare-fun e!1034272 () Bool)

(declare-fun b!1612645 () Bool)

(declare-fun inv!23014 (String!20277) Bool)

(declare-fun inv!23017 (TokenValueInjection!6038) Bool)

(assert (=> b!1612645 (= e!1034272 (and tp!470314 (inv!23014 (tag!3375 (rule!4919 (h!23007 tokens!457)))) (inv!23017 (transformation!3099 (rule!4919 (h!23007 tokens!457)))) e!1034285))))

(declare-fun b!1612646 () Bool)

(assert (=> b!1612646 (= e!1034281 e!1034288)))

(declare-fun res!719170 () Bool)

(assert (=> b!1612646 (=> res!719170 e!1034288)))

(declare-fun lt!575928 () List!17673)

(declare-fun lt!575941 () List!17673)

(assert (=> b!1612646 (= res!719170 (or (not (= lt!575928 lt!575941)) (not (= lt!575941 lt!575933)) (not (= lt!575928 lt!575933))))))

(declare-fun printList!843 (LexerInterface!2728 List!17676) List!17673)

(assert (=> b!1612646 (= lt!575941 (printList!843 thiss!17113 (Cons!17606 (h!23007 tokens!457) Nil!17606)))))

(declare-fun lt!575940 () BalanceConc!11636)

(declare-fun list!6871 (BalanceConc!11636) List!17673)

(assert (=> b!1612646 (= lt!575928 (list!6871 lt!575940))))

(declare-fun lt!575952 () BalanceConc!11638)

(declare-fun printTailRec!781 (LexerInterface!2728 BalanceConc!11638 Int BalanceConc!11636) BalanceConc!11636)

(assert (=> b!1612646 (= lt!575940 (printTailRec!781 thiss!17113 lt!575952 0 (BalanceConc!11637 Empty!5846)))))

(declare-fun print!1259 (LexerInterface!2728 BalanceConc!11638) BalanceConc!11636)

(assert (=> b!1612646 (= lt!575940 (print!1259 thiss!17113 lt!575952))))

(declare-fun singletonSeq!1476 (Token!5764) BalanceConc!11638)

(assert (=> b!1612646 (= lt!575952 (singletonSeq!1476 (h!23007 tokens!457)))))

(declare-fun lt!575939 () List!17673)

(declare-datatypes ((tuple2!17104 0))(
  ( (tuple2!17105 (_1!9954 Token!5764) (_2!9954 List!17673)) )
))
(declare-datatypes ((Option!3201 0))(
  ( (None!3200) (Some!3200 (v!24171 tuple2!17104)) )
))
(declare-fun lt!575937 () Option!3201)

(declare-fun maxPrefix!1292 (LexerInterface!2728 List!17675 List!17673) Option!3201)

(assert (=> b!1612646 (= lt!575937 (maxPrefix!1292 thiss!17113 rules!1846 lt!575939))))

(declare-fun e!1034275 () Bool)

(declare-fun b!1612647 () Bool)

(declare-fun e!1034279 () Bool)

(declare-fun tp!470309 () Bool)

(declare-fun inv!23018 (Token!5764) Bool)

(assert (=> b!1612647 (= e!1034275 (and (inv!23018 (h!23007 tokens!457)) e!1034279 tp!470309))))

(declare-fun tp!470313 () Bool)

(declare-fun b!1612649 () Bool)

(declare-fun inv!21 (TokenValue!3189) Bool)

(assert (=> b!1612649 (= e!1034279 (and (inv!21 (value!97994 (h!23007 tokens!457))) e!1034272 tp!470313))))

(declare-fun b!1612650 () Bool)

(declare-fun e!1034270 () Bool)

(declare-fun e!1034287 () Bool)

(assert (=> b!1612650 (= e!1034270 e!1034287)))

(declare-fun res!719177 () Bool)

(assert (=> b!1612650 (=> res!719177 e!1034287)))

(declare-datatypes ((tuple2!17106 0))(
  ( (tuple2!17107 (_1!9955 Token!5764) (_2!9955 BalanceConc!11636)) )
))
(declare-datatypes ((Option!3202 0))(
  ( (None!3201) (Some!3201 (v!24172 tuple2!17106)) )
))
(declare-fun isDefined!2568 (Option!3202) Bool)

(declare-fun maxPrefixZipperSequence!623 (LexerInterface!2728 List!17675 BalanceConc!11636) Option!3202)

(assert (=> b!1612650 (= res!719177 (not (isDefined!2568 (maxPrefixZipperSequence!623 thiss!17113 rules!1846 (seqFromList!1947 (originalCharacters!3913 (h!23007 tokens!457)))))))))

(assert (=> b!1612650 e!1034276))

(declare-fun res!719183 () Bool)

(assert (=> b!1612650 (=> (not res!719183) (not e!1034276))))

(assert (=> b!1612650 (= res!719183 (= lt!575933 (originalCharacters!3913 (h!23007 tokens!457))))))

(declare-fun b!1612651 () Bool)

(declare-fun res!719171 () Bool)

(declare-fun e!1034280 () Bool)

(assert (=> b!1612651 (=> (not res!719171) (not e!1034280))))

(declare-fun rulesProduceEachTokenIndividuallyList!930 (LexerInterface!2728 List!17675 List!17676) Bool)

(assert (=> b!1612651 (= res!719171 (rulesProduceEachTokenIndividuallyList!930 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1612652 () Bool)

(declare-fun e!1034273 () Bool)

(assert (=> b!1612652 (= e!1034273 e!1034270)))

(declare-fun res!719185 () Bool)

(assert (=> b!1612652 (=> res!719185 e!1034270)))

(declare-fun lt!575950 () Regex!4427)

(declare-fun prefixMatch!362 (Regex!4427 List!17673) Bool)

(declare-fun ++!4633 (List!17673 List!17673) List!17673)

(assert (=> b!1612652 (= res!719185 (prefixMatch!362 lt!575950 (++!4633 lt!575933 lt!575947)))))

(declare-fun lt!575936 () BalanceConc!11636)

(assert (=> b!1612652 (= lt!575947 (list!6871 lt!575936))))

(declare-fun b!1612653 () Bool)

(declare-fun res!719181 () Bool)

(assert (=> b!1612653 (=> (not res!719181) (not e!1034276))))

(declare-fun head!3311 (List!17673) C!9028)

(assert (=> b!1612653 (= res!719181 (= lt!575947 (Cons!17603 (head!3311 (originalCharacters!3913 (h!23007 (t!148065 tokens!457)))) Nil!17603)))))

(assert (=> b!1612654 (= e!1034285 (and tp!470310 tp!470308))))

(declare-fun b!1612655 () Bool)

(declare-fun e!1034283 () Bool)

(assert (=> b!1612655 (= e!1034283 e!1034273)))

(declare-fun res!719173 () Bool)

(assert (=> b!1612655 (=> res!719173 e!1034273)))

(declare-fun lt!575930 () BalanceConc!11636)

(declare-fun prefixMatchZipperSequence!467 (Regex!4427 BalanceConc!11636) Bool)

(declare-fun ++!4634 (BalanceConc!11636 BalanceConc!11636) BalanceConc!11636)

(assert (=> b!1612655 (= res!719173 (prefixMatchZipperSequence!467 lt!575950 (++!4634 lt!575930 lt!575936)))))

(declare-fun singletonSeq!1477 (C!9028) BalanceConc!11636)

(declare-fun apply!4408 (BalanceConc!11636 Int) C!9028)

(declare-fun charsOf!1748 (Token!5764) BalanceConc!11636)

(assert (=> b!1612655 (= lt!575936 (singletonSeq!1477 (apply!4408 (charsOf!1748 (h!23007 (t!148065 tokens!457))) 0)))))

(declare-fun rulesRegex!489 (LexerInterface!2728 List!17675) Regex!4427)

(assert (=> b!1612655 (= lt!575950 (rulesRegex!489 thiss!17113 rules!1846))))

(declare-fun tp!470311 () Bool)

(declare-fun b!1612656 () Bool)

(assert (=> b!1612656 (= e!1034269 (and tp!470311 (inv!23014 (tag!3375 (h!23006 rules!1846))) (inv!23017 (transformation!3099 (h!23006 rules!1846))) e!1034278))))

(declare-fun b!1612657 () Bool)

(declare-fun res!719175 () Bool)

(assert (=> b!1612657 (=> (not res!719175) (not e!1034276))))

(declare-fun lt!575951 () List!17673)

(assert (=> b!1612657 (= res!719175 (= lt!575947 (Cons!17603 (head!3311 lt!575951) Nil!17603)))))

(declare-fun b!1612658 () Bool)

(declare-fun res!719178 () Bool)

(assert (=> b!1612658 (=> (not res!719178) (not e!1034280))))

(declare-fun isEmpty!10637 (List!17675) Bool)

(assert (=> b!1612658 (= res!719178 (not (isEmpty!10637 rules!1846)))))

(declare-fun b!1612659 () Bool)

(declare-fun res!719182 () Bool)

(assert (=> b!1612659 (=> (not res!719182) (not e!1034280))))

(get-info :version)

(assert (=> b!1612659 (= res!719182 (and (not ((_ is Nil!17606) tokens!457)) (not ((_ is Nil!17606) (t!148065 tokens!457)))))))

(declare-fun b!1612660 () Bool)

(declare-fun e!1034271 () Bool)

(declare-fun e!1034282 () Bool)

(assert (=> b!1612660 (= e!1034271 (not e!1034282))))

(declare-fun res!719169 () Bool)

(assert (=> b!1612660 (=> res!719169 e!1034282)))

(declare-fun lt!575934 () List!17676)

(assert (=> b!1612660 (= res!719169 (not (= lt!575934 (t!148065 tokens!457))))))

(declare-fun lt!575935 () tuple2!17102)

(declare-fun list!6872 (BalanceConc!11638) List!17676)

(assert (=> b!1612660 (= lt!575934 (list!6872 (_1!9953 lt!575935)))))

(declare-datatypes ((Unit!28291 0))(
  ( (Unit!28292) )
))
(declare-fun lt!575946 () Unit!28291)

(declare-fun theoremInvertabilityWhenTokenListSeparable!173 (LexerInterface!2728 List!17675 List!17676) Unit!28291)

(assert (=> b!1612660 (= lt!575946 (theoremInvertabilityWhenTokenListSeparable!173 thiss!17113 rules!1846 (t!148065 tokens!457)))))

(declare-fun lt!575931 () List!17673)

(declare-fun isPrefix!1359 (List!17673 List!17673) Bool)

(assert (=> b!1612660 (isPrefix!1359 lt!575933 lt!575931)))

(declare-fun lt!575929 () Unit!28291)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!884 (List!17673 List!17673) Unit!28291)

(assert (=> b!1612660 (= lt!575929 (lemmaConcatTwoListThenFirstIsPrefix!884 lt!575933 lt!575951))))

(declare-fun b!1612648 () Bool)

(assert (=> b!1612648 (= e!1034288 e!1034283)))

(declare-fun res!719168 () Bool)

(assert (=> b!1612648 (=> res!719168 e!1034283)))

(declare-fun isDefined!2569 (Option!3201) Bool)

(assert (=> b!1612648 (= res!719168 (not (isDefined!2569 lt!575937)))))

(declare-fun lt!575938 () Unit!28291)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!302 (LexerInterface!2728 List!17675 List!17673 List!17673) Unit!28291)

(assert (=> b!1612648 (= lt!575938 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!302 thiss!17113 rules!1846 lt!575933 lt!575951))))

(declare-fun res!719179 () Bool)

(assert (=> start!152342 (=> (not res!719179) (not e!1034280))))

(assert (=> start!152342 (= res!719179 ((_ is Lexer!2726) thiss!17113))))

(assert (=> start!152342 e!1034280))

(assert (=> start!152342 true))

(assert (=> start!152342 e!1034286))

(assert (=> start!152342 e!1034275))

(declare-fun b!1612661 () Bool)

(declare-fun res!719180 () Bool)

(assert (=> b!1612661 (=> (not res!719180) (not e!1034280))))

(declare-fun rulesInvariant!2397 (LexerInterface!2728 List!17675) Bool)

(assert (=> b!1612661 (= res!719180 (rulesInvariant!2397 thiss!17113 rules!1846))))

(declare-fun b!1612662 () Bool)

(assert (=> b!1612662 (= e!1034280 e!1034271)))

(declare-fun res!719184 () Bool)

(assert (=> b!1612662 (=> (not res!719184) (not e!1034271))))

(assert (=> b!1612662 (= res!719184 (= lt!575939 lt!575931))))

(assert (=> b!1612662 (= lt!575931 (++!4633 lt!575933 lt!575951))))

(declare-fun lt!575943 () BalanceConc!11636)

(assert (=> b!1612662 (= lt!575939 (list!6871 lt!575943))))

(assert (=> b!1612662 (= lt!575951 (list!6871 lt!575944))))

(assert (=> b!1612662 (= lt!575933 (list!6871 lt!575930))))

(assert (=> b!1612662 (= lt!575930 (charsOf!1748 (h!23007 tokens!457)))))

(assert (=> b!1612662 (= lt!575935 (lex!1212 thiss!17113 rules!1846 lt!575944))))

(declare-fun lt!575945 () BalanceConc!11638)

(assert (=> b!1612662 (= lt!575944 (print!1259 thiss!17113 lt!575945))))

(declare-fun seqFromList!1948 (List!17676) BalanceConc!11638)

(assert (=> b!1612662 (= lt!575945 (seqFromList!1948 (t!148065 tokens!457)))))

(assert (=> b!1612662 (= lt!575943 (print!1259 thiss!17113 (seqFromList!1948 tokens!457)))))

(declare-fun b!1612663 () Bool)

(declare-fun res!719167 () Bool)

(assert (=> b!1612663 (=> res!719167 e!1034288)))

(declare-fun rulesProduceIndividualToken!1380 (LexerInterface!2728 List!17675 Token!5764) Bool)

(assert (=> b!1612663 (= res!719167 (not (rulesProduceIndividualToken!1380 thiss!17113 rules!1846 (h!23007 tokens!457))))))

(declare-fun b!1612664 () Bool)

(assert (=> b!1612664 (= e!1034282 e!1034281)))

(declare-fun res!719174 () Bool)

(assert (=> b!1612664 (=> res!719174 e!1034281)))

(declare-fun lt!575942 () List!17676)

(declare-fun lt!575948 () List!17676)

(assert (=> b!1612664 (= res!719174 (or (not (= lt!575934 lt!575942)) (not (= lt!575942 lt!575948))))))

(assert (=> b!1612664 (= lt!575942 (list!6872 lt!575945))))

(assert (=> b!1612664 (= lt!575934 lt!575948)))

(declare-fun prepend!605 (BalanceConc!11638 Token!5764) BalanceConc!11638)

(assert (=> b!1612664 (= lt!575948 (list!6872 (prepend!605 (seqFromList!1948 (t!148065 (t!148065 tokens!457))) (h!23007 (t!148065 tokens!457)))))))

(declare-fun lt!575949 () Unit!28291)

(declare-fun seqFromListBHdTlConstructive!176 (Token!5764 List!17676 BalanceConc!11638) Unit!28291)

(assert (=> b!1612664 (= lt!575949 (seqFromListBHdTlConstructive!176 (h!23007 (t!148065 tokens!457)) (t!148065 (t!148065 tokens!457)) (_1!9953 lt!575935)))))

(declare-fun b!1612665 () Bool)

(assert (=> b!1612665 (= e!1034287 true)))

(declare-fun lt!575932 () Bool)

(declare-fun rulesValidInductive!944 (LexerInterface!2728 List!17675) Bool)

(assert (=> b!1612665 (= lt!575932 (rulesValidInductive!944 thiss!17113 rules!1846))))

(declare-fun b!1612666 () Bool)

(declare-fun res!719176 () Bool)

(assert (=> b!1612666 (=> (not res!719176) (not e!1034280))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!421 (LexerInterface!2728 List!17676 List!17675) Bool)

(assert (=> b!1612666 (= res!719176 (tokensListTwoByTwoPredicateSeparableList!421 thiss!17113 tokens!457 rules!1846))))

(assert (= (and start!152342 res!719179) b!1612658))

(assert (= (and b!1612658 res!719178) b!1612661))

(assert (= (and b!1612661 res!719180) b!1612651))

(assert (= (and b!1612651 res!719171) b!1612666))

(assert (= (and b!1612666 res!719176) b!1612659))

(assert (= (and b!1612659 res!719182) b!1612662))

(assert (= (and b!1612662 res!719184) b!1612660))

(assert (= (and b!1612660 (not res!719169)) b!1612664))

(assert (= (and b!1612664 (not res!719174)) b!1612644))

(assert (= (and b!1612644 (not res!719172)) b!1612646))

(assert (= (and b!1612646 (not res!719170)) b!1612663))

(assert (= (and b!1612663 (not res!719167)) b!1612641))

(assert (= (and b!1612641 (not res!719186)) b!1612648))

(assert (= (and b!1612648 (not res!719168)) b!1612655))

(assert (= (and b!1612655 (not res!719173)) b!1612652))

(assert (= (and b!1612652 (not res!719185)) b!1612650))

(assert (= (and b!1612650 res!719183) b!1612653))

(assert (= (and b!1612653 res!719181) b!1612657))

(assert (= (and b!1612657 res!719175) b!1612642))

(assert (= (and b!1612650 (not res!719177)) b!1612665))

(assert (= b!1612656 b!1612643))

(assert (= b!1612640 b!1612656))

(assert (= (and start!152342 ((_ is Cons!17605) rules!1846)) b!1612640))

(assert (= b!1612645 b!1612654))

(assert (= b!1612649 b!1612645))

(assert (= b!1612647 b!1612649))

(assert (= (and start!152342 ((_ is Cons!17606) tokens!457)) b!1612647))

(declare-fun m!1930409 () Bool)

(assert (=> b!1612641 m!1930409))

(assert (=> b!1612641 m!1930409))

(declare-fun m!1930411 () Bool)

(assert (=> b!1612641 m!1930411))

(declare-fun m!1930413 () Bool)

(assert (=> b!1612641 m!1930413))

(declare-fun m!1930415 () Bool)

(assert (=> b!1612644 m!1930415))

(declare-fun m!1930417 () Bool)

(assert (=> b!1612646 m!1930417))

(declare-fun m!1930419 () Bool)

(assert (=> b!1612646 m!1930419))

(declare-fun m!1930421 () Bool)

(assert (=> b!1612646 m!1930421))

(declare-fun m!1930423 () Bool)

(assert (=> b!1612646 m!1930423))

(declare-fun m!1930425 () Bool)

(assert (=> b!1612646 m!1930425))

(declare-fun m!1930427 () Bool)

(assert (=> b!1612646 m!1930427))

(declare-fun m!1930429 () Bool)

(assert (=> b!1612649 m!1930429))

(declare-fun m!1930431 () Bool)

(assert (=> b!1612648 m!1930431))

(declare-fun m!1930433 () Bool)

(assert (=> b!1612648 m!1930433))

(declare-fun m!1930435 () Bool)

(assert (=> b!1612642 m!1930435))

(declare-fun m!1930437 () Bool)

(assert (=> b!1612665 m!1930437))

(declare-fun m!1930439 () Bool)

(assert (=> b!1612653 m!1930439))

(declare-fun m!1930441 () Bool)

(assert (=> b!1612650 m!1930441))

(assert (=> b!1612650 m!1930441))

(declare-fun m!1930443 () Bool)

(assert (=> b!1612650 m!1930443))

(assert (=> b!1612650 m!1930443))

(declare-fun m!1930445 () Bool)

(assert (=> b!1612650 m!1930445))

(declare-fun m!1930447 () Bool)

(assert (=> b!1612662 m!1930447))

(declare-fun m!1930449 () Bool)

(assert (=> b!1612662 m!1930449))

(declare-fun m!1930451 () Bool)

(assert (=> b!1612662 m!1930451))

(declare-fun m!1930453 () Bool)

(assert (=> b!1612662 m!1930453))

(declare-fun m!1930455 () Bool)

(assert (=> b!1612662 m!1930455))

(declare-fun m!1930457 () Bool)

(assert (=> b!1612662 m!1930457))

(declare-fun m!1930459 () Bool)

(assert (=> b!1612662 m!1930459))

(declare-fun m!1930461 () Bool)

(assert (=> b!1612662 m!1930461))

(assert (=> b!1612662 m!1930455))

(declare-fun m!1930463 () Bool)

(assert (=> b!1612662 m!1930463))

(declare-fun m!1930465 () Bool)

(assert (=> b!1612662 m!1930465))

(declare-fun m!1930467 () Bool)

(assert (=> b!1612660 m!1930467))

(declare-fun m!1930469 () Bool)

(assert (=> b!1612660 m!1930469))

(declare-fun m!1930471 () Bool)

(assert (=> b!1612660 m!1930471))

(declare-fun m!1930473 () Bool)

(assert (=> b!1612660 m!1930473))

(declare-fun m!1930475 () Bool)

(assert (=> b!1612645 m!1930475))

(declare-fun m!1930477 () Bool)

(assert (=> b!1612645 m!1930477))

(declare-fun m!1930479 () Bool)

(assert (=> b!1612647 m!1930479))

(declare-fun m!1930481 () Bool)

(assert (=> b!1612661 m!1930481))

(declare-fun m!1930483 () Bool)

(assert (=> b!1612657 m!1930483))

(declare-fun m!1930485 () Bool)

(assert (=> b!1612658 m!1930485))

(declare-fun m!1930487 () Bool)

(assert (=> b!1612651 m!1930487))

(declare-fun m!1930489 () Bool)

(assert (=> b!1612656 m!1930489))

(declare-fun m!1930491 () Bool)

(assert (=> b!1612656 m!1930491))

(declare-fun m!1930493 () Bool)

(assert (=> b!1612655 m!1930493))

(declare-fun m!1930495 () Bool)

(assert (=> b!1612655 m!1930495))

(declare-fun m!1930497 () Bool)

(assert (=> b!1612655 m!1930497))

(declare-fun m!1930499 () Bool)

(assert (=> b!1612655 m!1930499))

(declare-fun m!1930501 () Bool)

(assert (=> b!1612655 m!1930501))

(assert (=> b!1612655 m!1930499))

(declare-fun m!1930503 () Bool)

(assert (=> b!1612655 m!1930503))

(assert (=> b!1612655 m!1930495))

(assert (=> b!1612655 m!1930503))

(declare-fun m!1930505 () Bool)

(assert (=> b!1612652 m!1930505))

(assert (=> b!1612652 m!1930505))

(declare-fun m!1930507 () Bool)

(assert (=> b!1612652 m!1930507))

(declare-fun m!1930509 () Bool)

(assert (=> b!1612652 m!1930509))

(declare-fun m!1930511 () Bool)

(assert (=> b!1612666 m!1930511))

(declare-fun m!1930513 () Bool)

(assert (=> b!1612664 m!1930513))

(declare-fun m!1930515 () Bool)

(assert (=> b!1612664 m!1930515))

(declare-fun m!1930517 () Bool)

(assert (=> b!1612664 m!1930517))

(declare-fun m!1930519 () Bool)

(assert (=> b!1612664 m!1930519))

(declare-fun m!1930521 () Bool)

(assert (=> b!1612664 m!1930521))

(assert (=> b!1612664 m!1930517))

(assert (=> b!1612664 m!1930519))

(declare-fun m!1930523 () Bool)

(assert (=> b!1612663 m!1930523))

(check-sat (not b!1612665) (not b_next!44059) (not b!1612652) (not b!1612642) (not b!1612648) (not b!1612646) (not b!1612651) (not b!1612653) (not b!1612666) b_and!114337 (not b!1612649) (not b!1612641) (not b!1612645) (not b!1612655) (not b!1612662) (not b!1612661) b_and!114335 (not b_next!44057) (not b!1612664) (not b!1612650) (not b!1612644) b_and!114333 (not b!1612657) (not b!1612656) (not b_next!44055) (not b!1612663) (not b!1612658) b_and!114339 (not b_next!44061) (not b!1612660) (not b!1612647) (not b!1612640))
(check-sat (not b_next!44059) b_and!114333 (not b_next!44055) b_and!114339 (not b_next!44061) b_and!114337 b_and!114335 (not b_next!44057))
