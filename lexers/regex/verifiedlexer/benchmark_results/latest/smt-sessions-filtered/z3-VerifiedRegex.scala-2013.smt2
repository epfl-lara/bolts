; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102350 () Bool)

(assert start!102350)

(declare-fun b!1165789 () Bool)

(declare-fun e!747071 () Bool)

(assert (=> b!1165789 (= e!747071 true)))

(declare-fun b!1165788 () Bool)

(declare-fun e!747070 () Bool)

(assert (=> b!1165788 (= e!747070 e!747071)))

(declare-fun b!1165777 () Bool)

(assert (=> b!1165777 e!747070))

(assert (= b!1165788 b!1165789))

(assert (= b!1165777 b!1165788))

(declare-fun b!1165758 () Bool)

(declare-fun e!747049 () Bool)

(declare-datatypes ((List!11541 0))(
  ( (Nil!11517) (Cons!11517 (h!16918 (_ BitVec 16)) (t!110331 List!11541)) )
))
(declare-datatypes ((TokenValue!2073 0))(
  ( (FloatLiteralValue!4146 (text!14956 List!11541)) (TokenValueExt!2072 (__x!7857 Int)) (Broken!10365 (value!65170 List!11541)) (Object!2096) (End!2073) (Def!2073) (Underscore!2073) (Match!2073) (Else!2073) (Error!2073) (Case!2073) (If!2073) (Extends!2073) (Abstract!2073) (Class!2073) (Val!2073) (DelimiterValue!4146 (del!2133 List!11541)) (KeywordValue!2079 (value!65171 List!11541)) (CommentValue!4146 (value!65172 List!11541)) (WhitespaceValue!4146 (value!65173 List!11541)) (IndentationValue!2073 (value!65174 List!11541)) (String!13952) (Int32!2073) (Broken!10366 (value!65175 List!11541)) (Boolean!2074) (Unit!17604) (OperatorValue!2076 (op!2133 List!11541)) (IdentifierValue!4146 (value!65176 List!11541)) (IdentifierValue!4147 (value!65177 List!11541)) (WhitespaceValue!4147 (value!65178 List!11541)) (True!4146) (False!4146) (Broken!10367 (value!65179 List!11541)) (Broken!10368 (value!65180 List!11541)) (True!4147) (RightBrace!2073) (RightBracket!2073) (Colon!2073) (Null!2073) (Comma!2073) (LeftBracket!2073) (False!4147) (LeftBrace!2073) (ImaginaryLiteralValue!2073 (text!14957 List!11541)) (StringLiteralValue!6219 (value!65181 List!11541)) (EOFValue!2073 (value!65182 List!11541)) (IdentValue!2073 (value!65183 List!11541)) (DelimiterValue!4147 (value!65184 List!11541)) (DedentValue!2073 (value!65185 List!11541)) (NewLineValue!2073 (value!65186 List!11541)) (IntegerValue!6219 (value!65187 (_ BitVec 32)) (text!14958 List!11541)) (IntegerValue!6220 (value!65188 Int) (text!14959 List!11541)) (Times!2073) (Or!2073) (Equal!2073) (Minus!2073) (Broken!10369 (value!65189 List!11541)) (And!2073) (Div!2073) (LessEqual!2073) (Mod!2073) (Concat!5350) (Not!2073) (Plus!2073) (SpaceValue!2073 (value!65190 List!11541)) (IntegerValue!6221 (value!65191 Int) (text!14960 List!11541)) (StringLiteralValue!6220 (text!14961 List!11541)) (FloatLiteralValue!4147 (text!14962 List!11541)) (BytesLiteralValue!2073 (value!65192 List!11541)) (CommentValue!4147 (value!65193 List!11541)) (StringLiteralValue!6221 (value!65194 List!11541)) (ErrorTokenValue!2073 (msg!2134 List!11541)) )
))
(declare-datatypes ((C!6872 0))(
  ( (C!6873 (val!3692 Int)) )
))
(declare-datatypes ((Regex!3277 0))(
  ( (ElementMatch!3277 (c!194627 C!6872)) (Concat!5351 (regOne!7066 Regex!3277) (regTwo!7066 Regex!3277)) (EmptyExpr!3277) (Star!3277 (reg!3606 Regex!3277)) (EmptyLang!3277) (Union!3277 (regOne!7067 Regex!3277) (regTwo!7067 Regex!3277)) )
))
(declare-datatypes ((String!13953 0))(
  ( (String!13954 (value!65195 String)) )
))
(declare-datatypes ((List!11542 0))(
  ( (Nil!11518) (Cons!11518 (h!16919 C!6872) (t!110332 List!11542)) )
))
(declare-datatypes ((IArray!7557 0))(
  ( (IArray!7558 (innerList!3836 List!11542)) )
))
(declare-datatypes ((Conc!3776 0))(
  ( (Node!3776 (left!10073 Conc!3776) (right!10403 Conc!3776) (csize!7782 Int) (cheight!3987 Int)) (Leaf!5790 (xs!6481 IArray!7557) (csize!7783 Int)) (Empty!3776) )
))
(declare-datatypes ((BalanceConc!7574 0))(
  ( (BalanceConc!7575 (c!194628 Conc!3776)) )
))
(declare-datatypes ((TokenValueInjection!3846 0))(
  ( (TokenValueInjection!3847 (toValue!3108 Int) (toChars!2967 Int)) )
))
(declare-datatypes ((Rule!3814 0))(
  ( (Rule!3815 (regex!2007 Regex!3277) (tag!2269 String!13953) (isSeparator!2007 Bool) (transformation!2007 TokenValueInjection!3846)) )
))
(declare-datatypes ((Token!3676 0))(
  ( (Token!3677 (value!65196 TokenValue!2073) (rule!3428 Rule!3814) (size!9065 Int) (originalCharacters!2561 List!11542)) )
))
(declare-fun lt!398625 () Token!3676)

(declare-fun size!9066 (BalanceConc!7574) Int)

(declare-fun charsOf!1068 (Token!3676) BalanceConc!7574)

(assert (=> b!1165758 (= e!747049 (> (size!9066 (charsOf!1068 lt!398625)) 0))))

(declare-fun e!747055 () Bool)

(declare-datatypes ((List!11543 0))(
  ( (Nil!11519) (Cons!11519 (h!16920 Token!3676) (t!110333 List!11543)) )
))
(declare-fun lt!398621 () List!11543)

(declare-datatypes ((List!11544 0))(
  ( (Nil!11520) (Cons!11520 (h!16921 Rule!3814) (t!110334 List!11544)) )
))
(declare-datatypes ((IArray!7559 0))(
  ( (IArray!7560 (innerList!3837 List!11543)) )
))
(declare-datatypes ((Conc!3777 0))(
  ( (Node!3777 (left!10074 Conc!3777) (right!10404 Conc!3777) (csize!7784 Int) (cheight!3988 Int)) (Leaf!5791 (xs!6482 IArray!7559) (csize!7785 Int)) (Empty!3777) )
))
(declare-datatypes ((BalanceConc!7576 0))(
  ( (BalanceConc!7577 (c!194629 Conc!3777)) )
))
(declare-datatypes ((PrintableTokens!700 0))(
  ( (PrintableTokens!701 (rules!9572 List!11544) (tokens!1624 BalanceConc!7576)) )
))
(declare-fun thiss!10527 () PrintableTokens!700)

(declare-fun b!1165759 () Bool)

(declare-fun e!747047 () Bool)

(declare-datatypes ((LexerInterface!1702 0))(
  ( (LexerInterfaceExt!1699 (__x!7858 Int)) (Lexer!1700) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!568 (LexerInterface!1702 List!11544 List!11543) Bool)

(assert (=> b!1165759 (= e!747047 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398621) e!747055))))

(declare-fun res!526300 () Bool)

(assert (=> b!1165759 (=> res!526300 e!747055)))

(get-info :version)

(assert (=> b!1165759 (= res!526300 (not ((_ is Cons!11519) lt!398621)))))

(declare-fun b!1165761 () Bool)

(declare-fun res!526302 () Bool)

(declare-fun e!747059 () Bool)

(assert (=> b!1165761 (=> res!526302 e!747059)))

(declare-fun lt!398609 () BalanceConc!7576)

(declare-fun lambda!47859 () Int)

(declare-fun forall!3023 (BalanceConc!7576 Int) Bool)

(assert (=> b!1165761 (= res!526302 (not (forall!3023 lt!398609 lambda!47859)))))

(declare-fun b!1165762 () Bool)

(declare-fun e!747050 () Bool)

(declare-fun e!747052 () Bool)

(assert (=> b!1165762 (= e!747050 e!747052)))

(declare-fun res!526285 () Bool)

(assert (=> b!1165762 (=> (not res!526285) (not e!747052))))

(declare-fun rulesInvariant!1576 (LexerInterface!1702 List!11544) Bool)

(assert (=> b!1165762 (= res!526285 (rulesInvariant!1576 Lexer!1700 (rules!9572 thiss!10527)))))

(declare-datatypes ((Unit!17605 0))(
  ( (Unit!17606) )
))
(declare-fun lt!398604 () Unit!17605)

(declare-fun lemmaInvariant!194 (PrintableTokens!700) Unit!17605)

(assert (=> b!1165762 (= lt!398604 (lemmaInvariant!194 thiss!10527))))

(declare-fun b!1165763 () Bool)

(declare-fun e!747060 () Bool)

(declare-fun lt!398606 () List!11543)

(declare-fun tokensListTwoByTwoPredicateSeparableList!106 (LexerInterface!1702 List!11543 List!11544) Bool)

(assert (=> b!1165763 (= e!747060 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 lt!398606 (rules!9572 thiss!10527)))))

(declare-fun b!1165764 () Bool)

(declare-fun res!526290 () Bool)

(assert (=> b!1165764 (=> (not res!526290) (not e!747047))))

(declare-fun rulesProduceEachTokenIndividually!740 (LexerInterface!1702 List!11544 BalanceConc!7576) Bool)

(assert (=> b!1165764 (= res!526290 (= (rulesProduceEachTokenIndividually!740 Lexer!1700 (rules!9572 thiss!10527) lt!398609) (forall!3023 lt!398609 lambda!47859)))))

(declare-fun b!1165765 () Bool)

(declare-fun e!747054 () Bool)

(assert (=> b!1165765 (= e!747055 e!747054)))

(declare-fun res!526305 () Bool)

(assert (=> b!1165765 (=> (not res!526305) (not e!747054))))

(declare-fun rulesProduceIndividualToken!737 (LexerInterface!1702 List!11544 Token!3676) Bool)

(assert (=> b!1165765 (= res!526305 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398621)))))

(declare-fun b!1165766 () Bool)

(declare-fun lt!398611 () Bool)

(assert (=> b!1165766 (= e!747059 lt!398611)))

(assert (=> b!1165766 e!747060))

(declare-fun res!526286 () Bool)

(assert (=> b!1165766 (=> (not res!526286) (not e!747060))))

(declare-fun forall!3024 (List!11543 Int) Bool)

(assert (=> b!1165766 (= res!526286 (forall!3024 lt!398606 lambda!47859))))

(declare-fun lt!398616 () Unit!17605)

(declare-fun lt!398622 () List!11543)

(declare-fun lemmaForallSubseq!151 (List!11543 List!11543 Int) Unit!17605)

(assert (=> b!1165766 (= lt!398616 (lemmaForallSubseq!151 lt!398606 lt!398622 lambda!47859))))

(declare-fun e!747065 () Bool)

(assert (=> b!1165766 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398606) e!747065)))

(declare-fun res!526292 () Bool)

(assert (=> b!1165766 (=> res!526292 e!747065)))

(assert (=> b!1165766 (= res!526292 (not ((_ is Cons!11519) lt!398606)))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(declare-fun take!72 (List!11543 Int) List!11543)

(assert (=> b!1165766 (= lt!398606 (take!72 lt!398622 (- to!267 from!787)))))

(declare-fun lt!398614 () Unit!17605)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!38 (LexerInterface!1702 List!11543 Int List!11544) Unit!17605)

(assert (=> b!1165766 (= lt!398614 (tokensListTwoByTwoPredicateSeparableTokensTakeList!38 Lexer!1700 lt!398622 (- to!267 from!787) (rules!9572 thiss!10527)))))

(assert (=> b!1165766 (forall!3024 lt!398622 lambda!47859)))

(declare-fun lt!398603 () Unit!17605)

(declare-fun lt!398620 () List!11543)

(assert (=> b!1165766 (= lt!398603 (lemmaForallSubseq!151 lt!398622 lt!398620 lambda!47859))))

(declare-fun e!747064 () Bool)

(assert (=> b!1165766 e!747064))

(declare-fun res!526295 () Bool)

(assert (=> b!1165766 (=> (not res!526295) (not e!747064))))

(assert (=> b!1165766 (= res!526295 (forall!3024 lt!398622 lambda!47859))))

(declare-fun lt!398624 () Unit!17605)

(assert (=> b!1165766 (= lt!398624 (lemmaForallSubseq!151 lt!398622 lt!398620 lambda!47859))))

(declare-fun subseq!259 (List!11543 List!11543) Bool)

(assert (=> b!1165766 (subseq!259 lt!398622 lt!398620)))

(declare-fun lt!398610 () Unit!17605)

(declare-fun lemmaDropSubseq!46 (List!11543 Int) Unit!17605)

(assert (=> b!1165766 (= lt!398610 (lemmaDropSubseq!46 lt!398620 from!787))))

(declare-fun e!747045 () Bool)

(assert (=> b!1165766 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398622) e!747045)))

(declare-fun res!526301 () Bool)

(assert (=> b!1165766 (=> res!526301 e!747045)))

(assert (=> b!1165766 (= res!526301 (not ((_ is Cons!11519) lt!398622)))))

(declare-fun drop!482 (List!11543 Int) List!11543)

(assert (=> b!1165766 (= lt!398622 (drop!482 lt!398620 from!787))))

(declare-fun lt!398623 () Unit!17605)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!46 (LexerInterface!1702 List!11543 Int List!11544) Unit!17605)

(assert (=> b!1165766 (= lt!398623 (tokensListTwoByTwoPredicateSeparableTokensDropList!46 Lexer!1700 lt!398620 from!787 (rules!9572 thiss!10527)))))

(declare-fun e!747046 () Bool)

(assert (=> b!1165766 e!747046))

(declare-fun res!526306 () Bool)

(assert (=> b!1165766 (=> (not res!526306) (not e!747046))))

(declare-fun tokensListTwoByTwoPredicateSeparable!69 (LexerInterface!1702 BalanceConc!7576 Int List!11544) Bool)

(assert (=> b!1165766 (= res!526306 (= lt!398611 (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 lt!398609 0 (rules!9572 thiss!10527))))))

(declare-fun separableTokens!139 (LexerInterface!1702 BalanceConc!7576 List!11544) Bool)

(assert (=> b!1165766 (= lt!398611 (separableTokens!139 Lexer!1700 lt!398609 (rules!9572 thiss!10527)))))

(declare-fun b!1165767 () Bool)

(declare-fun e!747063 () Bool)

(assert (=> b!1165767 (= e!747045 e!747063)))

(declare-fun res!526289 () Bool)

(assert (=> b!1165767 (=> (not res!526289) (not e!747063))))

(assert (=> b!1165767 (= res!526289 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398622)))))

(declare-fun b!1165760 () Bool)

(declare-fun e!747062 () Bool)

(assert (=> b!1165760 (= e!747046 (= (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 (tokens!1624 thiss!10527) 0 (rules!9572 thiss!10527)) e!747062))))

(declare-fun res!526287 () Bool)

(assert (=> b!1165760 (=> res!526287 e!747062)))

(declare-fun lt!398627 () Int)

(assert (=> b!1165760 (= res!526287 (>= 0 (- lt!398627 1)))))

(declare-fun res!526288 () Bool)

(declare-fun e!747048 () Bool)

(assert (=> start!102350 (=> (not res!526288) (not e!747048))))

(assert (=> start!102350 (= res!526288 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102350 e!747048))

(assert (=> start!102350 true))

(declare-fun e!747057 () Bool)

(declare-fun inv!15163 (PrintableTokens!700) Bool)

(assert (=> start!102350 (and (inv!15163 thiss!10527) e!747057)))

(declare-fun b!1165768 () Bool)

(assert (=> b!1165768 (= e!747054 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398621)))))

(declare-fun b!1165769 () Bool)

(declare-fun e!747053 () Bool)

(assert (=> b!1165769 (= e!747065 e!747053)))

(declare-fun res!526304 () Bool)

(assert (=> b!1165769 (=> (not res!526304) (not e!747053))))

(assert (=> b!1165769 (= res!526304 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398606)))))

(declare-fun b!1165770 () Bool)

(declare-fun e!747044 () Bool)

(declare-fun tp!334223 () Bool)

(declare-fun inv!15164 (Conc!3777) Bool)

(assert (=> b!1165770 (= e!747044 (and (inv!15164 (c!194629 (tokens!1624 thiss!10527))) tp!334223))))

(declare-fun b!1165771 () Bool)

(assert (=> b!1165771 (= e!747063 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398622)))))

(declare-fun b!1165772 () Bool)

(assert (=> b!1165772 (= e!747064 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 lt!398622 (rules!9572 thiss!10527)))))

(declare-fun b!1165773 () Bool)

(assert (=> b!1165773 (= e!747048 e!747050)))

(declare-fun res!526297 () Bool)

(assert (=> b!1165773 (=> (not res!526297) (not e!747050))))

(assert (=> b!1165773 (= res!526297 (<= to!267 lt!398627))))

(declare-fun size!9067 (BalanceConc!7576) Int)

(assert (=> b!1165773 (= lt!398627 (size!9067 (tokens!1624 thiss!10527)))))

(declare-fun tp!334224 () Bool)

(declare-fun b!1165774 () Bool)

(declare-fun inv!15165 (BalanceConc!7576) Bool)

(assert (=> b!1165774 (= e!747057 (and tp!334224 (inv!15165 (tokens!1624 thiss!10527)) e!747044))))

(declare-fun b!1165775 () Bool)

(declare-fun e!747056 () Bool)

(assert (=> b!1165775 (= e!747062 e!747056)))

(declare-fun res!526291 () Bool)

(assert (=> b!1165775 (=> (not res!526291) (not e!747056))))

(declare-fun lt!398607 () Token!3676)

(declare-fun separableTokensPredicate!130 (LexerInterface!1702 Token!3676 Token!3676 List!11544) Bool)

(assert (=> b!1165775 (= res!526291 (separableTokensPredicate!130 Lexer!1700 lt!398607 lt!398625 (rules!9572 thiss!10527)))))

(assert (=> b!1165775 e!747049))

(declare-fun res!526293 () Bool)

(assert (=> b!1165775 (=> (not res!526293) (not e!747049))))

(assert (=> b!1165775 (= res!526293 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398625))))

(declare-fun lt!398612 () Unit!17605)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 (LexerInterface!1702 List!11544 List!11543 Token!3676) Unit!17605)

(assert (=> b!1165775 (= lt!398612 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398620 lt!398625))))

(declare-fun apply!2479 (BalanceConc!7576 Int) Token!3676)

(assert (=> b!1165775 (= lt!398625 (apply!2479 (tokens!1624 thiss!10527) 1))))

(assert (=> b!1165775 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398607)))

(declare-fun lt!398628 () Unit!17605)

(assert (=> b!1165775 (= lt!398628 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398620 lt!398607))))

(assert (=> b!1165775 (= lt!398607 (apply!2479 (tokens!1624 thiss!10527) 0))))

(declare-fun lt!398619 () List!11543)

(declare-fun tail!1686 (List!11543) List!11543)

(assert (=> b!1165775 (= (tail!1686 lt!398619) (drop!482 lt!398620 2))))

(declare-fun lt!398626 () Unit!17605)

(declare-fun lemmaDropTail!359 (List!11543 Int) Unit!17605)

(assert (=> b!1165775 (= lt!398626 (lemmaDropTail!359 lt!398620 1))))

(declare-fun lt!398608 () List!11543)

(assert (=> b!1165775 (= (tail!1686 lt!398608) lt!398619)))

(declare-fun lt!398615 () Unit!17605)

(assert (=> b!1165775 (= lt!398615 (lemmaDropTail!359 lt!398620 0))))

(declare-fun head!2102 (List!11543) Token!3676)

(declare-fun apply!2480 (List!11543 Int) Token!3676)

(assert (=> b!1165775 (= (head!2102 lt!398619) (apply!2480 lt!398620 1))))

(assert (=> b!1165775 (= lt!398619 (drop!482 lt!398620 1))))

(declare-fun lt!398613 () Unit!17605)

(declare-fun lemmaDropApply!371 (List!11543 Int) Unit!17605)

(assert (=> b!1165775 (= lt!398613 (lemmaDropApply!371 lt!398620 1))))

(assert (=> b!1165775 (= (head!2102 lt!398608) (apply!2480 lt!398620 0))))

(assert (=> b!1165775 (= lt!398608 (drop!482 lt!398620 0))))

(declare-fun lt!398618 () Unit!17605)

(assert (=> b!1165775 (= lt!398618 (lemmaDropApply!371 lt!398620 0))))

(declare-fun b!1165776 () Bool)

(declare-fun e!747051 () Bool)

(declare-fun e!747058 () Bool)

(assert (=> b!1165776 (= e!747051 e!747058)))

(declare-fun res!526296 () Bool)

(assert (=> b!1165776 (=> (not res!526296) (not e!747058))))

(assert (=> b!1165776 (= res!526296 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398620)))))

(declare-fun e!747061 () Bool)

(assert (=> b!1165777 (= e!747052 (not e!747061))))

(declare-fun res!526299 () Bool)

(assert (=> b!1165777 (=> res!526299 e!747061)))

(assert (=> b!1165777 (= res!526299 (not (forall!3023 (tokens!1624 thiss!10527) lambda!47859)))))

(assert (=> b!1165777 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398620) e!747051)))

(declare-fun res!526303 () Bool)

(assert (=> b!1165777 (=> res!526303 e!747051)))

(assert (=> b!1165777 (= res!526303 (not ((_ is Cons!11519) lt!398620)))))

(declare-fun list!4239 (BalanceConc!7576) List!11543)

(assert (=> b!1165777 (= lt!398620 (list!4239 (tokens!1624 thiss!10527)))))

(assert (=> b!1165777 (= (rulesProduceEachTokenIndividually!740 Lexer!1700 (rules!9572 thiss!10527) (tokens!1624 thiss!10527)) (forall!3023 (tokens!1624 thiss!10527) lambda!47859))))

(declare-fun b!1165778 () Bool)

(assert (=> b!1165778 (= e!747058 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398620)))))

(declare-fun b!1165779 () Bool)

(assert (=> b!1165779 (= e!747056 (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 (tokens!1624 thiss!10527) 1 (rules!9572 thiss!10527)))))

(declare-fun b!1165780 () Bool)

(assert (=> b!1165780 (= e!747061 e!747059)))

(declare-fun res!526294 () Bool)

(assert (=> b!1165780 (=> res!526294 e!747059)))

(assert (=> b!1165780 (= res!526294 (not (forall!3024 lt!398621 lambda!47859)))))

(assert (=> b!1165780 e!747047))

(declare-fun res!526298 () Bool)

(assert (=> b!1165780 (=> (not res!526298) (not e!747047))))

(assert (=> b!1165780 (= res!526298 (forall!3024 lt!398621 lambda!47859))))

(declare-fun lt!398617 () Unit!17605)

(assert (=> b!1165780 (= lt!398617 (lemmaForallSubseq!151 lt!398621 lt!398620 lambda!47859))))

(assert (=> b!1165780 (= lt!398621 (list!4239 lt!398609))))

(declare-fun slice!312 (BalanceConc!7576 Int Int) BalanceConc!7576)

(assert (=> b!1165780 (= lt!398609 (slice!312 (tokens!1624 thiss!10527) from!787 to!267))))

(declare-fun slice!313 (List!11543 Int Int) List!11543)

(assert (=> b!1165780 (subseq!259 (slice!313 lt!398620 from!787 to!267) lt!398620)))

(declare-fun lt!398605 () Unit!17605)

(declare-fun lemmaSliceSubseq!100 (List!11543 Int Int) Unit!17605)

(assert (=> b!1165780 (= lt!398605 (lemmaSliceSubseq!100 lt!398620 from!787 to!267))))

(declare-fun b!1165781 () Bool)

(assert (=> b!1165781 (= e!747053 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398606)))))

(assert (= (and start!102350 res!526288) b!1165773))

(assert (= (and b!1165773 res!526297) b!1165762))

(assert (= (and b!1165762 res!526285) b!1165777))

(assert (= (and b!1165777 (not res!526303)) b!1165776))

(assert (= (and b!1165776 res!526296) b!1165778))

(assert (= (and b!1165777 (not res!526299)) b!1165780))

(assert (= (and b!1165780 res!526298) b!1165764))

(assert (= (and b!1165764 res!526290) b!1165759))

(assert (= (and b!1165759 (not res!526300)) b!1165765))

(assert (= (and b!1165765 res!526305) b!1165768))

(assert (= (and b!1165780 (not res!526294)) b!1165761))

(assert (= (and b!1165761 (not res!526302)) b!1165766))

(assert (= (and b!1165766 res!526306) b!1165760))

(assert (= (and b!1165760 (not res!526287)) b!1165775))

(assert (= (and b!1165775 res!526293) b!1165758))

(assert (= (and b!1165775 res!526291) b!1165779))

(assert (= (and b!1165766 (not res!526301)) b!1165767))

(assert (= (and b!1165767 res!526289) b!1165771))

(assert (= (and b!1165766 res!526295) b!1165772))

(assert (= (and b!1165766 (not res!526292)) b!1165769))

(assert (= (and b!1165769 res!526304) b!1165781))

(assert (= (and b!1165766 res!526286) b!1165763))

(assert (= b!1165774 b!1165770))

(assert (= start!102350 b!1165774))

(declare-fun m!1335299 () Bool)

(assert (=> b!1165769 m!1335299))

(declare-fun m!1335301 () Bool)

(assert (=> b!1165770 m!1335301))

(declare-fun m!1335303 () Bool)

(assert (=> b!1165775 m!1335303))

(declare-fun m!1335305 () Bool)

(assert (=> b!1165775 m!1335305))

(declare-fun m!1335307 () Bool)

(assert (=> b!1165775 m!1335307))

(declare-fun m!1335309 () Bool)

(assert (=> b!1165775 m!1335309))

(declare-fun m!1335311 () Bool)

(assert (=> b!1165775 m!1335311))

(declare-fun m!1335313 () Bool)

(assert (=> b!1165775 m!1335313))

(declare-fun m!1335315 () Bool)

(assert (=> b!1165775 m!1335315))

(declare-fun m!1335317 () Bool)

(assert (=> b!1165775 m!1335317))

(declare-fun m!1335319 () Bool)

(assert (=> b!1165775 m!1335319))

(declare-fun m!1335321 () Bool)

(assert (=> b!1165775 m!1335321))

(declare-fun m!1335323 () Bool)

(assert (=> b!1165775 m!1335323))

(declare-fun m!1335325 () Bool)

(assert (=> b!1165775 m!1335325))

(declare-fun m!1335327 () Bool)

(assert (=> b!1165775 m!1335327))

(declare-fun m!1335329 () Bool)

(assert (=> b!1165775 m!1335329))

(declare-fun m!1335331 () Bool)

(assert (=> b!1165775 m!1335331))

(declare-fun m!1335333 () Bool)

(assert (=> b!1165775 m!1335333))

(declare-fun m!1335335 () Bool)

(assert (=> b!1165775 m!1335335))

(declare-fun m!1335337 () Bool)

(assert (=> b!1165775 m!1335337))

(declare-fun m!1335339 () Bool)

(assert (=> b!1165775 m!1335339))

(declare-fun m!1335341 () Bool)

(assert (=> b!1165775 m!1335341))

(declare-fun m!1335343 () Bool)

(assert (=> b!1165758 m!1335343))

(assert (=> b!1165758 m!1335343))

(declare-fun m!1335345 () Bool)

(assert (=> b!1165758 m!1335345))

(declare-fun m!1335347 () Bool)

(assert (=> b!1165759 m!1335347))

(declare-fun m!1335349 () Bool)

(assert (=> b!1165780 m!1335349))

(declare-fun m!1335351 () Bool)

(assert (=> b!1165780 m!1335351))

(declare-fun m!1335353 () Bool)

(assert (=> b!1165780 m!1335353))

(declare-fun m!1335355 () Bool)

(assert (=> b!1165780 m!1335355))

(declare-fun m!1335357 () Bool)

(assert (=> b!1165780 m!1335357))

(declare-fun m!1335359 () Bool)

(assert (=> b!1165780 m!1335359))

(assert (=> b!1165780 m!1335357))

(assert (=> b!1165780 m!1335353))

(declare-fun m!1335361 () Bool)

(assert (=> b!1165780 m!1335361))

(declare-fun m!1335363 () Bool)

(assert (=> start!102350 m!1335363))

(declare-fun m!1335365 () Bool)

(assert (=> b!1165767 m!1335365))

(declare-fun m!1335367 () Bool)

(assert (=> b!1165766 m!1335367))

(declare-fun m!1335369 () Bool)

(assert (=> b!1165766 m!1335369))

(declare-fun m!1335371 () Bool)

(assert (=> b!1165766 m!1335371))

(declare-fun m!1335373 () Bool)

(assert (=> b!1165766 m!1335373))

(declare-fun m!1335375 () Bool)

(assert (=> b!1165766 m!1335375))

(declare-fun m!1335377 () Bool)

(assert (=> b!1165766 m!1335377))

(declare-fun m!1335379 () Bool)

(assert (=> b!1165766 m!1335379))

(assert (=> b!1165766 m!1335379))

(declare-fun m!1335381 () Bool)

(assert (=> b!1165766 m!1335381))

(declare-fun m!1335383 () Bool)

(assert (=> b!1165766 m!1335383))

(assert (=> b!1165766 m!1335377))

(declare-fun m!1335385 () Bool)

(assert (=> b!1165766 m!1335385))

(declare-fun m!1335387 () Bool)

(assert (=> b!1165766 m!1335387))

(declare-fun m!1335389 () Bool)

(assert (=> b!1165766 m!1335389))

(declare-fun m!1335391 () Bool)

(assert (=> b!1165766 m!1335391))

(declare-fun m!1335393 () Bool)

(assert (=> b!1165766 m!1335393))

(declare-fun m!1335395 () Bool)

(assert (=> b!1165779 m!1335395))

(declare-fun m!1335397 () Bool)

(assert (=> b!1165762 m!1335397))

(declare-fun m!1335399 () Bool)

(assert (=> b!1165762 m!1335399))

(declare-fun m!1335401 () Bool)

(assert (=> b!1165781 m!1335401))

(declare-fun m!1335403 () Bool)

(assert (=> b!1165777 m!1335403))

(declare-fun m!1335405 () Bool)

(assert (=> b!1165777 m!1335405))

(declare-fun m!1335407 () Bool)

(assert (=> b!1165777 m!1335407))

(declare-fun m!1335409 () Bool)

(assert (=> b!1165777 m!1335409))

(assert (=> b!1165777 m!1335407))

(declare-fun m!1335411 () Bool)

(assert (=> b!1165763 m!1335411))

(declare-fun m!1335413 () Bool)

(assert (=> b!1165768 m!1335413))

(declare-fun m!1335415 () Bool)

(assert (=> b!1165765 m!1335415))

(declare-fun m!1335417 () Bool)

(assert (=> b!1165764 m!1335417))

(declare-fun m!1335419 () Bool)

(assert (=> b!1165764 m!1335419))

(declare-fun m!1335421 () Bool)

(assert (=> b!1165760 m!1335421))

(declare-fun m!1335423 () Bool)

(assert (=> b!1165771 m!1335423))

(declare-fun m!1335425 () Bool)

(assert (=> b!1165778 m!1335425))

(declare-fun m!1335427 () Bool)

(assert (=> b!1165772 m!1335427))

(declare-fun m!1335429 () Bool)

(assert (=> b!1165776 m!1335429))

(declare-fun m!1335431 () Bool)

(assert (=> b!1165773 m!1335431))

(assert (=> b!1165761 m!1335419))

(declare-fun m!1335433 () Bool)

(assert (=> b!1165774 m!1335433))

(check-sat (not b!1165780) (not b!1165769) (not b!1165758) (not b!1165773) (not b!1165764) (not b!1165766) (not b!1165774) (not b!1165788) (not b!1165759) (not b!1165779) (not b!1165763) (not b!1165776) (not b!1165761) (not b!1165767) (not start!102350) (not b!1165765) (not b!1165770) (not b!1165778) (not b!1165768) (not b!1165777) (not b!1165775) (not b!1165760) (not b!1165762) (not b!1165771) (not b!1165781) (not b!1165772) (not b!1165789))
(check-sat)
(get-model)

(declare-fun e!747083 () Bool)

(declare-fun b!1165800 () Bool)

(assert (=> b!1165800 (= e!747083 (subseq!259 (t!110333 (slice!313 lt!398620 from!787 to!267)) (t!110333 lt!398620)))))

(declare-fun e!747081 () Bool)

(declare-fun b!1165801 () Bool)

(assert (=> b!1165801 (= e!747081 (subseq!259 (slice!313 lt!398620 from!787 to!267) (t!110333 lt!398620)))))

(declare-fun b!1165799 () Bool)

(declare-fun e!747082 () Bool)

(assert (=> b!1165799 (= e!747082 e!747081)))

(declare-fun res!526321 () Bool)

(assert (=> b!1165799 (=> res!526321 e!747081)))

(assert (=> b!1165799 (= res!526321 e!747083)))

(declare-fun res!526322 () Bool)

(assert (=> b!1165799 (=> (not res!526322) (not e!747083))))

(assert (=> b!1165799 (= res!526322 (= (h!16920 (slice!313 lt!398620 from!787 to!267)) (h!16920 lt!398620)))))

(declare-fun b!1165798 () Bool)

(declare-fun e!747080 () Bool)

(assert (=> b!1165798 (= e!747080 e!747082)))

(declare-fun res!526319 () Bool)

(assert (=> b!1165798 (=> (not res!526319) (not e!747082))))

(assert (=> b!1165798 (= res!526319 ((_ is Cons!11519) lt!398620))))

(declare-fun d!332654 () Bool)

(declare-fun res!526320 () Bool)

(assert (=> d!332654 (=> res!526320 e!747080)))

(assert (=> d!332654 (= res!526320 ((_ is Nil!11519) (slice!313 lt!398620 from!787 to!267)))))

(assert (=> d!332654 (= (subseq!259 (slice!313 lt!398620 from!787 to!267) lt!398620) e!747080)))

(assert (= (and d!332654 (not res!526320)) b!1165798))

(assert (= (and b!1165798 res!526319) b!1165799))

(assert (= (and b!1165799 res!526322) b!1165800))

(assert (= (and b!1165799 (not res!526321)) b!1165801))

(declare-fun m!1335445 () Bool)

(assert (=> b!1165800 m!1335445))

(assert (=> b!1165801 m!1335353))

(declare-fun m!1335447 () Bool)

(assert (=> b!1165801 m!1335447))

(assert (=> b!1165780 d!332654))

(declare-fun d!332656 () Bool)

(assert (=> d!332656 (subseq!259 (slice!313 lt!398620 from!787 to!267) lt!398620)))

(declare-fun lt!398637 () Unit!17605)

(declare-fun choose!7520 (List!11543 Int Int) Unit!17605)

(assert (=> d!332656 (= lt!398637 (choose!7520 lt!398620 from!787 to!267))))

(declare-fun e!747086 () Bool)

(assert (=> d!332656 e!747086))

(declare-fun res!526325 () Bool)

(assert (=> d!332656 (=> (not res!526325) (not e!747086))))

(assert (=> d!332656 (= res!526325 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!332656 (= (lemmaSliceSubseq!100 lt!398620 from!787 to!267) lt!398637)))

(declare-fun b!1165804 () Bool)

(declare-fun size!9071 (List!11543) Int)

(assert (=> b!1165804 (= e!747086 (<= to!267 (size!9071 lt!398620)))))

(assert (= (and d!332656 res!526325) b!1165804))

(assert (=> d!332656 m!1335353))

(assert (=> d!332656 m!1335353))

(assert (=> d!332656 m!1335355))

(declare-fun m!1335449 () Bool)

(assert (=> d!332656 m!1335449))

(declare-fun m!1335451 () Bool)

(assert (=> b!1165804 m!1335451))

(assert (=> b!1165780 d!332656))

(declare-fun d!332658 () Bool)

(assert (=> d!332658 (= (slice!313 lt!398620 from!787 to!267) (take!72 (drop!482 lt!398620 from!787) (- to!267 from!787)))))

(declare-fun bs!284242 () Bool)

(assert (= bs!284242 d!332658))

(assert (=> bs!284242 m!1335389))

(assert (=> bs!284242 m!1335389))

(declare-fun m!1335453 () Bool)

(assert (=> bs!284242 m!1335453))

(assert (=> b!1165780 d!332658))

(declare-fun d!332660 () Bool)

(declare-fun e!747092 () Bool)

(assert (=> d!332660 e!747092))

(declare-fun res!526334 () Bool)

(assert (=> d!332660 (=> (not res!526334) (not e!747092))))

(declare-fun isBalanced!1060 (Conc!3777) Bool)

(declare-fun slice!315 (Conc!3777 Int Int) Conc!3777)

(assert (=> d!332660 (= res!526334 (isBalanced!1060 (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267)))))

(declare-fun lt!398640 () BalanceConc!7576)

(assert (=> d!332660 (= lt!398640 (BalanceConc!7577 (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267)))))

(declare-fun e!747091 () Bool)

(assert (=> d!332660 e!747091))

(declare-fun res!526332 () Bool)

(assert (=> d!332660 (=> (not res!526332) (not e!747091))))

(assert (=> d!332660 (= res!526332 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!332660 (= (slice!312 (tokens!1624 thiss!10527) from!787 to!267) lt!398640)))

(declare-fun b!1165811 () Bool)

(declare-fun res!526333 () Bool)

(assert (=> b!1165811 (=> (not res!526333) (not e!747091))))

(assert (=> b!1165811 (= res!526333 (<= to!267 (size!9067 (tokens!1624 thiss!10527))))))

(declare-fun b!1165812 () Bool)

(assert (=> b!1165812 (= e!747091 (isBalanced!1060 (c!194629 (tokens!1624 thiss!10527))))))

(declare-fun b!1165813 () Bool)

(assert (=> b!1165813 (= e!747092 (= (list!4239 lt!398640) (slice!313 (list!4239 (tokens!1624 thiss!10527)) from!787 to!267)))))

(assert (= (and d!332660 res!526332) b!1165811))

(assert (= (and b!1165811 res!526333) b!1165812))

(assert (= (and d!332660 res!526334) b!1165813))

(declare-fun m!1335455 () Bool)

(assert (=> d!332660 m!1335455))

(assert (=> d!332660 m!1335455))

(declare-fun m!1335457 () Bool)

(assert (=> d!332660 m!1335457))

(assert (=> b!1165811 m!1335431))

(declare-fun m!1335459 () Bool)

(assert (=> b!1165812 m!1335459))

(declare-fun m!1335461 () Bool)

(assert (=> b!1165813 m!1335461))

(assert (=> b!1165813 m!1335409))

(assert (=> b!1165813 m!1335409))

(declare-fun m!1335463 () Bool)

(assert (=> b!1165813 m!1335463))

(assert (=> b!1165780 d!332660))

(declare-fun d!332662 () Bool)

(declare-fun res!526339 () Bool)

(declare-fun e!747097 () Bool)

(assert (=> d!332662 (=> res!526339 e!747097)))

(assert (=> d!332662 (= res!526339 ((_ is Nil!11519) lt!398621))))

(assert (=> d!332662 (= (forall!3024 lt!398621 lambda!47859) e!747097)))

(declare-fun b!1165818 () Bool)

(declare-fun e!747098 () Bool)

(assert (=> b!1165818 (= e!747097 e!747098)))

(declare-fun res!526340 () Bool)

(assert (=> b!1165818 (=> (not res!526340) (not e!747098))))

(declare-fun dynLambda!5074 (Int Token!3676) Bool)

(assert (=> b!1165818 (= res!526340 (dynLambda!5074 lambda!47859 (h!16920 lt!398621)))))

(declare-fun b!1165819 () Bool)

(assert (=> b!1165819 (= e!747098 (forall!3024 (t!110333 lt!398621) lambda!47859))))

(assert (= (and d!332662 (not res!526339)) b!1165818))

(assert (= (and b!1165818 res!526340) b!1165819))

(declare-fun b_lambda!34729 () Bool)

(assert (=> (not b_lambda!34729) (not b!1165818)))

(declare-fun m!1335465 () Bool)

(assert (=> b!1165818 m!1335465))

(declare-fun m!1335467 () Bool)

(assert (=> b!1165819 m!1335467))

(assert (=> b!1165780 d!332662))

(declare-fun d!332664 () Bool)

(declare-fun list!4242 (Conc!3777) List!11543)

(assert (=> d!332664 (= (list!4239 lt!398609) (list!4242 (c!194629 lt!398609)))))

(declare-fun bs!284243 () Bool)

(assert (= bs!284243 d!332664))

(declare-fun m!1335469 () Bool)

(assert (=> bs!284243 m!1335469))

(assert (=> b!1165780 d!332664))

(declare-fun d!332666 () Bool)

(assert (=> d!332666 (forall!3024 lt!398621 lambda!47859)))

(declare-fun lt!398643 () Unit!17605)

(declare-fun choose!7522 (List!11543 List!11543 Int) Unit!17605)

(assert (=> d!332666 (= lt!398643 (choose!7522 lt!398621 lt!398620 lambda!47859))))

(assert (=> d!332666 (forall!3024 lt!398620 lambda!47859)))

(assert (=> d!332666 (= (lemmaForallSubseq!151 lt!398621 lt!398620 lambda!47859) lt!398643)))

(declare-fun bs!284244 () Bool)

(assert (= bs!284244 d!332666))

(assert (=> bs!284244 m!1335357))

(declare-fun m!1335471 () Bool)

(assert (=> bs!284244 m!1335471))

(declare-fun m!1335473 () Bool)

(assert (=> bs!284244 m!1335473))

(assert (=> b!1165780 d!332666))

(declare-fun bs!284245 () Bool)

(declare-fun d!332668 () Bool)

(assert (= bs!284245 (and d!332668 b!1165777)))

(declare-fun lambda!47862 () Int)

(assert (=> bs!284245 (= lambda!47862 lambda!47859)))

(declare-fun b!1165851 () Bool)

(declare-fun e!747125 () Bool)

(assert (=> b!1165851 (= e!747125 true)))

(declare-fun b!1165850 () Bool)

(declare-fun e!747124 () Bool)

(assert (=> b!1165850 (= e!747124 e!747125)))

(declare-fun b!1165849 () Bool)

(declare-fun e!747123 () Bool)

(assert (=> b!1165849 (= e!747123 e!747124)))

(assert (=> d!332668 e!747123))

(assert (= b!1165850 b!1165851))

(assert (= b!1165849 b!1165850))

(assert (= (and d!332668 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1165849))

(declare-fun order!7049 () Int)

(declare-fun order!7047 () Int)

(declare-fun dynLambda!5075 (Int Int) Int)

(declare-fun dynLambda!5076 (Int Int) Int)

(assert (=> b!1165851 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47862))))

(declare-fun order!7051 () Int)

(declare-fun dynLambda!5077 (Int Int) Int)

(assert (=> b!1165851 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47862))))

(assert (=> d!332668 true))

(declare-fun lt!398673 () Bool)

(assert (=> d!332668 (= lt!398673 (forall!3024 lt!398621 lambda!47862))))

(declare-fun e!747115 () Bool)

(assert (=> d!332668 (= lt!398673 e!747115)))

(declare-fun res!526361 () Bool)

(assert (=> d!332668 (=> res!526361 e!747115)))

(assert (=> d!332668 (= res!526361 (not ((_ is Cons!11519) lt!398621)))))

(declare-fun isEmpty!7004 (List!11544) Bool)

(assert (=> d!332668 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332668 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398621) lt!398673)))

(declare-fun b!1165839 () Bool)

(declare-fun e!747116 () Bool)

(assert (=> b!1165839 (= e!747115 e!747116)))

(declare-fun res!526360 () Bool)

(assert (=> b!1165839 (=> (not res!526360) (not e!747116))))

(assert (=> b!1165839 (= res!526360 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398621)))))

(declare-fun b!1165840 () Bool)

(assert (=> b!1165840 (= e!747116 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398621)))))

(assert (= (and d!332668 (not res!526361)) b!1165839))

(assert (= (and b!1165839 res!526360) b!1165840))

(declare-fun m!1335509 () Bool)

(assert (=> d!332668 m!1335509))

(declare-fun m!1335511 () Bool)

(assert (=> d!332668 m!1335511))

(assert (=> b!1165839 m!1335415))

(assert (=> b!1165840 m!1335413))

(assert (=> b!1165759 d!332668))

(declare-fun d!332674 () Bool)

(declare-fun lt!398678 () Int)

(declare-fun size!9072 (List!11542) Int)

(declare-fun list!4243 (BalanceConc!7574) List!11542)

(assert (=> d!332674 (= lt!398678 (size!9072 (list!4243 (charsOf!1068 lt!398625))))))

(declare-fun size!9073 (Conc!3776) Int)

(assert (=> d!332674 (= lt!398678 (size!9073 (c!194628 (charsOf!1068 lt!398625))))))

(assert (=> d!332674 (= (size!9066 (charsOf!1068 lt!398625)) lt!398678)))

(declare-fun bs!284246 () Bool)

(assert (= bs!284246 d!332674))

(assert (=> bs!284246 m!1335343))

(declare-fun m!1335513 () Bool)

(assert (=> bs!284246 m!1335513))

(assert (=> bs!284246 m!1335513))

(declare-fun m!1335515 () Bool)

(assert (=> bs!284246 m!1335515))

(declare-fun m!1335517 () Bool)

(assert (=> bs!284246 m!1335517))

(assert (=> b!1165758 d!332674))

(declare-fun d!332676 () Bool)

(declare-fun lt!398682 () BalanceConc!7574)

(assert (=> d!332676 (= (list!4243 lt!398682) (originalCharacters!2561 lt!398625))))

(declare-fun dynLambda!5078 (Int TokenValue!2073) BalanceConc!7574)

(assert (=> d!332676 (= lt!398682 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625)))))

(assert (=> d!332676 (= (charsOf!1068 lt!398625) lt!398682)))

(declare-fun b_lambda!34731 () Bool)

(assert (=> (not b_lambda!34731) (not d!332676)))

(declare-fun bs!284247 () Bool)

(assert (= bs!284247 d!332676))

(declare-fun m!1335519 () Bool)

(assert (=> bs!284247 m!1335519))

(declare-fun m!1335521 () Bool)

(assert (=> bs!284247 m!1335521))

(assert (=> b!1165758 d!332676))

(declare-fun b!1165960 () Bool)

(declare-fun e!747207 () Bool)

(declare-fun lt!398794 () List!11543)

(assert (=> b!1165960 (= e!747207 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398794))))

(declare-fun b!1165961 () Bool)

(declare-fun e!747208 () Bool)

(declare-fun lt!398797 () List!11543)

(assert (=> b!1165961 (= e!747208 (<= 0 (size!9071 lt!398797)))))

(declare-fun b!1165962 () Bool)

(declare-fun res!526428 () Bool)

(assert (=> b!1165962 (=> (not res!526428) (not e!747207))))

(assert (=> b!1165962 (= res!526428 (not (isEmpty!7004 (rules!9572 thiss!10527))))))

(declare-fun b!1165963 () Bool)

(declare-fun e!747210 () Bool)

(assert (=> b!1165963 (= e!747210 (<= 0 (size!9067 (tokens!1624 thiss!10527))))))

(declare-fun b!1165964 () Bool)

(declare-fun e!747206 () Bool)

(declare-fun e!747209 () Bool)

(assert (=> b!1165964 (= e!747206 e!747209)))

(declare-fun res!526431 () Bool)

(assert (=> b!1165964 (=> (not res!526431) (not e!747209))))

(assert (=> b!1165964 (= res!526431 (separableTokensPredicate!130 Lexer!1700 (apply!2479 (tokens!1624 thiss!10527) 0) (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)) (rules!9572 thiss!10527)))))

(declare-fun lt!398785 () Unit!17605)

(declare-fun Unit!17610 () Unit!17605)

(assert (=> b!1165964 (= lt!398785 Unit!17610)))

(assert (=> b!1165964 (> (size!9066 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!398772 () Unit!17605)

(declare-fun Unit!17611 () Unit!17605)

(assert (=> b!1165964 (= lt!398772 Unit!17611)))

(assert (=> b!1165964 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)))))

(declare-fun lt!398790 () Unit!17605)

(declare-fun Unit!17612 () Unit!17605)

(assert (=> b!1165964 (= lt!398790 Unit!17612)))

(assert (=> b!1165964 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) 0))))

(declare-fun lt!398771 () Unit!17605)

(declare-fun lt!398782 () Unit!17605)

(assert (=> b!1165964 (= lt!398771 lt!398782)))

(declare-fun lt!398777 () Token!3676)

(assert (=> b!1165964 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398777)))

(declare-fun lt!398802 () List!11543)

(assert (=> b!1165964 (= lt!398782 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398802 lt!398777))))

(assert (=> b!1165964 (= lt!398777 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)))))

(assert (=> b!1165964 (= lt!398802 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398787 () Unit!17605)

(declare-fun lt!398773 () Unit!17605)

(assert (=> b!1165964 (= lt!398787 lt!398773)))

(declare-fun lt!398781 () Token!3676)

(assert (=> b!1165964 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398781)))

(declare-fun lt!398793 () List!11543)

(assert (=> b!1165964 (= lt!398773 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398793 lt!398781))))

(assert (=> b!1165964 (= lt!398781 (apply!2479 (tokens!1624 thiss!10527) 0))))

(assert (=> b!1165964 (= lt!398793 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398778 () Unit!17605)

(declare-fun lt!398783 () Unit!17605)

(assert (=> b!1165964 (= lt!398778 lt!398783)))

(declare-fun lt!398780 () List!11543)

(declare-fun lt!398776 () Int)

(assert (=> b!1165964 (= (tail!1686 (drop!482 lt!398780 lt!398776)) (drop!482 lt!398780 (+ lt!398776 1)))))

(assert (=> b!1165964 (= lt!398783 (lemmaDropTail!359 lt!398780 lt!398776))))

(assert (=> b!1165964 (= lt!398776 (+ 0 1))))

(assert (=> b!1165964 (= lt!398780 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398786 () Unit!17605)

(declare-fun lt!398770 () Unit!17605)

(assert (=> b!1165964 (= lt!398786 lt!398770)))

(declare-fun lt!398796 () List!11543)

(assert (=> b!1165964 (= (tail!1686 (drop!482 lt!398796 0)) (drop!482 lt!398796 (+ 0 1)))))

(assert (=> b!1165964 (= lt!398770 (lemmaDropTail!359 lt!398796 0))))

(assert (=> b!1165964 (= lt!398796 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398792 () Unit!17605)

(declare-fun lt!398775 () Unit!17605)

(assert (=> b!1165964 (= lt!398792 lt!398775)))

(declare-fun lt!398798 () List!11543)

(declare-fun lt!398801 () Int)

(assert (=> b!1165964 (= (head!2102 (drop!482 lt!398798 lt!398801)) (apply!2480 lt!398798 lt!398801))))

(assert (=> b!1165964 (= lt!398775 (lemmaDropApply!371 lt!398798 lt!398801))))

(assert (=> b!1165964 (= lt!398801 (+ 0 1))))

(assert (=> b!1165964 (= lt!398798 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398789 () Unit!17605)

(declare-fun lt!398799 () Unit!17605)

(assert (=> b!1165964 (= lt!398789 lt!398799)))

(declare-fun lt!398774 () List!11543)

(assert (=> b!1165964 (= (head!2102 (drop!482 lt!398774 0)) (apply!2480 lt!398774 0))))

(assert (=> b!1165964 (= lt!398799 (lemmaDropApply!371 lt!398774 0))))

(assert (=> b!1165964 (= lt!398774 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun b!1165965 () Bool)

(declare-fun res!526429 () Bool)

(assert (=> b!1165965 (=> (not res!526429) (not e!747207))))

(declare-fun lt!398784 () List!11543)

(assert (=> b!1165965 (= res!526429 (subseq!259 lt!398784 lt!398794))))

(declare-fun b!1165967 () Bool)

(assert (=> b!1165967 (= e!747209 (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 (tokens!1624 thiss!10527) (+ 0 1) (rules!9572 thiss!10527)))))

(declare-fun d!332678 () Bool)

(declare-fun lt!398800 () Bool)

(declare-fun dropList!317 (BalanceConc!7576 Int) List!11543)

(assert (=> d!332678 (= lt!398800 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (dropList!317 (tokens!1624 thiss!10527) 0) (rules!9572 thiss!10527)))))

(declare-fun lt!398779 () Unit!17605)

(declare-fun lt!398791 () Unit!17605)

(assert (=> d!332678 (= lt!398779 lt!398791)))

(assert (=> d!332678 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398784)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!27 (LexerInterface!1702 List!11544 List!11543 List!11543) Unit!17605)

(assert (=> d!332678 (= lt!398791 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!27 Lexer!1700 (rules!9572 thiss!10527) lt!398794 lt!398784))))

(assert (=> d!332678 e!747207))

(declare-fun res!526430 () Bool)

(assert (=> d!332678 (=> (not res!526430) (not e!747207))))

(assert (=> d!332678 (= res!526430 ((_ is Lexer!1700) Lexer!1700))))

(assert (=> d!332678 (= lt!398784 (dropList!317 (tokens!1624 thiss!10527) 0))))

(assert (=> d!332678 (= lt!398794 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398788 () Unit!17605)

(declare-fun lt!398795 () Unit!17605)

(assert (=> d!332678 (= lt!398788 lt!398795)))

(assert (=> d!332678 (subseq!259 (drop!482 lt!398797 0) lt!398797)))

(declare-fun lemmaDropSubSeq!27 (List!11543 Int) Unit!17605)

(assert (=> d!332678 (= lt!398795 (lemmaDropSubSeq!27 lt!398797 0))))

(assert (=> d!332678 e!747208))

(declare-fun res!526432 () Bool)

(assert (=> d!332678 (=> (not res!526432) (not e!747208))))

(assert (=> d!332678 (= res!526432 (>= 0 0))))

(assert (=> d!332678 (= lt!398797 (list!4239 (tokens!1624 thiss!10527)))))

(assert (=> d!332678 (= lt!398800 e!747206)))

(declare-fun res!526426 () Bool)

(assert (=> d!332678 (=> res!526426 e!747206)))

(assert (=> d!332678 (= res!526426 (not (< 0 (- (size!9067 (tokens!1624 thiss!10527)) 1))))))

(assert (=> d!332678 e!747210))

(declare-fun res!526425 () Bool)

(assert (=> d!332678 (=> (not res!526425) (not e!747210))))

(assert (=> d!332678 (= res!526425 (>= 0 0))))

(assert (=> d!332678 (= (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 (tokens!1624 thiss!10527) 0 (rules!9572 thiss!10527)) lt!398800)))

(declare-fun b!1165966 () Bool)

(declare-fun res!526427 () Bool)

(assert (=> b!1165966 (=> (not res!526427) (not e!747207))))

(assert (=> b!1165966 (= res!526427 (rulesInvariant!1576 Lexer!1700 (rules!9572 thiss!10527)))))

(assert (= (and d!332678 res!526425) b!1165963))

(assert (= (and d!332678 (not res!526426)) b!1165964))

(assert (= (and b!1165964 res!526431) b!1165967))

(assert (= (and d!332678 res!526432) b!1165961))

(assert (= (and d!332678 res!526430) b!1165962))

(assert (= (and b!1165962 res!526428) b!1165966))

(assert (= (and b!1165966 res!526427) b!1165965))

(assert (= (and b!1165965 res!526429) b!1165960))

(declare-fun m!1335613 () Bool)

(assert (=> b!1165964 m!1335613))

(declare-fun m!1335615 () Bool)

(assert (=> b!1165964 m!1335615))

(declare-fun m!1335617 () Bool)

(assert (=> b!1165964 m!1335617))

(declare-fun m!1335619 () Bool)

(assert (=> b!1165964 m!1335619))

(declare-fun m!1335621 () Bool)

(assert (=> b!1165964 m!1335621))

(declare-fun m!1335623 () Bool)

(assert (=> b!1165964 m!1335623))

(declare-fun m!1335625 () Bool)

(assert (=> b!1165964 m!1335625))

(declare-fun m!1335627 () Bool)

(assert (=> b!1165964 m!1335627))

(declare-fun m!1335629 () Bool)

(assert (=> b!1165964 m!1335629))

(declare-fun m!1335631 () Bool)

(assert (=> b!1165964 m!1335631))

(declare-fun m!1335633 () Bool)

(assert (=> b!1165964 m!1335633))

(declare-fun m!1335635 () Bool)

(assert (=> b!1165964 m!1335635))

(declare-fun m!1335637 () Bool)

(assert (=> b!1165964 m!1335637))

(declare-fun m!1335639 () Bool)

(assert (=> b!1165964 m!1335639))

(assert (=> b!1165964 m!1335341))

(declare-fun m!1335641 () Bool)

(assert (=> b!1165964 m!1335641))

(assert (=> b!1165964 m!1335633))

(declare-fun m!1335643 () Bool)

(assert (=> b!1165964 m!1335643))

(assert (=> b!1165964 m!1335341))

(assert (=> b!1165964 m!1335341))

(declare-fun m!1335645 () Bool)

(assert (=> b!1165964 m!1335645))

(declare-fun m!1335647 () Bool)

(assert (=> b!1165964 m!1335647))

(declare-fun m!1335649 () Bool)

(assert (=> b!1165964 m!1335649))

(declare-fun m!1335651 () Bool)

(assert (=> b!1165964 m!1335651))

(assert (=> b!1165964 m!1335623))

(declare-fun m!1335653 () Bool)

(assert (=> b!1165964 m!1335653))

(declare-fun m!1335655 () Bool)

(assert (=> b!1165964 m!1335655))

(assert (=> b!1165964 m!1335645))

(declare-fun m!1335657 () Bool)

(assert (=> b!1165964 m!1335657))

(declare-fun m!1335659 () Bool)

(assert (=> b!1165964 m!1335659))

(declare-fun m!1335661 () Bool)

(assert (=> b!1165964 m!1335661))

(assert (=> b!1165964 m!1335645))

(assert (=> b!1165964 m!1335649))

(declare-fun m!1335663 () Bool)

(assert (=> b!1165964 m!1335663))

(assert (=> b!1165964 m!1335409))

(assert (=> b!1165964 m!1335645))

(assert (=> b!1165964 m!1335629))

(assert (=> b!1165964 m!1335617))

(declare-fun m!1335665 () Bool)

(assert (=> b!1165967 m!1335665))

(assert (=> b!1165966 m!1335397))

(assert (=> b!1165962 m!1335511))

(declare-fun m!1335667 () Bool)

(assert (=> b!1165965 m!1335667))

(declare-fun m!1335669 () Bool)

(assert (=> b!1165961 m!1335669))

(declare-fun m!1335671 () Bool)

(assert (=> d!332678 m!1335671))

(declare-fun m!1335673 () Bool)

(assert (=> d!332678 m!1335673))

(assert (=> d!332678 m!1335431))

(assert (=> d!332678 m!1335671))

(declare-fun m!1335675 () Bool)

(assert (=> d!332678 m!1335675))

(declare-fun m!1335677 () Bool)

(assert (=> d!332678 m!1335677))

(declare-fun m!1335679 () Bool)

(assert (=> d!332678 m!1335679))

(assert (=> d!332678 m!1335409))

(declare-fun m!1335681 () Bool)

(assert (=> d!332678 m!1335681))

(declare-fun m!1335683 () Bool)

(assert (=> d!332678 m!1335683))

(assert (=> d!332678 m!1335677))

(declare-fun m!1335685 () Bool)

(assert (=> b!1165960 m!1335685))

(assert (=> b!1165963 m!1335431))

(assert (=> b!1165760 d!332678))

(declare-fun bs!284259 () Bool)

(declare-fun d!332712 () Bool)

(assert (= bs!284259 (and d!332712 b!1165777)))

(declare-fun lambda!47872 () Int)

(assert (=> bs!284259 (= lambda!47872 lambda!47859)))

(declare-fun bs!284260 () Bool)

(assert (= bs!284260 (and d!332712 d!332668)))

(assert (=> bs!284260 (= lambda!47872 lambda!47862)))

(declare-fun b!1165975 () Bool)

(declare-fun e!747218 () Bool)

(assert (=> b!1165975 (= e!747218 true)))

(declare-fun b!1165974 () Bool)

(declare-fun e!747217 () Bool)

(assert (=> b!1165974 (= e!747217 e!747218)))

(declare-fun b!1165973 () Bool)

(declare-fun e!747216 () Bool)

(assert (=> b!1165973 (= e!747216 e!747217)))

(assert (=> d!332712 e!747216))

(assert (= b!1165974 b!1165975))

(assert (= b!1165973 b!1165974))

(assert (= (and d!332712 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1165973))

(assert (=> b!1165975 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47872))))

(assert (=> b!1165975 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47872))))

(assert (=> d!332712 true))

(declare-fun lt!398806 () Bool)

(assert (=> d!332712 (= lt!398806 (forall!3024 (t!110333 lt!398606) lambda!47872))))

(declare-fun e!747214 () Bool)

(assert (=> d!332712 (= lt!398806 e!747214)))

(declare-fun res!526437 () Bool)

(assert (=> d!332712 (=> res!526437 e!747214)))

(assert (=> d!332712 (= res!526437 (not ((_ is Cons!11519) (t!110333 lt!398606))))))

(assert (=> d!332712 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332712 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398606)) lt!398806)))

(declare-fun b!1165971 () Bool)

(declare-fun e!747215 () Bool)

(assert (=> b!1165971 (= e!747214 e!747215)))

(declare-fun res!526436 () Bool)

(assert (=> b!1165971 (=> (not res!526436) (not e!747215))))

(assert (=> b!1165971 (= res!526436 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398606))))))

(declare-fun b!1165972 () Bool)

(assert (=> b!1165972 (= e!747215 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 lt!398606))))))

(assert (= (and d!332712 (not res!526437)) b!1165971))

(assert (= (and b!1165971 res!526436) b!1165972))

(declare-fun m!1335687 () Bool)

(assert (=> d!332712 m!1335687))

(assert (=> d!332712 m!1335511))

(declare-fun m!1335689 () Bool)

(assert (=> b!1165971 m!1335689))

(declare-fun m!1335691 () Bool)

(assert (=> b!1165972 m!1335691))

(assert (=> b!1165781 d!332712))

(declare-fun bs!284262 () Bool)

(declare-fun d!332714 () Bool)

(assert (= bs!284262 (and d!332714 b!1165777)))

(declare-fun lambda!47877 () Int)

(assert (=> bs!284262 (= lambda!47877 lambda!47859)))

(declare-fun bs!284263 () Bool)

(assert (= bs!284263 (and d!332714 d!332668)))

(assert (=> bs!284263 (= lambda!47877 lambda!47862)))

(declare-fun bs!284264 () Bool)

(assert (= bs!284264 (and d!332714 d!332712)))

(assert (=> bs!284264 (= lambda!47877 lambda!47872)))

(declare-fun b!1166000 () Bool)

(declare-fun e!747237 () Bool)

(assert (=> b!1166000 (= e!747237 true)))

(declare-fun b!1165999 () Bool)

(declare-fun e!747236 () Bool)

(assert (=> b!1165999 (= e!747236 e!747237)))

(declare-fun b!1165998 () Bool)

(declare-fun e!747235 () Bool)

(assert (=> b!1165998 (= e!747235 e!747236)))

(assert (=> d!332714 e!747235))

(assert (= b!1165999 b!1166000))

(assert (= b!1165998 b!1165999))

(assert (= (and d!332714 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1165998))

(assert (=> b!1166000 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47877))))

(assert (=> b!1166000 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47877))))

(assert (=> d!332714 true))

(declare-fun e!747234 () Bool)

(assert (=> d!332714 e!747234))

(declare-fun res!526447 () Bool)

(assert (=> d!332714 (=> (not res!526447) (not e!747234))))

(declare-fun lt!398819 () Bool)

(assert (=> d!332714 (= res!526447 (= lt!398819 (forall!3024 (list!4239 (tokens!1624 thiss!10527)) lambda!47877)))))

(assert (=> d!332714 (= lt!398819 (forall!3023 (tokens!1624 thiss!10527) lambda!47877))))

(assert (=> d!332714 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332714 (= (rulesProduceEachTokenIndividually!740 Lexer!1700 (rules!9572 thiss!10527) (tokens!1624 thiss!10527)) lt!398819)))

(declare-fun b!1165997 () Bool)

(assert (=> b!1165997 (= e!747234 (= lt!398819 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (list!4239 (tokens!1624 thiss!10527)))))))

(assert (= (and d!332714 res!526447) b!1165997))

(assert (=> d!332714 m!1335409))

(assert (=> d!332714 m!1335409))

(declare-fun m!1335721 () Bool)

(assert (=> d!332714 m!1335721))

(declare-fun m!1335723 () Bool)

(assert (=> d!332714 m!1335723))

(assert (=> d!332714 m!1335511))

(assert (=> b!1165997 m!1335409))

(assert (=> b!1165997 m!1335409))

(declare-fun m!1335725 () Bool)

(assert (=> b!1165997 m!1335725))

(assert (=> b!1165777 d!332714))

(declare-fun d!332730 () Bool)

(declare-fun lt!398826 () Bool)

(assert (=> d!332730 (= lt!398826 (forall!3024 (list!4239 (tokens!1624 thiss!10527)) lambda!47859))))

(declare-fun forall!3026 (Conc!3777 Int) Bool)

(assert (=> d!332730 (= lt!398826 (forall!3026 (c!194629 (tokens!1624 thiss!10527)) lambda!47859))))

(assert (=> d!332730 (= (forall!3023 (tokens!1624 thiss!10527) lambda!47859) lt!398826)))

(declare-fun bs!284265 () Bool)

(assert (= bs!284265 d!332730))

(assert (=> bs!284265 m!1335409))

(assert (=> bs!284265 m!1335409))

(declare-fun m!1335727 () Bool)

(assert (=> bs!284265 m!1335727))

(declare-fun m!1335729 () Bool)

(assert (=> bs!284265 m!1335729))

(assert (=> b!1165777 d!332730))

(declare-fun bs!284266 () Bool)

(declare-fun d!332732 () Bool)

(assert (= bs!284266 (and d!332732 b!1165777)))

(declare-fun lambda!47878 () Int)

(assert (=> bs!284266 (= lambda!47878 lambda!47859)))

(declare-fun bs!284267 () Bool)

(assert (= bs!284267 (and d!332732 d!332668)))

(assert (=> bs!284267 (= lambda!47878 lambda!47862)))

(declare-fun bs!284268 () Bool)

(assert (= bs!284268 (and d!332732 d!332712)))

(assert (=> bs!284268 (= lambda!47878 lambda!47872)))

(declare-fun bs!284269 () Bool)

(assert (= bs!284269 (and d!332732 d!332714)))

(assert (=> bs!284269 (= lambda!47878 lambda!47877)))

(declare-fun b!1166012 () Bool)

(declare-fun e!747248 () Bool)

(assert (=> b!1166012 (= e!747248 true)))

(declare-fun b!1166011 () Bool)

(declare-fun e!747247 () Bool)

(assert (=> b!1166011 (= e!747247 e!747248)))

(declare-fun b!1166010 () Bool)

(declare-fun e!747246 () Bool)

(assert (=> b!1166010 (= e!747246 e!747247)))

(assert (=> d!332732 e!747246))

(assert (= b!1166011 b!1166012))

(assert (= b!1166010 b!1166011))

(assert (= (and d!332732 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166010))

(assert (=> b!1166012 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47878))))

(assert (=> b!1166012 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47878))))

(assert (=> d!332732 true))

(declare-fun lt!398828 () Bool)

(assert (=> d!332732 (= lt!398828 (forall!3024 lt!398620 lambda!47878))))

(declare-fun e!747244 () Bool)

(assert (=> d!332732 (= lt!398828 e!747244)))

(declare-fun res!526454 () Bool)

(assert (=> d!332732 (=> res!526454 e!747244)))

(assert (=> d!332732 (= res!526454 (not ((_ is Cons!11519) lt!398620)))))

(assert (=> d!332732 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332732 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398620) lt!398828)))

(declare-fun b!1166008 () Bool)

(declare-fun e!747245 () Bool)

(assert (=> b!1166008 (= e!747244 e!747245)))

(declare-fun res!526453 () Bool)

(assert (=> b!1166008 (=> (not res!526453) (not e!747245))))

(assert (=> b!1166008 (= res!526453 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398620)))))

(declare-fun b!1166009 () Bool)

(assert (=> b!1166009 (= e!747245 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398620)))))

(assert (= (and d!332732 (not res!526454)) b!1166008))

(assert (= (and b!1166008 res!526453) b!1166009))

(declare-fun m!1335743 () Bool)

(assert (=> d!332732 m!1335743))

(assert (=> d!332732 m!1335511))

(assert (=> b!1166008 m!1335429))

(assert (=> b!1166009 m!1335425))

(assert (=> b!1165777 d!332732))

(declare-fun d!332740 () Bool)

(assert (=> d!332740 (= (list!4239 (tokens!1624 thiss!10527)) (list!4242 (c!194629 (tokens!1624 thiss!10527))))))

(declare-fun bs!284271 () Bool)

(assert (= bs!284271 d!332740))

(declare-fun m!1335745 () Bool)

(assert (=> bs!284271 m!1335745))

(assert (=> b!1165777 d!332740))

(declare-fun b!1166016 () Bool)

(declare-fun e!747252 () Bool)

(declare-fun lt!398855 () List!11543)

(assert (=> b!1166016 (= e!747252 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398855))))

(declare-fun b!1166017 () Bool)

(declare-fun e!747253 () Bool)

(declare-fun lt!398858 () List!11543)

(assert (=> b!1166017 (= e!747253 (<= 1 (size!9071 lt!398858)))))

(declare-fun b!1166018 () Bool)

(declare-fun res!526459 () Bool)

(assert (=> b!1166018 (=> (not res!526459) (not e!747252))))

(assert (=> b!1166018 (= res!526459 (not (isEmpty!7004 (rules!9572 thiss!10527))))))

(declare-fun b!1166019 () Bool)

(declare-fun e!747256 () Bool)

(assert (=> b!1166019 (= e!747256 (<= 1 (size!9067 (tokens!1624 thiss!10527))))))

(declare-fun b!1166020 () Bool)

(declare-fun e!747251 () Bool)

(declare-fun e!747254 () Bool)

(assert (=> b!1166020 (= e!747251 e!747254)))

(declare-fun res!526462 () Bool)

(assert (=> b!1166020 (=> (not res!526462) (not e!747254))))

(assert (=> b!1166020 (= res!526462 (separableTokensPredicate!130 Lexer!1700 (apply!2479 (tokens!1624 thiss!10527) 1) (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)) (rules!9572 thiss!10527)))))

(declare-fun lt!398846 () Unit!17605)

(declare-fun Unit!17617 () Unit!17605)

(assert (=> b!1166020 (= lt!398846 Unit!17617)))

(assert (=> b!1166020 (> (size!9066 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!398833 () Unit!17605)

(declare-fun Unit!17618 () Unit!17605)

(assert (=> b!1166020 (= lt!398833 Unit!17618)))

(assert (=> b!1166020 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)))))

(declare-fun lt!398851 () Unit!17605)

(declare-fun Unit!17619 () Unit!17605)

(assert (=> b!1166020 (= lt!398851 Unit!17619)))

(assert (=> b!1166020 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) 1))))

(declare-fun lt!398832 () Unit!17605)

(declare-fun lt!398843 () Unit!17605)

(assert (=> b!1166020 (= lt!398832 lt!398843)))

(declare-fun lt!398838 () Token!3676)

(assert (=> b!1166020 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398838)))

(declare-fun lt!398864 () List!11543)

(assert (=> b!1166020 (= lt!398843 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398864 lt!398838))))

(assert (=> b!1166020 (= lt!398838 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)))))

(assert (=> b!1166020 (= lt!398864 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398848 () Unit!17605)

(declare-fun lt!398834 () Unit!17605)

(assert (=> b!1166020 (= lt!398848 lt!398834)))

(declare-fun lt!398842 () Token!3676)

(assert (=> b!1166020 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398842)))

(declare-fun lt!398854 () List!11543)

(assert (=> b!1166020 (= lt!398834 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398854 lt!398842))))

(assert (=> b!1166020 (= lt!398842 (apply!2479 (tokens!1624 thiss!10527) 1))))

(assert (=> b!1166020 (= lt!398854 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398839 () Unit!17605)

(declare-fun lt!398844 () Unit!17605)

(assert (=> b!1166020 (= lt!398839 lt!398844)))

(declare-fun lt!398841 () List!11543)

(declare-fun lt!398837 () Int)

(assert (=> b!1166020 (= (tail!1686 (drop!482 lt!398841 lt!398837)) (drop!482 lt!398841 (+ lt!398837 1)))))

(assert (=> b!1166020 (= lt!398844 (lemmaDropTail!359 lt!398841 lt!398837))))

(assert (=> b!1166020 (= lt!398837 (+ 1 1))))

(assert (=> b!1166020 (= lt!398841 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398847 () Unit!17605)

(declare-fun lt!398831 () Unit!17605)

(assert (=> b!1166020 (= lt!398847 lt!398831)))

(declare-fun lt!398857 () List!11543)

(assert (=> b!1166020 (= (tail!1686 (drop!482 lt!398857 1)) (drop!482 lt!398857 (+ 1 1)))))

(assert (=> b!1166020 (= lt!398831 (lemmaDropTail!359 lt!398857 1))))

(assert (=> b!1166020 (= lt!398857 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398853 () Unit!17605)

(declare-fun lt!398836 () Unit!17605)

(assert (=> b!1166020 (= lt!398853 lt!398836)))

(declare-fun lt!398859 () List!11543)

(declare-fun lt!398863 () Int)

(assert (=> b!1166020 (= (head!2102 (drop!482 lt!398859 lt!398863)) (apply!2480 lt!398859 lt!398863))))

(assert (=> b!1166020 (= lt!398836 (lemmaDropApply!371 lt!398859 lt!398863))))

(assert (=> b!1166020 (= lt!398863 (+ 1 1))))

(assert (=> b!1166020 (= lt!398859 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398850 () Unit!17605)

(declare-fun lt!398861 () Unit!17605)

(assert (=> b!1166020 (= lt!398850 lt!398861)))

(declare-fun lt!398835 () List!11543)

(assert (=> b!1166020 (= (head!2102 (drop!482 lt!398835 1)) (apply!2480 lt!398835 1))))

(assert (=> b!1166020 (= lt!398861 (lemmaDropApply!371 lt!398835 1))))

(assert (=> b!1166020 (= lt!398835 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun b!1166022 () Bool)

(declare-fun res!526460 () Bool)

(assert (=> b!1166022 (=> (not res!526460) (not e!747252))))

(declare-fun lt!398845 () List!11543)

(assert (=> b!1166022 (= res!526460 (subseq!259 lt!398845 lt!398855))))

(declare-fun b!1166026 () Bool)

(assert (=> b!1166026 (= e!747254 (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 (tokens!1624 thiss!10527) (+ 1 1) (rules!9572 thiss!10527)))))

(declare-fun d!332742 () Bool)

(declare-fun lt!398862 () Bool)

(assert (=> d!332742 (= lt!398862 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (dropList!317 (tokens!1624 thiss!10527) 1) (rules!9572 thiss!10527)))))

(declare-fun lt!398840 () Unit!17605)

(declare-fun lt!398852 () Unit!17605)

(assert (=> d!332742 (= lt!398840 lt!398852)))

(assert (=> d!332742 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398845)))

(assert (=> d!332742 (= lt!398852 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!27 Lexer!1700 (rules!9572 thiss!10527) lt!398855 lt!398845))))

(assert (=> d!332742 e!747252))

(declare-fun res!526461 () Bool)

(assert (=> d!332742 (=> (not res!526461) (not e!747252))))

(assert (=> d!332742 (= res!526461 ((_ is Lexer!1700) Lexer!1700))))

(assert (=> d!332742 (= lt!398845 (dropList!317 (tokens!1624 thiss!10527) 1))))

(assert (=> d!332742 (= lt!398855 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!398849 () Unit!17605)

(declare-fun lt!398856 () Unit!17605)

(assert (=> d!332742 (= lt!398849 lt!398856)))

(assert (=> d!332742 (subseq!259 (drop!482 lt!398858 1) lt!398858)))

(assert (=> d!332742 (= lt!398856 (lemmaDropSubSeq!27 lt!398858 1))))

(assert (=> d!332742 e!747253))

(declare-fun res!526463 () Bool)

(assert (=> d!332742 (=> (not res!526463) (not e!747253))))

(assert (=> d!332742 (= res!526463 (>= 1 0))))

(assert (=> d!332742 (= lt!398858 (list!4239 (tokens!1624 thiss!10527)))))

(assert (=> d!332742 (= lt!398862 e!747251)))

(declare-fun res!526457 () Bool)

(assert (=> d!332742 (=> res!526457 e!747251)))

(assert (=> d!332742 (= res!526457 (not (< 1 (- (size!9067 (tokens!1624 thiss!10527)) 1))))))

(assert (=> d!332742 e!747256))

(declare-fun res!526456 () Bool)

(assert (=> d!332742 (=> (not res!526456) (not e!747256))))

(assert (=> d!332742 (= res!526456 (>= 1 0))))

(assert (=> d!332742 (= (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 (tokens!1624 thiss!10527) 1 (rules!9572 thiss!10527)) lt!398862)))

(declare-fun b!1166024 () Bool)

(declare-fun res!526458 () Bool)

(assert (=> b!1166024 (=> (not res!526458) (not e!747252))))

(assert (=> b!1166024 (= res!526458 (rulesInvariant!1576 Lexer!1700 (rules!9572 thiss!10527)))))

(assert (= (and d!332742 res!526456) b!1166019))

(assert (= (and d!332742 (not res!526457)) b!1166020))

(assert (= (and b!1166020 res!526462) b!1166026))

(assert (= (and d!332742 res!526463) b!1166017))

(assert (= (and d!332742 res!526461) b!1166018))

(assert (= (and b!1166018 res!526459) b!1166024))

(assert (= (and b!1166024 res!526458) b!1166022))

(assert (= (and b!1166022 res!526460) b!1166016))

(declare-fun m!1335762 () Bool)

(assert (=> b!1166020 m!1335762))

(declare-fun m!1335765 () Bool)

(assert (=> b!1166020 m!1335765))

(declare-fun m!1335767 () Bool)

(assert (=> b!1166020 m!1335767))

(declare-fun m!1335771 () Bool)

(assert (=> b!1166020 m!1335771))

(declare-fun m!1335775 () Bool)

(assert (=> b!1166020 m!1335775))

(declare-fun m!1335777 () Bool)

(assert (=> b!1166020 m!1335777))

(declare-fun m!1335779 () Bool)

(assert (=> b!1166020 m!1335779))

(declare-fun m!1335783 () Bool)

(assert (=> b!1166020 m!1335783))

(declare-fun m!1335785 () Bool)

(assert (=> b!1166020 m!1335785))

(declare-fun m!1335787 () Bool)

(assert (=> b!1166020 m!1335787))

(declare-fun m!1335791 () Bool)

(assert (=> b!1166020 m!1335791))

(declare-fun m!1335795 () Bool)

(assert (=> b!1166020 m!1335795))

(declare-fun m!1335799 () Bool)

(assert (=> b!1166020 m!1335799))

(declare-fun m!1335801 () Bool)

(assert (=> b!1166020 m!1335801))

(assert (=> b!1166020 m!1335333))

(declare-fun m!1335803 () Bool)

(assert (=> b!1166020 m!1335803))

(assert (=> b!1166020 m!1335791))

(declare-fun m!1335805 () Bool)

(assert (=> b!1166020 m!1335805))

(assert (=> b!1166020 m!1335333))

(assert (=> b!1166020 m!1335333))

(declare-fun m!1335809 () Bool)

(assert (=> b!1166020 m!1335809))

(declare-fun m!1335811 () Bool)

(assert (=> b!1166020 m!1335811))

(declare-fun m!1335813 () Bool)

(assert (=> b!1166020 m!1335813))

(declare-fun m!1335815 () Bool)

(assert (=> b!1166020 m!1335815))

(assert (=> b!1166020 m!1335777))

(declare-fun m!1335817 () Bool)

(assert (=> b!1166020 m!1335817))

(declare-fun m!1335819 () Bool)

(assert (=> b!1166020 m!1335819))

(assert (=> b!1166020 m!1335809))

(declare-fun m!1335821 () Bool)

(assert (=> b!1166020 m!1335821))

(declare-fun m!1335823 () Bool)

(assert (=> b!1166020 m!1335823))

(declare-fun m!1335825 () Bool)

(assert (=> b!1166020 m!1335825))

(assert (=> b!1166020 m!1335809))

(assert (=> b!1166020 m!1335813))

(declare-fun m!1335827 () Bool)

(assert (=> b!1166020 m!1335827))

(assert (=> b!1166020 m!1335409))

(assert (=> b!1166020 m!1335809))

(assert (=> b!1166020 m!1335785))

(assert (=> b!1166020 m!1335767))

(declare-fun m!1335829 () Bool)

(assert (=> b!1166026 m!1335829))

(assert (=> b!1166024 m!1335397))

(assert (=> b!1166018 m!1335511))

(declare-fun m!1335831 () Bool)

(assert (=> b!1166022 m!1335831))

(declare-fun m!1335833 () Bool)

(assert (=> b!1166017 m!1335833))

(declare-fun m!1335835 () Bool)

(assert (=> d!332742 m!1335835))

(declare-fun m!1335837 () Bool)

(assert (=> d!332742 m!1335837))

(assert (=> d!332742 m!1335431))

(assert (=> d!332742 m!1335835))

(declare-fun m!1335839 () Bool)

(assert (=> d!332742 m!1335839))

(declare-fun m!1335841 () Bool)

(assert (=> d!332742 m!1335841))

(declare-fun m!1335843 () Bool)

(assert (=> d!332742 m!1335843))

(assert (=> d!332742 m!1335409))

(declare-fun m!1335845 () Bool)

(assert (=> d!332742 m!1335845))

(declare-fun m!1335847 () Bool)

(assert (=> d!332742 m!1335847))

(assert (=> d!332742 m!1335841))

(declare-fun m!1335849 () Bool)

(assert (=> b!1166016 m!1335849))

(assert (=> b!1166019 m!1335431))

(assert (=> b!1165779 d!332742))

(declare-fun bs!284276 () Bool)

(declare-fun d!332754 () Bool)

(assert (= bs!284276 (and d!332754 d!332714)))

(declare-fun lambda!47880 () Int)

(assert (=> bs!284276 (= lambda!47880 lambda!47877)))

(declare-fun bs!284277 () Bool)

(assert (= bs!284277 (and d!332754 d!332712)))

(assert (=> bs!284277 (= lambda!47880 lambda!47872)))

(declare-fun bs!284278 () Bool)

(assert (= bs!284278 (and d!332754 d!332732)))

(assert (=> bs!284278 (= lambda!47880 lambda!47878)))

(declare-fun bs!284279 () Bool)

(assert (= bs!284279 (and d!332754 b!1165777)))

(assert (=> bs!284279 (= lambda!47880 lambda!47859)))

(declare-fun bs!284280 () Bool)

(assert (= bs!284280 (and d!332754 d!332668)))

(assert (=> bs!284280 (= lambda!47880 lambda!47862)))

(declare-fun b!1166046 () Bool)

(declare-fun e!747273 () Bool)

(assert (=> b!1166046 (= e!747273 true)))

(declare-fun b!1166045 () Bool)

(declare-fun e!747272 () Bool)

(assert (=> b!1166045 (= e!747272 e!747273)))

(declare-fun b!1166044 () Bool)

(declare-fun e!747271 () Bool)

(assert (=> b!1166044 (= e!747271 e!747272)))

(assert (=> d!332754 e!747271))

(assert (= b!1166045 b!1166046))

(assert (= b!1166044 b!1166045))

(assert (= (and d!332754 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166044))

(assert (=> b!1166046 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47880))))

(assert (=> b!1166046 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47880))))

(assert (=> d!332754 true))

(declare-fun lt!398869 () Bool)

(assert (=> d!332754 (= lt!398869 (forall!3024 (t!110333 lt!398620) lambda!47880))))

(declare-fun e!747269 () Bool)

(assert (=> d!332754 (= lt!398869 e!747269)))

(declare-fun res!526472 () Bool)

(assert (=> d!332754 (=> res!526472 e!747269)))

(assert (=> d!332754 (= res!526472 (not ((_ is Cons!11519) (t!110333 lt!398620))))))

(assert (=> d!332754 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332754 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398620)) lt!398869)))

(declare-fun b!1166042 () Bool)

(declare-fun e!747270 () Bool)

(assert (=> b!1166042 (= e!747269 e!747270)))

(declare-fun res!526471 () Bool)

(assert (=> b!1166042 (=> (not res!526471) (not e!747270))))

(assert (=> b!1166042 (= res!526471 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398620))))))

(declare-fun b!1166043 () Bool)

(assert (=> b!1166043 (= e!747270 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 lt!398620))))))

(assert (= (and d!332754 (not res!526472)) b!1166042))

(assert (= (and b!1166042 res!526471) b!1166043))

(declare-fun m!1335861 () Bool)

(assert (=> d!332754 m!1335861))

(assert (=> d!332754 m!1335511))

(declare-fun m!1335869 () Bool)

(assert (=> b!1166042 m!1335869))

(declare-fun m!1335871 () Bool)

(assert (=> b!1166043 m!1335871))

(assert (=> b!1165778 d!332754))

(declare-fun bs!284281 () Bool)

(declare-fun d!332758 () Bool)

(assert (= bs!284281 (and d!332758 d!332714)))

(declare-fun lambda!47881 () Int)

(assert (=> bs!284281 (= lambda!47881 lambda!47877)))

(declare-fun bs!284282 () Bool)

(assert (= bs!284282 (and d!332758 d!332754)))

(assert (=> bs!284282 (= lambda!47881 lambda!47880)))

(declare-fun bs!284283 () Bool)

(assert (= bs!284283 (and d!332758 d!332712)))

(assert (=> bs!284283 (= lambda!47881 lambda!47872)))

(declare-fun bs!284284 () Bool)

(assert (= bs!284284 (and d!332758 d!332732)))

(assert (=> bs!284284 (= lambda!47881 lambda!47878)))

(declare-fun bs!284285 () Bool)

(assert (= bs!284285 (and d!332758 b!1165777)))

(assert (=> bs!284285 (= lambda!47881 lambda!47859)))

(declare-fun bs!284286 () Bool)

(assert (= bs!284286 (and d!332758 d!332668)))

(assert (=> bs!284286 (= lambda!47881 lambda!47862)))

(declare-fun b!1166053 () Bool)

(declare-fun e!747279 () Bool)

(assert (=> b!1166053 (= e!747279 true)))

(declare-fun b!1166052 () Bool)

(declare-fun e!747278 () Bool)

(assert (=> b!1166052 (= e!747278 e!747279)))

(declare-fun b!1166051 () Bool)

(declare-fun e!747277 () Bool)

(assert (=> b!1166051 (= e!747277 e!747278)))

(assert (=> d!332758 e!747277))

(assert (= b!1166052 b!1166053))

(assert (= b!1166051 b!1166052))

(assert (= (and d!332758 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166051))

(assert (=> b!1166053 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47881))))

(assert (=> b!1166053 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47881))))

(assert (=> d!332758 true))

(declare-fun e!747276 () Bool)

(assert (=> d!332758 e!747276))

(declare-fun res!526476 () Bool)

(assert (=> d!332758 (=> (not res!526476) (not e!747276))))

(declare-fun lt!398872 () Bool)

(assert (=> d!332758 (= res!526476 (= lt!398872 (forall!3024 (list!4239 lt!398609) lambda!47881)))))

(assert (=> d!332758 (= lt!398872 (forall!3023 lt!398609 lambda!47881))))

(assert (=> d!332758 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332758 (= (rulesProduceEachTokenIndividually!740 Lexer!1700 (rules!9572 thiss!10527) lt!398609) lt!398872)))

(declare-fun b!1166050 () Bool)

(assert (=> b!1166050 (= e!747276 (= lt!398872 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (list!4239 lt!398609))))))

(assert (= (and d!332758 res!526476) b!1166050))

(assert (=> d!332758 m!1335361))

(assert (=> d!332758 m!1335361))

(declare-fun m!1335893 () Bool)

(assert (=> d!332758 m!1335893))

(declare-fun m!1335895 () Bool)

(assert (=> d!332758 m!1335895))

(assert (=> d!332758 m!1335511))

(assert (=> b!1166050 m!1335361))

(assert (=> b!1166050 m!1335361))

(declare-fun m!1335897 () Bool)

(assert (=> b!1166050 m!1335897))

(assert (=> b!1165764 d!332758))

(declare-fun d!332764 () Bool)

(declare-fun lt!398880 () Bool)

(assert (=> d!332764 (= lt!398880 (forall!3024 (list!4239 lt!398609) lambda!47859))))

(assert (=> d!332764 (= lt!398880 (forall!3026 (c!194629 lt!398609) lambda!47859))))

(assert (=> d!332764 (= (forall!3023 lt!398609 lambda!47859) lt!398880)))

(declare-fun bs!284287 () Bool)

(assert (= bs!284287 d!332764))

(assert (=> bs!284287 m!1335361))

(assert (=> bs!284287 m!1335361))

(declare-fun m!1335899 () Bool)

(assert (=> bs!284287 m!1335899))

(declare-fun m!1335901 () Bool)

(assert (=> bs!284287 m!1335901))

(assert (=> b!1165764 d!332764))

(declare-fun d!332766 () Bool)

(declare-fun res!526488 () Bool)

(declare-fun e!747287 () Bool)

(assert (=> d!332766 (=> (not res!526488) (not e!747287))))

(assert (=> d!332766 (= res!526488 (not (isEmpty!7004 (rules!9572 thiss!10527))))))

(assert (=> d!332766 (= (inv!15163 thiss!10527) e!747287)))

(declare-fun b!1166065 () Bool)

(declare-fun res!526489 () Bool)

(assert (=> b!1166065 (=> (not res!526489) (not e!747287))))

(assert (=> b!1166065 (= res!526489 (rulesInvariant!1576 Lexer!1700 (rules!9572 thiss!10527)))))

(declare-fun b!1166066 () Bool)

(declare-fun res!526490 () Bool)

(assert (=> b!1166066 (=> (not res!526490) (not e!747287))))

(assert (=> b!1166066 (= res!526490 (rulesProduceEachTokenIndividually!740 Lexer!1700 (rules!9572 thiss!10527) (tokens!1624 thiss!10527)))))

(declare-fun b!1166067 () Bool)

(assert (=> b!1166067 (= e!747287 (separableTokens!139 Lexer!1700 (tokens!1624 thiss!10527) (rules!9572 thiss!10527)))))

(assert (= (and d!332766 res!526488) b!1166065))

(assert (= (and b!1166065 res!526489) b!1166066))

(assert (= (and b!1166066 res!526490) b!1166067))

(assert (=> d!332766 m!1335511))

(assert (=> b!1166065 m!1335397))

(assert (=> b!1166066 m!1335405))

(declare-fun m!1335907 () Bool)

(assert (=> b!1166067 m!1335907))

(assert (=> start!102350 d!332766))

(declare-fun d!332770 () Bool)

(declare-fun lt!398894 () Bool)

(declare-fun e!747311 () Bool)

(assert (=> d!332770 (= lt!398894 e!747311)))

(declare-fun res!526514 () Bool)

(assert (=> d!332770 (=> (not res!526514) (not e!747311))))

(declare-datatypes ((tuple2!12022 0))(
  ( (tuple2!12023 (_1!6858 BalanceConc!7576) (_2!6858 BalanceConc!7574)) )
))
(declare-fun lex!704 (LexerInterface!1702 List!11544 BalanceConc!7574) tuple2!12022)

(declare-fun print!641 (LexerInterface!1702 BalanceConc!7576) BalanceConc!7574)

(declare-fun singletonSeq!668 (Token!3676) BalanceConc!7576)

(assert (=> d!332770 (= res!526514 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621)))))) (list!4239 (singletonSeq!668 (h!16920 lt!398621)))))))

(declare-fun e!747310 () Bool)

(assert (=> d!332770 (= lt!398894 e!747310)))

(declare-fun res!526515 () Bool)

(assert (=> d!332770 (=> (not res!526515) (not e!747310))))

(declare-fun lt!398893 () tuple2!12022)

(assert (=> d!332770 (= res!526515 (= (size!9067 (_1!6858 lt!398893)) 1))))

(assert (=> d!332770 (= lt!398893 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621)))))))

(assert (=> d!332770 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332770 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398621)) lt!398894)))

(declare-fun b!1166100 () Bool)

(declare-fun res!526516 () Bool)

(assert (=> b!1166100 (=> (not res!526516) (not e!747310))))

(assert (=> b!1166100 (= res!526516 (= (apply!2479 (_1!6858 lt!398893) 0) (h!16920 lt!398621)))))

(declare-fun b!1166101 () Bool)

(declare-fun isEmpty!7005 (BalanceConc!7574) Bool)

(assert (=> b!1166101 (= e!747310 (isEmpty!7005 (_2!6858 lt!398893)))))

(declare-fun b!1166102 () Bool)

(assert (=> b!1166102 (= e!747311 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621)))))))))

(assert (= (and d!332770 res!526515) b!1166100))

(assert (= (and b!1166100 res!526516) b!1166101))

(assert (= (and d!332770 res!526514) b!1166102))

(assert (=> d!332770 m!1335511))

(declare-fun m!1335959 () Bool)

(assert (=> d!332770 m!1335959))

(declare-fun m!1335961 () Bool)

(assert (=> d!332770 m!1335961))

(declare-fun m!1335963 () Bool)

(assert (=> d!332770 m!1335963))

(declare-fun m!1335965 () Bool)

(assert (=> d!332770 m!1335965))

(declare-fun m!1335967 () Bool)

(assert (=> d!332770 m!1335967))

(declare-fun m!1335969 () Bool)

(assert (=> d!332770 m!1335969))

(assert (=> d!332770 m!1335965))

(assert (=> d!332770 m!1335959))

(assert (=> d!332770 m!1335965))

(declare-fun m!1335971 () Bool)

(assert (=> b!1166100 m!1335971))

(declare-fun m!1335973 () Bool)

(assert (=> b!1166101 m!1335973))

(assert (=> b!1166102 m!1335965))

(assert (=> b!1166102 m!1335965))

(assert (=> b!1166102 m!1335959))

(assert (=> b!1166102 m!1335959))

(assert (=> b!1166102 m!1335961))

(declare-fun m!1335975 () Bool)

(assert (=> b!1166102 m!1335975))

(assert (=> b!1165765 d!332770))

(assert (=> b!1165761 d!332764))

(declare-fun d!332786 () Bool)

(declare-fun res!526530 () Bool)

(declare-fun e!747319 () Bool)

(assert (=> d!332786 (=> res!526530 e!747319)))

(assert (=> d!332786 (= res!526530 (or (not ((_ is Cons!11519) lt!398606)) (not ((_ is Cons!11519) (t!110333 lt!398606)))))))

(assert (=> d!332786 (= (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 lt!398606 (rules!9572 thiss!10527)) e!747319)))

(declare-fun b!1166116 () Bool)

(declare-fun e!747320 () Bool)

(assert (=> b!1166116 (= e!747319 e!747320)))

(declare-fun res!526531 () Bool)

(assert (=> b!1166116 (=> (not res!526531) (not e!747320))))

(assert (=> b!1166116 (= res!526531 (separableTokensPredicate!130 Lexer!1700 (h!16920 lt!398606) (h!16920 (t!110333 lt!398606)) (rules!9572 thiss!10527)))))

(declare-fun lt!398913 () Unit!17605)

(declare-fun Unit!17624 () Unit!17605)

(assert (=> b!1166116 (= lt!398913 Unit!17624)))

(assert (=> b!1166116 (> (size!9066 (charsOf!1068 (h!16920 (t!110333 lt!398606)))) 0)))

(declare-fun lt!398911 () Unit!17605)

(declare-fun Unit!17626 () Unit!17605)

(assert (=> b!1166116 (= lt!398911 Unit!17626)))

(assert (=> b!1166116 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398606)))))

(declare-fun lt!398915 () Unit!17605)

(declare-fun Unit!17627 () Unit!17605)

(assert (=> b!1166116 (= lt!398915 Unit!17627)))

(assert (=> b!1166116 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398606))))

(declare-fun lt!398914 () Unit!17605)

(declare-fun lt!398910 () Unit!17605)

(assert (=> b!1166116 (= lt!398914 lt!398910)))

(assert (=> b!1166116 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398606)))))

(assert (=> b!1166116 (= lt!398910 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398606 (h!16920 (t!110333 lt!398606))))))

(declare-fun lt!398909 () Unit!17605)

(declare-fun lt!398912 () Unit!17605)

(assert (=> b!1166116 (= lt!398909 lt!398912)))

(assert (=> b!1166116 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398606))))

(assert (=> b!1166116 (= lt!398912 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398606 (h!16920 lt!398606)))))

(declare-fun b!1166117 () Bool)

(assert (=> b!1166117 (= e!747320 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))) (rules!9572 thiss!10527)))))

(assert (= (and d!332786 (not res!526530)) b!1166116))

(assert (= (and b!1166116 res!526531) b!1166117))

(declare-fun m!1335977 () Bool)

(assert (=> b!1166116 m!1335977))

(declare-fun m!1335979 () Bool)

(assert (=> b!1166116 m!1335979))

(declare-fun m!1335981 () Bool)

(assert (=> b!1166116 m!1335981))

(assert (=> b!1166116 m!1335299))

(assert (=> b!1166116 m!1335689))

(assert (=> b!1166116 m!1335979))

(declare-fun m!1335983 () Bool)

(assert (=> b!1166116 m!1335983))

(declare-fun m!1335985 () Bool)

(assert (=> b!1166116 m!1335985))

(declare-fun m!1335987 () Bool)

(assert (=> b!1166117 m!1335987))

(assert (=> b!1165763 d!332786))

(declare-fun d!332790 () Bool)

(declare-fun res!526534 () Bool)

(declare-fun e!747323 () Bool)

(assert (=> d!332790 (=> (not res!526534) (not e!747323))))

(declare-fun rulesValid!702 (LexerInterface!1702 List!11544) Bool)

(assert (=> d!332790 (= res!526534 (rulesValid!702 Lexer!1700 (rules!9572 thiss!10527)))))

(assert (=> d!332790 (= (rulesInvariant!1576 Lexer!1700 (rules!9572 thiss!10527)) e!747323)))

(declare-fun b!1166120 () Bool)

(declare-datatypes ((List!11546 0))(
  ( (Nil!11522) (Cons!11522 (h!16923 String!13953) (t!110364 List!11546)) )
))
(declare-fun noDuplicateTag!702 (LexerInterface!1702 List!11544 List!11546) Bool)

(assert (=> b!1166120 (= e!747323 (noDuplicateTag!702 Lexer!1700 (rules!9572 thiss!10527) Nil!11522))))

(assert (= (and d!332790 res!526534) b!1166120))

(declare-fun m!1335989 () Bool)

(assert (=> d!332790 m!1335989))

(declare-fun m!1335991 () Bool)

(assert (=> b!1166120 m!1335991))

(assert (=> b!1165762 d!332790))

(declare-fun d!332792 () Bool)

(declare-fun e!747330 () Bool)

(assert (=> d!332792 e!747330))

(declare-fun res!526543 () Bool)

(assert (=> d!332792 (=> (not res!526543) (not e!747330))))

(assert (=> d!332792 (= res!526543 (rulesInvariant!1576 Lexer!1700 (rules!9572 thiss!10527)))))

(declare-fun Unit!17629 () Unit!17605)

(assert (=> d!332792 (= (lemmaInvariant!194 thiss!10527) Unit!17629)))

(declare-fun b!1166127 () Bool)

(declare-fun res!526544 () Bool)

(assert (=> b!1166127 (=> (not res!526544) (not e!747330))))

(assert (=> b!1166127 (= res!526544 (rulesProduceEachTokenIndividually!740 Lexer!1700 (rules!9572 thiss!10527) (tokens!1624 thiss!10527)))))

(declare-fun b!1166128 () Bool)

(assert (=> b!1166128 (= e!747330 (separableTokens!139 Lexer!1700 (tokens!1624 thiss!10527) (rules!9572 thiss!10527)))))

(assert (= (and d!332792 res!526543) b!1166127))

(assert (= (and b!1166127 res!526544) b!1166128))

(assert (=> d!332792 m!1335397))

(assert (=> b!1166127 m!1335405))

(assert (=> b!1166128 m!1335907))

(assert (=> b!1165762 d!332792))

(declare-fun d!332794 () Bool)

(declare-fun lt!398939 () Bool)

(declare-fun e!747332 () Bool)

(assert (=> d!332794 (= lt!398939 e!747332)))

(declare-fun res!526545 () Bool)

(assert (=> d!332794 (=> (not res!526545) (not e!747332))))

(assert (=> d!332794 (= res!526545 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606)))))) (list!4239 (singletonSeq!668 (h!16920 lt!398606)))))))

(declare-fun e!747331 () Bool)

(assert (=> d!332794 (= lt!398939 e!747331)))

(declare-fun res!526546 () Bool)

(assert (=> d!332794 (=> (not res!526546) (not e!747331))))

(declare-fun lt!398936 () tuple2!12022)

(assert (=> d!332794 (= res!526546 (= (size!9067 (_1!6858 lt!398936)) 1))))

(assert (=> d!332794 (= lt!398936 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606)))))))

(assert (=> d!332794 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332794 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398606)) lt!398939)))

(declare-fun b!1166131 () Bool)

(declare-fun res!526547 () Bool)

(assert (=> b!1166131 (=> (not res!526547) (not e!747331))))

(assert (=> b!1166131 (= res!526547 (= (apply!2479 (_1!6858 lt!398936) 0) (h!16920 lt!398606)))))

(declare-fun b!1166132 () Bool)

(assert (=> b!1166132 (= e!747331 (isEmpty!7005 (_2!6858 lt!398936)))))

(declare-fun b!1166133 () Bool)

(assert (=> b!1166133 (= e!747332 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606)))))))))

(assert (= (and d!332794 res!526546) b!1166131))

(assert (= (and b!1166131 res!526547) b!1166132))

(assert (= (and d!332794 res!526545) b!1166133))

(assert (=> d!332794 m!1335511))

(declare-fun m!1335993 () Bool)

(assert (=> d!332794 m!1335993))

(declare-fun m!1335995 () Bool)

(assert (=> d!332794 m!1335995))

(declare-fun m!1335997 () Bool)

(assert (=> d!332794 m!1335997))

(declare-fun m!1335999 () Bool)

(assert (=> d!332794 m!1335999))

(declare-fun m!1336001 () Bool)

(assert (=> d!332794 m!1336001))

(declare-fun m!1336003 () Bool)

(assert (=> d!332794 m!1336003))

(assert (=> d!332794 m!1335999))

(assert (=> d!332794 m!1335993))

(assert (=> d!332794 m!1335999))

(declare-fun m!1336005 () Bool)

(assert (=> b!1166131 m!1336005))

(declare-fun m!1336007 () Bool)

(assert (=> b!1166132 m!1336007))

(assert (=> b!1166133 m!1335999))

(assert (=> b!1166133 m!1335999))

(assert (=> b!1166133 m!1335993))

(assert (=> b!1166133 m!1335993))

(assert (=> b!1166133 m!1335995))

(declare-fun m!1336009 () Bool)

(assert (=> b!1166133 m!1336009))

(assert (=> b!1165769 d!332794))

(declare-fun bs!284295 () Bool)

(declare-fun d!332796 () Bool)

(assert (= bs!284295 (and d!332796 d!332714)))

(declare-fun lambda!47883 () Int)

(assert (=> bs!284295 (= lambda!47883 lambda!47877)))

(declare-fun bs!284296 () Bool)

(assert (= bs!284296 (and d!332796 d!332754)))

(assert (=> bs!284296 (= lambda!47883 lambda!47880)))

(declare-fun bs!284297 () Bool)

(assert (= bs!284297 (and d!332796 d!332758)))

(assert (=> bs!284297 (= lambda!47883 lambda!47881)))

(declare-fun bs!284298 () Bool)

(assert (= bs!284298 (and d!332796 d!332712)))

(assert (=> bs!284298 (= lambda!47883 lambda!47872)))

(declare-fun bs!284299 () Bool)

(assert (= bs!284299 (and d!332796 d!332732)))

(assert (=> bs!284299 (= lambda!47883 lambda!47878)))

(declare-fun bs!284300 () Bool)

(assert (= bs!284300 (and d!332796 b!1165777)))

(assert (=> bs!284300 (= lambda!47883 lambda!47859)))

(declare-fun bs!284301 () Bool)

(assert (= bs!284301 (and d!332796 d!332668)))

(assert (=> bs!284301 (= lambda!47883 lambda!47862)))

(declare-fun b!1166150 () Bool)

(declare-fun e!747343 () Bool)

(assert (=> b!1166150 (= e!747343 true)))

(declare-fun b!1166149 () Bool)

(declare-fun e!747342 () Bool)

(assert (=> b!1166149 (= e!747342 e!747343)))

(declare-fun b!1166148 () Bool)

(declare-fun e!747341 () Bool)

(assert (=> b!1166148 (= e!747341 e!747342)))

(assert (=> d!332796 e!747341))

(assert (= b!1166149 b!1166150))

(assert (= b!1166148 b!1166149))

(assert (= (and d!332796 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166148))

(assert (=> b!1166150 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47883))))

(assert (=> b!1166150 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47883))))

(assert (=> d!332796 true))

(declare-fun lt!398982 () Bool)

(assert (=> d!332796 (= lt!398982 (forall!3024 (t!110333 lt!398622) lambda!47883))))

(declare-fun e!747337 () Bool)

(assert (=> d!332796 (= lt!398982 e!747337)))

(declare-fun res!526553 () Bool)

(assert (=> d!332796 (=> res!526553 e!747337)))

(assert (=> d!332796 (= res!526553 (not ((_ is Cons!11519) (t!110333 lt!398622))))))

(assert (=> d!332796 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332796 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398622)) lt!398982)))

(declare-fun b!1166138 () Bool)

(declare-fun e!747338 () Bool)

(assert (=> b!1166138 (= e!747337 e!747338)))

(declare-fun res!526552 () Bool)

(assert (=> b!1166138 (=> (not res!526552) (not e!747338))))

(assert (=> b!1166138 (= res!526552 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398622))))))

(declare-fun b!1166139 () Bool)

(assert (=> b!1166139 (= e!747338 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 lt!398622))))))

(assert (= (and d!332796 (not res!526553)) b!1166138))

(assert (= (and b!1166138 res!526552) b!1166139))

(declare-fun m!1336011 () Bool)

(assert (=> d!332796 m!1336011))

(assert (=> d!332796 m!1335511))

(declare-fun m!1336013 () Bool)

(assert (=> b!1166138 m!1336013))

(declare-fun m!1336015 () Bool)

(assert (=> b!1166139 m!1336015))

(assert (=> b!1165771 d!332796))

(declare-fun d!332798 () Bool)

(declare-fun c!194661 () Bool)

(assert (=> d!332798 (= c!194661 ((_ is Node!3777) (c!194629 (tokens!1624 thiss!10527))))))

(declare-fun e!747348 () Bool)

(assert (=> d!332798 (= (inv!15164 (c!194629 (tokens!1624 thiss!10527))) e!747348)))

(declare-fun b!1166157 () Bool)

(declare-fun inv!15168 (Conc!3777) Bool)

(assert (=> b!1166157 (= e!747348 (inv!15168 (c!194629 (tokens!1624 thiss!10527))))))

(declare-fun b!1166158 () Bool)

(declare-fun e!747349 () Bool)

(assert (=> b!1166158 (= e!747348 e!747349)))

(declare-fun res!526564 () Bool)

(assert (=> b!1166158 (= res!526564 (not ((_ is Leaf!5791) (c!194629 (tokens!1624 thiss!10527)))))))

(assert (=> b!1166158 (=> res!526564 e!747349)))

(declare-fun b!1166159 () Bool)

(declare-fun inv!15169 (Conc!3777) Bool)

(assert (=> b!1166159 (= e!747349 (inv!15169 (c!194629 (tokens!1624 thiss!10527))))))

(assert (= (and d!332798 c!194661) b!1166157))

(assert (= (and d!332798 (not c!194661)) b!1166158))

(assert (= (and b!1166158 (not res!526564)) b!1166159))

(declare-fun m!1336017 () Bool)

(assert (=> b!1166157 m!1336017))

(declare-fun m!1336019 () Bool)

(assert (=> b!1166159 m!1336019))

(assert (=> b!1165770 d!332798))

(declare-fun d!332800 () Bool)

(declare-fun lt!398986 () Bool)

(declare-fun e!747351 () Bool)

(assert (=> d!332800 (= lt!398986 e!747351)))

(declare-fun res!526565 () Bool)

(assert (=> d!332800 (=> (not res!526565) (not e!747351))))

(assert (=> d!332800 (= res!526565 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622)))))) (list!4239 (singletonSeq!668 (h!16920 lt!398622)))))))

(declare-fun e!747350 () Bool)

(assert (=> d!332800 (= lt!398986 e!747350)))

(declare-fun res!526566 () Bool)

(assert (=> d!332800 (=> (not res!526566) (not e!747350))))

(declare-fun lt!398985 () tuple2!12022)

(assert (=> d!332800 (= res!526566 (= (size!9067 (_1!6858 lt!398985)) 1))))

(assert (=> d!332800 (= lt!398985 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622)))))))

(assert (=> d!332800 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332800 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398622)) lt!398986)))

(declare-fun b!1166160 () Bool)

(declare-fun res!526567 () Bool)

(assert (=> b!1166160 (=> (not res!526567) (not e!747350))))

(assert (=> b!1166160 (= res!526567 (= (apply!2479 (_1!6858 lt!398985) 0) (h!16920 lt!398622)))))

(declare-fun b!1166161 () Bool)

(assert (=> b!1166161 (= e!747350 (isEmpty!7005 (_2!6858 lt!398985)))))

(declare-fun b!1166162 () Bool)

(assert (=> b!1166162 (= e!747351 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622)))))))))

(assert (= (and d!332800 res!526566) b!1166160))

(assert (= (and b!1166160 res!526567) b!1166161))

(assert (= (and d!332800 res!526565) b!1166162))

(assert (=> d!332800 m!1335511))

(declare-fun m!1336021 () Bool)

(assert (=> d!332800 m!1336021))

(declare-fun m!1336023 () Bool)

(assert (=> d!332800 m!1336023))

(declare-fun m!1336025 () Bool)

(assert (=> d!332800 m!1336025))

(declare-fun m!1336027 () Bool)

(assert (=> d!332800 m!1336027))

(declare-fun m!1336029 () Bool)

(assert (=> d!332800 m!1336029))

(declare-fun m!1336031 () Bool)

(assert (=> d!332800 m!1336031))

(assert (=> d!332800 m!1336027))

(assert (=> d!332800 m!1336021))

(assert (=> d!332800 m!1336027))

(declare-fun m!1336033 () Bool)

(assert (=> b!1166160 m!1336033))

(declare-fun m!1336035 () Bool)

(assert (=> b!1166161 m!1336035))

(assert (=> b!1166162 m!1336027))

(assert (=> b!1166162 m!1336027))

(assert (=> b!1166162 m!1336021))

(assert (=> b!1166162 m!1336021))

(assert (=> b!1166162 m!1336023))

(declare-fun m!1336037 () Bool)

(assert (=> b!1166162 m!1336037))

(assert (=> b!1165767 d!332800))

(declare-fun b!1166163 () Bool)

(declare-fun e!747353 () Bool)

(declare-fun lt!399011 () List!11543)

(assert (=> b!1166163 (= e!747353 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!399011))))

(declare-fun b!1166164 () Bool)

(declare-fun e!747354 () Bool)

(declare-fun lt!399014 () List!11543)

(assert (=> b!1166164 (= e!747354 (<= 0 (size!9071 lt!399014)))))

(declare-fun b!1166165 () Bool)

(declare-fun res!526571 () Bool)

(assert (=> b!1166165 (=> (not res!526571) (not e!747353))))

(assert (=> b!1166165 (= res!526571 (not (isEmpty!7004 (rules!9572 thiss!10527))))))

(declare-fun b!1166166 () Bool)

(declare-fun e!747356 () Bool)

(assert (=> b!1166166 (= e!747356 (<= 0 (size!9067 lt!398609)))))

(declare-fun b!1166167 () Bool)

(declare-fun e!747352 () Bool)

(declare-fun e!747355 () Bool)

(assert (=> b!1166167 (= e!747352 e!747355)))

(declare-fun res!526574 () Bool)

(assert (=> b!1166167 (=> (not res!526574) (not e!747355))))

(assert (=> b!1166167 (= res!526574 (separableTokensPredicate!130 Lexer!1700 (apply!2479 lt!398609 0) (apply!2479 lt!398609 (+ 0 1)) (rules!9572 thiss!10527)))))

(declare-fun lt!399002 () Unit!17605)

(declare-fun Unit!17630 () Unit!17605)

(assert (=> b!1166167 (= lt!399002 Unit!17630)))

(assert (=> b!1166167 (> (size!9066 (charsOf!1068 (apply!2479 lt!398609 (+ 0 1)))) 0)))

(declare-fun lt!398989 () Unit!17605)

(declare-fun Unit!17631 () Unit!17605)

(assert (=> b!1166167 (= lt!398989 Unit!17631)))

(assert (=> b!1166167 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 lt!398609 (+ 0 1)))))

(declare-fun lt!399007 () Unit!17605)

(declare-fun Unit!17632 () Unit!17605)

(assert (=> b!1166167 (= lt!399007 Unit!17632)))

(assert (=> b!1166167 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 lt!398609 0))))

(declare-fun lt!398988 () Unit!17605)

(declare-fun lt!398999 () Unit!17605)

(assert (=> b!1166167 (= lt!398988 lt!398999)))

(declare-fun lt!398994 () Token!3676)

(assert (=> b!1166167 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398994)))

(declare-fun lt!399019 () List!11543)

(assert (=> b!1166167 (= lt!398999 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!399019 lt!398994))))

(assert (=> b!1166167 (= lt!398994 (apply!2479 lt!398609 (+ 0 1)))))

(assert (=> b!1166167 (= lt!399019 (list!4239 lt!398609))))

(declare-fun lt!399004 () Unit!17605)

(declare-fun lt!398990 () Unit!17605)

(assert (=> b!1166167 (= lt!399004 lt!398990)))

(declare-fun lt!398998 () Token!3676)

(assert (=> b!1166167 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398998)))

(declare-fun lt!399010 () List!11543)

(assert (=> b!1166167 (= lt!398990 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!399010 lt!398998))))

(assert (=> b!1166167 (= lt!398998 (apply!2479 lt!398609 0))))

(assert (=> b!1166167 (= lt!399010 (list!4239 lt!398609))))

(declare-fun lt!398995 () Unit!17605)

(declare-fun lt!399000 () Unit!17605)

(assert (=> b!1166167 (= lt!398995 lt!399000)))

(declare-fun lt!398997 () List!11543)

(declare-fun lt!398993 () Int)

(assert (=> b!1166167 (= (tail!1686 (drop!482 lt!398997 lt!398993)) (drop!482 lt!398997 (+ lt!398993 1)))))

(assert (=> b!1166167 (= lt!399000 (lemmaDropTail!359 lt!398997 lt!398993))))

(assert (=> b!1166167 (= lt!398993 (+ 0 1))))

(assert (=> b!1166167 (= lt!398997 (list!4239 lt!398609))))

(declare-fun lt!399003 () Unit!17605)

(declare-fun lt!398987 () Unit!17605)

(assert (=> b!1166167 (= lt!399003 lt!398987)))

(declare-fun lt!399013 () List!11543)

(assert (=> b!1166167 (= (tail!1686 (drop!482 lt!399013 0)) (drop!482 lt!399013 (+ 0 1)))))

(assert (=> b!1166167 (= lt!398987 (lemmaDropTail!359 lt!399013 0))))

(assert (=> b!1166167 (= lt!399013 (list!4239 lt!398609))))

(declare-fun lt!399009 () Unit!17605)

(declare-fun lt!398992 () Unit!17605)

(assert (=> b!1166167 (= lt!399009 lt!398992)))

(declare-fun lt!399015 () List!11543)

(declare-fun lt!399018 () Int)

(assert (=> b!1166167 (= (head!2102 (drop!482 lt!399015 lt!399018)) (apply!2480 lt!399015 lt!399018))))

(assert (=> b!1166167 (= lt!398992 (lemmaDropApply!371 lt!399015 lt!399018))))

(assert (=> b!1166167 (= lt!399018 (+ 0 1))))

(assert (=> b!1166167 (= lt!399015 (list!4239 lt!398609))))

(declare-fun lt!399006 () Unit!17605)

(declare-fun lt!399016 () Unit!17605)

(assert (=> b!1166167 (= lt!399006 lt!399016)))

(declare-fun lt!398991 () List!11543)

(assert (=> b!1166167 (= (head!2102 (drop!482 lt!398991 0)) (apply!2480 lt!398991 0))))

(assert (=> b!1166167 (= lt!399016 (lemmaDropApply!371 lt!398991 0))))

(assert (=> b!1166167 (= lt!398991 (list!4239 lt!398609))))

(declare-fun b!1166168 () Bool)

(declare-fun res!526572 () Bool)

(assert (=> b!1166168 (=> (not res!526572) (not e!747353))))

(declare-fun lt!399001 () List!11543)

(assert (=> b!1166168 (= res!526572 (subseq!259 lt!399001 lt!399011))))

(declare-fun b!1166170 () Bool)

(assert (=> b!1166170 (= e!747355 (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 lt!398609 (+ 0 1) (rules!9572 thiss!10527)))))

(declare-fun d!332802 () Bool)

(declare-fun lt!399017 () Bool)

(assert (=> d!332802 (= lt!399017 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (dropList!317 lt!398609 0) (rules!9572 thiss!10527)))))

(declare-fun lt!398996 () Unit!17605)

(declare-fun lt!399008 () Unit!17605)

(assert (=> d!332802 (= lt!398996 lt!399008)))

(assert (=> d!332802 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!399001)))

(assert (=> d!332802 (= lt!399008 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!27 Lexer!1700 (rules!9572 thiss!10527) lt!399011 lt!399001))))

(assert (=> d!332802 e!747353))

(declare-fun res!526573 () Bool)

(assert (=> d!332802 (=> (not res!526573) (not e!747353))))

(assert (=> d!332802 (= res!526573 ((_ is Lexer!1700) Lexer!1700))))

(assert (=> d!332802 (= lt!399001 (dropList!317 lt!398609 0))))

(assert (=> d!332802 (= lt!399011 (list!4239 lt!398609))))

(declare-fun lt!399005 () Unit!17605)

(declare-fun lt!399012 () Unit!17605)

(assert (=> d!332802 (= lt!399005 lt!399012)))

(assert (=> d!332802 (subseq!259 (drop!482 lt!399014 0) lt!399014)))

(assert (=> d!332802 (= lt!399012 (lemmaDropSubSeq!27 lt!399014 0))))

(assert (=> d!332802 e!747354))

(declare-fun res!526575 () Bool)

(assert (=> d!332802 (=> (not res!526575) (not e!747354))))

(assert (=> d!332802 (= res!526575 (>= 0 0))))

(assert (=> d!332802 (= lt!399014 (list!4239 lt!398609))))

(assert (=> d!332802 (= lt!399017 e!747352)))

(declare-fun res!526569 () Bool)

(assert (=> d!332802 (=> res!526569 e!747352)))

(assert (=> d!332802 (= res!526569 (not (< 0 (- (size!9067 lt!398609) 1))))))

(assert (=> d!332802 e!747356))

(declare-fun res!526568 () Bool)

(assert (=> d!332802 (=> (not res!526568) (not e!747356))))

(assert (=> d!332802 (= res!526568 (>= 0 0))))

(assert (=> d!332802 (= (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 lt!398609 0 (rules!9572 thiss!10527)) lt!399017)))

(declare-fun b!1166169 () Bool)

(declare-fun res!526570 () Bool)

(assert (=> b!1166169 (=> (not res!526570) (not e!747353))))

(assert (=> b!1166169 (= res!526570 (rulesInvariant!1576 Lexer!1700 (rules!9572 thiss!10527)))))

(assert (= (and d!332802 res!526568) b!1166166))

(assert (= (and d!332802 (not res!526569)) b!1166167))

(assert (= (and b!1166167 res!526574) b!1166170))

(assert (= (and d!332802 res!526575) b!1166164))

(assert (= (and d!332802 res!526573) b!1166165))

(assert (= (and b!1166165 res!526571) b!1166169))

(assert (= (and b!1166169 res!526570) b!1166168))

(assert (= (and b!1166168 res!526572) b!1166163))

(declare-fun m!1336039 () Bool)

(assert (=> b!1166167 m!1336039))

(declare-fun m!1336041 () Bool)

(assert (=> b!1166167 m!1336041))

(declare-fun m!1336043 () Bool)

(assert (=> b!1166167 m!1336043))

(declare-fun m!1336045 () Bool)

(assert (=> b!1166167 m!1336045))

(declare-fun m!1336047 () Bool)

(assert (=> b!1166167 m!1336047))

(declare-fun m!1336049 () Bool)

(assert (=> b!1166167 m!1336049))

(declare-fun m!1336051 () Bool)

(assert (=> b!1166167 m!1336051))

(declare-fun m!1336053 () Bool)

(assert (=> b!1166167 m!1336053))

(declare-fun m!1336055 () Bool)

(assert (=> b!1166167 m!1336055))

(declare-fun m!1336057 () Bool)

(assert (=> b!1166167 m!1336057))

(declare-fun m!1336059 () Bool)

(assert (=> b!1166167 m!1336059))

(declare-fun m!1336061 () Bool)

(assert (=> b!1166167 m!1336061))

(declare-fun m!1336063 () Bool)

(assert (=> b!1166167 m!1336063))

(declare-fun m!1336065 () Bool)

(assert (=> b!1166167 m!1336065))

(declare-fun m!1336067 () Bool)

(assert (=> b!1166167 m!1336067))

(declare-fun m!1336069 () Bool)

(assert (=> b!1166167 m!1336069))

(assert (=> b!1166167 m!1336059))

(declare-fun m!1336071 () Bool)

(assert (=> b!1166167 m!1336071))

(assert (=> b!1166167 m!1336067))

(assert (=> b!1166167 m!1336067))

(declare-fun m!1336073 () Bool)

(assert (=> b!1166167 m!1336073))

(declare-fun m!1336075 () Bool)

(assert (=> b!1166167 m!1336075))

(declare-fun m!1336077 () Bool)

(assert (=> b!1166167 m!1336077))

(declare-fun m!1336079 () Bool)

(assert (=> b!1166167 m!1336079))

(assert (=> b!1166167 m!1336049))

(declare-fun m!1336081 () Bool)

(assert (=> b!1166167 m!1336081))

(declare-fun m!1336083 () Bool)

(assert (=> b!1166167 m!1336083))

(assert (=> b!1166167 m!1336073))

(declare-fun m!1336085 () Bool)

(assert (=> b!1166167 m!1336085))

(declare-fun m!1336087 () Bool)

(assert (=> b!1166167 m!1336087))

(declare-fun m!1336089 () Bool)

(assert (=> b!1166167 m!1336089))

(assert (=> b!1166167 m!1336073))

(assert (=> b!1166167 m!1336077))

(declare-fun m!1336091 () Bool)

(assert (=> b!1166167 m!1336091))

(assert (=> b!1166167 m!1335361))

(assert (=> b!1166167 m!1336073))

(assert (=> b!1166167 m!1336055))

(assert (=> b!1166167 m!1336043))

(declare-fun m!1336093 () Bool)

(assert (=> b!1166170 m!1336093))

(assert (=> b!1166169 m!1335397))

(assert (=> b!1166165 m!1335511))

(declare-fun m!1336095 () Bool)

(assert (=> b!1166168 m!1336095))

(declare-fun m!1336097 () Bool)

(assert (=> b!1166164 m!1336097))

(declare-fun m!1336099 () Bool)

(assert (=> d!332802 m!1336099))

(declare-fun m!1336101 () Bool)

(assert (=> d!332802 m!1336101))

(declare-fun m!1336103 () Bool)

(assert (=> d!332802 m!1336103))

(assert (=> d!332802 m!1336099))

(declare-fun m!1336105 () Bool)

(assert (=> d!332802 m!1336105))

(declare-fun m!1336107 () Bool)

(assert (=> d!332802 m!1336107))

(declare-fun m!1336109 () Bool)

(assert (=> d!332802 m!1336109))

(assert (=> d!332802 m!1335361))

(declare-fun m!1336111 () Bool)

(assert (=> d!332802 m!1336111))

(declare-fun m!1336113 () Bool)

(assert (=> d!332802 m!1336113))

(assert (=> d!332802 m!1336107))

(declare-fun m!1336115 () Bool)

(assert (=> b!1166163 m!1336115))

(assert (=> b!1166166 m!1336103))

(assert (=> b!1165766 d!332802))

(declare-fun b!1166181 () Bool)

(declare-fun e!747365 () Bool)

(assert (=> b!1166181 (= e!747365 (subseq!259 (t!110333 lt!398622) (t!110333 lt!398620)))))

(declare-fun b!1166182 () Bool)

(declare-fun e!747363 () Bool)

(assert (=> b!1166182 (= e!747363 (subseq!259 lt!398622 (t!110333 lt!398620)))))

(declare-fun b!1166180 () Bool)

(declare-fun e!747364 () Bool)

(assert (=> b!1166180 (= e!747364 e!747363)))

(declare-fun res!526586 () Bool)

(assert (=> b!1166180 (=> res!526586 e!747363)))

(assert (=> b!1166180 (= res!526586 e!747365)))

(declare-fun res!526587 () Bool)

(assert (=> b!1166180 (=> (not res!526587) (not e!747365))))

(assert (=> b!1166180 (= res!526587 (= (h!16920 lt!398622) (h!16920 lt!398620)))))

(declare-fun b!1166179 () Bool)

(declare-fun e!747362 () Bool)

(assert (=> b!1166179 (= e!747362 e!747364)))

(declare-fun res!526584 () Bool)

(assert (=> b!1166179 (=> (not res!526584) (not e!747364))))

(assert (=> b!1166179 (= res!526584 ((_ is Cons!11519) lt!398620))))

(declare-fun d!332804 () Bool)

(declare-fun res!526585 () Bool)

(assert (=> d!332804 (=> res!526585 e!747362)))

(assert (=> d!332804 (= res!526585 ((_ is Nil!11519) lt!398622))))

(assert (=> d!332804 (= (subseq!259 lt!398622 lt!398620) e!747362)))

(assert (= (and d!332804 (not res!526585)) b!1166179))

(assert (= (and b!1166179 res!526584) b!1166180))

(assert (= (and b!1166180 res!526587) b!1166181))

(assert (= (and b!1166180 (not res!526586)) b!1166182))

(declare-fun m!1336117 () Bool)

(assert (=> b!1166181 m!1336117))

(declare-fun m!1336119 () Bool)

(assert (=> b!1166182 m!1336119))

(assert (=> b!1165766 d!332804))

(declare-fun bs!284335 () Bool)

(declare-fun b!1166241 () Bool)

(assert (= bs!284335 (and b!1166241 d!332714)))

(declare-fun lambda!47890 () Int)

(assert (=> bs!284335 (= lambda!47890 lambda!47877)))

(declare-fun bs!284336 () Bool)

(assert (= bs!284336 (and b!1166241 d!332754)))

(assert (=> bs!284336 (= lambda!47890 lambda!47880)))

(declare-fun bs!284337 () Bool)

(assert (= bs!284337 (and b!1166241 d!332758)))

(assert (=> bs!284337 (= lambda!47890 lambda!47881)))

(declare-fun bs!284338 () Bool)

(assert (= bs!284338 (and b!1166241 d!332712)))

(assert (=> bs!284338 (= lambda!47890 lambda!47872)))

(declare-fun bs!284339 () Bool)

(assert (= bs!284339 (and b!1166241 d!332732)))

(assert (=> bs!284339 (= lambda!47890 lambda!47878)))

(declare-fun bs!284340 () Bool)

(assert (= bs!284340 (and b!1166241 d!332796)))

(assert (=> bs!284340 (= lambda!47890 lambda!47883)))

(declare-fun bs!284341 () Bool)

(assert (= bs!284341 (and b!1166241 b!1165777)))

(assert (=> bs!284341 (= lambda!47890 lambda!47859)))

(declare-fun bs!284342 () Bool)

(assert (= bs!284342 (and b!1166241 d!332668)))

(assert (=> bs!284342 (= lambda!47890 lambda!47862)))

(declare-fun b!1166245 () Bool)

(declare-fun e!747418 () Bool)

(assert (=> b!1166245 (= e!747418 true)))

(declare-fun b!1166244 () Bool)

(declare-fun e!747417 () Bool)

(assert (=> b!1166244 (= e!747417 e!747418)))

(declare-fun b!1166243 () Bool)

(declare-fun e!747416 () Bool)

(assert (=> b!1166243 (= e!747416 e!747417)))

(assert (=> b!1166241 e!747416))

(assert (= b!1166244 b!1166245))

(assert (= b!1166243 b!1166244))

(assert (= (and b!1166241 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166243))

(assert (=> b!1166245 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47890))))

(assert (=> b!1166245 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47890))))

(declare-fun e!747415 () Bool)

(assert (=> b!1166241 (= e!747415 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (take!72 lt!398622 (- to!267 from!787)) (rules!9572 thiss!10527)))))

(declare-fun lt!399138 () Unit!17605)

(declare-fun lt!399137 () Unit!17605)

(assert (=> b!1166241 (= lt!399138 lt!399137)))

(declare-fun lt!399136 () List!11543)

(assert (=> b!1166241 (forall!3024 lt!399136 lambda!47890)))

(assert (=> b!1166241 (= lt!399137 (lemmaForallSubseq!151 lt!399136 lt!398622 lambda!47890))))

(declare-fun e!747413 () Bool)

(assert (=> b!1166241 e!747413))

(declare-fun res!526624 () Bool)

(assert (=> b!1166241 (=> (not res!526624) (not e!747413))))

(assert (=> b!1166241 (= res!526624 (forall!3024 lt!398622 lambda!47890))))

(assert (=> b!1166241 (= lt!399136 (take!72 lt!398622 (- to!267 from!787)))))

(declare-fun d!332806 () Bool)

(assert (=> d!332806 e!747415))

(declare-fun res!526626 () Bool)

(assert (=> d!332806 (=> (not res!526626) (not e!747415))))

(declare-fun e!747414 () Bool)

(assert (=> d!332806 (= res!526626 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (take!72 lt!398622 (- to!267 from!787))) e!747414))))

(declare-fun res!526627 () Bool)

(assert (=> d!332806 (=> res!526627 e!747414)))

(declare-fun lt!399139 () List!11543)

(assert (=> d!332806 (= res!526627 (not ((_ is Cons!11519) lt!399139)))))

(assert (=> d!332806 (= lt!399139 (take!72 lt!398622 (- to!267 from!787)))))

(declare-fun lt!399140 () Unit!17605)

(declare-fun choose!7523 (LexerInterface!1702 List!11543 Int List!11544) Unit!17605)

(assert (=> d!332806 (= lt!399140 (choose!7523 Lexer!1700 lt!398622 (- to!267 from!787) (rules!9572 thiss!10527)))))

(assert (=> d!332806 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332806 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!38 Lexer!1700 lt!398622 (- to!267 from!787) (rules!9572 thiss!10527)) lt!399140)))

(declare-fun b!1166239 () Bool)

(declare-fun e!747412 () Bool)

(assert (=> b!1166239 (= e!747414 e!747412)))

(declare-fun res!526625 () Bool)

(assert (=> b!1166239 (=> (not res!526625) (not e!747412))))

(assert (=> b!1166239 (= res!526625 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!399139)))))

(declare-fun b!1166240 () Bool)

(assert (=> b!1166240 (= e!747412 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!399139)))))

(declare-fun b!1166242 () Bool)

(assert (=> b!1166242 (= e!747413 (subseq!259 lt!399136 lt!398622))))

(assert (= (and d!332806 (not res!526627)) b!1166239))

(assert (= (and b!1166239 res!526625) b!1166240))

(assert (= (and d!332806 res!526626) b!1166241))

(assert (= (and b!1166241 res!526624) b!1166242))

(declare-fun m!1336381 () Bool)

(assert (=> b!1166242 m!1336381))

(declare-fun m!1336383 () Bool)

(assert (=> b!1166239 m!1336383))

(assert (=> d!332806 m!1335393))

(assert (=> d!332806 m!1335393))

(declare-fun m!1336385 () Bool)

(assert (=> d!332806 m!1336385))

(declare-fun m!1336387 () Bool)

(assert (=> d!332806 m!1336387))

(assert (=> d!332806 m!1335511))

(assert (=> b!1166241 m!1335393))

(declare-fun m!1336389 () Bool)

(assert (=> b!1166241 m!1336389))

(declare-fun m!1336391 () Bool)

(assert (=> b!1166241 m!1336391))

(declare-fun m!1336393 () Bool)

(assert (=> b!1166241 m!1336393))

(assert (=> b!1166241 m!1335393))

(declare-fun m!1336395 () Bool)

(assert (=> b!1166241 m!1336395))

(declare-fun m!1336397 () Bool)

(assert (=> b!1166240 m!1336397))

(assert (=> b!1165766 d!332806))

(declare-fun d!332832 () Bool)

(assert (=> d!332832 (forall!3024 lt!398606 lambda!47859)))

(declare-fun lt!399141 () Unit!17605)

(assert (=> d!332832 (= lt!399141 (choose!7522 lt!398606 lt!398622 lambda!47859))))

(assert (=> d!332832 (forall!3024 lt!398622 lambda!47859)))

(assert (=> d!332832 (= (lemmaForallSubseq!151 lt!398606 lt!398622 lambda!47859) lt!399141)))

(declare-fun bs!284343 () Bool)

(assert (= bs!284343 d!332832))

(assert (=> bs!284343 m!1335371))

(declare-fun m!1336399 () Bool)

(assert (=> bs!284343 m!1336399))

(assert (=> bs!284343 m!1335377))

(assert (=> b!1165766 d!332832))

(declare-fun bs!284344 () Bool)

(declare-fun d!332834 () Bool)

(assert (= bs!284344 (and d!332834 b!1166241)))

(declare-fun lambda!47891 () Int)

(assert (=> bs!284344 (= lambda!47891 lambda!47890)))

(declare-fun bs!284345 () Bool)

(assert (= bs!284345 (and d!332834 d!332714)))

(assert (=> bs!284345 (= lambda!47891 lambda!47877)))

(declare-fun bs!284346 () Bool)

(assert (= bs!284346 (and d!332834 d!332754)))

(assert (=> bs!284346 (= lambda!47891 lambda!47880)))

(declare-fun bs!284347 () Bool)

(assert (= bs!284347 (and d!332834 d!332758)))

(assert (=> bs!284347 (= lambda!47891 lambda!47881)))

(declare-fun bs!284348 () Bool)

(assert (= bs!284348 (and d!332834 d!332712)))

(assert (=> bs!284348 (= lambda!47891 lambda!47872)))

(declare-fun bs!284349 () Bool)

(assert (= bs!284349 (and d!332834 d!332732)))

(assert (=> bs!284349 (= lambda!47891 lambda!47878)))

(declare-fun bs!284350 () Bool)

(assert (= bs!284350 (and d!332834 d!332796)))

(assert (=> bs!284350 (= lambda!47891 lambda!47883)))

(declare-fun bs!284351 () Bool)

(assert (= bs!284351 (and d!332834 b!1165777)))

(assert (=> bs!284351 (= lambda!47891 lambda!47859)))

(declare-fun bs!284352 () Bool)

(assert (= bs!284352 (and d!332834 d!332668)))

(assert (=> bs!284352 (= lambda!47891 lambda!47862)))

(declare-fun b!1166250 () Bool)

(declare-fun e!747423 () Bool)

(assert (=> b!1166250 (= e!747423 true)))

(declare-fun b!1166249 () Bool)

(declare-fun e!747422 () Bool)

(assert (=> b!1166249 (= e!747422 e!747423)))

(declare-fun b!1166248 () Bool)

(declare-fun e!747421 () Bool)

(assert (=> b!1166248 (= e!747421 e!747422)))

(assert (=> d!332834 e!747421))

(assert (= b!1166249 b!1166250))

(assert (= b!1166248 b!1166249))

(assert (= (and d!332834 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166248))

(assert (=> b!1166250 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47891))))

(assert (=> b!1166250 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47891))))

(assert (=> d!332834 true))

(declare-fun lt!399142 () Bool)

(assert (=> d!332834 (= lt!399142 (forall!3024 lt!398622 lambda!47891))))

(declare-fun e!747419 () Bool)

(assert (=> d!332834 (= lt!399142 e!747419)))

(declare-fun res!526629 () Bool)

(assert (=> d!332834 (=> res!526629 e!747419)))

(assert (=> d!332834 (= res!526629 (not ((_ is Cons!11519) lt!398622)))))

(assert (=> d!332834 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332834 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398622) lt!399142)))

(declare-fun b!1166246 () Bool)

(declare-fun e!747420 () Bool)

(assert (=> b!1166246 (= e!747419 e!747420)))

(declare-fun res!526628 () Bool)

(assert (=> b!1166246 (=> (not res!526628) (not e!747420))))

(assert (=> b!1166246 (= res!526628 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398622)))))

(declare-fun b!1166247 () Bool)

(assert (=> b!1166247 (= e!747420 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398622)))))

(assert (= (and d!332834 (not res!526629)) b!1166246))

(assert (= (and b!1166246 res!526628) b!1166247))

(declare-fun m!1336401 () Bool)

(assert (=> d!332834 m!1336401))

(assert (=> d!332834 m!1335511))

(assert (=> b!1166246 m!1335365))

(assert (=> b!1166247 m!1335423))

(assert (=> b!1165766 d!332834))

(declare-fun bs!284374 () Bool)

(declare-fun b!1166281 () Bool)

(assert (= bs!284374 (and b!1166281 d!332714)))

(declare-fun lambda!47898 () Int)

(assert (=> bs!284374 (= lambda!47898 lambda!47877)))

(declare-fun bs!284375 () Bool)

(assert (= bs!284375 (and b!1166281 d!332754)))

(assert (=> bs!284375 (= lambda!47898 lambda!47880)))

(declare-fun bs!284376 () Bool)

(assert (= bs!284376 (and b!1166281 d!332758)))

(assert (=> bs!284376 (= lambda!47898 lambda!47881)))

(declare-fun bs!284377 () Bool)

(assert (= bs!284377 (and b!1166281 d!332712)))

(assert (=> bs!284377 (= lambda!47898 lambda!47872)))

(declare-fun bs!284378 () Bool)

(assert (= bs!284378 (and b!1166281 d!332732)))

(assert (=> bs!284378 (= lambda!47898 lambda!47878)))

(declare-fun bs!284379 () Bool)

(assert (= bs!284379 (and b!1166281 b!1166241)))

(assert (=> bs!284379 (= lambda!47898 lambda!47890)))

(declare-fun bs!284380 () Bool)

(assert (= bs!284380 (and b!1166281 d!332834)))

(assert (=> bs!284380 (= lambda!47898 lambda!47891)))

(declare-fun bs!284381 () Bool)

(assert (= bs!284381 (and b!1166281 d!332796)))

(assert (=> bs!284381 (= lambda!47898 lambda!47883)))

(declare-fun bs!284382 () Bool)

(assert (= bs!284382 (and b!1166281 b!1165777)))

(assert (=> bs!284382 (= lambda!47898 lambda!47859)))

(declare-fun bs!284383 () Bool)

(assert (= bs!284383 (and b!1166281 d!332668)))

(assert (=> bs!284383 (= lambda!47898 lambda!47862)))

(declare-fun b!1166285 () Bool)

(declare-fun e!747458 () Bool)

(assert (=> b!1166285 (= e!747458 true)))

(declare-fun b!1166284 () Bool)

(declare-fun e!747457 () Bool)

(assert (=> b!1166284 (= e!747457 e!747458)))

(declare-fun b!1166283 () Bool)

(declare-fun e!747456 () Bool)

(assert (=> b!1166283 (= e!747456 e!747457)))

(assert (=> b!1166281 e!747456))

(assert (= b!1166284 b!1166285))

(assert (= b!1166283 b!1166284))

(assert (= (and b!1166281 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166283))

(assert (=> b!1166285 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47898))))

(assert (=> b!1166285 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47898))))

(declare-fun d!332836 () Bool)

(declare-fun e!747453 () Bool)

(assert (=> d!332836 e!747453))

(declare-fun res!526652 () Bool)

(assert (=> d!332836 (=> (not res!526652) (not e!747453))))

(declare-fun e!747455 () Bool)

(assert (=> d!332836 (= res!526652 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (drop!482 lt!398620 from!787)) e!747455))))

(declare-fun res!526653 () Bool)

(assert (=> d!332836 (=> res!526653 e!747455)))

(declare-fun lt!399179 () List!11543)

(assert (=> d!332836 (= res!526653 (not ((_ is Cons!11519) lt!399179)))))

(assert (=> d!332836 (= lt!399179 (drop!482 lt!398620 from!787))))

(declare-fun lt!399185 () Unit!17605)

(declare-fun choose!7524 (LexerInterface!1702 List!11543 Int List!11544) Unit!17605)

(assert (=> d!332836 (= lt!399185 (choose!7524 Lexer!1700 lt!398620 from!787 (rules!9572 thiss!10527)))))

(assert (=> d!332836 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332836 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!46 Lexer!1700 lt!398620 from!787 (rules!9572 thiss!10527)) lt!399185)))

(declare-fun b!1166282 () Bool)

(declare-fun e!747452 () Bool)

(declare-fun lt!399183 () List!11543)

(assert (=> b!1166282 (= e!747452 (subseq!259 lt!399183 lt!398620))))

(declare-fun b!1166280 () Bool)

(declare-fun e!747454 () Bool)

(assert (=> b!1166280 (= e!747454 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!399179)))))

(declare-fun b!1166279 () Bool)

(assert (=> b!1166279 (= e!747455 e!747454)))

(declare-fun res!526654 () Bool)

(assert (=> b!1166279 (=> (not res!526654) (not e!747454))))

(assert (=> b!1166279 (= res!526654 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!399179)))))

(assert (=> b!1166281 (= e!747453 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (drop!482 lt!398620 from!787) (rules!9572 thiss!10527)))))

(declare-fun lt!399180 () Unit!17605)

(declare-fun lt!399182 () Unit!17605)

(assert (=> b!1166281 (= lt!399180 lt!399182)))

(assert (=> b!1166281 (forall!3024 lt!399183 lambda!47898)))

(assert (=> b!1166281 (= lt!399182 (lemmaForallSubseq!151 lt!399183 lt!398620 lambda!47898))))

(assert (=> b!1166281 e!747452))

(declare-fun res!526655 () Bool)

(assert (=> b!1166281 (=> (not res!526655) (not e!747452))))

(assert (=> b!1166281 (= res!526655 (forall!3024 lt!398620 lambda!47898))))

(assert (=> b!1166281 (= lt!399183 (drop!482 lt!398620 from!787))))

(declare-fun lt!399184 () Unit!17605)

(declare-fun lt!399181 () Unit!17605)

(assert (=> b!1166281 (= lt!399184 lt!399181)))

(assert (=> b!1166281 (subseq!259 (drop!482 lt!398620 from!787) lt!398620)))

(assert (=> b!1166281 (= lt!399181 (lemmaDropSubseq!46 lt!398620 from!787))))

(assert (= (and d!332836 (not res!526653)) b!1166279))

(assert (= (and b!1166279 res!526654) b!1166280))

(assert (= (and d!332836 res!526652) b!1166281))

(assert (= (and b!1166281 res!526655) b!1166282))

(declare-fun m!1336425 () Bool)

(assert (=> b!1166282 m!1336425))

(assert (=> d!332836 m!1335389))

(assert (=> d!332836 m!1335389))

(declare-fun m!1336427 () Bool)

(assert (=> d!332836 m!1336427))

(declare-fun m!1336429 () Bool)

(assert (=> d!332836 m!1336429))

(assert (=> d!332836 m!1335511))

(declare-fun m!1336431 () Bool)

(assert (=> b!1166279 m!1336431))

(declare-fun m!1336433 () Bool)

(assert (=> b!1166280 m!1336433))

(declare-fun m!1336435 () Bool)

(assert (=> b!1166281 m!1336435))

(assert (=> b!1166281 m!1335389))

(assert (=> b!1166281 m!1335389))

(declare-fun m!1336437 () Bool)

(assert (=> b!1166281 m!1336437))

(assert (=> b!1166281 m!1335389))

(declare-fun m!1336439 () Bool)

(assert (=> b!1166281 m!1336439))

(assert (=> b!1166281 m!1335391))

(declare-fun m!1336441 () Bool)

(assert (=> b!1166281 m!1336441))

(declare-fun m!1336443 () Bool)

(assert (=> b!1166281 m!1336443))

(assert (=> b!1165766 d!332836))

(declare-fun d!332842 () Bool)

(assert (=> d!332842 (subseq!259 (drop!482 lt!398620 from!787) lt!398620)))

(declare-fun lt!399188 () Unit!17605)

(declare-fun choose!7525 (List!11543 Int) Unit!17605)

(assert (=> d!332842 (= lt!399188 (choose!7525 lt!398620 from!787))))

(assert (=> d!332842 (= (lemmaDropSubseq!46 lt!398620 from!787) lt!399188)))

(declare-fun bs!284384 () Bool)

(assert (= bs!284384 d!332842))

(assert (=> bs!284384 m!1335389))

(assert (=> bs!284384 m!1335389))

(assert (=> bs!284384 m!1336439))

(declare-fun m!1336445 () Bool)

(assert (=> bs!284384 m!1336445))

(assert (=> b!1165766 d!332842))

(declare-fun d!332844 () Bool)

(assert (=> d!332844 (= (separableTokens!139 Lexer!1700 lt!398609 (rules!9572 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 lt!398609 0 (rules!9572 thiss!10527)))))

(declare-fun bs!284397 () Bool)

(assert (= bs!284397 d!332844))

(assert (=> bs!284397 m!1335375))

(assert (=> b!1165766 d!332844))

(declare-fun d!332850 () Bool)

(assert (=> d!332850 (forall!3024 lt!398622 lambda!47859)))

(declare-fun lt!399204 () Unit!17605)

(assert (=> d!332850 (= lt!399204 (choose!7522 lt!398622 lt!398620 lambda!47859))))

(assert (=> d!332850 (forall!3024 lt!398620 lambda!47859)))

(assert (=> d!332850 (= (lemmaForallSubseq!151 lt!398622 lt!398620 lambda!47859) lt!399204)))

(declare-fun bs!284398 () Bool)

(assert (= bs!284398 d!332850))

(assert (=> bs!284398 m!1335377))

(declare-fun m!1336469 () Bool)

(assert (=> bs!284398 m!1336469))

(assert (=> bs!284398 m!1335473))

(assert (=> b!1165766 d!332850))

(declare-fun b!1166321 () Bool)

(declare-fun e!747489 () Int)

(declare-fun call!82163 () Int)

(assert (=> b!1166321 (= e!747489 call!82163)))

(declare-fun b!1166322 () Bool)

(declare-fun e!747488 () List!11543)

(declare-fun e!747486 () List!11543)

(assert (=> b!1166322 (= e!747488 e!747486)))

(declare-fun c!194677 () Bool)

(assert (=> b!1166322 (= c!194677 (<= from!787 0))))

(declare-fun b!1166323 () Bool)

(declare-fun e!747490 () Int)

(assert (=> b!1166323 (= e!747489 e!747490)))

(declare-fun c!194674 () Bool)

(assert (=> b!1166323 (= c!194674 (>= from!787 call!82163))))

(declare-fun b!1166324 () Bool)

(declare-fun e!747487 () Bool)

(declare-fun lt!399207 () List!11543)

(assert (=> b!1166324 (= e!747487 (= (size!9071 lt!399207) e!747489))))

(declare-fun c!194675 () Bool)

(assert (=> b!1166324 (= c!194675 (<= from!787 0))))

(declare-fun b!1166325 () Bool)

(assert (=> b!1166325 (= e!747488 Nil!11519)))

(declare-fun b!1166326 () Bool)

(assert (=> b!1166326 (= e!747490 (- call!82163 from!787))))

(declare-fun b!1166327 () Bool)

(assert (=> b!1166327 (= e!747486 lt!398620)))

(declare-fun b!1166329 () Bool)

(assert (=> b!1166329 (= e!747486 (drop!482 (t!110333 lt!398620) (- from!787 1)))))

(declare-fun bm!82158 () Bool)

(assert (=> bm!82158 (= call!82163 (size!9071 lt!398620))))

(declare-fun d!332852 () Bool)

(assert (=> d!332852 e!747487))

(declare-fun res!526672 () Bool)

(assert (=> d!332852 (=> (not res!526672) (not e!747487))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1608 (List!11543) (InoxSet Token!3676))

(assert (=> d!332852 (= res!526672 (= ((_ map implies) (content!1608 lt!399207) (content!1608 lt!398620)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!332852 (= lt!399207 e!747488)))

(declare-fun c!194676 () Bool)

(assert (=> d!332852 (= c!194676 ((_ is Nil!11519) lt!398620))))

(assert (=> d!332852 (= (drop!482 lt!398620 from!787) lt!399207)))

(declare-fun b!1166328 () Bool)

(assert (=> b!1166328 (= e!747490 0)))

(assert (= (and d!332852 c!194676) b!1166325))

(assert (= (and d!332852 (not c!194676)) b!1166322))

(assert (= (and b!1166322 c!194677) b!1166327))

(assert (= (and b!1166322 (not c!194677)) b!1166329))

(assert (= (and d!332852 res!526672) b!1166324))

(assert (= (and b!1166324 c!194675) b!1166321))

(assert (= (and b!1166324 (not c!194675)) b!1166323))

(assert (= (and b!1166323 c!194674) b!1166328))

(assert (= (and b!1166323 (not c!194674)) b!1166326))

(assert (= (or b!1166321 b!1166323 b!1166326) bm!82158))

(declare-fun m!1336471 () Bool)

(assert (=> b!1166324 m!1336471))

(declare-fun m!1336473 () Bool)

(assert (=> b!1166329 m!1336473))

(assert (=> bm!82158 m!1335451))

(declare-fun m!1336475 () Bool)

(assert (=> d!332852 m!1336475))

(declare-fun m!1336477 () Bool)

(assert (=> d!332852 m!1336477))

(assert (=> b!1165766 d!332852))

(declare-fun d!332854 () Bool)

(declare-fun res!526673 () Bool)

(declare-fun e!747491 () Bool)

(assert (=> d!332854 (=> res!526673 e!747491)))

(assert (=> d!332854 (= res!526673 ((_ is Nil!11519) lt!398606))))

(assert (=> d!332854 (= (forall!3024 lt!398606 lambda!47859) e!747491)))

(declare-fun b!1166330 () Bool)

(declare-fun e!747492 () Bool)

(assert (=> b!1166330 (= e!747491 e!747492)))

(declare-fun res!526674 () Bool)

(assert (=> b!1166330 (=> (not res!526674) (not e!747492))))

(assert (=> b!1166330 (= res!526674 (dynLambda!5074 lambda!47859 (h!16920 lt!398606)))))

(declare-fun b!1166331 () Bool)

(assert (=> b!1166331 (= e!747492 (forall!3024 (t!110333 lt!398606) lambda!47859))))

(assert (= (and d!332854 (not res!526673)) b!1166330))

(assert (= (and b!1166330 res!526674) b!1166331))

(declare-fun b_lambda!34737 () Bool)

(assert (=> (not b_lambda!34737) (not b!1166330)))

(declare-fun m!1336479 () Bool)

(assert (=> b!1166330 m!1336479))

(declare-fun m!1336481 () Bool)

(assert (=> b!1166331 m!1336481))

(assert (=> b!1165766 d!332854))

(declare-fun bs!284399 () Bool)

(declare-fun d!332856 () Bool)

(assert (= bs!284399 (and d!332856 d!332714)))

(declare-fun lambda!47902 () Int)

(assert (=> bs!284399 (= lambda!47902 lambda!47877)))

(declare-fun bs!284400 () Bool)

(assert (= bs!284400 (and d!332856 d!332754)))

(assert (=> bs!284400 (= lambda!47902 lambda!47880)))

(declare-fun bs!284401 () Bool)

(assert (= bs!284401 (and d!332856 b!1166281)))

(assert (=> bs!284401 (= lambda!47902 lambda!47898)))

(declare-fun bs!284402 () Bool)

(assert (= bs!284402 (and d!332856 d!332758)))

(assert (=> bs!284402 (= lambda!47902 lambda!47881)))

(declare-fun bs!284403 () Bool)

(assert (= bs!284403 (and d!332856 d!332712)))

(assert (=> bs!284403 (= lambda!47902 lambda!47872)))

(declare-fun bs!284404 () Bool)

(assert (= bs!284404 (and d!332856 d!332732)))

(assert (=> bs!284404 (= lambda!47902 lambda!47878)))

(declare-fun bs!284405 () Bool)

(assert (= bs!284405 (and d!332856 b!1166241)))

(assert (=> bs!284405 (= lambda!47902 lambda!47890)))

(declare-fun bs!284406 () Bool)

(assert (= bs!284406 (and d!332856 d!332834)))

(assert (=> bs!284406 (= lambda!47902 lambda!47891)))

(declare-fun bs!284407 () Bool)

(assert (= bs!284407 (and d!332856 d!332796)))

(assert (=> bs!284407 (= lambda!47902 lambda!47883)))

(declare-fun bs!284408 () Bool)

(assert (= bs!284408 (and d!332856 b!1165777)))

(assert (=> bs!284408 (= lambda!47902 lambda!47859)))

(declare-fun bs!284409 () Bool)

(assert (= bs!284409 (and d!332856 d!332668)))

(assert (=> bs!284409 (= lambda!47902 lambda!47862)))

(declare-fun b!1166336 () Bool)

(declare-fun e!747497 () Bool)

(assert (=> b!1166336 (= e!747497 true)))

(declare-fun b!1166335 () Bool)

(declare-fun e!747496 () Bool)

(assert (=> b!1166335 (= e!747496 e!747497)))

(declare-fun b!1166334 () Bool)

(declare-fun e!747495 () Bool)

(assert (=> b!1166334 (= e!747495 e!747496)))

(assert (=> d!332856 e!747495))

(assert (= b!1166335 b!1166336))

(assert (= b!1166334 b!1166335))

(assert (= (and d!332856 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166334))

(assert (=> b!1166336 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47902))))

(assert (=> b!1166336 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47902))))

(assert (=> d!332856 true))

(declare-fun lt!399208 () Bool)

(assert (=> d!332856 (= lt!399208 (forall!3024 lt!398606 lambda!47902))))

(declare-fun e!747493 () Bool)

(assert (=> d!332856 (= lt!399208 e!747493)))

(declare-fun res!526676 () Bool)

(assert (=> d!332856 (=> res!526676 e!747493)))

(assert (=> d!332856 (= res!526676 (not ((_ is Cons!11519) lt!398606)))))

(assert (=> d!332856 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332856 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398606) lt!399208)))

(declare-fun b!1166332 () Bool)

(declare-fun e!747494 () Bool)

(assert (=> b!1166332 (= e!747493 e!747494)))

(declare-fun res!526675 () Bool)

(assert (=> b!1166332 (=> (not res!526675) (not e!747494))))

(assert (=> b!1166332 (= res!526675 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398606)))))

(declare-fun b!1166333 () Bool)

(assert (=> b!1166333 (= e!747494 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398606)))))

(assert (= (and d!332856 (not res!526676)) b!1166332))

(assert (= (and b!1166332 res!526675) b!1166333))

(declare-fun m!1336483 () Bool)

(assert (=> d!332856 m!1336483))

(assert (=> d!332856 m!1335511))

(assert (=> b!1166332 m!1335299))

(assert (=> b!1166333 m!1335401))

(assert (=> b!1165766 d!332856))

(declare-fun d!332860 () Bool)

(declare-fun res!526677 () Bool)

(declare-fun e!747498 () Bool)

(assert (=> d!332860 (=> res!526677 e!747498)))

(assert (=> d!332860 (= res!526677 ((_ is Nil!11519) lt!398622))))

(assert (=> d!332860 (= (forall!3024 lt!398622 lambda!47859) e!747498)))

(declare-fun b!1166337 () Bool)

(declare-fun e!747499 () Bool)

(assert (=> b!1166337 (= e!747498 e!747499)))

(declare-fun res!526678 () Bool)

(assert (=> b!1166337 (=> (not res!526678) (not e!747499))))

(assert (=> b!1166337 (= res!526678 (dynLambda!5074 lambda!47859 (h!16920 lt!398622)))))

(declare-fun b!1166338 () Bool)

(assert (=> b!1166338 (= e!747499 (forall!3024 (t!110333 lt!398622) lambda!47859))))

(assert (= (and d!332860 (not res!526677)) b!1166337))

(assert (= (and b!1166337 res!526678) b!1166338))

(declare-fun b_lambda!34739 () Bool)

(assert (=> (not b_lambda!34739) (not b!1166337)))

(declare-fun m!1336487 () Bool)

(assert (=> b!1166337 m!1336487))

(declare-fun m!1336489 () Bool)

(assert (=> b!1166338 m!1336489))

(assert (=> b!1165766 d!332860))

(declare-fun b!1166369 () Bool)

(declare-fun e!747520 () Int)

(assert (=> b!1166369 (= e!747520 (- to!267 from!787))))

(declare-fun d!332864 () Bool)

(declare-fun e!747518 () Bool)

(assert (=> d!332864 e!747518))

(declare-fun res!526685 () Bool)

(assert (=> d!332864 (=> (not res!526685) (not e!747518))))

(declare-fun lt!399214 () List!11543)

(assert (=> d!332864 (= res!526685 (= ((_ map implies) (content!1608 lt!399214) (content!1608 lt!398622)) ((as const (InoxSet Token!3676)) true)))))

(declare-fun e!747519 () List!11543)

(assert (=> d!332864 (= lt!399214 e!747519)))

(declare-fun c!194692 () Bool)

(assert (=> d!332864 (= c!194692 (or ((_ is Nil!11519) lt!398622) (<= (- to!267 from!787) 0)))))

(assert (=> d!332864 (= (take!72 lt!398622 (- to!267 from!787)) lt!399214)))

(declare-fun b!1166370 () Bool)

(assert (=> b!1166370 (= e!747520 (size!9071 lt!398622))))

(declare-fun b!1166371 () Bool)

(declare-fun e!747521 () Int)

(assert (=> b!1166371 (= e!747518 (= (size!9071 lt!399214) e!747521))))

(declare-fun c!194690 () Bool)

(assert (=> b!1166371 (= c!194690 (<= (- to!267 from!787) 0))))

(declare-fun b!1166372 () Bool)

(assert (=> b!1166372 (= e!747519 Nil!11519)))

(declare-fun b!1166373 () Bool)

(assert (=> b!1166373 (= e!747521 0)))

(declare-fun b!1166374 () Bool)

(assert (=> b!1166374 (= e!747519 (Cons!11519 (h!16920 lt!398622) (take!72 (t!110333 lt!398622) (- (- to!267 from!787) 1))))))

(declare-fun b!1166375 () Bool)

(assert (=> b!1166375 (= e!747521 e!747520)))

(declare-fun c!194691 () Bool)

(assert (=> b!1166375 (= c!194691 (>= (- to!267 from!787) (size!9071 lt!398622)))))

(assert (= (and d!332864 c!194692) b!1166372))

(assert (= (and d!332864 (not c!194692)) b!1166374))

(assert (= (and d!332864 res!526685) b!1166371))

(assert (= (and b!1166371 c!194690) b!1166373))

(assert (= (and b!1166371 (not c!194690)) b!1166375))

(assert (= (and b!1166375 c!194691) b!1166370))

(assert (= (and b!1166375 (not c!194691)) b!1166369))

(declare-fun m!1336495 () Bool)

(assert (=> b!1166374 m!1336495))

(declare-fun m!1336497 () Bool)

(assert (=> b!1166371 m!1336497))

(declare-fun m!1336499 () Bool)

(assert (=> b!1166370 m!1336499))

(assert (=> b!1166375 m!1336499))

(declare-fun m!1336501 () Bool)

(assert (=> d!332864 m!1336501))

(declare-fun m!1336503 () Bool)

(assert (=> d!332864 m!1336503))

(assert (=> b!1165766 d!332864))

(declare-fun bs!284412 () Bool)

(declare-fun d!332868 () Bool)

(assert (= bs!284412 (and d!332868 d!332714)))

(declare-fun lambda!47903 () Int)

(assert (=> bs!284412 (= lambda!47903 lambda!47877)))

(declare-fun bs!284413 () Bool)

(assert (= bs!284413 (and d!332868 d!332754)))

(assert (=> bs!284413 (= lambda!47903 lambda!47880)))

(declare-fun bs!284414 () Bool)

(assert (= bs!284414 (and d!332868 b!1166281)))

(assert (=> bs!284414 (= lambda!47903 lambda!47898)))

(declare-fun bs!284415 () Bool)

(assert (= bs!284415 (and d!332868 d!332758)))

(assert (=> bs!284415 (= lambda!47903 lambda!47881)))

(declare-fun bs!284416 () Bool)

(assert (= bs!284416 (and d!332868 d!332712)))

(assert (=> bs!284416 (= lambda!47903 lambda!47872)))

(declare-fun bs!284417 () Bool)

(assert (= bs!284417 (and d!332868 d!332732)))

(assert (=> bs!284417 (= lambda!47903 lambda!47878)))

(declare-fun bs!284418 () Bool)

(assert (= bs!284418 (and d!332868 d!332856)))

(assert (=> bs!284418 (= lambda!47903 lambda!47902)))

(declare-fun bs!284419 () Bool)

(assert (= bs!284419 (and d!332868 b!1166241)))

(assert (=> bs!284419 (= lambda!47903 lambda!47890)))

(declare-fun bs!284420 () Bool)

(assert (= bs!284420 (and d!332868 d!332834)))

(assert (=> bs!284420 (= lambda!47903 lambda!47891)))

(declare-fun bs!284421 () Bool)

(assert (= bs!284421 (and d!332868 d!332796)))

(assert (=> bs!284421 (= lambda!47903 lambda!47883)))

(declare-fun bs!284422 () Bool)

(assert (= bs!284422 (and d!332868 b!1165777)))

(assert (=> bs!284422 (= lambda!47903 lambda!47859)))

(declare-fun bs!284423 () Bool)

(assert (= bs!284423 (and d!332868 d!332668)))

(assert (=> bs!284423 (= lambda!47903 lambda!47862)))

(declare-fun b!1166387 () Bool)

(declare-fun e!747530 () Bool)

(assert (=> b!1166387 (= e!747530 true)))

(declare-fun b!1166386 () Bool)

(declare-fun e!747529 () Bool)

(assert (=> b!1166386 (= e!747529 e!747530)))

(declare-fun b!1166385 () Bool)

(declare-fun e!747528 () Bool)

(assert (=> b!1166385 (= e!747528 e!747529)))

(assert (=> d!332868 e!747528))

(assert (= b!1166386 b!1166387))

(assert (= b!1166385 b!1166386))

(assert (= (and d!332868 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166385))

(assert (=> b!1166387 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47903))))

(assert (=> b!1166387 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47903))))

(assert (=> d!332868 true))

(declare-fun lt!399216 () Bool)

(assert (=> d!332868 (= lt!399216 (forall!3024 (t!110333 lt!398621) lambda!47903))))

(declare-fun e!747526 () Bool)

(assert (=> d!332868 (= lt!399216 e!747526)))

(declare-fun res!526688 () Bool)

(assert (=> d!332868 (=> res!526688 e!747526)))

(assert (=> d!332868 (= res!526688 (not ((_ is Cons!11519) (t!110333 lt!398621))))))

(assert (=> d!332868 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332868 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398621)) lt!399216)))

(declare-fun b!1166383 () Bool)

(declare-fun e!747527 () Bool)

(assert (=> b!1166383 (= e!747526 e!747527)))

(declare-fun res!526687 () Bool)

(assert (=> b!1166383 (=> (not res!526687) (not e!747527))))

(assert (=> b!1166383 (= res!526687 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398621))))))

(declare-fun b!1166384 () Bool)

(assert (=> b!1166384 (= e!747527 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 lt!398621))))))

(assert (= (and d!332868 (not res!526688)) b!1166383))

(assert (= (and b!1166383 res!526687) b!1166384))

(declare-fun m!1336515 () Bool)

(assert (=> d!332868 m!1336515))

(assert (=> d!332868 m!1335511))

(declare-fun m!1336517 () Bool)

(assert (=> b!1166383 m!1336517))

(declare-fun m!1336519 () Bool)

(assert (=> b!1166384 m!1336519))

(assert (=> b!1165768 d!332868))

(declare-fun b!1166388 () Bool)

(declare-fun e!747534 () Int)

(declare-fun call!82164 () Int)

(assert (=> b!1166388 (= e!747534 call!82164)))

(declare-fun b!1166389 () Bool)

(declare-fun e!747533 () List!11543)

(declare-fun e!747531 () List!11543)

(assert (=> b!1166389 (= e!747533 e!747531)))

(declare-fun c!194699 () Bool)

(assert (=> b!1166389 (= c!194699 (<= 0 0))))

(declare-fun b!1166390 () Bool)

(declare-fun e!747535 () Int)

(assert (=> b!1166390 (= e!747534 e!747535)))

(declare-fun c!194696 () Bool)

(assert (=> b!1166390 (= c!194696 (>= 0 call!82164))))

(declare-fun b!1166391 () Bool)

(declare-fun e!747532 () Bool)

(declare-fun lt!399219 () List!11543)

(assert (=> b!1166391 (= e!747532 (= (size!9071 lt!399219) e!747534))))

(declare-fun c!194697 () Bool)

(assert (=> b!1166391 (= c!194697 (<= 0 0))))

(declare-fun b!1166392 () Bool)

(assert (=> b!1166392 (= e!747533 Nil!11519)))

(declare-fun b!1166393 () Bool)

(assert (=> b!1166393 (= e!747535 (- call!82164 0))))

(declare-fun b!1166394 () Bool)

(assert (=> b!1166394 (= e!747531 lt!398620)))

(declare-fun b!1166396 () Bool)

(assert (=> b!1166396 (= e!747531 (drop!482 (t!110333 lt!398620) (- 0 1)))))

(declare-fun bm!82159 () Bool)

(assert (=> bm!82159 (= call!82164 (size!9071 lt!398620))))

(declare-fun d!332872 () Bool)

(assert (=> d!332872 e!747532))

(declare-fun res!526689 () Bool)

(assert (=> d!332872 (=> (not res!526689) (not e!747532))))

(assert (=> d!332872 (= res!526689 (= ((_ map implies) (content!1608 lt!399219) (content!1608 lt!398620)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!332872 (= lt!399219 e!747533)))

(declare-fun c!194698 () Bool)

(assert (=> d!332872 (= c!194698 ((_ is Nil!11519) lt!398620))))

(assert (=> d!332872 (= (drop!482 lt!398620 0) lt!399219)))

(declare-fun b!1166395 () Bool)

(assert (=> b!1166395 (= e!747535 0)))

(assert (= (and d!332872 c!194698) b!1166392))

(assert (= (and d!332872 (not c!194698)) b!1166389))

(assert (= (and b!1166389 c!194699) b!1166394))

(assert (= (and b!1166389 (not c!194699)) b!1166396))

(assert (= (and d!332872 res!526689) b!1166391))

(assert (= (and b!1166391 c!194697) b!1166388))

(assert (= (and b!1166391 (not c!194697)) b!1166390))

(assert (= (and b!1166390 c!194696) b!1166395))

(assert (= (and b!1166390 (not c!194696)) b!1166393))

(assert (= (or b!1166388 b!1166390 b!1166393) bm!82159))

(declare-fun m!1336523 () Bool)

(assert (=> b!1166391 m!1336523))

(declare-fun m!1336525 () Bool)

(assert (=> b!1166396 m!1336525))

(assert (=> bm!82159 m!1335451))

(declare-fun m!1336527 () Bool)

(assert (=> d!332872 m!1336527))

(assert (=> d!332872 m!1336477))

(assert (=> b!1165775 d!332872))

(declare-fun d!332874 () Bool)

(assert (=> d!332874 (= (head!2102 (drop!482 lt!398620 0)) (apply!2480 lt!398620 0))))

(declare-fun lt!399223 () Unit!17605)

(declare-fun choose!7528 (List!11543 Int) Unit!17605)

(assert (=> d!332874 (= lt!399223 (choose!7528 lt!398620 0))))

(declare-fun e!747555 () Bool)

(assert (=> d!332874 e!747555))

(declare-fun res!526692 () Bool)

(assert (=> d!332874 (=> (not res!526692) (not e!747555))))

(assert (=> d!332874 (= res!526692 (>= 0 0))))

(assert (=> d!332874 (= (lemmaDropApply!371 lt!398620 0) lt!399223)))

(declare-fun b!1166428 () Bool)

(assert (=> b!1166428 (= e!747555 (< 0 (size!9071 lt!398620)))))

(assert (= (and d!332874 res!526692) b!1166428))

(assert (=> d!332874 m!1335327))

(assert (=> d!332874 m!1335327))

(declare-fun m!1336535 () Bool)

(assert (=> d!332874 m!1336535))

(assert (=> d!332874 m!1335309))

(declare-fun m!1336537 () Bool)

(assert (=> d!332874 m!1336537))

(assert (=> b!1166428 m!1335451))

(assert (=> b!1165775 d!332874))

(declare-fun d!332876 () Bool)

(assert (=> d!332876 (= (tail!1686 lt!398608) (t!110333 lt!398608))))

(assert (=> b!1165775 d!332876))

(declare-fun d!332878 () Bool)

(assert (=> d!332878 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398607)))

(declare-fun lt!399226 () Unit!17605)

(declare-fun choose!7529 (LexerInterface!1702 List!11544 List!11543 Token!3676) Unit!17605)

(assert (=> d!332878 (= lt!399226 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398620 lt!398607))))

(assert (=> d!332878 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332878 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398620 lt!398607) lt!399226)))

(declare-fun bs!284428 () Bool)

(assert (= bs!284428 d!332878))

(assert (=> bs!284428 m!1335339))

(declare-fun m!1336547 () Bool)

(assert (=> bs!284428 m!1336547))

(assert (=> bs!284428 m!1335511))

(assert (=> b!1165775 d!332878))

(declare-fun d!332886 () Bool)

(declare-fun lt!399228 () Bool)

(declare-fun e!747570 () Bool)

(assert (=> d!332886 (= lt!399228 e!747570)))

(declare-fun res!526693 () Bool)

(assert (=> d!332886 (=> (not res!526693) (not e!747570))))

(assert (=> d!332886 (= res!526693 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398625))))) (list!4239 (singletonSeq!668 lt!398625))))))

(declare-fun e!747569 () Bool)

(assert (=> d!332886 (= lt!399228 e!747569)))

(declare-fun res!526694 () Bool)

(assert (=> d!332886 (=> (not res!526694) (not e!747569))))

(declare-fun lt!399227 () tuple2!12022)

(assert (=> d!332886 (= res!526694 (= (size!9067 (_1!6858 lt!399227)) 1))))

(assert (=> d!332886 (= lt!399227 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398625))))))

(assert (=> d!332886 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332886 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398625) lt!399228)))

(declare-fun b!1166441 () Bool)

(declare-fun res!526695 () Bool)

(assert (=> b!1166441 (=> (not res!526695) (not e!747569))))

(assert (=> b!1166441 (= res!526695 (= (apply!2479 (_1!6858 lt!399227) 0) lt!398625))))

(declare-fun b!1166442 () Bool)

(assert (=> b!1166442 (= e!747569 (isEmpty!7005 (_2!6858 lt!399227)))))

(declare-fun b!1166443 () Bool)

(assert (=> b!1166443 (= e!747570 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398625))))))))

(assert (= (and d!332886 res!526694) b!1166441))

(assert (= (and b!1166441 res!526695) b!1166442))

(assert (= (and d!332886 res!526693) b!1166443))

(assert (=> d!332886 m!1335511))

(declare-fun m!1336549 () Bool)

(assert (=> d!332886 m!1336549))

(declare-fun m!1336551 () Bool)

(assert (=> d!332886 m!1336551))

(declare-fun m!1336553 () Bool)

(assert (=> d!332886 m!1336553))

(declare-fun m!1336555 () Bool)

(assert (=> d!332886 m!1336555))

(declare-fun m!1336557 () Bool)

(assert (=> d!332886 m!1336557))

(declare-fun m!1336559 () Bool)

(assert (=> d!332886 m!1336559))

(assert (=> d!332886 m!1336555))

(assert (=> d!332886 m!1336549))

(assert (=> d!332886 m!1336555))

(declare-fun m!1336561 () Bool)

(assert (=> b!1166441 m!1336561))

(declare-fun m!1336563 () Bool)

(assert (=> b!1166442 m!1336563))

(assert (=> b!1166443 m!1336555))

(assert (=> b!1166443 m!1336555))

(assert (=> b!1166443 m!1336549))

(assert (=> b!1166443 m!1336549))

(assert (=> b!1166443 m!1336551))

(declare-fun m!1336565 () Bool)

(assert (=> b!1166443 m!1336565))

(assert (=> b!1165775 d!332886))

(declare-fun d!332888 () Bool)

(declare-fun lt!399230 () Bool)

(declare-fun e!747572 () Bool)

(assert (=> d!332888 (= lt!399230 e!747572)))

(declare-fun res!526696 () Bool)

(assert (=> d!332888 (=> (not res!526696) (not e!747572))))

(assert (=> d!332888 (= res!526696 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398607))))) (list!4239 (singletonSeq!668 lt!398607))))))

(declare-fun e!747571 () Bool)

(assert (=> d!332888 (= lt!399230 e!747571)))

(declare-fun res!526697 () Bool)

(assert (=> d!332888 (=> (not res!526697) (not e!747571))))

(declare-fun lt!399229 () tuple2!12022)

(assert (=> d!332888 (= res!526697 (= (size!9067 (_1!6858 lt!399229)) 1))))

(assert (=> d!332888 (= lt!399229 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398607))))))

(assert (=> d!332888 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332888 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398607) lt!399230)))

(declare-fun b!1166444 () Bool)

(declare-fun res!526698 () Bool)

(assert (=> b!1166444 (=> (not res!526698) (not e!747571))))

(assert (=> b!1166444 (= res!526698 (= (apply!2479 (_1!6858 lt!399229) 0) lt!398607))))

(declare-fun b!1166445 () Bool)

(assert (=> b!1166445 (= e!747571 (isEmpty!7005 (_2!6858 lt!399229)))))

(declare-fun b!1166446 () Bool)

(assert (=> b!1166446 (= e!747572 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398607))))))))

(assert (= (and d!332888 res!526697) b!1166444))

(assert (= (and b!1166444 res!526698) b!1166445))

(assert (= (and d!332888 res!526696) b!1166446))

(assert (=> d!332888 m!1335511))

(declare-fun m!1336567 () Bool)

(assert (=> d!332888 m!1336567))

(declare-fun m!1336569 () Bool)

(assert (=> d!332888 m!1336569))

(declare-fun m!1336571 () Bool)

(assert (=> d!332888 m!1336571))

(declare-fun m!1336573 () Bool)

(assert (=> d!332888 m!1336573))

(declare-fun m!1336575 () Bool)

(assert (=> d!332888 m!1336575))

(declare-fun m!1336577 () Bool)

(assert (=> d!332888 m!1336577))

(assert (=> d!332888 m!1336573))

(assert (=> d!332888 m!1336567))

(assert (=> d!332888 m!1336573))

(declare-fun m!1336579 () Bool)

(assert (=> b!1166444 m!1336579))

(declare-fun m!1336581 () Bool)

(assert (=> b!1166445 m!1336581))

(assert (=> b!1166446 m!1336573))

(assert (=> b!1166446 m!1336573))

(assert (=> b!1166446 m!1336567))

(assert (=> b!1166446 m!1336567))

(assert (=> b!1166446 m!1336569))

(declare-fun m!1336583 () Bool)

(assert (=> b!1166446 m!1336583))

(assert (=> b!1165775 d!332888))

(declare-fun d!332890 () Bool)

(assert (=> d!332890 (= (tail!1686 (drop!482 lt!398620 0)) (drop!482 lt!398620 (+ 0 1)))))

(declare-fun lt!399233 () Unit!17605)

(declare-fun choose!7531 (List!11543 Int) Unit!17605)

(assert (=> d!332890 (= lt!399233 (choose!7531 lt!398620 0))))

(declare-fun e!747575 () Bool)

(assert (=> d!332890 e!747575))

(declare-fun res!526701 () Bool)

(assert (=> d!332890 (=> (not res!526701) (not e!747575))))

(assert (=> d!332890 (= res!526701 (>= 0 0))))

(assert (=> d!332890 (= (lemmaDropTail!359 lt!398620 0) lt!399233)))

(declare-fun b!1166449 () Bool)

(assert (=> b!1166449 (= e!747575 (< 0 (size!9071 lt!398620)))))

(assert (= (and d!332890 res!526701) b!1166449))

(assert (=> d!332890 m!1335327))

(assert (=> d!332890 m!1335327))

(declare-fun m!1336585 () Bool)

(assert (=> d!332890 m!1336585))

(declare-fun m!1336587 () Bool)

(assert (=> d!332890 m!1336587))

(declare-fun m!1336589 () Bool)

(assert (=> d!332890 m!1336589))

(assert (=> b!1166449 m!1335451))

(assert (=> b!1165775 d!332890))

(declare-fun d!332892 () Bool)

(declare-fun lt!399236 () Token!3676)

(assert (=> d!332892 (= lt!399236 (apply!2480 (list!4239 (tokens!1624 thiss!10527)) 1))))

(declare-fun apply!2483 (Conc!3777 Int) Token!3676)

(assert (=> d!332892 (= lt!399236 (apply!2483 (c!194629 (tokens!1624 thiss!10527)) 1))))

(declare-fun e!747578 () Bool)

(assert (=> d!332892 e!747578))

(declare-fun res!526704 () Bool)

(assert (=> d!332892 (=> (not res!526704) (not e!747578))))

(assert (=> d!332892 (= res!526704 (<= 0 1))))

(assert (=> d!332892 (= (apply!2479 (tokens!1624 thiss!10527) 1) lt!399236)))

(declare-fun b!1166452 () Bool)

(assert (=> b!1166452 (= e!747578 (< 1 (size!9067 (tokens!1624 thiss!10527))))))

(assert (= (and d!332892 res!526704) b!1166452))

(assert (=> d!332892 m!1335409))

(assert (=> d!332892 m!1335409))

(declare-fun m!1336591 () Bool)

(assert (=> d!332892 m!1336591))

(declare-fun m!1336593 () Bool)

(assert (=> d!332892 m!1336593))

(assert (=> b!1166452 m!1335431))

(assert (=> b!1165775 d!332892))

(declare-fun d!332894 () Bool)

(declare-fun prefixMatchZipperSequence!91 (Regex!3277 BalanceConc!7574) Bool)

(declare-fun rulesRegex!66 (LexerInterface!1702 List!11544) Regex!3277)

(declare-fun ++!2980 (BalanceConc!7574 BalanceConc!7574) BalanceConc!7574)

(declare-fun singletonSeq!669 (C!6872) BalanceConc!7574)

(declare-fun apply!2484 (BalanceConc!7574 Int) C!6872)

(assert (=> d!332894 (= (separableTokensPredicate!130 Lexer!1700 lt!398607 lt!398625 (rules!9572 thiss!10527)) (not (prefixMatchZipperSequence!91 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)) (++!2980 (charsOf!1068 lt!398607) (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))))))))

(declare-fun bs!284429 () Bool)

(assert (= bs!284429 d!332894))

(assert (=> bs!284429 m!1335343))

(declare-fun m!1336595 () Bool)

(assert (=> bs!284429 m!1336595))

(declare-fun m!1336597 () Bool)

(assert (=> bs!284429 m!1336597))

(declare-fun m!1336599 () Bool)

(assert (=> bs!284429 m!1336599))

(declare-fun m!1336601 () Bool)

(assert (=> bs!284429 m!1336601))

(declare-fun m!1336603 () Bool)

(assert (=> bs!284429 m!1336603))

(assert (=> bs!284429 m!1335343))

(assert (=> bs!284429 m!1336595))

(assert (=> bs!284429 m!1336599))

(assert (=> bs!284429 m!1336603))

(assert (=> bs!284429 m!1336601))

(declare-fun m!1336605 () Bool)

(assert (=> bs!284429 m!1336605))

(assert (=> bs!284429 m!1336597))

(assert (=> b!1165775 d!332894))

(declare-fun d!332896 () Bool)

(declare-fun lt!399239 () Token!3676)

(declare-fun contains!1994 (List!11543 Token!3676) Bool)

(assert (=> d!332896 (contains!1994 lt!398620 lt!399239)))

(declare-fun e!747584 () Token!3676)

(assert (=> d!332896 (= lt!399239 e!747584)))

(declare-fun c!194702 () Bool)

(assert (=> d!332896 (= c!194702 (= 0 0))))

(declare-fun e!747583 () Bool)

(assert (=> d!332896 e!747583))

(declare-fun res!526707 () Bool)

(assert (=> d!332896 (=> (not res!526707) (not e!747583))))

(assert (=> d!332896 (= res!526707 (<= 0 0))))

(assert (=> d!332896 (= (apply!2480 lt!398620 0) lt!399239)))

(declare-fun b!1166459 () Bool)

(assert (=> b!1166459 (= e!747583 (< 0 (size!9071 lt!398620)))))

(declare-fun b!1166460 () Bool)

(assert (=> b!1166460 (= e!747584 (head!2102 lt!398620))))

(declare-fun b!1166461 () Bool)

(assert (=> b!1166461 (= e!747584 (apply!2480 (tail!1686 lt!398620) (- 0 1)))))

(assert (= (and d!332896 res!526707) b!1166459))

(assert (= (and d!332896 c!194702) b!1166460))

(assert (= (and d!332896 (not c!194702)) b!1166461))

(declare-fun m!1336607 () Bool)

(assert (=> d!332896 m!1336607))

(assert (=> b!1166459 m!1335451))

(declare-fun m!1336609 () Bool)

(assert (=> b!1166460 m!1336609))

(declare-fun m!1336611 () Bool)

(assert (=> b!1166461 m!1336611))

(assert (=> b!1166461 m!1336611))

(declare-fun m!1336613 () Bool)

(assert (=> b!1166461 m!1336613))

(assert (=> b!1165775 d!332896))

(declare-fun d!332898 () Bool)

(assert (=> d!332898 (= (head!2102 (drop!482 lt!398620 1)) (apply!2480 lt!398620 1))))

(declare-fun lt!399240 () Unit!17605)

(assert (=> d!332898 (= lt!399240 (choose!7528 lt!398620 1))))

(declare-fun e!747585 () Bool)

(assert (=> d!332898 e!747585))

(declare-fun res!526708 () Bool)

(assert (=> d!332898 (=> (not res!526708) (not e!747585))))

(assert (=> d!332898 (= res!526708 (>= 1 0))))

(assert (=> d!332898 (= (lemmaDropApply!371 lt!398620 1) lt!399240)))

(declare-fun b!1166462 () Bool)

(assert (=> b!1166462 (= e!747585 (< 1 (size!9071 lt!398620)))))

(assert (= (and d!332898 res!526708) b!1166462))

(assert (=> d!332898 m!1335305))

(assert (=> d!332898 m!1335305))

(declare-fun m!1336615 () Bool)

(assert (=> d!332898 m!1336615))

(assert (=> d!332898 m!1335311))

(declare-fun m!1336617 () Bool)

(assert (=> d!332898 m!1336617))

(assert (=> b!1166462 m!1335451))

(assert (=> b!1165775 d!332898))

(declare-fun d!332900 () Bool)

(assert (=> d!332900 (= (head!2102 lt!398619) (h!16920 lt!398619))))

(assert (=> b!1165775 d!332900))

(declare-fun d!332902 () Bool)

(assert (=> d!332902 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398625)))

(declare-fun lt!399241 () Unit!17605)

(assert (=> d!332902 (= lt!399241 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398620 lt!398625))))

(assert (=> d!332902 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332902 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398620 lt!398625) lt!399241)))

(declare-fun bs!284430 () Bool)

(assert (= bs!284430 d!332902))

(assert (=> bs!284430 m!1335321))

(declare-fun m!1336619 () Bool)

(assert (=> bs!284430 m!1336619))

(assert (=> bs!284430 m!1335511))

(assert (=> b!1165775 d!332902))

(declare-fun d!332904 () Bool)

(declare-fun lt!399242 () Token!3676)

(assert (=> d!332904 (= lt!399242 (apply!2480 (list!4239 (tokens!1624 thiss!10527)) 0))))

(assert (=> d!332904 (= lt!399242 (apply!2483 (c!194629 (tokens!1624 thiss!10527)) 0))))

(declare-fun e!747586 () Bool)

(assert (=> d!332904 e!747586))

(declare-fun res!526709 () Bool)

(assert (=> d!332904 (=> (not res!526709) (not e!747586))))

(assert (=> d!332904 (= res!526709 (<= 0 0))))

(assert (=> d!332904 (= (apply!2479 (tokens!1624 thiss!10527) 0) lt!399242)))

(declare-fun b!1166463 () Bool)

(assert (=> b!1166463 (= e!747586 (< 0 (size!9067 (tokens!1624 thiss!10527))))))

(assert (= (and d!332904 res!526709) b!1166463))

(assert (=> d!332904 m!1335409))

(assert (=> d!332904 m!1335409))

(declare-fun m!1336621 () Bool)

(assert (=> d!332904 m!1336621))

(declare-fun m!1336623 () Bool)

(assert (=> d!332904 m!1336623))

(assert (=> b!1166463 m!1335431))

(assert (=> b!1165775 d!332904))

(declare-fun b!1166464 () Bool)

(declare-fun e!747590 () Int)

(declare-fun call!82165 () Int)

(assert (=> b!1166464 (= e!747590 call!82165)))

(declare-fun b!1166465 () Bool)

(declare-fun e!747589 () List!11543)

(declare-fun e!747587 () List!11543)

(assert (=> b!1166465 (= e!747589 e!747587)))

(declare-fun c!194706 () Bool)

(assert (=> b!1166465 (= c!194706 (<= 2 0))))

(declare-fun b!1166466 () Bool)

(declare-fun e!747591 () Int)

(assert (=> b!1166466 (= e!747590 e!747591)))

(declare-fun c!194703 () Bool)

(assert (=> b!1166466 (= c!194703 (>= 2 call!82165))))

(declare-fun b!1166467 () Bool)

(declare-fun e!747588 () Bool)

(declare-fun lt!399243 () List!11543)

(assert (=> b!1166467 (= e!747588 (= (size!9071 lt!399243) e!747590))))

(declare-fun c!194704 () Bool)

(assert (=> b!1166467 (= c!194704 (<= 2 0))))

(declare-fun b!1166468 () Bool)

(assert (=> b!1166468 (= e!747589 Nil!11519)))

(declare-fun b!1166469 () Bool)

(assert (=> b!1166469 (= e!747591 (- call!82165 2))))

(declare-fun b!1166470 () Bool)

(assert (=> b!1166470 (= e!747587 lt!398620)))

(declare-fun b!1166472 () Bool)

(assert (=> b!1166472 (= e!747587 (drop!482 (t!110333 lt!398620) (- 2 1)))))

(declare-fun bm!82160 () Bool)

(assert (=> bm!82160 (= call!82165 (size!9071 lt!398620))))

(declare-fun d!332906 () Bool)

(assert (=> d!332906 e!747588))

(declare-fun res!526710 () Bool)

(assert (=> d!332906 (=> (not res!526710) (not e!747588))))

(assert (=> d!332906 (= res!526710 (= ((_ map implies) (content!1608 lt!399243) (content!1608 lt!398620)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!332906 (= lt!399243 e!747589)))

(declare-fun c!194705 () Bool)

(assert (=> d!332906 (= c!194705 ((_ is Nil!11519) lt!398620))))

(assert (=> d!332906 (= (drop!482 lt!398620 2) lt!399243)))

(declare-fun b!1166471 () Bool)

(assert (=> b!1166471 (= e!747591 0)))

(assert (= (and d!332906 c!194705) b!1166468))

(assert (= (and d!332906 (not c!194705)) b!1166465))

(assert (= (and b!1166465 c!194706) b!1166470))

(assert (= (and b!1166465 (not c!194706)) b!1166472))

(assert (= (and d!332906 res!526710) b!1166467))

(assert (= (and b!1166467 c!194704) b!1166464))

(assert (= (and b!1166467 (not c!194704)) b!1166466))

(assert (= (and b!1166466 c!194703) b!1166471))

(assert (= (and b!1166466 (not c!194703)) b!1166469))

(assert (= (or b!1166464 b!1166466 b!1166469) bm!82160))

(declare-fun m!1336625 () Bool)

(assert (=> b!1166467 m!1336625))

(declare-fun m!1336627 () Bool)

(assert (=> b!1166472 m!1336627))

(assert (=> bm!82160 m!1335451))

(declare-fun m!1336629 () Bool)

(assert (=> d!332906 m!1336629))

(assert (=> d!332906 m!1336477))

(assert (=> b!1165775 d!332906))

(declare-fun d!332908 () Bool)

(assert (=> d!332908 (= (head!2102 lt!398608) (h!16920 lt!398608))))

(assert (=> b!1165775 d!332908))

(declare-fun d!332910 () Bool)

(assert (=> d!332910 (= (tail!1686 (drop!482 lt!398620 1)) (drop!482 lt!398620 (+ 1 1)))))

(declare-fun lt!399244 () Unit!17605)

(assert (=> d!332910 (= lt!399244 (choose!7531 lt!398620 1))))

(declare-fun e!747592 () Bool)

(assert (=> d!332910 e!747592))

(declare-fun res!526711 () Bool)

(assert (=> d!332910 (=> (not res!526711) (not e!747592))))

(assert (=> d!332910 (= res!526711 (>= 1 0))))

(assert (=> d!332910 (= (lemmaDropTail!359 lt!398620 1) lt!399244)))

(declare-fun b!1166473 () Bool)

(assert (=> b!1166473 (= e!747592 (< 1 (size!9071 lt!398620)))))

(assert (= (and d!332910 res!526711) b!1166473))

(assert (=> d!332910 m!1335305))

(assert (=> d!332910 m!1335305))

(declare-fun m!1336631 () Bool)

(assert (=> d!332910 m!1336631))

(declare-fun m!1336633 () Bool)

(assert (=> d!332910 m!1336633))

(declare-fun m!1336635 () Bool)

(assert (=> d!332910 m!1336635))

(assert (=> b!1166473 m!1335451))

(assert (=> b!1165775 d!332910))

(declare-fun d!332912 () Bool)

(declare-fun lt!399245 () Token!3676)

(assert (=> d!332912 (contains!1994 lt!398620 lt!399245)))

(declare-fun e!747594 () Token!3676)

(assert (=> d!332912 (= lt!399245 e!747594)))

(declare-fun c!194707 () Bool)

(assert (=> d!332912 (= c!194707 (= 1 0))))

(declare-fun e!747593 () Bool)

(assert (=> d!332912 e!747593))

(declare-fun res!526712 () Bool)

(assert (=> d!332912 (=> (not res!526712) (not e!747593))))

(assert (=> d!332912 (= res!526712 (<= 0 1))))

(assert (=> d!332912 (= (apply!2480 lt!398620 1) lt!399245)))

(declare-fun b!1166474 () Bool)

(assert (=> b!1166474 (= e!747593 (< 1 (size!9071 lt!398620)))))

(declare-fun b!1166475 () Bool)

(assert (=> b!1166475 (= e!747594 (head!2102 lt!398620))))

(declare-fun b!1166476 () Bool)

(assert (=> b!1166476 (= e!747594 (apply!2480 (tail!1686 lt!398620) (- 1 1)))))

(assert (= (and d!332912 res!526712) b!1166474))

(assert (= (and d!332912 c!194707) b!1166475))

(assert (= (and d!332912 (not c!194707)) b!1166476))

(declare-fun m!1336637 () Bool)

(assert (=> d!332912 m!1336637))

(assert (=> b!1166474 m!1335451))

(assert (=> b!1166475 m!1336609))

(assert (=> b!1166476 m!1336611))

(assert (=> b!1166476 m!1336611))

(declare-fun m!1336639 () Bool)

(assert (=> b!1166476 m!1336639))

(assert (=> b!1165775 d!332912))

(declare-fun d!332914 () Bool)

(assert (=> d!332914 (= (tail!1686 lt!398619) (t!110333 lt!398619))))

(assert (=> b!1165775 d!332914))

(declare-fun b!1166477 () Bool)

(declare-fun e!747598 () Int)

(declare-fun call!82166 () Int)

(assert (=> b!1166477 (= e!747598 call!82166)))

(declare-fun b!1166478 () Bool)

(declare-fun e!747597 () List!11543)

(declare-fun e!747595 () List!11543)

(assert (=> b!1166478 (= e!747597 e!747595)))

(declare-fun c!194711 () Bool)

(assert (=> b!1166478 (= c!194711 (<= 1 0))))

(declare-fun b!1166479 () Bool)

(declare-fun e!747599 () Int)

(assert (=> b!1166479 (= e!747598 e!747599)))

(declare-fun c!194708 () Bool)

(assert (=> b!1166479 (= c!194708 (>= 1 call!82166))))

(declare-fun b!1166480 () Bool)

(declare-fun e!747596 () Bool)

(declare-fun lt!399246 () List!11543)

(assert (=> b!1166480 (= e!747596 (= (size!9071 lt!399246) e!747598))))

(declare-fun c!194709 () Bool)

(assert (=> b!1166480 (= c!194709 (<= 1 0))))

(declare-fun b!1166481 () Bool)

(assert (=> b!1166481 (= e!747597 Nil!11519)))

(declare-fun b!1166482 () Bool)

(assert (=> b!1166482 (= e!747599 (- call!82166 1))))

(declare-fun b!1166483 () Bool)

(assert (=> b!1166483 (= e!747595 lt!398620)))

(declare-fun b!1166485 () Bool)

(assert (=> b!1166485 (= e!747595 (drop!482 (t!110333 lt!398620) (- 1 1)))))

(declare-fun bm!82161 () Bool)

(assert (=> bm!82161 (= call!82166 (size!9071 lt!398620))))

(declare-fun d!332916 () Bool)

(assert (=> d!332916 e!747596))

(declare-fun res!526713 () Bool)

(assert (=> d!332916 (=> (not res!526713) (not e!747596))))

(assert (=> d!332916 (= res!526713 (= ((_ map implies) (content!1608 lt!399246) (content!1608 lt!398620)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!332916 (= lt!399246 e!747597)))

(declare-fun c!194710 () Bool)

(assert (=> d!332916 (= c!194710 ((_ is Nil!11519) lt!398620))))

(assert (=> d!332916 (= (drop!482 lt!398620 1) lt!399246)))

(declare-fun b!1166484 () Bool)

(assert (=> b!1166484 (= e!747599 0)))

(assert (= (and d!332916 c!194710) b!1166481))

(assert (= (and d!332916 (not c!194710)) b!1166478))

(assert (= (and b!1166478 c!194711) b!1166483))

(assert (= (and b!1166478 (not c!194711)) b!1166485))

(assert (= (and d!332916 res!526713) b!1166480))

(assert (= (and b!1166480 c!194709) b!1166477))

(assert (= (and b!1166480 (not c!194709)) b!1166479))

(assert (= (and b!1166479 c!194708) b!1166484))

(assert (= (and b!1166479 (not c!194708)) b!1166482))

(assert (= (or b!1166477 b!1166479 b!1166482) bm!82161))

(declare-fun m!1336641 () Bool)

(assert (=> b!1166480 m!1336641))

(declare-fun m!1336643 () Bool)

(assert (=> b!1166485 m!1336643))

(assert (=> bm!82161 m!1335451))

(declare-fun m!1336645 () Bool)

(assert (=> d!332916 m!1336645))

(assert (=> d!332916 m!1336477))

(assert (=> b!1165775 d!332916))

(declare-fun d!332918 () Bool)

(assert (=> d!332918 (= (inv!15165 (tokens!1624 thiss!10527)) (isBalanced!1060 (c!194629 (tokens!1624 thiss!10527))))))

(declare-fun bs!284431 () Bool)

(assert (= bs!284431 d!332918))

(assert (=> bs!284431 m!1335459))

(assert (=> b!1165774 d!332918))

(declare-fun d!332920 () Bool)

(declare-fun lt!399248 () Bool)

(declare-fun e!747601 () Bool)

(assert (=> d!332920 (= lt!399248 e!747601)))

(declare-fun res!526714 () Bool)

(assert (=> d!332920 (=> (not res!526714) (not e!747601))))

(assert (=> d!332920 (= res!526714 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620)))))) (list!4239 (singletonSeq!668 (h!16920 lt!398620)))))))

(declare-fun e!747600 () Bool)

(assert (=> d!332920 (= lt!399248 e!747600)))

(declare-fun res!526715 () Bool)

(assert (=> d!332920 (=> (not res!526715) (not e!747600))))

(declare-fun lt!399247 () tuple2!12022)

(assert (=> d!332920 (= res!526715 (= (size!9067 (_1!6858 lt!399247)) 1))))

(assert (=> d!332920 (= lt!399247 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620)))))))

(assert (=> d!332920 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!332920 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398620)) lt!399248)))

(declare-fun b!1166486 () Bool)

(declare-fun res!526716 () Bool)

(assert (=> b!1166486 (=> (not res!526716) (not e!747600))))

(assert (=> b!1166486 (= res!526716 (= (apply!2479 (_1!6858 lt!399247) 0) (h!16920 lt!398620)))))

(declare-fun b!1166487 () Bool)

(assert (=> b!1166487 (= e!747600 (isEmpty!7005 (_2!6858 lt!399247)))))

(declare-fun b!1166488 () Bool)

(assert (=> b!1166488 (= e!747601 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620)))))))))

(assert (= (and d!332920 res!526715) b!1166486))

(assert (= (and b!1166486 res!526716) b!1166487))

(assert (= (and d!332920 res!526714) b!1166488))

(assert (=> d!332920 m!1335511))

(declare-fun m!1336647 () Bool)

(assert (=> d!332920 m!1336647))

(declare-fun m!1336649 () Bool)

(assert (=> d!332920 m!1336649))

(declare-fun m!1336651 () Bool)

(assert (=> d!332920 m!1336651))

(declare-fun m!1336653 () Bool)

(assert (=> d!332920 m!1336653))

(declare-fun m!1336655 () Bool)

(assert (=> d!332920 m!1336655))

(declare-fun m!1336657 () Bool)

(assert (=> d!332920 m!1336657))

(assert (=> d!332920 m!1336653))

(assert (=> d!332920 m!1336647))

(assert (=> d!332920 m!1336653))

(declare-fun m!1336659 () Bool)

(assert (=> b!1166486 m!1336659))

(declare-fun m!1336661 () Bool)

(assert (=> b!1166487 m!1336661))

(assert (=> b!1166488 m!1336653))

(assert (=> b!1166488 m!1336653))

(assert (=> b!1166488 m!1336647))

(assert (=> b!1166488 m!1336647))

(assert (=> b!1166488 m!1336649))

(declare-fun m!1336663 () Bool)

(assert (=> b!1166488 m!1336663))

(assert (=> b!1165776 d!332920))

(declare-fun d!332922 () Bool)

(declare-fun res!526717 () Bool)

(declare-fun e!747602 () Bool)

(assert (=> d!332922 (=> res!526717 e!747602)))

(assert (=> d!332922 (= res!526717 (or (not ((_ is Cons!11519) lt!398622)) (not ((_ is Cons!11519) (t!110333 lt!398622)))))))

(assert (=> d!332922 (= (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 lt!398622 (rules!9572 thiss!10527)) e!747602)))

(declare-fun b!1166489 () Bool)

(declare-fun e!747603 () Bool)

(assert (=> b!1166489 (= e!747602 e!747603)))

(declare-fun res!526718 () Bool)

(assert (=> b!1166489 (=> (not res!526718) (not e!747603))))

(assert (=> b!1166489 (= res!526718 (separableTokensPredicate!130 Lexer!1700 (h!16920 lt!398622) (h!16920 (t!110333 lt!398622)) (rules!9572 thiss!10527)))))

(declare-fun lt!399253 () Unit!17605)

(declare-fun Unit!17636 () Unit!17605)

(assert (=> b!1166489 (= lt!399253 Unit!17636)))

(assert (=> b!1166489 (> (size!9066 (charsOf!1068 (h!16920 (t!110333 lt!398622)))) 0)))

(declare-fun lt!399251 () Unit!17605)

(declare-fun Unit!17637 () Unit!17605)

(assert (=> b!1166489 (= lt!399251 Unit!17637)))

(assert (=> b!1166489 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398622)))))

(declare-fun lt!399255 () Unit!17605)

(declare-fun Unit!17638 () Unit!17605)

(assert (=> b!1166489 (= lt!399255 Unit!17638)))

(assert (=> b!1166489 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398622))))

(declare-fun lt!399254 () Unit!17605)

(declare-fun lt!399250 () Unit!17605)

(assert (=> b!1166489 (= lt!399254 lt!399250)))

(assert (=> b!1166489 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398622)))))

(assert (=> b!1166489 (= lt!399250 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398622 (h!16920 (t!110333 lt!398622))))))

(declare-fun lt!399249 () Unit!17605)

(declare-fun lt!399252 () Unit!17605)

(assert (=> b!1166489 (= lt!399249 lt!399252)))

(assert (=> b!1166489 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398622))))

(assert (=> b!1166489 (= lt!399252 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398622 (h!16920 lt!398622)))))

(declare-fun b!1166490 () Bool)

(assert (=> b!1166490 (= e!747603 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))) (rules!9572 thiss!10527)))))

(assert (= (and d!332922 (not res!526717)) b!1166489))

(assert (= (and b!1166489 res!526718) b!1166490))

(declare-fun m!1336665 () Bool)

(assert (=> b!1166489 m!1336665))

(declare-fun m!1336667 () Bool)

(assert (=> b!1166489 m!1336667))

(declare-fun m!1336669 () Bool)

(assert (=> b!1166489 m!1336669))

(assert (=> b!1166489 m!1335365))

(assert (=> b!1166489 m!1336013))

(assert (=> b!1166489 m!1336667))

(declare-fun m!1336671 () Bool)

(assert (=> b!1166489 m!1336671))

(declare-fun m!1336673 () Bool)

(assert (=> b!1166489 m!1336673))

(declare-fun m!1336675 () Bool)

(assert (=> b!1166490 m!1336675))

(assert (=> b!1165772 d!332922))

(declare-fun d!332924 () Bool)

(declare-fun lt!399258 () Int)

(assert (=> d!332924 (= lt!399258 (size!9071 (list!4239 (tokens!1624 thiss!10527))))))

(declare-fun size!9075 (Conc!3777) Int)

(assert (=> d!332924 (= lt!399258 (size!9075 (c!194629 (tokens!1624 thiss!10527))))))

(assert (=> d!332924 (= (size!9067 (tokens!1624 thiss!10527)) lt!399258)))

(declare-fun bs!284432 () Bool)

(assert (= bs!284432 d!332924))

(assert (=> bs!284432 m!1335409))

(assert (=> bs!284432 m!1335409))

(declare-fun m!1336677 () Bool)

(assert (=> bs!284432 m!1336677))

(declare-fun m!1336679 () Bool)

(assert (=> bs!284432 m!1336679))

(assert (=> b!1165773 d!332924))

(declare-fun b!1166493 () Bool)

(declare-fun e!747606 () Bool)

(assert (=> b!1166493 (= e!747606 true)))

(declare-fun b!1166492 () Bool)

(declare-fun e!747605 () Bool)

(assert (=> b!1166492 (= e!747605 e!747606)))

(declare-fun b!1166491 () Bool)

(declare-fun e!747604 () Bool)

(assert (=> b!1166491 (= e!747604 e!747605)))

(assert (=> b!1165788 e!747604))

(assert (= b!1166492 b!1166493))

(assert (= b!1166491 b!1166492))

(assert (= (and b!1165788 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166491))

(assert (=> b!1166493 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47859))))

(assert (=> b!1166493 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47859))))

(declare-fun tp!334256 () Bool)

(declare-fun e!747612 () Bool)

(declare-fun tp!334255 () Bool)

(declare-fun b!1166502 () Bool)

(assert (=> b!1166502 (= e!747612 (and (inv!15164 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) tp!334255 (inv!15164 (right!10404 (c!194629 (tokens!1624 thiss!10527)))) tp!334256))))

(declare-fun b!1166504 () Bool)

(declare-fun e!747611 () Bool)

(declare-fun tp!334257 () Bool)

(assert (=> b!1166504 (= e!747611 tp!334257)))

(declare-fun b!1166503 () Bool)

(declare-fun inv!15174 (IArray!7559) Bool)

(assert (=> b!1166503 (= e!747612 (and (inv!15174 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))) e!747611))))

(assert (=> b!1165770 (= tp!334223 (and (inv!15164 (c!194629 (tokens!1624 thiss!10527))) e!747612))))

(assert (= (and b!1165770 ((_ is Node!3777) (c!194629 (tokens!1624 thiss!10527)))) b!1166502))

(assert (= b!1166503 b!1166504))

(assert (= (and b!1165770 ((_ is Leaf!5791) (c!194629 (tokens!1624 thiss!10527)))) b!1166503))

(declare-fun m!1336681 () Bool)

(assert (=> b!1166502 m!1336681))

(declare-fun m!1336683 () Bool)

(assert (=> b!1166502 m!1336683))

(declare-fun m!1336685 () Bool)

(assert (=> b!1166503 m!1336685))

(assert (=> b!1165770 m!1335301))

(declare-fun b!1166515 () Bool)

(declare-fun b_free!27793 () Bool)

(declare-fun b_next!28497 () Bool)

(assert (=> b!1166515 (= b_free!27793 (not b_next!28497))))

(declare-fun tp!334267 () Bool)

(declare-fun b_and!80669 () Bool)

(assert (=> b!1166515 (= tp!334267 b_and!80669)))

(declare-fun b_free!27795 () Bool)

(declare-fun b_next!28499 () Bool)

(assert (=> b!1166515 (= b_free!27795 (not b_next!28499))))

(declare-fun t!110362 () Bool)

(declare-fun tb!65851 () Bool)

(assert (=> (and b!1166515 (= (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) (toChars!2967 (transformation!2007 (rule!3428 lt!398625)))) t!110362) tb!65851))

(declare-fun b!1166520 () Bool)

(declare-fun e!747627 () Bool)

(declare-fun tp!334272 () Bool)

(declare-fun inv!15175 (Conc!3776) Bool)

(assert (=> b!1166520 (= e!747627 (and (inv!15175 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625)))) tp!334272))))

(declare-fun result!78814 () Bool)

(declare-fun inv!15176 (BalanceConc!7574) Bool)

(assert (=> tb!65851 (= result!78814 (and (inv!15176 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625))) e!747627))))

(assert (= tb!65851 b!1166520))

(declare-fun m!1336687 () Bool)

(assert (=> b!1166520 m!1336687))

(declare-fun m!1336689 () Bool)

(assert (=> tb!65851 m!1336689))

(assert (=> d!332676 t!110362))

(declare-fun b_and!80671 () Bool)

(declare-fun tp!334269 () Bool)

(assert (=> b!1166515 (= tp!334269 (and (=> t!110362 result!78814) b_and!80671))))

(declare-fun e!747621 () Bool)

(assert (=> b!1166515 (= e!747621 (and tp!334267 tp!334269))))

(declare-fun e!747622 () Bool)

(declare-fun tp!334266 () Bool)

(declare-fun b!1166514 () Bool)

(declare-fun inv!15159 (String!13953) Bool)

(declare-fun inv!15177 (TokenValueInjection!3846) Bool)

(assert (=> b!1166514 (= e!747622 (and tp!334266 (inv!15159 (tag!2269 (h!16921 (rules!9572 thiss!10527)))) (inv!15177 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) e!747621))))

(declare-fun b!1166513 () Bool)

(declare-fun e!747623 () Bool)

(declare-fun tp!334268 () Bool)

(assert (=> b!1166513 (= e!747623 (and e!747622 tp!334268))))

(assert (=> b!1165774 (= tp!334224 e!747623)))

(assert (= b!1166514 b!1166515))

(assert (= b!1166513 b!1166514))

(assert (= (and b!1165774 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166513))

(declare-fun m!1336691 () Bool)

(assert (=> b!1166514 m!1336691))

(declare-fun m!1336693 () Bool)

(assert (=> b!1166514 m!1336693))

(declare-fun b!1166529 () Bool)

(declare-fun e!747632 () Bool)

(assert (=> b!1166529 (= e!747632 true)))

(declare-fun b!1166531 () Bool)

(declare-fun e!747633 () Bool)

(assert (=> b!1166531 (= e!747633 true)))

(declare-fun b!1166530 () Bool)

(assert (=> b!1166530 (= e!747632 e!747633)))

(assert (=> b!1165789 e!747632))

(assert (= (and b!1165789 ((_ is Node!3777) (c!194629 (tokens!1624 thiss!10527)))) b!1166529))

(assert (= b!1166530 b!1166531))

(assert (= (and b!1165789 ((_ is Leaf!5791) (c!194629 (tokens!1624 thiss!10527)))) b!1166530))

(declare-fun b_lambda!34749 () Bool)

(assert (= b_lambda!34739 (or b!1165777 b_lambda!34749)))

(declare-fun bs!284433 () Bool)

(declare-fun d!332926 () Bool)

(assert (= bs!284433 (and d!332926 b!1165777)))

(assert (=> bs!284433 (= (dynLambda!5074 lambda!47859 (h!16920 lt!398622)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398622)))))

(assert (=> bs!284433 m!1335365))

(assert (=> b!1166337 d!332926))

(declare-fun b_lambda!34751 () Bool)

(assert (= b_lambda!34737 (or b!1165777 b_lambda!34751)))

(declare-fun bs!284434 () Bool)

(declare-fun d!332928 () Bool)

(assert (= bs!284434 (and d!332928 b!1165777)))

(assert (=> bs!284434 (= (dynLambda!5074 lambda!47859 (h!16920 lt!398606)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398606)))))

(assert (=> bs!284434 m!1335299))

(assert (=> b!1166330 d!332928))

(declare-fun b_lambda!34753 () Bool)

(assert (= b_lambda!34729 (or b!1165777 b_lambda!34753)))

(declare-fun bs!284435 () Bool)

(declare-fun d!332930 () Bool)

(assert (= bs!284435 (and d!332930 b!1165777)))

(assert (=> bs!284435 (= (dynLambda!5074 lambda!47859 (h!16920 lt!398621)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398621)))))

(assert (=> bs!284435 m!1335415))

(assert (=> b!1165818 d!332930))

(check-sat (not b!1165998) (not b!1166051) (not b!1166485) (not bm!82158) (not b!1166117) (not d!332806) (not d!332834) (not b!1166165) (not b!1165813) (not d!332878) (not bs!284434) (not b!1165800) (not b!1166131) (not b!1166502) (not b!1166163) (not d!332664) (not b!1165849) (not b!1166475) (not d!332794) (not b!1166486) (not b!1166476) (not b!1166132) (not b!1166018) (not bm!82159) (not b!1166168) (not b!1166441) (not d!332730) (not b!1166022) (not b!1166139) (not d!332656) (not b!1166489) b_and!80671 (not d!332792) (not d!332890) (not b!1166016) (not b!1166391) (not b!1165973) (not b!1166503) (not b!1166428) (not b!1165966) (not b!1166329) (not b!1166487) (not b!1166385) (not b!1166467) (not b!1165960) (not b!1166383) (not d!332842) (not d!332836) (not b_next!28497) (not d!332906) (not d!332896) (not bs!284433) (not b!1166282) (not b!1166334) (not b!1165997) (not d!332742) (not b!1166010) (not b!1166066) (not b!1166374) (not b!1166009) (not b!1166017) (not d!332850) (not b!1166446) b_and!80669 (not b!1166102) (not b!1165804) (not b!1166514) (not b!1166473) (not b!1166100) (not d!332666) (not d!332732) (not b!1166120) (not b!1166157) (not d!332796) (not d!332676) (not bs!284435) (not bm!82161) (not d!332898) (not d!332864) (not d!332740) (not b!1165964) (not b!1166333) (not b!1166491) (not b!1166490) (not b!1165811) (not b!1166462) (not b!1166161) (not b!1166463) (not b!1165963) (not d!332758) (not b!1166133) (not b!1166443) (not b!1166370) (not b!1166504) (not b!1166445) (not b!1165770) (not d!332764) (not d!332678) (not b!1166167) (not d!332924) (not d!332872) (not b!1166461) (not b!1166332) (not b!1166247) (not b!1166050) (not d!332852) (not d!332904) (not d!332916) (not b!1165812) (not b!1166166) (not d!332888) (not b!1166243) (not d!332712) (not d!332754) (not b!1166331) (not d!332770) (not d!332766) (not b!1166248) (not b!1166044) (not b!1166513) (not d!332868) (not b!1166459) (not b_lambda!34749) (not b!1165840) (not b!1166239) (not b_next!28499) (not d!332660) (not b_lambda!34751) (not b!1166116) (not b!1166065) (not d!332802) (not b!1166460) (not b!1166474) (not b!1166338) (not b!1166281) (not d!332894) (not b!1166138) (not b!1165819) (not d!332912) (not b!1166384) (not b!1166159) (not b_lambda!34731) (not b!1165971) (not b!1166241) (not b!1166375) (not d!332920) (not d!332892) (not b!1166396) (not b!1166442) (not b!1166169) (not d!332658) (not b!1166520) (not b!1166043) (not d!332714) (not b!1166181) (not b!1165967) (not b!1166279) (not d!332790) (not d!332918) (not b!1166444) (not b!1166480) (not b!1166019) (not b!1166488) (not b!1166164) (not b!1166182) (not b!1165965) (not b!1166449) (not b!1166067) (not b!1166127) (not b!1166042) (not b!1166128) (not b!1166020) (not d!332902) (not b!1166452) (not b!1165801) (not d!332910) (not b!1166242) (not b!1166529) (not d!332844) (not d!332832) (not b!1166148) (not b!1166246) (not b!1166162) (not b!1166008) (not d!332674) (not b!1165972) (not b_lambda!34753) (not d!332856) (not d!332874) (not d!332886) (not b!1165962) (not b!1166160) (not b!1166170) (not b!1166324) (not b!1166283) (not d!332800) (not d!332668) (not b!1166026) (not b!1166240) (not bm!82160) (not b!1166024) (not b!1166472) (not b!1165961) (not tb!65851) (not b!1166531) (not b!1166371) (not b!1165839) (not b!1166280) (not b!1166101))
(check-sat b_and!80669 b_and!80671 (not b_next!28497) (not b_next!28499))
(get-model)

(declare-fun b!1166739 () Bool)

(declare-fun e!747779 () Int)

(assert (=> b!1166739 (= e!747779 (- (- to!267 from!787) 1))))

(declare-fun d!333064 () Bool)

(declare-fun e!747777 () Bool)

(assert (=> d!333064 e!747777))

(declare-fun res!526850 () Bool)

(assert (=> d!333064 (=> (not res!526850) (not e!747777))))

(declare-fun lt!399428 () List!11543)

(assert (=> d!333064 (= res!526850 (= ((_ map implies) (content!1608 lt!399428) (content!1608 (t!110333 lt!398622))) ((as const (InoxSet Token!3676)) true)))))

(declare-fun e!747778 () List!11543)

(assert (=> d!333064 (= lt!399428 e!747778)))

(declare-fun c!194753 () Bool)

(assert (=> d!333064 (= c!194753 (or ((_ is Nil!11519) (t!110333 lt!398622)) (<= (- (- to!267 from!787) 1) 0)))))

(assert (=> d!333064 (= (take!72 (t!110333 lt!398622) (- (- to!267 from!787) 1)) lt!399428)))

(declare-fun b!1166740 () Bool)

(assert (=> b!1166740 (= e!747779 (size!9071 (t!110333 lt!398622)))))

(declare-fun b!1166741 () Bool)

(declare-fun e!747780 () Int)

(assert (=> b!1166741 (= e!747777 (= (size!9071 lt!399428) e!747780))))

(declare-fun c!194751 () Bool)

(assert (=> b!1166741 (= c!194751 (<= (- (- to!267 from!787) 1) 0))))

(declare-fun b!1166742 () Bool)

(assert (=> b!1166742 (= e!747778 Nil!11519)))

(declare-fun b!1166743 () Bool)

(assert (=> b!1166743 (= e!747780 0)))

(declare-fun b!1166744 () Bool)

(assert (=> b!1166744 (= e!747778 (Cons!11519 (h!16920 (t!110333 lt!398622)) (take!72 (t!110333 (t!110333 lt!398622)) (- (- (- to!267 from!787) 1) 1))))))

(declare-fun b!1166745 () Bool)

(assert (=> b!1166745 (= e!747780 e!747779)))

(declare-fun c!194752 () Bool)

(assert (=> b!1166745 (= c!194752 (>= (- (- to!267 from!787) 1) (size!9071 (t!110333 lt!398622))))))

(assert (= (and d!333064 c!194753) b!1166742))

(assert (= (and d!333064 (not c!194753)) b!1166744))

(assert (= (and d!333064 res!526850) b!1166741))

(assert (= (and b!1166741 c!194751) b!1166743))

(assert (= (and b!1166741 (not c!194751)) b!1166745))

(assert (= (and b!1166745 c!194752) b!1166740))

(assert (= (and b!1166745 (not c!194752)) b!1166739))

(declare-fun m!1337251 () Bool)

(assert (=> b!1166744 m!1337251))

(declare-fun m!1337253 () Bool)

(assert (=> b!1166741 m!1337253))

(declare-fun m!1337255 () Bool)

(assert (=> b!1166740 m!1337255))

(assert (=> b!1166745 m!1337255))

(declare-fun m!1337257 () Bool)

(assert (=> d!333064 m!1337257))

(declare-fun m!1337259 () Bool)

(assert (=> d!333064 m!1337259))

(assert (=> b!1166374 d!333064))

(declare-fun d!333066 () Bool)

(assert (=> d!333066 (= (head!2102 (drop!482 lt!398620 1)) (h!16920 (drop!482 lt!398620 1)))))

(assert (=> d!332898 d!333066))

(assert (=> d!332898 d!332916))

(assert (=> d!332898 d!332912))

(declare-fun d!333068 () Bool)

(assert (=> d!333068 (= (head!2102 (drop!482 lt!398620 1)) (apply!2480 lt!398620 1))))

(assert (=> d!333068 true))

(declare-fun _$27!656 () Unit!17605)

(assert (=> d!333068 (= (choose!7528 lt!398620 1) _$27!656)))

(declare-fun bs!284498 () Bool)

(assert (= bs!284498 d!333068))

(assert (=> bs!284498 m!1335305))

(assert (=> bs!284498 m!1335305))

(assert (=> bs!284498 m!1336615))

(assert (=> bs!284498 m!1335311))

(assert (=> d!332898 d!333068))

(declare-fun d!333070 () Bool)

(assert (=> d!333070 (= (list!4239 lt!398640) (list!4242 (c!194629 lt!398640)))))

(declare-fun bs!284499 () Bool)

(assert (= bs!284499 d!333070))

(declare-fun m!1337261 () Bool)

(assert (=> bs!284499 m!1337261))

(assert (=> b!1165813 d!333070))

(declare-fun d!333072 () Bool)

(assert (=> d!333072 (= (slice!313 (list!4239 (tokens!1624 thiss!10527)) from!787 to!267) (take!72 (drop!482 (list!4239 (tokens!1624 thiss!10527)) from!787) (- to!267 from!787)))))

(declare-fun bs!284500 () Bool)

(assert (= bs!284500 d!333072))

(assert (=> bs!284500 m!1335409))

(declare-fun m!1337263 () Bool)

(assert (=> bs!284500 m!1337263))

(assert (=> bs!284500 m!1337263))

(declare-fun m!1337265 () Bool)

(assert (=> bs!284500 m!1337265))

(assert (=> b!1165813 d!333072))

(assert (=> b!1165813 d!332740))

(declare-fun b!1166754 () Bool)

(declare-fun e!747785 () List!11543)

(assert (=> b!1166754 (= e!747785 Nil!11519)))

(declare-fun b!1166755 () Bool)

(declare-fun e!747786 () List!11543)

(assert (=> b!1166755 (= e!747785 e!747786)))

(declare-fun c!194759 () Bool)

(assert (=> b!1166755 (= c!194759 ((_ is Leaf!5791) (c!194629 lt!398609)))))

(declare-fun b!1166757 () Bool)

(declare-fun ++!2981 (List!11543 List!11543) List!11543)

(assert (=> b!1166757 (= e!747786 (++!2981 (list!4242 (left!10074 (c!194629 lt!398609))) (list!4242 (right!10404 (c!194629 lt!398609)))))))

(declare-fun d!333074 () Bool)

(declare-fun c!194758 () Bool)

(assert (=> d!333074 (= c!194758 ((_ is Empty!3777) (c!194629 lt!398609)))))

(assert (=> d!333074 (= (list!4242 (c!194629 lt!398609)) e!747785)))

(declare-fun b!1166756 () Bool)

(declare-fun list!4244 (IArray!7559) List!11543)

(assert (=> b!1166756 (= e!747786 (list!4244 (xs!6482 (c!194629 lt!398609))))))

(assert (= (and d!333074 c!194758) b!1166754))

(assert (= (and d!333074 (not c!194758)) b!1166755))

(assert (= (and b!1166755 c!194759) b!1166756))

(assert (= (and b!1166755 (not c!194759)) b!1166757))

(declare-fun m!1337267 () Bool)

(assert (=> b!1166757 m!1337267))

(declare-fun m!1337269 () Bool)

(assert (=> b!1166757 m!1337269))

(assert (=> b!1166757 m!1337267))

(assert (=> b!1166757 m!1337269))

(declare-fun m!1337271 () Bool)

(assert (=> b!1166757 m!1337271))

(declare-fun m!1337273 () Bool)

(assert (=> b!1166756 m!1337273))

(assert (=> d!332664 d!333074))

(declare-fun bs!284501 () Bool)

(declare-fun d!333076 () Bool)

(assert (= bs!284501 (and d!333076 d!332714)))

(declare-fun lambda!47907 () Int)

(assert (=> bs!284501 (= lambda!47907 lambda!47877)))

(declare-fun bs!284502 () Bool)

(assert (= bs!284502 (and d!333076 d!332754)))

(assert (=> bs!284502 (= lambda!47907 lambda!47880)))

(declare-fun bs!284503 () Bool)

(assert (= bs!284503 (and d!333076 d!332758)))

(assert (=> bs!284503 (= lambda!47907 lambda!47881)))

(declare-fun bs!284504 () Bool)

(assert (= bs!284504 (and d!333076 d!332712)))

(assert (=> bs!284504 (= lambda!47907 lambda!47872)))

(declare-fun bs!284505 () Bool)

(assert (= bs!284505 (and d!333076 d!332732)))

(assert (=> bs!284505 (= lambda!47907 lambda!47878)))

(declare-fun bs!284506 () Bool)

(assert (= bs!284506 (and d!333076 d!332856)))

(assert (=> bs!284506 (= lambda!47907 lambda!47902)))

(declare-fun bs!284507 () Bool)

(assert (= bs!284507 (and d!333076 b!1166241)))

(assert (=> bs!284507 (= lambda!47907 lambda!47890)))

(declare-fun bs!284508 () Bool)

(assert (= bs!284508 (and d!333076 d!332834)))

(assert (=> bs!284508 (= lambda!47907 lambda!47891)))

(declare-fun bs!284509 () Bool)

(assert (= bs!284509 (and d!333076 d!332868)))

(assert (=> bs!284509 (= lambda!47907 lambda!47903)))

(declare-fun bs!284510 () Bool)

(assert (= bs!284510 (and d!333076 b!1166281)))

(assert (=> bs!284510 (= lambda!47907 lambda!47898)))

(declare-fun bs!284511 () Bool)

(assert (= bs!284511 (and d!333076 d!332796)))

(assert (=> bs!284511 (= lambda!47907 lambda!47883)))

(declare-fun bs!284512 () Bool)

(assert (= bs!284512 (and d!333076 b!1165777)))

(assert (=> bs!284512 (= lambda!47907 lambda!47859)))

(declare-fun bs!284513 () Bool)

(assert (= bs!284513 (and d!333076 d!332668)))

(assert (=> bs!284513 (= lambda!47907 lambda!47862)))

(declare-fun b!1166762 () Bool)

(declare-fun e!747791 () Bool)

(assert (=> b!1166762 (= e!747791 true)))

(declare-fun b!1166761 () Bool)

(declare-fun e!747790 () Bool)

(assert (=> b!1166761 (= e!747790 e!747791)))

(declare-fun b!1166760 () Bool)

(declare-fun e!747789 () Bool)

(assert (=> b!1166760 (= e!747789 e!747790)))

(assert (=> d!333076 e!747789))

(assert (= b!1166761 b!1166762))

(assert (= b!1166760 b!1166761))

(assert (= (and d!333076 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1166760))

(assert (=> b!1166762 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47907))))

(assert (=> b!1166762 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47907))))

(assert (=> d!333076 true))

(declare-fun lt!399429 () Bool)

(assert (=> d!333076 (= lt!399429 (forall!3024 (t!110333 (t!110333 lt!398606)) lambda!47907))))

(declare-fun e!747787 () Bool)

(assert (=> d!333076 (= lt!399429 e!747787)))

(declare-fun res!526852 () Bool)

(assert (=> d!333076 (=> res!526852 e!747787)))

(assert (=> d!333076 (= res!526852 (not ((_ is Cons!11519) (t!110333 (t!110333 lt!398606)))))))

(assert (=> d!333076 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333076 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 lt!398606))) lt!399429)))

(declare-fun b!1166758 () Bool)

(declare-fun e!747788 () Bool)

(assert (=> b!1166758 (= e!747787 e!747788)))

(declare-fun res!526851 () Bool)

(assert (=> b!1166758 (=> (not res!526851) (not e!747788))))

(assert (=> b!1166758 (= res!526851 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (t!110333 lt!398606)))))))

(declare-fun b!1166759 () Bool)

(assert (=> b!1166759 (= e!747788 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 (t!110333 lt!398606)))))))

(assert (= (and d!333076 (not res!526852)) b!1166758))

(assert (= (and b!1166758 res!526851) b!1166759))

(declare-fun m!1337275 () Bool)

(assert (=> d!333076 m!1337275))

(assert (=> d!333076 m!1335511))

(declare-fun m!1337277 () Bool)

(assert (=> b!1166758 m!1337277))

(declare-fun m!1337279 () Bool)

(assert (=> b!1166759 m!1337279))

(assert (=> b!1165972 d!333076))

(assert (=> b!1166333 d!332712))

(declare-fun d!333078 () Bool)

(declare-fun lt!399430 () Token!3676)

(assert (=> d!333078 (contains!1994 (tail!1686 lt!398620) lt!399430)))

(declare-fun e!747793 () Token!3676)

(assert (=> d!333078 (= lt!399430 e!747793)))

(declare-fun c!194760 () Bool)

(assert (=> d!333078 (= c!194760 (= (- 1 1) 0))))

(declare-fun e!747792 () Bool)

(assert (=> d!333078 e!747792))

(declare-fun res!526853 () Bool)

(assert (=> d!333078 (=> (not res!526853) (not e!747792))))

(assert (=> d!333078 (= res!526853 (<= 0 (- 1 1)))))

(assert (=> d!333078 (= (apply!2480 (tail!1686 lt!398620) (- 1 1)) lt!399430)))

(declare-fun b!1166763 () Bool)

(assert (=> b!1166763 (= e!747792 (< (- 1 1) (size!9071 (tail!1686 lt!398620))))))

(declare-fun b!1166764 () Bool)

(assert (=> b!1166764 (= e!747793 (head!2102 (tail!1686 lt!398620)))))

(declare-fun b!1166765 () Bool)

(assert (=> b!1166765 (= e!747793 (apply!2480 (tail!1686 (tail!1686 lt!398620)) (- (- 1 1) 1)))))

(assert (= (and d!333078 res!526853) b!1166763))

(assert (= (and d!333078 c!194760) b!1166764))

(assert (= (and d!333078 (not c!194760)) b!1166765))

(assert (=> d!333078 m!1336611))

(declare-fun m!1337281 () Bool)

(assert (=> d!333078 m!1337281))

(assert (=> b!1166763 m!1336611))

(declare-fun m!1337283 () Bool)

(assert (=> b!1166763 m!1337283))

(assert (=> b!1166764 m!1336611))

(declare-fun m!1337285 () Bool)

(assert (=> b!1166764 m!1337285))

(assert (=> b!1166765 m!1336611))

(declare-fun m!1337287 () Bool)

(assert (=> b!1166765 m!1337287))

(assert (=> b!1166765 m!1337287))

(declare-fun m!1337289 () Bool)

(assert (=> b!1166765 m!1337289))

(assert (=> b!1166476 d!333078))

(declare-fun d!333080 () Bool)

(assert (=> d!333080 (= (tail!1686 lt!398620) (t!110333 lt!398620))))

(assert (=> b!1166476 d!333080))

(declare-fun d!333082 () Bool)

(declare-fun res!526854 () Bool)

(declare-fun e!747794 () Bool)

(assert (=> d!333082 (=> res!526854 e!747794)))

(assert (=> d!333082 (= res!526854 ((_ is Nil!11519) (list!4239 (tokens!1624 thiss!10527))))))

(assert (=> d!333082 (= (forall!3024 (list!4239 (tokens!1624 thiss!10527)) lambda!47877) e!747794)))

(declare-fun b!1166766 () Bool)

(declare-fun e!747795 () Bool)

(assert (=> b!1166766 (= e!747794 e!747795)))

(declare-fun res!526855 () Bool)

(assert (=> b!1166766 (=> (not res!526855) (not e!747795))))

(assert (=> b!1166766 (= res!526855 (dynLambda!5074 lambda!47877 (h!16920 (list!4239 (tokens!1624 thiss!10527)))))))

(declare-fun b!1166767 () Bool)

(assert (=> b!1166767 (= e!747795 (forall!3024 (t!110333 (list!4239 (tokens!1624 thiss!10527))) lambda!47877))))

(assert (= (and d!333082 (not res!526854)) b!1166766))

(assert (= (and b!1166766 res!526855) b!1166767))

(declare-fun b_lambda!34771 () Bool)

(assert (=> (not b_lambda!34771) (not b!1166766)))

(declare-fun m!1337291 () Bool)

(assert (=> b!1166766 m!1337291))

(declare-fun m!1337293 () Bool)

(assert (=> b!1166767 m!1337293))

(assert (=> d!332714 d!333082))

(assert (=> d!332714 d!332740))

(declare-fun d!333084 () Bool)

(declare-fun lt!399441 () Bool)

(assert (=> d!333084 (= lt!399441 (forall!3024 (list!4239 (tokens!1624 thiss!10527)) lambda!47877))))

(assert (=> d!333084 (= lt!399441 (forall!3026 (c!194629 (tokens!1624 thiss!10527)) lambda!47877))))

(assert (=> d!333084 (= (forall!3023 (tokens!1624 thiss!10527) lambda!47877) lt!399441)))

(declare-fun bs!284514 () Bool)

(assert (= bs!284514 d!333084))

(assert (=> bs!284514 m!1335409))

(assert (=> bs!284514 m!1335409))

(assert (=> bs!284514 m!1335721))

(declare-fun m!1337295 () Bool)

(assert (=> bs!284514 m!1337295))

(assert (=> d!332714 d!333084))

(declare-fun d!333086 () Bool)

(assert (=> d!333086 (= (isEmpty!7004 (rules!9572 thiss!10527)) ((_ is Nil!11520) (rules!9572 thiss!10527)))))

(assert (=> d!332714 d!333086))

(declare-fun b!1166768 () Bool)

(declare-fun e!747797 () Bool)

(declare-fun lt!399476 () List!11543)

(assert (=> b!1166768 (= e!747797 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!399476))))

(declare-fun b!1166769 () Bool)

(declare-fun e!747798 () Bool)

(declare-fun lt!399479 () List!11543)

(assert (=> b!1166769 (= e!747798 (<= (+ 0 1) (size!9071 lt!399479)))))

(declare-fun b!1166770 () Bool)

(declare-fun res!526859 () Bool)

(assert (=> b!1166770 (=> (not res!526859) (not e!747797))))

(assert (=> b!1166770 (= res!526859 (not (isEmpty!7004 (rules!9572 thiss!10527))))))

(declare-fun b!1166771 () Bool)

(declare-fun e!747800 () Bool)

(assert (=> b!1166771 (= e!747800 (<= (+ 0 1) (size!9067 lt!398609)))))

(declare-fun b!1166772 () Bool)

(declare-fun e!747796 () Bool)

(declare-fun e!747799 () Bool)

(assert (=> b!1166772 (= e!747796 e!747799)))

(declare-fun res!526862 () Bool)

(assert (=> b!1166772 (=> (not res!526862) (not e!747799))))

(assert (=> b!1166772 (= res!526862 (separableTokensPredicate!130 Lexer!1700 (apply!2479 lt!398609 (+ 0 1)) (apply!2479 lt!398609 (+ 0 1 1)) (rules!9572 thiss!10527)))))

(declare-fun lt!399467 () Unit!17605)

(declare-fun Unit!17654 () Unit!17605)

(assert (=> b!1166772 (= lt!399467 Unit!17654)))

(assert (=> b!1166772 (> (size!9066 (charsOf!1068 (apply!2479 lt!398609 (+ 0 1 1)))) 0)))

(declare-fun lt!399454 () Unit!17605)

(declare-fun Unit!17655 () Unit!17605)

(assert (=> b!1166772 (= lt!399454 Unit!17655)))

(assert (=> b!1166772 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 lt!398609 (+ 0 1 1)))))

(declare-fun lt!399472 () Unit!17605)

(declare-fun Unit!17656 () Unit!17605)

(assert (=> b!1166772 (= lt!399472 Unit!17656)))

(assert (=> b!1166772 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 lt!398609 (+ 0 1)))))

(declare-fun lt!399453 () Unit!17605)

(declare-fun lt!399464 () Unit!17605)

(assert (=> b!1166772 (= lt!399453 lt!399464)))

(declare-fun lt!399459 () Token!3676)

(assert (=> b!1166772 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!399459)))

(declare-fun lt!399484 () List!11543)

(assert (=> b!1166772 (= lt!399464 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!399484 lt!399459))))

(assert (=> b!1166772 (= lt!399459 (apply!2479 lt!398609 (+ 0 1 1)))))

(assert (=> b!1166772 (= lt!399484 (list!4239 lt!398609))))

(declare-fun lt!399469 () Unit!17605)

(declare-fun lt!399455 () Unit!17605)

(assert (=> b!1166772 (= lt!399469 lt!399455)))

(declare-fun lt!399463 () Token!3676)

(assert (=> b!1166772 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!399463)))

(declare-fun lt!399475 () List!11543)

(assert (=> b!1166772 (= lt!399455 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!399475 lt!399463))))

(assert (=> b!1166772 (= lt!399463 (apply!2479 lt!398609 (+ 0 1)))))

(assert (=> b!1166772 (= lt!399475 (list!4239 lt!398609))))

(declare-fun lt!399460 () Unit!17605)

(declare-fun lt!399465 () Unit!17605)

(assert (=> b!1166772 (= lt!399460 lt!399465)))

(declare-fun lt!399462 () List!11543)

(declare-fun lt!399458 () Int)

(assert (=> b!1166772 (= (tail!1686 (drop!482 lt!399462 lt!399458)) (drop!482 lt!399462 (+ lt!399458 1)))))

(assert (=> b!1166772 (= lt!399465 (lemmaDropTail!359 lt!399462 lt!399458))))

(assert (=> b!1166772 (= lt!399458 (+ 0 1 1))))

(assert (=> b!1166772 (= lt!399462 (list!4239 lt!398609))))

(declare-fun lt!399468 () Unit!17605)

(declare-fun lt!399452 () Unit!17605)

(assert (=> b!1166772 (= lt!399468 lt!399452)))

(declare-fun lt!399478 () List!11543)

(assert (=> b!1166772 (= (tail!1686 (drop!482 lt!399478 (+ 0 1))) (drop!482 lt!399478 (+ 0 1 1)))))

(assert (=> b!1166772 (= lt!399452 (lemmaDropTail!359 lt!399478 (+ 0 1)))))

(assert (=> b!1166772 (= lt!399478 (list!4239 lt!398609))))

(declare-fun lt!399474 () Unit!17605)

(declare-fun lt!399457 () Unit!17605)

(assert (=> b!1166772 (= lt!399474 lt!399457)))

(declare-fun lt!399480 () List!11543)

(declare-fun lt!399483 () Int)

(assert (=> b!1166772 (= (head!2102 (drop!482 lt!399480 lt!399483)) (apply!2480 lt!399480 lt!399483))))

(assert (=> b!1166772 (= lt!399457 (lemmaDropApply!371 lt!399480 lt!399483))))

(assert (=> b!1166772 (= lt!399483 (+ 0 1 1))))

(assert (=> b!1166772 (= lt!399480 (list!4239 lt!398609))))

(declare-fun lt!399471 () Unit!17605)

(declare-fun lt!399481 () Unit!17605)

(assert (=> b!1166772 (= lt!399471 lt!399481)))

(declare-fun lt!399456 () List!11543)

(assert (=> b!1166772 (= (head!2102 (drop!482 lt!399456 (+ 0 1))) (apply!2480 lt!399456 (+ 0 1)))))

(assert (=> b!1166772 (= lt!399481 (lemmaDropApply!371 lt!399456 (+ 0 1)))))

(assert (=> b!1166772 (= lt!399456 (list!4239 lt!398609))))

(declare-fun b!1166773 () Bool)

(declare-fun res!526860 () Bool)

(assert (=> b!1166773 (=> (not res!526860) (not e!747797))))

(declare-fun lt!399466 () List!11543)

(assert (=> b!1166773 (= res!526860 (subseq!259 lt!399466 lt!399476))))

(declare-fun b!1166775 () Bool)

(assert (=> b!1166775 (= e!747799 (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 lt!398609 (+ 0 1 1) (rules!9572 thiss!10527)))))

(declare-fun d!333088 () Bool)

(declare-fun lt!399482 () Bool)

(assert (=> d!333088 (= lt!399482 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (dropList!317 lt!398609 (+ 0 1)) (rules!9572 thiss!10527)))))

(declare-fun lt!399461 () Unit!17605)

(declare-fun lt!399473 () Unit!17605)

(assert (=> d!333088 (= lt!399461 lt!399473)))

(assert (=> d!333088 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!399466)))

(assert (=> d!333088 (= lt!399473 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!27 Lexer!1700 (rules!9572 thiss!10527) lt!399476 lt!399466))))

(assert (=> d!333088 e!747797))

(declare-fun res!526861 () Bool)

(assert (=> d!333088 (=> (not res!526861) (not e!747797))))

(assert (=> d!333088 (= res!526861 ((_ is Lexer!1700) Lexer!1700))))

(assert (=> d!333088 (= lt!399466 (dropList!317 lt!398609 (+ 0 1)))))

(assert (=> d!333088 (= lt!399476 (list!4239 lt!398609))))

(declare-fun lt!399470 () Unit!17605)

(declare-fun lt!399477 () Unit!17605)

(assert (=> d!333088 (= lt!399470 lt!399477)))

(assert (=> d!333088 (subseq!259 (drop!482 lt!399479 (+ 0 1)) lt!399479)))

(assert (=> d!333088 (= lt!399477 (lemmaDropSubSeq!27 lt!399479 (+ 0 1)))))

(assert (=> d!333088 e!747798))

(declare-fun res!526863 () Bool)

(assert (=> d!333088 (=> (not res!526863) (not e!747798))))

(assert (=> d!333088 (= res!526863 (>= (+ 0 1) 0))))

(assert (=> d!333088 (= lt!399479 (list!4239 lt!398609))))

(assert (=> d!333088 (= lt!399482 e!747796)))

(declare-fun res!526857 () Bool)

(assert (=> d!333088 (=> res!526857 e!747796)))

(assert (=> d!333088 (= res!526857 (not (< (+ 0 1) (- (size!9067 lt!398609) 1))))))

(assert (=> d!333088 e!747800))

(declare-fun res!526856 () Bool)

(assert (=> d!333088 (=> (not res!526856) (not e!747800))))

(assert (=> d!333088 (= res!526856 (>= (+ 0 1) 0))))

(assert (=> d!333088 (= (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 lt!398609 (+ 0 1) (rules!9572 thiss!10527)) lt!399482)))

(declare-fun b!1166774 () Bool)

(declare-fun res!526858 () Bool)

(assert (=> b!1166774 (=> (not res!526858) (not e!747797))))

(assert (=> b!1166774 (= res!526858 (rulesInvariant!1576 Lexer!1700 (rules!9572 thiss!10527)))))

(assert (= (and d!333088 res!526856) b!1166771))

(assert (= (and d!333088 (not res!526857)) b!1166772))

(assert (= (and b!1166772 res!526862) b!1166775))

(assert (= (and d!333088 res!526863) b!1166769))

(assert (= (and d!333088 res!526861) b!1166770))

(assert (= (and b!1166770 res!526859) b!1166774))

(assert (= (and b!1166774 res!526858) b!1166773))

(assert (= (and b!1166773 res!526860) b!1166768))

(declare-fun m!1337303 () Bool)

(assert (=> b!1166772 m!1337303))

(declare-fun m!1337305 () Bool)

(assert (=> b!1166772 m!1337305))

(declare-fun m!1337309 () Bool)

(assert (=> b!1166772 m!1337309))

(declare-fun m!1337311 () Bool)

(assert (=> b!1166772 m!1337311))

(declare-fun m!1337315 () Bool)

(assert (=> b!1166772 m!1337315))

(declare-fun m!1337317 () Bool)

(assert (=> b!1166772 m!1337317))

(declare-fun m!1337321 () Bool)

(assert (=> b!1166772 m!1337321))

(declare-fun m!1337323 () Bool)

(assert (=> b!1166772 m!1337323))

(declare-fun m!1337327 () Bool)

(assert (=> b!1166772 m!1337327))

(declare-fun m!1337329 () Bool)

(assert (=> b!1166772 m!1337329))

(declare-fun m!1337331 () Bool)

(assert (=> b!1166772 m!1337331))

(declare-fun m!1337335 () Bool)

(assert (=> b!1166772 m!1337335))

(declare-fun m!1337339 () Bool)

(assert (=> b!1166772 m!1337339))

(declare-fun m!1337341 () Bool)

(assert (=> b!1166772 m!1337341))

(assert (=> b!1166772 m!1336073))

(assert (=> b!1166772 m!1336085))

(assert (=> b!1166772 m!1337331))

(declare-fun m!1337347 () Bool)

(assert (=> b!1166772 m!1337347))

(assert (=> b!1166772 m!1336073))

(assert (=> b!1166772 m!1336073))

(declare-fun m!1337351 () Bool)

(assert (=> b!1166772 m!1337351))

(declare-fun m!1337355 () Bool)

(assert (=> b!1166772 m!1337355))

(declare-fun m!1337357 () Bool)

(assert (=> b!1166772 m!1337357))

(declare-fun m!1337359 () Bool)

(assert (=> b!1166772 m!1337359))

(assert (=> b!1166772 m!1337317))

(declare-fun m!1337361 () Bool)

(assert (=> b!1166772 m!1337361))

(declare-fun m!1337363 () Bool)

(assert (=> b!1166772 m!1337363))

(assert (=> b!1166772 m!1337351))

(declare-fun m!1337365 () Bool)

(assert (=> b!1166772 m!1337365))

(declare-fun m!1337367 () Bool)

(assert (=> b!1166772 m!1337367))

(declare-fun m!1337369 () Bool)

(assert (=> b!1166772 m!1337369))

(assert (=> b!1166772 m!1337351))

(assert (=> b!1166772 m!1337357))

(declare-fun m!1337371 () Bool)

(assert (=> b!1166772 m!1337371))

(assert (=> b!1166772 m!1335361))

(assert (=> b!1166772 m!1337351))

(assert (=> b!1166772 m!1337327))

(assert (=> b!1166772 m!1337309))

(declare-fun m!1337373 () Bool)

(assert (=> b!1166775 m!1337373))

(assert (=> b!1166774 m!1335397))

(assert (=> b!1166770 m!1335511))

(declare-fun m!1337375 () Bool)

(assert (=> b!1166773 m!1337375))

(declare-fun m!1337377 () Bool)

(assert (=> b!1166769 m!1337377))

(declare-fun m!1337379 () Bool)

(assert (=> d!333088 m!1337379))

(declare-fun m!1337381 () Bool)

(assert (=> d!333088 m!1337381))

(assert (=> d!333088 m!1336103))

(assert (=> d!333088 m!1337379))

(declare-fun m!1337383 () Bool)

(assert (=> d!333088 m!1337383))

(declare-fun m!1337385 () Bool)

(assert (=> d!333088 m!1337385))

(declare-fun m!1337387 () Bool)

(assert (=> d!333088 m!1337387))

(assert (=> d!333088 m!1335361))

(declare-fun m!1337389 () Bool)

(assert (=> d!333088 m!1337389))

(declare-fun m!1337391 () Bool)

(assert (=> d!333088 m!1337391))

(assert (=> d!333088 m!1337385))

(declare-fun m!1337393 () Bool)

(assert (=> b!1166768 m!1337393))

(assert (=> b!1166771 m!1336103))

(assert (=> b!1166170 d!333088))

(declare-fun d!333092 () Bool)

(declare-fun lt!399496 () Bool)

(declare-fun e!747802 () Bool)

(assert (=> d!333092 (= lt!399496 e!747802)))

(declare-fun res!526864 () Bool)

(assert (=> d!333092 (=> (not res!526864) (not e!747802))))

(assert (=> d!333092 (= res!526864 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398620))))))) (list!4239 (singletonSeq!668 (h!16920 (t!110333 lt!398620))))))))

(declare-fun e!747801 () Bool)

(assert (=> d!333092 (= lt!399496 e!747801)))

(declare-fun res!526865 () Bool)

(assert (=> d!333092 (=> (not res!526865) (not e!747801))))

(declare-fun lt!399495 () tuple2!12022)

(assert (=> d!333092 (= res!526865 (= (size!9067 (_1!6858 lt!399495)) 1))))

(assert (=> d!333092 (= lt!399495 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398620))))))))

(assert (=> d!333092 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333092 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398620))) lt!399496)))

(declare-fun b!1166776 () Bool)

(declare-fun res!526866 () Bool)

(assert (=> b!1166776 (=> (not res!526866) (not e!747801))))

(assert (=> b!1166776 (= res!526866 (= (apply!2479 (_1!6858 lt!399495) 0) (h!16920 (t!110333 lt!398620))))))

(declare-fun b!1166777 () Bool)

(assert (=> b!1166777 (= e!747801 (isEmpty!7005 (_2!6858 lt!399495)))))

(declare-fun b!1166778 () Bool)

(assert (=> b!1166778 (= e!747802 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398620))))))))))

(assert (= (and d!333092 res!526865) b!1166776))

(assert (= (and b!1166776 res!526866) b!1166777))

(assert (= (and d!333092 res!526864) b!1166778))

(assert (=> d!333092 m!1335511))

(declare-fun m!1337395 () Bool)

(assert (=> d!333092 m!1337395))

(declare-fun m!1337397 () Bool)

(assert (=> d!333092 m!1337397))

(declare-fun m!1337399 () Bool)

(assert (=> d!333092 m!1337399))

(declare-fun m!1337401 () Bool)

(assert (=> d!333092 m!1337401))

(declare-fun m!1337403 () Bool)

(assert (=> d!333092 m!1337403))

(declare-fun m!1337405 () Bool)

(assert (=> d!333092 m!1337405))

(assert (=> d!333092 m!1337401))

(assert (=> d!333092 m!1337395))

(assert (=> d!333092 m!1337401))

(declare-fun m!1337407 () Bool)

(assert (=> b!1166776 m!1337407))

(declare-fun m!1337409 () Bool)

(assert (=> b!1166777 m!1337409))

(assert (=> b!1166778 m!1337401))

(assert (=> b!1166778 m!1337401))

(assert (=> b!1166778 m!1337395))

(assert (=> b!1166778 m!1337395))

(assert (=> b!1166778 m!1337397))

(declare-fun m!1337411 () Bool)

(assert (=> b!1166778 m!1337411))

(assert (=> b!1166042 d!333092))

(assert (=> d!332832 d!332854))

(declare-fun d!333094 () Bool)

(assert (=> d!333094 (forall!3024 lt!398606 lambda!47859)))

(assert (=> d!333094 true))

(declare-fun _$37!309 () Unit!17605)

(assert (=> d!333094 (= (choose!7522 lt!398606 lt!398622 lambda!47859) _$37!309)))

(declare-fun bs!284516 () Bool)

(assert (= bs!284516 d!333094))

(assert (=> bs!284516 m!1335371))

(assert (=> d!332832 d!333094))

(assert (=> d!332832 d!332860))

(declare-fun d!333096 () Bool)

(declare-fun lt!399499 () Token!3676)

(assert (=> d!333096 (= lt!399499 (apply!2480 (list!4239 (_1!6858 lt!399227)) 0))))

(assert (=> d!333096 (= lt!399499 (apply!2483 (c!194629 (_1!6858 lt!399227)) 0))))

(declare-fun e!747803 () Bool)

(assert (=> d!333096 e!747803))

(declare-fun res!526867 () Bool)

(assert (=> d!333096 (=> (not res!526867) (not e!747803))))

(assert (=> d!333096 (= res!526867 (<= 0 0))))

(assert (=> d!333096 (= (apply!2479 (_1!6858 lt!399227) 0) lt!399499)))

(declare-fun b!1166779 () Bool)

(assert (=> b!1166779 (= e!747803 (< 0 (size!9067 (_1!6858 lt!399227))))))

(assert (= (and d!333096 res!526867) b!1166779))

(declare-fun m!1337413 () Bool)

(assert (=> d!333096 m!1337413))

(assert (=> d!333096 m!1337413))

(declare-fun m!1337415 () Bool)

(assert (=> d!333096 m!1337415))

(declare-fun m!1337417 () Bool)

(assert (=> d!333096 m!1337417))

(assert (=> b!1166779 m!1336553))

(assert (=> b!1166441 d!333096))

(assert (=> d!332844 d!332802))

(declare-fun d!333098 () Bool)

(assert (=> d!333098 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622)))))) (list!4242 (c!194629 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622))))))))))

(declare-fun bs!284517 () Bool)

(assert (= bs!284517 d!333098))

(declare-fun m!1337419 () Bool)

(assert (=> bs!284517 m!1337419))

(assert (=> d!332800 d!333098))

(assert (=> d!332800 d!333086))

(declare-fun d!333100 () Bool)

(declare-fun lt!399501 () Int)

(assert (=> d!333100 (= lt!399501 (size!9071 (list!4239 (_1!6858 lt!398985))))))

(assert (=> d!333100 (= lt!399501 (size!9075 (c!194629 (_1!6858 lt!398985))))))

(assert (=> d!333100 (= (size!9067 (_1!6858 lt!398985)) lt!399501)))

(declare-fun bs!284519 () Bool)

(assert (= bs!284519 d!333100))

(declare-fun m!1337427 () Bool)

(assert (=> bs!284519 m!1337427))

(assert (=> bs!284519 m!1337427))

(declare-fun m!1337429 () Bool)

(assert (=> bs!284519 m!1337429))

(declare-fun m!1337431 () Bool)

(assert (=> bs!284519 m!1337431))

(assert (=> d!332800 d!333100))

(declare-fun b!1166858 () Bool)

(declare-fun e!747862 () Bool)

(declare-fun lt!399534 () tuple2!12022)

(declare-fun isEmpty!7010 (BalanceConc!7576) Bool)

(assert (=> b!1166858 (= e!747862 (not (isEmpty!7010 (_1!6858 lt!399534))))))

(declare-fun e!747860 () Bool)

(declare-fun b!1166859 () Bool)

(declare-datatypes ((tuple2!12026 0))(
  ( (tuple2!12027 (_1!6860 List!11543) (_2!6860 List!11542)) )
))
(declare-fun lexList!414 (LexerInterface!1702 List!11544 List!11542) tuple2!12026)

(assert (=> b!1166859 (= e!747860 (= (list!4243 (_2!6858 lt!399534)) (_2!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622))))))))))

(declare-fun b!1166860 () Bool)

(declare-fun e!747861 () Bool)

(assert (=> b!1166860 (= e!747861 (= (_2!6858 lt!399534) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622)))))))

(declare-fun d!333104 () Bool)

(assert (=> d!333104 e!747860))

(declare-fun res!526917 () Bool)

(assert (=> d!333104 (=> (not res!526917) (not e!747860))))

(assert (=> d!333104 (= res!526917 e!747861)))

(declare-fun c!194774 () Bool)

(assert (=> d!333104 (= c!194774 (> (size!9067 (_1!6858 lt!399534)) 0))))

(declare-fun lexTailRecV2!321 (LexerInterface!1702 List!11544 BalanceConc!7574 BalanceConc!7574 BalanceConc!7574 BalanceConc!7576) tuple2!12022)

(assert (=> d!333104 (= lt!399534 (lexTailRecV2!321 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622))) (BalanceConc!7575 Empty!3776) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622))) (BalanceConc!7577 Empty!3777)))))

(assert (=> d!333104 (= (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622)))) lt!399534)))

(declare-fun b!1166861 () Bool)

(assert (=> b!1166861 (= e!747861 e!747862)))

(declare-fun res!526919 () Bool)

(assert (=> b!1166861 (= res!526919 (< (size!9066 (_2!6858 lt!399534)) (size!9066 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622))))))))

(assert (=> b!1166861 (=> (not res!526919) (not e!747862))))

(declare-fun b!1166862 () Bool)

(declare-fun res!526918 () Bool)

(assert (=> b!1166862 (=> (not res!526918) (not e!747860))))

(assert (=> b!1166862 (= res!526918 (= (list!4239 (_1!6858 lt!399534)) (_1!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622))))))))))

(assert (= (and d!333104 c!194774) b!1166861))

(assert (= (and d!333104 (not c!194774)) b!1166860))

(assert (= (and b!1166861 res!526919) b!1166858))

(assert (= (and d!333104 res!526917) b!1166862))

(assert (= (and b!1166862 res!526918) b!1166859))

(declare-fun m!1337599 () Bool)

(assert (=> b!1166861 m!1337599))

(assert (=> b!1166861 m!1336021))

(declare-fun m!1337601 () Bool)

(assert (=> b!1166861 m!1337601))

(declare-fun m!1337603 () Bool)

(assert (=> b!1166859 m!1337603))

(assert (=> b!1166859 m!1336021))

(declare-fun m!1337605 () Bool)

(assert (=> b!1166859 m!1337605))

(assert (=> b!1166859 m!1337605))

(declare-fun m!1337607 () Bool)

(assert (=> b!1166859 m!1337607))

(declare-fun m!1337609 () Bool)

(assert (=> b!1166862 m!1337609))

(assert (=> b!1166862 m!1336021))

(assert (=> b!1166862 m!1337605))

(assert (=> b!1166862 m!1337605))

(assert (=> b!1166862 m!1337607))

(declare-fun m!1337611 () Bool)

(assert (=> b!1166858 m!1337611))

(declare-fun m!1337613 () Bool)

(assert (=> d!333104 m!1337613))

(assert (=> d!333104 m!1336021))

(assert (=> d!333104 m!1336021))

(declare-fun m!1337615 () Bool)

(assert (=> d!333104 m!1337615))

(assert (=> d!332800 d!333104))

(declare-fun d!333158 () Bool)

(declare-fun lt!399537 () BalanceConc!7574)

(declare-fun printList!514 (LexerInterface!1702 List!11543) List!11542)

(assert (=> d!333158 (= (list!4243 lt!399537) (printList!514 Lexer!1700 (list!4239 (singletonSeq!668 (h!16920 lt!398622)))))))

(declare-fun printTailRec!496 (LexerInterface!1702 BalanceConc!7576 Int BalanceConc!7574) BalanceConc!7574)

(assert (=> d!333158 (= lt!399537 (printTailRec!496 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622)) 0 (BalanceConc!7575 Empty!3776)))))

(assert (=> d!333158 (= (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622))) lt!399537)))

(declare-fun bs!284580 () Bool)

(assert (= bs!284580 d!333158))

(declare-fun m!1337617 () Bool)

(assert (=> bs!284580 m!1337617))

(assert (=> bs!284580 m!1336027))

(assert (=> bs!284580 m!1336029))

(assert (=> bs!284580 m!1336029))

(declare-fun m!1337619 () Bool)

(assert (=> bs!284580 m!1337619))

(assert (=> bs!284580 m!1336027))

(declare-fun m!1337621 () Bool)

(assert (=> bs!284580 m!1337621))

(assert (=> d!332800 d!333158))

(declare-fun d!333160 () Bool)

(assert (=> d!333160 (= (list!4239 (singletonSeq!668 (h!16920 lt!398622))) (list!4242 (c!194629 (singletonSeq!668 (h!16920 lt!398622)))))))

(declare-fun bs!284581 () Bool)

(assert (= bs!284581 d!333160))

(declare-fun m!1337623 () Bool)

(assert (=> bs!284581 m!1337623))

(assert (=> d!332800 d!333160))

(declare-fun d!333162 () Bool)

(declare-fun e!747865 () Bool)

(assert (=> d!333162 e!747865))

(declare-fun res!526922 () Bool)

(assert (=> d!333162 (=> (not res!526922) (not e!747865))))

(declare-fun lt!399540 () BalanceConc!7576)

(assert (=> d!333162 (= res!526922 (= (list!4239 lt!399540) (Cons!11519 (h!16920 lt!398622) Nil!11519)))))

(declare-fun singleton!300 (Token!3676) BalanceConc!7576)

(assert (=> d!333162 (= lt!399540 (singleton!300 (h!16920 lt!398622)))))

(assert (=> d!333162 (= (singletonSeq!668 (h!16920 lt!398622)) lt!399540)))

(declare-fun b!1166865 () Bool)

(assert (=> b!1166865 (= e!747865 (isBalanced!1060 (c!194629 lt!399540)))))

(assert (= (and d!333162 res!526922) b!1166865))

(declare-fun m!1337625 () Bool)

(assert (=> d!333162 m!1337625))

(declare-fun m!1337627 () Bool)

(assert (=> d!333162 m!1337627))

(declare-fun m!1337629 () Bool)

(assert (=> b!1166865 m!1337629))

(assert (=> d!332800 d!333162))

(assert (=> b!1165963 d!332924))

(declare-fun d!333164 () Bool)

(declare-fun res!526923 () Bool)

(declare-fun e!747866 () Bool)

(assert (=> d!333164 (=> res!526923 e!747866)))

(assert (=> d!333164 (= res!526923 (or (not ((_ is Cons!11519) (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))))) (not ((_ is Cons!11519) (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))))))))))

(assert (=> d!333164 (= (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))) (rules!9572 thiss!10527)) e!747866)))

(declare-fun b!1166866 () Bool)

(declare-fun e!747867 () Bool)

(assert (=> b!1166866 (= e!747866 e!747867)))

(declare-fun res!526924 () Bool)

(assert (=> b!1166866 (=> (not res!526924) (not e!747867))))

(assert (=> b!1166866 (= res!526924 (separableTokensPredicate!130 Lexer!1700 (h!16920 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622)))) (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))))) (rules!9572 thiss!10527)))))

(declare-fun lt!399545 () Unit!17605)

(declare-fun Unit!17660 () Unit!17605)

(assert (=> b!1166866 (= lt!399545 Unit!17660)))

(assert (=> b!1166866 (> (size!9066 (charsOf!1068 (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))))))) 0)))

(declare-fun lt!399543 () Unit!17605)

(declare-fun Unit!17661 () Unit!17605)

(assert (=> b!1166866 (= lt!399543 Unit!17661)))

(assert (=> b!1166866 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))))))))

(declare-fun lt!399547 () Unit!17605)

(declare-fun Unit!17662 () Unit!17605)

(assert (=> b!1166866 (= lt!399547 Unit!17662)))

(assert (=> b!1166866 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622)))))))

(declare-fun lt!399546 () Unit!17605)

(declare-fun lt!399542 () Unit!17605)

(assert (=> b!1166866 (= lt!399546 lt!399542)))

(assert (=> b!1166866 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))))))))

(assert (=> b!1166866 (= lt!399542 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))) (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622)))))))))

(declare-fun lt!399541 () Unit!17605)

(declare-fun lt!399544 () Unit!17605)

(assert (=> b!1166866 (= lt!399541 lt!399544)))

(assert (=> b!1166866 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622)))))))

(assert (=> b!1166866 (= lt!399544 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))) (h!16920 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))))))))

(declare-fun b!1166867 () Bool)

(assert (=> b!1166867 (= e!747867 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (Cons!11519 (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622))))) (t!110333 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398622)))))) (rules!9572 thiss!10527)))))

(assert (= (and d!333164 (not res!526923)) b!1166866))

(assert (= (and b!1166866 res!526924) b!1166867))

(declare-fun m!1337631 () Bool)

(assert (=> b!1166866 m!1337631))

(declare-fun m!1337633 () Bool)

(assert (=> b!1166866 m!1337633))

(declare-fun m!1337635 () Bool)

(assert (=> b!1166866 m!1337635))

(declare-fun m!1337637 () Bool)

(assert (=> b!1166866 m!1337637))

(declare-fun m!1337639 () Bool)

(assert (=> b!1166866 m!1337639))

(assert (=> b!1166866 m!1337633))

(declare-fun m!1337641 () Bool)

(assert (=> b!1166866 m!1337641))

(declare-fun m!1337643 () Bool)

(assert (=> b!1166866 m!1337643))

(declare-fun m!1337645 () Bool)

(assert (=> b!1166867 m!1337645))

(assert (=> b!1166490 d!333164))

(declare-fun d!333166 () Bool)

(declare-fun lt!399548 () Token!3676)

(assert (=> d!333166 (= lt!399548 (apply!2480 (list!4239 (_1!6858 lt!398985)) 0))))

(assert (=> d!333166 (= lt!399548 (apply!2483 (c!194629 (_1!6858 lt!398985)) 0))))

(declare-fun e!747868 () Bool)

(assert (=> d!333166 e!747868))

(declare-fun res!526925 () Bool)

(assert (=> d!333166 (=> (not res!526925) (not e!747868))))

(assert (=> d!333166 (= res!526925 (<= 0 0))))

(assert (=> d!333166 (= (apply!2479 (_1!6858 lt!398985) 0) lt!399548)))

(declare-fun b!1166868 () Bool)

(assert (=> b!1166868 (= e!747868 (< 0 (size!9067 (_1!6858 lt!398985))))))

(assert (= (and d!333166 res!526925) b!1166868))

(assert (=> d!333166 m!1337427))

(assert (=> d!333166 m!1337427))

(declare-fun m!1337647 () Bool)

(assert (=> d!333166 m!1337647))

(declare-fun m!1337649 () Bool)

(assert (=> d!333166 m!1337649))

(assert (=> b!1166868 m!1336025))

(assert (=> b!1166160 d!333166))

(declare-fun d!333168 () Bool)

(declare-fun c!194777 () Bool)

(assert (=> d!333168 (= c!194777 ((_ is Nil!11519) lt!399207))))

(declare-fun e!747871 () (InoxSet Token!3676))

(assert (=> d!333168 (= (content!1608 lt!399207) e!747871)))

(declare-fun b!1166873 () Bool)

(assert (=> b!1166873 (= e!747871 ((as const (Array Token!3676 Bool)) false))))

(declare-fun b!1166874 () Bool)

(assert (=> b!1166874 (= e!747871 ((_ map or) (store ((as const (Array Token!3676 Bool)) false) (h!16920 lt!399207) true) (content!1608 (t!110333 lt!399207))))))

(assert (= (and d!333168 c!194777) b!1166873))

(assert (= (and d!333168 (not c!194777)) b!1166874))

(declare-fun m!1337651 () Bool)

(assert (=> b!1166874 m!1337651))

(declare-fun m!1337653 () Bool)

(assert (=> b!1166874 m!1337653))

(assert (=> d!332852 d!333168))

(declare-fun d!333170 () Bool)

(declare-fun c!194778 () Bool)

(assert (=> d!333170 (= c!194778 ((_ is Nil!11519) lt!398620))))

(declare-fun e!747872 () (InoxSet Token!3676))

(assert (=> d!333170 (= (content!1608 lt!398620) e!747872)))

(declare-fun b!1166875 () Bool)

(assert (=> b!1166875 (= e!747872 ((as const (Array Token!3676 Bool)) false))))

(declare-fun b!1166876 () Bool)

(assert (=> b!1166876 (= e!747872 ((_ map or) (store ((as const (Array Token!3676 Bool)) false) (h!16920 lt!398620) true) (content!1608 (t!110333 lt!398620))))))

(assert (= (and d!333170 c!194778) b!1166875))

(assert (= (and d!333170 (not c!194778)) b!1166876))

(declare-fun m!1337655 () Bool)

(assert (=> b!1166876 m!1337655))

(declare-fun m!1337657 () Bool)

(assert (=> b!1166876 m!1337657))

(assert (=> d!332852 d!333170))

(declare-fun d!333172 () Bool)

(declare-fun lt!399551 () Int)

(assert (=> d!333172 (>= lt!399551 0)))

(declare-fun e!747875 () Int)

(assert (=> d!333172 (= lt!399551 e!747875)))

(declare-fun c!194781 () Bool)

(assert (=> d!333172 (= c!194781 ((_ is Nil!11519) lt!398620))))

(assert (=> d!333172 (= (size!9071 lt!398620) lt!399551)))

(declare-fun b!1166881 () Bool)

(assert (=> b!1166881 (= e!747875 0)))

(declare-fun b!1166882 () Bool)

(assert (=> b!1166882 (= e!747875 (+ 1 (size!9071 (t!110333 lt!398620))))))

(assert (= (and d!333172 c!194781) b!1166881))

(assert (= (and d!333172 (not c!194781)) b!1166882))

(declare-fun m!1337659 () Bool)

(assert (=> b!1166882 m!1337659))

(assert (=> b!1166462 d!333172))

(declare-fun b!1166883 () Bool)

(declare-fun e!747877 () Bool)

(declare-fun lt!399576 () List!11543)

(assert (=> b!1166883 (= e!747877 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!399576))))

(declare-fun b!1166884 () Bool)

(declare-fun e!747878 () Bool)

(declare-fun lt!399579 () List!11543)

(assert (=> b!1166884 (= e!747878 (<= (+ 0 1) (size!9071 lt!399579)))))

(declare-fun b!1166885 () Bool)

(declare-fun res!526929 () Bool)

(assert (=> b!1166885 (=> (not res!526929) (not e!747877))))

(assert (=> b!1166885 (= res!526929 (not (isEmpty!7004 (rules!9572 thiss!10527))))))

(declare-fun b!1166886 () Bool)

(declare-fun e!747880 () Bool)

(assert (=> b!1166886 (= e!747880 (<= (+ 0 1) (size!9067 (tokens!1624 thiss!10527))))))

(declare-fun b!1166887 () Bool)

(declare-fun e!747876 () Bool)

(declare-fun e!747879 () Bool)

(assert (=> b!1166887 (= e!747876 e!747879)))

(declare-fun res!526932 () Bool)

(assert (=> b!1166887 (=> (not res!526932) (not e!747879))))

(assert (=> b!1166887 (= res!526932 (separableTokensPredicate!130 Lexer!1700 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)) (apply!2479 (tokens!1624 thiss!10527) (+ 0 1 1)) (rules!9572 thiss!10527)))))

(declare-fun lt!399567 () Unit!17605)

(declare-fun Unit!17663 () Unit!17605)

(assert (=> b!1166887 (= lt!399567 Unit!17663)))

(assert (=> b!1166887 (> (size!9066 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1 1)))) 0)))

(declare-fun lt!399554 () Unit!17605)

(declare-fun Unit!17664 () Unit!17605)

(assert (=> b!1166887 (= lt!399554 Unit!17664)))

(assert (=> b!1166887 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) (+ 0 1 1)))))

(declare-fun lt!399572 () Unit!17605)

(declare-fun Unit!17665 () Unit!17605)

(assert (=> b!1166887 (= lt!399572 Unit!17665)))

(assert (=> b!1166887 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)))))

(declare-fun lt!399553 () Unit!17605)

(declare-fun lt!399564 () Unit!17605)

(assert (=> b!1166887 (= lt!399553 lt!399564)))

(declare-fun lt!399559 () Token!3676)

(assert (=> b!1166887 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!399559)))

(declare-fun lt!399584 () List!11543)

(assert (=> b!1166887 (= lt!399564 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!399584 lt!399559))))

(assert (=> b!1166887 (= lt!399559 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1 1)))))

(assert (=> b!1166887 (= lt!399584 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399569 () Unit!17605)

(declare-fun lt!399555 () Unit!17605)

(assert (=> b!1166887 (= lt!399569 lt!399555)))

(declare-fun lt!399563 () Token!3676)

(assert (=> b!1166887 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!399563)))

(declare-fun lt!399575 () List!11543)

(assert (=> b!1166887 (= lt!399555 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!399575 lt!399563))))

(assert (=> b!1166887 (= lt!399563 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)))))

(assert (=> b!1166887 (= lt!399575 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399560 () Unit!17605)

(declare-fun lt!399565 () Unit!17605)

(assert (=> b!1166887 (= lt!399560 lt!399565)))

(declare-fun lt!399562 () List!11543)

(declare-fun lt!399558 () Int)

(assert (=> b!1166887 (= (tail!1686 (drop!482 lt!399562 lt!399558)) (drop!482 lt!399562 (+ lt!399558 1)))))

(assert (=> b!1166887 (= lt!399565 (lemmaDropTail!359 lt!399562 lt!399558))))

(assert (=> b!1166887 (= lt!399558 (+ 0 1 1))))

(assert (=> b!1166887 (= lt!399562 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399568 () Unit!17605)

(declare-fun lt!399552 () Unit!17605)

(assert (=> b!1166887 (= lt!399568 lt!399552)))

(declare-fun lt!399578 () List!11543)

(assert (=> b!1166887 (= (tail!1686 (drop!482 lt!399578 (+ 0 1))) (drop!482 lt!399578 (+ 0 1 1)))))

(assert (=> b!1166887 (= lt!399552 (lemmaDropTail!359 lt!399578 (+ 0 1)))))

(assert (=> b!1166887 (= lt!399578 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399574 () Unit!17605)

(declare-fun lt!399557 () Unit!17605)

(assert (=> b!1166887 (= lt!399574 lt!399557)))

(declare-fun lt!399580 () List!11543)

(declare-fun lt!399583 () Int)

(assert (=> b!1166887 (= (head!2102 (drop!482 lt!399580 lt!399583)) (apply!2480 lt!399580 lt!399583))))

(assert (=> b!1166887 (= lt!399557 (lemmaDropApply!371 lt!399580 lt!399583))))

(assert (=> b!1166887 (= lt!399583 (+ 0 1 1))))

(assert (=> b!1166887 (= lt!399580 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399571 () Unit!17605)

(declare-fun lt!399581 () Unit!17605)

(assert (=> b!1166887 (= lt!399571 lt!399581)))

(declare-fun lt!399556 () List!11543)

(assert (=> b!1166887 (= (head!2102 (drop!482 lt!399556 (+ 0 1))) (apply!2480 lt!399556 (+ 0 1)))))

(assert (=> b!1166887 (= lt!399581 (lemmaDropApply!371 lt!399556 (+ 0 1)))))

(assert (=> b!1166887 (= lt!399556 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun b!1166888 () Bool)

(declare-fun res!526930 () Bool)

(assert (=> b!1166888 (=> (not res!526930) (not e!747877))))

(declare-fun lt!399566 () List!11543)

(assert (=> b!1166888 (= res!526930 (subseq!259 lt!399566 lt!399576))))

(declare-fun b!1166890 () Bool)

(assert (=> b!1166890 (= e!747879 (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 (tokens!1624 thiss!10527) (+ 0 1 1) (rules!9572 thiss!10527)))))

(declare-fun d!333174 () Bool)

(declare-fun lt!399582 () Bool)

(assert (=> d!333174 (= lt!399582 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (dropList!317 (tokens!1624 thiss!10527) (+ 0 1)) (rules!9572 thiss!10527)))))

(declare-fun lt!399561 () Unit!17605)

(declare-fun lt!399573 () Unit!17605)

(assert (=> d!333174 (= lt!399561 lt!399573)))

(assert (=> d!333174 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!399566)))

(assert (=> d!333174 (= lt!399573 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!27 Lexer!1700 (rules!9572 thiss!10527) lt!399576 lt!399566))))

(assert (=> d!333174 e!747877))

(declare-fun res!526931 () Bool)

(assert (=> d!333174 (=> (not res!526931) (not e!747877))))

(assert (=> d!333174 (= res!526931 ((_ is Lexer!1700) Lexer!1700))))

(assert (=> d!333174 (= lt!399566 (dropList!317 (tokens!1624 thiss!10527) (+ 0 1)))))

(assert (=> d!333174 (= lt!399576 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399570 () Unit!17605)

(declare-fun lt!399577 () Unit!17605)

(assert (=> d!333174 (= lt!399570 lt!399577)))

(assert (=> d!333174 (subseq!259 (drop!482 lt!399579 (+ 0 1)) lt!399579)))

(assert (=> d!333174 (= lt!399577 (lemmaDropSubSeq!27 lt!399579 (+ 0 1)))))

(assert (=> d!333174 e!747878))

(declare-fun res!526933 () Bool)

(assert (=> d!333174 (=> (not res!526933) (not e!747878))))

(assert (=> d!333174 (= res!526933 (>= (+ 0 1) 0))))

(assert (=> d!333174 (= lt!399579 (list!4239 (tokens!1624 thiss!10527)))))

(assert (=> d!333174 (= lt!399582 e!747876)))

(declare-fun res!526927 () Bool)

(assert (=> d!333174 (=> res!526927 e!747876)))

(assert (=> d!333174 (= res!526927 (not (< (+ 0 1) (- (size!9067 (tokens!1624 thiss!10527)) 1))))))

(assert (=> d!333174 e!747880))

(declare-fun res!526926 () Bool)

(assert (=> d!333174 (=> (not res!526926) (not e!747880))))

(assert (=> d!333174 (= res!526926 (>= (+ 0 1) 0))))

(assert (=> d!333174 (= (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 (tokens!1624 thiss!10527) (+ 0 1) (rules!9572 thiss!10527)) lt!399582)))

(declare-fun b!1166889 () Bool)

(declare-fun res!526928 () Bool)

(assert (=> b!1166889 (=> (not res!526928) (not e!747877))))

(assert (=> b!1166889 (= res!526928 (rulesInvariant!1576 Lexer!1700 (rules!9572 thiss!10527)))))

(assert (= (and d!333174 res!526926) b!1166886))

(assert (= (and d!333174 (not res!526927)) b!1166887))

(assert (= (and b!1166887 res!526932) b!1166890))

(assert (= (and d!333174 res!526933) b!1166884))

(assert (= (and d!333174 res!526931) b!1166885))

(assert (= (and b!1166885 res!526929) b!1166889))

(assert (= (and b!1166889 res!526928) b!1166888))

(assert (= (and b!1166888 res!526930) b!1166883))

(declare-fun m!1337661 () Bool)

(assert (=> b!1166887 m!1337661))

(declare-fun m!1337663 () Bool)

(assert (=> b!1166887 m!1337663))

(declare-fun m!1337665 () Bool)

(assert (=> b!1166887 m!1337665))

(declare-fun m!1337667 () Bool)

(assert (=> b!1166887 m!1337667))

(declare-fun m!1337669 () Bool)

(assert (=> b!1166887 m!1337669))

(declare-fun m!1337671 () Bool)

(assert (=> b!1166887 m!1337671))

(declare-fun m!1337673 () Bool)

(assert (=> b!1166887 m!1337673))

(declare-fun m!1337675 () Bool)

(assert (=> b!1166887 m!1337675))

(declare-fun m!1337677 () Bool)

(assert (=> b!1166887 m!1337677))

(declare-fun m!1337679 () Bool)

(assert (=> b!1166887 m!1337679))

(declare-fun m!1337681 () Bool)

(assert (=> b!1166887 m!1337681))

(declare-fun m!1337683 () Bool)

(assert (=> b!1166887 m!1337683))

(declare-fun m!1337685 () Bool)

(assert (=> b!1166887 m!1337685))

(declare-fun m!1337687 () Bool)

(assert (=> b!1166887 m!1337687))

(assert (=> b!1166887 m!1335645))

(assert (=> b!1166887 m!1335657))

(assert (=> b!1166887 m!1337681))

(declare-fun m!1337689 () Bool)

(assert (=> b!1166887 m!1337689))

(assert (=> b!1166887 m!1335645))

(assert (=> b!1166887 m!1335645))

(declare-fun m!1337691 () Bool)

(assert (=> b!1166887 m!1337691))

(declare-fun m!1337693 () Bool)

(assert (=> b!1166887 m!1337693))

(declare-fun m!1337695 () Bool)

(assert (=> b!1166887 m!1337695))

(declare-fun m!1337697 () Bool)

(assert (=> b!1166887 m!1337697))

(assert (=> b!1166887 m!1337671))

(declare-fun m!1337699 () Bool)

(assert (=> b!1166887 m!1337699))

(declare-fun m!1337701 () Bool)

(assert (=> b!1166887 m!1337701))

(assert (=> b!1166887 m!1337691))

(declare-fun m!1337703 () Bool)

(assert (=> b!1166887 m!1337703))

(declare-fun m!1337705 () Bool)

(assert (=> b!1166887 m!1337705))

(declare-fun m!1337707 () Bool)

(assert (=> b!1166887 m!1337707))

(assert (=> b!1166887 m!1337691))

(assert (=> b!1166887 m!1337695))

(declare-fun m!1337709 () Bool)

(assert (=> b!1166887 m!1337709))

(assert (=> b!1166887 m!1335409))

(assert (=> b!1166887 m!1337691))

(assert (=> b!1166887 m!1337677))

(assert (=> b!1166887 m!1337665))

(declare-fun m!1337711 () Bool)

(assert (=> b!1166890 m!1337711))

(assert (=> b!1166889 m!1335397))

(assert (=> b!1166885 m!1335511))

(declare-fun m!1337713 () Bool)

(assert (=> b!1166888 m!1337713))

(declare-fun m!1337715 () Bool)

(assert (=> b!1166884 m!1337715))

(declare-fun m!1337717 () Bool)

(assert (=> d!333174 m!1337717))

(declare-fun m!1337719 () Bool)

(assert (=> d!333174 m!1337719))

(assert (=> d!333174 m!1335431))

(assert (=> d!333174 m!1337717))

(declare-fun m!1337721 () Bool)

(assert (=> d!333174 m!1337721))

(declare-fun m!1337723 () Bool)

(assert (=> d!333174 m!1337723))

(declare-fun m!1337725 () Bool)

(assert (=> d!333174 m!1337725))

(assert (=> d!333174 m!1335409))

(declare-fun m!1337727 () Bool)

(assert (=> d!333174 m!1337727))

(declare-fun m!1337729 () Bool)

(assert (=> d!333174 m!1337729))

(assert (=> d!333174 m!1337723))

(declare-fun m!1337731 () Bool)

(assert (=> b!1166883 m!1337731))

(assert (=> b!1166886 m!1335431))

(assert (=> b!1165967 d!333174))

(declare-fun d!333176 () Bool)

(declare-fun res!526934 () Bool)

(declare-fun e!747881 () Bool)

(assert (=> d!333176 (=> res!526934 e!747881)))

(assert (=> d!333176 (= res!526934 ((_ is Nil!11519) (t!110333 lt!398621)))))

(assert (=> d!333176 (= (forall!3024 (t!110333 lt!398621) lambda!47903) e!747881)))

(declare-fun b!1166891 () Bool)

(declare-fun e!747882 () Bool)

(assert (=> b!1166891 (= e!747881 e!747882)))

(declare-fun res!526935 () Bool)

(assert (=> b!1166891 (=> (not res!526935) (not e!747882))))

(assert (=> b!1166891 (= res!526935 (dynLambda!5074 lambda!47903 (h!16920 (t!110333 lt!398621))))))

(declare-fun b!1166892 () Bool)

(assert (=> b!1166892 (= e!747882 (forall!3024 (t!110333 (t!110333 lt!398621)) lambda!47903))))

(assert (= (and d!333176 (not res!526934)) b!1166891))

(assert (= (and b!1166891 res!526935) b!1166892))

(declare-fun b_lambda!34779 () Bool)

(assert (=> (not b_lambda!34779) (not b!1166891)))

(declare-fun m!1337733 () Bool)

(assert (=> b!1166891 m!1337733))

(declare-fun m!1337735 () Bool)

(assert (=> b!1166892 m!1337735))

(assert (=> d!332868 d!333176))

(assert (=> d!332868 d!333086))

(assert (=> b!1165840 d!332868))

(declare-fun d!333178 () Bool)

(declare-fun lt!399586 () Bool)

(declare-fun e!747884 () Bool)

(assert (=> d!333178 (= lt!399586 e!747884)))

(declare-fun res!526936 () Bool)

(assert (=> d!333178 (=> (not res!526936) (not e!747884))))

(assert (=> d!333178 (= res!526936 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!399139)))))) (list!4239 (singletonSeq!668 (h!16920 lt!399139)))))))

(declare-fun e!747883 () Bool)

(assert (=> d!333178 (= lt!399586 e!747883)))

(declare-fun res!526937 () Bool)

(assert (=> d!333178 (=> (not res!526937) (not e!747883))))

(declare-fun lt!399585 () tuple2!12022)

(assert (=> d!333178 (= res!526937 (= (size!9067 (_1!6858 lt!399585)) 1))))

(assert (=> d!333178 (= lt!399585 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!399139)))))))

(assert (=> d!333178 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333178 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!399139)) lt!399586)))

(declare-fun b!1166893 () Bool)

(declare-fun res!526938 () Bool)

(assert (=> b!1166893 (=> (not res!526938) (not e!747883))))

(assert (=> b!1166893 (= res!526938 (= (apply!2479 (_1!6858 lt!399585) 0) (h!16920 lt!399139)))))

(declare-fun b!1166894 () Bool)

(assert (=> b!1166894 (= e!747883 (isEmpty!7005 (_2!6858 lt!399585)))))

(declare-fun b!1166895 () Bool)

(assert (=> b!1166895 (= e!747884 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!399139)))))))))

(assert (= (and d!333178 res!526937) b!1166893))

(assert (= (and b!1166893 res!526938) b!1166894))

(assert (= (and d!333178 res!526936) b!1166895))

(assert (=> d!333178 m!1335511))

(declare-fun m!1337737 () Bool)

(assert (=> d!333178 m!1337737))

(declare-fun m!1337739 () Bool)

(assert (=> d!333178 m!1337739))

(declare-fun m!1337741 () Bool)

(assert (=> d!333178 m!1337741))

(declare-fun m!1337743 () Bool)

(assert (=> d!333178 m!1337743))

(declare-fun m!1337745 () Bool)

(assert (=> d!333178 m!1337745))

(declare-fun m!1337747 () Bool)

(assert (=> d!333178 m!1337747))

(assert (=> d!333178 m!1337743))

(assert (=> d!333178 m!1337737))

(assert (=> d!333178 m!1337743))

(declare-fun m!1337749 () Bool)

(assert (=> b!1166893 m!1337749))

(declare-fun m!1337751 () Bool)

(assert (=> b!1166894 m!1337751))

(assert (=> b!1166895 m!1337743))

(assert (=> b!1166895 m!1337743))

(assert (=> b!1166895 m!1337737))

(assert (=> b!1166895 m!1337737))

(assert (=> b!1166895 m!1337739))

(declare-fun m!1337753 () Bool)

(assert (=> b!1166895 m!1337753))

(assert (=> b!1166239 d!333178))

(declare-fun b!1166896 () Bool)

(declare-fun e!747888 () Int)

(declare-fun call!82173 () Int)

(assert (=> b!1166896 (= e!747888 call!82173)))

(declare-fun b!1166897 () Bool)

(declare-fun e!747887 () List!11543)

(declare-fun e!747885 () List!11543)

(assert (=> b!1166897 (= e!747887 e!747885)))

(declare-fun c!194785 () Bool)

(assert (=> b!1166897 (= c!194785 (<= (- 1 1) 0))))

(declare-fun b!1166898 () Bool)

(declare-fun e!747889 () Int)

(assert (=> b!1166898 (= e!747888 e!747889)))

(declare-fun c!194782 () Bool)

(assert (=> b!1166898 (= c!194782 (>= (- 1 1) call!82173))))

(declare-fun b!1166899 () Bool)

(declare-fun e!747886 () Bool)

(declare-fun lt!399587 () List!11543)

(assert (=> b!1166899 (= e!747886 (= (size!9071 lt!399587) e!747888))))

(declare-fun c!194783 () Bool)

(assert (=> b!1166899 (= c!194783 (<= (- 1 1) 0))))

(declare-fun b!1166900 () Bool)

(assert (=> b!1166900 (= e!747887 Nil!11519)))

(declare-fun b!1166901 () Bool)

(assert (=> b!1166901 (= e!747889 (- call!82173 (- 1 1)))))

(declare-fun b!1166902 () Bool)

(assert (=> b!1166902 (= e!747885 (t!110333 lt!398620))))

(declare-fun b!1166904 () Bool)

(assert (=> b!1166904 (= e!747885 (drop!482 (t!110333 (t!110333 lt!398620)) (- (- 1 1) 1)))))

(declare-fun bm!82168 () Bool)

(assert (=> bm!82168 (= call!82173 (size!9071 (t!110333 lt!398620)))))

(declare-fun d!333180 () Bool)

(assert (=> d!333180 e!747886))

(declare-fun res!526939 () Bool)

(assert (=> d!333180 (=> (not res!526939) (not e!747886))))

(assert (=> d!333180 (= res!526939 (= ((_ map implies) (content!1608 lt!399587) (content!1608 (t!110333 lt!398620))) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333180 (= lt!399587 e!747887)))

(declare-fun c!194784 () Bool)

(assert (=> d!333180 (= c!194784 ((_ is Nil!11519) (t!110333 lt!398620)))))

(assert (=> d!333180 (= (drop!482 (t!110333 lt!398620) (- 1 1)) lt!399587)))

(declare-fun b!1166903 () Bool)

(assert (=> b!1166903 (= e!747889 0)))

(assert (= (and d!333180 c!194784) b!1166900))

(assert (= (and d!333180 (not c!194784)) b!1166897))

(assert (= (and b!1166897 c!194785) b!1166902))

(assert (= (and b!1166897 (not c!194785)) b!1166904))

(assert (= (and d!333180 res!526939) b!1166899))

(assert (= (and b!1166899 c!194783) b!1166896))

(assert (= (and b!1166899 (not c!194783)) b!1166898))

(assert (= (and b!1166898 c!194782) b!1166903))

(assert (= (and b!1166898 (not c!194782)) b!1166901))

(assert (= (or b!1166896 b!1166898 b!1166901) bm!82168))

(declare-fun m!1337755 () Bool)

(assert (=> b!1166899 m!1337755))

(declare-fun m!1337757 () Bool)

(assert (=> b!1166904 m!1337757))

(assert (=> bm!82168 m!1337659))

(declare-fun m!1337759 () Bool)

(assert (=> d!333180 m!1337759))

(assert (=> d!333180 m!1337657))

(assert (=> b!1166485 d!333180))

(declare-fun d!333182 () Bool)

(declare-fun c!194786 () Bool)

(assert (=> d!333182 (= c!194786 ((_ is Nil!11519) lt!399246))))

(declare-fun e!747890 () (InoxSet Token!3676))

(assert (=> d!333182 (= (content!1608 lt!399246) e!747890)))

(declare-fun b!1166905 () Bool)

(assert (=> b!1166905 (= e!747890 ((as const (Array Token!3676 Bool)) false))))

(declare-fun b!1166906 () Bool)

(assert (=> b!1166906 (= e!747890 ((_ map or) (store ((as const (Array Token!3676 Bool)) false) (h!16920 lt!399246) true) (content!1608 (t!110333 lt!399246))))))

(assert (= (and d!333182 c!194786) b!1166905))

(assert (= (and d!333182 (not c!194786)) b!1166906))

(declare-fun m!1337761 () Bool)

(assert (=> b!1166906 m!1337761))

(declare-fun m!1337763 () Bool)

(assert (=> b!1166906 m!1337763))

(assert (=> d!332916 d!333182))

(assert (=> d!332916 d!333170))

(declare-fun b!1166909 () Bool)

(declare-fun e!747894 () Bool)

(assert (=> b!1166909 (= e!747894 (subseq!259 (t!110333 (drop!482 lt!398620 from!787)) (t!110333 lt!398620)))))

(declare-fun b!1166910 () Bool)

(declare-fun e!747892 () Bool)

(assert (=> b!1166910 (= e!747892 (subseq!259 (drop!482 lt!398620 from!787) (t!110333 lt!398620)))))

(declare-fun b!1166908 () Bool)

(declare-fun e!747893 () Bool)

(assert (=> b!1166908 (= e!747893 e!747892)))

(declare-fun res!526942 () Bool)

(assert (=> b!1166908 (=> res!526942 e!747892)))

(assert (=> b!1166908 (= res!526942 e!747894)))

(declare-fun res!526943 () Bool)

(assert (=> b!1166908 (=> (not res!526943) (not e!747894))))

(assert (=> b!1166908 (= res!526943 (= (h!16920 (drop!482 lt!398620 from!787)) (h!16920 lt!398620)))))

(declare-fun b!1166907 () Bool)

(declare-fun e!747891 () Bool)

(assert (=> b!1166907 (= e!747891 e!747893)))

(declare-fun res!526940 () Bool)

(assert (=> b!1166907 (=> (not res!526940) (not e!747893))))

(assert (=> b!1166907 (= res!526940 ((_ is Cons!11519) lt!398620))))

(declare-fun d!333184 () Bool)

(declare-fun res!526941 () Bool)

(assert (=> d!333184 (=> res!526941 e!747891)))

(assert (=> d!333184 (= res!526941 ((_ is Nil!11519) (drop!482 lt!398620 from!787)))))

(assert (=> d!333184 (= (subseq!259 (drop!482 lt!398620 from!787) lt!398620) e!747891)))

(assert (= (and d!333184 (not res!526941)) b!1166907))

(assert (= (and b!1166907 res!526940) b!1166908))

(assert (= (and b!1166908 res!526943) b!1166909))

(assert (= (and b!1166908 (not res!526942)) b!1166910))

(declare-fun m!1337765 () Bool)

(assert (=> b!1166909 m!1337765))

(assert (=> b!1166910 m!1335389))

(declare-fun m!1337767 () Bool)

(assert (=> b!1166910 m!1337767))

(assert (=> d!332842 d!333184))

(assert (=> d!332842 d!332852))

(declare-fun d!333186 () Bool)

(assert (=> d!333186 (subseq!259 (drop!482 lt!398620 from!787) lt!398620)))

(assert (=> d!333186 true))

(declare-fun _$26!165 () Unit!17605)

(assert (=> d!333186 (= (choose!7525 lt!398620 from!787) _$26!165)))

(declare-fun bs!284582 () Bool)

(assert (= bs!284582 d!333186))

(assert (=> bs!284582 m!1335389))

(assert (=> bs!284582 m!1335389))

(assert (=> bs!284582 m!1336439))

(assert (=> d!332842 d!333186))

(declare-fun d!333188 () Bool)

(declare-fun lt!399590 () Bool)

(declare-fun isEmpty!7011 (List!11542) Bool)

(assert (=> d!333188 (= lt!399590 (isEmpty!7011 (list!4243 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620))))))))))

(declare-fun isEmpty!7012 (Conc!3776) Bool)

(assert (=> d!333188 (= lt!399590 (isEmpty!7012 (c!194628 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620))))))))))

(assert (=> d!333188 (= (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620)))))) lt!399590)))

(declare-fun bs!284583 () Bool)

(assert (= bs!284583 d!333188))

(declare-fun m!1337769 () Bool)

(assert (=> bs!284583 m!1337769))

(assert (=> bs!284583 m!1337769))

(declare-fun m!1337771 () Bool)

(assert (=> bs!284583 m!1337771))

(declare-fun m!1337773 () Bool)

(assert (=> bs!284583 m!1337773))

(assert (=> b!1166488 d!333188))

(declare-fun b!1166911 () Bool)

(declare-fun e!747897 () Bool)

(declare-fun lt!399591 () tuple2!12022)

(assert (=> b!1166911 (= e!747897 (not (isEmpty!7010 (_1!6858 lt!399591))))))

(declare-fun b!1166912 () Bool)

(declare-fun e!747895 () Bool)

(assert (=> b!1166912 (= e!747895 (= (list!4243 (_2!6858 lt!399591)) (_2!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620))))))))))

(declare-fun b!1166913 () Bool)

(declare-fun e!747896 () Bool)

(assert (=> b!1166913 (= e!747896 (= (_2!6858 lt!399591) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620)))))))

(declare-fun d!333190 () Bool)

(assert (=> d!333190 e!747895))

(declare-fun res!526944 () Bool)

(assert (=> d!333190 (=> (not res!526944) (not e!747895))))

(assert (=> d!333190 (= res!526944 e!747896)))

(declare-fun c!194787 () Bool)

(assert (=> d!333190 (= c!194787 (> (size!9067 (_1!6858 lt!399591)) 0))))

(assert (=> d!333190 (= lt!399591 (lexTailRecV2!321 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620))) (BalanceConc!7575 Empty!3776) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620))) (BalanceConc!7577 Empty!3777)))))

(assert (=> d!333190 (= (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620)))) lt!399591)))

(declare-fun b!1166914 () Bool)

(assert (=> b!1166914 (= e!747896 e!747897)))

(declare-fun res!526946 () Bool)

(assert (=> b!1166914 (= res!526946 (< (size!9066 (_2!6858 lt!399591)) (size!9066 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620))))))))

(assert (=> b!1166914 (=> (not res!526946) (not e!747897))))

(declare-fun b!1166915 () Bool)

(declare-fun res!526945 () Bool)

(assert (=> b!1166915 (=> (not res!526945) (not e!747895))))

(assert (=> b!1166915 (= res!526945 (= (list!4239 (_1!6858 lt!399591)) (_1!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620))))))))))

(assert (= (and d!333190 c!194787) b!1166914))

(assert (= (and d!333190 (not c!194787)) b!1166913))

(assert (= (and b!1166914 res!526946) b!1166911))

(assert (= (and d!333190 res!526944) b!1166915))

(assert (= (and b!1166915 res!526945) b!1166912))

(declare-fun m!1337775 () Bool)

(assert (=> b!1166914 m!1337775))

(assert (=> b!1166914 m!1336647))

(declare-fun m!1337777 () Bool)

(assert (=> b!1166914 m!1337777))

(declare-fun m!1337779 () Bool)

(assert (=> b!1166912 m!1337779))

(assert (=> b!1166912 m!1336647))

(declare-fun m!1337781 () Bool)

(assert (=> b!1166912 m!1337781))

(assert (=> b!1166912 m!1337781))

(declare-fun m!1337783 () Bool)

(assert (=> b!1166912 m!1337783))

(declare-fun m!1337785 () Bool)

(assert (=> b!1166915 m!1337785))

(assert (=> b!1166915 m!1336647))

(assert (=> b!1166915 m!1337781))

(assert (=> b!1166915 m!1337781))

(assert (=> b!1166915 m!1337783))

(declare-fun m!1337787 () Bool)

(assert (=> b!1166911 m!1337787))

(declare-fun m!1337789 () Bool)

(assert (=> d!333190 m!1337789))

(assert (=> d!333190 m!1336647))

(assert (=> d!333190 m!1336647))

(declare-fun m!1337791 () Bool)

(assert (=> d!333190 m!1337791))

(assert (=> b!1166488 d!333190))

(declare-fun d!333192 () Bool)

(declare-fun lt!399592 () BalanceConc!7574)

(assert (=> d!333192 (= (list!4243 lt!399592) (printList!514 Lexer!1700 (list!4239 (singletonSeq!668 (h!16920 lt!398620)))))))

(assert (=> d!333192 (= lt!399592 (printTailRec!496 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620)) 0 (BalanceConc!7575 Empty!3776)))))

(assert (=> d!333192 (= (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620))) lt!399592)))

(declare-fun bs!284584 () Bool)

(assert (= bs!284584 d!333192))

(declare-fun m!1337793 () Bool)

(assert (=> bs!284584 m!1337793))

(assert (=> bs!284584 m!1336653))

(assert (=> bs!284584 m!1336655))

(assert (=> bs!284584 m!1336655))

(declare-fun m!1337795 () Bool)

(assert (=> bs!284584 m!1337795))

(assert (=> bs!284584 m!1336653))

(declare-fun m!1337797 () Bool)

(assert (=> bs!284584 m!1337797))

(assert (=> b!1166488 d!333192))

(declare-fun d!333194 () Bool)

(declare-fun e!747898 () Bool)

(assert (=> d!333194 e!747898))

(declare-fun res!526947 () Bool)

(assert (=> d!333194 (=> (not res!526947) (not e!747898))))

(declare-fun lt!399593 () BalanceConc!7576)

(assert (=> d!333194 (= res!526947 (= (list!4239 lt!399593) (Cons!11519 (h!16920 lt!398620) Nil!11519)))))

(assert (=> d!333194 (= lt!399593 (singleton!300 (h!16920 lt!398620)))))

(assert (=> d!333194 (= (singletonSeq!668 (h!16920 lt!398620)) lt!399593)))

(declare-fun b!1166916 () Bool)

(assert (=> b!1166916 (= e!747898 (isBalanced!1060 (c!194629 lt!399593)))))

(assert (= (and d!333194 res!526947) b!1166916))

(declare-fun m!1337799 () Bool)

(assert (=> d!333194 m!1337799))

(declare-fun m!1337801 () Bool)

(assert (=> d!333194 m!1337801))

(declare-fun m!1337803 () Bool)

(assert (=> b!1166916 m!1337803))

(assert (=> b!1166488 d!333194))

(declare-fun d!333196 () Bool)

(declare-fun lt!399594 () Token!3676)

(assert (=> d!333196 (= lt!399594 (apply!2480 (list!4239 (_1!6858 lt!399229)) 0))))

(assert (=> d!333196 (= lt!399594 (apply!2483 (c!194629 (_1!6858 lt!399229)) 0))))

(declare-fun e!747899 () Bool)

(assert (=> d!333196 e!747899))

(declare-fun res!526948 () Bool)

(assert (=> d!333196 (=> (not res!526948) (not e!747899))))

(assert (=> d!333196 (= res!526948 (<= 0 0))))

(assert (=> d!333196 (= (apply!2479 (_1!6858 lt!399229) 0) lt!399594)))

(declare-fun b!1166917 () Bool)

(assert (=> b!1166917 (= e!747899 (< 0 (size!9067 (_1!6858 lt!399229))))))

(assert (= (and d!333196 res!526948) b!1166917))

(declare-fun m!1337805 () Bool)

(assert (=> d!333196 m!1337805))

(assert (=> d!333196 m!1337805))

(declare-fun m!1337807 () Bool)

(assert (=> d!333196 m!1337807))

(declare-fun m!1337809 () Bool)

(assert (=> d!333196 m!1337809))

(assert (=> b!1166917 m!1336571))

(assert (=> b!1166444 d!333196))

(declare-fun d!333198 () Bool)

(declare-fun res!526949 () Bool)

(declare-fun e!747900 () Bool)

(assert (=> d!333198 (=> res!526949 e!747900)))

(assert (=> d!333198 (= res!526949 ((_ is Nil!11519) (t!110333 lt!398620)))))

(assert (=> d!333198 (= (forall!3024 (t!110333 lt!398620) lambda!47880) e!747900)))

(declare-fun b!1166918 () Bool)

(declare-fun e!747901 () Bool)

(assert (=> b!1166918 (= e!747900 e!747901)))

(declare-fun res!526950 () Bool)

(assert (=> b!1166918 (=> (not res!526950) (not e!747901))))

(assert (=> b!1166918 (= res!526950 (dynLambda!5074 lambda!47880 (h!16920 (t!110333 lt!398620))))))

(declare-fun b!1166919 () Bool)

(assert (=> b!1166919 (= e!747901 (forall!3024 (t!110333 (t!110333 lt!398620)) lambda!47880))))

(assert (= (and d!333198 (not res!526949)) b!1166918))

(assert (= (and b!1166918 res!526950) b!1166919))

(declare-fun b_lambda!34781 () Bool)

(assert (=> (not b_lambda!34781) (not b!1166918)))

(declare-fun m!1337811 () Bool)

(assert (=> b!1166918 m!1337811))

(declare-fun m!1337813 () Bool)

(assert (=> b!1166919 m!1337813))

(assert (=> d!332754 d!333198))

(assert (=> d!332754 d!333086))

(declare-fun d!333200 () Bool)

(assert (=> d!333200 true))

(declare-fun lt!399597 () Bool)

(declare-fun rulesValidInductive!640 (LexerInterface!1702 List!11544) Bool)

(assert (=> d!333200 (= lt!399597 (rulesValidInductive!640 Lexer!1700 (rules!9572 thiss!10527)))))

(declare-fun lambda!47916 () Int)

(declare-fun forall!3028 (List!11544 Int) Bool)

(assert (=> d!333200 (= lt!399597 (forall!3028 (rules!9572 thiss!10527) lambda!47916))))

(assert (=> d!333200 (= (rulesValid!702 Lexer!1700 (rules!9572 thiss!10527)) lt!399597)))

(declare-fun bs!284585 () Bool)

(assert (= bs!284585 d!333200))

(declare-fun m!1337815 () Bool)

(assert (=> bs!284585 m!1337815))

(declare-fun m!1337817 () Bool)

(assert (=> bs!284585 m!1337817))

(assert (=> d!332790 d!333200))

(declare-fun d!333202 () Bool)

(declare-fun res!526961 () Bool)

(declare-fun e!747908 () Bool)

(assert (=> d!333202 (=> (not res!526961) (not e!747908))))

(assert (=> d!333202 (= res!526961 (= (csize!7784 (c!194629 (tokens!1624 thiss!10527))) (+ (size!9075 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) (size!9075 (right!10404 (c!194629 (tokens!1624 thiss!10527)))))))))

(assert (=> d!333202 (= (inv!15168 (c!194629 (tokens!1624 thiss!10527))) e!747908)))

(declare-fun b!1166932 () Bool)

(declare-fun res!526962 () Bool)

(assert (=> b!1166932 (=> (not res!526962) (not e!747908))))

(assert (=> b!1166932 (= res!526962 (and (not (= (left!10074 (c!194629 (tokens!1624 thiss!10527))) Empty!3777)) (not (= (right!10404 (c!194629 (tokens!1624 thiss!10527))) Empty!3777))))))

(declare-fun b!1166933 () Bool)

(declare-fun res!526963 () Bool)

(assert (=> b!1166933 (=> (not res!526963) (not e!747908))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!513 (Conc!3777) Int)

(assert (=> b!1166933 (= res!526963 (= (cheight!3988 (c!194629 (tokens!1624 thiss!10527))) (+ (max!0 (height!513 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) (height!513 (right!10404 (c!194629 (tokens!1624 thiss!10527))))) 1)))))

(declare-fun b!1166934 () Bool)

(assert (=> b!1166934 (= e!747908 (<= 0 (cheight!3988 (c!194629 (tokens!1624 thiss!10527)))))))

(assert (= (and d!333202 res!526961) b!1166932))

(assert (= (and b!1166932 res!526962) b!1166933))

(assert (= (and b!1166933 res!526963) b!1166934))

(declare-fun m!1337819 () Bool)

(assert (=> d!333202 m!1337819))

(declare-fun m!1337821 () Bool)

(assert (=> d!333202 m!1337821))

(declare-fun m!1337823 () Bool)

(assert (=> b!1166933 m!1337823))

(declare-fun m!1337825 () Bool)

(assert (=> b!1166933 m!1337825))

(assert (=> b!1166933 m!1337823))

(assert (=> b!1166933 m!1337825))

(declare-fun m!1337827 () Bool)

(assert (=> b!1166933 m!1337827))

(assert (=> b!1166157 d!333202))

(declare-fun b!1166952 () Bool)

(declare-fun e!747919 () Bool)

(declare-fun isEmpty!7013 (Conc!3777) Bool)

(assert (=> b!1166952 (= e!747919 (not (isEmpty!7013 (right!10404 (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267)))))))

(declare-fun b!1166953 () Bool)

(declare-fun res!526980 () Bool)

(assert (=> b!1166953 (=> (not res!526980) (not e!747919))))

(assert (=> b!1166953 (= res!526980 (not (isEmpty!7013 (left!10074 (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267)))))))

(declare-fun b!1166954 () Bool)

(declare-fun res!526982 () Bool)

(assert (=> b!1166954 (=> (not res!526982) (not e!747919))))

(assert (=> b!1166954 (= res!526982 (<= (- (height!513 (left!10074 (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267))) (height!513 (right!10404 (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267)))) 1))))

(declare-fun b!1166955 () Bool)

(declare-fun res!526979 () Bool)

(assert (=> b!1166955 (=> (not res!526979) (not e!747919))))

(assert (=> b!1166955 (= res!526979 (isBalanced!1060 (right!10404 (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267))))))

(declare-fun d!333204 () Bool)

(declare-fun res!526978 () Bool)

(declare-fun e!747918 () Bool)

(assert (=> d!333204 (=> res!526978 e!747918)))

(assert (=> d!333204 (= res!526978 (not ((_ is Node!3777) (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267))))))

(assert (=> d!333204 (= (isBalanced!1060 (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267)) e!747918)))

(declare-fun b!1166956 () Bool)

(assert (=> b!1166956 (= e!747918 e!747919)))

(declare-fun res!526983 () Bool)

(assert (=> b!1166956 (=> (not res!526983) (not e!747919))))

(assert (=> b!1166956 (= res!526983 (<= (- 1) (- (height!513 (left!10074 (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267))) (height!513 (right!10404 (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267))))))))

(declare-fun b!1166957 () Bool)

(declare-fun res!526981 () Bool)

(assert (=> b!1166957 (=> (not res!526981) (not e!747919))))

(assert (=> b!1166957 (= res!526981 (isBalanced!1060 (left!10074 (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267))))))

(assert (= (and d!333204 (not res!526978)) b!1166956))

(assert (= (and b!1166956 res!526983) b!1166954))

(assert (= (and b!1166954 res!526982) b!1166957))

(assert (= (and b!1166957 res!526981) b!1166955))

(assert (= (and b!1166955 res!526979) b!1166953))

(assert (= (and b!1166953 res!526980) b!1166952))

(declare-fun m!1337831 () Bool)

(assert (=> b!1166954 m!1337831))

(declare-fun m!1337833 () Bool)

(assert (=> b!1166954 m!1337833))

(declare-fun m!1337835 () Bool)

(assert (=> b!1166957 m!1337835))

(declare-fun m!1337837 () Bool)

(assert (=> b!1166952 m!1337837))

(declare-fun m!1337841 () Bool)

(assert (=> b!1166955 m!1337841))

(assert (=> b!1166956 m!1337831))

(assert (=> b!1166956 m!1337833))

(declare-fun m!1337847 () Bool)

(assert (=> b!1166953 m!1337847))

(assert (=> d!332660 d!333204))

(declare-fun bm!82181 () Bool)

(declare-fun c!194821 () Bool)

(declare-fun c!194819 () Bool)

(assert (=> bm!82181 (= c!194821 c!194819)))

(declare-fun call!82190 () List!11543)

(declare-fun call!82189 () List!11543)

(assert (=> bm!82181 (= call!82190 call!82189)))

(declare-fun b!1167076 () Bool)

(declare-fun e!748003 () List!11543)

(declare-fun e!748002 () List!11543)

(assert (=> b!1167076 (= e!748003 e!748002)))

(declare-fun call!82191 () Int)

(assert (=> b!1167076 (= c!194819 (<= to!267 call!82191))))

(declare-fun c!194824 () Bool)

(declare-fun bm!82182 () Bool)

(declare-fun lt!399671 () List!11543)

(declare-fun lt!399674 () List!11543)

(declare-fun e!747998 () Int)

(assert (=> bm!82182 (= call!82189 (slice!313 (ite c!194824 lt!399671 (ite c!194819 lt!399674 lt!399671)) (ite c!194824 (- from!787 call!82191) (ite c!194819 from!787 0)) (ite c!194824 (- to!267 call!82191) e!747998)))))

(declare-fun b!1167077 () Bool)

(declare-fun e!748006 () Int)

(declare-fun call!82187 () Int)

(assert (=> b!1167077 (= e!748006 call!82187)))

(declare-fun b!1167078 () Bool)

(declare-fun e!747997 () Bool)

(declare-fun lt!399673 () Conc!3777)

(assert (=> b!1167078 (= e!747997 (= (list!4242 lt!399673) (slice!313 (list!4242 (c!194629 (tokens!1624 thiss!10527))) from!787 to!267)))))

(declare-fun b!1167079 () Bool)

(assert (=> b!1167079 (= e!748002 call!82190)))

(declare-fun b!1167080 () Bool)

(declare-fun e!748005 () Bool)

(assert (=> b!1167080 (= e!748005 (isBalanced!1060 (c!194629 (tokens!1624 thiss!10527))))))

(declare-fun b!1167081 () Bool)

(declare-fun e!747996 () Conc!3777)

(declare-fun call!82188 () Conc!3777)

(assert (=> b!1167081 (= e!747996 call!82188)))

(declare-fun b!1167082 () Bool)

(declare-fun e!748001 () Conc!3777)

(declare-fun e!748000 () Conc!3777)

(assert (=> b!1167082 (= e!748001 e!748000)))

(declare-fun c!194823 () Bool)

(assert (=> b!1167082 (= c!194823 ((_ is Leaf!5791) (c!194629 (tokens!1624 thiss!10527))))))

(declare-fun b!1167083 () Bool)

(assert (=> b!1167083 (= e!747998 to!267)))

(declare-fun b!1167084 () Bool)

(declare-fun e!747999 () Conc!3777)

(assert (=> b!1167084 (= e!747999 e!747996)))

(declare-fun c!194818 () Bool)

(assert (=> b!1167084 (= c!194818 (<= to!267 call!82187))))

(declare-fun b!1167085 () Bool)

(declare-fun c!194826 () Bool)

(assert (=> b!1167085 (= c!194826 (<= (size!9075 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) from!787))))

(declare-fun lt!399672 () Unit!17605)

(declare-fun lt!399675 () Unit!17605)

(assert (=> b!1167085 (= lt!399672 lt!399675)))

(assert (=> b!1167085 (= (slice!313 (++!2981 lt!399674 lt!399671) from!787 to!267) e!748003)))

(assert (=> b!1167085 (= c!194824 (<= (size!9071 lt!399674) from!787))))

(declare-fun sliceLemma!6 (List!11543 List!11543 Int Int) Unit!17605)

(assert (=> b!1167085 (= lt!399675 (sliceLemma!6 lt!399674 lt!399671 from!787 to!267))))

(assert (=> b!1167085 (= lt!399671 (list!4242 (right!10404 (c!194629 (tokens!1624 thiss!10527)))))))

(assert (=> b!1167085 (= lt!399674 (list!4242 (left!10074 (c!194629 (tokens!1624 thiss!10527)))))))

(assert (=> b!1167085 (= e!748000 e!747999)))

(declare-fun b!1167086 () Bool)

(assert (=> b!1167086 (= e!748003 call!82189)))

(declare-fun b!1167087 () Bool)

(declare-fun call!82186 () Conc!3777)

(assert (=> b!1167087 (= e!747999 call!82186)))

(declare-fun b!1167088 () Bool)

(assert (=> b!1167088 (= e!748001 Empty!3777)))

(declare-fun bm!82183 () Bool)

(assert (=> bm!82183 (= call!82186 (slice!315 (ite c!194826 (right!10404 (c!194629 (tokens!1624 thiss!10527))) (left!10074 (c!194629 (tokens!1624 thiss!10527)))) (ite c!194826 (- from!787 call!82187) from!787) (ite c!194826 (- to!267 call!82187) e!748006)))))

(declare-fun b!1167089 () Bool)

(declare-fun res!527034 () Bool)

(assert (=> b!1167089 (=> (not res!527034) (not e!748005))))

(assert (=> b!1167089 (= res!527034 (<= to!267 (size!9075 (c!194629 (tokens!1624 thiss!10527)))))))

(declare-fun b!1167090 () Bool)

(assert (=> b!1167090 (= e!747998 (- to!267 call!82191))))

(declare-fun bm!82184 () Bool)

(assert (=> bm!82184 (= call!82187 (size!9075 (left!10074 (c!194629 (tokens!1624 thiss!10527)))))))

(declare-fun d!333206 () Bool)

(assert (=> d!333206 e!747997))

(declare-fun res!527033 () Bool)

(assert (=> d!333206 (=> (not res!527033) (not e!747997))))

(assert (=> d!333206 (= res!527033 (isBalanced!1060 lt!399673))))

(assert (=> d!333206 (= lt!399673 e!748001)))

(declare-fun c!194822 () Bool)

(assert (=> d!333206 (= c!194822 (= from!787 to!267))))

(assert (=> d!333206 e!748005))

(declare-fun res!527035 () Bool)

(assert (=> d!333206 (=> (not res!527035) (not e!748005))))

(assert (=> d!333206 (= res!527035 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!333206 (= (slice!315 (c!194629 (tokens!1624 thiss!10527)) from!787 to!267) lt!399673)))

(declare-fun e!748004 () Conc!3777)

(declare-fun b!1167091 () Bool)

(declare-fun slice!316 (IArray!7559 Int Int) IArray!7559)

(assert (=> b!1167091 (= e!748004 (Leaf!5791 (slice!316 (xs!6482 (c!194629 (tokens!1624 thiss!10527))) from!787 to!267) (- to!267 from!787)))))

(declare-fun b!1167092 () Bool)

(declare-fun c!194825 () Bool)

(assert (=> b!1167092 (= c!194825 (= (- to!267 from!787) 0))))

(assert (=> b!1167092 (= e!748000 e!748004)))

(declare-fun b!1167093 () Bool)

(assert (=> b!1167093 (= e!748006 to!267)))

(declare-fun bm!82185 () Bool)

(assert (=> bm!82185 (= call!82191 (size!9071 lt!399674))))

(declare-fun b!1167094 () Bool)

(assert (=> b!1167094 (= e!748002 (++!2981 (slice!313 lt!399674 from!787 call!82191) call!82190))))

(declare-fun b!1167095 () Bool)

(assert (=> b!1167095 (= e!748004 Empty!3777)))

(declare-fun bm!82186 () Bool)

(declare-fun c!194820 () Bool)

(assert (=> bm!82186 (= c!194820 c!194818)))

(assert (=> bm!82186 (= call!82188 call!82186)))

(declare-fun b!1167096 () Bool)

(declare-fun ++!2984 (Conc!3777 Conc!3777) Conc!3777)

(assert (=> b!1167096 (= e!747996 (++!2984 call!82188 (slice!315 (right!10404 (c!194629 (tokens!1624 thiss!10527))) 0 (- to!267 call!82187))))))

(assert (= (and d!333206 res!527035) b!1167089))

(assert (= (and b!1167089 res!527034) b!1167080))

(assert (= (and d!333206 c!194822) b!1167088))

(assert (= (and d!333206 (not c!194822)) b!1167082))

(assert (= (and b!1167082 c!194823) b!1167092))

(assert (= (and b!1167082 (not c!194823)) b!1167085))

(assert (= (and b!1167092 c!194825) b!1167095))

(assert (= (and b!1167092 (not c!194825)) b!1167091))

(assert (= (and b!1167085 c!194824) b!1167086))

(assert (= (and b!1167085 (not c!194824)) b!1167076))

(assert (= (and b!1167076 c!194819) b!1167079))

(assert (= (and b!1167076 (not c!194819)) b!1167094))

(assert (= (or b!1167079 b!1167094) bm!82181))

(assert (= (and bm!82181 c!194821) b!1167083))

(assert (= (and bm!82181 (not c!194821)) b!1167090))

(assert (= (or b!1167086 b!1167076 b!1167090 b!1167094) bm!82185))

(assert (= (or b!1167086 bm!82181) bm!82182))

(assert (= (and b!1167085 c!194826) b!1167087))

(assert (= (and b!1167085 (not c!194826)) b!1167084))

(assert (= (and b!1167084 c!194818) b!1167081))

(assert (= (and b!1167084 (not c!194818)) b!1167096))

(assert (= (or b!1167081 b!1167096) bm!82186))

(assert (= (and bm!82186 c!194820) b!1167093))

(assert (= (and bm!82186 (not c!194820)) b!1167077))

(assert (= (or b!1167087 b!1167077 b!1167084 b!1167096) bm!82184))

(assert (= (or b!1167087 bm!82186) bm!82183))

(assert (= (and d!333206 res!527033) b!1167078))

(assert (=> bm!82184 m!1337819))

(declare-fun m!1338077 () Bool)

(assert (=> b!1167094 m!1338077))

(assert (=> b!1167094 m!1338077))

(declare-fun m!1338079 () Bool)

(assert (=> b!1167094 m!1338079))

(declare-fun m!1338081 () Bool)

(assert (=> b!1167096 m!1338081))

(assert (=> b!1167096 m!1338081))

(declare-fun m!1338083 () Bool)

(assert (=> b!1167096 m!1338083))

(assert (=> b!1167080 m!1335459))

(declare-fun m!1338085 () Bool)

(assert (=> bm!82183 m!1338085))

(declare-fun m!1338087 () Bool)

(assert (=> b!1167078 m!1338087))

(assert (=> b!1167078 m!1335745))

(assert (=> b!1167078 m!1335745))

(declare-fun m!1338089 () Bool)

(assert (=> b!1167078 m!1338089))

(declare-fun m!1338091 () Bool)

(assert (=> b!1167091 m!1338091))

(declare-fun m!1338093 () Bool)

(assert (=> b!1167085 m!1338093))

(declare-fun m!1338095 () Bool)

(assert (=> b!1167085 m!1338095))

(declare-fun m!1338097 () Bool)

(assert (=> b!1167085 m!1338097))

(assert (=> b!1167085 m!1337819))

(declare-fun m!1338099 () Bool)

(assert (=> b!1167085 m!1338099))

(assert (=> b!1167085 m!1338095))

(declare-fun m!1338101 () Bool)

(assert (=> b!1167085 m!1338101))

(declare-fun m!1338103 () Bool)

(assert (=> b!1167085 m!1338103))

(assert (=> bm!82185 m!1338103))

(assert (=> b!1167089 m!1336679))

(declare-fun m!1338105 () Bool)

(assert (=> bm!82182 m!1338105))

(declare-fun m!1338107 () Bool)

(assert (=> d!333206 m!1338107))

(assert (=> d!332660 d!333206))

(assert (=> b!1166459 d!333172))

(declare-fun d!333290 () Bool)

(declare-fun lt!399676 () Bool)

(assert (=> d!333290 (= lt!399676 (isEmpty!7011 (list!4243 (_2!6858 lt!398985))))))

(assert (=> d!333290 (= lt!399676 (isEmpty!7012 (c!194628 (_2!6858 lt!398985))))))

(assert (=> d!333290 (= (isEmpty!7005 (_2!6858 lt!398985)) lt!399676)))

(declare-fun bs!284684 () Bool)

(assert (= bs!284684 d!333290))

(declare-fun m!1338109 () Bool)

(assert (=> bs!284684 m!1338109))

(assert (=> bs!284684 m!1338109))

(declare-fun m!1338111 () Bool)

(assert (=> bs!284684 m!1338111))

(declare-fun m!1338113 () Bool)

(assert (=> bs!284684 m!1338113))

(assert (=> b!1166161 d!333290))

(declare-fun b!1167105 () Bool)

(declare-fun e!748016 () Bool)

(declare-fun lt!399701 () List!11543)

(assert (=> b!1167105 (= e!748016 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!399701))))

(declare-fun b!1167106 () Bool)

(declare-fun e!748017 () Bool)

(declare-fun lt!399704 () List!11543)

(assert (=> b!1167106 (= e!748017 (<= (+ 1 1) (size!9071 lt!399704)))))

(declare-fun b!1167107 () Bool)

(declare-fun res!527047 () Bool)

(assert (=> b!1167107 (=> (not res!527047) (not e!748016))))

(assert (=> b!1167107 (= res!527047 (not (isEmpty!7004 (rules!9572 thiss!10527))))))

(declare-fun b!1167108 () Bool)

(declare-fun e!748019 () Bool)

(assert (=> b!1167108 (= e!748019 (<= (+ 1 1) (size!9067 (tokens!1624 thiss!10527))))))

(declare-fun b!1167109 () Bool)

(declare-fun e!748015 () Bool)

(declare-fun e!748018 () Bool)

(assert (=> b!1167109 (= e!748015 e!748018)))

(declare-fun res!527050 () Bool)

(assert (=> b!1167109 (=> (not res!527050) (not e!748018))))

(assert (=> b!1167109 (= res!527050 (separableTokensPredicate!130 Lexer!1700 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)) (apply!2479 (tokens!1624 thiss!10527) (+ 1 1 1)) (rules!9572 thiss!10527)))))

(declare-fun lt!399692 () Unit!17605)

(declare-fun Unit!17666 () Unit!17605)

(assert (=> b!1167109 (= lt!399692 Unit!17666)))

(assert (=> b!1167109 (> (size!9066 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1 1)))) 0)))

(declare-fun lt!399679 () Unit!17605)

(declare-fun Unit!17667 () Unit!17605)

(assert (=> b!1167109 (= lt!399679 Unit!17667)))

(assert (=> b!1167109 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) (+ 1 1 1)))))

(declare-fun lt!399697 () Unit!17605)

(declare-fun Unit!17668 () Unit!17605)

(assert (=> b!1167109 (= lt!399697 Unit!17668)))

(assert (=> b!1167109 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)))))

(declare-fun lt!399678 () Unit!17605)

(declare-fun lt!399689 () Unit!17605)

(assert (=> b!1167109 (= lt!399678 lt!399689)))

(declare-fun lt!399684 () Token!3676)

(assert (=> b!1167109 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!399684)))

(declare-fun lt!399709 () List!11543)

(assert (=> b!1167109 (= lt!399689 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!399709 lt!399684))))

(assert (=> b!1167109 (= lt!399684 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1 1)))))

(assert (=> b!1167109 (= lt!399709 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399694 () Unit!17605)

(declare-fun lt!399680 () Unit!17605)

(assert (=> b!1167109 (= lt!399694 lt!399680)))

(declare-fun lt!399688 () Token!3676)

(assert (=> b!1167109 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!399688)))

(declare-fun lt!399700 () List!11543)

(assert (=> b!1167109 (= lt!399680 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!399700 lt!399688))))

(assert (=> b!1167109 (= lt!399688 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)))))

(assert (=> b!1167109 (= lt!399700 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399685 () Unit!17605)

(declare-fun lt!399690 () Unit!17605)

(assert (=> b!1167109 (= lt!399685 lt!399690)))

(declare-fun lt!399687 () List!11543)

(declare-fun lt!399683 () Int)

(assert (=> b!1167109 (= (tail!1686 (drop!482 lt!399687 lt!399683)) (drop!482 lt!399687 (+ lt!399683 1)))))

(assert (=> b!1167109 (= lt!399690 (lemmaDropTail!359 lt!399687 lt!399683))))

(assert (=> b!1167109 (= lt!399683 (+ 1 1 1))))

(assert (=> b!1167109 (= lt!399687 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399693 () Unit!17605)

(declare-fun lt!399677 () Unit!17605)

(assert (=> b!1167109 (= lt!399693 lt!399677)))

(declare-fun lt!399703 () List!11543)

(assert (=> b!1167109 (= (tail!1686 (drop!482 lt!399703 (+ 1 1))) (drop!482 lt!399703 (+ 1 1 1)))))

(assert (=> b!1167109 (= lt!399677 (lemmaDropTail!359 lt!399703 (+ 1 1)))))

(assert (=> b!1167109 (= lt!399703 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399699 () Unit!17605)

(declare-fun lt!399682 () Unit!17605)

(assert (=> b!1167109 (= lt!399699 lt!399682)))

(declare-fun lt!399705 () List!11543)

(declare-fun lt!399708 () Int)

(assert (=> b!1167109 (= (head!2102 (drop!482 lt!399705 lt!399708)) (apply!2480 lt!399705 lt!399708))))

(assert (=> b!1167109 (= lt!399682 (lemmaDropApply!371 lt!399705 lt!399708))))

(assert (=> b!1167109 (= lt!399708 (+ 1 1 1))))

(assert (=> b!1167109 (= lt!399705 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399696 () Unit!17605)

(declare-fun lt!399706 () Unit!17605)

(assert (=> b!1167109 (= lt!399696 lt!399706)))

(declare-fun lt!399681 () List!11543)

(assert (=> b!1167109 (= (head!2102 (drop!482 lt!399681 (+ 1 1))) (apply!2480 lt!399681 (+ 1 1)))))

(assert (=> b!1167109 (= lt!399706 (lemmaDropApply!371 lt!399681 (+ 1 1)))))

(assert (=> b!1167109 (= lt!399681 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun b!1167110 () Bool)

(declare-fun res!527048 () Bool)

(assert (=> b!1167110 (=> (not res!527048) (not e!748016))))

(declare-fun lt!399691 () List!11543)

(assert (=> b!1167110 (= res!527048 (subseq!259 lt!399691 lt!399701))))

(declare-fun b!1167112 () Bool)

(assert (=> b!1167112 (= e!748018 (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 (tokens!1624 thiss!10527) (+ 1 1 1) (rules!9572 thiss!10527)))))

(declare-fun d!333292 () Bool)

(declare-fun lt!399707 () Bool)

(assert (=> d!333292 (= lt!399707 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (dropList!317 (tokens!1624 thiss!10527) (+ 1 1)) (rules!9572 thiss!10527)))))

(declare-fun lt!399686 () Unit!17605)

(declare-fun lt!399698 () Unit!17605)

(assert (=> d!333292 (= lt!399686 lt!399698)))

(assert (=> d!333292 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!399691)))

(assert (=> d!333292 (= lt!399698 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!27 Lexer!1700 (rules!9572 thiss!10527) lt!399701 lt!399691))))

(assert (=> d!333292 e!748016))

(declare-fun res!527049 () Bool)

(assert (=> d!333292 (=> (not res!527049) (not e!748016))))

(assert (=> d!333292 (= res!527049 ((_ is Lexer!1700) Lexer!1700))))

(assert (=> d!333292 (= lt!399691 (dropList!317 (tokens!1624 thiss!10527) (+ 1 1)))))

(assert (=> d!333292 (= lt!399701 (list!4239 (tokens!1624 thiss!10527)))))

(declare-fun lt!399695 () Unit!17605)

(declare-fun lt!399702 () Unit!17605)

(assert (=> d!333292 (= lt!399695 lt!399702)))

(assert (=> d!333292 (subseq!259 (drop!482 lt!399704 (+ 1 1)) lt!399704)))

(assert (=> d!333292 (= lt!399702 (lemmaDropSubSeq!27 lt!399704 (+ 1 1)))))

(assert (=> d!333292 e!748017))

(declare-fun res!527051 () Bool)

(assert (=> d!333292 (=> (not res!527051) (not e!748017))))

(assert (=> d!333292 (= res!527051 (>= (+ 1 1) 0))))

(assert (=> d!333292 (= lt!399704 (list!4239 (tokens!1624 thiss!10527)))))

(assert (=> d!333292 (= lt!399707 e!748015)))

(declare-fun res!527043 () Bool)

(assert (=> d!333292 (=> res!527043 e!748015)))

(assert (=> d!333292 (= res!527043 (not (< (+ 1 1) (- (size!9067 (tokens!1624 thiss!10527)) 1))))))

(assert (=> d!333292 e!748019))

(declare-fun res!527042 () Bool)

(assert (=> d!333292 (=> (not res!527042) (not e!748019))))

(assert (=> d!333292 (= res!527042 (>= (+ 1 1) 0))))

(assert (=> d!333292 (= (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 (tokens!1624 thiss!10527) (+ 1 1) (rules!9572 thiss!10527)) lt!399707)))

(declare-fun b!1167111 () Bool)

(declare-fun res!527044 () Bool)

(assert (=> b!1167111 (=> (not res!527044) (not e!748016))))

(assert (=> b!1167111 (= res!527044 (rulesInvariant!1576 Lexer!1700 (rules!9572 thiss!10527)))))

(assert (= (and d!333292 res!527042) b!1167108))

(assert (= (and d!333292 (not res!527043)) b!1167109))

(assert (= (and b!1167109 res!527050) b!1167112))

(assert (= (and d!333292 res!527051) b!1167106))

(assert (= (and d!333292 res!527049) b!1167107))

(assert (= (and b!1167107 res!527047) b!1167111))

(assert (= (and b!1167111 res!527044) b!1167110))

(assert (= (and b!1167110 res!527048) b!1167105))

(declare-fun m!1338145 () Bool)

(assert (=> b!1167109 m!1338145))

(declare-fun m!1338149 () Bool)

(assert (=> b!1167109 m!1338149))

(declare-fun m!1338151 () Bool)

(assert (=> b!1167109 m!1338151))

(declare-fun m!1338153 () Bool)

(assert (=> b!1167109 m!1338153))

(declare-fun m!1338155 () Bool)

(assert (=> b!1167109 m!1338155))

(declare-fun m!1338157 () Bool)

(assert (=> b!1167109 m!1338157))

(declare-fun m!1338159 () Bool)

(assert (=> b!1167109 m!1338159))

(declare-fun m!1338163 () Bool)

(assert (=> b!1167109 m!1338163))

(declare-fun m!1338165 () Bool)

(assert (=> b!1167109 m!1338165))

(declare-fun m!1338167 () Bool)

(assert (=> b!1167109 m!1338167))

(declare-fun m!1338169 () Bool)

(assert (=> b!1167109 m!1338169))

(declare-fun m!1338171 () Bool)

(assert (=> b!1167109 m!1338171))

(declare-fun m!1338173 () Bool)

(assert (=> b!1167109 m!1338173))

(declare-fun m!1338175 () Bool)

(assert (=> b!1167109 m!1338175))

(assert (=> b!1167109 m!1335809))

(assert (=> b!1167109 m!1335821))

(assert (=> b!1167109 m!1338169))

(declare-fun m!1338179 () Bool)

(assert (=> b!1167109 m!1338179))

(assert (=> b!1167109 m!1335809))

(assert (=> b!1167109 m!1335809))

(declare-fun m!1338181 () Bool)

(assert (=> b!1167109 m!1338181))

(declare-fun m!1338183 () Bool)

(assert (=> b!1167109 m!1338183))

(declare-fun m!1338185 () Bool)

(assert (=> b!1167109 m!1338185))

(declare-fun m!1338187 () Bool)

(assert (=> b!1167109 m!1338187))

(assert (=> b!1167109 m!1338157))

(declare-fun m!1338189 () Bool)

(assert (=> b!1167109 m!1338189))

(declare-fun m!1338191 () Bool)

(assert (=> b!1167109 m!1338191))

(assert (=> b!1167109 m!1338181))

(declare-fun m!1338193 () Bool)

(assert (=> b!1167109 m!1338193))

(declare-fun m!1338195 () Bool)

(assert (=> b!1167109 m!1338195))

(declare-fun m!1338197 () Bool)

(assert (=> b!1167109 m!1338197))

(assert (=> b!1167109 m!1338181))

(assert (=> b!1167109 m!1338185))

(declare-fun m!1338201 () Bool)

(assert (=> b!1167109 m!1338201))

(assert (=> b!1167109 m!1335409))

(assert (=> b!1167109 m!1338181))

(assert (=> b!1167109 m!1338165))

(assert (=> b!1167109 m!1338151))

(declare-fun m!1338203 () Bool)

(assert (=> b!1167112 m!1338203))

(assert (=> b!1167111 m!1335397))

(assert (=> b!1167107 m!1335511))

(declare-fun m!1338205 () Bool)

(assert (=> b!1167110 m!1338205))

(declare-fun m!1338207 () Bool)

(assert (=> b!1167106 m!1338207))

(declare-fun m!1338209 () Bool)

(assert (=> d!333292 m!1338209))

(declare-fun m!1338211 () Bool)

(assert (=> d!333292 m!1338211))

(assert (=> d!333292 m!1335431))

(assert (=> d!333292 m!1338209))

(declare-fun m!1338213 () Bool)

(assert (=> d!333292 m!1338213))

(declare-fun m!1338215 () Bool)

(assert (=> d!333292 m!1338215))

(declare-fun m!1338217 () Bool)

(assert (=> d!333292 m!1338217))

(assert (=> d!333292 m!1335409))

(declare-fun m!1338219 () Bool)

(assert (=> d!333292 m!1338219))

(declare-fun m!1338221 () Bool)

(assert (=> d!333292 m!1338221))

(assert (=> d!333292 m!1338215))

(declare-fun m!1338223 () Bool)

(assert (=> b!1167105 m!1338223))

(assert (=> b!1167108 m!1335431))

(assert (=> b!1166026 d!333292))

(declare-fun d!333308 () Bool)

(declare-fun lt!399715 () Bool)

(declare-fun e!748032 () Bool)

(assert (=> d!333308 (= lt!399715 e!748032)))

(declare-fun res!527061 () Bool)

(assert (=> d!333308 (=> (not res!527061) (not e!748032))))

(assert (=> d!333308 (= res!527061 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!399179)))))) (list!4239 (singletonSeq!668 (h!16920 lt!399179)))))))

(declare-fun e!748031 () Bool)

(assert (=> d!333308 (= lt!399715 e!748031)))

(declare-fun res!527062 () Bool)

(assert (=> d!333308 (=> (not res!527062) (not e!748031))))

(declare-fun lt!399714 () tuple2!12022)

(assert (=> d!333308 (= res!527062 (= (size!9067 (_1!6858 lt!399714)) 1))))

(assert (=> d!333308 (= lt!399714 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!399179)))))))

(assert (=> d!333308 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333308 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!399179)) lt!399715)))

(declare-fun b!1167125 () Bool)

(declare-fun res!527063 () Bool)

(assert (=> b!1167125 (=> (not res!527063) (not e!748031))))

(assert (=> b!1167125 (= res!527063 (= (apply!2479 (_1!6858 lt!399714) 0) (h!16920 lt!399179)))))

(declare-fun b!1167126 () Bool)

(assert (=> b!1167126 (= e!748031 (isEmpty!7005 (_2!6858 lt!399714)))))

(declare-fun b!1167127 () Bool)

(assert (=> b!1167127 (= e!748032 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!399179)))))))))

(assert (= (and d!333308 res!527062) b!1167125))

(assert (= (and b!1167125 res!527063) b!1167126))

(assert (= (and d!333308 res!527061) b!1167127))

(assert (=> d!333308 m!1335511))

(declare-fun m!1338225 () Bool)

(assert (=> d!333308 m!1338225))

(declare-fun m!1338227 () Bool)

(assert (=> d!333308 m!1338227))

(declare-fun m!1338229 () Bool)

(assert (=> d!333308 m!1338229))

(declare-fun m!1338231 () Bool)

(assert (=> d!333308 m!1338231))

(declare-fun m!1338233 () Bool)

(assert (=> d!333308 m!1338233))

(declare-fun m!1338235 () Bool)

(assert (=> d!333308 m!1338235))

(assert (=> d!333308 m!1338231))

(assert (=> d!333308 m!1338225))

(assert (=> d!333308 m!1338231))

(declare-fun m!1338237 () Bool)

(assert (=> b!1167125 m!1338237))

(declare-fun m!1338239 () Bool)

(assert (=> b!1167126 m!1338239))

(assert (=> b!1167127 m!1338231))

(assert (=> b!1167127 m!1338231))

(assert (=> b!1167127 m!1338225))

(assert (=> b!1167127 m!1338225))

(assert (=> b!1167127 m!1338227))

(declare-fun m!1338241 () Bool)

(assert (=> b!1167127 m!1338241))

(assert (=> b!1166279 d!333308))

(assert (=> bs!284434 d!332794))

(declare-fun d!333310 () Bool)

(declare-fun lt!399718 () Bool)

(assert (=> d!333310 (= lt!399718 (select (content!1608 lt!398620) lt!399245))))

(declare-fun e!748038 () Bool)

(assert (=> d!333310 (= lt!399718 e!748038)))

(declare-fun res!527069 () Bool)

(assert (=> d!333310 (=> (not res!527069) (not e!748038))))

(assert (=> d!333310 (= res!527069 ((_ is Cons!11519) lt!398620))))

(assert (=> d!333310 (= (contains!1994 lt!398620 lt!399245) lt!399718)))

(declare-fun b!1167132 () Bool)

(declare-fun e!748037 () Bool)

(assert (=> b!1167132 (= e!748038 e!748037)))

(declare-fun res!527068 () Bool)

(assert (=> b!1167132 (=> res!527068 e!748037)))

(assert (=> b!1167132 (= res!527068 (= (h!16920 lt!398620) lt!399245))))

(declare-fun b!1167133 () Bool)

(assert (=> b!1167133 (= e!748037 (contains!1994 (t!110333 lt!398620) lt!399245))))

(assert (= (and d!333310 res!527069) b!1167132))

(assert (= (and b!1167132 (not res!527068)) b!1167133))

(assert (=> d!333310 m!1336477))

(declare-fun m!1338247 () Bool)

(assert (=> d!333310 m!1338247))

(declare-fun m!1338249 () Bool)

(assert (=> b!1167133 m!1338249))

(assert (=> d!332912 d!333310))

(assert (=> b!1166247 d!332796))

(declare-fun d!333314 () Bool)

(assert (=> d!333314 (= (list!4239 (singletonSeq!668 lt!398625)) (list!4242 (c!194629 (singletonSeq!668 lt!398625))))))

(declare-fun bs!284711 () Bool)

(assert (= bs!284711 d!333314))

(declare-fun m!1338251 () Bool)

(assert (=> bs!284711 m!1338251))

(assert (=> d!332886 d!333314))

(assert (=> d!332886 d!333086))

(declare-fun d!333316 () Bool)

(declare-fun lt!399719 () Int)

(assert (=> d!333316 (= lt!399719 (size!9071 (list!4239 (_1!6858 lt!399227))))))

(assert (=> d!333316 (= lt!399719 (size!9075 (c!194629 (_1!6858 lt!399227))))))

(assert (=> d!333316 (= (size!9067 (_1!6858 lt!399227)) lt!399719)))

(declare-fun bs!284712 () Bool)

(assert (= bs!284712 d!333316))

(assert (=> bs!284712 m!1337413))

(assert (=> bs!284712 m!1337413))

(declare-fun m!1338253 () Bool)

(assert (=> bs!284712 m!1338253))

(declare-fun m!1338255 () Bool)

(assert (=> bs!284712 m!1338255))

(assert (=> d!332886 d!333316))

(declare-fun d!333318 () Bool)

(declare-fun e!748039 () Bool)

(assert (=> d!333318 e!748039))

(declare-fun res!527070 () Bool)

(assert (=> d!333318 (=> (not res!527070) (not e!748039))))

(declare-fun lt!399720 () BalanceConc!7576)

(assert (=> d!333318 (= res!527070 (= (list!4239 lt!399720) (Cons!11519 lt!398625 Nil!11519)))))

(assert (=> d!333318 (= lt!399720 (singleton!300 lt!398625))))

(assert (=> d!333318 (= (singletonSeq!668 lt!398625) lt!399720)))

(declare-fun b!1167134 () Bool)

(assert (=> b!1167134 (= e!748039 (isBalanced!1060 (c!194629 lt!399720)))))

(assert (= (and d!333318 res!527070) b!1167134))

(declare-fun m!1338257 () Bool)

(assert (=> d!333318 m!1338257))

(declare-fun m!1338259 () Bool)

(assert (=> d!333318 m!1338259))

(declare-fun m!1338261 () Bool)

(assert (=> b!1167134 m!1338261))

(assert (=> d!332886 d!333318))

(declare-fun d!333320 () Bool)

(declare-fun lt!399721 () BalanceConc!7574)

(assert (=> d!333320 (= (list!4243 lt!399721) (printList!514 Lexer!1700 (list!4239 (singletonSeq!668 lt!398625))))))

(assert (=> d!333320 (= lt!399721 (printTailRec!496 Lexer!1700 (singletonSeq!668 lt!398625) 0 (BalanceConc!7575 Empty!3776)))))

(assert (=> d!333320 (= (print!641 Lexer!1700 (singletonSeq!668 lt!398625)) lt!399721)))

(declare-fun bs!284713 () Bool)

(assert (= bs!284713 d!333320))

(declare-fun m!1338263 () Bool)

(assert (=> bs!284713 m!1338263))

(assert (=> bs!284713 m!1336555))

(assert (=> bs!284713 m!1336557))

(assert (=> bs!284713 m!1336557))

(declare-fun m!1338265 () Bool)

(assert (=> bs!284713 m!1338265))

(assert (=> bs!284713 m!1336555))

(declare-fun m!1338267 () Bool)

(assert (=> bs!284713 m!1338267))

(assert (=> d!332886 d!333320))

(declare-fun b!1167135 () Bool)

(declare-fun e!748042 () Bool)

(declare-fun lt!399722 () tuple2!12022)

(assert (=> b!1167135 (= e!748042 (not (isEmpty!7010 (_1!6858 lt!399722))))))

(declare-fun b!1167136 () Bool)

(declare-fun e!748040 () Bool)

(assert (=> b!1167136 (= e!748040 (= (list!4243 (_2!6858 lt!399722)) (_2!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 lt!398625)))))))))

(declare-fun b!1167137 () Bool)

(declare-fun e!748041 () Bool)

(assert (=> b!1167137 (= e!748041 (= (_2!6858 lt!399722) (print!641 Lexer!1700 (singletonSeq!668 lt!398625))))))

(declare-fun d!333322 () Bool)

(assert (=> d!333322 e!748040))

(declare-fun res!527071 () Bool)

(assert (=> d!333322 (=> (not res!527071) (not e!748040))))

(assert (=> d!333322 (= res!527071 e!748041)))

(declare-fun c!194827 () Bool)

(assert (=> d!333322 (= c!194827 (> (size!9067 (_1!6858 lt!399722)) 0))))

(assert (=> d!333322 (= lt!399722 (lexTailRecV2!321 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398625)) (BalanceConc!7575 Empty!3776) (print!641 Lexer!1700 (singletonSeq!668 lt!398625)) (BalanceConc!7577 Empty!3777)))))

(assert (=> d!333322 (= (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398625))) lt!399722)))

(declare-fun b!1167138 () Bool)

(assert (=> b!1167138 (= e!748041 e!748042)))

(declare-fun res!527073 () Bool)

(assert (=> b!1167138 (= res!527073 (< (size!9066 (_2!6858 lt!399722)) (size!9066 (print!641 Lexer!1700 (singletonSeq!668 lt!398625)))))))

(assert (=> b!1167138 (=> (not res!527073) (not e!748042))))

(declare-fun b!1167139 () Bool)

(declare-fun res!527072 () Bool)

(assert (=> b!1167139 (=> (not res!527072) (not e!748040))))

(assert (=> b!1167139 (= res!527072 (= (list!4239 (_1!6858 lt!399722)) (_1!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 lt!398625)))))))))

(assert (= (and d!333322 c!194827) b!1167138))

(assert (= (and d!333322 (not c!194827)) b!1167137))

(assert (= (and b!1167138 res!527073) b!1167135))

(assert (= (and d!333322 res!527071) b!1167139))

(assert (= (and b!1167139 res!527072) b!1167136))

(declare-fun m!1338269 () Bool)

(assert (=> b!1167138 m!1338269))

(assert (=> b!1167138 m!1336549))

(declare-fun m!1338271 () Bool)

(assert (=> b!1167138 m!1338271))

(declare-fun m!1338273 () Bool)

(assert (=> b!1167136 m!1338273))

(assert (=> b!1167136 m!1336549))

(declare-fun m!1338275 () Bool)

(assert (=> b!1167136 m!1338275))

(assert (=> b!1167136 m!1338275))

(declare-fun m!1338277 () Bool)

(assert (=> b!1167136 m!1338277))

(declare-fun m!1338279 () Bool)

(assert (=> b!1167139 m!1338279))

(assert (=> b!1167139 m!1336549))

(assert (=> b!1167139 m!1338275))

(assert (=> b!1167139 m!1338275))

(assert (=> b!1167139 m!1338277))

(declare-fun m!1338281 () Bool)

(assert (=> b!1167135 m!1338281))

(declare-fun m!1338283 () Bool)

(assert (=> d!333322 m!1338283))

(assert (=> d!333322 m!1336549))

(assert (=> d!333322 m!1336549))

(declare-fun m!1338285 () Bool)

(assert (=> d!333322 m!1338285))

(assert (=> d!332886 d!333322))

(declare-fun d!333324 () Bool)

(assert (=> d!333324 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398625))))) (list!4242 (c!194629 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398625)))))))))

(declare-fun bs!284714 () Bool)

(assert (= bs!284714 d!333324))

(declare-fun m!1338287 () Bool)

(assert (=> bs!284714 m!1338287))

(assert (=> d!332886 d!333324))

(declare-fun d!333326 () Bool)

(declare-fun lt!399723 () Bool)

(assert (=> d!333326 (= lt!399723 (isEmpty!7011 (list!4243 (_2!6858 lt!398893))))))

(assert (=> d!333326 (= lt!399723 (isEmpty!7012 (c!194628 (_2!6858 lt!398893))))))

(assert (=> d!333326 (= (isEmpty!7005 (_2!6858 lt!398893)) lt!399723)))

(declare-fun bs!284715 () Bool)

(assert (= bs!284715 d!333326))

(declare-fun m!1338289 () Bool)

(assert (=> bs!284715 m!1338289))

(assert (=> bs!284715 m!1338289))

(declare-fun m!1338291 () Bool)

(assert (=> bs!284715 m!1338291))

(declare-fun m!1338293 () Bool)

(assert (=> bs!284715 m!1338293))

(assert (=> b!1166101 d!333326))

(declare-fun bs!284716 () Bool)

(declare-fun d!333328 () Bool)

(assert (= bs!284716 (and d!333328 d!333076)))

(declare-fun lambda!47924 () Int)

(assert (=> bs!284716 (= lambda!47924 lambda!47907)))

(declare-fun bs!284717 () Bool)

(assert (= bs!284717 (and d!333328 d!332714)))

(assert (=> bs!284717 (= lambda!47924 lambda!47877)))

(declare-fun bs!284718 () Bool)

(assert (= bs!284718 (and d!333328 d!332754)))

(assert (=> bs!284718 (= lambda!47924 lambda!47880)))

(declare-fun bs!284719 () Bool)

(assert (= bs!284719 (and d!333328 d!332758)))

(assert (=> bs!284719 (= lambda!47924 lambda!47881)))

(declare-fun bs!284720 () Bool)

(assert (= bs!284720 (and d!333328 d!332712)))

(assert (=> bs!284720 (= lambda!47924 lambda!47872)))

(declare-fun bs!284721 () Bool)

(assert (= bs!284721 (and d!333328 d!332732)))

(assert (=> bs!284721 (= lambda!47924 lambda!47878)))

(declare-fun bs!284722 () Bool)

(assert (= bs!284722 (and d!333328 d!332856)))

(assert (=> bs!284722 (= lambda!47924 lambda!47902)))

(declare-fun bs!284723 () Bool)

(assert (= bs!284723 (and d!333328 b!1166241)))

(assert (=> bs!284723 (= lambda!47924 lambda!47890)))

(declare-fun bs!284724 () Bool)

(assert (= bs!284724 (and d!333328 d!332834)))

(assert (=> bs!284724 (= lambda!47924 lambda!47891)))

(declare-fun bs!284725 () Bool)

(assert (= bs!284725 (and d!333328 d!332868)))

(assert (=> bs!284725 (= lambda!47924 lambda!47903)))

(declare-fun bs!284726 () Bool)

(assert (= bs!284726 (and d!333328 b!1166281)))

(assert (=> bs!284726 (= lambda!47924 lambda!47898)))

(declare-fun bs!284727 () Bool)

(assert (= bs!284727 (and d!333328 d!332796)))

(assert (=> bs!284727 (= lambda!47924 lambda!47883)))

(declare-fun bs!284728 () Bool)

(assert (= bs!284728 (and d!333328 b!1165777)))

(assert (=> bs!284728 (= lambda!47924 lambda!47859)))

(declare-fun bs!284729 () Bool)

(assert (= bs!284729 (and d!333328 d!332668)))

(assert (=> bs!284729 (= lambda!47924 lambda!47862)))

(declare-fun b!1167144 () Bool)

(declare-fun e!748047 () Bool)

(assert (=> b!1167144 (= e!748047 true)))

(declare-fun b!1167143 () Bool)

(declare-fun e!748046 () Bool)

(assert (=> b!1167143 (= e!748046 e!748047)))

(declare-fun b!1167142 () Bool)

(declare-fun e!748045 () Bool)

(assert (=> b!1167142 (= e!748045 e!748046)))

(assert (=> d!333328 e!748045))

(assert (= b!1167143 b!1167144))

(assert (= b!1167142 b!1167143))

(assert (= (and d!333328 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1167142))

(assert (=> b!1167144 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47924))))

(assert (=> b!1167144 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47924))))

(assert (=> d!333328 true))

(declare-fun lt!399724 () Bool)

(assert (=> d!333328 (= lt!399724 (forall!3024 (list!4239 lt!398609) lambda!47924))))

(declare-fun e!748043 () Bool)

(assert (=> d!333328 (= lt!399724 e!748043)))

(declare-fun res!527075 () Bool)

(assert (=> d!333328 (=> res!527075 e!748043)))

(assert (=> d!333328 (= res!527075 (not ((_ is Cons!11519) (list!4239 lt!398609))))))

(assert (=> d!333328 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333328 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (list!4239 lt!398609)) lt!399724)))

(declare-fun b!1167140 () Bool)

(declare-fun e!748044 () Bool)

(assert (=> b!1167140 (= e!748043 e!748044)))

(declare-fun res!527074 () Bool)

(assert (=> b!1167140 (=> (not res!527074) (not e!748044))))

(assert (=> b!1167140 (= res!527074 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (list!4239 lt!398609))))))

(declare-fun b!1167141 () Bool)

(assert (=> b!1167141 (= e!748044 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (list!4239 lt!398609))))))

(assert (= (and d!333328 (not res!527075)) b!1167140))

(assert (= (and b!1167140 res!527074) b!1167141))

(assert (=> d!333328 m!1335361))

(declare-fun m!1338295 () Bool)

(assert (=> d!333328 m!1338295))

(assert (=> d!333328 m!1335511))

(declare-fun m!1338297 () Bool)

(assert (=> b!1167140 m!1338297))

(declare-fun m!1338299 () Bool)

(assert (=> b!1167141 m!1338299))

(assert (=> b!1166050 d!333328))

(assert (=> b!1166050 d!332664))

(declare-fun d!333330 () Bool)

(declare-fun lt!399725 () Token!3676)

(assert (=> d!333330 (= lt!399725 (apply!2480 (list!4239 (_1!6858 lt!398936)) 0))))

(assert (=> d!333330 (= lt!399725 (apply!2483 (c!194629 (_1!6858 lt!398936)) 0))))

(declare-fun e!748048 () Bool)

(assert (=> d!333330 e!748048))

(declare-fun res!527076 () Bool)

(assert (=> d!333330 (=> (not res!527076) (not e!748048))))

(assert (=> d!333330 (= res!527076 (<= 0 0))))

(assert (=> d!333330 (= (apply!2479 (_1!6858 lt!398936) 0) lt!399725)))

(declare-fun b!1167145 () Bool)

(assert (=> b!1167145 (= e!748048 (< 0 (size!9067 (_1!6858 lt!398936))))))

(assert (= (and d!333330 res!527076) b!1167145))

(declare-fun m!1338301 () Bool)

(assert (=> d!333330 m!1338301))

(assert (=> d!333330 m!1338301))

(declare-fun m!1338303 () Bool)

(assert (=> d!333330 m!1338303))

(declare-fun m!1338305 () Bool)

(assert (=> d!333330 m!1338305))

(assert (=> b!1167145 m!1335997))

(assert (=> b!1166131 d!333330))

(assert (=> d!332878 d!332888))

(declare-fun d!333332 () Bool)

(assert (=> d!333332 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398607)))

(assert (=> d!333332 true))

(declare-fun _$77!537 () Unit!17605)

(assert (=> d!333332 (= (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398620 lt!398607) _$77!537)))

(declare-fun bs!284730 () Bool)

(assert (= bs!284730 d!333332))

(assert (=> bs!284730 m!1335339))

(assert (=> d!332878 d!333332))

(assert (=> d!332878 d!333086))

(declare-fun d!333334 () Bool)

(declare-fun lt!399726 () Int)

(assert (=> d!333334 (= lt!399726 (size!9071 (list!4239 lt!398609)))))

(assert (=> d!333334 (= lt!399726 (size!9075 (c!194629 lt!398609)))))

(assert (=> d!333334 (= (size!9067 lt!398609) lt!399726)))

(declare-fun bs!284731 () Bool)

(assert (= bs!284731 d!333334))

(assert (=> bs!284731 m!1335361))

(assert (=> bs!284731 m!1335361))

(declare-fun m!1338307 () Bool)

(assert (=> bs!284731 m!1338307))

(declare-fun m!1338309 () Bool)

(assert (=> bs!284731 m!1338309))

(assert (=> b!1166166 d!333334))

(assert (=> b!1166009 d!332754))

(declare-fun d!333336 () Bool)

(declare-fun res!527077 () Bool)

(declare-fun e!748049 () Bool)

(assert (=> d!333336 (=> res!527077 e!748049)))

(assert (=> d!333336 (= res!527077 ((_ is Nil!11519) (t!110333 lt!398621)))))

(assert (=> d!333336 (= (forall!3024 (t!110333 lt!398621) lambda!47859) e!748049)))

(declare-fun b!1167146 () Bool)

(declare-fun e!748050 () Bool)

(assert (=> b!1167146 (= e!748049 e!748050)))

(declare-fun res!527078 () Bool)

(assert (=> b!1167146 (=> (not res!527078) (not e!748050))))

(assert (=> b!1167146 (= res!527078 (dynLambda!5074 lambda!47859 (h!16920 (t!110333 lt!398621))))))

(declare-fun b!1167147 () Bool)

(assert (=> b!1167147 (= e!748050 (forall!3024 (t!110333 (t!110333 lt!398621)) lambda!47859))))

(assert (= (and d!333336 (not res!527077)) b!1167146))

(assert (= (and b!1167146 res!527078) b!1167147))

(declare-fun b_lambda!34791 () Bool)

(assert (=> (not b_lambda!34791) (not b!1167146)))

(declare-fun m!1338311 () Bool)

(assert (=> b!1167146 m!1338311))

(declare-fun m!1338313 () Bool)

(assert (=> b!1167147 m!1338313))

(assert (=> b!1165819 d!333336))

(declare-fun d!333338 () Bool)

(declare-fun lt!399729 () Int)

(assert (=> d!333338 (>= lt!399729 0)))

(declare-fun e!748051 () Int)

(assert (=> d!333338 (= lt!399729 e!748051)))

(declare-fun c!194828 () Bool)

(assert (=> d!333338 (= c!194828 ((_ is Nil!11519) lt!398622))))

(assert (=> d!333338 (= (size!9071 lt!398622) lt!399729)))

(declare-fun b!1167148 () Bool)

(assert (=> b!1167148 (= e!748051 0)))

(declare-fun b!1167149 () Bool)

(assert (=> b!1167149 (= e!748051 (+ 1 (size!9071 (t!110333 lt!398622))))))

(assert (= (and d!333338 c!194828) b!1167148))

(assert (= (and d!333338 (not c!194828)) b!1167149))

(assert (=> b!1167149 m!1337255))

(assert (=> b!1166370 d!333338))

(assert (=> b!1166489 d!332800))

(declare-fun d!333340 () Bool)

(declare-fun lt!399736 () Int)

(assert (=> d!333340 (= lt!399736 (size!9072 (list!4243 (charsOf!1068 (h!16920 (t!110333 lt!398622))))))))

(assert (=> d!333340 (= lt!399736 (size!9073 (c!194628 (charsOf!1068 (h!16920 (t!110333 lt!398622))))))))

(assert (=> d!333340 (= (size!9066 (charsOf!1068 (h!16920 (t!110333 lt!398622)))) lt!399736)))

(declare-fun bs!284732 () Bool)

(assert (= bs!284732 d!333340))

(assert (=> bs!284732 m!1336667))

(declare-fun m!1338315 () Bool)

(assert (=> bs!284732 m!1338315))

(assert (=> bs!284732 m!1338315))

(declare-fun m!1338317 () Bool)

(assert (=> bs!284732 m!1338317))

(declare-fun m!1338319 () Bool)

(assert (=> bs!284732 m!1338319))

(assert (=> b!1166489 d!333340))

(declare-fun d!333342 () Bool)

(declare-fun lt!399738 () Bool)

(declare-fun e!748057 () Bool)

(assert (=> d!333342 (= lt!399738 e!748057)))

(declare-fun res!527083 () Bool)

(assert (=> d!333342 (=> (not res!527083) (not e!748057))))

(assert (=> d!333342 (= res!527083 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398622))))))) (list!4239 (singletonSeq!668 (h!16920 (t!110333 lt!398622))))))))

(declare-fun e!748056 () Bool)

(assert (=> d!333342 (= lt!399738 e!748056)))

(declare-fun res!527084 () Bool)

(assert (=> d!333342 (=> (not res!527084) (not e!748056))))

(declare-fun lt!399737 () tuple2!12022)

(assert (=> d!333342 (= res!527084 (= (size!9067 (_1!6858 lt!399737)) 1))))

(assert (=> d!333342 (= lt!399737 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398622))))))))

(assert (=> d!333342 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333342 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398622))) lt!399738)))

(declare-fun b!1167154 () Bool)

(declare-fun res!527085 () Bool)

(assert (=> b!1167154 (=> (not res!527085) (not e!748056))))

(assert (=> b!1167154 (= res!527085 (= (apply!2479 (_1!6858 lt!399737) 0) (h!16920 (t!110333 lt!398622))))))

(declare-fun b!1167155 () Bool)

(assert (=> b!1167155 (= e!748056 (isEmpty!7005 (_2!6858 lt!399737)))))

(declare-fun b!1167156 () Bool)

(assert (=> b!1167156 (= e!748057 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398622))))))))))

(assert (= (and d!333342 res!527084) b!1167154))

(assert (= (and b!1167154 res!527085) b!1167155))

(assert (= (and d!333342 res!527083) b!1167156))

(assert (=> d!333342 m!1335511))

(declare-fun m!1338321 () Bool)

(assert (=> d!333342 m!1338321))

(declare-fun m!1338323 () Bool)

(assert (=> d!333342 m!1338323))

(declare-fun m!1338325 () Bool)

(assert (=> d!333342 m!1338325))

(declare-fun m!1338327 () Bool)

(assert (=> d!333342 m!1338327))

(declare-fun m!1338329 () Bool)

(assert (=> d!333342 m!1338329))

(declare-fun m!1338331 () Bool)

(assert (=> d!333342 m!1338331))

(assert (=> d!333342 m!1338327))

(assert (=> d!333342 m!1338321))

(assert (=> d!333342 m!1338327))

(declare-fun m!1338333 () Bool)

(assert (=> b!1167154 m!1338333))

(declare-fun m!1338335 () Bool)

(assert (=> b!1167155 m!1338335))

(assert (=> b!1167156 m!1338327))

(assert (=> b!1167156 m!1338327))

(assert (=> b!1167156 m!1338321))

(assert (=> b!1167156 m!1338321))

(assert (=> b!1167156 m!1338323))

(declare-fun m!1338337 () Bool)

(assert (=> b!1167156 m!1338337))

(assert (=> b!1166489 d!333342))

(declare-fun d!333344 () Bool)

(assert (=> d!333344 (= (separableTokensPredicate!130 Lexer!1700 (h!16920 lt!398622) (h!16920 (t!110333 lt!398622)) (rules!9572 thiss!10527)) (not (prefixMatchZipperSequence!91 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)) (++!2980 (charsOf!1068 (h!16920 lt!398622)) (singletonSeq!669 (apply!2484 (charsOf!1068 (h!16920 (t!110333 lt!398622))) 0))))))))

(declare-fun bs!284733 () Bool)

(assert (= bs!284733 d!333344))

(assert (=> bs!284733 m!1336667))

(declare-fun m!1338339 () Bool)

(assert (=> bs!284733 m!1338339))

(declare-fun m!1338341 () Bool)

(assert (=> bs!284733 m!1338341))

(declare-fun m!1338343 () Bool)

(assert (=> bs!284733 m!1338343))

(declare-fun m!1338345 () Bool)

(assert (=> bs!284733 m!1338345))

(assert (=> bs!284733 m!1336603))

(assert (=> bs!284733 m!1336667))

(assert (=> bs!284733 m!1338339))

(assert (=> bs!284733 m!1338343))

(assert (=> bs!284733 m!1336603))

(assert (=> bs!284733 m!1338345))

(declare-fun m!1338347 () Bool)

(assert (=> bs!284733 m!1338347))

(assert (=> bs!284733 m!1338341))

(assert (=> b!1166489 d!333344))

(declare-fun d!333346 () Bool)

(declare-fun lt!399741 () BalanceConc!7574)

(assert (=> d!333346 (= (list!4243 lt!399741) (originalCharacters!2561 (h!16920 (t!110333 lt!398622))))))

(assert (=> d!333346 (= lt!399741 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398622))))) (value!65196 (h!16920 (t!110333 lt!398622)))))))

(assert (=> d!333346 (= (charsOf!1068 (h!16920 (t!110333 lt!398622))) lt!399741)))

(declare-fun b_lambda!34793 () Bool)

(assert (=> (not b_lambda!34793) (not d!333346)))

(declare-fun tb!65857 () Bool)

(declare-fun t!110387 () Bool)

(assert (=> (and b!1166515 (= (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398622)))))) t!110387) tb!65857))

(declare-fun b!1167157 () Bool)

(declare-fun e!748058 () Bool)

(declare-fun tp!334275 () Bool)

(assert (=> b!1167157 (= e!748058 (and (inv!15175 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398622))))) (value!65196 (h!16920 (t!110333 lt!398622)))))) tp!334275))))

(declare-fun result!78822 () Bool)

(assert (=> tb!65857 (= result!78822 (and (inv!15176 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398622))))) (value!65196 (h!16920 (t!110333 lt!398622))))) e!748058))))

(assert (= tb!65857 b!1167157))

(declare-fun m!1338349 () Bool)

(assert (=> b!1167157 m!1338349))

(declare-fun m!1338351 () Bool)

(assert (=> tb!65857 m!1338351))

(assert (=> d!333346 t!110387))

(declare-fun b_and!80677 () Bool)

(assert (= b_and!80671 (and (=> t!110387 result!78822) b_and!80677)))

(declare-fun m!1338353 () Bool)

(assert (=> d!333346 m!1338353))

(declare-fun m!1338355 () Bool)

(assert (=> d!333346 m!1338355))

(assert (=> b!1166489 d!333346))

(declare-fun d!333348 () Bool)

(assert (=> d!333348 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398622)))))

(declare-fun lt!399742 () Unit!17605)

(assert (=> d!333348 (= lt!399742 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398622 (h!16920 (t!110333 lt!398622))))))

(assert (=> d!333348 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333348 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398622 (h!16920 (t!110333 lt!398622))) lt!399742)))

(declare-fun bs!284734 () Bool)

(assert (= bs!284734 d!333348))

(assert (=> bs!284734 m!1336013))

(declare-fun m!1338357 () Bool)

(assert (=> bs!284734 m!1338357))

(assert (=> bs!284734 m!1335511))

(assert (=> b!1166489 d!333348))

(declare-fun d!333350 () Bool)

(assert (=> d!333350 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398622))))

(declare-fun lt!399743 () Unit!17605)

(assert (=> d!333350 (= lt!399743 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398622 (h!16920 lt!398622)))))

(assert (=> d!333350 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333350 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398622 (h!16920 lt!398622)) lt!399743)))

(declare-fun bs!284735 () Bool)

(assert (= bs!284735 d!333350))

(assert (=> bs!284735 m!1335365))

(declare-fun m!1338359 () Bool)

(assert (=> bs!284735 m!1338359))

(assert (=> bs!284735 m!1335511))

(assert (=> b!1166489 d!333350))

(declare-fun d!333352 () Bool)

(declare-fun lt!399745 () Bool)

(declare-fun e!748060 () Bool)

(assert (=> d!333352 (= lt!399745 e!748060)))

(declare-fun res!527086 () Bool)

(assert (=> d!333352 (=> (not res!527086) (not e!748060))))

(assert (=> d!333352 (= res!527086 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398606))))))) (list!4239 (singletonSeq!668 (h!16920 (t!110333 lt!398606))))))))

(declare-fun e!748059 () Bool)

(assert (=> d!333352 (= lt!399745 e!748059)))

(declare-fun res!527087 () Bool)

(assert (=> d!333352 (=> (not res!527087) (not e!748059))))

(declare-fun lt!399744 () tuple2!12022)

(assert (=> d!333352 (= res!527087 (= (size!9067 (_1!6858 lt!399744)) 1))))

(assert (=> d!333352 (= lt!399744 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398606))))))))

(assert (=> d!333352 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333352 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398606))) lt!399745)))

(declare-fun b!1167158 () Bool)

(declare-fun res!527088 () Bool)

(assert (=> b!1167158 (=> (not res!527088) (not e!748059))))

(assert (=> b!1167158 (= res!527088 (= (apply!2479 (_1!6858 lt!399744) 0) (h!16920 (t!110333 lt!398606))))))

(declare-fun b!1167159 () Bool)

(assert (=> b!1167159 (= e!748059 (isEmpty!7005 (_2!6858 lt!399744)))))

(declare-fun b!1167160 () Bool)

(assert (=> b!1167160 (= e!748060 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398606))))))))))

(assert (= (and d!333352 res!527087) b!1167158))

(assert (= (and b!1167158 res!527088) b!1167159))

(assert (= (and d!333352 res!527086) b!1167160))

(assert (=> d!333352 m!1335511))

(declare-fun m!1338361 () Bool)

(assert (=> d!333352 m!1338361))

(declare-fun m!1338363 () Bool)

(assert (=> d!333352 m!1338363))

(declare-fun m!1338365 () Bool)

(assert (=> d!333352 m!1338365))

(declare-fun m!1338367 () Bool)

(assert (=> d!333352 m!1338367))

(declare-fun m!1338369 () Bool)

(assert (=> d!333352 m!1338369))

(declare-fun m!1338371 () Bool)

(assert (=> d!333352 m!1338371))

(assert (=> d!333352 m!1338367))

(assert (=> d!333352 m!1338361))

(assert (=> d!333352 m!1338367))

(declare-fun m!1338373 () Bool)

(assert (=> b!1167158 m!1338373))

(declare-fun m!1338375 () Bool)

(assert (=> b!1167159 m!1338375))

(assert (=> b!1167160 m!1338367))

(assert (=> b!1167160 m!1338367))

(assert (=> b!1167160 m!1338361))

(assert (=> b!1167160 m!1338361))

(assert (=> b!1167160 m!1338363))

(declare-fun m!1338377 () Bool)

(assert (=> b!1167160 m!1338377))

(assert (=> b!1165971 d!333352))

(declare-fun d!333354 () Bool)

(declare-fun lt!399751 () BalanceConc!7574)

(assert (=> d!333354 (= (list!4243 lt!399751) (printList!514 Lexer!1700 (list!4239 (singletonSeq!668 (h!16920 lt!398606)))))))

(assert (=> d!333354 (= lt!399751 (printTailRec!496 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606)) 0 (BalanceConc!7575 Empty!3776)))))

(assert (=> d!333354 (= (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606))) lt!399751)))

(declare-fun bs!284738 () Bool)

(assert (= bs!284738 d!333354))

(declare-fun m!1338379 () Bool)

(assert (=> bs!284738 m!1338379))

(assert (=> bs!284738 m!1335999))

(assert (=> bs!284738 m!1336001))

(assert (=> bs!284738 m!1336001))

(declare-fun m!1338381 () Bool)

(assert (=> bs!284738 m!1338381))

(assert (=> bs!284738 m!1335999))

(declare-fun m!1338383 () Bool)

(assert (=> bs!284738 m!1338383))

(assert (=> d!332794 d!333354))

(assert (=> d!332794 d!333086))

(declare-fun b!1167166 () Bool)

(declare-fun e!748068 () Bool)

(declare-fun lt!399752 () tuple2!12022)

(assert (=> b!1167166 (= e!748068 (not (isEmpty!7010 (_1!6858 lt!399752))))))

(declare-fun e!748066 () Bool)

(declare-fun b!1167167 () Bool)

(assert (=> b!1167167 (= e!748066 (= (list!4243 (_2!6858 lt!399752)) (_2!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606))))))))))

(declare-fun b!1167168 () Bool)

(declare-fun e!748067 () Bool)

(assert (=> b!1167168 (= e!748067 (= (_2!6858 lt!399752) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606)))))))

(declare-fun d!333356 () Bool)

(assert (=> d!333356 e!748066))

(declare-fun res!527091 () Bool)

(assert (=> d!333356 (=> (not res!527091) (not e!748066))))

(assert (=> d!333356 (= res!527091 e!748067)))

(declare-fun c!194829 () Bool)

(assert (=> d!333356 (= c!194829 (> (size!9067 (_1!6858 lt!399752)) 0))))

(assert (=> d!333356 (= lt!399752 (lexTailRecV2!321 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606))) (BalanceConc!7575 Empty!3776) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606))) (BalanceConc!7577 Empty!3777)))))

(assert (=> d!333356 (= (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606)))) lt!399752)))

(declare-fun b!1167169 () Bool)

(assert (=> b!1167169 (= e!748067 e!748068)))

(declare-fun res!527093 () Bool)

(assert (=> b!1167169 (= res!527093 (< (size!9066 (_2!6858 lt!399752)) (size!9066 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606))))))))

(assert (=> b!1167169 (=> (not res!527093) (not e!748068))))

(declare-fun b!1167170 () Bool)

(declare-fun res!527092 () Bool)

(assert (=> b!1167170 (=> (not res!527092) (not e!748066))))

(assert (=> b!1167170 (= res!527092 (= (list!4239 (_1!6858 lt!399752)) (_1!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606))))))))))

(assert (= (and d!333356 c!194829) b!1167169))

(assert (= (and d!333356 (not c!194829)) b!1167168))

(assert (= (and b!1167169 res!527093) b!1167166))

(assert (= (and d!333356 res!527091) b!1167170))

(assert (= (and b!1167170 res!527092) b!1167167))

(declare-fun m!1338385 () Bool)

(assert (=> b!1167169 m!1338385))

(assert (=> b!1167169 m!1335993))

(declare-fun m!1338387 () Bool)

(assert (=> b!1167169 m!1338387))

(declare-fun m!1338389 () Bool)

(assert (=> b!1167167 m!1338389))

(assert (=> b!1167167 m!1335993))

(declare-fun m!1338391 () Bool)

(assert (=> b!1167167 m!1338391))

(assert (=> b!1167167 m!1338391))

(declare-fun m!1338393 () Bool)

(assert (=> b!1167167 m!1338393))

(declare-fun m!1338395 () Bool)

(assert (=> b!1167170 m!1338395))

(assert (=> b!1167170 m!1335993))

(assert (=> b!1167170 m!1338391))

(assert (=> b!1167170 m!1338391))

(assert (=> b!1167170 m!1338393))

(declare-fun m!1338397 () Bool)

(assert (=> b!1167166 m!1338397))

(declare-fun m!1338399 () Bool)

(assert (=> d!333356 m!1338399))

(assert (=> d!333356 m!1335993))

(assert (=> d!333356 m!1335993))

(declare-fun m!1338401 () Bool)

(assert (=> d!333356 m!1338401))

(assert (=> d!332794 d!333356))

(declare-fun d!333358 () Bool)

(declare-fun lt!399753 () Int)

(assert (=> d!333358 (= lt!399753 (size!9071 (list!4239 (_1!6858 lt!398936))))))

(assert (=> d!333358 (= lt!399753 (size!9075 (c!194629 (_1!6858 lt!398936))))))

(assert (=> d!333358 (= (size!9067 (_1!6858 lt!398936)) lt!399753)))

(declare-fun bs!284761 () Bool)

(assert (= bs!284761 d!333358))

(assert (=> bs!284761 m!1338301))

(assert (=> bs!284761 m!1338301))

(declare-fun m!1338403 () Bool)

(assert (=> bs!284761 m!1338403))

(declare-fun m!1338405 () Bool)

(assert (=> bs!284761 m!1338405))

(assert (=> d!332794 d!333358))

(declare-fun d!333360 () Bool)

(declare-fun e!748069 () Bool)

(assert (=> d!333360 e!748069))

(declare-fun res!527094 () Bool)

(assert (=> d!333360 (=> (not res!527094) (not e!748069))))

(declare-fun lt!399754 () BalanceConc!7576)

(assert (=> d!333360 (= res!527094 (= (list!4239 lt!399754) (Cons!11519 (h!16920 lt!398606) Nil!11519)))))

(assert (=> d!333360 (= lt!399754 (singleton!300 (h!16920 lt!398606)))))

(assert (=> d!333360 (= (singletonSeq!668 (h!16920 lt!398606)) lt!399754)))

(declare-fun b!1167171 () Bool)

(assert (=> b!1167171 (= e!748069 (isBalanced!1060 (c!194629 lt!399754)))))

(assert (= (and d!333360 res!527094) b!1167171))

(declare-fun m!1338407 () Bool)

(assert (=> d!333360 m!1338407))

(declare-fun m!1338409 () Bool)

(assert (=> d!333360 m!1338409))

(declare-fun m!1338411 () Bool)

(assert (=> b!1167171 m!1338411))

(assert (=> d!332794 d!333360))

(declare-fun d!333362 () Bool)

(assert (=> d!333362 (= (list!4239 (singletonSeq!668 (h!16920 lt!398606))) (list!4242 (c!194629 (singletonSeq!668 (h!16920 lt!398606)))))))

(declare-fun bs!284762 () Bool)

(assert (= bs!284762 d!333362))

(declare-fun m!1338413 () Bool)

(assert (=> bs!284762 m!1338413))

(assert (=> d!332794 d!333362))

(declare-fun d!333364 () Bool)

(assert (=> d!333364 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606)))))) (list!4242 (c!194629 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606))))))))))

(declare-fun bs!284763 () Bool)

(assert (= bs!284763 d!333364))

(declare-fun m!1338415 () Bool)

(assert (=> bs!284763 m!1338415))

(assert (=> d!332794 d!333364))

(declare-fun b!1167172 () Bool)

(declare-fun e!748072 () Int)

(assert (=> b!1167172 (= e!748072 (- to!267 from!787))))

(declare-fun d!333366 () Bool)

(declare-fun e!748070 () Bool)

(assert (=> d!333366 e!748070))

(declare-fun res!527095 () Bool)

(assert (=> d!333366 (=> (not res!527095) (not e!748070))))

(declare-fun lt!399755 () List!11543)

(assert (=> d!333366 (= res!527095 (= ((_ map implies) (content!1608 lt!399755) (content!1608 (drop!482 lt!398620 from!787))) ((as const (InoxSet Token!3676)) true)))))

(declare-fun e!748071 () List!11543)

(assert (=> d!333366 (= lt!399755 e!748071)))

(declare-fun c!194832 () Bool)

(assert (=> d!333366 (= c!194832 (or ((_ is Nil!11519) (drop!482 lt!398620 from!787)) (<= (- to!267 from!787) 0)))))

(assert (=> d!333366 (= (take!72 (drop!482 lt!398620 from!787) (- to!267 from!787)) lt!399755)))

(declare-fun b!1167173 () Bool)

(assert (=> b!1167173 (= e!748072 (size!9071 (drop!482 lt!398620 from!787)))))

(declare-fun b!1167174 () Bool)

(declare-fun e!748073 () Int)

(assert (=> b!1167174 (= e!748070 (= (size!9071 lt!399755) e!748073))))

(declare-fun c!194830 () Bool)

(assert (=> b!1167174 (= c!194830 (<= (- to!267 from!787) 0))))

(declare-fun b!1167175 () Bool)

(assert (=> b!1167175 (= e!748071 Nil!11519)))

(declare-fun b!1167176 () Bool)

(assert (=> b!1167176 (= e!748073 0)))

(declare-fun b!1167177 () Bool)

(assert (=> b!1167177 (= e!748071 (Cons!11519 (h!16920 (drop!482 lt!398620 from!787)) (take!72 (t!110333 (drop!482 lt!398620 from!787)) (- (- to!267 from!787) 1))))))

(declare-fun b!1167178 () Bool)

(assert (=> b!1167178 (= e!748073 e!748072)))

(declare-fun c!194831 () Bool)

(assert (=> b!1167178 (= c!194831 (>= (- to!267 from!787) (size!9071 (drop!482 lt!398620 from!787))))))

(assert (= (and d!333366 c!194832) b!1167175))

(assert (= (and d!333366 (not c!194832)) b!1167177))

(assert (= (and d!333366 res!527095) b!1167174))

(assert (= (and b!1167174 c!194830) b!1167176))

(assert (= (and b!1167174 (not c!194830)) b!1167178))

(assert (= (and b!1167178 c!194831) b!1167173))

(assert (= (and b!1167178 (not c!194831)) b!1167172))

(declare-fun m!1338425 () Bool)

(assert (=> b!1167177 m!1338425))

(declare-fun m!1338427 () Bool)

(assert (=> b!1167174 m!1338427))

(assert (=> b!1167173 m!1335389))

(declare-fun m!1338429 () Bool)

(assert (=> b!1167173 m!1338429))

(assert (=> b!1167178 m!1335389))

(assert (=> b!1167178 m!1338429))

(declare-fun m!1338431 () Bool)

(assert (=> d!333366 m!1338431))

(assert (=> d!333366 m!1335389))

(declare-fun m!1338433 () Bool)

(assert (=> d!333366 m!1338433))

(assert (=> d!332658 d!333366))

(assert (=> d!332658 d!332852))

(assert (=> b!1165839 d!332770))

(declare-fun b!1167179 () Bool)

(declare-fun e!748075 () Bool)

(assert (=> b!1167179 (= e!748075 (not (isEmpty!7013 (right!10404 (c!194629 (tokens!1624 thiss!10527))))))))

(declare-fun b!1167180 () Bool)

(declare-fun res!527098 () Bool)

(assert (=> b!1167180 (=> (not res!527098) (not e!748075))))

(assert (=> b!1167180 (= res!527098 (not (isEmpty!7013 (left!10074 (c!194629 (tokens!1624 thiss!10527))))))))

(declare-fun b!1167181 () Bool)

(declare-fun res!527100 () Bool)

(assert (=> b!1167181 (=> (not res!527100) (not e!748075))))

(assert (=> b!1167181 (= res!527100 (<= (- (height!513 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) (height!513 (right!10404 (c!194629 (tokens!1624 thiss!10527))))) 1))))

(declare-fun b!1167182 () Bool)

(declare-fun res!527097 () Bool)

(assert (=> b!1167182 (=> (not res!527097) (not e!748075))))

(assert (=> b!1167182 (= res!527097 (isBalanced!1060 (right!10404 (c!194629 (tokens!1624 thiss!10527)))))))

(declare-fun d!333370 () Bool)

(declare-fun res!527096 () Bool)

(declare-fun e!748074 () Bool)

(assert (=> d!333370 (=> res!527096 e!748074)))

(assert (=> d!333370 (= res!527096 (not ((_ is Node!3777) (c!194629 (tokens!1624 thiss!10527)))))))

(assert (=> d!333370 (= (isBalanced!1060 (c!194629 (tokens!1624 thiss!10527))) e!748074)))

(declare-fun b!1167183 () Bool)

(assert (=> b!1167183 (= e!748074 e!748075)))

(declare-fun res!527101 () Bool)

(assert (=> b!1167183 (=> (not res!527101) (not e!748075))))

(assert (=> b!1167183 (= res!527101 (<= (- 1) (- (height!513 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) (height!513 (right!10404 (c!194629 (tokens!1624 thiss!10527)))))))))

(declare-fun b!1167184 () Bool)

(declare-fun res!527099 () Bool)

(assert (=> b!1167184 (=> (not res!527099) (not e!748075))))

(assert (=> b!1167184 (= res!527099 (isBalanced!1060 (left!10074 (c!194629 (tokens!1624 thiss!10527)))))))

(assert (= (and d!333370 (not res!527096)) b!1167183))

(assert (= (and b!1167183 res!527101) b!1167181))

(assert (= (and b!1167181 res!527100) b!1167184))

(assert (= (and b!1167184 res!527099) b!1167182))

(assert (= (and b!1167182 res!527097) b!1167180))

(assert (= (and b!1167180 res!527098) b!1167179))

(assert (=> b!1167181 m!1337823))

(assert (=> b!1167181 m!1337825))

(declare-fun m!1338435 () Bool)

(assert (=> b!1167184 m!1338435))

(declare-fun m!1338437 () Bool)

(assert (=> b!1167179 m!1338437))

(declare-fun m!1338439 () Bool)

(assert (=> b!1167182 m!1338439))

(assert (=> b!1167183 m!1337823))

(assert (=> b!1167183 m!1337825))

(declare-fun m!1338441 () Bool)

(assert (=> b!1167180 m!1338441))

(assert (=> b!1165812 d!333370))

(declare-fun d!333374 () Bool)

(declare-fun res!527104 () Bool)

(declare-fun e!748078 () Bool)

(assert (=> d!333374 (=> res!527104 e!748078)))

(assert (=> d!333374 (= res!527104 (or (not ((_ is Cons!11519) (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))))) (not ((_ is Cons!11519) (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))))))))))

(assert (=> d!333374 (= (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))) (rules!9572 thiss!10527)) e!748078)))

(declare-fun b!1167187 () Bool)

(declare-fun e!748079 () Bool)

(assert (=> b!1167187 (= e!748078 e!748079)))

(declare-fun res!527105 () Bool)

(assert (=> b!1167187 (=> (not res!527105) (not e!748079))))

(assert (=> b!1167187 (= res!527105 (separableTokensPredicate!130 Lexer!1700 (h!16920 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606)))) (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))))) (rules!9572 thiss!10527)))))

(declare-fun lt!399760 () Unit!17605)

(declare-fun Unit!17670 () Unit!17605)

(assert (=> b!1167187 (= lt!399760 Unit!17670)))

(assert (=> b!1167187 (> (size!9066 (charsOf!1068 (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))))))) 0)))

(declare-fun lt!399758 () Unit!17605)

(declare-fun Unit!17671 () Unit!17605)

(assert (=> b!1167187 (= lt!399758 Unit!17671)))

(assert (=> b!1167187 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))))))))

(declare-fun lt!399762 () Unit!17605)

(declare-fun Unit!17672 () Unit!17605)

(assert (=> b!1167187 (= lt!399762 Unit!17672)))

(assert (=> b!1167187 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606)))))))

(declare-fun lt!399761 () Unit!17605)

(declare-fun lt!399757 () Unit!17605)

(assert (=> b!1167187 (= lt!399761 lt!399757)))

(assert (=> b!1167187 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))))))))

(assert (=> b!1167187 (= lt!399757 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))) (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606)))))))))

(declare-fun lt!399756 () Unit!17605)

(declare-fun lt!399759 () Unit!17605)

(assert (=> b!1167187 (= lt!399756 lt!399759)))

(assert (=> b!1167187 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606)))))))

(assert (=> b!1167187 (= lt!399759 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))) (h!16920 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))))))))

(declare-fun b!1167188 () Bool)

(assert (=> b!1167188 (= e!748079 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (Cons!11519 (h!16920 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606))))) (t!110333 (t!110333 (Cons!11519 (h!16920 (t!110333 lt!398606)) (t!110333 (t!110333 lt!398606)))))) (rules!9572 thiss!10527)))))

(assert (= (and d!333374 (not res!527104)) b!1167187))

(assert (= (and b!1167187 res!527105) b!1167188))

(declare-fun m!1338453 () Bool)

(assert (=> b!1167187 m!1338453))

(declare-fun m!1338457 () Bool)

(assert (=> b!1167187 m!1338457))

(declare-fun m!1338461 () Bool)

(assert (=> b!1167187 m!1338461))

(declare-fun m!1338463 () Bool)

(assert (=> b!1167187 m!1338463))

(declare-fun m!1338465 () Bool)

(assert (=> b!1167187 m!1338465))

(assert (=> b!1167187 m!1338457))

(declare-fun m!1338467 () Bool)

(assert (=> b!1167187 m!1338467))

(declare-fun m!1338469 () Bool)

(assert (=> b!1167187 m!1338469))

(declare-fun m!1338473 () Bool)

(assert (=> b!1167188 m!1338473))

(assert (=> b!1166117 d!333374))

(assert (=> b!1165962 d!333086))

(assert (=> b!1166018 d!333086))

(assert (=> d!332920 d!333194))

(assert (=> d!332920 d!333190))

(assert (=> d!332920 d!333086))

(assert (=> d!332920 d!333192))

(declare-fun d!333384 () Bool)

(declare-fun lt!399766 () Int)

(assert (=> d!333384 (= lt!399766 (size!9071 (list!4239 (_1!6858 lt!399247))))))

(assert (=> d!333384 (= lt!399766 (size!9075 (c!194629 (_1!6858 lt!399247))))))

(assert (=> d!333384 (= (size!9067 (_1!6858 lt!399247)) lt!399766)))

(declare-fun bs!284767 () Bool)

(assert (= bs!284767 d!333384))

(declare-fun m!1338477 () Bool)

(assert (=> bs!284767 m!1338477))

(assert (=> bs!284767 m!1338477))

(declare-fun m!1338479 () Bool)

(assert (=> bs!284767 m!1338479))

(declare-fun m!1338481 () Bool)

(assert (=> bs!284767 m!1338481))

(assert (=> d!332920 d!333384))

(declare-fun d!333388 () Bool)

(assert (=> d!333388 (= (list!4239 (singletonSeq!668 (h!16920 lt!398620))) (list!4242 (c!194629 (singletonSeq!668 (h!16920 lt!398620)))))))

(declare-fun bs!284769 () Bool)

(assert (= bs!284769 d!333388))

(declare-fun m!1338489 () Bool)

(assert (=> bs!284769 m!1338489))

(assert (=> d!332920 d!333388))

(declare-fun d!333390 () Bool)

(assert (=> d!333390 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620)))))) (list!4242 (c!194629 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398620))))))))))

(declare-fun bs!284770 () Bool)

(assert (= bs!284770 d!333390))

(declare-fun m!1338491 () Bool)

(assert (=> bs!284770 m!1338491))

(assert (=> d!332920 d!333390))

(declare-fun d!333394 () Bool)

(declare-fun lt!399768 () Int)

(assert (=> d!333394 (>= lt!399768 0)))

(declare-fun e!748084 () Int)

(assert (=> d!333394 (= lt!399768 e!748084)))

(declare-fun c!194834 () Bool)

(assert (=> d!333394 (= c!194834 ((_ is Nil!11519) lt!399246))))

(assert (=> d!333394 (= (size!9071 lt!399246) lt!399768)))

(declare-fun b!1167194 () Bool)

(assert (=> b!1167194 (= e!748084 0)))

(declare-fun b!1167195 () Bool)

(assert (=> b!1167195 (= e!748084 (+ 1 (size!9071 (t!110333 lt!399246))))))

(assert (= (and d!333394 c!194834) b!1167194))

(assert (= (and d!333394 (not c!194834)) b!1167195))

(declare-fun m!1338493 () Bool)

(assert (=> b!1167195 m!1338493))

(assert (=> b!1166480 d!333394))

(assert (=> b!1166024 d!332790))

(assert (=> b!1165966 d!332790))

(assert (=> b!1166449 d!333172))

(declare-fun d!333396 () Bool)

(assert (=> d!333396 (= (head!2102 (drop!482 lt!398859 lt!398863)) (h!16920 (drop!482 lt!398859 lt!398863)))))

(assert (=> b!1166020 d!333396))

(declare-fun b!1167196 () Bool)

(declare-fun e!748088 () Int)

(declare-fun call!82192 () Int)

(assert (=> b!1167196 (= e!748088 call!82192)))

(declare-fun b!1167197 () Bool)

(declare-fun e!748087 () List!11543)

(declare-fun e!748085 () List!11543)

(assert (=> b!1167197 (= e!748087 e!748085)))

(declare-fun c!194838 () Bool)

(assert (=> b!1167197 (= c!194838 (<= 1 0))))

(declare-fun b!1167198 () Bool)

(declare-fun e!748089 () Int)

(assert (=> b!1167198 (= e!748088 e!748089)))

(declare-fun c!194835 () Bool)

(assert (=> b!1167198 (= c!194835 (>= 1 call!82192))))

(declare-fun b!1167199 () Bool)

(declare-fun e!748086 () Bool)

(declare-fun lt!399769 () List!11543)

(assert (=> b!1167199 (= e!748086 (= (size!9071 lt!399769) e!748088))))

(declare-fun c!194836 () Bool)

(assert (=> b!1167199 (= c!194836 (<= 1 0))))

(declare-fun b!1167200 () Bool)

(assert (=> b!1167200 (= e!748087 Nil!11519)))

(declare-fun b!1167201 () Bool)

(assert (=> b!1167201 (= e!748089 (- call!82192 1))))

(declare-fun b!1167202 () Bool)

(assert (=> b!1167202 (= e!748085 lt!398835)))

(declare-fun b!1167204 () Bool)

(assert (=> b!1167204 (= e!748085 (drop!482 (t!110333 lt!398835) (- 1 1)))))

(declare-fun bm!82187 () Bool)

(assert (=> bm!82187 (= call!82192 (size!9071 lt!398835))))

(declare-fun d!333398 () Bool)

(assert (=> d!333398 e!748086))

(declare-fun res!527109 () Bool)

(assert (=> d!333398 (=> (not res!527109) (not e!748086))))

(assert (=> d!333398 (= res!527109 (= ((_ map implies) (content!1608 lt!399769) (content!1608 lt!398835)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333398 (= lt!399769 e!748087)))

(declare-fun c!194837 () Bool)

(assert (=> d!333398 (= c!194837 ((_ is Nil!11519) lt!398835))))

(assert (=> d!333398 (= (drop!482 lt!398835 1) lt!399769)))

(declare-fun b!1167203 () Bool)

(assert (=> b!1167203 (= e!748089 0)))

(assert (= (and d!333398 c!194837) b!1167200))

(assert (= (and d!333398 (not c!194837)) b!1167197))

(assert (= (and b!1167197 c!194838) b!1167202))

(assert (= (and b!1167197 (not c!194838)) b!1167204))

(assert (= (and d!333398 res!527109) b!1167199))

(assert (= (and b!1167199 c!194836) b!1167196))

(assert (= (and b!1167199 (not c!194836)) b!1167198))

(assert (= (and b!1167198 c!194835) b!1167203))

(assert (= (and b!1167198 (not c!194835)) b!1167201))

(assert (= (or b!1167196 b!1167198 b!1167201) bm!82187))

(declare-fun m!1338499 () Bool)

(assert (=> b!1167199 m!1338499))

(declare-fun m!1338501 () Bool)

(assert (=> b!1167204 m!1338501))

(declare-fun m!1338503 () Bool)

(assert (=> bm!82187 m!1338503))

(declare-fun m!1338505 () Bool)

(assert (=> d!333398 m!1338505))

(declare-fun m!1338507 () Bool)

(assert (=> d!333398 m!1338507))

(assert (=> b!1166020 d!333398))

(assert (=> b!1166020 d!332740))

(declare-fun d!333404 () Bool)

(assert (=> d!333404 (= (tail!1686 (drop!482 lt!398857 1)) (t!110333 (drop!482 lt!398857 1)))))

(assert (=> b!1166020 d!333404))

(declare-fun b!1167205 () Bool)

(declare-fun e!748093 () Int)

(declare-fun call!82193 () Int)

(assert (=> b!1167205 (= e!748093 call!82193)))

(declare-fun b!1167206 () Bool)

(declare-fun e!748092 () List!11543)

(declare-fun e!748090 () List!11543)

(assert (=> b!1167206 (= e!748092 e!748090)))

(declare-fun c!194842 () Bool)

(assert (=> b!1167206 (= c!194842 (<= (+ 1 1) 0))))

(declare-fun b!1167207 () Bool)

(declare-fun e!748094 () Int)

(assert (=> b!1167207 (= e!748093 e!748094)))

(declare-fun c!194839 () Bool)

(assert (=> b!1167207 (= c!194839 (>= (+ 1 1) call!82193))))

(declare-fun b!1167208 () Bool)

(declare-fun e!748091 () Bool)

(declare-fun lt!399770 () List!11543)

(assert (=> b!1167208 (= e!748091 (= (size!9071 lt!399770) e!748093))))

(declare-fun c!194840 () Bool)

(assert (=> b!1167208 (= c!194840 (<= (+ 1 1) 0))))

(declare-fun b!1167209 () Bool)

(assert (=> b!1167209 (= e!748092 Nil!11519)))

(declare-fun b!1167210 () Bool)

(assert (=> b!1167210 (= e!748094 (- call!82193 (+ 1 1)))))

(declare-fun b!1167211 () Bool)

(assert (=> b!1167211 (= e!748090 lt!398857)))

(declare-fun b!1167213 () Bool)

(assert (=> b!1167213 (= e!748090 (drop!482 (t!110333 lt!398857) (- (+ 1 1) 1)))))

(declare-fun bm!82188 () Bool)

(assert (=> bm!82188 (= call!82193 (size!9071 lt!398857))))

(declare-fun d!333406 () Bool)

(assert (=> d!333406 e!748091))

(declare-fun res!527110 () Bool)

(assert (=> d!333406 (=> (not res!527110) (not e!748091))))

(assert (=> d!333406 (= res!527110 (= ((_ map implies) (content!1608 lt!399770) (content!1608 lt!398857)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333406 (= lt!399770 e!748092)))

(declare-fun c!194841 () Bool)

(assert (=> d!333406 (= c!194841 ((_ is Nil!11519) lt!398857))))

(assert (=> d!333406 (= (drop!482 lt!398857 (+ 1 1)) lt!399770)))

(declare-fun b!1167212 () Bool)

(assert (=> b!1167212 (= e!748094 0)))

(assert (= (and d!333406 c!194841) b!1167209))

(assert (= (and d!333406 (not c!194841)) b!1167206))

(assert (= (and b!1167206 c!194842) b!1167211))

(assert (= (and b!1167206 (not c!194842)) b!1167213))

(assert (= (and d!333406 res!527110) b!1167208))

(assert (= (and b!1167208 c!194840) b!1167205))

(assert (= (and b!1167208 (not c!194840)) b!1167207))

(assert (= (and b!1167207 c!194839) b!1167212))

(assert (= (and b!1167207 (not c!194839)) b!1167210))

(assert (= (or b!1167205 b!1167207 b!1167210) bm!82188))

(declare-fun m!1338509 () Bool)

(assert (=> b!1167208 m!1338509))

(declare-fun m!1338511 () Bool)

(assert (=> b!1167213 m!1338511))

(declare-fun m!1338513 () Bool)

(assert (=> bm!82188 m!1338513))

(declare-fun m!1338515 () Bool)

(assert (=> d!333406 m!1338515))

(declare-fun m!1338517 () Bool)

(assert (=> d!333406 m!1338517))

(assert (=> b!1166020 d!333406))

(declare-fun b!1167218 () Bool)

(declare-fun e!748099 () Int)

(declare-fun call!82194 () Int)

(assert (=> b!1167218 (= e!748099 call!82194)))

(declare-fun b!1167219 () Bool)

(declare-fun e!748098 () List!11543)

(declare-fun e!748096 () List!11543)

(assert (=> b!1167219 (= e!748098 e!748096)))

(declare-fun c!194847 () Bool)

(assert (=> b!1167219 (= c!194847 (<= lt!398837 0))))

(declare-fun b!1167220 () Bool)

(declare-fun e!748100 () Int)

(assert (=> b!1167220 (= e!748099 e!748100)))

(declare-fun c!194844 () Bool)

(assert (=> b!1167220 (= c!194844 (>= lt!398837 call!82194))))

(declare-fun b!1167221 () Bool)

(declare-fun e!748097 () Bool)

(declare-fun lt!399771 () List!11543)

(assert (=> b!1167221 (= e!748097 (= (size!9071 lt!399771) e!748099))))

(declare-fun c!194845 () Bool)

(assert (=> b!1167221 (= c!194845 (<= lt!398837 0))))

(declare-fun b!1167222 () Bool)

(assert (=> b!1167222 (= e!748098 Nil!11519)))

(declare-fun b!1167223 () Bool)

(assert (=> b!1167223 (= e!748100 (- call!82194 lt!398837))))

(declare-fun b!1167224 () Bool)

(assert (=> b!1167224 (= e!748096 lt!398841)))

(declare-fun b!1167226 () Bool)

(assert (=> b!1167226 (= e!748096 (drop!482 (t!110333 lt!398841) (- lt!398837 1)))))

(declare-fun bm!82189 () Bool)

(assert (=> bm!82189 (= call!82194 (size!9071 lt!398841))))

(declare-fun d!333408 () Bool)

(assert (=> d!333408 e!748097))

(declare-fun res!527111 () Bool)

(assert (=> d!333408 (=> (not res!527111) (not e!748097))))

(assert (=> d!333408 (= res!527111 (= ((_ map implies) (content!1608 lt!399771) (content!1608 lt!398841)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333408 (= lt!399771 e!748098)))

(declare-fun c!194846 () Bool)

(assert (=> d!333408 (= c!194846 ((_ is Nil!11519) lt!398841))))

(assert (=> d!333408 (= (drop!482 lt!398841 lt!398837) lt!399771)))

(declare-fun b!1167225 () Bool)

(assert (=> b!1167225 (= e!748100 0)))

(assert (= (and d!333408 c!194846) b!1167222))

(assert (= (and d!333408 (not c!194846)) b!1167219))

(assert (= (and b!1167219 c!194847) b!1167224))

(assert (= (and b!1167219 (not c!194847)) b!1167226))

(assert (= (and d!333408 res!527111) b!1167221))

(assert (= (and b!1167221 c!194845) b!1167218))

(assert (= (and b!1167221 (not c!194845)) b!1167220))

(assert (= (and b!1167220 c!194844) b!1167225))

(assert (= (and b!1167220 (not c!194844)) b!1167223))

(assert (= (or b!1167218 b!1167220 b!1167223) bm!82189))

(declare-fun m!1338519 () Bool)

(assert (=> b!1167221 m!1338519))

(declare-fun m!1338521 () Bool)

(assert (=> b!1167226 m!1338521))

(declare-fun m!1338523 () Bool)

(assert (=> bm!82189 m!1338523))

(declare-fun m!1338525 () Bool)

(assert (=> d!333408 m!1338525))

(declare-fun m!1338527 () Bool)

(assert (=> d!333408 m!1338527))

(assert (=> b!1166020 d!333408))

(declare-fun b!1167231 () Bool)

(declare-fun e!748107 () Int)

(declare-fun call!82195 () Int)

(assert (=> b!1167231 (= e!748107 call!82195)))

(declare-fun b!1167232 () Bool)

(declare-fun e!748106 () List!11543)

(declare-fun e!748104 () List!11543)

(assert (=> b!1167232 (= e!748106 e!748104)))

(declare-fun c!194854 () Bool)

(assert (=> b!1167232 (= c!194854 (<= 1 0))))

(declare-fun b!1167233 () Bool)

(declare-fun e!748108 () Int)

(assert (=> b!1167233 (= e!748107 e!748108)))

(declare-fun c!194851 () Bool)

(assert (=> b!1167233 (= c!194851 (>= 1 call!82195))))

(declare-fun b!1167234 () Bool)

(declare-fun e!748105 () Bool)

(declare-fun lt!399772 () List!11543)

(assert (=> b!1167234 (= e!748105 (= (size!9071 lt!399772) e!748107))))

(declare-fun c!194852 () Bool)

(assert (=> b!1167234 (= c!194852 (<= 1 0))))

(declare-fun b!1167235 () Bool)

(assert (=> b!1167235 (= e!748106 Nil!11519)))

(declare-fun b!1167236 () Bool)

(assert (=> b!1167236 (= e!748108 (- call!82195 1))))

(declare-fun b!1167237 () Bool)

(assert (=> b!1167237 (= e!748104 lt!398857)))

(declare-fun b!1167239 () Bool)

(assert (=> b!1167239 (= e!748104 (drop!482 (t!110333 lt!398857) (- 1 1)))))

(declare-fun bm!82190 () Bool)

(assert (=> bm!82190 (= call!82195 (size!9071 lt!398857))))

(declare-fun d!333410 () Bool)

(assert (=> d!333410 e!748105))

(declare-fun res!527112 () Bool)

(assert (=> d!333410 (=> (not res!527112) (not e!748105))))

(assert (=> d!333410 (= res!527112 (= ((_ map implies) (content!1608 lt!399772) (content!1608 lt!398857)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333410 (= lt!399772 e!748106)))

(declare-fun c!194853 () Bool)

(assert (=> d!333410 (= c!194853 ((_ is Nil!11519) lt!398857))))

(assert (=> d!333410 (= (drop!482 lt!398857 1) lt!399772)))

(declare-fun b!1167238 () Bool)

(assert (=> b!1167238 (= e!748108 0)))

(assert (= (and d!333410 c!194853) b!1167235))

(assert (= (and d!333410 (not c!194853)) b!1167232))

(assert (= (and b!1167232 c!194854) b!1167237))

(assert (= (and b!1167232 (not c!194854)) b!1167239))

(assert (= (and d!333410 res!527112) b!1167234))

(assert (= (and b!1167234 c!194852) b!1167231))

(assert (= (and b!1167234 (not c!194852)) b!1167233))

(assert (= (and b!1167233 c!194851) b!1167238))

(assert (= (and b!1167233 (not c!194851)) b!1167236))

(assert (= (or b!1167231 b!1167233 b!1167236) bm!82190))

(declare-fun m!1338529 () Bool)

(assert (=> b!1167234 m!1338529))

(declare-fun m!1338531 () Bool)

(assert (=> b!1167239 m!1338531))

(assert (=> bm!82190 m!1338513))

(declare-fun m!1338533 () Bool)

(assert (=> d!333410 m!1338533))

(assert (=> d!333410 m!1338517))

(assert (=> b!1166020 d!333410))

(declare-fun d!333412 () Bool)

(declare-fun lt!399773 () Token!3676)

(assert (=> d!333412 (contains!1994 lt!398835 lt!399773)))

(declare-fun e!748110 () Token!3676)

(assert (=> d!333412 (= lt!399773 e!748110)))

(declare-fun c!194855 () Bool)

(assert (=> d!333412 (= c!194855 (= 1 0))))

(declare-fun e!748109 () Bool)

(assert (=> d!333412 e!748109))

(declare-fun res!527113 () Bool)

(assert (=> d!333412 (=> (not res!527113) (not e!748109))))

(assert (=> d!333412 (= res!527113 (<= 0 1))))

(assert (=> d!333412 (= (apply!2480 lt!398835 1) lt!399773)))

(declare-fun b!1167240 () Bool)

(assert (=> b!1167240 (= e!748109 (< 1 (size!9071 lt!398835)))))

(declare-fun b!1167241 () Bool)

(assert (=> b!1167241 (= e!748110 (head!2102 lt!398835))))

(declare-fun b!1167242 () Bool)

(assert (=> b!1167242 (= e!748110 (apply!2480 (tail!1686 lt!398835) (- 1 1)))))

(assert (= (and d!333412 res!527113) b!1167240))

(assert (= (and d!333412 c!194855) b!1167241))

(assert (= (and d!333412 (not c!194855)) b!1167242))

(declare-fun m!1338535 () Bool)

(assert (=> d!333412 m!1338535))

(assert (=> b!1167240 m!1338503))

(declare-fun m!1338537 () Bool)

(assert (=> b!1167241 m!1338537))

(declare-fun m!1338539 () Bool)

(assert (=> b!1167242 m!1338539))

(assert (=> b!1167242 m!1338539))

(declare-fun m!1338541 () Bool)

(assert (=> b!1167242 m!1338541))

(assert (=> b!1166020 d!333412))

(declare-fun d!333414 () Bool)

(assert (=> d!333414 (= (head!2102 (drop!482 lt!398859 lt!398863)) (apply!2480 lt!398859 lt!398863))))

(declare-fun lt!399774 () Unit!17605)

(assert (=> d!333414 (= lt!399774 (choose!7528 lt!398859 lt!398863))))

(declare-fun e!748113 () Bool)

(assert (=> d!333414 e!748113))

(declare-fun res!527114 () Bool)

(assert (=> d!333414 (=> (not res!527114) (not e!748113))))

(assert (=> d!333414 (= res!527114 (>= lt!398863 0))))

(assert (=> d!333414 (= (lemmaDropApply!371 lt!398859 lt!398863) lt!399774)))

(declare-fun b!1167247 () Bool)

(assert (=> b!1167247 (= e!748113 (< lt!398863 (size!9071 lt!398859)))))

(assert (= (and d!333414 res!527114) b!1167247))

(assert (=> d!333414 m!1335791))

(assert (=> d!333414 m!1335791))

(assert (=> d!333414 m!1335805))

(assert (=> d!333414 m!1335819))

(declare-fun m!1338543 () Bool)

(assert (=> d!333414 m!1338543))

(declare-fun m!1338545 () Bool)

(assert (=> b!1167247 m!1338545))

(assert (=> b!1166020 d!333414))

(declare-fun d!333416 () Bool)

(declare-fun lt!399776 () Bool)

(declare-fun e!748115 () Bool)

(assert (=> d!333416 (= lt!399776 e!748115)))

(declare-fun res!527115 () Bool)

(assert (=> d!333416 (=> (not res!527115) (not e!748115))))

(assert (=> d!333416 (= res!527115 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) 1)))))) (list!4239 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) 1)))))))

(declare-fun e!748114 () Bool)

(assert (=> d!333416 (= lt!399776 e!748114)))

(declare-fun res!527116 () Bool)

(assert (=> d!333416 (=> (not res!527116) (not e!748114))))

(declare-fun lt!399775 () tuple2!12022)

(assert (=> d!333416 (= res!527116 (= (size!9067 (_1!6858 lt!399775)) 1))))

(assert (=> d!333416 (= lt!399775 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) 1)))))))

(assert (=> d!333416 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333416 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) 1)) lt!399776)))

(declare-fun b!1167248 () Bool)

(declare-fun res!527117 () Bool)

(assert (=> b!1167248 (=> (not res!527117) (not e!748114))))

(assert (=> b!1167248 (= res!527117 (= (apply!2479 (_1!6858 lt!399775) 0) (apply!2479 (tokens!1624 thiss!10527) 1)))))

(declare-fun b!1167249 () Bool)

(assert (=> b!1167249 (= e!748114 (isEmpty!7005 (_2!6858 lt!399775)))))

(declare-fun b!1167250 () Bool)

(assert (=> b!1167250 (= e!748115 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) 1)))))))))

(assert (= (and d!333416 res!527116) b!1167248))

(assert (= (and b!1167248 res!527117) b!1167249))

(assert (= (and d!333416 res!527115) b!1167250))

(assert (=> d!333416 m!1335511))

(declare-fun m!1338551 () Bool)

(assert (=> d!333416 m!1338551))

(declare-fun m!1338553 () Bool)

(assert (=> d!333416 m!1338553))

(declare-fun m!1338555 () Bool)

(assert (=> d!333416 m!1338555))

(declare-fun m!1338557 () Bool)

(assert (=> d!333416 m!1338557))

(declare-fun m!1338559 () Bool)

(assert (=> d!333416 m!1338559))

(declare-fun m!1338561 () Bool)

(assert (=> d!333416 m!1338561))

(assert (=> d!333416 m!1338557))

(assert (=> d!333416 m!1338551))

(assert (=> d!333416 m!1335333))

(assert (=> d!333416 m!1338557))

(declare-fun m!1338563 () Bool)

(assert (=> b!1167248 m!1338563))

(declare-fun m!1338565 () Bool)

(assert (=> b!1167249 m!1338565))

(assert (=> b!1167250 m!1335333))

(assert (=> b!1167250 m!1338557))

(assert (=> b!1167250 m!1338557))

(assert (=> b!1167250 m!1338551))

(assert (=> b!1167250 m!1338551))

(assert (=> b!1167250 m!1338553))

(declare-fun m!1338567 () Bool)

(assert (=> b!1167250 m!1338567))

(assert (=> b!1166020 d!333416))

(declare-fun b!1167256 () Bool)

(declare-fun e!748124 () Int)

(declare-fun call!82196 () Int)

(assert (=> b!1167256 (= e!748124 call!82196)))

(declare-fun b!1167257 () Bool)

(declare-fun e!748123 () List!11543)

(declare-fun e!748121 () List!11543)

(assert (=> b!1167257 (= e!748123 e!748121)))

(declare-fun c!194861 () Bool)

(assert (=> b!1167257 (= c!194861 (<= (+ lt!398837 1) 0))))

(declare-fun b!1167258 () Bool)

(declare-fun e!748125 () Int)

(assert (=> b!1167258 (= e!748124 e!748125)))

(declare-fun c!194858 () Bool)

(assert (=> b!1167258 (= c!194858 (>= (+ lt!398837 1) call!82196))))

(declare-fun b!1167259 () Bool)

(declare-fun e!748122 () Bool)

(declare-fun lt!399778 () List!11543)

(assert (=> b!1167259 (= e!748122 (= (size!9071 lt!399778) e!748124))))

(declare-fun c!194859 () Bool)

(assert (=> b!1167259 (= c!194859 (<= (+ lt!398837 1) 0))))

(declare-fun b!1167260 () Bool)

(assert (=> b!1167260 (= e!748123 Nil!11519)))

(declare-fun b!1167261 () Bool)

(assert (=> b!1167261 (= e!748125 (- call!82196 (+ lt!398837 1)))))

(declare-fun b!1167262 () Bool)

(assert (=> b!1167262 (= e!748121 lt!398841)))

(declare-fun b!1167264 () Bool)

(assert (=> b!1167264 (= e!748121 (drop!482 (t!110333 lt!398841) (- (+ lt!398837 1) 1)))))

(declare-fun bm!82191 () Bool)

(assert (=> bm!82191 (= call!82196 (size!9071 lt!398841))))

(declare-fun d!333420 () Bool)

(assert (=> d!333420 e!748122))

(declare-fun res!527120 () Bool)

(assert (=> d!333420 (=> (not res!527120) (not e!748122))))

(assert (=> d!333420 (= res!527120 (= ((_ map implies) (content!1608 lt!399778) (content!1608 lt!398841)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333420 (= lt!399778 e!748123)))

(declare-fun c!194860 () Bool)

(assert (=> d!333420 (= c!194860 ((_ is Nil!11519) lt!398841))))

(assert (=> d!333420 (= (drop!482 lt!398841 (+ lt!398837 1)) lt!399778)))

(declare-fun b!1167263 () Bool)

(assert (=> b!1167263 (= e!748125 0)))

(assert (= (and d!333420 c!194860) b!1167260))

(assert (= (and d!333420 (not c!194860)) b!1167257))

(assert (= (and b!1167257 c!194861) b!1167262))

(assert (= (and b!1167257 (not c!194861)) b!1167264))

(assert (= (and d!333420 res!527120) b!1167259))

(assert (= (and b!1167259 c!194859) b!1167256))

(assert (= (and b!1167259 (not c!194859)) b!1167258))

(assert (= (and b!1167258 c!194858) b!1167263))

(assert (= (and b!1167258 (not c!194858)) b!1167261))

(assert (= (or b!1167256 b!1167258 b!1167261) bm!82191))

(declare-fun m!1338569 () Bool)

(assert (=> b!1167259 m!1338569))

(declare-fun m!1338571 () Bool)

(assert (=> b!1167264 m!1338571))

(assert (=> bm!82191 m!1338523))

(declare-fun m!1338573 () Bool)

(assert (=> d!333420 m!1338573))

(assert (=> d!333420 m!1338527))

(assert (=> b!1166020 d!333420))

(declare-fun d!333422 () Bool)

(declare-fun lt!399780 () Bool)

(declare-fun e!748127 () Bool)

(assert (=> d!333422 (= lt!399780 e!748127)))

(declare-fun res!527121 () Bool)

(assert (=> d!333422 (=> (not res!527121) (not e!748127))))

(assert (=> d!333422 (= res!527121 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))))) (list!4239 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))))))

(declare-fun e!748126 () Bool)

(assert (=> d!333422 (= lt!399780 e!748126)))

(declare-fun res!527122 () Bool)

(assert (=> d!333422 (=> (not res!527122) (not e!748126))))

(declare-fun lt!399779 () tuple2!12022)

(assert (=> d!333422 (= res!527122 (= (size!9067 (_1!6858 lt!399779)) 1))))

(assert (=> d!333422 (= lt!399779 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))))))

(assert (=> d!333422 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333422 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))) lt!399780)))

(declare-fun b!1167265 () Bool)

(declare-fun res!527123 () Bool)

(assert (=> b!1167265 (=> (not res!527123) (not e!748126))))

(assert (=> b!1167265 (= res!527123 (= (apply!2479 (_1!6858 lt!399779) 0) (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))))

(declare-fun b!1167266 () Bool)

(assert (=> b!1167266 (= e!748126 (isEmpty!7005 (_2!6858 lt!399779)))))

(declare-fun b!1167267 () Bool)

(assert (=> b!1167267 (= e!748127 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))))))))

(assert (= (and d!333422 res!527122) b!1167265))

(assert (= (and b!1167265 res!527123) b!1167266))

(assert (= (and d!333422 res!527121) b!1167267))

(assert (=> d!333422 m!1335511))

(declare-fun m!1338575 () Bool)

(assert (=> d!333422 m!1338575))

(declare-fun m!1338577 () Bool)

(assert (=> d!333422 m!1338577))

(declare-fun m!1338579 () Bool)

(assert (=> d!333422 m!1338579))

(declare-fun m!1338581 () Bool)

(assert (=> d!333422 m!1338581))

(declare-fun m!1338583 () Bool)

(assert (=> d!333422 m!1338583))

(declare-fun m!1338585 () Bool)

(assert (=> d!333422 m!1338585))

(assert (=> d!333422 m!1338581))

(assert (=> d!333422 m!1338575))

(assert (=> d!333422 m!1335809))

(assert (=> d!333422 m!1338581))

(declare-fun m!1338587 () Bool)

(assert (=> b!1167265 m!1338587))

(declare-fun m!1338589 () Bool)

(assert (=> b!1167266 m!1338589))

(assert (=> b!1167267 m!1335809))

(assert (=> b!1167267 m!1338581))

(assert (=> b!1167267 m!1338581))

(assert (=> b!1167267 m!1338575))

(assert (=> b!1167267 m!1338575))

(assert (=> b!1167267 m!1338577))

(declare-fun m!1338591 () Bool)

(assert (=> b!1167267 m!1338591))

(assert (=> b!1166020 d!333422))

(declare-fun b!1167268 () Bool)

(declare-fun e!748131 () Int)

(declare-fun call!82197 () Int)

(assert (=> b!1167268 (= e!748131 call!82197)))

(declare-fun b!1167269 () Bool)

(declare-fun e!748130 () List!11543)

(declare-fun e!748128 () List!11543)

(assert (=> b!1167269 (= e!748130 e!748128)))

(declare-fun c!194865 () Bool)

(assert (=> b!1167269 (= c!194865 (<= lt!398863 0))))

(declare-fun b!1167270 () Bool)

(declare-fun e!748132 () Int)

(assert (=> b!1167270 (= e!748131 e!748132)))

(declare-fun c!194862 () Bool)

(assert (=> b!1167270 (= c!194862 (>= lt!398863 call!82197))))

(declare-fun b!1167271 () Bool)

(declare-fun e!748129 () Bool)

(declare-fun lt!399781 () List!11543)

(assert (=> b!1167271 (= e!748129 (= (size!9071 lt!399781) e!748131))))

(declare-fun c!194863 () Bool)

(assert (=> b!1167271 (= c!194863 (<= lt!398863 0))))

(declare-fun b!1167272 () Bool)

(assert (=> b!1167272 (= e!748130 Nil!11519)))

(declare-fun b!1167273 () Bool)

(assert (=> b!1167273 (= e!748132 (- call!82197 lt!398863))))

(declare-fun b!1167274 () Bool)

(assert (=> b!1167274 (= e!748128 lt!398859)))

(declare-fun b!1167276 () Bool)

(assert (=> b!1167276 (= e!748128 (drop!482 (t!110333 lt!398859) (- lt!398863 1)))))

(declare-fun bm!82192 () Bool)

(assert (=> bm!82192 (= call!82197 (size!9071 lt!398859))))

(declare-fun d!333424 () Bool)

(assert (=> d!333424 e!748129))

(declare-fun res!527124 () Bool)

(assert (=> d!333424 (=> (not res!527124) (not e!748129))))

(assert (=> d!333424 (= res!527124 (= ((_ map implies) (content!1608 lt!399781) (content!1608 lt!398859)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333424 (= lt!399781 e!748130)))

(declare-fun c!194864 () Bool)

(assert (=> d!333424 (= c!194864 ((_ is Nil!11519) lt!398859))))

(assert (=> d!333424 (= (drop!482 lt!398859 lt!398863) lt!399781)))

(declare-fun b!1167275 () Bool)

(assert (=> b!1167275 (= e!748132 0)))

(assert (= (and d!333424 c!194864) b!1167272))

(assert (= (and d!333424 (not c!194864)) b!1167269))

(assert (= (and b!1167269 c!194865) b!1167274))

(assert (= (and b!1167269 (not c!194865)) b!1167276))

(assert (= (and d!333424 res!527124) b!1167271))

(assert (= (and b!1167271 c!194863) b!1167268))

(assert (= (and b!1167271 (not c!194863)) b!1167270))

(assert (= (and b!1167270 c!194862) b!1167275))

(assert (= (and b!1167270 (not c!194862)) b!1167273))

(assert (= (or b!1167268 b!1167270 b!1167273) bm!82192))

(declare-fun m!1338599 () Bool)

(assert (=> b!1167271 m!1338599))

(declare-fun m!1338601 () Bool)

(assert (=> b!1167276 m!1338601))

(assert (=> bm!82192 m!1338545))

(declare-fun m!1338603 () Bool)

(assert (=> d!333424 m!1338603))

(declare-fun m!1338605 () Bool)

(assert (=> d!333424 m!1338605))

(assert (=> b!1166020 d!333424))

(declare-fun d!333428 () Bool)

(assert (=> d!333428 (= (tail!1686 (drop!482 lt!398841 lt!398837)) (t!110333 (drop!482 lt!398841 lt!398837)))))

(assert (=> b!1166020 d!333428))

(assert (=> b!1166020 d!332892))

(declare-fun d!333430 () Bool)

(assert (=> d!333430 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398838)))

(declare-fun lt!399783 () Unit!17605)

(assert (=> d!333430 (= lt!399783 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398864 lt!398838))))

(assert (=> d!333430 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333430 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398864 lt!398838) lt!399783)))

(declare-fun bs!284796 () Bool)

(assert (= bs!284796 d!333430))

(assert (=> bs!284796 m!1335799))

(declare-fun m!1338611 () Bool)

(assert (=> bs!284796 m!1338611))

(assert (=> bs!284796 m!1335511))

(assert (=> b!1166020 d!333430))

(declare-fun d!333434 () Bool)

(declare-fun lt!399784 () Token!3676)

(assert (=> d!333434 (contains!1994 lt!398859 lt!399784)))

(declare-fun e!748136 () Token!3676)

(assert (=> d!333434 (= lt!399784 e!748136)))

(declare-fun c!194867 () Bool)

(assert (=> d!333434 (= c!194867 (= lt!398863 0))))

(declare-fun e!748135 () Bool)

(assert (=> d!333434 e!748135))

(declare-fun res!527126 () Bool)

(assert (=> d!333434 (=> (not res!527126) (not e!748135))))

(assert (=> d!333434 (= res!527126 (<= 0 lt!398863))))

(assert (=> d!333434 (= (apply!2480 lt!398859 lt!398863) lt!399784)))

(declare-fun b!1167280 () Bool)

(assert (=> b!1167280 (= e!748135 (< lt!398863 (size!9071 lt!398859)))))

(declare-fun b!1167281 () Bool)

(assert (=> b!1167281 (= e!748136 (head!2102 lt!398859))))

(declare-fun b!1167282 () Bool)

(assert (=> b!1167282 (= e!748136 (apply!2480 (tail!1686 lt!398859) (- lt!398863 1)))))

(assert (= (and d!333434 res!527126) b!1167280))

(assert (= (and d!333434 c!194867) b!1167281))

(assert (= (and d!333434 (not c!194867)) b!1167282))

(declare-fun m!1338617 () Bool)

(assert (=> d!333434 m!1338617))

(assert (=> b!1167280 m!1338545))

(declare-fun m!1338619 () Bool)

(assert (=> b!1167281 m!1338619))

(declare-fun m!1338621 () Bool)

(assert (=> b!1167282 m!1338621))

(assert (=> b!1167282 m!1338621))

(declare-fun m!1338623 () Bool)

(assert (=> b!1167282 m!1338623))

(assert (=> b!1166020 d!333434))

(declare-fun d!333438 () Bool)

(declare-fun lt!399786 () Bool)

(declare-fun e!748138 () Bool)

(assert (=> d!333438 (= lt!399786 e!748138)))

(declare-fun res!527127 () Bool)

(assert (=> d!333438 (=> (not res!527127) (not e!748138))))

(assert (=> d!333438 (= res!527127 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398838))))) (list!4239 (singletonSeq!668 lt!398838))))))

(declare-fun e!748137 () Bool)

(assert (=> d!333438 (= lt!399786 e!748137)))

(declare-fun res!527128 () Bool)

(assert (=> d!333438 (=> (not res!527128) (not e!748137))))

(declare-fun lt!399785 () tuple2!12022)

(assert (=> d!333438 (= res!527128 (= (size!9067 (_1!6858 lt!399785)) 1))))

(assert (=> d!333438 (= lt!399785 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398838))))))

(assert (=> d!333438 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333438 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398838) lt!399786)))

(declare-fun b!1167283 () Bool)

(declare-fun res!527129 () Bool)

(assert (=> b!1167283 (=> (not res!527129) (not e!748137))))

(assert (=> b!1167283 (= res!527129 (= (apply!2479 (_1!6858 lt!399785) 0) lt!398838))))

(declare-fun b!1167284 () Bool)

(assert (=> b!1167284 (= e!748137 (isEmpty!7005 (_2!6858 lt!399785)))))

(declare-fun b!1167285 () Bool)

(assert (=> b!1167285 (= e!748138 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398838))))))))

(assert (= (and d!333438 res!527128) b!1167283))

(assert (= (and b!1167283 res!527129) b!1167284))

(assert (= (and d!333438 res!527127) b!1167285))

(assert (=> d!333438 m!1335511))

(declare-fun m!1338627 () Bool)

(assert (=> d!333438 m!1338627))

(declare-fun m!1338629 () Bool)

(assert (=> d!333438 m!1338629))

(declare-fun m!1338631 () Bool)

(assert (=> d!333438 m!1338631))

(declare-fun m!1338633 () Bool)

(assert (=> d!333438 m!1338633))

(declare-fun m!1338635 () Bool)

(assert (=> d!333438 m!1338635))

(declare-fun m!1338637 () Bool)

(assert (=> d!333438 m!1338637))

(assert (=> d!333438 m!1338633))

(assert (=> d!333438 m!1338627))

(assert (=> d!333438 m!1338633))

(declare-fun m!1338639 () Bool)

(assert (=> b!1167283 m!1338639))

(declare-fun m!1338641 () Bool)

(assert (=> b!1167284 m!1338641))

(assert (=> b!1167285 m!1338633))

(assert (=> b!1167285 m!1338633))

(assert (=> b!1167285 m!1338627))

(assert (=> b!1167285 m!1338627))

(assert (=> b!1167285 m!1338629))

(declare-fun m!1338647 () Bool)

(assert (=> b!1167285 m!1338647))

(assert (=> b!1166020 d!333438))

(declare-fun d!333446 () Bool)

(assert (=> d!333446 (= (head!2102 (drop!482 lt!398835 1)) (apply!2480 lt!398835 1))))

(declare-fun lt!399789 () Unit!17605)

(assert (=> d!333446 (= lt!399789 (choose!7528 lt!398835 1))))

(declare-fun e!748145 () Bool)

(assert (=> d!333446 e!748145))

(declare-fun res!527136 () Bool)

(assert (=> d!333446 (=> (not res!527136) (not e!748145))))

(assert (=> d!333446 (= res!527136 (>= 1 0))))

(assert (=> d!333446 (= (lemmaDropApply!371 lt!398835 1) lt!399789)))

(declare-fun b!1167292 () Bool)

(assert (=> b!1167292 (= e!748145 (< 1 (size!9071 lt!398835)))))

(assert (= (and d!333446 res!527136) b!1167292))

(assert (=> d!333446 m!1335785))

(assert (=> d!333446 m!1335785))

(assert (=> d!333446 m!1335787))

(assert (=> d!333446 m!1335765))

(declare-fun m!1338655 () Bool)

(assert (=> d!333446 m!1338655))

(assert (=> b!1167292 m!1338503))

(assert (=> b!1166020 d!333446))

(declare-fun d!333450 () Bool)

(assert (=> d!333450 (= (separableTokensPredicate!130 Lexer!1700 (apply!2479 (tokens!1624 thiss!10527) 1) (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)) (rules!9572 thiss!10527)) (not (prefixMatchZipperSequence!91 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)) (++!2980 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) 1)) (singletonSeq!669 (apply!2484 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))) 0))))))))

(declare-fun bs!284799 () Bool)

(assert (= bs!284799 d!333450))

(assert (=> bs!284799 m!1335813))

(declare-fun m!1338665 () Bool)

(assert (=> bs!284799 m!1338665))

(declare-fun m!1338667 () Bool)

(assert (=> bs!284799 m!1338667))

(declare-fun m!1338669 () Bool)

(assert (=> bs!284799 m!1338669))

(declare-fun m!1338671 () Bool)

(assert (=> bs!284799 m!1338671))

(assert (=> bs!284799 m!1336603))

(assert (=> bs!284799 m!1335809))

(assert (=> bs!284799 m!1335813))

(assert (=> bs!284799 m!1338665))

(assert (=> bs!284799 m!1338669))

(assert (=> bs!284799 m!1336603))

(assert (=> bs!284799 m!1338671))

(declare-fun m!1338675 () Bool)

(assert (=> bs!284799 m!1338675))

(assert (=> bs!284799 m!1335333))

(assert (=> bs!284799 m!1338667))

(assert (=> b!1166020 d!333450))

(declare-fun d!333456 () Bool)

(declare-fun lt!399794 () BalanceConc!7574)

(assert (=> d!333456 (= (list!4243 lt!399794) (originalCharacters!2561 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))))

(assert (=> d!333456 (= lt!399794 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))) (value!65196 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)))))))

(assert (=> d!333456 (= (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))) lt!399794)))

(declare-fun b_lambda!34801 () Bool)

(assert (=> (not b_lambda!34801) (not d!333456)))

(declare-fun t!110392 () Bool)

(declare-fun tb!65861 () Bool)

(assert (=> (and b!1166515 (= (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)))))) t!110392) tb!65861))

(declare-fun b!1167297 () Bool)

(declare-fun e!748149 () Bool)

(declare-fun tp!334277 () Bool)

(assert (=> b!1167297 (= e!748149 (and (inv!15175 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))) (value!65196 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)))))) tp!334277))))

(declare-fun result!78826 () Bool)

(assert (=> tb!65861 (= result!78826 (and (inv!15176 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))) (value!65196 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))) e!748149))))

(assert (= tb!65861 b!1167297))

(declare-fun m!1338677 () Bool)

(assert (=> b!1167297 m!1338677))

(declare-fun m!1338681 () Bool)

(assert (=> tb!65861 m!1338681))

(assert (=> d!333456 t!110392))

(declare-fun b_and!80681 () Bool)

(assert (= b_and!80677 (and (=> t!110392 result!78826) b_and!80681)))

(declare-fun m!1338685 () Bool)

(assert (=> d!333456 m!1338685))

(declare-fun m!1338691 () Bool)

(assert (=> d!333456 m!1338691))

(assert (=> b!1166020 d!333456))

(declare-fun d!333458 () Bool)

(declare-fun lt!399796 () Bool)

(declare-fun e!748151 () Bool)

(assert (=> d!333458 (= lt!399796 e!748151)))

(declare-fun res!527140 () Bool)

(assert (=> d!333458 (=> (not res!527140) (not e!748151))))

(assert (=> d!333458 (= res!527140 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398842))))) (list!4239 (singletonSeq!668 lt!398842))))))

(declare-fun e!748150 () Bool)

(assert (=> d!333458 (= lt!399796 e!748150)))

(declare-fun res!527141 () Bool)

(assert (=> d!333458 (=> (not res!527141) (not e!748150))))

(declare-fun lt!399795 () tuple2!12022)

(assert (=> d!333458 (= res!527141 (= (size!9067 (_1!6858 lt!399795)) 1))))

(assert (=> d!333458 (= lt!399795 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398842))))))

(assert (=> d!333458 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333458 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398842) lt!399796)))

(declare-fun b!1167298 () Bool)

(declare-fun res!527142 () Bool)

(assert (=> b!1167298 (=> (not res!527142) (not e!748150))))

(assert (=> b!1167298 (= res!527142 (= (apply!2479 (_1!6858 lt!399795) 0) lt!398842))))

(declare-fun b!1167299 () Bool)

(assert (=> b!1167299 (= e!748150 (isEmpty!7005 (_2!6858 lt!399795)))))

(declare-fun b!1167300 () Bool)

(assert (=> b!1167300 (= e!748151 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398842))))))))

(assert (= (and d!333458 res!527141) b!1167298))

(assert (= (and b!1167298 res!527142) b!1167299))

(assert (= (and d!333458 res!527140) b!1167300))

(assert (=> d!333458 m!1335511))

(declare-fun m!1338703 () Bool)

(assert (=> d!333458 m!1338703))

(declare-fun m!1338705 () Bool)

(assert (=> d!333458 m!1338705))

(declare-fun m!1338707 () Bool)

(assert (=> d!333458 m!1338707))

(declare-fun m!1338709 () Bool)

(assert (=> d!333458 m!1338709))

(declare-fun m!1338711 () Bool)

(assert (=> d!333458 m!1338711))

(declare-fun m!1338715 () Bool)

(assert (=> d!333458 m!1338715))

(assert (=> d!333458 m!1338709))

(assert (=> d!333458 m!1338703))

(assert (=> d!333458 m!1338709))

(declare-fun m!1338719 () Bool)

(assert (=> b!1167298 m!1338719))

(declare-fun m!1338721 () Bool)

(assert (=> b!1167299 m!1338721))

(assert (=> b!1167300 m!1338709))

(assert (=> b!1167300 m!1338709))

(assert (=> b!1167300 m!1338703))

(assert (=> b!1167300 m!1338703))

(assert (=> b!1167300 m!1338705))

(declare-fun m!1338729 () Bool)

(assert (=> b!1167300 m!1338729))

(assert (=> b!1166020 d!333458))

(declare-fun d!333462 () Bool)

(assert (=> d!333462 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398842)))

(declare-fun lt!399797 () Unit!17605)

(assert (=> d!333462 (= lt!399797 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398854 lt!398842))))

(assert (=> d!333462 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333462 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398854 lt!398842) lt!399797)))

(declare-fun bs!284803 () Bool)

(assert (= bs!284803 d!333462))

(assert (=> bs!284803 m!1335783))

(declare-fun m!1338733 () Bool)

(assert (=> bs!284803 m!1338733))

(assert (=> bs!284803 m!1335511))

(assert (=> b!1166020 d!333462))

(declare-fun d!333466 () Bool)

(assert (=> d!333466 (= (tail!1686 (drop!482 lt!398841 lt!398837)) (drop!482 lt!398841 (+ lt!398837 1)))))

(declare-fun lt!399799 () Unit!17605)

(assert (=> d!333466 (= lt!399799 (choose!7531 lt!398841 lt!398837))))

(declare-fun e!748152 () Bool)

(assert (=> d!333466 e!748152))

(declare-fun res!527143 () Bool)

(assert (=> d!333466 (=> (not res!527143) (not e!748152))))

(assert (=> d!333466 (= res!527143 (>= lt!398837 0))))

(assert (=> d!333466 (= (lemmaDropTail!359 lt!398841 lt!398837) lt!399799)))

(declare-fun b!1167301 () Bool)

(assert (=> b!1167301 (= e!748152 (< lt!398837 (size!9071 lt!398841)))))

(assert (= (and d!333466 res!527143) b!1167301))

(assert (=> d!333466 m!1335767))

(assert (=> d!333466 m!1335767))

(assert (=> d!333466 m!1335771))

(assert (=> d!333466 m!1335823))

(declare-fun m!1338741 () Bool)

(assert (=> d!333466 m!1338741))

(assert (=> b!1167301 m!1338523))

(assert (=> b!1166020 d!333466))

(declare-fun d!333472 () Bool)

(declare-fun lt!399802 () Token!3676)

(assert (=> d!333472 (= lt!399802 (apply!2480 (list!4239 (tokens!1624 thiss!10527)) (+ 1 1)))))

(assert (=> d!333472 (= lt!399802 (apply!2483 (c!194629 (tokens!1624 thiss!10527)) (+ 1 1)))))

(declare-fun e!748155 () Bool)

(assert (=> d!333472 e!748155))

(declare-fun res!527146 () Bool)

(assert (=> d!333472 (=> (not res!527146) (not e!748155))))

(assert (=> d!333472 (= res!527146 (<= 0 (+ 1 1)))))

(assert (=> d!333472 (= (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)) lt!399802)))

(declare-fun b!1167304 () Bool)

(assert (=> b!1167304 (= e!748155 (< (+ 1 1) (size!9067 (tokens!1624 thiss!10527))))))

(assert (= (and d!333472 res!527146) b!1167304))

(assert (=> d!333472 m!1335409))

(assert (=> d!333472 m!1335409))

(declare-fun m!1338743 () Bool)

(assert (=> d!333472 m!1338743))

(declare-fun m!1338745 () Bool)

(assert (=> d!333472 m!1338745))

(assert (=> b!1167304 m!1335431))

(assert (=> b!1166020 d!333472))

(declare-fun d!333474 () Bool)

(declare-fun lt!399803 () Int)

(assert (=> d!333474 (= lt!399803 (size!9072 (list!4243 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))))))

(assert (=> d!333474 (= lt!399803 (size!9073 (c!194628 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1))))))))

(assert (=> d!333474 (= (size!9066 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)))) lt!399803)))

(declare-fun bs!284806 () Bool)

(assert (= bs!284806 d!333474))

(assert (=> bs!284806 m!1335813))

(declare-fun m!1338747 () Bool)

(assert (=> bs!284806 m!1338747))

(assert (=> bs!284806 m!1338747))

(declare-fun m!1338749 () Bool)

(assert (=> bs!284806 m!1338749))

(declare-fun m!1338751 () Bool)

(assert (=> bs!284806 m!1338751))

(assert (=> b!1166020 d!333474))

(declare-fun d!333476 () Bool)

(assert (=> d!333476 (= (tail!1686 (drop!482 lt!398857 1)) (drop!482 lt!398857 (+ 1 1)))))

(declare-fun lt!399804 () Unit!17605)

(assert (=> d!333476 (= lt!399804 (choose!7531 lt!398857 1))))

(declare-fun e!748159 () Bool)

(assert (=> d!333476 e!748159))

(declare-fun res!527147 () Bool)

(assert (=> d!333476 (=> (not res!527147) (not e!748159))))

(assert (=> d!333476 (= res!527147 (>= 1 0))))

(assert (=> d!333476 (= (lemmaDropTail!359 lt!398857 1) lt!399804)))

(declare-fun b!1167308 () Bool)

(assert (=> b!1167308 (= e!748159 (< 1 (size!9071 lt!398857)))))

(assert (= (and d!333476 res!527147) b!1167308))

(assert (=> d!333476 m!1335777))

(assert (=> d!333476 m!1335777))

(assert (=> d!333476 m!1335779))

(assert (=> d!333476 m!1335817))

(declare-fun m!1338753 () Bool)

(assert (=> d!333476 m!1338753))

(assert (=> b!1167308 m!1338513))

(assert (=> b!1166020 d!333476))

(declare-fun d!333478 () Bool)

(assert (=> d!333478 (= (head!2102 (drop!482 lt!398835 1)) (h!16920 (drop!482 lt!398835 1)))))

(assert (=> b!1166020 d!333478))

(declare-fun d!333480 () Bool)

(declare-fun res!527148 () Bool)

(declare-fun e!748160 () Bool)

(assert (=> d!333480 (=> res!527148 e!748160)))

(assert (=> d!333480 (= res!527148 ((_ is Nil!11519) (t!110333 lt!398622)))))

(assert (=> d!333480 (= (forall!3024 (t!110333 lt!398622) lambda!47883) e!748160)))

(declare-fun b!1167309 () Bool)

(declare-fun e!748161 () Bool)

(assert (=> b!1167309 (= e!748160 e!748161)))

(declare-fun res!527149 () Bool)

(assert (=> b!1167309 (=> (not res!527149) (not e!748161))))

(assert (=> b!1167309 (= res!527149 (dynLambda!5074 lambda!47883 (h!16920 (t!110333 lt!398622))))))

(declare-fun b!1167310 () Bool)

(assert (=> b!1167310 (= e!748161 (forall!3024 (t!110333 (t!110333 lt!398622)) lambda!47883))))

(assert (= (and d!333480 (not res!527148)) b!1167309))

(assert (= (and b!1167309 res!527149) b!1167310))

(declare-fun b_lambda!34803 () Bool)

(assert (=> (not b_lambda!34803) (not b!1167309)))

(declare-fun m!1338755 () Bool)

(assert (=> b!1167309 m!1338755))

(declare-fun m!1338757 () Bool)

(assert (=> b!1167310 m!1338757))

(assert (=> d!332796 d!333480))

(assert (=> d!332796 d!333086))

(assert (=> bm!82160 d!333172))

(declare-fun d!333482 () Bool)

(assert (=> d!333482 (= (separableTokens!139 Lexer!1700 (tokens!1624 thiss!10527) (rules!9572 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!69 Lexer!1700 (tokens!1624 thiss!10527) 0 (rules!9572 thiss!10527)))))

(declare-fun bs!284822 () Bool)

(assert (= bs!284822 d!333482))

(assert (=> bs!284822 m!1335421))

(assert (=> b!1166067 d!333482))

(declare-fun bs!284832 () Bool)

(declare-fun d!333484 () Bool)

(assert (= bs!284832 (and d!333484 d!333076)))

(declare-fun lambda!47930 () Int)

(assert (=> bs!284832 (= lambda!47930 lambda!47907)))

(declare-fun bs!284834 () Bool)

(assert (= bs!284834 (and d!333484 d!332714)))

(assert (=> bs!284834 (= lambda!47930 lambda!47877)))

(declare-fun bs!284835 () Bool)

(assert (= bs!284835 (and d!333484 d!332754)))

(assert (=> bs!284835 (= lambda!47930 lambda!47880)))

(declare-fun bs!284836 () Bool)

(assert (= bs!284836 (and d!333484 d!332758)))

(assert (=> bs!284836 (= lambda!47930 lambda!47881)))

(declare-fun bs!284837 () Bool)

(assert (= bs!284837 (and d!333484 d!332712)))

(assert (=> bs!284837 (= lambda!47930 lambda!47872)))

(declare-fun bs!284838 () Bool)

(assert (= bs!284838 (and d!333484 d!333328)))

(assert (=> bs!284838 (= lambda!47930 lambda!47924)))

(declare-fun bs!284839 () Bool)

(assert (= bs!284839 (and d!333484 d!332732)))

(assert (=> bs!284839 (= lambda!47930 lambda!47878)))

(declare-fun bs!284840 () Bool)

(assert (= bs!284840 (and d!333484 d!332856)))

(assert (=> bs!284840 (= lambda!47930 lambda!47902)))

(declare-fun bs!284841 () Bool)

(assert (= bs!284841 (and d!333484 b!1166241)))

(assert (=> bs!284841 (= lambda!47930 lambda!47890)))

(declare-fun bs!284842 () Bool)

(assert (= bs!284842 (and d!333484 d!332834)))

(assert (=> bs!284842 (= lambda!47930 lambda!47891)))

(declare-fun bs!284843 () Bool)

(assert (= bs!284843 (and d!333484 d!332868)))

(assert (=> bs!284843 (= lambda!47930 lambda!47903)))

(declare-fun bs!284844 () Bool)

(assert (= bs!284844 (and d!333484 b!1166281)))

(assert (=> bs!284844 (= lambda!47930 lambda!47898)))

(declare-fun bs!284845 () Bool)

(assert (= bs!284845 (and d!333484 d!332796)))

(assert (=> bs!284845 (= lambda!47930 lambda!47883)))

(declare-fun bs!284846 () Bool)

(assert (= bs!284846 (and d!333484 b!1165777)))

(assert (=> bs!284846 (= lambda!47930 lambda!47859)))

(declare-fun bs!284847 () Bool)

(assert (= bs!284847 (and d!333484 d!332668)))

(assert (=> bs!284847 (= lambda!47930 lambda!47862)))

(declare-fun b!1167315 () Bool)

(declare-fun e!748166 () Bool)

(assert (=> b!1167315 (= e!748166 true)))

(declare-fun b!1167314 () Bool)

(declare-fun e!748165 () Bool)

(assert (=> b!1167314 (= e!748165 e!748166)))

(declare-fun b!1167313 () Bool)

(declare-fun e!748164 () Bool)

(assert (=> b!1167313 (= e!748164 e!748165)))

(assert (=> d!333484 e!748164))

(assert (= b!1167314 b!1167315))

(assert (= b!1167313 b!1167314))

(assert (= (and d!333484 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1167313))

(assert (=> b!1167315 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47930))))

(assert (=> b!1167315 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47930))))

(assert (=> d!333484 true))

(declare-fun lt!399805 () Bool)

(assert (=> d!333484 (= lt!399805 (forall!3024 (t!110333 (t!110333 lt!398622)) lambda!47930))))

(declare-fun e!748162 () Bool)

(assert (=> d!333484 (= lt!399805 e!748162)))

(declare-fun res!527151 () Bool)

(assert (=> d!333484 (=> res!527151 e!748162)))

(assert (=> d!333484 (= res!527151 (not ((_ is Cons!11519) (t!110333 (t!110333 lt!398622)))))))

(assert (=> d!333484 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333484 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 lt!398622))) lt!399805)))

(declare-fun b!1167311 () Bool)

(declare-fun e!748163 () Bool)

(assert (=> b!1167311 (= e!748162 e!748163)))

(declare-fun res!527150 () Bool)

(assert (=> b!1167311 (=> (not res!527150) (not e!748163))))

(assert (=> b!1167311 (= res!527150 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (t!110333 lt!398622)))))))

(declare-fun b!1167312 () Bool)

(assert (=> b!1167312 (= e!748163 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 (t!110333 lt!398622)))))))

(assert (= (and d!333484 (not res!527151)) b!1167311))

(assert (= (and b!1167311 res!527150) b!1167312))

(declare-fun m!1338771 () Bool)

(assert (=> d!333484 m!1338771))

(assert (=> d!333484 m!1335511))

(declare-fun m!1338773 () Bool)

(assert (=> b!1167311 m!1338773))

(declare-fun m!1338775 () Bool)

(assert (=> b!1167312 m!1338775))

(assert (=> b!1166139 d!333484))

(declare-fun d!333492 () Bool)

(declare-fun lt!399808 () Bool)

(assert (=> d!333492 (= lt!399808 (isEmpty!7011 (list!4243 (_2!6858 lt!399247))))))

(assert (=> d!333492 (= lt!399808 (isEmpty!7012 (c!194628 (_2!6858 lt!399247))))))

(assert (=> d!333492 (= (isEmpty!7005 (_2!6858 lt!399247)) lt!399808)))

(declare-fun bs!284848 () Bool)

(assert (= bs!284848 d!333492))

(declare-fun m!1338777 () Bool)

(assert (=> bs!284848 m!1338777))

(assert (=> bs!284848 m!1338777))

(declare-fun m!1338779 () Bool)

(assert (=> bs!284848 m!1338779))

(declare-fun m!1338781 () Bool)

(assert (=> bs!284848 m!1338781))

(assert (=> b!1166487 d!333492))

(assert (=> b!1165770 d!332798))

(declare-fun d!333494 () Bool)

(declare-fun lt!399809 () Token!3676)

(assert (=> d!333494 (= lt!399809 (apply!2480 (list!4239 (_1!6858 lt!398893)) 0))))

(assert (=> d!333494 (= lt!399809 (apply!2483 (c!194629 (_1!6858 lt!398893)) 0))))

(declare-fun e!748170 () Bool)

(assert (=> d!333494 e!748170))

(declare-fun res!527153 () Bool)

(assert (=> d!333494 (=> (not res!527153) (not e!748170))))

(assert (=> d!333494 (= res!527153 (<= 0 0))))

(assert (=> d!333494 (= (apply!2479 (_1!6858 lt!398893) 0) lt!399809)))

(declare-fun b!1167321 () Bool)

(assert (=> b!1167321 (= e!748170 (< 0 (size!9067 (_1!6858 lt!398893))))))

(assert (= (and d!333494 res!527153) b!1167321))

(declare-fun m!1338783 () Bool)

(assert (=> d!333494 m!1338783))

(assert (=> d!333494 m!1338783))

(declare-fun m!1338785 () Bool)

(assert (=> d!333494 m!1338785))

(declare-fun m!1338787 () Bool)

(assert (=> d!333494 m!1338787))

(assert (=> b!1167321 m!1335963))

(assert (=> b!1166100 d!333494))

(declare-fun d!333496 () Bool)

(declare-fun res!527154 () Bool)

(declare-fun e!748171 () Bool)

(assert (=> d!333496 (=> res!527154 e!748171)))

(assert (=> d!333496 (= res!527154 ((_ is Nil!11519) (t!110333 lt!398622)))))

(assert (=> d!333496 (= (forall!3024 (t!110333 lt!398622) lambda!47859) e!748171)))

(declare-fun b!1167322 () Bool)

(declare-fun e!748172 () Bool)

(assert (=> b!1167322 (= e!748171 e!748172)))

(declare-fun res!527155 () Bool)

(assert (=> b!1167322 (=> (not res!527155) (not e!748172))))

(assert (=> b!1167322 (= res!527155 (dynLambda!5074 lambda!47859 (h!16920 (t!110333 lt!398622))))))

(declare-fun b!1167323 () Bool)

(assert (=> b!1167323 (= e!748172 (forall!3024 (t!110333 (t!110333 lt!398622)) lambda!47859))))

(assert (= (and d!333496 (not res!527154)) b!1167322))

(assert (= (and b!1167322 res!527155) b!1167323))

(declare-fun b_lambda!34805 () Bool)

(assert (=> (not b_lambda!34805) (not b!1167322)))

(declare-fun m!1338789 () Bool)

(assert (=> b!1167322 m!1338789))

(declare-fun m!1338791 () Bool)

(assert (=> b!1167323 m!1338791))

(assert (=> b!1166338 d!333496))

(declare-fun d!333498 () Bool)

(declare-fun lt!399816 () Int)

(assert (=> d!333498 (>= lt!399816 0)))

(declare-fun e!748180 () Int)

(assert (=> d!333498 (= lt!399816 e!748180)))

(declare-fun c!194876 () Bool)

(assert (=> d!333498 (= c!194876 ((_ is Nil!11518) (list!4243 (charsOf!1068 lt!398625))))))

(assert (=> d!333498 (= (size!9072 (list!4243 (charsOf!1068 lt!398625))) lt!399816)))

(declare-fun b!1167338 () Bool)

(assert (=> b!1167338 (= e!748180 0)))

(declare-fun b!1167340 () Bool)

(assert (=> b!1167340 (= e!748180 (+ 1 (size!9072 (t!110332 (list!4243 (charsOf!1068 lt!398625))))))))

(assert (= (and d!333498 c!194876) b!1167338))

(assert (= (and d!333498 (not c!194876)) b!1167340))

(declare-fun m!1338797 () Bool)

(assert (=> b!1167340 m!1338797))

(assert (=> d!332674 d!333498))

(declare-fun d!333502 () Bool)

(declare-fun list!4246 (Conc!3776) List!11542)

(assert (=> d!333502 (= (list!4243 (charsOf!1068 lt!398625)) (list!4246 (c!194628 (charsOf!1068 lt!398625))))))

(declare-fun bs!284850 () Bool)

(assert (= bs!284850 d!333502))

(declare-fun m!1338805 () Bool)

(assert (=> bs!284850 m!1338805))

(assert (=> d!332674 d!333502))

(declare-fun d!333506 () Bool)

(declare-fun lt!399821 () Int)

(assert (=> d!333506 (= lt!399821 (size!9072 (list!4246 (c!194628 (charsOf!1068 lt!398625)))))))

(assert (=> d!333506 (= lt!399821 (ite ((_ is Empty!3776) (c!194628 (charsOf!1068 lt!398625))) 0 (ite ((_ is Leaf!5790) (c!194628 (charsOf!1068 lt!398625))) (csize!7783 (c!194628 (charsOf!1068 lt!398625))) (csize!7782 (c!194628 (charsOf!1068 lt!398625))))))))

(assert (=> d!333506 (= (size!9073 (c!194628 (charsOf!1068 lt!398625))) lt!399821)))

(declare-fun bs!284853 () Bool)

(assert (= bs!284853 d!333506))

(assert (=> bs!284853 m!1338805))

(assert (=> bs!284853 m!1338805))

(declare-fun m!1338835 () Bool)

(assert (=> bs!284853 m!1338835))

(assert (=> d!332674 d!333506))

(assert (=> d!332666 d!332662))

(declare-fun d!333520 () Bool)

(assert (=> d!333520 (forall!3024 lt!398621 lambda!47859)))

(assert (=> d!333520 true))

(declare-fun _$37!315 () Unit!17605)

(assert (=> d!333520 (= (choose!7522 lt!398621 lt!398620 lambda!47859) _$37!315)))

(declare-fun bs!284854 () Bool)

(assert (= bs!284854 d!333520))

(assert (=> bs!284854 m!1335357))

(assert (=> d!332666 d!333520))

(declare-fun d!333524 () Bool)

(declare-fun res!527166 () Bool)

(declare-fun e!748195 () Bool)

(assert (=> d!333524 (=> res!527166 e!748195)))

(assert (=> d!333524 (= res!527166 ((_ is Nil!11519) lt!398620))))

(assert (=> d!333524 (= (forall!3024 lt!398620 lambda!47859) e!748195)))

(declare-fun b!1167360 () Bool)

(declare-fun e!748196 () Bool)

(assert (=> b!1167360 (= e!748195 e!748196)))

(declare-fun res!527167 () Bool)

(assert (=> b!1167360 (=> (not res!527167) (not e!748196))))

(assert (=> b!1167360 (= res!527167 (dynLambda!5074 lambda!47859 (h!16920 lt!398620)))))

(declare-fun b!1167361 () Bool)

(assert (=> b!1167361 (= e!748196 (forall!3024 (t!110333 lt!398620) lambda!47859))))

(assert (= (and d!333524 (not res!527166)) b!1167360))

(assert (= (and b!1167360 res!527167) b!1167361))

(declare-fun b_lambda!34807 () Bool)

(assert (=> (not b_lambda!34807) (not b!1167360)))

(declare-fun m!1338841 () Bool)

(assert (=> b!1167360 m!1338841))

(declare-fun m!1338843 () Bool)

(assert (=> b!1167361 m!1338843))

(assert (=> d!332666 d!333524))

(declare-fun bs!284864 () Bool)

(declare-fun d!333526 () Bool)

(assert (= bs!284864 (and d!333526 d!333076)))

(declare-fun lambda!47935 () Int)

(assert (=> bs!284864 (= lambda!47935 lambda!47907)))

(declare-fun bs!284867 () Bool)

(assert (= bs!284867 (and d!333526 d!332714)))

(assert (=> bs!284867 (= lambda!47935 lambda!47877)))

(declare-fun bs!284869 () Bool)

(assert (= bs!284869 (and d!333526 d!332754)))

(assert (=> bs!284869 (= lambda!47935 lambda!47880)))

(declare-fun bs!284871 () Bool)

(assert (= bs!284871 (and d!333526 d!332758)))

(assert (=> bs!284871 (= lambda!47935 lambda!47881)))

(declare-fun bs!284873 () Bool)

(assert (= bs!284873 (and d!333526 d!332712)))

(assert (=> bs!284873 (= lambda!47935 lambda!47872)))

(declare-fun bs!284875 () Bool)

(assert (= bs!284875 (and d!333526 d!333328)))

(assert (=> bs!284875 (= lambda!47935 lambda!47924)))

(declare-fun bs!284877 () Bool)

(assert (= bs!284877 (and d!333526 d!333484)))

(assert (=> bs!284877 (= lambda!47935 lambda!47930)))

(declare-fun bs!284879 () Bool)

(assert (= bs!284879 (and d!333526 d!332732)))

(assert (=> bs!284879 (= lambda!47935 lambda!47878)))

(declare-fun bs!284881 () Bool)

(assert (= bs!284881 (and d!333526 d!332856)))

(assert (=> bs!284881 (= lambda!47935 lambda!47902)))

(declare-fun bs!284883 () Bool)

(assert (= bs!284883 (and d!333526 b!1166241)))

(assert (=> bs!284883 (= lambda!47935 lambda!47890)))

(declare-fun bs!284885 () Bool)

(assert (= bs!284885 (and d!333526 d!332834)))

(assert (=> bs!284885 (= lambda!47935 lambda!47891)))

(declare-fun bs!284888 () Bool)

(assert (= bs!284888 (and d!333526 d!332868)))

(assert (=> bs!284888 (= lambda!47935 lambda!47903)))

(declare-fun bs!284890 () Bool)

(assert (= bs!284890 (and d!333526 b!1166281)))

(assert (=> bs!284890 (= lambda!47935 lambda!47898)))

(declare-fun bs!284892 () Bool)

(assert (= bs!284892 (and d!333526 d!332796)))

(assert (=> bs!284892 (= lambda!47935 lambda!47883)))

(declare-fun bs!284894 () Bool)

(assert (= bs!284894 (and d!333526 b!1165777)))

(assert (=> bs!284894 (= lambda!47935 lambda!47859)))

(declare-fun bs!284896 () Bool)

(assert (= bs!284896 (and d!333526 d!332668)))

(assert (=> bs!284896 (= lambda!47935 lambda!47862)))

(declare-fun b!1167371 () Bool)

(declare-fun e!748206 () Bool)

(assert (=> b!1167371 (= e!748206 true)))

(declare-fun b!1167370 () Bool)

(declare-fun e!748205 () Bool)

(assert (=> b!1167370 (= e!748205 e!748206)))

(declare-fun b!1167369 () Bool)

(declare-fun e!748204 () Bool)

(assert (=> b!1167369 (= e!748204 e!748205)))

(assert (=> d!333526 e!748204))

(assert (= b!1167370 b!1167371))

(assert (= b!1167369 b!1167370))

(assert (= (and d!333526 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1167369))

(assert (=> b!1167371 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47935))))

(assert (=> b!1167371 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47935))))

(assert (=> d!333526 true))

(declare-fun lt!399823 () Bool)

(assert (=> d!333526 (= lt!399823 (forall!3024 lt!398855 lambda!47935))))

(declare-fun e!748202 () Bool)

(assert (=> d!333526 (= lt!399823 e!748202)))

(declare-fun res!527171 () Bool)

(assert (=> d!333526 (=> res!527171 e!748202)))

(assert (=> d!333526 (= res!527171 (not ((_ is Cons!11519) lt!398855)))))

(assert (=> d!333526 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333526 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398855) lt!399823)))

(declare-fun b!1167367 () Bool)

(declare-fun e!748203 () Bool)

(assert (=> b!1167367 (= e!748202 e!748203)))

(declare-fun res!527170 () Bool)

(assert (=> b!1167367 (=> (not res!527170) (not e!748203))))

(assert (=> b!1167367 (= res!527170 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398855)))))

(declare-fun b!1167368 () Bool)

(assert (=> b!1167368 (= e!748203 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398855)))))

(assert (= (and d!333526 (not res!527171)) b!1167367))

(assert (= (and b!1167367 res!527170) b!1167368))

(declare-fun m!1338845 () Bool)

(assert (=> d!333526 m!1338845))

(assert (=> d!333526 m!1335511))

(declare-fun m!1338849 () Bool)

(assert (=> b!1167367 m!1338849))

(declare-fun m!1338853 () Bool)

(assert (=> b!1167368 m!1338853))

(assert (=> b!1166016 d!333526))

(assert (=> d!332902 d!332886))

(declare-fun d!333528 () Bool)

(assert (=> d!333528 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398625)))

(assert (=> d!333528 true))

(declare-fun _$77!538 () Unit!17605)

(assert (=> d!333528 (= (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398620 lt!398625) _$77!538)))

(declare-fun bs!284898 () Bool)

(assert (= bs!284898 d!333528))

(assert (=> bs!284898 m!1335321))

(assert (=> d!332902 d!333528))

(assert (=> d!332902 d!333086))

(declare-fun b!1167378 () Bool)

(declare-fun e!748214 () Bool)

(assert (=> b!1167378 (= e!748214 (subseq!259 (t!110333 lt!399183) (t!110333 lt!398620)))))

(declare-fun b!1167379 () Bool)

(declare-fun e!748212 () Bool)

(assert (=> b!1167379 (= e!748212 (subseq!259 lt!399183 (t!110333 lt!398620)))))

(declare-fun b!1167377 () Bool)

(declare-fun e!748213 () Bool)

(assert (=> b!1167377 (= e!748213 e!748212)))

(declare-fun res!527178 () Bool)

(assert (=> b!1167377 (=> res!527178 e!748212)))

(assert (=> b!1167377 (= res!527178 e!748214)))

(declare-fun res!527179 () Bool)

(assert (=> b!1167377 (=> (not res!527179) (not e!748214))))

(assert (=> b!1167377 (= res!527179 (= (h!16920 lt!399183) (h!16920 lt!398620)))))

(declare-fun b!1167376 () Bool)

(declare-fun e!748211 () Bool)

(assert (=> b!1167376 (= e!748211 e!748213)))

(declare-fun res!527176 () Bool)

(assert (=> b!1167376 (=> (not res!527176) (not e!748213))))

(assert (=> b!1167376 (= res!527176 ((_ is Cons!11519) lt!398620))))

(declare-fun d!333532 () Bool)

(declare-fun res!527177 () Bool)

(assert (=> d!333532 (=> res!527177 e!748211)))

(assert (=> d!333532 (= res!527177 ((_ is Nil!11519) lt!399183))))

(assert (=> d!333532 (= (subseq!259 lt!399183 lt!398620) e!748211)))

(assert (= (and d!333532 (not res!527177)) b!1167376))

(assert (= (and b!1167376 res!527176) b!1167377))

(assert (= (and b!1167377 res!527179) b!1167378))

(assert (= (and b!1167377 (not res!527178)) b!1167379))

(declare-fun m!1338861 () Bool)

(assert (=> b!1167378 m!1338861))

(declare-fun m!1338863 () Bool)

(assert (=> b!1167379 m!1338863))

(assert (=> b!1166282 d!333532))

(assert (=> b!1166169 d!332790))

(assert (=> b!1166246 d!332800))

(declare-fun bs!284899 () Bool)

(declare-fun d!333536 () Bool)

(assert (= bs!284899 (and d!333536 d!333076)))

(declare-fun lambda!47936 () Int)

(assert (=> bs!284899 (= lambda!47936 lambda!47907)))

(declare-fun bs!284900 () Bool)

(assert (= bs!284900 (and d!333536 d!332714)))

(assert (=> bs!284900 (= lambda!47936 lambda!47877)))

(declare-fun bs!284901 () Bool)

(assert (= bs!284901 (and d!333536 d!333526)))

(assert (=> bs!284901 (= lambda!47936 lambda!47935)))

(declare-fun bs!284902 () Bool)

(assert (= bs!284902 (and d!333536 d!332754)))

(assert (=> bs!284902 (= lambda!47936 lambda!47880)))

(declare-fun bs!284903 () Bool)

(assert (= bs!284903 (and d!333536 d!332758)))

(assert (=> bs!284903 (= lambda!47936 lambda!47881)))

(declare-fun bs!284904 () Bool)

(assert (= bs!284904 (and d!333536 d!332712)))

(assert (=> bs!284904 (= lambda!47936 lambda!47872)))

(declare-fun bs!284905 () Bool)

(assert (= bs!284905 (and d!333536 d!333328)))

(assert (=> bs!284905 (= lambda!47936 lambda!47924)))

(declare-fun bs!284906 () Bool)

(assert (= bs!284906 (and d!333536 d!333484)))

(assert (=> bs!284906 (= lambda!47936 lambda!47930)))

(declare-fun bs!284907 () Bool)

(assert (= bs!284907 (and d!333536 d!332732)))

(assert (=> bs!284907 (= lambda!47936 lambda!47878)))

(declare-fun bs!284908 () Bool)

(assert (= bs!284908 (and d!333536 d!332856)))

(assert (=> bs!284908 (= lambda!47936 lambda!47902)))

(declare-fun bs!284909 () Bool)

(assert (= bs!284909 (and d!333536 b!1166241)))

(assert (=> bs!284909 (= lambda!47936 lambda!47890)))

(declare-fun bs!284910 () Bool)

(assert (= bs!284910 (and d!333536 d!332834)))

(assert (=> bs!284910 (= lambda!47936 lambda!47891)))

(declare-fun bs!284911 () Bool)

(assert (= bs!284911 (and d!333536 d!332868)))

(assert (=> bs!284911 (= lambda!47936 lambda!47903)))

(declare-fun bs!284912 () Bool)

(assert (= bs!284912 (and d!333536 b!1166281)))

(assert (=> bs!284912 (= lambda!47936 lambda!47898)))

(declare-fun bs!284913 () Bool)

(assert (= bs!284913 (and d!333536 d!332796)))

(assert (=> bs!284913 (= lambda!47936 lambda!47883)))

(declare-fun bs!284914 () Bool)

(assert (= bs!284914 (and d!333536 b!1165777)))

(assert (=> bs!284914 (= lambda!47936 lambda!47859)))

(declare-fun bs!284915 () Bool)

(assert (= bs!284915 (and d!333536 d!332668)))

(assert (=> bs!284915 (= lambda!47936 lambda!47862)))

(declare-fun b!1167388 () Bool)

(declare-fun e!748222 () Bool)

(assert (=> b!1167388 (= e!748222 true)))

(declare-fun b!1167387 () Bool)

(declare-fun e!748221 () Bool)

(assert (=> b!1167387 (= e!748221 e!748222)))

(declare-fun b!1167386 () Bool)

(declare-fun e!748220 () Bool)

(assert (=> b!1167386 (= e!748220 e!748221)))

(assert (=> d!333536 e!748220))

(assert (= b!1167387 b!1167388))

(assert (= b!1167386 b!1167387))

(assert (= (and d!333536 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1167386))

(assert (=> b!1167388 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47936))))

(assert (=> b!1167388 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47936))))

(assert (=> d!333536 true))

(declare-fun lt!399824 () Bool)

(assert (=> d!333536 (= lt!399824 (forall!3024 (drop!482 lt!398620 from!787) lambda!47936))))

(declare-fun e!748217 () Bool)

(assert (=> d!333536 (= lt!399824 e!748217)))

(declare-fun res!527181 () Bool)

(assert (=> d!333536 (=> res!527181 e!748217)))

(assert (=> d!333536 (= res!527181 (not ((_ is Cons!11519) (drop!482 lt!398620 from!787))))))

(assert (=> d!333536 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333536 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (drop!482 lt!398620 from!787)) lt!399824)))

(declare-fun b!1167384 () Bool)

(declare-fun e!748218 () Bool)

(assert (=> b!1167384 (= e!748217 e!748218)))

(declare-fun res!527180 () Bool)

(assert (=> b!1167384 (=> (not res!527180) (not e!748218))))

(assert (=> b!1167384 (= res!527180 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (drop!482 lt!398620 from!787))))))

(declare-fun b!1167385 () Bool)

(assert (=> b!1167385 (= e!748218 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (drop!482 lt!398620 from!787))))))

(assert (= (and d!333536 (not res!527181)) b!1167384))

(assert (= (and b!1167384 res!527180) b!1167385))

(assert (=> d!333536 m!1335389))

(declare-fun m!1338879 () Bool)

(assert (=> d!333536 m!1338879))

(assert (=> d!333536 m!1335511))

(declare-fun m!1338881 () Bool)

(assert (=> b!1167384 m!1338881))

(declare-fun m!1338883 () Bool)

(assert (=> b!1167385 m!1338883))

(assert (=> d!332836 d!333536))

(assert (=> d!332836 d!332852))

(declare-fun bs!284959 () Bool)

(declare-fun d!333546 () Bool)

(assert (= bs!284959 (and d!333546 d!333076)))

(declare-fun lambda!47940 () Int)

(assert (=> bs!284959 (= lambda!47940 lambda!47907)))

(declare-fun bs!284960 () Bool)

(assert (= bs!284960 (and d!333546 d!332714)))

(assert (=> bs!284960 (= lambda!47940 lambda!47877)))

(declare-fun bs!284961 () Bool)

(assert (= bs!284961 (and d!333546 d!333526)))

(assert (=> bs!284961 (= lambda!47940 lambda!47935)))

(declare-fun bs!284962 () Bool)

(assert (= bs!284962 (and d!333546 d!332754)))

(assert (=> bs!284962 (= lambda!47940 lambda!47880)))

(declare-fun bs!284963 () Bool)

(assert (= bs!284963 (and d!333546 d!333536)))

(assert (=> bs!284963 (= lambda!47940 lambda!47936)))

(declare-fun bs!284964 () Bool)

(assert (= bs!284964 (and d!333546 d!332758)))

(assert (=> bs!284964 (= lambda!47940 lambda!47881)))

(declare-fun bs!284965 () Bool)

(assert (= bs!284965 (and d!333546 d!332712)))

(assert (=> bs!284965 (= lambda!47940 lambda!47872)))

(declare-fun bs!284966 () Bool)

(assert (= bs!284966 (and d!333546 d!333328)))

(assert (=> bs!284966 (= lambda!47940 lambda!47924)))

(declare-fun bs!284967 () Bool)

(assert (= bs!284967 (and d!333546 d!333484)))

(assert (=> bs!284967 (= lambda!47940 lambda!47930)))

(declare-fun bs!284968 () Bool)

(assert (= bs!284968 (and d!333546 d!332732)))

(assert (=> bs!284968 (= lambda!47940 lambda!47878)))

(declare-fun bs!284969 () Bool)

(assert (= bs!284969 (and d!333546 d!332856)))

(assert (=> bs!284969 (= lambda!47940 lambda!47902)))

(declare-fun bs!284970 () Bool)

(assert (= bs!284970 (and d!333546 b!1166241)))

(assert (=> bs!284970 (= lambda!47940 lambda!47890)))

(declare-fun bs!284971 () Bool)

(assert (= bs!284971 (and d!333546 d!332834)))

(assert (=> bs!284971 (= lambda!47940 lambda!47891)))

(declare-fun bs!284972 () Bool)

(assert (= bs!284972 (and d!333546 d!332868)))

(assert (=> bs!284972 (= lambda!47940 lambda!47903)))

(declare-fun bs!284973 () Bool)

(assert (= bs!284973 (and d!333546 b!1166281)))

(assert (=> bs!284973 (= lambda!47940 lambda!47898)))

(declare-fun bs!284974 () Bool)

(assert (= bs!284974 (and d!333546 d!332796)))

(assert (=> bs!284974 (= lambda!47940 lambda!47883)))

(declare-fun bs!284975 () Bool)

(assert (= bs!284975 (and d!333546 b!1165777)))

(assert (=> bs!284975 (= lambda!47940 lambda!47859)))

(declare-fun bs!284976 () Bool)

(assert (= bs!284976 (and d!333546 d!332668)))

(assert (=> bs!284976 (= lambda!47940 lambda!47862)))

(declare-fun b!1167609 () Bool)

(declare-fun e!748364 () Bool)

(assert (=> b!1167609 (= e!748364 true)))

(declare-fun b!1167608 () Bool)

(declare-fun e!748363 () Bool)

(assert (=> b!1167608 (= e!748363 e!748364)))

(declare-fun b!1167607 () Bool)

(declare-fun e!748362 () Bool)

(assert (=> b!1167607 (= e!748362 e!748363)))

(assert (=> d!333546 e!748362))

(assert (= b!1167608 b!1167609))

(assert (= b!1167607 b!1167608))

(assert (= (and d!333546 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1167607))

(assert (=> b!1167609 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47940))))

(assert (=> b!1167609 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47940))))

(assert (=> d!333546 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (drop!482 lt!398620 from!787) (rules!9572 thiss!10527))))

(declare-fun lt!399906 () Unit!17605)

(declare-fun lt!399903 () Unit!17605)

(assert (=> d!333546 (= lt!399906 lt!399903)))

(declare-fun lt!399902 () List!11543)

(assert (=> d!333546 (forall!3024 lt!399902 lambda!47940)))

(assert (=> d!333546 (= lt!399903 (lemmaForallSubseq!151 lt!399902 lt!398620 lambda!47940))))

(assert (=> d!333546 (= lt!399902 (drop!482 lt!398620 from!787))))

(declare-fun lt!399900 () Unit!17605)

(declare-fun lt!399904 () Unit!17605)

(assert (=> d!333546 (= lt!399900 lt!399904)))

(assert (=> d!333546 (subseq!259 (drop!482 lt!398620 from!787) lt!398620)))

(assert (=> d!333546 (= lt!399904 (lemmaDropSubseq!46 lt!398620 from!787))))

(declare-fun lt!399901 () Unit!17605)

(declare-fun Unit!17677 () Unit!17605)

(assert (=> d!333546 (= lt!399901 Unit!17677)))

(declare-fun e!748361 () Bool)

(assert (=> d!333546 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (drop!482 lt!398620 from!787)) e!748361)))

(declare-fun res!527259 () Bool)

(assert (=> d!333546 (=> res!527259 e!748361)))

(declare-fun lt!399905 () List!11543)

(assert (=> d!333546 (= res!527259 (not ((_ is Cons!11519) lt!399905)))))

(assert (=> d!333546 (= lt!399905 (drop!482 lt!398620 from!787))))

(assert (=> d!333546 true))

(declare-fun _$82!79 () Unit!17605)

(assert (=> d!333546 (= (choose!7524 Lexer!1700 lt!398620 from!787 (rules!9572 thiss!10527)) _$82!79)))

(declare-fun b!1167605 () Bool)

(declare-fun e!748360 () Bool)

(assert (=> b!1167605 (= e!748361 e!748360)))

(declare-fun res!527260 () Bool)

(assert (=> b!1167605 (=> (not res!527260) (not e!748360))))

(assert (=> b!1167605 (= res!527260 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!399905)))))

(declare-fun b!1167606 () Bool)

(assert (=> b!1167606 (= e!748360 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!399905)))))

(assert (= (and d!333546 (not res!527259)) b!1167605))

(assert (= (and b!1167605 res!527260) b!1167606))

(assert (=> d!333546 m!1335391))

(assert (=> d!333546 m!1335389))

(assert (=> d!333546 m!1336439))

(assert (=> d!333546 m!1335389))

(declare-fun m!1339319 () Bool)

(assert (=> d!333546 m!1339319))

(assert (=> d!333546 m!1335389))

(assert (=> d!333546 m!1336437))

(declare-fun m!1339321 () Bool)

(assert (=> d!333546 m!1339321))

(assert (=> d!333546 m!1335389))

(assert (=> d!333546 m!1336427))

(declare-fun m!1339323 () Bool)

(assert (=> b!1167605 m!1339323))

(declare-fun m!1339325 () Bool)

(assert (=> b!1167606 m!1339325))

(assert (=> d!332836 d!333546))

(assert (=> d!332836 d!333086))

(assert (=> bs!284435 d!332770))

(declare-fun d!333690 () Bool)

(assert (=> d!333690 (= (head!2102 lt!398620) (h!16920 lt!398620))))

(assert (=> b!1166475 d!333690))

(assert (=> b!1166165 d!333086))

(assert (=> b!1166332 d!332794))

(assert (=> bm!82159 d!333172))

(declare-fun b!1167612 () Bool)

(declare-fun e!748368 () Bool)

(assert (=> b!1167612 (= e!748368 (subseq!259 (t!110333 (slice!313 lt!398620 from!787 to!267)) (t!110333 (t!110333 lt!398620))))))

(declare-fun b!1167613 () Bool)

(declare-fun e!748366 () Bool)

(assert (=> b!1167613 (= e!748366 (subseq!259 (slice!313 lt!398620 from!787 to!267) (t!110333 (t!110333 lt!398620))))))

(declare-fun b!1167611 () Bool)

(declare-fun e!748367 () Bool)

(assert (=> b!1167611 (= e!748367 e!748366)))

(declare-fun res!527263 () Bool)

(assert (=> b!1167611 (=> res!527263 e!748366)))

(assert (=> b!1167611 (= res!527263 e!748368)))

(declare-fun res!527264 () Bool)

(assert (=> b!1167611 (=> (not res!527264) (not e!748368))))

(assert (=> b!1167611 (= res!527264 (= (h!16920 (slice!313 lt!398620 from!787 to!267)) (h!16920 (t!110333 lt!398620))))))

(declare-fun b!1167610 () Bool)

(declare-fun e!748365 () Bool)

(assert (=> b!1167610 (= e!748365 e!748367)))

(declare-fun res!527261 () Bool)

(assert (=> b!1167610 (=> (not res!527261) (not e!748367))))

(assert (=> b!1167610 (= res!527261 ((_ is Cons!11519) (t!110333 lt!398620)))))

(declare-fun d!333692 () Bool)

(declare-fun res!527262 () Bool)

(assert (=> d!333692 (=> res!527262 e!748365)))

(assert (=> d!333692 (= res!527262 ((_ is Nil!11519) (slice!313 lt!398620 from!787 to!267)))))

(assert (=> d!333692 (= (subseq!259 (slice!313 lt!398620 from!787 to!267) (t!110333 lt!398620)) e!748365)))

(assert (= (and d!333692 (not res!527262)) b!1167610))

(assert (= (and b!1167610 res!527261) b!1167611))

(assert (= (and b!1167611 res!527264) b!1167612))

(assert (= (and b!1167611 (not res!527263)) b!1167613))

(declare-fun m!1339327 () Bool)

(assert (=> b!1167612 m!1339327))

(assert (=> b!1167613 m!1335353))

(declare-fun m!1339329 () Bool)

(assert (=> b!1167613 m!1339329))

(assert (=> b!1165801 d!333692))

(assert (=> b!1166008 d!332920))

(declare-fun d!333694 () Bool)

(declare-fun lt!399907 () Int)

(assert (=> d!333694 (= lt!399907 (size!9071 (list!4239 (_1!6858 lt!398893))))))

(assert (=> d!333694 (= lt!399907 (size!9075 (c!194629 (_1!6858 lt!398893))))))

(assert (=> d!333694 (= (size!9067 (_1!6858 lt!398893)) lt!399907)))

(declare-fun bs!284977 () Bool)

(assert (= bs!284977 d!333694))

(assert (=> bs!284977 m!1338783))

(assert (=> bs!284977 m!1338783))

(declare-fun m!1339331 () Bool)

(assert (=> bs!284977 m!1339331))

(declare-fun m!1339333 () Bool)

(assert (=> bs!284977 m!1339333))

(assert (=> d!332770 d!333694))

(declare-fun b!1167614 () Bool)

(declare-fun e!748371 () Bool)

(declare-fun lt!399908 () tuple2!12022)

(assert (=> b!1167614 (= e!748371 (not (isEmpty!7010 (_1!6858 lt!399908))))))

(declare-fun b!1167615 () Bool)

(declare-fun e!748369 () Bool)

(assert (=> b!1167615 (= e!748369 (= (list!4243 (_2!6858 lt!399908)) (_2!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621))))))))))

(declare-fun b!1167616 () Bool)

(declare-fun e!748370 () Bool)

(assert (=> b!1167616 (= e!748370 (= (_2!6858 lt!399908) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621)))))))

(declare-fun d!333696 () Bool)

(assert (=> d!333696 e!748369))

(declare-fun res!527265 () Bool)

(assert (=> d!333696 (=> (not res!527265) (not e!748369))))

(assert (=> d!333696 (= res!527265 e!748370)))

(declare-fun c!194951 () Bool)

(assert (=> d!333696 (= c!194951 (> (size!9067 (_1!6858 lt!399908)) 0))))

(assert (=> d!333696 (= lt!399908 (lexTailRecV2!321 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621))) (BalanceConc!7575 Empty!3776) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621))) (BalanceConc!7577 Empty!3777)))))

(assert (=> d!333696 (= (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621)))) lt!399908)))

(declare-fun b!1167617 () Bool)

(assert (=> b!1167617 (= e!748370 e!748371)))

(declare-fun res!527267 () Bool)

(assert (=> b!1167617 (= res!527267 (< (size!9066 (_2!6858 lt!399908)) (size!9066 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621))))))))

(assert (=> b!1167617 (=> (not res!527267) (not e!748371))))

(declare-fun b!1167618 () Bool)

(declare-fun res!527266 () Bool)

(assert (=> b!1167618 (=> (not res!527266) (not e!748369))))

(assert (=> b!1167618 (= res!527266 (= (list!4239 (_1!6858 lt!399908)) (_1!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621))))))))))

(assert (= (and d!333696 c!194951) b!1167617))

(assert (= (and d!333696 (not c!194951)) b!1167616))

(assert (= (and b!1167617 res!527267) b!1167614))

(assert (= (and d!333696 res!527265) b!1167618))

(assert (= (and b!1167618 res!527266) b!1167615))

(declare-fun m!1339335 () Bool)

(assert (=> b!1167617 m!1339335))

(assert (=> b!1167617 m!1335959))

(declare-fun m!1339337 () Bool)

(assert (=> b!1167617 m!1339337))

(declare-fun m!1339339 () Bool)

(assert (=> b!1167615 m!1339339))

(assert (=> b!1167615 m!1335959))

(declare-fun m!1339341 () Bool)

(assert (=> b!1167615 m!1339341))

(assert (=> b!1167615 m!1339341))

(declare-fun m!1339343 () Bool)

(assert (=> b!1167615 m!1339343))

(declare-fun m!1339345 () Bool)

(assert (=> b!1167618 m!1339345))

(assert (=> b!1167618 m!1335959))

(assert (=> b!1167618 m!1339341))

(assert (=> b!1167618 m!1339341))

(assert (=> b!1167618 m!1339343))

(declare-fun m!1339347 () Bool)

(assert (=> b!1167614 m!1339347))

(declare-fun m!1339349 () Bool)

(assert (=> d!333696 m!1339349))

(assert (=> d!333696 m!1335959))

(assert (=> d!333696 m!1335959))

(declare-fun m!1339351 () Bool)

(assert (=> d!333696 m!1339351))

(assert (=> d!332770 d!333696))

(declare-fun d!333698 () Bool)

(declare-fun lt!399909 () BalanceConc!7574)

(assert (=> d!333698 (= (list!4243 lt!399909) (printList!514 Lexer!1700 (list!4239 (singletonSeq!668 (h!16920 lt!398621)))))))

(assert (=> d!333698 (= lt!399909 (printTailRec!496 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621)) 0 (BalanceConc!7575 Empty!3776)))))

(assert (=> d!333698 (= (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621))) lt!399909)))

(declare-fun bs!284978 () Bool)

(assert (= bs!284978 d!333698))

(declare-fun m!1339353 () Bool)

(assert (=> bs!284978 m!1339353))

(assert (=> bs!284978 m!1335965))

(assert (=> bs!284978 m!1335967))

(assert (=> bs!284978 m!1335967))

(declare-fun m!1339355 () Bool)

(assert (=> bs!284978 m!1339355))

(assert (=> bs!284978 m!1335965))

(declare-fun m!1339357 () Bool)

(assert (=> bs!284978 m!1339357))

(assert (=> d!332770 d!333698))

(declare-fun d!333700 () Bool)

(assert (=> d!333700 (= (list!4239 (singletonSeq!668 (h!16920 lt!398621))) (list!4242 (c!194629 (singletonSeq!668 (h!16920 lt!398621)))))))

(declare-fun bs!284979 () Bool)

(assert (= bs!284979 d!333700))

(declare-fun m!1339359 () Bool)

(assert (=> bs!284979 m!1339359))

(assert (=> d!332770 d!333700))

(assert (=> d!332770 d!333086))

(declare-fun d!333702 () Bool)

(assert (=> d!333702 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621)))))) (list!4242 (c!194629 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621))))))))))

(declare-fun bs!284980 () Bool)

(assert (= bs!284980 d!333702))

(declare-fun m!1339361 () Bool)

(assert (=> bs!284980 m!1339361))

(assert (=> d!332770 d!333702))

(declare-fun d!333704 () Bool)

(declare-fun e!748372 () Bool)

(assert (=> d!333704 e!748372))

(declare-fun res!527268 () Bool)

(assert (=> d!333704 (=> (not res!527268) (not e!748372))))

(declare-fun lt!399910 () BalanceConc!7576)

(assert (=> d!333704 (= res!527268 (= (list!4239 lt!399910) (Cons!11519 (h!16920 lt!398621) Nil!11519)))))

(assert (=> d!333704 (= lt!399910 (singleton!300 (h!16920 lt!398621)))))

(assert (=> d!333704 (= (singletonSeq!668 (h!16920 lt!398621)) lt!399910)))

(declare-fun b!1167619 () Bool)

(assert (=> b!1167619 (= e!748372 (isBalanced!1060 (c!194629 lt!399910)))))

(assert (= (and d!333704 res!527268) b!1167619))

(declare-fun m!1339363 () Bool)

(assert (=> d!333704 m!1339363))

(declare-fun m!1339365 () Bool)

(assert (=> d!333704 m!1339365))

(declare-fun m!1339367 () Bool)

(assert (=> b!1167619 m!1339367))

(assert (=> d!332770 d!333704))

(declare-fun b!1167622 () Bool)

(declare-fun e!748376 () Bool)

(assert (=> b!1167622 (= e!748376 (subseq!259 (t!110333 lt!398622) (t!110333 (t!110333 lt!398620))))))

(declare-fun b!1167623 () Bool)

(declare-fun e!748374 () Bool)

(assert (=> b!1167623 (= e!748374 (subseq!259 lt!398622 (t!110333 (t!110333 lt!398620))))))

(declare-fun b!1167621 () Bool)

(declare-fun e!748375 () Bool)

(assert (=> b!1167621 (= e!748375 e!748374)))

(declare-fun res!527271 () Bool)

(assert (=> b!1167621 (=> res!527271 e!748374)))

(assert (=> b!1167621 (= res!527271 e!748376)))

(declare-fun res!527272 () Bool)

(assert (=> b!1167621 (=> (not res!527272) (not e!748376))))

(assert (=> b!1167621 (= res!527272 (= (h!16920 lt!398622) (h!16920 (t!110333 lt!398620))))))

(declare-fun b!1167620 () Bool)

(declare-fun e!748373 () Bool)

(assert (=> b!1167620 (= e!748373 e!748375)))

(declare-fun res!527269 () Bool)

(assert (=> b!1167620 (=> (not res!527269) (not e!748375))))

(assert (=> b!1167620 (= res!527269 ((_ is Cons!11519) (t!110333 lt!398620)))))

(declare-fun d!333706 () Bool)

(declare-fun res!527270 () Bool)

(assert (=> d!333706 (=> res!527270 e!748373)))

(assert (=> d!333706 (= res!527270 ((_ is Nil!11519) lt!398622))))

(assert (=> d!333706 (= (subseq!259 lt!398622 (t!110333 lt!398620)) e!748373)))

(assert (= (and d!333706 (not res!527270)) b!1167620))

(assert (= (and b!1167620 res!527269) b!1167621))

(assert (= (and b!1167621 res!527272) b!1167622))

(assert (= (and b!1167621 (not res!527271)) b!1167623))

(declare-fun m!1339369 () Bool)

(assert (=> b!1167622 m!1339369))

(declare-fun m!1339371 () Bool)

(assert (=> b!1167623 m!1339371))

(assert (=> b!1166182 d!333706))

(assert (=> b!1165811 d!332924))

(declare-fun b!1167626 () Bool)

(declare-fun e!748380 () Bool)

(assert (=> b!1167626 (= e!748380 (subseq!259 (t!110333 lt!398784) (t!110333 lt!398794)))))

(declare-fun b!1167627 () Bool)

(declare-fun e!748378 () Bool)

(assert (=> b!1167627 (= e!748378 (subseq!259 lt!398784 (t!110333 lt!398794)))))

(declare-fun b!1167625 () Bool)

(declare-fun e!748379 () Bool)

(assert (=> b!1167625 (= e!748379 e!748378)))

(declare-fun res!527275 () Bool)

(assert (=> b!1167625 (=> res!527275 e!748378)))

(assert (=> b!1167625 (= res!527275 e!748380)))

(declare-fun res!527276 () Bool)

(assert (=> b!1167625 (=> (not res!527276) (not e!748380))))

(assert (=> b!1167625 (= res!527276 (= (h!16920 lt!398784) (h!16920 lt!398794)))))

(declare-fun b!1167624 () Bool)

(declare-fun e!748377 () Bool)

(assert (=> b!1167624 (= e!748377 e!748379)))

(declare-fun res!527273 () Bool)

(assert (=> b!1167624 (=> (not res!527273) (not e!748379))))

(assert (=> b!1167624 (= res!527273 ((_ is Cons!11519) lt!398794))))

(declare-fun d!333708 () Bool)

(declare-fun res!527274 () Bool)

(assert (=> d!333708 (=> res!527274 e!748377)))

(assert (=> d!333708 (= res!527274 ((_ is Nil!11519) lt!398784))))

(assert (=> d!333708 (= (subseq!259 lt!398784 lt!398794) e!748377)))

(assert (= (and d!333708 (not res!527274)) b!1167624))

(assert (= (and b!1167624 res!527273) b!1167625))

(assert (= (and b!1167625 res!527276) b!1167626))

(assert (= (and b!1167625 (not res!527275)) b!1167627))

(declare-fun m!1339373 () Bool)

(assert (=> b!1167626 m!1339373))

(declare-fun m!1339375 () Bool)

(assert (=> b!1167627 m!1339375))

(assert (=> b!1165965 d!333708))

(declare-fun d!333710 () Bool)

(assert (=> d!333710 (= (inv!15174 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))) (<= (size!9071 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527))))) 2147483647))))

(declare-fun bs!284981 () Bool)

(assert (= bs!284981 d!333710))

(declare-fun m!1339377 () Bool)

(assert (=> bs!284981 m!1339377))

(assert (=> b!1166503 d!333710))

(declare-fun d!333712 () Bool)

(declare-fun res!527277 () Bool)

(declare-fun e!748381 () Bool)

(assert (=> d!333712 (=> res!527277 e!748381)))

(assert (=> d!333712 (= res!527277 ((_ is Nil!11519) (list!4239 lt!398609)))))

(assert (=> d!333712 (= (forall!3024 (list!4239 lt!398609) lambda!47859) e!748381)))

(declare-fun b!1167628 () Bool)

(declare-fun e!748382 () Bool)

(assert (=> b!1167628 (= e!748381 e!748382)))

(declare-fun res!527278 () Bool)

(assert (=> b!1167628 (=> (not res!527278) (not e!748382))))

(assert (=> b!1167628 (= res!527278 (dynLambda!5074 lambda!47859 (h!16920 (list!4239 lt!398609))))))

(declare-fun b!1167629 () Bool)

(assert (=> b!1167629 (= e!748382 (forall!3024 (t!110333 (list!4239 lt!398609)) lambda!47859))))

(assert (= (and d!333712 (not res!527277)) b!1167628))

(assert (= (and b!1167628 res!527278) b!1167629))

(declare-fun b_lambda!34817 () Bool)

(assert (=> (not b_lambda!34817) (not b!1167628)))

(declare-fun m!1339379 () Bool)

(assert (=> b!1167628 m!1339379))

(declare-fun m!1339381 () Bool)

(assert (=> b!1167629 m!1339381))

(assert (=> d!332764 d!333712))

(assert (=> d!332764 d!332664))

(declare-fun d!333714 () Bool)

(declare-fun lt!399915 () Bool)

(assert (=> d!333714 (= lt!399915 (forall!3024 (list!4242 (c!194629 lt!398609)) lambda!47859))))

(declare-fun e!748389 () Bool)

(assert (=> d!333714 (= lt!399915 e!748389)))

(declare-fun res!527283 () Bool)

(assert (=> d!333714 (=> res!527283 e!748389)))

(assert (=> d!333714 (= res!527283 ((_ is Empty!3777) (c!194629 lt!398609)))))

(assert (=> d!333714 (= (forall!3026 (c!194629 lt!398609) lambda!47859) lt!399915)))

(declare-fun b!1167638 () Bool)

(declare-fun e!748390 () Bool)

(assert (=> b!1167638 (= e!748389 e!748390)))

(declare-fun c!194954 () Bool)

(assert (=> b!1167638 (= c!194954 ((_ is Leaf!5791) (c!194629 lt!398609)))))

(declare-fun b!1167641 () Bool)

(declare-fun e!748391 () Bool)

(assert (=> b!1167641 (= e!748391 (forall!3026 (right!10404 (c!194629 lt!398609)) lambda!47859))))

(declare-fun b!1167640 () Bool)

(assert (=> b!1167640 (= e!748390 e!748391)))

(declare-fun lt!399916 () Unit!17605)

(declare-fun lemmaForallConcat!117 (List!11543 List!11543 Int) Unit!17605)

(assert (=> b!1167640 (= lt!399916 (lemmaForallConcat!117 (list!4242 (left!10074 (c!194629 lt!398609))) (list!4242 (right!10404 (c!194629 lt!398609))) lambda!47859))))

(declare-fun res!527284 () Bool)

(assert (=> b!1167640 (= res!527284 (forall!3026 (left!10074 (c!194629 lt!398609)) lambda!47859))))

(assert (=> b!1167640 (=> (not res!527284) (not e!748391))))

(declare-fun b!1167639 () Bool)

(declare-fun forall!3029 (IArray!7559 Int) Bool)

(assert (=> b!1167639 (= e!748390 (forall!3029 (xs!6482 (c!194629 lt!398609)) lambda!47859))))

(assert (= (and d!333714 (not res!527283)) b!1167638))

(assert (= (and b!1167638 c!194954) b!1167639))

(assert (= (and b!1167638 (not c!194954)) b!1167640))

(assert (= (and b!1167640 res!527284) b!1167641))

(assert (=> d!333714 m!1335469))

(assert (=> d!333714 m!1335469))

(declare-fun m!1339383 () Bool)

(assert (=> d!333714 m!1339383))

(declare-fun m!1339385 () Bool)

(assert (=> b!1167641 m!1339385))

(assert (=> b!1167640 m!1337267))

(assert (=> b!1167640 m!1337269))

(assert (=> b!1167640 m!1337267))

(assert (=> b!1167640 m!1337269))

(declare-fun m!1339387 () Bool)

(assert (=> b!1167640 m!1339387))

(declare-fun m!1339389 () Bool)

(assert (=> b!1167640 m!1339389))

(declare-fun m!1339391 () Bool)

(assert (=> b!1167639 m!1339391))

(assert (=> d!332764 d!333714))

(declare-fun d!333716 () Bool)

(declare-fun lt!399917 () Int)

(assert (=> d!333716 (>= lt!399917 0)))

(declare-fun e!748392 () Int)

(assert (=> d!333716 (= lt!399917 e!748392)))

(declare-fun c!194955 () Bool)

(assert (=> d!333716 (= c!194955 ((_ is Nil!11519) lt!398797))))

(assert (=> d!333716 (= (size!9071 lt!398797) lt!399917)))

(declare-fun b!1167642 () Bool)

(assert (=> b!1167642 (= e!748392 0)))

(declare-fun b!1167643 () Bool)

(assert (=> b!1167643 (= e!748392 (+ 1 (size!9071 (t!110333 lt!398797))))))

(assert (= (and d!333716 c!194955) b!1167642))

(assert (= (and d!333716 (not c!194955)) b!1167643))

(declare-fun m!1339393 () Bool)

(assert (=> b!1167643 m!1339393))

(assert (=> b!1165961 d!333716))

(declare-fun d!333718 () Bool)

(declare-fun lt!399918 () Int)

(assert (=> d!333718 (>= lt!399918 0)))

(declare-fun e!748393 () Int)

(assert (=> d!333718 (= lt!399918 e!748393)))

(declare-fun c!194956 () Bool)

(assert (=> d!333718 (= c!194956 ((_ is Nil!11519) lt!399243))))

(assert (=> d!333718 (= (size!9071 lt!399243) lt!399918)))

(declare-fun b!1167644 () Bool)

(assert (=> b!1167644 (= e!748393 0)))

(declare-fun b!1167645 () Bool)

(assert (=> b!1167645 (= e!748393 (+ 1 (size!9071 (t!110333 lt!399243))))))

(assert (= (and d!333718 c!194956) b!1167644))

(assert (= (and d!333718 (not c!194956)) b!1167645))

(declare-fun m!1339395 () Bool)

(assert (=> b!1167645 m!1339395))

(assert (=> b!1166467 d!333718))

(declare-fun d!333720 () Bool)

(declare-fun res!527285 () Bool)

(declare-fun e!748394 () Bool)

(assert (=> d!333720 (=> res!527285 e!748394)))

(assert (=> d!333720 (= res!527285 ((_ is Nil!11519) (t!110333 lt!398606)))))

(assert (=> d!333720 (= (forall!3024 (t!110333 lt!398606) lambda!47859) e!748394)))

(declare-fun b!1167646 () Bool)

(declare-fun e!748395 () Bool)

(assert (=> b!1167646 (= e!748394 e!748395)))

(declare-fun res!527286 () Bool)

(assert (=> b!1167646 (=> (not res!527286) (not e!748395))))

(assert (=> b!1167646 (= res!527286 (dynLambda!5074 lambda!47859 (h!16920 (t!110333 lt!398606))))))

(declare-fun b!1167647 () Bool)

(assert (=> b!1167647 (= e!748395 (forall!3024 (t!110333 (t!110333 lt!398606)) lambda!47859))))

(assert (= (and d!333720 (not res!527285)) b!1167646))

(assert (= (and b!1167646 res!527286) b!1167647))

(declare-fun b_lambda!34819 () Bool)

(assert (=> (not b_lambda!34819) (not b!1167646)))

(declare-fun m!1339397 () Bool)

(assert (=> b!1167646 m!1339397))

(declare-fun m!1339399 () Bool)

(assert (=> b!1167647 m!1339399))

(assert (=> b!1166331 d!333720))

(declare-fun d!333722 () Bool)

(assert (=> d!333722 (= (list!4243 lt!398682) (list!4246 (c!194628 lt!398682)))))

(declare-fun bs!284982 () Bool)

(assert (= bs!284982 d!333722))

(declare-fun m!1339401 () Bool)

(assert (=> bs!284982 m!1339401))

(assert (=> d!332676 d!333722))

(declare-fun d!333724 () Bool)

(declare-fun lt!399919 () Bool)

(assert (=> d!333724 (= lt!399919 (isEmpty!7011 (list!4243 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398625)))))))))

(assert (=> d!333724 (= lt!399919 (isEmpty!7012 (c!194628 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398625)))))))))

(assert (=> d!333724 (= (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398625))))) lt!399919)))

(declare-fun bs!284983 () Bool)

(assert (= bs!284983 d!333724))

(declare-fun m!1339403 () Bool)

(assert (=> bs!284983 m!1339403))

(assert (=> bs!284983 m!1339403))

(declare-fun m!1339405 () Bool)

(assert (=> bs!284983 m!1339405))

(declare-fun m!1339407 () Bool)

(assert (=> bs!284983 m!1339407))

(assert (=> b!1166443 d!333724))

(assert (=> b!1166443 d!333322))

(assert (=> b!1166443 d!333320))

(assert (=> b!1166443 d!333318))

(declare-fun d!333726 () Bool)

(declare-fun res!527287 () Bool)

(declare-fun e!748396 () Bool)

(assert (=> d!333726 (=> res!527287 e!748396)))

(assert (=> d!333726 (= res!527287 ((_ is Nil!11519) lt!398621))))

(assert (=> d!333726 (= (forall!3024 lt!398621 lambda!47862) e!748396)))

(declare-fun b!1167648 () Bool)

(declare-fun e!748397 () Bool)

(assert (=> b!1167648 (= e!748396 e!748397)))

(declare-fun res!527288 () Bool)

(assert (=> b!1167648 (=> (not res!527288) (not e!748397))))

(assert (=> b!1167648 (= res!527288 (dynLambda!5074 lambda!47862 (h!16920 lt!398621)))))

(declare-fun b!1167649 () Bool)

(assert (=> b!1167649 (= e!748397 (forall!3024 (t!110333 lt!398621) lambda!47862))))

(assert (= (and d!333726 (not res!527287)) b!1167648))

(assert (= (and b!1167648 res!527288) b!1167649))

(declare-fun b_lambda!34821 () Bool)

(assert (=> (not b_lambda!34821) (not b!1167648)))

(declare-fun m!1339409 () Bool)

(assert (=> b!1167648 m!1339409))

(declare-fun m!1339411 () Bool)

(assert (=> b!1167649 m!1339411))

(assert (=> d!332668 d!333726))

(assert (=> d!332668 d!333086))

(declare-fun d!333728 () Bool)

(declare-fun res!527289 () Bool)

(declare-fun e!748398 () Bool)

(assert (=> d!333728 (=> res!527289 e!748398)))

(assert (=> d!333728 (= res!527289 ((_ is Nil!11519) lt!398622))))

(assert (=> d!333728 (= (forall!3024 lt!398622 lambda!47891) e!748398)))

(declare-fun b!1167650 () Bool)

(declare-fun e!748399 () Bool)

(assert (=> b!1167650 (= e!748398 e!748399)))

(declare-fun res!527290 () Bool)

(assert (=> b!1167650 (=> (not res!527290) (not e!748399))))

(assert (=> b!1167650 (= res!527290 (dynLambda!5074 lambda!47891 (h!16920 lt!398622)))))

(declare-fun b!1167651 () Bool)

(assert (=> b!1167651 (= e!748399 (forall!3024 (t!110333 lt!398622) lambda!47891))))

(assert (= (and d!333728 (not res!527289)) b!1167650))

(assert (= (and b!1167650 res!527290) b!1167651))

(declare-fun b_lambda!34823 () Bool)

(assert (=> (not b_lambda!34823) (not b!1167650)))

(declare-fun m!1339413 () Bool)

(assert (=> b!1167650 m!1339413))

(declare-fun m!1339415 () Bool)

(assert (=> b!1167651 m!1339415))

(assert (=> d!332834 d!333728))

(assert (=> d!332834 d!333086))

(declare-fun d!333730 () Bool)

(assert (=> d!333730 (= (head!2102 (drop!482 lt!398620 0)) (h!16920 (drop!482 lt!398620 0)))))

(assert (=> d!332874 d!333730))

(assert (=> d!332874 d!332872))

(assert (=> d!332874 d!332896))

(declare-fun d!333732 () Bool)

(assert (=> d!333732 (= (head!2102 (drop!482 lt!398620 0)) (apply!2480 lt!398620 0))))

(assert (=> d!333732 true))

(declare-fun _$27!658 () Unit!17605)

(assert (=> d!333732 (= (choose!7528 lt!398620 0) _$27!658)))

(declare-fun bs!284984 () Bool)

(assert (= bs!284984 d!333732))

(assert (=> bs!284984 m!1335327))

(assert (=> bs!284984 m!1335327))

(assert (=> bs!284984 m!1336535))

(assert (=> bs!284984 m!1335309))

(assert (=> d!332874 d!333732))

(assert (=> bs!284433 d!332800))

(assert (=> b!1166128 d!333482))

(declare-fun d!333734 () Bool)

(declare-fun res!527291 () Bool)

(declare-fun e!748400 () Bool)

(assert (=> d!333734 (=> res!527291 e!748400)))

(assert (=> d!333734 (= res!527291 ((_ is Nil!11519) lt!398620))))

(assert (=> d!333734 (= (forall!3024 lt!398620 lambda!47878) e!748400)))

(declare-fun b!1167652 () Bool)

(declare-fun e!748401 () Bool)

(assert (=> b!1167652 (= e!748400 e!748401)))

(declare-fun res!527292 () Bool)

(assert (=> b!1167652 (=> (not res!527292) (not e!748401))))

(assert (=> b!1167652 (= res!527292 (dynLambda!5074 lambda!47878 (h!16920 lt!398620)))))

(declare-fun b!1167653 () Bool)

(assert (=> b!1167653 (= e!748401 (forall!3024 (t!110333 lt!398620) lambda!47878))))

(assert (= (and d!333734 (not res!527291)) b!1167652))

(assert (= (and b!1167652 res!527292) b!1167653))

(declare-fun b_lambda!34825 () Bool)

(assert (=> (not b_lambda!34825) (not b!1167652)))

(declare-fun m!1339417 () Bool)

(assert (=> b!1167652 m!1339417))

(declare-fun m!1339419 () Bool)

(assert (=> b!1167653 m!1339419))

(assert (=> d!332732 d!333734))

(assert (=> d!332732 d!333086))

(assert (=> b!1166066 d!332714))

(declare-fun d!333736 () Bool)

(declare-fun lt!399920 () Token!3676)

(assert (=> d!333736 (contains!1994 (tail!1686 lt!398620) lt!399920)))

(declare-fun e!748403 () Token!3676)

(assert (=> d!333736 (= lt!399920 e!748403)))

(declare-fun c!194957 () Bool)

(assert (=> d!333736 (= c!194957 (= (- 0 1) 0))))

(declare-fun e!748402 () Bool)

(assert (=> d!333736 e!748402))

(declare-fun res!527293 () Bool)

(assert (=> d!333736 (=> (not res!527293) (not e!748402))))

(assert (=> d!333736 (= res!527293 (<= 0 (- 0 1)))))

(assert (=> d!333736 (= (apply!2480 (tail!1686 lt!398620) (- 0 1)) lt!399920)))

(declare-fun b!1167654 () Bool)

(assert (=> b!1167654 (= e!748402 (< (- 0 1) (size!9071 (tail!1686 lt!398620))))))

(declare-fun b!1167655 () Bool)

(assert (=> b!1167655 (= e!748403 (head!2102 (tail!1686 lt!398620)))))

(declare-fun b!1167656 () Bool)

(assert (=> b!1167656 (= e!748403 (apply!2480 (tail!1686 (tail!1686 lt!398620)) (- (- 0 1) 1)))))

(assert (= (and d!333736 res!527293) b!1167654))

(assert (= (and d!333736 c!194957) b!1167655))

(assert (= (and d!333736 (not c!194957)) b!1167656))

(assert (=> d!333736 m!1336611))

(declare-fun m!1339421 () Bool)

(assert (=> d!333736 m!1339421))

(assert (=> b!1167654 m!1336611))

(assert (=> b!1167654 m!1337283))

(assert (=> b!1167655 m!1336611))

(assert (=> b!1167655 m!1337285))

(assert (=> b!1167656 m!1336611))

(assert (=> b!1167656 m!1337287))

(assert (=> b!1167656 m!1337287))

(declare-fun m!1339423 () Bool)

(assert (=> b!1167656 m!1339423))

(assert (=> b!1166461 d!333736))

(assert (=> b!1166461 d!333080))

(assert (=> b!1166138 d!333342))

(declare-fun b!1167657 () Bool)

(declare-fun e!748407 () Int)

(declare-fun call!82214 () Int)

(assert (=> b!1167657 (= e!748407 call!82214)))

(declare-fun b!1167658 () Bool)

(declare-fun e!748406 () List!11543)

(declare-fun e!748404 () List!11543)

(assert (=> b!1167658 (= e!748406 e!748404)))

(declare-fun c!194961 () Bool)

(assert (=> b!1167658 (= c!194961 (<= (- 2 1) 0))))

(declare-fun b!1167659 () Bool)

(declare-fun e!748408 () Int)

(assert (=> b!1167659 (= e!748407 e!748408)))

(declare-fun c!194958 () Bool)

(assert (=> b!1167659 (= c!194958 (>= (- 2 1) call!82214))))

(declare-fun b!1167660 () Bool)

(declare-fun e!748405 () Bool)

(declare-fun lt!399921 () List!11543)

(assert (=> b!1167660 (= e!748405 (= (size!9071 lt!399921) e!748407))))

(declare-fun c!194959 () Bool)

(assert (=> b!1167660 (= c!194959 (<= (- 2 1) 0))))

(declare-fun b!1167661 () Bool)

(assert (=> b!1167661 (= e!748406 Nil!11519)))

(declare-fun b!1167662 () Bool)

(assert (=> b!1167662 (= e!748408 (- call!82214 (- 2 1)))))

(declare-fun b!1167663 () Bool)

(assert (=> b!1167663 (= e!748404 (t!110333 lt!398620))))

(declare-fun b!1167665 () Bool)

(assert (=> b!1167665 (= e!748404 (drop!482 (t!110333 (t!110333 lt!398620)) (- (- 2 1) 1)))))

(declare-fun bm!82209 () Bool)

(assert (=> bm!82209 (= call!82214 (size!9071 (t!110333 lt!398620)))))

(declare-fun d!333738 () Bool)

(assert (=> d!333738 e!748405))

(declare-fun res!527294 () Bool)

(assert (=> d!333738 (=> (not res!527294) (not e!748405))))

(assert (=> d!333738 (= res!527294 (= ((_ map implies) (content!1608 lt!399921) (content!1608 (t!110333 lt!398620))) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333738 (= lt!399921 e!748406)))

(declare-fun c!194960 () Bool)

(assert (=> d!333738 (= c!194960 ((_ is Nil!11519) (t!110333 lt!398620)))))

(assert (=> d!333738 (= (drop!482 (t!110333 lt!398620) (- 2 1)) lt!399921)))

(declare-fun b!1167664 () Bool)

(assert (=> b!1167664 (= e!748408 0)))

(assert (= (and d!333738 c!194960) b!1167661))

(assert (= (and d!333738 (not c!194960)) b!1167658))

(assert (= (and b!1167658 c!194961) b!1167663))

(assert (= (and b!1167658 (not c!194961)) b!1167665))

(assert (= (and d!333738 res!527294) b!1167660))

(assert (= (and b!1167660 c!194959) b!1167657))

(assert (= (and b!1167660 (not c!194959)) b!1167659))

(assert (= (and b!1167659 c!194958) b!1167664))

(assert (= (and b!1167659 (not c!194958)) b!1167662))

(assert (= (or b!1167657 b!1167659 b!1167662) bm!82209))

(declare-fun m!1339425 () Bool)

(assert (=> b!1167660 m!1339425))

(declare-fun m!1339427 () Bool)

(assert (=> b!1167665 m!1339427))

(assert (=> bm!82209 m!1337659))

(declare-fun m!1339429 () Bool)

(assert (=> d!333738 m!1339429))

(assert (=> d!333738 m!1337657))

(assert (=> b!1166472 d!333738))

(declare-fun b!1167668 () Bool)

(declare-fun e!748412 () Bool)

(assert (=> b!1167668 (= e!748412 (subseq!259 (t!110333 lt!399136) (t!110333 lt!398622)))))

(declare-fun b!1167669 () Bool)

(declare-fun e!748410 () Bool)

(assert (=> b!1167669 (= e!748410 (subseq!259 lt!399136 (t!110333 lt!398622)))))

(declare-fun b!1167667 () Bool)

(declare-fun e!748411 () Bool)

(assert (=> b!1167667 (= e!748411 e!748410)))

(declare-fun res!527297 () Bool)

(assert (=> b!1167667 (=> res!527297 e!748410)))

(assert (=> b!1167667 (= res!527297 e!748412)))

(declare-fun res!527298 () Bool)

(assert (=> b!1167667 (=> (not res!527298) (not e!748412))))

(assert (=> b!1167667 (= res!527298 (= (h!16920 lt!399136) (h!16920 lt!398622)))))

(declare-fun b!1167666 () Bool)

(declare-fun e!748409 () Bool)

(assert (=> b!1167666 (= e!748409 e!748411)))

(declare-fun res!527295 () Bool)

(assert (=> b!1167666 (=> (not res!527295) (not e!748411))))

(assert (=> b!1167666 (= res!527295 ((_ is Cons!11519) lt!398622))))

(declare-fun d!333740 () Bool)

(declare-fun res!527296 () Bool)

(assert (=> d!333740 (=> res!527296 e!748409)))

(assert (=> d!333740 (= res!527296 ((_ is Nil!11519) lt!399136))))

(assert (=> d!333740 (= (subseq!259 lt!399136 lt!398622) e!748409)))

(assert (= (and d!333740 (not res!527296)) b!1167666))

(assert (= (and b!1167666 res!527295) b!1167667))

(assert (= (and b!1167667 res!527298) b!1167668))

(assert (= (and b!1167667 (not res!527297)) b!1167669))

(declare-fun m!1339431 () Bool)

(assert (=> b!1167668 m!1339431))

(declare-fun m!1339433 () Bool)

(assert (=> b!1167669 m!1339433))

(assert (=> b!1166242 d!333740))

(declare-fun d!333742 () Bool)

(declare-fun c!194962 () Bool)

(assert (=> d!333742 (= c!194962 ((_ is Nil!11519) lt!399243))))

(declare-fun e!748413 () (InoxSet Token!3676))

(assert (=> d!333742 (= (content!1608 lt!399243) e!748413)))

(declare-fun b!1167670 () Bool)

(assert (=> b!1167670 (= e!748413 ((as const (Array Token!3676 Bool)) false))))

(declare-fun b!1167671 () Bool)

(assert (=> b!1167671 (= e!748413 ((_ map or) (store ((as const (Array Token!3676 Bool)) false) (h!16920 lt!399243) true) (content!1608 (t!110333 lt!399243))))))

(assert (= (and d!333742 c!194962) b!1167670))

(assert (= (and d!333742 (not c!194962)) b!1167671))

(declare-fun m!1339435 () Bool)

(assert (=> b!1167671 m!1339435))

(declare-fun m!1339437 () Bool)

(assert (=> b!1167671 m!1339437))

(assert (=> d!332906 d!333742))

(assert (=> d!332906 d!333170))

(assert (=> bm!82158 d!333172))

(declare-fun d!333744 () Bool)

(declare-fun lt!399922 () Token!3676)

(assert (=> d!333744 (= lt!399922 (apply!2480 (list!4239 (_1!6858 lt!399247)) 0))))

(assert (=> d!333744 (= lt!399922 (apply!2483 (c!194629 (_1!6858 lt!399247)) 0))))

(declare-fun e!748414 () Bool)

(assert (=> d!333744 e!748414))

(declare-fun res!527299 () Bool)

(assert (=> d!333744 (=> (not res!527299) (not e!748414))))

(assert (=> d!333744 (= res!527299 (<= 0 0))))

(assert (=> d!333744 (= (apply!2479 (_1!6858 lt!399247) 0) lt!399922)))

(declare-fun b!1167672 () Bool)

(assert (=> b!1167672 (= e!748414 (< 0 (size!9067 (_1!6858 lt!399247))))))

(assert (= (and d!333744 res!527299) b!1167672))

(assert (=> d!333744 m!1338477))

(assert (=> d!333744 m!1338477))

(declare-fun m!1339439 () Bool)

(assert (=> d!333744 m!1339439))

(declare-fun m!1339441 () Bool)

(assert (=> d!333744 m!1339441))

(assert (=> b!1167672 m!1336651))

(assert (=> b!1166486 d!333744))

(declare-fun d!333746 () Bool)

(declare-fun lt!399923 () Int)

(assert (=> d!333746 (>= lt!399923 0)))

(declare-fun e!748415 () Int)

(assert (=> d!333746 (= lt!399923 e!748415)))

(declare-fun c!194963 () Bool)

(assert (=> d!333746 (= c!194963 ((_ is Nil!11519) lt!399014))))

(assert (=> d!333746 (= (size!9071 lt!399014) lt!399923)))

(declare-fun b!1167673 () Bool)

(assert (=> b!1167673 (= e!748415 0)))

(declare-fun b!1167674 () Bool)

(assert (=> b!1167674 (= e!748415 (+ 1 (size!9071 (t!110333 lt!399014))))))

(assert (= (and d!333746 c!194963) b!1167673))

(assert (= (and d!333746 (not c!194963)) b!1167674))

(declare-fun m!1339443 () Bool)

(assert (=> b!1167674 m!1339443))

(assert (=> b!1166164 d!333746))

(assert (=> b!1166281 d!332842))

(declare-fun d!333748 () Bool)

(declare-fun res!527300 () Bool)

(declare-fun e!748416 () Bool)

(assert (=> d!333748 (=> res!527300 e!748416)))

(assert (=> d!333748 (= res!527300 (or (not ((_ is Cons!11519) (drop!482 lt!398620 from!787))) (not ((_ is Cons!11519) (t!110333 (drop!482 lt!398620 from!787))))))))

(assert (=> d!333748 (= (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (drop!482 lt!398620 from!787) (rules!9572 thiss!10527)) e!748416)))

(declare-fun b!1167675 () Bool)

(declare-fun e!748417 () Bool)

(assert (=> b!1167675 (= e!748416 e!748417)))

(declare-fun res!527301 () Bool)

(assert (=> b!1167675 (=> (not res!527301) (not e!748417))))

(assert (=> b!1167675 (= res!527301 (separableTokensPredicate!130 Lexer!1700 (h!16920 (drop!482 lt!398620 from!787)) (h!16920 (t!110333 (drop!482 lt!398620 from!787))) (rules!9572 thiss!10527)))))

(declare-fun lt!399928 () Unit!17605)

(declare-fun Unit!17678 () Unit!17605)

(assert (=> b!1167675 (= lt!399928 Unit!17678)))

(assert (=> b!1167675 (> (size!9066 (charsOf!1068 (h!16920 (t!110333 (drop!482 lt!398620 from!787))))) 0)))

(declare-fun lt!399926 () Unit!17605)

(declare-fun Unit!17679 () Unit!17605)

(assert (=> b!1167675 (= lt!399926 Unit!17679)))

(assert (=> b!1167675 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (drop!482 lt!398620 from!787))))))

(declare-fun lt!399930 () Unit!17605)

(declare-fun Unit!17680 () Unit!17605)

(assert (=> b!1167675 (= lt!399930 Unit!17680)))

(assert (=> b!1167675 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (drop!482 lt!398620 from!787)))))

(declare-fun lt!399929 () Unit!17605)

(declare-fun lt!399925 () Unit!17605)

(assert (=> b!1167675 (= lt!399929 lt!399925)))

(assert (=> b!1167675 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (drop!482 lt!398620 from!787))))))

(assert (=> b!1167675 (= lt!399925 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (drop!482 lt!398620 from!787) (h!16920 (t!110333 (drop!482 lt!398620 from!787)))))))

(declare-fun lt!399924 () Unit!17605)

(declare-fun lt!399927 () Unit!17605)

(assert (=> b!1167675 (= lt!399924 lt!399927)))

(assert (=> b!1167675 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (drop!482 lt!398620 from!787)))))

(assert (=> b!1167675 (= lt!399927 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (drop!482 lt!398620 from!787) (h!16920 (drop!482 lt!398620 from!787))))))

(declare-fun b!1167676 () Bool)

(assert (=> b!1167676 (= e!748417 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (Cons!11519 (h!16920 (t!110333 (drop!482 lt!398620 from!787))) (t!110333 (t!110333 (drop!482 lt!398620 from!787)))) (rules!9572 thiss!10527)))))

(assert (= (and d!333748 (not res!527300)) b!1167675))

(assert (= (and b!1167675 res!527301) b!1167676))

(declare-fun m!1339445 () Bool)

(assert (=> b!1167675 m!1339445))

(declare-fun m!1339447 () Bool)

(assert (=> b!1167675 m!1339447))

(declare-fun m!1339449 () Bool)

(assert (=> b!1167675 m!1339449))

(assert (=> b!1167675 m!1338881))

(declare-fun m!1339451 () Bool)

(assert (=> b!1167675 m!1339451))

(assert (=> b!1167675 m!1339447))

(assert (=> b!1167675 m!1335389))

(declare-fun m!1339453 () Bool)

(assert (=> b!1167675 m!1339453))

(assert (=> b!1167675 m!1335389))

(declare-fun m!1339455 () Bool)

(assert (=> b!1167675 m!1339455))

(declare-fun m!1339457 () Bool)

(assert (=> b!1167676 m!1339457))

(assert (=> b!1166281 d!333748))

(assert (=> b!1166281 d!332852))

(declare-fun d!333750 () Bool)

(declare-fun res!527302 () Bool)

(declare-fun e!748418 () Bool)

(assert (=> d!333750 (=> res!527302 e!748418)))

(assert (=> d!333750 (= res!527302 ((_ is Nil!11519) lt!399183))))

(assert (=> d!333750 (= (forall!3024 lt!399183 lambda!47898) e!748418)))

(declare-fun b!1167677 () Bool)

(declare-fun e!748419 () Bool)

(assert (=> b!1167677 (= e!748418 e!748419)))

(declare-fun res!527303 () Bool)

(assert (=> b!1167677 (=> (not res!527303) (not e!748419))))

(assert (=> b!1167677 (= res!527303 (dynLambda!5074 lambda!47898 (h!16920 lt!399183)))))

(declare-fun b!1167678 () Bool)

(assert (=> b!1167678 (= e!748419 (forall!3024 (t!110333 lt!399183) lambda!47898))))

(assert (= (and d!333750 (not res!527302)) b!1167677))

(assert (= (and b!1167677 res!527303) b!1167678))

(declare-fun b_lambda!34827 () Bool)

(assert (=> (not b_lambda!34827) (not b!1167677)))

(declare-fun m!1339459 () Bool)

(assert (=> b!1167677 m!1339459))

(declare-fun m!1339461 () Bool)

(assert (=> b!1167678 m!1339461))

(assert (=> b!1166281 d!333750))

(assert (=> b!1166281 d!333184))

(declare-fun d!333752 () Bool)

(declare-fun res!527304 () Bool)

(declare-fun e!748420 () Bool)

(assert (=> d!333752 (=> res!527304 e!748420)))

(assert (=> d!333752 (= res!527304 ((_ is Nil!11519) lt!398620))))

(assert (=> d!333752 (= (forall!3024 lt!398620 lambda!47898) e!748420)))

(declare-fun b!1167679 () Bool)

(declare-fun e!748421 () Bool)

(assert (=> b!1167679 (= e!748420 e!748421)))

(declare-fun res!527305 () Bool)

(assert (=> b!1167679 (=> (not res!527305) (not e!748421))))

(assert (=> b!1167679 (= res!527305 (dynLambda!5074 lambda!47898 (h!16920 lt!398620)))))

(declare-fun b!1167680 () Bool)

(assert (=> b!1167680 (= e!748421 (forall!3024 (t!110333 lt!398620) lambda!47898))))

(assert (= (and d!333752 (not res!527304)) b!1167679))

(assert (= (and b!1167679 res!527305) b!1167680))

(declare-fun b_lambda!34829 () Bool)

(assert (=> (not b_lambda!34829) (not b!1167679)))

(declare-fun m!1339463 () Bool)

(assert (=> b!1167679 m!1339463))

(declare-fun m!1339465 () Bool)

(assert (=> b!1167680 m!1339465))

(assert (=> b!1166281 d!333752))

(declare-fun d!333754 () Bool)

(assert (=> d!333754 (forall!3024 lt!399183 lambda!47898)))

(declare-fun lt!399931 () Unit!17605)

(assert (=> d!333754 (= lt!399931 (choose!7522 lt!399183 lt!398620 lambda!47898))))

(assert (=> d!333754 (forall!3024 lt!398620 lambda!47898)))

(assert (=> d!333754 (= (lemmaForallSubseq!151 lt!399183 lt!398620 lambda!47898) lt!399931)))

(declare-fun bs!284985 () Bool)

(assert (= bs!284985 d!333754))

(assert (=> bs!284985 m!1336443))

(declare-fun m!1339467 () Bool)

(assert (=> bs!284985 m!1339467))

(assert (=> bs!284985 m!1336435))

(assert (=> b!1166281 d!333754))

(declare-fun d!333756 () Bool)

(declare-fun lt!399932 () Bool)

(assert (=> d!333756 (= lt!399932 (isEmpty!7011 (list!4243 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398607)))))))))

(assert (=> d!333756 (= lt!399932 (isEmpty!7012 (c!194628 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398607)))))))))

(assert (=> d!333756 (= (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398607))))) lt!399932)))

(declare-fun bs!284986 () Bool)

(assert (= bs!284986 d!333756))

(declare-fun m!1339469 () Bool)

(assert (=> bs!284986 m!1339469))

(assert (=> bs!284986 m!1339469))

(declare-fun m!1339471 () Bool)

(assert (=> bs!284986 m!1339471))

(declare-fun m!1339473 () Bool)

(assert (=> bs!284986 m!1339473))

(assert (=> b!1166446 d!333756))

(declare-fun b!1167681 () Bool)

(declare-fun e!748424 () Bool)

(declare-fun lt!399933 () tuple2!12022)

(assert (=> b!1167681 (= e!748424 (not (isEmpty!7010 (_1!6858 lt!399933))))))

(declare-fun b!1167682 () Bool)

(declare-fun e!748422 () Bool)

(assert (=> b!1167682 (= e!748422 (= (list!4243 (_2!6858 lt!399933)) (_2!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 lt!398607)))))))))

(declare-fun b!1167683 () Bool)

(declare-fun e!748423 () Bool)

(assert (=> b!1167683 (= e!748423 (= (_2!6858 lt!399933) (print!641 Lexer!1700 (singletonSeq!668 lt!398607))))))

(declare-fun d!333758 () Bool)

(assert (=> d!333758 e!748422))

(declare-fun res!527306 () Bool)

(assert (=> d!333758 (=> (not res!527306) (not e!748422))))

(assert (=> d!333758 (= res!527306 e!748423)))

(declare-fun c!194964 () Bool)

(assert (=> d!333758 (= c!194964 (> (size!9067 (_1!6858 lt!399933)) 0))))

(assert (=> d!333758 (= lt!399933 (lexTailRecV2!321 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398607)) (BalanceConc!7575 Empty!3776) (print!641 Lexer!1700 (singletonSeq!668 lt!398607)) (BalanceConc!7577 Empty!3777)))))

(assert (=> d!333758 (= (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398607))) lt!399933)))

(declare-fun b!1167684 () Bool)

(assert (=> b!1167684 (= e!748423 e!748424)))

(declare-fun res!527308 () Bool)

(assert (=> b!1167684 (= res!527308 (< (size!9066 (_2!6858 lt!399933)) (size!9066 (print!641 Lexer!1700 (singletonSeq!668 lt!398607)))))))

(assert (=> b!1167684 (=> (not res!527308) (not e!748424))))

(declare-fun b!1167685 () Bool)

(declare-fun res!527307 () Bool)

(assert (=> b!1167685 (=> (not res!527307) (not e!748422))))

(assert (=> b!1167685 (= res!527307 (= (list!4239 (_1!6858 lt!399933)) (_1!6860 (lexList!414 Lexer!1700 (rules!9572 thiss!10527) (list!4243 (print!641 Lexer!1700 (singletonSeq!668 lt!398607)))))))))

(assert (= (and d!333758 c!194964) b!1167684))

(assert (= (and d!333758 (not c!194964)) b!1167683))

(assert (= (and b!1167684 res!527308) b!1167681))

(assert (= (and d!333758 res!527306) b!1167685))

(assert (= (and b!1167685 res!527307) b!1167682))

(declare-fun m!1339475 () Bool)

(assert (=> b!1167684 m!1339475))

(assert (=> b!1167684 m!1336567))

(declare-fun m!1339477 () Bool)

(assert (=> b!1167684 m!1339477))

(declare-fun m!1339479 () Bool)

(assert (=> b!1167682 m!1339479))

(assert (=> b!1167682 m!1336567))

(declare-fun m!1339481 () Bool)

(assert (=> b!1167682 m!1339481))

(assert (=> b!1167682 m!1339481))

(declare-fun m!1339483 () Bool)

(assert (=> b!1167682 m!1339483))

(declare-fun m!1339485 () Bool)

(assert (=> b!1167685 m!1339485))

(assert (=> b!1167685 m!1336567))

(assert (=> b!1167685 m!1339481))

(assert (=> b!1167685 m!1339481))

(assert (=> b!1167685 m!1339483))

(declare-fun m!1339487 () Bool)

(assert (=> b!1167681 m!1339487))

(declare-fun m!1339489 () Bool)

(assert (=> d!333758 m!1339489))

(assert (=> d!333758 m!1336567))

(assert (=> d!333758 m!1336567))

(declare-fun m!1339491 () Bool)

(assert (=> d!333758 m!1339491))

(assert (=> b!1166446 d!333758))

(declare-fun d!333760 () Bool)

(declare-fun lt!399934 () BalanceConc!7574)

(assert (=> d!333760 (= (list!4243 lt!399934) (printList!514 Lexer!1700 (list!4239 (singletonSeq!668 lt!398607))))))

(assert (=> d!333760 (= lt!399934 (printTailRec!496 Lexer!1700 (singletonSeq!668 lt!398607) 0 (BalanceConc!7575 Empty!3776)))))

(assert (=> d!333760 (= (print!641 Lexer!1700 (singletonSeq!668 lt!398607)) lt!399934)))

(declare-fun bs!284987 () Bool)

(assert (= bs!284987 d!333760))

(declare-fun m!1339493 () Bool)

(assert (=> bs!284987 m!1339493))

(assert (=> bs!284987 m!1336573))

(assert (=> bs!284987 m!1336575))

(assert (=> bs!284987 m!1336575))

(declare-fun m!1339495 () Bool)

(assert (=> bs!284987 m!1339495))

(assert (=> bs!284987 m!1336573))

(declare-fun m!1339497 () Bool)

(assert (=> bs!284987 m!1339497))

(assert (=> b!1166446 d!333760))

(declare-fun d!333762 () Bool)

(declare-fun e!748425 () Bool)

(assert (=> d!333762 e!748425))

(declare-fun res!527309 () Bool)

(assert (=> d!333762 (=> (not res!527309) (not e!748425))))

(declare-fun lt!399935 () BalanceConc!7576)

(assert (=> d!333762 (= res!527309 (= (list!4239 lt!399935) (Cons!11519 lt!398607 Nil!11519)))))

(assert (=> d!333762 (= lt!399935 (singleton!300 lt!398607))))

(assert (=> d!333762 (= (singletonSeq!668 lt!398607) lt!399935)))

(declare-fun b!1167686 () Bool)

(assert (=> b!1167686 (= e!748425 (isBalanced!1060 (c!194629 lt!399935)))))

(assert (= (and d!333762 res!527309) b!1167686))

(declare-fun m!1339499 () Bool)

(assert (=> d!333762 m!1339499))

(declare-fun m!1339501 () Bool)

(assert (=> d!333762 m!1339501))

(declare-fun m!1339503 () Bool)

(assert (=> b!1167686 m!1339503))

(assert (=> b!1166446 d!333762))

(assert (=> b!1166452 d!332924))

(assert (=> d!332792 d!332790))

(assert (=> b!1166428 d!333172))

(declare-fun d!333764 () Bool)

(declare-fun lt!399936 () Token!3676)

(assert (=> d!333764 (contains!1994 (list!4239 (tokens!1624 thiss!10527)) lt!399936)))

(declare-fun e!748427 () Token!3676)

(assert (=> d!333764 (= lt!399936 e!748427)))

(declare-fun c!194965 () Bool)

(assert (=> d!333764 (= c!194965 (= 1 0))))

(declare-fun e!748426 () Bool)

(assert (=> d!333764 e!748426))

(declare-fun res!527310 () Bool)

(assert (=> d!333764 (=> (not res!527310) (not e!748426))))

(assert (=> d!333764 (= res!527310 (<= 0 1))))

(assert (=> d!333764 (= (apply!2480 (list!4239 (tokens!1624 thiss!10527)) 1) lt!399936)))

(declare-fun b!1167687 () Bool)

(assert (=> b!1167687 (= e!748426 (< 1 (size!9071 (list!4239 (tokens!1624 thiss!10527)))))))

(declare-fun b!1167688 () Bool)

(assert (=> b!1167688 (= e!748427 (head!2102 (list!4239 (tokens!1624 thiss!10527))))))

(declare-fun b!1167689 () Bool)

(assert (=> b!1167689 (= e!748427 (apply!2480 (tail!1686 (list!4239 (tokens!1624 thiss!10527))) (- 1 1)))))

(assert (= (and d!333764 res!527310) b!1167687))

(assert (= (and d!333764 c!194965) b!1167688))

(assert (= (and d!333764 (not c!194965)) b!1167689))

(assert (=> d!333764 m!1335409))

(declare-fun m!1339505 () Bool)

(assert (=> d!333764 m!1339505))

(assert (=> b!1167687 m!1335409))

(assert (=> b!1167687 m!1336677))

(assert (=> b!1167688 m!1335409))

(declare-fun m!1339507 () Bool)

(assert (=> b!1167688 m!1339507))

(assert (=> b!1167689 m!1335409))

(declare-fun m!1339509 () Bool)

(assert (=> b!1167689 m!1339509))

(assert (=> b!1167689 m!1339509))

(declare-fun m!1339511 () Bool)

(assert (=> b!1167689 m!1339511))

(assert (=> d!332892 d!333764))

(assert (=> d!332892 d!332740))

(declare-fun bm!82212 () Bool)

(declare-fun c!194974 () Bool)

(declare-fun c!194973 () Bool)

(assert (=> bm!82212 (= c!194974 c!194973)))

(declare-fun e!748440 () Int)

(declare-fun call!82217 () Token!3676)

(assert (=> bm!82212 (= call!82217 (apply!2483 (ite c!194973 (left!10074 (c!194629 (tokens!1624 thiss!10527))) (right!10404 (c!194629 (tokens!1624 thiss!10527)))) e!748440))))

(declare-fun b!1167707 () Bool)

(declare-fun e!748441 () Bool)

(assert (=> b!1167707 (= e!748441 (< 1 (size!9075 (c!194629 (tokens!1624 thiss!10527)))))))

(declare-fun b!1167708 () Bool)

(assert (=> b!1167708 (= e!748440 (- 1 (size!9075 (left!10074 (c!194629 (tokens!1624 thiss!10527))))))))

(declare-fun b!1167709 () Bool)

(declare-fun e!748442 () Token!3676)

(assert (=> b!1167709 (= e!748442 call!82217)))

(declare-fun d!333766 () Bool)

(declare-fun lt!399947 () Token!3676)

(assert (=> d!333766 (= lt!399947 (apply!2480 (list!4242 (c!194629 (tokens!1624 thiss!10527))) 1))))

(declare-fun e!748439 () Token!3676)

(assert (=> d!333766 (= lt!399947 e!748439)))

(declare-fun c!194972 () Bool)

(assert (=> d!333766 (= c!194972 ((_ is Leaf!5791) (c!194629 (tokens!1624 thiss!10527))))))

(assert (=> d!333766 e!748441))

(declare-fun res!527316 () Bool)

(assert (=> d!333766 (=> (not res!527316) (not e!748441))))

(assert (=> d!333766 (= res!527316 (<= 0 1))))

(assert (=> d!333766 (= (apply!2483 (c!194629 (tokens!1624 thiss!10527)) 1) lt!399947)))

(declare-fun b!1167710 () Bool)

(assert (=> b!1167710 (= e!748440 1)))

(declare-fun b!1167711 () Bool)

(declare-fun apply!2488 (IArray!7559 Int) Token!3676)

(assert (=> b!1167711 (= e!748439 (apply!2488 (xs!6482 (c!194629 (tokens!1624 thiss!10527))) 1))))

(declare-fun b!1167712 () Bool)

(assert (=> b!1167712 (= e!748439 e!748442)))

(declare-fun lt!399948 () Bool)

(declare-fun appendIndex!111 (List!11543 List!11543 Int) Bool)

(assert (=> b!1167712 (= lt!399948 (appendIndex!111 (list!4242 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) (list!4242 (right!10404 (c!194629 (tokens!1624 thiss!10527)))) 1))))

(assert (=> b!1167712 (= c!194973 (< 1 (size!9075 (left!10074 (c!194629 (tokens!1624 thiss!10527))))))))

(declare-fun b!1167713 () Bool)

(assert (=> b!1167713 (= e!748442 call!82217)))

(assert (= (and d!333766 res!527316) b!1167707))

(assert (= (and d!333766 c!194972) b!1167711))

(assert (= (and d!333766 (not c!194972)) b!1167712))

(assert (= (and b!1167712 c!194973) b!1167713))

(assert (= (and b!1167712 (not c!194973)) b!1167709))

(assert (= (or b!1167713 b!1167709) bm!82212))

(assert (= (and bm!82212 c!194974) b!1167710))

(assert (= (and bm!82212 (not c!194974)) b!1167708))

(declare-fun m!1339517 () Bool)

(assert (=> bm!82212 m!1339517))

(assert (=> d!333766 m!1335745))

(assert (=> d!333766 m!1335745))

(declare-fun m!1339519 () Bool)

(assert (=> d!333766 m!1339519))

(assert (=> b!1167708 m!1337819))

(declare-fun m!1339523 () Bool)

(assert (=> b!1167711 m!1339523))

(assert (=> b!1167707 m!1336679))

(assert (=> b!1167712 m!1338099))

(assert (=> b!1167712 m!1338093))

(assert (=> b!1167712 m!1338099))

(assert (=> b!1167712 m!1338093))

(declare-fun m!1339529 () Bool)

(assert (=> b!1167712 m!1339529))

(assert (=> b!1167712 m!1337819))

(assert (=> d!332892 d!333766))

(declare-fun d!333772 () Bool)

(declare-fun lt!399956 () Bool)

(assert (=> d!333772 (= lt!399956 (isEmpty!7011 (list!4243 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606))))))))))

(assert (=> d!333772 (= lt!399956 (isEmpty!7012 (c!194628 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606))))))))))

(assert (=> d!333772 (= (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398606)))))) lt!399956)))

(declare-fun bs!284989 () Bool)

(assert (= bs!284989 d!333772))

(declare-fun m!1339541 () Bool)

(assert (=> bs!284989 m!1339541))

(assert (=> bs!284989 m!1339541))

(declare-fun m!1339543 () Bool)

(assert (=> bs!284989 m!1339543))

(declare-fun m!1339545 () Bool)

(assert (=> bs!284989 m!1339545))

(assert (=> b!1166133 d!333772))

(assert (=> b!1166133 d!333356))

(assert (=> b!1166133 d!333354))

(assert (=> b!1166133 d!333360))

(declare-fun b!1167724 () Bool)

(declare-fun e!748450 () Bool)

(assert (=> b!1167724 (= e!748450 (subseq!259 (t!110333 lt!399001) (t!110333 lt!399011)))))

(declare-fun b!1167725 () Bool)

(declare-fun e!748448 () Bool)

(assert (=> b!1167725 (= e!748448 (subseq!259 lt!399001 (t!110333 lt!399011)))))

(declare-fun b!1167723 () Bool)

(declare-fun e!748449 () Bool)

(assert (=> b!1167723 (= e!748449 e!748448)))

(declare-fun res!527327 () Bool)

(assert (=> b!1167723 (=> res!527327 e!748448)))

(assert (=> b!1167723 (= res!527327 e!748450)))

(declare-fun res!527328 () Bool)

(assert (=> b!1167723 (=> (not res!527328) (not e!748450))))

(assert (=> b!1167723 (= res!527328 (= (h!16920 lt!399001) (h!16920 lt!399011)))))

(declare-fun b!1167722 () Bool)

(declare-fun e!748447 () Bool)

(assert (=> b!1167722 (= e!748447 e!748449)))

(declare-fun res!527325 () Bool)

(assert (=> b!1167722 (=> (not res!527325) (not e!748449))))

(assert (=> b!1167722 (= res!527325 ((_ is Cons!11519) lt!399011))))

(declare-fun d!333776 () Bool)

(declare-fun res!527326 () Bool)

(assert (=> d!333776 (=> res!527326 e!748447)))

(assert (=> d!333776 (= res!527326 ((_ is Nil!11519) lt!399001))))

(assert (=> d!333776 (= (subseq!259 lt!399001 lt!399011) e!748447)))

(assert (= (and d!333776 (not res!527326)) b!1167722))

(assert (= (and b!1167722 res!527325) b!1167723))

(assert (= (and b!1167723 res!527328) b!1167724))

(assert (= (and b!1167723 (not res!527327)) b!1167725))

(declare-fun m!1339547 () Bool)

(assert (=> b!1167724 m!1339547))

(declare-fun m!1339549 () Bool)

(assert (=> b!1167725 m!1339549))

(assert (=> b!1166168 d!333776))

(declare-fun d!333778 () Bool)

(assert (=> d!333778 (= (separableTokensPredicate!130 Lexer!1700 (h!16920 lt!398606) (h!16920 (t!110333 lt!398606)) (rules!9572 thiss!10527)) (not (prefixMatchZipperSequence!91 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)) (++!2980 (charsOf!1068 (h!16920 lt!398606)) (singletonSeq!669 (apply!2484 (charsOf!1068 (h!16920 (t!110333 lt!398606))) 0))))))))

(declare-fun bs!284990 () Bool)

(assert (= bs!284990 d!333778))

(assert (=> bs!284990 m!1335979))

(declare-fun m!1339563 () Bool)

(assert (=> bs!284990 m!1339563))

(declare-fun m!1339565 () Bool)

(assert (=> bs!284990 m!1339565))

(declare-fun m!1339567 () Bool)

(assert (=> bs!284990 m!1339567))

(declare-fun m!1339569 () Bool)

(assert (=> bs!284990 m!1339569))

(assert (=> bs!284990 m!1336603))

(assert (=> bs!284990 m!1335979))

(assert (=> bs!284990 m!1339563))

(assert (=> bs!284990 m!1339567))

(assert (=> bs!284990 m!1336603))

(assert (=> bs!284990 m!1339569))

(declare-fun m!1339571 () Bool)

(assert (=> bs!284990 m!1339571))

(assert (=> bs!284990 m!1339565))

(assert (=> b!1166116 d!333778))

(declare-fun d!333782 () Bool)

(assert (=> d!333782 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398606))))

(declare-fun lt!399957 () Unit!17605)

(assert (=> d!333782 (= lt!399957 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398606 (h!16920 lt!398606)))))

(assert (=> d!333782 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333782 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398606 (h!16920 lt!398606)) lt!399957)))

(declare-fun bs!284991 () Bool)

(assert (= bs!284991 d!333782))

(assert (=> bs!284991 m!1335299))

(declare-fun m!1339573 () Bool)

(assert (=> bs!284991 m!1339573))

(assert (=> bs!284991 m!1335511))

(assert (=> b!1166116 d!333782))

(assert (=> b!1166116 d!332794))

(declare-fun d!333784 () Bool)

(declare-fun lt!399958 () BalanceConc!7574)

(assert (=> d!333784 (= (list!4243 lt!399958) (originalCharacters!2561 (h!16920 (t!110333 lt!398606))))))

(assert (=> d!333784 (= lt!399958 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398606))))) (value!65196 (h!16920 (t!110333 lt!398606)))))))

(assert (=> d!333784 (= (charsOf!1068 (h!16920 (t!110333 lt!398606))) lt!399958)))

(declare-fun b_lambda!34831 () Bool)

(assert (=> (not b_lambda!34831) (not d!333784)))

(declare-fun tb!65867 () Bool)

(declare-fun t!110403 () Bool)

(assert (=> (and b!1166515 (= (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398606)))))) t!110403) tb!65867))

(declare-fun b!1167726 () Bool)

(declare-fun e!748451 () Bool)

(declare-fun tp!334280 () Bool)

(assert (=> b!1167726 (= e!748451 (and (inv!15175 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398606))))) (value!65196 (h!16920 (t!110333 lt!398606)))))) tp!334280))))

(declare-fun result!78832 () Bool)

(assert (=> tb!65867 (= result!78832 (and (inv!15176 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398606))))) (value!65196 (h!16920 (t!110333 lt!398606))))) e!748451))))

(assert (= tb!65867 b!1167726))

(declare-fun m!1339575 () Bool)

(assert (=> b!1167726 m!1339575))

(declare-fun m!1339577 () Bool)

(assert (=> tb!65867 m!1339577))

(assert (=> d!333784 t!110403))

(declare-fun b_and!80687 () Bool)

(assert (= b_and!80681 (and (=> t!110403 result!78832) b_and!80687)))

(declare-fun m!1339579 () Bool)

(assert (=> d!333784 m!1339579))

(declare-fun m!1339581 () Bool)

(assert (=> d!333784 m!1339581))

(assert (=> b!1166116 d!333784))

(assert (=> b!1166116 d!333352))

(declare-fun d!333786 () Bool)

(assert (=> d!333786 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398606)))))

(declare-fun lt!399959 () Unit!17605)

(assert (=> d!333786 (= lt!399959 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398606 (h!16920 (t!110333 lt!398606))))))

(assert (=> d!333786 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333786 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398606 (h!16920 (t!110333 lt!398606))) lt!399959)))

(declare-fun bs!284992 () Bool)

(assert (= bs!284992 d!333786))

(assert (=> bs!284992 m!1335689))

(declare-fun m!1339583 () Bool)

(assert (=> bs!284992 m!1339583))

(assert (=> bs!284992 m!1335511))

(assert (=> b!1166116 d!333786))

(declare-fun d!333788 () Bool)

(declare-fun lt!399960 () Int)

(assert (=> d!333788 (= lt!399960 (size!9072 (list!4243 (charsOf!1068 (h!16920 (t!110333 lt!398606))))))))

(assert (=> d!333788 (= lt!399960 (size!9073 (c!194628 (charsOf!1068 (h!16920 (t!110333 lt!398606))))))))

(assert (=> d!333788 (= (size!9066 (charsOf!1068 (h!16920 (t!110333 lt!398606)))) lt!399960)))

(declare-fun bs!284993 () Bool)

(assert (= bs!284993 d!333788))

(assert (=> bs!284993 m!1335979))

(declare-fun m!1339585 () Bool)

(assert (=> bs!284993 m!1339585))

(assert (=> bs!284993 m!1339585))

(declare-fun m!1339587 () Bool)

(assert (=> bs!284993 m!1339587))

(declare-fun m!1339589 () Bool)

(assert (=> bs!284993 m!1339589))

(assert (=> b!1166116 d!333788))

(declare-fun bs!284994 () Bool)

(declare-fun d!333790 () Bool)

(assert (= bs!284994 (and d!333790 d!332714)))

(declare-fun lambda!47941 () Int)

(assert (=> bs!284994 (= lambda!47941 lambda!47877)))

(declare-fun bs!284995 () Bool)

(assert (= bs!284995 (and d!333790 d!333526)))

(assert (=> bs!284995 (= lambda!47941 lambda!47935)))

(declare-fun bs!284996 () Bool)

(assert (= bs!284996 (and d!333790 d!332754)))

(assert (=> bs!284996 (= lambda!47941 lambda!47880)))

(declare-fun bs!284997 () Bool)

(assert (= bs!284997 (and d!333790 d!333536)))

(assert (=> bs!284997 (= lambda!47941 lambda!47936)))

(declare-fun bs!284998 () Bool)

(assert (= bs!284998 (and d!333790 d!332758)))

(assert (=> bs!284998 (= lambda!47941 lambda!47881)))

(declare-fun bs!284999 () Bool)

(assert (= bs!284999 (and d!333790 d!332712)))

(assert (=> bs!284999 (= lambda!47941 lambda!47872)))

(declare-fun bs!285000 () Bool)

(assert (= bs!285000 (and d!333790 d!333328)))

(assert (=> bs!285000 (= lambda!47941 lambda!47924)))

(declare-fun bs!285001 () Bool)

(assert (= bs!285001 (and d!333790 d!333484)))

(assert (=> bs!285001 (= lambda!47941 lambda!47930)))

(declare-fun bs!285002 () Bool)

(assert (= bs!285002 (and d!333790 d!332732)))

(assert (=> bs!285002 (= lambda!47941 lambda!47878)))

(declare-fun bs!285003 () Bool)

(assert (= bs!285003 (and d!333790 d!332856)))

(assert (=> bs!285003 (= lambda!47941 lambda!47902)))

(declare-fun bs!285004 () Bool)

(assert (= bs!285004 (and d!333790 d!333546)))

(assert (=> bs!285004 (= lambda!47941 lambda!47940)))

(declare-fun bs!285005 () Bool)

(assert (= bs!285005 (and d!333790 d!333076)))

(assert (=> bs!285005 (= lambda!47941 lambda!47907)))

(declare-fun bs!285006 () Bool)

(assert (= bs!285006 (and d!333790 b!1166241)))

(assert (=> bs!285006 (= lambda!47941 lambda!47890)))

(declare-fun bs!285007 () Bool)

(assert (= bs!285007 (and d!333790 d!332834)))

(assert (=> bs!285007 (= lambda!47941 lambda!47891)))

(declare-fun bs!285008 () Bool)

(assert (= bs!285008 (and d!333790 d!332868)))

(assert (=> bs!285008 (= lambda!47941 lambda!47903)))

(declare-fun bs!285009 () Bool)

(assert (= bs!285009 (and d!333790 b!1166281)))

(assert (=> bs!285009 (= lambda!47941 lambda!47898)))

(declare-fun bs!285010 () Bool)

(assert (= bs!285010 (and d!333790 d!332796)))

(assert (=> bs!285010 (= lambda!47941 lambda!47883)))

(declare-fun bs!285011 () Bool)

(assert (= bs!285011 (and d!333790 b!1165777)))

(assert (=> bs!285011 (= lambda!47941 lambda!47859)))

(declare-fun bs!285012 () Bool)

(assert (= bs!285012 (and d!333790 d!332668)))

(assert (=> bs!285012 (= lambda!47941 lambda!47862)))

(declare-fun b!1167731 () Bool)

(declare-fun e!748456 () Bool)

(assert (=> b!1167731 (= e!748456 true)))

(declare-fun b!1167730 () Bool)

(declare-fun e!748455 () Bool)

(assert (=> b!1167730 (= e!748455 e!748456)))

(declare-fun b!1167729 () Bool)

(declare-fun e!748454 () Bool)

(assert (=> b!1167729 (= e!748454 e!748455)))

(assert (=> d!333790 e!748454))

(assert (= b!1167730 b!1167731))

(assert (= b!1167729 b!1167730))

(assert (= (and d!333790 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1167729))

(assert (=> b!1167731 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47941))))

(assert (=> b!1167731 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47941))))

(assert (=> d!333790 true))

(declare-fun lt!399961 () Bool)

(assert (=> d!333790 (= lt!399961 (forall!3024 (t!110333 (t!110333 lt!398621)) lambda!47941))))

(declare-fun e!748452 () Bool)

(assert (=> d!333790 (= lt!399961 e!748452)))

(declare-fun res!527330 () Bool)

(assert (=> d!333790 (=> res!527330 e!748452)))

(assert (=> d!333790 (= res!527330 (not ((_ is Cons!11519) (t!110333 (t!110333 lt!398621)))))))

(assert (=> d!333790 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333790 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 lt!398621))) lt!399961)))

(declare-fun b!1167727 () Bool)

(declare-fun e!748453 () Bool)

(assert (=> b!1167727 (= e!748452 e!748453)))

(declare-fun res!527329 () Bool)

(assert (=> b!1167727 (=> (not res!527329) (not e!748453))))

(assert (=> b!1167727 (= res!527329 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (t!110333 lt!398621)))))))

(declare-fun b!1167728 () Bool)

(assert (=> b!1167728 (= e!748453 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 (t!110333 lt!398621)))))))

(assert (= (and d!333790 (not res!527330)) b!1167727))

(assert (= (and b!1167727 res!527329) b!1167728))

(declare-fun m!1339591 () Bool)

(assert (=> d!333790 m!1339591))

(assert (=> d!333790 m!1335511))

(declare-fun m!1339593 () Bool)

(assert (=> b!1167727 m!1339593))

(declare-fun m!1339595 () Bool)

(assert (=> b!1167728 m!1339595))

(assert (=> b!1166384 d!333790))

(assert (=> d!332850 d!332860))

(declare-fun d!333792 () Bool)

(assert (=> d!333792 (forall!3024 lt!398622 lambda!47859)))

(assert (=> d!333792 true))

(declare-fun _$37!316 () Unit!17605)

(assert (=> d!333792 (= (choose!7522 lt!398622 lt!398620 lambda!47859) _$37!316)))

(declare-fun bs!285013 () Bool)

(assert (= bs!285013 d!333792))

(assert (=> bs!285013 m!1335377))

(assert (=> d!332850 d!333792))

(assert (=> d!332850 d!333524))

(declare-fun d!333794 () Bool)

(declare-fun res!527335 () Bool)

(declare-fun e!748459 () Bool)

(assert (=> d!333794 (=> (not res!527335) (not e!748459))))

(assert (=> d!333794 (= res!527335 (<= (size!9071 (list!4244 (xs!6482 (c!194629 (tokens!1624 thiss!10527))))) 512))))

(assert (=> d!333794 (= (inv!15169 (c!194629 (tokens!1624 thiss!10527))) e!748459)))

(declare-fun b!1167736 () Bool)

(declare-fun res!527336 () Bool)

(assert (=> b!1167736 (=> (not res!527336) (not e!748459))))

(assert (=> b!1167736 (= res!527336 (= (csize!7785 (c!194629 (tokens!1624 thiss!10527))) (size!9071 (list!4244 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))))

(declare-fun b!1167737 () Bool)

(assert (=> b!1167737 (= e!748459 (and (> (csize!7785 (c!194629 (tokens!1624 thiss!10527))) 0) (<= (csize!7785 (c!194629 (tokens!1624 thiss!10527))) 512)))))

(assert (= (and d!333794 res!527335) b!1167736))

(assert (= (and b!1167736 res!527336) b!1167737))

(declare-fun m!1339597 () Bool)

(assert (=> d!333794 m!1339597))

(assert (=> d!333794 m!1339597))

(declare-fun m!1339599 () Bool)

(assert (=> d!333794 m!1339599))

(assert (=> b!1167736 m!1339597))

(assert (=> b!1167736 m!1339597))

(assert (=> b!1167736 m!1339599))

(assert (=> b!1166159 d!333794))

(declare-fun b!1167740 () Bool)

(declare-fun e!748463 () Bool)

(assert (=> b!1167740 (= e!748463 (subseq!259 (t!110333 (t!110333 lt!398622)) (t!110333 (t!110333 lt!398620))))))

(declare-fun b!1167741 () Bool)

(declare-fun e!748461 () Bool)

(assert (=> b!1167741 (= e!748461 (subseq!259 (t!110333 lt!398622) (t!110333 (t!110333 lt!398620))))))

(declare-fun b!1167739 () Bool)

(declare-fun e!748462 () Bool)

(assert (=> b!1167739 (= e!748462 e!748461)))

(declare-fun res!527339 () Bool)

(assert (=> b!1167739 (=> res!527339 e!748461)))

(assert (=> b!1167739 (= res!527339 e!748463)))

(declare-fun res!527340 () Bool)

(assert (=> b!1167739 (=> (not res!527340) (not e!748463))))

(assert (=> b!1167739 (= res!527340 (= (h!16920 (t!110333 lt!398622)) (h!16920 (t!110333 lt!398620))))))

(declare-fun b!1167738 () Bool)

(declare-fun e!748460 () Bool)

(assert (=> b!1167738 (= e!748460 e!748462)))

(declare-fun res!527337 () Bool)

(assert (=> b!1167738 (=> (not res!527337) (not e!748462))))

(assert (=> b!1167738 (= res!527337 ((_ is Cons!11519) (t!110333 lt!398620)))))

(declare-fun d!333796 () Bool)

(declare-fun res!527338 () Bool)

(assert (=> d!333796 (=> res!527338 e!748460)))

(assert (=> d!333796 (= res!527338 ((_ is Nil!11519) (t!110333 lt!398622)))))

(assert (=> d!333796 (= (subseq!259 (t!110333 lt!398622) (t!110333 lt!398620)) e!748460)))

(assert (= (and d!333796 (not res!527338)) b!1167738))

(assert (= (and b!1167738 res!527337) b!1167739))

(assert (= (and b!1167739 res!527340) b!1167740))

(assert (= (and b!1167739 (not res!527339)) b!1167741))

(declare-fun m!1339601 () Bool)

(assert (=> b!1167740 m!1339601))

(assert (=> b!1167741 m!1339369))

(assert (=> b!1166181 d!333796))

(declare-fun b!1167742 () Bool)

(declare-fun e!748467 () Int)

(declare-fun call!82218 () Int)

(assert (=> b!1167742 (= e!748467 call!82218)))

(declare-fun b!1167743 () Bool)

(declare-fun e!748466 () List!11543)

(declare-fun e!748464 () List!11543)

(assert (=> b!1167743 (= e!748466 e!748464)))

(declare-fun c!194978 () Bool)

(assert (=> b!1167743 (= c!194978 (<= (- 0 1) 0))))

(declare-fun b!1167744 () Bool)

(declare-fun e!748468 () Int)

(assert (=> b!1167744 (= e!748467 e!748468)))

(declare-fun c!194975 () Bool)

(assert (=> b!1167744 (= c!194975 (>= (- 0 1) call!82218))))

(declare-fun b!1167745 () Bool)

(declare-fun e!748465 () Bool)

(declare-fun lt!399962 () List!11543)

(assert (=> b!1167745 (= e!748465 (= (size!9071 lt!399962) e!748467))))

(declare-fun c!194976 () Bool)

(assert (=> b!1167745 (= c!194976 (<= (- 0 1) 0))))

(declare-fun b!1167746 () Bool)

(assert (=> b!1167746 (= e!748466 Nil!11519)))

(declare-fun b!1167747 () Bool)

(assert (=> b!1167747 (= e!748468 (- call!82218 (- 0 1)))))

(declare-fun b!1167748 () Bool)

(assert (=> b!1167748 (= e!748464 (t!110333 lt!398620))))

(declare-fun b!1167750 () Bool)

(assert (=> b!1167750 (= e!748464 (drop!482 (t!110333 (t!110333 lt!398620)) (- (- 0 1) 1)))))

(declare-fun bm!82213 () Bool)

(assert (=> bm!82213 (= call!82218 (size!9071 (t!110333 lt!398620)))))

(declare-fun d!333798 () Bool)

(assert (=> d!333798 e!748465))

(declare-fun res!527341 () Bool)

(assert (=> d!333798 (=> (not res!527341) (not e!748465))))

(assert (=> d!333798 (= res!527341 (= ((_ map implies) (content!1608 lt!399962) (content!1608 (t!110333 lt!398620))) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333798 (= lt!399962 e!748466)))

(declare-fun c!194977 () Bool)

(assert (=> d!333798 (= c!194977 ((_ is Nil!11519) (t!110333 lt!398620)))))

(assert (=> d!333798 (= (drop!482 (t!110333 lt!398620) (- 0 1)) lt!399962)))

(declare-fun b!1167749 () Bool)

(assert (=> b!1167749 (= e!748468 0)))

(assert (= (and d!333798 c!194977) b!1167746))

(assert (= (and d!333798 (not c!194977)) b!1167743))

(assert (= (and b!1167743 c!194978) b!1167748))

(assert (= (and b!1167743 (not c!194978)) b!1167750))

(assert (= (and d!333798 res!527341) b!1167745))

(assert (= (and b!1167745 c!194976) b!1167742))

(assert (= (and b!1167745 (not c!194976)) b!1167744))

(assert (= (and b!1167744 c!194975) b!1167749))

(assert (= (and b!1167744 (not c!194975)) b!1167747))

(assert (= (or b!1167742 b!1167744 b!1167747) bm!82213))

(declare-fun m!1339603 () Bool)

(assert (=> b!1167745 m!1339603))

(declare-fun m!1339605 () Bool)

(assert (=> b!1167750 m!1339605))

(assert (=> bm!82213 m!1337659))

(declare-fun m!1339607 () Bool)

(assert (=> d!333798 m!1339607))

(assert (=> d!333798 m!1337657))

(assert (=> b!1166396 d!333798))

(assert (=> b!1166474 d!333172))

(declare-fun b!1167753 () Bool)

(declare-fun e!748472 () Bool)

(assert (=> b!1167753 (= e!748472 (subseq!259 (t!110333 (t!110333 (slice!313 lt!398620 from!787 to!267))) (t!110333 (t!110333 lt!398620))))))

(declare-fun e!748470 () Bool)

(declare-fun b!1167754 () Bool)

(assert (=> b!1167754 (= e!748470 (subseq!259 (t!110333 (slice!313 lt!398620 from!787 to!267)) (t!110333 (t!110333 lt!398620))))))

(declare-fun b!1167752 () Bool)

(declare-fun e!748471 () Bool)

(assert (=> b!1167752 (= e!748471 e!748470)))

(declare-fun res!527344 () Bool)

(assert (=> b!1167752 (=> res!527344 e!748470)))

(assert (=> b!1167752 (= res!527344 e!748472)))

(declare-fun res!527345 () Bool)

(assert (=> b!1167752 (=> (not res!527345) (not e!748472))))

(assert (=> b!1167752 (= res!527345 (= (h!16920 (t!110333 (slice!313 lt!398620 from!787 to!267))) (h!16920 (t!110333 lt!398620))))))

(declare-fun b!1167751 () Bool)

(declare-fun e!748469 () Bool)

(assert (=> b!1167751 (= e!748469 e!748471)))

(declare-fun res!527342 () Bool)

(assert (=> b!1167751 (=> (not res!527342) (not e!748471))))

(assert (=> b!1167751 (= res!527342 ((_ is Cons!11519) (t!110333 lt!398620)))))

(declare-fun d!333800 () Bool)

(declare-fun res!527343 () Bool)

(assert (=> d!333800 (=> res!527343 e!748469)))

(assert (=> d!333800 (= res!527343 ((_ is Nil!11519) (t!110333 (slice!313 lt!398620 from!787 to!267))))))

(assert (=> d!333800 (= (subseq!259 (t!110333 (slice!313 lt!398620 from!787 to!267)) (t!110333 lt!398620)) e!748469)))

(assert (= (and d!333800 (not res!527343)) b!1167751))

(assert (= (and b!1167751 res!527342) b!1167752))

(assert (= (and b!1167752 res!527345) b!1167753))

(assert (= (and b!1167752 (not res!527344)) b!1167754))

(declare-fun m!1339609 () Bool)

(assert (=> b!1167753 m!1339609))

(assert (=> b!1167754 m!1339327))

(assert (=> b!1165800 d!333800))

(declare-fun d!333802 () Bool)

(declare-fun res!527346 () Bool)

(declare-fun e!748473 () Bool)

(assert (=> d!333802 (=> res!527346 e!748473)))

(assert (=> d!333802 (= res!527346 ((_ is Nil!11519) (list!4239 (tokens!1624 thiss!10527))))))

(assert (=> d!333802 (= (forall!3024 (list!4239 (tokens!1624 thiss!10527)) lambda!47859) e!748473)))

(declare-fun b!1167755 () Bool)

(declare-fun e!748474 () Bool)

(assert (=> b!1167755 (= e!748473 e!748474)))

(declare-fun res!527347 () Bool)

(assert (=> b!1167755 (=> (not res!527347) (not e!748474))))

(assert (=> b!1167755 (= res!527347 (dynLambda!5074 lambda!47859 (h!16920 (list!4239 (tokens!1624 thiss!10527)))))))

(declare-fun b!1167756 () Bool)

(assert (=> b!1167756 (= e!748474 (forall!3024 (t!110333 (list!4239 (tokens!1624 thiss!10527))) lambda!47859))))

(assert (= (and d!333802 (not res!527346)) b!1167755))

(assert (= (and b!1167755 res!527347) b!1167756))

(declare-fun b_lambda!34833 () Bool)

(assert (=> (not b_lambda!34833) (not b!1167755)))

(declare-fun m!1339611 () Bool)

(assert (=> b!1167755 m!1339611))

(declare-fun m!1339613 () Bool)

(assert (=> b!1167756 m!1339613))

(assert (=> d!332730 d!333802))

(assert (=> d!332730 d!332740))

(declare-fun d!333804 () Bool)

(declare-fun lt!399963 () Bool)

(assert (=> d!333804 (= lt!399963 (forall!3024 (list!4242 (c!194629 (tokens!1624 thiss!10527))) lambda!47859))))

(declare-fun e!748475 () Bool)

(assert (=> d!333804 (= lt!399963 e!748475)))

(declare-fun res!527348 () Bool)

(assert (=> d!333804 (=> res!527348 e!748475)))

(assert (=> d!333804 (= res!527348 ((_ is Empty!3777) (c!194629 (tokens!1624 thiss!10527))))))

(assert (=> d!333804 (= (forall!3026 (c!194629 (tokens!1624 thiss!10527)) lambda!47859) lt!399963)))

(declare-fun b!1167757 () Bool)

(declare-fun e!748476 () Bool)

(assert (=> b!1167757 (= e!748475 e!748476)))

(declare-fun c!194979 () Bool)

(assert (=> b!1167757 (= c!194979 ((_ is Leaf!5791) (c!194629 (tokens!1624 thiss!10527))))))

(declare-fun b!1167760 () Bool)

(declare-fun e!748477 () Bool)

(assert (=> b!1167760 (= e!748477 (forall!3026 (right!10404 (c!194629 (tokens!1624 thiss!10527))) lambda!47859))))

(declare-fun b!1167759 () Bool)

(assert (=> b!1167759 (= e!748476 e!748477)))

(declare-fun lt!399964 () Unit!17605)

(assert (=> b!1167759 (= lt!399964 (lemmaForallConcat!117 (list!4242 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) (list!4242 (right!10404 (c!194629 (tokens!1624 thiss!10527)))) lambda!47859))))

(declare-fun res!527349 () Bool)

(assert (=> b!1167759 (= res!527349 (forall!3026 (left!10074 (c!194629 (tokens!1624 thiss!10527))) lambda!47859))))

(assert (=> b!1167759 (=> (not res!527349) (not e!748477))))

(declare-fun b!1167758 () Bool)

(assert (=> b!1167758 (= e!748476 (forall!3029 (xs!6482 (c!194629 (tokens!1624 thiss!10527))) lambda!47859))))

(assert (= (and d!333804 (not res!527348)) b!1167757))

(assert (= (and b!1167757 c!194979) b!1167758))

(assert (= (and b!1167757 (not c!194979)) b!1167759))

(assert (= (and b!1167759 res!527349) b!1167760))

(assert (=> d!333804 m!1335745))

(assert (=> d!333804 m!1335745))

(declare-fun m!1339615 () Bool)

(assert (=> d!333804 m!1339615))

(declare-fun m!1339617 () Bool)

(assert (=> b!1167760 m!1339617))

(assert (=> b!1167759 m!1338099))

(assert (=> b!1167759 m!1338093))

(assert (=> b!1167759 m!1338099))

(assert (=> b!1167759 m!1338093))

(declare-fun m!1339619 () Bool)

(assert (=> b!1167759 m!1339619))

(declare-fun m!1339621 () Bool)

(assert (=> b!1167759 m!1339621))

(declare-fun m!1339623 () Bool)

(assert (=> b!1167758 m!1339623))

(assert (=> d!332730 d!333804))

(declare-fun bs!285014 () Bool)

(declare-fun d!333806 () Bool)

(assert (= bs!285014 (and d!333806 d!332714)))

(declare-fun lambda!47942 () Int)

(assert (=> bs!285014 (= lambda!47942 lambda!47877)))

(declare-fun bs!285015 () Bool)

(assert (= bs!285015 (and d!333806 d!333526)))

(assert (=> bs!285015 (= lambda!47942 lambda!47935)))

(declare-fun bs!285016 () Bool)

(assert (= bs!285016 (and d!333806 d!332754)))

(assert (=> bs!285016 (= lambda!47942 lambda!47880)))

(declare-fun bs!285017 () Bool)

(assert (= bs!285017 (and d!333806 d!333536)))

(assert (=> bs!285017 (= lambda!47942 lambda!47936)))

(declare-fun bs!285018 () Bool)

(assert (= bs!285018 (and d!333806 d!332758)))

(assert (=> bs!285018 (= lambda!47942 lambda!47881)))

(declare-fun bs!285019 () Bool)

(assert (= bs!285019 (and d!333806 d!332712)))

(assert (=> bs!285019 (= lambda!47942 lambda!47872)))

(declare-fun bs!285020 () Bool)

(assert (= bs!285020 (and d!333806 d!333328)))

(assert (=> bs!285020 (= lambda!47942 lambda!47924)))

(declare-fun bs!285021 () Bool)

(assert (= bs!285021 (and d!333806 d!333484)))

(assert (=> bs!285021 (= lambda!47942 lambda!47930)))

(declare-fun bs!285022 () Bool)

(assert (= bs!285022 (and d!333806 d!332732)))

(assert (=> bs!285022 (= lambda!47942 lambda!47878)))

(declare-fun bs!285023 () Bool)

(assert (= bs!285023 (and d!333806 d!332856)))

(assert (=> bs!285023 (= lambda!47942 lambda!47902)))

(declare-fun bs!285024 () Bool)

(assert (= bs!285024 (and d!333806 d!333546)))

(assert (=> bs!285024 (= lambda!47942 lambda!47940)))

(declare-fun bs!285025 () Bool)

(assert (= bs!285025 (and d!333806 d!333076)))

(assert (=> bs!285025 (= lambda!47942 lambda!47907)))

(declare-fun bs!285026 () Bool)

(assert (= bs!285026 (and d!333806 b!1166241)))

(assert (=> bs!285026 (= lambda!47942 lambda!47890)))

(declare-fun bs!285027 () Bool)

(assert (= bs!285027 (and d!333806 d!332834)))

(assert (=> bs!285027 (= lambda!47942 lambda!47891)))

(declare-fun bs!285028 () Bool)

(assert (= bs!285028 (and d!333806 d!332868)))

(assert (=> bs!285028 (= lambda!47942 lambda!47903)))

(declare-fun bs!285029 () Bool)

(assert (= bs!285029 (and d!333806 b!1166281)))

(assert (=> bs!285029 (= lambda!47942 lambda!47898)))

(declare-fun bs!285030 () Bool)

(assert (= bs!285030 (and d!333806 d!333790)))

(assert (=> bs!285030 (= lambda!47942 lambda!47941)))

(declare-fun bs!285031 () Bool)

(assert (= bs!285031 (and d!333806 d!332796)))

(assert (=> bs!285031 (= lambda!47942 lambda!47883)))

(declare-fun bs!285032 () Bool)

(assert (= bs!285032 (and d!333806 b!1165777)))

(assert (=> bs!285032 (= lambda!47942 lambda!47859)))

(declare-fun bs!285033 () Bool)

(assert (= bs!285033 (and d!333806 d!332668)))

(assert (=> bs!285033 (= lambda!47942 lambda!47862)))

(declare-fun b!1167765 () Bool)

(declare-fun e!748482 () Bool)

(assert (=> b!1167765 (= e!748482 true)))

(declare-fun b!1167764 () Bool)

(declare-fun e!748481 () Bool)

(assert (=> b!1167764 (= e!748481 e!748482)))

(declare-fun b!1167763 () Bool)

(declare-fun e!748480 () Bool)

(assert (=> b!1167763 (= e!748480 e!748481)))

(assert (=> d!333806 e!748480))

(assert (= b!1167764 b!1167765))

(assert (= b!1167763 b!1167764))

(assert (= (and d!333806 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1167763))

(assert (=> b!1167765 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47942))))

(assert (=> b!1167765 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47942))))

(assert (=> d!333806 true))

(declare-fun lt!399965 () Bool)

(assert (=> d!333806 (= lt!399965 (forall!3024 (take!72 lt!398622 (- to!267 from!787)) lambda!47942))))

(declare-fun e!748478 () Bool)

(assert (=> d!333806 (= lt!399965 e!748478)))

(declare-fun res!527351 () Bool)

(assert (=> d!333806 (=> res!527351 e!748478)))

(assert (=> d!333806 (= res!527351 (not ((_ is Cons!11519) (take!72 lt!398622 (- to!267 from!787)))))))

(assert (=> d!333806 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333806 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (take!72 lt!398622 (- to!267 from!787))) lt!399965)))

(declare-fun b!1167761 () Bool)

(declare-fun e!748479 () Bool)

(assert (=> b!1167761 (= e!748478 e!748479)))

(declare-fun res!527350 () Bool)

(assert (=> b!1167761 (=> (not res!527350) (not e!748479))))

(assert (=> b!1167761 (= res!527350 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (take!72 lt!398622 (- to!267 from!787)))))))

(declare-fun b!1167762 () Bool)

(assert (=> b!1167762 (= e!748479 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (take!72 lt!398622 (- to!267 from!787)))))))

(assert (= (and d!333806 (not res!527351)) b!1167761))

(assert (= (and b!1167761 res!527350) b!1167762))

(assert (=> d!333806 m!1335393))

(declare-fun m!1339625 () Bool)

(assert (=> d!333806 m!1339625))

(assert (=> d!333806 m!1335511))

(declare-fun m!1339627 () Bool)

(assert (=> b!1167761 m!1339627))

(declare-fun m!1339629 () Bool)

(assert (=> b!1167762 m!1339629))

(assert (=> d!332806 d!333806))

(assert (=> d!332806 d!332864))

(declare-fun bs!285124 () Bool)

(declare-fun d!333808 () Bool)

(assert (= bs!285124 (and d!333808 d!333806)))

(declare-fun lambda!47947 () Int)

(assert (=> bs!285124 (= lambda!47947 lambda!47942)))

(declare-fun bs!285125 () Bool)

(assert (= bs!285125 (and d!333808 d!332714)))

(assert (=> bs!285125 (= lambda!47947 lambda!47877)))

(declare-fun bs!285126 () Bool)

(assert (= bs!285126 (and d!333808 d!333526)))

(assert (=> bs!285126 (= lambda!47947 lambda!47935)))

(declare-fun bs!285127 () Bool)

(assert (= bs!285127 (and d!333808 d!332754)))

(assert (=> bs!285127 (= lambda!47947 lambda!47880)))

(declare-fun bs!285128 () Bool)

(assert (= bs!285128 (and d!333808 d!333536)))

(assert (=> bs!285128 (= lambda!47947 lambda!47936)))

(declare-fun bs!285129 () Bool)

(assert (= bs!285129 (and d!333808 d!332758)))

(assert (=> bs!285129 (= lambda!47947 lambda!47881)))

(declare-fun bs!285130 () Bool)

(assert (= bs!285130 (and d!333808 d!332712)))

(assert (=> bs!285130 (= lambda!47947 lambda!47872)))

(declare-fun bs!285131 () Bool)

(assert (= bs!285131 (and d!333808 d!333328)))

(assert (=> bs!285131 (= lambda!47947 lambda!47924)))

(declare-fun bs!285132 () Bool)

(assert (= bs!285132 (and d!333808 d!333484)))

(assert (=> bs!285132 (= lambda!47947 lambda!47930)))

(declare-fun bs!285133 () Bool)

(assert (= bs!285133 (and d!333808 d!332732)))

(assert (=> bs!285133 (= lambda!47947 lambda!47878)))

(declare-fun bs!285134 () Bool)

(assert (= bs!285134 (and d!333808 d!332856)))

(assert (=> bs!285134 (= lambda!47947 lambda!47902)))

(declare-fun bs!285135 () Bool)

(assert (= bs!285135 (and d!333808 d!333546)))

(assert (=> bs!285135 (= lambda!47947 lambda!47940)))

(declare-fun bs!285136 () Bool)

(assert (= bs!285136 (and d!333808 d!333076)))

(assert (=> bs!285136 (= lambda!47947 lambda!47907)))

(declare-fun bs!285137 () Bool)

(assert (= bs!285137 (and d!333808 b!1166241)))

(assert (=> bs!285137 (= lambda!47947 lambda!47890)))

(declare-fun bs!285138 () Bool)

(assert (= bs!285138 (and d!333808 d!332834)))

(assert (=> bs!285138 (= lambda!47947 lambda!47891)))

(declare-fun bs!285139 () Bool)

(assert (= bs!285139 (and d!333808 d!332868)))

(assert (=> bs!285139 (= lambda!47947 lambda!47903)))

(declare-fun bs!285140 () Bool)

(assert (= bs!285140 (and d!333808 b!1166281)))

(assert (=> bs!285140 (= lambda!47947 lambda!47898)))

(declare-fun bs!285141 () Bool)

(assert (= bs!285141 (and d!333808 d!333790)))

(assert (=> bs!285141 (= lambda!47947 lambda!47941)))

(declare-fun bs!285142 () Bool)

(assert (= bs!285142 (and d!333808 d!332796)))

(assert (=> bs!285142 (= lambda!47947 lambda!47883)))

(declare-fun bs!285143 () Bool)

(assert (= bs!285143 (and d!333808 b!1165777)))

(assert (=> bs!285143 (= lambda!47947 lambda!47859)))

(declare-fun bs!285144 () Bool)

(assert (= bs!285144 (and d!333808 d!332668)))

(assert (=> bs!285144 (= lambda!47947 lambda!47862)))

(declare-fun b!1168093 () Bool)

(declare-fun e!748717 () Bool)

(assert (=> b!1168093 (= e!748717 true)))

(declare-fun b!1168092 () Bool)

(declare-fun e!748716 () Bool)

(assert (=> b!1168092 (= e!748716 e!748717)))

(declare-fun b!1168091 () Bool)

(declare-fun e!748715 () Bool)

(assert (=> b!1168091 (= e!748715 e!748716)))

(assert (=> d!333808 e!748715))

(assert (= b!1168092 b!1168093))

(assert (= b!1168091 b!1168092))

(assert (= (and d!333808 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1168091))

(assert (=> b!1168093 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47947))))

(assert (=> b!1168093 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47947))))

(assert (=> d!333808 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (take!72 lt!398622 (- to!267 from!787)) (rules!9572 thiss!10527))))

(declare-fun lt!400046 () Unit!17605)

(declare-fun lt!400044 () Unit!17605)

(assert (=> d!333808 (= lt!400046 lt!400044)))

(declare-fun lt!400045 () List!11543)

(assert (=> d!333808 (forall!3024 lt!400045 lambda!47947)))

(assert (=> d!333808 (= lt!400044 (lemmaForallSubseq!151 lt!400045 lt!398622 lambda!47947))))

(assert (=> d!333808 (= lt!400045 (take!72 lt!398622 (- to!267 from!787)))))

(declare-fun lt!400043 () Unit!17605)

(declare-fun Unit!17681 () Unit!17605)

(assert (=> d!333808 (= lt!400043 Unit!17681)))

(declare-fun e!748713 () Bool)

(assert (=> d!333808 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (take!72 lt!398622 (- to!267 from!787))) e!748713)))

(declare-fun res!527426 () Bool)

(assert (=> d!333808 (=> res!527426 e!748713)))

(declare-fun lt!400047 () List!11543)

(assert (=> d!333808 (= res!527426 (not ((_ is Cons!11519) lt!400047)))))

(assert (=> d!333808 (= lt!400047 (take!72 lt!398622 (- to!267 from!787)))))

(assert (=> d!333808 true))

(declare-fun _$83!154 () Unit!17605)

(assert (=> d!333808 (= (choose!7523 Lexer!1700 lt!398622 (- to!267 from!787) (rules!9572 thiss!10527)) _$83!154)))

(declare-fun b!1168089 () Bool)

(declare-fun e!748714 () Bool)

(assert (=> b!1168089 (= e!748713 e!748714)))

(declare-fun res!527425 () Bool)

(assert (=> b!1168089 (=> (not res!527425) (not e!748714))))

(assert (=> b!1168089 (= res!527425 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!400047)))))

(declare-fun b!1168090 () Bool)

(assert (=> b!1168090 (= e!748714 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!400047)))))

(assert (= (and d!333808 (not res!527426)) b!1168089))

(assert (= (and b!1168089 res!527425) b!1168090))

(declare-fun m!1340003 () Bool)

(assert (=> d!333808 m!1340003))

(assert (=> d!333808 m!1335393))

(assert (=> d!333808 m!1335393))

(assert (=> d!333808 m!1336385))

(assert (=> d!333808 m!1335393))

(assert (=> d!333808 m!1336395))

(declare-fun m!1340005 () Bool)

(assert (=> d!333808 m!1340005))

(declare-fun m!1340007 () Bool)

(assert (=> b!1168089 m!1340007))

(declare-fun m!1340009 () Bool)

(assert (=> b!1168090 m!1340009))

(assert (=> d!332806 d!333808))

(assert (=> d!332806 d!333086))

(declare-fun d!333952 () Bool)

(declare-fun lt!400048 () Token!3676)

(assert (=> d!333952 (contains!1994 (list!4239 (tokens!1624 thiss!10527)) lt!400048)))

(declare-fun e!748719 () Token!3676)

(assert (=> d!333952 (= lt!400048 e!748719)))

(declare-fun c!195048 () Bool)

(assert (=> d!333952 (= c!195048 (= 0 0))))

(declare-fun e!748718 () Bool)

(assert (=> d!333952 e!748718))

(declare-fun res!527427 () Bool)

(assert (=> d!333952 (=> (not res!527427) (not e!748718))))

(assert (=> d!333952 (= res!527427 (<= 0 0))))

(assert (=> d!333952 (= (apply!2480 (list!4239 (tokens!1624 thiss!10527)) 0) lt!400048)))

(declare-fun b!1168094 () Bool)

(assert (=> b!1168094 (= e!748718 (< 0 (size!9071 (list!4239 (tokens!1624 thiss!10527)))))))

(declare-fun b!1168095 () Bool)

(assert (=> b!1168095 (= e!748719 (head!2102 (list!4239 (tokens!1624 thiss!10527))))))

(declare-fun b!1168096 () Bool)

(assert (=> b!1168096 (= e!748719 (apply!2480 (tail!1686 (list!4239 (tokens!1624 thiss!10527))) (- 0 1)))))

(assert (= (and d!333952 res!527427) b!1168094))

(assert (= (and d!333952 c!195048) b!1168095))

(assert (= (and d!333952 (not c!195048)) b!1168096))

(assert (=> d!333952 m!1335409))

(declare-fun m!1340011 () Bool)

(assert (=> d!333952 m!1340011))

(assert (=> b!1168094 m!1335409))

(assert (=> b!1168094 m!1336677))

(assert (=> b!1168095 m!1335409))

(assert (=> b!1168095 m!1339507))

(assert (=> b!1168096 m!1335409))

(assert (=> b!1168096 m!1339509))

(assert (=> b!1168096 m!1339509))

(declare-fun m!1340013 () Bool)

(assert (=> b!1168096 m!1340013))

(assert (=> d!332904 d!333952))

(assert (=> d!332904 d!332740))

(declare-fun bm!82241 () Bool)

(declare-fun c!195051 () Bool)

(declare-fun c!195050 () Bool)

(assert (=> bm!82241 (= c!195051 c!195050)))

(declare-fun call!82246 () Token!3676)

(declare-fun e!748721 () Int)

(assert (=> bm!82241 (= call!82246 (apply!2483 (ite c!195050 (left!10074 (c!194629 (tokens!1624 thiss!10527))) (right!10404 (c!194629 (tokens!1624 thiss!10527)))) e!748721))))

(declare-fun b!1168097 () Bool)

(declare-fun e!748722 () Bool)

(assert (=> b!1168097 (= e!748722 (< 0 (size!9075 (c!194629 (tokens!1624 thiss!10527)))))))

(declare-fun b!1168098 () Bool)

(assert (=> b!1168098 (= e!748721 (- 0 (size!9075 (left!10074 (c!194629 (tokens!1624 thiss!10527))))))))

(declare-fun b!1168099 () Bool)

(declare-fun e!748723 () Token!3676)

(assert (=> b!1168099 (= e!748723 call!82246)))

(declare-fun d!333954 () Bool)

(declare-fun lt!400049 () Token!3676)

(assert (=> d!333954 (= lt!400049 (apply!2480 (list!4242 (c!194629 (tokens!1624 thiss!10527))) 0))))

(declare-fun e!748720 () Token!3676)

(assert (=> d!333954 (= lt!400049 e!748720)))

(declare-fun c!195049 () Bool)

(assert (=> d!333954 (= c!195049 ((_ is Leaf!5791) (c!194629 (tokens!1624 thiss!10527))))))

(assert (=> d!333954 e!748722))

(declare-fun res!527428 () Bool)

(assert (=> d!333954 (=> (not res!527428) (not e!748722))))

(assert (=> d!333954 (= res!527428 (<= 0 0))))

(assert (=> d!333954 (= (apply!2483 (c!194629 (tokens!1624 thiss!10527)) 0) lt!400049)))

(declare-fun b!1168100 () Bool)

(assert (=> b!1168100 (= e!748721 0)))

(declare-fun b!1168101 () Bool)

(assert (=> b!1168101 (= e!748720 (apply!2488 (xs!6482 (c!194629 (tokens!1624 thiss!10527))) 0))))

(declare-fun b!1168102 () Bool)

(assert (=> b!1168102 (= e!748720 e!748723)))

(declare-fun lt!400050 () Bool)

(assert (=> b!1168102 (= lt!400050 (appendIndex!111 (list!4242 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) (list!4242 (right!10404 (c!194629 (tokens!1624 thiss!10527)))) 0))))

(assert (=> b!1168102 (= c!195050 (< 0 (size!9075 (left!10074 (c!194629 (tokens!1624 thiss!10527))))))))

(declare-fun b!1168103 () Bool)

(assert (=> b!1168103 (= e!748723 call!82246)))

(assert (= (and d!333954 res!527428) b!1168097))

(assert (= (and d!333954 c!195049) b!1168101))

(assert (= (and d!333954 (not c!195049)) b!1168102))

(assert (= (and b!1168102 c!195050) b!1168103))

(assert (= (and b!1168102 (not c!195050)) b!1168099))

(assert (= (or b!1168103 b!1168099) bm!82241))

(assert (= (and bm!82241 c!195051) b!1168100))

(assert (= (and bm!82241 (not c!195051)) b!1168098))

(declare-fun m!1340015 () Bool)

(assert (=> bm!82241 m!1340015))

(assert (=> d!333954 m!1335745))

(assert (=> d!333954 m!1335745))

(declare-fun m!1340017 () Bool)

(assert (=> d!333954 m!1340017))

(assert (=> b!1168098 m!1337819))

(declare-fun m!1340019 () Bool)

(assert (=> b!1168101 m!1340019))

(assert (=> b!1168097 m!1336679))

(assert (=> b!1168102 m!1338099))

(assert (=> b!1168102 m!1338093))

(assert (=> b!1168102 m!1338099))

(assert (=> b!1168102 m!1338093))

(declare-fun m!1340021 () Bool)

(assert (=> b!1168102 m!1340021))

(assert (=> b!1168102 m!1337819))

(assert (=> d!332904 d!333954))

(declare-fun d!333956 () Bool)

(assert (=> d!333956 (= (inv!15159 (tag!2269 (h!16921 (rules!9572 thiss!10527)))) (= (mod (str.len (value!65195 (tag!2269 (h!16921 (rules!9572 thiss!10527))))) 2) 0))))

(assert (=> b!1166514 d!333956))

(declare-fun d!333958 () Bool)

(declare-fun res!527431 () Bool)

(declare-fun e!748726 () Bool)

(assert (=> d!333958 (=> (not res!527431) (not e!748726))))

(declare-fun semiInverseModEq!731 (Int Int) Bool)

(assert (=> d!333958 (= res!527431 (semiInverseModEq!731 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))))))

(assert (=> d!333958 (= (inv!15177 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) e!748726)))

(declare-fun b!1168106 () Bool)

(declare-fun equivClasses!698 (Int Int) Bool)

(assert (=> b!1168106 (= e!748726 (equivClasses!698 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))))))

(assert (= (and d!333958 res!527431) b!1168106))

(declare-fun m!1340023 () Bool)

(assert (=> d!333958 m!1340023))

(declare-fun m!1340025 () Bool)

(assert (=> b!1168106 m!1340025))

(assert (=> b!1166514 d!333958))

(assert (=> d!332656 d!332654))

(assert (=> d!332656 d!332658))

(declare-fun d!333960 () Bool)

(assert (=> d!333960 (subseq!259 (slice!313 lt!398620 from!787 to!267) lt!398620)))

(assert (=> d!333960 true))

(declare-fun _$25!167 () Unit!17605)

(assert (=> d!333960 (= (choose!7520 lt!398620 from!787 to!267) _$25!167)))

(declare-fun bs!285145 () Bool)

(assert (= bs!285145 d!333960))

(assert (=> bs!285145 m!1335353))

(assert (=> bs!285145 m!1335353))

(assert (=> bs!285145 m!1335355))

(assert (=> d!332656 d!333960))

(declare-fun d!333962 () Bool)

(declare-fun lt!400051 () Token!3676)

(assert (=> d!333962 (= lt!400051 (apply!2480 (list!4239 (tokens!1624 thiss!10527)) (+ 0 1)))))

(assert (=> d!333962 (= lt!400051 (apply!2483 (c!194629 (tokens!1624 thiss!10527)) (+ 0 1)))))

(declare-fun e!748727 () Bool)

(assert (=> d!333962 e!748727))

(declare-fun res!527432 () Bool)

(assert (=> d!333962 (=> (not res!527432) (not e!748727))))

(assert (=> d!333962 (= res!527432 (<= 0 (+ 0 1)))))

(assert (=> d!333962 (= (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)) lt!400051)))

(declare-fun b!1168107 () Bool)

(assert (=> b!1168107 (= e!748727 (< (+ 0 1) (size!9067 (tokens!1624 thiss!10527))))))

(assert (= (and d!333962 res!527432) b!1168107))

(assert (=> d!333962 m!1335409))

(assert (=> d!333962 m!1335409))

(declare-fun m!1340027 () Bool)

(assert (=> d!333962 m!1340027))

(declare-fun m!1340029 () Bool)

(assert (=> d!333962 m!1340029))

(assert (=> b!1168107 m!1335431))

(assert (=> b!1165964 d!333962))

(declare-fun d!333964 () Bool)

(declare-fun lt!400052 () Int)

(assert (=> d!333964 (= lt!400052 (size!9072 (list!4243 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))))))

(assert (=> d!333964 (= lt!400052 (size!9073 (c!194628 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))))))

(assert (=> d!333964 (= (size!9066 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)))) lt!400052)))

(declare-fun bs!285146 () Bool)

(assert (= bs!285146 d!333964))

(assert (=> bs!285146 m!1335649))

(declare-fun m!1340031 () Bool)

(assert (=> bs!285146 m!1340031))

(assert (=> bs!285146 m!1340031))

(declare-fun m!1340033 () Bool)

(assert (=> bs!285146 m!1340033))

(declare-fun m!1340035 () Bool)

(assert (=> bs!285146 m!1340035))

(assert (=> b!1165964 d!333964))

(declare-fun d!333966 () Bool)

(assert (=> d!333966 (= (separableTokensPredicate!130 Lexer!1700 (apply!2479 (tokens!1624 thiss!10527) 0) (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)) (rules!9572 thiss!10527)) (not (prefixMatchZipperSequence!91 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)) (++!2980 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) 0)) (singletonSeq!669 (apply!2484 (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))) 0))))))))

(declare-fun bs!285147 () Bool)

(assert (= bs!285147 d!333966))

(assert (=> bs!285147 m!1335649))

(declare-fun m!1340037 () Bool)

(assert (=> bs!285147 m!1340037))

(declare-fun m!1340039 () Bool)

(assert (=> bs!285147 m!1340039))

(declare-fun m!1340041 () Bool)

(assert (=> bs!285147 m!1340041))

(declare-fun m!1340043 () Bool)

(assert (=> bs!285147 m!1340043))

(assert (=> bs!285147 m!1336603))

(assert (=> bs!285147 m!1335645))

(assert (=> bs!285147 m!1335649))

(assert (=> bs!285147 m!1340037))

(assert (=> bs!285147 m!1340041))

(assert (=> bs!285147 m!1336603))

(assert (=> bs!285147 m!1340043))

(declare-fun m!1340045 () Bool)

(assert (=> bs!285147 m!1340045))

(assert (=> bs!285147 m!1335341))

(assert (=> bs!285147 m!1340039))

(assert (=> b!1165964 d!333966))

(assert (=> b!1165964 d!332740))

(declare-fun d!333968 () Bool)

(assert (=> d!333968 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398777)))

(declare-fun lt!400053 () Unit!17605)

(assert (=> d!333968 (= lt!400053 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398802 lt!398777))))

(assert (=> d!333968 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333968 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398802 lt!398777) lt!400053)))

(declare-fun bs!285148 () Bool)

(assert (= bs!285148 d!333968))

(assert (=> bs!285148 m!1335637))

(declare-fun m!1340047 () Bool)

(assert (=> bs!285148 m!1340047))

(assert (=> bs!285148 m!1335511))

(assert (=> b!1165964 d!333968))

(declare-fun d!333970 () Bool)

(assert (=> d!333970 (= (tail!1686 (drop!482 lt!398796 0)) (t!110333 (drop!482 lt!398796 0)))))

(assert (=> b!1165964 d!333970))

(declare-fun d!333972 () Bool)

(assert (=> d!333972 (= (tail!1686 (drop!482 lt!398780 lt!398776)) (t!110333 (drop!482 lt!398780 lt!398776)))))

(assert (=> b!1165964 d!333972))

(declare-fun d!333974 () Bool)

(assert (=> d!333974 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398781)))

(declare-fun lt!400054 () Unit!17605)

(assert (=> d!333974 (= lt!400054 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!398793 lt!398781))))

(assert (=> d!333974 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333974 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!398793 lt!398781) lt!400054)))

(declare-fun bs!285149 () Bool)

(assert (= bs!285149 d!333974))

(assert (=> bs!285149 m!1335627))

(declare-fun m!1340049 () Bool)

(assert (=> bs!285149 m!1340049))

(assert (=> bs!285149 m!1335511))

(assert (=> b!1165964 d!333974))

(declare-fun d!333976 () Bool)

(declare-fun lt!400055 () Token!3676)

(assert (=> d!333976 (contains!1994 lt!398798 lt!400055)))

(declare-fun e!748729 () Token!3676)

(assert (=> d!333976 (= lt!400055 e!748729)))

(declare-fun c!195052 () Bool)

(assert (=> d!333976 (= c!195052 (= lt!398801 0))))

(declare-fun e!748728 () Bool)

(assert (=> d!333976 e!748728))

(declare-fun res!527433 () Bool)

(assert (=> d!333976 (=> (not res!527433) (not e!748728))))

(assert (=> d!333976 (= res!527433 (<= 0 lt!398801))))

(assert (=> d!333976 (= (apply!2480 lt!398798 lt!398801) lt!400055)))

(declare-fun b!1168108 () Bool)

(assert (=> b!1168108 (= e!748728 (< lt!398801 (size!9071 lt!398798)))))

(declare-fun b!1168109 () Bool)

(assert (=> b!1168109 (= e!748729 (head!2102 lt!398798))))

(declare-fun b!1168110 () Bool)

(assert (=> b!1168110 (= e!748729 (apply!2480 (tail!1686 lt!398798) (- lt!398801 1)))))

(assert (= (and d!333976 res!527433) b!1168108))

(assert (= (and d!333976 c!195052) b!1168109))

(assert (= (and d!333976 (not c!195052)) b!1168110))

(declare-fun m!1340051 () Bool)

(assert (=> d!333976 m!1340051))

(declare-fun m!1340053 () Bool)

(assert (=> b!1168108 m!1340053))

(declare-fun m!1340055 () Bool)

(assert (=> b!1168109 m!1340055))

(declare-fun m!1340057 () Bool)

(assert (=> b!1168110 m!1340057))

(assert (=> b!1168110 m!1340057))

(declare-fun m!1340059 () Bool)

(assert (=> b!1168110 m!1340059))

(assert (=> b!1165964 d!333976))

(declare-fun b!1168111 () Bool)

(declare-fun e!748733 () Int)

(declare-fun call!82247 () Int)

(assert (=> b!1168111 (= e!748733 call!82247)))

(declare-fun b!1168112 () Bool)

(declare-fun e!748732 () List!11543)

(declare-fun e!748730 () List!11543)

(assert (=> b!1168112 (= e!748732 e!748730)))

(declare-fun c!195056 () Bool)

(assert (=> b!1168112 (= c!195056 (<= 0 0))))

(declare-fun b!1168113 () Bool)

(declare-fun e!748734 () Int)

(assert (=> b!1168113 (= e!748733 e!748734)))

(declare-fun c!195053 () Bool)

(assert (=> b!1168113 (= c!195053 (>= 0 call!82247))))

(declare-fun b!1168114 () Bool)

(declare-fun e!748731 () Bool)

(declare-fun lt!400056 () List!11543)

(assert (=> b!1168114 (= e!748731 (= (size!9071 lt!400056) e!748733))))

(declare-fun c!195054 () Bool)

(assert (=> b!1168114 (= c!195054 (<= 0 0))))

(declare-fun b!1168115 () Bool)

(assert (=> b!1168115 (= e!748732 Nil!11519)))

(declare-fun b!1168116 () Bool)

(assert (=> b!1168116 (= e!748734 (- call!82247 0))))

(declare-fun b!1168117 () Bool)

(assert (=> b!1168117 (= e!748730 lt!398796)))

(declare-fun b!1168119 () Bool)

(assert (=> b!1168119 (= e!748730 (drop!482 (t!110333 lt!398796) (- 0 1)))))

(declare-fun bm!82242 () Bool)

(assert (=> bm!82242 (= call!82247 (size!9071 lt!398796))))

(declare-fun d!333978 () Bool)

(assert (=> d!333978 e!748731))

(declare-fun res!527434 () Bool)

(assert (=> d!333978 (=> (not res!527434) (not e!748731))))

(assert (=> d!333978 (= res!527434 (= ((_ map implies) (content!1608 lt!400056) (content!1608 lt!398796)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333978 (= lt!400056 e!748732)))

(declare-fun c!195055 () Bool)

(assert (=> d!333978 (= c!195055 ((_ is Nil!11519) lt!398796))))

(assert (=> d!333978 (= (drop!482 lt!398796 0) lt!400056)))

(declare-fun b!1168118 () Bool)

(assert (=> b!1168118 (= e!748734 0)))

(assert (= (and d!333978 c!195055) b!1168115))

(assert (= (and d!333978 (not c!195055)) b!1168112))

(assert (= (and b!1168112 c!195056) b!1168117))

(assert (= (and b!1168112 (not c!195056)) b!1168119))

(assert (= (and d!333978 res!527434) b!1168114))

(assert (= (and b!1168114 c!195054) b!1168111))

(assert (= (and b!1168114 (not c!195054)) b!1168113))

(assert (= (and b!1168113 c!195053) b!1168118))

(assert (= (and b!1168113 (not c!195053)) b!1168116))

(assert (= (or b!1168111 b!1168113 b!1168116) bm!82242))

(declare-fun m!1340061 () Bool)

(assert (=> b!1168114 m!1340061))

(declare-fun m!1340063 () Bool)

(assert (=> b!1168119 m!1340063))

(declare-fun m!1340065 () Bool)

(assert (=> bm!82242 m!1340065))

(declare-fun m!1340067 () Bool)

(assert (=> d!333978 m!1340067))

(declare-fun m!1340069 () Bool)

(assert (=> d!333978 m!1340069))

(assert (=> b!1165964 d!333978))

(assert (=> b!1165964 d!332904))

(declare-fun d!333980 () Bool)

(assert (=> d!333980 (= (tail!1686 (drop!482 lt!398780 lt!398776)) (drop!482 lt!398780 (+ lt!398776 1)))))

(declare-fun lt!400057 () Unit!17605)

(assert (=> d!333980 (= lt!400057 (choose!7531 lt!398780 lt!398776))))

(declare-fun e!748735 () Bool)

(assert (=> d!333980 e!748735))

(declare-fun res!527435 () Bool)

(assert (=> d!333980 (=> (not res!527435) (not e!748735))))

(assert (=> d!333980 (= res!527435 (>= lt!398776 0))))

(assert (=> d!333980 (= (lemmaDropTail!359 lt!398780 lt!398776) lt!400057)))

(declare-fun b!1168120 () Bool)

(assert (=> b!1168120 (= e!748735 (< lt!398776 (size!9071 lt!398780)))))

(assert (= (and d!333980 res!527435) b!1168120))

(assert (=> d!333980 m!1335617))

(assert (=> d!333980 m!1335617))

(assert (=> d!333980 m!1335619))

(assert (=> d!333980 m!1335659))

(declare-fun m!1340071 () Bool)

(assert (=> d!333980 m!1340071))

(declare-fun m!1340073 () Bool)

(assert (=> b!1168120 m!1340073))

(assert (=> b!1165964 d!333980))

(declare-fun d!333982 () Bool)

(declare-fun lt!400059 () Bool)

(declare-fun e!748737 () Bool)

(assert (=> d!333982 (= lt!400059 e!748737)))

(declare-fun res!527436 () Bool)

(assert (=> d!333982 (=> (not res!527436) (not e!748737))))

(assert (=> d!333982 (= res!527436 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398781))))) (list!4239 (singletonSeq!668 lt!398781))))))

(declare-fun e!748736 () Bool)

(assert (=> d!333982 (= lt!400059 e!748736)))

(declare-fun res!527437 () Bool)

(assert (=> d!333982 (=> (not res!527437) (not e!748736))))

(declare-fun lt!400058 () tuple2!12022)

(assert (=> d!333982 (= res!527437 (= (size!9067 (_1!6858 lt!400058)) 1))))

(assert (=> d!333982 (= lt!400058 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398781))))))

(assert (=> d!333982 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333982 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398781) lt!400059)))

(declare-fun b!1168121 () Bool)

(declare-fun res!527438 () Bool)

(assert (=> b!1168121 (=> (not res!527438) (not e!748736))))

(assert (=> b!1168121 (= res!527438 (= (apply!2479 (_1!6858 lt!400058) 0) lt!398781))))

(declare-fun b!1168122 () Bool)

(assert (=> b!1168122 (= e!748736 (isEmpty!7005 (_2!6858 lt!400058)))))

(declare-fun b!1168123 () Bool)

(assert (=> b!1168123 (= e!748737 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398781))))))))

(assert (= (and d!333982 res!527437) b!1168121))

(assert (= (and b!1168121 res!527438) b!1168122))

(assert (= (and d!333982 res!527436) b!1168123))

(assert (=> d!333982 m!1335511))

(declare-fun m!1340075 () Bool)

(assert (=> d!333982 m!1340075))

(declare-fun m!1340077 () Bool)

(assert (=> d!333982 m!1340077))

(declare-fun m!1340079 () Bool)

(assert (=> d!333982 m!1340079))

(declare-fun m!1340081 () Bool)

(assert (=> d!333982 m!1340081))

(declare-fun m!1340083 () Bool)

(assert (=> d!333982 m!1340083))

(declare-fun m!1340085 () Bool)

(assert (=> d!333982 m!1340085))

(assert (=> d!333982 m!1340081))

(assert (=> d!333982 m!1340075))

(assert (=> d!333982 m!1340081))

(declare-fun m!1340087 () Bool)

(assert (=> b!1168121 m!1340087))

(declare-fun m!1340089 () Bool)

(assert (=> b!1168122 m!1340089))

(assert (=> b!1168123 m!1340081))

(assert (=> b!1168123 m!1340081))

(assert (=> b!1168123 m!1340075))

(assert (=> b!1168123 m!1340075))

(assert (=> b!1168123 m!1340077))

(declare-fun m!1340091 () Bool)

(assert (=> b!1168123 m!1340091))

(assert (=> b!1165964 d!333982))

(declare-fun b!1168124 () Bool)

(declare-fun e!748741 () Int)

(declare-fun call!82248 () Int)

(assert (=> b!1168124 (= e!748741 call!82248)))

(declare-fun b!1168125 () Bool)

(declare-fun e!748740 () List!11543)

(declare-fun e!748738 () List!11543)

(assert (=> b!1168125 (= e!748740 e!748738)))

(declare-fun c!195060 () Bool)

(assert (=> b!1168125 (= c!195060 (<= lt!398801 0))))

(declare-fun b!1168126 () Bool)

(declare-fun e!748742 () Int)

(assert (=> b!1168126 (= e!748741 e!748742)))

(declare-fun c!195057 () Bool)

(assert (=> b!1168126 (= c!195057 (>= lt!398801 call!82248))))

(declare-fun b!1168127 () Bool)

(declare-fun e!748739 () Bool)

(declare-fun lt!400060 () List!11543)

(assert (=> b!1168127 (= e!748739 (= (size!9071 lt!400060) e!748741))))

(declare-fun c!195058 () Bool)

(assert (=> b!1168127 (= c!195058 (<= lt!398801 0))))

(declare-fun b!1168128 () Bool)

(assert (=> b!1168128 (= e!748740 Nil!11519)))

(declare-fun b!1168129 () Bool)

(assert (=> b!1168129 (= e!748742 (- call!82248 lt!398801))))

(declare-fun b!1168130 () Bool)

(assert (=> b!1168130 (= e!748738 lt!398798)))

(declare-fun b!1168132 () Bool)

(assert (=> b!1168132 (= e!748738 (drop!482 (t!110333 lt!398798) (- lt!398801 1)))))

(declare-fun bm!82243 () Bool)

(assert (=> bm!82243 (= call!82248 (size!9071 lt!398798))))

(declare-fun d!333984 () Bool)

(assert (=> d!333984 e!748739))

(declare-fun res!527439 () Bool)

(assert (=> d!333984 (=> (not res!527439) (not e!748739))))

(assert (=> d!333984 (= res!527439 (= ((_ map implies) (content!1608 lt!400060) (content!1608 lt!398798)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333984 (= lt!400060 e!748740)))

(declare-fun c!195059 () Bool)

(assert (=> d!333984 (= c!195059 ((_ is Nil!11519) lt!398798))))

(assert (=> d!333984 (= (drop!482 lt!398798 lt!398801) lt!400060)))

(declare-fun b!1168131 () Bool)

(assert (=> b!1168131 (= e!748742 0)))

(assert (= (and d!333984 c!195059) b!1168128))

(assert (= (and d!333984 (not c!195059)) b!1168125))

(assert (= (and b!1168125 c!195060) b!1168130))

(assert (= (and b!1168125 (not c!195060)) b!1168132))

(assert (= (and d!333984 res!527439) b!1168127))

(assert (= (and b!1168127 c!195058) b!1168124))

(assert (= (and b!1168127 (not c!195058)) b!1168126))

(assert (= (and b!1168126 c!195057) b!1168131))

(assert (= (and b!1168126 (not c!195057)) b!1168129))

(assert (= (or b!1168124 b!1168126 b!1168129) bm!82243))

(declare-fun m!1340093 () Bool)

(assert (=> b!1168127 m!1340093))

(declare-fun m!1340095 () Bool)

(assert (=> b!1168132 m!1340095))

(assert (=> bm!82243 m!1340053))

(declare-fun m!1340097 () Bool)

(assert (=> d!333984 m!1340097))

(declare-fun m!1340099 () Bool)

(assert (=> d!333984 m!1340099))

(assert (=> b!1165964 d!333984))

(declare-fun d!333986 () Bool)

(declare-fun lt!400061 () Token!3676)

(assert (=> d!333986 (contains!1994 lt!398774 lt!400061)))

(declare-fun e!748744 () Token!3676)

(assert (=> d!333986 (= lt!400061 e!748744)))

(declare-fun c!195061 () Bool)

(assert (=> d!333986 (= c!195061 (= 0 0))))

(declare-fun e!748743 () Bool)

(assert (=> d!333986 e!748743))

(declare-fun res!527440 () Bool)

(assert (=> d!333986 (=> (not res!527440) (not e!748743))))

(assert (=> d!333986 (= res!527440 (<= 0 0))))

(assert (=> d!333986 (= (apply!2480 lt!398774 0) lt!400061)))

(declare-fun b!1168133 () Bool)

(assert (=> b!1168133 (= e!748743 (< 0 (size!9071 lt!398774)))))

(declare-fun b!1168134 () Bool)

(assert (=> b!1168134 (= e!748744 (head!2102 lt!398774))))

(declare-fun b!1168135 () Bool)

(assert (=> b!1168135 (= e!748744 (apply!2480 (tail!1686 lt!398774) (- 0 1)))))

(assert (= (and d!333986 res!527440) b!1168133))

(assert (= (and d!333986 c!195061) b!1168134))

(assert (= (and d!333986 (not c!195061)) b!1168135))

(declare-fun m!1340101 () Bool)

(assert (=> d!333986 m!1340101))

(declare-fun m!1340103 () Bool)

(assert (=> b!1168133 m!1340103))

(declare-fun m!1340105 () Bool)

(assert (=> b!1168134 m!1340105))

(declare-fun m!1340107 () Bool)

(assert (=> b!1168135 m!1340107))

(assert (=> b!1168135 m!1340107))

(declare-fun m!1340109 () Bool)

(assert (=> b!1168135 m!1340109))

(assert (=> b!1165964 d!333986))

(declare-fun d!333988 () Bool)

(declare-fun lt!400063 () Bool)

(declare-fun e!748746 () Bool)

(assert (=> d!333988 (= lt!400063 e!748746)))

(declare-fun res!527441 () Bool)

(assert (=> d!333988 (=> (not res!527441) (not e!748746))))

(assert (=> d!333988 (= res!527441 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) 0)))))) (list!4239 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) 0)))))))

(declare-fun e!748745 () Bool)

(assert (=> d!333988 (= lt!400063 e!748745)))

(declare-fun res!527442 () Bool)

(assert (=> d!333988 (=> (not res!527442) (not e!748745))))

(declare-fun lt!400062 () tuple2!12022)

(assert (=> d!333988 (= res!527442 (= (size!9067 (_1!6858 lt!400062)) 1))))

(assert (=> d!333988 (= lt!400062 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) 0)))))))

(assert (=> d!333988 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333988 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) 0)) lt!400063)))

(declare-fun b!1168136 () Bool)

(declare-fun res!527443 () Bool)

(assert (=> b!1168136 (=> (not res!527443) (not e!748745))))

(assert (=> b!1168136 (= res!527443 (= (apply!2479 (_1!6858 lt!400062) 0) (apply!2479 (tokens!1624 thiss!10527) 0)))))

(declare-fun b!1168137 () Bool)

(assert (=> b!1168137 (= e!748745 (isEmpty!7005 (_2!6858 lt!400062)))))

(declare-fun b!1168138 () Bool)

(assert (=> b!1168138 (= e!748746 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) 0)))))))))

(assert (= (and d!333988 res!527442) b!1168136))

(assert (= (and b!1168136 res!527443) b!1168137))

(assert (= (and d!333988 res!527441) b!1168138))

(assert (=> d!333988 m!1335511))

(declare-fun m!1340111 () Bool)

(assert (=> d!333988 m!1340111))

(declare-fun m!1340113 () Bool)

(assert (=> d!333988 m!1340113))

(declare-fun m!1340115 () Bool)

(assert (=> d!333988 m!1340115))

(declare-fun m!1340117 () Bool)

(assert (=> d!333988 m!1340117))

(declare-fun m!1340119 () Bool)

(assert (=> d!333988 m!1340119))

(declare-fun m!1340121 () Bool)

(assert (=> d!333988 m!1340121))

(assert (=> d!333988 m!1340117))

(assert (=> d!333988 m!1340111))

(assert (=> d!333988 m!1335341))

(assert (=> d!333988 m!1340117))

(declare-fun m!1340123 () Bool)

(assert (=> b!1168136 m!1340123))

(declare-fun m!1340125 () Bool)

(assert (=> b!1168137 m!1340125))

(assert (=> b!1168138 m!1335341))

(assert (=> b!1168138 m!1340117))

(assert (=> b!1168138 m!1340117))

(assert (=> b!1168138 m!1340111))

(assert (=> b!1168138 m!1340111))

(assert (=> b!1168138 m!1340113))

(declare-fun m!1340127 () Bool)

(assert (=> b!1168138 m!1340127))

(assert (=> b!1165964 d!333988))

(declare-fun d!333990 () Bool)

(declare-fun lt!400065 () Bool)

(declare-fun e!748748 () Bool)

(assert (=> d!333990 (= lt!400065 e!748748)))

(declare-fun res!527444 () Bool)

(assert (=> d!333990 (=> (not res!527444) (not e!748748))))

(assert (=> d!333990 (= res!527444 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398777))))) (list!4239 (singletonSeq!668 lt!398777))))))

(declare-fun e!748747 () Bool)

(assert (=> d!333990 (= lt!400065 e!748747)))

(declare-fun res!527445 () Bool)

(assert (=> d!333990 (=> (not res!527445) (not e!748747))))

(declare-fun lt!400064 () tuple2!12022)

(assert (=> d!333990 (= res!527445 (= (size!9067 (_1!6858 lt!400064)) 1))))

(assert (=> d!333990 (= lt!400064 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398777))))))

(assert (=> d!333990 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!333990 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398777) lt!400065)))

(declare-fun b!1168139 () Bool)

(declare-fun res!527446 () Bool)

(assert (=> b!1168139 (=> (not res!527446) (not e!748747))))

(assert (=> b!1168139 (= res!527446 (= (apply!2479 (_1!6858 lt!400064) 0) lt!398777))))

(declare-fun b!1168140 () Bool)

(assert (=> b!1168140 (= e!748747 (isEmpty!7005 (_2!6858 lt!400064)))))

(declare-fun b!1168141 () Bool)

(assert (=> b!1168141 (= e!748748 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398777))))))))

(assert (= (and d!333990 res!527445) b!1168139))

(assert (= (and b!1168139 res!527446) b!1168140))

(assert (= (and d!333990 res!527444) b!1168141))

(assert (=> d!333990 m!1335511))

(declare-fun m!1340129 () Bool)

(assert (=> d!333990 m!1340129))

(declare-fun m!1340131 () Bool)

(assert (=> d!333990 m!1340131))

(declare-fun m!1340133 () Bool)

(assert (=> d!333990 m!1340133))

(declare-fun m!1340135 () Bool)

(assert (=> d!333990 m!1340135))

(declare-fun m!1340137 () Bool)

(assert (=> d!333990 m!1340137))

(declare-fun m!1340139 () Bool)

(assert (=> d!333990 m!1340139))

(assert (=> d!333990 m!1340135))

(assert (=> d!333990 m!1340129))

(assert (=> d!333990 m!1340135))

(declare-fun m!1340141 () Bool)

(assert (=> b!1168139 m!1340141))

(declare-fun m!1340143 () Bool)

(assert (=> b!1168140 m!1340143))

(assert (=> b!1168141 m!1340135))

(assert (=> b!1168141 m!1340135))

(assert (=> b!1168141 m!1340129))

(assert (=> b!1168141 m!1340129))

(assert (=> b!1168141 m!1340131))

(declare-fun m!1340145 () Bool)

(assert (=> b!1168141 m!1340145))

(assert (=> b!1165964 d!333990))

(declare-fun d!333992 () Bool)

(assert (=> d!333992 (= (tail!1686 (drop!482 lt!398796 0)) (drop!482 lt!398796 (+ 0 1)))))

(declare-fun lt!400066 () Unit!17605)

(assert (=> d!333992 (= lt!400066 (choose!7531 lt!398796 0))))

(declare-fun e!748749 () Bool)

(assert (=> d!333992 e!748749))

(declare-fun res!527447 () Bool)

(assert (=> d!333992 (=> (not res!527447) (not e!748749))))

(assert (=> d!333992 (= res!527447 (>= 0 0))))

(assert (=> d!333992 (= (lemmaDropTail!359 lt!398796 0) lt!400066)))

(declare-fun b!1168142 () Bool)

(assert (=> b!1168142 (= e!748749 (< 0 (size!9071 lt!398796)))))

(assert (= (and d!333992 res!527447) b!1168142))

(assert (=> d!333992 m!1335623))

(assert (=> d!333992 m!1335623))

(assert (=> d!333992 m!1335625))

(assert (=> d!333992 m!1335653))

(declare-fun m!1340147 () Bool)

(assert (=> d!333992 m!1340147))

(assert (=> b!1168142 m!1340065))

(assert (=> b!1165964 d!333992))

(declare-fun d!333994 () Bool)

(declare-fun lt!400067 () BalanceConc!7574)

(assert (=> d!333994 (= (list!4243 lt!400067) (originalCharacters!2561 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))))

(assert (=> d!333994 (= lt!400067 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))) (value!65196 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)))))))

(assert (=> d!333994 (= (charsOf!1068 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))) lt!400067)))

(declare-fun b_lambda!34885 () Bool)

(assert (=> (not b_lambda!34885) (not d!333994)))

(declare-fun t!110438 () Bool)

(declare-fun tb!65899 () Bool)

(assert (=> (and b!1166515 (= (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)))))) t!110438) tb!65899))

(declare-fun b!1168143 () Bool)

(declare-fun e!748750 () Bool)

(declare-fun tp!334331 () Bool)

(assert (=> b!1168143 (= e!748750 (and (inv!15175 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))) (value!65196 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)))))) tp!334331))))

(declare-fun result!78870 () Bool)

(assert (=> tb!65899 (= result!78870 (and (inv!15176 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))) (value!65196 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))) e!748750))))

(assert (= tb!65899 b!1168143))

(declare-fun m!1340149 () Bool)

(assert (=> b!1168143 m!1340149))

(declare-fun m!1340151 () Bool)

(assert (=> tb!65899 m!1340151))

(assert (=> d!333994 t!110438))

(declare-fun b_and!80699 () Bool)

(assert (= b_and!80687 (and (=> t!110438 result!78870) b_and!80699)))

(declare-fun m!1340153 () Bool)

(assert (=> d!333994 m!1340153))

(declare-fun m!1340155 () Bool)

(assert (=> d!333994 m!1340155))

(assert (=> b!1165964 d!333994))

(declare-fun d!333996 () Bool)

(assert (=> d!333996 (= (head!2102 (drop!482 lt!398774 0)) (apply!2480 lt!398774 0))))

(declare-fun lt!400068 () Unit!17605)

(assert (=> d!333996 (= lt!400068 (choose!7528 lt!398774 0))))

(declare-fun e!748751 () Bool)

(assert (=> d!333996 e!748751))

(declare-fun res!527448 () Bool)

(assert (=> d!333996 (=> (not res!527448) (not e!748751))))

(assert (=> d!333996 (= res!527448 (>= 0 0))))

(assert (=> d!333996 (= (lemmaDropApply!371 lt!398774 0) lt!400068)))

(declare-fun b!1168144 () Bool)

(assert (=> b!1168144 (= e!748751 (< 0 (size!9071 lt!398774)))))

(assert (= (and d!333996 res!527448) b!1168144))

(assert (=> d!333996 m!1335629))

(assert (=> d!333996 m!1335629))

(assert (=> d!333996 m!1335631))

(assert (=> d!333996 m!1335615))

(declare-fun m!1340157 () Bool)

(assert (=> d!333996 m!1340157))

(assert (=> b!1168144 m!1340103))

(assert (=> b!1165964 d!333996))

(declare-fun b!1168145 () Bool)

(declare-fun e!748755 () Int)

(declare-fun call!82249 () Int)

(assert (=> b!1168145 (= e!748755 call!82249)))

(declare-fun b!1168146 () Bool)

(declare-fun e!748754 () List!11543)

(declare-fun e!748752 () List!11543)

(assert (=> b!1168146 (= e!748754 e!748752)))

(declare-fun c!195065 () Bool)

(assert (=> b!1168146 (= c!195065 (<= (+ 0 1) 0))))

(declare-fun b!1168147 () Bool)

(declare-fun e!748756 () Int)

(assert (=> b!1168147 (= e!748755 e!748756)))

(declare-fun c!195062 () Bool)

(assert (=> b!1168147 (= c!195062 (>= (+ 0 1) call!82249))))

(declare-fun b!1168148 () Bool)

(declare-fun e!748753 () Bool)

(declare-fun lt!400069 () List!11543)

(assert (=> b!1168148 (= e!748753 (= (size!9071 lt!400069) e!748755))))

(declare-fun c!195063 () Bool)

(assert (=> b!1168148 (= c!195063 (<= (+ 0 1) 0))))

(declare-fun b!1168149 () Bool)

(assert (=> b!1168149 (= e!748754 Nil!11519)))

(declare-fun b!1168150 () Bool)

(assert (=> b!1168150 (= e!748756 (- call!82249 (+ 0 1)))))

(declare-fun b!1168151 () Bool)

(assert (=> b!1168151 (= e!748752 lt!398796)))

(declare-fun b!1168153 () Bool)

(assert (=> b!1168153 (= e!748752 (drop!482 (t!110333 lt!398796) (- (+ 0 1) 1)))))

(declare-fun bm!82244 () Bool)

(assert (=> bm!82244 (= call!82249 (size!9071 lt!398796))))

(declare-fun d!333998 () Bool)

(assert (=> d!333998 e!748753))

(declare-fun res!527449 () Bool)

(assert (=> d!333998 (=> (not res!527449) (not e!748753))))

(assert (=> d!333998 (= res!527449 (= ((_ map implies) (content!1608 lt!400069) (content!1608 lt!398796)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!333998 (= lt!400069 e!748754)))

(declare-fun c!195064 () Bool)

(assert (=> d!333998 (= c!195064 ((_ is Nil!11519) lt!398796))))

(assert (=> d!333998 (= (drop!482 lt!398796 (+ 0 1)) lt!400069)))

(declare-fun b!1168152 () Bool)

(assert (=> b!1168152 (= e!748756 0)))

(assert (= (and d!333998 c!195064) b!1168149))

(assert (= (and d!333998 (not c!195064)) b!1168146))

(assert (= (and b!1168146 c!195065) b!1168151))

(assert (= (and b!1168146 (not c!195065)) b!1168153))

(assert (= (and d!333998 res!527449) b!1168148))

(assert (= (and b!1168148 c!195063) b!1168145))

(assert (= (and b!1168148 (not c!195063)) b!1168147))

(assert (= (and b!1168147 c!195062) b!1168152))

(assert (= (and b!1168147 (not c!195062)) b!1168150))

(assert (= (or b!1168145 b!1168147 b!1168150) bm!82244))

(declare-fun m!1340159 () Bool)

(assert (=> b!1168148 m!1340159))

(declare-fun m!1340161 () Bool)

(assert (=> b!1168153 m!1340161))

(assert (=> bm!82244 m!1340065))

(declare-fun m!1340163 () Bool)

(assert (=> d!333998 m!1340163))

(assert (=> d!333998 m!1340069))

(assert (=> b!1165964 d!333998))

(declare-fun b!1168154 () Bool)

(declare-fun e!748760 () Int)

(declare-fun call!82250 () Int)

(assert (=> b!1168154 (= e!748760 call!82250)))

(declare-fun b!1168155 () Bool)

(declare-fun e!748759 () List!11543)

(declare-fun e!748757 () List!11543)

(assert (=> b!1168155 (= e!748759 e!748757)))

(declare-fun c!195069 () Bool)

(assert (=> b!1168155 (= c!195069 (<= 0 0))))

(declare-fun b!1168156 () Bool)

(declare-fun e!748761 () Int)

(assert (=> b!1168156 (= e!748760 e!748761)))

(declare-fun c!195066 () Bool)

(assert (=> b!1168156 (= c!195066 (>= 0 call!82250))))

(declare-fun b!1168157 () Bool)

(declare-fun e!748758 () Bool)

(declare-fun lt!400070 () List!11543)

(assert (=> b!1168157 (= e!748758 (= (size!9071 lt!400070) e!748760))))

(declare-fun c!195067 () Bool)

(assert (=> b!1168157 (= c!195067 (<= 0 0))))

(declare-fun b!1168158 () Bool)

(assert (=> b!1168158 (= e!748759 Nil!11519)))

(declare-fun b!1168159 () Bool)

(assert (=> b!1168159 (= e!748761 (- call!82250 0))))

(declare-fun b!1168160 () Bool)

(assert (=> b!1168160 (= e!748757 lt!398774)))

(declare-fun b!1168162 () Bool)

(assert (=> b!1168162 (= e!748757 (drop!482 (t!110333 lt!398774) (- 0 1)))))

(declare-fun bm!82245 () Bool)

(assert (=> bm!82245 (= call!82250 (size!9071 lt!398774))))

(declare-fun d!334000 () Bool)

(assert (=> d!334000 e!748758))

(declare-fun res!527450 () Bool)

(assert (=> d!334000 (=> (not res!527450) (not e!748758))))

(assert (=> d!334000 (= res!527450 (= ((_ map implies) (content!1608 lt!400070) (content!1608 lt!398774)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334000 (= lt!400070 e!748759)))

(declare-fun c!195068 () Bool)

(assert (=> d!334000 (= c!195068 ((_ is Nil!11519) lt!398774))))

(assert (=> d!334000 (= (drop!482 lt!398774 0) lt!400070)))

(declare-fun b!1168161 () Bool)

(assert (=> b!1168161 (= e!748761 0)))

(assert (= (and d!334000 c!195068) b!1168158))

(assert (= (and d!334000 (not c!195068)) b!1168155))

(assert (= (and b!1168155 c!195069) b!1168160))

(assert (= (and b!1168155 (not c!195069)) b!1168162))

(assert (= (and d!334000 res!527450) b!1168157))

(assert (= (and b!1168157 c!195067) b!1168154))

(assert (= (and b!1168157 (not c!195067)) b!1168156))

(assert (= (and b!1168156 c!195066) b!1168161))

(assert (= (and b!1168156 (not c!195066)) b!1168159))

(assert (= (or b!1168154 b!1168156 b!1168159) bm!82245))

(declare-fun m!1340165 () Bool)

(assert (=> b!1168157 m!1340165))

(declare-fun m!1340167 () Bool)

(assert (=> b!1168162 m!1340167))

(assert (=> bm!82245 m!1340103))

(declare-fun m!1340169 () Bool)

(assert (=> d!334000 m!1340169))

(declare-fun m!1340171 () Bool)

(assert (=> d!334000 m!1340171))

(assert (=> b!1165964 d!334000))

(declare-fun b!1168163 () Bool)

(declare-fun e!748765 () Int)

(declare-fun call!82251 () Int)

(assert (=> b!1168163 (= e!748765 call!82251)))

(declare-fun b!1168164 () Bool)

(declare-fun e!748764 () List!11543)

(declare-fun e!748762 () List!11543)

(assert (=> b!1168164 (= e!748764 e!748762)))

(declare-fun c!195073 () Bool)

(assert (=> b!1168164 (= c!195073 (<= lt!398776 0))))

(declare-fun b!1168165 () Bool)

(declare-fun e!748766 () Int)

(assert (=> b!1168165 (= e!748765 e!748766)))

(declare-fun c!195070 () Bool)

(assert (=> b!1168165 (= c!195070 (>= lt!398776 call!82251))))

(declare-fun b!1168166 () Bool)

(declare-fun e!748763 () Bool)

(declare-fun lt!400071 () List!11543)

(assert (=> b!1168166 (= e!748763 (= (size!9071 lt!400071) e!748765))))

(declare-fun c!195071 () Bool)

(assert (=> b!1168166 (= c!195071 (<= lt!398776 0))))

(declare-fun b!1168167 () Bool)

(assert (=> b!1168167 (= e!748764 Nil!11519)))

(declare-fun b!1168168 () Bool)

(assert (=> b!1168168 (= e!748766 (- call!82251 lt!398776))))

(declare-fun b!1168169 () Bool)

(assert (=> b!1168169 (= e!748762 lt!398780)))

(declare-fun b!1168171 () Bool)

(assert (=> b!1168171 (= e!748762 (drop!482 (t!110333 lt!398780) (- lt!398776 1)))))

(declare-fun bm!82246 () Bool)

(assert (=> bm!82246 (= call!82251 (size!9071 lt!398780))))

(declare-fun d!334002 () Bool)

(assert (=> d!334002 e!748763))

(declare-fun res!527451 () Bool)

(assert (=> d!334002 (=> (not res!527451) (not e!748763))))

(assert (=> d!334002 (= res!527451 (= ((_ map implies) (content!1608 lt!400071) (content!1608 lt!398780)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334002 (= lt!400071 e!748764)))

(declare-fun c!195072 () Bool)

(assert (=> d!334002 (= c!195072 ((_ is Nil!11519) lt!398780))))

(assert (=> d!334002 (= (drop!482 lt!398780 lt!398776) lt!400071)))

(declare-fun b!1168170 () Bool)

(assert (=> b!1168170 (= e!748766 0)))

(assert (= (and d!334002 c!195072) b!1168167))

(assert (= (and d!334002 (not c!195072)) b!1168164))

(assert (= (and b!1168164 c!195073) b!1168169))

(assert (= (and b!1168164 (not c!195073)) b!1168171))

(assert (= (and d!334002 res!527451) b!1168166))

(assert (= (and b!1168166 c!195071) b!1168163))

(assert (= (and b!1168166 (not c!195071)) b!1168165))

(assert (= (and b!1168165 c!195070) b!1168170))

(assert (= (and b!1168165 (not c!195070)) b!1168168))

(assert (= (or b!1168163 b!1168165 b!1168168) bm!82246))

(declare-fun m!1340173 () Bool)

(assert (=> b!1168166 m!1340173))

(declare-fun m!1340175 () Bool)

(assert (=> b!1168171 m!1340175))

(assert (=> bm!82246 m!1340073))

(declare-fun m!1340177 () Bool)

(assert (=> d!334002 m!1340177))

(declare-fun m!1340179 () Bool)

(assert (=> d!334002 m!1340179))

(assert (=> b!1165964 d!334002))

(declare-fun b!1168172 () Bool)

(declare-fun e!748770 () Int)

(declare-fun call!82252 () Int)

(assert (=> b!1168172 (= e!748770 call!82252)))

(declare-fun b!1168173 () Bool)

(declare-fun e!748769 () List!11543)

(declare-fun e!748767 () List!11543)

(assert (=> b!1168173 (= e!748769 e!748767)))

(declare-fun c!195077 () Bool)

(assert (=> b!1168173 (= c!195077 (<= (+ lt!398776 1) 0))))

(declare-fun b!1168174 () Bool)

(declare-fun e!748771 () Int)

(assert (=> b!1168174 (= e!748770 e!748771)))

(declare-fun c!195074 () Bool)

(assert (=> b!1168174 (= c!195074 (>= (+ lt!398776 1) call!82252))))

(declare-fun b!1168175 () Bool)

(declare-fun e!748768 () Bool)

(declare-fun lt!400072 () List!11543)

(assert (=> b!1168175 (= e!748768 (= (size!9071 lt!400072) e!748770))))

(declare-fun c!195075 () Bool)

(assert (=> b!1168175 (= c!195075 (<= (+ lt!398776 1) 0))))

(declare-fun b!1168176 () Bool)

(assert (=> b!1168176 (= e!748769 Nil!11519)))

(declare-fun b!1168177 () Bool)

(assert (=> b!1168177 (= e!748771 (- call!82252 (+ lt!398776 1)))))

(declare-fun b!1168178 () Bool)

(assert (=> b!1168178 (= e!748767 lt!398780)))

(declare-fun b!1168180 () Bool)

(assert (=> b!1168180 (= e!748767 (drop!482 (t!110333 lt!398780) (- (+ lt!398776 1) 1)))))

(declare-fun bm!82247 () Bool)

(assert (=> bm!82247 (= call!82252 (size!9071 lt!398780))))

(declare-fun d!334004 () Bool)

(assert (=> d!334004 e!748768))

(declare-fun res!527452 () Bool)

(assert (=> d!334004 (=> (not res!527452) (not e!748768))))

(assert (=> d!334004 (= res!527452 (= ((_ map implies) (content!1608 lt!400072) (content!1608 lt!398780)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334004 (= lt!400072 e!748769)))

(declare-fun c!195076 () Bool)

(assert (=> d!334004 (= c!195076 ((_ is Nil!11519) lt!398780))))

(assert (=> d!334004 (= (drop!482 lt!398780 (+ lt!398776 1)) lt!400072)))

(declare-fun b!1168179 () Bool)

(assert (=> b!1168179 (= e!748771 0)))

(assert (= (and d!334004 c!195076) b!1168176))

(assert (= (and d!334004 (not c!195076)) b!1168173))

(assert (= (and b!1168173 c!195077) b!1168178))

(assert (= (and b!1168173 (not c!195077)) b!1168180))

(assert (= (and d!334004 res!527452) b!1168175))

(assert (= (and b!1168175 c!195075) b!1168172))

(assert (= (and b!1168175 (not c!195075)) b!1168174))

(assert (= (and b!1168174 c!195074) b!1168179))

(assert (= (and b!1168174 (not c!195074)) b!1168177))

(assert (= (or b!1168172 b!1168174 b!1168177) bm!82247))

(declare-fun m!1340181 () Bool)

(assert (=> b!1168175 m!1340181))

(declare-fun m!1340183 () Bool)

(assert (=> b!1168180 m!1340183))

(assert (=> bm!82247 m!1340073))

(declare-fun m!1340185 () Bool)

(assert (=> d!334004 m!1340185))

(assert (=> d!334004 m!1340179))

(assert (=> b!1165964 d!334004))

(declare-fun d!334006 () Bool)

(assert (=> d!334006 (= (head!2102 (drop!482 lt!398774 0)) (h!16920 (drop!482 lt!398774 0)))))

(assert (=> b!1165964 d!334006))

(declare-fun d!334008 () Bool)

(assert (=> d!334008 (= (head!2102 (drop!482 lt!398798 lt!398801)) (apply!2480 lt!398798 lt!398801))))

(declare-fun lt!400073 () Unit!17605)

(assert (=> d!334008 (= lt!400073 (choose!7528 lt!398798 lt!398801))))

(declare-fun e!748772 () Bool)

(assert (=> d!334008 e!748772))

(declare-fun res!527453 () Bool)

(assert (=> d!334008 (=> (not res!527453) (not e!748772))))

(assert (=> d!334008 (= res!527453 (>= lt!398801 0))))

(assert (=> d!334008 (= (lemmaDropApply!371 lt!398798 lt!398801) lt!400073)))

(declare-fun b!1168181 () Bool)

(assert (=> b!1168181 (= e!748772 (< lt!398801 (size!9071 lt!398798)))))

(assert (= (and d!334008 res!527453) b!1168181))

(assert (=> d!334008 m!1335633))

(assert (=> d!334008 m!1335633))

(assert (=> d!334008 m!1335643))

(assert (=> d!334008 m!1335655))

(declare-fun m!1340187 () Bool)

(assert (=> d!334008 m!1340187))

(assert (=> b!1168181 m!1340053))

(assert (=> b!1165964 d!334008))

(declare-fun d!334010 () Bool)

(declare-fun lt!400075 () Bool)

(declare-fun e!748774 () Bool)

(assert (=> d!334010 (= lt!400075 e!748774)))

(declare-fun res!527454 () Bool)

(assert (=> d!334010 (=> (not res!527454) (not e!748774))))

(assert (=> d!334010 (= res!527454 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))))) (list!4239 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))))))

(declare-fun e!748773 () Bool)

(assert (=> d!334010 (= lt!400075 e!748773)))

(declare-fun res!527455 () Bool)

(assert (=> d!334010 (=> (not res!527455) (not e!748773))))

(declare-fun lt!400074 () tuple2!12022)

(assert (=> d!334010 (= res!527455 (= (size!9067 (_1!6858 lt!400074)) 1))))

(assert (=> d!334010 (= lt!400074 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))))))

(assert (=> d!334010 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334010 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))) lt!400075)))

(declare-fun b!1168182 () Bool)

(declare-fun res!527456 () Bool)

(assert (=> b!1168182 (=> (not res!527456) (not e!748773))))

(assert (=> b!1168182 (= res!527456 (= (apply!2479 (_1!6858 lt!400074) 0) (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))))

(declare-fun b!1168183 () Bool)

(assert (=> b!1168183 (= e!748773 (isEmpty!7005 (_2!6858 lt!400074)))))

(declare-fun b!1168184 () Bool)

(assert (=> b!1168184 (= e!748774 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1))))))))))

(assert (= (and d!334010 res!527455) b!1168182))

(assert (= (and b!1168182 res!527456) b!1168183))

(assert (= (and d!334010 res!527454) b!1168184))

(assert (=> d!334010 m!1335511))

(declare-fun m!1340189 () Bool)

(assert (=> d!334010 m!1340189))

(declare-fun m!1340191 () Bool)

(assert (=> d!334010 m!1340191))

(declare-fun m!1340193 () Bool)

(assert (=> d!334010 m!1340193))

(declare-fun m!1340195 () Bool)

(assert (=> d!334010 m!1340195))

(declare-fun m!1340197 () Bool)

(assert (=> d!334010 m!1340197))

(declare-fun m!1340199 () Bool)

(assert (=> d!334010 m!1340199))

(assert (=> d!334010 m!1340195))

(assert (=> d!334010 m!1340189))

(assert (=> d!334010 m!1335645))

(assert (=> d!334010 m!1340195))

(declare-fun m!1340201 () Bool)

(assert (=> b!1168182 m!1340201))

(declare-fun m!1340203 () Bool)

(assert (=> b!1168183 m!1340203))

(assert (=> b!1168184 m!1335645))

(assert (=> b!1168184 m!1340195))

(assert (=> b!1168184 m!1340195))

(assert (=> b!1168184 m!1340189))

(assert (=> b!1168184 m!1340189))

(assert (=> b!1168184 m!1340191))

(declare-fun m!1340205 () Bool)

(assert (=> b!1168184 m!1340205))

(assert (=> b!1165964 d!334010))

(declare-fun d!334012 () Bool)

(assert (=> d!334012 (= (head!2102 (drop!482 lt!398798 lt!398801)) (h!16920 (drop!482 lt!398798 lt!398801)))))

(assert (=> b!1165964 d!334012))

(declare-fun d!334014 () Bool)

(assert (=> d!334014 (= (tail!1686 (drop!482 lt!398620 1)) (t!110333 (drop!482 lt!398620 1)))))

(assert (=> d!332910 d!334014))

(assert (=> d!332910 d!332916))

(declare-fun b!1168185 () Bool)

(declare-fun e!748778 () Int)

(declare-fun call!82253 () Int)

(assert (=> b!1168185 (= e!748778 call!82253)))

(declare-fun b!1168186 () Bool)

(declare-fun e!748777 () List!11543)

(declare-fun e!748775 () List!11543)

(assert (=> b!1168186 (= e!748777 e!748775)))

(declare-fun c!195081 () Bool)

(assert (=> b!1168186 (= c!195081 (<= (+ 1 1) 0))))

(declare-fun b!1168187 () Bool)

(declare-fun e!748779 () Int)

(assert (=> b!1168187 (= e!748778 e!748779)))

(declare-fun c!195078 () Bool)

(assert (=> b!1168187 (= c!195078 (>= (+ 1 1) call!82253))))

(declare-fun b!1168188 () Bool)

(declare-fun e!748776 () Bool)

(declare-fun lt!400076 () List!11543)

(assert (=> b!1168188 (= e!748776 (= (size!9071 lt!400076) e!748778))))

(declare-fun c!195079 () Bool)

(assert (=> b!1168188 (= c!195079 (<= (+ 1 1) 0))))

(declare-fun b!1168189 () Bool)

(assert (=> b!1168189 (= e!748777 Nil!11519)))

(declare-fun b!1168190 () Bool)

(assert (=> b!1168190 (= e!748779 (- call!82253 (+ 1 1)))))

(declare-fun b!1168191 () Bool)

(assert (=> b!1168191 (= e!748775 lt!398620)))

(declare-fun b!1168193 () Bool)

(assert (=> b!1168193 (= e!748775 (drop!482 (t!110333 lt!398620) (- (+ 1 1) 1)))))

(declare-fun bm!82248 () Bool)

(assert (=> bm!82248 (= call!82253 (size!9071 lt!398620))))

(declare-fun d!334016 () Bool)

(assert (=> d!334016 e!748776))

(declare-fun res!527457 () Bool)

(assert (=> d!334016 (=> (not res!527457) (not e!748776))))

(assert (=> d!334016 (= res!527457 (= ((_ map implies) (content!1608 lt!400076) (content!1608 lt!398620)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334016 (= lt!400076 e!748777)))

(declare-fun c!195080 () Bool)

(assert (=> d!334016 (= c!195080 ((_ is Nil!11519) lt!398620))))

(assert (=> d!334016 (= (drop!482 lt!398620 (+ 1 1)) lt!400076)))

(declare-fun b!1168192 () Bool)

(assert (=> b!1168192 (= e!748779 0)))

(assert (= (and d!334016 c!195080) b!1168189))

(assert (= (and d!334016 (not c!195080)) b!1168186))

(assert (= (and b!1168186 c!195081) b!1168191))

(assert (= (and b!1168186 (not c!195081)) b!1168193))

(assert (= (and d!334016 res!527457) b!1168188))

(assert (= (and b!1168188 c!195079) b!1168185))

(assert (= (and b!1168188 (not c!195079)) b!1168187))

(assert (= (and b!1168187 c!195078) b!1168192))

(assert (= (and b!1168187 (not c!195078)) b!1168190))

(assert (= (or b!1168185 b!1168187 b!1168190) bm!82248))

(declare-fun m!1340207 () Bool)

(assert (=> b!1168188 m!1340207))

(declare-fun m!1340209 () Bool)

(assert (=> b!1168193 m!1340209))

(assert (=> bm!82248 m!1335451))

(declare-fun m!1340211 () Bool)

(assert (=> d!334016 m!1340211))

(assert (=> d!334016 m!1336477))

(assert (=> d!332910 d!334016))

(declare-fun d!334018 () Bool)

(assert (=> d!334018 (= (tail!1686 (drop!482 lt!398620 1)) (drop!482 lt!398620 (+ 1 1)))))

(assert (=> d!334018 true))

(declare-fun _$28!425 () Unit!17605)

(assert (=> d!334018 (= (choose!7531 lt!398620 1) _$28!425)))

(declare-fun bs!285150 () Bool)

(assert (= bs!285150 d!334018))

(assert (=> bs!285150 m!1335305))

(assert (=> bs!285150 m!1335305))

(assert (=> bs!285150 m!1336631))

(assert (=> bs!285150 m!1336633))

(assert (=> d!332910 d!334018))

(assert (=> d!332678 d!332740))

(declare-fun d!334020 () Bool)

(assert (=> d!334020 (= (dropList!317 (tokens!1624 thiss!10527) 0) (drop!482 (list!4242 (c!194629 (tokens!1624 thiss!10527))) 0))))

(declare-fun bs!285151 () Bool)

(assert (= bs!285151 d!334020))

(assert (=> bs!285151 m!1335745))

(assert (=> bs!285151 m!1335745))

(declare-fun m!1340213 () Bool)

(assert (=> bs!285151 m!1340213))

(assert (=> d!332678 d!334020))

(declare-fun d!334022 () Bool)

(declare-fun res!527458 () Bool)

(declare-fun e!748780 () Bool)

(assert (=> d!334022 (=> res!527458 e!748780)))

(assert (=> d!334022 (= res!527458 (or (not ((_ is Cons!11519) (dropList!317 (tokens!1624 thiss!10527) 0))) (not ((_ is Cons!11519) (t!110333 (dropList!317 (tokens!1624 thiss!10527) 0))))))))

(assert (=> d!334022 (= (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (dropList!317 (tokens!1624 thiss!10527) 0) (rules!9572 thiss!10527)) e!748780)))

(declare-fun b!1168194 () Bool)

(declare-fun e!748781 () Bool)

(assert (=> b!1168194 (= e!748780 e!748781)))

(declare-fun res!527459 () Bool)

(assert (=> b!1168194 (=> (not res!527459) (not e!748781))))

(assert (=> b!1168194 (= res!527459 (separableTokensPredicate!130 Lexer!1700 (h!16920 (dropList!317 (tokens!1624 thiss!10527) 0)) (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 0))) (rules!9572 thiss!10527)))))

(declare-fun lt!400081 () Unit!17605)

(declare-fun Unit!17682 () Unit!17605)

(assert (=> b!1168194 (= lt!400081 Unit!17682)))

(assert (=> b!1168194 (> (size!9066 (charsOf!1068 (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 0))))) 0)))

(declare-fun lt!400079 () Unit!17605)

(declare-fun Unit!17683 () Unit!17605)

(assert (=> b!1168194 (= lt!400079 Unit!17683)))

(assert (=> b!1168194 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 0))))))

(declare-fun lt!400083 () Unit!17605)

(declare-fun Unit!17684 () Unit!17605)

(assert (=> b!1168194 (= lt!400083 Unit!17684)))

(assert (=> b!1168194 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (dropList!317 (tokens!1624 thiss!10527) 0)))))

(declare-fun lt!400082 () Unit!17605)

(declare-fun lt!400078 () Unit!17605)

(assert (=> b!1168194 (= lt!400082 lt!400078)))

(assert (=> b!1168194 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 0))))))

(assert (=> b!1168194 (= lt!400078 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (dropList!317 (tokens!1624 thiss!10527) 0) (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 0)))))))

(declare-fun lt!400077 () Unit!17605)

(declare-fun lt!400080 () Unit!17605)

(assert (=> b!1168194 (= lt!400077 lt!400080)))

(assert (=> b!1168194 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (dropList!317 (tokens!1624 thiss!10527) 0)))))

(assert (=> b!1168194 (= lt!400080 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (dropList!317 (tokens!1624 thiss!10527) 0) (h!16920 (dropList!317 (tokens!1624 thiss!10527) 0))))))

(declare-fun b!1168195 () Bool)

(assert (=> b!1168195 (= e!748781 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (Cons!11519 (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 0))) (t!110333 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 0)))) (rules!9572 thiss!10527)))))

(assert (= (and d!334022 (not res!527458)) b!1168194))

(assert (= (and b!1168194 res!527459) b!1168195))

(declare-fun m!1340215 () Bool)

(assert (=> b!1168194 m!1340215))

(declare-fun m!1340217 () Bool)

(assert (=> b!1168194 m!1340217))

(declare-fun m!1340219 () Bool)

(assert (=> b!1168194 m!1340219))

(declare-fun m!1340221 () Bool)

(assert (=> b!1168194 m!1340221))

(declare-fun m!1340223 () Bool)

(assert (=> b!1168194 m!1340223))

(assert (=> b!1168194 m!1340217))

(assert (=> b!1168194 m!1335677))

(declare-fun m!1340225 () Bool)

(assert (=> b!1168194 m!1340225))

(assert (=> b!1168194 m!1335677))

(declare-fun m!1340227 () Bool)

(assert (=> b!1168194 m!1340227))

(declare-fun m!1340229 () Bool)

(assert (=> b!1168195 m!1340229))

(assert (=> d!332678 d!334022))

(declare-fun b!1168196 () Bool)

(declare-fun e!748785 () Int)

(declare-fun call!82254 () Int)

(assert (=> b!1168196 (= e!748785 call!82254)))

(declare-fun b!1168197 () Bool)

(declare-fun e!748784 () List!11543)

(declare-fun e!748782 () List!11543)

(assert (=> b!1168197 (= e!748784 e!748782)))

(declare-fun c!195085 () Bool)

(assert (=> b!1168197 (= c!195085 (<= 0 0))))

(declare-fun b!1168198 () Bool)

(declare-fun e!748786 () Int)

(assert (=> b!1168198 (= e!748785 e!748786)))

(declare-fun c!195082 () Bool)

(assert (=> b!1168198 (= c!195082 (>= 0 call!82254))))

(declare-fun b!1168199 () Bool)

(declare-fun e!748783 () Bool)

(declare-fun lt!400084 () List!11543)

(assert (=> b!1168199 (= e!748783 (= (size!9071 lt!400084) e!748785))))

(declare-fun c!195083 () Bool)

(assert (=> b!1168199 (= c!195083 (<= 0 0))))

(declare-fun b!1168200 () Bool)

(assert (=> b!1168200 (= e!748784 Nil!11519)))

(declare-fun b!1168201 () Bool)

(assert (=> b!1168201 (= e!748786 (- call!82254 0))))

(declare-fun b!1168202 () Bool)

(assert (=> b!1168202 (= e!748782 lt!398797)))

(declare-fun b!1168204 () Bool)

(assert (=> b!1168204 (= e!748782 (drop!482 (t!110333 lt!398797) (- 0 1)))))

(declare-fun bm!82249 () Bool)

(assert (=> bm!82249 (= call!82254 (size!9071 lt!398797))))

(declare-fun d!334024 () Bool)

(assert (=> d!334024 e!748783))

(declare-fun res!527460 () Bool)

(assert (=> d!334024 (=> (not res!527460) (not e!748783))))

(assert (=> d!334024 (= res!527460 (= ((_ map implies) (content!1608 lt!400084) (content!1608 lt!398797)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334024 (= lt!400084 e!748784)))

(declare-fun c!195084 () Bool)

(assert (=> d!334024 (= c!195084 ((_ is Nil!11519) lt!398797))))

(assert (=> d!334024 (= (drop!482 lt!398797 0) lt!400084)))

(declare-fun b!1168203 () Bool)

(assert (=> b!1168203 (= e!748786 0)))

(assert (= (and d!334024 c!195084) b!1168200))

(assert (= (and d!334024 (not c!195084)) b!1168197))

(assert (= (and b!1168197 c!195085) b!1168202))

(assert (= (and b!1168197 (not c!195085)) b!1168204))

(assert (= (and d!334024 res!527460) b!1168199))

(assert (= (and b!1168199 c!195083) b!1168196))

(assert (= (and b!1168199 (not c!195083)) b!1168198))

(assert (= (and b!1168198 c!195082) b!1168203))

(assert (= (and b!1168198 (not c!195082)) b!1168201))

(assert (= (or b!1168196 b!1168198 b!1168201) bm!82249))

(declare-fun m!1340231 () Bool)

(assert (=> b!1168199 m!1340231))

(declare-fun m!1340233 () Bool)

(assert (=> b!1168204 m!1340233))

(assert (=> bm!82249 m!1335669))

(declare-fun m!1340235 () Bool)

(assert (=> d!334024 m!1340235))

(declare-fun m!1340237 () Bool)

(assert (=> d!334024 m!1340237))

(assert (=> d!332678 d!334024))

(assert (=> d!332678 d!332924))

(declare-fun d!334026 () Bool)

(assert (=> d!334026 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398784)))

(declare-fun lt!400087 () Unit!17605)

(declare-fun choose!7532 (LexerInterface!1702 List!11544 List!11543 List!11543) Unit!17605)

(assert (=> d!334026 (= lt!400087 (choose!7532 Lexer!1700 (rules!9572 thiss!10527) lt!398794 lt!398784))))

(assert (=> d!334026 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334026 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!27 Lexer!1700 (rules!9572 thiss!10527) lt!398794 lt!398784) lt!400087)))

(declare-fun bs!285152 () Bool)

(assert (= bs!285152 d!334026))

(assert (=> bs!285152 m!1335675))

(declare-fun m!1340239 () Bool)

(assert (=> bs!285152 m!1340239))

(assert (=> bs!285152 m!1335511))

(assert (=> d!332678 d!334026))

(declare-fun d!334028 () Bool)

(assert (=> d!334028 (subseq!259 (drop!482 lt!398797 0) lt!398797)))

(declare-fun lt!400090 () Unit!17605)

(declare-fun choose!7533 (List!11543 Int) Unit!17605)

(assert (=> d!334028 (= lt!400090 (choose!7533 lt!398797 0))))

(declare-fun e!748789 () Bool)

(assert (=> d!334028 e!748789))

(declare-fun res!527463 () Bool)

(assert (=> d!334028 (=> (not res!527463) (not e!748789))))

(assert (=> d!334028 (= res!527463 (>= 0 0))))

(assert (=> d!334028 (= (lemmaDropSubSeq!27 lt!398797 0) lt!400090)))

(declare-fun b!1168207 () Bool)

(assert (=> b!1168207 (= e!748789 (<= 0 (size!9071 lt!398797)))))

(assert (= (and d!334028 res!527463) b!1168207))

(assert (=> d!334028 m!1335671))

(assert (=> d!334028 m!1335671))

(assert (=> d!334028 m!1335673))

(declare-fun m!1340241 () Bool)

(assert (=> d!334028 m!1340241))

(assert (=> b!1168207 m!1335669))

(assert (=> d!332678 d!334028))

(declare-fun bs!285153 () Bool)

(declare-fun d!334030 () Bool)

(assert (= bs!285153 (and d!334030 d!333806)))

(declare-fun lambda!47948 () Int)

(assert (=> bs!285153 (= lambda!47948 lambda!47942)))

(declare-fun bs!285154 () Bool)

(assert (= bs!285154 (and d!334030 d!332714)))

(assert (=> bs!285154 (= lambda!47948 lambda!47877)))

(declare-fun bs!285155 () Bool)

(assert (= bs!285155 (and d!334030 d!333526)))

(assert (=> bs!285155 (= lambda!47948 lambda!47935)))

(declare-fun bs!285156 () Bool)

(assert (= bs!285156 (and d!334030 d!333808)))

(assert (=> bs!285156 (= lambda!47948 lambda!47947)))

(declare-fun bs!285157 () Bool)

(assert (= bs!285157 (and d!334030 d!332754)))

(assert (=> bs!285157 (= lambda!47948 lambda!47880)))

(declare-fun bs!285158 () Bool)

(assert (= bs!285158 (and d!334030 d!333536)))

(assert (=> bs!285158 (= lambda!47948 lambda!47936)))

(declare-fun bs!285159 () Bool)

(assert (= bs!285159 (and d!334030 d!332758)))

(assert (=> bs!285159 (= lambda!47948 lambda!47881)))

(declare-fun bs!285160 () Bool)

(assert (= bs!285160 (and d!334030 d!332712)))

(assert (=> bs!285160 (= lambda!47948 lambda!47872)))

(declare-fun bs!285161 () Bool)

(assert (= bs!285161 (and d!334030 d!333328)))

(assert (=> bs!285161 (= lambda!47948 lambda!47924)))

(declare-fun bs!285162 () Bool)

(assert (= bs!285162 (and d!334030 d!333484)))

(assert (=> bs!285162 (= lambda!47948 lambda!47930)))

(declare-fun bs!285163 () Bool)

(assert (= bs!285163 (and d!334030 d!332732)))

(assert (=> bs!285163 (= lambda!47948 lambda!47878)))

(declare-fun bs!285164 () Bool)

(assert (= bs!285164 (and d!334030 d!332856)))

(assert (=> bs!285164 (= lambda!47948 lambda!47902)))

(declare-fun bs!285165 () Bool)

(assert (= bs!285165 (and d!334030 d!333546)))

(assert (=> bs!285165 (= lambda!47948 lambda!47940)))

(declare-fun bs!285166 () Bool)

(assert (= bs!285166 (and d!334030 d!333076)))

(assert (=> bs!285166 (= lambda!47948 lambda!47907)))

(declare-fun bs!285167 () Bool)

(assert (= bs!285167 (and d!334030 b!1166241)))

(assert (=> bs!285167 (= lambda!47948 lambda!47890)))

(declare-fun bs!285168 () Bool)

(assert (= bs!285168 (and d!334030 d!332834)))

(assert (=> bs!285168 (= lambda!47948 lambda!47891)))

(declare-fun bs!285169 () Bool)

(assert (= bs!285169 (and d!334030 d!332868)))

(assert (=> bs!285169 (= lambda!47948 lambda!47903)))

(declare-fun bs!285170 () Bool)

(assert (= bs!285170 (and d!334030 b!1166281)))

(assert (=> bs!285170 (= lambda!47948 lambda!47898)))

(declare-fun bs!285171 () Bool)

(assert (= bs!285171 (and d!334030 d!333790)))

(assert (=> bs!285171 (= lambda!47948 lambda!47941)))

(declare-fun bs!285172 () Bool)

(assert (= bs!285172 (and d!334030 d!332796)))

(assert (=> bs!285172 (= lambda!47948 lambda!47883)))

(declare-fun bs!285173 () Bool)

(assert (= bs!285173 (and d!334030 b!1165777)))

(assert (=> bs!285173 (= lambda!47948 lambda!47859)))

(declare-fun bs!285174 () Bool)

(assert (= bs!285174 (and d!334030 d!332668)))

(assert (=> bs!285174 (= lambda!47948 lambda!47862)))

(declare-fun b!1168212 () Bool)

(declare-fun e!748794 () Bool)

(assert (=> b!1168212 (= e!748794 true)))

(declare-fun b!1168211 () Bool)

(declare-fun e!748793 () Bool)

(assert (=> b!1168211 (= e!748793 e!748794)))

(declare-fun b!1168210 () Bool)

(declare-fun e!748792 () Bool)

(assert (=> b!1168210 (= e!748792 e!748793)))

(assert (=> d!334030 e!748792))

(assert (= b!1168211 b!1168212))

(assert (= b!1168210 b!1168211))

(assert (= (and d!334030 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1168210))

(assert (=> b!1168212 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47948))))

(assert (=> b!1168212 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47948))))

(assert (=> d!334030 true))

(declare-fun lt!400091 () Bool)

(assert (=> d!334030 (= lt!400091 (forall!3024 lt!398784 lambda!47948))))

(declare-fun e!748790 () Bool)

(assert (=> d!334030 (= lt!400091 e!748790)))

(declare-fun res!527465 () Bool)

(assert (=> d!334030 (=> res!527465 e!748790)))

(assert (=> d!334030 (= res!527465 (not ((_ is Cons!11519) lt!398784)))))

(assert (=> d!334030 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334030 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398784) lt!400091)))

(declare-fun b!1168208 () Bool)

(declare-fun e!748791 () Bool)

(assert (=> b!1168208 (= e!748790 e!748791)))

(declare-fun res!527464 () Bool)

(assert (=> b!1168208 (=> (not res!527464) (not e!748791))))

(assert (=> b!1168208 (= res!527464 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398784)))))

(declare-fun b!1168209 () Bool)

(assert (=> b!1168209 (= e!748791 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398784)))))

(assert (= (and d!334030 (not res!527465)) b!1168208))

(assert (= (and b!1168208 res!527464) b!1168209))

(declare-fun m!1340243 () Bool)

(assert (=> d!334030 m!1340243))

(assert (=> d!334030 m!1335511))

(declare-fun m!1340245 () Bool)

(assert (=> b!1168208 m!1340245))

(declare-fun m!1340247 () Bool)

(assert (=> b!1168209 m!1340247))

(assert (=> d!332678 d!334030))

(declare-fun b!1168215 () Bool)

(declare-fun e!748798 () Bool)

(assert (=> b!1168215 (= e!748798 (subseq!259 (t!110333 (drop!482 lt!398797 0)) (t!110333 lt!398797)))))

(declare-fun b!1168216 () Bool)

(declare-fun e!748796 () Bool)

(assert (=> b!1168216 (= e!748796 (subseq!259 (drop!482 lt!398797 0) (t!110333 lt!398797)))))

(declare-fun b!1168214 () Bool)

(declare-fun e!748797 () Bool)

(assert (=> b!1168214 (= e!748797 e!748796)))

(declare-fun res!527468 () Bool)

(assert (=> b!1168214 (=> res!527468 e!748796)))

(assert (=> b!1168214 (= res!527468 e!748798)))

(declare-fun res!527469 () Bool)

(assert (=> b!1168214 (=> (not res!527469) (not e!748798))))

(assert (=> b!1168214 (= res!527469 (= (h!16920 (drop!482 lt!398797 0)) (h!16920 lt!398797)))))

(declare-fun b!1168213 () Bool)

(declare-fun e!748795 () Bool)

(assert (=> b!1168213 (= e!748795 e!748797)))

(declare-fun res!527466 () Bool)

(assert (=> b!1168213 (=> (not res!527466) (not e!748797))))

(assert (=> b!1168213 (= res!527466 ((_ is Cons!11519) lt!398797))))

(declare-fun d!334032 () Bool)

(declare-fun res!527467 () Bool)

(assert (=> d!334032 (=> res!527467 e!748795)))

(assert (=> d!334032 (= res!527467 ((_ is Nil!11519) (drop!482 lt!398797 0)))))

(assert (=> d!334032 (= (subseq!259 (drop!482 lt!398797 0) lt!398797) e!748795)))

(assert (= (and d!334032 (not res!527467)) b!1168213))

(assert (= (and b!1168213 res!527466) b!1168214))

(assert (= (and b!1168214 res!527469) b!1168215))

(assert (= (and b!1168214 (not res!527468)) b!1168216))

(declare-fun m!1340249 () Bool)

(assert (=> b!1168215 m!1340249))

(assert (=> b!1168216 m!1335671))

(declare-fun m!1340251 () Bool)

(assert (=> b!1168216 m!1340251))

(assert (=> d!332678 d!334032))

(assert (=> b!1166019 d!332924))

(declare-fun d!334034 () Bool)

(declare-fun lt!400092 () Int)

(assert (=> d!334034 (>= lt!400092 0)))

(declare-fun e!748799 () Int)

(assert (=> d!334034 (= lt!400092 e!748799)))

(declare-fun c!195086 () Bool)

(assert (=> d!334034 (= c!195086 ((_ is Nil!11519) lt!398858))))

(assert (=> d!334034 (= (size!9071 lt!398858) lt!400092)))

(declare-fun b!1168217 () Bool)

(assert (=> b!1168217 (= e!748799 0)))

(declare-fun b!1168218 () Bool)

(assert (=> b!1168218 (= e!748799 (+ 1 (size!9071 (t!110333 lt!398858))))))

(assert (= (and d!334034 c!195086) b!1168217))

(assert (= (and d!334034 (not c!195086)) b!1168218))

(declare-fun m!1340253 () Bool)

(assert (=> b!1168218 m!1340253))

(assert (=> b!1166017 d!334034))

(assert (=> d!332888 d!333758))

(assert (=> d!332888 d!333086))

(declare-fun d!334036 () Bool)

(declare-fun lt!400093 () Int)

(assert (=> d!334036 (= lt!400093 (size!9071 (list!4239 (_1!6858 lt!399229))))))

(assert (=> d!334036 (= lt!400093 (size!9075 (c!194629 (_1!6858 lt!399229))))))

(assert (=> d!334036 (= (size!9067 (_1!6858 lt!399229)) lt!400093)))

(declare-fun bs!285175 () Bool)

(assert (= bs!285175 d!334036))

(assert (=> bs!285175 m!1337805))

(assert (=> bs!285175 m!1337805))

(declare-fun m!1340255 () Bool)

(assert (=> bs!285175 m!1340255))

(declare-fun m!1340257 () Bool)

(assert (=> bs!285175 m!1340257))

(assert (=> d!332888 d!334036))

(declare-fun d!334038 () Bool)

(assert (=> d!334038 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398607))))) (list!4242 (c!194629 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398607)))))))))

(declare-fun bs!285176 () Bool)

(assert (= bs!285176 d!334038))

(declare-fun m!1340259 () Bool)

(assert (=> bs!285176 m!1340259))

(assert (=> d!332888 d!334038))

(declare-fun d!334040 () Bool)

(assert (=> d!334040 (= (list!4239 (singletonSeq!668 lt!398607)) (list!4242 (c!194629 (singletonSeq!668 lt!398607))))))

(declare-fun bs!285177 () Bool)

(assert (= bs!285177 d!334040))

(declare-fun m!1340261 () Bool)

(assert (=> bs!285177 m!1340261))

(assert (=> d!332888 d!334040))

(assert (=> d!332888 d!333760))

(assert (=> d!332888 d!333762))

(declare-fun d!334042 () Bool)

(declare-fun lt!400094 () Bool)

(assert (=> d!334042 (= lt!400094 (select (content!1608 lt!398620) lt!399239))))

(declare-fun e!748801 () Bool)

(assert (=> d!334042 (= lt!400094 e!748801)))

(declare-fun res!527471 () Bool)

(assert (=> d!334042 (=> (not res!527471) (not e!748801))))

(assert (=> d!334042 (= res!527471 ((_ is Cons!11519) lt!398620))))

(assert (=> d!334042 (= (contains!1994 lt!398620 lt!399239) lt!400094)))

(declare-fun b!1168219 () Bool)

(declare-fun e!748800 () Bool)

(assert (=> b!1168219 (= e!748801 e!748800)))

(declare-fun res!527470 () Bool)

(assert (=> b!1168219 (=> res!527470 e!748800)))

(assert (=> b!1168219 (= res!527470 (= (h!16920 lt!398620) lt!399239))))

(declare-fun b!1168220 () Bool)

(assert (=> b!1168220 (= e!748800 (contains!1994 (t!110333 lt!398620) lt!399239))))

(assert (= (and d!334042 res!527471) b!1168219))

(assert (= (and b!1168219 (not res!527470)) b!1168220))

(assert (=> d!334042 m!1336477))

(declare-fun m!1340263 () Bool)

(assert (=> d!334042 m!1340263))

(declare-fun m!1340265 () Bool)

(assert (=> b!1168220 m!1340265))

(assert (=> d!332896 d!334042))

(declare-fun bs!285178 () Bool)

(declare-fun d!334044 () Bool)

(assert (= bs!285178 (and d!334044 d!333806)))

(declare-fun lambda!47949 () Int)

(assert (=> bs!285178 (= lambda!47949 lambda!47942)))

(declare-fun bs!285179 () Bool)

(assert (= bs!285179 (and d!334044 d!332714)))

(assert (=> bs!285179 (= lambda!47949 lambda!47877)))

(declare-fun bs!285180 () Bool)

(assert (= bs!285180 (and d!334044 d!333526)))

(assert (=> bs!285180 (= lambda!47949 lambda!47935)))

(declare-fun bs!285181 () Bool)

(assert (= bs!285181 (and d!334044 d!333808)))

(assert (=> bs!285181 (= lambda!47949 lambda!47947)))

(declare-fun bs!285182 () Bool)

(assert (= bs!285182 (and d!334044 d!332754)))

(assert (=> bs!285182 (= lambda!47949 lambda!47880)))

(declare-fun bs!285183 () Bool)

(assert (= bs!285183 (and d!334044 d!333536)))

(assert (=> bs!285183 (= lambda!47949 lambda!47936)))

(declare-fun bs!285184 () Bool)

(assert (= bs!285184 (and d!334044 d!334030)))

(assert (=> bs!285184 (= lambda!47949 lambda!47948)))

(declare-fun bs!285185 () Bool)

(assert (= bs!285185 (and d!334044 d!332758)))

(assert (=> bs!285185 (= lambda!47949 lambda!47881)))

(declare-fun bs!285186 () Bool)

(assert (= bs!285186 (and d!334044 d!332712)))

(assert (=> bs!285186 (= lambda!47949 lambda!47872)))

(declare-fun bs!285187 () Bool)

(assert (= bs!285187 (and d!334044 d!333328)))

(assert (=> bs!285187 (= lambda!47949 lambda!47924)))

(declare-fun bs!285188 () Bool)

(assert (= bs!285188 (and d!334044 d!333484)))

(assert (=> bs!285188 (= lambda!47949 lambda!47930)))

(declare-fun bs!285189 () Bool)

(assert (= bs!285189 (and d!334044 d!332732)))

(assert (=> bs!285189 (= lambda!47949 lambda!47878)))

(declare-fun bs!285190 () Bool)

(assert (= bs!285190 (and d!334044 d!332856)))

(assert (=> bs!285190 (= lambda!47949 lambda!47902)))

(declare-fun bs!285191 () Bool)

(assert (= bs!285191 (and d!334044 d!333546)))

(assert (=> bs!285191 (= lambda!47949 lambda!47940)))

(declare-fun bs!285192 () Bool)

(assert (= bs!285192 (and d!334044 d!333076)))

(assert (=> bs!285192 (= lambda!47949 lambda!47907)))

(declare-fun bs!285193 () Bool)

(assert (= bs!285193 (and d!334044 b!1166241)))

(assert (=> bs!285193 (= lambda!47949 lambda!47890)))

(declare-fun bs!285194 () Bool)

(assert (= bs!285194 (and d!334044 d!332834)))

(assert (=> bs!285194 (= lambda!47949 lambda!47891)))

(declare-fun bs!285195 () Bool)

(assert (= bs!285195 (and d!334044 d!332868)))

(assert (=> bs!285195 (= lambda!47949 lambda!47903)))

(declare-fun bs!285196 () Bool)

(assert (= bs!285196 (and d!334044 b!1166281)))

(assert (=> bs!285196 (= lambda!47949 lambda!47898)))

(declare-fun bs!285197 () Bool)

(assert (= bs!285197 (and d!334044 d!333790)))

(assert (=> bs!285197 (= lambda!47949 lambda!47941)))

(declare-fun bs!285198 () Bool)

(assert (= bs!285198 (and d!334044 d!332796)))

(assert (=> bs!285198 (= lambda!47949 lambda!47883)))

(declare-fun bs!285199 () Bool)

(assert (= bs!285199 (and d!334044 b!1165777)))

(assert (=> bs!285199 (= lambda!47949 lambda!47859)))

(declare-fun bs!285200 () Bool)

(assert (= bs!285200 (and d!334044 d!332668)))

(assert (=> bs!285200 (= lambda!47949 lambda!47862)))

(declare-fun b!1168225 () Bool)

(declare-fun e!748806 () Bool)

(assert (=> b!1168225 (= e!748806 true)))

(declare-fun b!1168224 () Bool)

(declare-fun e!748805 () Bool)

(assert (=> b!1168224 (= e!748805 e!748806)))

(declare-fun b!1168223 () Bool)

(declare-fun e!748804 () Bool)

(assert (=> b!1168223 (= e!748804 e!748805)))

(assert (=> d!334044 e!748804))

(assert (= b!1168224 b!1168225))

(assert (= b!1168223 b!1168224))

(assert (= (and d!334044 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1168223))

(assert (=> b!1168225 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47949))))

(assert (=> b!1168225 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47949))))

(assert (=> d!334044 true))

(declare-fun lt!400095 () Bool)

(assert (=> d!334044 (= lt!400095 (forall!3024 (t!110333 (t!110333 lt!398620)) lambda!47949))))

(declare-fun e!748802 () Bool)

(assert (=> d!334044 (= lt!400095 e!748802)))

(declare-fun res!527473 () Bool)

(assert (=> d!334044 (=> res!527473 e!748802)))

(assert (=> d!334044 (= res!527473 (not ((_ is Cons!11519) (t!110333 (t!110333 lt!398620)))))))

(assert (=> d!334044 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334044 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 lt!398620))) lt!400095)))

(declare-fun b!1168221 () Bool)

(declare-fun e!748803 () Bool)

(assert (=> b!1168221 (= e!748802 e!748803)))

(declare-fun res!527472 () Bool)

(assert (=> b!1168221 (=> (not res!527472) (not e!748803))))

(assert (=> b!1168221 (= res!527472 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (t!110333 lt!398620)))))))

(declare-fun b!1168222 () Bool)

(assert (=> b!1168222 (= e!748803 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 (t!110333 lt!398620)))))))

(assert (= (and d!334044 (not res!527473)) b!1168221))

(assert (= (and b!1168221 res!527472) b!1168222))

(declare-fun m!1340267 () Bool)

(assert (=> d!334044 m!1340267))

(assert (=> d!334044 m!1335511))

(declare-fun m!1340269 () Bool)

(assert (=> b!1168221 m!1340269))

(declare-fun m!1340271 () Bool)

(assert (=> b!1168222 m!1340271))

(assert (=> b!1166043 d!334044))

(assert (=> b!1166375 d!333338))

(declare-fun b!1168228 () Bool)

(declare-fun e!748810 () Bool)

(assert (=> b!1168228 (= e!748810 (subseq!259 (t!110333 lt!398845) (t!110333 lt!398855)))))

(declare-fun b!1168229 () Bool)

(declare-fun e!748808 () Bool)

(assert (=> b!1168229 (= e!748808 (subseq!259 lt!398845 (t!110333 lt!398855)))))

(declare-fun b!1168227 () Bool)

(declare-fun e!748809 () Bool)

(assert (=> b!1168227 (= e!748809 e!748808)))

(declare-fun res!527476 () Bool)

(assert (=> b!1168227 (=> res!527476 e!748808)))

(assert (=> b!1168227 (= res!527476 e!748810)))

(declare-fun res!527477 () Bool)

(assert (=> b!1168227 (=> (not res!527477) (not e!748810))))

(assert (=> b!1168227 (= res!527477 (= (h!16920 lt!398845) (h!16920 lt!398855)))))

(declare-fun b!1168226 () Bool)

(declare-fun e!748807 () Bool)

(assert (=> b!1168226 (= e!748807 e!748809)))

(declare-fun res!527474 () Bool)

(assert (=> b!1168226 (=> (not res!527474) (not e!748809))))

(assert (=> b!1168226 (= res!527474 ((_ is Cons!11519) lt!398855))))

(declare-fun d!334046 () Bool)

(declare-fun res!527475 () Bool)

(assert (=> d!334046 (=> res!527475 e!748807)))

(assert (=> d!334046 (= res!527475 ((_ is Nil!11519) lt!398845))))

(assert (=> d!334046 (= (subseq!259 lt!398845 lt!398855) e!748807)))

(assert (= (and d!334046 (not res!527475)) b!1168226))

(assert (= (and b!1168226 res!527474) b!1168227))

(assert (= (and b!1168227 res!527477) b!1168228))

(assert (= (and b!1168227 (not res!527476)) b!1168229))

(declare-fun m!1340273 () Bool)

(assert (=> b!1168228 m!1340273))

(declare-fun m!1340275 () Bool)

(assert (=> b!1168229 m!1340275))

(assert (=> b!1166022 d!334046))

(declare-fun d!334048 () Bool)

(declare-fun res!527478 () Bool)

(declare-fun e!748811 () Bool)

(assert (=> d!334048 (=> res!527478 e!748811)))

(assert (=> d!334048 (= res!527478 ((_ is Nil!11519) (list!4239 lt!398609)))))

(assert (=> d!334048 (= (forall!3024 (list!4239 lt!398609) lambda!47881) e!748811)))

(declare-fun b!1168230 () Bool)

(declare-fun e!748812 () Bool)

(assert (=> b!1168230 (= e!748811 e!748812)))

(declare-fun res!527479 () Bool)

(assert (=> b!1168230 (=> (not res!527479) (not e!748812))))

(assert (=> b!1168230 (= res!527479 (dynLambda!5074 lambda!47881 (h!16920 (list!4239 lt!398609))))))

(declare-fun b!1168231 () Bool)

(assert (=> b!1168231 (= e!748812 (forall!3024 (t!110333 (list!4239 lt!398609)) lambda!47881))))

(assert (= (and d!334048 (not res!527478)) b!1168230))

(assert (= (and b!1168230 res!527479) b!1168231))

(declare-fun b_lambda!34887 () Bool)

(assert (=> (not b_lambda!34887) (not b!1168230)))

(declare-fun m!1340277 () Bool)

(assert (=> b!1168230 m!1340277))

(declare-fun m!1340279 () Bool)

(assert (=> b!1168231 m!1340279))

(assert (=> d!332758 d!334048))

(assert (=> d!332758 d!332664))

(declare-fun d!334050 () Bool)

(declare-fun lt!400096 () Bool)

(assert (=> d!334050 (= lt!400096 (forall!3024 (list!4239 lt!398609) lambda!47881))))

(assert (=> d!334050 (= lt!400096 (forall!3026 (c!194629 lt!398609) lambda!47881))))

(assert (=> d!334050 (= (forall!3023 lt!398609 lambda!47881) lt!400096)))

(declare-fun bs!285201 () Bool)

(assert (= bs!285201 d!334050))

(assert (=> bs!285201 m!1335361))

(assert (=> bs!285201 m!1335361))

(assert (=> bs!285201 m!1335893))

(declare-fun m!1340281 () Bool)

(assert (=> bs!285201 m!1340281))

(assert (=> d!332758 d!334050))

(assert (=> d!332758 d!333086))

(assert (=> b!1166463 d!332924))

(declare-fun d!334052 () Bool)

(declare-fun lt!400097 () Int)

(assert (=> d!334052 (>= lt!400097 0)))

(declare-fun e!748813 () Int)

(assert (=> d!334052 (= lt!400097 e!748813)))

(declare-fun c!195087 () Bool)

(assert (=> d!334052 (= c!195087 ((_ is Nil!11519) lt!399207))))

(assert (=> d!334052 (= (size!9071 lt!399207) lt!400097)))

(declare-fun b!1168232 () Bool)

(assert (=> b!1168232 (= e!748813 0)))

(declare-fun b!1168233 () Bool)

(assert (=> b!1168233 (= e!748813 (+ 1 (size!9071 (t!110333 lt!399207))))))

(assert (= (and d!334052 c!195087) b!1168232))

(assert (= (and d!334052 (not c!195087)) b!1168233))

(declare-fun m!1340283 () Bool)

(assert (=> b!1168233 m!1340283))

(assert (=> b!1166324 d!334052))

(declare-fun d!334054 () Bool)

(declare-fun lt!400098 () Bool)

(assert (=> d!334054 (= lt!400098 (isEmpty!7011 (list!4243 (_2!6858 lt!399227))))))

(assert (=> d!334054 (= lt!400098 (isEmpty!7012 (c!194628 (_2!6858 lt!399227))))))

(assert (=> d!334054 (= (isEmpty!7005 (_2!6858 lt!399227)) lt!400098)))

(declare-fun bs!285202 () Bool)

(assert (= bs!285202 d!334054))

(declare-fun m!1340285 () Bool)

(assert (=> bs!285202 m!1340285))

(assert (=> bs!285202 m!1340285))

(declare-fun m!1340287 () Bool)

(assert (=> bs!285202 m!1340287))

(declare-fun m!1340289 () Bool)

(assert (=> bs!285202 m!1340289))

(assert (=> b!1166442 d!334054))

(declare-fun bs!285203 () Bool)

(declare-fun d!334056 () Bool)

(assert (= bs!285203 (and d!334056 d!333806)))

(declare-fun lambda!47950 () Int)

(assert (=> bs!285203 (= lambda!47950 lambda!47942)))

(declare-fun bs!285204 () Bool)

(assert (= bs!285204 (and d!334056 d!332714)))

(assert (=> bs!285204 (= lambda!47950 lambda!47877)))

(declare-fun bs!285205 () Bool)

(assert (= bs!285205 (and d!334056 d!333526)))

(assert (=> bs!285205 (= lambda!47950 lambda!47935)))

(declare-fun bs!285206 () Bool)

(assert (= bs!285206 (and d!334056 d!333808)))

(assert (=> bs!285206 (= lambda!47950 lambda!47947)))

(declare-fun bs!285207 () Bool)

(assert (= bs!285207 (and d!334056 d!332754)))

(assert (=> bs!285207 (= lambda!47950 lambda!47880)))

(declare-fun bs!285208 () Bool)

(assert (= bs!285208 (and d!334056 d!333536)))

(assert (=> bs!285208 (= lambda!47950 lambda!47936)))

(declare-fun bs!285209 () Bool)

(assert (= bs!285209 (and d!334056 d!334030)))

(assert (=> bs!285209 (= lambda!47950 lambda!47948)))

(declare-fun bs!285210 () Bool)

(assert (= bs!285210 (and d!334056 d!332758)))

(assert (=> bs!285210 (= lambda!47950 lambda!47881)))

(declare-fun bs!285211 () Bool)

(assert (= bs!285211 (and d!334056 d!334044)))

(assert (=> bs!285211 (= lambda!47950 lambda!47949)))

(declare-fun bs!285212 () Bool)

(assert (= bs!285212 (and d!334056 d!332712)))

(assert (=> bs!285212 (= lambda!47950 lambda!47872)))

(declare-fun bs!285213 () Bool)

(assert (= bs!285213 (and d!334056 d!333328)))

(assert (=> bs!285213 (= lambda!47950 lambda!47924)))

(declare-fun bs!285214 () Bool)

(assert (= bs!285214 (and d!334056 d!333484)))

(assert (=> bs!285214 (= lambda!47950 lambda!47930)))

(declare-fun bs!285215 () Bool)

(assert (= bs!285215 (and d!334056 d!332732)))

(assert (=> bs!285215 (= lambda!47950 lambda!47878)))

(declare-fun bs!285216 () Bool)

(assert (= bs!285216 (and d!334056 d!332856)))

(assert (=> bs!285216 (= lambda!47950 lambda!47902)))

(declare-fun bs!285217 () Bool)

(assert (= bs!285217 (and d!334056 d!333546)))

(assert (=> bs!285217 (= lambda!47950 lambda!47940)))

(declare-fun bs!285218 () Bool)

(assert (= bs!285218 (and d!334056 d!333076)))

(assert (=> bs!285218 (= lambda!47950 lambda!47907)))

(declare-fun bs!285219 () Bool)

(assert (= bs!285219 (and d!334056 b!1166241)))

(assert (=> bs!285219 (= lambda!47950 lambda!47890)))

(declare-fun bs!285220 () Bool)

(assert (= bs!285220 (and d!334056 d!332834)))

(assert (=> bs!285220 (= lambda!47950 lambda!47891)))

(declare-fun bs!285221 () Bool)

(assert (= bs!285221 (and d!334056 d!332868)))

(assert (=> bs!285221 (= lambda!47950 lambda!47903)))

(declare-fun bs!285222 () Bool)

(assert (= bs!285222 (and d!334056 b!1166281)))

(assert (=> bs!285222 (= lambda!47950 lambda!47898)))

(declare-fun bs!285223 () Bool)

(assert (= bs!285223 (and d!334056 d!333790)))

(assert (=> bs!285223 (= lambda!47950 lambda!47941)))

(declare-fun bs!285224 () Bool)

(assert (= bs!285224 (and d!334056 d!332796)))

(assert (=> bs!285224 (= lambda!47950 lambda!47883)))

(declare-fun bs!285225 () Bool)

(assert (= bs!285225 (and d!334056 b!1165777)))

(assert (=> bs!285225 (= lambda!47950 lambda!47859)))

(declare-fun bs!285226 () Bool)

(assert (= bs!285226 (and d!334056 d!332668)))

(assert (=> bs!285226 (= lambda!47950 lambda!47862)))

(declare-fun b!1168238 () Bool)

(declare-fun e!748818 () Bool)

(assert (=> b!1168238 (= e!748818 true)))

(declare-fun b!1168237 () Bool)

(declare-fun e!748817 () Bool)

(assert (=> b!1168237 (= e!748817 e!748818)))

(declare-fun b!1168236 () Bool)

(declare-fun e!748816 () Bool)

(assert (=> b!1168236 (= e!748816 e!748817)))

(assert (=> d!334056 e!748816))

(assert (= b!1168237 b!1168238))

(assert (= b!1168236 b!1168237))

(assert (= (and d!334056 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1168236))

(assert (=> b!1168238 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47950))))

(assert (=> b!1168238 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47950))))

(assert (=> d!334056 true))

(declare-fun lt!400099 () Bool)

(assert (=> d!334056 (= lt!400099 (forall!3024 lt!399001 lambda!47950))))

(declare-fun e!748814 () Bool)

(assert (=> d!334056 (= lt!400099 e!748814)))

(declare-fun res!527481 () Bool)

(assert (=> d!334056 (=> res!527481 e!748814)))

(assert (=> d!334056 (= res!527481 (not ((_ is Cons!11519) lt!399001)))))

(assert (=> d!334056 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334056 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!399001) lt!400099)))

(declare-fun b!1168234 () Bool)

(declare-fun e!748815 () Bool)

(assert (=> b!1168234 (= e!748814 e!748815)))

(declare-fun res!527480 () Bool)

(assert (=> b!1168234 (=> (not res!527480) (not e!748815))))

(assert (=> b!1168234 (= res!527480 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!399001)))))

(declare-fun b!1168235 () Bool)

(assert (=> b!1168235 (= e!748815 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!399001)))))

(assert (= (and d!334056 (not res!527481)) b!1168234))

(assert (= (and b!1168234 res!527480) b!1168235))

(declare-fun m!1340291 () Bool)

(assert (=> d!334056 m!1340291))

(assert (=> d!334056 m!1335511))

(declare-fun m!1340293 () Bool)

(assert (=> b!1168234 m!1340293))

(declare-fun m!1340295 () Bool)

(assert (=> b!1168235 m!1340295))

(assert (=> d!332802 d!334056))

(declare-fun d!334058 () Bool)

(assert (=> d!334058 (= (dropList!317 lt!398609 0) (drop!482 (list!4242 (c!194629 lt!398609)) 0))))

(declare-fun bs!285227 () Bool)

(assert (= bs!285227 d!334058))

(assert (=> bs!285227 m!1335469))

(assert (=> bs!285227 m!1335469))

(declare-fun m!1340297 () Bool)

(assert (=> bs!285227 m!1340297))

(assert (=> d!332802 d!334058))

(declare-fun b!1168239 () Bool)

(declare-fun e!748822 () Int)

(declare-fun call!82255 () Int)

(assert (=> b!1168239 (= e!748822 call!82255)))

(declare-fun b!1168240 () Bool)

(declare-fun e!748821 () List!11543)

(declare-fun e!748819 () List!11543)

(assert (=> b!1168240 (= e!748821 e!748819)))

(declare-fun c!195091 () Bool)

(assert (=> b!1168240 (= c!195091 (<= 0 0))))

(declare-fun b!1168241 () Bool)

(declare-fun e!748823 () Int)

(assert (=> b!1168241 (= e!748822 e!748823)))

(declare-fun c!195088 () Bool)

(assert (=> b!1168241 (= c!195088 (>= 0 call!82255))))

(declare-fun b!1168242 () Bool)

(declare-fun e!748820 () Bool)

(declare-fun lt!400100 () List!11543)

(assert (=> b!1168242 (= e!748820 (= (size!9071 lt!400100) e!748822))))

(declare-fun c!195089 () Bool)

(assert (=> b!1168242 (= c!195089 (<= 0 0))))

(declare-fun b!1168243 () Bool)

(assert (=> b!1168243 (= e!748821 Nil!11519)))

(declare-fun b!1168244 () Bool)

(assert (=> b!1168244 (= e!748823 (- call!82255 0))))

(declare-fun b!1168245 () Bool)

(assert (=> b!1168245 (= e!748819 lt!399014)))

(declare-fun b!1168247 () Bool)

(assert (=> b!1168247 (= e!748819 (drop!482 (t!110333 lt!399014) (- 0 1)))))

(declare-fun bm!82250 () Bool)

(assert (=> bm!82250 (= call!82255 (size!9071 lt!399014))))

(declare-fun d!334060 () Bool)

(assert (=> d!334060 e!748820))

(declare-fun res!527482 () Bool)

(assert (=> d!334060 (=> (not res!527482) (not e!748820))))

(assert (=> d!334060 (= res!527482 (= ((_ map implies) (content!1608 lt!400100) (content!1608 lt!399014)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334060 (= lt!400100 e!748821)))

(declare-fun c!195090 () Bool)

(assert (=> d!334060 (= c!195090 ((_ is Nil!11519) lt!399014))))

(assert (=> d!334060 (= (drop!482 lt!399014 0) lt!400100)))

(declare-fun b!1168246 () Bool)

(assert (=> b!1168246 (= e!748823 0)))

(assert (= (and d!334060 c!195090) b!1168243))

(assert (= (and d!334060 (not c!195090)) b!1168240))

(assert (= (and b!1168240 c!195091) b!1168245))

(assert (= (and b!1168240 (not c!195091)) b!1168247))

(assert (= (and d!334060 res!527482) b!1168242))

(assert (= (and b!1168242 c!195089) b!1168239))

(assert (= (and b!1168242 (not c!195089)) b!1168241))

(assert (= (and b!1168241 c!195088) b!1168246))

(assert (= (and b!1168241 (not c!195088)) b!1168244))

(assert (= (or b!1168239 b!1168241 b!1168244) bm!82250))

(declare-fun m!1340299 () Bool)

(assert (=> b!1168242 m!1340299))

(declare-fun m!1340301 () Bool)

(assert (=> b!1168247 m!1340301))

(assert (=> bm!82250 m!1336097))

(declare-fun m!1340303 () Bool)

(assert (=> d!334060 m!1340303))

(declare-fun m!1340305 () Bool)

(assert (=> d!334060 m!1340305))

(assert (=> d!332802 d!334060))

(declare-fun d!334062 () Bool)

(assert (=> d!334062 (subseq!259 (drop!482 lt!399014 0) lt!399014)))

(declare-fun lt!400101 () Unit!17605)

(assert (=> d!334062 (= lt!400101 (choose!7533 lt!399014 0))))

(declare-fun e!748824 () Bool)

(assert (=> d!334062 e!748824))

(declare-fun res!527483 () Bool)

(assert (=> d!334062 (=> (not res!527483) (not e!748824))))

(assert (=> d!334062 (= res!527483 (>= 0 0))))

(assert (=> d!334062 (= (lemmaDropSubSeq!27 lt!399014 0) lt!400101)))

(declare-fun b!1168248 () Bool)

(assert (=> b!1168248 (= e!748824 (<= 0 (size!9071 lt!399014)))))

(assert (= (and d!334062 res!527483) b!1168248))

(assert (=> d!334062 m!1336099))

(assert (=> d!334062 m!1336099))

(assert (=> d!334062 m!1336101))

(declare-fun m!1340307 () Bool)

(assert (=> d!334062 m!1340307))

(assert (=> b!1168248 m!1336097))

(assert (=> d!332802 d!334062))

(declare-fun d!334064 () Bool)

(assert (=> d!334064 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!399001)))

(declare-fun lt!400102 () Unit!17605)

(assert (=> d!334064 (= lt!400102 (choose!7532 Lexer!1700 (rules!9572 thiss!10527) lt!399011 lt!399001))))

(assert (=> d!334064 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334064 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!27 Lexer!1700 (rules!9572 thiss!10527) lt!399011 lt!399001) lt!400102)))

(declare-fun bs!285228 () Bool)

(assert (= bs!285228 d!334064))

(assert (=> bs!285228 m!1336105))

(declare-fun m!1340309 () Bool)

(assert (=> bs!285228 m!1340309))

(assert (=> bs!285228 m!1335511))

(assert (=> d!332802 d!334064))

(assert (=> d!332802 d!332664))

(declare-fun b!1168251 () Bool)

(declare-fun e!748828 () Bool)

(assert (=> b!1168251 (= e!748828 (subseq!259 (t!110333 (drop!482 lt!399014 0)) (t!110333 lt!399014)))))

(declare-fun b!1168252 () Bool)

(declare-fun e!748826 () Bool)

(assert (=> b!1168252 (= e!748826 (subseq!259 (drop!482 lt!399014 0) (t!110333 lt!399014)))))

(declare-fun b!1168250 () Bool)

(declare-fun e!748827 () Bool)

(assert (=> b!1168250 (= e!748827 e!748826)))

(declare-fun res!527486 () Bool)

(assert (=> b!1168250 (=> res!527486 e!748826)))

(assert (=> b!1168250 (= res!527486 e!748828)))

(declare-fun res!527487 () Bool)

(assert (=> b!1168250 (=> (not res!527487) (not e!748828))))

(assert (=> b!1168250 (= res!527487 (= (h!16920 (drop!482 lt!399014 0)) (h!16920 lt!399014)))))

(declare-fun b!1168249 () Bool)

(declare-fun e!748825 () Bool)

(assert (=> b!1168249 (= e!748825 e!748827)))

(declare-fun res!527484 () Bool)

(assert (=> b!1168249 (=> (not res!527484) (not e!748827))))

(assert (=> b!1168249 (= res!527484 ((_ is Cons!11519) lt!399014))))

(declare-fun d!334066 () Bool)

(declare-fun res!527485 () Bool)

(assert (=> d!334066 (=> res!527485 e!748825)))

(assert (=> d!334066 (= res!527485 ((_ is Nil!11519) (drop!482 lt!399014 0)))))

(assert (=> d!334066 (= (subseq!259 (drop!482 lt!399014 0) lt!399014) e!748825)))

(assert (= (and d!334066 (not res!527485)) b!1168249))

(assert (= (and b!1168249 res!527484) b!1168250))

(assert (= (and b!1168250 res!527487) b!1168251))

(assert (= (and b!1168250 (not res!527486)) b!1168252))

(declare-fun m!1340311 () Bool)

(assert (=> b!1168251 m!1340311))

(assert (=> b!1168252 m!1336099))

(declare-fun m!1340313 () Bool)

(assert (=> b!1168252 m!1340313))

(assert (=> d!332802 d!334066))

(assert (=> d!332802 d!333334))

(declare-fun d!334068 () Bool)

(declare-fun res!527488 () Bool)

(declare-fun e!748829 () Bool)

(assert (=> d!334068 (=> res!527488 e!748829)))

(assert (=> d!334068 (= res!527488 (or (not ((_ is Cons!11519) (dropList!317 lt!398609 0))) (not ((_ is Cons!11519) (t!110333 (dropList!317 lt!398609 0))))))))

(assert (=> d!334068 (= (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (dropList!317 lt!398609 0) (rules!9572 thiss!10527)) e!748829)))

(declare-fun b!1168253 () Bool)

(declare-fun e!748830 () Bool)

(assert (=> b!1168253 (= e!748829 e!748830)))

(declare-fun res!527489 () Bool)

(assert (=> b!1168253 (=> (not res!527489) (not e!748830))))

(assert (=> b!1168253 (= res!527489 (separableTokensPredicate!130 Lexer!1700 (h!16920 (dropList!317 lt!398609 0)) (h!16920 (t!110333 (dropList!317 lt!398609 0))) (rules!9572 thiss!10527)))))

(declare-fun lt!400107 () Unit!17605)

(declare-fun Unit!17685 () Unit!17605)

(assert (=> b!1168253 (= lt!400107 Unit!17685)))

(assert (=> b!1168253 (> (size!9066 (charsOf!1068 (h!16920 (t!110333 (dropList!317 lt!398609 0))))) 0)))

(declare-fun lt!400105 () Unit!17605)

(declare-fun Unit!17686 () Unit!17605)

(assert (=> b!1168253 (= lt!400105 Unit!17686)))

(assert (=> b!1168253 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (dropList!317 lt!398609 0))))))

(declare-fun lt!400109 () Unit!17605)

(declare-fun Unit!17687 () Unit!17605)

(assert (=> b!1168253 (= lt!400109 Unit!17687)))

(assert (=> b!1168253 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (dropList!317 lt!398609 0)))))

(declare-fun lt!400108 () Unit!17605)

(declare-fun lt!400104 () Unit!17605)

(assert (=> b!1168253 (= lt!400108 lt!400104)))

(assert (=> b!1168253 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (dropList!317 lt!398609 0))))))

(assert (=> b!1168253 (= lt!400104 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (dropList!317 lt!398609 0) (h!16920 (t!110333 (dropList!317 lt!398609 0)))))))

(declare-fun lt!400103 () Unit!17605)

(declare-fun lt!400106 () Unit!17605)

(assert (=> b!1168253 (= lt!400103 lt!400106)))

(assert (=> b!1168253 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (dropList!317 lt!398609 0)))))

(assert (=> b!1168253 (= lt!400106 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (dropList!317 lt!398609 0) (h!16920 (dropList!317 lt!398609 0))))))

(declare-fun b!1168254 () Bool)

(assert (=> b!1168254 (= e!748830 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (Cons!11519 (h!16920 (t!110333 (dropList!317 lt!398609 0))) (t!110333 (t!110333 (dropList!317 lt!398609 0)))) (rules!9572 thiss!10527)))))

(assert (= (and d!334068 (not res!527488)) b!1168253))

(assert (= (and b!1168253 res!527489) b!1168254))

(declare-fun m!1340315 () Bool)

(assert (=> b!1168253 m!1340315))

(declare-fun m!1340317 () Bool)

(assert (=> b!1168253 m!1340317))

(declare-fun m!1340319 () Bool)

(assert (=> b!1168253 m!1340319))

(declare-fun m!1340321 () Bool)

(assert (=> b!1168253 m!1340321))

(declare-fun m!1340323 () Bool)

(assert (=> b!1168253 m!1340323))

(assert (=> b!1168253 m!1340317))

(assert (=> b!1168253 m!1336107))

(declare-fun m!1340325 () Bool)

(assert (=> b!1168253 m!1340325))

(assert (=> b!1168253 m!1336107))

(declare-fun m!1340327 () Bool)

(assert (=> b!1168253 m!1340327))

(declare-fun m!1340329 () Bool)

(assert (=> b!1168254 m!1340329))

(assert (=> d!332802 d!334068))

(assert (=> b!1166473 d!333172))

(declare-fun bs!285229 () Bool)

(declare-fun d!334070 () Bool)

(assert (= bs!285229 (and d!334070 d!333806)))

(declare-fun lambda!47951 () Int)

(assert (=> bs!285229 (= lambda!47951 lambda!47942)))

(declare-fun bs!285230 () Bool)

(assert (= bs!285230 (and d!334070 d!332714)))

(assert (=> bs!285230 (= lambda!47951 lambda!47877)))

(declare-fun bs!285231 () Bool)

(assert (= bs!285231 (and d!334070 d!333526)))

(assert (=> bs!285231 (= lambda!47951 lambda!47935)))

(declare-fun bs!285232 () Bool)

(assert (= bs!285232 (and d!334070 d!333808)))

(assert (=> bs!285232 (= lambda!47951 lambda!47947)))

(declare-fun bs!285233 () Bool)

(assert (= bs!285233 (and d!334070 d!332754)))

(assert (=> bs!285233 (= lambda!47951 lambda!47880)))

(declare-fun bs!285234 () Bool)

(assert (= bs!285234 (and d!334070 d!333536)))

(assert (=> bs!285234 (= lambda!47951 lambda!47936)))

(declare-fun bs!285235 () Bool)

(assert (= bs!285235 (and d!334070 d!332758)))

(assert (=> bs!285235 (= lambda!47951 lambda!47881)))

(declare-fun bs!285236 () Bool)

(assert (= bs!285236 (and d!334070 d!334044)))

(assert (=> bs!285236 (= lambda!47951 lambda!47949)))

(declare-fun bs!285237 () Bool)

(assert (= bs!285237 (and d!334070 d!332712)))

(assert (=> bs!285237 (= lambda!47951 lambda!47872)))

(declare-fun bs!285238 () Bool)

(assert (= bs!285238 (and d!334070 d!333328)))

(assert (=> bs!285238 (= lambda!47951 lambda!47924)))

(declare-fun bs!285239 () Bool)

(assert (= bs!285239 (and d!334070 d!333484)))

(assert (=> bs!285239 (= lambda!47951 lambda!47930)))

(declare-fun bs!285240 () Bool)

(assert (= bs!285240 (and d!334070 d!332732)))

(assert (=> bs!285240 (= lambda!47951 lambda!47878)))

(declare-fun bs!285241 () Bool)

(assert (= bs!285241 (and d!334070 d!332856)))

(assert (=> bs!285241 (= lambda!47951 lambda!47902)))

(declare-fun bs!285242 () Bool)

(assert (= bs!285242 (and d!334070 d!333546)))

(assert (=> bs!285242 (= lambda!47951 lambda!47940)))

(declare-fun bs!285243 () Bool)

(assert (= bs!285243 (and d!334070 d!333076)))

(assert (=> bs!285243 (= lambda!47951 lambda!47907)))

(declare-fun bs!285244 () Bool)

(assert (= bs!285244 (and d!334070 b!1166241)))

(assert (=> bs!285244 (= lambda!47951 lambda!47890)))

(declare-fun bs!285245 () Bool)

(assert (= bs!285245 (and d!334070 d!332834)))

(assert (=> bs!285245 (= lambda!47951 lambda!47891)))

(declare-fun bs!285246 () Bool)

(assert (= bs!285246 (and d!334070 d!332868)))

(assert (=> bs!285246 (= lambda!47951 lambda!47903)))

(declare-fun bs!285247 () Bool)

(assert (= bs!285247 (and d!334070 b!1166281)))

(assert (=> bs!285247 (= lambda!47951 lambda!47898)))

(declare-fun bs!285248 () Bool)

(assert (= bs!285248 (and d!334070 d!334030)))

(assert (=> bs!285248 (= lambda!47951 lambda!47948)))

(declare-fun bs!285249 () Bool)

(assert (= bs!285249 (and d!334070 d!334056)))

(assert (=> bs!285249 (= lambda!47951 lambda!47950)))

(declare-fun bs!285250 () Bool)

(assert (= bs!285250 (and d!334070 d!333790)))

(assert (=> bs!285250 (= lambda!47951 lambda!47941)))

(declare-fun bs!285251 () Bool)

(assert (= bs!285251 (and d!334070 d!332796)))

(assert (=> bs!285251 (= lambda!47951 lambda!47883)))

(declare-fun bs!285252 () Bool)

(assert (= bs!285252 (and d!334070 b!1165777)))

(assert (=> bs!285252 (= lambda!47951 lambda!47859)))

(declare-fun bs!285253 () Bool)

(assert (= bs!285253 (and d!334070 d!332668)))

(assert (=> bs!285253 (= lambda!47951 lambda!47862)))

(declare-fun b!1168259 () Bool)

(declare-fun e!748835 () Bool)

(assert (=> b!1168259 (= e!748835 true)))

(declare-fun b!1168258 () Bool)

(declare-fun e!748834 () Bool)

(assert (=> b!1168258 (= e!748834 e!748835)))

(declare-fun b!1168257 () Bool)

(declare-fun e!748833 () Bool)

(assert (=> b!1168257 (= e!748833 e!748834)))

(assert (=> d!334070 e!748833))

(assert (= b!1168258 b!1168259))

(assert (= b!1168257 b!1168258))

(assert (= (and d!334070 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1168257))

(assert (=> b!1168259 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47951))))

(assert (=> b!1168259 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47951))))

(assert (=> d!334070 true))

(declare-fun lt!400110 () Bool)

(assert (=> d!334070 (= lt!400110 (forall!3024 lt!398845 lambda!47951))))

(declare-fun e!748831 () Bool)

(assert (=> d!334070 (= lt!400110 e!748831)))

(declare-fun res!527491 () Bool)

(assert (=> d!334070 (=> res!527491 e!748831)))

(assert (=> d!334070 (= res!527491 (not ((_ is Cons!11519) lt!398845)))))

(assert (=> d!334070 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334070 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398845) lt!400110)))

(declare-fun b!1168255 () Bool)

(declare-fun e!748832 () Bool)

(assert (=> b!1168255 (= e!748831 e!748832)))

(declare-fun res!527490 () Bool)

(assert (=> b!1168255 (=> (not res!527490) (not e!748832))))

(assert (=> b!1168255 (= res!527490 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398845)))))

(declare-fun b!1168256 () Bool)

(assert (=> b!1168256 (= e!748832 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398845)))))

(assert (= (and d!334070 (not res!527491)) b!1168255))

(assert (= (and b!1168255 res!527490) b!1168256))

(declare-fun m!1340331 () Bool)

(assert (=> d!334070 m!1340331))

(assert (=> d!334070 m!1335511))

(declare-fun m!1340333 () Bool)

(assert (=> b!1168255 m!1340333))

(declare-fun m!1340335 () Bool)

(assert (=> b!1168256 m!1340335))

(assert (=> d!332742 d!334070))

(declare-fun d!334072 () Bool)

(assert (=> d!334072 (= (dropList!317 (tokens!1624 thiss!10527) 1) (drop!482 (list!4242 (c!194629 (tokens!1624 thiss!10527))) 1))))

(declare-fun bs!285254 () Bool)

(assert (= bs!285254 d!334072))

(assert (=> bs!285254 m!1335745))

(assert (=> bs!285254 m!1335745))

(declare-fun m!1340337 () Bool)

(assert (=> bs!285254 m!1340337))

(assert (=> d!332742 d!334072))

(declare-fun b!1168262 () Bool)

(declare-fun e!748839 () Bool)

(assert (=> b!1168262 (= e!748839 (subseq!259 (t!110333 (drop!482 lt!398858 1)) (t!110333 lt!398858)))))

(declare-fun b!1168263 () Bool)

(declare-fun e!748837 () Bool)

(assert (=> b!1168263 (= e!748837 (subseq!259 (drop!482 lt!398858 1) (t!110333 lt!398858)))))

(declare-fun b!1168261 () Bool)

(declare-fun e!748838 () Bool)

(assert (=> b!1168261 (= e!748838 e!748837)))

(declare-fun res!527494 () Bool)

(assert (=> b!1168261 (=> res!527494 e!748837)))

(assert (=> b!1168261 (= res!527494 e!748839)))

(declare-fun res!527495 () Bool)

(assert (=> b!1168261 (=> (not res!527495) (not e!748839))))

(assert (=> b!1168261 (= res!527495 (= (h!16920 (drop!482 lt!398858 1)) (h!16920 lt!398858)))))

(declare-fun b!1168260 () Bool)

(declare-fun e!748836 () Bool)

(assert (=> b!1168260 (= e!748836 e!748838)))

(declare-fun res!527492 () Bool)

(assert (=> b!1168260 (=> (not res!527492) (not e!748838))))

(assert (=> b!1168260 (= res!527492 ((_ is Cons!11519) lt!398858))))

(declare-fun d!334074 () Bool)

(declare-fun res!527493 () Bool)

(assert (=> d!334074 (=> res!527493 e!748836)))

(assert (=> d!334074 (= res!527493 ((_ is Nil!11519) (drop!482 lt!398858 1)))))

(assert (=> d!334074 (= (subseq!259 (drop!482 lt!398858 1) lt!398858) e!748836)))

(assert (= (and d!334074 (not res!527493)) b!1168260))

(assert (= (and b!1168260 res!527492) b!1168261))

(assert (= (and b!1168261 res!527495) b!1168262))

(assert (= (and b!1168261 (not res!527494)) b!1168263))

(declare-fun m!1340339 () Bool)

(assert (=> b!1168262 m!1340339))

(assert (=> b!1168263 m!1335835))

(declare-fun m!1340341 () Bool)

(assert (=> b!1168263 m!1340341))

(assert (=> d!332742 d!334074))

(assert (=> d!332742 d!332740))

(declare-fun d!334076 () Bool)

(assert (=> d!334076 (subseq!259 (drop!482 lt!398858 1) lt!398858)))

(declare-fun lt!400111 () Unit!17605)

(assert (=> d!334076 (= lt!400111 (choose!7533 lt!398858 1))))

(declare-fun e!748840 () Bool)

(assert (=> d!334076 e!748840))

(declare-fun res!527496 () Bool)

(assert (=> d!334076 (=> (not res!527496) (not e!748840))))

(assert (=> d!334076 (= res!527496 (>= 1 0))))

(assert (=> d!334076 (= (lemmaDropSubSeq!27 lt!398858 1) lt!400111)))

(declare-fun b!1168264 () Bool)

(assert (=> b!1168264 (= e!748840 (<= 1 (size!9071 lt!398858)))))

(assert (= (and d!334076 res!527496) b!1168264))

(assert (=> d!334076 m!1335835))

(assert (=> d!334076 m!1335835))

(assert (=> d!334076 m!1335837))

(declare-fun m!1340343 () Bool)

(assert (=> d!334076 m!1340343))

(assert (=> b!1168264 m!1335833))

(assert (=> d!332742 d!334076))

(assert (=> d!332742 d!332924))

(declare-fun b!1168265 () Bool)

(declare-fun e!748844 () Int)

(declare-fun call!82256 () Int)

(assert (=> b!1168265 (= e!748844 call!82256)))

(declare-fun b!1168266 () Bool)

(declare-fun e!748843 () List!11543)

(declare-fun e!748841 () List!11543)

(assert (=> b!1168266 (= e!748843 e!748841)))

(declare-fun c!195095 () Bool)

(assert (=> b!1168266 (= c!195095 (<= 1 0))))

(declare-fun b!1168267 () Bool)

(declare-fun e!748845 () Int)

(assert (=> b!1168267 (= e!748844 e!748845)))

(declare-fun c!195092 () Bool)

(assert (=> b!1168267 (= c!195092 (>= 1 call!82256))))

(declare-fun b!1168268 () Bool)

(declare-fun e!748842 () Bool)

(declare-fun lt!400112 () List!11543)

(assert (=> b!1168268 (= e!748842 (= (size!9071 lt!400112) e!748844))))

(declare-fun c!195093 () Bool)

(assert (=> b!1168268 (= c!195093 (<= 1 0))))

(declare-fun b!1168269 () Bool)

(assert (=> b!1168269 (= e!748843 Nil!11519)))

(declare-fun b!1168270 () Bool)

(assert (=> b!1168270 (= e!748845 (- call!82256 1))))

(declare-fun b!1168271 () Bool)

(assert (=> b!1168271 (= e!748841 lt!398858)))

(declare-fun b!1168273 () Bool)

(assert (=> b!1168273 (= e!748841 (drop!482 (t!110333 lt!398858) (- 1 1)))))

(declare-fun bm!82251 () Bool)

(assert (=> bm!82251 (= call!82256 (size!9071 lt!398858))))

(declare-fun d!334078 () Bool)

(assert (=> d!334078 e!748842))

(declare-fun res!527497 () Bool)

(assert (=> d!334078 (=> (not res!527497) (not e!748842))))

(assert (=> d!334078 (= res!527497 (= ((_ map implies) (content!1608 lt!400112) (content!1608 lt!398858)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334078 (= lt!400112 e!748843)))

(declare-fun c!195094 () Bool)

(assert (=> d!334078 (= c!195094 ((_ is Nil!11519) lt!398858))))

(assert (=> d!334078 (= (drop!482 lt!398858 1) lt!400112)))

(declare-fun b!1168272 () Bool)

(assert (=> b!1168272 (= e!748845 0)))

(assert (= (and d!334078 c!195094) b!1168269))

(assert (= (and d!334078 (not c!195094)) b!1168266))

(assert (= (and b!1168266 c!195095) b!1168271))

(assert (= (and b!1168266 (not c!195095)) b!1168273))

(assert (= (and d!334078 res!527497) b!1168268))

(assert (= (and b!1168268 c!195093) b!1168265))

(assert (= (and b!1168268 (not c!195093)) b!1168267))

(assert (= (and b!1168267 c!195092) b!1168272))

(assert (= (and b!1168267 (not c!195092)) b!1168270))

(assert (= (or b!1168265 b!1168267 b!1168270) bm!82251))

(declare-fun m!1340345 () Bool)

(assert (=> b!1168268 m!1340345))

(declare-fun m!1340347 () Bool)

(assert (=> b!1168273 m!1340347))

(assert (=> bm!82251 m!1335833))

(declare-fun m!1340349 () Bool)

(assert (=> d!334078 m!1340349))

(declare-fun m!1340351 () Bool)

(assert (=> d!334078 m!1340351))

(assert (=> d!332742 d!334078))

(declare-fun d!334080 () Bool)

(assert (=> d!334080 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398845)))

(declare-fun lt!400113 () Unit!17605)

(assert (=> d!334080 (= lt!400113 (choose!7532 Lexer!1700 (rules!9572 thiss!10527) lt!398855 lt!398845))))

(assert (=> d!334080 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334080 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!27 Lexer!1700 (rules!9572 thiss!10527) lt!398855 lt!398845) lt!400113)))

(declare-fun bs!285255 () Bool)

(assert (= bs!285255 d!334080))

(assert (=> bs!285255 m!1335839))

(declare-fun m!1340353 () Bool)

(assert (=> bs!285255 m!1340353))

(assert (=> bs!285255 m!1335511))

(assert (=> d!332742 d!334080))

(declare-fun d!334082 () Bool)

(declare-fun res!527498 () Bool)

(declare-fun e!748846 () Bool)

(assert (=> d!334082 (=> res!527498 e!748846)))

(assert (=> d!334082 (= res!527498 (or (not ((_ is Cons!11519) (dropList!317 (tokens!1624 thiss!10527) 1))) (not ((_ is Cons!11519) (t!110333 (dropList!317 (tokens!1624 thiss!10527) 1))))))))

(assert (=> d!334082 (= (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (dropList!317 (tokens!1624 thiss!10527) 1) (rules!9572 thiss!10527)) e!748846)))

(declare-fun b!1168274 () Bool)

(declare-fun e!748847 () Bool)

(assert (=> b!1168274 (= e!748846 e!748847)))

(declare-fun res!527499 () Bool)

(assert (=> b!1168274 (=> (not res!527499) (not e!748847))))

(assert (=> b!1168274 (= res!527499 (separableTokensPredicate!130 Lexer!1700 (h!16920 (dropList!317 (tokens!1624 thiss!10527) 1)) (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 1))) (rules!9572 thiss!10527)))))

(declare-fun lt!400118 () Unit!17605)

(declare-fun Unit!17688 () Unit!17605)

(assert (=> b!1168274 (= lt!400118 Unit!17688)))

(assert (=> b!1168274 (> (size!9066 (charsOf!1068 (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 1))))) 0)))

(declare-fun lt!400116 () Unit!17605)

(declare-fun Unit!17689 () Unit!17605)

(assert (=> b!1168274 (= lt!400116 Unit!17689)))

(assert (=> b!1168274 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 1))))))

(declare-fun lt!400120 () Unit!17605)

(declare-fun Unit!17690 () Unit!17605)

(assert (=> b!1168274 (= lt!400120 Unit!17690)))

(assert (=> b!1168274 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (dropList!317 (tokens!1624 thiss!10527) 1)))))

(declare-fun lt!400119 () Unit!17605)

(declare-fun lt!400115 () Unit!17605)

(assert (=> b!1168274 (= lt!400119 lt!400115)))

(assert (=> b!1168274 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 1))))))

(assert (=> b!1168274 (= lt!400115 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (dropList!317 (tokens!1624 thiss!10527) 1) (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 1)))))))

(declare-fun lt!400114 () Unit!17605)

(declare-fun lt!400117 () Unit!17605)

(assert (=> b!1168274 (= lt!400114 lt!400117)))

(assert (=> b!1168274 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (dropList!317 (tokens!1624 thiss!10527) 1)))))

(assert (=> b!1168274 (= lt!400117 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (dropList!317 (tokens!1624 thiss!10527) 1) (h!16920 (dropList!317 (tokens!1624 thiss!10527) 1))))))

(declare-fun b!1168275 () Bool)

(assert (=> b!1168275 (= e!748847 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (Cons!11519 (h!16920 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 1))) (t!110333 (t!110333 (dropList!317 (tokens!1624 thiss!10527) 1)))) (rules!9572 thiss!10527)))))

(assert (= (and d!334082 (not res!527498)) b!1168274))

(assert (= (and b!1168274 res!527499) b!1168275))

(declare-fun m!1340355 () Bool)

(assert (=> b!1168274 m!1340355))

(declare-fun m!1340357 () Bool)

(assert (=> b!1168274 m!1340357))

(declare-fun m!1340359 () Bool)

(assert (=> b!1168274 m!1340359))

(declare-fun m!1340361 () Bool)

(assert (=> b!1168274 m!1340361))

(declare-fun m!1340363 () Bool)

(assert (=> b!1168274 m!1340363))

(assert (=> b!1168274 m!1340357))

(assert (=> b!1168274 m!1335841))

(declare-fun m!1340365 () Bool)

(assert (=> b!1168274 m!1340365))

(assert (=> b!1168274 m!1335841))

(declare-fun m!1340367 () Bool)

(assert (=> b!1168274 m!1340367))

(declare-fun m!1340369 () Bool)

(assert (=> b!1168275 m!1340369))

(assert (=> d!332742 d!334082))

(assert (=> b!1166127 d!332714))

(declare-fun bs!285256 () Bool)

(declare-fun d!334084 () Bool)

(assert (= bs!285256 (and d!334084 d!333806)))

(declare-fun lambda!47952 () Int)

(assert (=> bs!285256 (= lambda!47952 lambda!47942)))

(declare-fun bs!285257 () Bool)

(assert (= bs!285257 (and d!334084 d!332714)))

(assert (=> bs!285257 (= lambda!47952 lambda!47877)))

(declare-fun bs!285258 () Bool)

(assert (= bs!285258 (and d!334084 d!333808)))

(assert (=> bs!285258 (= lambda!47952 lambda!47947)))

(declare-fun bs!285259 () Bool)

(assert (= bs!285259 (and d!334084 d!332754)))

(assert (=> bs!285259 (= lambda!47952 lambda!47880)))

(declare-fun bs!285260 () Bool)

(assert (= bs!285260 (and d!334084 d!333536)))

(assert (=> bs!285260 (= lambda!47952 lambda!47936)))

(declare-fun bs!285261 () Bool)

(assert (= bs!285261 (and d!334084 d!332758)))

(assert (=> bs!285261 (= lambda!47952 lambda!47881)))

(declare-fun bs!285262 () Bool)

(assert (= bs!285262 (and d!334084 d!334044)))

(assert (=> bs!285262 (= lambda!47952 lambda!47949)))

(declare-fun bs!285263 () Bool)

(assert (= bs!285263 (and d!334084 d!332712)))

(assert (=> bs!285263 (= lambda!47952 lambda!47872)))

(declare-fun bs!285264 () Bool)

(assert (= bs!285264 (and d!334084 d!333328)))

(assert (=> bs!285264 (= lambda!47952 lambda!47924)))

(declare-fun bs!285265 () Bool)

(assert (= bs!285265 (and d!334084 d!333484)))

(assert (=> bs!285265 (= lambda!47952 lambda!47930)))

(declare-fun bs!285266 () Bool)

(assert (= bs!285266 (and d!334084 d!332732)))

(assert (=> bs!285266 (= lambda!47952 lambda!47878)))

(declare-fun bs!285267 () Bool)

(assert (= bs!285267 (and d!334084 d!332856)))

(assert (=> bs!285267 (= lambda!47952 lambda!47902)))

(declare-fun bs!285268 () Bool)

(assert (= bs!285268 (and d!334084 d!333546)))

(assert (=> bs!285268 (= lambda!47952 lambda!47940)))

(declare-fun bs!285269 () Bool)

(assert (= bs!285269 (and d!334084 d!333076)))

(assert (=> bs!285269 (= lambda!47952 lambda!47907)))

(declare-fun bs!285270 () Bool)

(assert (= bs!285270 (and d!334084 b!1166241)))

(assert (=> bs!285270 (= lambda!47952 lambda!47890)))

(declare-fun bs!285271 () Bool)

(assert (= bs!285271 (and d!334084 d!332834)))

(assert (=> bs!285271 (= lambda!47952 lambda!47891)))

(declare-fun bs!285272 () Bool)

(assert (= bs!285272 (and d!334084 d!333526)))

(assert (=> bs!285272 (= lambda!47952 lambda!47935)))

(declare-fun bs!285273 () Bool)

(assert (= bs!285273 (and d!334084 d!334070)))

(assert (=> bs!285273 (= lambda!47952 lambda!47951)))

(declare-fun bs!285274 () Bool)

(assert (= bs!285274 (and d!334084 d!332868)))

(assert (=> bs!285274 (= lambda!47952 lambda!47903)))

(declare-fun bs!285275 () Bool)

(assert (= bs!285275 (and d!334084 b!1166281)))

(assert (=> bs!285275 (= lambda!47952 lambda!47898)))

(declare-fun bs!285276 () Bool)

(assert (= bs!285276 (and d!334084 d!334030)))

(assert (=> bs!285276 (= lambda!47952 lambda!47948)))

(declare-fun bs!285277 () Bool)

(assert (= bs!285277 (and d!334084 d!334056)))

(assert (=> bs!285277 (= lambda!47952 lambda!47950)))

(declare-fun bs!285278 () Bool)

(assert (= bs!285278 (and d!334084 d!333790)))

(assert (=> bs!285278 (= lambda!47952 lambda!47941)))

(declare-fun bs!285279 () Bool)

(assert (= bs!285279 (and d!334084 d!332796)))

(assert (=> bs!285279 (= lambda!47952 lambda!47883)))

(declare-fun bs!285280 () Bool)

(assert (= bs!285280 (and d!334084 b!1165777)))

(assert (=> bs!285280 (= lambda!47952 lambda!47859)))

(declare-fun bs!285281 () Bool)

(assert (= bs!285281 (and d!334084 d!332668)))

(assert (=> bs!285281 (= lambda!47952 lambda!47862)))

(declare-fun b!1168280 () Bool)

(declare-fun e!748852 () Bool)

(assert (=> b!1168280 (= e!748852 true)))

(declare-fun b!1168279 () Bool)

(declare-fun e!748851 () Bool)

(assert (=> b!1168279 (= e!748851 e!748852)))

(declare-fun b!1168278 () Bool)

(declare-fun e!748850 () Bool)

(assert (=> b!1168278 (= e!748850 e!748851)))

(assert (=> d!334084 e!748850))

(assert (= b!1168279 b!1168280))

(assert (= b!1168278 b!1168279))

(assert (= (and d!334084 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1168278))

(assert (=> b!1168280 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47952))))

(assert (=> b!1168280 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47952))))

(assert (=> d!334084 true))

(declare-fun lt!400121 () Bool)

(assert (=> d!334084 (= lt!400121 (forall!3024 (t!110333 lt!399139) lambda!47952))))

(declare-fun e!748848 () Bool)

(assert (=> d!334084 (= lt!400121 e!748848)))

(declare-fun res!527501 () Bool)

(assert (=> d!334084 (=> res!527501 e!748848)))

(assert (=> d!334084 (= res!527501 (not ((_ is Cons!11519) (t!110333 lt!399139))))))

(assert (=> d!334084 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334084 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!399139)) lt!400121)))

(declare-fun b!1168276 () Bool)

(declare-fun e!748849 () Bool)

(assert (=> b!1168276 (= e!748848 e!748849)))

(declare-fun res!527500 () Bool)

(assert (=> b!1168276 (=> (not res!527500) (not e!748849))))

(assert (=> b!1168276 (= res!527500 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!399139))))))

(declare-fun b!1168277 () Bool)

(assert (=> b!1168277 (= e!748849 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 lt!399139))))))

(assert (= (and d!334084 (not res!527501)) b!1168276))

(assert (= (and b!1168276 res!527500) b!1168277))

(declare-fun m!1340371 () Bool)

(assert (=> d!334084 m!1340371))

(assert (=> d!334084 m!1335511))

(declare-fun m!1340373 () Bool)

(assert (=> b!1168276 m!1340373))

(declare-fun m!1340375 () Bool)

(assert (=> b!1168277 m!1340375))

(assert (=> b!1166240 d!334084))

(declare-fun d!334086 () Bool)

(declare-fun res!527506 () Bool)

(declare-fun e!748857 () Bool)

(assert (=> d!334086 (=> res!527506 e!748857)))

(assert (=> d!334086 (= res!527506 ((_ is Nil!11520) (rules!9572 thiss!10527)))))

(assert (=> d!334086 (= (noDuplicateTag!702 Lexer!1700 (rules!9572 thiss!10527) Nil!11522) e!748857)))

(declare-fun b!1168285 () Bool)

(declare-fun e!748858 () Bool)

(assert (=> b!1168285 (= e!748857 e!748858)))

(declare-fun res!527507 () Bool)

(assert (=> b!1168285 (=> (not res!527507) (not e!748858))))

(declare-fun contains!1996 (List!11546 String!13953) Bool)

(assert (=> b!1168285 (= res!527507 (not (contains!1996 Nil!11522 (tag!2269 (h!16921 (rules!9572 thiss!10527))))))))

(declare-fun b!1168286 () Bool)

(assert (=> b!1168286 (= e!748858 (noDuplicateTag!702 Lexer!1700 (t!110334 (rules!9572 thiss!10527)) (Cons!11522 (tag!2269 (h!16921 (rules!9572 thiss!10527))) Nil!11522)))))

(assert (= (and d!334086 (not res!527506)) b!1168285))

(assert (= (and b!1168285 res!527507) b!1168286))

(declare-fun m!1340377 () Bool)

(assert (=> b!1168285 m!1340377))

(declare-fun m!1340379 () Bool)

(assert (=> b!1168286 m!1340379))

(assert (=> b!1166120 d!334086))

(assert (=> bm!82161 d!333172))

(assert (=> b!1166460 d!333690))

(declare-fun bs!285282 () Bool)

(declare-fun d!334088 () Bool)

(assert (= bs!285282 (and d!334088 d!333806)))

(declare-fun lambda!47953 () Int)

(assert (=> bs!285282 (= lambda!47953 lambda!47942)))

(declare-fun bs!285283 () Bool)

(assert (= bs!285283 (and d!334088 d!332714)))

(assert (=> bs!285283 (= lambda!47953 lambda!47877)))

(declare-fun bs!285284 () Bool)

(assert (= bs!285284 (and d!334088 d!333808)))

(assert (=> bs!285284 (= lambda!47953 lambda!47947)))

(declare-fun bs!285285 () Bool)

(assert (= bs!285285 (and d!334088 d!332754)))

(assert (=> bs!285285 (= lambda!47953 lambda!47880)))

(declare-fun bs!285286 () Bool)

(assert (= bs!285286 (and d!334088 d!333536)))

(assert (=> bs!285286 (= lambda!47953 lambda!47936)))

(declare-fun bs!285287 () Bool)

(assert (= bs!285287 (and d!334088 d!332758)))

(assert (=> bs!285287 (= lambda!47953 lambda!47881)))

(declare-fun bs!285288 () Bool)

(assert (= bs!285288 (and d!334088 d!334044)))

(assert (=> bs!285288 (= lambda!47953 lambda!47949)))

(declare-fun bs!285289 () Bool)

(assert (= bs!285289 (and d!334088 d!333328)))

(assert (=> bs!285289 (= lambda!47953 lambda!47924)))

(declare-fun bs!285290 () Bool)

(assert (= bs!285290 (and d!334088 d!333484)))

(assert (=> bs!285290 (= lambda!47953 lambda!47930)))

(declare-fun bs!285291 () Bool)

(assert (= bs!285291 (and d!334088 d!332732)))

(assert (=> bs!285291 (= lambda!47953 lambda!47878)))

(declare-fun bs!285292 () Bool)

(assert (= bs!285292 (and d!334088 d!332856)))

(assert (=> bs!285292 (= lambda!47953 lambda!47902)))

(declare-fun bs!285293 () Bool)

(assert (= bs!285293 (and d!334088 d!333546)))

(assert (=> bs!285293 (= lambda!47953 lambda!47940)))

(declare-fun bs!285294 () Bool)

(assert (= bs!285294 (and d!334088 d!333076)))

(assert (=> bs!285294 (= lambda!47953 lambda!47907)))

(declare-fun bs!285295 () Bool)

(assert (= bs!285295 (and d!334088 b!1166241)))

(assert (=> bs!285295 (= lambda!47953 lambda!47890)))

(declare-fun bs!285296 () Bool)

(assert (= bs!285296 (and d!334088 d!332834)))

(assert (=> bs!285296 (= lambda!47953 lambda!47891)))

(declare-fun bs!285297 () Bool)

(assert (= bs!285297 (and d!334088 d!333526)))

(assert (=> bs!285297 (= lambda!47953 lambda!47935)))

(declare-fun bs!285298 () Bool)

(assert (= bs!285298 (and d!334088 d!334070)))

(assert (=> bs!285298 (= lambda!47953 lambda!47951)))

(declare-fun bs!285299 () Bool)

(assert (= bs!285299 (and d!334088 d!332868)))

(assert (=> bs!285299 (= lambda!47953 lambda!47903)))

(declare-fun bs!285300 () Bool)

(assert (= bs!285300 (and d!334088 b!1166281)))

(assert (=> bs!285300 (= lambda!47953 lambda!47898)))

(declare-fun bs!285301 () Bool)

(assert (= bs!285301 (and d!334088 d!334030)))

(assert (=> bs!285301 (= lambda!47953 lambda!47948)))

(declare-fun bs!285302 () Bool)

(assert (= bs!285302 (and d!334088 d!334056)))

(assert (=> bs!285302 (= lambda!47953 lambda!47950)))

(declare-fun bs!285303 () Bool)

(assert (= bs!285303 (and d!334088 d!334084)))

(assert (=> bs!285303 (= lambda!47953 lambda!47952)))

(declare-fun bs!285304 () Bool)

(assert (= bs!285304 (and d!334088 d!332712)))

(assert (=> bs!285304 (= lambda!47953 lambda!47872)))

(declare-fun bs!285305 () Bool)

(assert (= bs!285305 (and d!334088 d!333790)))

(assert (=> bs!285305 (= lambda!47953 lambda!47941)))

(declare-fun bs!285306 () Bool)

(assert (= bs!285306 (and d!334088 d!332796)))

(assert (=> bs!285306 (= lambda!47953 lambda!47883)))

(declare-fun bs!285307 () Bool)

(assert (= bs!285307 (and d!334088 b!1165777)))

(assert (=> bs!285307 (= lambda!47953 lambda!47859)))

(declare-fun bs!285308 () Bool)

(assert (= bs!285308 (and d!334088 d!332668)))

(assert (=> bs!285308 (= lambda!47953 lambda!47862)))

(declare-fun b!1168291 () Bool)

(declare-fun e!748863 () Bool)

(assert (=> b!1168291 (= e!748863 true)))

(declare-fun b!1168290 () Bool)

(declare-fun e!748862 () Bool)

(assert (=> b!1168290 (= e!748862 e!748863)))

(declare-fun b!1168289 () Bool)

(declare-fun e!748861 () Bool)

(assert (=> b!1168289 (= e!748861 e!748862)))

(assert (=> d!334088 e!748861))

(assert (= b!1168290 b!1168291))

(assert (= b!1168289 b!1168290))

(assert (= (and d!334088 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1168289))

(assert (=> b!1168291 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47953))))

(assert (=> b!1168291 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47953))))

(assert (=> d!334088 true))

(declare-fun lt!400122 () Bool)

(assert (=> d!334088 (= lt!400122 (forall!3024 lt!399011 lambda!47953))))

(declare-fun e!748859 () Bool)

(assert (=> d!334088 (= lt!400122 e!748859)))

(declare-fun res!527509 () Bool)

(assert (=> d!334088 (=> res!527509 e!748859)))

(assert (=> d!334088 (= res!527509 (not ((_ is Cons!11519) lt!399011)))))

(assert (=> d!334088 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334088 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!399011) lt!400122)))

(declare-fun b!1168287 () Bool)

(declare-fun e!748860 () Bool)

(assert (=> b!1168287 (= e!748859 e!748860)))

(declare-fun res!527508 () Bool)

(assert (=> b!1168287 (=> (not res!527508) (not e!748860))))

(assert (=> b!1168287 (= res!527508 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!399011)))))

(declare-fun b!1168288 () Bool)

(assert (=> b!1168288 (= e!748860 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!399011)))))

(assert (= (and d!334088 (not res!527509)) b!1168287))

(assert (= (and b!1168287 res!527508) b!1168288))

(declare-fun m!1340381 () Bool)

(assert (=> d!334088 m!1340381))

(assert (=> d!334088 m!1335511))

(declare-fun m!1340383 () Bool)

(assert (=> b!1168287 m!1340383))

(declare-fun m!1340385 () Bool)

(assert (=> b!1168288 m!1340385))

(assert (=> b!1166163 d!334088))

(assert (=> b!1166241 d!332864))

(declare-fun d!334090 () Bool)

(declare-fun res!527510 () Bool)

(declare-fun e!748864 () Bool)

(assert (=> d!334090 (=> res!527510 e!748864)))

(assert (=> d!334090 (= res!527510 ((_ is Nil!11519) lt!398622))))

(assert (=> d!334090 (= (forall!3024 lt!398622 lambda!47890) e!748864)))

(declare-fun b!1168292 () Bool)

(declare-fun e!748865 () Bool)

(assert (=> b!1168292 (= e!748864 e!748865)))

(declare-fun res!527511 () Bool)

(assert (=> b!1168292 (=> (not res!527511) (not e!748865))))

(assert (=> b!1168292 (= res!527511 (dynLambda!5074 lambda!47890 (h!16920 lt!398622)))))

(declare-fun b!1168293 () Bool)

(assert (=> b!1168293 (= e!748865 (forall!3024 (t!110333 lt!398622) lambda!47890))))

(assert (= (and d!334090 (not res!527510)) b!1168292))

(assert (= (and b!1168292 res!527511) b!1168293))

(declare-fun b_lambda!34889 () Bool)

(assert (=> (not b_lambda!34889) (not b!1168292)))

(declare-fun m!1340387 () Bool)

(assert (=> b!1168292 m!1340387))

(declare-fun m!1340389 () Bool)

(assert (=> b!1168293 m!1340389))

(assert (=> b!1166241 d!334090))

(declare-fun d!334092 () Bool)

(assert (=> d!334092 (forall!3024 lt!399136 lambda!47890)))

(declare-fun lt!400123 () Unit!17605)

(assert (=> d!334092 (= lt!400123 (choose!7522 lt!399136 lt!398622 lambda!47890))))

(assert (=> d!334092 (forall!3024 lt!398622 lambda!47890)))

(assert (=> d!334092 (= (lemmaForallSubseq!151 lt!399136 lt!398622 lambda!47890) lt!400123)))

(declare-fun bs!285309 () Bool)

(assert (= bs!285309 d!334092))

(assert (=> bs!285309 m!1336389))

(declare-fun m!1340391 () Bool)

(assert (=> bs!285309 m!1340391))

(assert (=> bs!285309 m!1336393))

(assert (=> b!1166241 d!334092))

(declare-fun d!334094 () Bool)

(declare-fun res!527512 () Bool)

(declare-fun e!748866 () Bool)

(assert (=> d!334094 (=> res!527512 e!748866)))

(assert (=> d!334094 (= res!527512 ((_ is Nil!11519) lt!399136))))

(assert (=> d!334094 (= (forall!3024 lt!399136 lambda!47890) e!748866)))

(declare-fun b!1168294 () Bool)

(declare-fun e!748867 () Bool)

(assert (=> b!1168294 (= e!748866 e!748867)))

(declare-fun res!527513 () Bool)

(assert (=> b!1168294 (=> (not res!527513) (not e!748867))))

(assert (=> b!1168294 (= res!527513 (dynLambda!5074 lambda!47890 (h!16920 lt!399136)))))

(declare-fun b!1168295 () Bool)

(assert (=> b!1168295 (= e!748867 (forall!3024 (t!110333 lt!399136) lambda!47890))))

(assert (= (and d!334094 (not res!527512)) b!1168294))

(assert (= (and b!1168294 res!527513) b!1168295))

(declare-fun b_lambda!34891 () Bool)

(assert (=> (not b_lambda!34891) (not b!1168294)))

(declare-fun m!1340393 () Bool)

(assert (=> b!1168294 m!1340393))

(declare-fun m!1340395 () Bool)

(assert (=> b!1168295 m!1340395))

(assert (=> b!1166241 d!334094))

(declare-fun d!334096 () Bool)

(declare-fun res!527514 () Bool)

(declare-fun e!748868 () Bool)

(assert (=> d!334096 (=> res!527514 e!748868)))

(assert (=> d!334096 (= res!527514 (or (not ((_ is Cons!11519) (take!72 lt!398622 (- to!267 from!787)))) (not ((_ is Cons!11519) (t!110333 (take!72 lt!398622 (- to!267 from!787)))))))))

(assert (=> d!334096 (= (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (take!72 lt!398622 (- to!267 from!787)) (rules!9572 thiss!10527)) e!748868)))

(declare-fun b!1168296 () Bool)

(declare-fun e!748869 () Bool)

(assert (=> b!1168296 (= e!748868 e!748869)))

(declare-fun res!527515 () Bool)

(assert (=> b!1168296 (=> (not res!527515) (not e!748869))))

(assert (=> b!1168296 (= res!527515 (separableTokensPredicate!130 Lexer!1700 (h!16920 (take!72 lt!398622 (- to!267 from!787))) (h!16920 (t!110333 (take!72 lt!398622 (- to!267 from!787)))) (rules!9572 thiss!10527)))))

(declare-fun lt!400128 () Unit!17605)

(declare-fun Unit!17694 () Unit!17605)

(assert (=> b!1168296 (= lt!400128 Unit!17694)))

(assert (=> b!1168296 (> (size!9066 (charsOf!1068 (h!16920 (t!110333 (take!72 lt!398622 (- to!267 from!787)))))) 0)))

(declare-fun lt!400126 () Unit!17605)

(declare-fun Unit!17695 () Unit!17605)

(assert (=> b!1168296 (= lt!400126 Unit!17695)))

(assert (=> b!1168296 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (take!72 lt!398622 (- to!267 from!787)))))))

(declare-fun lt!400130 () Unit!17605)

(declare-fun Unit!17696 () Unit!17605)

(assert (=> b!1168296 (= lt!400130 Unit!17696)))

(assert (=> b!1168296 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (take!72 lt!398622 (- to!267 from!787))))))

(declare-fun lt!400129 () Unit!17605)

(declare-fun lt!400125 () Unit!17605)

(assert (=> b!1168296 (= lt!400129 lt!400125)))

(assert (=> b!1168296 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 (take!72 lt!398622 (- to!267 from!787)))))))

(assert (=> b!1168296 (= lt!400125 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (take!72 lt!398622 (- to!267 from!787)) (h!16920 (t!110333 (take!72 lt!398622 (- to!267 from!787))))))))

(declare-fun lt!400124 () Unit!17605)

(declare-fun lt!400127 () Unit!17605)

(assert (=> b!1168296 (= lt!400124 lt!400127)))

(assert (=> b!1168296 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (take!72 lt!398622 (- to!267 from!787))))))

(assert (=> b!1168296 (= lt!400127 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) (take!72 lt!398622 (- to!267 from!787)) (h!16920 (take!72 lt!398622 (- to!267 from!787)))))))

(declare-fun b!1168297 () Bool)

(assert (=> b!1168297 (= e!748869 (tokensListTwoByTwoPredicateSeparableList!106 Lexer!1700 (Cons!11519 (h!16920 (t!110333 (take!72 lt!398622 (- to!267 from!787)))) (t!110333 (t!110333 (take!72 lt!398622 (- to!267 from!787))))) (rules!9572 thiss!10527)))))

(assert (= (and d!334096 (not res!527514)) b!1168296))

(assert (= (and b!1168296 res!527515) b!1168297))

(declare-fun m!1340397 () Bool)

(assert (=> b!1168296 m!1340397))

(declare-fun m!1340399 () Bool)

(assert (=> b!1168296 m!1340399))

(declare-fun m!1340401 () Bool)

(assert (=> b!1168296 m!1340401))

(assert (=> b!1168296 m!1339627))

(declare-fun m!1340403 () Bool)

(assert (=> b!1168296 m!1340403))

(assert (=> b!1168296 m!1340399))

(assert (=> b!1168296 m!1335393))

(declare-fun m!1340405 () Bool)

(assert (=> b!1168296 m!1340405))

(assert (=> b!1168296 m!1335393))

(declare-fun m!1340407 () Bool)

(assert (=> b!1168296 m!1340407))

(declare-fun m!1340409 () Bool)

(assert (=> b!1168297 m!1340409))

(assert (=> b!1166241 d!334096))

(declare-fun b!1168298 () Bool)

(declare-fun e!748873 () Int)

(declare-fun call!82257 () Int)

(assert (=> b!1168298 (= e!748873 call!82257)))

(declare-fun b!1168299 () Bool)

(declare-fun e!748872 () List!11543)

(declare-fun e!748870 () List!11543)

(assert (=> b!1168299 (= e!748872 e!748870)))

(declare-fun c!195099 () Bool)

(assert (=> b!1168299 (= c!195099 (<= (- from!787 1) 0))))

(declare-fun b!1168300 () Bool)

(declare-fun e!748874 () Int)

(assert (=> b!1168300 (= e!748873 e!748874)))

(declare-fun c!195096 () Bool)

(assert (=> b!1168300 (= c!195096 (>= (- from!787 1) call!82257))))

(declare-fun b!1168301 () Bool)

(declare-fun e!748871 () Bool)

(declare-fun lt!400131 () List!11543)

(assert (=> b!1168301 (= e!748871 (= (size!9071 lt!400131) e!748873))))

(declare-fun c!195097 () Bool)

(assert (=> b!1168301 (= c!195097 (<= (- from!787 1) 0))))

(declare-fun b!1168302 () Bool)

(assert (=> b!1168302 (= e!748872 Nil!11519)))

(declare-fun b!1168303 () Bool)

(assert (=> b!1168303 (= e!748874 (- call!82257 (- from!787 1)))))

(declare-fun b!1168304 () Bool)

(assert (=> b!1168304 (= e!748870 (t!110333 lt!398620))))

(declare-fun b!1168306 () Bool)

(assert (=> b!1168306 (= e!748870 (drop!482 (t!110333 (t!110333 lt!398620)) (- (- from!787 1) 1)))))

(declare-fun bm!82252 () Bool)

(assert (=> bm!82252 (= call!82257 (size!9071 (t!110333 lt!398620)))))

(declare-fun d!334098 () Bool)

(assert (=> d!334098 e!748871))

(declare-fun res!527516 () Bool)

(assert (=> d!334098 (=> (not res!527516) (not e!748871))))

(assert (=> d!334098 (= res!527516 (= ((_ map implies) (content!1608 lt!400131) (content!1608 (t!110333 lt!398620))) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334098 (= lt!400131 e!748872)))

(declare-fun c!195098 () Bool)

(assert (=> d!334098 (= c!195098 ((_ is Nil!11519) (t!110333 lt!398620)))))

(assert (=> d!334098 (= (drop!482 (t!110333 lt!398620) (- from!787 1)) lt!400131)))

(declare-fun b!1168305 () Bool)

(assert (=> b!1168305 (= e!748874 0)))

(assert (= (and d!334098 c!195098) b!1168302))

(assert (= (and d!334098 (not c!195098)) b!1168299))

(assert (= (and b!1168299 c!195099) b!1168304))

(assert (= (and b!1168299 (not c!195099)) b!1168306))

(assert (= (and d!334098 res!527516) b!1168301))

(assert (= (and b!1168301 c!195097) b!1168298))

(assert (= (and b!1168301 (not c!195097)) b!1168300))

(assert (= (and b!1168300 c!195096) b!1168305))

(assert (= (and b!1168300 (not c!195096)) b!1168303))

(assert (= (or b!1168298 b!1168300 b!1168303) bm!82252))

(declare-fun m!1340411 () Bool)

(assert (=> b!1168301 m!1340411))

(declare-fun m!1340413 () Bool)

(assert (=> b!1168306 m!1340413))

(assert (=> bm!82252 m!1337659))

(declare-fun m!1340415 () Bool)

(assert (=> d!334098 m!1340415))

(assert (=> d!334098 m!1337657))

(assert (=> b!1166329 d!334098))

(declare-fun d!334100 () Bool)

(declare-fun lt!400133 () Bool)

(declare-fun e!748876 () Bool)

(assert (=> d!334100 (= lt!400133 e!748876)))

(declare-fun res!527517 () Bool)

(assert (=> d!334100 (=> (not res!527517) (not e!748876))))

(assert (=> d!334100 (= res!527517 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398621))))))) (list!4239 (singletonSeq!668 (h!16920 (t!110333 lt!398621))))))))

(declare-fun e!748875 () Bool)

(assert (=> d!334100 (= lt!400133 e!748875)))

(declare-fun res!527518 () Bool)

(assert (=> d!334100 (=> (not res!527518) (not e!748875))))

(declare-fun lt!400132 () tuple2!12022)

(assert (=> d!334100 (= res!527518 (= (size!9067 (_1!6858 lt!400132)) 1))))

(assert (=> d!334100 (= lt!400132 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398621))))))))

(assert (=> d!334100 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334100 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398621))) lt!400133)))

(declare-fun b!1168307 () Bool)

(declare-fun res!527519 () Bool)

(assert (=> b!1168307 (=> (not res!527519) (not e!748875))))

(assert (=> b!1168307 (= res!527519 (= (apply!2479 (_1!6858 lt!400132) 0) (h!16920 (t!110333 lt!398621))))))

(declare-fun b!1168308 () Bool)

(assert (=> b!1168308 (= e!748875 (isEmpty!7005 (_2!6858 lt!400132)))))

(declare-fun b!1168309 () Bool)

(assert (=> b!1168309 (= e!748876 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 (t!110333 lt!398621))))))))))

(assert (= (and d!334100 res!527518) b!1168307))

(assert (= (and b!1168307 res!527519) b!1168308))

(assert (= (and d!334100 res!527517) b!1168309))

(assert (=> d!334100 m!1335511))

(declare-fun m!1340417 () Bool)

(assert (=> d!334100 m!1340417))

(declare-fun m!1340419 () Bool)

(assert (=> d!334100 m!1340419))

(declare-fun m!1340421 () Bool)

(assert (=> d!334100 m!1340421))

(declare-fun m!1340423 () Bool)

(assert (=> d!334100 m!1340423))

(declare-fun m!1340425 () Bool)

(assert (=> d!334100 m!1340425))

(declare-fun m!1340427 () Bool)

(assert (=> d!334100 m!1340427))

(assert (=> d!334100 m!1340423))

(assert (=> d!334100 m!1340417))

(assert (=> d!334100 m!1340423))

(declare-fun m!1340429 () Bool)

(assert (=> b!1168307 m!1340429))

(declare-fun m!1340431 () Bool)

(assert (=> b!1168308 m!1340431))

(assert (=> b!1168309 m!1340423))

(assert (=> b!1168309 m!1340423))

(assert (=> b!1168309 m!1340417))

(assert (=> b!1168309 m!1340417))

(assert (=> b!1168309 m!1340419))

(declare-fun m!1340433 () Bool)

(assert (=> b!1168309 m!1340433))

(assert (=> b!1166383 d!334100))

(declare-fun d!334102 () Bool)

(declare-fun lt!400134 () Bool)

(assert (=> d!334102 (= lt!400134 (isEmpty!7011 (list!4243 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622))))))))))

(assert (=> d!334102 (= lt!400134 (isEmpty!7012 (c!194628 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622))))))))))

(assert (=> d!334102 (= (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398622)))))) lt!400134)))

(declare-fun bs!285310 () Bool)

(assert (= bs!285310 d!334102))

(declare-fun m!1340435 () Bool)

(assert (=> bs!285310 m!1340435))

(assert (=> bs!285310 m!1340435))

(declare-fun m!1340437 () Bool)

(assert (=> bs!285310 m!1340437))

(declare-fun m!1340439 () Bool)

(assert (=> bs!285310 m!1340439))

(assert (=> b!1166162 d!334102))

(assert (=> b!1166162 d!333104))

(assert (=> b!1166162 d!333158))

(assert (=> b!1166162 d!333162))

(declare-fun bs!285311 () Bool)

(declare-fun d!334104 () Bool)

(assert (= bs!285311 (and d!334104 d!334088)))

(declare-fun lambda!47954 () Int)

(assert (=> bs!285311 (= lambda!47954 lambda!47953)))

(declare-fun bs!285312 () Bool)

(assert (= bs!285312 (and d!334104 d!333806)))

(assert (=> bs!285312 (= lambda!47954 lambda!47942)))

(declare-fun bs!285313 () Bool)

(assert (= bs!285313 (and d!334104 d!332714)))

(assert (=> bs!285313 (= lambda!47954 lambda!47877)))

(declare-fun bs!285314 () Bool)

(assert (= bs!285314 (and d!334104 d!333808)))

(assert (=> bs!285314 (= lambda!47954 lambda!47947)))

(declare-fun bs!285315 () Bool)

(assert (= bs!285315 (and d!334104 d!332754)))

(assert (=> bs!285315 (= lambda!47954 lambda!47880)))

(declare-fun bs!285316 () Bool)

(assert (= bs!285316 (and d!334104 d!333536)))

(assert (=> bs!285316 (= lambda!47954 lambda!47936)))

(declare-fun bs!285317 () Bool)

(assert (= bs!285317 (and d!334104 d!332758)))

(assert (=> bs!285317 (= lambda!47954 lambda!47881)))

(declare-fun bs!285318 () Bool)

(assert (= bs!285318 (and d!334104 d!334044)))

(assert (=> bs!285318 (= lambda!47954 lambda!47949)))

(declare-fun bs!285319 () Bool)

(assert (= bs!285319 (and d!334104 d!333328)))

(assert (=> bs!285319 (= lambda!47954 lambda!47924)))

(declare-fun bs!285320 () Bool)

(assert (= bs!285320 (and d!334104 d!333484)))

(assert (=> bs!285320 (= lambda!47954 lambda!47930)))

(declare-fun bs!285321 () Bool)

(assert (= bs!285321 (and d!334104 d!332732)))

(assert (=> bs!285321 (= lambda!47954 lambda!47878)))

(declare-fun bs!285322 () Bool)

(assert (= bs!285322 (and d!334104 d!332856)))

(assert (=> bs!285322 (= lambda!47954 lambda!47902)))

(declare-fun bs!285323 () Bool)

(assert (= bs!285323 (and d!334104 d!333546)))

(assert (=> bs!285323 (= lambda!47954 lambda!47940)))

(declare-fun bs!285324 () Bool)

(assert (= bs!285324 (and d!334104 d!333076)))

(assert (=> bs!285324 (= lambda!47954 lambda!47907)))

(declare-fun bs!285325 () Bool)

(assert (= bs!285325 (and d!334104 b!1166241)))

(assert (=> bs!285325 (= lambda!47954 lambda!47890)))

(declare-fun bs!285326 () Bool)

(assert (= bs!285326 (and d!334104 d!332834)))

(assert (=> bs!285326 (= lambda!47954 lambda!47891)))

(declare-fun bs!285327 () Bool)

(assert (= bs!285327 (and d!334104 d!333526)))

(assert (=> bs!285327 (= lambda!47954 lambda!47935)))

(declare-fun bs!285328 () Bool)

(assert (= bs!285328 (and d!334104 d!334070)))

(assert (=> bs!285328 (= lambda!47954 lambda!47951)))

(declare-fun bs!285329 () Bool)

(assert (= bs!285329 (and d!334104 d!332868)))

(assert (=> bs!285329 (= lambda!47954 lambda!47903)))

(declare-fun bs!285330 () Bool)

(assert (= bs!285330 (and d!334104 b!1166281)))

(assert (=> bs!285330 (= lambda!47954 lambda!47898)))

(declare-fun bs!285331 () Bool)

(assert (= bs!285331 (and d!334104 d!334030)))

(assert (=> bs!285331 (= lambda!47954 lambda!47948)))

(declare-fun bs!285332 () Bool)

(assert (= bs!285332 (and d!334104 d!334056)))

(assert (=> bs!285332 (= lambda!47954 lambda!47950)))

(declare-fun bs!285333 () Bool)

(assert (= bs!285333 (and d!334104 d!334084)))

(assert (=> bs!285333 (= lambda!47954 lambda!47952)))

(declare-fun bs!285334 () Bool)

(assert (= bs!285334 (and d!334104 d!332712)))

(assert (=> bs!285334 (= lambda!47954 lambda!47872)))

(declare-fun bs!285335 () Bool)

(assert (= bs!285335 (and d!334104 d!333790)))

(assert (=> bs!285335 (= lambda!47954 lambda!47941)))

(declare-fun bs!285336 () Bool)

(assert (= bs!285336 (and d!334104 d!332796)))

(assert (=> bs!285336 (= lambda!47954 lambda!47883)))

(declare-fun bs!285337 () Bool)

(assert (= bs!285337 (and d!334104 b!1165777)))

(assert (=> bs!285337 (= lambda!47954 lambda!47859)))

(declare-fun bs!285338 () Bool)

(assert (= bs!285338 (and d!334104 d!332668)))

(assert (=> bs!285338 (= lambda!47954 lambda!47862)))

(declare-fun b!1168314 () Bool)

(declare-fun e!748881 () Bool)

(assert (=> b!1168314 (= e!748881 true)))

(declare-fun b!1168313 () Bool)

(declare-fun e!748880 () Bool)

(assert (=> b!1168313 (= e!748880 e!748881)))

(declare-fun b!1168312 () Bool)

(declare-fun e!748879 () Bool)

(assert (=> b!1168312 (= e!748879 e!748880)))

(assert (=> d!334104 e!748879))

(assert (= b!1168313 b!1168314))

(assert (= b!1168312 b!1168313))

(assert (= (and d!334104 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1168312))

(assert (=> b!1168314 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47954))))

(assert (=> b!1168314 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47954))))

(assert (=> d!334104 true))

(declare-fun lt!400135 () Bool)

(assert (=> d!334104 (= lt!400135 (forall!3024 (t!110333 lt!399179) lambda!47954))))

(declare-fun e!748877 () Bool)

(assert (=> d!334104 (= lt!400135 e!748877)))

(declare-fun res!527521 () Bool)

(assert (=> d!334104 (=> res!527521 e!748877)))

(assert (=> d!334104 (= res!527521 (not ((_ is Cons!11519) (t!110333 lt!399179))))))

(assert (=> d!334104 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334104 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!399179)) lt!400135)))

(declare-fun b!1168310 () Bool)

(declare-fun e!748878 () Bool)

(assert (=> b!1168310 (= e!748877 e!748878)))

(declare-fun res!527520 () Bool)

(assert (=> b!1168310 (=> (not res!527520) (not e!748878))))

(assert (=> b!1168310 (= res!527520 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!399179))))))

(declare-fun b!1168311 () Bool)

(assert (=> b!1168311 (= e!748878 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (t!110333 lt!399179))))))

(assert (= (and d!334104 (not res!527521)) b!1168310))

(assert (= (and b!1168310 res!527520) b!1168311))

(declare-fun m!1340441 () Bool)

(assert (=> d!334104 m!1340441))

(assert (=> d!334104 m!1335511))

(declare-fun m!1340443 () Bool)

(assert (=> b!1168310 m!1340443))

(declare-fun m!1340445 () Bool)

(assert (=> b!1168311 m!1340445))

(assert (=> b!1166280 d!334104))

(declare-fun d!334106 () Bool)

(declare-fun c!195102 () Bool)

(assert (=> d!334106 (= c!195102 ((_ is Node!3776) (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625)))))))

(declare-fun e!748886 () Bool)

(assert (=> d!334106 (= (inv!15175 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625)))) e!748886)))

(declare-fun b!1168321 () Bool)

(declare-fun inv!15180 (Conc!3776) Bool)

(assert (=> b!1168321 (= e!748886 (inv!15180 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625)))))))

(declare-fun b!1168322 () Bool)

(declare-fun e!748887 () Bool)

(assert (=> b!1168322 (= e!748886 e!748887)))

(declare-fun res!527524 () Bool)

(assert (=> b!1168322 (= res!527524 (not ((_ is Leaf!5790) (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625))))))))

(assert (=> b!1168322 (=> res!527524 e!748887)))

(declare-fun b!1168323 () Bool)

(declare-fun inv!15181 (Conc!3776) Bool)

(assert (=> b!1168323 (= e!748887 (inv!15181 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625)))))))

(assert (= (and d!334106 c!195102) b!1168321))

(assert (= (and d!334106 (not c!195102)) b!1168322))

(assert (= (and b!1168322 (not res!527524)) b!1168323))

(declare-fun m!1340447 () Bool)

(assert (=> b!1168321 m!1340447))

(declare-fun m!1340449 () Bool)

(assert (=> b!1168323 m!1340449))

(assert (=> b!1166520 d!334106))

(declare-fun d!334108 () Bool)

(declare-fun res!527525 () Bool)

(declare-fun e!748888 () Bool)

(assert (=> d!334108 (=> res!527525 e!748888)))

(assert (=> d!334108 (= res!527525 ((_ is Nil!11519) lt!398606))))

(assert (=> d!334108 (= (forall!3024 lt!398606 lambda!47902) e!748888)))

(declare-fun b!1168324 () Bool)

(declare-fun e!748889 () Bool)

(assert (=> b!1168324 (= e!748888 e!748889)))

(declare-fun res!527526 () Bool)

(assert (=> b!1168324 (=> (not res!527526) (not e!748889))))

(assert (=> b!1168324 (= res!527526 (dynLambda!5074 lambda!47902 (h!16920 lt!398606)))))

(declare-fun b!1168325 () Bool)

(assert (=> b!1168325 (= e!748889 (forall!3024 (t!110333 lt!398606) lambda!47902))))

(assert (= (and d!334108 (not res!527525)) b!1168324))

(assert (= (and b!1168324 res!527526) b!1168325))

(declare-fun b_lambda!34893 () Bool)

(assert (=> (not b_lambda!34893) (not b!1168324)))

(declare-fun m!1340451 () Bool)

(assert (=> b!1168324 m!1340451))

(declare-fun m!1340453 () Bool)

(assert (=> b!1168325 m!1340453))

(assert (=> d!332856 d!334108))

(assert (=> d!332856 d!333086))

(declare-fun d!334110 () Bool)

(declare-fun lt!400136 () Bool)

(assert (=> d!334110 (= lt!400136 (isEmpty!7011 (list!4243 (_2!6858 lt!399229))))))

(assert (=> d!334110 (= lt!400136 (isEmpty!7012 (c!194628 (_2!6858 lt!399229))))))

(assert (=> d!334110 (= (isEmpty!7005 (_2!6858 lt!399229)) lt!400136)))

(declare-fun bs!285339 () Bool)

(assert (= bs!285339 d!334110))

(declare-fun m!1340455 () Bool)

(assert (=> bs!285339 m!1340455))

(assert (=> bs!285339 m!1340455))

(declare-fun m!1340457 () Bool)

(assert (=> bs!285339 m!1340457))

(declare-fun m!1340459 () Bool)

(assert (=> bs!285339 m!1340459))

(assert (=> b!1166445 d!334110))

(assert (=> b!1166065 d!332790))

(declare-fun d!334112 () Bool)

(declare-fun lt!400137 () Int)

(assert (=> d!334112 (>= lt!400137 0)))

(declare-fun e!748890 () Int)

(assert (=> d!334112 (= lt!400137 e!748890)))

(declare-fun c!195103 () Bool)

(assert (=> d!334112 (= c!195103 ((_ is Nil!11519) lt!399219))))

(assert (=> d!334112 (= (size!9071 lt!399219) lt!400137)))

(declare-fun b!1168326 () Bool)

(assert (=> b!1168326 (= e!748890 0)))

(declare-fun b!1168327 () Bool)

(assert (=> b!1168327 (= e!748890 (+ 1 (size!9071 (t!110333 lt!399219))))))

(assert (= (and d!334112 c!195103) b!1168326))

(assert (= (and d!334112 (not c!195103)) b!1168327))

(declare-fun m!1340461 () Bool)

(assert (=> b!1168327 m!1340461))

(assert (=> b!1166391 d!334112))

(declare-fun d!334114 () Bool)

(declare-fun c!195104 () Bool)

(assert (=> d!334114 (= c!195104 ((_ is Nil!11519) lt!399214))))

(declare-fun e!748891 () (InoxSet Token!3676))

(assert (=> d!334114 (= (content!1608 lt!399214) e!748891)))

(declare-fun b!1168328 () Bool)

(assert (=> b!1168328 (= e!748891 ((as const (Array Token!3676 Bool)) false))))

(declare-fun b!1168329 () Bool)

(assert (=> b!1168329 (= e!748891 ((_ map or) (store ((as const (Array Token!3676 Bool)) false) (h!16920 lt!399214) true) (content!1608 (t!110333 lt!399214))))))

(assert (= (and d!334114 c!195104) b!1168328))

(assert (= (and d!334114 (not c!195104)) b!1168329))

(declare-fun m!1340463 () Bool)

(assert (=> b!1168329 m!1340463))

(declare-fun m!1340465 () Bool)

(assert (=> b!1168329 m!1340465))

(assert (=> d!332864 d!334114))

(declare-fun d!334116 () Bool)

(declare-fun c!195105 () Bool)

(assert (=> d!334116 (= c!195105 ((_ is Nil!11519) lt!398622))))

(declare-fun e!748892 () (InoxSet Token!3676))

(assert (=> d!334116 (= (content!1608 lt!398622) e!748892)))

(declare-fun b!1168330 () Bool)

(assert (=> b!1168330 (= e!748892 ((as const (Array Token!3676 Bool)) false))))

(declare-fun b!1168331 () Bool)

(assert (=> b!1168331 (= e!748892 ((_ map or) (store ((as const (Array Token!3676 Bool)) false) (h!16920 lt!398622) true) (content!1608 (t!110333 lt!398622))))))

(assert (= (and d!334116 c!195105) b!1168330))

(assert (= (and d!334116 (not c!195105)) b!1168331))

(declare-fun m!1340467 () Bool)

(assert (=> b!1168331 m!1340467))

(assert (=> b!1168331 m!1337259))

(assert (=> d!332864 d!334116))

(assert (=> d!332766 d!333086))

(declare-fun d!334118 () Bool)

(assert (=> d!334118 (= (tail!1686 (drop!482 lt!398620 0)) (t!110333 (drop!482 lt!398620 0)))))

(assert (=> d!332890 d!334118))

(assert (=> d!332890 d!332872))

(declare-fun b!1168332 () Bool)

(declare-fun e!748896 () Int)

(declare-fun call!82258 () Int)

(assert (=> b!1168332 (= e!748896 call!82258)))

(declare-fun b!1168333 () Bool)

(declare-fun e!748895 () List!11543)

(declare-fun e!748893 () List!11543)

(assert (=> b!1168333 (= e!748895 e!748893)))

(declare-fun c!195109 () Bool)

(assert (=> b!1168333 (= c!195109 (<= (+ 0 1) 0))))

(declare-fun b!1168334 () Bool)

(declare-fun e!748897 () Int)

(assert (=> b!1168334 (= e!748896 e!748897)))

(declare-fun c!195106 () Bool)

(assert (=> b!1168334 (= c!195106 (>= (+ 0 1) call!82258))))

(declare-fun b!1168335 () Bool)

(declare-fun e!748894 () Bool)

(declare-fun lt!400138 () List!11543)

(assert (=> b!1168335 (= e!748894 (= (size!9071 lt!400138) e!748896))))

(declare-fun c!195107 () Bool)

(assert (=> b!1168335 (= c!195107 (<= (+ 0 1) 0))))

(declare-fun b!1168336 () Bool)

(assert (=> b!1168336 (= e!748895 Nil!11519)))

(declare-fun b!1168337 () Bool)

(assert (=> b!1168337 (= e!748897 (- call!82258 (+ 0 1)))))

(declare-fun b!1168338 () Bool)

(assert (=> b!1168338 (= e!748893 lt!398620)))

(declare-fun b!1168340 () Bool)

(assert (=> b!1168340 (= e!748893 (drop!482 (t!110333 lt!398620) (- (+ 0 1) 1)))))

(declare-fun bm!82253 () Bool)

(assert (=> bm!82253 (= call!82258 (size!9071 lt!398620))))

(declare-fun d!334120 () Bool)

(assert (=> d!334120 e!748894))

(declare-fun res!527527 () Bool)

(assert (=> d!334120 (=> (not res!527527) (not e!748894))))

(assert (=> d!334120 (= res!527527 (= ((_ map implies) (content!1608 lt!400138) (content!1608 lt!398620)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334120 (= lt!400138 e!748895)))

(declare-fun c!195108 () Bool)

(assert (=> d!334120 (= c!195108 ((_ is Nil!11519) lt!398620))))

(assert (=> d!334120 (= (drop!482 lt!398620 (+ 0 1)) lt!400138)))

(declare-fun b!1168339 () Bool)

(assert (=> b!1168339 (= e!748897 0)))

(assert (= (and d!334120 c!195108) b!1168336))

(assert (= (and d!334120 (not c!195108)) b!1168333))

(assert (= (and b!1168333 c!195109) b!1168338))

(assert (= (and b!1168333 (not c!195109)) b!1168340))

(assert (= (and d!334120 res!527527) b!1168335))

(assert (= (and b!1168335 c!195107) b!1168332))

(assert (= (and b!1168335 (not c!195107)) b!1168334))

(assert (= (and b!1168334 c!195106) b!1168339))

(assert (= (and b!1168334 (not c!195106)) b!1168337))

(assert (= (or b!1168332 b!1168334 b!1168337) bm!82253))

(declare-fun m!1340469 () Bool)

(assert (=> b!1168335 m!1340469))

(declare-fun m!1340471 () Bool)

(assert (=> b!1168340 m!1340471))

(assert (=> bm!82253 m!1335451))

(declare-fun m!1340473 () Bool)

(assert (=> d!334120 m!1340473))

(assert (=> d!334120 m!1336477))

(assert (=> d!332890 d!334120))

(declare-fun d!334122 () Bool)

(assert (=> d!334122 (= (tail!1686 (drop!482 lt!398620 0)) (drop!482 lt!398620 (+ 0 1)))))

(assert (=> d!334122 true))

(declare-fun _$28!426 () Unit!17605)

(assert (=> d!334122 (= (choose!7531 lt!398620 0) _$28!426)))

(declare-fun bs!285340 () Bool)

(assert (= bs!285340 d!334122))

(assert (=> bs!285340 m!1335327))

(assert (=> bs!285340 m!1335327))

(assert (=> bs!285340 m!1336585))

(assert (=> bs!285340 m!1336587))

(assert (=> d!332890 d!334122))

(declare-fun d!334124 () Bool)

(declare-fun res!527528 () Bool)

(declare-fun e!748898 () Bool)

(assert (=> d!334124 (=> res!527528 e!748898)))

(assert (=> d!334124 (= res!527528 ((_ is Nil!11519) (t!110333 lt!398606)))))

(assert (=> d!334124 (= (forall!3024 (t!110333 lt!398606) lambda!47872) e!748898)))

(declare-fun b!1168341 () Bool)

(declare-fun e!748899 () Bool)

(assert (=> b!1168341 (= e!748898 e!748899)))

(declare-fun res!527529 () Bool)

(assert (=> b!1168341 (=> (not res!527529) (not e!748899))))

(assert (=> b!1168341 (= res!527529 (dynLambda!5074 lambda!47872 (h!16920 (t!110333 lt!398606))))))

(declare-fun b!1168342 () Bool)

(assert (=> b!1168342 (= e!748899 (forall!3024 (t!110333 (t!110333 lt!398606)) lambda!47872))))

(assert (= (and d!334124 (not res!527528)) b!1168341))

(assert (= (and b!1168341 res!527529) b!1168342))

(declare-fun b_lambda!34895 () Bool)

(assert (=> (not b_lambda!34895) (not b!1168341)))

(declare-fun m!1340475 () Bool)

(assert (=> b!1168341 m!1340475))

(declare-fun m!1340477 () Bool)

(assert (=> b!1168342 m!1340477))

(assert (=> d!332712 d!334124))

(assert (=> d!332712 d!333086))

(declare-fun d!334126 () Bool)

(assert (=> d!334126 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398998)))

(declare-fun lt!400139 () Unit!17605)

(assert (=> d!334126 (= lt!400139 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!399010 lt!398998))))

(assert (=> d!334126 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334126 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!399010 lt!398998) lt!400139)))

(declare-fun bs!285341 () Bool)

(assert (= bs!285341 d!334126))

(assert (=> bs!285341 m!1336053))

(declare-fun m!1340479 () Bool)

(assert (=> bs!285341 m!1340479))

(assert (=> bs!285341 m!1335511))

(assert (=> b!1166167 d!334126))

(declare-fun d!334128 () Bool)

(assert (=> d!334128 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398994)))

(declare-fun lt!400140 () Unit!17605)

(assert (=> d!334128 (= lt!400140 (choose!7529 Lexer!1700 (rules!9572 thiss!10527) lt!399019 lt!398994))))

(assert (=> d!334128 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334128 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!289 Lexer!1700 (rules!9572 thiss!10527) lt!399019 lt!398994) lt!400140)))

(declare-fun bs!285342 () Bool)

(assert (= bs!285342 d!334128))

(assert (=> bs!285342 m!1336063))

(declare-fun m!1340481 () Bool)

(assert (=> bs!285342 m!1340481))

(assert (=> bs!285342 m!1335511))

(assert (=> b!1166167 d!334128))

(declare-fun b!1168343 () Bool)

(declare-fun e!748903 () Int)

(declare-fun call!82259 () Int)

(assert (=> b!1168343 (= e!748903 call!82259)))

(declare-fun b!1168344 () Bool)

(declare-fun e!748902 () List!11543)

(declare-fun e!748900 () List!11543)

(assert (=> b!1168344 (= e!748902 e!748900)))

(declare-fun c!195113 () Bool)

(assert (=> b!1168344 (= c!195113 (<= (+ lt!398993 1) 0))))

(declare-fun b!1168345 () Bool)

(declare-fun e!748904 () Int)

(assert (=> b!1168345 (= e!748903 e!748904)))

(declare-fun c!195110 () Bool)

(assert (=> b!1168345 (= c!195110 (>= (+ lt!398993 1) call!82259))))

(declare-fun b!1168346 () Bool)

(declare-fun e!748901 () Bool)

(declare-fun lt!400141 () List!11543)

(assert (=> b!1168346 (= e!748901 (= (size!9071 lt!400141) e!748903))))

(declare-fun c!195111 () Bool)

(assert (=> b!1168346 (= c!195111 (<= (+ lt!398993 1) 0))))

(declare-fun b!1168347 () Bool)

(assert (=> b!1168347 (= e!748902 Nil!11519)))

(declare-fun b!1168348 () Bool)

(assert (=> b!1168348 (= e!748904 (- call!82259 (+ lt!398993 1)))))

(declare-fun b!1168349 () Bool)

(assert (=> b!1168349 (= e!748900 lt!398997)))

(declare-fun b!1168351 () Bool)

(assert (=> b!1168351 (= e!748900 (drop!482 (t!110333 lt!398997) (- (+ lt!398993 1) 1)))))

(declare-fun bm!82254 () Bool)

(assert (=> bm!82254 (= call!82259 (size!9071 lt!398997))))

(declare-fun d!334130 () Bool)

(assert (=> d!334130 e!748901))

(declare-fun res!527530 () Bool)

(assert (=> d!334130 (=> (not res!527530) (not e!748901))))

(assert (=> d!334130 (= res!527530 (= ((_ map implies) (content!1608 lt!400141) (content!1608 lt!398997)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334130 (= lt!400141 e!748902)))

(declare-fun c!195112 () Bool)

(assert (=> d!334130 (= c!195112 ((_ is Nil!11519) lt!398997))))

(assert (=> d!334130 (= (drop!482 lt!398997 (+ lt!398993 1)) lt!400141)))

(declare-fun b!1168350 () Bool)

(assert (=> b!1168350 (= e!748904 0)))

(assert (= (and d!334130 c!195112) b!1168347))

(assert (= (and d!334130 (not c!195112)) b!1168344))

(assert (= (and b!1168344 c!195113) b!1168349))

(assert (= (and b!1168344 (not c!195113)) b!1168351))

(assert (= (and d!334130 res!527530) b!1168346))

(assert (= (and b!1168346 c!195111) b!1168343))

(assert (= (and b!1168346 (not c!195111)) b!1168345))

(assert (= (and b!1168345 c!195110) b!1168350))

(assert (= (and b!1168345 (not c!195110)) b!1168348))

(assert (= (or b!1168343 b!1168345 b!1168348) bm!82254))

(declare-fun m!1340483 () Bool)

(assert (=> b!1168346 m!1340483))

(declare-fun m!1340485 () Bool)

(assert (=> b!1168351 m!1340485))

(declare-fun m!1340487 () Bool)

(assert (=> bm!82254 m!1340487))

(declare-fun m!1340489 () Bool)

(assert (=> d!334130 m!1340489))

(declare-fun m!1340491 () Bool)

(assert (=> d!334130 m!1340491))

(assert (=> b!1166167 d!334130))

(declare-fun b!1168352 () Bool)

(declare-fun e!748908 () Int)

(declare-fun call!82260 () Int)

(assert (=> b!1168352 (= e!748908 call!82260)))

(declare-fun b!1168353 () Bool)

(declare-fun e!748907 () List!11543)

(declare-fun e!748905 () List!11543)

(assert (=> b!1168353 (= e!748907 e!748905)))

(declare-fun c!195117 () Bool)

(assert (=> b!1168353 (= c!195117 (<= (+ 0 1) 0))))

(declare-fun b!1168354 () Bool)

(declare-fun e!748909 () Int)

(assert (=> b!1168354 (= e!748908 e!748909)))

(declare-fun c!195114 () Bool)

(assert (=> b!1168354 (= c!195114 (>= (+ 0 1) call!82260))))

(declare-fun b!1168355 () Bool)

(declare-fun e!748906 () Bool)

(declare-fun lt!400142 () List!11543)

(assert (=> b!1168355 (= e!748906 (= (size!9071 lt!400142) e!748908))))

(declare-fun c!195115 () Bool)

(assert (=> b!1168355 (= c!195115 (<= (+ 0 1) 0))))

(declare-fun b!1168356 () Bool)

(assert (=> b!1168356 (= e!748907 Nil!11519)))

(declare-fun b!1168357 () Bool)

(assert (=> b!1168357 (= e!748909 (- call!82260 (+ 0 1)))))

(declare-fun b!1168358 () Bool)

(assert (=> b!1168358 (= e!748905 lt!399013)))

(declare-fun b!1168360 () Bool)

(assert (=> b!1168360 (= e!748905 (drop!482 (t!110333 lt!399013) (- (+ 0 1) 1)))))

(declare-fun bm!82255 () Bool)

(assert (=> bm!82255 (= call!82260 (size!9071 lt!399013))))

(declare-fun d!334132 () Bool)

(assert (=> d!334132 e!748906))

(declare-fun res!527531 () Bool)

(assert (=> d!334132 (=> (not res!527531) (not e!748906))))

(assert (=> d!334132 (= res!527531 (= ((_ map implies) (content!1608 lt!400142) (content!1608 lt!399013)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334132 (= lt!400142 e!748907)))

(declare-fun c!195116 () Bool)

(assert (=> d!334132 (= c!195116 ((_ is Nil!11519) lt!399013))))

(assert (=> d!334132 (= (drop!482 lt!399013 (+ 0 1)) lt!400142)))

(declare-fun b!1168359 () Bool)

(assert (=> b!1168359 (= e!748909 0)))

(assert (= (and d!334132 c!195116) b!1168356))

(assert (= (and d!334132 (not c!195116)) b!1168353))

(assert (= (and b!1168353 c!195117) b!1168358))

(assert (= (and b!1168353 (not c!195117)) b!1168360))

(assert (= (and d!334132 res!527531) b!1168355))

(assert (= (and b!1168355 c!195115) b!1168352))

(assert (= (and b!1168355 (not c!195115)) b!1168354))

(assert (= (and b!1168354 c!195114) b!1168359))

(assert (= (and b!1168354 (not c!195114)) b!1168357))

(assert (= (or b!1168352 b!1168354 b!1168357) bm!82255))

(declare-fun m!1340493 () Bool)

(assert (=> b!1168355 m!1340493))

(declare-fun m!1340495 () Bool)

(assert (=> b!1168360 m!1340495))

(declare-fun m!1340497 () Bool)

(assert (=> bm!82255 m!1340497))

(declare-fun m!1340499 () Bool)

(assert (=> d!334132 m!1340499))

(declare-fun m!1340501 () Bool)

(assert (=> d!334132 m!1340501))

(assert (=> b!1166167 d!334132))

(declare-fun d!334134 () Bool)

(assert (=> d!334134 (= (head!2102 (drop!482 lt!398991 0)) (h!16920 (drop!482 lt!398991 0)))))

(assert (=> b!1166167 d!334134))

(declare-fun d!334136 () Bool)

(declare-fun lt!400144 () Bool)

(declare-fun e!748911 () Bool)

(assert (=> d!334136 (= lt!400144 e!748911)))

(declare-fun res!527532 () Bool)

(assert (=> d!334136 (=> (not res!527532) (not e!748911))))

(assert (=> d!334136 (= res!527532 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 lt!398609 (+ 0 1))))))) (list!4239 (singletonSeq!668 (apply!2479 lt!398609 (+ 0 1))))))))

(declare-fun e!748910 () Bool)

(assert (=> d!334136 (= lt!400144 e!748910)))

(declare-fun res!527533 () Bool)

(assert (=> d!334136 (=> (not res!527533) (not e!748910))))

(declare-fun lt!400143 () tuple2!12022)

(assert (=> d!334136 (= res!527533 (= (size!9067 (_1!6858 lt!400143)) 1))))

(assert (=> d!334136 (= lt!400143 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 lt!398609 (+ 0 1))))))))

(assert (=> d!334136 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334136 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 lt!398609 (+ 0 1))) lt!400144)))

(declare-fun b!1168361 () Bool)

(declare-fun res!527534 () Bool)

(assert (=> b!1168361 (=> (not res!527534) (not e!748910))))

(assert (=> b!1168361 (= res!527534 (= (apply!2479 (_1!6858 lt!400143) 0) (apply!2479 lt!398609 (+ 0 1))))))

(declare-fun b!1168362 () Bool)

(assert (=> b!1168362 (= e!748910 (isEmpty!7005 (_2!6858 lt!400143)))))

(declare-fun b!1168363 () Bool)

(assert (=> b!1168363 (= e!748911 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 lt!398609 (+ 0 1))))))))))

(assert (= (and d!334136 res!527533) b!1168361))

(assert (= (and b!1168361 res!527534) b!1168362))

(assert (= (and d!334136 res!527532) b!1168363))

(assert (=> d!334136 m!1335511))

(declare-fun m!1340503 () Bool)

(assert (=> d!334136 m!1340503))

(declare-fun m!1340505 () Bool)

(assert (=> d!334136 m!1340505))

(declare-fun m!1340507 () Bool)

(assert (=> d!334136 m!1340507))

(declare-fun m!1340509 () Bool)

(assert (=> d!334136 m!1340509))

(declare-fun m!1340511 () Bool)

(assert (=> d!334136 m!1340511))

(declare-fun m!1340513 () Bool)

(assert (=> d!334136 m!1340513))

(assert (=> d!334136 m!1340509))

(assert (=> d!334136 m!1340503))

(assert (=> d!334136 m!1336073))

(assert (=> d!334136 m!1340509))

(declare-fun m!1340515 () Bool)

(assert (=> b!1168361 m!1340515))

(declare-fun m!1340517 () Bool)

(assert (=> b!1168362 m!1340517))

(assert (=> b!1168363 m!1336073))

(assert (=> b!1168363 m!1340509))

(assert (=> b!1168363 m!1340509))

(assert (=> b!1168363 m!1340503))

(assert (=> b!1168363 m!1340503))

(assert (=> b!1168363 m!1340505))

(declare-fun m!1340519 () Bool)

(assert (=> b!1168363 m!1340519))

(assert (=> b!1166167 d!334136))

(declare-fun d!334138 () Bool)

(declare-fun lt!400145 () BalanceConc!7574)

(assert (=> d!334138 (= (list!4243 lt!400145) (originalCharacters!2561 (apply!2479 lt!398609 (+ 0 1))))))

(assert (=> d!334138 (= lt!400145 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 lt!398609 (+ 0 1))))) (value!65196 (apply!2479 lt!398609 (+ 0 1)))))))

(assert (=> d!334138 (= (charsOf!1068 (apply!2479 lt!398609 (+ 0 1))) lt!400145)))

(declare-fun b_lambda!34897 () Bool)

(assert (=> (not b_lambda!34897) (not d!334138)))

(declare-fun t!110440 () Bool)

(declare-fun tb!65901 () Bool)

(assert (=> (and b!1166515 (= (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 lt!398609 (+ 0 1)))))) t!110440) tb!65901))

(declare-fun b!1168364 () Bool)

(declare-fun e!748912 () Bool)

(declare-fun tp!334332 () Bool)

(assert (=> b!1168364 (= e!748912 (and (inv!15175 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 lt!398609 (+ 0 1))))) (value!65196 (apply!2479 lt!398609 (+ 0 1)))))) tp!334332))))

(declare-fun result!78872 () Bool)

(assert (=> tb!65901 (= result!78872 (and (inv!15176 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 lt!398609 (+ 0 1))))) (value!65196 (apply!2479 lt!398609 (+ 0 1))))) e!748912))))

(assert (= tb!65901 b!1168364))

(declare-fun m!1340521 () Bool)

(assert (=> b!1168364 m!1340521))

(declare-fun m!1340523 () Bool)

(assert (=> tb!65901 m!1340523))

(assert (=> d!334138 t!110440))

(declare-fun b_and!80701 () Bool)

(assert (= b_and!80699 (and (=> t!110440 result!78872) b_and!80701)))

(declare-fun m!1340525 () Bool)

(assert (=> d!334138 m!1340525))

(declare-fun m!1340527 () Bool)

(assert (=> d!334138 m!1340527))

(assert (=> b!1166167 d!334138))

(declare-fun d!334140 () Bool)

(assert (=> d!334140 (= (tail!1686 (drop!482 lt!398997 lt!398993)) (t!110333 (drop!482 lt!398997 lt!398993)))))

(assert (=> b!1166167 d!334140))

(declare-fun d!334142 () Bool)

(declare-fun lt!400146 () Token!3676)

(assert (=> d!334142 (contains!1994 lt!399015 lt!400146)))

(declare-fun e!748914 () Token!3676)

(assert (=> d!334142 (= lt!400146 e!748914)))

(declare-fun c!195118 () Bool)

(assert (=> d!334142 (= c!195118 (= lt!399018 0))))

(declare-fun e!748913 () Bool)

(assert (=> d!334142 e!748913))

(declare-fun res!527535 () Bool)

(assert (=> d!334142 (=> (not res!527535) (not e!748913))))

(assert (=> d!334142 (= res!527535 (<= 0 lt!399018))))

(assert (=> d!334142 (= (apply!2480 lt!399015 lt!399018) lt!400146)))

(declare-fun b!1168365 () Bool)

(assert (=> b!1168365 (= e!748913 (< lt!399018 (size!9071 lt!399015)))))

(declare-fun b!1168366 () Bool)

(assert (=> b!1168366 (= e!748914 (head!2102 lt!399015))))

(declare-fun b!1168367 () Bool)

(assert (=> b!1168367 (= e!748914 (apply!2480 (tail!1686 lt!399015) (- lt!399018 1)))))

(assert (= (and d!334142 res!527535) b!1168365))

(assert (= (and d!334142 c!195118) b!1168366))

(assert (= (and d!334142 (not c!195118)) b!1168367))

(declare-fun m!1340529 () Bool)

(assert (=> d!334142 m!1340529))

(declare-fun m!1340531 () Bool)

(assert (=> b!1168365 m!1340531))

(declare-fun m!1340533 () Bool)

(assert (=> b!1168366 m!1340533))

(declare-fun m!1340535 () Bool)

(assert (=> b!1168367 m!1340535))

(assert (=> b!1168367 m!1340535))

(declare-fun m!1340537 () Bool)

(assert (=> b!1168367 m!1340537))

(assert (=> b!1166167 d!334142))

(declare-fun d!334144 () Bool)

(assert (=> d!334144 (= (head!2102 (drop!482 lt!399015 lt!399018)) (apply!2480 lt!399015 lt!399018))))

(declare-fun lt!400147 () Unit!17605)

(assert (=> d!334144 (= lt!400147 (choose!7528 lt!399015 lt!399018))))

(declare-fun e!748915 () Bool)

(assert (=> d!334144 e!748915))

(declare-fun res!527536 () Bool)

(assert (=> d!334144 (=> (not res!527536) (not e!748915))))

(assert (=> d!334144 (= res!527536 (>= lt!399018 0))))

(assert (=> d!334144 (= (lemmaDropApply!371 lt!399015 lt!399018) lt!400147)))

(declare-fun b!1168368 () Bool)

(assert (=> b!1168368 (= e!748915 (< lt!399018 (size!9071 lt!399015)))))

(assert (= (and d!334144 res!527536) b!1168368))

(assert (=> d!334144 m!1336059))

(assert (=> d!334144 m!1336059))

(assert (=> d!334144 m!1336071))

(assert (=> d!334144 m!1336083))

(declare-fun m!1340539 () Bool)

(assert (=> d!334144 m!1340539))

(assert (=> b!1168368 m!1340531))

(assert (=> b!1166167 d!334144))

(declare-fun d!334146 () Bool)

(declare-fun lt!400148 () Token!3676)

(assert (=> d!334146 (contains!1994 lt!398991 lt!400148)))

(declare-fun e!748917 () Token!3676)

(assert (=> d!334146 (= lt!400148 e!748917)))

(declare-fun c!195119 () Bool)

(assert (=> d!334146 (= c!195119 (= 0 0))))

(declare-fun e!748916 () Bool)

(assert (=> d!334146 e!748916))

(declare-fun res!527537 () Bool)

(assert (=> d!334146 (=> (not res!527537) (not e!748916))))

(assert (=> d!334146 (= res!527537 (<= 0 0))))

(assert (=> d!334146 (= (apply!2480 lt!398991 0) lt!400148)))

(declare-fun b!1168369 () Bool)

(assert (=> b!1168369 (= e!748916 (< 0 (size!9071 lt!398991)))))

(declare-fun b!1168370 () Bool)

(assert (=> b!1168370 (= e!748917 (head!2102 lt!398991))))

(declare-fun b!1168371 () Bool)

(assert (=> b!1168371 (= e!748917 (apply!2480 (tail!1686 lt!398991) (- 0 1)))))

(assert (= (and d!334146 res!527537) b!1168369))

(assert (= (and d!334146 c!195119) b!1168370))

(assert (= (and d!334146 (not c!195119)) b!1168371))

(declare-fun m!1340541 () Bool)

(assert (=> d!334146 m!1340541))

(declare-fun m!1340543 () Bool)

(assert (=> b!1168369 m!1340543))

(declare-fun m!1340545 () Bool)

(assert (=> b!1168370 m!1340545))

(declare-fun m!1340547 () Bool)

(assert (=> b!1168371 m!1340547))

(assert (=> b!1168371 m!1340547))

(declare-fun m!1340549 () Bool)

(assert (=> b!1168371 m!1340549))

(assert (=> b!1166167 d!334146))

(declare-fun d!334148 () Bool)

(assert (=> d!334148 (= (tail!1686 (drop!482 lt!399013 0)) (drop!482 lt!399013 (+ 0 1)))))

(declare-fun lt!400149 () Unit!17605)

(assert (=> d!334148 (= lt!400149 (choose!7531 lt!399013 0))))

(declare-fun e!748918 () Bool)

(assert (=> d!334148 e!748918))

(declare-fun res!527538 () Bool)

(assert (=> d!334148 (=> (not res!527538) (not e!748918))))

(assert (=> d!334148 (= res!527538 (>= 0 0))))

(assert (=> d!334148 (= (lemmaDropTail!359 lt!399013 0) lt!400149)))

(declare-fun b!1168372 () Bool)

(assert (=> b!1168372 (= e!748918 (< 0 (size!9071 lt!399013)))))

(assert (= (and d!334148 res!527538) b!1168372))

(assert (=> d!334148 m!1336049))

(assert (=> d!334148 m!1336049))

(assert (=> d!334148 m!1336051))

(assert (=> d!334148 m!1336081))

(declare-fun m!1340551 () Bool)

(assert (=> d!334148 m!1340551))

(assert (=> b!1168372 m!1340497))

(assert (=> b!1166167 d!334148))

(declare-fun d!334150 () Bool)

(assert (=> d!334150 (= (tail!1686 (drop!482 lt!398997 lt!398993)) (drop!482 lt!398997 (+ lt!398993 1)))))

(declare-fun lt!400150 () Unit!17605)

(assert (=> d!334150 (= lt!400150 (choose!7531 lt!398997 lt!398993))))

(declare-fun e!748919 () Bool)

(assert (=> d!334150 e!748919))

(declare-fun res!527539 () Bool)

(assert (=> d!334150 (=> (not res!527539) (not e!748919))))

(assert (=> d!334150 (= res!527539 (>= lt!398993 0))))

(assert (=> d!334150 (= (lemmaDropTail!359 lt!398997 lt!398993) lt!400150)))

(declare-fun b!1168373 () Bool)

(assert (=> b!1168373 (= e!748919 (< lt!398993 (size!9071 lt!398997)))))

(assert (= (and d!334150 res!527539) b!1168373))

(assert (=> d!334150 m!1336043))

(assert (=> d!334150 m!1336043))

(assert (=> d!334150 m!1336045))

(assert (=> d!334150 m!1336087))

(declare-fun m!1340553 () Bool)

(assert (=> d!334150 m!1340553))

(assert (=> b!1168373 m!1340487))

(assert (=> b!1166167 d!334150))

(declare-fun d!334152 () Bool)

(declare-fun lt!400152 () Bool)

(declare-fun e!748921 () Bool)

(assert (=> d!334152 (= lt!400152 e!748921)))

(declare-fun res!527540 () Bool)

(assert (=> d!334152 (=> (not res!527540) (not e!748921))))

(assert (=> d!334152 (= res!527540 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 lt!398609 0)))))) (list!4239 (singletonSeq!668 (apply!2479 lt!398609 0)))))))

(declare-fun e!748920 () Bool)

(assert (=> d!334152 (= lt!400152 e!748920)))

(declare-fun res!527541 () Bool)

(assert (=> d!334152 (=> (not res!527541) (not e!748920))))

(declare-fun lt!400151 () tuple2!12022)

(assert (=> d!334152 (= res!527541 (= (size!9067 (_1!6858 lt!400151)) 1))))

(assert (=> d!334152 (= lt!400151 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 lt!398609 0)))))))

(assert (=> d!334152 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334152 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (apply!2479 lt!398609 0)) lt!400152)))

(declare-fun b!1168374 () Bool)

(declare-fun res!527542 () Bool)

(assert (=> b!1168374 (=> (not res!527542) (not e!748920))))

(assert (=> b!1168374 (= res!527542 (= (apply!2479 (_1!6858 lt!400151) 0) (apply!2479 lt!398609 0)))))

(declare-fun b!1168375 () Bool)

(assert (=> b!1168375 (= e!748920 (isEmpty!7005 (_2!6858 lt!400151)))))

(declare-fun b!1168376 () Bool)

(assert (=> b!1168376 (= e!748921 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (apply!2479 lt!398609 0)))))))))

(assert (= (and d!334152 res!527541) b!1168374))

(assert (= (and b!1168374 res!527542) b!1168375))

(assert (= (and d!334152 res!527540) b!1168376))

(assert (=> d!334152 m!1335511))

(declare-fun m!1340555 () Bool)

(assert (=> d!334152 m!1340555))

(declare-fun m!1340557 () Bool)

(assert (=> d!334152 m!1340557))

(declare-fun m!1340559 () Bool)

(assert (=> d!334152 m!1340559))

(declare-fun m!1340561 () Bool)

(assert (=> d!334152 m!1340561))

(declare-fun m!1340563 () Bool)

(assert (=> d!334152 m!1340563))

(declare-fun m!1340565 () Bool)

(assert (=> d!334152 m!1340565))

(assert (=> d!334152 m!1340561))

(assert (=> d!334152 m!1340555))

(assert (=> d!334152 m!1336067))

(assert (=> d!334152 m!1340561))

(declare-fun m!1340567 () Bool)

(assert (=> b!1168374 m!1340567))

(declare-fun m!1340569 () Bool)

(assert (=> b!1168375 m!1340569))

(assert (=> b!1168376 m!1336067))

(assert (=> b!1168376 m!1340561))

(assert (=> b!1168376 m!1340561))

(assert (=> b!1168376 m!1340555))

(assert (=> b!1168376 m!1340555))

(assert (=> b!1168376 m!1340557))

(declare-fun m!1340571 () Bool)

(assert (=> b!1168376 m!1340571))

(assert (=> b!1166167 d!334152))

(declare-fun d!334154 () Bool)

(assert (=> d!334154 (= (head!2102 (drop!482 lt!399015 lt!399018)) (h!16920 (drop!482 lt!399015 lt!399018)))))

(assert (=> b!1166167 d!334154))

(declare-fun d!334156 () Bool)

(declare-fun lt!400154 () Bool)

(declare-fun e!748923 () Bool)

(assert (=> d!334156 (= lt!400154 e!748923)))

(declare-fun res!527543 () Bool)

(assert (=> d!334156 (=> (not res!527543) (not e!748923))))

(assert (=> d!334156 (= res!527543 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398994))))) (list!4239 (singletonSeq!668 lt!398994))))))

(declare-fun e!748922 () Bool)

(assert (=> d!334156 (= lt!400154 e!748922)))

(declare-fun res!527544 () Bool)

(assert (=> d!334156 (=> (not res!527544) (not e!748922))))

(declare-fun lt!400153 () tuple2!12022)

(assert (=> d!334156 (= res!527544 (= (size!9067 (_1!6858 lt!400153)) 1))))

(assert (=> d!334156 (= lt!400153 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398994))))))

(assert (=> d!334156 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334156 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398994) lt!400154)))

(declare-fun b!1168377 () Bool)

(declare-fun res!527545 () Bool)

(assert (=> b!1168377 (=> (not res!527545) (not e!748922))))

(assert (=> b!1168377 (= res!527545 (= (apply!2479 (_1!6858 lt!400153) 0) lt!398994))))

(declare-fun b!1168378 () Bool)

(assert (=> b!1168378 (= e!748922 (isEmpty!7005 (_2!6858 lt!400153)))))

(declare-fun b!1168379 () Bool)

(assert (=> b!1168379 (= e!748923 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398994))))))))

(assert (= (and d!334156 res!527544) b!1168377))

(assert (= (and b!1168377 res!527545) b!1168378))

(assert (= (and d!334156 res!527543) b!1168379))

(assert (=> d!334156 m!1335511))

(declare-fun m!1340573 () Bool)

(assert (=> d!334156 m!1340573))

(declare-fun m!1340575 () Bool)

(assert (=> d!334156 m!1340575))

(declare-fun m!1340577 () Bool)

(assert (=> d!334156 m!1340577))

(declare-fun m!1340579 () Bool)

(assert (=> d!334156 m!1340579))

(declare-fun m!1340581 () Bool)

(assert (=> d!334156 m!1340581))

(declare-fun m!1340583 () Bool)

(assert (=> d!334156 m!1340583))

(assert (=> d!334156 m!1340579))

(assert (=> d!334156 m!1340573))

(assert (=> d!334156 m!1340579))

(declare-fun m!1340585 () Bool)

(assert (=> b!1168377 m!1340585))

(declare-fun m!1340587 () Bool)

(assert (=> b!1168378 m!1340587))

(assert (=> b!1168379 m!1340579))

(assert (=> b!1168379 m!1340579))

(assert (=> b!1168379 m!1340573))

(assert (=> b!1168379 m!1340573))

(assert (=> b!1168379 m!1340575))

(declare-fun m!1340589 () Bool)

(assert (=> b!1168379 m!1340589))

(assert (=> b!1166167 d!334156))

(declare-fun d!334158 () Bool)

(assert (=> d!334158 (= (head!2102 (drop!482 lt!398991 0)) (apply!2480 lt!398991 0))))

(declare-fun lt!400155 () Unit!17605)

(assert (=> d!334158 (= lt!400155 (choose!7528 lt!398991 0))))

(declare-fun e!748924 () Bool)

(assert (=> d!334158 e!748924))

(declare-fun res!527546 () Bool)

(assert (=> d!334158 (=> (not res!527546) (not e!748924))))

(assert (=> d!334158 (= res!527546 (>= 0 0))))

(assert (=> d!334158 (= (lemmaDropApply!371 lt!398991 0) lt!400155)))

(declare-fun b!1168380 () Bool)

(assert (=> b!1168380 (= e!748924 (< 0 (size!9071 lt!398991)))))

(assert (= (and d!334158 res!527546) b!1168380))

(assert (=> d!334158 m!1336055))

(assert (=> d!334158 m!1336055))

(assert (=> d!334158 m!1336057))

(assert (=> d!334158 m!1336041))

(declare-fun m!1340591 () Bool)

(assert (=> d!334158 m!1340591))

(assert (=> b!1168380 m!1340543))

(assert (=> b!1166167 d!334158))

(declare-fun b!1168381 () Bool)

(declare-fun e!748928 () Int)

(declare-fun call!82261 () Int)

(assert (=> b!1168381 (= e!748928 call!82261)))

(declare-fun b!1168382 () Bool)

(declare-fun e!748927 () List!11543)

(declare-fun e!748925 () List!11543)

(assert (=> b!1168382 (= e!748927 e!748925)))

(declare-fun c!195123 () Bool)

(assert (=> b!1168382 (= c!195123 (<= 0 0))))

(declare-fun b!1168383 () Bool)

(declare-fun e!748929 () Int)

(assert (=> b!1168383 (= e!748928 e!748929)))

(declare-fun c!195120 () Bool)

(assert (=> b!1168383 (= c!195120 (>= 0 call!82261))))

(declare-fun b!1168384 () Bool)

(declare-fun e!748926 () Bool)

(declare-fun lt!400156 () List!11543)

(assert (=> b!1168384 (= e!748926 (= (size!9071 lt!400156) e!748928))))

(declare-fun c!195121 () Bool)

(assert (=> b!1168384 (= c!195121 (<= 0 0))))

(declare-fun b!1168385 () Bool)

(assert (=> b!1168385 (= e!748927 Nil!11519)))

(declare-fun b!1168386 () Bool)

(assert (=> b!1168386 (= e!748929 (- call!82261 0))))

(declare-fun b!1168387 () Bool)

(assert (=> b!1168387 (= e!748925 lt!399013)))

(declare-fun b!1168389 () Bool)

(assert (=> b!1168389 (= e!748925 (drop!482 (t!110333 lt!399013) (- 0 1)))))

(declare-fun bm!82256 () Bool)

(assert (=> bm!82256 (= call!82261 (size!9071 lt!399013))))

(declare-fun d!334160 () Bool)

(assert (=> d!334160 e!748926))

(declare-fun res!527547 () Bool)

(assert (=> d!334160 (=> (not res!527547) (not e!748926))))

(assert (=> d!334160 (= res!527547 (= ((_ map implies) (content!1608 lt!400156) (content!1608 lt!399013)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334160 (= lt!400156 e!748927)))

(declare-fun c!195122 () Bool)

(assert (=> d!334160 (= c!195122 ((_ is Nil!11519) lt!399013))))

(assert (=> d!334160 (= (drop!482 lt!399013 0) lt!400156)))

(declare-fun b!1168388 () Bool)

(assert (=> b!1168388 (= e!748929 0)))

(assert (= (and d!334160 c!195122) b!1168385))

(assert (= (and d!334160 (not c!195122)) b!1168382))

(assert (= (and b!1168382 c!195123) b!1168387))

(assert (= (and b!1168382 (not c!195123)) b!1168389))

(assert (= (and d!334160 res!527547) b!1168384))

(assert (= (and b!1168384 c!195121) b!1168381))

(assert (= (and b!1168384 (not c!195121)) b!1168383))

(assert (= (and b!1168383 c!195120) b!1168388))

(assert (= (and b!1168383 (not c!195120)) b!1168386))

(assert (= (or b!1168381 b!1168383 b!1168386) bm!82256))

(declare-fun m!1340593 () Bool)

(assert (=> b!1168384 m!1340593))

(declare-fun m!1340595 () Bool)

(assert (=> b!1168389 m!1340595))

(assert (=> bm!82256 m!1340497))

(declare-fun m!1340597 () Bool)

(assert (=> d!334160 m!1340597))

(assert (=> d!334160 m!1340501))

(assert (=> b!1166167 d!334160))

(declare-fun d!334162 () Bool)

(assert (=> d!334162 (= (separableTokensPredicate!130 Lexer!1700 (apply!2479 lt!398609 0) (apply!2479 lt!398609 (+ 0 1)) (rules!9572 thiss!10527)) (not (prefixMatchZipperSequence!91 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)) (++!2980 (charsOf!1068 (apply!2479 lt!398609 0)) (singletonSeq!669 (apply!2484 (charsOf!1068 (apply!2479 lt!398609 (+ 0 1))) 0))))))))

(declare-fun bs!285343 () Bool)

(assert (= bs!285343 d!334162))

(assert (=> bs!285343 m!1336077))

(declare-fun m!1340599 () Bool)

(assert (=> bs!285343 m!1340599))

(declare-fun m!1340601 () Bool)

(assert (=> bs!285343 m!1340601))

(declare-fun m!1340603 () Bool)

(assert (=> bs!285343 m!1340603))

(declare-fun m!1340605 () Bool)

(assert (=> bs!285343 m!1340605))

(assert (=> bs!285343 m!1336603))

(assert (=> bs!285343 m!1336073))

(assert (=> bs!285343 m!1336077))

(assert (=> bs!285343 m!1340599))

(assert (=> bs!285343 m!1340603))

(assert (=> bs!285343 m!1336603))

(assert (=> bs!285343 m!1340605))

(declare-fun m!1340607 () Bool)

(assert (=> bs!285343 m!1340607))

(assert (=> bs!285343 m!1336067))

(assert (=> bs!285343 m!1340601))

(assert (=> b!1166167 d!334162))

(declare-fun b!1168390 () Bool)

(declare-fun e!748933 () Int)

(declare-fun call!82262 () Int)

(assert (=> b!1168390 (= e!748933 call!82262)))

(declare-fun b!1168391 () Bool)

(declare-fun e!748932 () List!11543)

(declare-fun e!748930 () List!11543)

(assert (=> b!1168391 (= e!748932 e!748930)))

(declare-fun c!195127 () Bool)

(assert (=> b!1168391 (= c!195127 (<= 0 0))))

(declare-fun b!1168392 () Bool)

(declare-fun e!748934 () Int)

(assert (=> b!1168392 (= e!748933 e!748934)))

(declare-fun c!195124 () Bool)

(assert (=> b!1168392 (= c!195124 (>= 0 call!82262))))

(declare-fun b!1168393 () Bool)

(declare-fun e!748931 () Bool)

(declare-fun lt!400157 () List!11543)

(assert (=> b!1168393 (= e!748931 (= (size!9071 lt!400157) e!748933))))

(declare-fun c!195125 () Bool)

(assert (=> b!1168393 (= c!195125 (<= 0 0))))

(declare-fun b!1168394 () Bool)

(assert (=> b!1168394 (= e!748932 Nil!11519)))

(declare-fun b!1168395 () Bool)

(assert (=> b!1168395 (= e!748934 (- call!82262 0))))

(declare-fun b!1168396 () Bool)

(assert (=> b!1168396 (= e!748930 lt!398991)))

(declare-fun b!1168398 () Bool)

(assert (=> b!1168398 (= e!748930 (drop!482 (t!110333 lt!398991) (- 0 1)))))

(declare-fun bm!82257 () Bool)

(assert (=> bm!82257 (= call!82262 (size!9071 lt!398991))))

(declare-fun d!334164 () Bool)

(assert (=> d!334164 e!748931))

(declare-fun res!527548 () Bool)

(assert (=> d!334164 (=> (not res!527548) (not e!748931))))

(assert (=> d!334164 (= res!527548 (= ((_ map implies) (content!1608 lt!400157) (content!1608 lt!398991)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334164 (= lt!400157 e!748932)))

(declare-fun c!195126 () Bool)

(assert (=> d!334164 (= c!195126 ((_ is Nil!11519) lt!398991))))

(assert (=> d!334164 (= (drop!482 lt!398991 0) lt!400157)))

(declare-fun b!1168397 () Bool)

(assert (=> b!1168397 (= e!748934 0)))

(assert (= (and d!334164 c!195126) b!1168394))

(assert (= (and d!334164 (not c!195126)) b!1168391))

(assert (= (and b!1168391 c!195127) b!1168396))

(assert (= (and b!1168391 (not c!195127)) b!1168398))

(assert (= (and d!334164 res!527548) b!1168393))

(assert (= (and b!1168393 c!195125) b!1168390))

(assert (= (and b!1168393 (not c!195125)) b!1168392))

(assert (= (and b!1168392 c!195124) b!1168397))

(assert (= (and b!1168392 (not c!195124)) b!1168395))

(assert (= (or b!1168390 b!1168392 b!1168395) bm!82257))

(declare-fun m!1340609 () Bool)

(assert (=> b!1168393 m!1340609))

(declare-fun m!1340611 () Bool)

(assert (=> b!1168398 m!1340611))

(assert (=> bm!82257 m!1340543))

(declare-fun m!1340613 () Bool)

(assert (=> d!334164 m!1340613))

(declare-fun m!1340615 () Bool)

(assert (=> d!334164 m!1340615))

(assert (=> b!1166167 d!334164))

(declare-fun b!1168399 () Bool)

(declare-fun e!748938 () Int)

(declare-fun call!82263 () Int)

(assert (=> b!1168399 (= e!748938 call!82263)))

(declare-fun b!1168400 () Bool)

(declare-fun e!748937 () List!11543)

(declare-fun e!748935 () List!11543)

(assert (=> b!1168400 (= e!748937 e!748935)))

(declare-fun c!195131 () Bool)

(assert (=> b!1168400 (= c!195131 (<= lt!399018 0))))

(declare-fun b!1168401 () Bool)

(declare-fun e!748939 () Int)

(assert (=> b!1168401 (= e!748938 e!748939)))

(declare-fun c!195128 () Bool)

(assert (=> b!1168401 (= c!195128 (>= lt!399018 call!82263))))

(declare-fun b!1168402 () Bool)

(declare-fun e!748936 () Bool)

(declare-fun lt!400158 () List!11543)

(assert (=> b!1168402 (= e!748936 (= (size!9071 lt!400158) e!748938))))

(declare-fun c!195129 () Bool)

(assert (=> b!1168402 (= c!195129 (<= lt!399018 0))))

(declare-fun b!1168403 () Bool)

(assert (=> b!1168403 (= e!748937 Nil!11519)))

(declare-fun b!1168404 () Bool)

(assert (=> b!1168404 (= e!748939 (- call!82263 lt!399018))))

(declare-fun b!1168405 () Bool)

(assert (=> b!1168405 (= e!748935 lt!399015)))

(declare-fun b!1168407 () Bool)

(assert (=> b!1168407 (= e!748935 (drop!482 (t!110333 lt!399015) (- lt!399018 1)))))

(declare-fun bm!82258 () Bool)

(assert (=> bm!82258 (= call!82263 (size!9071 lt!399015))))

(declare-fun d!334166 () Bool)

(assert (=> d!334166 e!748936))

(declare-fun res!527549 () Bool)

(assert (=> d!334166 (=> (not res!527549) (not e!748936))))

(assert (=> d!334166 (= res!527549 (= ((_ map implies) (content!1608 lt!400158) (content!1608 lt!399015)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334166 (= lt!400158 e!748937)))

(declare-fun c!195130 () Bool)

(assert (=> d!334166 (= c!195130 ((_ is Nil!11519) lt!399015))))

(assert (=> d!334166 (= (drop!482 lt!399015 lt!399018) lt!400158)))

(declare-fun b!1168406 () Bool)

(assert (=> b!1168406 (= e!748939 0)))

(assert (= (and d!334166 c!195130) b!1168403))

(assert (= (and d!334166 (not c!195130)) b!1168400))

(assert (= (and b!1168400 c!195131) b!1168405))

(assert (= (and b!1168400 (not c!195131)) b!1168407))

(assert (= (and d!334166 res!527549) b!1168402))

(assert (= (and b!1168402 c!195129) b!1168399))

(assert (= (and b!1168402 (not c!195129)) b!1168401))

(assert (= (and b!1168401 c!195128) b!1168406))

(assert (= (and b!1168401 (not c!195128)) b!1168404))

(assert (= (or b!1168399 b!1168401 b!1168404) bm!82258))

(declare-fun m!1340617 () Bool)

(assert (=> b!1168402 m!1340617))

(declare-fun m!1340619 () Bool)

(assert (=> b!1168407 m!1340619))

(assert (=> bm!82258 m!1340531))

(declare-fun m!1340621 () Bool)

(assert (=> d!334166 m!1340621))

(declare-fun m!1340623 () Bool)

(assert (=> d!334166 m!1340623))

(assert (=> b!1166167 d!334166))

(declare-fun d!334168 () Bool)

(declare-fun lt!400159 () Token!3676)

(assert (=> d!334168 (= lt!400159 (apply!2480 (list!4239 lt!398609) (+ 0 1)))))

(assert (=> d!334168 (= lt!400159 (apply!2483 (c!194629 lt!398609) (+ 0 1)))))

(declare-fun e!748940 () Bool)

(assert (=> d!334168 e!748940))

(declare-fun res!527550 () Bool)

(assert (=> d!334168 (=> (not res!527550) (not e!748940))))

(assert (=> d!334168 (= res!527550 (<= 0 (+ 0 1)))))

(assert (=> d!334168 (= (apply!2479 lt!398609 (+ 0 1)) lt!400159)))

(declare-fun b!1168408 () Bool)

(assert (=> b!1168408 (= e!748940 (< (+ 0 1) (size!9067 lt!398609)))))

(assert (= (and d!334168 res!527550) b!1168408))

(assert (=> d!334168 m!1335361))

(assert (=> d!334168 m!1335361))

(declare-fun m!1340625 () Bool)

(assert (=> d!334168 m!1340625))

(declare-fun m!1340627 () Bool)

(assert (=> d!334168 m!1340627))

(assert (=> b!1168408 m!1336103))

(assert (=> b!1166167 d!334168))

(declare-fun d!334170 () Bool)

(declare-fun lt!400160 () Int)

(assert (=> d!334170 (= lt!400160 (size!9072 (list!4243 (charsOf!1068 (apply!2479 lt!398609 (+ 0 1))))))))

(assert (=> d!334170 (= lt!400160 (size!9073 (c!194628 (charsOf!1068 (apply!2479 lt!398609 (+ 0 1))))))))

(assert (=> d!334170 (= (size!9066 (charsOf!1068 (apply!2479 lt!398609 (+ 0 1)))) lt!400160)))

(declare-fun bs!285344 () Bool)

(assert (= bs!285344 d!334170))

(assert (=> bs!285344 m!1336077))

(declare-fun m!1340629 () Bool)

(assert (=> bs!285344 m!1340629))

(assert (=> bs!285344 m!1340629))

(declare-fun m!1340631 () Bool)

(assert (=> bs!285344 m!1340631))

(declare-fun m!1340633 () Bool)

(assert (=> bs!285344 m!1340633))

(assert (=> b!1166167 d!334170))

(declare-fun b!1168409 () Bool)

(declare-fun e!748944 () Int)

(declare-fun call!82264 () Int)

(assert (=> b!1168409 (= e!748944 call!82264)))

(declare-fun b!1168410 () Bool)

(declare-fun e!748943 () List!11543)

(declare-fun e!748941 () List!11543)

(assert (=> b!1168410 (= e!748943 e!748941)))

(declare-fun c!195135 () Bool)

(assert (=> b!1168410 (= c!195135 (<= lt!398993 0))))

(declare-fun b!1168411 () Bool)

(declare-fun e!748945 () Int)

(assert (=> b!1168411 (= e!748944 e!748945)))

(declare-fun c!195132 () Bool)

(assert (=> b!1168411 (= c!195132 (>= lt!398993 call!82264))))

(declare-fun b!1168412 () Bool)

(declare-fun e!748942 () Bool)

(declare-fun lt!400161 () List!11543)

(assert (=> b!1168412 (= e!748942 (= (size!9071 lt!400161) e!748944))))

(declare-fun c!195133 () Bool)

(assert (=> b!1168412 (= c!195133 (<= lt!398993 0))))

(declare-fun b!1168413 () Bool)

(assert (=> b!1168413 (= e!748943 Nil!11519)))

(declare-fun b!1168414 () Bool)

(assert (=> b!1168414 (= e!748945 (- call!82264 lt!398993))))

(declare-fun b!1168415 () Bool)

(assert (=> b!1168415 (= e!748941 lt!398997)))

(declare-fun b!1168417 () Bool)

(assert (=> b!1168417 (= e!748941 (drop!482 (t!110333 lt!398997) (- lt!398993 1)))))

(declare-fun bm!82259 () Bool)

(assert (=> bm!82259 (= call!82264 (size!9071 lt!398997))))

(declare-fun d!334172 () Bool)

(assert (=> d!334172 e!748942))

(declare-fun res!527551 () Bool)

(assert (=> d!334172 (=> (not res!527551) (not e!748942))))

(assert (=> d!334172 (= res!527551 (= ((_ map implies) (content!1608 lt!400161) (content!1608 lt!398997)) ((as const (InoxSet Token!3676)) true)))))

(assert (=> d!334172 (= lt!400161 e!748943)))

(declare-fun c!195134 () Bool)

(assert (=> d!334172 (= c!195134 ((_ is Nil!11519) lt!398997))))

(assert (=> d!334172 (= (drop!482 lt!398997 lt!398993) lt!400161)))

(declare-fun b!1168416 () Bool)

(assert (=> b!1168416 (= e!748945 0)))

(assert (= (and d!334172 c!195134) b!1168413))

(assert (= (and d!334172 (not c!195134)) b!1168410))

(assert (= (and b!1168410 c!195135) b!1168415))

(assert (= (and b!1168410 (not c!195135)) b!1168417))

(assert (= (and d!334172 res!527551) b!1168412))

(assert (= (and b!1168412 c!195133) b!1168409))

(assert (= (and b!1168412 (not c!195133)) b!1168411))

(assert (= (and b!1168411 c!195132) b!1168416))

(assert (= (and b!1168411 (not c!195132)) b!1168414))

(assert (= (or b!1168409 b!1168411 b!1168414) bm!82259))

(declare-fun m!1340635 () Bool)

(assert (=> b!1168412 m!1340635))

(declare-fun m!1340637 () Bool)

(assert (=> b!1168417 m!1340637))

(assert (=> bm!82259 m!1340487))

(declare-fun m!1340639 () Bool)

(assert (=> d!334172 m!1340639))

(assert (=> d!334172 m!1340491))

(assert (=> b!1166167 d!334172))

(declare-fun d!334174 () Bool)

(assert (=> d!334174 (= (tail!1686 (drop!482 lt!399013 0)) (t!110333 (drop!482 lt!399013 0)))))

(assert (=> b!1166167 d!334174))

(assert (=> b!1166167 d!332664))

(declare-fun d!334176 () Bool)

(declare-fun lt!400163 () Bool)

(declare-fun e!748947 () Bool)

(assert (=> d!334176 (= lt!400163 e!748947)))

(declare-fun res!527552 () Bool)

(assert (=> d!334176 (=> (not res!527552) (not e!748947))))

(assert (=> d!334176 (= res!527552 (= (list!4239 (_1!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398998))))) (list!4239 (singletonSeq!668 lt!398998))))))

(declare-fun e!748946 () Bool)

(assert (=> d!334176 (= lt!400163 e!748946)))

(declare-fun res!527553 () Bool)

(assert (=> d!334176 (=> (not res!527553) (not e!748946))))

(declare-fun lt!400162 () tuple2!12022)

(assert (=> d!334176 (= res!527553 (= (size!9067 (_1!6858 lt!400162)) 1))))

(assert (=> d!334176 (= lt!400162 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398998))))))

(assert (=> d!334176 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334176 (= (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) lt!398998) lt!400163)))

(declare-fun b!1168418 () Bool)

(declare-fun res!527554 () Bool)

(assert (=> b!1168418 (=> (not res!527554) (not e!748946))))

(assert (=> b!1168418 (= res!527554 (= (apply!2479 (_1!6858 lt!400162) 0) lt!398998))))

(declare-fun b!1168419 () Bool)

(assert (=> b!1168419 (= e!748946 (isEmpty!7005 (_2!6858 lt!400162)))))

(declare-fun b!1168420 () Bool)

(assert (=> b!1168420 (= e!748947 (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 lt!398998))))))))

(assert (= (and d!334176 res!527553) b!1168418))

(assert (= (and b!1168418 res!527554) b!1168419))

(assert (= (and d!334176 res!527552) b!1168420))

(assert (=> d!334176 m!1335511))

(declare-fun m!1340641 () Bool)

(assert (=> d!334176 m!1340641))

(declare-fun m!1340643 () Bool)

(assert (=> d!334176 m!1340643))

(declare-fun m!1340645 () Bool)

(assert (=> d!334176 m!1340645))

(declare-fun m!1340647 () Bool)

(assert (=> d!334176 m!1340647))

(declare-fun m!1340649 () Bool)

(assert (=> d!334176 m!1340649))

(declare-fun m!1340651 () Bool)

(assert (=> d!334176 m!1340651))

(assert (=> d!334176 m!1340647))

(assert (=> d!334176 m!1340641))

(assert (=> d!334176 m!1340647))

(declare-fun m!1340653 () Bool)

(assert (=> b!1168418 m!1340653))

(declare-fun m!1340655 () Bool)

(assert (=> b!1168419 m!1340655))

(assert (=> b!1168420 m!1340647))

(assert (=> b!1168420 m!1340647))

(assert (=> b!1168420 m!1340641))

(assert (=> b!1168420 m!1340641))

(assert (=> b!1168420 m!1340643))

(declare-fun m!1340657 () Bool)

(assert (=> b!1168420 m!1340657))

(assert (=> b!1166167 d!334176))

(declare-fun d!334178 () Bool)

(declare-fun lt!400164 () Token!3676)

(assert (=> d!334178 (= lt!400164 (apply!2480 (list!4239 lt!398609) 0))))

(assert (=> d!334178 (= lt!400164 (apply!2483 (c!194629 lt!398609) 0))))

(declare-fun e!748948 () Bool)

(assert (=> d!334178 e!748948))

(declare-fun res!527555 () Bool)

(assert (=> d!334178 (=> (not res!527555) (not e!748948))))

(assert (=> d!334178 (= res!527555 (<= 0 0))))

(assert (=> d!334178 (= (apply!2479 lt!398609 0) lt!400164)))

(declare-fun b!1168421 () Bool)

(assert (=> b!1168421 (= e!748948 (< 0 (size!9067 lt!398609)))))

(assert (= (and d!334178 res!527555) b!1168421))

(assert (=> d!334178 m!1335361))

(assert (=> d!334178 m!1335361))

(declare-fun m!1340659 () Bool)

(assert (=> d!334178 m!1340659))

(declare-fun m!1340661 () Bool)

(assert (=> d!334178 m!1340661))

(assert (=> b!1168421 m!1336103))

(assert (=> b!1166167 d!334178))

(assert (=> d!332918 d!333370))

(declare-fun b!1168422 () Bool)

(declare-fun e!748949 () List!11543)

(assert (=> b!1168422 (= e!748949 Nil!11519)))

(declare-fun b!1168423 () Bool)

(declare-fun e!748950 () List!11543)

(assert (=> b!1168423 (= e!748949 e!748950)))

(declare-fun c!195137 () Bool)

(assert (=> b!1168423 (= c!195137 ((_ is Leaf!5791) (c!194629 (tokens!1624 thiss!10527))))))

(declare-fun b!1168425 () Bool)

(assert (=> b!1168425 (= e!748950 (++!2981 (list!4242 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) (list!4242 (right!10404 (c!194629 (tokens!1624 thiss!10527))))))))

(declare-fun d!334180 () Bool)

(declare-fun c!195136 () Bool)

(assert (=> d!334180 (= c!195136 ((_ is Empty!3777) (c!194629 (tokens!1624 thiss!10527))))))

(assert (=> d!334180 (= (list!4242 (c!194629 (tokens!1624 thiss!10527))) e!748949)))

(declare-fun b!1168424 () Bool)

(assert (=> b!1168424 (= e!748950 (list!4244 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))

(assert (= (and d!334180 c!195136) b!1168422))

(assert (= (and d!334180 (not c!195136)) b!1168423))

(assert (= (and b!1168423 c!195137) b!1168424))

(assert (= (and b!1168423 (not c!195137)) b!1168425))

(assert (=> b!1168425 m!1338099))

(assert (=> b!1168425 m!1338093))

(assert (=> b!1168425 m!1338099))

(assert (=> b!1168425 m!1338093))

(declare-fun m!1340663 () Bool)

(assert (=> b!1168425 m!1340663))

(assert (=> b!1168424 m!1339597))

(assert (=> d!332740 d!334180))

(declare-fun d!334182 () Bool)

(declare-fun lt!400165 () Int)

(assert (=> d!334182 (>= lt!400165 0)))

(declare-fun e!748951 () Int)

(assert (=> d!334182 (= lt!400165 e!748951)))

(declare-fun c!195138 () Bool)

(assert (=> d!334182 (= c!195138 ((_ is Nil!11519) (list!4239 (tokens!1624 thiss!10527))))))

(assert (=> d!334182 (= (size!9071 (list!4239 (tokens!1624 thiss!10527))) lt!400165)))

(declare-fun b!1168426 () Bool)

(assert (=> b!1168426 (= e!748951 0)))

(declare-fun b!1168427 () Bool)

(assert (=> b!1168427 (= e!748951 (+ 1 (size!9071 (t!110333 (list!4239 (tokens!1624 thiss!10527))))))))

(assert (= (and d!334182 c!195138) b!1168426))

(assert (= (and d!334182 (not c!195138)) b!1168427))

(declare-fun m!1340665 () Bool)

(assert (=> b!1168427 m!1340665))

(assert (=> d!332924 d!334182))

(assert (=> d!332924 d!332740))

(declare-fun d!334184 () Bool)

(declare-fun lt!400168 () Int)

(assert (=> d!334184 (= lt!400168 (size!9071 (list!4242 (c!194629 (tokens!1624 thiss!10527)))))))

(assert (=> d!334184 (= lt!400168 (ite ((_ is Empty!3777) (c!194629 (tokens!1624 thiss!10527))) 0 (ite ((_ is Leaf!5791) (c!194629 (tokens!1624 thiss!10527))) (csize!7785 (c!194629 (tokens!1624 thiss!10527))) (csize!7784 (c!194629 (tokens!1624 thiss!10527))))))))

(assert (=> d!334184 (= (size!9075 (c!194629 (tokens!1624 thiss!10527))) lt!400168)))

(declare-fun bs!285345 () Bool)

(assert (= bs!285345 d!334184))

(assert (=> bs!285345 m!1335745))

(assert (=> bs!285345 m!1335745))

(declare-fun m!1340667 () Bool)

(assert (=> bs!285345 m!1340667))

(assert (=> d!332924 d!334184))

(assert (=> b!1165804 d!333172))

(declare-fun bs!285346 () Bool)

(declare-fun d!334186 () Bool)

(assert (= bs!285346 (and d!334186 d!334088)))

(declare-fun lambda!47955 () Int)

(assert (=> bs!285346 (= lambda!47955 lambda!47953)))

(declare-fun bs!285347 () Bool)

(assert (= bs!285347 (and d!334186 d!333806)))

(assert (=> bs!285347 (= lambda!47955 lambda!47942)))

(declare-fun bs!285348 () Bool)

(assert (= bs!285348 (and d!334186 d!332714)))

(assert (=> bs!285348 (= lambda!47955 lambda!47877)))

(declare-fun bs!285349 () Bool)

(assert (= bs!285349 (and d!334186 d!333808)))

(assert (=> bs!285349 (= lambda!47955 lambda!47947)))

(declare-fun bs!285350 () Bool)

(assert (= bs!285350 (and d!334186 d!332754)))

(assert (=> bs!285350 (= lambda!47955 lambda!47880)))

(declare-fun bs!285351 () Bool)

(assert (= bs!285351 (and d!334186 d!333536)))

(assert (=> bs!285351 (= lambda!47955 lambda!47936)))

(declare-fun bs!285352 () Bool)

(assert (= bs!285352 (and d!334186 d!332758)))

(assert (=> bs!285352 (= lambda!47955 lambda!47881)))

(declare-fun bs!285353 () Bool)

(assert (= bs!285353 (and d!334186 d!334044)))

(assert (=> bs!285353 (= lambda!47955 lambda!47949)))

(declare-fun bs!285354 () Bool)

(assert (= bs!285354 (and d!334186 d!333328)))

(assert (=> bs!285354 (= lambda!47955 lambda!47924)))

(declare-fun bs!285355 () Bool)

(assert (= bs!285355 (and d!334186 d!333484)))

(assert (=> bs!285355 (= lambda!47955 lambda!47930)))

(declare-fun bs!285356 () Bool)

(assert (= bs!285356 (and d!334186 d!332732)))

(assert (=> bs!285356 (= lambda!47955 lambda!47878)))

(declare-fun bs!285357 () Bool)

(assert (= bs!285357 (and d!334186 d!334104)))

(assert (=> bs!285357 (= lambda!47955 lambda!47954)))

(declare-fun bs!285358 () Bool)

(assert (= bs!285358 (and d!334186 d!332856)))

(assert (=> bs!285358 (= lambda!47955 lambda!47902)))

(declare-fun bs!285359 () Bool)

(assert (= bs!285359 (and d!334186 d!333546)))

(assert (=> bs!285359 (= lambda!47955 lambda!47940)))

(declare-fun bs!285360 () Bool)

(assert (= bs!285360 (and d!334186 d!333076)))

(assert (=> bs!285360 (= lambda!47955 lambda!47907)))

(declare-fun bs!285361 () Bool)

(assert (= bs!285361 (and d!334186 b!1166241)))

(assert (=> bs!285361 (= lambda!47955 lambda!47890)))

(declare-fun bs!285362 () Bool)

(assert (= bs!285362 (and d!334186 d!332834)))

(assert (=> bs!285362 (= lambda!47955 lambda!47891)))

(declare-fun bs!285363 () Bool)

(assert (= bs!285363 (and d!334186 d!333526)))

(assert (=> bs!285363 (= lambda!47955 lambda!47935)))

(declare-fun bs!285364 () Bool)

(assert (= bs!285364 (and d!334186 d!334070)))

(assert (=> bs!285364 (= lambda!47955 lambda!47951)))

(declare-fun bs!285365 () Bool)

(assert (= bs!285365 (and d!334186 d!332868)))

(assert (=> bs!285365 (= lambda!47955 lambda!47903)))

(declare-fun bs!285366 () Bool)

(assert (= bs!285366 (and d!334186 b!1166281)))

(assert (=> bs!285366 (= lambda!47955 lambda!47898)))

(declare-fun bs!285367 () Bool)

(assert (= bs!285367 (and d!334186 d!334030)))

(assert (=> bs!285367 (= lambda!47955 lambda!47948)))

(declare-fun bs!285368 () Bool)

(assert (= bs!285368 (and d!334186 d!334056)))

(assert (=> bs!285368 (= lambda!47955 lambda!47950)))

(declare-fun bs!285369 () Bool)

(assert (= bs!285369 (and d!334186 d!334084)))

(assert (=> bs!285369 (= lambda!47955 lambda!47952)))

(declare-fun bs!285370 () Bool)

(assert (= bs!285370 (and d!334186 d!332712)))

(assert (=> bs!285370 (= lambda!47955 lambda!47872)))

(declare-fun bs!285371 () Bool)

(assert (= bs!285371 (and d!334186 d!333790)))

(assert (=> bs!285371 (= lambda!47955 lambda!47941)))

(declare-fun bs!285372 () Bool)

(assert (= bs!285372 (and d!334186 d!332796)))

(assert (=> bs!285372 (= lambda!47955 lambda!47883)))

(declare-fun bs!285373 () Bool)

(assert (= bs!285373 (and d!334186 b!1165777)))

(assert (=> bs!285373 (= lambda!47955 lambda!47859)))

(declare-fun bs!285374 () Bool)

(assert (= bs!285374 (and d!334186 d!332668)))

(assert (=> bs!285374 (= lambda!47955 lambda!47862)))

(declare-fun b!1168432 () Bool)

(declare-fun e!748956 () Bool)

(assert (=> b!1168432 (= e!748956 true)))

(declare-fun b!1168431 () Bool)

(declare-fun e!748955 () Bool)

(assert (=> b!1168431 (= e!748955 e!748956)))

(declare-fun b!1168430 () Bool)

(declare-fun e!748954 () Bool)

(assert (=> b!1168430 (= e!748954 e!748955)))

(assert (=> d!334186 e!748954))

(assert (= b!1168431 b!1168432))

(assert (= b!1168430 b!1168431))

(assert (= (and d!334186 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1168430))

(assert (=> b!1168432 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47955))))

(assert (=> b!1168432 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47955))))

(assert (=> d!334186 true))

(declare-fun lt!400169 () Bool)

(assert (=> d!334186 (= lt!400169 (forall!3024 lt!398794 lambda!47955))))

(declare-fun e!748952 () Bool)

(assert (=> d!334186 (= lt!400169 e!748952)))

(declare-fun res!527557 () Bool)

(assert (=> d!334186 (=> res!527557 e!748952)))

(assert (=> d!334186 (= res!527557 (not ((_ is Cons!11519) lt!398794)))))

(assert (=> d!334186 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334186 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) lt!398794) lt!400169)))

(declare-fun b!1168428 () Bool)

(declare-fun e!748953 () Bool)

(assert (=> b!1168428 (= e!748952 e!748953)))

(declare-fun res!527556 () Bool)

(assert (=> b!1168428 (=> (not res!527556) (not e!748953))))

(assert (=> b!1168428 (= res!527556 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398794)))))

(declare-fun b!1168429 () Bool)

(assert (=> b!1168429 (= e!748953 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 lt!398794)))))

(assert (= (and d!334186 (not res!527557)) b!1168428))

(assert (= (and b!1168428 res!527556) b!1168429))

(declare-fun m!1340669 () Bool)

(assert (=> d!334186 m!1340669))

(assert (=> d!334186 m!1335511))

(declare-fun m!1340671 () Bool)

(assert (=> b!1168428 m!1340671))

(declare-fun m!1340673 () Bool)

(assert (=> b!1168429 m!1340673))

(assert (=> b!1165960 d!334186))

(declare-fun bs!285375 () Bool)

(declare-fun d!334188 () Bool)

(assert (= bs!285375 (and d!334188 d!334088)))

(declare-fun lambda!47956 () Int)

(assert (=> bs!285375 (= lambda!47956 lambda!47953)))

(declare-fun bs!285376 () Bool)

(assert (= bs!285376 (and d!334188 d!333806)))

(assert (=> bs!285376 (= lambda!47956 lambda!47942)))

(declare-fun bs!285377 () Bool)

(assert (= bs!285377 (and d!334188 d!332714)))

(assert (=> bs!285377 (= lambda!47956 lambda!47877)))

(declare-fun bs!285378 () Bool)

(assert (= bs!285378 (and d!334188 d!333808)))

(assert (=> bs!285378 (= lambda!47956 lambda!47947)))

(declare-fun bs!285379 () Bool)

(assert (= bs!285379 (and d!334188 d!332754)))

(assert (=> bs!285379 (= lambda!47956 lambda!47880)))

(declare-fun bs!285380 () Bool)

(assert (= bs!285380 (and d!334188 d!333536)))

(assert (=> bs!285380 (= lambda!47956 lambda!47936)))

(declare-fun bs!285381 () Bool)

(assert (= bs!285381 (and d!334188 d!332758)))

(assert (=> bs!285381 (= lambda!47956 lambda!47881)))

(declare-fun bs!285382 () Bool)

(assert (= bs!285382 (and d!334188 d!334044)))

(assert (=> bs!285382 (= lambda!47956 lambda!47949)))

(declare-fun bs!285383 () Bool)

(assert (= bs!285383 (and d!334188 d!333328)))

(assert (=> bs!285383 (= lambda!47956 lambda!47924)))

(declare-fun bs!285384 () Bool)

(assert (= bs!285384 (and d!334188 d!333484)))

(assert (=> bs!285384 (= lambda!47956 lambda!47930)))

(declare-fun bs!285385 () Bool)

(assert (= bs!285385 (and d!334188 d!332732)))

(assert (=> bs!285385 (= lambda!47956 lambda!47878)))

(declare-fun bs!285386 () Bool)

(assert (= bs!285386 (and d!334188 d!334186)))

(assert (=> bs!285386 (= lambda!47956 lambda!47955)))

(declare-fun bs!285387 () Bool)

(assert (= bs!285387 (and d!334188 d!334104)))

(assert (=> bs!285387 (= lambda!47956 lambda!47954)))

(declare-fun bs!285388 () Bool)

(assert (= bs!285388 (and d!334188 d!332856)))

(assert (=> bs!285388 (= lambda!47956 lambda!47902)))

(declare-fun bs!285389 () Bool)

(assert (= bs!285389 (and d!334188 d!333546)))

(assert (=> bs!285389 (= lambda!47956 lambda!47940)))

(declare-fun bs!285390 () Bool)

(assert (= bs!285390 (and d!334188 d!333076)))

(assert (=> bs!285390 (= lambda!47956 lambda!47907)))

(declare-fun bs!285391 () Bool)

(assert (= bs!285391 (and d!334188 b!1166241)))

(assert (=> bs!285391 (= lambda!47956 lambda!47890)))

(declare-fun bs!285392 () Bool)

(assert (= bs!285392 (and d!334188 d!332834)))

(assert (=> bs!285392 (= lambda!47956 lambda!47891)))

(declare-fun bs!285393 () Bool)

(assert (= bs!285393 (and d!334188 d!333526)))

(assert (=> bs!285393 (= lambda!47956 lambda!47935)))

(declare-fun bs!285394 () Bool)

(assert (= bs!285394 (and d!334188 d!334070)))

(assert (=> bs!285394 (= lambda!47956 lambda!47951)))

(declare-fun bs!285395 () Bool)

(assert (= bs!285395 (and d!334188 d!332868)))

(assert (=> bs!285395 (= lambda!47956 lambda!47903)))

(declare-fun bs!285396 () Bool)

(assert (= bs!285396 (and d!334188 b!1166281)))

(assert (=> bs!285396 (= lambda!47956 lambda!47898)))

(declare-fun bs!285397 () Bool)

(assert (= bs!285397 (and d!334188 d!334030)))

(assert (=> bs!285397 (= lambda!47956 lambda!47948)))

(declare-fun bs!285398 () Bool)

(assert (= bs!285398 (and d!334188 d!334056)))

(assert (=> bs!285398 (= lambda!47956 lambda!47950)))

(declare-fun bs!285399 () Bool)

(assert (= bs!285399 (and d!334188 d!334084)))

(assert (=> bs!285399 (= lambda!47956 lambda!47952)))

(declare-fun bs!285400 () Bool)

(assert (= bs!285400 (and d!334188 d!332712)))

(assert (=> bs!285400 (= lambda!47956 lambda!47872)))

(declare-fun bs!285401 () Bool)

(assert (= bs!285401 (and d!334188 d!333790)))

(assert (=> bs!285401 (= lambda!47956 lambda!47941)))

(declare-fun bs!285402 () Bool)

(assert (= bs!285402 (and d!334188 d!332796)))

(assert (=> bs!285402 (= lambda!47956 lambda!47883)))

(declare-fun bs!285403 () Bool)

(assert (= bs!285403 (and d!334188 b!1165777)))

(assert (=> bs!285403 (= lambda!47956 lambda!47859)))

(declare-fun bs!285404 () Bool)

(assert (= bs!285404 (and d!334188 d!332668)))

(assert (=> bs!285404 (= lambda!47956 lambda!47862)))

(declare-fun b!1168437 () Bool)

(declare-fun e!748961 () Bool)

(assert (=> b!1168437 (= e!748961 true)))

(declare-fun b!1168436 () Bool)

(declare-fun e!748960 () Bool)

(assert (=> b!1168436 (= e!748960 e!748961)))

(declare-fun b!1168435 () Bool)

(declare-fun e!748959 () Bool)

(assert (=> b!1168435 (= e!748959 e!748960)))

(assert (=> d!334188 e!748959))

(assert (= b!1168436 b!1168437))

(assert (= b!1168435 b!1168436))

(assert (= (and d!334188 ((_ is Cons!11520) (rules!9572 thiss!10527))) b!1168435))

(assert (=> b!1168437 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47956))))

(assert (=> b!1168437 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527))))) (dynLambda!5076 order!7049 lambda!47956))))

(assert (=> d!334188 true))

(declare-fun lt!400170 () Bool)

(assert (=> d!334188 (= lt!400170 (forall!3024 (list!4239 (tokens!1624 thiss!10527)) lambda!47956))))

(declare-fun e!748957 () Bool)

(assert (=> d!334188 (= lt!400170 e!748957)))

(declare-fun res!527559 () Bool)

(assert (=> d!334188 (=> res!527559 e!748957)))

(assert (=> d!334188 (= res!527559 (not ((_ is Cons!11519) (list!4239 (tokens!1624 thiss!10527)))))))

(assert (=> d!334188 (not (isEmpty!7004 (rules!9572 thiss!10527)))))

(assert (=> d!334188 (= (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (list!4239 (tokens!1624 thiss!10527))) lt!400170)))

(declare-fun b!1168433 () Bool)

(declare-fun e!748958 () Bool)

(assert (=> b!1168433 (= e!748957 e!748958)))

(declare-fun res!527558 () Bool)

(assert (=> b!1168433 (=> (not res!527558) (not e!748958))))

(assert (=> b!1168433 (= res!527558 (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (list!4239 (tokens!1624 thiss!10527)))))))

(declare-fun b!1168434 () Bool)

(assert (=> b!1168434 (= e!748958 (rulesProduceEachTokenIndividuallyList!568 Lexer!1700 (rules!9572 thiss!10527) (t!110333 (list!4239 (tokens!1624 thiss!10527)))))))

(assert (= (and d!334188 (not res!527559)) b!1168433))

(assert (= (and b!1168433 res!527558) b!1168434))

(assert (=> d!334188 m!1335409))

(declare-fun m!1340675 () Bool)

(assert (=> d!334188 m!1340675))

(assert (=> d!334188 m!1335511))

(declare-fun m!1340677 () Bool)

(assert (=> b!1168433 m!1340677))

(declare-fun m!1340679 () Bool)

(assert (=> b!1168434 m!1340679))

(assert (=> b!1165997 d!334188))

(assert (=> b!1165997 d!332740))

(declare-fun lt!400200 () Bool)

(declare-fun d!334190 () Bool)

(declare-fun prefixMatch!26 (Regex!3277 List!11542) Bool)

(assert (=> d!334190 (= lt!400200 (prefixMatch!26 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)) (list!4243 (++!2980 (charsOf!1068 lt!398607) (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))))))))

(declare-datatypes ((List!11549 0))(
  ( (Nil!11525) (Cons!11525 (h!16926 Regex!3277) (t!110475 List!11549)) )
))
(declare-datatypes ((Context!1070 0))(
  ( (Context!1071 (exprs!1035 List!11549)) )
))
(declare-fun prefixMatchZipperSequence!93 ((InoxSet Context!1070) BalanceConc!7574 Int) Bool)

(declare-fun focus!46 (Regex!3277) (InoxSet Context!1070))

(assert (=> d!334190 (= lt!400200 (prefixMatchZipperSequence!93 (focus!46 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527))) (++!2980 (charsOf!1068 lt!398607) (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))) 0))))

(declare-fun lt!400199 () Unit!17605)

(declare-fun lt!400198 () Unit!17605)

(assert (=> d!334190 (= lt!400199 lt!400198)))

(declare-fun lt!400197 () List!11542)

(declare-fun lt!400194 () (InoxSet Context!1070))

(declare-fun prefixMatchZipper!26 ((InoxSet Context!1070) List!11542) Bool)

(assert (=> d!334190 (= (prefixMatch!26 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)) lt!400197) (prefixMatchZipper!26 lt!400194 lt!400197))))

(declare-datatypes ((List!11550 0))(
  ( (Nil!11526) (Cons!11526 (h!16927 Context!1070) (t!110476 List!11550)) )
))
(declare-fun lt!400196 () List!11550)

(declare-fun prefixMatchZipperRegexEquiv!26 ((InoxSet Context!1070) List!11550 Regex!3277 List!11542) Unit!17605)

(assert (=> d!334190 (= lt!400198 (prefixMatchZipperRegexEquiv!26 lt!400194 lt!400196 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)) lt!400197))))

(assert (=> d!334190 (= lt!400197 (list!4243 (++!2980 (charsOf!1068 lt!398607) (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0)))))))

(declare-fun toList!661 ((InoxSet Context!1070)) List!11550)

(assert (=> d!334190 (= lt!400196 (toList!661 (focus!46 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)))))))

(assert (=> d!334190 (= lt!400194 (focus!46 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527))))))

(declare-fun lt!400192 () Unit!17605)

(declare-fun lt!400191 () Unit!17605)

(assert (=> d!334190 (= lt!400192 lt!400191)))

(declare-fun lt!400193 () Int)

(declare-fun lt!400195 () (InoxSet Context!1070))

(declare-fun dropList!320 (BalanceConc!7574 Int) List!11542)

(assert (=> d!334190 (= (prefixMatchZipper!26 lt!400195 (dropList!320 (++!2980 (charsOf!1068 lt!398607) (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))) lt!400193)) (prefixMatchZipperSequence!93 lt!400195 (++!2980 (charsOf!1068 lt!398607) (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))) lt!400193))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!26 ((InoxSet Context!1070) BalanceConc!7574 Int) Unit!17605)

(assert (=> d!334190 (= lt!400191 (lemmaprefixMatchZipperSequenceEquivalent!26 lt!400195 (++!2980 (charsOf!1068 lt!398607) (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))) lt!400193))))

(assert (=> d!334190 (= lt!400193 0)))

(assert (=> d!334190 (= lt!400195 (focus!46 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527))))))

(declare-fun validRegex!1442 (Regex!3277) Bool)

(assert (=> d!334190 (validRegex!1442 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)))))

(assert (=> d!334190 (= (prefixMatchZipperSequence!91 (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)) (++!2980 (charsOf!1068 lt!398607) (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0)))) lt!400200)))

(declare-fun bs!285405 () Bool)

(assert (= bs!285405 d!334190))

(declare-fun m!1340681 () Bool)

(assert (=> bs!285405 m!1340681))

(assert (=> bs!285405 m!1336601))

(declare-fun m!1340683 () Bool)

(assert (=> bs!285405 m!1340683))

(assert (=> bs!285405 m!1336601))

(declare-fun m!1340685 () Bool)

(assert (=> bs!285405 m!1340685))

(assert (=> bs!285405 m!1336601))

(declare-fun m!1340687 () Bool)

(assert (=> bs!285405 m!1340687))

(declare-fun m!1340689 () Bool)

(assert (=> bs!285405 m!1340689))

(assert (=> bs!285405 m!1336601))

(declare-fun m!1340691 () Bool)

(assert (=> bs!285405 m!1340691))

(assert (=> bs!285405 m!1336603))

(declare-fun m!1340693 () Bool)

(assert (=> bs!285405 m!1340693))

(assert (=> bs!285405 m!1336603))

(assert (=> bs!285405 m!1340689))

(assert (=> bs!285405 m!1336601))

(declare-fun m!1340695 () Bool)

(assert (=> bs!285405 m!1340695))

(assert (=> bs!285405 m!1336603))

(declare-fun m!1340697 () Bool)

(assert (=> bs!285405 m!1340697))

(assert (=> bs!285405 m!1340689))

(declare-fun m!1340699 () Bool)

(assert (=> bs!285405 m!1340699))

(assert (=> bs!285405 m!1336603))

(assert (=> bs!285405 m!1340687))

(declare-fun m!1340701 () Bool)

(assert (=> bs!285405 m!1340701))

(assert (=> bs!285405 m!1336603))

(declare-fun m!1340703 () Bool)

(assert (=> bs!285405 m!1340703))

(assert (=> bs!285405 m!1340695))

(declare-fun m!1340705 () Bool)

(assert (=> bs!285405 m!1340705))

(assert (=> d!332894 d!334190))

(declare-fun b!1168446 () Bool)

(declare-fun res!527568 () Bool)

(declare-fun e!748964 () Bool)

(assert (=> b!1168446 (=> (not res!527568) (not e!748964))))

(declare-fun isBalanced!1062 (Conc!3776) Bool)

(declare-fun ++!2987 (Conc!3776 Conc!3776) Conc!3776)

(assert (=> b!1168446 (= res!527568 (isBalanced!1062 (++!2987 (c!194628 (charsOf!1068 lt!398607)) (c!194628 (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))))))))

(declare-fun d!334192 () Bool)

(assert (=> d!334192 e!748964))

(declare-fun res!527570 () Bool)

(assert (=> d!334192 (=> (not res!527570) (not e!748964))))

(declare-fun appendAssocInst!225 (Conc!3776 Conc!3776) Bool)

(assert (=> d!334192 (= res!527570 (appendAssocInst!225 (c!194628 (charsOf!1068 lt!398607)) (c!194628 (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0)))))))

(declare-fun lt!400203 () BalanceConc!7574)

(assert (=> d!334192 (= lt!400203 (BalanceConc!7575 (++!2987 (c!194628 (charsOf!1068 lt!398607)) (c!194628 (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))))))))

(assert (=> d!334192 (= (++!2980 (charsOf!1068 lt!398607) (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))) lt!400203)))

(declare-fun b!1168448 () Bool)

(declare-fun res!527571 () Bool)

(assert (=> b!1168448 (=> (not res!527571) (not e!748964))))

(declare-fun height!514 (Conc!3776) Int)

(assert (=> b!1168448 (= res!527571 (>= (height!514 (++!2987 (c!194628 (charsOf!1068 lt!398607)) (c!194628 (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))))) (max!0 (height!514 (c!194628 (charsOf!1068 lt!398607))) (height!514 (c!194628 (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0)))))))))

(declare-fun b!1168447 () Bool)

(declare-fun res!527569 () Bool)

(assert (=> b!1168447 (=> (not res!527569) (not e!748964))))

(assert (=> b!1168447 (= res!527569 (<= (height!514 (++!2987 (c!194628 (charsOf!1068 lt!398607)) (c!194628 (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))))) (+ (max!0 (height!514 (c!194628 (charsOf!1068 lt!398607))) (height!514 (c!194628 (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))))) 1)))))

(declare-fun b!1168449 () Bool)

(declare-fun ++!2988 (List!11542 List!11542) List!11542)

(assert (=> b!1168449 (= e!748964 (= (list!4243 lt!400203) (++!2988 (list!4243 (charsOf!1068 lt!398607)) (list!4243 (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0))))))))

(assert (= (and d!334192 res!527570) b!1168446))

(assert (= (and b!1168446 res!527568) b!1168447))

(assert (= (and b!1168447 res!527569) b!1168448))

(assert (= (and b!1168448 res!527571) b!1168449))

(declare-fun m!1340707 () Bool)

(assert (=> b!1168448 m!1340707))

(declare-fun m!1340709 () Bool)

(assert (=> b!1168448 m!1340709))

(declare-fun m!1340711 () Bool)

(assert (=> b!1168448 m!1340711))

(declare-fun m!1340713 () Bool)

(assert (=> b!1168448 m!1340713))

(declare-fun m!1340715 () Bool)

(assert (=> b!1168448 m!1340715))

(assert (=> b!1168448 m!1340711))

(assert (=> b!1168448 m!1340713))

(assert (=> b!1168448 m!1340707))

(declare-fun m!1340717 () Bool)

(assert (=> d!334192 m!1340717))

(assert (=> d!334192 m!1340707))

(assert (=> b!1168447 m!1340707))

(assert (=> b!1168447 m!1340709))

(assert (=> b!1168447 m!1340711))

(assert (=> b!1168447 m!1340713))

(assert (=> b!1168447 m!1340715))

(assert (=> b!1168447 m!1340711))

(assert (=> b!1168447 m!1340713))

(assert (=> b!1168447 m!1340707))

(declare-fun m!1340719 () Bool)

(assert (=> b!1168449 m!1340719))

(assert (=> b!1168449 m!1336597))

(declare-fun m!1340721 () Bool)

(assert (=> b!1168449 m!1340721))

(assert (=> b!1168449 m!1336599))

(declare-fun m!1340723 () Bool)

(assert (=> b!1168449 m!1340723))

(assert (=> b!1168449 m!1340721))

(assert (=> b!1168449 m!1340723))

(declare-fun m!1340725 () Bool)

(assert (=> b!1168449 m!1340725))

(assert (=> b!1168446 m!1340707))

(assert (=> b!1168446 m!1340707))

(declare-fun m!1340727 () Bool)

(assert (=> b!1168446 m!1340727))

(assert (=> d!332894 d!334192))

(assert (=> d!332894 d!332676))

(declare-fun d!334194 () Bool)

(declare-fun lt!400206 () C!6872)

(declare-fun apply!2489 (List!11542 Int) C!6872)

(assert (=> d!334194 (= lt!400206 (apply!2489 (list!4243 (charsOf!1068 lt!398625)) 0))))

(declare-fun apply!2490 (Conc!3776 Int) C!6872)

(assert (=> d!334194 (= lt!400206 (apply!2490 (c!194628 (charsOf!1068 lt!398625)) 0))))

(declare-fun e!748967 () Bool)

(assert (=> d!334194 e!748967))

(declare-fun res!527574 () Bool)

(assert (=> d!334194 (=> (not res!527574) (not e!748967))))

(assert (=> d!334194 (= res!527574 (<= 0 0))))

(assert (=> d!334194 (= (apply!2484 (charsOf!1068 lt!398625) 0) lt!400206)))

(declare-fun b!1168452 () Bool)

(assert (=> b!1168452 (= e!748967 (< 0 (size!9066 (charsOf!1068 lt!398625))))))

(assert (= (and d!334194 res!527574) b!1168452))

(assert (=> d!334194 m!1335343))

(assert (=> d!334194 m!1335513))

(assert (=> d!334194 m!1335513))

(declare-fun m!1340729 () Bool)

(assert (=> d!334194 m!1340729))

(declare-fun m!1340731 () Bool)

(assert (=> d!334194 m!1340731))

(assert (=> b!1168452 m!1335343))

(assert (=> b!1168452 m!1335345))

(assert (=> d!332894 d!334194))

(declare-fun d!334196 () Bool)

(declare-fun e!748970 () Bool)

(assert (=> d!334196 e!748970))

(declare-fun res!527577 () Bool)

(assert (=> d!334196 (=> (not res!527577) (not e!748970))))

(declare-fun lt!400209 () BalanceConc!7574)

(assert (=> d!334196 (= res!527577 (= (list!4243 lt!400209) (Cons!11518 (apply!2484 (charsOf!1068 lt!398625) 0) Nil!11518)))))

(declare-fun singleton!302 (C!6872) BalanceConc!7574)

(assert (=> d!334196 (= lt!400209 (singleton!302 (apply!2484 (charsOf!1068 lt!398625) 0)))))

(assert (=> d!334196 (= (singletonSeq!669 (apply!2484 (charsOf!1068 lt!398625) 0)) lt!400209)))

(declare-fun b!1168455 () Bool)

(assert (=> b!1168455 (= e!748970 (isBalanced!1062 (c!194628 lt!400209)))))

(assert (= (and d!334196 res!527577) b!1168455))

(declare-fun m!1340733 () Bool)

(assert (=> d!334196 m!1340733))

(assert (=> d!334196 m!1336595))

(declare-fun m!1340735 () Bool)

(assert (=> d!334196 m!1340735))

(declare-fun m!1340737 () Bool)

(assert (=> b!1168455 m!1340737))

(assert (=> d!332894 d!334196))

(declare-fun d!334198 () Bool)

(declare-fun lt!400210 () BalanceConc!7574)

(assert (=> d!334198 (= (list!4243 lt!400210) (originalCharacters!2561 lt!398607))))

(assert (=> d!334198 (= lt!400210 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398607))) (value!65196 lt!398607)))))

(assert (=> d!334198 (= (charsOf!1068 lt!398607) lt!400210)))

(declare-fun b_lambda!34899 () Bool)

(assert (=> (not b_lambda!34899) (not d!334198)))

(declare-fun t!110444 () Bool)

(declare-fun tb!65903 () Bool)

(assert (=> (and b!1166515 (= (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) (toChars!2967 (transformation!2007 (rule!3428 lt!398607)))) t!110444) tb!65903))

(declare-fun b!1168456 () Bool)

(declare-fun e!748971 () Bool)

(declare-fun tp!334333 () Bool)

(assert (=> b!1168456 (= e!748971 (and (inv!15175 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398607))) (value!65196 lt!398607)))) tp!334333))))

(declare-fun result!78874 () Bool)

(assert (=> tb!65903 (= result!78874 (and (inv!15176 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398607))) (value!65196 lt!398607))) e!748971))))

(assert (= tb!65903 b!1168456))

(declare-fun m!1340739 () Bool)

(assert (=> b!1168456 m!1340739))

(declare-fun m!1340741 () Bool)

(assert (=> tb!65903 m!1340741))

(assert (=> d!334198 t!110444))

(declare-fun b_and!80703 () Bool)

(assert (= b_and!80701 (and (=> t!110444 result!78874) b_and!80703)))

(declare-fun m!1340743 () Bool)

(assert (=> d!334198 m!1340743))

(declare-fun m!1340745 () Bool)

(assert (=> d!334198 m!1340745))

(assert (=> d!332894 d!334198))

(declare-fun d!334200 () Bool)

(declare-fun lt!400213 () Unit!17605)

(declare-fun lemma!28 (List!11544 LexerInterface!1702 List!11544) Unit!17605)

(assert (=> d!334200 (= lt!400213 (lemma!28 (rules!9572 thiss!10527) Lexer!1700 (rules!9572 thiss!10527)))))

(declare-fun lambda!47959 () Int)

(declare-fun generalisedUnion!32 (List!11549) Regex!3277)

(declare-fun map!2489 (List!11544 Int) List!11549)

(assert (=> d!334200 (= (rulesRegex!66 Lexer!1700 (rules!9572 thiss!10527)) (generalisedUnion!32 (map!2489 (rules!9572 thiss!10527) lambda!47959)))))

(declare-fun bs!285406 () Bool)

(assert (= bs!285406 d!334200))

(declare-fun m!1340747 () Bool)

(assert (=> bs!285406 m!1340747))

(declare-fun m!1340749 () Bool)

(assert (=> bs!285406 m!1340749))

(assert (=> bs!285406 m!1340749))

(declare-fun m!1340751 () Bool)

(assert (=> bs!285406 m!1340751))

(assert (=> d!332894 d!334200))

(declare-fun d!334202 () Bool)

(declare-fun lt!400214 () Int)

(assert (=> d!334202 (>= lt!400214 0)))

(declare-fun e!748972 () Int)

(assert (=> d!334202 (= lt!400214 e!748972)))

(declare-fun c!195142 () Bool)

(assert (=> d!334202 (= c!195142 ((_ is Nil!11519) lt!399214))))

(assert (=> d!334202 (= (size!9071 lt!399214) lt!400214)))

(declare-fun b!1168457 () Bool)

(assert (=> b!1168457 (= e!748972 0)))

(declare-fun b!1168458 () Bool)

(assert (=> b!1168458 (= e!748972 (+ 1 (size!9071 (t!110333 lt!399214))))))

(assert (= (and d!334202 c!195142) b!1168457))

(assert (= (and d!334202 (not c!195142)) b!1168458))

(declare-fun m!1340753 () Bool)

(assert (=> b!1168458 m!1340753))

(assert (=> b!1166371 d!334202))

(declare-fun d!334204 () Bool)

(declare-fun c!195143 () Bool)

(assert (=> d!334204 (= c!195143 ((_ is Node!3777) (left!10074 (c!194629 (tokens!1624 thiss!10527)))))))

(declare-fun e!748973 () Bool)

(assert (=> d!334204 (= (inv!15164 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) e!748973)))

(declare-fun b!1168459 () Bool)

(assert (=> b!1168459 (= e!748973 (inv!15168 (left!10074 (c!194629 (tokens!1624 thiss!10527)))))))

(declare-fun b!1168460 () Bool)

(declare-fun e!748974 () Bool)

(assert (=> b!1168460 (= e!748973 e!748974)))

(declare-fun res!527578 () Bool)

(assert (=> b!1168460 (= res!527578 (not ((_ is Leaf!5791) (left!10074 (c!194629 (tokens!1624 thiss!10527))))))))

(assert (=> b!1168460 (=> res!527578 e!748974)))

(declare-fun b!1168461 () Bool)

(assert (=> b!1168461 (= e!748974 (inv!15169 (left!10074 (c!194629 (tokens!1624 thiss!10527)))))))

(assert (= (and d!334204 c!195143) b!1168459))

(assert (= (and d!334204 (not c!195143)) b!1168460))

(assert (= (and b!1168460 (not res!527578)) b!1168461))

(declare-fun m!1340755 () Bool)

(assert (=> b!1168459 m!1340755))

(declare-fun m!1340757 () Bool)

(assert (=> b!1168461 m!1340757))

(assert (=> b!1166502 d!334204))

(declare-fun d!334206 () Bool)

(declare-fun c!195144 () Bool)

(assert (=> d!334206 (= c!195144 ((_ is Node!3777) (right!10404 (c!194629 (tokens!1624 thiss!10527)))))))

(declare-fun e!748975 () Bool)

(assert (=> d!334206 (= (inv!15164 (right!10404 (c!194629 (tokens!1624 thiss!10527)))) e!748975)))

(declare-fun b!1168462 () Bool)

(assert (=> b!1168462 (= e!748975 (inv!15168 (right!10404 (c!194629 (tokens!1624 thiss!10527)))))))

(declare-fun b!1168463 () Bool)

(declare-fun e!748976 () Bool)

(assert (=> b!1168463 (= e!748975 e!748976)))

(declare-fun res!527579 () Bool)

(assert (=> b!1168463 (= res!527579 (not ((_ is Leaf!5791) (right!10404 (c!194629 (tokens!1624 thiss!10527))))))))

(assert (=> b!1168463 (=> res!527579 e!748976)))

(declare-fun b!1168464 () Bool)

(assert (=> b!1168464 (= e!748976 (inv!15169 (right!10404 (c!194629 (tokens!1624 thiss!10527)))))))

(assert (= (and d!334206 c!195144) b!1168462))

(assert (= (and d!334206 (not c!195144)) b!1168463))

(assert (= (and b!1168463 (not res!527579)) b!1168464))

(declare-fun m!1340759 () Bool)

(assert (=> b!1168462 m!1340759))

(declare-fun m!1340761 () Bool)

(assert (=> b!1168464 m!1340761))

(assert (=> b!1166502 d!334206))

(declare-fun d!334208 () Bool)

(declare-fun lt!400215 () Bool)

(assert (=> d!334208 (= lt!400215 (isEmpty!7011 (list!4243 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621))))))))))

(assert (=> d!334208 (= lt!400215 (isEmpty!7012 (c!194628 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621))))))))))

(assert (=> d!334208 (= (isEmpty!7005 (_2!6858 (lex!704 Lexer!1700 (rules!9572 thiss!10527) (print!641 Lexer!1700 (singletonSeq!668 (h!16920 lt!398621)))))) lt!400215)))

(declare-fun bs!285407 () Bool)

(assert (= bs!285407 d!334208))

(declare-fun m!1340763 () Bool)

(assert (=> bs!285407 m!1340763))

(assert (=> bs!285407 m!1340763))

(declare-fun m!1340765 () Bool)

(assert (=> bs!285407 m!1340765))

(declare-fun m!1340767 () Bool)

(assert (=> bs!285407 m!1340767))

(assert (=> b!1166102 d!334208))

(assert (=> b!1166102 d!333696))

(assert (=> b!1166102 d!333698))

(assert (=> b!1166102 d!333704))

(declare-fun d!334210 () Bool)

(assert (=> d!334210 (= (inv!15176 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625))) (isBalanced!1062 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625)))))))

(declare-fun bs!285408 () Bool)

(assert (= bs!285408 d!334210))

(declare-fun m!1340769 () Bool)

(assert (=> bs!285408 m!1340769))

(assert (=> tb!65851 d!334210))

(declare-fun d!334212 () Bool)

(declare-fun c!195145 () Bool)

(assert (=> d!334212 (= c!195145 ((_ is Nil!11519) lt!399219))))

(declare-fun e!748977 () (InoxSet Token!3676))

(assert (=> d!334212 (= (content!1608 lt!399219) e!748977)))

(declare-fun b!1168465 () Bool)

(assert (=> b!1168465 (= e!748977 ((as const (Array Token!3676 Bool)) false))))

(declare-fun b!1168466 () Bool)

(assert (=> b!1168466 (= e!748977 ((_ map or) (store ((as const (Array Token!3676 Bool)) false) (h!16920 lt!399219) true) (content!1608 (t!110333 lt!399219))))))

(assert (= (and d!334212 c!195145) b!1168465))

(assert (= (and d!334212 (not c!195145)) b!1168466))

(declare-fun m!1340771 () Bool)

(assert (=> b!1168466 m!1340771))

(declare-fun m!1340773 () Bool)

(assert (=> b!1168466 m!1340773))

(assert (=> d!332872 d!334212))

(assert (=> d!332872 d!333170))

(declare-fun d!334214 () Bool)

(declare-fun lt!400216 () Bool)

(assert (=> d!334214 (= lt!400216 (isEmpty!7011 (list!4243 (_2!6858 lt!398936))))))

(assert (=> d!334214 (= lt!400216 (isEmpty!7012 (c!194628 (_2!6858 lt!398936))))))

(assert (=> d!334214 (= (isEmpty!7005 (_2!6858 lt!398936)) lt!400216)))

(declare-fun bs!285409 () Bool)

(assert (= bs!285409 d!334214))

(declare-fun m!1340775 () Bool)

(assert (=> bs!285409 m!1340775))

(assert (=> bs!285409 m!1340775))

(declare-fun m!1340777 () Bool)

(assert (=> bs!285409 m!1340777))

(declare-fun m!1340779 () Bool)

(assert (=> bs!285409 m!1340779))

(assert (=> b!1166132 d!334214))

(declare-fun b!1168480 () Bool)

(declare-fun e!748980 () Bool)

(declare-fun tp!334345 () Bool)

(declare-fun tp!334348 () Bool)

(assert (=> b!1168480 (= e!748980 (and tp!334345 tp!334348))))

(declare-fun b!1168479 () Bool)

(declare-fun tp!334346 () Bool)

(assert (=> b!1168479 (= e!748980 tp!334346)))

(assert (=> b!1166514 (= tp!334266 e!748980)))

(declare-fun b!1168478 () Bool)

(declare-fun tp!334347 () Bool)

(declare-fun tp!334344 () Bool)

(assert (=> b!1168478 (= e!748980 (and tp!334347 tp!334344))))

(declare-fun b!1168477 () Bool)

(declare-fun tp_is_empty!5727 () Bool)

(assert (=> b!1168477 (= e!748980 tp_is_empty!5727)))

(assert (= (and b!1166514 ((_ is ElementMatch!3277) (regex!2007 (h!16921 (rules!9572 thiss!10527))))) b!1168477))

(assert (= (and b!1166514 ((_ is Concat!5351) (regex!2007 (h!16921 (rules!9572 thiss!10527))))) b!1168478))

(assert (= (and b!1166514 ((_ is Star!3277) (regex!2007 (h!16921 (rules!9572 thiss!10527))))) b!1168479))

(assert (= (and b!1166514 ((_ is Union!3277) (regex!2007 (h!16921 (rules!9572 thiss!10527))))) b!1168480))

(declare-fun b!1168483 () Bool)

(declare-fun b_free!27805 () Bool)

(declare-fun b_next!28509 () Bool)

(assert (=> b!1168483 (= b_free!27805 (not b_next!28509))))

(declare-fun tp!334350 () Bool)

(declare-fun b_and!80705 () Bool)

(assert (=> b!1168483 (= tp!334350 b_and!80705)))

(declare-fun b_free!27807 () Bool)

(declare-fun b_next!28511 () Bool)

(assert (=> b!1168483 (= b_free!27807 (not b_next!28511))))

(declare-fun t!110446 () Bool)

(declare-fun tb!65905 () Bool)

(assert (=> (and b!1168483 (= (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527))))) (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)))))) t!110446) tb!65905))

(declare-fun result!78878 () Bool)

(assert (= result!78878 result!78870))

(assert (=> d!333994 t!110446))

(declare-fun tb!65907 () Bool)

(declare-fun t!110448 () Bool)

(assert (=> (and b!1168483 (= (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527))))) (toChars!2967 (transformation!2007 (rule!3428 lt!398625)))) t!110448) tb!65907))

(declare-fun result!78880 () Bool)

(assert (= result!78880 result!78814))

(assert (=> d!332676 t!110448))

(declare-fun t!110450 () Bool)

(declare-fun tb!65909 () Bool)

(assert (=> (and b!1168483 (= (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527))))) (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)))))) t!110450) tb!65909))

(declare-fun result!78882 () Bool)

(assert (= result!78882 result!78826))

(assert (=> d!333456 t!110450))

(declare-fun tb!65911 () Bool)

(declare-fun t!110452 () Bool)

(assert (=> (and b!1168483 (= (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527))))) (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398606)))))) t!110452) tb!65911))

(declare-fun result!78884 () Bool)

(assert (= result!78884 result!78832))

(assert (=> d!333784 t!110452))

(declare-fun t!110454 () Bool)

(declare-fun tb!65913 () Bool)

(assert (=> (and b!1168483 (= (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527))))) (toChars!2967 (transformation!2007 (rule!3428 lt!398607)))) t!110454) tb!65913))

(declare-fun result!78886 () Bool)

(assert (= result!78886 result!78874))

(assert (=> d!334198 t!110454))

(declare-fun t!110456 () Bool)

(declare-fun tb!65915 () Bool)

(assert (=> (and b!1168483 (= (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527))))) (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398622)))))) t!110456) tb!65915))

(declare-fun result!78888 () Bool)

(assert (= result!78888 result!78822))

(assert (=> d!333346 t!110456))

(declare-fun tb!65917 () Bool)

(declare-fun t!110458 () Bool)

(assert (=> (and b!1168483 (= (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527))))) (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 lt!398609 (+ 0 1)))))) t!110458) tb!65917))

(declare-fun result!78890 () Bool)

(assert (= result!78890 result!78872))

(assert (=> d!334138 t!110458))

(declare-fun tp!334352 () Bool)

(declare-fun b_and!80707 () Bool)

(assert (=> b!1168483 (= tp!334352 (and (=> t!110448 result!78880) (=> t!110454 result!78886) (=> t!110458 result!78890) (=> t!110456 result!78888) (=> t!110452 result!78884) (=> t!110450 result!78882) (=> t!110446 result!78878) b_and!80707))))

(declare-fun e!748981 () Bool)

(assert (=> b!1168483 (= e!748981 (and tp!334350 tp!334352))))

(declare-fun tp!334349 () Bool)

(declare-fun b!1168482 () Bool)

(declare-fun e!748982 () Bool)

(assert (=> b!1168482 (= e!748982 (and tp!334349 (inv!15159 (tag!2269 (h!16921 (t!110334 (rules!9572 thiss!10527))))) (inv!15177 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527))))) e!748981))))

(declare-fun b!1168481 () Bool)

(declare-fun e!748983 () Bool)

(declare-fun tp!334351 () Bool)

(assert (=> b!1168481 (= e!748983 (and e!748982 tp!334351))))

(assert (=> b!1166513 (= tp!334268 e!748983)))

(assert (= b!1168482 b!1168483))

(assert (= b!1168481 b!1168482))

(assert (= (and b!1166513 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168481))

(declare-fun m!1340781 () Bool)

(assert (=> b!1168482 m!1340781))

(declare-fun m!1340783 () Bool)

(assert (=> b!1168482 m!1340783))

(declare-fun b!1168497 () Bool)

(declare-fun e!748996 () Bool)

(assert (=> b!1168497 (= e!748996 true)))

(declare-fun b!1168496 () Bool)

(declare-fun e!748995 () Bool)

(assert (=> b!1168496 (= e!748995 e!748996)))

(declare-fun b!1168494 () Bool)

(declare-fun e!748993 () Bool)

(declare-fun e!748994 () Bool)

(assert (=> b!1168494 (= e!748993 e!748994)))

(declare-fun b!1168495 () Bool)

(assert (=> b!1168495 (= e!748994 e!748995)))

(assert (=> b!1166531 e!748993))

(assert (= b!1168496 b!1168497))

(assert (= b!1168495 b!1168496))

(assert (= b!1168494 b!1168495))

(assert (= (and b!1166531 ((_ is Cons!11519) (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))) b!1168494))

(assert (=> b!1168497 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527))))))))) (dynLambda!5076 order!7049 lambda!47859))))

(assert (=> b!1168497 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527))))))))) (dynLambda!5076 order!7049 lambda!47859))))

(declare-fun b!1168500 () Bool)

(declare-fun e!748999 () Bool)

(assert (=> b!1168500 (= e!748999 true)))

(declare-fun b!1168499 () Bool)

(declare-fun e!748998 () Bool)

(assert (=> b!1168499 (= e!748998 e!748999)))

(declare-fun b!1168498 () Bool)

(declare-fun e!748997 () Bool)

(assert (=> b!1168498 (= e!748997 e!748998)))

(assert (=> b!1165998 e!748997))

(assert (= b!1168499 b!1168500))

(assert (= b!1168498 b!1168499))

(assert (= (and b!1165998 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168498))

(assert (=> b!1168500 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47877))))

(assert (=> b!1168500 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47877))))

(declare-fun b!1168503 () Bool)

(declare-fun e!749002 () Bool)

(assert (=> b!1168503 (= e!749002 true)))

(declare-fun b!1168502 () Bool)

(declare-fun e!749001 () Bool)

(assert (=> b!1168502 (= e!749001 e!749002)))

(declare-fun b!1168501 () Bool)

(declare-fun e!749000 () Bool)

(assert (=> b!1168501 (= e!749000 e!749001)))

(assert (=> b!1166248 e!749000))

(assert (= b!1168502 b!1168503))

(assert (= b!1168501 b!1168502))

(assert (= (and b!1166248 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168501))

(assert (=> b!1168503 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47891))))

(assert (=> b!1168503 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47891))))

(declare-fun b!1168506 () Bool)

(declare-fun e!749005 () Bool)

(assert (=> b!1168506 (= e!749005 true)))

(declare-fun b!1168505 () Bool)

(declare-fun e!749004 () Bool)

(assert (=> b!1168505 (= e!749004 e!749005)))

(declare-fun b!1168504 () Bool)

(declare-fun e!749003 () Bool)

(assert (=> b!1168504 (= e!749003 e!749004)))

(assert (=> b!1166010 e!749003))

(assert (= b!1168505 b!1168506))

(assert (= b!1168504 b!1168505))

(assert (= (and b!1166010 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168504))

(assert (=> b!1168506 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47878))))

(assert (=> b!1168506 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47878))))

(declare-fun b!1168520 () Bool)

(declare-fun b_free!27809 () Bool)

(declare-fun b_next!28513 () Bool)

(assert (=> b!1168520 (= b_free!27809 (not b_next!28513))))

(declare-fun tp!334365 () Bool)

(declare-fun b_and!80709 () Bool)

(assert (=> b!1168520 (= tp!334365 b_and!80709)))

(declare-fun b_free!27811 () Bool)

(declare-fun b_next!28515 () Bool)

(assert (=> b!1168520 (= b_free!27811 (not b_next!28515))))

(declare-fun t!110460 () Bool)

(declare-fun tb!65919 () Bool)

(assert (=> (and b!1168520 (= (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))) (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 0 1)))))) t!110460) tb!65919))

(declare-fun result!78894 () Bool)

(assert (= result!78894 result!78870))

(assert (=> d!333994 t!110460))

(declare-fun tb!65921 () Bool)

(declare-fun t!110462 () Bool)

(assert (=> (and b!1168520 (= (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))) (toChars!2967 (transformation!2007 (rule!3428 lt!398625)))) t!110462) tb!65921))

(declare-fun result!78896 () Bool)

(assert (= result!78896 result!78814))

(assert (=> d!332676 t!110462))

(declare-fun t!110464 () Bool)

(declare-fun tb!65923 () Bool)

(assert (=> (and b!1168520 (= (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))) (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 (tokens!1624 thiss!10527) (+ 1 1)))))) t!110464) tb!65923))

(declare-fun result!78898 () Bool)

(assert (= result!78898 result!78826))

(assert (=> d!333456 t!110464))

(declare-fun tb!65925 () Bool)

(declare-fun t!110466 () Bool)

(assert (=> (and b!1168520 (= (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))) (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398606)))))) t!110466) tb!65925))

(declare-fun result!78900 () Bool)

(assert (= result!78900 result!78832))

(assert (=> d!333784 t!110466))

(declare-fun tb!65927 () Bool)

(declare-fun t!110468 () Bool)

(assert (=> (and b!1168520 (= (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))) (toChars!2967 (transformation!2007 (rule!3428 lt!398607)))) t!110468) tb!65927))

(declare-fun result!78902 () Bool)

(assert (= result!78902 result!78874))

(assert (=> d!334198 t!110468))

(declare-fun t!110470 () Bool)

(declare-fun tb!65929 () Bool)

(assert (=> (and b!1168520 (= (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))) (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (t!110333 lt!398622)))))) t!110470) tb!65929))

(declare-fun result!78904 () Bool)

(assert (= result!78904 result!78822))

(assert (=> d!333346 t!110470))

(declare-fun t!110472 () Bool)

(declare-fun tb!65931 () Bool)

(assert (=> (and b!1168520 (= (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))) (toChars!2967 (transformation!2007 (rule!3428 (apply!2479 lt!398609 (+ 0 1)))))) t!110472) tb!65931))

(declare-fun result!78906 () Bool)

(assert (= result!78906 result!78872))

(assert (=> d!334138 t!110472))

(declare-fun b_and!80711 () Bool)

(declare-fun tp!334363 () Bool)

(assert (=> b!1168520 (= tp!334363 (and (=> t!110466 result!78900) (=> t!110460 result!78894) (=> t!110470 result!78904) (=> t!110462 result!78896) (=> t!110468 result!78902) (=> t!110464 result!78898) (=> t!110472 result!78906) b_and!80711))))

(declare-fun e!749021 () Bool)

(assert (=> b!1166504 (= tp!334257 e!749021)))

(declare-fun b!1168519 () Bool)

(declare-fun e!749019 () Bool)

(declare-fun e!749023 () Bool)

(declare-fun tp!334364 () Bool)

(assert (=> b!1168519 (= e!749019 (and tp!334364 (inv!15159 (tag!2269 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))) (inv!15177 (transformation!2007 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))) e!749023))))

(assert (=> b!1168520 (= e!749023 (and tp!334365 tp!334363))))

(declare-fun tp!334367 () Bool)

(declare-fun e!749022 () Bool)

(declare-fun b!1168517 () Bool)

(declare-fun inv!15183 (Token!3676) Bool)

(assert (=> b!1168517 (= e!749021 (and (inv!15183 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))) e!749022 tp!334367))))

(declare-fun b!1168518 () Bool)

(declare-fun tp!334366 () Bool)

(declare-fun inv!21 (TokenValue!2073) Bool)

(assert (=> b!1168518 (= e!749022 (and (inv!21 (value!65196 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527))))))) e!749019 tp!334366))))

(assert (= b!1168519 b!1168520))

(assert (= b!1168518 b!1168519))

(assert (= b!1168517 b!1168518))

(assert (= (and b!1166504 ((_ is Cons!11519) (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))) b!1168517))

(declare-fun m!1340785 () Bool)

(assert (=> b!1168519 m!1340785))

(declare-fun m!1340787 () Bool)

(assert (=> b!1168519 m!1340787))

(declare-fun m!1340789 () Bool)

(assert (=> b!1168517 m!1340789))

(declare-fun m!1340791 () Bool)

(assert (=> b!1168518 m!1340791))

(declare-fun b!1168523 () Bool)

(declare-fun e!749026 () Bool)

(assert (=> b!1168523 (= e!749026 true)))

(declare-fun b!1168522 () Bool)

(declare-fun e!749025 () Bool)

(assert (=> b!1168522 (= e!749025 e!749026)))

(declare-fun b!1168521 () Bool)

(declare-fun e!749024 () Bool)

(assert (=> b!1168521 (= e!749024 e!749025)))

(assert (=> b!1166051 e!749024))

(assert (= b!1168522 b!1168523))

(assert (= b!1168521 b!1168522))

(assert (= (and b!1166051 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168521))

(assert (=> b!1168523 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47881))))

(assert (=> b!1168523 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47881))))

(declare-fun b!1168526 () Bool)

(declare-fun e!749029 () Bool)

(assert (=> b!1168526 (= e!749029 true)))

(declare-fun b!1168525 () Bool)

(declare-fun e!749028 () Bool)

(assert (=> b!1168525 (= e!749028 e!749029)))

(declare-fun b!1168524 () Bool)

(declare-fun e!749027 () Bool)

(assert (=> b!1168524 (= e!749027 e!749028)))

(assert (=> b!1166283 e!749027))

(assert (= b!1168525 b!1168526))

(assert (= b!1168524 b!1168525))

(assert (= (and b!1166283 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168524))

(assert (=> b!1168526 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47898))))

(assert (=> b!1168526 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47898))))

(declare-fun b!1168529 () Bool)

(declare-fun e!749032 () Bool)

(assert (=> b!1168529 (= e!749032 true)))

(declare-fun b!1168528 () Bool)

(declare-fun e!749031 () Bool)

(assert (=> b!1168528 (= e!749031 e!749032)))

(declare-fun b!1168527 () Bool)

(declare-fun e!749030 () Bool)

(assert (=> b!1168527 (= e!749030 e!749031)))

(assert (=> b!1166385 e!749030))

(assert (= b!1168528 b!1168529))

(assert (= b!1168527 b!1168528))

(assert (= (and b!1166385 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168527))

(assert (=> b!1168529 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47903))))

(assert (=> b!1168529 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47903))))

(declare-fun b!1168532 () Bool)

(declare-fun e!749035 () Bool)

(assert (=> b!1168532 (= e!749035 true)))

(declare-fun b!1168531 () Bool)

(declare-fun e!749034 () Bool)

(assert (=> b!1168531 (= e!749034 e!749035)))

(declare-fun b!1168530 () Bool)

(declare-fun e!749033 () Bool)

(assert (=> b!1168530 (= e!749033 e!749034)))

(assert (=> b!1166334 e!749033))

(assert (= b!1168531 b!1168532))

(assert (= b!1168530 b!1168531))

(assert (= (and b!1166334 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168530))

(assert (=> b!1168532 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47902))))

(assert (=> b!1168532 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47902))))

(declare-fun b!1168535 () Bool)

(declare-fun e!749038 () Bool)

(assert (=> b!1168535 (= e!749038 true)))

(declare-fun b!1168534 () Bool)

(declare-fun e!749037 () Bool)

(assert (=> b!1168534 (= e!749037 e!749038)))

(declare-fun b!1168533 () Bool)

(declare-fun e!749036 () Bool)

(assert (=> b!1168533 (= e!749036 e!749037)))

(assert (=> b!1165973 e!749036))

(assert (= b!1168534 b!1168535))

(assert (= b!1168533 b!1168534))

(assert (= (and b!1165973 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168533))

(assert (=> b!1168535 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47872))))

(assert (=> b!1168535 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47872))))

(declare-fun b!1168538 () Bool)

(declare-fun e!749041 () Bool)

(assert (=> b!1168538 (= e!749041 true)))

(declare-fun b!1168537 () Bool)

(declare-fun e!749040 () Bool)

(assert (=> b!1168537 (= e!749040 e!749041)))

(declare-fun b!1168536 () Bool)

(declare-fun e!749039 () Bool)

(assert (=> b!1168536 (= e!749039 e!749040)))

(assert (=> b!1166044 e!749039))

(assert (= b!1168537 b!1168538))

(assert (= b!1168536 b!1168537))

(assert (= (and b!1166044 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168536))

(assert (=> b!1168538 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47880))))

(assert (=> b!1168538 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47880))))

(declare-fun b!1168541 () Bool)

(declare-fun e!749044 () Bool)

(assert (=> b!1168541 (= e!749044 true)))

(declare-fun b!1168540 () Bool)

(declare-fun e!749043 () Bool)

(assert (=> b!1168540 (= e!749043 e!749044)))

(declare-fun b!1168539 () Bool)

(declare-fun e!749042 () Bool)

(assert (=> b!1168539 (= e!749042 e!749043)))

(assert (=> b!1166491 e!749042))

(assert (= b!1168540 b!1168541))

(assert (= b!1168539 b!1168540))

(assert (= (and b!1166491 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168539))

(assert (=> b!1168541 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47859))))

(assert (=> b!1168541 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47859))))

(declare-fun tp!334375 () Bool)

(declare-fun tp!334376 () Bool)

(declare-fun e!749050 () Bool)

(declare-fun b!1168550 () Bool)

(assert (=> b!1168550 (= e!749050 (and (inv!15175 (left!10073 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625))))) tp!334376 (inv!15175 (right!10403 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625))))) tp!334375))))

(declare-fun b!1168552 () Bool)

(declare-fun e!749049 () Bool)

(declare-fun tp!334374 () Bool)

(assert (=> b!1168552 (= e!749049 tp!334374)))

(declare-fun b!1168551 () Bool)

(declare-fun inv!15184 (IArray!7557) Bool)

(assert (=> b!1168551 (= e!749050 (and (inv!15184 (xs!6481 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625))))) e!749049))))

(assert (=> b!1166520 (= tp!334272 (and (inv!15175 (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625)))) e!749050))))

(assert (= (and b!1166520 ((_ is Node!3776) (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625))))) b!1168550))

(assert (= b!1168551 b!1168552))

(assert (= (and b!1166520 ((_ is Leaf!5790) (c!194628 (dynLambda!5078 (toChars!2967 (transformation!2007 (rule!3428 lt!398625))) (value!65196 lt!398625))))) b!1168551))

(declare-fun m!1340793 () Bool)

(assert (=> b!1168550 m!1340793))

(declare-fun m!1340795 () Bool)

(assert (=> b!1168550 m!1340795))

(declare-fun m!1340797 () Bool)

(assert (=> b!1168551 m!1340797))

(assert (=> b!1166520 m!1336687))

(declare-fun b!1168555 () Bool)

(declare-fun e!749053 () Bool)

(assert (=> b!1168555 (= e!749053 true)))

(declare-fun b!1168554 () Bool)

(declare-fun e!749052 () Bool)

(assert (=> b!1168554 (= e!749052 e!749053)))

(declare-fun b!1168553 () Bool)

(declare-fun e!749051 () Bool)

(assert (=> b!1168553 (= e!749051 e!749052)))

(assert (=> b!1165849 e!749051))

(assert (= b!1168554 b!1168555))

(assert (= b!1168553 b!1168554))

(assert (= (and b!1165849 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168553))

(assert (=> b!1168555 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47862))))

(assert (=> b!1168555 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47862))))

(declare-fun b!1168558 () Bool)

(declare-fun e!749056 () Bool)

(assert (=> b!1168558 (= e!749056 true)))

(declare-fun b!1168557 () Bool)

(declare-fun e!749055 () Bool)

(assert (=> b!1168557 (= e!749055 e!749056)))

(declare-fun b!1168556 () Bool)

(declare-fun e!749054 () Bool)

(assert (=> b!1168556 (= e!749054 e!749055)))

(assert (=> b!1166148 e!749054))

(assert (= b!1168557 b!1168558))

(assert (= b!1168556 b!1168557))

(assert (= (and b!1166148 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168556))

(assert (=> b!1168558 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47883))))

(assert (=> b!1168558 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47883))))

(declare-fun b!1168561 () Bool)

(declare-fun e!749059 () Bool)

(assert (=> b!1168561 (= e!749059 true)))

(declare-fun b!1168560 () Bool)

(declare-fun e!749058 () Bool)

(assert (=> b!1168560 (= e!749058 e!749059)))

(declare-fun b!1168559 () Bool)

(declare-fun e!749057 () Bool)

(assert (=> b!1168559 (= e!749057 e!749058)))

(assert (=> b!1166243 e!749057))

(assert (= b!1168560 b!1168561))

(assert (= b!1168559 b!1168560))

(assert (= (and b!1166243 ((_ is Cons!11520) (t!110334 (rules!9572 thiss!10527)))) b!1168559))

(assert (=> b!1168561 (< (dynLambda!5075 order!7047 (toValue!3108 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47890))))

(assert (=> b!1168561 (< (dynLambda!5077 order!7051 (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527)))))) (dynLambda!5076 order!7049 lambda!47890))))

(declare-fun b!1168562 () Bool)

(declare-fun e!749060 () Bool)

(assert (=> b!1168562 (= e!749060 true)))

(declare-fun b!1168564 () Bool)

(declare-fun e!749061 () Bool)

(assert (=> b!1168564 (= e!749061 true)))

(declare-fun b!1168563 () Bool)

(assert (=> b!1168563 (= e!749060 e!749061)))

(assert (=> b!1166529 e!749060))

(assert (= (and b!1166529 ((_ is Node!3777) (left!10074 (c!194629 (tokens!1624 thiss!10527))))) b!1168562))

(assert (= b!1168563 b!1168564))

(assert (= (and b!1166529 ((_ is Leaf!5791) (left!10074 (c!194629 (tokens!1624 thiss!10527))))) b!1168563))

(declare-fun b!1168565 () Bool)

(declare-fun e!749062 () Bool)

(assert (=> b!1168565 (= e!749062 true)))

(declare-fun b!1168567 () Bool)

(declare-fun e!749063 () Bool)

(assert (=> b!1168567 (= e!749063 true)))

(declare-fun b!1168566 () Bool)

(assert (=> b!1168566 (= e!749062 e!749063)))

(assert (=> b!1166529 e!749062))

(assert (= (and b!1166529 ((_ is Node!3777) (right!10404 (c!194629 (tokens!1624 thiss!10527))))) b!1168565))

(assert (= b!1168566 b!1168567))

(assert (= (and b!1166529 ((_ is Leaf!5791) (right!10404 (c!194629 (tokens!1624 thiss!10527))))) b!1168566))

(declare-fun b!1168568 () Bool)

(declare-fun e!749065 () Bool)

(declare-fun tp!334378 () Bool)

(declare-fun tp!334377 () Bool)

(assert (=> b!1168568 (= e!749065 (and (inv!15164 (left!10074 (left!10074 (c!194629 (tokens!1624 thiss!10527))))) tp!334377 (inv!15164 (right!10404 (left!10074 (c!194629 (tokens!1624 thiss!10527))))) tp!334378))))

(declare-fun b!1168570 () Bool)

(declare-fun e!749064 () Bool)

(declare-fun tp!334379 () Bool)

(assert (=> b!1168570 (= e!749064 tp!334379)))

(declare-fun b!1168569 () Bool)

(assert (=> b!1168569 (= e!749065 (and (inv!15174 (xs!6482 (left!10074 (c!194629 (tokens!1624 thiss!10527))))) e!749064))))

(assert (=> b!1166502 (= tp!334255 (and (inv!15164 (left!10074 (c!194629 (tokens!1624 thiss!10527)))) e!749065))))

(assert (= (and b!1166502 ((_ is Node!3777) (left!10074 (c!194629 (tokens!1624 thiss!10527))))) b!1168568))

(assert (= b!1168569 b!1168570))

(assert (= (and b!1166502 ((_ is Leaf!5791) (left!10074 (c!194629 (tokens!1624 thiss!10527))))) b!1168569))

(declare-fun m!1340799 () Bool)

(assert (=> b!1168568 m!1340799))

(declare-fun m!1340801 () Bool)

(assert (=> b!1168568 m!1340801))

(declare-fun m!1340803 () Bool)

(assert (=> b!1168569 m!1340803))

(assert (=> b!1166502 m!1336681))

(declare-fun tp!334380 () Bool)

(declare-fun e!749067 () Bool)

(declare-fun b!1168571 () Bool)

(declare-fun tp!334381 () Bool)

(assert (=> b!1168571 (= e!749067 (and (inv!15164 (left!10074 (right!10404 (c!194629 (tokens!1624 thiss!10527))))) tp!334380 (inv!15164 (right!10404 (right!10404 (c!194629 (tokens!1624 thiss!10527))))) tp!334381))))

(declare-fun b!1168573 () Bool)

(declare-fun e!749066 () Bool)

(declare-fun tp!334382 () Bool)

(assert (=> b!1168573 (= e!749066 tp!334382)))

(declare-fun b!1168572 () Bool)

(assert (=> b!1168572 (= e!749067 (and (inv!15174 (xs!6482 (right!10404 (c!194629 (tokens!1624 thiss!10527))))) e!749066))))

(assert (=> b!1166502 (= tp!334256 (and (inv!15164 (right!10404 (c!194629 (tokens!1624 thiss!10527)))) e!749067))))

(assert (= (and b!1166502 ((_ is Node!3777) (right!10404 (c!194629 (tokens!1624 thiss!10527))))) b!1168571))

(assert (= b!1168572 b!1168573))

(assert (= (and b!1166502 ((_ is Leaf!5791) (right!10404 (c!194629 (tokens!1624 thiss!10527))))) b!1168572))

(declare-fun m!1340805 () Bool)

(assert (=> b!1168571 m!1340805))

(declare-fun m!1340807 () Bool)

(assert (=> b!1168571 m!1340807))

(declare-fun m!1340809 () Bool)

(assert (=> b!1168572 m!1340809))

(assert (=> b!1166502 m!1336683))

(declare-fun b_lambda!34901 () Bool)

(assert (= b_lambda!34771 (or d!332714 b_lambda!34901)))

(declare-fun bs!285410 () Bool)

(declare-fun d!334216 () Bool)

(assert (= bs!285410 (and d!334216 d!332714)))

(assert (=> bs!285410 (= (dynLambda!5074 lambda!47877 (h!16920 (list!4239 (tokens!1624 thiss!10527)))) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (list!4239 (tokens!1624 thiss!10527)))))))

(assert (=> bs!285410 m!1340677))

(assert (=> b!1166766 d!334216))

(declare-fun b_lambda!34903 () Bool)

(assert (= b_lambda!34829 (or b!1166281 b_lambda!34903)))

(declare-fun bs!285411 () Bool)

(declare-fun d!334218 () Bool)

(assert (= bs!285411 (and d!334218 b!1166281)))

(assert (=> bs!285411 (= (dynLambda!5074 lambda!47898 (h!16920 lt!398620)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398620)))))

(assert (=> bs!285411 m!1335429))

(assert (=> b!1167679 d!334218))

(declare-fun b_lambda!34905 () Bool)

(assert (= b_lambda!34893 (or d!332856 b_lambda!34905)))

(declare-fun bs!285412 () Bool)

(declare-fun d!334220 () Bool)

(assert (= bs!285412 (and d!334220 d!332856)))

(assert (=> bs!285412 (= (dynLambda!5074 lambda!47902 (h!16920 lt!398606)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398606)))))

(assert (=> bs!285412 m!1335299))

(assert (=> b!1168324 d!334220))

(declare-fun b_lambda!34907 () Bool)

(assert (= b_lambda!34779 (or d!332868 b_lambda!34907)))

(declare-fun bs!285413 () Bool)

(declare-fun d!334222 () Bool)

(assert (= bs!285413 (and d!334222 d!332868)))

(assert (=> bs!285413 (= (dynLambda!5074 lambda!47903 (h!16920 (t!110333 lt!398621))) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398621))))))

(assert (=> bs!285413 m!1336517))

(assert (=> b!1166891 d!334222))

(declare-fun b_lambda!34909 () Bool)

(assert (= b_lambda!34891 (or b!1166241 b_lambda!34909)))

(declare-fun bs!285414 () Bool)

(declare-fun d!334224 () Bool)

(assert (= bs!285414 (and d!334224 b!1166241)))

(assert (=> bs!285414 (= (dynLambda!5074 lambda!47890 (h!16920 lt!399136)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!399136)))))

(declare-fun m!1340811 () Bool)

(assert (=> bs!285414 m!1340811))

(assert (=> b!1168294 d!334224))

(declare-fun b_lambda!34911 () Bool)

(assert (= b_lambda!34805 (or b!1165777 b_lambda!34911)))

(declare-fun bs!285415 () Bool)

(declare-fun d!334226 () Bool)

(assert (= bs!285415 (and d!334226 b!1165777)))

(assert (=> bs!285415 (= (dynLambda!5074 lambda!47859 (h!16920 (t!110333 lt!398622))) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398622))))))

(assert (=> bs!285415 m!1336013))

(assert (=> b!1167322 d!334226))

(declare-fun b_lambda!34913 () Bool)

(assert (= b_lambda!34833 (or b!1165777 b_lambda!34913)))

(declare-fun bs!285416 () Bool)

(declare-fun d!334228 () Bool)

(assert (= bs!285416 (and d!334228 b!1165777)))

(assert (=> bs!285416 (= (dynLambda!5074 lambda!47859 (h!16920 (list!4239 (tokens!1624 thiss!10527)))) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (list!4239 (tokens!1624 thiss!10527)))))))

(assert (=> bs!285416 m!1340677))

(assert (=> b!1167755 d!334228))

(declare-fun b_lambda!34915 () Bool)

(assert (= b_lambda!34823 (or d!332834 b_lambda!34915)))

(declare-fun bs!285417 () Bool)

(declare-fun d!334230 () Bool)

(assert (= bs!285417 (and d!334230 d!332834)))

(assert (=> bs!285417 (= (dynLambda!5074 lambda!47891 (h!16920 lt!398622)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398622)))))

(assert (=> bs!285417 m!1335365))

(assert (=> b!1167650 d!334230))

(declare-fun b_lambda!34917 () Bool)

(assert (= b_lambda!34895 (or d!332712 b_lambda!34917)))

(declare-fun bs!285418 () Bool)

(declare-fun d!334232 () Bool)

(assert (= bs!285418 (and d!334232 d!332712)))

(assert (=> bs!285418 (= (dynLambda!5074 lambda!47872 (h!16920 (t!110333 lt!398606))) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398606))))))

(assert (=> bs!285418 m!1335689))

(assert (=> b!1168341 d!334232))

(declare-fun b_lambda!34919 () Bool)

(assert (= b_lambda!34803 (or d!332796 b_lambda!34919)))

(declare-fun bs!285419 () Bool)

(declare-fun d!334234 () Bool)

(assert (= bs!285419 (and d!334234 d!332796)))

(assert (=> bs!285419 (= (dynLambda!5074 lambda!47883 (h!16920 (t!110333 lt!398622))) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398622))))))

(assert (=> bs!285419 m!1336013))

(assert (=> b!1167309 d!334234))

(declare-fun b_lambda!34921 () Bool)

(assert (= b_lambda!34825 (or d!332732 b_lambda!34921)))

(declare-fun bs!285420 () Bool)

(declare-fun d!334236 () Bool)

(assert (= bs!285420 (and d!334236 d!332732)))

(assert (=> bs!285420 (= (dynLambda!5074 lambda!47878 (h!16920 lt!398620)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398620)))))

(assert (=> bs!285420 m!1335429))

(assert (=> b!1167652 d!334236))

(declare-fun b_lambda!34923 () Bool)

(assert (= b_lambda!34887 (or d!332758 b_lambda!34923)))

(declare-fun bs!285421 () Bool)

(declare-fun d!334238 () Bool)

(assert (= bs!285421 (and d!334238 d!332758)))

(assert (=> bs!285421 (= (dynLambda!5074 lambda!47881 (h!16920 (list!4239 lt!398609))) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (list!4239 lt!398609))))))

(assert (=> bs!285421 m!1338297))

(assert (=> b!1168230 d!334238))

(declare-fun b_lambda!34925 () Bool)

(assert (= b_lambda!34827 (or b!1166281 b_lambda!34925)))

(declare-fun bs!285422 () Bool)

(declare-fun d!334240 () Bool)

(assert (= bs!285422 (and d!334240 b!1166281)))

(assert (=> bs!285422 (= (dynLambda!5074 lambda!47898 (h!16920 lt!399183)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!399183)))))

(declare-fun m!1340813 () Bool)

(assert (=> bs!285422 m!1340813))

(assert (=> b!1167677 d!334240))

(declare-fun b_lambda!34927 () Bool)

(assert (= b_lambda!34807 (or b!1165777 b_lambda!34927)))

(declare-fun bs!285423 () Bool)

(declare-fun d!334242 () Bool)

(assert (= bs!285423 (and d!334242 b!1165777)))

(assert (=> bs!285423 (= (dynLambda!5074 lambda!47859 (h!16920 lt!398620)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398620)))))

(assert (=> bs!285423 m!1335429))

(assert (=> b!1167360 d!334242))

(declare-fun b_lambda!34929 () Bool)

(assert (= b_lambda!34821 (or d!332668 b_lambda!34929)))

(declare-fun bs!285424 () Bool)

(declare-fun d!334244 () Bool)

(assert (= bs!285424 (and d!334244 d!332668)))

(assert (=> bs!285424 (= (dynLambda!5074 lambda!47862 (h!16920 lt!398621)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398621)))))

(assert (=> bs!285424 m!1335415))

(assert (=> b!1167648 d!334244))

(declare-fun b_lambda!34931 () Bool)

(assert (= b_lambda!34889 (or b!1166241 b_lambda!34931)))

(declare-fun bs!285425 () Bool)

(declare-fun d!334246 () Bool)

(assert (= bs!285425 (and d!334246 b!1166241)))

(assert (=> bs!285425 (= (dynLambda!5074 lambda!47890 (h!16920 lt!398622)) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 lt!398622)))))

(assert (=> bs!285425 m!1335365))

(assert (=> b!1168292 d!334246))

(declare-fun b_lambda!34933 () Bool)

(assert (= b_lambda!34817 (or b!1165777 b_lambda!34933)))

(declare-fun bs!285426 () Bool)

(declare-fun d!334248 () Bool)

(assert (= bs!285426 (and d!334248 b!1165777)))

(assert (=> bs!285426 (= (dynLambda!5074 lambda!47859 (h!16920 (list!4239 lt!398609))) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (list!4239 lt!398609))))))

(assert (=> bs!285426 m!1338297))

(assert (=> b!1167628 d!334248))

(declare-fun b_lambda!34935 () Bool)

(assert (= b_lambda!34819 (or b!1165777 b_lambda!34935)))

(declare-fun bs!285427 () Bool)

(declare-fun d!334250 () Bool)

(assert (= bs!285427 (and d!334250 b!1165777)))

(assert (=> bs!285427 (= (dynLambda!5074 lambda!47859 (h!16920 (t!110333 lt!398606))) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398606))))))

(assert (=> bs!285427 m!1335689))

(assert (=> b!1167646 d!334250))

(declare-fun b_lambda!34937 () Bool)

(assert (= b_lambda!34791 (or b!1165777 b_lambda!34937)))

(declare-fun bs!285428 () Bool)

(declare-fun d!334252 () Bool)

(assert (= bs!285428 (and d!334252 b!1165777)))

(assert (=> bs!285428 (= (dynLambda!5074 lambda!47859 (h!16920 (t!110333 lt!398621))) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398621))))))

(assert (=> bs!285428 m!1336517))

(assert (=> b!1167146 d!334252))

(declare-fun b_lambda!34939 () Bool)

(assert (= b_lambda!34781 (or d!332754 b_lambda!34939)))

(declare-fun bs!285429 () Bool)

(declare-fun d!334254 () Bool)

(assert (= bs!285429 (and d!334254 d!332754)))

(assert (=> bs!285429 (= (dynLambda!5074 lambda!47880 (h!16920 (t!110333 lt!398620))) (rulesProduceIndividualToken!737 Lexer!1700 (rules!9572 thiss!10527) (h!16920 (t!110333 lt!398620))))))

(assert (=> bs!285429 m!1335869))

(assert (=> b!1166918 d!334254))

(declare-fun b_lambda!34941 () Bool)

(assert (= b_lambda!34731 (or (and b!1166515 b_free!27795 (= (toChars!2967 (transformation!2007 (h!16921 (rules!9572 thiss!10527)))) (toChars!2967 (transformation!2007 (rule!3428 lt!398625))))) (and b!1168483 b_free!27807 (= (toChars!2967 (transformation!2007 (h!16921 (t!110334 (rules!9572 thiss!10527))))) (toChars!2967 (transformation!2007 (rule!3428 lt!398625))))) (and b!1168520 b_free!27811 (= (toChars!2967 (transformation!2007 (rule!3428 (h!16920 (innerList!3837 (xs!6482 (c!194629 (tokens!1624 thiss!10527)))))))) (toChars!2967 (transformation!2007 (rule!3428 lt!398625))))) b_lambda!34941)))

(check-sat (not d!333398) (not b!1168231) (not b!1167108) (not d!334188) (not bs!285427) (not b!1168184) (not b!1167729) (not b!1167250) (not d!333358) (not d!333324) (not b!1168194) (not d!334122) (not d!333724) (not d!333466) (not b!1166758) (not b!1167708) (not d!334186) (not b!1167680) (not b!1167204) (not d!333334) (not b!1168098) (not d!334020) (not d!333424) (not b!1166757) (not d!333494) (not b!1168311) (not d!333976) (not bm!82243) (not b!1166868) (not b!1168331) (not b!1168564) (not b!1166916) (not d!333806) (not d!333360) (not b!1167187) (not bm!82241) (not d!333186) (not b!1167311) (not b!1167134) (not b!1167094) (not d!333474) (not d!333526) (not d!333342) (not d!334170) (not b_lambda!34927) (not b!1166773) (not bm!82184) (not d!333434) (not b!1167750) (not bs!285413) (not bs!285421) (not bm!82212) (not b!1168459) (not b!1168312) (not b!1168091) (not b!1168456) (not b!1168452) (not d!333528) (not b!1167627) (not d!333744) (not bm!82257) (not b!1168208) (not d!333356) (not b!1167379) (not b!1168424) (not b!1168373) (not b!1167613) (not d!334148) (not b!1166502) (not b!1167313) (not b!1168335) (not bm!82168) (not d!333096) (not b!1166774) (not bm!82249) (not b!1166909) (not bs!285415) (not b_lambda!34901) (not d!333326) (not d!334164) (not b!1167656) (not d!333188) (not b!1168221) (not b!1168519) (not b!1167298) (not d!333794) (not bs!285419) (not d!334044) (not d!334136) (not b_lambda!34935) (not b!1168095) (not b_lambda!34917) (not bs!285411) (not b!1168110) (not d!334050) (not b!1168287) (not bs!285414) (not d!334152) (not d!334102) (not b!1168255) (not d!333756) (not b!1167271) (not b!1167301) (not b!1168419) (not d!333078) (not b!1167292) (not b!1166886) (not b!1168362) (not b!1168142) (not d!334172) (not b!1168428) (not b!1167241) (not b!1167259) (not b!1168273) (not b!1168446) (not b!1167158) (not d!333094) (not b!1168378) (not d!333974) (not b!1167308) (not b!1168229) (not b!1168455) (not b!1167109) (not b!1166760) (not d!333332) (not d!333348) (not bs!285424) (not b!1168310) (not b!1168494) (not b!1168418) (not d!333476) (not b!1168462) (not d!334004) (not b!1168162) (not d!333162) (not b!1167126) (not b!1167157) (not tb!65867) (not d!334088) (not b!1167166) (not b!1168321) (not b!1167687) (not b!1167195) (not d!333984) (not b!1167612) (not b!1168127) (not b_lambda!34903) (not d!333388) (not b!1168166) (not b!1168482) (not b!1167160) (not b!1167136) (not d!333410) (not b!1168568) (not bm!82245) (not bs!285418) (not b!1167182) (not b!1166904) (not b!1168285) (not b!1168107) (not bs!285417) (not b!1168308) (not d!333998) (not b!1167174) (not b!1168355) (not b!1168289) (not bm!82188) (not d!334110) (not bm!82258) (not b!1168417) (not b!1167682) (not d!334100) (not b!1168480) (not b_lambda!34911) (not b!1168365) b_and!80711 (not b!1167607) (not b!1167668) (not d!334214) (not b!1166866) (not b_next!28497) (not d!333408) (not tb!65903) (not d!334054) (not b!1168518) (not b!1168148) (not b!1168536) (not bm!82191) (not b!1168562) (not b!1166768) (not b!1167761) (not b!1167672) (not d!334138) (not b!1167127) (not d!333406) (not d!333328) (not d!334056) (not b!1168119) (not b!1166889) (not b!1168435) (not b!1168223) (not d!333450) (not d!333362) (not bm!82190) (not bm!82259) (not b_lambda!34885) (not b!1168366) (not b!1168233) (not b!1168408) (not b!1168218) (not b!1168363) (not b!1167640) (not bs!285412) (not b!1167133) (not b!1167651) (not tb!65857) (not d!333196) (not d!333520) (not b!1167676) (not b!1167726) (not b!1168553) (not bs!285428) (not b!1168301) (not b!1167156) (not b!1168097) (not b!1168433) (not d!333986) (not b!1167725) (not b!1168108) (not b!1168193) (not b!1166915) (not b!1166865) (not b!1167724) (not b!1168101) (not b!1168552) (not b!1168434) (not b!1168120) (not b!1168207) (not b!1167623) (not b!1167178) (not b!1168175) (not b!1168264) (not b!1167754) (not b!1167378) (not b!1168374) (not d!333700) (not b!1167367) (not d!333764) (not d!334208) (not d!334162) (not d!334210) (not b!1168372) b_and!80669 (not b!1166777) (not b!1168138) (not b!1167112) (not b_lambda!34939) (not b!1167096) (not b!1168297) (not b!1167619) (not b!1166956) (not b!1166884) (not b!1168571) (not b!1167678) (not b!1168570) (not bs!285410) (not d!333762) (not b!1168195) (not b!1168210) (not d!334196) (not d!333092) (not b!1167312) (not d!333352) (not b!1168370) (not bs!285425) (not b!1168274) (not b!1168371) (not b!1168361) (not d!333962) (not b!1167135) (not d!334030) (not b!1168565) (not bm!82251) (not b!1168351) (not d!333696) (not b!1168481) (not b!1168369) (not b!1167758) (not d!334158) (not b!1168389) (not b!1168380) (not b!1166772) (not bs!285423) (not d!333310) (not bm!82254) (not b!1167091) (not b_lambda!34831) (not d!333412) (not b!1167226) b_and!80707 (not b!1168247) (not b!1167641) (not b!1168398) (not d!334024) (not b!1167669) (not d!333722) (not b!1168556) (not d!333076) (not b!1167177) (not b!1167284) (not b!1167267) (not b!1168479) (not b!1168306) (not b!1167385) (not b!1168234) (not d!334000) (not b!1168275) (not b!1167689) (not b!1167368) (not d!333322) (not d!333318) (not d!334070) (not d!334060) (not b!1167183) (not b!1168448) (not b!1167741) (not d!333766) (not b!1168550) tp_is_empty!5727 (not d!333492) (not b!1168501) (not d!333482) (not d!333798) (not b!1168276) (not b!1167300) (not b!1167249) (not b!1166770) (not d!333714) (not b!1168498) (not d!333308) (not b!1167181) (not bm!82253) (not b!1168368) (not b!1168209) (not b!1167145) (not b!1168367) (not b!1166858) (not b!1166756) (not b!1166765) (not d!334092) (not d!333098) (not d!333702) (not b!1166764) (not b!1167276) (not b!1167110) (not d!334028) (not bm!82192) (not b!1167280) (not d!333158) (not b!1167645) (not b!1168183) (not d!333202) (not d!333784) (not b!1167615) (not d!333314) (not b!1168464) (not bm!82256) (not b!1167688) (not b!1167681) (not d!334146) (not b!1166763) (not b!1168425) (not b!1167180) (not b!1167762) (not d!333346) (not b!1167213) (not d!333546) (not b!1168181) (not b!1166859) (not b!1167297) (not b!1168309) (not b!1167265) (not d!333472) (not b!1168296) (not b_lambda!34909) (not b!1167310) (not b!1166740) (not b!1167753) (not d!333384) (not b!1166771) (not d!334200) (not b!1167111) (not b!1168375) (not b!1168346) (not b!1168122) (not b!1166953) (not b!1167264) (not d!333292) (not b!1167242) (not b!1167361) (not b!1168377) (not b!1168295) (not b!1168402) (not d!333200) (not d!333964) (not b!1168263) (not b!1168277) (not b!1168106) (not d!333952) (not b_lambda!34923) (not d!333316) (not d!333738) (not d!333180) (not b!1168220) (not b!1167304) (not b!1168572) (not bm!82255) (not b!1168248) (not b!1167171) (not d!334076) (not d!334198) (not b!1167760) (not b!1166776) (not d!333414) (not b!1167199) (not d!334064) (not d!333792) (not b!1167622) (not b!1166876) (not b_lambda!34913) (not bm!82250) (not b!1167106) (not d!334016) (not b!1168121) (not bs!285422) (not b!1166894) (not b!1167147) (not b!1168478) (not b!1167141) (not d!334038) (not d!333088) (not b!1166888) (not b!1168144) (not b!1168089) (not bm!82247) (not b!1167711) (not b!1167675) (not b!1168188) (not d!333446) (not d!333988) (not d!333782) (not b!1167712) (not b!1168123) (not d!333422) (not d!333430) (not d!333438) (not b!1167138) (not b!1168286) (not d!334002) (not b!1168360) (not b!1167154) (not b!1166910) (not d!333778) (not d!334026) (not tb!65899) (not d!333166) (not b!1168521) (not b!1168421) (not b!1166895) (not b!1168180) (not b!1168429) (not b!1168215) (not b!1168134) (not d!333206) (not b!1168567) (not b!1168539) (not b_lambda!34931) (not d!334192) (not b_lambda!34749) (not d!333366) (not b!1167159) (not b!1168204) (not b!1167142) (not b!1168569) (not d!333808) (not d!334036) (not b!1168228) (not b!1168257) (not b_lambda!34907) (not b!1167649) (not d!333364) (not d!334062) (not b_next!28499) (not b!1166741) (not b!1168551) (not b_lambda!34897) (not d!334072) (not b!1167173) (not b!1167179) (not b!1166906) (not b!1166893) (not b!1167660) (not b!1167614) (not b!1167727) (not b!1167740) (not b!1166914) (not b_lambda!34751) (not b!1168466) (not b!1168530) (not d!333788) (not b!1167247) (not d!334018) (not bm!82213) (not b!1167208) (not b!1167759) (not b!1168427) (not b!1168222) (not d!333174) (not b_next!28511) (not b!1167665) (not d!334130) (not b!1168524) (not d!333506) (not b!1168235) (not b_lambda!34941) (not b!1166867) (not b!1167647) (not b!1167139) (not b!1168376) (not b!1168527) (not b!1167283) (not b!1168252) (not b!1168384) (not b!1168094) (not b!1166775) (not d!333072) (not b!1167626) (not b!1168199) (not d!333456) (not b!1166952) (not b_lambda!34933) (not b!1168412) (not d!333958) (not b!1168157) (not b!1166779) (not d!334104) (not b!1166899) (not b_lambda!34915) (not b!1168379) (not b!1168307) (not b!1168573) (not b!1167089) (not bs!285420) (not b!1168143) (not b!1168327) (not b!1166874) (not d!333954) (not b!1166885) (not d!333178) (not b!1167655) (not d!334160) (not bm!82252) (not b!1166520) (not b!1168342) (not d!333978) (not d!333320) (not b!1168139) (not d!333344) (not d!333350) (not b!1167684) (not b!1168102) (not d!333330) (not d!333462) (not b_lambda!34905) (not b!1167248) (not b!1166745) (not b!1166744) (not b!1167085) (not b!1167728) (not d!333064) (not b!1167234) (not d!333536) (not b!1167756) (not b!1167107) (not b!1166767) (not d!333760) (not d!333968) (not d!334010) (not b!1168325) (not b!1168533) b_and!80709 (not d!334156) (not d!334144) (not bm!82246) (not b_lambda!34801) (not b!1167369) (not d!334058) (not b_lambda!34899) (not b!1166957) (not d!334194) (not b!1167281) (not b!1167266) (not b!1167299) (not b!1168323) (not d!334042) (not d!333698) (not b!1166759) (not b!1166933) (not b!1167685) (not b!1166954) (not b!1166778) (not b!1168449) (not b!1168096) (not b!1166919) (not d!333100) (not b_lambda!34793) (not b!1166890) (not b!1168182) (not b!1167736) (not b!1166769) (not b!1166892) (not b!1168278) (not b!1168340) (not b!1168329) (not b!1166862) (not b!1167105) (not b_next!28513) (not b!1167167) (not b_lambda!34921) (not b!1168137) (not b!1167606) (not b!1167155) (not bs!285429) (not d!334132) (not b_lambda!34925) (not b!1168114) (not b!1168090) (not b!1168461) (not d!333502) (not d!333710) (not b!1168256) (not d!333990) (not b!1168420) (not d!333104) (not d!333084) (not b!1168140) (not b!1167125) (not d!333786) (not d!333192) (not b!1167386) (not d!334168) (not b!1168407) (not tb!65901) (not d!333732) (not b!1168171) (not b!1167282) (not d!333960) (not b!1168517) (not bs!285416) (not b!1167285) (not d!334040) (not b!1167221) (not d!333068) (not d!333994) (not d!333966) (not bm!82242) (not tb!65861) (not b!1168109) (not d!333290) (not b!1168393) (not b!1167745) (not bm!82185) (not d!334184) (not b!1168268) (not d!333160) (not bm!82183) (not d!334142) b_and!80703 (not b!1168293) (not b!1168236) (not d!333390) (not d!334176) (not b!1168251) (not d!333980) (not bs!285426) (not b!1167321) (not b!1168135) (not d!333736) (not d!334120) (not b!1167340) (not b!1167763) (not b!1167671) (not b!1167384) (not d!333194) (not b_lambda!34753) (not d!333704) (not b!1168559) (not d!333758) (not b!1168242) (not d!333484) (not b!1168262) (not d!333982) (not b_lambda!34919) (not b!1168504) (not b!1167149) (not d!333804) (not b_next!28515) (not b!1167639) (not b!1167653) (not b!1166917) (not b_lambda!34929) (not b!1168254) (not d!334128) (not b_lambda!34937) (not b!1166887) (not d!334098) (not d!333790) (not b!1167169) (not d!334078) (not d!334150) (not d!333190) (not b!1167080) b_and!80705 (not b!1167188) (not b!1167617) (not b!1167140) (not b_next!28509) (not b!1166882) (not d!334190) (not b!1166911) (not d!333070) (not b!1166861) (not d!334084) (not b!1167618) (not b!1166955) (not b!1168430) (not bm!82209) (not b!1167643) (not b!1167629) (not b!1168153) (not b!1168133) (not b!1167686) (not d!333340) (not b!1167323) (not b!1168141) (not b!1168458) (not b!1167605) (not b!1167707) (not d!333420) (not b!1168288) (not b!1166883) (not bm!82187) (not d!334126) (not b!1167239) (not d!333772) (not d!334166) (not d!333996) (not d!333754) (not b!1166912) (not d!333458) (not bm!82182) (not d!333354) (not b!1167170) (not b!1167078) (not d!333416) (not b!1168447) (not b!1168364) (not d!334080) (not b!1168136) (not b!1168216) (not bm!82248) (not b!1167240) (not b!1168132) (not b!1167654) (not d!334008) (not bm!82189) (not b!1168253) (not d!333992) (not d!334178) (not b!1167184) (not d!333694) (not b!1167674) (not bm!82244))
(check-sat b_and!80669 b_and!80707 (not b_next!28499) (not b_next!28511) b_and!80709 (not b_next!28513) b_and!80703 (not b_next!28497) b_and!80711 (not b_next!28515) b_and!80705 (not b_next!28509))
