; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!148942 () Bool)

(assert start!148942)

(declare-fun b!1585805 () Bool)

(declare-fun b_free!42855 () Bool)

(declare-fun b_next!43559 () Bool)

(assert (=> b!1585805 (= b_free!42855 (not b_next!43559))))

(declare-fun tp!466226 () Bool)

(declare-fun b_and!111173 () Bool)

(assert (=> b!1585805 (= tp!466226 b_and!111173)))

(declare-fun b_free!42857 () Bool)

(declare-fun b_next!43561 () Bool)

(assert (=> b!1585805 (= b_free!42857 (not b_next!43561))))

(declare-fun tp!466230 () Bool)

(declare-fun b_and!111175 () Bool)

(assert (=> b!1585805 (= tp!466230 b_and!111175)))

(declare-fun b!1585806 () Bool)

(declare-fun b_free!42859 () Bool)

(declare-fun b_next!43563 () Bool)

(assert (=> b!1585806 (= b_free!42859 (not b_next!43563))))

(declare-fun tp!466232 () Bool)

(declare-fun b_and!111177 () Bool)

(assert (=> b!1585806 (= tp!466232 b_and!111177)))

(declare-fun b_free!42861 () Bool)

(declare-fun b_next!43565 () Bool)

(assert (=> b!1585806 (= b_free!42861 (not b_next!43565))))

(declare-fun tp!466227 () Bool)

(declare-fun b_and!111179 () Bool)

(assert (=> b!1585806 (= tp!466227 b_and!111179)))

(declare-fun b!1585804 () Bool)

(declare-fun res!707172 () Bool)

(declare-fun e!1018544 () Bool)

(assert (=> b!1585804 (=> (not res!707172) (not e!1018544))))

(declare-datatypes ((List!17487 0))(
  ( (Nil!17417) (Cons!17417 (h!22818 (_ BitVec 16)) (t!144198 List!17487)) )
))
(declare-datatypes ((TokenValue!3159 0))(
  ( (FloatLiteralValue!6318 (text!22558 List!17487)) (TokenValueExt!3158 (__x!11620 Int)) (Broken!15795 (value!97113 List!17487)) (Object!3228) (End!3159) (Def!3159) (Underscore!3159) (Match!3159) (Else!3159) (Error!3159) (Case!3159) (If!3159) (Extends!3159) (Abstract!3159) (Class!3159) (Val!3159) (DelimiterValue!6318 (del!3219 List!17487)) (KeywordValue!3165 (value!97114 List!17487)) (CommentValue!6318 (value!97115 List!17487)) (WhitespaceValue!6318 (value!97116 List!17487)) (IndentationValue!3159 (value!97117 List!17487)) (String!20126) (Int32!3159) (Broken!15796 (value!97118 List!17487)) (Boolean!3160) (Unit!27322) (OperatorValue!3162 (op!3219 List!17487)) (IdentifierValue!6318 (value!97119 List!17487)) (IdentifierValue!6319 (value!97120 List!17487)) (WhitespaceValue!6319 (value!97121 List!17487)) (True!6318) (False!6318) (Broken!15797 (value!97122 List!17487)) (Broken!15798 (value!97123 List!17487)) (True!6319) (RightBrace!3159) (RightBracket!3159) (Colon!3159) (Null!3159) (Comma!3159) (LeftBracket!3159) (False!6319) (LeftBrace!3159) (ImaginaryLiteralValue!3159 (text!22559 List!17487)) (StringLiteralValue!9477 (value!97124 List!17487)) (EOFValue!3159 (value!97125 List!17487)) (IdentValue!3159 (value!97126 List!17487)) (DelimiterValue!6319 (value!97127 List!17487)) (DedentValue!3159 (value!97128 List!17487)) (NewLineValue!3159 (value!97129 List!17487)) (IntegerValue!9477 (value!97130 (_ BitVec 32)) (text!22560 List!17487)) (IntegerValue!9478 (value!97131 Int) (text!22561 List!17487)) (Times!3159) (Or!3159) (Equal!3159) (Minus!3159) (Broken!15799 (value!97132 List!17487)) (And!3159) (Div!3159) (LessEqual!3159) (Mod!3159) (Concat!7556) (Not!3159) (Plus!3159) (SpaceValue!3159 (value!97133 List!17487)) (IntegerValue!9479 (value!97134 Int) (text!22562 List!17487)) (StringLiteralValue!9478 (text!22563 List!17487)) (FloatLiteralValue!6319 (text!22564 List!17487)) (BytesLiteralValue!3159 (value!97135 List!17487)) (CommentValue!6319 (value!97136 List!17487)) (StringLiteralValue!9479 (value!97137 List!17487)) (ErrorTokenValue!3159 (msg!3220 List!17487)) )
))
(declare-datatypes ((C!8968 0))(
  ( (C!8969 (val!5080 Int)) )
))
(declare-datatypes ((List!17488 0))(
  ( (Nil!17418) (Cons!17418 (h!22819 C!8968) (t!144199 List!17488)) )
))
(declare-datatypes ((IArray!11577 0))(
  ( (IArray!11578 (innerList!5846 List!17488)) )
))
(declare-datatypes ((Conc!5786 0))(
  ( (Node!5786 (left!14070 Conc!5786) (right!14400 Conc!5786) (csize!11802 Int) (cheight!5997 Int)) (Leaf!8541 (xs!8594 IArray!11577) (csize!11803 Int)) (Empty!5786) )
))
(declare-datatypes ((BalanceConc!11516 0))(
  ( (BalanceConc!11517 (c!257069 Conc!5786)) )
))
(declare-datatypes ((Regex!4397 0))(
  ( (ElementMatch!4397 (c!257070 C!8968)) (Concat!7557 (regOne!9306 Regex!4397) (regTwo!9306 Regex!4397)) (EmptyExpr!4397) (Star!4397 (reg!4726 Regex!4397)) (EmptyLang!4397) (Union!4397 (regOne!9307 Regex!4397) (regTwo!9307 Regex!4397)) )
))
(declare-datatypes ((String!20127 0))(
  ( (String!20128 (value!97138 String)) )
))
(declare-datatypes ((TokenValueInjection!5978 0))(
  ( (TokenValueInjection!5979 (toValue!4480 Int) (toChars!4339 Int)) )
))
(declare-datatypes ((Rule!5938 0))(
  ( (Rule!5939 (regex!3069 Regex!4397) (tag!3339 String!20127) (isSeparator!3069 Bool) (transformation!3069 TokenValueInjection!5978)) )
))
(declare-datatypes ((List!17489 0))(
  ( (Nil!17419) (Cons!17419 (h!22820 Rule!5938) (t!144200 List!17489)) )
))
(declare-fun rules!1846 () List!17489)

(declare-fun isEmpty!10442 (List!17489) Bool)

(assert (=> b!1585804 (= res!707172 (not (isEmpty!10442 rules!1846)))))

(declare-fun e!1018545 () Bool)

(assert (=> b!1585805 (= e!1018545 (and tp!466226 tp!466230))))

(declare-fun e!1018550 () Bool)

(assert (=> b!1585806 (= e!1018550 (and tp!466232 tp!466227))))

(declare-fun b!1585807 () Bool)

(declare-fun e!1018552 () Bool)

(assert (=> b!1585807 (= e!1018552 true)))

(declare-fun lt!558011 () Bool)

(declare-datatypes ((LexerInterface!2698 0))(
  ( (LexerInterfaceExt!2695 (__x!11621 Int)) (Lexer!2696) )
))
(declare-fun thiss!17113 () LexerInterface!2698)

(declare-datatypes ((Token!5704 0))(
  ( (Token!5705 (value!97139 TokenValue!3159) (rule!4873 Rule!5938) (size!14018 Int) (originalCharacters!3883 List!17488)) )
))
(declare-datatypes ((List!17490 0))(
  ( (Nil!17420) (Cons!17420 (h!22821 Token!5704) (t!144201 List!17490)) )
))
(declare-fun tokens!457 () List!17490)

(declare-fun lt!558020 () BalanceConc!11516)

(declare-fun prefixMatchZipperSequence!415 (Regex!4397 BalanceConc!11516) Bool)

(declare-fun rulesRegex!459 (LexerInterface!2698 List!17489) Regex!4397)

(declare-fun ++!4539 (BalanceConc!11516 BalanceConc!11516) BalanceConc!11516)

(declare-fun singletonSeq!1416 (C!8968) BalanceConc!11516)

(declare-fun apply!4252 (BalanceConc!11516 Int) C!8968)

(declare-fun charsOf!1718 (Token!5704) BalanceConc!11516)

(assert (=> b!1585807 (= lt!558011 (prefixMatchZipperSequence!415 (rulesRegex!459 thiss!17113 rules!1846) (++!4539 lt!558020 (singletonSeq!1416 (apply!4252 (charsOf!1718 (h!22821 (t!144201 tokens!457))) 0)))))))

(declare-fun b!1585809 () Bool)

(declare-fun e!1018557 () Bool)

(assert (=> b!1585809 (= e!1018544 e!1018557)))

(declare-fun res!707169 () Bool)

(assert (=> b!1585809 (=> (not res!707169) (not e!1018557))))

(declare-fun lt!558017 () List!17488)

(declare-fun lt!558010 () List!17488)

(assert (=> b!1585809 (= res!707169 (= lt!558017 lt!558010))))

(declare-fun lt!558013 () List!17488)

(declare-fun lt!558018 () List!17488)

(declare-fun ++!4540 (List!17488 List!17488) List!17488)

(assert (=> b!1585809 (= lt!558010 (++!4540 lt!558013 lt!558018))))

(declare-fun lt!558015 () BalanceConc!11516)

(declare-fun list!6755 (BalanceConc!11516) List!17488)

(assert (=> b!1585809 (= lt!558017 (list!6755 lt!558015))))

(declare-fun lt!558022 () BalanceConc!11516)

(assert (=> b!1585809 (= lt!558018 (list!6755 lt!558022))))

(assert (=> b!1585809 (= lt!558013 (list!6755 lt!558020))))

(assert (=> b!1585809 (= lt!558020 (charsOf!1718 (h!22821 tokens!457)))))

(declare-datatypes ((IArray!11579 0))(
  ( (IArray!11580 (innerList!5847 List!17490)) )
))
(declare-datatypes ((Conc!5787 0))(
  ( (Node!5787 (left!14071 Conc!5787) (right!14401 Conc!5787) (csize!11804 Int) (cheight!5998 Int)) (Leaf!8542 (xs!8595 IArray!11579) (csize!11805 Int)) (Empty!5787) )
))
(declare-datatypes ((BalanceConc!11518 0))(
  ( (BalanceConc!11519 (c!257071 Conc!5787)) )
))
(declare-datatypes ((tuple2!16904 0))(
  ( (tuple2!16905 (_1!9854 BalanceConc!11518) (_2!9854 BalanceConc!11516)) )
))
(declare-fun lt!558016 () tuple2!16904)

(declare-fun lex!1182 (LexerInterface!2698 List!17489 BalanceConc!11516) tuple2!16904)

(assert (=> b!1585809 (= lt!558016 (lex!1182 thiss!17113 rules!1846 lt!558022))))

(declare-fun lt!558007 () BalanceConc!11518)

(declare-fun print!1229 (LexerInterface!2698 BalanceConc!11518) BalanceConc!11516)

(assert (=> b!1585809 (= lt!558022 (print!1229 thiss!17113 lt!558007))))

(declare-fun seqFromList!1887 (List!17490) BalanceConc!11518)

(assert (=> b!1585809 (= lt!558007 (seqFromList!1887 (t!144201 tokens!457)))))

(assert (=> b!1585809 (= lt!558015 (print!1229 thiss!17113 (seqFromList!1887 tokens!457)))))

(declare-fun b!1585810 () Bool)

(declare-fun res!707174 () Bool)

(declare-fun e!1018549 () Bool)

(assert (=> b!1585810 (=> res!707174 e!1018549)))

(declare-fun isEmpty!10443 (BalanceConc!11518) Bool)

(declare-fun seqFromList!1888 (List!17488) BalanceConc!11516)

(assert (=> b!1585810 (= res!707174 (isEmpty!10443 (_1!9854 (lex!1182 thiss!17113 rules!1846 (seqFromList!1888 lt!558013)))))))

(declare-fun e!1018558 () Bool)

(declare-fun b!1585811 () Bool)

(declare-fun e!1018543 () Bool)

(declare-fun tp!466225 () Bool)

(declare-fun inv!21 (TokenValue!3159) Bool)

(assert (=> b!1585811 (= e!1018558 (and (inv!21 (value!97139 (h!22821 tokens!457))) e!1018543 tp!466225))))

(declare-fun b!1585812 () Bool)

(declare-fun res!707171 () Bool)

(assert (=> b!1585812 (=> (not res!707171) (not e!1018544))))

(declare-fun rulesInvariant!2367 (LexerInterface!2698 List!17489) Bool)

(assert (=> b!1585812 (= res!707171 (rulesInvariant!2367 thiss!17113 rules!1846))))

(declare-fun b!1585813 () Bool)

(declare-fun e!1018546 () Bool)

(declare-fun e!1018555 () Bool)

(declare-fun tp!466231 () Bool)

(assert (=> b!1585813 (= e!1018546 (and e!1018555 tp!466231))))

(declare-fun b!1585814 () Bool)

(declare-fun tp!466229 () Bool)

(declare-fun inv!22835 (String!20127) Bool)

(declare-fun inv!22838 (TokenValueInjection!5978) Bool)

(assert (=> b!1585814 (= e!1018543 (and tp!466229 (inv!22835 (tag!3339 (rule!4873 (h!22821 tokens!457)))) (inv!22838 (transformation!3069 (rule!4873 (h!22821 tokens!457)))) e!1018545))))

(declare-fun b!1585815 () Bool)

(declare-fun res!707168 () Bool)

(assert (=> b!1585815 (=> res!707168 e!1018549)))

(declare-fun rulesProduceIndividualToken!1350 (LexerInterface!2698 List!17489 Token!5704) Bool)

(assert (=> b!1585815 (= res!707168 (not (rulesProduceIndividualToken!1350 thiss!17113 rules!1846 (h!22821 tokens!457))))))

(declare-fun b!1585816 () Bool)

(declare-fun res!707167 () Bool)

(assert (=> b!1585816 (=> (not res!707167) (not e!1018544))))

(get-info :version)

(assert (=> b!1585816 (= res!707167 (and (not ((_ is Nil!17420) tokens!457)) (not ((_ is Nil!17420) (t!144201 tokens!457)))))))

(declare-fun b!1585817 () Bool)

(declare-fun res!707162 () Bool)

(assert (=> b!1585817 (=> (not res!707162) (not e!1018544))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!391 (LexerInterface!2698 List!17490 List!17489) Bool)

(assert (=> b!1585817 (= res!707162 (tokensListTwoByTwoPredicateSeparableList!391 thiss!17113 tokens!457 rules!1846))))

(declare-fun tp!466228 () Bool)

(declare-fun b!1585818 () Bool)

(assert (=> b!1585818 (= e!1018555 (and tp!466228 (inv!22835 (tag!3339 (h!22820 rules!1846))) (inv!22838 (transformation!3069 (h!22820 rules!1846))) e!1018550))))

(declare-fun tp!466224 () Bool)

(declare-fun e!1018556 () Bool)

(declare-fun b!1585808 () Bool)

(declare-fun inv!22839 (Token!5704) Bool)

(assert (=> b!1585808 (= e!1018556 (and (inv!22839 (h!22821 tokens!457)) e!1018558 tp!466224))))

(declare-fun res!707164 () Bool)

(assert (=> start!148942 (=> (not res!707164) (not e!1018544))))

(assert (=> start!148942 (= res!707164 ((_ is Lexer!2696) thiss!17113))))

(assert (=> start!148942 e!1018544))

(assert (=> start!148942 true))

(assert (=> start!148942 e!1018546))

(assert (=> start!148942 e!1018556))

(declare-fun b!1585819 () Bool)

(declare-fun e!1018554 () Bool)

(assert (=> b!1585819 (= e!1018557 (not e!1018554))))

(declare-fun res!707165 () Bool)

(assert (=> b!1585819 (=> res!707165 e!1018554)))

(declare-fun lt!558014 () List!17490)

(assert (=> b!1585819 (= res!707165 (not (= lt!558014 (t!144201 tokens!457))))))

(declare-fun list!6756 (BalanceConc!11518) List!17490)

(assert (=> b!1585819 (= lt!558014 (list!6756 (_1!9854 lt!558016)))))

(declare-datatypes ((Unit!27323 0))(
  ( (Unit!27324) )
))
(declare-fun lt!558023 () Unit!27323)

(declare-fun theoremInvertabilityWhenTokenListSeparable!143 (LexerInterface!2698 List!17489 List!17490) Unit!27323)

(assert (=> b!1585819 (= lt!558023 (theoremInvertabilityWhenTokenListSeparable!143 thiss!17113 rules!1846 (t!144201 tokens!457)))))

(declare-fun isPrefix!1329 (List!17488 List!17488) Bool)

(assert (=> b!1585819 (isPrefix!1329 lt!558013 lt!558010)))

(declare-fun lt!558024 () Unit!27323)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!854 (List!17488 List!17488) Unit!27323)

(assert (=> b!1585819 (= lt!558024 (lemmaConcatTwoListThenFirstIsPrefix!854 lt!558013 lt!558018))))

(declare-fun b!1585820 () Bool)

(declare-fun e!1018551 () Bool)

(assert (=> b!1585820 (= e!1018551 e!1018549)))

(declare-fun res!707166 () Bool)

(assert (=> b!1585820 (=> res!707166 e!1018549)))

(declare-fun lt!558009 () List!17488)

(declare-fun lt!558012 () List!17488)

(assert (=> b!1585820 (= res!707166 (or (not (= lt!558009 lt!558012)) (not (= lt!558012 lt!558013)) (not (= lt!558009 lt!558013))))))

(declare-fun printList!813 (LexerInterface!2698 List!17490) List!17488)

(assert (=> b!1585820 (= lt!558012 (printList!813 thiss!17113 (Cons!17420 (h!22821 tokens!457) Nil!17420)))))

(declare-fun lt!558006 () BalanceConc!11516)

(assert (=> b!1585820 (= lt!558009 (list!6755 lt!558006))))

(declare-fun lt!558005 () BalanceConc!11518)

(declare-fun printTailRec!751 (LexerInterface!2698 BalanceConc!11518 Int BalanceConc!11516) BalanceConc!11516)

(assert (=> b!1585820 (= lt!558006 (printTailRec!751 thiss!17113 lt!558005 0 (BalanceConc!11517 Empty!5786)))))

(assert (=> b!1585820 (= lt!558006 (print!1229 thiss!17113 lt!558005))))

(declare-fun singletonSeq!1417 (Token!5704) BalanceConc!11518)

(assert (=> b!1585820 (= lt!558005 (singletonSeq!1417 (h!22821 tokens!457)))))

(declare-datatypes ((tuple2!16906 0))(
  ( (tuple2!16907 (_1!9855 Token!5704) (_2!9855 List!17488)) )
))
(declare-datatypes ((Option!3134 0))(
  ( (None!3133) (Some!3133 (v!24002 tuple2!16906)) )
))
(declare-fun lt!558019 () Option!3134)

(declare-fun maxPrefix!1262 (LexerInterface!2698 List!17489 List!17488) Option!3134)

(assert (=> b!1585820 (= lt!558019 (maxPrefix!1262 thiss!17113 rules!1846 lt!558017))))

(declare-fun b!1585821 () Bool)

(declare-fun res!707170 () Bool)

(assert (=> b!1585821 (=> (not res!707170) (not e!1018544))))

(declare-fun rulesProduceEachTokenIndividuallyList!900 (LexerInterface!2698 List!17489 List!17490) Bool)

(assert (=> b!1585821 (= res!707170 (rulesProduceEachTokenIndividuallyList!900 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1585822 () Bool)

(assert (=> b!1585822 (= e!1018554 e!1018551)))

(declare-fun res!707161 () Bool)

(assert (=> b!1585822 (=> res!707161 e!1018551)))

(declare-fun lt!558003 () List!17490)

(declare-fun lt!558021 () List!17490)

(assert (=> b!1585822 (= res!707161 (or (not (= lt!558014 lt!558003)) (not (= lt!558003 lt!558021))))))

(assert (=> b!1585822 (= lt!558003 (list!6756 lt!558007))))

(assert (=> b!1585822 (= lt!558014 lt!558021)))

(declare-fun prepend!553 (BalanceConc!11518 Token!5704) BalanceConc!11518)

(assert (=> b!1585822 (= lt!558021 (list!6756 (prepend!553 (seqFromList!1887 (t!144201 (t!144201 tokens!457))) (h!22821 (t!144201 tokens!457)))))))

(declare-fun lt!558008 () Unit!27323)

(declare-fun seqFromListBHdTlConstructive!146 (Token!5704 List!17490 BalanceConc!11518) Unit!27323)

(assert (=> b!1585822 (= lt!558008 (seqFromListBHdTlConstructive!146 (h!22821 (t!144201 tokens!457)) (t!144201 (t!144201 tokens!457)) (_1!9854 lt!558016)))))

(declare-fun b!1585823 () Bool)

(assert (=> b!1585823 (= e!1018549 e!1018552)))

(declare-fun res!707163 () Bool)

(assert (=> b!1585823 (=> res!707163 e!1018552)))

(declare-fun isDefined!2509 (Option!3134) Bool)

(assert (=> b!1585823 (= res!707163 (not (isDefined!2509 lt!558019)))))

(declare-fun lt!558004 () Unit!27323)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!272 (LexerInterface!2698 List!17489 List!17488 List!17488) Unit!27323)

(assert (=> b!1585823 (= lt!558004 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!272 thiss!17113 rules!1846 lt!558013 lt!558018))))

(declare-fun b!1585824 () Bool)

(declare-fun res!707173 () Bool)

(assert (=> b!1585824 (=> res!707173 e!1018551)))

(declare-fun separableTokensPredicate!640 (LexerInterface!2698 Token!5704 Token!5704 List!17489) Bool)

(assert (=> b!1585824 (= res!707173 (not (separableTokensPredicate!640 thiss!17113 (h!22821 tokens!457) (h!22821 (t!144201 tokens!457)) rules!1846)))))

(assert (= (and start!148942 res!707164) b!1585804))

(assert (= (and b!1585804 res!707172) b!1585812))

(assert (= (and b!1585812 res!707171) b!1585821))

(assert (= (and b!1585821 res!707170) b!1585817))

(assert (= (and b!1585817 res!707162) b!1585816))

(assert (= (and b!1585816 res!707167) b!1585809))

(assert (= (and b!1585809 res!707169) b!1585819))

(assert (= (and b!1585819 (not res!707165)) b!1585822))

(assert (= (and b!1585822 (not res!707161)) b!1585824))

(assert (= (and b!1585824 (not res!707173)) b!1585820))

(assert (= (and b!1585820 (not res!707166)) b!1585815))

(assert (= (and b!1585815 (not res!707168)) b!1585810))

(assert (= (and b!1585810 (not res!707174)) b!1585823))

(assert (= (and b!1585823 (not res!707163)) b!1585807))

(assert (= b!1585818 b!1585806))

(assert (= b!1585813 b!1585818))

(assert (= (and start!148942 ((_ is Cons!17419) rules!1846)) b!1585813))

(assert (= b!1585814 b!1585805))

(assert (= b!1585811 b!1585814))

(assert (= b!1585808 b!1585811))

(assert (= (and start!148942 ((_ is Cons!17420) tokens!457)) b!1585808))

(declare-fun m!1874873 () Bool)

(assert (=> b!1585821 m!1874873))

(declare-fun m!1874875 () Bool)

(assert (=> b!1585824 m!1874875))

(declare-fun m!1874877 () Bool)

(assert (=> b!1585807 m!1874877))

(assert (=> b!1585807 m!1874877))

(declare-fun m!1874879 () Bool)

(assert (=> b!1585807 m!1874879))

(declare-fun m!1874881 () Bool)

(assert (=> b!1585807 m!1874881))

(declare-fun m!1874883 () Bool)

(assert (=> b!1585807 m!1874883))

(declare-fun m!1874885 () Bool)

(assert (=> b!1585807 m!1874885))

(assert (=> b!1585807 m!1874885))

(assert (=> b!1585807 m!1874879))

(declare-fun m!1874887 () Bool)

(assert (=> b!1585807 m!1874887))

(assert (=> b!1585807 m!1874883))

(assert (=> b!1585807 m!1874887))

(declare-fun m!1874889 () Bool)

(assert (=> b!1585804 m!1874889))

(declare-fun m!1874891 () Bool)

(assert (=> b!1585819 m!1874891))

(declare-fun m!1874893 () Bool)

(assert (=> b!1585819 m!1874893))

(declare-fun m!1874895 () Bool)

(assert (=> b!1585819 m!1874895))

(declare-fun m!1874897 () Bool)

(assert (=> b!1585819 m!1874897))

(declare-fun m!1874899 () Bool)

(assert (=> b!1585817 m!1874899))

(declare-fun m!1874901 () Bool)

(assert (=> b!1585814 m!1874901))

(declare-fun m!1874903 () Bool)

(assert (=> b!1585814 m!1874903))

(declare-fun m!1874905 () Bool)

(assert (=> b!1585808 m!1874905))

(declare-fun m!1874907 () Bool)

(assert (=> b!1585815 m!1874907))

(declare-fun m!1874909 () Bool)

(assert (=> b!1585823 m!1874909))

(declare-fun m!1874911 () Bool)

(assert (=> b!1585823 m!1874911))

(declare-fun m!1874913 () Bool)

(assert (=> b!1585818 m!1874913))

(declare-fun m!1874915 () Bool)

(assert (=> b!1585818 m!1874915))

(declare-fun m!1874917 () Bool)

(assert (=> b!1585820 m!1874917))

(declare-fun m!1874919 () Bool)

(assert (=> b!1585820 m!1874919))

(declare-fun m!1874921 () Bool)

(assert (=> b!1585820 m!1874921))

(declare-fun m!1874923 () Bool)

(assert (=> b!1585820 m!1874923))

(declare-fun m!1874925 () Bool)

(assert (=> b!1585820 m!1874925))

(declare-fun m!1874927 () Bool)

(assert (=> b!1585820 m!1874927))

(declare-fun m!1874929 () Bool)

(assert (=> b!1585811 m!1874929))

(declare-fun m!1874931 () Bool)

(assert (=> b!1585822 m!1874931))

(declare-fun m!1874933 () Bool)

(assert (=> b!1585822 m!1874933))

(declare-fun m!1874935 () Bool)

(assert (=> b!1585822 m!1874935))

(declare-fun m!1874937 () Bool)

(assert (=> b!1585822 m!1874937))

(declare-fun m!1874939 () Bool)

(assert (=> b!1585822 m!1874939))

(assert (=> b!1585822 m!1874935))

(assert (=> b!1585822 m!1874937))

(declare-fun m!1874941 () Bool)

(assert (=> b!1585812 m!1874941))

(declare-fun m!1874943 () Bool)

(assert (=> b!1585809 m!1874943))

(declare-fun m!1874945 () Bool)

(assert (=> b!1585809 m!1874945))

(declare-fun m!1874947 () Bool)

(assert (=> b!1585809 m!1874947))

(declare-fun m!1874949 () Bool)

(assert (=> b!1585809 m!1874949))

(declare-fun m!1874951 () Bool)

(assert (=> b!1585809 m!1874951))

(declare-fun m!1874953 () Bool)

(assert (=> b!1585809 m!1874953))

(declare-fun m!1874955 () Bool)

(assert (=> b!1585809 m!1874955))

(declare-fun m!1874957 () Bool)

(assert (=> b!1585809 m!1874957))

(declare-fun m!1874959 () Bool)

(assert (=> b!1585809 m!1874959))

(assert (=> b!1585809 m!1874949))

(declare-fun m!1874961 () Bool)

(assert (=> b!1585809 m!1874961))

(declare-fun m!1874963 () Bool)

(assert (=> b!1585810 m!1874963))

(assert (=> b!1585810 m!1874963))

(declare-fun m!1874965 () Bool)

(assert (=> b!1585810 m!1874965))

(declare-fun m!1874967 () Bool)

(assert (=> b!1585810 m!1874967))

(check-sat (not b_next!43565) (not b!1585804) (not b!1585817) (not b!1585809) (not b!1585814) (not b!1585808) (not b!1585821) (not b_next!43561) (not b!1585824) b_and!111175 b_and!111173 (not b!1585819) (not b!1585813) (not b!1585818) (not b!1585823) (not b!1585811) (not b!1585807) (not b!1585812) (not b!1585815) b_and!111179 (not b!1585820) b_and!111177 (not b!1585810) (not b_next!43559) (not b_next!43563) (not b!1585822))
(check-sat (not b_next!43565) b_and!111179 (not b_next!43561) b_and!111175 (not b_next!43563) b_and!111173 b_and!111177 (not b_next!43559))
