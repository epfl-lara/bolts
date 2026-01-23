; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136286 () Bool)

(assert start!136286)

(declare-fun b!1460847 () Bool)

(declare-fun e!931965 () Bool)

(declare-datatypes ((C!8152 0))(
  ( (C!8153 (val!4646 Int)) )
))
(declare-datatypes ((List!15238 0))(
  ( (Nil!15172) (Cons!15172 (h!20573 C!8152) (t!134381 List!15238)) )
))
(declare-datatypes ((IArray!10349 0))(
  ( (IArray!10350 (innerList!5232 List!15238)) )
))
(declare-datatypes ((Conc!5172 0))(
  ( (Node!5172 (left!12895 Conc!5172) (right!13225 Conc!5172) (csize!10574 Int) (cheight!5383 Int)) (Leaf!7710 (xs!7919 IArray!10349) (csize!10575 Int)) (Empty!5172) )
))
(declare-datatypes ((BalanceConc!10284 0))(
  ( (BalanceConc!10285 (c!240744 Conc!5172)) )
))
(declare-datatypes ((List!15239 0))(
  ( (Nil!15173) (Cons!15173 (h!20574 (_ BitVec 16)) (t!134382 List!15239)) )
))
(declare-datatypes ((TokenValue!2763 0))(
  ( (FloatLiteralValue!5526 (text!19786 List!15239)) (TokenValueExt!2762 (__x!9316 Int)) (Broken!13815 (value!85802 List!15239)) (Object!2828) (End!2763) (Def!2763) (Underscore!2763) (Match!2763) (Else!2763) (Error!2763) (Case!2763) (If!2763) (Extends!2763) (Abstract!2763) (Class!2763) (Val!2763) (DelimiterValue!5526 (del!2823 List!15239)) (KeywordValue!2769 (value!85803 List!15239)) (CommentValue!5526 (value!85804 List!15239)) (WhitespaceValue!5526 (value!85805 List!15239)) (IndentationValue!2763 (value!85806 List!15239)) (String!18070) (Int32!2763) (Broken!13816 (value!85807 List!15239)) (Boolean!2764) (Unit!24234) (OperatorValue!2766 (op!2823 List!15239)) (IdentifierValue!5526 (value!85808 List!15239)) (IdentifierValue!5527 (value!85809 List!15239)) (WhitespaceValue!5527 (value!85810 List!15239)) (True!5526) (False!5526) (Broken!13817 (value!85811 List!15239)) (Broken!13818 (value!85812 List!15239)) (True!5527) (RightBrace!2763) (RightBracket!2763) (Colon!2763) (Null!2763) (Comma!2763) (LeftBracket!2763) (False!5527) (LeftBrace!2763) (ImaginaryLiteralValue!2763 (text!19787 List!15239)) (StringLiteralValue!8289 (value!85813 List!15239)) (EOFValue!2763 (value!85814 List!15239)) (IdentValue!2763 (value!85815 List!15239)) (DelimiterValue!5527 (value!85816 List!15239)) (DedentValue!2763 (value!85817 List!15239)) (NewLineValue!2763 (value!85818 List!15239)) (IntegerValue!8289 (value!85819 (_ BitVec 32)) (text!19788 List!15239)) (IntegerValue!8290 (value!85820 Int) (text!19789 List!15239)) (Times!2763) (Or!2763) (Equal!2763) (Minus!2763) (Broken!13819 (value!85821 List!15239)) (And!2763) (Div!2763) (LessEqual!2763) (Mod!2763) (Concat!6750) (Not!2763) (Plus!2763) (SpaceValue!2763 (value!85822 List!15239)) (IntegerValue!8291 (value!85823 Int) (text!19790 List!15239)) (StringLiteralValue!8290 (text!19791 List!15239)) (FloatLiteralValue!5527 (text!19792 List!15239)) (BytesLiteralValue!2763 (value!85824 List!15239)) (CommentValue!5527 (value!85825 List!15239)) (StringLiteralValue!8291 (value!85826 List!15239)) (ErrorTokenValue!2763 (msg!2824 List!15239)) )
))
(declare-datatypes ((Regex!3987 0))(
  ( (ElementMatch!3987 (c!240745 C!8152)) (Concat!6751 (regOne!8486 Regex!3987) (regTwo!8486 Regex!3987)) (EmptyExpr!3987) (Star!3987 (reg!4316 Regex!3987)) (EmptyLang!3987) (Union!3987 (regOne!8487 Regex!3987) (regTwo!8487 Regex!3987)) )
))
(declare-datatypes ((String!18071 0))(
  ( (String!18072 (value!85827 String)) )
))
(declare-datatypes ((TokenValueInjection!5186 0))(
  ( (TokenValueInjection!5187 (toValue!3984 Int) (toChars!3843 Int)) )
))
(declare-datatypes ((Rule!5146 0))(
  ( (Rule!5147 (regex!2673 Regex!3987) (tag!2937 String!18071) (isSeparator!2673 Bool) (transformation!2673 TokenValueInjection!5186)) )
))
(declare-datatypes ((Token!5008 0))(
  ( (Token!5009 (value!85828 TokenValue!2763) (rule!4446 Rule!5146) (size!12407 Int) (originalCharacters!3535 List!15238)) )
))
(declare-datatypes ((List!15240 0))(
  ( (Nil!15174) (Cons!15174 (h!20575 Token!5008) (t!134383 List!15240)) )
))
(declare-datatypes ((IArray!10351 0))(
  ( (IArray!10352 (innerList!5233 List!15240)) )
))
(declare-datatypes ((Conc!5173 0))(
  ( (Node!5173 (left!12896 Conc!5173) (right!13226 Conc!5173) (csize!10576 Int) (cheight!5384 Int)) (Leaf!7711 (xs!7920 IArray!10351) (csize!10577 Int)) (Empty!5173) )
))
(declare-datatypes ((BalanceConc!10286 0))(
  ( (BalanceConc!10287 (c!240746 Conc!5173)) )
))
(declare-datatypes ((List!15241 0))(
  ( (Nil!15175) (Cons!15175 (h!20576 Rule!5146) (t!134384 List!15241)) )
))
(declare-datatypes ((PrintableTokens!1128 0))(
  ( (PrintableTokens!1129 (rules!11668 List!15241) (tokens!2100 BalanceConc!10286)) )
))
(declare-fun thiss!10022 () PrintableTokens!1128)

(declare-fun tp!411567 () Bool)

(declare-fun inv!20275 (Conc!5173) Bool)

(assert (=> b!1460847 (= e!931965 (and (inv!20275 (c!240746 (tokens!2100 thiss!10022))) tp!411567))))

(declare-fun b!1460848 () Bool)

(declare-fun e!931962 () Bool)

(declare-fun e!931967 () Bool)

(assert (=> b!1460848 (= e!931962 e!931967)))

(declare-fun res!661053 () Bool)

(assert (=> b!1460848 (=> res!661053 e!931967)))

(declare-fun lt!504662 () BalanceConc!10286)

(declare-datatypes ((LexerInterface!2329 0))(
  ( (LexerInterfaceExt!2326 (__x!9317 Int)) (Lexer!2327) )
))
(declare-fun tokensListTwoByTwoPredicateSeparable!136 (LexerInterface!2329 BalanceConc!10286 Int List!15241) Bool)

(assert (=> b!1460848 (= res!661053 (not (tokensListTwoByTwoPredicateSeparable!136 Lexer!2327 lt!504662 0 (rules!11668 thiss!10022))))))

(declare-fun other!32 () PrintableTokens!1128)

(declare-fun ++!4079 (BalanceConc!10286 BalanceConc!10286) BalanceConc!10286)

(assert (=> b!1460848 (= lt!504662 (++!4079 (tokens!2100 thiss!10022) (tokens!2100 other!32)))))

(declare-fun e!931964 () Bool)

(assert (=> b!1460848 e!931964))

(declare-fun res!661058 () Bool)

(assert (=> b!1460848 (=> (not res!661058) (not e!931964))))

(declare-fun lt!504655 () List!15240)

(declare-fun rulesProduceEachTokenIndividuallyList!748 (LexerInterface!2329 List!15241 List!15240) Bool)

(assert (=> b!1460848 (= res!661058 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!504655))))

(declare-fun lt!504650 () List!15240)

(declare-fun lt!504657 () List!15240)

(declare-fun ++!4080 (List!15240 List!15240) List!15240)

(assert (=> b!1460848 (= lt!504655 (++!4080 lt!504650 lt!504657))))

(declare-datatypes ((Unit!24235 0))(
  ( (Unit!24236) )
))
(declare-fun lt!504654 () Unit!24235)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!54 (LexerInterface!2329 List!15241 List!15240 List!15240) Unit!24235)

(assert (=> b!1460848 (= lt!504654 (lemmaRulesProduceEachTokenIndividuallyConcat!54 Lexer!2327 (rules!11668 thiss!10022) lt!504650 lt!504657))))

(declare-fun lt!504663 () Unit!24235)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!54 (LexerInterface!2329 List!15240 List!15240 List!15241) Unit!24235)

(assert (=> b!1460848 (= lt!504663 (tokensListTwoByTwoPredicateConcatSeparableTokensList!54 Lexer!2327 lt!504650 lt!504657 (rules!11668 thiss!10022)))))

(declare-fun b!1460849 () Bool)

(declare-fun e!931969 () Bool)

(assert (=> b!1460849 (= e!931969 (not e!931962))))

(declare-fun res!661057 () Bool)

(assert (=> b!1460849 (=> res!661057 e!931962)))

(declare-fun lt!504656 () Token!5008)

(declare-fun lt!504659 () Token!5008)

(declare-fun separableTokensPredicate!538 (LexerInterface!2329 Token!5008 Token!5008 List!15241) Bool)

(assert (=> b!1460849 (= res!661057 (not (separableTokensPredicate!538 Lexer!2327 lt!504656 lt!504659 (rules!11668 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1248 (LexerInterface!2329 List!15241 Token!5008) Bool)

(assert (=> b!1460849 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!504659)))

(declare-fun lt!504661 () Unit!24235)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 (LexerInterface!2329 List!15241 List!15240 Token!5008) Unit!24235)

(assert (=> b!1460849 (= lt!504661 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!504657 lt!504659))))

(declare-fun head!3005 (BalanceConc!10286) Token!5008)

(assert (=> b!1460849 (= lt!504659 (head!3005 (tokens!2100 other!32)))))

(declare-fun list!6073 (BalanceConc!10286) List!15240)

(assert (=> b!1460849 (= lt!504657 (list!6073 (tokens!2100 other!32)))))

(assert (=> b!1460849 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!504656)))

(declare-fun lt!504658 () Unit!24235)

(assert (=> b!1460849 (= lt!504658 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!504650 lt!504656))))

(declare-fun last!277 (BalanceConc!10286) Token!5008)

(assert (=> b!1460849 (= lt!504656 (last!277 (tokens!2100 thiss!10022)))))

(assert (=> b!1460849 (= lt!504650 (list!6073 (tokens!2100 thiss!10022)))))

(declare-fun b!1460850 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!247 (LexerInterface!2329 List!15240 List!15241) Bool)

(assert (=> b!1460850 (= e!931964 (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 lt!504655 (rules!11668 thiss!10022)))))

(declare-fun b!1460851 () Bool)

(declare-fun res!661054 () Bool)

(assert (=> b!1460851 (=> (not res!661054) (not e!931969))))

(declare-fun isEmpty!9519 (BalanceConc!10286) Bool)

(assert (=> b!1460851 (= res!661054 (not (isEmpty!9519 (tokens!2100 thiss!10022))))))

(declare-fun res!661056 () Bool)

(declare-fun e!931963 () Bool)

(assert (=> start!136286 (=> (not res!661056) (not e!931963))))

(assert (=> start!136286 (= res!661056 (= (rules!11668 thiss!10022) (rules!11668 other!32)))))

(assert (=> start!136286 e!931963))

(declare-fun e!931966 () Bool)

(declare-fun inv!20276 (PrintableTokens!1128) Bool)

(assert (=> start!136286 (and (inv!20276 thiss!10022) e!931966)))

(declare-fun e!931970 () Bool)

(assert (=> start!136286 (and (inv!20276 other!32) e!931970)))

(declare-fun e!931968 () Bool)

(declare-fun b!1460852 () Bool)

(declare-fun tp!411566 () Bool)

(declare-fun inv!20277 (BalanceConc!10286) Bool)

(assert (=> b!1460852 (= e!931970 (and tp!411566 (inv!20277 (tokens!2100 other!32)) e!931968))))

(declare-fun b!1460853 () Bool)

(assert (=> b!1460853 (= e!931963 e!931969)))

(declare-fun res!661055 () Bool)

(assert (=> b!1460853 (=> (not res!661055) (not e!931969))))

(assert (=> b!1460853 (= res!661055 (not (isEmpty!9519 (tokens!2100 other!32))))))

(declare-fun lt!504653 () Unit!24235)

(declare-fun lemmaInvariant!369 (PrintableTokens!1128) Unit!24235)

(assert (=> b!1460853 (= lt!504653 (lemmaInvariant!369 thiss!10022))))

(declare-fun lt!504652 () Unit!24235)

(assert (=> b!1460853 (= lt!504652 (lemmaInvariant!369 other!32))))

(declare-fun b!1460854 () Bool)

(declare-fun tp!411565 () Bool)

(assert (=> b!1460854 (= e!931968 (and (inv!20275 (c!240746 (tokens!2100 other!32))) tp!411565))))

(declare-fun tp!411568 () Bool)

(declare-fun b!1460855 () Bool)

(assert (=> b!1460855 (= e!931966 (and tp!411568 (inv!20277 (tokens!2100 thiss!10022)) e!931965))))

(declare-fun b!1460856 () Bool)

(assert (=> b!1460856 (= e!931967 (inv!20276 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)))))

(declare-fun print!1102 (PrintableTokens!1128) BalanceConc!10284)

(declare-fun print!1103 (LexerInterface!2329 BalanceConc!10286) BalanceConc!10284)

(assert (=> b!1460856 (= (print!1102 other!32) (print!1103 Lexer!2327 (tokens!2100 other!32)))))

(declare-fun lt!504651 () Unit!24235)

(declare-fun theoremInvertabilityWhenTokenListSeparable!77 (LexerInterface!2329 List!15241 List!15240) Unit!24235)

(assert (=> b!1460856 (= lt!504651 (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 other!32) lt!504657))))

(assert (=> b!1460856 (= (print!1102 thiss!10022) (print!1103 Lexer!2327 (tokens!2100 thiss!10022)))))

(declare-fun lt!504660 () Unit!24235)

(assert (=> b!1460856 (= lt!504660 (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 thiss!10022) lt!504650))))

(declare-fun printList!725 (LexerInterface!2329 List!15240) List!15238)

(declare-fun ++!4081 (List!15238 List!15238) List!15238)

(assert (=> b!1460856 (= (printList!725 Lexer!2327 lt!504655) (++!4081 (printList!725 Lexer!2327 lt!504650) (printList!725 Lexer!2327 lt!504657)))))

(declare-fun lt!504649 () Unit!24235)

(declare-fun lemmaPrintConcatSameAsConcatPrint!76 (LexerInterface!2329 List!15240 List!15240) Unit!24235)

(assert (=> b!1460856 (= lt!504649 (lemmaPrintConcatSameAsConcatPrint!76 Lexer!2327 lt!504650 lt!504657))))

(assert (= (and start!136286 res!661056) b!1460853))

(assert (= (and b!1460853 res!661055) b!1460851))

(assert (= (and b!1460851 res!661054) b!1460849))

(assert (= (and b!1460849 (not res!661057)) b!1460848))

(assert (= (and b!1460848 res!661058) b!1460850))

(assert (= (and b!1460848 (not res!661053)) b!1460856))

(assert (= b!1460855 b!1460847))

(assert (= start!136286 b!1460855))

(assert (= b!1460852 b!1460854))

(assert (= start!136286 b!1460852))

(declare-fun m!1695637 () Bool)

(assert (=> b!1460849 m!1695637))

(declare-fun m!1695639 () Bool)

(assert (=> b!1460849 m!1695639))

(declare-fun m!1695641 () Bool)

(assert (=> b!1460849 m!1695641))

(declare-fun m!1695643 () Bool)

(assert (=> b!1460849 m!1695643))

(declare-fun m!1695645 () Bool)

(assert (=> b!1460849 m!1695645))

(declare-fun m!1695647 () Bool)

(assert (=> b!1460849 m!1695647))

(declare-fun m!1695649 () Bool)

(assert (=> b!1460849 m!1695649))

(declare-fun m!1695651 () Bool)

(assert (=> b!1460849 m!1695651))

(declare-fun m!1695653 () Bool)

(assert (=> b!1460849 m!1695653))

(declare-fun m!1695655 () Bool)

(assert (=> b!1460856 m!1695655))

(declare-fun m!1695657 () Bool)

(assert (=> b!1460856 m!1695657))

(declare-fun m!1695659 () Bool)

(assert (=> b!1460856 m!1695659))

(declare-fun m!1695661 () Bool)

(assert (=> b!1460856 m!1695661))

(declare-fun m!1695663 () Bool)

(assert (=> b!1460856 m!1695663))

(declare-fun m!1695665 () Bool)

(assert (=> b!1460856 m!1695665))

(declare-fun m!1695667 () Bool)

(assert (=> b!1460856 m!1695667))

(declare-fun m!1695669 () Bool)

(assert (=> b!1460856 m!1695669))

(assert (=> b!1460856 m!1695657))

(declare-fun m!1695671 () Bool)

(assert (=> b!1460856 m!1695671))

(declare-fun m!1695673 () Bool)

(assert (=> b!1460856 m!1695673))

(declare-fun m!1695675 () Bool)

(assert (=> b!1460856 m!1695675))

(declare-fun m!1695677 () Bool)

(assert (=> b!1460856 m!1695677))

(assert (=> b!1460856 m!1695655))

(declare-fun m!1695679 () Bool)

(assert (=> b!1460852 m!1695679))

(declare-fun m!1695681 () Bool)

(assert (=> b!1460851 m!1695681))

(declare-fun m!1695683 () Bool)

(assert (=> b!1460848 m!1695683))

(declare-fun m!1695685 () Bool)

(assert (=> b!1460848 m!1695685))

(declare-fun m!1695687 () Bool)

(assert (=> b!1460848 m!1695687))

(declare-fun m!1695689 () Bool)

(assert (=> b!1460848 m!1695689))

(declare-fun m!1695691 () Bool)

(assert (=> b!1460848 m!1695691))

(declare-fun m!1695693 () Bool)

(assert (=> b!1460848 m!1695693))

(declare-fun m!1695695 () Bool)

(assert (=> b!1460847 m!1695695))

(declare-fun m!1695697 () Bool)

(assert (=> b!1460853 m!1695697))

(declare-fun m!1695699 () Bool)

(assert (=> b!1460853 m!1695699))

(declare-fun m!1695701 () Bool)

(assert (=> b!1460853 m!1695701))

(declare-fun m!1695703 () Bool)

(assert (=> b!1460854 m!1695703))

(declare-fun m!1695705 () Bool)

(assert (=> b!1460850 m!1695705))

(declare-fun m!1695707 () Bool)

(assert (=> start!136286 m!1695707))

(declare-fun m!1695709 () Bool)

(assert (=> start!136286 m!1695709))

(declare-fun m!1695711 () Bool)

(assert (=> b!1460855 m!1695711))

(check-sat (not b!1460853) (not b!1460848) (not b!1460852) (not b!1460855) (not b!1460854) (not start!136286) (not b!1460851) (not b!1460850) (not b!1460856) (not b!1460847) (not b!1460849))
(check-sat)
(get-model)

(declare-fun d!427638 () Bool)

(declare-fun c!240749 () Bool)

(get-info :version)

(assert (=> d!427638 (= c!240749 ((_ is Node!5173) (c!240746 (tokens!2100 other!32))))))

(declare-fun e!931975 () Bool)

(assert (=> d!427638 (= (inv!20275 (c!240746 (tokens!2100 other!32))) e!931975)))

(declare-fun b!1460863 () Bool)

(declare-fun inv!20280 (Conc!5173) Bool)

(assert (=> b!1460863 (= e!931975 (inv!20280 (c!240746 (tokens!2100 other!32))))))

(declare-fun b!1460864 () Bool)

(declare-fun e!931976 () Bool)

(assert (=> b!1460864 (= e!931975 e!931976)))

(declare-fun res!661065 () Bool)

(assert (=> b!1460864 (= res!661065 (not ((_ is Leaf!7711) (c!240746 (tokens!2100 other!32)))))))

(assert (=> b!1460864 (=> res!661065 e!931976)))

(declare-fun b!1460865 () Bool)

(declare-fun inv!20281 (Conc!5173) Bool)

(assert (=> b!1460865 (= e!931976 (inv!20281 (c!240746 (tokens!2100 other!32))))))

(assert (= (and d!427638 c!240749) b!1460863))

(assert (= (and d!427638 (not c!240749)) b!1460864))

(assert (= (and b!1460864 (not res!661065)) b!1460865))

(declare-fun m!1695717 () Bool)

(assert (=> b!1460863 m!1695717))

(declare-fun m!1695719 () Bool)

(assert (=> b!1460865 m!1695719))

(assert (=> b!1460854 d!427638))

(declare-fun d!427640 () Bool)

(declare-fun lt!504669 () Bool)

(declare-fun isEmpty!9525 (List!15240) Bool)

(assert (=> d!427640 (= lt!504669 (isEmpty!9525 (list!6073 (tokens!2100 other!32))))))

(declare-fun isEmpty!9526 (Conc!5173) Bool)

(assert (=> d!427640 (= lt!504669 (isEmpty!9526 (c!240746 (tokens!2100 other!32))))))

(assert (=> d!427640 (= (isEmpty!9519 (tokens!2100 other!32)) lt!504669)))

(declare-fun bs!344155 () Bool)

(assert (= bs!344155 d!427640))

(assert (=> bs!344155 m!1695651))

(assert (=> bs!344155 m!1695651))

(declare-fun m!1695721 () Bool)

(assert (=> bs!344155 m!1695721))

(declare-fun m!1695723 () Bool)

(assert (=> bs!344155 m!1695723))

(assert (=> b!1460853 d!427640))

(declare-fun d!427642 () Bool)

(declare-fun e!931993 () Bool)

(assert (=> d!427642 e!931993))

(declare-fun res!661093 () Bool)

(assert (=> d!427642 (=> (not res!661093) (not e!931993))))

(declare-fun rulesInvariant!2162 (LexerInterface!2329 List!15241) Bool)

(assert (=> d!427642 (= res!661093 (rulesInvariant!2162 Lexer!2327 (rules!11668 thiss!10022)))))

(declare-fun Unit!24270 () Unit!24235)

(assert (=> d!427642 (= (lemmaInvariant!369 thiss!10022) Unit!24270)))

(declare-fun b!1460899 () Bool)

(declare-fun res!661094 () Bool)

(assert (=> b!1460899 (=> (not res!661094) (not e!931993))))

(declare-fun rulesProduceEachTokenIndividually!879 (LexerInterface!2329 List!15241 BalanceConc!10286) Bool)

(assert (=> b!1460899 (= res!661094 (rulesProduceEachTokenIndividually!879 Lexer!2327 (rules!11668 thiss!10022) (tokens!2100 thiss!10022)))))

(declare-fun b!1460900 () Bool)

(declare-fun separableTokens!263 (LexerInterface!2329 BalanceConc!10286 List!15241) Bool)

(assert (=> b!1460900 (= e!931993 (separableTokens!263 Lexer!2327 (tokens!2100 thiss!10022) (rules!11668 thiss!10022)))))

(assert (= (and d!427642 res!661093) b!1460899))

(assert (= (and b!1460899 res!661094) b!1460900))

(declare-fun m!1695749 () Bool)

(assert (=> d!427642 m!1695749))

(declare-fun m!1695751 () Bool)

(assert (=> b!1460899 m!1695751))

(declare-fun m!1695753 () Bool)

(assert (=> b!1460900 m!1695753))

(assert (=> b!1460853 d!427642))

(declare-fun d!427656 () Bool)

(declare-fun e!931994 () Bool)

(assert (=> d!427656 e!931994))

(declare-fun res!661095 () Bool)

(assert (=> d!427656 (=> (not res!661095) (not e!931994))))

(assert (=> d!427656 (= res!661095 (rulesInvariant!2162 Lexer!2327 (rules!11668 other!32)))))

(declare-fun Unit!24271 () Unit!24235)

(assert (=> d!427656 (= (lemmaInvariant!369 other!32) Unit!24271)))

(declare-fun b!1460901 () Bool)

(declare-fun res!661096 () Bool)

(assert (=> b!1460901 (=> (not res!661096) (not e!931994))))

(assert (=> b!1460901 (= res!661096 (rulesProduceEachTokenIndividually!879 Lexer!2327 (rules!11668 other!32) (tokens!2100 other!32)))))

(declare-fun b!1460902 () Bool)

(assert (=> b!1460902 (= e!931994 (separableTokens!263 Lexer!2327 (tokens!2100 other!32) (rules!11668 other!32)))))

(assert (= (and d!427656 res!661095) b!1460901))

(assert (= (and b!1460901 res!661096) b!1460902))

(declare-fun m!1695755 () Bool)

(assert (=> d!427656 m!1695755))

(declare-fun m!1695757 () Bool)

(assert (=> b!1460901 m!1695757))

(declare-fun m!1695759 () Bool)

(assert (=> b!1460902 m!1695759))

(assert (=> b!1460853 d!427656))

(declare-fun d!427658 () Bool)

(declare-fun isBalanced!1550 (Conc!5173) Bool)

(assert (=> d!427658 (= (inv!20277 (tokens!2100 other!32)) (isBalanced!1550 (c!240746 (tokens!2100 other!32))))))

(declare-fun bs!344157 () Bool)

(assert (= bs!344157 d!427658))

(declare-fun m!1695761 () Bool)

(assert (=> bs!344157 m!1695761))

(assert (=> b!1460852 d!427658))

(declare-fun d!427660 () Bool)

(assert (=> d!427660 (= (printList!725 Lexer!2327 (++!4080 lt!504650 lt!504657)) (++!4081 (printList!725 Lexer!2327 lt!504650) (printList!725 Lexer!2327 lt!504657)))))

(declare-fun lt!504673 () Unit!24235)

(declare-fun choose!8978 (LexerInterface!2329 List!15240 List!15240) Unit!24235)

(assert (=> d!427660 (= lt!504673 (choose!8978 Lexer!2327 lt!504650 lt!504657))))

(assert (=> d!427660 (= (lemmaPrintConcatSameAsConcatPrint!76 Lexer!2327 lt!504650 lt!504657) lt!504673)))

(declare-fun bs!344158 () Bool)

(assert (= bs!344158 d!427660))

(assert (=> bs!344158 m!1695657))

(declare-fun m!1695763 () Bool)

(assert (=> bs!344158 m!1695763))

(assert (=> bs!344158 m!1695693))

(assert (=> bs!344158 m!1695655))

(assert (=> bs!344158 m!1695657))

(assert (=> bs!344158 m!1695659))

(assert (=> bs!344158 m!1695655))

(assert (=> bs!344158 m!1695693))

(declare-fun m!1695765 () Bool)

(assert (=> bs!344158 m!1695765))

(assert (=> b!1460856 d!427660))

(declare-fun d!427662 () Bool)

(declare-fun c!240755 () Bool)

(assert (=> d!427662 (= c!240755 ((_ is Cons!15174) lt!504655))))

(declare-fun e!931997 () List!15238)

(assert (=> d!427662 (= (printList!725 Lexer!2327 lt!504655) e!931997)))

(declare-fun b!1460907 () Bool)

(declare-fun list!6075 (BalanceConc!10284) List!15238)

(declare-fun charsOf!1536 (Token!5008) BalanceConc!10284)

(assert (=> b!1460907 (= e!931997 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504655))) (printList!725 Lexer!2327 (t!134383 lt!504655))))))

(declare-fun b!1460908 () Bool)

(assert (=> b!1460908 (= e!931997 Nil!15172)))

(assert (= (and d!427662 c!240755) b!1460907))

(assert (= (and d!427662 (not c!240755)) b!1460908))

(declare-fun m!1695767 () Bool)

(assert (=> b!1460907 m!1695767))

(assert (=> b!1460907 m!1695767))

(declare-fun m!1695769 () Bool)

(assert (=> b!1460907 m!1695769))

(declare-fun m!1695771 () Bool)

(assert (=> b!1460907 m!1695771))

(assert (=> b!1460907 m!1695769))

(assert (=> b!1460907 m!1695771))

(declare-fun m!1695773 () Bool)

(assert (=> b!1460907 m!1695773))

(assert (=> b!1460856 d!427662))

(declare-fun d!427664 () Bool)

(declare-fun e!932009 () Bool)

(assert (=> d!427664 e!932009))

(declare-fun res!661105 () Bool)

(assert (=> d!427664 (=> (not res!661105) (not e!932009))))

(declare-fun lt!504699 () BalanceConc!10284)

(declare-datatypes ((tuple2!14244 0))(
  ( (tuple2!14245 (_1!8008 BalanceConc!10286) (_2!8008 BalanceConc!10284)) )
))
(declare-fun lex!1074 (LexerInterface!2329 List!15241 BalanceConc!10284) tuple2!14244)

(assert (=> d!427664 (= res!661105 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) lt!504699))) (list!6073 (tokens!2100 other!32))))))

(assert (=> d!427664 (= lt!504699 (print!1103 Lexer!2327 (tokens!2100 other!32)))))

(declare-fun lt!504700 () Unit!24235)

(assert (=> d!427664 (= lt!504700 (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 other!32) (list!6073 (tokens!2100 other!32))))))

(assert (=> d!427664 (= (print!1102 other!32) lt!504699)))

(declare-fun b!1460923 () Bool)

(declare-fun isEmpty!9527 (List!15238) Bool)

(assert (=> b!1460923 (= e!932009 (isEmpty!9527 (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) lt!504699)))))))

(assert (= (and d!427664 res!661105) b!1460923))

(declare-fun m!1695799 () Bool)

(assert (=> d!427664 m!1695799))

(assert (=> d!427664 m!1695651))

(assert (=> d!427664 m!1695651))

(declare-fun m!1695801 () Bool)

(assert (=> d!427664 m!1695801))

(assert (=> d!427664 m!1695669))

(declare-fun m!1695803 () Bool)

(assert (=> d!427664 m!1695803))

(assert (=> b!1460923 m!1695803))

(declare-fun m!1695805 () Bool)

(assert (=> b!1460923 m!1695805))

(assert (=> b!1460923 m!1695805))

(declare-fun m!1695807 () Bool)

(assert (=> b!1460923 m!1695807))

(assert (=> b!1460856 d!427664))

(declare-fun d!427670 () Bool)

(declare-fun c!240759 () Bool)

(assert (=> d!427670 (= c!240759 ((_ is Cons!15174) lt!504650))))

(declare-fun e!932010 () List!15238)

(assert (=> d!427670 (= (printList!725 Lexer!2327 lt!504650) e!932010)))

(declare-fun b!1460924 () Bool)

(assert (=> b!1460924 (= e!932010 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (printList!725 Lexer!2327 (t!134383 lt!504650))))))

(declare-fun b!1460925 () Bool)

(assert (=> b!1460925 (= e!932010 Nil!15172)))

(assert (= (and d!427670 c!240759) b!1460924))

(assert (= (and d!427670 (not c!240759)) b!1460925))

(declare-fun m!1695809 () Bool)

(assert (=> b!1460924 m!1695809))

(assert (=> b!1460924 m!1695809))

(declare-fun m!1695811 () Bool)

(assert (=> b!1460924 m!1695811))

(declare-fun m!1695813 () Bool)

(assert (=> b!1460924 m!1695813))

(assert (=> b!1460924 m!1695811))

(assert (=> b!1460924 m!1695813))

(declare-fun m!1695815 () Bool)

(assert (=> b!1460924 m!1695815))

(assert (=> b!1460856 d!427670))

(declare-fun b!1460935 () Bool)

(declare-fun e!932015 () List!15238)

(assert (=> b!1460935 (= e!932015 (Cons!15172 (h!20573 (printList!725 Lexer!2327 lt!504650)) (++!4081 (t!134381 (printList!725 Lexer!2327 lt!504650)) (printList!725 Lexer!2327 lt!504657))))))

(declare-fun b!1460937 () Bool)

(declare-fun e!932016 () Bool)

(declare-fun lt!504703 () List!15238)

(assert (=> b!1460937 (= e!932016 (or (not (= (printList!725 Lexer!2327 lt!504657) Nil!15172)) (= lt!504703 (printList!725 Lexer!2327 lt!504650))))))

(declare-fun b!1460936 () Bool)

(declare-fun res!661110 () Bool)

(assert (=> b!1460936 (=> (not res!661110) (not e!932016))))

(declare-fun size!12411 (List!15238) Int)

(assert (=> b!1460936 (= res!661110 (= (size!12411 lt!504703) (+ (size!12411 (printList!725 Lexer!2327 lt!504650)) (size!12411 (printList!725 Lexer!2327 lt!504657)))))))

(declare-fun b!1460934 () Bool)

(assert (=> b!1460934 (= e!932015 (printList!725 Lexer!2327 lt!504657))))

(declare-fun d!427672 () Bool)

(assert (=> d!427672 e!932016))

(declare-fun res!661111 () Bool)

(assert (=> d!427672 (=> (not res!661111) (not e!932016))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2242 (List!15238) (InoxSet C!8152))

(assert (=> d!427672 (= res!661111 (= (content!2242 lt!504703) ((_ map or) (content!2242 (printList!725 Lexer!2327 lt!504650)) (content!2242 (printList!725 Lexer!2327 lt!504657)))))))

(assert (=> d!427672 (= lt!504703 e!932015)))

(declare-fun c!240762 () Bool)

(assert (=> d!427672 (= c!240762 ((_ is Nil!15172) (printList!725 Lexer!2327 lt!504650)))))

(assert (=> d!427672 (= (++!4081 (printList!725 Lexer!2327 lt!504650) (printList!725 Lexer!2327 lt!504657)) lt!504703)))

(assert (= (and d!427672 c!240762) b!1460934))

(assert (= (and d!427672 (not c!240762)) b!1460935))

(assert (= (and d!427672 res!661111) b!1460936))

(assert (= (and b!1460936 res!661110) b!1460937))

(assert (=> b!1460935 m!1695657))

(declare-fun m!1695817 () Bool)

(assert (=> b!1460935 m!1695817))

(declare-fun m!1695819 () Bool)

(assert (=> b!1460936 m!1695819))

(assert (=> b!1460936 m!1695655))

(declare-fun m!1695821 () Bool)

(assert (=> b!1460936 m!1695821))

(assert (=> b!1460936 m!1695657))

(declare-fun m!1695823 () Bool)

(assert (=> b!1460936 m!1695823))

(declare-fun m!1695825 () Bool)

(assert (=> d!427672 m!1695825))

(assert (=> d!427672 m!1695655))

(declare-fun m!1695827 () Bool)

(assert (=> d!427672 m!1695827))

(assert (=> d!427672 m!1695657))

(declare-fun m!1695829 () Bool)

(assert (=> d!427672 m!1695829))

(assert (=> b!1460856 d!427672))

(declare-fun d!427674 () Bool)

(declare-fun res!661121 () Bool)

(declare-fun e!932022 () Bool)

(assert (=> d!427674 (=> (not res!661121) (not e!932022))))

(declare-fun isEmpty!9528 (List!15241) Bool)

(assert (=> d!427674 (= res!661121 (not (isEmpty!9528 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)))))))

(assert (=> d!427674 (= (inv!20276 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) e!932022)))

(declare-fun b!1460947 () Bool)

(declare-fun res!661122 () Bool)

(assert (=> b!1460947 (=> (not res!661122) (not e!932022))))

(assert (=> b!1460947 (= res!661122 (rulesInvariant!2162 Lexer!2327 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))))))

(declare-fun b!1460948 () Bool)

(declare-fun res!661123 () Bool)

(assert (=> b!1460948 (=> (not res!661123) (not e!932022))))

(assert (=> b!1460948 (= res!661123 (rulesProduceEachTokenIndividually!879 Lexer!2327 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) (tokens!2100 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))))))

(declare-fun b!1460949 () Bool)

(assert (=> b!1460949 (= e!932022 (separableTokens!263 Lexer!2327 (tokens!2100 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))))))

(assert (= (and d!427674 res!661121) b!1460947))

(assert (= (and b!1460947 res!661122) b!1460948))

(assert (= (and b!1460948 res!661123) b!1460949))

(declare-fun m!1695841 () Bool)

(assert (=> d!427674 m!1695841))

(declare-fun m!1695843 () Bool)

(assert (=> b!1460947 m!1695843))

(declare-fun m!1695845 () Bool)

(assert (=> b!1460948 m!1695845))

(declare-fun m!1695847 () Bool)

(assert (=> b!1460949 m!1695847))

(assert (=> b!1460856 d!427674))

(declare-fun d!427678 () Bool)

(declare-fun e!932051 () Bool)

(assert (=> d!427678 e!932051))

(declare-fun res!661146 () Bool)

(assert (=> d!427678 (=> (not res!661146) (not e!932051))))

(declare-fun seqFromList!1712 (List!15240) BalanceConc!10286)

(assert (=> d!427678 (= res!661146 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 lt!504650))))) lt!504650))))

(declare-fun lt!504895 () Unit!24235)

(declare-fun e!932052 () Unit!24235)

(assert (=> d!427678 (= lt!504895 e!932052)))

(declare-fun c!240777 () Bool)

(assert (=> d!427678 (= c!240777 (or ((_ is Nil!15174) lt!504650) ((_ is Nil!15174) (t!134383 lt!504650))))))

(assert (=> d!427678 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427678 (= (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 thiss!10022) lt!504650) lt!504895)))

(declare-fun b!1461000 () Bool)

(declare-fun Unit!24272 () Unit!24235)

(assert (=> b!1461000 (= e!932052 Unit!24272)))

(declare-fun b!1461001 () Bool)

(declare-fun Unit!24273 () Unit!24235)

(assert (=> b!1461001 (= e!932052 Unit!24273)))

(declare-fun lt!504881 () BalanceConc!10284)

(assert (=> b!1461001 (= lt!504881 (print!1103 Lexer!2327 (seqFromList!1712 lt!504650)))))

(declare-fun lt!504887 () BalanceConc!10284)

(assert (=> b!1461001 (= lt!504887 (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 lt!504650))))))

(declare-fun lt!504883 () tuple2!14244)

(assert (=> b!1461001 (= lt!504883 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!504887))))

(declare-fun lt!504888 () List!15238)

(assert (=> b!1461001 (= lt!504888 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))

(declare-fun lt!504886 () List!15238)

(assert (=> b!1461001 (= lt!504886 (list!6075 lt!504887))))

(declare-fun lt!504899 () Unit!24235)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!766 (List!15238 List!15238) Unit!24235)

(assert (=> b!1461001 (= lt!504899 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!504888 lt!504886))))

(declare-fun isPrefix!1203 (List!15238 List!15238) Bool)

(assert (=> b!1461001 (isPrefix!1203 lt!504888 (++!4081 lt!504888 lt!504886))))

(declare-fun lt!504904 () Unit!24235)

(assert (=> b!1461001 (= lt!504904 lt!504899)))

(declare-fun lt!504890 () Unit!24235)

(assert (=> b!1461001 (= lt!504890 (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 thiss!10022) (t!134383 lt!504650)))))

(declare-fun lt!504897 () Unit!24235)

(declare-fun seqFromListBHdTlConstructive!95 (Token!5008 List!15240 BalanceConc!10286) Unit!24235)

(assert (=> b!1461001 (= lt!504897 (seqFromListBHdTlConstructive!95 (h!20575 (t!134383 lt!504650)) (t!134383 (t!134383 lt!504650)) (_1!8008 lt!504883)))))

(declare-fun prepend!425 (BalanceConc!10286 Token!5008) BalanceConc!10286)

(assert (=> b!1461001 (= (list!6073 (_1!8008 lt!504883)) (list!6073 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 lt!504650))) (h!20575 (t!134383 lt!504650)))))))

(declare-fun lt!504901 () Unit!24235)

(assert (=> b!1461001 (= lt!504901 lt!504897)))

(declare-datatypes ((tuple2!14246 0))(
  ( (tuple2!14247 (_1!8009 Token!5008) (_2!8009 List!15238)) )
))
(declare-datatypes ((Option!2875 0))(
  ( (None!2874) (Some!2874 (v!22498 tuple2!14246)) )
))
(declare-fun lt!504893 () Option!2875)

(declare-fun maxPrefix!1193 (LexerInterface!2329 List!15241 List!15238) Option!2875)

(assert (=> b!1461001 (= lt!504893 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 lt!504881)))))

(declare-fun singletonSeq!1277 (Token!5008) BalanceConc!10286)

(declare-fun printTailRec!697 (LexerInterface!2329 BalanceConc!10286 Int BalanceConc!10284) BalanceConc!10284)

(assert (=> b!1461001 (= (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504650))) (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504650)) 0 (BalanceConc!10285 Empty!5172)))))

(declare-fun lt!504894 () Unit!24235)

(declare-fun Unit!24274 () Unit!24235)

(assert (=> b!1461001 (= lt!504894 Unit!24274)))

(declare-fun lt!504885 () Unit!24235)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!239 (LexerInterface!2329 List!15241 List!15238 List!15238) Unit!24235)

(assert (=> b!1461001 (= lt!504885 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!239 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887)))))

(assert (=> b!1461001 (= (list!6075 (charsOf!1536 (h!20575 lt!504650))) (originalCharacters!3535 (h!20575 lt!504650)))))

(declare-fun lt!504889 () Unit!24235)

(declare-fun Unit!24275 () Unit!24235)

(assert (=> b!1461001 (= lt!504889 Unit!24275)))

(declare-fun singletonSeq!1278 (C!8152) BalanceConc!10284)

(declare-fun apply!3949 (BalanceConc!10284 Int) C!8152)

(declare-fun head!3008 (List!15238) C!8152)

(assert (=> b!1461001 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504650))) 0))) (Cons!15172 (head!3008 (originalCharacters!3535 (h!20575 (t!134383 lt!504650)))) Nil!15172))))

(declare-fun lt!504891 () Unit!24235)

(declare-fun Unit!24276 () Unit!24235)

(assert (=> b!1461001 (= lt!504891 Unit!24276)))

(assert (=> b!1461001 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504650))) 0))) (Cons!15172 (head!3008 (list!6075 lt!504887)) Nil!15172))))

(declare-fun lt!504902 () Unit!24235)

(declare-fun Unit!24277 () Unit!24235)

(assert (=> b!1461001 (= lt!504902 Unit!24277)))

(declare-fun head!3009 (BalanceConc!10284) C!8152)

(assert (=> b!1461001 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504650))) 0))) (Cons!15172 (head!3009 lt!504887) Nil!15172))))

(declare-fun lt!504884 () Unit!24235)

(declare-fun Unit!24278 () Unit!24235)

(assert (=> b!1461001 (= lt!504884 Unit!24278)))

(declare-fun isDefined!2324 (Option!2875) Bool)

(assert (=> b!1461001 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (originalCharacters!3535 (h!20575 lt!504650))))))

(declare-fun lt!504896 () Unit!24235)

(declare-fun Unit!24279 () Unit!24235)

(assert (=> b!1461001 (= lt!504896 Unit!24279)))

(assert (=> b!1461001 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))

(declare-fun lt!504903 () Unit!24235)

(declare-fun Unit!24280 () Unit!24235)

(assert (=> b!1461001 (= lt!504903 Unit!24280)))

(declare-fun lt!504898 () Unit!24235)

(declare-fun Unit!24281 () Unit!24235)

(assert (=> b!1461001 (= lt!504898 Unit!24281)))

(declare-fun get!4616 (Option!2875) tuple2!14246)

(assert (=> b!1461001 (= (_1!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650)))))) (h!20575 lt!504650))))

(declare-fun lt!504892 () Unit!24235)

(declare-fun Unit!24282 () Unit!24235)

(assert (=> b!1461001 (= lt!504892 Unit!24282)))

(assert (=> b!1461001 (isEmpty!9527 (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))))

(declare-fun lt!504906 () Unit!24235)

(declare-fun Unit!24283 () Unit!24235)

(assert (=> b!1461001 (= lt!504906 Unit!24283)))

(declare-fun matchR!1829 (Regex!3987 List!15238) Bool)

(assert (=> b!1461001 (matchR!1829 (regex!2673 (rule!4446 (h!20575 lt!504650))) (list!6075 (charsOf!1536 (h!20575 lt!504650))))))

(declare-fun lt!504882 () Unit!24235)

(declare-fun Unit!24284 () Unit!24235)

(assert (=> b!1461001 (= lt!504882 Unit!24284)))

(assert (=> b!1461001 (= (rule!4446 (h!20575 lt!504650)) (rule!4446 (h!20575 lt!504650)))))

(declare-fun lt!504900 () Unit!24235)

(declare-fun Unit!24285 () Unit!24235)

(assert (=> b!1461001 (= lt!504900 Unit!24285)))

(declare-fun lt!504905 () Unit!24235)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!37 (LexerInterface!2329 List!15241 Token!5008 Rule!5146 List!15238) Unit!24235)

(assert (=> b!1461001 (= lt!504905 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!37 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!504650) (rule!4446 (h!20575 lt!504650)) (list!6075 lt!504887)))))

(declare-fun b!1461002 () Bool)

(declare-fun isEmpty!9529 (BalanceConc!10284) Bool)

(assert (=> b!1461002 (= e!932051 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 lt!504650))))))))

(assert (= (and d!427678 c!240777) b!1461000))

(assert (= (and d!427678 (not c!240777)) b!1461001))

(assert (= (and d!427678 res!661146) b!1461002))

(declare-fun m!1696083 () Bool)

(assert (=> d!427678 m!1696083))

(declare-fun m!1696085 () Bool)

(assert (=> d!427678 m!1696085))

(declare-fun m!1696087 () Bool)

(assert (=> d!427678 m!1696087))

(declare-fun m!1696089 () Bool)

(assert (=> d!427678 m!1696089))

(assert (=> d!427678 m!1696083))

(assert (=> d!427678 m!1696085))

(declare-fun m!1696091 () Bool)

(assert (=> d!427678 m!1696091))

(declare-fun m!1696093 () Bool)

(assert (=> b!1461001 m!1696093))

(declare-fun m!1696095 () Bool)

(assert (=> b!1461001 m!1696095))

(declare-fun m!1696097 () Bool)

(assert (=> b!1461001 m!1696097))

(declare-fun m!1696099 () Bool)

(assert (=> b!1461001 m!1696099))

(declare-fun m!1696101 () Bool)

(assert (=> b!1461001 m!1696101))

(declare-fun m!1696103 () Bool)

(assert (=> b!1461001 m!1696103))

(declare-fun m!1696105 () Bool)

(assert (=> b!1461001 m!1696105))

(declare-fun m!1696107 () Bool)

(assert (=> b!1461001 m!1696107))

(assert (=> b!1461001 m!1696101))

(declare-fun m!1696109 () Bool)

(assert (=> b!1461001 m!1696109))

(assert (=> b!1461001 m!1696097))

(assert (=> b!1461001 m!1696107))

(declare-fun m!1696111 () Bool)

(assert (=> b!1461001 m!1696111))

(assert (=> b!1461001 m!1696103))

(declare-fun m!1696113 () Bool)

(assert (=> b!1461001 m!1696113))

(assert (=> b!1461001 m!1695811))

(declare-fun m!1696115 () Bool)

(assert (=> b!1461001 m!1696115))

(assert (=> b!1461001 m!1696083))

(assert (=> b!1461001 m!1696085))

(declare-fun m!1696117 () Bool)

(assert (=> b!1461001 m!1696117))

(assert (=> b!1461001 m!1695811))

(declare-fun m!1696119 () Bool)

(assert (=> b!1461001 m!1696119))

(declare-fun m!1696121 () Bool)

(assert (=> b!1461001 m!1696121))

(declare-fun m!1696123 () Bool)

(assert (=> b!1461001 m!1696123))

(declare-fun m!1696125 () Bool)

(assert (=> b!1461001 m!1696125))

(declare-fun m!1696127 () Bool)

(assert (=> b!1461001 m!1696127))

(assert (=> b!1461001 m!1696119))

(declare-fun m!1696129 () Bool)

(assert (=> b!1461001 m!1696129))

(declare-fun m!1696131 () Bool)

(assert (=> b!1461001 m!1696131))

(declare-fun m!1696133 () Bool)

(assert (=> b!1461001 m!1696133))

(assert (=> b!1461001 m!1696131))

(declare-fun m!1696135 () Bool)

(assert (=> b!1461001 m!1696135))

(declare-fun m!1696137 () Bool)

(assert (=> b!1461001 m!1696137))

(assert (=> b!1461001 m!1695811))

(assert (=> b!1461001 m!1696125))

(declare-fun m!1696139 () Bool)

(assert (=> b!1461001 m!1696139))

(declare-fun m!1696141 () Bool)

(assert (=> b!1461001 m!1696141))

(assert (=> b!1461001 m!1696125))

(declare-fun m!1696143 () Bool)

(assert (=> b!1461001 m!1696143))

(declare-fun m!1696145 () Bool)

(assert (=> b!1461001 m!1696145))

(assert (=> b!1461001 m!1696119))

(assert (=> b!1461001 m!1696093))

(assert (=> b!1461001 m!1696097))

(declare-fun m!1696147 () Bool)

(assert (=> b!1461001 m!1696147))

(assert (=> b!1461001 m!1696145))

(declare-fun m!1696149 () Bool)

(assert (=> b!1461001 m!1696149))

(assert (=> b!1461001 m!1696083))

(declare-fun m!1696151 () Bool)

(assert (=> b!1461001 m!1696151))

(assert (=> b!1461001 m!1695809))

(assert (=> b!1461001 m!1696105))

(assert (=> b!1461001 m!1696095))

(declare-fun m!1696153 () Bool)

(assert (=> b!1461001 m!1696153))

(assert (=> b!1461001 m!1696153))

(declare-fun m!1696155 () Bool)

(assert (=> b!1461001 m!1696155))

(declare-fun m!1696157 () Bool)

(assert (=> b!1461001 m!1696157))

(assert (=> b!1461001 m!1695809))

(assert (=> b!1461001 m!1695811))

(assert (=> b!1461001 m!1696119))

(declare-fun m!1696159 () Bool)

(assert (=> b!1461001 m!1696159))

(assert (=> b!1461002 m!1696083))

(assert (=> b!1461002 m!1696083))

(assert (=> b!1461002 m!1696085))

(assert (=> b!1461002 m!1696085))

(assert (=> b!1461002 m!1696091))

(declare-fun m!1696161 () Bool)

(assert (=> b!1461002 m!1696161))

(assert (=> b!1460856 d!427678))

(declare-fun d!427702 () Bool)

(declare-fun lt!504912 () BalanceConc!10284)

(assert (=> d!427702 (= (list!6075 lt!504912) (printList!725 Lexer!2327 (list!6073 (tokens!2100 other!32))))))

(assert (=> d!427702 (= lt!504912 (printTailRec!697 Lexer!2327 (tokens!2100 other!32) 0 (BalanceConc!10285 Empty!5172)))))

(assert (=> d!427702 (= (print!1103 Lexer!2327 (tokens!2100 other!32)) lt!504912)))

(declare-fun bs!344162 () Bool)

(assert (= bs!344162 d!427702))

(declare-fun m!1696181 () Bool)

(assert (=> bs!344162 m!1696181))

(assert (=> bs!344162 m!1695651))

(assert (=> bs!344162 m!1695651))

(declare-fun m!1696183 () Bool)

(assert (=> bs!344162 m!1696183))

(declare-fun m!1696185 () Bool)

(assert (=> bs!344162 m!1696185))

(assert (=> b!1460856 d!427702))

(declare-fun d!427706 () Bool)

(declare-fun e!932056 () Bool)

(assert (=> d!427706 e!932056))

(declare-fun res!661159 () Bool)

(assert (=> d!427706 (=> (not res!661159) (not e!932056))))

(assert (=> d!427706 (= res!661159 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 lt!504657))))) lt!504657))))

(declare-fun lt!504927 () Unit!24235)

(declare-fun e!932057 () Unit!24235)

(assert (=> d!427706 (= lt!504927 e!932057)))

(declare-fun c!240781 () Bool)

(assert (=> d!427706 (= c!240781 (or ((_ is Nil!15174) lt!504657) ((_ is Nil!15174) (t!134383 lt!504657))))))

(assert (=> d!427706 (not (isEmpty!9528 (rules!11668 other!32)))))

(assert (=> d!427706 (= (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 other!32) lt!504657) lt!504927)))

(declare-fun b!1461015 () Bool)

(declare-fun Unit!24289 () Unit!24235)

(assert (=> b!1461015 (= e!932057 Unit!24289)))

(declare-fun b!1461016 () Bool)

(declare-fun Unit!24290 () Unit!24235)

(assert (=> b!1461016 (= e!932057 Unit!24290)))

(declare-fun lt!504913 () BalanceConc!10284)

(assert (=> b!1461016 (= lt!504913 (print!1103 Lexer!2327 (seqFromList!1712 lt!504657)))))

(declare-fun lt!504919 () BalanceConc!10284)

(assert (=> b!1461016 (= lt!504919 (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 lt!504657))))))

(declare-fun lt!504915 () tuple2!14244)

(assert (=> b!1461016 (= lt!504915 (lex!1074 Lexer!2327 (rules!11668 other!32) lt!504919))))

(declare-fun lt!504920 () List!15238)

(assert (=> b!1461016 (= lt!504920 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))

(declare-fun lt!504918 () List!15238)

(assert (=> b!1461016 (= lt!504918 (list!6075 lt!504919))))

(declare-fun lt!504931 () Unit!24235)

(assert (=> b!1461016 (= lt!504931 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!504920 lt!504918))))

(assert (=> b!1461016 (isPrefix!1203 lt!504920 (++!4081 lt!504920 lt!504918))))

(declare-fun lt!504936 () Unit!24235)

(assert (=> b!1461016 (= lt!504936 lt!504931)))

(declare-fun lt!504922 () Unit!24235)

(assert (=> b!1461016 (= lt!504922 (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 other!32) (t!134383 lt!504657)))))

(declare-fun lt!504929 () Unit!24235)

(assert (=> b!1461016 (= lt!504929 (seqFromListBHdTlConstructive!95 (h!20575 (t!134383 lt!504657)) (t!134383 (t!134383 lt!504657)) (_1!8008 lt!504915)))))

(assert (=> b!1461016 (= (list!6073 (_1!8008 lt!504915)) (list!6073 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 lt!504657))) (h!20575 (t!134383 lt!504657)))))))

(declare-fun lt!504933 () Unit!24235)

(assert (=> b!1461016 (= lt!504933 lt!504929)))

(declare-fun lt!504925 () Option!2875)

(assert (=> b!1461016 (= lt!504925 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 lt!504913)))))

(assert (=> b!1461016 (= (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504657))) (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504657)) 0 (BalanceConc!10285 Empty!5172)))))

(declare-fun lt!504926 () Unit!24235)

(declare-fun Unit!24291 () Unit!24235)

(assert (=> b!1461016 (= lt!504926 Unit!24291)))

(declare-fun lt!504917 () Unit!24235)

(assert (=> b!1461016 (= lt!504917 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!239 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919)))))

(assert (=> b!1461016 (= (list!6075 (charsOf!1536 (h!20575 lt!504657))) (originalCharacters!3535 (h!20575 lt!504657)))))

(declare-fun lt!504921 () Unit!24235)

(declare-fun Unit!24292 () Unit!24235)

(assert (=> b!1461016 (= lt!504921 Unit!24292)))

(assert (=> b!1461016 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504657))) 0))) (Cons!15172 (head!3008 (originalCharacters!3535 (h!20575 (t!134383 lt!504657)))) Nil!15172))))

(declare-fun lt!504923 () Unit!24235)

(declare-fun Unit!24293 () Unit!24235)

(assert (=> b!1461016 (= lt!504923 Unit!24293)))

(assert (=> b!1461016 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504657))) 0))) (Cons!15172 (head!3008 (list!6075 lt!504919)) Nil!15172))))

(declare-fun lt!504934 () Unit!24235)

(declare-fun Unit!24294 () Unit!24235)

(assert (=> b!1461016 (= lt!504934 Unit!24294)))

(assert (=> b!1461016 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504657))) 0))) (Cons!15172 (head!3009 lt!504919) Nil!15172))))

(declare-fun lt!504916 () Unit!24235)

(declare-fun Unit!24295 () Unit!24235)

(assert (=> b!1461016 (= lt!504916 Unit!24295)))

(assert (=> b!1461016 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (originalCharacters!3535 (h!20575 lt!504657))))))

(declare-fun lt!504928 () Unit!24235)

(declare-fun Unit!24296 () Unit!24235)

(assert (=> b!1461016 (= lt!504928 Unit!24296)))

(assert (=> b!1461016 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))

(declare-fun lt!504935 () Unit!24235)

(declare-fun Unit!24297 () Unit!24235)

(assert (=> b!1461016 (= lt!504935 Unit!24297)))

(declare-fun lt!504930 () Unit!24235)

(declare-fun Unit!24298 () Unit!24235)

(assert (=> b!1461016 (= lt!504930 Unit!24298)))

(assert (=> b!1461016 (= (_1!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657)))))) (h!20575 lt!504657))))

(declare-fun lt!504924 () Unit!24235)

(declare-fun Unit!24299 () Unit!24235)

(assert (=> b!1461016 (= lt!504924 Unit!24299)))

(assert (=> b!1461016 (isEmpty!9527 (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))))

(declare-fun lt!504938 () Unit!24235)

(declare-fun Unit!24300 () Unit!24235)

(assert (=> b!1461016 (= lt!504938 Unit!24300)))

(assert (=> b!1461016 (matchR!1829 (regex!2673 (rule!4446 (h!20575 lt!504657))) (list!6075 (charsOf!1536 (h!20575 lt!504657))))))

(declare-fun lt!504914 () Unit!24235)

(declare-fun Unit!24301 () Unit!24235)

(assert (=> b!1461016 (= lt!504914 Unit!24301)))

(assert (=> b!1461016 (= (rule!4446 (h!20575 lt!504657)) (rule!4446 (h!20575 lt!504657)))))

(declare-fun lt!504932 () Unit!24235)

(declare-fun Unit!24302 () Unit!24235)

(assert (=> b!1461016 (= lt!504932 Unit!24302)))

(declare-fun lt!504937 () Unit!24235)

(assert (=> b!1461016 (= lt!504937 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!37 Lexer!2327 (rules!11668 other!32) (h!20575 lt!504657) (rule!4446 (h!20575 lt!504657)) (list!6075 lt!504919)))))

(declare-fun b!1461017 () Bool)

(assert (=> b!1461017 (= e!932056 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 lt!504657))))))))

(assert (= (and d!427706 c!240781) b!1461015))

(assert (= (and d!427706 (not c!240781)) b!1461016))

(assert (= (and d!427706 res!661159) b!1461017))

(declare-fun m!1696187 () Bool)

(assert (=> d!427706 m!1696187))

(declare-fun m!1696189 () Bool)

(assert (=> d!427706 m!1696189))

(declare-fun m!1696191 () Bool)

(assert (=> d!427706 m!1696191))

(declare-fun m!1696193 () Bool)

(assert (=> d!427706 m!1696193))

(assert (=> d!427706 m!1696187))

(assert (=> d!427706 m!1696189))

(declare-fun m!1696195 () Bool)

(assert (=> d!427706 m!1696195))

(declare-fun m!1696197 () Bool)

(assert (=> b!1461016 m!1696197))

(declare-fun m!1696199 () Bool)

(assert (=> b!1461016 m!1696199))

(declare-fun m!1696201 () Bool)

(assert (=> b!1461016 m!1696201))

(declare-fun m!1696203 () Bool)

(assert (=> b!1461016 m!1696203))

(declare-fun m!1696205 () Bool)

(assert (=> b!1461016 m!1696205))

(declare-fun m!1696207 () Bool)

(assert (=> b!1461016 m!1696207))

(declare-fun m!1696209 () Bool)

(assert (=> b!1461016 m!1696209))

(declare-fun m!1696211 () Bool)

(assert (=> b!1461016 m!1696211))

(assert (=> b!1461016 m!1696205))

(declare-fun m!1696213 () Bool)

(assert (=> b!1461016 m!1696213))

(assert (=> b!1461016 m!1696201))

(assert (=> b!1461016 m!1696211))

(declare-fun m!1696215 () Bool)

(assert (=> b!1461016 m!1696215))

(assert (=> b!1461016 m!1696207))

(declare-fun m!1696217 () Bool)

(assert (=> b!1461016 m!1696217))

(declare-fun m!1696219 () Bool)

(assert (=> b!1461016 m!1696219))

(declare-fun m!1696221 () Bool)

(assert (=> b!1461016 m!1696221))

(assert (=> b!1461016 m!1696187))

(assert (=> b!1461016 m!1696189))

(declare-fun m!1696223 () Bool)

(assert (=> b!1461016 m!1696223))

(assert (=> b!1461016 m!1696219))

(declare-fun m!1696225 () Bool)

(assert (=> b!1461016 m!1696225))

(declare-fun m!1696227 () Bool)

(assert (=> b!1461016 m!1696227))

(declare-fun m!1696229 () Bool)

(assert (=> b!1461016 m!1696229))

(declare-fun m!1696231 () Bool)

(assert (=> b!1461016 m!1696231))

(declare-fun m!1696233 () Bool)

(assert (=> b!1461016 m!1696233))

(assert (=> b!1461016 m!1696225))

(declare-fun m!1696235 () Bool)

(assert (=> b!1461016 m!1696235))

(declare-fun m!1696237 () Bool)

(assert (=> b!1461016 m!1696237))

(declare-fun m!1696239 () Bool)

(assert (=> b!1461016 m!1696239))

(assert (=> b!1461016 m!1696237))

(declare-fun m!1696241 () Bool)

(assert (=> b!1461016 m!1696241))

(declare-fun m!1696243 () Bool)

(assert (=> b!1461016 m!1696243))

(assert (=> b!1461016 m!1696219))

(assert (=> b!1461016 m!1696231))

(declare-fun m!1696245 () Bool)

(assert (=> b!1461016 m!1696245))

(declare-fun m!1696247 () Bool)

(assert (=> b!1461016 m!1696247))

(assert (=> b!1461016 m!1696231))

(declare-fun m!1696249 () Bool)

(assert (=> b!1461016 m!1696249))

(declare-fun m!1696251 () Bool)

(assert (=> b!1461016 m!1696251))

(assert (=> b!1461016 m!1696225))

(assert (=> b!1461016 m!1696197))

(assert (=> b!1461016 m!1696201))

(declare-fun m!1696253 () Bool)

(assert (=> b!1461016 m!1696253))

(assert (=> b!1461016 m!1696251))

(declare-fun m!1696255 () Bool)

(assert (=> b!1461016 m!1696255))

(assert (=> b!1461016 m!1696187))

(declare-fun m!1696257 () Bool)

(assert (=> b!1461016 m!1696257))

(declare-fun m!1696259 () Bool)

(assert (=> b!1461016 m!1696259))

(assert (=> b!1461016 m!1696209))

(assert (=> b!1461016 m!1696199))

(declare-fun m!1696261 () Bool)

(assert (=> b!1461016 m!1696261))

(assert (=> b!1461016 m!1696261))

(declare-fun m!1696263 () Bool)

(assert (=> b!1461016 m!1696263))

(declare-fun m!1696265 () Bool)

(assert (=> b!1461016 m!1696265))

(assert (=> b!1461016 m!1696259))

(assert (=> b!1461016 m!1696219))

(assert (=> b!1461016 m!1696225))

(declare-fun m!1696267 () Bool)

(assert (=> b!1461016 m!1696267))

(assert (=> b!1461017 m!1696187))

(assert (=> b!1461017 m!1696187))

(assert (=> b!1461017 m!1696189))

(assert (=> b!1461017 m!1696189))

(assert (=> b!1461017 m!1696195))

(declare-fun m!1696269 () Bool)

(assert (=> b!1461017 m!1696269))

(assert (=> b!1460856 d!427706))

(declare-fun d!427708 () Bool)

(declare-fun c!240782 () Bool)

(assert (=> d!427708 (= c!240782 ((_ is Cons!15174) lt!504657))))

(declare-fun e!932058 () List!15238)

(assert (=> d!427708 (= (printList!725 Lexer!2327 lt!504657) e!932058)))

(declare-fun b!1461018 () Bool)

(assert (=> b!1461018 (= e!932058 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (printList!725 Lexer!2327 (t!134383 lt!504657))))))

(declare-fun b!1461019 () Bool)

(assert (=> b!1461019 (= e!932058 Nil!15172)))

(assert (= (and d!427708 c!240782) b!1461018))

(assert (= (and d!427708 (not c!240782)) b!1461019))

(assert (=> b!1461018 m!1696259))

(assert (=> b!1461018 m!1696259))

(assert (=> b!1461018 m!1696219))

(declare-fun m!1696271 () Bool)

(assert (=> b!1461018 m!1696271))

(assert (=> b!1461018 m!1696219))

(assert (=> b!1461018 m!1696271))

(declare-fun m!1696273 () Bool)

(assert (=> b!1461018 m!1696273))

(assert (=> b!1460856 d!427708))

(declare-fun d!427710 () Bool)

(declare-fun lt!504939 () BalanceConc!10284)

(assert (=> d!427710 (= (list!6075 lt!504939) (printList!725 Lexer!2327 (list!6073 (tokens!2100 thiss!10022))))))

(assert (=> d!427710 (= lt!504939 (printTailRec!697 Lexer!2327 (tokens!2100 thiss!10022) 0 (BalanceConc!10285 Empty!5172)))))

(assert (=> d!427710 (= (print!1103 Lexer!2327 (tokens!2100 thiss!10022)) lt!504939)))

(declare-fun bs!344163 () Bool)

(assert (= bs!344163 d!427710))

(declare-fun m!1696275 () Bool)

(assert (=> bs!344163 m!1696275))

(assert (=> bs!344163 m!1695647))

(assert (=> bs!344163 m!1695647))

(declare-fun m!1696277 () Bool)

(assert (=> bs!344163 m!1696277))

(declare-fun m!1696279 () Bool)

(assert (=> bs!344163 m!1696279))

(assert (=> b!1460856 d!427710))

(declare-fun d!427712 () Bool)

(declare-fun e!932059 () Bool)

(assert (=> d!427712 e!932059))

(declare-fun res!661160 () Bool)

(assert (=> d!427712 (=> (not res!661160) (not e!932059))))

(declare-fun lt!504940 () BalanceConc!10284)

(assert (=> d!427712 (= res!661160 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!504940))) (list!6073 (tokens!2100 thiss!10022))))))

(assert (=> d!427712 (= lt!504940 (print!1103 Lexer!2327 (tokens!2100 thiss!10022)))))

(declare-fun lt!504941 () Unit!24235)

(assert (=> d!427712 (= lt!504941 (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 thiss!10022) (list!6073 (tokens!2100 thiss!10022))))))

(assert (=> d!427712 (= (print!1102 thiss!10022) lt!504940)))

(declare-fun b!1461020 () Bool)

(assert (=> b!1461020 (= e!932059 (isEmpty!9527 (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!504940)))))))

(assert (= (and d!427712 res!661160) b!1461020))

(declare-fun m!1696281 () Bool)

(assert (=> d!427712 m!1696281))

(assert (=> d!427712 m!1695647))

(assert (=> d!427712 m!1695647))

(declare-fun m!1696283 () Bool)

(assert (=> d!427712 m!1696283))

(assert (=> d!427712 m!1695665))

(declare-fun m!1696285 () Bool)

(assert (=> d!427712 m!1696285))

(assert (=> b!1461020 m!1696285))

(declare-fun m!1696287 () Bool)

(assert (=> b!1461020 m!1696287))

(assert (=> b!1461020 m!1696287))

(declare-fun m!1696289 () Bool)

(assert (=> b!1461020 m!1696289))

(assert (=> b!1460856 d!427712))

(declare-fun d!427714 () Bool)

(assert (=> d!427714 (= (inv!20277 (tokens!2100 thiss!10022)) (isBalanced!1550 (c!240746 (tokens!2100 thiss!10022))))))

(declare-fun bs!344164 () Bool)

(assert (= bs!344164 d!427714))

(declare-fun m!1696291 () Bool)

(assert (=> bs!344164 m!1696291))

(assert (=> b!1460855 d!427714))

(declare-fun d!427716 () Bool)

(assert (=> d!427716 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!504656)))

(declare-fun lt!504946 () Unit!24235)

(declare-fun choose!8982 (LexerInterface!2329 List!15241 List!15240 Token!5008) Unit!24235)

(assert (=> d!427716 (= lt!504946 (choose!8982 Lexer!2327 (rules!11668 thiss!10022) lt!504650 lt!504656))))

(assert (=> d!427716 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427716 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!504650 lt!504656) lt!504946)))

(declare-fun bs!344165 () Bool)

(assert (= bs!344165 d!427716))

(assert (=> bs!344165 m!1695641))

(declare-fun m!1696293 () Bool)

(assert (=> bs!344165 m!1696293))

(assert (=> bs!344165 m!1696087))

(assert (=> b!1460849 d!427716))

(declare-fun d!427718 () Bool)

(declare-fun prefixMatchZipperSequence!352 (Regex!3987 BalanceConc!10284) Bool)

(declare-fun rulesRegex!410 (LexerInterface!2329 List!15241) Regex!3987)

(declare-fun ++!4084 (BalanceConc!10284 BalanceConc!10284) BalanceConc!10284)

(assert (=> d!427718 (= (separableTokensPredicate!538 Lexer!2327 lt!504656 lt!504659 (rules!11668 thiss!10022)) (not (prefixMatchZipperSequence!352 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)) (++!4084 (charsOf!1536 lt!504656) (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))))))))

(declare-fun bs!344166 () Bool)

(assert (= bs!344166 d!427718))

(declare-fun m!1696295 () Bool)

(assert (=> bs!344166 m!1696295))

(declare-fun m!1696297 () Bool)

(assert (=> bs!344166 m!1696297))

(declare-fun m!1696299 () Bool)

(assert (=> bs!344166 m!1696299))

(assert (=> bs!344166 m!1696299))

(declare-fun m!1696301 () Bool)

(assert (=> bs!344166 m!1696301))

(declare-fun m!1696303 () Bool)

(assert (=> bs!344166 m!1696303))

(declare-fun m!1696305 () Bool)

(assert (=> bs!344166 m!1696305))

(assert (=> bs!344166 m!1696305))

(assert (=> bs!344166 m!1696303))

(declare-fun m!1696307 () Bool)

(assert (=> bs!344166 m!1696307))

(assert (=> bs!344166 m!1696295))

(assert (=> bs!344166 m!1696297))

(assert (=> bs!344166 m!1696301))

(assert (=> b!1460849 d!427718))

(declare-fun d!427720 () Bool)

(declare-fun list!6077 (Conc!5173) List!15240)

(assert (=> d!427720 (= (list!6073 (tokens!2100 other!32)) (list!6077 (c!240746 (tokens!2100 other!32))))))

(declare-fun bs!344167 () Bool)

(assert (= bs!344167 d!427720))

(declare-fun m!1696309 () Bool)

(assert (=> bs!344167 m!1696309))

(assert (=> b!1460849 d!427720))

(declare-fun d!427722 () Bool)

(declare-fun lt!504949 () Token!5008)

(declare-fun head!3012 (List!15240) Token!5008)

(assert (=> d!427722 (= lt!504949 (head!3012 (list!6073 (tokens!2100 other!32))))))

(declare-fun head!3013 (Conc!5173) Token!5008)

(assert (=> d!427722 (= lt!504949 (head!3013 (c!240746 (tokens!2100 other!32))))))

(assert (=> d!427722 (not (isEmpty!9519 (tokens!2100 other!32)))))

(assert (=> d!427722 (= (head!3005 (tokens!2100 other!32)) lt!504949)))

(declare-fun bs!344168 () Bool)

(assert (= bs!344168 d!427722))

(assert (=> bs!344168 m!1695651))

(assert (=> bs!344168 m!1695651))

(declare-fun m!1696311 () Bool)

(assert (=> bs!344168 m!1696311))

(declare-fun m!1696313 () Bool)

(assert (=> bs!344168 m!1696313))

(assert (=> bs!344168 m!1695697))

(assert (=> b!1460849 d!427722))

(declare-fun d!427724 () Bool)

(declare-fun lt!504952 () Token!5008)

(declare-fun last!280 (List!15240) Token!5008)

(assert (=> d!427724 (= lt!504952 (last!280 (list!6073 (tokens!2100 thiss!10022))))))

(declare-fun last!281 (Conc!5173) Token!5008)

(assert (=> d!427724 (= lt!504952 (last!281 (c!240746 (tokens!2100 thiss!10022))))))

(assert (=> d!427724 (not (isEmpty!9519 (tokens!2100 thiss!10022)))))

(assert (=> d!427724 (= (last!277 (tokens!2100 thiss!10022)) lt!504952)))

(declare-fun bs!344169 () Bool)

(assert (= bs!344169 d!427724))

(assert (=> bs!344169 m!1695647))

(assert (=> bs!344169 m!1695647))

(declare-fun m!1696315 () Bool)

(assert (=> bs!344169 m!1696315))

(declare-fun m!1696317 () Bool)

(assert (=> bs!344169 m!1696317))

(assert (=> bs!344169 m!1695681))

(assert (=> b!1460849 d!427724))

(declare-fun d!427726 () Bool)

(assert (=> d!427726 (= (list!6073 (tokens!2100 thiss!10022)) (list!6077 (c!240746 (tokens!2100 thiss!10022))))))

(declare-fun bs!344170 () Bool)

(assert (= bs!344170 d!427726))

(declare-fun m!1696319 () Bool)

(assert (=> bs!344170 m!1696319))

(assert (=> b!1460849 d!427726))

(declare-fun d!427728 () Bool)

(declare-fun lt!504958 () Bool)

(declare-fun e!932068 () Bool)

(assert (=> d!427728 (= lt!504958 e!932068)))

(declare-fun res!661173 () Bool)

(assert (=> d!427728 (=> (not res!661173) (not e!932068))))

(assert (=> d!427728 (= res!661173 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656))))) (list!6073 (singletonSeq!1277 lt!504656))))))

(declare-fun e!932069 () Bool)

(assert (=> d!427728 (= lt!504958 e!932069)))

(declare-fun res!661172 () Bool)

(assert (=> d!427728 (=> (not res!661172) (not e!932069))))

(declare-fun lt!504957 () tuple2!14244)

(declare-fun size!12413 (BalanceConc!10286) Int)

(assert (=> d!427728 (= res!661172 (= (size!12413 (_1!8008 lt!504957)) 1))))

(assert (=> d!427728 (= lt!504957 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656))))))

(assert (=> d!427728 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427728 (= (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!504656) lt!504958)))

(declare-fun b!1461031 () Bool)

(declare-fun res!661171 () Bool)

(assert (=> b!1461031 (=> (not res!661171) (not e!932069))))

(declare-fun apply!3952 (BalanceConc!10286 Int) Token!5008)

(assert (=> b!1461031 (= res!661171 (= (apply!3952 (_1!8008 lt!504957) 0) lt!504656))))

(declare-fun b!1461032 () Bool)

(assert (=> b!1461032 (= e!932069 (isEmpty!9529 (_2!8008 lt!504957)))))

(declare-fun b!1461033 () Bool)

(assert (=> b!1461033 (= e!932068 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656))))))))

(assert (= (and d!427728 res!661172) b!1461031))

(assert (= (and b!1461031 res!661171) b!1461032))

(assert (= (and d!427728 res!661173) b!1461033))

(declare-fun m!1696321 () Bool)

(assert (=> d!427728 m!1696321))

(declare-fun m!1696323 () Bool)

(assert (=> d!427728 m!1696323))

(declare-fun m!1696325 () Bool)

(assert (=> d!427728 m!1696325))

(declare-fun m!1696327 () Bool)

(assert (=> d!427728 m!1696327))

(declare-fun m!1696329 () Bool)

(assert (=> d!427728 m!1696329))

(assert (=> d!427728 m!1696323))

(declare-fun m!1696331 () Bool)

(assert (=> d!427728 m!1696331))

(assert (=> d!427728 m!1696087))

(assert (=> d!427728 m!1696323))

(assert (=> d!427728 m!1696327))

(declare-fun m!1696333 () Bool)

(assert (=> b!1461031 m!1696333))

(declare-fun m!1696335 () Bool)

(assert (=> b!1461032 m!1696335))

(assert (=> b!1461033 m!1696323))

(assert (=> b!1461033 m!1696323))

(assert (=> b!1461033 m!1696327))

(assert (=> b!1461033 m!1696327))

(assert (=> b!1461033 m!1696329))

(declare-fun m!1696337 () Bool)

(assert (=> b!1461033 m!1696337))

(assert (=> b!1460849 d!427728))

(declare-fun d!427730 () Bool)

(assert (=> d!427730 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!504659)))

(declare-fun lt!504959 () Unit!24235)

(assert (=> d!427730 (= lt!504959 (choose!8982 Lexer!2327 (rules!11668 thiss!10022) lt!504657 lt!504659))))

(assert (=> d!427730 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427730 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!504657 lt!504659) lt!504959)))

(declare-fun bs!344171 () Bool)

(assert (= bs!344171 d!427730))

(assert (=> bs!344171 m!1695653))

(declare-fun m!1696339 () Bool)

(assert (=> bs!344171 m!1696339))

(assert (=> bs!344171 m!1696087))

(assert (=> b!1460849 d!427730))

(declare-fun d!427732 () Bool)

(declare-fun lt!504961 () Bool)

(declare-fun e!932070 () Bool)

(assert (=> d!427732 (= lt!504961 e!932070)))

(declare-fun res!661176 () Bool)

(assert (=> d!427732 (=> (not res!661176) (not e!932070))))

(assert (=> d!427732 (= res!661176 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659))))) (list!6073 (singletonSeq!1277 lt!504659))))))

(declare-fun e!932071 () Bool)

(assert (=> d!427732 (= lt!504961 e!932071)))

(declare-fun res!661175 () Bool)

(assert (=> d!427732 (=> (not res!661175) (not e!932071))))

(declare-fun lt!504960 () tuple2!14244)

(assert (=> d!427732 (= res!661175 (= (size!12413 (_1!8008 lt!504960)) 1))))

(assert (=> d!427732 (= lt!504960 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659))))))

(assert (=> d!427732 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427732 (= (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!504659) lt!504961)))

(declare-fun b!1461034 () Bool)

(declare-fun res!661174 () Bool)

(assert (=> b!1461034 (=> (not res!661174) (not e!932071))))

(assert (=> b!1461034 (= res!661174 (= (apply!3952 (_1!8008 lt!504960) 0) lt!504659))))

(declare-fun b!1461035 () Bool)

(assert (=> b!1461035 (= e!932071 (isEmpty!9529 (_2!8008 lt!504960)))))

(declare-fun b!1461036 () Bool)

(assert (=> b!1461036 (= e!932070 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659))))))))

(assert (= (and d!427732 res!661175) b!1461034))

(assert (= (and b!1461034 res!661174) b!1461035))

(assert (= (and d!427732 res!661176) b!1461036))

(declare-fun m!1696341 () Bool)

(assert (=> d!427732 m!1696341))

(declare-fun m!1696343 () Bool)

(assert (=> d!427732 m!1696343))

(declare-fun m!1696345 () Bool)

(assert (=> d!427732 m!1696345))

(declare-fun m!1696347 () Bool)

(assert (=> d!427732 m!1696347))

(declare-fun m!1696349 () Bool)

(assert (=> d!427732 m!1696349))

(assert (=> d!427732 m!1696343))

(declare-fun m!1696351 () Bool)

(assert (=> d!427732 m!1696351))

(assert (=> d!427732 m!1696087))

(assert (=> d!427732 m!1696343))

(assert (=> d!427732 m!1696347))

(declare-fun m!1696353 () Bool)

(assert (=> b!1461034 m!1696353))

(declare-fun m!1696355 () Bool)

(assert (=> b!1461035 m!1696355))

(assert (=> b!1461036 m!1696343))

(assert (=> b!1461036 m!1696343))

(assert (=> b!1461036 m!1696347))

(assert (=> b!1461036 m!1696347))

(assert (=> b!1461036 m!1696349))

(declare-fun m!1696357 () Bool)

(assert (=> b!1461036 m!1696357))

(assert (=> b!1460849 d!427732))

(declare-fun d!427734 () Bool)

(declare-fun e!932074 () Bool)

(assert (=> d!427734 e!932074))

(declare-fun res!661188 () Bool)

(assert (=> d!427734 (=> (not res!661188) (not e!932074))))

(declare-fun appendAssocInst!333 (Conc!5173 Conc!5173) Bool)

(assert (=> d!427734 (= res!661188 (appendAssocInst!333 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32))))))

(declare-fun lt!504964 () BalanceConc!10286)

(declare-fun ++!4085 (Conc!5173 Conc!5173) Conc!5173)

(assert (=> d!427734 (= lt!504964 (BalanceConc!10287 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))))))

(assert (=> d!427734 (= (++!4079 (tokens!2100 thiss!10022) (tokens!2100 other!32)) lt!504964)))

(declare-fun b!1461048 () Bool)

(assert (=> b!1461048 (= e!932074 (= (list!6073 lt!504964) (++!4080 (list!6073 (tokens!2100 thiss!10022)) (list!6073 (tokens!2100 other!32)))))))

(declare-fun b!1461045 () Bool)

(declare-fun res!661185 () Bool)

(assert (=> b!1461045 (=> (not res!661185) (not e!932074))))

(assert (=> b!1461045 (= res!661185 (isBalanced!1550 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))))))

(declare-fun b!1461046 () Bool)

(declare-fun res!661186 () Bool)

(assert (=> b!1461046 (=> (not res!661186) (not e!932074))))

(declare-fun height!774 (Conc!5173) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1461046 (= res!661186 (<= (height!774 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))) (+ (max!0 (height!774 (c!240746 (tokens!2100 thiss!10022))) (height!774 (c!240746 (tokens!2100 other!32)))) 1)))))

(declare-fun b!1461047 () Bool)

(declare-fun res!661187 () Bool)

(assert (=> b!1461047 (=> (not res!661187) (not e!932074))))

(assert (=> b!1461047 (= res!661187 (>= (height!774 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))) (max!0 (height!774 (c!240746 (tokens!2100 thiss!10022))) (height!774 (c!240746 (tokens!2100 other!32))))))))

(assert (= (and d!427734 res!661188) b!1461045))

(assert (= (and b!1461045 res!661185) b!1461046))

(assert (= (and b!1461046 res!661186) b!1461047))

(assert (= (and b!1461047 res!661187) b!1461048))

(declare-fun m!1696359 () Bool)

(assert (=> b!1461047 m!1696359))

(declare-fun m!1696361 () Bool)

(assert (=> b!1461047 m!1696361))

(declare-fun m!1696363 () Bool)

(assert (=> b!1461047 m!1696363))

(assert (=> b!1461047 m!1696359))

(assert (=> b!1461047 m!1696361))

(declare-fun m!1696365 () Bool)

(assert (=> b!1461047 m!1696365))

(assert (=> b!1461047 m!1696365))

(declare-fun m!1696367 () Bool)

(assert (=> b!1461047 m!1696367))

(declare-fun m!1696369 () Bool)

(assert (=> d!427734 m!1696369))

(assert (=> d!427734 m!1696365))

(assert (=> b!1461045 m!1696365))

(assert (=> b!1461045 m!1696365))

(declare-fun m!1696371 () Bool)

(assert (=> b!1461045 m!1696371))

(declare-fun m!1696373 () Bool)

(assert (=> b!1461048 m!1696373))

(assert (=> b!1461048 m!1695647))

(assert (=> b!1461048 m!1695651))

(assert (=> b!1461048 m!1695647))

(assert (=> b!1461048 m!1695651))

(declare-fun m!1696375 () Bool)

(assert (=> b!1461048 m!1696375))

(assert (=> b!1461046 m!1696359))

(assert (=> b!1461046 m!1696361))

(assert (=> b!1461046 m!1696363))

(assert (=> b!1461046 m!1696359))

(assert (=> b!1461046 m!1696361))

(assert (=> b!1461046 m!1696365))

(assert (=> b!1461046 m!1696365))

(assert (=> b!1461046 m!1696367))

(assert (=> b!1460848 d!427734))

(declare-fun d!427736 () Bool)

(declare-fun e!932088 () Bool)

(assert (=> d!427736 e!932088))

(declare-fun res!661201 () Bool)

(assert (=> d!427736 (=> (not res!661201) (not e!932088))))

(assert (=> d!427736 (= res!661201 ((_ is Lexer!2327) Lexer!2327))))

(declare-fun lt!504973 () Unit!24235)

(declare-fun choose!8983 (LexerInterface!2329 List!15240 List!15240 List!15241) Unit!24235)

(assert (=> d!427736 (= lt!504973 (choose!8983 Lexer!2327 lt!504650 lt!504657 (rules!11668 thiss!10022)))))

(assert (=> d!427736 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427736 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!54 Lexer!2327 lt!504650 lt!504657 (rules!11668 thiss!10022)) lt!504973)))

(declare-fun b!1461074 () Bool)

(declare-fun res!661200 () Bool)

(assert (=> b!1461074 (=> (not res!661200) (not e!932088))))

(assert (=> b!1461074 (= res!661200 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!504657))))

(declare-fun b!1461072 () Bool)

(declare-fun res!661202 () Bool)

(assert (=> b!1461072 (=> (not res!661202) (not e!932088))))

(assert (=> b!1461072 (= res!661202 (rulesInvariant!2162 Lexer!2327 (rules!11668 thiss!10022)))))

(declare-fun b!1461073 () Bool)

(declare-fun res!661199 () Bool)

(assert (=> b!1461073 (=> (not res!661199) (not e!932088))))

(assert (=> b!1461073 (= res!661199 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!504650))))

(declare-fun b!1461075 () Bool)

(assert (=> b!1461075 (= e!932088 (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 (++!4080 lt!504650 lt!504657) (rules!11668 thiss!10022)))))

(declare-fun lt!504972 () Unit!24235)

(declare-fun lt!504974 () Unit!24235)

(assert (=> b!1461075 (= lt!504972 lt!504974)))

(assert (=> b!1461075 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (++!4080 lt!504650 lt!504657))))

(assert (=> b!1461075 (= lt!504974 (lemmaRulesProduceEachTokenIndividuallyConcat!54 Lexer!2327 (rules!11668 thiss!10022) lt!504650 lt!504657))))

(assert (= (and d!427736 res!661201) b!1461072))

(assert (= (and b!1461072 res!661202) b!1461073))

(assert (= (and b!1461073 res!661199) b!1461074))

(assert (= (and b!1461074 res!661200) b!1461075))

(assert (=> b!1461075 m!1695693))

(assert (=> b!1461075 m!1695693))

(declare-fun m!1696381 () Bool)

(assert (=> b!1461075 m!1696381))

(assert (=> b!1461075 m!1695693))

(declare-fun m!1696383 () Bool)

(assert (=> b!1461075 m!1696383))

(assert (=> b!1461075 m!1695685))

(assert (=> b!1461072 m!1695749))

(declare-fun m!1696385 () Bool)

(assert (=> b!1461074 m!1696385))

(declare-fun m!1696387 () Bool)

(assert (=> b!1461073 m!1696387))

(declare-fun m!1696389 () Bool)

(assert (=> d!427736 m!1696389))

(assert (=> d!427736 m!1696087))

(assert (=> b!1460848 d!427736))

(declare-fun d!427740 () Bool)

(assert (=> d!427740 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (++!4080 lt!504650 lt!504657))))

(declare-fun lt!504980 () Unit!24235)

(declare-fun choose!8984 (LexerInterface!2329 List!15241 List!15240 List!15240) Unit!24235)

(assert (=> d!427740 (= lt!504980 (choose!8984 Lexer!2327 (rules!11668 thiss!10022) lt!504650 lt!504657))))

(assert (=> d!427740 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427740 (= (lemmaRulesProduceEachTokenIndividuallyConcat!54 Lexer!2327 (rules!11668 thiss!10022) lt!504650 lt!504657) lt!504980)))

(declare-fun bs!344173 () Bool)

(assert (= bs!344173 d!427740))

(assert (=> bs!344173 m!1695693))

(assert (=> bs!344173 m!1695693))

(assert (=> bs!344173 m!1696383))

(declare-fun m!1696395 () Bool)

(assert (=> bs!344173 m!1696395))

(assert (=> bs!344173 m!1696087))

(assert (=> b!1460848 d!427740))

(declare-fun e!932094 () Bool)

(declare-fun lt!504983 () List!15240)

(declare-fun b!1461087 () Bool)

(assert (=> b!1461087 (= e!932094 (or (not (= lt!504657 Nil!15174)) (= lt!504983 lt!504650)))))

(declare-fun b!1461086 () Bool)

(declare-fun res!661208 () Bool)

(assert (=> b!1461086 (=> (not res!661208) (not e!932094))))

(declare-fun size!12414 (List!15240) Int)

(assert (=> b!1461086 (= res!661208 (= (size!12414 lt!504983) (+ (size!12414 lt!504650) (size!12414 lt!504657))))))

(declare-fun b!1461084 () Bool)

(declare-fun e!932093 () List!15240)

(assert (=> b!1461084 (= e!932093 lt!504657)))

(declare-fun d!427744 () Bool)

(assert (=> d!427744 e!932094))

(declare-fun res!661207 () Bool)

(assert (=> d!427744 (=> (not res!661207) (not e!932094))))

(declare-fun content!2243 (List!15240) (InoxSet Token!5008))

(assert (=> d!427744 (= res!661207 (= (content!2243 lt!504983) ((_ map or) (content!2243 lt!504650) (content!2243 lt!504657))))))

(assert (=> d!427744 (= lt!504983 e!932093)))

(declare-fun c!240788 () Bool)

(assert (=> d!427744 (= c!240788 ((_ is Nil!15174) lt!504650))))

(assert (=> d!427744 (= (++!4080 lt!504650 lt!504657) lt!504983)))

(declare-fun b!1461085 () Bool)

(assert (=> b!1461085 (= e!932093 (Cons!15174 (h!20575 lt!504650) (++!4080 (t!134383 lt!504650) lt!504657)))))

(assert (= (and d!427744 c!240788) b!1461084))

(assert (= (and d!427744 (not c!240788)) b!1461085))

(assert (= (and d!427744 res!661207) b!1461086))

(assert (= (and b!1461086 res!661208) b!1461087))

(declare-fun m!1696397 () Bool)

(assert (=> b!1461086 m!1696397))

(declare-fun m!1696399 () Bool)

(assert (=> b!1461086 m!1696399))

(declare-fun m!1696401 () Bool)

(assert (=> b!1461086 m!1696401))

(declare-fun m!1696403 () Bool)

(assert (=> d!427744 m!1696403))

(declare-fun m!1696405 () Bool)

(assert (=> d!427744 m!1696405))

(declare-fun m!1696407 () Bool)

(assert (=> d!427744 m!1696407))

(declare-fun m!1696409 () Bool)

(assert (=> b!1461085 m!1696409))

(assert (=> b!1460848 d!427744))

(declare-fun b!1461116 () Bool)

(declare-fun res!661237 () Bool)

(declare-fun e!932110 () Bool)

(assert (=> b!1461116 (=> (not res!661237) (not e!932110))))

(assert (=> b!1461116 (= res!661237 (not (isEmpty!9528 (rules!11668 thiss!10022))))))

(declare-fun b!1461117 () Bool)

(declare-fun lt!505087 () List!15240)

(assert (=> b!1461117 (= e!932110 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!505087))))

(declare-fun b!1461118 () Bool)

(declare-fun e!932111 () Bool)

(declare-fun e!932112 () Bool)

(assert (=> b!1461118 (= e!932111 e!932112)))

(declare-fun res!661240 () Bool)

(assert (=> b!1461118 (=> (not res!661240) (not e!932112))))

(assert (=> b!1461118 (= res!661240 (separableTokensPredicate!538 Lexer!2327 (apply!3952 lt!504662 0) (apply!3952 lt!504662 (+ 0 1)) (rules!11668 thiss!10022)))))

(declare-fun lt!505088 () Unit!24235)

(declare-fun Unit!24303 () Unit!24235)

(assert (=> b!1461118 (= lt!505088 Unit!24303)))

(declare-fun size!12415 (BalanceConc!10284) Int)

(assert (=> b!1461118 (> (size!12415 (charsOf!1536 (apply!3952 lt!504662 (+ 0 1)))) 0)))

(declare-fun lt!505080 () Unit!24235)

(declare-fun Unit!24304 () Unit!24235)

(assert (=> b!1461118 (= lt!505080 Unit!24304)))

(assert (=> b!1461118 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (apply!3952 lt!504662 (+ 0 1)))))

(declare-fun lt!505065 () Unit!24235)

(declare-fun Unit!24305 () Unit!24235)

(assert (=> b!1461118 (= lt!505065 Unit!24305)))

(assert (=> b!1461118 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (apply!3952 lt!504662 0))))

(declare-fun lt!505075 () Unit!24235)

(declare-fun lt!505073 () Unit!24235)

(assert (=> b!1461118 (= lt!505075 lt!505073)))

(declare-fun lt!505083 () Token!5008)

(assert (=> b!1461118 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!505083)))

(declare-fun lt!505078 () List!15240)

(assert (=> b!1461118 (= lt!505073 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!505078 lt!505083))))

(assert (=> b!1461118 (= lt!505083 (apply!3952 lt!504662 (+ 0 1)))))

(assert (=> b!1461118 (= lt!505078 (list!6073 lt!504662))))

(declare-fun lt!505074 () Unit!24235)

(declare-fun lt!505067 () Unit!24235)

(assert (=> b!1461118 (= lt!505074 lt!505067)))

(declare-fun lt!505060 () Token!5008)

(assert (=> b!1461118 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!505060)))

(declare-fun lt!505082 () List!15240)

(assert (=> b!1461118 (= lt!505067 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!505082 lt!505060))))

(assert (=> b!1461118 (= lt!505060 (apply!3952 lt!504662 0))))

(assert (=> b!1461118 (= lt!505082 (list!6073 lt!504662))))

(declare-fun lt!505072 () Unit!24235)

(declare-fun lt!505084 () Unit!24235)

(assert (=> b!1461118 (= lt!505072 lt!505084)))

(declare-fun lt!505070 () List!15240)

(declare-fun lt!505064 () Int)

(declare-fun tail!2174 (List!15240) List!15240)

(declare-fun drop!744 (List!15240 Int) List!15240)

(assert (=> b!1461118 (= (tail!2174 (drop!744 lt!505070 lt!505064)) (drop!744 lt!505070 (+ lt!505064 1)))))

(declare-fun lemmaDropTail!474 (List!15240 Int) Unit!24235)

(assert (=> b!1461118 (= lt!505084 (lemmaDropTail!474 lt!505070 lt!505064))))

(assert (=> b!1461118 (= lt!505064 (+ 0 1))))

(assert (=> b!1461118 (= lt!505070 (list!6073 lt!504662))))

(declare-fun lt!505081 () Unit!24235)

(declare-fun lt!505069 () Unit!24235)

(assert (=> b!1461118 (= lt!505081 lt!505069)))

(declare-fun lt!505089 () List!15240)

(assert (=> b!1461118 (= (tail!2174 (drop!744 lt!505089 0)) (drop!744 lt!505089 (+ 0 1)))))

(assert (=> b!1461118 (= lt!505069 (lemmaDropTail!474 lt!505089 0))))

(assert (=> b!1461118 (= lt!505089 (list!6073 lt!504662))))

(declare-fun lt!505079 () Unit!24235)

(declare-fun lt!505077 () Unit!24235)

(assert (=> b!1461118 (= lt!505079 lt!505077)))

(declare-fun lt!505063 () List!15240)

(declare-fun lt!505066 () Int)

(declare-fun apply!3953 (List!15240 Int) Token!5008)

(assert (=> b!1461118 (= (head!3012 (drop!744 lt!505063 lt!505066)) (apply!3953 lt!505063 lt!505066))))

(declare-fun lemmaDropApply!494 (List!15240 Int) Unit!24235)

(assert (=> b!1461118 (= lt!505077 (lemmaDropApply!494 lt!505063 lt!505066))))

(assert (=> b!1461118 (= lt!505066 (+ 0 1))))

(assert (=> b!1461118 (= lt!505063 (list!6073 lt!504662))))

(declare-fun lt!505071 () Unit!24235)

(declare-fun lt!505062 () Unit!24235)

(assert (=> b!1461118 (= lt!505071 lt!505062)))

(declare-fun lt!505091 () List!15240)

(assert (=> b!1461118 (= (head!3012 (drop!744 lt!505091 0)) (apply!3953 lt!505091 0))))

(assert (=> b!1461118 (= lt!505062 (lemmaDropApply!494 lt!505091 0))))

(assert (=> b!1461118 (= lt!505091 (list!6073 lt!504662))))

(declare-fun b!1461119 () Bool)

(assert (=> b!1461119 (= e!932112 (tokensListTwoByTwoPredicateSeparable!136 Lexer!2327 lt!504662 (+ 0 1) (rules!11668 thiss!10022)))))

(declare-fun d!427746 () Bool)

(declare-fun lt!505076 () Bool)

(declare-fun dropList!480 (BalanceConc!10286 Int) List!15240)

(assert (=> d!427746 (= lt!505076 (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 (dropList!480 lt!504662 0) (rules!11668 thiss!10022)))))

(declare-fun lt!505085 () Unit!24235)

(declare-fun lt!505061 () Unit!24235)

(assert (=> d!427746 (= lt!505085 lt!505061)))

(declare-fun lt!505090 () List!15240)

(assert (=> d!427746 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!505090)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!62 (LexerInterface!2329 List!15241 List!15240 List!15240) Unit!24235)

(assert (=> d!427746 (= lt!505061 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!62 Lexer!2327 (rules!11668 thiss!10022) lt!505087 lt!505090))))

(assert (=> d!427746 e!932110))

(declare-fun res!661238 () Bool)

(assert (=> d!427746 (=> (not res!661238) (not e!932110))))

(assert (=> d!427746 (= res!661238 ((_ is Lexer!2327) Lexer!2327))))

(assert (=> d!427746 (= lt!505090 (dropList!480 lt!504662 0))))

(assert (=> d!427746 (= lt!505087 (list!6073 lt!504662))))

(declare-fun lt!505059 () Unit!24235)

(declare-fun lt!505068 () Unit!24235)

(assert (=> d!427746 (= lt!505059 lt!505068)))

(declare-fun lt!505086 () List!15240)

(declare-fun subseq!367 (List!15240 List!15240) Bool)

(assert (=> d!427746 (subseq!367 (drop!744 lt!505086 0) lt!505086)))

(declare-fun lemmaDropSubSeq!62 (List!15240 Int) Unit!24235)

(assert (=> d!427746 (= lt!505068 (lemmaDropSubSeq!62 lt!505086 0))))

(declare-fun e!932108 () Bool)

(assert (=> d!427746 e!932108))

(declare-fun res!661243 () Bool)

(assert (=> d!427746 (=> (not res!661243) (not e!932108))))

(assert (=> d!427746 (= res!661243 (>= 0 0))))

(assert (=> d!427746 (= lt!505086 (list!6073 lt!504662))))

(assert (=> d!427746 (= lt!505076 e!932111)))

(declare-fun res!661241 () Bool)

(assert (=> d!427746 (=> res!661241 e!932111)))

(assert (=> d!427746 (= res!661241 (not (< 0 (- (size!12413 lt!504662) 1))))))

(declare-fun e!932109 () Bool)

(assert (=> d!427746 e!932109))

(declare-fun res!661242 () Bool)

(assert (=> d!427746 (=> (not res!661242) (not e!932109))))

(assert (=> d!427746 (= res!661242 (>= 0 0))))

(assert (=> d!427746 (= (tokensListTwoByTwoPredicateSeparable!136 Lexer!2327 lt!504662 0 (rules!11668 thiss!10022)) lt!505076)))

(declare-fun b!1461120 () Bool)

(declare-fun res!661239 () Bool)

(assert (=> b!1461120 (=> (not res!661239) (not e!932110))))

(assert (=> b!1461120 (= res!661239 (subseq!367 lt!505090 lt!505087))))

(declare-fun b!1461121 () Bool)

(declare-fun res!661244 () Bool)

(assert (=> b!1461121 (=> (not res!661244) (not e!932110))))

(assert (=> b!1461121 (= res!661244 (rulesInvariant!2162 Lexer!2327 (rules!11668 thiss!10022)))))

(declare-fun b!1461122 () Bool)

(assert (=> b!1461122 (= e!932109 (<= 0 (size!12413 lt!504662)))))

(declare-fun b!1461123 () Bool)

(assert (=> b!1461123 (= e!932108 (<= 0 (size!12414 lt!505086)))))

(assert (= (and d!427746 res!661242) b!1461122))

(assert (= (and d!427746 (not res!661241)) b!1461118))

(assert (= (and b!1461118 res!661240) b!1461119))

(assert (= (and d!427746 res!661243) b!1461123))

(assert (= (and d!427746 res!661238) b!1461116))

(assert (= (and b!1461116 res!661237) b!1461121))

(assert (= (and b!1461121 res!661244) b!1461120))

(assert (= (and b!1461120 res!661239) b!1461117))

(declare-fun m!1696419 () Bool)

(assert (=> b!1461117 m!1696419))

(declare-fun m!1696421 () Bool)

(assert (=> b!1461119 m!1696421))

(assert (=> b!1461121 m!1695749))

(declare-fun m!1696423 () Bool)

(assert (=> b!1461122 m!1696423))

(declare-fun m!1696425 () Bool)

(assert (=> b!1461120 m!1696425))

(declare-fun m!1696427 () Bool)

(assert (=> b!1461123 m!1696427))

(assert (=> b!1461116 m!1696087))

(declare-fun m!1696429 () Bool)

(assert (=> d!427746 m!1696429))

(declare-fun m!1696431 () Bool)

(assert (=> d!427746 m!1696431))

(declare-fun m!1696433 () Bool)

(assert (=> d!427746 m!1696433))

(declare-fun m!1696435 () Bool)

(assert (=> d!427746 m!1696435))

(assert (=> d!427746 m!1696431))

(declare-fun m!1696437 () Bool)

(assert (=> d!427746 m!1696437))

(declare-fun m!1696439 () Bool)

(assert (=> d!427746 m!1696439))

(assert (=> d!427746 m!1696429))

(declare-fun m!1696441 () Bool)

(assert (=> d!427746 m!1696441))

(declare-fun m!1696443 () Bool)

(assert (=> d!427746 m!1696443))

(assert (=> d!427746 m!1696423))

(declare-fun m!1696445 () Bool)

(assert (=> b!1461118 m!1696445))

(declare-fun m!1696447 () Bool)

(assert (=> b!1461118 m!1696447))

(declare-fun m!1696449 () Bool)

(assert (=> b!1461118 m!1696449))

(assert (=> b!1461118 m!1696433))

(declare-fun m!1696451 () Bool)

(assert (=> b!1461118 m!1696451))

(declare-fun m!1696453 () Bool)

(assert (=> b!1461118 m!1696453))

(declare-fun m!1696455 () Bool)

(assert (=> b!1461118 m!1696455))

(declare-fun m!1696457 () Bool)

(assert (=> b!1461118 m!1696457))

(declare-fun m!1696459 () Bool)

(assert (=> b!1461118 m!1696459))

(declare-fun m!1696461 () Bool)

(assert (=> b!1461118 m!1696461))

(declare-fun m!1696463 () Bool)

(assert (=> b!1461118 m!1696463))

(assert (=> b!1461118 m!1696445))

(declare-fun m!1696465 () Bool)

(assert (=> b!1461118 m!1696465))

(declare-fun m!1696467 () Bool)

(assert (=> b!1461118 m!1696467))

(declare-fun m!1696469 () Bool)

(assert (=> b!1461118 m!1696469))

(assert (=> b!1461118 m!1696447))

(declare-fun m!1696471 () Bool)

(assert (=> b!1461118 m!1696471))

(declare-fun m!1696473 () Bool)

(assert (=> b!1461118 m!1696473))

(declare-fun m!1696475 () Bool)

(assert (=> b!1461118 m!1696475))

(declare-fun m!1696477 () Bool)

(assert (=> b!1461118 m!1696477))

(declare-fun m!1696479 () Bool)

(assert (=> b!1461118 m!1696479))

(declare-fun m!1696481 () Bool)

(assert (=> b!1461118 m!1696481))

(declare-fun m!1696483 () Bool)

(assert (=> b!1461118 m!1696483))

(declare-fun m!1696485 () Bool)

(assert (=> b!1461118 m!1696485))

(assert (=> b!1461118 m!1696463))

(declare-fun m!1696487 () Bool)

(assert (=> b!1461118 m!1696487))

(assert (=> b!1461118 m!1696445))

(declare-fun m!1696489 () Bool)

(assert (=> b!1461118 m!1696489))

(assert (=> b!1461118 m!1696455))

(assert (=> b!1461118 m!1696447))

(assert (=> b!1461118 m!1696465))

(assert (=> b!1461118 m!1696447))

(declare-fun m!1696491 () Bool)

(assert (=> b!1461118 m!1696491))

(declare-fun m!1696493 () Bool)

(assert (=> b!1461118 m!1696493))

(assert (=> b!1461118 m!1696453))

(declare-fun m!1696495 () Bool)

(assert (=> b!1461118 m!1696495))

(declare-fun m!1696497 () Bool)

(assert (=> b!1461118 m!1696497))

(assert (=> b!1461118 m!1696479))

(assert (=> b!1460848 d!427746))

(declare-fun b!1461207 () Bool)

(declare-fun e!932176 () Bool)

(assert (=> b!1461207 (= e!932176 true)))

(declare-fun b!1461206 () Bool)

(declare-fun e!932175 () Bool)

(assert (=> b!1461206 (= e!932175 e!932176)))

(declare-fun b!1461205 () Bool)

(declare-fun e!932174 () Bool)

(assert (=> b!1461205 (= e!932174 e!932175)))

(declare-fun d!427750 () Bool)

(assert (=> d!427750 e!932174))

(assert (= b!1461206 b!1461207))

(assert (= b!1461205 b!1461206))

(assert (= (and d!427750 ((_ is Cons!15175) (rules!11668 thiss!10022))) b!1461205))

(declare-fun order!9145 () Int)

(declare-fun order!9147 () Int)

(declare-fun lambda!63291 () Int)

(declare-fun dynLambda!6923 (Int Int) Int)

(declare-fun dynLambda!6924 (Int Int) Int)

(assert (=> b!1461207 (< (dynLambda!6923 order!9145 (toValue!3984 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63291))))

(declare-fun order!9149 () Int)

(declare-fun dynLambda!6925 (Int Int) Int)

(assert (=> b!1461207 (< (dynLambda!6925 order!9149 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63291))))

(assert (=> d!427750 true))

(declare-fun lt!505211 () Bool)

(declare-fun forall!3740 (List!15240 Int) Bool)

(assert (=> d!427750 (= lt!505211 (forall!3740 lt!504655 lambda!63291))))

(declare-fun e!932167 () Bool)

(assert (=> d!427750 (= lt!505211 e!932167)))

(declare-fun res!661287 () Bool)

(assert (=> d!427750 (=> res!661287 e!932167)))

(assert (=> d!427750 (= res!661287 (not ((_ is Cons!15174) lt!504655)))))

(assert (=> d!427750 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427750 (= (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!504655) lt!505211)))

(declare-fun b!1461195 () Bool)

(declare-fun e!932166 () Bool)

(assert (=> b!1461195 (= e!932167 e!932166)))

(declare-fun res!661286 () Bool)

(assert (=> b!1461195 (=> (not res!661286) (not e!932166))))

(assert (=> b!1461195 (= res!661286 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!504655)))))

(declare-fun b!1461196 () Bool)

(assert (=> b!1461196 (= e!932166 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (t!134383 lt!504655)))))

(assert (= (and d!427750 (not res!661287)) b!1461195))

(assert (= (and b!1461195 res!661286) b!1461196))

(declare-fun m!1696673 () Bool)

(assert (=> d!427750 m!1696673))

(assert (=> d!427750 m!1696087))

(declare-fun m!1696675 () Bool)

(assert (=> b!1461195 m!1696675))

(declare-fun m!1696677 () Bool)

(assert (=> b!1461196 m!1696677))

(assert (=> b!1460848 d!427750))

(declare-fun d!427776 () Bool)

(declare-fun c!240790 () Bool)

(assert (=> d!427776 (= c!240790 ((_ is Node!5173) (c!240746 (tokens!2100 thiss!10022))))))

(declare-fun e!932177 () Bool)

(assert (=> d!427776 (= (inv!20275 (c!240746 (tokens!2100 thiss!10022))) e!932177)))

(declare-fun b!1461210 () Bool)

(assert (=> b!1461210 (= e!932177 (inv!20280 (c!240746 (tokens!2100 thiss!10022))))))

(declare-fun b!1461211 () Bool)

(declare-fun e!932178 () Bool)

(assert (=> b!1461211 (= e!932177 e!932178)))

(declare-fun res!661288 () Bool)

(assert (=> b!1461211 (= res!661288 (not ((_ is Leaf!7711) (c!240746 (tokens!2100 thiss!10022)))))))

(assert (=> b!1461211 (=> res!661288 e!932178)))

(declare-fun b!1461212 () Bool)

(assert (=> b!1461212 (= e!932178 (inv!20281 (c!240746 (tokens!2100 thiss!10022))))))

(assert (= (and d!427776 c!240790) b!1461210))

(assert (= (and d!427776 (not c!240790)) b!1461211))

(assert (= (and b!1461211 (not res!661288)) b!1461212))

(declare-fun m!1696679 () Bool)

(assert (=> b!1461210 m!1696679))

(declare-fun m!1696681 () Bool)

(assert (=> b!1461212 m!1696681))

(assert (=> b!1460847 d!427776))

(declare-fun d!427778 () Bool)

(declare-fun res!661289 () Bool)

(declare-fun e!932179 () Bool)

(assert (=> d!427778 (=> (not res!661289) (not e!932179))))

(assert (=> d!427778 (= res!661289 (not (isEmpty!9528 (rules!11668 thiss!10022))))))

(assert (=> d!427778 (= (inv!20276 thiss!10022) e!932179)))

(declare-fun b!1461213 () Bool)

(declare-fun res!661290 () Bool)

(assert (=> b!1461213 (=> (not res!661290) (not e!932179))))

(assert (=> b!1461213 (= res!661290 (rulesInvariant!2162 Lexer!2327 (rules!11668 thiss!10022)))))

(declare-fun b!1461214 () Bool)

(declare-fun res!661291 () Bool)

(assert (=> b!1461214 (=> (not res!661291) (not e!932179))))

(assert (=> b!1461214 (= res!661291 (rulesProduceEachTokenIndividually!879 Lexer!2327 (rules!11668 thiss!10022) (tokens!2100 thiss!10022)))))

(declare-fun b!1461215 () Bool)

(assert (=> b!1461215 (= e!932179 (separableTokens!263 Lexer!2327 (tokens!2100 thiss!10022) (rules!11668 thiss!10022)))))

(assert (= (and d!427778 res!661289) b!1461213))

(assert (= (and b!1461213 res!661290) b!1461214))

(assert (= (and b!1461214 res!661291) b!1461215))

(assert (=> d!427778 m!1696087))

(assert (=> b!1461213 m!1695749))

(assert (=> b!1461214 m!1695751))

(assert (=> b!1461215 m!1695753))

(assert (=> start!136286 d!427778))

(declare-fun d!427780 () Bool)

(declare-fun res!661292 () Bool)

(declare-fun e!932180 () Bool)

(assert (=> d!427780 (=> (not res!661292) (not e!932180))))

(assert (=> d!427780 (= res!661292 (not (isEmpty!9528 (rules!11668 other!32))))))

(assert (=> d!427780 (= (inv!20276 other!32) e!932180)))

(declare-fun b!1461216 () Bool)

(declare-fun res!661293 () Bool)

(assert (=> b!1461216 (=> (not res!661293) (not e!932180))))

(assert (=> b!1461216 (= res!661293 (rulesInvariant!2162 Lexer!2327 (rules!11668 other!32)))))

(declare-fun b!1461217 () Bool)

(declare-fun res!661294 () Bool)

(assert (=> b!1461217 (=> (not res!661294) (not e!932180))))

(assert (=> b!1461217 (= res!661294 (rulesProduceEachTokenIndividually!879 Lexer!2327 (rules!11668 other!32) (tokens!2100 other!32)))))

(declare-fun b!1461218 () Bool)

(assert (=> b!1461218 (= e!932180 (separableTokens!263 Lexer!2327 (tokens!2100 other!32) (rules!11668 other!32)))))

(assert (= (and d!427780 res!661292) b!1461216))

(assert (= (and b!1461216 res!661293) b!1461217))

(assert (= (and b!1461217 res!661294) b!1461218))

(assert (=> d!427780 m!1696191))

(assert (=> b!1461216 m!1695755))

(assert (=> b!1461217 m!1695757))

(assert (=> b!1461218 m!1695759))

(assert (=> start!136286 d!427780))

(declare-fun d!427782 () Bool)

(declare-fun lt!505212 () Bool)

(assert (=> d!427782 (= lt!505212 (isEmpty!9525 (list!6073 (tokens!2100 thiss!10022))))))

(assert (=> d!427782 (= lt!505212 (isEmpty!9526 (c!240746 (tokens!2100 thiss!10022))))))

(assert (=> d!427782 (= (isEmpty!9519 (tokens!2100 thiss!10022)) lt!505212)))

(declare-fun bs!344183 () Bool)

(assert (= bs!344183 d!427782))

(assert (=> bs!344183 m!1695647))

(assert (=> bs!344183 m!1695647))

(declare-fun m!1696683 () Bool)

(assert (=> bs!344183 m!1696683))

(declare-fun m!1696685 () Bool)

(assert (=> bs!344183 m!1696685))

(assert (=> b!1460851 d!427782))

(declare-fun d!427784 () Bool)

(declare-fun res!661300 () Bool)

(declare-fun e!932186 () Bool)

(assert (=> d!427784 (=> res!661300 e!932186)))

(assert (=> d!427784 (= res!661300 (or (not ((_ is Cons!15174) lt!504655)) (not ((_ is Cons!15174) (t!134383 lt!504655)))))))

(assert (=> d!427784 (= (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 lt!504655 (rules!11668 thiss!10022)) e!932186)))

(declare-fun b!1461223 () Bool)

(declare-fun e!932185 () Bool)

(assert (=> b!1461223 (= e!932186 e!932185)))

(declare-fun res!661299 () Bool)

(assert (=> b!1461223 (=> (not res!661299) (not e!932185))))

(assert (=> b!1461223 (= res!661299 (separableTokensPredicate!538 Lexer!2327 (h!20575 lt!504655) (h!20575 (t!134383 lt!504655)) (rules!11668 thiss!10022)))))

(declare-fun lt!505230 () Unit!24235)

(declare-fun Unit!24306 () Unit!24235)

(assert (=> b!1461223 (= lt!505230 Unit!24306)))

(assert (=> b!1461223 (> (size!12415 (charsOf!1536 (h!20575 (t!134383 lt!504655)))) 0)))

(declare-fun lt!505229 () Unit!24235)

(declare-fun Unit!24307 () Unit!24235)

(assert (=> b!1461223 (= lt!505229 Unit!24307)))

(assert (=> b!1461223 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 lt!504655)))))

(declare-fun lt!505228 () Unit!24235)

(declare-fun Unit!24308 () Unit!24235)

(assert (=> b!1461223 (= lt!505228 Unit!24308)))

(assert (=> b!1461223 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!504655))))

(declare-fun lt!505232 () Unit!24235)

(declare-fun lt!505233 () Unit!24235)

(assert (=> b!1461223 (= lt!505232 lt!505233)))

(assert (=> b!1461223 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 lt!504655)))))

(assert (=> b!1461223 (= lt!505233 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!504655 (h!20575 (t!134383 lt!504655))))))

(declare-fun lt!505231 () Unit!24235)

(declare-fun lt!505227 () Unit!24235)

(assert (=> b!1461223 (= lt!505231 lt!505227)))

(assert (=> b!1461223 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!504655))))

(assert (=> b!1461223 (= lt!505227 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!504655 (h!20575 lt!504655)))))

(declare-fun b!1461224 () Bool)

(assert (=> b!1461224 (= e!932185 (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))) (rules!11668 thiss!10022)))))

(assert (= (and d!427784 (not res!661300)) b!1461223))

(assert (= (and b!1461223 res!661299) b!1461224))

(declare-fun m!1696687 () Bool)

(assert (=> b!1461223 m!1696687))

(assert (=> b!1461223 m!1696675))

(declare-fun m!1696689 () Bool)

(assert (=> b!1461223 m!1696689))

(declare-fun m!1696691 () Bool)

(assert (=> b!1461223 m!1696691))

(declare-fun m!1696693 () Bool)

(assert (=> b!1461223 m!1696693))

(declare-fun m!1696695 () Bool)

(assert (=> b!1461223 m!1696695))

(assert (=> b!1461223 m!1696689))

(declare-fun m!1696697 () Bool)

(assert (=> b!1461223 m!1696697))

(declare-fun m!1696699 () Bool)

(assert (=> b!1461224 m!1696699))

(assert (=> b!1460850 d!427784))

(declare-fun tp!411604 () Bool)

(declare-fun b!1461233 () Bool)

(declare-fun tp!411603 () Bool)

(declare-fun e!932191 () Bool)

(assert (=> b!1461233 (= e!932191 (and (inv!20275 (left!12896 (c!240746 (tokens!2100 other!32)))) tp!411603 (inv!20275 (right!13226 (c!240746 (tokens!2100 other!32)))) tp!411604))))

(declare-fun b!1461235 () Bool)

(declare-fun e!932192 () Bool)

(declare-fun tp!411605 () Bool)

(assert (=> b!1461235 (= e!932192 tp!411605)))

(declare-fun b!1461234 () Bool)

(declare-fun inv!20284 (IArray!10351) Bool)

(assert (=> b!1461234 (= e!932191 (and (inv!20284 (xs!7920 (c!240746 (tokens!2100 other!32)))) e!932192))))

(assert (=> b!1460854 (= tp!411565 (and (inv!20275 (c!240746 (tokens!2100 other!32))) e!932191))))

(assert (= (and b!1460854 ((_ is Node!5173) (c!240746 (tokens!2100 other!32)))) b!1461233))

(assert (= b!1461234 b!1461235))

(assert (= (and b!1460854 ((_ is Leaf!7711) (c!240746 (tokens!2100 other!32)))) b!1461234))

(declare-fun m!1696701 () Bool)

(assert (=> b!1461233 m!1696701))

(declare-fun m!1696703 () Bool)

(assert (=> b!1461233 m!1696703))

(declare-fun m!1696705 () Bool)

(assert (=> b!1461234 m!1696705))

(assert (=> b!1460854 m!1695703))

(declare-fun b!1461246 () Bool)

(declare-fun b_free!36471 () Bool)

(declare-fun b_next!37175 () Bool)

(assert (=> b!1461246 (= b_free!36471 (not b_next!37175))))

(declare-fun tp!411614 () Bool)

(declare-fun b_and!99785 () Bool)

(assert (=> b!1461246 (= tp!411614 b_and!99785)))

(declare-fun b_free!36473 () Bool)

(declare-fun b_next!37177 () Bool)

(assert (=> b!1461246 (= b_free!36473 (not b_next!37177))))

(declare-fun tp!411615 () Bool)

(declare-fun b_and!99787 () Bool)

(assert (=> b!1461246 (= tp!411615 b_and!99787)))

(declare-fun e!932201 () Bool)

(assert (=> b!1461246 (= e!932201 (and tp!411614 tp!411615))))

(declare-fun tp!411616 () Bool)

(declare-fun e!932204 () Bool)

(declare-fun b!1461245 () Bool)

(declare-fun inv!20271 (String!18071) Bool)

(declare-fun inv!20285 (TokenValueInjection!5186) Bool)

(assert (=> b!1461245 (= e!932204 (and tp!411616 (inv!20271 (tag!2937 (h!20576 (rules!11668 other!32)))) (inv!20285 (transformation!2673 (h!20576 (rules!11668 other!32)))) e!932201))))

(declare-fun b!1461244 () Bool)

(declare-fun e!932203 () Bool)

(declare-fun tp!411617 () Bool)

(assert (=> b!1461244 (= e!932203 (and e!932204 tp!411617))))

(assert (=> b!1460852 (= tp!411566 e!932203)))

(assert (= b!1461245 b!1461246))

(assert (= b!1461244 b!1461245))

(assert (= (and b!1460852 ((_ is Cons!15175) (rules!11668 other!32))) b!1461244))

(declare-fun m!1696707 () Bool)

(assert (=> b!1461245 m!1696707))

(declare-fun m!1696709 () Bool)

(assert (=> b!1461245 m!1696709))

(declare-fun tp!411619 () Bool)

(declare-fun tp!411618 () Bool)

(declare-fun b!1461247 () Bool)

(declare-fun e!932205 () Bool)

(assert (=> b!1461247 (= e!932205 (and (inv!20275 (left!12896 (c!240746 (tokens!2100 thiss!10022)))) tp!411618 (inv!20275 (right!13226 (c!240746 (tokens!2100 thiss!10022)))) tp!411619))))

(declare-fun b!1461249 () Bool)

(declare-fun e!932206 () Bool)

(declare-fun tp!411620 () Bool)

(assert (=> b!1461249 (= e!932206 tp!411620)))

(declare-fun b!1461248 () Bool)

(assert (=> b!1461248 (= e!932205 (and (inv!20284 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))) e!932206))))

(assert (=> b!1460847 (= tp!411567 (and (inv!20275 (c!240746 (tokens!2100 thiss!10022))) e!932205))))

(assert (= (and b!1460847 ((_ is Node!5173) (c!240746 (tokens!2100 thiss!10022)))) b!1461247))

(assert (= b!1461248 b!1461249))

(assert (= (and b!1460847 ((_ is Leaf!7711) (c!240746 (tokens!2100 thiss!10022)))) b!1461248))

(declare-fun m!1696711 () Bool)

(assert (=> b!1461247 m!1696711))

(declare-fun m!1696713 () Bool)

(assert (=> b!1461247 m!1696713))

(declare-fun m!1696715 () Bool)

(assert (=> b!1461248 m!1696715))

(assert (=> b!1460847 m!1695695))

(declare-fun b!1461252 () Bool)

(declare-fun b_free!36475 () Bool)

(declare-fun b_next!37179 () Bool)

(assert (=> b!1461252 (= b_free!36475 (not b_next!37179))))

(declare-fun tp!411621 () Bool)

(declare-fun b_and!99789 () Bool)

(assert (=> b!1461252 (= tp!411621 b_and!99789)))

(declare-fun b_free!36477 () Bool)

(declare-fun b_next!37181 () Bool)

(assert (=> b!1461252 (= b_free!36477 (not b_next!37181))))

(declare-fun tp!411622 () Bool)

(declare-fun b_and!99791 () Bool)

(assert (=> b!1461252 (= tp!411622 b_and!99791)))

(declare-fun e!932207 () Bool)

(assert (=> b!1461252 (= e!932207 (and tp!411621 tp!411622))))

(declare-fun tp!411623 () Bool)

(declare-fun b!1461251 () Bool)

(declare-fun e!932210 () Bool)

(assert (=> b!1461251 (= e!932210 (and tp!411623 (inv!20271 (tag!2937 (h!20576 (rules!11668 thiss!10022)))) (inv!20285 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) e!932207))))

(declare-fun b!1461250 () Bool)

(declare-fun e!932209 () Bool)

(declare-fun tp!411624 () Bool)

(assert (=> b!1461250 (= e!932209 (and e!932210 tp!411624))))

(assert (=> b!1460855 (= tp!411568 e!932209)))

(assert (= b!1461251 b!1461252))

(assert (= b!1461250 b!1461251))

(assert (= (and b!1460855 ((_ is Cons!15175) (rules!11668 thiss!10022))) b!1461250))

(declare-fun m!1696717 () Bool)

(assert (=> b!1461251 m!1696717))

(declare-fun m!1696719 () Bool)

(assert (=> b!1461251 m!1696719))

(check-sat (not d!427728) (not b_next!37175) (not d!427664) (not b!1461118) (not b!1461017) (not b!1460865) (not b!1461075) (not b!1460899) (not d!427678) (not b!1460900) (not b!1461247) (not b!1461223) (not b!1460854) (not d!427730) (not b!1461120) (not d!427710) (not b!1461196) (not d!427740) (not b!1460936) (not b!1461031) (not b!1461250) (not b!1461119) (not b!1461195) (not b!1461122) (not d!427744) (not b!1460947) (not b!1461215) (not b!1461117) (not d!427702) (not b!1460863) (not b!1460935) (not b!1461032) (not b!1461034) (not d!427660) (not d!427706) (not b!1461074) (not d!427656) b_and!99789 (not d!427672) (not b!1461116) (not b!1461001) (not b!1461251) (not b!1461035) (not d!427722) (not b!1461045) (not d!427674) (not b!1460949) (not b!1460924) (not b!1460923) (not d!427726) (not d!427716) (not d!427642) (not b!1461249) b_and!99785 (not b!1461121) (not d!427734) (not b!1460948) b_and!99787 (not d!427658) (not d!427718) (not d!427720) (not b!1461213) (not b!1460901) (not d!427750) (not b!1461020) (not d!427736) (not b!1461086) (not b!1460902) (not b!1461216) (not b!1461244) (not d!427778) (not b!1461234) (not b!1461245) (not b!1461048) (not d!427780) (not b!1460907) (not d!427746) b_and!99791 (not b!1461224) (not b!1461123) (not b_next!37179) (not b_next!37177) (not b!1461212) (not d!427712) (not d!427782) (not d!427640) (not b!1461033) (not d!427714) (not b!1461047) (not b!1461046) (not b!1461002) (not d!427732) (not b_next!37181) (not b!1461248) (not b!1461073) (not b!1461072) (not d!427724) (not b!1461085) (not b!1461205) (not b!1461210) (not b!1461235) (not b!1461036) (not b!1461016) (not b!1461233) (not b!1461018) (not b!1461217) (not b!1460847) (not b!1461214) (not b!1461218))
(check-sat b_and!99789 b_and!99785 (not b_next!37175) b_and!99787 b_and!99791 (not b_next!37181) (not b_next!37179) (not b_next!37177))
(get-model)

(assert (=> b!1460854 d!427638))

(declare-fun d!427806 () Bool)

(assert (=> d!427806 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!504940))) (list!6077 (c!240746 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!504940)))))))

(declare-fun bs!344187 () Bool)

(assert (= bs!344187 d!427806))

(declare-fun m!1696841 () Bool)

(assert (=> bs!344187 m!1696841))

(assert (=> d!427712 d!427806))

(assert (=> d!427712 d!427710))

(declare-fun d!427808 () Bool)

(declare-fun e!932248 () Bool)

(assert (=> d!427808 e!932248))

(declare-fun res!661342 () Bool)

(assert (=> d!427808 (=> (not res!661342) (not e!932248))))

(declare-fun e!932246 () Bool)

(assert (=> d!427808 (= res!661342 e!932246)))

(declare-fun c!240803 () Bool)

(declare-fun lt!505307 () tuple2!14244)

(assert (=> d!427808 (= c!240803 (> (size!12413 (_1!8008 lt!505307)) 0))))

(declare-fun lexTailRecV2!471 (LexerInterface!2329 List!15241 BalanceConc!10284 BalanceConc!10284 BalanceConc!10284 BalanceConc!10286) tuple2!14244)

(assert (=> d!427808 (= lt!505307 (lexTailRecV2!471 Lexer!2327 (rules!11668 thiss!10022) lt!504940 (BalanceConc!10285 Empty!5172) lt!504940 (BalanceConc!10287 Empty!5173)))))

(assert (=> d!427808 (= (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!504940) lt!505307)))

(declare-fun b!1461313 () Bool)

(declare-fun e!932247 () Bool)

(assert (=> b!1461313 (= e!932246 e!932247)))

(declare-fun res!661344 () Bool)

(assert (=> b!1461313 (= res!661344 (< (size!12415 (_2!8008 lt!505307)) (size!12415 lt!504940)))))

(assert (=> b!1461313 (=> (not res!661344) (not e!932247))))

(declare-fun b!1461314 () Bool)

(declare-fun res!661343 () Bool)

(assert (=> b!1461314 (=> (not res!661343) (not e!932248))))

(declare-datatypes ((tuple2!14250 0))(
  ( (tuple2!14251 (_1!8011 List!15240) (_2!8011 List!15238)) )
))
(declare-fun lexList!716 (LexerInterface!2329 List!15241 List!15238) tuple2!14250)

(assert (=> b!1461314 (= res!661343 (= (list!6073 (_1!8008 lt!505307)) (_1!8011 (lexList!716 Lexer!2327 (rules!11668 thiss!10022) (list!6075 lt!504940)))))))

(declare-fun b!1461315 () Bool)

(assert (=> b!1461315 (= e!932248 (= (list!6075 (_2!8008 lt!505307)) (_2!8011 (lexList!716 Lexer!2327 (rules!11668 thiss!10022) (list!6075 lt!504940)))))))

(declare-fun b!1461316 () Bool)

(assert (=> b!1461316 (= e!932246 (= (_2!8008 lt!505307) lt!504940))))

(declare-fun b!1461317 () Bool)

(assert (=> b!1461317 (= e!932247 (not (isEmpty!9519 (_1!8008 lt!505307))))))

(assert (= (and d!427808 c!240803) b!1461313))

(assert (= (and d!427808 (not c!240803)) b!1461316))

(assert (= (and b!1461313 res!661344) b!1461317))

(assert (= (and d!427808 res!661342) b!1461314))

(assert (= (and b!1461314 res!661343) b!1461315))

(declare-fun m!1696881 () Bool)

(assert (=> b!1461314 m!1696881))

(declare-fun m!1696883 () Bool)

(assert (=> b!1461314 m!1696883))

(assert (=> b!1461314 m!1696883))

(declare-fun m!1696885 () Bool)

(assert (=> b!1461314 m!1696885))

(declare-fun m!1696887 () Bool)

(assert (=> b!1461315 m!1696887))

(assert (=> b!1461315 m!1696883))

(assert (=> b!1461315 m!1696883))

(assert (=> b!1461315 m!1696885))

(declare-fun m!1696889 () Bool)

(assert (=> b!1461317 m!1696889))

(declare-fun m!1696891 () Bool)

(assert (=> b!1461313 m!1696891))

(declare-fun m!1696893 () Bool)

(assert (=> b!1461313 m!1696893))

(declare-fun m!1696895 () Bool)

(assert (=> d!427808 m!1696895))

(declare-fun m!1696897 () Bool)

(assert (=> d!427808 m!1696897))

(assert (=> d!427712 d!427808))

(assert (=> d!427712 d!427726))

(declare-fun d!427822 () Bool)

(declare-fun e!932249 () Bool)

(assert (=> d!427822 e!932249))

(declare-fun res!661345 () Bool)

(assert (=> d!427822 (=> (not res!661345) (not e!932249))))

(assert (=> d!427822 (= res!661345 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 (list!6073 (tokens!2100 thiss!10022))))))) (list!6073 (tokens!2100 thiss!10022))))))

(declare-fun lt!505322 () Unit!24235)

(declare-fun e!932250 () Unit!24235)

(assert (=> d!427822 (= lt!505322 e!932250)))

(declare-fun c!240804 () Bool)

(assert (=> d!427822 (= c!240804 (or ((_ is Nil!15174) (list!6073 (tokens!2100 thiss!10022))) ((_ is Nil!15174) (t!134383 (list!6073 (tokens!2100 thiss!10022))))))))

(assert (=> d!427822 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427822 (= (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 thiss!10022) (list!6073 (tokens!2100 thiss!10022))) lt!505322)))

(declare-fun b!1461318 () Bool)

(declare-fun Unit!24309 () Unit!24235)

(assert (=> b!1461318 (= e!932250 Unit!24309)))

(declare-fun b!1461319 () Bool)

(declare-fun Unit!24310 () Unit!24235)

(assert (=> b!1461319 (= e!932250 Unit!24310)))

(declare-fun lt!505308 () BalanceConc!10284)

(assert (=> b!1461319 (= lt!505308 (print!1103 Lexer!2327 (seqFromList!1712 (list!6073 (tokens!2100 thiss!10022)))))))

(declare-fun lt!505314 () BalanceConc!10284)

(assert (=> b!1461319 (= lt!505314 (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 (list!6073 (tokens!2100 thiss!10022))))))))

(declare-fun lt!505310 () tuple2!14244)

(assert (=> b!1461319 (= lt!505310 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!505314))))

(declare-fun lt!505315 () List!15238)

(assert (=> b!1461319 (= lt!505315 (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 thiss!10022))))))))

(declare-fun lt!505313 () List!15238)

(assert (=> b!1461319 (= lt!505313 (list!6075 lt!505314))))

(declare-fun lt!505326 () Unit!24235)

(assert (=> b!1461319 (= lt!505326 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!505315 lt!505313))))

(assert (=> b!1461319 (isPrefix!1203 lt!505315 (++!4081 lt!505315 lt!505313))))

(declare-fun lt!505331 () Unit!24235)

(assert (=> b!1461319 (= lt!505331 lt!505326)))

(declare-fun lt!505317 () Unit!24235)

(assert (=> b!1461319 (= lt!505317 (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 thiss!10022) (t!134383 (list!6073 (tokens!2100 thiss!10022)))))))

(declare-fun lt!505324 () Unit!24235)

(assert (=> b!1461319 (= lt!505324 (seqFromListBHdTlConstructive!95 (h!20575 (t!134383 (list!6073 (tokens!2100 thiss!10022)))) (t!134383 (t!134383 (list!6073 (tokens!2100 thiss!10022)))) (_1!8008 lt!505310)))))

(assert (=> b!1461319 (= (list!6073 (_1!8008 lt!505310)) (list!6073 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 (list!6073 (tokens!2100 thiss!10022))))) (h!20575 (t!134383 (list!6073 (tokens!2100 thiss!10022)))))))))

(declare-fun lt!505328 () Unit!24235)

(assert (=> b!1461319 (= lt!505328 lt!505324)))

(declare-fun lt!505320 () Option!2875)

(assert (=> b!1461319 (= lt!505320 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 lt!505308)))))

(assert (=> b!1461319 (= (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 (list!6073 (tokens!2100 thiss!10022))))) (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 (list!6073 (tokens!2100 thiss!10022)))) 0 (BalanceConc!10285 Empty!5172)))))

(declare-fun lt!505321 () Unit!24235)

(declare-fun Unit!24311 () Unit!24235)

(assert (=> b!1461319 (= lt!505321 Unit!24311)))

(declare-fun lt!505312 () Unit!24235)

(assert (=> b!1461319 (= lt!505312 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!239 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 thiss!10022))))) (list!6075 lt!505314)))))

(assert (=> b!1461319 (= (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 thiss!10022))))) (originalCharacters!3535 (h!20575 (list!6073 (tokens!2100 thiss!10022)))))))

(declare-fun lt!505316 () Unit!24235)

(declare-fun Unit!24312 () Unit!24235)

(assert (=> b!1461319 (= lt!505316 Unit!24312)))

(assert (=> b!1461319 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (list!6073 (tokens!2100 thiss!10022))))) 0))) (Cons!15172 (head!3008 (originalCharacters!3535 (h!20575 (t!134383 (list!6073 (tokens!2100 thiss!10022)))))) Nil!15172))))

(declare-fun lt!505318 () Unit!24235)

(declare-fun Unit!24313 () Unit!24235)

(assert (=> b!1461319 (= lt!505318 Unit!24313)))

(assert (=> b!1461319 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (list!6073 (tokens!2100 thiss!10022))))) 0))) (Cons!15172 (head!3008 (list!6075 lt!505314)) Nil!15172))))

(declare-fun lt!505329 () Unit!24235)

(declare-fun Unit!24314 () Unit!24235)

(assert (=> b!1461319 (= lt!505329 Unit!24314)))

(assert (=> b!1461319 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (list!6073 (tokens!2100 thiss!10022))))) 0))) (Cons!15172 (head!3009 lt!505314) Nil!15172))))

(declare-fun lt!505311 () Unit!24235)

(declare-fun Unit!24315 () Unit!24235)

(assert (=> b!1461319 (= lt!505311 Unit!24315)))

(assert (=> b!1461319 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (originalCharacters!3535 (h!20575 (list!6073 (tokens!2100 thiss!10022))))))))

(declare-fun lt!505323 () Unit!24235)

(declare-fun Unit!24316 () Unit!24235)

(assert (=> b!1461319 (= lt!505323 Unit!24316)))

(assert (=> b!1461319 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 thiss!10022)))))))))

(declare-fun lt!505330 () Unit!24235)

(declare-fun Unit!24317 () Unit!24235)

(assert (=> b!1461319 (= lt!505330 Unit!24317)))

(declare-fun lt!505325 () Unit!24235)

(declare-fun Unit!24318 () Unit!24235)

(assert (=> b!1461319 (= lt!505325 Unit!24318)))

(assert (=> b!1461319 (= (_1!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 thiss!10022)))))))) (h!20575 (list!6073 (tokens!2100 thiss!10022))))))

(declare-fun lt!505319 () Unit!24235)

(declare-fun Unit!24319 () Unit!24235)

(assert (=> b!1461319 (= lt!505319 Unit!24319)))

(assert (=> b!1461319 (isEmpty!9527 (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 thiss!10022)))))))))))

(declare-fun lt!505333 () Unit!24235)

(declare-fun Unit!24320 () Unit!24235)

(assert (=> b!1461319 (= lt!505333 Unit!24320)))

(assert (=> b!1461319 (matchR!1829 (regex!2673 (rule!4446 (h!20575 (list!6073 (tokens!2100 thiss!10022))))) (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 thiss!10022))))))))

(declare-fun lt!505309 () Unit!24235)

(declare-fun Unit!24321 () Unit!24235)

(assert (=> b!1461319 (= lt!505309 Unit!24321)))

(assert (=> b!1461319 (= (rule!4446 (h!20575 (list!6073 (tokens!2100 thiss!10022)))) (rule!4446 (h!20575 (list!6073 (tokens!2100 thiss!10022)))))))

(declare-fun lt!505327 () Unit!24235)

(declare-fun Unit!24323 () Unit!24235)

(assert (=> b!1461319 (= lt!505327 Unit!24323)))

(declare-fun lt!505332 () Unit!24235)

(assert (=> b!1461319 (= lt!505332 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!37 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (list!6073 (tokens!2100 thiss!10022))) (rule!4446 (h!20575 (list!6073 (tokens!2100 thiss!10022)))) (list!6075 lt!505314)))))

(declare-fun b!1461320 () Bool)

(assert (=> b!1461320 (= e!932249 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 (list!6073 (tokens!2100 thiss!10022))))))))))

(assert (= (and d!427822 c!240804) b!1461318))

(assert (= (and d!427822 (not c!240804)) b!1461319))

(assert (= (and d!427822 res!661345) b!1461320))

(declare-fun m!1696903 () Bool)

(assert (=> d!427822 m!1696903))

(declare-fun m!1696905 () Bool)

(assert (=> d!427822 m!1696905))

(assert (=> d!427822 m!1696087))

(declare-fun m!1696907 () Bool)

(assert (=> d!427822 m!1696907))

(assert (=> d!427822 m!1695647))

(assert (=> d!427822 m!1696903))

(assert (=> d!427822 m!1696905))

(declare-fun m!1696909 () Bool)

(assert (=> d!427822 m!1696909))

(declare-fun m!1696911 () Bool)

(assert (=> b!1461319 m!1696911))

(declare-fun m!1696913 () Bool)

(assert (=> b!1461319 m!1696913))

(declare-fun m!1696915 () Bool)

(assert (=> b!1461319 m!1696915))

(declare-fun m!1696917 () Bool)

(assert (=> b!1461319 m!1696917))

(declare-fun m!1696919 () Bool)

(assert (=> b!1461319 m!1696919))

(declare-fun m!1696921 () Bool)

(assert (=> b!1461319 m!1696921))

(declare-fun m!1696923 () Bool)

(assert (=> b!1461319 m!1696923))

(declare-fun m!1696925 () Bool)

(assert (=> b!1461319 m!1696925))

(assert (=> b!1461319 m!1696919))

(declare-fun m!1696927 () Bool)

(assert (=> b!1461319 m!1696927))

(assert (=> b!1461319 m!1696915))

(assert (=> b!1461319 m!1696925))

(declare-fun m!1696929 () Bool)

(assert (=> b!1461319 m!1696929))

(assert (=> b!1461319 m!1696921))

(declare-fun m!1696931 () Bool)

(assert (=> b!1461319 m!1696931))

(declare-fun m!1696933 () Bool)

(assert (=> b!1461319 m!1696933))

(declare-fun m!1696935 () Bool)

(assert (=> b!1461319 m!1696935))

(assert (=> b!1461319 m!1696903))

(assert (=> b!1461319 m!1696905))

(declare-fun m!1696937 () Bool)

(assert (=> b!1461319 m!1696937))

(assert (=> b!1461319 m!1696933))

(declare-fun m!1696939 () Bool)

(assert (=> b!1461319 m!1696939))

(declare-fun m!1696941 () Bool)

(assert (=> b!1461319 m!1696941))

(declare-fun m!1696943 () Bool)

(assert (=> b!1461319 m!1696943))

(declare-fun m!1696945 () Bool)

(assert (=> b!1461319 m!1696945))

(declare-fun m!1696947 () Bool)

(assert (=> b!1461319 m!1696947))

(assert (=> b!1461319 m!1696939))

(declare-fun m!1696949 () Bool)

(assert (=> b!1461319 m!1696949))

(declare-fun m!1696951 () Bool)

(assert (=> b!1461319 m!1696951))

(declare-fun m!1696953 () Bool)

(assert (=> b!1461319 m!1696953))

(assert (=> b!1461319 m!1696951))

(declare-fun m!1696955 () Bool)

(assert (=> b!1461319 m!1696955))

(declare-fun m!1696957 () Bool)

(assert (=> b!1461319 m!1696957))

(assert (=> b!1461319 m!1696933))

(assert (=> b!1461319 m!1696945))

(declare-fun m!1696959 () Bool)

(assert (=> b!1461319 m!1696959))

(declare-fun m!1696961 () Bool)

(assert (=> b!1461319 m!1696961))

(assert (=> b!1461319 m!1696945))

(declare-fun m!1696963 () Bool)

(assert (=> b!1461319 m!1696963))

(declare-fun m!1696965 () Bool)

(assert (=> b!1461319 m!1696965))

(assert (=> b!1461319 m!1696939))

(assert (=> b!1461319 m!1696911))

(assert (=> b!1461319 m!1696915))

(declare-fun m!1696967 () Bool)

(assert (=> b!1461319 m!1696967))

(assert (=> b!1461319 m!1696965))

(declare-fun m!1696969 () Bool)

(assert (=> b!1461319 m!1696969))

(assert (=> b!1461319 m!1695647))

(assert (=> b!1461319 m!1696903))

(declare-fun m!1696971 () Bool)

(assert (=> b!1461319 m!1696971))

(declare-fun m!1696975 () Bool)

(assert (=> b!1461319 m!1696975))

(assert (=> b!1461319 m!1696923))

(assert (=> b!1461319 m!1696913))

(declare-fun m!1696979 () Bool)

(assert (=> b!1461319 m!1696979))

(assert (=> b!1461319 m!1696979))

(declare-fun m!1696981 () Bool)

(assert (=> b!1461319 m!1696981))

(declare-fun m!1696983 () Bool)

(assert (=> b!1461319 m!1696983))

(assert (=> b!1461319 m!1696975))

(assert (=> b!1461319 m!1696933))

(assert (=> b!1461319 m!1696939))

(declare-fun m!1696985 () Bool)

(assert (=> b!1461319 m!1696985))

(assert (=> b!1461320 m!1695647))

(assert (=> b!1461320 m!1696903))

(assert (=> b!1461320 m!1696903))

(assert (=> b!1461320 m!1696905))

(assert (=> b!1461320 m!1696905))

(assert (=> b!1461320 m!1696909))

(declare-fun m!1696987 () Bool)

(assert (=> b!1461320 m!1696987))

(assert (=> d!427712 d!427822))

(declare-fun d!427828 () Bool)

(declare-fun e!932270 () Bool)

(assert (=> d!427828 e!932270))

(declare-fun res!661362 () Bool)

(assert (=> d!427828 (=> (not res!661362) (not e!932270))))

(declare-fun e!932268 () Bool)

(assert (=> d!427828 (= res!661362 e!932268)))

(declare-fun c!240806 () Bool)

(declare-fun lt!505360 () tuple2!14244)

(assert (=> d!427828 (= c!240806 (> (size!12413 (_1!8008 lt!505360)) 0))))

(assert (=> d!427828 (= lt!505360 (lexTailRecV2!471 Lexer!2327 (rules!11668 other!32) lt!504699 (BalanceConc!10285 Empty!5172) lt!504699 (BalanceConc!10287 Empty!5173)))))

(assert (=> d!427828 (= (lex!1074 Lexer!2327 (rules!11668 other!32) lt!504699) lt!505360)))

(declare-fun b!1461339 () Bool)

(declare-fun e!932269 () Bool)

(assert (=> b!1461339 (= e!932268 e!932269)))

(declare-fun res!661364 () Bool)

(assert (=> b!1461339 (= res!661364 (< (size!12415 (_2!8008 lt!505360)) (size!12415 lt!504699)))))

(assert (=> b!1461339 (=> (not res!661364) (not e!932269))))

(declare-fun b!1461340 () Bool)

(declare-fun res!661363 () Bool)

(assert (=> b!1461340 (=> (not res!661363) (not e!932270))))

(assert (=> b!1461340 (= res!661363 (= (list!6073 (_1!8008 lt!505360)) (_1!8011 (lexList!716 Lexer!2327 (rules!11668 other!32) (list!6075 lt!504699)))))))

(declare-fun b!1461341 () Bool)

(assert (=> b!1461341 (= e!932270 (= (list!6075 (_2!8008 lt!505360)) (_2!8011 (lexList!716 Lexer!2327 (rules!11668 other!32) (list!6075 lt!504699)))))))

(declare-fun b!1461342 () Bool)

(assert (=> b!1461342 (= e!932268 (= (_2!8008 lt!505360) lt!504699))))

(declare-fun b!1461343 () Bool)

(assert (=> b!1461343 (= e!932269 (not (isEmpty!9519 (_1!8008 lt!505360))))))

(assert (= (and d!427828 c!240806) b!1461339))

(assert (= (and d!427828 (not c!240806)) b!1461342))

(assert (= (and b!1461339 res!661364) b!1461343))

(assert (= (and d!427828 res!661362) b!1461340))

(assert (= (and b!1461340 res!661363) b!1461341))

(declare-fun m!1696989 () Bool)

(assert (=> b!1461340 m!1696989))

(declare-fun m!1696991 () Bool)

(assert (=> b!1461340 m!1696991))

(assert (=> b!1461340 m!1696991))

(declare-fun m!1696993 () Bool)

(assert (=> b!1461340 m!1696993))

(declare-fun m!1696995 () Bool)

(assert (=> b!1461341 m!1696995))

(assert (=> b!1461341 m!1696991))

(assert (=> b!1461341 m!1696991))

(assert (=> b!1461341 m!1696993))

(declare-fun m!1696997 () Bool)

(assert (=> b!1461343 m!1696997))

(declare-fun m!1696999 () Bool)

(assert (=> b!1461339 m!1696999))

(declare-fun m!1697001 () Bool)

(assert (=> b!1461339 m!1697001))

(declare-fun m!1697003 () Bool)

(assert (=> d!427828 m!1697003))

(declare-fun m!1697005 () Bool)

(assert (=> d!427828 m!1697005))

(assert (=> d!427664 d!427828))

(assert (=> d!427664 d!427720))

(declare-fun d!427830 () Bool)

(assert (=> d!427830 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) lt!504699))) (list!6077 (c!240746 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) lt!504699)))))))

(declare-fun bs!344191 () Bool)

(assert (= bs!344191 d!427830))

(declare-fun m!1697007 () Bool)

(assert (=> bs!344191 m!1697007))

(assert (=> d!427664 d!427830))

(declare-fun d!427832 () Bool)

(declare-fun e!932271 () Bool)

(assert (=> d!427832 e!932271))

(declare-fun res!661365 () Bool)

(assert (=> d!427832 (=> (not res!661365) (not e!932271))))

(assert (=> d!427832 (= res!661365 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 (list!6073 (tokens!2100 other!32))))))) (list!6073 (tokens!2100 other!32))))))

(declare-fun lt!505375 () Unit!24235)

(declare-fun e!932272 () Unit!24235)

(assert (=> d!427832 (= lt!505375 e!932272)))

(declare-fun c!240807 () Bool)

(assert (=> d!427832 (= c!240807 (or ((_ is Nil!15174) (list!6073 (tokens!2100 other!32))) ((_ is Nil!15174) (t!134383 (list!6073 (tokens!2100 other!32))))))))

(assert (=> d!427832 (not (isEmpty!9528 (rules!11668 other!32)))))

(assert (=> d!427832 (= (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 other!32) (list!6073 (tokens!2100 other!32))) lt!505375)))

(declare-fun b!1461344 () Bool)

(declare-fun Unit!24337 () Unit!24235)

(assert (=> b!1461344 (= e!932272 Unit!24337)))

(declare-fun b!1461345 () Bool)

(declare-fun Unit!24338 () Unit!24235)

(assert (=> b!1461345 (= e!932272 Unit!24338)))

(declare-fun lt!505361 () BalanceConc!10284)

(assert (=> b!1461345 (= lt!505361 (print!1103 Lexer!2327 (seqFromList!1712 (list!6073 (tokens!2100 other!32)))))))

(declare-fun lt!505367 () BalanceConc!10284)

(assert (=> b!1461345 (= lt!505367 (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 (list!6073 (tokens!2100 other!32))))))))

(declare-fun lt!505363 () tuple2!14244)

(assert (=> b!1461345 (= lt!505363 (lex!1074 Lexer!2327 (rules!11668 other!32) lt!505367))))

(declare-fun lt!505368 () List!15238)

(assert (=> b!1461345 (= lt!505368 (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 other!32))))))))

(declare-fun lt!505366 () List!15238)

(assert (=> b!1461345 (= lt!505366 (list!6075 lt!505367))))

(declare-fun lt!505379 () Unit!24235)

(assert (=> b!1461345 (= lt!505379 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!505368 lt!505366))))

(assert (=> b!1461345 (isPrefix!1203 lt!505368 (++!4081 lt!505368 lt!505366))))

(declare-fun lt!505384 () Unit!24235)

(assert (=> b!1461345 (= lt!505384 lt!505379)))

(declare-fun lt!505370 () Unit!24235)

(assert (=> b!1461345 (= lt!505370 (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 other!32) (t!134383 (list!6073 (tokens!2100 other!32)))))))

(declare-fun lt!505377 () Unit!24235)

(assert (=> b!1461345 (= lt!505377 (seqFromListBHdTlConstructive!95 (h!20575 (t!134383 (list!6073 (tokens!2100 other!32)))) (t!134383 (t!134383 (list!6073 (tokens!2100 other!32)))) (_1!8008 lt!505363)))))

(assert (=> b!1461345 (= (list!6073 (_1!8008 lt!505363)) (list!6073 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 (list!6073 (tokens!2100 other!32))))) (h!20575 (t!134383 (list!6073 (tokens!2100 other!32)))))))))

(declare-fun lt!505381 () Unit!24235)

(assert (=> b!1461345 (= lt!505381 lt!505377)))

(declare-fun lt!505373 () Option!2875)

(assert (=> b!1461345 (= lt!505373 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 lt!505361)))))

(assert (=> b!1461345 (= (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 (list!6073 (tokens!2100 other!32))))) (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 (list!6073 (tokens!2100 other!32)))) 0 (BalanceConc!10285 Empty!5172)))))

(declare-fun lt!505374 () Unit!24235)

(declare-fun Unit!24339 () Unit!24235)

(assert (=> b!1461345 (= lt!505374 Unit!24339)))

(declare-fun lt!505365 () Unit!24235)

(assert (=> b!1461345 (= lt!505365 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!239 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 other!32))))) (list!6075 lt!505367)))))

(assert (=> b!1461345 (= (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 other!32))))) (originalCharacters!3535 (h!20575 (list!6073 (tokens!2100 other!32)))))))

(declare-fun lt!505369 () Unit!24235)

(declare-fun Unit!24340 () Unit!24235)

(assert (=> b!1461345 (= lt!505369 Unit!24340)))

(assert (=> b!1461345 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (list!6073 (tokens!2100 other!32))))) 0))) (Cons!15172 (head!3008 (originalCharacters!3535 (h!20575 (t!134383 (list!6073 (tokens!2100 other!32)))))) Nil!15172))))

(declare-fun lt!505371 () Unit!24235)

(declare-fun Unit!24341 () Unit!24235)

(assert (=> b!1461345 (= lt!505371 Unit!24341)))

(assert (=> b!1461345 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (list!6073 (tokens!2100 other!32))))) 0))) (Cons!15172 (head!3008 (list!6075 lt!505367)) Nil!15172))))

(declare-fun lt!505382 () Unit!24235)

(declare-fun Unit!24342 () Unit!24235)

(assert (=> b!1461345 (= lt!505382 Unit!24342)))

(assert (=> b!1461345 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (list!6073 (tokens!2100 other!32))))) 0))) (Cons!15172 (head!3009 lt!505367) Nil!15172))))

(declare-fun lt!505364 () Unit!24235)

(declare-fun Unit!24343 () Unit!24235)

(assert (=> b!1461345 (= lt!505364 Unit!24343)))

(assert (=> b!1461345 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (originalCharacters!3535 (h!20575 (list!6073 (tokens!2100 other!32))))))))

(declare-fun lt!505376 () Unit!24235)

(declare-fun Unit!24344 () Unit!24235)

(assert (=> b!1461345 (= lt!505376 Unit!24344)))

(assert (=> b!1461345 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 other!32)))))))))

(declare-fun lt!505383 () Unit!24235)

(declare-fun Unit!24345 () Unit!24235)

(assert (=> b!1461345 (= lt!505383 Unit!24345)))

(declare-fun lt!505378 () Unit!24235)

(declare-fun Unit!24346 () Unit!24235)

(assert (=> b!1461345 (= lt!505378 Unit!24346)))

(assert (=> b!1461345 (= (_1!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 other!32)))))))) (h!20575 (list!6073 (tokens!2100 other!32))))))

(declare-fun lt!505372 () Unit!24235)

(declare-fun Unit!24347 () Unit!24235)

(assert (=> b!1461345 (= lt!505372 Unit!24347)))

(assert (=> b!1461345 (isEmpty!9527 (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 other!32)))))))))))

(declare-fun lt!505386 () Unit!24235)

(declare-fun Unit!24348 () Unit!24235)

(assert (=> b!1461345 (= lt!505386 Unit!24348)))

(assert (=> b!1461345 (matchR!1829 (regex!2673 (rule!4446 (h!20575 (list!6073 (tokens!2100 other!32))))) (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 other!32))))))))

(declare-fun lt!505362 () Unit!24235)

(declare-fun Unit!24349 () Unit!24235)

(assert (=> b!1461345 (= lt!505362 Unit!24349)))

(assert (=> b!1461345 (= (rule!4446 (h!20575 (list!6073 (tokens!2100 other!32)))) (rule!4446 (h!20575 (list!6073 (tokens!2100 other!32)))))))

(declare-fun lt!505380 () Unit!24235)

(declare-fun Unit!24350 () Unit!24235)

(assert (=> b!1461345 (= lt!505380 Unit!24350)))

(declare-fun lt!505385 () Unit!24235)

(assert (=> b!1461345 (= lt!505385 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!37 Lexer!2327 (rules!11668 other!32) (h!20575 (list!6073 (tokens!2100 other!32))) (rule!4446 (h!20575 (list!6073 (tokens!2100 other!32)))) (list!6075 lt!505367)))))

(declare-fun b!1461346 () Bool)

(assert (=> b!1461346 (= e!932271 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 (list!6073 (tokens!2100 other!32))))))))))

(assert (= (and d!427832 c!240807) b!1461344))

(assert (= (and d!427832 (not c!240807)) b!1461345))

(assert (= (and d!427832 res!661365) b!1461346))

(declare-fun m!1697047 () Bool)

(assert (=> d!427832 m!1697047))

(declare-fun m!1697051 () Bool)

(assert (=> d!427832 m!1697051))

(assert (=> d!427832 m!1696191))

(declare-fun m!1697055 () Bool)

(assert (=> d!427832 m!1697055))

(assert (=> d!427832 m!1695651))

(assert (=> d!427832 m!1697047))

(assert (=> d!427832 m!1697051))

(declare-fun m!1697059 () Bool)

(assert (=> d!427832 m!1697059))

(declare-fun m!1697063 () Bool)

(assert (=> b!1461345 m!1697063))

(declare-fun m!1697065 () Bool)

(assert (=> b!1461345 m!1697065))

(declare-fun m!1697071 () Bool)

(assert (=> b!1461345 m!1697071))

(declare-fun m!1697073 () Bool)

(assert (=> b!1461345 m!1697073))

(declare-fun m!1697077 () Bool)

(assert (=> b!1461345 m!1697077))

(declare-fun m!1697080 () Bool)

(assert (=> b!1461345 m!1697080))

(declare-fun m!1697085 () Bool)

(assert (=> b!1461345 m!1697085))

(declare-fun m!1697087 () Bool)

(assert (=> b!1461345 m!1697087))

(assert (=> b!1461345 m!1697077))

(declare-fun m!1697093 () Bool)

(assert (=> b!1461345 m!1697093))

(assert (=> b!1461345 m!1697071))

(assert (=> b!1461345 m!1697087))

(declare-fun m!1697097 () Bool)

(assert (=> b!1461345 m!1697097))

(assert (=> b!1461345 m!1697080))

(declare-fun m!1697101 () Bool)

(assert (=> b!1461345 m!1697101))

(declare-fun m!1697109 () Bool)

(assert (=> b!1461345 m!1697109))

(declare-fun m!1697111 () Bool)

(assert (=> b!1461345 m!1697111))

(assert (=> b!1461345 m!1697047))

(assert (=> b!1461345 m!1697051))

(declare-fun m!1697115 () Bool)

(assert (=> b!1461345 m!1697115))

(assert (=> b!1461345 m!1697109))

(declare-fun m!1697119 () Bool)

(assert (=> b!1461345 m!1697119))

(declare-fun m!1697121 () Bool)

(assert (=> b!1461345 m!1697121))

(declare-fun m!1697123 () Bool)

(assert (=> b!1461345 m!1697123))

(declare-fun m!1697127 () Bool)

(assert (=> b!1461345 m!1697127))

(declare-fun m!1697129 () Bool)

(assert (=> b!1461345 m!1697129))

(assert (=> b!1461345 m!1697119))

(declare-fun m!1697131 () Bool)

(assert (=> b!1461345 m!1697131))

(declare-fun m!1697135 () Bool)

(assert (=> b!1461345 m!1697135))

(declare-fun m!1697137 () Bool)

(assert (=> b!1461345 m!1697137))

(assert (=> b!1461345 m!1697135))

(declare-fun m!1697141 () Bool)

(assert (=> b!1461345 m!1697141))

(declare-fun m!1697143 () Bool)

(assert (=> b!1461345 m!1697143))

(assert (=> b!1461345 m!1697109))

(assert (=> b!1461345 m!1697127))

(declare-fun m!1697145 () Bool)

(assert (=> b!1461345 m!1697145))

(declare-fun m!1697147 () Bool)

(assert (=> b!1461345 m!1697147))

(assert (=> b!1461345 m!1697127))

(declare-fun m!1697151 () Bool)

(assert (=> b!1461345 m!1697151))

(declare-fun m!1697153 () Bool)

(assert (=> b!1461345 m!1697153))

(assert (=> b!1461345 m!1697119))

(assert (=> b!1461345 m!1697063))

(assert (=> b!1461345 m!1697071))

(declare-fun m!1697155 () Bool)

(assert (=> b!1461345 m!1697155))

(assert (=> b!1461345 m!1697153))

(declare-fun m!1697157 () Bool)

(assert (=> b!1461345 m!1697157))

(assert (=> b!1461345 m!1695651))

(assert (=> b!1461345 m!1697047))

(declare-fun m!1697159 () Bool)

(assert (=> b!1461345 m!1697159))

(declare-fun m!1697161 () Bool)

(assert (=> b!1461345 m!1697161))

(assert (=> b!1461345 m!1697085))

(assert (=> b!1461345 m!1697065))

(declare-fun m!1697163 () Bool)

(assert (=> b!1461345 m!1697163))

(assert (=> b!1461345 m!1697163))

(declare-fun m!1697165 () Bool)

(assert (=> b!1461345 m!1697165))

(declare-fun m!1697167 () Bool)

(assert (=> b!1461345 m!1697167))

(assert (=> b!1461345 m!1697161))

(assert (=> b!1461345 m!1697109))

(assert (=> b!1461345 m!1697119))

(declare-fun m!1697169 () Bool)

(assert (=> b!1461345 m!1697169))

(assert (=> b!1461346 m!1695651))

(assert (=> b!1461346 m!1697047))

(assert (=> b!1461346 m!1697047))

(assert (=> b!1461346 m!1697051))

(assert (=> b!1461346 m!1697051))

(assert (=> b!1461346 m!1697059))

(declare-fun m!1697181 () Bool)

(assert (=> b!1461346 m!1697181))

(assert (=> d!427664 d!427832))

(assert (=> d!427664 d!427702))

(declare-fun d!427836 () Bool)

(assert (=> d!427836 (= (head!3012 (list!6073 (tokens!2100 other!32))) (h!20575 (list!6073 (tokens!2100 other!32))))))

(assert (=> d!427722 d!427836))

(assert (=> d!427722 d!427720))

(declare-fun d!427842 () Bool)

(declare-fun lt!505390 () Token!5008)

(assert (=> d!427842 (= lt!505390 (head!3012 (list!6077 (c!240746 (tokens!2100 other!32)))))))

(declare-fun e!932278 () Token!5008)

(assert (=> d!427842 (= lt!505390 e!932278)))

(declare-fun c!240811 () Bool)

(assert (=> d!427842 (= c!240811 ((_ is Leaf!7711) (c!240746 (tokens!2100 other!32))))))

(assert (=> d!427842 (isBalanced!1550 (c!240746 (tokens!2100 other!32)))))

(assert (=> d!427842 (= (head!3013 (c!240746 (tokens!2100 other!32))) lt!505390)))

(declare-fun b!1461356 () Bool)

(declare-fun apply!3956 (IArray!10351 Int) Token!5008)

(assert (=> b!1461356 (= e!932278 (apply!3956 (xs!7920 (c!240746 (tokens!2100 other!32))) 0))))

(declare-fun b!1461357 () Bool)

(assert (=> b!1461357 (= e!932278 (head!3013 (left!12896 (c!240746 (tokens!2100 other!32)))))))

(assert (= (and d!427842 c!240811) b!1461356))

(assert (= (and d!427842 (not c!240811)) b!1461357))

(assert (=> d!427842 m!1696309))

(assert (=> d!427842 m!1696309))

(declare-fun m!1697197 () Bool)

(assert (=> d!427842 m!1697197))

(assert (=> d!427842 m!1695761))

(declare-fun m!1697199 () Bool)

(assert (=> b!1461356 m!1697199))

(declare-fun m!1697201 () Bool)

(assert (=> b!1461357 m!1697201))

(assert (=> d!427722 d!427842))

(assert (=> d!427722 d!427640))

(declare-fun d!427846 () Bool)

(assert (=> d!427846 (= (isEmpty!9528 (rules!11668 other!32)) ((_ is Nil!15175) (rules!11668 other!32)))))

(assert (=> d!427780 d!427846))

(declare-fun d!427848 () Bool)

(declare-fun res!661370 () Bool)

(declare-fun e!932280 () Bool)

(assert (=> d!427848 (=> res!661370 e!932280)))

(assert (=> d!427848 (= res!661370 (or (not ((_ is Cons!15174) (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))))) (not ((_ is Cons!15174) (t!134383 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))))))))))

(assert (=> d!427848 (= (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))) (rules!11668 thiss!10022)) e!932280)))

(declare-fun b!1461358 () Bool)

(declare-fun e!932279 () Bool)

(assert (=> b!1461358 (= e!932280 e!932279)))

(declare-fun res!661369 () Bool)

(assert (=> b!1461358 (=> (not res!661369) (not e!932279))))

(assert (=> b!1461358 (= res!661369 (separableTokensPredicate!538 Lexer!2327 (h!20575 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655)))) (h!20575 (t!134383 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))))) (rules!11668 thiss!10022)))))

(declare-fun lt!505394 () Unit!24235)

(declare-fun Unit!24351 () Unit!24235)

(assert (=> b!1461358 (= lt!505394 Unit!24351)))

(assert (=> b!1461358 (> (size!12415 (charsOf!1536 (h!20575 (t!134383 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))))))) 0)))

(declare-fun lt!505393 () Unit!24235)

(declare-fun Unit!24352 () Unit!24235)

(assert (=> b!1461358 (= lt!505393 Unit!24352)))

(assert (=> b!1461358 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))))))))

(declare-fun lt!505392 () Unit!24235)

(declare-fun Unit!24353 () Unit!24235)

(assert (=> b!1461358 (= lt!505392 Unit!24353)))

(assert (=> b!1461358 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655)))))))

(declare-fun lt!505396 () Unit!24235)

(declare-fun lt!505397 () Unit!24235)

(assert (=> b!1461358 (= lt!505396 lt!505397)))

(assert (=> b!1461358 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))))))))

(assert (=> b!1461358 (= lt!505397 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))) (h!20575 (t!134383 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655)))))))))

(declare-fun lt!505395 () Unit!24235)

(declare-fun lt!505391 () Unit!24235)

(assert (=> b!1461358 (= lt!505395 lt!505391)))

(assert (=> b!1461358 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655)))))))

(assert (=> b!1461358 (= lt!505391 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))) (h!20575 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))))))))

(declare-fun b!1461359 () Bool)

(assert (=> b!1461359 (= e!932279 (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 (Cons!15174 (h!20575 (t!134383 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655))))) (t!134383 (t!134383 (Cons!15174 (h!20575 (t!134383 lt!504655)) (t!134383 (t!134383 lt!504655)))))) (rules!11668 thiss!10022)))))

(assert (= (and d!427848 (not res!661370)) b!1461358))

(assert (= (and b!1461358 res!661369) b!1461359))

(declare-fun m!1697203 () Bool)

(assert (=> b!1461358 m!1697203))

(declare-fun m!1697205 () Bool)

(assert (=> b!1461358 m!1697205))

(declare-fun m!1697207 () Bool)

(assert (=> b!1461358 m!1697207))

(declare-fun m!1697209 () Bool)

(assert (=> b!1461358 m!1697209))

(declare-fun m!1697211 () Bool)

(assert (=> b!1461358 m!1697211))

(declare-fun m!1697213 () Bool)

(assert (=> b!1461358 m!1697213))

(assert (=> b!1461358 m!1697207))

(declare-fun m!1697215 () Bool)

(assert (=> b!1461358 m!1697215))

(declare-fun m!1697217 () Bool)

(assert (=> b!1461359 m!1697217))

(assert (=> b!1461224 d!427848))

(declare-fun d!427850 () Bool)

(declare-fun c!240812 () Bool)

(assert (=> d!427850 (= c!240812 ((_ is Node!5173) (left!12896 (c!240746 (tokens!2100 other!32)))))))

(declare-fun e!932281 () Bool)

(assert (=> d!427850 (= (inv!20275 (left!12896 (c!240746 (tokens!2100 other!32)))) e!932281)))

(declare-fun b!1461360 () Bool)

(assert (=> b!1461360 (= e!932281 (inv!20280 (left!12896 (c!240746 (tokens!2100 other!32)))))))

(declare-fun b!1461361 () Bool)

(declare-fun e!932282 () Bool)

(assert (=> b!1461361 (= e!932281 e!932282)))

(declare-fun res!661371 () Bool)

(assert (=> b!1461361 (= res!661371 (not ((_ is Leaf!7711) (left!12896 (c!240746 (tokens!2100 other!32))))))))

(assert (=> b!1461361 (=> res!661371 e!932282)))

(declare-fun b!1461362 () Bool)

(assert (=> b!1461362 (= e!932282 (inv!20281 (left!12896 (c!240746 (tokens!2100 other!32)))))))

(assert (= (and d!427850 c!240812) b!1461360))

(assert (= (and d!427850 (not c!240812)) b!1461361))

(assert (= (and b!1461361 (not res!661371)) b!1461362))

(declare-fun m!1697219 () Bool)

(assert (=> b!1461360 m!1697219))

(declare-fun m!1697221 () Bool)

(assert (=> b!1461362 m!1697221))

(assert (=> b!1461233 d!427850))

(declare-fun d!427852 () Bool)

(declare-fun c!240813 () Bool)

(assert (=> d!427852 (= c!240813 ((_ is Node!5173) (right!13226 (c!240746 (tokens!2100 other!32)))))))

(declare-fun e!932283 () Bool)

(assert (=> d!427852 (= (inv!20275 (right!13226 (c!240746 (tokens!2100 other!32)))) e!932283)))

(declare-fun b!1461363 () Bool)

(assert (=> b!1461363 (= e!932283 (inv!20280 (right!13226 (c!240746 (tokens!2100 other!32)))))))

(declare-fun b!1461364 () Bool)

(declare-fun e!932284 () Bool)

(assert (=> b!1461364 (= e!932283 e!932284)))

(declare-fun res!661372 () Bool)

(assert (=> b!1461364 (= res!661372 (not ((_ is Leaf!7711) (right!13226 (c!240746 (tokens!2100 other!32))))))))

(assert (=> b!1461364 (=> res!661372 e!932284)))

(declare-fun b!1461365 () Bool)

(assert (=> b!1461365 (= e!932284 (inv!20281 (right!13226 (c!240746 (tokens!2100 other!32)))))))

(assert (= (and d!427852 c!240813) b!1461363))

(assert (= (and d!427852 (not c!240813)) b!1461364))

(assert (= (and b!1461364 (not res!661372)) b!1461365))

(declare-fun m!1697223 () Bool)

(assert (=> b!1461363 m!1697223))

(declare-fun m!1697225 () Bool)

(assert (=> b!1461365 m!1697225))

(assert (=> b!1461233 d!427852))

(declare-fun d!427854 () Bool)

(declare-fun res!661375 () Bool)

(declare-fun e!932287 () Bool)

(assert (=> d!427854 (=> (not res!661375) (not e!932287))))

(declare-fun rulesValid!990 (LexerInterface!2329 List!15241) Bool)

(assert (=> d!427854 (= res!661375 (rulesValid!990 Lexer!2327 (rules!11668 thiss!10022)))))

(assert (=> d!427854 (= (rulesInvariant!2162 Lexer!2327 (rules!11668 thiss!10022)) e!932287)))

(declare-fun b!1461368 () Bool)

(declare-datatypes ((List!15245 0))(
  ( (Nil!15179) (Cons!15179 (h!20580 String!18071) (t!134638 List!15245)) )
))
(declare-fun noDuplicateTag!990 (LexerInterface!2329 List!15241 List!15245) Bool)

(assert (=> b!1461368 (= e!932287 (noDuplicateTag!990 Lexer!2327 (rules!11668 thiss!10022) Nil!15179))))

(assert (= (and d!427854 res!661375) b!1461368))

(declare-fun m!1697227 () Bool)

(assert (=> d!427854 m!1697227))

(declare-fun m!1697229 () Bool)

(assert (=> b!1461368 m!1697229))

(assert (=> b!1461072 d!427854))

(declare-fun d!427856 () Bool)

(declare-fun lt!505400 () Token!5008)

(declare-fun contains!2906 (List!15240 Token!5008) Bool)

(assert (=> d!427856 (contains!2906 (list!6073 (tokens!2100 thiss!10022)) lt!505400)))

(declare-fun e!932290 () Token!5008)

(assert (=> d!427856 (= lt!505400 e!932290)))

(declare-fun c!240816 () Bool)

(assert (=> d!427856 (= c!240816 (and ((_ is Cons!15174) (list!6073 (tokens!2100 thiss!10022))) ((_ is Nil!15174) (t!134383 (list!6073 (tokens!2100 thiss!10022))))))))

(assert (=> d!427856 (not (isEmpty!9525 (list!6073 (tokens!2100 thiss!10022))))))

(assert (=> d!427856 (= (last!280 (list!6073 (tokens!2100 thiss!10022))) lt!505400)))

(declare-fun b!1461373 () Bool)

(assert (=> b!1461373 (= e!932290 (h!20575 (list!6073 (tokens!2100 thiss!10022))))))

(declare-fun b!1461374 () Bool)

(assert (=> b!1461374 (= e!932290 (last!280 (t!134383 (list!6073 (tokens!2100 thiss!10022)))))))

(assert (= (and d!427856 c!240816) b!1461373))

(assert (= (and d!427856 (not c!240816)) b!1461374))

(assert (=> d!427856 m!1695647))

(declare-fun m!1697231 () Bool)

(assert (=> d!427856 m!1697231))

(assert (=> d!427856 m!1695647))

(assert (=> d!427856 m!1696683))

(declare-fun m!1697233 () Bool)

(assert (=> b!1461374 m!1697233))

(assert (=> d!427724 d!427856))

(assert (=> d!427724 d!427726))

(declare-fun b!1461385 () Bool)

(declare-fun e!932299 () Token!5008)

(declare-fun last!282 (IArray!10351) Token!5008)

(assert (=> b!1461385 (= e!932299 (last!282 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))

(declare-fun d!427858 () Bool)

(declare-fun lt!505414 () Token!5008)

(assert (=> d!427858 (= lt!505414 (last!280 (list!6077 (c!240746 (tokens!2100 thiss!10022)))))))

(assert (=> d!427858 (= lt!505414 e!932299)))

(declare-fun c!240819 () Bool)

(assert (=> d!427858 (= c!240819 ((_ is Leaf!7711) (c!240746 (tokens!2100 thiss!10022))))))

(assert (=> d!427858 (isBalanced!1550 (c!240746 (tokens!2100 thiss!10022)))))

(assert (=> d!427858 (= (last!281 (c!240746 (tokens!2100 thiss!10022))) lt!505414)))

(declare-fun b!1461386 () Bool)

(assert (=> b!1461386 (= e!932299 (last!281 (right!13226 (c!240746 (tokens!2100 thiss!10022)))))))

(declare-fun lt!505413 () List!15240)

(assert (=> b!1461386 (= lt!505413 (list!6077 (left!12896 (c!240746 (tokens!2100 thiss!10022)))))))

(declare-fun lt!505411 () List!15240)

(assert (=> b!1461386 (= lt!505411 (list!6077 (right!13226 (c!240746 (tokens!2100 thiss!10022)))))))

(declare-fun lt!505412 () Unit!24235)

(declare-fun lemmaLastOfConcatIsLastOfRhs!19 (List!15240 List!15240) Unit!24235)

(assert (=> b!1461386 (= lt!505412 (lemmaLastOfConcatIsLastOfRhs!19 lt!505413 lt!505411))))

(declare-fun res!661384 () Bool)

(assert (=> b!1461386 (= res!661384 (isEmpty!9525 lt!505411))))

(declare-fun e!932301 () Bool)

(assert (=> b!1461386 (=> (not res!661384) (not e!932301))))

(declare-fun res!661382 () Bool)

(assert (=> b!1461386 (= res!661382 e!932301)))

(declare-fun e!932302 () Bool)

(assert (=> b!1461386 (=> res!661382 e!932302)))

(assert (=> b!1461386 e!932302))

(declare-fun lt!505415 () Unit!24235)

(assert (=> b!1461386 (= lt!505415 lt!505412)))

(declare-fun b!1461387 () Bool)

(declare-fun e!932300 () Bool)

(assert (=> b!1461387 (= e!932300 (= (last!280 (++!4080 lt!505413 lt!505411)) (last!280 lt!505411)))))

(declare-fun b!1461388 () Bool)

(assert (=> b!1461388 (= e!932301 (= (last!280 (++!4080 lt!505413 lt!505411)) (last!280 lt!505413)))))

(declare-fun b!1461389 () Bool)

(declare-fun res!661383 () Bool)

(assert (=> b!1461389 (= res!661383 (not (isEmpty!9525 lt!505411)))))

(assert (=> b!1461389 (=> (not res!661383) (not e!932300))))

(assert (=> b!1461389 (= e!932302 e!932300)))

(assert (= (and d!427858 c!240819) b!1461385))

(assert (= (and d!427858 (not c!240819)) b!1461386))

(assert (= (and b!1461386 res!661384) b!1461388))

(assert (= (and b!1461386 (not res!661382)) b!1461389))

(assert (= (and b!1461389 res!661383) b!1461387))

(declare-fun m!1697235 () Bool)

(assert (=> b!1461387 m!1697235))

(assert (=> b!1461387 m!1697235))

(declare-fun m!1697237 () Bool)

(assert (=> b!1461387 m!1697237))

(declare-fun m!1697239 () Bool)

(assert (=> b!1461387 m!1697239))

(declare-fun m!1697241 () Bool)

(assert (=> b!1461389 m!1697241))

(assert (=> b!1461388 m!1697235))

(assert (=> b!1461388 m!1697235))

(assert (=> b!1461388 m!1697237))

(declare-fun m!1697243 () Bool)

(assert (=> b!1461388 m!1697243))

(assert (=> d!427858 m!1696319))

(assert (=> d!427858 m!1696319))

(declare-fun m!1697245 () Bool)

(assert (=> d!427858 m!1697245))

(assert (=> d!427858 m!1696291))

(declare-fun m!1697247 () Bool)

(assert (=> b!1461386 m!1697247))

(assert (=> b!1461386 m!1697241))

(declare-fun m!1697249 () Bool)

(assert (=> b!1461386 m!1697249))

(declare-fun m!1697251 () Bool)

(assert (=> b!1461386 m!1697251))

(declare-fun m!1697253 () Bool)

(assert (=> b!1461386 m!1697253))

(declare-fun m!1697255 () Bool)

(assert (=> b!1461385 m!1697255))

(assert (=> d!427724 d!427858))

(assert (=> d!427724 d!427782))

(declare-fun b!1461398 () Bool)

(declare-fun e!932307 () List!15240)

(assert (=> b!1461398 (= e!932307 Nil!15174)))

(declare-fun b!1461401 () Bool)

(declare-fun e!932308 () List!15240)

(assert (=> b!1461401 (= e!932308 (++!4080 (list!6077 (left!12896 (c!240746 (tokens!2100 other!32)))) (list!6077 (right!13226 (c!240746 (tokens!2100 other!32))))))))

(declare-fun b!1461400 () Bool)

(declare-fun list!6079 (IArray!10351) List!15240)

(assert (=> b!1461400 (= e!932308 (list!6079 (xs!7920 (c!240746 (tokens!2100 other!32)))))))

(declare-fun d!427860 () Bool)

(declare-fun c!240824 () Bool)

(assert (=> d!427860 (= c!240824 ((_ is Empty!5173) (c!240746 (tokens!2100 other!32))))))

(assert (=> d!427860 (= (list!6077 (c!240746 (tokens!2100 other!32))) e!932307)))

(declare-fun b!1461399 () Bool)

(assert (=> b!1461399 (= e!932307 e!932308)))

(declare-fun c!240825 () Bool)

(assert (=> b!1461399 (= c!240825 ((_ is Leaf!7711) (c!240746 (tokens!2100 other!32))))))

(assert (= (and d!427860 c!240824) b!1461398))

(assert (= (and d!427860 (not c!240824)) b!1461399))

(assert (= (and b!1461399 c!240825) b!1461400))

(assert (= (and b!1461399 (not c!240825)) b!1461401))

(declare-fun m!1697257 () Bool)

(assert (=> b!1461401 m!1697257))

(declare-fun m!1697259 () Bool)

(assert (=> b!1461401 m!1697259))

(assert (=> b!1461401 m!1697257))

(assert (=> b!1461401 m!1697259))

(declare-fun m!1697261 () Bool)

(assert (=> b!1461401 m!1697261))

(declare-fun m!1697263 () Bool)

(assert (=> b!1461400 m!1697263))

(assert (=> d!427720 d!427860))

(declare-fun d!427862 () Bool)

(declare-fun lt!505418 () Int)

(assert (=> d!427862 (>= lt!505418 0)))

(declare-fun e!932311 () Int)

(assert (=> d!427862 (= lt!505418 e!932311)))

(declare-fun c!240828 () Bool)

(assert (=> d!427862 (= c!240828 ((_ is Nil!15174) lt!505086))))

(assert (=> d!427862 (= (size!12414 lt!505086) lt!505418)))

(declare-fun b!1461406 () Bool)

(assert (=> b!1461406 (= e!932311 0)))

(declare-fun b!1461407 () Bool)

(assert (=> b!1461407 (= e!932311 (+ 1 (size!12414 (t!134383 lt!505086))))))

(assert (= (and d!427862 c!240828) b!1461406))

(assert (= (and d!427862 (not c!240828)) b!1461407))

(declare-fun m!1697265 () Bool)

(assert (=> b!1461407 m!1697265))

(assert (=> b!1461123 d!427862))

(declare-fun d!427864 () Bool)

(assert (=> d!427864 (= (isEmpty!9525 (list!6073 (tokens!2100 other!32))) ((_ is Nil!15174) (list!6073 (tokens!2100 other!32))))))

(assert (=> d!427640 d!427864))

(assert (=> d!427640 d!427720))

(declare-fun d!427866 () Bool)

(declare-fun lt!505421 () Bool)

(assert (=> d!427866 (= lt!505421 (isEmpty!9525 (list!6077 (c!240746 (tokens!2100 other!32)))))))

(declare-fun size!12417 (Conc!5173) Int)

(assert (=> d!427866 (= lt!505421 (= (size!12417 (c!240746 (tokens!2100 other!32))) 0))))

(assert (=> d!427866 (= (isEmpty!9526 (c!240746 (tokens!2100 other!32))) lt!505421)))

(declare-fun bs!344194 () Bool)

(assert (= bs!344194 d!427866))

(assert (=> bs!344194 m!1696309))

(assert (=> bs!344194 m!1696309))

(declare-fun m!1697267 () Bool)

(assert (=> bs!344194 m!1697267))

(declare-fun m!1697269 () Bool)

(assert (=> bs!344194 m!1697269))

(assert (=> d!427640 d!427866))

(declare-fun b!1461426 () Bool)

(declare-fun e!932333 () Bool)

(declare-fun e!932336 () Bool)

(assert (=> b!1461426 (= e!932333 e!932336)))

(declare-fun res!661407 () Bool)

(assert (=> b!1461426 (=> res!661407 e!932336)))

(assert (=> b!1461426 (= res!661407 (not ((_ is Node!5173) (right!13226 (c!240746 (tokens!2100 thiss!10022))))))))

(declare-fun b!1461427 () Bool)

(declare-fun e!932335 () Bool)

(declare-fun e!932334 () Bool)

(assert (=> b!1461427 (= e!932335 e!932334)))

(declare-fun res!661403 () Bool)

(assert (=> b!1461427 (=> (not res!661403) (not e!932334))))

(declare-fun appendAssoc!75 (List!15240 List!15240 List!15240) Bool)

(assert (=> b!1461427 (= res!661403 (appendAssoc!75 (list!6077 (c!240746 (tokens!2100 thiss!10022))) (list!6077 (left!12896 (c!240746 (tokens!2100 other!32)))) (list!6077 (right!13226 (c!240746 (tokens!2100 other!32))))))))

(declare-fun b!1461428 () Bool)

(declare-fun e!932330 () Bool)

(declare-fun e!932337 () Bool)

(assert (=> b!1461428 (= e!932330 e!932337)))

(declare-fun res!661406 () Bool)

(assert (=> b!1461428 (=> (not res!661406) (not e!932337))))

(assert (=> b!1461428 (= res!661406 (appendAssoc!75 (list!6077 (c!240746 (tokens!2100 thiss!10022))) (list!6077 (left!12896 (left!12896 (c!240746 (tokens!2100 other!32))))) (list!6077 (right!13226 (left!12896 (c!240746 (tokens!2100 other!32)))))))))

(declare-fun b!1461429 () Bool)

(assert (=> b!1461429 (= e!932337 (appendAssoc!75 (++!4080 (list!6077 (c!240746 (tokens!2100 thiss!10022))) (list!6077 (left!12896 (left!12896 (c!240746 (tokens!2100 other!32)))))) (list!6077 (right!13226 (left!12896 (c!240746 (tokens!2100 other!32))))) (list!6077 (right!13226 (c!240746 (tokens!2100 other!32))))))))

(declare-fun d!427868 () Bool)

(declare-fun e!932338 () Bool)

(assert (=> d!427868 e!932338))

(declare-fun res!661408 () Bool)

(assert (=> d!427868 (=> (not res!661408) (not e!932338))))

(declare-fun e!932332 () Bool)

(assert (=> d!427868 (= res!661408 e!932332)))

(declare-fun res!661411 () Bool)

(assert (=> d!427868 (=> res!661411 e!932332)))

(assert (=> d!427868 (= res!661411 (not ((_ is Node!5173) (c!240746 (tokens!2100 thiss!10022)))))))

(assert (=> d!427868 (= (appendAssocInst!333 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32))) true)))

(declare-fun b!1461430 () Bool)

(assert (=> b!1461430 (= e!932332 e!932333)))

(declare-fun res!661410 () Bool)

(assert (=> b!1461430 (=> (not res!661410) (not e!932333))))

(assert (=> b!1461430 (= res!661410 (appendAssoc!75 (list!6077 (left!12896 (c!240746 (tokens!2100 thiss!10022)))) (list!6077 (right!13226 (c!240746 (tokens!2100 thiss!10022)))) (list!6077 (c!240746 (tokens!2100 other!32)))))))

(declare-fun b!1461431 () Bool)

(declare-fun e!932331 () Bool)

(assert (=> b!1461431 (= e!932336 e!932331)))

(declare-fun res!661404 () Bool)

(assert (=> b!1461431 (=> (not res!661404) (not e!932331))))

(assert (=> b!1461431 (= res!661404 (appendAssoc!75 (list!6077 (left!12896 (right!13226 (c!240746 (tokens!2100 thiss!10022))))) (list!6077 (right!13226 (right!13226 (c!240746 (tokens!2100 thiss!10022))))) (list!6077 (c!240746 (tokens!2100 other!32)))))))

(declare-fun b!1461432 () Bool)

(assert (=> b!1461432 (= e!932331 (appendAssoc!75 (list!6077 (left!12896 (c!240746 (tokens!2100 thiss!10022)))) (list!6077 (left!12896 (right!13226 (c!240746 (tokens!2100 thiss!10022))))) (++!4080 (list!6077 (right!13226 (right!13226 (c!240746 (tokens!2100 thiss!10022))))) (list!6077 (c!240746 (tokens!2100 other!32))))))))

(declare-fun b!1461433 () Bool)

(assert (=> b!1461433 (= e!932338 e!932335)))

(declare-fun res!661405 () Bool)

(assert (=> b!1461433 (=> res!661405 e!932335)))

(assert (=> b!1461433 (= res!661405 (not ((_ is Node!5173) (c!240746 (tokens!2100 other!32)))))))

(declare-fun b!1461434 () Bool)

(assert (=> b!1461434 (= e!932334 e!932330)))

(declare-fun res!661409 () Bool)

(assert (=> b!1461434 (=> res!661409 e!932330)))

(assert (=> b!1461434 (= res!661409 (not ((_ is Node!5173) (left!12896 (c!240746 (tokens!2100 other!32))))))))

(assert (= (and d!427868 (not res!661411)) b!1461430))

(assert (= (and b!1461430 res!661410) b!1461426))

(assert (= (and b!1461426 (not res!661407)) b!1461431))

(assert (= (and b!1461431 res!661404) b!1461432))

(assert (= (and d!427868 res!661408) b!1461433))

(assert (= (and b!1461433 (not res!661405)) b!1461427))

(assert (= (and b!1461427 res!661403) b!1461434))

(assert (= (and b!1461434 (not res!661409)) b!1461428))

(assert (= (and b!1461428 res!661406) b!1461429))

(assert (=> b!1461430 m!1697249))

(assert (=> b!1461430 m!1697253))

(assert (=> b!1461430 m!1696309))

(assert (=> b!1461430 m!1697249))

(assert (=> b!1461430 m!1697253))

(assert (=> b!1461430 m!1696309))

(declare-fun m!1697271 () Bool)

(assert (=> b!1461430 m!1697271))

(assert (=> b!1461428 m!1696319))

(declare-fun m!1697273 () Bool)

(assert (=> b!1461428 m!1697273))

(declare-fun m!1697275 () Bool)

(assert (=> b!1461428 m!1697275))

(assert (=> b!1461428 m!1696319))

(assert (=> b!1461428 m!1697273))

(assert (=> b!1461428 m!1697275))

(declare-fun m!1697277 () Bool)

(assert (=> b!1461428 m!1697277))

(assert (=> b!1461429 m!1697259))

(assert (=> b!1461429 m!1696319))

(assert (=> b!1461429 m!1696319))

(assert (=> b!1461429 m!1697273))

(declare-fun m!1697279 () Bool)

(assert (=> b!1461429 m!1697279))

(assert (=> b!1461429 m!1697273))

(assert (=> b!1461429 m!1697279))

(assert (=> b!1461429 m!1697275))

(assert (=> b!1461429 m!1697259))

(declare-fun m!1697281 () Bool)

(assert (=> b!1461429 m!1697281))

(assert (=> b!1461429 m!1697275))

(declare-fun m!1697283 () Bool)

(assert (=> b!1461432 m!1697283))

(assert (=> b!1461432 m!1697249))

(assert (=> b!1461432 m!1697283))

(declare-fun m!1697285 () Bool)

(assert (=> b!1461432 m!1697285))

(declare-fun m!1697287 () Bool)

(assert (=> b!1461432 m!1697287))

(declare-fun m!1697289 () Bool)

(assert (=> b!1461432 m!1697289))

(assert (=> b!1461432 m!1697289))

(assert (=> b!1461432 m!1696309))

(assert (=> b!1461432 m!1697285))

(assert (=> b!1461432 m!1696309))

(assert (=> b!1461432 m!1697249))

(assert (=> b!1461431 m!1697283))

(assert (=> b!1461431 m!1697289))

(assert (=> b!1461431 m!1696309))

(assert (=> b!1461431 m!1697283))

(assert (=> b!1461431 m!1697289))

(assert (=> b!1461431 m!1696309))

(declare-fun m!1697291 () Bool)

(assert (=> b!1461431 m!1697291))

(assert (=> b!1461427 m!1696319))

(assert (=> b!1461427 m!1697257))

(assert (=> b!1461427 m!1697259))

(assert (=> b!1461427 m!1696319))

(assert (=> b!1461427 m!1697257))

(assert (=> b!1461427 m!1697259))

(declare-fun m!1697293 () Bool)

(assert (=> b!1461427 m!1697293))

(assert (=> d!427734 d!427868))

(declare-fun b!1461491 () Bool)

(declare-fun e!932378 () Conc!5173)

(declare-fun call!98312 () Conc!5173)

(assert (=> b!1461491 (= e!932378 call!98312)))

(declare-fun b!1461492 () Bool)

(declare-fun e!932377 () Conc!5173)

(declare-fun call!98320 () Conc!5173)

(assert (=> b!1461492 (= e!932377 call!98320)))

(declare-fun b!1461493 () Bool)

(declare-fun e!932379 () Conc!5173)

(declare-fun e!932381 () Conc!5173)

(assert (=> b!1461493 (= e!932379 e!932381)))

(declare-fun c!240851 () Bool)

(declare-fun lt!505449 () Int)

(assert (=> b!1461493 (= c!240851 (< lt!505449 (- 1)))))

(declare-fun d!427870 () Bool)

(declare-fun e!932373 () Bool)

(assert (=> d!427870 e!932373))

(declare-fun res!661436 () Bool)

(assert (=> d!427870 (=> (not res!661436) (not e!932373))))

(assert (=> d!427870 (= res!661436 (appendAssocInst!333 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32))))))

(declare-fun lt!505450 () Conc!5173)

(declare-fun e!932382 () Conc!5173)

(assert (=> d!427870 (= lt!505450 e!932382)))

(declare-fun c!240846 () Bool)

(assert (=> d!427870 (= c!240846 (= (c!240746 (tokens!2100 thiss!10022)) Empty!5173))))

(declare-fun e!932375 () Bool)

(assert (=> d!427870 e!932375))

(declare-fun res!661435 () Bool)

(assert (=> d!427870 (=> (not res!661435) (not e!932375))))

(assert (=> d!427870 (= res!661435 (isBalanced!1550 (c!240746 (tokens!2100 thiss!10022))))))

(assert (=> d!427870 (= (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32))) lt!505450)))

(declare-fun bm!98303 () Bool)

(declare-fun call!98310 () Int)

(declare-fun lt!505448 () Conc!5173)

(assert (=> bm!98303 (= call!98310 (height!774 (ite c!240851 lt!505448 (left!12896 (c!240746 (tokens!2100 other!32))))))))

(declare-fun bm!98304 () Bool)

(declare-fun call!98321 () Conc!5173)

(declare-fun call!98318 () Conc!5173)

(assert (=> bm!98304 (= call!98321 call!98318)))

(declare-fun b!1461494 () Bool)

(declare-fun res!661434 () Bool)

(assert (=> b!1461494 (=> (not res!661434) (not e!932373))))

(assert (=> b!1461494 (= res!661434 (isBalanced!1550 lt!505450))))

(declare-fun b!1461495 () Bool)

(assert (=> b!1461495 (= e!932377 call!98320)))

(declare-fun bm!98305 () Bool)

(declare-fun call!98308 () Conc!5173)

(declare-fun call!98314 () Conc!5173)

(assert (=> bm!98305 (= call!98308 call!98314)))

(declare-fun b!1461496 () Bool)

(declare-fun e!932376 () Conc!5173)

(declare-fun call!98313 () Conc!5173)

(assert (=> b!1461496 (= e!932376 call!98313)))

(declare-fun b!1461497 () Bool)

(assert (=> b!1461497 (= e!932373 (= (list!6077 lt!505450) (++!4080 (list!6077 (c!240746 (tokens!2100 thiss!10022))) (list!6077 (c!240746 (tokens!2100 other!32))))))))

(declare-fun bm!98306 () Bool)

(assert (=> bm!98306 (= call!98313 call!98314)))

(declare-fun b!1461498 () Bool)

(declare-fun e!932380 () Conc!5173)

(assert (=> b!1461498 (= e!932380 (c!240746 (tokens!2100 thiss!10022)))))

(declare-fun b!1461499 () Bool)

(declare-fun e!932374 () Conc!5173)

(assert (=> b!1461499 (= e!932374 call!98308)))

(declare-fun b!1461500 () Bool)

(assert (=> b!1461500 (= e!932375 (isBalanced!1550 (c!240746 (tokens!2100 other!32))))))

(declare-fun b!1461501 () Bool)

(assert (=> b!1461501 (= e!932382 e!932380)))

(declare-fun c!240852 () Bool)

(assert (=> b!1461501 (= c!240852 (= (c!240746 (tokens!2100 other!32)) Empty!5173))))

(declare-fun b!1461502 () Bool)

(assert (=> b!1461502 (= e!932378 call!98312)))

(declare-fun bm!98307 () Bool)

(declare-fun call!98311 () Int)

(assert (=> bm!98307 (= call!98311 (height!774 (ite c!240851 (c!240746 (tokens!2100 thiss!10022)) (right!13226 (c!240746 (tokens!2100 other!32))))))))

(declare-fun c!240848 () Bool)

(declare-fun lt!505447 () Conc!5173)

(declare-fun c!240845 () Bool)

(declare-fun bm!98308 () Bool)

(declare-fun c!240849 () Bool)

(declare-fun call!98322 () Conc!5173)

(declare-fun call!98319 () Conc!5173)

(declare-fun <>!103 (Conc!5173 Conc!5173) Conc!5173)

(assert (=> bm!98308 (= call!98322 (<>!103 (ite c!240849 (c!240746 (tokens!2100 thiss!10022)) (ite c!240851 (ite c!240845 (left!12896 (c!240746 (tokens!2100 thiss!10022))) call!98319) (ite c!240848 lt!505447 (right!13226 (left!12896 (c!240746 (tokens!2100 other!32))))))) (ite c!240849 (c!240746 (tokens!2100 other!32)) (ite c!240851 (ite c!240845 call!98319 lt!505448) (ite c!240848 (right!13226 (left!12896 (c!240746 (tokens!2100 other!32)))) (right!13226 (c!240746 (tokens!2100 other!32))))))))))

(declare-fun bm!98309 () Bool)

(declare-fun call!98323 () Int)

(assert (=> bm!98309 (= call!98323 (height!774 (ite c!240851 (right!13226 (c!240746 (tokens!2100 thiss!10022))) lt!505447)))))

(declare-fun bm!98310 () Bool)

(declare-fun c!240847 () Bool)

(declare-fun c!240850 () Bool)

(declare-fun call!98316 () Conc!5173)

(declare-fun call!98309 () Conc!5173)

(assert (=> bm!98310 (= call!98314 (<>!103 (ite c!240851 (ite c!240847 (left!12896 (c!240746 (tokens!2100 thiss!10022))) (ite c!240845 (left!12896 (right!13226 (c!240746 (tokens!2100 thiss!10022)))) (left!12896 (c!240746 (tokens!2100 thiss!10022))))) (ite c!240850 call!98316 (ite c!240848 call!98309 lt!505447))) (ite c!240851 (ite c!240847 call!98321 (ite c!240845 lt!505448 (left!12896 (right!13226 (c!240746 (tokens!2100 thiss!10022)))))) (ite (or c!240850 c!240848) (right!13226 (c!240746 (tokens!2100 other!32))) call!98309))))))

(declare-fun b!1461503 () Bool)

(assert (=> b!1461503 (= c!240849 (and (<= (- 1) lt!505449) (<= lt!505449 1)))))

(assert (=> b!1461503 (= lt!505449 (- (height!774 (c!240746 (tokens!2100 other!32))) (height!774 (c!240746 (tokens!2100 thiss!10022)))))))

(assert (=> b!1461503 (= e!932380 e!932379)))

(declare-fun bm!98311 () Bool)

(declare-fun call!98315 () Conc!5173)

(assert (=> bm!98311 (= call!98312 call!98315)))

(declare-fun b!1461504 () Bool)

(assert (=> b!1461504 (= e!932374 e!932377)))

(assert (=> b!1461504 (= lt!505447 call!98316)))

(declare-fun call!98317 () Int)

(assert (=> b!1461504 (= c!240848 (= call!98323 (- call!98317 3)))))

(declare-fun bm!98312 () Bool)

(assert (=> bm!98312 (= call!98319 call!98313)))

(declare-fun b!1461505 () Bool)

(declare-fun res!661437 () Bool)

(assert (=> b!1461505 (=> (not res!661437) (not e!932373))))

(assert (=> b!1461505 (= res!661437 (>= (height!774 lt!505450) (max!0 (height!774 (c!240746 (tokens!2100 thiss!10022))) (height!774 (c!240746 (tokens!2100 other!32))))))))

(declare-fun b!1461506 () Bool)

(assert (=> b!1461506 (= e!932376 e!932378)))

(assert (=> b!1461506 (= lt!505448 call!98321)))

(assert (=> b!1461506 (= c!240845 (= call!98310 (- call!98311 3)))))

(declare-fun b!1461507 () Bool)

(assert (=> b!1461507 (= e!932382 (c!240746 (tokens!2100 other!32)))))

(declare-fun b!1461508 () Bool)

(assert (=> b!1461508 (= e!932379 call!98322)))

(declare-fun b!1461509 () Bool)

(declare-fun res!661433 () Bool)

(assert (=> b!1461509 (=> (not res!661433) (not e!932373))))

(assert (=> b!1461509 (= res!661433 (<= (height!774 lt!505450) (+ (max!0 (height!774 (c!240746 (tokens!2100 thiss!10022))) (height!774 (c!240746 (tokens!2100 other!32)))) 1)))))

(declare-fun bm!98313 () Bool)

(assert (=> bm!98313 (= call!98315 call!98322)))

(declare-fun bm!98314 () Bool)

(assert (=> bm!98314 (= call!98309 call!98315)))

(declare-fun bm!98315 () Bool)

(assert (=> bm!98315 (= call!98318 (++!4085 (ite c!240851 (ite c!240847 (right!13226 (c!240746 (tokens!2100 thiss!10022))) (right!13226 (right!13226 (c!240746 (tokens!2100 thiss!10022))))) (c!240746 (tokens!2100 thiss!10022))) (ite c!240851 (c!240746 (tokens!2100 other!32)) (ite c!240850 (left!12896 (c!240746 (tokens!2100 other!32))) (left!12896 (left!12896 (c!240746 (tokens!2100 other!32))))))))))

(declare-fun b!1461510 () Bool)

(assert (=> b!1461510 (= c!240850 (>= call!98311 call!98310))))

(assert (=> b!1461510 (= e!932381 e!932374)))

(declare-fun bm!98316 () Bool)

(assert (=> bm!98316 (= call!98316 call!98318)))

(declare-fun b!1461511 () Bool)

(assert (=> b!1461511 (= c!240847 (>= call!98317 call!98323))))

(assert (=> b!1461511 (= e!932381 e!932376)))

(declare-fun bm!98317 () Bool)

(assert (=> bm!98317 (= call!98320 call!98308)))

(declare-fun bm!98318 () Bool)

(assert (=> bm!98318 (= call!98317 (height!774 (ite c!240851 (left!12896 (c!240746 (tokens!2100 thiss!10022))) (c!240746 (tokens!2100 other!32)))))))

(assert (= (and d!427870 res!661435) b!1461500))

(assert (= (and d!427870 c!240846) b!1461507))

(assert (= (and d!427870 (not c!240846)) b!1461501))

(assert (= (and b!1461501 c!240852) b!1461498))

(assert (= (and b!1461501 (not c!240852)) b!1461503))

(assert (= (and b!1461503 c!240849) b!1461508))

(assert (= (and b!1461503 (not c!240849)) b!1461493))

(assert (= (and b!1461493 c!240851) b!1461511))

(assert (= (and b!1461493 (not c!240851)) b!1461510))

(assert (= (and b!1461511 c!240847) b!1461496))

(assert (= (and b!1461511 (not c!240847)) b!1461506))

(assert (= (and b!1461506 c!240845) b!1461502))

(assert (= (and b!1461506 (not c!240845)) b!1461491))

(assert (= (or b!1461502 b!1461491) bm!98312))

(assert (= (or b!1461502 b!1461491) bm!98311))

(assert (= (or b!1461496 b!1461506) bm!98304))

(assert (= (or b!1461496 bm!98312) bm!98306))

(assert (= (and b!1461510 c!240850) b!1461499))

(assert (= (and b!1461510 (not c!240850)) b!1461504))

(assert (= (and b!1461504 c!240848) b!1461492))

(assert (= (and b!1461504 (not c!240848)) b!1461495))

(assert (= (or b!1461492 b!1461495) bm!98314))

(assert (= (or b!1461492 b!1461495) bm!98317))

(assert (= (or b!1461499 b!1461504) bm!98316))

(assert (= (or b!1461499 bm!98317) bm!98305))

(assert (= (or b!1461511 b!1461504) bm!98309))

(assert (= (or b!1461506 b!1461510) bm!98303))

(assert (= (or b!1461511 b!1461504) bm!98318))

(assert (= (or bm!98306 bm!98305) bm!98310))

(assert (= (or b!1461506 b!1461510) bm!98307))

(assert (= (or bm!98311 bm!98314) bm!98313))

(assert (= (or bm!98304 bm!98316) bm!98315))

(assert (= (or b!1461508 bm!98313) bm!98308))

(assert (= (and d!427870 res!661436) b!1461494))

(assert (= (and b!1461494 res!661434) b!1461509))

(assert (= (and b!1461509 res!661433) b!1461505))

(assert (= (and b!1461505 res!661437) b!1461497))

(assert (=> d!427870 m!1696369))

(assert (=> d!427870 m!1696291))

(declare-fun m!1697329 () Bool)

(assert (=> bm!98308 m!1697329))

(assert (=> b!1461503 m!1696361))

(assert (=> b!1461503 m!1696359))

(declare-fun m!1697331 () Bool)

(assert (=> bm!98318 m!1697331))

(declare-fun m!1697333 () Bool)

(assert (=> b!1461494 m!1697333))

(declare-fun m!1697335 () Bool)

(assert (=> bm!98303 m!1697335))

(declare-fun m!1697337 () Bool)

(assert (=> bm!98309 m!1697337))

(declare-fun m!1697339 () Bool)

(assert (=> bm!98307 m!1697339))

(declare-fun m!1697341 () Bool)

(assert (=> b!1461509 m!1697341))

(assert (=> b!1461509 m!1696359))

(assert (=> b!1461509 m!1696361))

(assert (=> b!1461509 m!1696359))

(assert (=> b!1461509 m!1696361))

(assert (=> b!1461509 m!1696363))

(assert (=> b!1461505 m!1697341))

(assert (=> b!1461505 m!1696359))

(assert (=> b!1461505 m!1696361))

(assert (=> b!1461505 m!1696359))

(assert (=> b!1461505 m!1696361))

(assert (=> b!1461505 m!1696363))

(declare-fun m!1697343 () Bool)

(assert (=> bm!98315 m!1697343))

(assert (=> b!1461500 m!1695761))

(declare-fun m!1697345 () Bool)

(assert (=> b!1461497 m!1697345))

(assert (=> b!1461497 m!1696319))

(assert (=> b!1461497 m!1696309))

(assert (=> b!1461497 m!1696319))

(assert (=> b!1461497 m!1696309))

(declare-fun m!1697347 () Bool)

(assert (=> b!1461497 m!1697347))

(declare-fun m!1697349 () Bool)

(assert (=> bm!98310 m!1697349))

(assert (=> d!427734 d!427870))

(declare-fun d!427886 () Bool)

(declare-fun lt!505455 () Bool)

(assert (=> d!427886 (= lt!505455 (isEmpty!9527 (list!6075 (_2!8008 lt!504960))))))

(declare-fun isEmpty!9531 (Conc!5172) Bool)

(assert (=> d!427886 (= lt!505455 (isEmpty!9531 (c!240744 (_2!8008 lt!504960))))))

(assert (=> d!427886 (= (isEmpty!9529 (_2!8008 lt!504960)) lt!505455)))

(declare-fun bs!344199 () Bool)

(assert (= bs!344199 d!427886))

(declare-fun m!1697351 () Bool)

(assert (=> bs!344199 m!1697351))

(assert (=> bs!344199 m!1697351))

(declare-fun m!1697353 () Bool)

(assert (=> bs!344199 m!1697353))

(declare-fun m!1697355 () Bool)

(assert (=> bs!344199 m!1697355))

(assert (=> b!1461035 d!427886))

(declare-fun b!1461553 () Bool)

(declare-fun res!661455 () Bool)

(declare-fun e!932405 () Bool)

(assert (=> b!1461553 (=> (not res!661455) (not e!932405))))

(assert (=> b!1461553 (= res!661455 (not (isEmpty!9526 (left!12896 (c!240746 (tokens!2100 thiss!10022))))))))

(declare-fun b!1461554 () Bool)

(declare-fun res!661457 () Bool)

(assert (=> b!1461554 (=> (not res!661457) (not e!932405))))

(assert (=> b!1461554 (= res!661457 (isBalanced!1550 (left!12896 (c!240746 (tokens!2100 thiss!10022)))))))

(declare-fun b!1461555 () Bool)

(declare-fun e!932404 () Bool)

(assert (=> b!1461555 (= e!932404 e!932405)))

(declare-fun res!661459 () Bool)

(assert (=> b!1461555 (=> (not res!661459) (not e!932405))))

(assert (=> b!1461555 (= res!661459 (<= (- 1) (- (height!774 (left!12896 (c!240746 (tokens!2100 thiss!10022)))) (height!774 (right!13226 (c!240746 (tokens!2100 thiss!10022)))))))))

(declare-fun b!1461556 () Bool)

(assert (=> b!1461556 (= e!932405 (not (isEmpty!9526 (right!13226 (c!240746 (tokens!2100 thiss!10022))))))))

(declare-fun b!1461557 () Bool)

(declare-fun res!661460 () Bool)

(assert (=> b!1461557 (=> (not res!661460) (not e!932405))))

(assert (=> b!1461557 (= res!661460 (isBalanced!1550 (right!13226 (c!240746 (tokens!2100 thiss!10022)))))))

(declare-fun d!427888 () Bool)

(declare-fun res!661458 () Bool)

(assert (=> d!427888 (=> res!661458 e!932404)))

(assert (=> d!427888 (= res!661458 (not ((_ is Node!5173) (c!240746 (tokens!2100 thiss!10022)))))))

(assert (=> d!427888 (= (isBalanced!1550 (c!240746 (tokens!2100 thiss!10022))) e!932404)))

(declare-fun b!1461558 () Bool)

(declare-fun res!661456 () Bool)

(assert (=> b!1461558 (=> (not res!661456) (not e!932405))))

(assert (=> b!1461558 (= res!661456 (<= (- (height!774 (left!12896 (c!240746 (tokens!2100 thiss!10022)))) (height!774 (right!13226 (c!240746 (tokens!2100 thiss!10022))))) 1))))

(assert (= (and d!427888 (not res!661458)) b!1461555))

(assert (= (and b!1461555 res!661459) b!1461558))

(assert (= (and b!1461558 res!661456) b!1461554))

(assert (= (and b!1461554 res!661457) b!1461557))

(assert (= (and b!1461557 res!661460) b!1461553))

(assert (= (and b!1461553 res!661455) b!1461556))

(declare-fun m!1697371 () Bool)

(assert (=> b!1461558 m!1697371))

(declare-fun m!1697373 () Bool)

(assert (=> b!1461558 m!1697373))

(declare-fun m!1697375 () Bool)

(assert (=> b!1461556 m!1697375))

(assert (=> b!1461555 m!1697371))

(assert (=> b!1461555 m!1697373))

(declare-fun m!1697377 () Bool)

(assert (=> b!1461553 m!1697377))

(declare-fun m!1697379 () Bool)

(assert (=> b!1461554 m!1697379))

(declare-fun m!1697381 () Bool)

(assert (=> b!1461557 m!1697381))

(assert (=> d!427714 d!427888))

(assert (=> b!1461213 d!427854))

(declare-fun d!427894 () Bool)

(assert (=> d!427894 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 lt!504657))))) (list!6077 (c!240746 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 lt!504657)))))))))

(declare-fun bs!344201 () Bool)

(assert (= bs!344201 d!427894))

(declare-fun m!1697389 () Bool)

(assert (=> bs!344201 m!1697389))

(assert (=> d!427706 d!427894))

(assert (=> d!427706 d!427846))

(declare-fun d!427898 () Bool)

(declare-fun e!932412 () Bool)

(assert (=> d!427898 e!932412))

(declare-fun res!661465 () Bool)

(assert (=> d!427898 (=> (not res!661465) (not e!932412))))

(declare-fun e!932410 () Bool)

(assert (=> d!427898 (= res!661465 e!932410)))

(declare-fun c!240866 () Bool)

(declare-fun lt!505464 () tuple2!14244)

(assert (=> d!427898 (= c!240866 (> (size!12413 (_1!8008 lt!505464)) 0))))

(assert (=> d!427898 (= lt!505464 (lexTailRecV2!471 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 lt!504657)) (BalanceConc!10285 Empty!5172) (print!1103 Lexer!2327 (seqFromList!1712 lt!504657)) (BalanceConc!10287 Empty!5173)))))

(assert (=> d!427898 (= (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 lt!504657))) lt!505464)))

(declare-fun b!1461565 () Bool)

(declare-fun e!932411 () Bool)

(assert (=> b!1461565 (= e!932410 e!932411)))

(declare-fun res!661467 () Bool)

(assert (=> b!1461565 (= res!661467 (< (size!12415 (_2!8008 lt!505464)) (size!12415 (print!1103 Lexer!2327 (seqFromList!1712 lt!504657)))))))

(assert (=> b!1461565 (=> (not res!661467) (not e!932411))))

(declare-fun b!1461566 () Bool)

(declare-fun res!661466 () Bool)

(assert (=> b!1461566 (=> (not res!661466) (not e!932412))))

(assert (=> b!1461566 (= res!661466 (= (list!6073 (_1!8008 lt!505464)) (_1!8011 (lexList!716 Lexer!2327 (rules!11668 other!32) (list!6075 (print!1103 Lexer!2327 (seqFromList!1712 lt!504657)))))))))

(declare-fun b!1461567 () Bool)

(assert (=> b!1461567 (= e!932412 (= (list!6075 (_2!8008 lt!505464)) (_2!8011 (lexList!716 Lexer!2327 (rules!11668 other!32) (list!6075 (print!1103 Lexer!2327 (seqFromList!1712 lt!504657)))))))))

(declare-fun b!1461568 () Bool)

(assert (=> b!1461568 (= e!932410 (= (_2!8008 lt!505464) (print!1103 Lexer!2327 (seqFromList!1712 lt!504657))))))

(declare-fun b!1461569 () Bool)

(assert (=> b!1461569 (= e!932411 (not (isEmpty!9519 (_1!8008 lt!505464))))))

(assert (= (and d!427898 c!240866) b!1461565))

(assert (= (and d!427898 (not c!240866)) b!1461568))

(assert (= (and b!1461565 res!661467) b!1461569))

(assert (= (and d!427898 res!661465) b!1461566))

(assert (= (and b!1461566 res!661466) b!1461567))

(declare-fun m!1697403 () Bool)

(assert (=> b!1461566 m!1697403))

(assert (=> b!1461566 m!1696189))

(declare-fun m!1697407 () Bool)

(assert (=> b!1461566 m!1697407))

(assert (=> b!1461566 m!1697407))

(declare-fun m!1697409 () Bool)

(assert (=> b!1461566 m!1697409))

(declare-fun m!1697413 () Bool)

(assert (=> b!1461567 m!1697413))

(assert (=> b!1461567 m!1696189))

(assert (=> b!1461567 m!1697407))

(assert (=> b!1461567 m!1697407))

(assert (=> b!1461567 m!1697409))

(declare-fun m!1697417 () Bool)

(assert (=> b!1461569 m!1697417))

(declare-fun m!1697419 () Bool)

(assert (=> b!1461565 m!1697419))

(assert (=> b!1461565 m!1696189))

(declare-fun m!1697421 () Bool)

(assert (=> b!1461565 m!1697421))

(declare-fun m!1697423 () Bool)

(assert (=> d!427898 m!1697423))

(assert (=> d!427898 m!1696189))

(assert (=> d!427898 m!1696189))

(declare-fun m!1697427 () Bool)

(assert (=> d!427898 m!1697427))

(assert (=> d!427706 d!427898))

(declare-fun d!427904 () Bool)

(declare-fun fromListB!736 (List!15240) BalanceConc!10286)

(assert (=> d!427904 (= (seqFromList!1712 lt!504657) (fromListB!736 lt!504657))))

(declare-fun bs!344206 () Bool)

(assert (= bs!344206 d!427904))

(declare-fun m!1697447 () Bool)

(assert (=> bs!344206 m!1697447))

(assert (=> d!427706 d!427904))

(declare-fun d!427916 () Bool)

(declare-fun lt!505467 () BalanceConc!10284)

(assert (=> d!427916 (= (list!6075 lt!505467) (printList!725 Lexer!2327 (list!6073 (seqFromList!1712 lt!504657))))))

(assert (=> d!427916 (= lt!505467 (printTailRec!697 Lexer!2327 (seqFromList!1712 lt!504657) 0 (BalanceConc!10285 Empty!5172)))))

(assert (=> d!427916 (= (print!1103 Lexer!2327 (seqFromList!1712 lt!504657)) lt!505467)))

(declare-fun bs!344207 () Bool)

(assert (= bs!344207 d!427916))

(declare-fun m!1697449 () Bool)

(assert (=> bs!344207 m!1697449))

(assert (=> bs!344207 m!1696187))

(declare-fun m!1697451 () Bool)

(assert (=> bs!344207 m!1697451))

(assert (=> bs!344207 m!1697451))

(declare-fun m!1697453 () Bool)

(assert (=> bs!344207 m!1697453))

(assert (=> bs!344207 m!1696187))

(declare-fun m!1697455 () Bool)

(assert (=> bs!344207 m!1697455))

(assert (=> d!427706 d!427916))

(declare-fun d!427918 () Bool)

(assert (=> d!427918 (= (list!6073 lt!504662) (list!6077 (c!240746 lt!504662)))))

(declare-fun bs!344208 () Bool)

(assert (= bs!344208 d!427918))

(declare-fun m!1697457 () Bool)

(assert (=> bs!344208 m!1697457))

(assert (=> b!1461118 d!427918))

(declare-fun d!427920 () Bool)

(declare-fun lt!505503 () Int)

(assert (=> d!427920 (= lt!505503 (size!12411 (list!6075 (charsOf!1536 (apply!3952 lt!504662 (+ 0 1))))))))

(declare-fun size!12418 (Conc!5172) Int)

(assert (=> d!427920 (= lt!505503 (size!12418 (c!240744 (charsOf!1536 (apply!3952 lt!504662 (+ 0 1))))))))

(assert (=> d!427920 (= (size!12415 (charsOf!1536 (apply!3952 lt!504662 (+ 0 1)))) lt!505503)))

(declare-fun bs!344209 () Bool)

(assert (= bs!344209 d!427920))

(assert (=> bs!344209 m!1696465))

(declare-fun m!1697463 () Bool)

(assert (=> bs!344209 m!1697463))

(assert (=> bs!344209 m!1697463))

(declare-fun m!1697465 () Bool)

(assert (=> bs!344209 m!1697465))

(declare-fun m!1697467 () Bool)

(assert (=> bs!344209 m!1697467))

(assert (=> b!1461118 d!427920))

(declare-fun b!1461605 () Bool)

(declare-fun e!932435 () Int)

(declare-fun call!98329 () Int)

(assert (=> b!1461605 (= e!932435 call!98329)))

(declare-fun b!1461606 () Bool)

(declare-fun e!932434 () List!15240)

(assert (=> b!1461606 (= e!932434 lt!505070)))

(declare-fun b!1461607 () Bool)

(declare-fun e!932436 () Int)

(assert (=> b!1461607 (= e!932436 (- call!98329 (+ lt!505064 1)))))

(declare-fun b!1461608 () Bool)

(assert (=> b!1461608 (= e!932434 (drop!744 (t!134383 lt!505070) (- (+ lt!505064 1) 1)))))

(declare-fun b!1461609 () Bool)

(declare-fun e!932438 () List!15240)

(assert (=> b!1461609 (= e!932438 e!932434)))

(declare-fun c!240878 () Bool)

(assert (=> b!1461609 (= c!240878 (<= (+ lt!505064 1) 0))))

(declare-fun b!1461610 () Bool)

(assert (=> b!1461610 (= e!932436 0)))

(declare-fun b!1461611 () Bool)

(assert (=> b!1461611 (= e!932435 e!932436)))

(declare-fun c!240877 () Bool)

(assert (=> b!1461611 (= c!240877 (>= (+ lt!505064 1) call!98329))))

(declare-fun b!1461612 () Bool)

(declare-fun e!932437 () Bool)

(declare-fun lt!505508 () List!15240)

(assert (=> b!1461612 (= e!932437 (= (size!12414 lt!505508) e!932435))))

(declare-fun c!240876 () Bool)

(assert (=> b!1461612 (= c!240876 (<= (+ lt!505064 1) 0))))

(declare-fun b!1461613 () Bool)

(assert (=> b!1461613 (= e!932438 Nil!15174)))

(declare-fun bm!98324 () Bool)

(assert (=> bm!98324 (= call!98329 (size!12414 lt!505070))))

(declare-fun d!427924 () Bool)

(assert (=> d!427924 e!932437))

(declare-fun res!661487 () Bool)

(assert (=> d!427924 (=> (not res!661487) (not e!932437))))

(assert (=> d!427924 (= res!661487 (= ((_ map implies) (content!2243 lt!505508) (content!2243 lt!505070)) ((as const (InoxSet Token!5008)) true)))))

(assert (=> d!427924 (= lt!505508 e!932438)))

(declare-fun c!240875 () Bool)

(assert (=> d!427924 (= c!240875 ((_ is Nil!15174) lt!505070))))

(assert (=> d!427924 (= (drop!744 lt!505070 (+ lt!505064 1)) lt!505508)))

(assert (= (and d!427924 c!240875) b!1461613))

(assert (= (and d!427924 (not c!240875)) b!1461609))

(assert (= (and b!1461609 c!240878) b!1461606))

(assert (= (and b!1461609 (not c!240878)) b!1461608))

(assert (= (and d!427924 res!661487) b!1461612))

(assert (= (and b!1461612 c!240876) b!1461605))

(assert (= (and b!1461612 (not c!240876)) b!1461611))

(assert (= (and b!1461611 c!240877) b!1461610))

(assert (= (and b!1461611 (not c!240877)) b!1461607))

(assert (= (or b!1461605 b!1461611 b!1461607) bm!98324))

(declare-fun m!1697541 () Bool)

(assert (=> b!1461608 m!1697541))

(declare-fun m!1697543 () Bool)

(assert (=> b!1461612 m!1697543))

(declare-fun m!1697545 () Bool)

(assert (=> bm!98324 m!1697545))

(declare-fun m!1697547 () Bool)

(assert (=> d!427924 m!1697547))

(declare-fun m!1697549 () Bool)

(assert (=> d!427924 m!1697549))

(assert (=> b!1461118 d!427924))

(declare-fun d!427928 () Bool)

(declare-fun lt!505511 () Bool)

(declare-fun e!932440 () Bool)

(assert (=> d!427928 (= lt!505511 e!932440)))

(declare-fun res!661491 () Bool)

(assert (=> d!427928 (=> (not res!661491) (not e!932440))))

(assert (=> d!427928 (= res!661491 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!505083))))) (list!6073 (singletonSeq!1277 lt!505083))))))

(declare-fun e!932441 () Bool)

(assert (=> d!427928 (= lt!505511 e!932441)))

(declare-fun res!661490 () Bool)

(assert (=> d!427928 (=> (not res!661490) (not e!932441))))

(declare-fun lt!505510 () tuple2!14244)

(assert (=> d!427928 (= res!661490 (= (size!12413 (_1!8008 lt!505510)) 1))))

(assert (=> d!427928 (= lt!505510 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!505083))))))

(assert (=> d!427928 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427928 (= (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!505083) lt!505511)))

(declare-fun b!1461615 () Bool)

(declare-fun res!661489 () Bool)

(assert (=> b!1461615 (=> (not res!661489) (not e!932441))))

(assert (=> b!1461615 (= res!661489 (= (apply!3952 (_1!8008 lt!505510) 0) lt!505083))))

(declare-fun b!1461616 () Bool)

(assert (=> b!1461616 (= e!932441 (isEmpty!9529 (_2!8008 lt!505510)))))

(declare-fun b!1461617 () Bool)

(assert (=> b!1461617 (= e!932440 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!505083))))))))

(assert (= (and d!427928 res!661490) b!1461615))

(assert (= (and b!1461615 res!661489) b!1461616))

(assert (= (and d!427928 res!661491) b!1461617))

(declare-fun m!1697555 () Bool)

(assert (=> d!427928 m!1697555))

(declare-fun m!1697557 () Bool)

(assert (=> d!427928 m!1697557))

(declare-fun m!1697559 () Bool)

(assert (=> d!427928 m!1697559))

(declare-fun m!1697561 () Bool)

(assert (=> d!427928 m!1697561))

(declare-fun m!1697563 () Bool)

(assert (=> d!427928 m!1697563))

(assert (=> d!427928 m!1697557))

(declare-fun m!1697565 () Bool)

(assert (=> d!427928 m!1697565))

(assert (=> d!427928 m!1696087))

(assert (=> d!427928 m!1697557))

(assert (=> d!427928 m!1697561))

(declare-fun m!1697567 () Bool)

(assert (=> b!1461615 m!1697567))

(declare-fun m!1697569 () Bool)

(assert (=> b!1461616 m!1697569))

(assert (=> b!1461617 m!1697557))

(assert (=> b!1461617 m!1697557))

(assert (=> b!1461617 m!1697561))

(assert (=> b!1461617 m!1697561))

(assert (=> b!1461617 m!1697563))

(declare-fun m!1697571 () Bool)

(assert (=> b!1461617 m!1697571))

(assert (=> b!1461118 d!427928))

(declare-fun d!427932 () Bool)

(declare-fun lt!505514 () Token!5008)

(assert (=> d!427932 (contains!2906 lt!505063 lt!505514)))

(declare-fun e!932446 () Token!5008)

(assert (=> d!427932 (= lt!505514 e!932446)))

(declare-fun c!240881 () Bool)

(assert (=> d!427932 (= c!240881 (= lt!505066 0))))

(declare-fun e!932447 () Bool)

(assert (=> d!427932 e!932447))

(declare-fun res!661494 () Bool)

(assert (=> d!427932 (=> (not res!661494) (not e!932447))))

(assert (=> d!427932 (= res!661494 (<= 0 lt!505066))))

(assert (=> d!427932 (= (apply!3953 lt!505063 lt!505066) lt!505514)))

(declare-fun b!1461624 () Bool)

(assert (=> b!1461624 (= e!932447 (< lt!505066 (size!12414 lt!505063)))))

(declare-fun b!1461625 () Bool)

(assert (=> b!1461625 (= e!932446 (head!3012 lt!505063))))

(declare-fun b!1461626 () Bool)

(assert (=> b!1461626 (= e!932446 (apply!3953 (tail!2174 lt!505063) (- lt!505066 1)))))

(assert (= (and d!427932 res!661494) b!1461624))

(assert (= (and d!427932 c!240881) b!1461625))

(assert (= (and d!427932 (not c!240881)) b!1461626))

(declare-fun m!1697573 () Bool)

(assert (=> d!427932 m!1697573))

(declare-fun m!1697575 () Bool)

(assert (=> b!1461624 m!1697575))

(declare-fun m!1697577 () Bool)

(assert (=> b!1461625 m!1697577))

(declare-fun m!1697579 () Bool)

(assert (=> b!1461626 m!1697579))

(assert (=> b!1461626 m!1697579))

(declare-fun m!1697581 () Bool)

(assert (=> b!1461626 m!1697581))

(assert (=> b!1461118 d!427932))

(declare-fun d!427934 () Bool)

(assert (=> d!427934 (= (head!3012 (drop!744 lt!505091 0)) (apply!3953 lt!505091 0))))

(declare-fun lt!505517 () Unit!24235)

(declare-fun choose!8987 (List!15240 Int) Unit!24235)

(assert (=> d!427934 (= lt!505517 (choose!8987 lt!505091 0))))

(declare-fun e!932450 () Bool)

(assert (=> d!427934 e!932450))

(declare-fun res!661497 () Bool)

(assert (=> d!427934 (=> (not res!661497) (not e!932450))))

(assert (=> d!427934 (= res!661497 (>= 0 0))))

(assert (=> d!427934 (= (lemmaDropApply!494 lt!505091 0) lt!505517)))

(declare-fun b!1461629 () Bool)

(assert (=> b!1461629 (= e!932450 (< 0 (size!12414 lt!505091)))))

(assert (= (and d!427934 res!661497) b!1461629))

(assert (=> d!427934 m!1696453))

(assert (=> d!427934 m!1696453))

(assert (=> d!427934 m!1696495))

(assert (=> d!427934 m!1696473))

(declare-fun m!1697583 () Bool)

(assert (=> d!427934 m!1697583))

(declare-fun m!1697585 () Bool)

(assert (=> b!1461629 m!1697585))

(assert (=> b!1461118 d!427934))

(declare-fun b!1461630 () Bool)

(declare-fun e!932452 () Int)

(declare-fun call!98330 () Int)

(assert (=> b!1461630 (= e!932452 call!98330)))

(declare-fun b!1461631 () Bool)

(declare-fun e!932451 () List!15240)

(assert (=> b!1461631 (= e!932451 lt!505089)))

(declare-fun b!1461632 () Bool)

(declare-fun e!932453 () Int)

(assert (=> b!1461632 (= e!932453 (- call!98330 (+ 0 1)))))

(declare-fun b!1461633 () Bool)

(assert (=> b!1461633 (= e!932451 (drop!744 (t!134383 lt!505089) (- (+ 0 1) 1)))))

(declare-fun b!1461634 () Bool)

(declare-fun e!932455 () List!15240)

(assert (=> b!1461634 (= e!932455 e!932451)))

(declare-fun c!240885 () Bool)

(assert (=> b!1461634 (= c!240885 (<= (+ 0 1) 0))))

(declare-fun b!1461635 () Bool)

(assert (=> b!1461635 (= e!932453 0)))

(declare-fun b!1461636 () Bool)

(assert (=> b!1461636 (= e!932452 e!932453)))

(declare-fun c!240884 () Bool)

(assert (=> b!1461636 (= c!240884 (>= (+ 0 1) call!98330))))

(declare-fun b!1461637 () Bool)

(declare-fun e!932454 () Bool)

(declare-fun lt!505518 () List!15240)

(assert (=> b!1461637 (= e!932454 (= (size!12414 lt!505518) e!932452))))

(declare-fun c!240883 () Bool)

(assert (=> b!1461637 (= c!240883 (<= (+ 0 1) 0))))

(declare-fun b!1461638 () Bool)

(assert (=> b!1461638 (= e!932455 Nil!15174)))

(declare-fun bm!98325 () Bool)

(assert (=> bm!98325 (= call!98330 (size!12414 lt!505089))))

(declare-fun d!427936 () Bool)

(assert (=> d!427936 e!932454))

(declare-fun res!661498 () Bool)

(assert (=> d!427936 (=> (not res!661498) (not e!932454))))

(assert (=> d!427936 (= res!661498 (= ((_ map implies) (content!2243 lt!505518) (content!2243 lt!505089)) ((as const (InoxSet Token!5008)) true)))))

(assert (=> d!427936 (= lt!505518 e!932455)))

(declare-fun c!240882 () Bool)

(assert (=> d!427936 (= c!240882 ((_ is Nil!15174) lt!505089))))

(assert (=> d!427936 (= (drop!744 lt!505089 (+ 0 1)) lt!505518)))

(assert (= (and d!427936 c!240882) b!1461638))

(assert (= (and d!427936 (not c!240882)) b!1461634))

(assert (= (and b!1461634 c!240885) b!1461631))

(assert (= (and b!1461634 (not c!240885)) b!1461633))

(assert (= (and d!427936 res!661498) b!1461637))

(assert (= (and b!1461637 c!240883) b!1461630))

(assert (= (and b!1461637 (not c!240883)) b!1461636))

(assert (= (and b!1461636 c!240884) b!1461635))

(assert (= (and b!1461636 (not c!240884)) b!1461632))

(assert (= (or b!1461630 b!1461636 b!1461632) bm!98325))

(declare-fun m!1697587 () Bool)

(assert (=> b!1461633 m!1697587))

(declare-fun m!1697589 () Bool)

(assert (=> b!1461637 m!1697589))

(declare-fun m!1697591 () Bool)

(assert (=> bm!98325 m!1697591))

(declare-fun m!1697593 () Bool)

(assert (=> d!427936 m!1697593))

(declare-fun m!1697595 () Bool)

(assert (=> d!427936 m!1697595))

(assert (=> b!1461118 d!427936))

(declare-fun d!427938 () Bool)

(assert (=> d!427938 (= (separableTokensPredicate!538 Lexer!2327 (apply!3952 lt!504662 0) (apply!3952 lt!504662 (+ 0 1)) (rules!11668 thiss!10022)) (not (prefixMatchZipperSequence!352 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)) (++!4084 (charsOf!1536 (apply!3952 lt!504662 0)) (singletonSeq!1278 (apply!3949 (charsOf!1536 (apply!3952 lt!504662 (+ 0 1))) 0))))))))

(declare-fun bs!344210 () Bool)

(assert (= bs!344210 d!427938))

(assert (=> bs!344210 m!1696465))

(declare-fun m!1697597 () Bool)

(assert (=> bs!344210 m!1697597))

(assert (=> bs!344210 m!1696445))

(declare-fun m!1697599 () Bool)

(assert (=> bs!344210 m!1697599))

(assert (=> bs!344210 m!1697599))

(declare-fun m!1697601 () Bool)

(assert (=> bs!344210 m!1697601))

(declare-fun m!1697603 () Bool)

(assert (=> bs!344210 m!1697603))

(assert (=> bs!344210 m!1696305))

(assert (=> bs!344210 m!1696305))

(assert (=> bs!344210 m!1697603))

(declare-fun m!1697605 () Bool)

(assert (=> bs!344210 m!1697605))

(assert (=> bs!344210 m!1696447))

(assert (=> bs!344210 m!1696465))

(assert (=> bs!344210 m!1697597))

(assert (=> bs!344210 m!1697601))

(assert (=> b!1461118 d!427938))

(declare-fun d!427940 () Bool)

(assert (=> d!427940 (= (tail!2174 (drop!744 lt!505070 lt!505064)) (drop!744 lt!505070 (+ lt!505064 1)))))

(declare-fun lt!505521 () Unit!24235)

(declare-fun choose!8988 (List!15240 Int) Unit!24235)

(assert (=> d!427940 (= lt!505521 (choose!8988 lt!505070 lt!505064))))

(declare-fun e!932458 () Bool)

(assert (=> d!427940 e!932458))

(declare-fun res!661501 () Bool)

(assert (=> d!427940 (=> (not res!661501) (not e!932458))))

(assert (=> d!427940 (= res!661501 (>= lt!505064 0))))

(assert (=> d!427940 (= (lemmaDropTail!474 lt!505070 lt!505064) lt!505521)))

(declare-fun b!1461641 () Bool)

(assert (=> b!1461641 (= e!932458 (< lt!505064 (size!12414 lt!505070)))))

(assert (= (and d!427940 res!661501) b!1461641))

(assert (=> d!427940 m!1696463))

(assert (=> d!427940 m!1696463))

(assert (=> d!427940 m!1696487))

(assert (=> d!427940 m!1696485))

(declare-fun m!1697607 () Bool)

(assert (=> d!427940 m!1697607))

(assert (=> b!1461641 m!1697545))

(assert (=> b!1461118 d!427940))

(declare-fun d!427942 () Bool)

(assert (=> d!427942 (= (tail!2174 (drop!744 lt!505089 0)) (t!134383 (drop!744 lt!505089 0)))))

(assert (=> b!1461118 d!427942))

(declare-fun b!1461642 () Bool)

(declare-fun e!932460 () Int)

(declare-fun call!98331 () Int)

(assert (=> b!1461642 (= e!932460 call!98331)))

(declare-fun b!1461643 () Bool)

(declare-fun e!932459 () List!15240)

(assert (=> b!1461643 (= e!932459 lt!505089)))

(declare-fun b!1461644 () Bool)

(declare-fun e!932461 () Int)

(assert (=> b!1461644 (= e!932461 (- call!98331 0))))

(declare-fun b!1461645 () Bool)

(assert (=> b!1461645 (= e!932459 (drop!744 (t!134383 lt!505089) (- 0 1)))))

(declare-fun b!1461646 () Bool)

(declare-fun e!932463 () List!15240)

(assert (=> b!1461646 (= e!932463 e!932459)))

(declare-fun c!240889 () Bool)

(assert (=> b!1461646 (= c!240889 (<= 0 0))))

(declare-fun b!1461647 () Bool)

(assert (=> b!1461647 (= e!932461 0)))

(declare-fun b!1461648 () Bool)

(assert (=> b!1461648 (= e!932460 e!932461)))

(declare-fun c!240888 () Bool)

(assert (=> b!1461648 (= c!240888 (>= 0 call!98331))))

(declare-fun b!1461649 () Bool)

(declare-fun e!932462 () Bool)

(declare-fun lt!505522 () List!15240)

(assert (=> b!1461649 (= e!932462 (= (size!12414 lt!505522) e!932460))))

(declare-fun c!240887 () Bool)

(assert (=> b!1461649 (= c!240887 (<= 0 0))))

(declare-fun b!1461650 () Bool)

(assert (=> b!1461650 (= e!932463 Nil!15174)))

(declare-fun bm!98326 () Bool)

(assert (=> bm!98326 (= call!98331 (size!12414 lt!505089))))

(declare-fun d!427944 () Bool)

(assert (=> d!427944 e!932462))

(declare-fun res!661502 () Bool)

(assert (=> d!427944 (=> (not res!661502) (not e!932462))))

(assert (=> d!427944 (= res!661502 (= ((_ map implies) (content!2243 lt!505522) (content!2243 lt!505089)) ((as const (InoxSet Token!5008)) true)))))

(assert (=> d!427944 (= lt!505522 e!932463)))

(declare-fun c!240886 () Bool)

(assert (=> d!427944 (= c!240886 ((_ is Nil!15174) lt!505089))))

(assert (=> d!427944 (= (drop!744 lt!505089 0) lt!505522)))

(assert (= (and d!427944 c!240886) b!1461650))

(assert (= (and d!427944 (not c!240886)) b!1461646))

(assert (= (and b!1461646 c!240889) b!1461643))

(assert (= (and b!1461646 (not c!240889)) b!1461645))

(assert (= (and d!427944 res!661502) b!1461649))

(assert (= (and b!1461649 c!240887) b!1461642))

(assert (= (and b!1461649 (not c!240887)) b!1461648))

(assert (= (and b!1461648 c!240888) b!1461647))

(assert (= (and b!1461648 (not c!240888)) b!1461644))

(assert (= (or b!1461642 b!1461648 b!1461644) bm!98326))

(declare-fun m!1697609 () Bool)

(assert (=> b!1461645 m!1697609))

(declare-fun m!1697611 () Bool)

(assert (=> b!1461649 m!1697611))

(assert (=> bm!98326 m!1697591))

(declare-fun m!1697613 () Bool)

(assert (=> d!427944 m!1697613))

(assert (=> d!427944 m!1697595))

(assert (=> b!1461118 d!427944))

(declare-fun d!427946 () Bool)

(declare-fun lt!505525 () Token!5008)

(assert (=> d!427946 (= lt!505525 (apply!3953 (list!6073 lt!504662) 0))))

(declare-fun apply!3959 (Conc!5173 Int) Token!5008)

(assert (=> d!427946 (= lt!505525 (apply!3959 (c!240746 lt!504662) 0))))

(declare-fun e!932466 () Bool)

(assert (=> d!427946 e!932466))

(declare-fun res!661505 () Bool)

(assert (=> d!427946 (=> (not res!661505) (not e!932466))))

(assert (=> d!427946 (= res!661505 (<= 0 0))))

(assert (=> d!427946 (= (apply!3952 lt!504662 0) lt!505525)))

(declare-fun b!1461653 () Bool)

(assert (=> b!1461653 (= e!932466 (< 0 (size!12413 lt!504662)))))

(assert (= (and d!427946 res!661505) b!1461653))

(assert (=> d!427946 m!1696433))

(assert (=> d!427946 m!1696433))

(declare-fun m!1697615 () Bool)

(assert (=> d!427946 m!1697615))

(declare-fun m!1697617 () Bool)

(assert (=> d!427946 m!1697617))

(assert (=> b!1461653 m!1696423))

(assert (=> b!1461118 d!427946))

(declare-fun d!427948 () Bool)

(declare-fun lt!505527 () Bool)

(declare-fun e!932467 () Bool)

(assert (=> d!427948 (= lt!505527 e!932467)))

(declare-fun res!661508 () Bool)

(assert (=> d!427948 (=> (not res!661508) (not e!932467))))

(assert (=> d!427948 (= res!661508 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (apply!3952 lt!504662 0)))))) (list!6073 (singletonSeq!1277 (apply!3952 lt!504662 0)))))))

(declare-fun e!932468 () Bool)

(assert (=> d!427948 (= lt!505527 e!932468)))

(declare-fun res!661507 () Bool)

(assert (=> d!427948 (=> (not res!661507) (not e!932468))))

(declare-fun lt!505526 () tuple2!14244)

(assert (=> d!427948 (= res!661507 (= (size!12413 (_1!8008 lt!505526)) 1))))

(assert (=> d!427948 (= lt!505526 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (apply!3952 lt!504662 0)))))))

(assert (=> d!427948 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427948 (= (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (apply!3952 lt!504662 0)) lt!505527)))

(declare-fun b!1461654 () Bool)

(declare-fun res!661506 () Bool)

(assert (=> b!1461654 (=> (not res!661506) (not e!932468))))

(assert (=> b!1461654 (= res!661506 (= (apply!3952 (_1!8008 lt!505526) 0) (apply!3952 lt!504662 0)))))

(declare-fun b!1461655 () Bool)

(assert (=> b!1461655 (= e!932468 (isEmpty!9529 (_2!8008 lt!505526)))))

(declare-fun b!1461656 () Bool)

(assert (=> b!1461656 (= e!932467 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (apply!3952 lt!504662 0)))))))))

(assert (= (and d!427948 res!661507) b!1461654))

(assert (= (and b!1461654 res!661506) b!1461655))

(assert (= (and d!427948 res!661508) b!1461656))

(declare-fun m!1697619 () Bool)

(assert (=> d!427948 m!1697619))

(declare-fun m!1697621 () Bool)

(assert (=> d!427948 m!1697621))

(declare-fun m!1697623 () Bool)

(assert (=> d!427948 m!1697623))

(declare-fun m!1697625 () Bool)

(assert (=> d!427948 m!1697625))

(declare-fun m!1697627 () Bool)

(assert (=> d!427948 m!1697627))

(assert (=> d!427948 m!1696445))

(assert (=> d!427948 m!1697621))

(declare-fun m!1697629 () Bool)

(assert (=> d!427948 m!1697629))

(assert (=> d!427948 m!1696087))

(assert (=> d!427948 m!1697621))

(assert (=> d!427948 m!1697625))

(declare-fun m!1697631 () Bool)

(assert (=> b!1461654 m!1697631))

(declare-fun m!1697633 () Bool)

(assert (=> b!1461655 m!1697633))

(assert (=> b!1461656 m!1696445))

(assert (=> b!1461656 m!1697621))

(assert (=> b!1461656 m!1697621))

(assert (=> b!1461656 m!1697625))

(assert (=> b!1461656 m!1697625))

(assert (=> b!1461656 m!1697627))

(declare-fun m!1697635 () Bool)

(assert (=> b!1461656 m!1697635))

(assert (=> b!1461118 d!427948))

(declare-fun d!427950 () Bool)

(assert (=> d!427950 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!505083)))

(declare-fun lt!505528 () Unit!24235)

(assert (=> d!427950 (= lt!505528 (choose!8982 Lexer!2327 (rules!11668 thiss!10022) lt!505078 lt!505083))))

(assert (=> d!427950 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427950 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!505078 lt!505083) lt!505528)))

(declare-fun bs!344211 () Bool)

(assert (= bs!344211 d!427950))

(assert (=> bs!344211 m!1696493))

(declare-fun m!1697637 () Bool)

(assert (=> bs!344211 m!1697637))

(assert (=> bs!344211 m!1696087))

(assert (=> b!1461118 d!427950))

(declare-fun d!427952 () Bool)

(assert (=> d!427952 (= (tail!2174 (drop!744 lt!505070 lt!505064)) (t!134383 (drop!744 lt!505070 lt!505064)))))

(assert (=> b!1461118 d!427952))

(declare-fun d!427954 () Bool)

(assert (=> d!427954 (= (head!3012 (drop!744 lt!505063 lt!505066)) (h!20575 (drop!744 lt!505063 lt!505066)))))

(assert (=> b!1461118 d!427954))

(declare-fun d!427956 () Bool)

(assert (=> d!427956 (= (tail!2174 (drop!744 lt!505089 0)) (drop!744 lt!505089 (+ 0 1)))))

(declare-fun lt!505529 () Unit!24235)

(assert (=> d!427956 (= lt!505529 (choose!8988 lt!505089 0))))

(declare-fun e!932469 () Bool)

(assert (=> d!427956 e!932469))

(declare-fun res!661509 () Bool)

(assert (=> d!427956 (=> (not res!661509) (not e!932469))))

(assert (=> d!427956 (= res!661509 (>= 0 0))))

(assert (=> d!427956 (= (lemmaDropTail!474 lt!505089 0) lt!505529)))

(declare-fun b!1461657 () Bool)

(assert (=> b!1461657 (= e!932469 (< 0 (size!12414 lt!505089)))))

(assert (= (and d!427956 res!661509) b!1461657))

(assert (=> d!427956 m!1696479))

(assert (=> d!427956 m!1696479))

(assert (=> d!427956 m!1696481))

(assert (=> d!427956 m!1696451))

(declare-fun m!1697639 () Bool)

(assert (=> d!427956 m!1697639))

(assert (=> b!1461657 m!1697591))

(assert (=> b!1461118 d!427956))

(declare-fun d!427958 () Bool)

(declare-fun lt!505530 () Token!5008)

(assert (=> d!427958 (= lt!505530 (apply!3953 (list!6073 lt!504662) (+ 0 1)))))

(assert (=> d!427958 (= lt!505530 (apply!3959 (c!240746 lt!504662) (+ 0 1)))))

(declare-fun e!932470 () Bool)

(assert (=> d!427958 e!932470))

(declare-fun res!661510 () Bool)

(assert (=> d!427958 (=> (not res!661510) (not e!932470))))

(assert (=> d!427958 (= res!661510 (<= 0 (+ 0 1)))))

(assert (=> d!427958 (= (apply!3952 lt!504662 (+ 0 1)) lt!505530)))

(declare-fun b!1461658 () Bool)

(assert (=> b!1461658 (= e!932470 (< (+ 0 1) (size!12413 lt!504662)))))

(assert (= (and d!427958 res!661510) b!1461658))

(assert (=> d!427958 m!1696433))

(assert (=> d!427958 m!1696433))

(declare-fun m!1697641 () Bool)

(assert (=> d!427958 m!1697641))

(declare-fun m!1697643 () Bool)

(assert (=> d!427958 m!1697643))

(assert (=> b!1461658 m!1696423))

(assert (=> b!1461118 d!427958))

(declare-fun d!427960 () Bool)

(declare-fun lt!505533 () BalanceConc!10284)

(assert (=> d!427960 (= (list!6075 lt!505533) (originalCharacters!3535 (apply!3952 lt!504662 (+ 0 1))))))

(declare-fun dynLambda!6927 (Int TokenValue!2763) BalanceConc!10284)

(assert (=> d!427960 (= lt!505533 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (apply!3952 lt!504662 (+ 0 1))))) (value!85828 (apply!3952 lt!504662 (+ 0 1)))))))

(assert (=> d!427960 (= (charsOf!1536 (apply!3952 lt!504662 (+ 0 1))) lt!505533)))

(declare-fun b_lambda!45615 () Bool)

(assert (=> (not b_lambda!45615) (not d!427960)))

(declare-fun tb!82441 () Bool)

(declare-fun t!134409 () Bool)

(assert (=> (and b!1461246 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32)))) (toChars!3843 (transformation!2673 (rule!4446 (apply!3952 lt!504662 (+ 0 1)))))) t!134409) tb!82441))

(declare-fun b!1461663 () Bool)

(declare-fun e!932473 () Bool)

(declare-fun tp!411631 () Bool)

(declare-fun inv!20288 (Conc!5172) Bool)

(assert (=> b!1461663 (= e!932473 (and (inv!20288 (c!240744 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (apply!3952 lt!504662 (+ 0 1))))) (value!85828 (apply!3952 lt!504662 (+ 0 1)))))) tp!411631))))

(declare-fun result!99072 () Bool)

(declare-fun inv!20289 (BalanceConc!10284) Bool)

(assert (=> tb!82441 (= result!99072 (and (inv!20289 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (apply!3952 lt!504662 (+ 0 1))))) (value!85828 (apply!3952 lt!504662 (+ 0 1))))) e!932473))))

(assert (= tb!82441 b!1461663))

(declare-fun m!1697645 () Bool)

(assert (=> b!1461663 m!1697645))

(declare-fun m!1697647 () Bool)

(assert (=> tb!82441 m!1697647))

(assert (=> d!427960 t!134409))

(declare-fun b_and!99801 () Bool)

(assert (= b_and!99787 (and (=> t!134409 result!99072) b_and!99801)))

(declare-fun tb!82443 () Bool)

(declare-fun t!134411 () Bool)

(assert (=> (and b!1461252 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) (toChars!3843 (transformation!2673 (rule!4446 (apply!3952 lt!504662 (+ 0 1)))))) t!134411) tb!82443))

(declare-fun result!99076 () Bool)

(assert (= result!99076 result!99072))

(assert (=> d!427960 t!134411))

(declare-fun b_and!99803 () Bool)

(assert (= b_and!99791 (and (=> t!134411 result!99076) b_and!99803)))

(declare-fun m!1697649 () Bool)

(assert (=> d!427960 m!1697649))

(declare-fun m!1697651 () Bool)

(assert (=> d!427960 m!1697651))

(assert (=> b!1461118 d!427960))

(declare-fun d!427962 () Bool)

(declare-fun lt!505535 () Bool)

(declare-fun e!932474 () Bool)

(assert (=> d!427962 (= lt!505535 e!932474)))

(declare-fun res!661513 () Bool)

(assert (=> d!427962 (=> (not res!661513) (not e!932474))))

(assert (=> d!427962 (= res!661513 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (apply!3952 lt!504662 (+ 0 1))))))) (list!6073 (singletonSeq!1277 (apply!3952 lt!504662 (+ 0 1))))))))

(declare-fun e!932475 () Bool)

(assert (=> d!427962 (= lt!505535 e!932475)))

(declare-fun res!661512 () Bool)

(assert (=> d!427962 (=> (not res!661512) (not e!932475))))

(declare-fun lt!505534 () tuple2!14244)

(assert (=> d!427962 (= res!661512 (= (size!12413 (_1!8008 lt!505534)) 1))))

(assert (=> d!427962 (= lt!505534 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (apply!3952 lt!504662 (+ 0 1))))))))

(assert (=> d!427962 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427962 (= (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (apply!3952 lt!504662 (+ 0 1))) lt!505535)))

(declare-fun b!1461664 () Bool)

(declare-fun res!661511 () Bool)

(assert (=> b!1461664 (=> (not res!661511) (not e!932475))))

(assert (=> b!1461664 (= res!661511 (= (apply!3952 (_1!8008 lt!505534) 0) (apply!3952 lt!504662 (+ 0 1))))))

(declare-fun b!1461665 () Bool)

(assert (=> b!1461665 (= e!932475 (isEmpty!9529 (_2!8008 lt!505534)))))

(declare-fun b!1461666 () Bool)

(assert (=> b!1461666 (= e!932474 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (apply!3952 lt!504662 (+ 0 1))))))))))

(assert (= (and d!427962 res!661512) b!1461664))

(assert (= (and b!1461664 res!661511) b!1461665))

(assert (= (and d!427962 res!661513) b!1461666))

(declare-fun m!1697653 () Bool)

(assert (=> d!427962 m!1697653))

(declare-fun m!1697655 () Bool)

(assert (=> d!427962 m!1697655))

(declare-fun m!1697657 () Bool)

(assert (=> d!427962 m!1697657))

(declare-fun m!1697659 () Bool)

(assert (=> d!427962 m!1697659))

(declare-fun m!1697661 () Bool)

(assert (=> d!427962 m!1697661))

(assert (=> d!427962 m!1696447))

(assert (=> d!427962 m!1697655))

(declare-fun m!1697663 () Bool)

(assert (=> d!427962 m!1697663))

(assert (=> d!427962 m!1696087))

(assert (=> d!427962 m!1697655))

(assert (=> d!427962 m!1697659))

(declare-fun m!1697665 () Bool)

(assert (=> b!1461664 m!1697665))

(declare-fun m!1697667 () Bool)

(assert (=> b!1461665 m!1697667))

(assert (=> b!1461666 m!1696447))

(assert (=> b!1461666 m!1697655))

(assert (=> b!1461666 m!1697655))

(assert (=> b!1461666 m!1697659))

(assert (=> b!1461666 m!1697659))

(assert (=> b!1461666 m!1697661))

(declare-fun m!1697669 () Bool)

(assert (=> b!1461666 m!1697669))

(assert (=> b!1461118 d!427962))

(declare-fun d!427964 () Bool)

(assert (=> d!427964 (= (head!3012 (drop!744 lt!505091 0)) (h!20575 (drop!744 lt!505091 0)))))

(assert (=> b!1461118 d!427964))

(declare-fun b!1461667 () Bool)

(declare-fun e!932477 () Int)

(declare-fun call!98332 () Int)

(assert (=> b!1461667 (= e!932477 call!98332)))

(declare-fun b!1461668 () Bool)

(declare-fun e!932476 () List!15240)

(assert (=> b!1461668 (= e!932476 lt!505070)))

(declare-fun b!1461669 () Bool)

(declare-fun e!932478 () Int)

(assert (=> b!1461669 (= e!932478 (- call!98332 lt!505064))))

(declare-fun b!1461670 () Bool)

(assert (=> b!1461670 (= e!932476 (drop!744 (t!134383 lt!505070) (- lt!505064 1)))))

(declare-fun b!1461671 () Bool)

(declare-fun e!932480 () List!15240)

(assert (=> b!1461671 (= e!932480 e!932476)))

(declare-fun c!240893 () Bool)

(assert (=> b!1461671 (= c!240893 (<= lt!505064 0))))

(declare-fun b!1461672 () Bool)

(assert (=> b!1461672 (= e!932478 0)))

(declare-fun b!1461673 () Bool)

(assert (=> b!1461673 (= e!932477 e!932478)))

(declare-fun c!240892 () Bool)

(assert (=> b!1461673 (= c!240892 (>= lt!505064 call!98332))))

(declare-fun b!1461674 () Bool)

(declare-fun e!932479 () Bool)

(declare-fun lt!505536 () List!15240)

(assert (=> b!1461674 (= e!932479 (= (size!12414 lt!505536) e!932477))))

(declare-fun c!240891 () Bool)

(assert (=> b!1461674 (= c!240891 (<= lt!505064 0))))

(declare-fun b!1461675 () Bool)

(assert (=> b!1461675 (= e!932480 Nil!15174)))

(declare-fun bm!98327 () Bool)

(assert (=> bm!98327 (= call!98332 (size!12414 lt!505070))))

(declare-fun d!427966 () Bool)

(assert (=> d!427966 e!932479))

(declare-fun res!661514 () Bool)

(assert (=> d!427966 (=> (not res!661514) (not e!932479))))

(assert (=> d!427966 (= res!661514 (= ((_ map implies) (content!2243 lt!505536) (content!2243 lt!505070)) ((as const (InoxSet Token!5008)) true)))))

(assert (=> d!427966 (= lt!505536 e!932480)))

(declare-fun c!240890 () Bool)

(assert (=> d!427966 (= c!240890 ((_ is Nil!15174) lt!505070))))

(assert (=> d!427966 (= (drop!744 lt!505070 lt!505064) lt!505536)))

(assert (= (and d!427966 c!240890) b!1461675))

(assert (= (and d!427966 (not c!240890)) b!1461671))

(assert (= (and b!1461671 c!240893) b!1461668))

(assert (= (and b!1461671 (not c!240893)) b!1461670))

(assert (= (and d!427966 res!661514) b!1461674))

(assert (= (and b!1461674 c!240891) b!1461667))

(assert (= (and b!1461674 (not c!240891)) b!1461673))

(assert (= (and b!1461673 c!240892) b!1461672))

(assert (= (and b!1461673 (not c!240892)) b!1461669))

(assert (= (or b!1461667 b!1461673 b!1461669) bm!98327))

(declare-fun m!1697671 () Bool)

(assert (=> b!1461670 m!1697671))

(declare-fun m!1697673 () Bool)

(assert (=> b!1461674 m!1697673))

(assert (=> bm!98327 m!1697545))

(declare-fun m!1697675 () Bool)

(assert (=> d!427966 m!1697675))

(assert (=> d!427966 m!1697549))

(assert (=> b!1461118 d!427966))

(declare-fun b!1461676 () Bool)

(declare-fun e!932482 () Int)

(declare-fun call!98333 () Int)

(assert (=> b!1461676 (= e!932482 call!98333)))

(declare-fun b!1461677 () Bool)

(declare-fun e!932481 () List!15240)

(assert (=> b!1461677 (= e!932481 lt!505063)))

(declare-fun b!1461678 () Bool)

(declare-fun e!932483 () Int)

(assert (=> b!1461678 (= e!932483 (- call!98333 lt!505066))))

(declare-fun b!1461679 () Bool)

(assert (=> b!1461679 (= e!932481 (drop!744 (t!134383 lt!505063) (- lt!505066 1)))))

(declare-fun b!1461680 () Bool)

(declare-fun e!932485 () List!15240)

(assert (=> b!1461680 (= e!932485 e!932481)))

(declare-fun c!240897 () Bool)

(assert (=> b!1461680 (= c!240897 (<= lt!505066 0))))

(declare-fun b!1461681 () Bool)

(assert (=> b!1461681 (= e!932483 0)))

(declare-fun b!1461682 () Bool)

(assert (=> b!1461682 (= e!932482 e!932483)))

(declare-fun c!240896 () Bool)

(assert (=> b!1461682 (= c!240896 (>= lt!505066 call!98333))))

(declare-fun b!1461683 () Bool)

(declare-fun e!932484 () Bool)

(declare-fun lt!505537 () List!15240)

(assert (=> b!1461683 (= e!932484 (= (size!12414 lt!505537) e!932482))))

(declare-fun c!240895 () Bool)

(assert (=> b!1461683 (= c!240895 (<= lt!505066 0))))

(declare-fun b!1461684 () Bool)

(assert (=> b!1461684 (= e!932485 Nil!15174)))

(declare-fun bm!98328 () Bool)

(assert (=> bm!98328 (= call!98333 (size!12414 lt!505063))))

(declare-fun d!427968 () Bool)

(assert (=> d!427968 e!932484))

(declare-fun res!661515 () Bool)

(assert (=> d!427968 (=> (not res!661515) (not e!932484))))

(assert (=> d!427968 (= res!661515 (= ((_ map implies) (content!2243 lt!505537) (content!2243 lt!505063)) ((as const (InoxSet Token!5008)) true)))))

(assert (=> d!427968 (= lt!505537 e!932485)))

(declare-fun c!240894 () Bool)

(assert (=> d!427968 (= c!240894 ((_ is Nil!15174) lt!505063))))

(assert (=> d!427968 (= (drop!744 lt!505063 lt!505066) lt!505537)))

(assert (= (and d!427968 c!240894) b!1461684))

(assert (= (and d!427968 (not c!240894)) b!1461680))

(assert (= (and b!1461680 c!240897) b!1461677))

(assert (= (and b!1461680 (not c!240897)) b!1461679))

(assert (= (and d!427968 res!661515) b!1461683))

(assert (= (and b!1461683 c!240895) b!1461676))

(assert (= (and b!1461683 (not c!240895)) b!1461682))

(assert (= (and b!1461682 c!240896) b!1461681))

(assert (= (and b!1461682 (not c!240896)) b!1461678))

(assert (= (or b!1461676 b!1461682 b!1461678) bm!98328))

(declare-fun m!1697677 () Bool)

(assert (=> b!1461679 m!1697677))

(declare-fun m!1697679 () Bool)

(assert (=> b!1461683 m!1697679))

(assert (=> bm!98328 m!1697575))

(declare-fun m!1697681 () Bool)

(assert (=> d!427968 m!1697681))

(declare-fun m!1697683 () Bool)

(assert (=> d!427968 m!1697683))

(assert (=> b!1461118 d!427968))

(declare-fun d!427970 () Bool)

(declare-fun lt!505538 () Token!5008)

(assert (=> d!427970 (contains!2906 lt!505091 lt!505538)))

(declare-fun e!932486 () Token!5008)

(assert (=> d!427970 (= lt!505538 e!932486)))

(declare-fun c!240898 () Bool)

(assert (=> d!427970 (= c!240898 (= 0 0))))

(declare-fun e!932487 () Bool)

(assert (=> d!427970 e!932487))

(declare-fun res!661516 () Bool)

(assert (=> d!427970 (=> (not res!661516) (not e!932487))))

(assert (=> d!427970 (= res!661516 (<= 0 0))))

(assert (=> d!427970 (= (apply!3953 lt!505091 0) lt!505538)))

(declare-fun b!1461685 () Bool)

(assert (=> b!1461685 (= e!932487 (< 0 (size!12414 lt!505091)))))

(declare-fun b!1461686 () Bool)

(assert (=> b!1461686 (= e!932486 (head!3012 lt!505091))))

(declare-fun b!1461687 () Bool)

(assert (=> b!1461687 (= e!932486 (apply!3953 (tail!2174 lt!505091) (- 0 1)))))

(assert (= (and d!427970 res!661516) b!1461685))

(assert (= (and d!427970 c!240898) b!1461686))

(assert (= (and d!427970 (not c!240898)) b!1461687))

(declare-fun m!1697685 () Bool)

(assert (=> d!427970 m!1697685))

(assert (=> b!1461685 m!1697585))

(declare-fun m!1697687 () Bool)

(assert (=> b!1461686 m!1697687))

(declare-fun m!1697689 () Bool)

(assert (=> b!1461687 m!1697689))

(assert (=> b!1461687 m!1697689))

(declare-fun m!1697691 () Bool)

(assert (=> b!1461687 m!1697691))

(assert (=> b!1461118 d!427970))

(declare-fun d!427972 () Bool)

(assert (=> d!427972 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!505060)))

(declare-fun lt!505539 () Unit!24235)

(assert (=> d!427972 (= lt!505539 (choose!8982 Lexer!2327 (rules!11668 thiss!10022) lt!505082 lt!505060))))

(assert (=> d!427972 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427972 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!505082 lt!505060) lt!505539)))

(declare-fun bs!344212 () Bool)

(assert (= bs!344212 d!427972))

(assert (=> bs!344212 m!1696483))

(declare-fun m!1697693 () Bool)

(assert (=> bs!344212 m!1697693))

(assert (=> bs!344212 m!1696087))

(assert (=> b!1461118 d!427972))

(declare-fun d!427974 () Bool)

(declare-fun lt!505541 () Bool)

(declare-fun e!932488 () Bool)

(assert (=> d!427974 (= lt!505541 e!932488)))

(declare-fun res!661519 () Bool)

(assert (=> d!427974 (=> (not res!661519) (not e!932488))))

(assert (=> d!427974 (= res!661519 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!505060))))) (list!6073 (singletonSeq!1277 lt!505060))))))

(declare-fun e!932489 () Bool)

(assert (=> d!427974 (= lt!505541 e!932489)))

(declare-fun res!661518 () Bool)

(assert (=> d!427974 (=> (not res!661518) (not e!932489))))

(declare-fun lt!505540 () tuple2!14244)

(assert (=> d!427974 (= res!661518 (= (size!12413 (_1!8008 lt!505540)) 1))))

(assert (=> d!427974 (= lt!505540 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!505060))))))

(assert (=> d!427974 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!427974 (= (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!505060) lt!505541)))

(declare-fun b!1461688 () Bool)

(declare-fun res!661517 () Bool)

(assert (=> b!1461688 (=> (not res!661517) (not e!932489))))

(assert (=> b!1461688 (= res!661517 (= (apply!3952 (_1!8008 lt!505540) 0) lt!505060))))

(declare-fun b!1461689 () Bool)

(assert (=> b!1461689 (= e!932489 (isEmpty!9529 (_2!8008 lt!505540)))))

(declare-fun b!1461690 () Bool)

(assert (=> b!1461690 (= e!932488 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!505060))))))))

(assert (= (and d!427974 res!661518) b!1461688))

(assert (= (and b!1461688 res!661517) b!1461689))

(assert (= (and d!427974 res!661519) b!1461690))

(declare-fun m!1697695 () Bool)

(assert (=> d!427974 m!1697695))

(declare-fun m!1697697 () Bool)

(assert (=> d!427974 m!1697697))

(declare-fun m!1697699 () Bool)

(assert (=> d!427974 m!1697699))

(declare-fun m!1697701 () Bool)

(assert (=> d!427974 m!1697701))

(declare-fun m!1697703 () Bool)

(assert (=> d!427974 m!1697703))

(assert (=> d!427974 m!1697697))

(declare-fun m!1697705 () Bool)

(assert (=> d!427974 m!1697705))

(assert (=> d!427974 m!1696087))

(assert (=> d!427974 m!1697697))

(assert (=> d!427974 m!1697701))

(declare-fun m!1697707 () Bool)

(assert (=> b!1461688 m!1697707))

(declare-fun m!1697709 () Bool)

(assert (=> b!1461689 m!1697709))

(assert (=> b!1461690 m!1697697))

(assert (=> b!1461690 m!1697697))

(assert (=> b!1461690 m!1697701))

(assert (=> b!1461690 m!1697701))

(assert (=> b!1461690 m!1697703))

(declare-fun m!1697711 () Bool)

(assert (=> b!1461690 m!1697711))

(assert (=> b!1461118 d!427974))

(declare-fun d!427976 () Bool)

(assert (=> d!427976 (= (head!3012 (drop!744 lt!505063 lt!505066)) (apply!3953 lt!505063 lt!505066))))

(declare-fun lt!505542 () Unit!24235)

(assert (=> d!427976 (= lt!505542 (choose!8987 lt!505063 lt!505066))))

(declare-fun e!932490 () Bool)

(assert (=> d!427976 e!932490))

(declare-fun res!661520 () Bool)

(assert (=> d!427976 (=> (not res!661520) (not e!932490))))

(assert (=> d!427976 (= res!661520 (>= lt!505066 0))))

(assert (=> d!427976 (= (lemmaDropApply!494 lt!505063 lt!505066) lt!505542)))

(declare-fun b!1461691 () Bool)

(assert (=> b!1461691 (= e!932490 (< lt!505066 (size!12414 lt!505063)))))

(assert (= (and d!427976 res!661520) b!1461691))

(assert (=> d!427976 m!1696455))

(assert (=> d!427976 m!1696455))

(assert (=> d!427976 m!1696457))

(assert (=> d!427976 m!1696497))

(declare-fun m!1697713 () Bool)

(assert (=> d!427976 m!1697713))

(assert (=> b!1461691 m!1697575))

(assert (=> b!1461118 d!427976))

(declare-fun b!1461692 () Bool)

(declare-fun e!932492 () Int)

(declare-fun call!98334 () Int)

(assert (=> b!1461692 (= e!932492 call!98334)))

(declare-fun b!1461693 () Bool)

(declare-fun e!932491 () List!15240)

(assert (=> b!1461693 (= e!932491 lt!505091)))

(declare-fun b!1461694 () Bool)

(declare-fun e!932493 () Int)

(assert (=> b!1461694 (= e!932493 (- call!98334 0))))

(declare-fun b!1461695 () Bool)

(assert (=> b!1461695 (= e!932491 (drop!744 (t!134383 lt!505091) (- 0 1)))))

(declare-fun b!1461696 () Bool)

(declare-fun e!932495 () List!15240)

(assert (=> b!1461696 (= e!932495 e!932491)))

(declare-fun c!240902 () Bool)

(assert (=> b!1461696 (= c!240902 (<= 0 0))))

(declare-fun b!1461697 () Bool)

(assert (=> b!1461697 (= e!932493 0)))

(declare-fun b!1461698 () Bool)

(assert (=> b!1461698 (= e!932492 e!932493)))

(declare-fun c!240901 () Bool)

(assert (=> b!1461698 (= c!240901 (>= 0 call!98334))))

(declare-fun b!1461699 () Bool)

(declare-fun e!932494 () Bool)

(declare-fun lt!505543 () List!15240)

(assert (=> b!1461699 (= e!932494 (= (size!12414 lt!505543) e!932492))))

(declare-fun c!240900 () Bool)

(assert (=> b!1461699 (= c!240900 (<= 0 0))))

(declare-fun b!1461700 () Bool)

(assert (=> b!1461700 (= e!932495 Nil!15174)))

(declare-fun bm!98329 () Bool)

(assert (=> bm!98329 (= call!98334 (size!12414 lt!505091))))

(declare-fun d!427978 () Bool)

(assert (=> d!427978 e!932494))

(declare-fun res!661521 () Bool)

(assert (=> d!427978 (=> (not res!661521) (not e!932494))))

(assert (=> d!427978 (= res!661521 (= ((_ map implies) (content!2243 lt!505543) (content!2243 lt!505091)) ((as const (InoxSet Token!5008)) true)))))

(assert (=> d!427978 (= lt!505543 e!932495)))

(declare-fun c!240899 () Bool)

(assert (=> d!427978 (= c!240899 ((_ is Nil!15174) lt!505091))))

(assert (=> d!427978 (= (drop!744 lt!505091 0) lt!505543)))

(assert (= (and d!427978 c!240899) b!1461700))

(assert (= (and d!427978 (not c!240899)) b!1461696))

(assert (= (and b!1461696 c!240902) b!1461693))

(assert (= (and b!1461696 (not c!240902)) b!1461695))

(assert (= (and d!427978 res!661521) b!1461699))

(assert (= (and b!1461699 c!240900) b!1461692))

(assert (= (and b!1461699 (not c!240900)) b!1461698))

(assert (= (and b!1461698 c!240901) b!1461697))

(assert (= (and b!1461698 (not c!240901)) b!1461694))

(assert (= (or b!1461692 b!1461698 b!1461694) bm!98329))

(declare-fun m!1697715 () Bool)

(assert (=> b!1461695 m!1697715))

(declare-fun m!1697717 () Bool)

(assert (=> b!1461699 m!1697717))

(assert (=> bm!98329 m!1697585))

(declare-fun m!1697719 () Bool)

(assert (=> d!427978 m!1697719))

(declare-fun m!1697721 () Bool)

(assert (=> d!427978 m!1697721))

(assert (=> b!1461118 d!427978))

(declare-fun d!427980 () Bool)

(declare-fun e!932498 () Bool)

(assert (=> d!427980 e!932498))

(declare-fun res!661522 () Bool)

(assert (=> d!427980 (=> (not res!661522) (not e!932498))))

(declare-fun e!932496 () Bool)

(assert (=> d!427980 (= res!661522 e!932496)))

(declare-fun c!240903 () Bool)

(declare-fun lt!505544 () tuple2!14244)

(assert (=> d!427980 (= c!240903 (> (size!12413 (_1!8008 lt!505544)) 0))))

(assert (=> d!427980 (= lt!505544 (lexTailRecV2!471 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659)) (BalanceConc!10285 Empty!5172) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659)) (BalanceConc!10287 Empty!5173)))))

(assert (=> d!427980 (= (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659))) lt!505544)))

(declare-fun b!1461701 () Bool)

(declare-fun e!932497 () Bool)

(assert (=> b!1461701 (= e!932496 e!932497)))

(declare-fun res!661524 () Bool)

(assert (=> b!1461701 (= res!661524 (< (size!12415 (_2!8008 lt!505544)) (size!12415 (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659)))))))

(assert (=> b!1461701 (=> (not res!661524) (not e!932497))))

(declare-fun b!1461702 () Bool)

(declare-fun res!661523 () Bool)

(assert (=> b!1461702 (=> (not res!661523) (not e!932498))))

(assert (=> b!1461702 (= res!661523 (= (list!6073 (_1!8008 lt!505544)) (_1!8011 (lexList!716 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659)))))))))

(declare-fun b!1461703 () Bool)

(assert (=> b!1461703 (= e!932498 (= (list!6075 (_2!8008 lt!505544)) (_2!8011 (lexList!716 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659)))))))))

(declare-fun b!1461704 () Bool)

(assert (=> b!1461704 (= e!932496 (= (_2!8008 lt!505544) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659))))))

(declare-fun b!1461705 () Bool)

(assert (=> b!1461705 (= e!932497 (not (isEmpty!9519 (_1!8008 lt!505544))))))

(assert (= (and d!427980 c!240903) b!1461701))

(assert (= (and d!427980 (not c!240903)) b!1461704))

(assert (= (and b!1461701 res!661524) b!1461705))

(assert (= (and d!427980 res!661522) b!1461702))

(assert (= (and b!1461702 res!661523) b!1461703))

(declare-fun m!1697723 () Bool)

(assert (=> b!1461702 m!1697723))

(assert (=> b!1461702 m!1696347))

(declare-fun m!1697725 () Bool)

(assert (=> b!1461702 m!1697725))

(assert (=> b!1461702 m!1697725))

(declare-fun m!1697727 () Bool)

(assert (=> b!1461702 m!1697727))

(declare-fun m!1697729 () Bool)

(assert (=> b!1461703 m!1697729))

(assert (=> b!1461703 m!1696347))

(assert (=> b!1461703 m!1697725))

(assert (=> b!1461703 m!1697725))

(assert (=> b!1461703 m!1697727))

(declare-fun m!1697731 () Bool)

(assert (=> b!1461705 m!1697731))

(declare-fun m!1697733 () Bool)

(assert (=> b!1461701 m!1697733))

(assert (=> b!1461701 m!1696347))

(declare-fun m!1697735 () Bool)

(assert (=> b!1461701 m!1697735))

(declare-fun m!1697737 () Bool)

(assert (=> d!427980 m!1697737))

(assert (=> d!427980 m!1696347))

(assert (=> d!427980 m!1696347))

(declare-fun m!1697739 () Bool)

(assert (=> d!427980 m!1697739))

(assert (=> d!427732 d!427980))

(declare-fun d!427982 () Bool)

(declare-fun lt!505545 () BalanceConc!10284)

(assert (=> d!427982 (= (list!6075 lt!505545) (printList!725 Lexer!2327 (list!6073 (singletonSeq!1277 lt!504659))))))

(assert (=> d!427982 (= lt!505545 (printTailRec!697 Lexer!2327 (singletonSeq!1277 lt!504659) 0 (BalanceConc!10285 Empty!5172)))))

(assert (=> d!427982 (= (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659)) lt!505545)))

(declare-fun bs!344213 () Bool)

(assert (= bs!344213 d!427982))

(declare-fun m!1697741 () Bool)

(assert (=> bs!344213 m!1697741))

(assert (=> bs!344213 m!1696343))

(assert (=> bs!344213 m!1696345))

(assert (=> bs!344213 m!1696345))

(declare-fun m!1697743 () Bool)

(assert (=> bs!344213 m!1697743))

(assert (=> bs!344213 m!1696343))

(declare-fun m!1697745 () Bool)

(assert (=> bs!344213 m!1697745))

(assert (=> d!427732 d!427982))

(declare-fun d!427984 () Bool)

(declare-fun e!932501 () Bool)

(assert (=> d!427984 e!932501))

(declare-fun res!661527 () Bool)

(assert (=> d!427984 (=> (not res!661527) (not e!932501))))

(declare-fun lt!505548 () BalanceConc!10286)

(assert (=> d!427984 (= res!661527 (= (list!6073 lt!505548) (Cons!15174 lt!504659 Nil!15174)))))

(declare-fun singleton!537 (Token!5008) BalanceConc!10286)

(assert (=> d!427984 (= lt!505548 (singleton!537 lt!504659))))

(assert (=> d!427984 (= (singletonSeq!1277 lt!504659) lt!505548)))

(declare-fun b!1461708 () Bool)

(assert (=> b!1461708 (= e!932501 (isBalanced!1550 (c!240746 lt!505548)))))

(assert (= (and d!427984 res!661527) b!1461708))

(declare-fun m!1697747 () Bool)

(assert (=> d!427984 m!1697747))

(declare-fun m!1697749 () Bool)

(assert (=> d!427984 m!1697749))

(declare-fun m!1697751 () Bool)

(assert (=> b!1461708 m!1697751))

(assert (=> d!427732 d!427984))

(declare-fun d!427986 () Bool)

(assert (=> d!427986 (= (isEmpty!9528 (rules!11668 thiss!10022)) ((_ is Nil!15175) (rules!11668 thiss!10022)))))

(assert (=> d!427732 d!427986))

(declare-fun d!427988 () Bool)

(assert (=> d!427988 (= (list!6073 (singletonSeq!1277 lt!504659)) (list!6077 (c!240746 (singletonSeq!1277 lt!504659))))))

(declare-fun bs!344214 () Bool)

(assert (= bs!344214 d!427988))

(declare-fun m!1697753 () Bool)

(assert (=> bs!344214 m!1697753))

(assert (=> d!427732 d!427988))

(declare-fun d!427990 () Bool)

(declare-fun lt!505551 () Int)

(assert (=> d!427990 (= lt!505551 (size!12414 (list!6073 (_1!8008 lt!504960))))))

(assert (=> d!427990 (= lt!505551 (size!12417 (c!240746 (_1!8008 lt!504960))))))

(assert (=> d!427990 (= (size!12413 (_1!8008 lt!504960)) lt!505551)))

(declare-fun bs!344215 () Bool)

(assert (= bs!344215 d!427990))

(declare-fun m!1697755 () Bool)

(assert (=> bs!344215 m!1697755))

(assert (=> bs!344215 m!1697755))

(declare-fun m!1697757 () Bool)

(assert (=> bs!344215 m!1697757))

(declare-fun m!1697759 () Bool)

(assert (=> bs!344215 m!1697759))

(assert (=> d!427732 d!427990))

(declare-fun d!427992 () Bool)

(assert (=> d!427992 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659))))) (list!6077 (c!240746 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659)))))))))

(declare-fun bs!344216 () Bool)

(assert (= bs!344216 d!427992))

(declare-fun m!1697761 () Bool)

(assert (=> bs!344216 m!1697761))

(assert (=> d!427732 d!427992))

(assert (=> d!427778 d!427986))

(declare-fun d!427994 () Bool)

(assert (=> d!427994 (= (isEmpty!9528 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))) ((_ is Nil!15175) (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))))))

(assert (=> d!427674 d!427994))

(declare-fun d!427996 () Bool)

(declare-fun lt!505552 () Int)

(assert (=> d!427996 (= lt!505552 (size!12414 (list!6073 lt!504662)))))

(assert (=> d!427996 (= lt!505552 (size!12417 (c!240746 lt!504662)))))

(assert (=> d!427996 (= (size!12413 lt!504662) lt!505552)))

(declare-fun bs!344217 () Bool)

(assert (= bs!344217 d!427996))

(assert (=> bs!344217 m!1696433))

(assert (=> bs!344217 m!1696433))

(declare-fun m!1697763 () Bool)

(assert (=> bs!344217 m!1697763))

(declare-fun m!1697765 () Bool)

(assert (=> bs!344217 m!1697765))

(assert (=> b!1461122 d!427996))

(declare-fun d!427998 () Bool)

(assert (=> d!427998 (= (list!6073 lt!504964) (list!6077 (c!240746 lt!504964)))))

(declare-fun bs!344218 () Bool)

(assert (= bs!344218 d!427998))

(declare-fun m!1697767 () Bool)

(assert (=> bs!344218 m!1697767))

(assert (=> b!1461048 d!427998))

(declare-fun b!1461712 () Bool)

(declare-fun e!932503 () Bool)

(declare-fun lt!505553 () List!15240)

(assert (=> b!1461712 (= e!932503 (or (not (= (list!6073 (tokens!2100 other!32)) Nil!15174)) (= lt!505553 (list!6073 (tokens!2100 thiss!10022)))))))

(declare-fun b!1461711 () Bool)

(declare-fun res!661529 () Bool)

(assert (=> b!1461711 (=> (not res!661529) (not e!932503))))

(assert (=> b!1461711 (= res!661529 (= (size!12414 lt!505553) (+ (size!12414 (list!6073 (tokens!2100 thiss!10022))) (size!12414 (list!6073 (tokens!2100 other!32))))))))

(declare-fun b!1461709 () Bool)

(declare-fun e!932502 () List!15240)

(assert (=> b!1461709 (= e!932502 (list!6073 (tokens!2100 other!32)))))

(declare-fun d!428000 () Bool)

(assert (=> d!428000 e!932503))

(declare-fun res!661528 () Bool)

(assert (=> d!428000 (=> (not res!661528) (not e!932503))))

(assert (=> d!428000 (= res!661528 (= (content!2243 lt!505553) ((_ map or) (content!2243 (list!6073 (tokens!2100 thiss!10022))) (content!2243 (list!6073 (tokens!2100 other!32))))))))

(assert (=> d!428000 (= lt!505553 e!932502)))

(declare-fun c!240904 () Bool)

(assert (=> d!428000 (= c!240904 ((_ is Nil!15174) (list!6073 (tokens!2100 thiss!10022))))))

(assert (=> d!428000 (= (++!4080 (list!6073 (tokens!2100 thiss!10022)) (list!6073 (tokens!2100 other!32))) lt!505553)))

(declare-fun b!1461710 () Bool)

(assert (=> b!1461710 (= e!932502 (Cons!15174 (h!20575 (list!6073 (tokens!2100 thiss!10022))) (++!4080 (t!134383 (list!6073 (tokens!2100 thiss!10022))) (list!6073 (tokens!2100 other!32)))))))

(assert (= (and d!428000 c!240904) b!1461709))

(assert (= (and d!428000 (not c!240904)) b!1461710))

(assert (= (and d!428000 res!661528) b!1461711))

(assert (= (and b!1461711 res!661529) b!1461712))

(declare-fun m!1697769 () Bool)

(assert (=> b!1461711 m!1697769))

(assert (=> b!1461711 m!1695647))

(declare-fun m!1697771 () Bool)

(assert (=> b!1461711 m!1697771))

(assert (=> b!1461711 m!1695651))

(declare-fun m!1697773 () Bool)

(assert (=> b!1461711 m!1697773))

(declare-fun m!1697775 () Bool)

(assert (=> d!428000 m!1697775))

(assert (=> d!428000 m!1695647))

(declare-fun m!1697777 () Bool)

(assert (=> d!428000 m!1697777))

(assert (=> d!428000 m!1695651))

(declare-fun m!1697779 () Bool)

(assert (=> d!428000 m!1697779))

(assert (=> b!1461710 m!1695651))

(declare-fun m!1697781 () Bool)

(assert (=> b!1461710 m!1697781))

(assert (=> b!1461048 d!428000))

(assert (=> b!1461048 d!427726))

(assert (=> b!1461048 d!427720))

(declare-fun d!428002 () Bool)

(declare-fun res!661536 () Bool)

(declare-fun e!932506 () Bool)

(assert (=> d!428002 (=> (not res!661536) (not e!932506))))

(assert (=> d!428002 (= res!661536 (= (csize!10576 (c!240746 (tokens!2100 thiss!10022))) (+ (size!12417 (left!12896 (c!240746 (tokens!2100 thiss!10022)))) (size!12417 (right!13226 (c!240746 (tokens!2100 thiss!10022)))))))))

(assert (=> d!428002 (= (inv!20280 (c!240746 (tokens!2100 thiss!10022))) e!932506)))

(declare-fun b!1461719 () Bool)

(declare-fun res!661537 () Bool)

(assert (=> b!1461719 (=> (not res!661537) (not e!932506))))

(assert (=> b!1461719 (= res!661537 (and (not (= (left!12896 (c!240746 (tokens!2100 thiss!10022))) Empty!5173)) (not (= (right!13226 (c!240746 (tokens!2100 thiss!10022))) Empty!5173))))))

(declare-fun b!1461720 () Bool)

(declare-fun res!661538 () Bool)

(assert (=> b!1461720 (=> (not res!661538) (not e!932506))))

(assert (=> b!1461720 (= res!661538 (= (cheight!5384 (c!240746 (tokens!2100 thiss!10022))) (+ (max!0 (height!774 (left!12896 (c!240746 (tokens!2100 thiss!10022)))) (height!774 (right!13226 (c!240746 (tokens!2100 thiss!10022))))) 1)))))

(declare-fun b!1461721 () Bool)

(assert (=> b!1461721 (= e!932506 (<= 0 (cheight!5384 (c!240746 (tokens!2100 thiss!10022)))))))

(assert (= (and d!428002 res!661536) b!1461719))

(assert (= (and b!1461719 res!661537) b!1461720))

(assert (= (and b!1461720 res!661538) b!1461721))

(declare-fun m!1697783 () Bool)

(assert (=> d!428002 m!1697783))

(declare-fun m!1697785 () Bool)

(assert (=> d!428002 m!1697785))

(assert (=> b!1461720 m!1697371))

(assert (=> b!1461720 m!1697373))

(assert (=> b!1461720 m!1697371))

(assert (=> b!1461720 m!1697373))

(declare-fun m!1697787 () Bool)

(assert (=> b!1461720 m!1697787))

(assert (=> b!1461210 d!428002))

(declare-fun d!428004 () Bool)

(assert (=> d!428004 (= (inv!20271 (tag!2937 (h!20576 (rules!11668 other!32)))) (= (mod (str.len (value!85827 (tag!2937 (h!20576 (rules!11668 other!32))))) 2) 0))))

(assert (=> b!1461245 d!428004))

(declare-fun d!428006 () Bool)

(declare-fun res!661541 () Bool)

(declare-fun e!932509 () Bool)

(assert (=> d!428006 (=> (not res!661541) (not e!932509))))

(declare-fun semiInverseModEq!1007 (Int Int) Bool)

(assert (=> d!428006 (= res!661541 (semiInverseModEq!1007 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32)))) (toValue!3984 (transformation!2673 (h!20576 (rules!11668 other!32))))))))

(assert (=> d!428006 (= (inv!20285 (transformation!2673 (h!20576 (rules!11668 other!32)))) e!932509)))

(declare-fun b!1461724 () Bool)

(declare-fun equivClasses!966 (Int Int) Bool)

(assert (=> b!1461724 (= e!932509 (equivClasses!966 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32)))) (toValue!3984 (transformation!2673 (h!20576 (rules!11668 other!32))))))))

(assert (= (and d!428006 res!661541) b!1461724))

(declare-fun m!1697789 () Bool)

(assert (=> d!428006 m!1697789))

(declare-fun m!1697791 () Bool)

(assert (=> b!1461724 m!1697791))

(assert (=> b!1461245 d!428006))

(declare-fun d!428008 () Bool)

(declare-fun c!240907 () Bool)

(assert (=> d!428008 (= c!240907 ((_ is Nil!15172) lt!504703))))

(declare-fun e!932512 () (InoxSet C!8152))

(assert (=> d!428008 (= (content!2242 lt!504703) e!932512)))

(declare-fun b!1461729 () Bool)

(assert (=> b!1461729 (= e!932512 ((as const (Array C!8152 Bool)) false))))

(declare-fun b!1461730 () Bool)

(assert (=> b!1461730 (= e!932512 ((_ map or) (store ((as const (Array C!8152 Bool)) false) (h!20573 lt!504703) true) (content!2242 (t!134381 lt!504703))))))

(assert (= (and d!428008 c!240907) b!1461729))

(assert (= (and d!428008 (not c!240907)) b!1461730))

(declare-fun m!1697793 () Bool)

(assert (=> b!1461730 m!1697793))

(declare-fun m!1697795 () Bool)

(assert (=> b!1461730 m!1697795))

(assert (=> d!427672 d!428008))

(declare-fun d!428010 () Bool)

(declare-fun c!240908 () Bool)

(assert (=> d!428010 (= c!240908 ((_ is Nil!15172) (printList!725 Lexer!2327 lt!504650)))))

(declare-fun e!932513 () (InoxSet C!8152))

(assert (=> d!428010 (= (content!2242 (printList!725 Lexer!2327 lt!504650)) e!932513)))

(declare-fun b!1461731 () Bool)

(assert (=> b!1461731 (= e!932513 ((as const (Array C!8152 Bool)) false))))

(declare-fun b!1461732 () Bool)

(assert (=> b!1461732 (= e!932513 ((_ map or) (store ((as const (Array C!8152 Bool)) false) (h!20573 (printList!725 Lexer!2327 lt!504650)) true) (content!2242 (t!134381 (printList!725 Lexer!2327 lt!504650)))))))

(assert (= (and d!428010 c!240908) b!1461731))

(assert (= (and d!428010 (not c!240908)) b!1461732))

(declare-fun m!1697797 () Bool)

(assert (=> b!1461732 m!1697797))

(declare-fun m!1697799 () Bool)

(assert (=> b!1461732 m!1697799))

(assert (=> d!427672 d!428010))

(declare-fun d!428012 () Bool)

(declare-fun c!240909 () Bool)

(assert (=> d!428012 (= c!240909 ((_ is Nil!15172) (printList!725 Lexer!2327 lt!504657)))))

(declare-fun e!932514 () (InoxSet C!8152))

(assert (=> d!428012 (= (content!2242 (printList!725 Lexer!2327 lt!504657)) e!932514)))

(declare-fun b!1461733 () Bool)

(assert (=> b!1461733 (= e!932514 ((as const (Array C!8152 Bool)) false))))

(declare-fun b!1461734 () Bool)

(assert (=> b!1461734 (= e!932514 ((_ map or) (store ((as const (Array C!8152 Bool)) false) (h!20573 (printList!725 Lexer!2327 lt!504657)) true) (content!2242 (t!134381 (printList!725 Lexer!2327 lt!504657)))))))

(assert (= (and d!428012 c!240909) b!1461733))

(assert (= (and d!428012 (not c!240909)) b!1461734))

(declare-fun m!1697801 () Bool)

(assert (=> b!1461734 m!1697801))

(declare-fun m!1697803 () Bool)

(assert (=> b!1461734 m!1697803))

(assert (=> d!427672 d!428012))

(declare-fun b!1461736 () Bool)

(declare-fun e!932515 () List!15238)

(assert (=> b!1461736 (= e!932515 (Cons!15172 (h!20573 (list!6075 (charsOf!1536 (h!20575 lt!504657)))) (++!4081 (t!134381 (list!6075 (charsOf!1536 (h!20575 lt!504657)))) (printList!725 Lexer!2327 (t!134383 lt!504657)))))))

(declare-fun b!1461738 () Bool)

(declare-fun e!932516 () Bool)

(declare-fun lt!505554 () List!15238)

(assert (=> b!1461738 (= e!932516 (or (not (= (printList!725 Lexer!2327 (t!134383 lt!504657)) Nil!15172)) (= lt!505554 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))))

(declare-fun b!1461737 () Bool)

(declare-fun res!661542 () Bool)

(assert (=> b!1461737 (=> (not res!661542) (not e!932516))))

(assert (=> b!1461737 (= res!661542 (= (size!12411 lt!505554) (+ (size!12411 (list!6075 (charsOf!1536 (h!20575 lt!504657)))) (size!12411 (printList!725 Lexer!2327 (t!134383 lt!504657))))))))

(declare-fun b!1461735 () Bool)

(assert (=> b!1461735 (= e!932515 (printList!725 Lexer!2327 (t!134383 lt!504657)))))

(declare-fun d!428014 () Bool)

(assert (=> d!428014 e!932516))

(declare-fun res!661543 () Bool)

(assert (=> d!428014 (=> (not res!661543) (not e!932516))))

(assert (=> d!428014 (= res!661543 (= (content!2242 lt!505554) ((_ map or) (content!2242 (list!6075 (charsOf!1536 (h!20575 lt!504657)))) (content!2242 (printList!725 Lexer!2327 (t!134383 lt!504657))))))))

(assert (=> d!428014 (= lt!505554 e!932515)))

(declare-fun c!240910 () Bool)

(assert (=> d!428014 (= c!240910 ((_ is Nil!15172) (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))

(assert (=> d!428014 (= (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (printList!725 Lexer!2327 (t!134383 lt!504657))) lt!505554)))

(assert (= (and d!428014 c!240910) b!1461735))

(assert (= (and d!428014 (not c!240910)) b!1461736))

(assert (= (and d!428014 res!661543) b!1461737))

(assert (= (and b!1461737 res!661542) b!1461738))

(assert (=> b!1461736 m!1696271))

(declare-fun m!1697805 () Bool)

(assert (=> b!1461736 m!1697805))

(declare-fun m!1697807 () Bool)

(assert (=> b!1461737 m!1697807))

(assert (=> b!1461737 m!1696219))

(declare-fun m!1697809 () Bool)

(assert (=> b!1461737 m!1697809))

(assert (=> b!1461737 m!1696271))

(declare-fun m!1697811 () Bool)

(assert (=> b!1461737 m!1697811))

(declare-fun m!1697813 () Bool)

(assert (=> d!428014 m!1697813))

(assert (=> d!428014 m!1696219))

(declare-fun m!1697815 () Bool)

(assert (=> d!428014 m!1697815))

(assert (=> d!428014 m!1696271))

(declare-fun m!1697817 () Bool)

(assert (=> d!428014 m!1697817))

(assert (=> b!1461018 d!428014))

(declare-fun d!428016 () Bool)

(declare-fun list!6081 (Conc!5172) List!15238)

(assert (=> d!428016 (= (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6081 (c!240744 (charsOf!1536 (h!20575 lt!504657)))))))

(declare-fun bs!344219 () Bool)

(assert (= bs!344219 d!428016))

(declare-fun m!1697819 () Bool)

(assert (=> bs!344219 m!1697819))

(assert (=> b!1461018 d!428016))

(declare-fun d!428018 () Bool)

(declare-fun lt!505555 () BalanceConc!10284)

(assert (=> d!428018 (= (list!6075 lt!505555) (originalCharacters!3535 (h!20575 lt!504657)))))

(assert (=> d!428018 (= lt!505555 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504657)))) (value!85828 (h!20575 lt!504657))))))

(assert (=> d!428018 (= (charsOf!1536 (h!20575 lt!504657)) lt!505555)))

(declare-fun b_lambda!45617 () Bool)

(assert (=> (not b_lambda!45617) (not d!428018)))

(declare-fun tb!82445 () Bool)

(declare-fun t!134414 () Bool)

(assert (=> (and b!1461246 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504657))))) t!134414) tb!82445))

(declare-fun b!1461739 () Bool)

(declare-fun e!932517 () Bool)

(declare-fun tp!411632 () Bool)

(assert (=> b!1461739 (= e!932517 (and (inv!20288 (c!240744 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504657)))) (value!85828 (h!20575 lt!504657))))) tp!411632))))

(declare-fun result!99078 () Bool)

(assert (=> tb!82445 (= result!99078 (and (inv!20289 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504657)))) (value!85828 (h!20575 lt!504657)))) e!932517))))

(assert (= tb!82445 b!1461739))

(declare-fun m!1697821 () Bool)

(assert (=> b!1461739 m!1697821))

(declare-fun m!1697823 () Bool)

(assert (=> tb!82445 m!1697823))

(assert (=> d!428018 t!134414))

(declare-fun b_and!99805 () Bool)

(assert (= b_and!99801 (and (=> t!134414 result!99078) b_and!99805)))

(declare-fun t!134416 () Bool)

(declare-fun tb!82447 () Bool)

(assert (=> (and b!1461252 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504657))))) t!134416) tb!82447))

(declare-fun result!99080 () Bool)

(assert (= result!99080 result!99078))

(assert (=> d!428018 t!134416))

(declare-fun b_and!99807 () Bool)

(assert (= b_and!99803 (and (=> t!134416 result!99080) b_and!99807)))

(declare-fun m!1697825 () Bool)

(assert (=> d!428018 m!1697825))

(declare-fun m!1697827 () Bool)

(assert (=> d!428018 m!1697827))

(assert (=> b!1461018 d!428018))

(declare-fun d!428020 () Bool)

(declare-fun c!240911 () Bool)

(assert (=> d!428020 (= c!240911 ((_ is Cons!15174) (t!134383 lt!504657)))))

(declare-fun e!932518 () List!15238)

(assert (=> d!428020 (= (printList!725 Lexer!2327 (t!134383 lt!504657)) e!932518)))

(declare-fun b!1461740 () Bool)

(assert (=> b!1461740 (= e!932518 (++!4081 (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504657)))) (printList!725 Lexer!2327 (t!134383 (t!134383 lt!504657)))))))

(declare-fun b!1461741 () Bool)

(assert (=> b!1461741 (= e!932518 Nil!15172)))

(assert (= (and d!428020 c!240911) b!1461740))

(assert (= (and d!428020 (not c!240911)) b!1461741))

(assert (=> b!1461740 m!1696197))

(assert (=> b!1461740 m!1696197))

(declare-fun m!1697829 () Bool)

(assert (=> b!1461740 m!1697829))

(declare-fun m!1697831 () Bool)

(assert (=> b!1461740 m!1697831))

(assert (=> b!1461740 m!1697829))

(assert (=> b!1461740 m!1697831))

(declare-fun m!1697833 () Bool)

(assert (=> b!1461740 m!1697833))

(assert (=> b!1461018 d!428020))

(declare-fun d!428022 () Bool)

(assert (=> d!428022 (= (isEmpty!9527 (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) lt!504699)))) ((_ is Nil!15172) (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) lt!504699)))))))

(assert (=> b!1460923 d!428022))

(declare-fun d!428024 () Bool)

(assert (=> d!428024 (= (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) lt!504699))) (list!6081 (c!240744 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) lt!504699)))))))

(declare-fun bs!344220 () Bool)

(assert (= bs!344220 d!428024))

(declare-fun m!1697835 () Bool)

(assert (=> bs!344220 m!1697835))

(assert (=> b!1460923 d!428024))

(assert (=> b!1460923 d!427828))

(declare-fun d!428026 () Bool)

(declare-fun c!240914 () Bool)

(assert (=> d!428026 (= c!240914 ((_ is Nil!15174) lt!504983))))

(declare-fun e!932521 () (InoxSet Token!5008))

(assert (=> d!428026 (= (content!2243 lt!504983) e!932521)))

(declare-fun b!1461746 () Bool)

(assert (=> b!1461746 (= e!932521 ((as const (Array Token!5008 Bool)) false))))

(declare-fun b!1461747 () Bool)

(assert (=> b!1461747 (= e!932521 ((_ map or) (store ((as const (Array Token!5008 Bool)) false) (h!20575 lt!504983) true) (content!2243 (t!134383 lt!504983))))))

(assert (= (and d!428026 c!240914) b!1461746))

(assert (= (and d!428026 (not c!240914)) b!1461747))

(declare-fun m!1697837 () Bool)

(assert (=> b!1461747 m!1697837))

(declare-fun m!1697839 () Bool)

(assert (=> b!1461747 m!1697839))

(assert (=> d!427744 d!428026))

(declare-fun d!428028 () Bool)

(declare-fun c!240915 () Bool)

(assert (=> d!428028 (= c!240915 ((_ is Nil!15174) lt!504650))))

(declare-fun e!932522 () (InoxSet Token!5008))

(assert (=> d!428028 (= (content!2243 lt!504650) e!932522)))

(declare-fun b!1461748 () Bool)

(assert (=> b!1461748 (= e!932522 ((as const (Array Token!5008 Bool)) false))))

(declare-fun b!1461749 () Bool)

(assert (=> b!1461749 (= e!932522 ((_ map or) (store ((as const (Array Token!5008 Bool)) false) (h!20575 lt!504650) true) (content!2243 (t!134383 lt!504650))))))

(assert (= (and d!428028 c!240915) b!1461748))

(assert (= (and d!428028 (not c!240915)) b!1461749))

(declare-fun m!1697841 () Bool)

(assert (=> b!1461749 m!1697841))

(declare-fun m!1697843 () Bool)

(assert (=> b!1461749 m!1697843))

(assert (=> d!427744 d!428028))

(declare-fun d!428030 () Bool)

(declare-fun c!240916 () Bool)

(assert (=> d!428030 (= c!240916 ((_ is Nil!15174) lt!504657))))

(declare-fun e!932523 () (InoxSet Token!5008))

(assert (=> d!428030 (= (content!2243 lt!504657) e!932523)))

(declare-fun b!1461750 () Bool)

(assert (=> b!1461750 (= e!932523 ((as const (Array Token!5008 Bool)) false))))

(declare-fun b!1461751 () Bool)

(assert (=> b!1461751 (= e!932523 ((_ map or) (store ((as const (Array Token!5008 Bool)) false) (h!20575 lt!504657) true) (content!2243 (t!134383 lt!504657))))))

(assert (= (and d!428030 c!240916) b!1461750))

(assert (= (and d!428030 (not c!240916)) b!1461751))

(declare-fun m!1697845 () Bool)

(assert (=> b!1461751 m!1697845))

(declare-fun m!1697847 () Bool)

(assert (=> b!1461751 m!1697847))

(assert (=> d!427744 d!428030))

(declare-fun d!428032 () Bool)

(declare-fun lt!505556 () Bool)

(assert (=> d!428032 (= lt!505556 (isEmpty!9527 (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 lt!504657)))))))))

(assert (=> d!428032 (= lt!505556 (isEmpty!9531 (c!240744 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 lt!504657)))))))))

(assert (=> d!428032 (= (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 lt!504657))))) lt!505556)))

(declare-fun bs!344221 () Bool)

(assert (= bs!344221 d!428032))

(declare-fun m!1697849 () Bool)

(assert (=> bs!344221 m!1697849))

(assert (=> bs!344221 m!1697849))

(declare-fun m!1697851 () Bool)

(assert (=> bs!344221 m!1697851))

(declare-fun m!1697853 () Bool)

(assert (=> bs!344221 m!1697853))

(assert (=> b!1461017 d!428032))

(assert (=> b!1461017 d!427898))

(assert (=> b!1461017 d!427916))

(assert (=> b!1461017 d!427904))

(declare-fun d!428034 () Bool)

(declare-fun lt!505558 () Bool)

(declare-fun e!932524 () Bool)

(assert (=> d!428034 (= lt!505558 e!932524)))

(declare-fun res!661546 () Bool)

(assert (=> d!428034 (=> (not res!661546) (not e!932524))))

(assert (=> d!428034 (= res!661546 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 (t!134383 lt!504655))))))) (list!6073 (singletonSeq!1277 (h!20575 (t!134383 lt!504655))))))))

(declare-fun e!932525 () Bool)

(assert (=> d!428034 (= lt!505558 e!932525)))

(declare-fun res!661545 () Bool)

(assert (=> d!428034 (=> (not res!661545) (not e!932525))))

(declare-fun lt!505557 () tuple2!14244)

(assert (=> d!428034 (= res!661545 (= (size!12413 (_1!8008 lt!505557)) 1))))

(assert (=> d!428034 (= lt!505557 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 (t!134383 lt!504655))))))))

(assert (=> d!428034 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428034 (= (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 lt!504655))) lt!505558)))

(declare-fun b!1461752 () Bool)

(declare-fun res!661544 () Bool)

(assert (=> b!1461752 (=> (not res!661544) (not e!932525))))

(assert (=> b!1461752 (= res!661544 (= (apply!3952 (_1!8008 lt!505557) 0) (h!20575 (t!134383 lt!504655))))))

(declare-fun b!1461753 () Bool)

(assert (=> b!1461753 (= e!932525 (isEmpty!9529 (_2!8008 lt!505557)))))

(declare-fun b!1461754 () Bool)

(assert (=> b!1461754 (= e!932524 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 (t!134383 lt!504655))))))))))

(assert (= (and d!428034 res!661545) b!1461752))

(assert (= (and b!1461752 res!661544) b!1461753))

(assert (= (and d!428034 res!661546) b!1461754))

(declare-fun m!1697855 () Bool)

(assert (=> d!428034 m!1697855))

(declare-fun m!1697857 () Bool)

(assert (=> d!428034 m!1697857))

(declare-fun m!1697859 () Bool)

(assert (=> d!428034 m!1697859))

(declare-fun m!1697861 () Bool)

(assert (=> d!428034 m!1697861))

(declare-fun m!1697863 () Bool)

(assert (=> d!428034 m!1697863))

(assert (=> d!428034 m!1697857))

(declare-fun m!1697865 () Bool)

(assert (=> d!428034 m!1697865))

(assert (=> d!428034 m!1696087))

(assert (=> d!428034 m!1697857))

(assert (=> d!428034 m!1697861))

(declare-fun m!1697867 () Bool)

(assert (=> b!1461752 m!1697867))

(declare-fun m!1697869 () Bool)

(assert (=> b!1461753 m!1697869))

(assert (=> b!1461754 m!1697857))

(assert (=> b!1461754 m!1697857))

(assert (=> b!1461754 m!1697861))

(assert (=> b!1461754 m!1697861))

(assert (=> b!1461754 m!1697863))

(declare-fun m!1697871 () Bool)

(assert (=> b!1461754 m!1697871))

(assert (=> b!1461223 d!428034))

(declare-fun d!428036 () Bool)

(declare-fun lt!505559 () Int)

(assert (=> d!428036 (= lt!505559 (size!12411 (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504655))))))))

(assert (=> d!428036 (= lt!505559 (size!12418 (c!240744 (charsOf!1536 (h!20575 (t!134383 lt!504655))))))))

(assert (=> d!428036 (= (size!12415 (charsOf!1536 (h!20575 (t!134383 lt!504655)))) lt!505559)))

(declare-fun bs!344222 () Bool)

(assert (= bs!344222 d!428036))

(assert (=> bs!344222 m!1696689))

(declare-fun m!1697873 () Bool)

(assert (=> bs!344222 m!1697873))

(assert (=> bs!344222 m!1697873))

(declare-fun m!1697875 () Bool)

(assert (=> bs!344222 m!1697875))

(declare-fun m!1697877 () Bool)

(assert (=> bs!344222 m!1697877))

(assert (=> b!1461223 d!428036))

(declare-fun d!428038 () Bool)

(assert (=> d!428038 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!504655))))

(declare-fun lt!505560 () Unit!24235)

(assert (=> d!428038 (= lt!505560 (choose!8982 Lexer!2327 (rules!11668 thiss!10022) lt!504655 (h!20575 lt!504655)))))

(assert (=> d!428038 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428038 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!504655 (h!20575 lt!504655)) lt!505560)))

(declare-fun bs!344223 () Bool)

(assert (= bs!344223 d!428038))

(assert (=> bs!344223 m!1696675))

(declare-fun m!1697879 () Bool)

(assert (=> bs!344223 m!1697879))

(assert (=> bs!344223 m!1696087))

(assert (=> b!1461223 d!428038))

(declare-fun d!428040 () Bool)

(assert (=> d!428040 (= (separableTokensPredicate!538 Lexer!2327 (h!20575 lt!504655) (h!20575 (t!134383 lt!504655)) (rules!11668 thiss!10022)) (not (prefixMatchZipperSequence!352 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)) (++!4084 (charsOf!1536 (h!20575 lt!504655)) (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504655))) 0))))))))

(declare-fun bs!344224 () Bool)

(assert (= bs!344224 d!428040))

(assert (=> bs!344224 m!1696689))

(declare-fun m!1697881 () Bool)

(assert (=> bs!344224 m!1697881))

(assert (=> bs!344224 m!1695767))

(assert (=> bs!344224 m!1695767))

(declare-fun m!1697883 () Bool)

(assert (=> bs!344224 m!1697883))

(declare-fun m!1697885 () Bool)

(assert (=> bs!344224 m!1697885))

(assert (=> bs!344224 m!1696305))

(assert (=> bs!344224 m!1696305))

(assert (=> bs!344224 m!1697885))

(declare-fun m!1697887 () Bool)

(assert (=> bs!344224 m!1697887))

(assert (=> bs!344224 m!1696689))

(assert (=> bs!344224 m!1697881))

(assert (=> bs!344224 m!1697883))

(assert (=> b!1461223 d!428040))

(declare-fun d!428042 () Bool)

(declare-fun lt!505562 () Bool)

(declare-fun e!932526 () Bool)

(assert (=> d!428042 (= lt!505562 e!932526)))

(declare-fun res!661549 () Bool)

(assert (=> d!428042 (=> (not res!661549) (not e!932526))))

(assert (=> d!428042 (= res!661549 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504655)))))) (list!6073 (singletonSeq!1277 (h!20575 lt!504655)))))))

(declare-fun e!932527 () Bool)

(assert (=> d!428042 (= lt!505562 e!932527)))

(declare-fun res!661548 () Bool)

(assert (=> d!428042 (=> (not res!661548) (not e!932527))))

(declare-fun lt!505561 () tuple2!14244)

(assert (=> d!428042 (= res!661548 (= (size!12413 (_1!8008 lt!505561)) 1))))

(assert (=> d!428042 (= lt!505561 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504655)))))))

(assert (=> d!428042 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428042 (= (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!504655)) lt!505562)))

(declare-fun b!1461755 () Bool)

(declare-fun res!661547 () Bool)

(assert (=> b!1461755 (=> (not res!661547) (not e!932527))))

(assert (=> b!1461755 (= res!661547 (= (apply!3952 (_1!8008 lt!505561) 0) (h!20575 lt!504655)))))

(declare-fun b!1461756 () Bool)

(assert (=> b!1461756 (= e!932527 (isEmpty!9529 (_2!8008 lt!505561)))))

(declare-fun b!1461757 () Bool)

(assert (=> b!1461757 (= e!932526 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504655)))))))))

(assert (= (and d!428042 res!661548) b!1461755))

(assert (= (and b!1461755 res!661547) b!1461756))

(assert (= (and d!428042 res!661549) b!1461757))

(declare-fun m!1697889 () Bool)

(assert (=> d!428042 m!1697889))

(declare-fun m!1697891 () Bool)

(assert (=> d!428042 m!1697891))

(declare-fun m!1697893 () Bool)

(assert (=> d!428042 m!1697893))

(declare-fun m!1697895 () Bool)

(assert (=> d!428042 m!1697895))

(declare-fun m!1697897 () Bool)

(assert (=> d!428042 m!1697897))

(assert (=> d!428042 m!1697891))

(declare-fun m!1697899 () Bool)

(assert (=> d!428042 m!1697899))

(assert (=> d!428042 m!1696087))

(assert (=> d!428042 m!1697891))

(assert (=> d!428042 m!1697895))

(declare-fun m!1697901 () Bool)

(assert (=> b!1461755 m!1697901))

(declare-fun m!1697903 () Bool)

(assert (=> b!1461756 m!1697903))

(assert (=> b!1461757 m!1697891))

(assert (=> b!1461757 m!1697891))

(assert (=> b!1461757 m!1697895))

(assert (=> b!1461757 m!1697895))

(assert (=> b!1461757 m!1697897))

(declare-fun m!1697905 () Bool)

(assert (=> b!1461757 m!1697905))

(assert (=> b!1461223 d!428042))

(declare-fun d!428044 () Bool)

(assert (=> d!428044 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 lt!504655)))))

(declare-fun lt!505563 () Unit!24235)

(assert (=> d!428044 (= lt!505563 (choose!8982 Lexer!2327 (rules!11668 thiss!10022) lt!504655 (h!20575 (t!134383 lt!504655))))))

(assert (=> d!428044 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428044 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!504655 (h!20575 (t!134383 lt!504655))) lt!505563)))

(declare-fun bs!344225 () Bool)

(assert (= bs!344225 d!428044))

(assert (=> bs!344225 m!1696693))

(declare-fun m!1697907 () Bool)

(assert (=> bs!344225 m!1697907))

(assert (=> bs!344225 m!1696087))

(assert (=> b!1461223 d!428044))

(declare-fun d!428046 () Bool)

(declare-fun lt!505564 () BalanceConc!10284)

(assert (=> d!428046 (= (list!6075 lt!505564) (originalCharacters!3535 (h!20575 (t!134383 lt!504655))))))

(assert (=> d!428046 (= lt!505564 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504655))))) (value!85828 (h!20575 (t!134383 lt!504655)))))))

(assert (=> d!428046 (= (charsOf!1536 (h!20575 (t!134383 lt!504655))) lt!505564)))

(declare-fun b_lambda!45619 () Bool)

(assert (=> (not b_lambda!45619) (not d!428046)))

(declare-fun tb!82449 () Bool)

(declare-fun t!134418 () Bool)

(assert (=> (and b!1461246 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504655)))))) t!134418) tb!82449))

(declare-fun b!1461758 () Bool)

(declare-fun e!932528 () Bool)

(declare-fun tp!411633 () Bool)

(assert (=> b!1461758 (= e!932528 (and (inv!20288 (c!240744 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504655))))) (value!85828 (h!20575 (t!134383 lt!504655)))))) tp!411633))))

(declare-fun result!99082 () Bool)

(assert (=> tb!82449 (= result!99082 (and (inv!20289 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504655))))) (value!85828 (h!20575 (t!134383 lt!504655))))) e!932528))))

(assert (= tb!82449 b!1461758))

(declare-fun m!1697909 () Bool)

(assert (=> b!1461758 m!1697909))

(declare-fun m!1697911 () Bool)

(assert (=> tb!82449 m!1697911))

(assert (=> d!428046 t!134418))

(declare-fun b_and!99809 () Bool)

(assert (= b_and!99805 (and (=> t!134418 result!99082) b_and!99809)))

(declare-fun t!134420 () Bool)

(declare-fun tb!82451 () Bool)

(assert (=> (and b!1461252 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504655)))))) t!134420) tb!82451))

(declare-fun result!99084 () Bool)

(assert (= result!99084 result!99082))

(assert (=> d!428046 t!134420))

(declare-fun b_and!99811 () Bool)

(assert (= b_and!99807 (and (=> t!134420 result!99084) b_and!99811)))

(declare-fun m!1697913 () Bool)

(assert (=> d!428046 m!1697913))

(declare-fun m!1697915 () Bool)

(assert (=> d!428046 m!1697915))

(assert (=> b!1461223 d!428046))

(declare-fun d!428048 () Bool)

(assert (=> d!428048 (= (separableTokens!263 Lexer!2327 (tokens!2100 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))) (tokensListTwoByTwoPredicateSeparable!136 Lexer!2327 (tokens!2100 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) 0 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))))))

(declare-fun bs!344235 () Bool)

(assert (= bs!344235 d!428048))

(declare-fun m!1698149 () Bool)

(assert (=> bs!344235 m!1698149))

(assert (=> b!1460949 d!428048))

(declare-fun d!428084 () Bool)

(declare-fun lt!505623 () Int)

(assert (=> d!428084 (>= lt!505623 0)))

(declare-fun e!932581 () Int)

(assert (=> d!428084 (= lt!505623 e!932581)))

(declare-fun c!240934 () Bool)

(assert (=> d!428084 (= c!240934 ((_ is Nil!15172) lt!504703))))

(assert (=> d!428084 (= (size!12411 lt!504703) lt!505623)))

(declare-fun b!1461861 () Bool)

(assert (=> b!1461861 (= e!932581 0)))

(declare-fun b!1461862 () Bool)

(assert (=> b!1461862 (= e!932581 (+ 1 (size!12411 (t!134381 lt!504703))))))

(assert (= (and d!428084 c!240934) b!1461861))

(assert (= (and d!428084 (not c!240934)) b!1461862))

(declare-fun m!1698151 () Bool)

(assert (=> b!1461862 m!1698151))

(assert (=> b!1460936 d!428084))

(declare-fun d!428086 () Bool)

(declare-fun lt!505626 () Int)

(assert (=> d!428086 (>= lt!505626 0)))

(declare-fun e!932582 () Int)

(assert (=> d!428086 (= lt!505626 e!932582)))

(declare-fun c!240935 () Bool)

(assert (=> d!428086 (= c!240935 ((_ is Nil!15172) (printList!725 Lexer!2327 lt!504650)))))

(assert (=> d!428086 (= (size!12411 (printList!725 Lexer!2327 lt!504650)) lt!505626)))

(declare-fun b!1461863 () Bool)

(assert (=> b!1461863 (= e!932582 0)))

(declare-fun b!1461864 () Bool)

(assert (=> b!1461864 (= e!932582 (+ 1 (size!12411 (t!134381 (printList!725 Lexer!2327 lt!504650)))))))

(assert (= (and d!428086 c!240935) b!1461863))

(assert (= (and d!428086 (not c!240935)) b!1461864))

(declare-fun m!1698153 () Bool)

(assert (=> b!1461864 m!1698153))

(assert (=> b!1460936 d!428086))

(declare-fun d!428088 () Bool)

(declare-fun lt!505627 () Int)

(assert (=> d!428088 (>= lt!505627 0)))

(declare-fun e!932583 () Int)

(assert (=> d!428088 (= lt!505627 e!932583)))

(declare-fun c!240936 () Bool)

(assert (=> d!428088 (= c!240936 ((_ is Nil!15172) (printList!725 Lexer!2327 lt!504657)))))

(assert (=> d!428088 (= (size!12411 (printList!725 Lexer!2327 lt!504657)) lt!505627)))

(declare-fun b!1461865 () Bool)

(assert (=> b!1461865 (= e!932583 0)))

(declare-fun b!1461866 () Bool)

(assert (=> b!1461866 (= e!932583 (+ 1 (size!12411 (t!134381 (printList!725 Lexer!2327 lt!504657)))))))

(assert (= (and d!428088 c!240936) b!1461865))

(assert (= (and d!428088 (not c!240936)) b!1461866))

(declare-fun m!1698155 () Bool)

(assert (=> b!1461866 m!1698155))

(assert (=> b!1460936 d!428088))

(declare-fun d!428090 () Bool)

(declare-fun res!661619 () Bool)

(declare-fun e!932585 () Bool)

(assert (=> d!428090 (=> res!661619 e!932585)))

(assert (=> d!428090 (= res!661619 (or (not ((_ is Cons!15174) (++!4080 lt!504650 lt!504657))) (not ((_ is Cons!15174) (t!134383 (++!4080 lt!504650 lt!504657))))))))

(assert (=> d!428090 (= (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 (++!4080 lt!504650 lt!504657) (rules!11668 thiss!10022)) e!932585)))

(declare-fun b!1461867 () Bool)

(declare-fun e!932584 () Bool)

(assert (=> b!1461867 (= e!932585 e!932584)))

(declare-fun res!661618 () Bool)

(assert (=> b!1461867 (=> (not res!661618) (not e!932584))))

(assert (=> b!1461867 (= res!661618 (separableTokensPredicate!538 Lexer!2327 (h!20575 (++!4080 lt!504650 lt!504657)) (h!20575 (t!134383 (++!4080 lt!504650 lt!504657))) (rules!11668 thiss!10022)))))

(declare-fun lt!505631 () Unit!24235)

(declare-fun Unit!24389 () Unit!24235)

(assert (=> b!1461867 (= lt!505631 Unit!24389)))

(assert (=> b!1461867 (> (size!12415 (charsOf!1536 (h!20575 (t!134383 (++!4080 lt!504650 lt!504657))))) 0)))

(declare-fun lt!505630 () Unit!24235)

(declare-fun Unit!24390 () Unit!24235)

(assert (=> b!1461867 (= lt!505630 Unit!24390)))

(assert (=> b!1461867 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 (++!4080 lt!504650 lt!504657))))))

(declare-fun lt!505629 () Unit!24235)

(declare-fun Unit!24391 () Unit!24235)

(assert (=> b!1461867 (= lt!505629 Unit!24391)))

(assert (=> b!1461867 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (++!4080 lt!504650 lt!504657)))))

(declare-fun lt!505633 () Unit!24235)

(declare-fun lt!505634 () Unit!24235)

(assert (=> b!1461867 (= lt!505633 lt!505634)))

(assert (=> b!1461867 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 (++!4080 lt!504650 lt!504657))))))

(assert (=> b!1461867 (= lt!505634 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) (++!4080 lt!504650 lt!504657) (h!20575 (t!134383 (++!4080 lt!504650 lt!504657)))))))

(declare-fun lt!505632 () Unit!24235)

(declare-fun lt!505628 () Unit!24235)

(assert (=> b!1461867 (= lt!505632 lt!505628)))

(assert (=> b!1461867 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (++!4080 lt!504650 lt!504657)))))

(assert (=> b!1461867 (= lt!505628 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) (++!4080 lt!504650 lt!504657) (h!20575 (++!4080 lt!504650 lt!504657))))))

(declare-fun b!1461868 () Bool)

(assert (=> b!1461868 (= e!932584 (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 (Cons!15174 (h!20575 (t!134383 (++!4080 lt!504650 lt!504657))) (t!134383 (t!134383 (++!4080 lt!504650 lt!504657)))) (rules!11668 thiss!10022)))))

(assert (= (and d!428090 (not res!661619)) b!1461867))

(assert (= (and b!1461867 res!661618) b!1461868))

(declare-fun m!1698165 () Bool)

(assert (=> b!1461867 m!1698165))

(declare-fun m!1698167 () Bool)

(assert (=> b!1461867 m!1698167))

(declare-fun m!1698169 () Bool)

(assert (=> b!1461867 m!1698169))

(declare-fun m!1698171 () Bool)

(assert (=> b!1461867 m!1698171))

(declare-fun m!1698173 () Bool)

(assert (=> b!1461867 m!1698173))

(assert (=> b!1461867 m!1695693))

(declare-fun m!1698175 () Bool)

(assert (=> b!1461867 m!1698175))

(assert (=> b!1461867 m!1698169))

(assert (=> b!1461867 m!1695693))

(declare-fun m!1698177 () Bool)

(assert (=> b!1461867 m!1698177))

(declare-fun m!1698181 () Bool)

(assert (=> b!1461868 m!1698181))

(assert (=> b!1461075 d!428090))

(assert (=> b!1461075 d!427744))

(declare-fun bs!344238 () Bool)

(declare-fun d!428096 () Bool)

(assert (= bs!344238 (and d!428096 d!427750)))

(declare-fun lambda!63296 () Int)

(assert (=> bs!344238 (= lambda!63296 lambda!63291)))

(declare-fun b!1461874 () Bool)

(declare-fun e!932591 () Bool)

(assert (=> b!1461874 (= e!932591 true)))

(declare-fun b!1461873 () Bool)

(declare-fun e!932590 () Bool)

(assert (=> b!1461873 (= e!932590 e!932591)))

(declare-fun b!1461872 () Bool)

(declare-fun e!932589 () Bool)

(assert (=> b!1461872 (= e!932589 e!932590)))

(assert (=> d!428096 e!932589))

(assert (= b!1461873 b!1461874))

(assert (= b!1461872 b!1461873))

(assert (= (and d!428096 ((_ is Cons!15175) (rules!11668 thiss!10022))) b!1461872))

(assert (=> b!1461874 (< (dynLambda!6923 order!9145 (toValue!3984 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63296))))

(assert (=> b!1461874 (< (dynLambda!6925 order!9149 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63296))))

(assert (=> d!428096 true))

(declare-fun lt!505637 () Bool)

(assert (=> d!428096 (= lt!505637 (forall!3740 (++!4080 lt!504650 lt!504657) lambda!63296))))

(declare-fun e!932588 () Bool)

(assert (=> d!428096 (= lt!505637 e!932588)))

(declare-fun res!661622 () Bool)

(assert (=> d!428096 (=> res!661622 e!932588)))

(assert (=> d!428096 (= res!661622 (not ((_ is Cons!15174) (++!4080 lt!504650 lt!504657))))))

(assert (=> d!428096 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428096 (= (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (++!4080 lt!504650 lt!504657)) lt!505637)))

(declare-fun b!1461870 () Bool)

(declare-fun e!932587 () Bool)

(assert (=> b!1461870 (= e!932588 e!932587)))

(declare-fun res!661621 () Bool)

(assert (=> b!1461870 (=> (not res!661621) (not e!932587))))

(assert (=> b!1461870 (= res!661621 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (++!4080 lt!504650 lt!504657))))))

(declare-fun b!1461871 () Bool)

(assert (=> b!1461871 (= e!932587 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (t!134383 (++!4080 lt!504650 lt!504657))))))

(assert (= (and d!428096 (not res!661622)) b!1461870))

(assert (= (and b!1461870 res!661621) b!1461871))

(assert (=> d!428096 m!1695693))

(declare-fun m!1698197 () Bool)

(assert (=> d!428096 m!1698197))

(assert (=> d!428096 m!1696087))

(assert (=> b!1461870 m!1698167))

(declare-fun m!1698199 () Bool)

(assert (=> b!1461871 m!1698199))

(assert (=> b!1461075 d!428096))

(assert (=> b!1461075 d!427740))

(declare-fun d!428104 () Bool)

(declare-fun lt!505644 () Token!5008)

(assert (=> d!428104 (= lt!505644 (apply!3953 (list!6073 (_1!8008 lt!504960)) 0))))

(assert (=> d!428104 (= lt!505644 (apply!3959 (c!240746 (_1!8008 lt!504960)) 0))))

(declare-fun e!932595 () Bool)

(assert (=> d!428104 e!932595))

(declare-fun res!661630 () Bool)

(assert (=> d!428104 (=> (not res!661630) (not e!932595))))

(assert (=> d!428104 (= res!661630 (<= 0 0))))

(assert (=> d!428104 (= (apply!3952 (_1!8008 lt!504960) 0) lt!505644)))

(declare-fun b!1461884 () Bool)

(assert (=> b!1461884 (= e!932595 (< 0 (size!12413 (_1!8008 lt!504960))))))

(assert (= (and d!428104 res!661630) b!1461884))

(assert (=> d!428104 m!1697755))

(assert (=> d!428104 m!1697755))

(declare-fun m!1698201 () Bool)

(assert (=> d!428104 m!1698201))

(declare-fun m!1698203 () Bool)

(assert (=> d!428104 m!1698203))

(assert (=> b!1461884 m!1696341))

(assert (=> b!1461034 d!428104))

(declare-fun bs!344240 () Bool)

(declare-fun d!428106 () Bool)

(assert (= bs!344240 (and d!428106 d!427750)))

(declare-fun lambda!63297 () Int)

(assert (=> bs!344240 (= lambda!63297 lambda!63291)))

(declare-fun bs!344241 () Bool)

(assert (= bs!344241 (and d!428106 d!428096)))

(assert (=> bs!344241 (= lambda!63297 lambda!63296)))

(declare-fun b!1461889 () Bool)

(declare-fun e!932600 () Bool)

(assert (=> b!1461889 (= e!932600 true)))

(declare-fun b!1461888 () Bool)

(declare-fun e!932599 () Bool)

(assert (=> b!1461888 (= e!932599 e!932600)))

(declare-fun b!1461887 () Bool)

(declare-fun e!932598 () Bool)

(assert (=> b!1461887 (= e!932598 e!932599)))

(assert (=> d!428106 e!932598))

(assert (= b!1461888 b!1461889))

(assert (= b!1461887 b!1461888))

(assert (= (and d!428106 ((_ is Cons!15175) (rules!11668 thiss!10022))) b!1461887))

(assert (=> b!1461889 (< (dynLambda!6923 order!9145 (toValue!3984 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63297))))

(assert (=> b!1461889 (< (dynLambda!6925 order!9149 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63297))))

(assert (=> d!428106 true))

(declare-fun lt!505645 () Bool)

(assert (=> d!428106 (= lt!505645 (forall!3740 (t!134383 lt!504655) lambda!63297))))

(declare-fun e!932597 () Bool)

(assert (=> d!428106 (= lt!505645 e!932597)))

(declare-fun res!661632 () Bool)

(assert (=> d!428106 (=> res!661632 e!932597)))

(assert (=> d!428106 (= res!661632 (not ((_ is Cons!15174) (t!134383 lt!504655))))))

(assert (=> d!428106 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428106 (= (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (t!134383 lt!504655)) lt!505645)))

(declare-fun b!1461885 () Bool)

(declare-fun e!932596 () Bool)

(assert (=> b!1461885 (= e!932597 e!932596)))

(declare-fun res!661631 () Bool)

(assert (=> b!1461885 (=> (not res!661631) (not e!932596))))

(assert (=> b!1461885 (= res!661631 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 lt!504655))))))

(declare-fun b!1461886 () Bool)

(assert (=> b!1461886 (= e!932596 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (t!134383 (t!134383 lt!504655))))))

(assert (= (and d!428106 (not res!661632)) b!1461885))

(assert (= (and b!1461885 res!661631) b!1461886))

(declare-fun m!1698211 () Bool)

(assert (=> d!428106 m!1698211))

(assert (=> d!428106 m!1696087))

(assert (=> b!1461885 m!1696693))

(declare-fun m!1698215 () Bool)

(assert (=> b!1461886 m!1698215))

(assert (=> b!1461196 d!428106))

(assert (=> d!427740 d!428096))

(assert (=> d!427740 d!427744))

(declare-fun d!428108 () Bool)

(assert (=> d!428108 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (++!4080 lt!504650 lt!504657))))

(assert (=> d!428108 true))

(declare-fun _$79!100 () Unit!24235)

(assert (=> d!428108 (= (choose!8984 Lexer!2327 (rules!11668 thiss!10022) lt!504650 lt!504657) _$79!100)))

(declare-fun bs!344242 () Bool)

(assert (= bs!344242 d!428108))

(assert (=> bs!344242 m!1695693))

(assert (=> bs!344242 m!1695693))

(assert (=> bs!344242 m!1696383))

(assert (=> d!427740 d!428108))

(assert (=> d!427740 d!427986))

(declare-fun d!428112 () Bool)

(assert (=> d!428112 (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 (++!4080 lt!504650 lt!504657) (rules!11668 thiss!10022))))

(declare-fun lt!505712 () Unit!24235)

(declare-fun lt!505713 () Unit!24235)

(assert (=> d!428112 (= lt!505712 lt!505713)))

(assert (=> d!428112 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (++!4080 lt!504650 lt!504657))))

(assert (=> d!428112 (= lt!505713 (lemmaRulesProduceEachTokenIndividuallyConcat!54 Lexer!2327 (rules!11668 thiss!10022) lt!504650 lt!504657))))

(assert (=> d!428112 true))

(declare-fun _$81!60 () Unit!24235)

(assert (=> d!428112 (= (choose!8983 Lexer!2327 lt!504650 lt!504657 (rules!11668 thiss!10022)) _$81!60)))

(declare-fun bs!344247 () Bool)

(assert (= bs!344247 d!428112))

(assert (=> bs!344247 m!1695693))

(assert (=> bs!344247 m!1695693))

(assert (=> bs!344247 m!1696381))

(assert (=> bs!344247 m!1695693))

(assert (=> bs!344247 m!1696383))

(assert (=> bs!344247 m!1695685))

(assert (=> d!427736 d!428112))

(assert (=> d!427736 d!427986))

(declare-fun d!428134 () Bool)

(declare-fun res!661648 () Bool)

(declare-fun e!932617 () Bool)

(assert (=> d!428134 (=> res!661648 e!932617)))

(assert (=> d!428134 (= res!661648 ((_ is Nil!15174) lt!504655))))

(assert (=> d!428134 (= (forall!3740 lt!504655 lambda!63291) e!932617)))

(declare-fun b!1461913 () Bool)

(declare-fun e!932618 () Bool)

(assert (=> b!1461913 (= e!932617 e!932618)))

(declare-fun res!661649 () Bool)

(assert (=> b!1461913 (=> (not res!661649) (not e!932618))))

(declare-fun dynLambda!6928 (Int Token!5008) Bool)

(assert (=> b!1461913 (= res!661649 (dynLambda!6928 lambda!63291 (h!20575 lt!504655)))))

(declare-fun b!1461914 () Bool)

(assert (=> b!1461914 (= e!932618 (forall!3740 (t!134383 lt!504655) lambda!63291))))

(assert (= (and d!428134 (not res!661648)) b!1461913))

(assert (= (and b!1461913 res!661649) b!1461914))

(declare-fun b_lambda!45621 () Bool)

(assert (=> (not b_lambda!45621) (not b!1461913)))

(declare-fun m!1698345 () Bool)

(assert (=> b!1461913 m!1698345))

(declare-fun m!1698347 () Bool)

(assert (=> b!1461914 m!1698347))

(assert (=> d!427750 d!428134))

(assert (=> d!427750 d!427986))

(declare-fun d!428136 () Bool)

(declare-fun res!661654 () Bool)

(declare-fun e!932621 () Bool)

(assert (=> d!428136 (=> (not res!661654) (not e!932621))))

(assert (=> d!428136 (= res!661654 (<= (size!12414 (list!6079 (xs!7920 (c!240746 (tokens!2100 other!32))))) 512))))

(assert (=> d!428136 (= (inv!20281 (c!240746 (tokens!2100 other!32))) e!932621)))

(declare-fun b!1461919 () Bool)

(declare-fun res!661655 () Bool)

(assert (=> b!1461919 (=> (not res!661655) (not e!932621))))

(assert (=> b!1461919 (= res!661655 (= (csize!10577 (c!240746 (tokens!2100 other!32))) (size!12414 (list!6079 (xs!7920 (c!240746 (tokens!2100 other!32)))))))))

(declare-fun b!1461920 () Bool)

(assert (=> b!1461920 (= e!932621 (and (> (csize!10577 (c!240746 (tokens!2100 other!32))) 0) (<= (csize!10577 (c!240746 (tokens!2100 other!32))) 512)))))

(assert (= (and d!428136 res!661654) b!1461919))

(assert (= (and b!1461919 res!661655) b!1461920))

(assert (=> d!428136 m!1697263))

(assert (=> d!428136 m!1697263))

(declare-fun m!1698349 () Bool)

(assert (=> d!428136 m!1698349))

(assert (=> b!1461919 m!1697263))

(assert (=> b!1461919 m!1697263))

(assert (=> b!1461919 m!1698349))

(assert (=> b!1460865 d!428136))

(assert (=> b!1461121 d!427854))

(declare-fun d!428138 () Bool)

(declare-fun lt!505714 () Int)

(assert (=> d!428138 (>= lt!505714 0)))

(declare-fun e!932622 () Int)

(assert (=> d!428138 (= lt!505714 e!932622)))

(declare-fun c!240943 () Bool)

(assert (=> d!428138 (= c!240943 ((_ is Nil!15174) lt!504983))))

(assert (=> d!428138 (= (size!12414 lt!504983) lt!505714)))

(declare-fun b!1461921 () Bool)

(assert (=> b!1461921 (= e!932622 0)))

(declare-fun b!1461922 () Bool)

(assert (=> b!1461922 (= e!932622 (+ 1 (size!12414 (t!134383 lt!504983))))))

(assert (= (and d!428138 c!240943) b!1461921))

(assert (= (and d!428138 (not c!240943)) b!1461922))

(declare-fun m!1698351 () Bool)

(assert (=> b!1461922 m!1698351))

(assert (=> b!1461086 d!428138))

(declare-fun d!428140 () Bool)

(declare-fun lt!505715 () Int)

(assert (=> d!428140 (>= lt!505715 0)))

(declare-fun e!932623 () Int)

(assert (=> d!428140 (= lt!505715 e!932623)))

(declare-fun c!240944 () Bool)

(assert (=> d!428140 (= c!240944 ((_ is Nil!15174) lt!504650))))

(assert (=> d!428140 (= (size!12414 lt!504650) lt!505715)))

(declare-fun b!1461923 () Bool)

(assert (=> b!1461923 (= e!932623 0)))

(declare-fun b!1461924 () Bool)

(assert (=> b!1461924 (= e!932623 (+ 1 (size!12414 (t!134383 lt!504650))))))

(assert (= (and d!428140 c!240944) b!1461923))

(assert (= (and d!428140 (not c!240944)) b!1461924))

(declare-fun m!1698353 () Bool)

(assert (=> b!1461924 m!1698353))

(assert (=> b!1461086 d!428140))

(declare-fun d!428142 () Bool)

(declare-fun lt!505716 () Int)

(assert (=> d!428142 (>= lt!505716 0)))

(declare-fun e!932624 () Int)

(assert (=> d!428142 (= lt!505716 e!932624)))

(declare-fun c!240945 () Bool)

(assert (=> d!428142 (= c!240945 ((_ is Nil!15174) lt!504657))))

(assert (=> d!428142 (= (size!12414 lt!504657) lt!505716)))

(declare-fun b!1461925 () Bool)

(assert (=> b!1461925 (= e!932624 0)))

(declare-fun b!1461926 () Bool)

(assert (=> b!1461926 (= e!932624 (+ 1 (size!12414 (t!134383 lt!504657))))))

(assert (= (and d!428142 c!240945) b!1461925))

(assert (= (and d!428142 (not c!240945)) b!1461926))

(declare-fun m!1698355 () Bool)

(assert (=> b!1461926 m!1698355))

(assert (=> b!1461086 d!428142))

(declare-fun d!428144 () Bool)

(assert (=> d!428144 (= (list!6075 lt!504939) (list!6081 (c!240744 lt!504939)))))

(declare-fun bs!344248 () Bool)

(assert (= bs!344248 d!428144))

(declare-fun m!1698357 () Bool)

(assert (=> bs!344248 m!1698357))

(assert (=> d!427710 d!428144))

(declare-fun d!428146 () Bool)

(declare-fun c!240946 () Bool)

(assert (=> d!428146 (= c!240946 ((_ is Cons!15174) (list!6073 (tokens!2100 thiss!10022))))))

(declare-fun e!932625 () List!15238)

(assert (=> d!428146 (= (printList!725 Lexer!2327 (list!6073 (tokens!2100 thiss!10022))) e!932625)))

(declare-fun b!1461927 () Bool)

(assert (=> b!1461927 (= e!932625 (++!4081 (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 thiss!10022))))) (printList!725 Lexer!2327 (t!134383 (list!6073 (tokens!2100 thiss!10022))))))))

(declare-fun b!1461928 () Bool)

(assert (=> b!1461928 (= e!932625 Nil!15172)))

(assert (= (and d!428146 c!240946) b!1461927))

(assert (= (and d!428146 (not c!240946)) b!1461928))

(assert (=> b!1461927 m!1696975))

(assert (=> b!1461927 m!1696975))

(assert (=> b!1461927 m!1696933))

(declare-fun m!1698359 () Bool)

(assert (=> b!1461927 m!1698359))

(assert (=> b!1461927 m!1696933))

(assert (=> b!1461927 m!1698359))

(declare-fun m!1698361 () Bool)

(assert (=> b!1461927 m!1698361))

(assert (=> d!427710 d!428146))

(assert (=> d!427710 d!427726))

(declare-fun d!428148 () Bool)

(declare-fun lt!505736 () BalanceConc!10284)

(declare-fun printListTailRec!291 (LexerInterface!2329 List!15240 List!15238) List!15238)

(assert (=> d!428148 (= (list!6075 lt!505736) (printListTailRec!291 Lexer!2327 (dropList!480 (tokens!2100 thiss!10022) 0) (list!6075 (BalanceConc!10285 Empty!5172))))))

(declare-fun e!932631 () BalanceConc!10284)

(assert (=> d!428148 (= lt!505736 e!932631)))

(declare-fun c!240949 () Bool)

(assert (=> d!428148 (= c!240949 (>= 0 (size!12413 (tokens!2100 thiss!10022))))))

(declare-fun e!932630 () Bool)

(assert (=> d!428148 e!932630))

(declare-fun res!661658 () Bool)

(assert (=> d!428148 (=> (not res!661658) (not e!932630))))

(assert (=> d!428148 (= res!661658 (>= 0 0))))

(assert (=> d!428148 (= (printTailRec!697 Lexer!2327 (tokens!2100 thiss!10022) 0 (BalanceConc!10285 Empty!5172)) lt!505736)))

(declare-fun b!1461935 () Bool)

(assert (=> b!1461935 (= e!932630 (<= 0 (size!12413 (tokens!2100 thiss!10022))))))

(declare-fun b!1461936 () Bool)

(assert (=> b!1461936 (= e!932631 (BalanceConc!10285 Empty!5172))))

(declare-fun b!1461937 () Bool)

(assert (=> b!1461937 (= e!932631 (printTailRec!697 Lexer!2327 (tokens!2100 thiss!10022) (+ 0 1) (++!4084 (BalanceConc!10285 Empty!5172) (charsOf!1536 (apply!3952 (tokens!2100 thiss!10022) 0)))))))

(declare-fun lt!505732 () List!15240)

(assert (=> b!1461937 (= lt!505732 (list!6073 (tokens!2100 thiss!10022)))))

(declare-fun lt!505733 () Unit!24235)

(assert (=> b!1461937 (= lt!505733 (lemmaDropApply!494 lt!505732 0))))

(assert (=> b!1461937 (= (head!3012 (drop!744 lt!505732 0)) (apply!3953 lt!505732 0))))

(declare-fun lt!505737 () Unit!24235)

(assert (=> b!1461937 (= lt!505737 lt!505733)))

(declare-fun lt!505735 () List!15240)

(assert (=> b!1461937 (= lt!505735 (list!6073 (tokens!2100 thiss!10022)))))

(declare-fun lt!505734 () Unit!24235)

(assert (=> b!1461937 (= lt!505734 (lemmaDropTail!474 lt!505735 0))))

(assert (=> b!1461937 (= (tail!2174 (drop!744 lt!505735 0)) (drop!744 lt!505735 (+ 0 1)))))

(declare-fun lt!505731 () Unit!24235)

(assert (=> b!1461937 (= lt!505731 lt!505734)))

(assert (= (and d!428148 res!661658) b!1461935))

(assert (= (and d!428148 c!240949) b!1461936))

(assert (= (and d!428148 (not c!240949)) b!1461937))

(declare-fun m!1698363 () Bool)

(assert (=> d!428148 m!1698363))

(declare-fun m!1698365 () Bool)

(assert (=> d!428148 m!1698365))

(declare-fun m!1698367 () Bool)

(assert (=> d!428148 m!1698367))

(declare-fun m!1698369 () Bool)

(assert (=> d!428148 m!1698369))

(assert (=> d!428148 m!1698367))

(declare-fun m!1698371 () Bool)

(assert (=> d!428148 m!1698371))

(assert (=> d!428148 m!1698365))

(assert (=> b!1461935 m!1698371))

(declare-fun m!1698373 () Bool)

(assert (=> b!1461937 m!1698373))

(declare-fun m!1698375 () Bool)

(assert (=> b!1461937 m!1698375))

(declare-fun m!1698377 () Bool)

(assert (=> b!1461937 m!1698377))

(declare-fun m!1698379 () Bool)

(assert (=> b!1461937 m!1698379))

(declare-fun m!1698381 () Bool)

(assert (=> b!1461937 m!1698381))

(declare-fun m!1698383 () Bool)

(assert (=> b!1461937 m!1698383))

(declare-fun m!1698385 () Bool)

(assert (=> b!1461937 m!1698385))

(declare-fun m!1698387 () Bool)

(assert (=> b!1461937 m!1698387))

(declare-fun m!1698389 () Bool)

(assert (=> b!1461937 m!1698389))

(assert (=> b!1461937 m!1698385))

(assert (=> b!1461937 m!1698373))

(assert (=> b!1461937 m!1698383))

(declare-fun m!1698391 () Bool)

(assert (=> b!1461937 m!1698391))

(declare-fun m!1698393 () Bool)

(assert (=> b!1461937 m!1698393))

(assert (=> b!1461937 m!1695647))

(assert (=> b!1461937 m!1698391))

(declare-fun m!1698395 () Bool)

(assert (=> b!1461937 m!1698395))

(assert (=> b!1461937 m!1698387))

(assert (=> d!427710 d!428148))

(assert (=> b!1461047 d!427870))

(declare-fun d!428150 () Bool)

(assert (=> d!428150 (= (max!0 (height!774 (c!240746 (tokens!2100 thiss!10022))) (height!774 (c!240746 (tokens!2100 other!32)))) (ite (< (height!774 (c!240746 (tokens!2100 thiss!10022))) (height!774 (c!240746 (tokens!2100 other!32)))) (height!774 (c!240746 (tokens!2100 other!32))) (height!774 (c!240746 (tokens!2100 thiss!10022)))))))

(assert (=> b!1461047 d!428150))

(declare-fun d!428152 () Bool)

(assert (=> d!428152 (= (height!774 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))) (ite ((_ is Empty!5173) (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))) 0 (ite ((_ is Leaf!7711) (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))) 1 (cheight!5384 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))))))))

(assert (=> b!1461047 d!428152))

(declare-fun d!428154 () Bool)

(assert (=> d!428154 (= (height!774 (c!240746 (tokens!2100 other!32))) (ite ((_ is Empty!5173) (c!240746 (tokens!2100 other!32))) 0 (ite ((_ is Leaf!7711) (c!240746 (tokens!2100 other!32))) 1 (cheight!5384 (c!240746 (tokens!2100 other!32))))))))

(assert (=> b!1461047 d!428154))

(declare-fun d!428156 () Bool)

(assert (=> d!428156 (= (height!774 (c!240746 (tokens!2100 thiss!10022))) (ite ((_ is Empty!5173) (c!240746 (tokens!2100 thiss!10022))) 0 (ite ((_ is Leaf!7711) (c!240746 (tokens!2100 thiss!10022))) 1 (cheight!5384 (c!240746 (tokens!2100 thiss!10022))))))))

(assert (=> b!1461047 d!428156))

(declare-fun d!428158 () Bool)

(declare-fun lt!505738 () Bool)

(assert (=> d!428158 (= lt!505738 (isEmpty!9527 (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656)))))))))

(assert (=> d!428158 (= lt!505738 (isEmpty!9531 (c!240744 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656)))))))))

(assert (=> d!428158 (= (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656))))) lt!505738)))

(declare-fun bs!344249 () Bool)

(assert (= bs!344249 d!428158))

(declare-fun m!1698397 () Bool)

(assert (=> bs!344249 m!1698397))

(assert (=> bs!344249 m!1698397))

(declare-fun m!1698399 () Bool)

(assert (=> bs!344249 m!1698399))

(declare-fun m!1698401 () Bool)

(assert (=> bs!344249 m!1698401))

(assert (=> b!1461033 d!428158))

(declare-fun d!428160 () Bool)

(declare-fun e!932634 () Bool)

(assert (=> d!428160 e!932634))

(declare-fun res!661659 () Bool)

(assert (=> d!428160 (=> (not res!661659) (not e!932634))))

(declare-fun e!932632 () Bool)

(assert (=> d!428160 (= res!661659 e!932632)))

(declare-fun c!240950 () Bool)

(declare-fun lt!505739 () tuple2!14244)

(assert (=> d!428160 (= c!240950 (> (size!12413 (_1!8008 lt!505739)) 0))))

(assert (=> d!428160 (= lt!505739 (lexTailRecV2!471 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656)) (BalanceConc!10285 Empty!5172) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656)) (BalanceConc!10287 Empty!5173)))))

(assert (=> d!428160 (= (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656))) lt!505739)))

(declare-fun b!1461938 () Bool)

(declare-fun e!932633 () Bool)

(assert (=> b!1461938 (= e!932632 e!932633)))

(declare-fun res!661661 () Bool)

(assert (=> b!1461938 (= res!661661 (< (size!12415 (_2!8008 lt!505739)) (size!12415 (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656)))))))

(assert (=> b!1461938 (=> (not res!661661) (not e!932633))))

(declare-fun b!1461939 () Bool)

(declare-fun res!661660 () Bool)

(assert (=> b!1461939 (=> (not res!661660) (not e!932634))))

(assert (=> b!1461939 (= res!661660 (= (list!6073 (_1!8008 lt!505739)) (_1!8011 (lexList!716 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656)))))))))

(declare-fun b!1461940 () Bool)

(assert (=> b!1461940 (= e!932634 (= (list!6075 (_2!8008 lt!505739)) (_2!8011 (lexList!716 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656)))))))))

(declare-fun b!1461941 () Bool)

(assert (=> b!1461941 (= e!932632 (= (_2!8008 lt!505739) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656))))))

(declare-fun b!1461942 () Bool)

(assert (=> b!1461942 (= e!932633 (not (isEmpty!9519 (_1!8008 lt!505739))))))

(assert (= (and d!428160 c!240950) b!1461938))

(assert (= (and d!428160 (not c!240950)) b!1461941))

(assert (= (and b!1461938 res!661661) b!1461942))

(assert (= (and d!428160 res!661659) b!1461939))

(assert (= (and b!1461939 res!661660) b!1461940))

(declare-fun m!1698403 () Bool)

(assert (=> b!1461939 m!1698403))

(assert (=> b!1461939 m!1696327))

(declare-fun m!1698405 () Bool)

(assert (=> b!1461939 m!1698405))

(assert (=> b!1461939 m!1698405))

(declare-fun m!1698407 () Bool)

(assert (=> b!1461939 m!1698407))

(declare-fun m!1698409 () Bool)

(assert (=> b!1461940 m!1698409))

(assert (=> b!1461940 m!1696327))

(assert (=> b!1461940 m!1698405))

(assert (=> b!1461940 m!1698405))

(assert (=> b!1461940 m!1698407))

(declare-fun m!1698411 () Bool)

(assert (=> b!1461942 m!1698411))

(declare-fun m!1698413 () Bool)

(assert (=> b!1461938 m!1698413))

(assert (=> b!1461938 m!1696327))

(declare-fun m!1698415 () Bool)

(assert (=> b!1461938 m!1698415))

(declare-fun m!1698417 () Bool)

(assert (=> d!428160 m!1698417))

(assert (=> d!428160 m!1696327))

(assert (=> d!428160 m!1696327))

(declare-fun m!1698419 () Bool)

(assert (=> d!428160 m!1698419))

(assert (=> b!1461033 d!428160))

(declare-fun d!428162 () Bool)

(declare-fun lt!505740 () BalanceConc!10284)

(assert (=> d!428162 (= (list!6075 lt!505740) (printList!725 Lexer!2327 (list!6073 (singletonSeq!1277 lt!504656))))))

(assert (=> d!428162 (= lt!505740 (printTailRec!697 Lexer!2327 (singletonSeq!1277 lt!504656) 0 (BalanceConc!10285 Empty!5172)))))

(assert (=> d!428162 (= (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656)) lt!505740)))

(declare-fun bs!344250 () Bool)

(assert (= bs!344250 d!428162))

(declare-fun m!1698421 () Bool)

(assert (=> bs!344250 m!1698421))

(assert (=> bs!344250 m!1696323))

(assert (=> bs!344250 m!1696325))

(assert (=> bs!344250 m!1696325))

(declare-fun m!1698423 () Bool)

(assert (=> bs!344250 m!1698423))

(assert (=> bs!344250 m!1696323))

(declare-fun m!1698425 () Bool)

(assert (=> bs!344250 m!1698425))

(assert (=> b!1461033 d!428162))

(declare-fun d!428164 () Bool)

(declare-fun e!932635 () Bool)

(assert (=> d!428164 e!932635))

(declare-fun res!661662 () Bool)

(assert (=> d!428164 (=> (not res!661662) (not e!932635))))

(declare-fun lt!505741 () BalanceConc!10286)

(assert (=> d!428164 (= res!661662 (= (list!6073 lt!505741) (Cons!15174 lt!504656 Nil!15174)))))

(assert (=> d!428164 (= lt!505741 (singleton!537 lt!504656))))

(assert (=> d!428164 (= (singletonSeq!1277 lt!504656) lt!505741)))

(declare-fun b!1461943 () Bool)

(assert (=> b!1461943 (= e!932635 (isBalanced!1550 (c!240746 lt!505741)))))

(assert (= (and d!428164 res!661662) b!1461943))

(declare-fun m!1698427 () Bool)

(assert (=> d!428164 m!1698427))

(declare-fun m!1698429 () Bool)

(assert (=> d!428164 m!1698429))

(declare-fun m!1698431 () Bool)

(assert (=> b!1461943 m!1698431))

(assert (=> b!1461033 d!428164))

(declare-fun d!428166 () Bool)

(assert (=> d!428166 (= (inv!20271 (tag!2937 (h!20576 (rules!11668 thiss!10022)))) (= (mod (str.len (value!85827 (tag!2937 (h!20576 (rules!11668 thiss!10022))))) 2) 0))))

(assert (=> b!1461251 d!428166))

(declare-fun d!428168 () Bool)

(declare-fun res!661663 () Bool)

(declare-fun e!932636 () Bool)

(assert (=> d!428168 (=> (not res!661663) (not e!932636))))

(assert (=> d!428168 (= res!661663 (semiInverseModEq!1007 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) (toValue!3984 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))))))

(assert (=> d!428168 (= (inv!20285 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) e!932636)))

(declare-fun b!1461944 () Bool)

(assert (=> b!1461944 (= e!932636 (equivClasses!966 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) (toValue!3984 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))))))

(assert (= (and d!428168 res!661663) b!1461944))

(declare-fun m!1698433 () Bool)

(assert (=> d!428168 m!1698433))

(declare-fun m!1698435 () Bool)

(assert (=> b!1461944 m!1698435))

(assert (=> b!1461251 d!428168))

(declare-fun d!428170 () Bool)

(declare-fun lt!505742 () Bool)

(assert (=> d!428170 (= lt!505742 (isEmpty!9527 (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 lt!504650)))))))))

(assert (=> d!428170 (= lt!505742 (isEmpty!9531 (c!240744 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 lt!504650)))))))))

(assert (=> d!428170 (= (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 lt!504650))))) lt!505742)))

(declare-fun bs!344251 () Bool)

(assert (= bs!344251 d!428170))

(declare-fun m!1698437 () Bool)

(assert (=> bs!344251 m!1698437))

(assert (=> bs!344251 m!1698437))

(declare-fun m!1698439 () Bool)

(assert (=> bs!344251 m!1698439))

(declare-fun m!1698441 () Bool)

(assert (=> bs!344251 m!1698441))

(assert (=> b!1461002 d!428170))

(declare-fun d!428172 () Bool)

(declare-fun e!932639 () Bool)

(assert (=> d!428172 e!932639))

(declare-fun res!661664 () Bool)

(assert (=> d!428172 (=> (not res!661664) (not e!932639))))

(declare-fun e!932637 () Bool)

(assert (=> d!428172 (= res!661664 e!932637)))

(declare-fun c!240951 () Bool)

(declare-fun lt!505743 () tuple2!14244)

(assert (=> d!428172 (= c!240951 (> (size!12413 (_1!8008 lt!505743)) 0))))

(assert (=> d!428172 (= lt!505743 (lexTailRecV2!471 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 lt!504650)) (BalanceConc!10285 Empty!5172) (print!1103 Lexer!2327 (seqFromList!1712 lt!504650)) (BalanceConc!10287 Empty!5173)))))

(assert (=> d!428172 (= (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 lt!504650))) lt!505743)))

(declare-fun b!1461945 () Bool)

(declare-fun e!932638 () Bool)

(assert (=> b!1461945 (= e!932637 e!932638)))

(declare-fun res!661666 () Bool)

(assert (=> b!1461945 (= res!661666 (< (size!12415 (_2!8008 lt!505743)) (size!12415 (print!1103 Lexer!2327 (seqFromList!1712 lt!504650)))))))

(assert (=> b!1461945 (=> (not res!661666) (not e!932638))))

(declare-fun b!1461946 () Bool)

(declare-fun res!661665 () Bool)

(assert (=> b!1461946 (=> (not res!661665) (not e!932639))))

(assert (=> b!1461946 (= res!661665 (= (list!6073 (_1!8008 lt!505743)) (_1!8011 (lexList!716 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (print!1103 Lexer!2327 (seqFromList!1712 lt!504650)))))))))

(declare-fun b!1461947 () Bool)

(assert (=> b!1461947 (= e!932639 (= (list!6075 (_2!8008 lt!505743)) (_2!8011 (lexList!716 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (print!1103 Lexer!2327 (seqFromList!1712 lt!504650)))))))))

(declare-fun b!1461948 () Bool)

(assert (=> b!1461948 (= e!932637 (= (_2!8008 lt!505743) (print!1103 Lexer!2327 (seqFromList!1712 lt!504650))))))

(declare-fun b!1461949 () Bool)

(assert (=> b!1461949 (= e!932638 (not (isEmpty!9519 (_1!8008 lt!505743))))))

(assert (= (and d!428172 c!240951) b!1461945))

(assert (= (and d!428172 (not c!240951)) b!1461948))

(assert (= (and b!1461945 res!661666) b!1461949))

(assert (= (and d!428172 res!661664) b!1461946))

(assert (= (and b!1461946 res!661665) b!1461947))

(declare-fun m!1698443 () Bool)

(assert (=> b!1461946 m!1698443))

(assert (=> b!1461946 m!1696085))

(declare-fun m!1698445 () Bool)

(assert (=> b!1461946 m!1698445))

(assert (=> b!1461946 m!1698445))

(declare-fun m!1698447 () Bool)

(assert (=> b!1461946 m!1698447))

(declare-fun m!1698449 () Bool)

(assert (=> b!1461947 m!1698449))

(assert (=> b!1461947 m!1696085))

(assert (=> b!1461947 m!1698445))

(assert (=> b!1461947 m!1698445))

(assert (=> b!1461947 m!1698447))

(declare-fun m!1698451 () Bool)

(assert (=> b!1461949 m!1698451))

(declare-fun m!1698453 () Bool)

(assert (=> b!1461945 m!1698453))

(assert (=> b!1461945 m!1696085))

(declare-fun m!1698455 () Bool)

(assert (=> b!1461945 m!1698455))

(declare-fun m!1698457 () Bool)

(assert (=> d!428172 m!1698457))

(assert (=> d!428172 m!1696085))

(assert (=> d!428172 m!1696085))

(declare-fun m!1698459 () Bool)

(assert (=> d!428172 m!1698459))

(assert (=> b!1461002 d!428172))

(declare-fun d!428174 () Bool)

(declare-fun lt!505744 () BalanceConc!10284)

(assert (=> d!428174 (= (list!6075 lt!505744) (printList!725 Lexer!2327 (list!6073 (seqFromList!1712 lt!504650))))))

(assert (=> d!428174 (= lt!505744 (printTailRec!697 Lexer!2327 (seqFromList!1712 lt!504650) 0 (BalanceConc!10285 Empty!5172)))))

(assert (=> d!428174 (= (print!1103 Lexer!2327 (seqFromList!1712 lt!504650)) lt!505744)))

(declare-fun bs!344252 () Bool)

(assert (= bs!344252 d!428174))

(declare-fun m!1698461 () Bool)

(assert (=> bs!344252 m!1698461))

(assert (=> bs!344252 m!1696083))

(declare-fun m!1698463 () Bool)

(assert (=> bs!344252 m!1698463))

(assert (=> bs!344252 m!1698463))

(declare-fun m!1698465 () Bool)

(assert (=> bs!344252 m!1698465))

(assert (=> bs!344252 m!1696083))

(declare-fun m!1698467 () Bool)

(assert (=> bs!344252 m!1698467))

(assert (=> b!1461002 d!428174))

(declare-fun d!428176 () Bool)

(assert (=> d!428176 (= (seqFromList!1712 lt!504650) (fromListB!736 lt!504650))))

(declare-fun bs!344253 () Bool)

(assert (= bs!344253 d!428176))

(declare-fun m!1698469 () Bool)

(assert (=> bs!344253 m!1698469))

(assert (=> b!1461002 d!428176))

(declare-fun bs!344254 () Bool)

(declare-fun d!428178 () Bool)

(assert (= bs!344254 (and d!428178 d!427750)))

(declare-fun lambda!63298 () Int)

(assert (=> bs!344254 (= lambda!63298 lambda!63291)))

(declare-fun bs!344255 () Bool)

(assert (= bs!344255 (and d!428178 d!428096)))

(assert (=> bs!344255 (= lambda!63298 lambda!63296)))

(declare-fun bs!344256 () Bool)

(assert (= bs!344256 (and d!428178 d!428106)))

(assert (=> bs!344256 (= lambda!63298 lambda!63297)))

(declare-fun b!1461954 () Bool)

(declare-fun e!932644 () Bool)

(assert (=> b!1461954 (= e!932644 true)))

(declare-fun b!1461953 () Bool)

(declare-fun e!932643 () Bool)

(assert (=> b!1461953 (= e!932643 e!932644)))

(declare-fun b!1461952 () Bool)

(declare-fun e!932642 () Bool)

(assert (=> b!1461952 (= e!932642 e!932643)))

(assert (=> d!428178 e!932642))

(assert (= b!1461953 b!1461954))

(assert (= b!1461952 b!1461953))

(assert (= (and d!428178 ((_ is Cons!15175) (rules!11668 thiss!10022))) b!1461952))

(assert (=> b!1461954 (< (dynLambda!6923 order!9145 (toValue!3984 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63298))))

(assert (=> b!1461954 (< (dynLambda!6925 order!9149 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63298))))

(assert (=> d!428178 true))

(declare-fun lt!505745 () Bool)

(assert (=> d!428178 (= lt!505745 (forall!3740 lt!505087 lambda!63298))))

(declare-fun e!932641 () Bool)

(assert (=> d!428178 (= lt!505745 e!932641)))

(declare-fun res!661668 () Bool)

(assert (=> d!428178 (=> res!661668 e!932641)))

(assert (=> d!428178 (= res!661668 (not ((_ is Cons!15174) lt!505087)))))

(assert (=> d!428178 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428178 (= (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!505087) lt!505745)))

(declare-fun b!1461950 () Bool)

(declare-fun e!932640 () Bool)

(assert (=> b!1461950 (= e!932641 e!932640)))

(declare-fun res!661667 () Bool)

(assert (=> b!1461950 (=> (not res!661667) (not e!932640))))

(assert (=> b!1461950 (= res!661667 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!505087)))))

(declare-fun b!1461951 () Bool)

(assert (=> b!1461951 (= e!932640 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (t!134383 lt!505087)))))

(assert (= (and d!428178 (not res!661668)) b!1461950))

(assert (= (and b!1461950 res!661667) b!1461951))

(declare-fun m!1698471 () Bool)

(assert (=> d!428178 m!1698471))

(assert (=> d!428178 m!1696087))

(declare-fun m!1698473 () Bool)

(assert (=> b!1461950 m!1698473))

(declare-fun m!1698475 () Bool)

(assert (=> b!1461951 m!1698475))

(assert (=> b!1461117 d!428178))

(declare-fun d!428180 () Bool)

(assert (=> d!428180 (= (separableTokens!263 Lexer!2327 (tokens!2100 other!32) (rules!11668 other!32)) (tokensListTwoByTwoPredicateSeparable!136 Lexer!2327 (tokens!2100 other!32) 0 (rules!11668 other!32)))))

(declare-fun bs!344257 () Bool)

(assert (= bs!344257 d!428180))

(declare-fun m!1698477 () Bool)

(assert (=> bs!344257 m!1698477))

(assert (=> b!1461218 d!428180))

(declare-fun d!428182 () Bool)

(assert (=> d!428182 (= (inv!20284 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))) (<= (size!12414 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022))))) 2147483647))))

(declare-fun bs!344258 () Bool)

(assert (= bs!344258 d!428182))

(declare-fun m!1698479 () Bool)

(assert (=> bs!344258 m!1698479))

(assert (=> b!1461248 d!428182))

(assert (=> d!427746 d!427918))

(declare-fun b!1461963 () Bool)

(declare-fun e!932654 () Bool)

(declare-fun e!932655 () Bool)

(assert (=> b!1461963 (= e!932654 e!932655)))

(declare-fun res!661680 () Bool)

(assert (=> b!1461963 (=> (not res!661680) (not e!932655))))

(assert (=> b!1461963 (= res!661680 ((_ is Cons!15174) lt!505086))))

(declare-fun b!1461965 () Bool)

(declare-fun e!932656 () Bool)

(assert (=> b!1461965 (= e!932656 (subseq!367 (t!134383 (drop!744 lt!505086 0)) (t!134383 lt!505086)))))

(declare-fun d!428184 () Bool)

(declare-fun res!661677 () Bool)

(assert (=> d!428184 (=> res!661677 e!932654)))

(assert (=> d!428184 (= res!661677 ((_ is Nil!15174) (drop!744 lt!505086 0)))))

(assert (=> d!428184 (= (subseq!367 (drop!744 lt!505086 0) lt!505086) e!932654)))

(declare-fun b!1461964 () Bool)

(declare-fun e!932653 () Bool)

(assert (=> b!1461964 (= e!932655 e!932653)))

(declare-fun res!661678 () Bool)

(assert (=> b!1461964 (=> res!661678 e!932653)))

(assert (=> b!1461964 (= res!661678 e!932656)))

(declare-fun res!661679 () Bool)

(assert (=> b!1461964 (=> (not res!661679) (not e!932656))))

(assert (=> b!1461964 (= res!661679 (= (h!20575 (drop!744 lt!505086 0)) (h!20575 lt!505086)))))

(declare-fun b!1461966 () Bool)

(assert (=> b!1461966 (= e!932653 (subseq!367 (drop!744 lt!505086 0) (t!134383 lt!505086)))))

(assert (= (and d!428184 (not res!661677)) b!1461963))

(assert (= (and b!1461963 res!661680) b!1461964))

(assert (= (and b!1461964 res!661679) b!1461965))

(assert (= (and b!1461964 (not res!661678)) b!1461966))

(declare-fun m!1698481 () Bool)

(assert (=> b!1461965 m!1698481))

(assert (=> b!1461966 m!1696429))

(declare-fun m!1698483 () Bool)

(assert (=> b!1461966 m!1698483))

(assert (=> d!427746 d!428184))

(declare-fun d!428186 () Bool)

(assert (=> d!428186 (subseq!367 (drop!744 lt!505086 0) lt!505086)))

(declare-fun lt!505748 () Unit!24235)

(declare-fun choose!8991 (List!15240 Int) Unit!24235)

(assert (=> d!428186 (= lt!505748 (choose!8991 lt!505086 0))))

(declare-fun e!932659 () Bool)

(assert (=> d!428186 e!932659))

(declare-fun res!661683 () Bool)

(assert (=> d!428186 (=> (not res!661683) (not e!932659))))

(assert (=> d!428186 (= res!661683 (>= 0 0))))

(assert (=> d!428186 (= (lemmaDropSubSeq!62 lt!505086 0) lt!505748)))

(declare-fun b!1461969 () Bool)

(assert (=> b!1461969 (= e!932659 (<= 0 (size!12414 lt!505086)))))

(assert (= (and d!428186 res!661683) b!1461969))

(assert (=> d!428186 m!1696429))

(assert (=> d!428186 m!1696429))

(assert (=> d!428186 m!1696441))

(declare-fun m!1698485 () Bool)

(assert (=> d!428186 m!1698485))

(assert (=> b!1461969 m!1696427))

(assert (=> d!427746 d!428186))

(declare-fun d!428188 () Bool)

(assert (=> d!428188 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!505090)))

(declare-fun lt!505751 () Unit!24235)

(declare-fun choose!8992 (LexerInterface!2329 List!15241 List!15240 List!15240) Unit!24235)

(assert (=> d!428188 (= lt!505751 (choose!8992 Lexer!2327 (rules!11668 thiss!10022) lt!505087 lt!505090))))

(assert (=> d!428188 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428188 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!62 Lexer!2327 (rules!11668 thiss!10022) lt!505087 lt!505090) lt!505751)))

(declare-fun bs!344259 () Bool)

(assert (= bs!344259 d!428188))

(assert (=> bs!344259 m!1696443))

(declare-fun m!1698487 () Bool)

(assert (=> bs!344259 m!1698487))

(assert (=> bs!344259 m!1696087))

(assert (=> d!427746 d!428188))

(assert (=> d!427746 d!427996))

(declare-fun bs!344260 () Bool)

(declare-fun d!428190 () Bool)

(assert (= bs!344260 (and d!428190 d!427750)))

(declare-fun lambda!63299 () Int)

(assert (=> bs!344260 (= lambda!63299 lambda!63291)))

(declare-fun bs!344261 () Bool)

(assert (= bs!344261 (and d!428190 d!428096)))

(assert (=> bs!344261 (= lambda!63299 lambda!63296)))

(declare-fun bs!344262 () Bool)

(assert (= bs!344262 (and d!428190 d!428106)))

(assert (=> bs!344262 (= lambda!63299 lambda!63297)))

(declare-fun bs!344263 () Bool)

(assert (= bs!344263 (and d!428190 d!428178)))

(assert (=> bs!344263 (= lambda!63299 lambda!63298)))

(declare-fun b!1461974 () Bool)

(declare-fun e!932664 () Bool)

(assert (=> b!1461974 (= e!932664 true)))

(declare-fun b!1461973 () Bool)

(declare-fun e!932663 () Bool)

(assert (=> b!1461973 (= e!932663 e!932664)))

(declare-fun b!1461972 () Bool)

(declare-fun e!932662 () Bool)

(assert (=> b!1461972 (= e!932662 e!932663)))

(assert (=> d!428190 e!932662))

(assert (= b!1461973 b!1461974))

(assert (= b!1461972 b!1461973))

(assert (= (and d!428190 ((_ is Cons!15175) (rules!11668 thiss!10022))) b!1461972))

(assert (=> b!1461974 (< (dynLambda!6923 order!9145 (toValue!3984 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63299))))

(assert (=> b!1461974 (< (dynLambda!6925 order!9149 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63299))))

(assert (=> d!428190 true))

(declare-fun lt!505752 () Bool)

(assert (=> d!428190 (= lt!505752 (forall!3740 lt!505090 lambda!63299))))

(declare-fun e!932661 () Bool)

(assert (=> d!428190 (= lt!505752 e!932661)))

(declare-fun res!661685 () Bool)

(assert (=> d!428190 (=> res!661685 e!932661)))

(assert (=> d!428190 (= res!661685 (not ((_ is Cons!15174) lt!505090)))))

(assert (=> d!428190 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428190 (= (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!505090) lt!505752)))

(declare-fun b!1461970 () Bool)

(declare-fun e!932660 () Bool)

(assert (=> b!1461970 (= e!932661 e!932660)))

(declare-fun res!661684 () Bool)

(assert (=> b!1461970 (=> (not res!661684) (not e!932660))))

(assert (=> b!1461970 (= res!661684 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!505090)))))

(declare-fun b!1461971 () Bool)

(assert (=> b!1461971 (= e!932660 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (t!134383 lt!505090)))))

(assert (= (and d!428190 (not res!661685)) b!1461970))

(assert (= (and b!1461970 res!661684) b!1461971))

(declare-fun m!1698489 () Bool)

(assert (=> d!428190 m!1698489))

(assert (=> d!428190 m!1696087))

(declare-fun m!1698491 () Bool)

(assert (=> b!1461970 m!1698491))

(declare-fun m!1698493 () Bool)

(assert (=> b!1461971 m!1698493))

(assert (=> d!427746 d!428190))

(declare-fun b!1461975 () Bool)

(declare-fun e!932666 () Int)

(declare-fun call!98342 () Int)

(assert (=> b!1461975 (= e!932666 call!98342)))

(declare-fun b!1461976 () Bool)

(declare-fun e!932665 () List!15240)

(assert (=> b!1461976 (= e!932665 lt!505086)))

(declare-fun b!1461977 () Bool)

(declare-fun e!932667 () Int)

(assert (=> b!1461977 (= e!932667 (- call!98342 0))))

(declare-fun b!1461978 () Bool)

(assert (=> b!1461978 (= e!932665 (drop!744 (t!134383 lt!505086) (- 0 1)))))

(declare-fun b!1461979 () Bool)

(declare-fun e!932669 () List!15240)

(assert (=> b!1461979 (= e!932669 e!932665)))

(declare-fun c!240955 () Bool)

(assert (=> b!1461979 (= c!240955 (<= 0 0))))

(declare-fun b!1461980 () Bool)

(assert (=> b!1461980 (= e!932667 0)))

(declare-fun b!1461981 () Bool)

(assert (=> b!1461981 (= e!932666 e!932667)))

(declare-fun c!240954 () Bool)

(assert (=> b!1461981 (= c!240954 (>= 0 call!98342))))

(declare-fun b!1461982 () Bool)

(declare-fun e!932668 () Bool)

(declare-fun lt!505753 () List!15240)

(assert (=> b!1461982 (= e!932668 (= (size!12414 lt!505753) e!932666))))

(declare-fun c!240953 () Bool)

(assert (=> b!1461982 (= c!240953 (<= 0 0))))

(declare-fun b!1461983 () Bool)

(assert (=> b!1461983 (= e!932669 Nil!15174)))

(declare-fun bm!98337 () Bool)

(assert (=> bm!98337 (= call!98342 (size!12414 lt!505086))))

(declare-fun d!428192 () Bool)

(assert (=> d!428192 e!932668))

(declare-fun res!661686 () Bool)

(assert (=> d!428192 (=> (not res!661686) (not e!932668))))

(assert (=> d!428192 (= res!661686 (= ((_ map implies) (content!2243 lt!505753) (content!2243 lt!505086)) ((as const (InoxSet Token!5008)) true)))))

(assert (=> d!428192 (= lt!505753 e!932669)))

(declare-fun c!240952 () Bool)

(assert (=> d!428192 (= c!240952 ((_ is Nil!15174) lt!505086))))

(assert (=> d!428192 (= (drop!744 lt!505086 0) lt!505753)))

(assert (= (and d!428192 c!240952) b!1461983))

(assert (= (and d!428192 (not c!240952)) b!1461979))

(assert (= (and b!1461979 c!240955) b!1461976))

(assert (= (and b!1461979 (not c!240955)) b!1461978))

(assert (= (and d!428192 res!661686) b!1461982))

(assert (= (and b!1461982 c!240953) b!1461975))

(assert (= (and b!1461982 (not c!240953)) b!1461981))

(assert (= (and b!1461981 c!240954) b!1461980))

(assert (= (and b!1461981 (not c!240954)) b!1461977))

(assert (= (or b!1461975 b!1461981 b!1461977) bm!98337))

(declare-fun m!1698495 () Bool)

(assert (=> b!1461978 m!1698495))

(declare-fun m!1698497 () Bool)

(assert (=> b!1461982 m!1698497))

(assert (=> bm!98337 m!1696427))

(declare-fun m!1698499 () Bool)

(assert (=> d!428192 m!1698499))

(declare-fun m!1698501 () Bool)

(assert (=> d!428192 m!1698501))

(assert (=> d!427746 d!428192))

(declare-fun d!428194 () Bool)

(assert (=> d!428194 (= (dropList!480 lt!504662 0) (drop!744 (list!6077 (c!240746 lt!504662)) 0))))

(declare-fun bs!344264 () Bool)

(assert (= bs!344264 d!428194))

(assert (=> bs!344264 m!1697457))

(assert (=> bs!344264 m!1697457))

(declare-fun m!1698503 () Bool)

(assert (=> bs!344264 m!1698503))

(assert (=> d!427746 d!428194))

(declare-fun d!428196 () Bool)

(declare-fun res!661688 () Bool)

(declare-fun e!932671 () Bool)

(assert (=> d!428196 (=> res!661688 e!932671)))

(assert (=> d!428196 (= res!661688 (or (not ((_ is Cons!15174) (dropList!480 lt!504662 0))) (not ((_ is Cons!15174) (t!134383 (dropList!480 lt!504662 0))))))))

(assert (=> d!428196 (= (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 (dropList!480 lt!504662 0) (rules!11668 thiss!10022)) e!932671)))

(declare-fun b!1461984 () Bool)

(declare-fun e!932670 () Bool)

(assert (=> b!1461984 (= e!932671 e!932670)))

(declare-fun res!661687 () Bool)

(assert (=> b!1461984 (=> (not res!661687) (not e!932670))))

(assert (=> b!1461984 (= res!661687 (separableTokensPredicate!538 Lexer!2327 (h!20575 (dropList!480 lt!504662 0)) (h!20575 (t!134383 (dropList!480 lt!504662 0))) (rules!11668 thiss!10022)))))

(declare-fun lt!505757 () Unit!24235)

(declare-fun Unit!24395 () Unit!24235)

(assert (=> b!1461984 (= lt!505757 Unit!24395)))

(assert (=> b!1461984 (> (size!12415 (charsOf!1536 (h!20575 (t!134383 (dropList!480 lt!504662 0))))) 0)))

(declare-fun lt!505756 () Unit!24235)

(declare-fun Unit!24396 () Unit!24235)

(assert (=> b!1461984 (= lt!505756 Unit!24396)))

(assert (=> b!1461984 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 (dropList!480 lt!504662 0))))))

(declare-fun lt!505755 () Unit!24235)

(declare-fun Unit!24397 () Unit!24235)

(assert (=> b!1461984 (= lt!505755 Unit!24397)))

(assert (=> b!1461984 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (dropList!480 lt!504662 0)))))

(declare-fun lt!505759 () Unit!24235)

(declare-fun lt!505760 () Unit!24235)

(assert (=> b!1461984 (= lt!505759 lt!505760)))

(assert (=> b!1461984 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 (dropList!480 lt!504662 0))))))

(assert (=> b!1461984 (= lt!505760 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) (dropList!480 lt!504662 0) (h!20575 (t!134383 (dropList!480 lt!504662 0)))))))

(declare-fun lt!505758 () Unit!24235)

(declare-fun lt!505754 () Unit!24235)

(assert (=> b!1461984 (= lt!505758 lt!505754)))

(assert (=> b!1461984 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (dropList!480 lt!504662 0)))))

(assert (=> b!1461984 (= lt!505754 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) (dropList!480 lt!504662 0) (h!20575 (dropList!480 lt!504662 0))))))

(declare-fun b!1461985 () Bool)

(assert (=> b!1461985 (= e!932670 (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 (Cons!15174 (h!20575 (t!134383 (dropList!480 lt!504662 0))) (t!134383 (t!134383 (dropList!480 lt!504662 0)))) (rules!11668 thiss!10022)))))

(assert (= (and d!428196 (not res!661688)) b!1461984))

(assert (= (and b!1461984 res!661687) b!1461985))

(declare-fun m!1698505 () Bool)

(assert (=> b!1461984 m!1698505))

(declare-fun m!1698507 () Bool)

(assert (=> b!1461984 m!1698507))

(declare-fun m!1698509 () Bool)

(assert (=> b!1461984 m!1698509))

(declare-fun m!1698511 () Bool)

(assert (=> b!1461984 m!1698511))

(declare-fun m!1698513 () Bool)

(assert (=> b!1461984 m!1698513))

(assert (=> b!1461984 m!1696431))

(declare-fun m!1698515 () Bool)

(assert (=> b!1461984 m!1698515))

(assert (=> b!1461984 m!1698509))

(assert (=> b!1461984 m!1696431))

(declare-fun m!1698517 () Bool)

(assert (=> b!1461984 m!1698517))

(declare-fun m!1698519 () Bool)

(assert (=> b!1461985 m!1698519))

(assert (=> d!427746 d!428196))

(declare-fun d!428198 () Bool)

(assert (=> d!428198 (= (head!3008 (originalCharacters!3535 (h!20575 (t!134383 lt!504657)))) (h!20573 (originalCharacters!3535 (h!20575 (t!134383 lt!504657)))))))

(assert (=> b!1461016 d!428198))

(declare-fun d!428200 () Bool)

(declare-fun lt!505763 () C!8152)

(declare-fun apply!3960 (List!15238 Int) C!8152)

(assert (=> d!428200 (= lt!505763 (apply!3960 (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504657)))) 0))))

(declare-fun apply!3961 (Conc!5172 Int) C!8152)

(assert (=> d!428200 (= lt!505763 (apply!3961 (c!240744 (charsOf!1536 (h!20575 (t!134383 lt!504657)))) 0))))

(declare-fun e!932674 () Bool)

(assert (=> d!428200 e!932674))

(declare-fun res!661691 () Bool)

(assert (=> d!428200 (=> (not res!661691) (not e!932674))))

(assert (=> d!428200 (= res!661691 (<= 0 0))))

(assert (=> d!428200 (= (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504657))) 0) lt!505763)))

(declare-fun b!1461988 () Bool)

(assert (=> b!1461988 (= e!932674 (< 0 (size!12415 (charsOf!1536 (h!20575 (t!134383 lt!504657))))))))

(assert (= (and d!428200 res!661691) b!1461988))

(assert (=> d!428200 m!1696197))

(assert (=> d!428200 m!1697829))

(assert (=> d!428200 m!1697829))

(declare-fun m!1698521 () Bool)

(assert (=> d!428200 m!1698521))

(declare-fun m!1698523 () Bool)

(assert (=> d!428200 m!1698523))

(assert (=> b!1461988 m!1696197))

(declare-fun m!1698525 () Bool)

(assert (=> b!1461988 m!1698525))

(assert (=> b!1461016 d!428200))

(declare-fun d!428202 () Bool)

(declare-fun lt!505764 () BalanceConc!10284)

(assert (=> d!428202 (= (list!6075 lt!505764) (originalCharacters!3535 (h!20575 (t!134383 lt!504657))))))

(assert (=> d!428202 (= lt!505764 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504657))))) (value!85828 (h!20575 (t!134383 lt!504657)))))))

(assert (=> d!428202 (= (charsOf!1536 (h!20575 (t!134383 lt!504657))) lt!505764)))

(declare-fun b_lambda!45623 () Bool)

(assert (=> (not b_lambda!45623) (not d!428202)))

(declare-fun tb!82453 () Bool)

(declare-fun t!134423 () Bool)

(assert (=> (and b!1461246 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504657)))))) t!134423) tb!82453))

(declare-fun b!1461989 () Bool)

(declare-fun e!932675 () Bool)

(declare-fun tp!411634 () Bool)

(assert (=> b!1461989 (= e!932675 (and (inv!20288 (c!240744 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504657))))) (value!85828 (h!20575 (t!134383 lt!504657)))))) tp!411634))))

(declare-fun result!99086 () Bool)

(assert (=> tb!82453 (= result!99086 (and (inv!20289 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504657))))) (value!85828 (h!20575 (t!134383 lt!504657))))) e!932675))))

(assert (= tb!82453 b!1461989))

(declare-fun m!1698527 () Bool)

(assert (=> b!1461989 m!1698527))

(declare-fun m!1698529 () Bool)

(assert (=> tb!82453 m!1698529))

(assert (=> d!428202 t!134423))

(declare-fun b_and!99813 () Bool)

(assert (= b_and!99809 (and (=> t!134423 result!99086) b_and!99813)))

(declare-fun tb!82455 () Bool)

(declare-fun t!134425 () Bool)

(assert (=> (and b!1461252 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504657)))))) t!134425) tb!82455))

(declare-fun result!99088 () Bool)

(assert (= result!99088 result!99086))

(assert (=> d!428202 t!134425))

(declare-fun b_and!99815 () Bool)

(assert (= b_and!99811 (and (=> t!134425 result!99088) b_and!99815)))

(declare-fun m!1698531 () Bool)

(assert (=> d!428202 m!1698531))

(declare-fun m!1698533 () Bool)

(assert (=> d!428202 m!1698533))

(assert (=> b!1461016 d!428202))

(declare-fun d!428204 () Bool)

(assert (=> d!428204 (= (list!6073 (_1!8008 lt!504915)) (list!6077 (c!240746 (_1!8008 lt!504915))))))

(declare-fun bs!344265 () Bool)

(assert (= bs!344265 d!428204))

(declare-fun m!1698535 () Bool)

(assert (=> bs!344265 m!1698535))

(assert (=> b!1461016 d!428204))

(declare-fun d!428206 () Bool)

(declare-fun lt!505765 () BalanceConc!10284)

(assert (=> d!428206 (= (list!6075 lt!505765) (printList!725 Lexer!2327 (list!6073 (seqFromList!1712 (t!134383 lt!504657)))))))

(assert (=> d!428206 (= lt!505765 (printTailRec!697 Lexer!2327 (seqFromList!1712 (t!134383 lt!504657)) 0 (BalanceConc!10285 Empty!5172)))))

(assert (=> d!428206 (= (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 lt!504657))) lt!505765)))

(declare-fun bs!344266 () Bool)

(assert (= bs!344266 d!428206))

(declare-fun m!1698537 () Bool)

(assert (=> bs!344266 m!1698537))

(assert (=> bs!344266 m!1696205))

(declare-fun m!1698539 () Bool)

(assert (=> bs!344266 m!1698539))

(assert (=> bs!344266 m!1698539))

(declare-fun m!1698541 () Bool)

(assert (=> bs!344266 m!1698541))

(assert (=> bs!344266 m!1696205))

(declare-fun m!1698543 () Bool)

(assert (=> bs!344266 m!1698543))

(assert (=> b!1461016 d!428206))

(assert (=> b!1461016 d!427904))

(declare-fun d!428208 () Bool)

(assert (=> d!428208 (= (list!6075 lt!504913) (list!6081 (c!240744 lt!504913)))))

(declare-fun bs!344267 () Bool)

(assert (= bs!344267 d!428208))

(declare-fun m!1698545 () Bool)

(assert (=> bs!344267 m!1698545))

(assert (=> b!1461016 d!428208))

(declare-fun d!428210 () Bool)

(declare-fun e!932678 () Bool)

(assert (=> d!428210 e!932678))

(declare-fun res!661692 () Bool)

(assert (=> d!428210 (=> (not res!661692) (not e!932678))))

(declare-fun e!932676 () Bool)

(assert (=> d!428210 (= res!661692 e!932676)))

(declare-fun c!240956 () Bool)

(declare-fun lt!505766 () tuple2!14244)

(assert (=> d!428210 (= c!240956 (> (size!12413 (_1!8008 lt!505766)) 0))))

(assert (=> d!428210 (= lt!505766 (lexTailRecV2!471 Lexer!2327 (rules!11668 other!32) lt!504919 (BalanceConc!10285 Empty!5172) lt!504919 (BalanceConc!10287 Empty!5173)))))

(assert (=> d!428210 (= (lex!1074 Lexer!2327 (rules!11668 other!32) lt!504919) lt!505766)))

(declare-fun b!1461990 () Bool)

(declare-fun e!932677 () Bool)

(assert (=> b!1461990 (= e!932676 e!932677)))

(declare-fun res!661694 () Bool)

(assert (=> b!1461990 (= res!661694 (< (size!12415 (_2!8008 lt!505766)) (size!12415 lt!504919)))))

(assert (=> b!1461990 (=> (not res!661694) (not e!932677))))

(declare-fun b!1461991 () Bool)

(declare-fun res!661693 () Bool)

(assert (=> b!1461991 (=> (not res!661693) (not e!932678))))

(assert (=> b!1461991 (= res!661693 (= (list!6073 (_1!8008 lt!505766)) (_1!8011 (lexList!716 Lexer!2327 (rules!11668 other!32) (list!6075 lt!504919)))))))

(declare-fun b!1461992 () Bool)

(assert (=> b!1461992 (= e!932678 (= (list!6075 (_2!8008 lt!505766)) (_2!8011 (lexList!716 Lexer!2327 (rules!11668 other!32) (list!6075 lt!504919)))))))

(declare-fun b!1461993 () Bool)

(assert (=> b!1461993 (= e!932676 (= (_2!8008 lt!505766) lt!504919))))

(declare-fun b!1461994 () Bool)

(assert (=> b!1461994 (= e!932677 (not (isEmpty!9519 (_1!8008 lt!505766))))))

(assert (= (and d!428210 c!240956) b!1461990))

(assert (= (and d!428210 (not c!240956)) b!1461993))

(assert (= (and b!1461990 res!661694) b!1461994))

(assert (= (and d!428210 res!661692) b!1461991))

(assert (= (and b!1461991 res!661693) b!1461992))

(declare-fun m!1698547 () Bool)

(assert (=> b!1461991 m!1698547))

(assert (=> b!1461991 m!1696225))

(assert (=> b!1461991 m!1696225))

(declare-fun m!1698549 () Bool)

(assert (=> b!1461991 m!1698549))

(declare-fun m!1698551 () Bool)

(assert (=> b!1461992 m!1698551))

(assert (=> b!1461992 m!1696225))

(assert (=> b!1461992 m!1696225))

(assert (=> b!1461992 m!1698549))

(declare-fun m!1698553 () Bool)

(assert (=> b!1461994 m!1698553))

(declare-fun m!1698555 () Bool)

(assert (=> b!1461990 m!1698555))

(declare-fun m!1698557 () Bool)

(assert (=> b!1461990 m!1698557))

(declare-fun m!1698559 () Bool)

(assert (=> d!428210 m!1698559))

(declare-fun m!1698561 () Bool)

(assert (=> d!428210 m!1698561))

(assert (=> b!1461016 d!428210))

(declare-fun d!428212 () Bool)

(declare-fun lt!505767 () BalanceConc!10284)

(assert (=> d!428212 (= (list!6075 lt!505767) (printList!725 Lexer!2327 (list!6073 (singletonSeq!1277 (h!20575 lt!504657)))))))

(assert (=> d!428212 (= lt!505767 (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504657)) 0 (BalanceConc!10285 Empty!5172)))))

(assert (=> d!428212 (= (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504657))) lt!505767)))

(declare-fun bs!344268 () Bool)

(assert (= bs!344268 d!428212))

(declare-fun m!1698563 () Bool)

(assert (=> bs!344268 m!1698563))

(assert (=> bs!344268 m!1696201))

(declare-fun m!1698565 () Bool)

(assert (=> bs!344268 m!1698565))

(assert (=> bs!344268 m!1698565))

(declare-fun m!1698567 () Bool)

(assert (=> bs!344268 m!1698567))

(assert (=> bs!344268 m!1696201))

(assert (=> bs!344268 m!1696203))

(assert (=> b!1461016 d!428212))

(declare-fun d!428214 () Bool)

(assert (=> d!428214 (= (list!6073 (_1!8008 lt!504915)) (list!6073 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 lt!504657))) (h!20575 (t!134383 lt!504657)))))))

(declare-fun lt!505770 () Unit!24235)

(declare-fun choose!8993 (Token!5008 List!15240 BalanceConc!10286) Unit!24235)

(assert (=> d!428214 (= lt!505770 (choose!8993 (h!20575 (t!134383 lt!504657)) (t!134383 (t!134383 lt!504657)) (_1!8008 lt!504915)))))

(declare-fun $colon$colon!249 (List!15240 Token!5008) List!15240)

(assert (=> d!428214 (= (list!6073 (_1!8008 lt!504915)) (list!6073 (seqFromList!1712 ($colon$colon!249 (t!134383 (t!134383 lt!504657)) (h!20575 (t!134383 lt!504657))))))))

(assert (=> d!428214 (= (seqFromListBHdTlConstructive!95 (h!20575 (t!134383 lt!504657)) (t!134383 (t!134383 lt!504657)) (_1!8008 lt!504915)) lt!505770)))

(declare-fun bs!344269 () Bool)

(assert (= bs!344269 d!428214))

(assert (=> bs!344269 m!1696245))

(assert (=> bs!344269 m!1696211))

(assert (=> bs!344269 m!1696215))

(assert (=> bs!344269 m!1696209))

(declare-fun m!1698569 () Bool)

(assert (=> bs!344269 m!1698569))

(declare-fun m!1698571 () Bool)

(assert (=> bs!344269 m!1698571))

(assert (=> bs!344269 m!1696209))

(assert (=> bs!344269 m!1696211))

(assert (=> bs!344269 m!1698569))

(declare-fun m!1698573 () Bool)

(assert (=> bs!344269 m!1698573))

(assert (=> bs!344269 m!1698571))

(declare-fun m!1698575 () Bool)

(assert (=> bs!344269 m!1698575))

(assert (=> b!1461016 d!428214))

(declare-fun b!1462023 () Bool)

(declare-fun e!932699 () Bool)

(declare-fun lt!505773 () Bool)

(declare-fun call!98345 () Bool)

(assert (=> b!1462023 (= e!932699 (= lt!505773 call!98345))))

(declare-fun b!1462024 () Bool)

(declare-fun e!932695 () Bool)

(assert (=> b!1462024 (= e!932695 (not lt!505773))))

(declare-fun b!1462025 () Bool)

(declare-fun e!932698 () Bool)

(declare-fun nullable!1249 (Regex!3987) Bool)

(assert (=> b!1462025 (= e!932698 (nullable!1249 (regex!2673 (rule!4446 (h!20575 lt!504657)))))))

(declare-fun b!1462026 () Bool)

(declare-fun derivativeStep!1005 (Regex!3987 C!8152) Regex!3987)

(declare-fun tail!2176 (List!15238) List!15238)

(assert (=> b!1462026 (= e!932698 (matchR!1829 (derivativeStep!1005 (regex!2673 (rule!4446 (h!20575 lt!504657))) (head!3008 (list!6075 (charsOf!1536 (h!20575 lt!504657))))) (tail!2176 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))))

(declare-fun b!1462027 () Bool)

(declare-fun res!661715 () Bool)

(declare-fun e!932696 () Bool)

(assert (=> b!1462027 (=> res!661715 e!932696)))

(declare-fun e!932697 () Bool)

(assert (=> b!1462027 (= res!661715 e!932697)))

(declare-fun res!661711 () Bool)

(assert (=> b!1462027 (=> (not res!661711) (not e!932697))))

(assert (=> b!1462027 (= res!661711 lt!505773)))

(declare-fun bm!98340 () Bool)

(assert (=> bm!98340 (= call!98345 (isEmpty!9527 (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))

(declare-fun b!1462028 () Bool)

(declare-fun e!932694 () Bool)

(declare-fun e!932693 () Bool)

(assert (=> b!1462028 (= e!932694 e!932693)))

(declare-fun res!661716 () Bool)

(assert (=> b!1462028 (=> res!661716 e!932693)))

(assert (=> b!1462028 (= res!661716 call!98345)))

(declare-fun b!1462029 () Bool)

(declare-fun res!661712 () Bool)

(assert (=> b!1462029 (=> res!661712 e!932693)))

(assert (=> b!1462029 (= res!661712 (not (isEmpty!9527 (tail!2176 (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))))

(declare-fun b!1462030 () Bool)

(assert (=> b!1462030 (= e!932696 e!932694)))

(declare-fun res!661717 () Bool)

(assert (=> b!1462030 (=> (not res!661717) (not e!932694))))

(assert (=> b!1462030 (= res!661717 (not lt!505773))))

(declare-fun b!1462031 () Bool)

(assert (=> b!1462031 (= e!932697 (= (head!3008 (list!6075 (charsOf!1536 (h!20575 lt!504657)))) (c!240745 (regex!2673 (rule!4446 (h!20575 lt!504657))))))))

(declare-fun b!1462033 () Bool)

(declare-fun res!661713 () Bool)

(assert (=> b!1462033 (=> (not res!661713) (not e!932697))))

(assert (=> b!1462033 (= res!661713 (isEmpty!9527 (tail!2176 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))))

(declare-fun b!1462034 () Bool)

(declare-fun res!661714 () Bool)

(assert (=> b!1462034 (=> res!661714 e!932696)))

(assert (=> b!1462034 (= res!661714 (not ((_ is ElementMatch!3987) (regex!2673 (rule!4446 (h!20575 lt!504657))))))))

(assert (=> b!1462034 (= e!932695 e!932696)))

(declare-fun b!1462035 () Bool)

(assert (=> b!1462035 (= e!932693 (not (= (head!3008 (list!6075 (charsOf!1536 (h!20575 lt!504657)))) (c!240745 (regex!2673 (rule!4446 (h!20575 lt!504657)))))))))

(declare-fun b!1462036 () Bool)

(assert (=> b!1462036 (= e!932699 e!932695)))

(declare-fun c!240965 () Bool)

(assert (=> b!1462036 (= c!240965 ((_ is EmptyLang!3987) (regex!2673 (rule!4446 (h!20575 lt!504657)))))))

(declare-fun d!428216 () Bool)

(assert (=> d!428216 e!932699))

(declare-fun c!240964 () Bool)

(assert (=> d!428216 (= c!240964 ((_ is EmptyExpr!3987) (regex!2673 (rule!4446 (h!20575 lt!504657)))))))

(assert (=> d!428216 (= lt!505773 e!932698)))

(declare-fun c!240963 () Bool)

(assert (=> d!428216 (= c!240963 (isEmpty!9527 (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))

(declare-fun validRegex!1683 (Regex!3987) Bool)

(assert (=> d!428216 (validRegex!1683 (regex!2673 (rule!4446 (h!20575 lt!504657))))))

(assert (=> d!428216 (= (matchR!1829 (regex!2673 (rule!4446 (h!20575 lt!504657))) (list!6075 (charsOf!1536 (h!20575 lt!504657)))) lt!505773)))

(declare-fun b!1462032 () Bool)

(declare-fun res!661718 () Bool)

(assert (=> b!1462032 (=> (not res!661718) (not e!932697))))

(assert (=> b!1462032 (= res!661718 (not call!98345))))

(assert (= (and d!428216 c!240963) b!1462025))

(assert (= (and d!428216 (not c!240963)) b!1462026))

(assert (= (and d!428216 c!240964) b!1462023))

(assert (= (and d!428216 (not c!240964)) b!1462036))

(assert (= (and b!1462036 c!240965) b!1462024))

(assert (= (and b!1462036 (not c!240965)) b!1462034))

(assert (= (and b!1462034 (not res!661714)) b!1462027))

(assert (= (and b!1462027 res!661711) b!1462032))

(assert (= (and b!1462032 res!661718) b!1462033))

(assert (= (and b!1462033 res!661713) b!1462031))

(assert (= (and b!1462027 (not res!661715)) b!1462030))

(assert (= (and b!1462030 res!661717) b!1462028))

(assert (= (and b!1462028 (not res!661716)) b!1462029))

(assert (= (and b!1462029 (not res!661712)) b!1462035))

(assert (= (or b!1462023 b!1462028 b!1462032) bm!98340))

(assert (=> b!1462035 m!1696219))

(declare-fun m!1698577 () Bool)

(assert (=> b!1462035 m!1698577))

(assert (=> b!1462029 m!1696219))

(declare-fun m!1698579 () Bool)

(assert (=> b!1462029 m!1698579))

(assert (=> b!1462029 m!1698579))

(declare-fun m!1698581 () Bool)

(assert (=> b!1462029 m!1698581))

(assert (=> b!1462026 m!1696219))

(assert (=> b!1462026 m!1698577))

(assert (=> b!1462026 m!1698577))

(declare-fun m!1698583 () Bool)

(assert (=> b!1462026 m!1698583))

(assert (=> b!1462026 m!1696219))

(assert (=> b!1462026 m!1698579))

(assert (=> b!1462026 m!1698583))

(assert (=> b!1462026 m!1698579))

(declare-fun m!1698585 () Bool)

(assert (=> b!1462026 m!1698585))

(assert (=> bm!98340 m!1696219))

(declare-fun m!1698587 () Bool)

(assert (=> bm!98340 m!1698587))

(assert (=> b!1462033 m!1696219))

(assert (=> b!1462033 m!1698579))

(assert (=> b!1462033 m!1698579))

(assert (=> b!1462033 m!1698581))

(assert (=> b!1462031 m!1696219))

(assert (=> b!1462031 m!1698577))

(assert (=> d!428216 m!1696219))

(assert (=> d!428216 m!1698587))

(declare-fun m!1698589 () Bool)

(assert (=> d!428216 m!1698589))

(declare-fun m!1698591 () Bool)

(assert (=> b!1462025 m!1698591))

(assert (=> b!1461016 d!428216))

(declare-fun d!428218 () Bool)

(assert (=> d!428218 (isPrefix!1203 lt!504920 (++!4081 lt!504920 lt!504918))))

(declare-fun lt!505776 () Unit!24235)

(declare-fun choose!8994 (List!15238 List!15238) Unit!24235)

(assert (=> d!428218 (= lt!505776 (choose!8994 lt!504920 lt!504918))))

(assert (=> d!428218 (= (lemmaConcatTwoListThenFirstIsPrefix!766 lt!504920 lt!504918) lt!505776)))

(declare-fun bs!344270 () Bool)

(assert (= bs!344270 d!428218))

(assert (=> bs!344270 m!1696251))

(assert (=> bs!344270 m!1696251))

(assert (=> bs!344270 m!1696255))

(declare-fun m!1698593 () Bool)

(assert (=> bs!344270 m!1698593))

(assert (=> b!1461016 d!428218))

(declare-fun d!428220 () Bool)

(assert (=> d!428220 (= (list!6075 lt!504919) (list!6081 (c!240744 lt!504919)))))

(declare-fun bs!344271 () Bool)

(assert (= bs!344271 d!428220))

(declare-fun m!1698595 () Bool)

(assert (=> bs!344271 m!1698595))

(assert (=> b!1461016 d!428220))

(declare-fun d!428222 () Bool)

(assert (=> d!428222 (= (list!6073 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 lt!504657))) (h!20575 (t!134383 lt!504657)))) (list!6077 (c!240746 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 lt!504657))) (h!20575 (t!134383 lt!504657))))))))

(declare-fun bs!344272 () Bool)

(assert (= bs!344272 d!428222))

(declare-fun m!1698597 () Bool)

(assert (=> bs!344272 m!1698597))

(assert (=> b!1461016 d!428222))

(declare-fun d!428224 () Bool)

(assert (=> d!428224 (= (isEmpty!9527 (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657))))))) ((_ is Nil!15172) (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657))))))))))

(assert (=> b!1461016 d!428224))

(declare-fun d!428226 () Bool)

(declare-fun e!932700 () Bool)

(assert (=> d!428226 e!932700))

(declare-fun res!661719 () Bool)

(assert (=> d!428226 (=> (not res!661719) (not e!932700))))

(declare-fun lt!505777 () BalanceConc!10286)

(assert (=> d!428226 (= res!661719 (= (list!6073 lt!505777) (Cons!15174 (h!20575 lt!504657) Nil!15174)))))

(assert (=> d!428226 (= lt!505777 (singleton!537 (h!20575 lt!504657)))))

(assert (=> d!428226 (= (singletonSeq!1277 (h!20575 lt!504657)) lt!505777)))

(declare-fun b!1462037 () Bool)

(assert (=> b!1462037 (= e!932700 (isBalanced!1550 (c!240746 lt!505777)))))

(assert (= (and d!428226 res!661719) b!1462037))

(declare-fun m!1698599 () Bool)

(assert (=> d!428226 m!1698599))

(declare-fun m!1698601 () Bool)

(assert (=> d!428226 m!1698601))

(declare-fun m!1698603 () Bool)

(assert (=> b!1462037 m!1698603))

(assert (=> b!1461016 d!428226))

(declare-fun d!428228 () Bool)

(declare-fun lt!505780 () C!8152)

(assert (=> d!428228 (= lt!505780 (head!3008 (list!6075 lt!504919)))))

(declare-fun head!3015 (Conc!5172) C!8152)

(assert (=> d!428228 (= lt!505780 (head!3015 (c!240744 lt!504919)))))

(assert (=> d!428228 (not (isEmpty!9529 lt!504919))))

(assert (=> d!428228 (= (head!3009 lt!504919) lt!505780)))

(declare-fun bs!344273 () Bool)

(assert (= bs!344273 d!428228))

(assert (=> bs!344273 m!1696225))

(assert (=> bs!344273 m!1696225))

(assert (=> bs!344273 m!1696267))

(declare-fun m!1698605 () Bool)

(assert (=> bs!344273 m!1698605))

(declare-fun m!1698607 () Bool)

(assert (=> bs!344273 m!1698607))

(assert (=> b!1461016 d!428228))

(declare-fun b!1462056 () Bool)

(declare-fun res!661740 () Bool)

(declare-fun e!932708 () Bool)

(assert (=> b!1462056 (=> (not res!661740) (not e!932708))))

(declare-fun lt!505792 () Option!2875)

(assert (=> b!1462056 (= res!661740 (= (++!4081 (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!505792)))) (_2!8009 (get!4616 lt!505792))) (list!6075 lt!504913)))))

(declare-fun b!1462057 () Bool)

(declare-fun res!661739 () Bool)

(assert (=> b!1462057 (=> (not res!661739) (not e!932708))))

(assert (=> b!1462057 (= res!661739 (= (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!505792)))) (originalCharacters!3535 (_1!8009 (get!4616 lt!505792)))))))

(declare-fun bm!98343 () Bool)

(declare-fun call!98348 () Option!2875)

(declare-fun maxPrefixOneRule!661 (LexerInterface!2329 Rule!5146 List!15238) Option!2875)

(assert (=> bm!98343 (= call!98348 (maxPrefixOneRule!661 Lexer!2327 (h!20576 (rules!11668 other!32)) (list!6075 lt!504913)))))

(declare-fun b!1462058 () Bool)

(declare-fun e!932707 () Option!2875)

(declare-fun lt!505794 () Option!2875)

(declare-fun lt!505795 () Option!2875)

(assert (=> b!1462058 (= e!932707 (ite (and ((_ is None!2874) lt!505794) ((_ is None!2874) lt!505795)) None!2874 (ite ((_ is None!2874) lt!505795) lt!505794 (ite ((_ is None!2874) lt!505794) lt!505795 (ite (>= (size!12407 (_1!8009 (v!22498 lt!505794))) (size!12407 (_1!8009 (v!22498 lt!505795)))) lt!505794 lt!505795)))))))

(assert (=> b!1462058 (= lt!505794 call!98348)))

(assert (=> b!1462058 (= lt!505795 (maxPrefix!1193 Lexer!2327 (t!134384 (rules!11668 other!32)) (list!6075 lt!504913)))))

(declare-fun b!1462059 () Bool)

(declare-fun res!661734 () Bool)

(assert (=> b!1462059 (=> (not res!661734) (not e!932708))))

(declare-fun apply!3962 (TokenValueInjection!5186 BalanceConc!10284) TokenValue!2763)

(declare-fun seqFromList!1714 (List!15238) BalanceConc!10284)

(assert (=> b!1462059 (= res!661734 (= (value!85828 (_1!8009 (get!4616 lt!505792))) (apply!3962 (transformation!2673 (rule!4446 (_1!8009 (get!4616 lt!505792)))) (seqFromList!1714 (originalCharacters!3535 (_1!8009 (get!4616 lt!505792)))))))))

(declare-fun b!1462060 () Bool)

(declare-fun contains!2908 (List!15241 Rule!5146) Bool)

(assert (=> b!1462060 (= e!932708 (contains!2908 (rules!11668 other!32) (rule!4446 (_1!8009 (get!4616 lt!505792)))))))

(declare-fun b!1462061 () Bool)

(assert (=> b!1462061 (= e!932707 call!98348)))

(declare-fun b!1462062 () Bool)

(declare-fun e!932709 () Bool)

(assert (=> b!1462062 (= e!932709 e!932708)))

(declare-fun res!661737 () Bool)

(assert (=> b!1462062 (=> (not res!661737) (not e!932708))))

(assert (=> b!1462062 (= res!661737 (isDefined!2324 lt!505792))))

(declare-fun b!1462063 () Bool)

(declare-fun res!661736 () Bool)

(assert (=> b!1462063 (=> (not res!661736) (not e!932708))))

(assert (=> b!1462063 (= res!661736 (< (size!12411 (_2!8009 (get!4616 lt!505792))) (size!12411 (list!6075 lt!504913))))))

(declare-fun d!428230 () Bool)

(assert (=> d!428230 e!932709))

(declare-fun res!661735 () Bool)

(assert (=> d!428230 (=> res!661735 e!932709)))

(declare-fun isEmpty!9533 (Option!2875) Bool)

(assert (=> d!428230 (= res!661735 (isEmpty!9533 lt!505792))))

(assert (=> d!428230 (= lt!505792 e!932707)))

(declare-fun c!240968 () Bool)

(assert (=> d!428230 (= c!240968 (and ((_ is Cons!15175) (rules!11668 other!32)) ((_ is Nil!15175) (t!134384 (rules!11668 other!32)))))))

(declare-fun lt!505791 () Unit!24235)

(declare-fun lt!505793 () Unit!24235)

(assert (=> d!428230 (= lt!505791 lt!505793)))

(assert (=> d!428230 (isPrefix!1203 (list!6075 lt!504913) (list!6075 lt!504913))))

(declare-fun lemmaIsPrefixRefl!835 (List!15238 List!15238) Unit!24235)

(assert (=> d!428230 (= lt!505793 (lemmaIsPrefixRefl!835 (list!6075 lt!504913) (list!6075 lt!504913)))))

(declare-fun rulesValidInductive!832 (LexerInterface!2329 List!15241) Bool)

(assert (=> d!428230 (rulesValidInductive!832 Lexer!2327 (rules!11668 other!32))))

(assert (=> d!428230 (= (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 lt!504913)) lt!505792)))

(declare-fun b!1462064 () Bool)

(declare-fun res!661738 () Bool)

(assert (=> b!1462064 (=> (not res!661738) (not e!932708))))

(assert (=> b!1462064 (= res!661738 (matchR!1829 (regex!2673 (rule!4446 (_1!8009 (get!4616 lt!505792)))) (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!505792))))))))

(assert (= (and d!428230 c!240968) b!1462061))

(assert (= (and d!428230 (not c!240968)) b!1462058))

(assert (= (or b!1462061 b!1462058) bm!98343))

(assert (= (and d!428230 (not res!661735)) b!1462062))

(assert (= (and b!1462062 res!661737) b!1462057))

(assert (= (and b!1462057 res!661739) b!1462063))

(assert (= (and b!1462063 res!661736) b!1462056))

(assert (= (and b!1462056 res!661740) b!1462059))

(assert (= (and b!1462059 res!661734) b!1462064))

(assert (= (and b!1462064 res!661738) b!1462060))

(declare-fun m!1698609 () Bool)

(assert (=> b!1462064 m!1698609))

(declare-fun m!1698611 () Bool)

(assert (=> b!1462064 m!1698611))

(assert (=> b!1462064 m!1698611))

(declare-fun m!1698613 () Bool)

(assert (=> b!1462064 m!1698613))

(assert (=> b!1462064 m!1698613))

(declare-fun m!1698615 () Bool)

(assert (=> b!1462064 m!1698615))

(declare-fun m!1698617 () Bool)

(assert (=> d!428230 m!1698617))

(assert (=> d!428230 m!1696237))

(assert (=> d!428230 m!1696237))

(declare-fun m!1698619 () Bool)

(assert (=> d!428230 m!1698619))

(assert (=> d!428230 m!1696237))

(assert (=> d!428230 m!1696237))

(declare-fun m!1698621 () Bool)

(assert (=> d!428230 m!1698621))

(declare-fun m!1698623 () Bool)

(assert (=> d!428230 m!1698623))

(assert (=> b!1462056 m!1698609))

(assert (=> b!1462056 m!1698611))

(assert (=> b!1462056 m!1698611))

(assert (=> b!1462056 m!1698613))

(assert (=> b!1462056 m!1698613))

(declare-fun m!1698625 () Bool)

(assert (=> b!1462056 m!1698625))

(assert (=> b!1462058 m!1696237))

(declare-fun m!1698627 () Bool)

(assert (=> b!1462058 m!1698627))

(assert (=> b!1462063 m!1698609))

(declare-fun m!1698629 () Bool)

(assert (=> b!1462063 m!1698629))

(assert (=> b!1462063 m!1696237))

(declare-fun m!1698631 () Bool)

(assert (=> b!1462063 m!1698631))

(assert (=> bm!98343 m!1696237))

(declare-fun m!1698633 () Bool)

(assert (=> bm!98343 m!1698633))

(assert (=> b!1462057 m!1698609))

(assert (=> b!1462057 m!1698611))

(assert (=> b!1462057 m!1698611))

(assert (=> b!1462057 m!1698613))

(assert (=> b!1462059 m!1698609))

(declare-fun m!1698635 () Bool)

(assert (=> b!1462059 m!1698635))

(assert (=> b!1462059 m!1698635))

(declare-fun m!1698637 () Bool)

(assert (=> b!1462059 m!1698637))

(assert (=> b!1462060 m!1698609))

(declare-fun m!1698639 () Bool)

(assert (=> b!1462060 m!1698639))

(declare-fun m!1698641 () Bool)

(assert (=> b!1462062 m!1698641))

(assert (=> b!1461016 d!428230))

(declare-fun d!428232 () Bool)

(declare-fun e!932716 () Bool)

(assert (=> d!428232 e!932716))

(declare-fun res!661751 () Bool)

(assert (=> d!428232 (=> res!661751 e!932716)))

(declare-fun lt!505798 () Bool)

(assert (=> d!428232 (= res!661751 (not lt!505798))))

(declare-fun e!932717 () Bool)

(assert (=> d!428232 (= lt!505798 e!932717)))

(declare-fun res!661752 () Bool)

(assert (=> d!428232 (=> res!661752 e!932717)))

(assert (=> d!428232 (= res!661752 ((_ is Nil!15172) lt!504920))))

(assert (=> d!428232 (= (isPrefix!1203 lt!504920 (++!4081 lt!504920 lt!504918)) lt!505798)))

(declare-fun b!1462074 () Bool)

(declare-fun res!661749 () Bool)

(declare-fun e!932718 () Bool)

(assert (=> b!1462074 (=> (not res!661749) (not e!932718))))

(assert (=> b!1462074 (= res!661749 (= (head!3008 lt!504920) (head!3008 (++!4081 lt!504920 lt!504918))))))

(declare-fun b!1462073 () Bool)

(assert (=> b!1462073 (= e!932717 e!932718)))

(declare-fun res!661750 () Bool)

(assert (=> b!1462073 (=> (not res!661750) (not e!932718))))

(assert (=> b!1462073 (= res!661750 (not ((_ is Nil!15172) (++!4081 lt!504920 lt!504918))))))

(declare-fun b!1462075 () Bool)

(assert (=> b!1462075 (= e!932718 (isPrefix!1203 (tail!2176 lt!504920) (tail!2176 (++!4081 lt!504920 lt!504918))))))

(declare-fun b!1462076 () Bool)

(assert (=> b!1462076 (= e!932716 (>= (size!12411 (++!4081 lt!504920 lt!504918)) (size!12411 lt!504920)))))

(assert (= (and d!428232 (not res!661752)) b!1462073))

(assert (= (and b!1462073 res!661750) b!1462074))

(assert (= (and b!1462074 res!661749) b!1462075))

(assert (= (and d!428232 (not res!661751)) b!1462076))

(declare-fun m!1698643 () Bool)

(assert (=> b!1462074 m!1698643))

(assert (=> b!1462074 m!1696251))

(declare-fun m!1698645 () Bool)

(assert (=> b!1462074 m!1698645))

(declare-fun m!1698647 () Bool)

(assert (=> b!1462075 m!1698647))

(assert (=> b!1462075 m!1696251))

(declare-fun m!1698649 () Bool)

(assert (=> b!1462075 m!1698649))

(assert (=> b!1462075 m!1698647))

(assert (=> b!1462075 m!1698649))

(declare-fun m!1698651 () Bool)

(assert (=> b!1462075 m!1698651))

(assert (=> b!1462076 m!1696251))

(declare-fun m!1698653 () Bool)

(assert (=> b!1462076 m!1698653))

(declare-fun m!1698655 () Bool)

(assert (=> b!1462076 m!1698655))

(assert (=> b!1461016 d!428232))

(declare-fun d!428234 () Bool)

(assert (=> d!428234 (= (head!3008 (list!6075 lt!504919)) (h!20573 (list!6075 lt!504919)))))

(assert (=> b!1461016 d!428234))

(declare-fun b!1462078 () Bool)

(declare-fun e!932719 () List!15238)

(assert (=> b!1462078 (= e!932719 (Cons!15172 (h!20573 lt!504920) (++!4081 (t!134381 lt!504920) lt!504918)))))

(declare-fun e!932720 () Bool)

(declare-fun b!1462080 () Bool)

(declare-fun lt!505799 () List!15238)

(assert (=> b!1462080 (= e!932720 (or (not (= lt!504918 Nil!15172)) (= lt!505799 lt!504920)))))

(declare-fun b!1462079 () Bool)

(declare-fun res!661753 () Bool)

(assert (=> b!1462079 (=> (not res!661753) (not e!932720))))

(assert (=> b!1462079 (= res!661753 (= (size!12411 lt!505799) (+ (size!12411 lt!504920) (size!12411 lt!504918))))))

(declare-fun b!1462077 () Bool)

(assert (=> b!1462077 (= e!932719 lt!504918)))

(declare-fun d!428236 () Bool)

(assert (=> d!428236 e!932720))

(declare-fun res!661754 () Bool)

(assert (=> d!428236 (=> (not res!661754) (not e!932720))))

(assert (=> d!428236 (= res!661754 (= (content!2242 lt!505799) ((_ map or) (content!2242 lt!504920) (content!2242 lt!504918))))))

(assert (=> d!428236 (= lt!505799 e!932719)))

(declare-fun c!240969 () Bool)

(assert (=> d!428236 (= c!240969 ((_ is Nil!15172) lt!504920))))

(assert (=> d!428236 (= (++!4081 lt!504920 lt!504918) lt!505799)))

(assert (= (and d!428236 c!240969) b!1462077))

(assert (= (and d!428236 (not c!240969)) b!1462078))

(assert (= (and d!428236 res!661754) b!1462079))

(assert (= (and b!1462079 res!661753) b!1462080))

(declare-fun m!1698657 () Bool)

(assert (=> b!1462078 m!1698657))

(declare-fun m!1698659 () Bool)

(assert (=> b!1462079 m!1698659))

(assert (=> b!1462079 m!1698655))

(declare-fun m!1698661 () Bool)

(assert (=> b!1462079 m!1698661))

(declare-fun m!1698663 () Bool)

(assert (=> d!428236 m!1698663))

(declare-fun m!1698665 () Bool)

(assert (=> d!428236 m!1698665))

(declare-fun m!1698667 () Bool)

(assert (=> d!428236 m!1698667))

(assert (=> b!1461016 d!428236))

(declare-fun d!428238 () Bool)

(assert (=> d!428238 (= (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657))))) (v!22498 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657))))))))

(assert (=> b!1461016 d!428238))

(declare-fun b!1462081 () Bool)

(declare-fun res!661761 () Bool)

(declare-fun e!932722 () Bool)

(assert (=> b!1462081 (=> (not res!661761) (not e!932722))))

(declare-fun lt!505801 () Option!2875)

(assert (=> b!1462081 (= res!661761 (= (++!4081 (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!505801)))) (_2!8009 (get!4616 lt!505801))) (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))

(declare-fun b!1462082 () Bool)

(declare-fun res!661760 () Bool)

(assert (=> b!1462082 (=> (not res!661760) (not e!932722))))

(assert (=> b!1462082 (= res!661760 (= (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!505801)))) (originalCharacters!3535 (_1!8009 (get!4616 lt!505801)))))))

(declare-fun bm!98344 () Bool)

(declare-fun call!98349 () Option!2875)

(assert (=> bm!98344 (= call!98349 (maxPrefixOneRule!661 Lexer!2327 (h!20576 (rules!11668 other!32)) (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))

(declare-fun b!1462083 () Bool)

(declare-fun e!932721 () Option!2875)

(declare-fun lt!505803 () Option!2875)

(declare-fun lt!505804 () Option!2875)

(assert (=> b!1462083 (= e!932721 (ite (and ((_ is None!2874) lt!505803) ((_ is None!2874) lt!505804)) None!2874 (ite ((_ is None!2874) lt!505804) lt!505803 (ite ((_ is None!2874) lt!505803) lt!505804 (ite (>= (size!12407 (_1!8009 (v!22498 lt!505803))) (size!12407 (_1!8009 (v!22498 lt!505804)))) lt!505803 lt!505804)))))))

(assert (=> b!1462083 (= lt!505803 call!98349)))

(assert (=> b!1462083 (= lt!505804 (maxPrefix!1193 Lexer!2327 (t!134384 (rules!11668 other!32)) (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))

(declare-fun b!1462084 () Bool)

(declare-fun res!661755 () Bool)

(assert (=> b!1462084 (=> (not res!661755) (not e!932722))))

(assert (=> b!1462084 (= res!661755 (= (value!85828 (_1!8009 (get!4616 lt!505801))) (apply!3962 (transformation!2673 (rule!4446 (_1!8009 (get!4616 lt!505801)))) (seqFromList!1714 (originalCharacters!3535 (_1!8009 (get!4616 lt!505801)))))))))

(declare-fun b!1462085 () Bool)

(assert (=> b!1462085 (= e!932722 (contains!2908 (rules!11668 other!32) (rule!4446 (_1!8009 (get!4616 lt!505801)))))))

(declare-fun b!1462086 () Bool)

(assert (=> b!1462086 (= e!932721 call!98349)))

(declare-fun b!1462087 () Bool)

(declare-fun e!932723 () Bool)

(assert (=> b!1462087 (= e!932723 e!932722)))

(declare-fun res!661758 () Bool)

(assert (=> b!1462087 (=> (not res!661758) (not e!932722))))

(assert (=> b!1462087 (= res!661758 (isDefined!2324 lt!505801))))

(declare-fun b!1462088 () Bool)

(declare-fun res!661757 () Bool)

(assert (=> b!1462088 (=> (not res!661757) (not e!932722))))

(assert (=> b!1462088 (= res!661757 (< (size!12411 (_2!8009 (get!4616 lt!505801))) (size!12411 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))))

(declare-fun d!428240 () Bool)

(assert (=> d!428240 e!932723))

(declare-fun res!661756 () Bool)

(assert (=> d!428240 (=> res!661756 e!932723)))

(assert (=> d!428240 (= res!661756 (isEmpty!9533 lt!505801))))

(assert (=> d!428240 (= lt!505801 e!932721)))

(declare-fun c!240970 () Bool)

(assert (=> d!428240 (= c!240970 (and ((_ is Cons!15175) (rules!11668 other!32)) ((_ is Nil!15175) (t!134384 (rules!11668 other!32)))))))

(declare-fun lt!505800 () Unit!24235)

(declare-fun lt!505802 () Unit!24235)

(assert (=> d!428240 (= lt!505800 lt!505802)))

(assert (=> d!428240 (isPrefix!1203 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 (charsOf!1536 (h!20575 lt!504657))))))

(assert (=> d!428240 (= lt!505802 (lemmaIsPrefixRefl!835 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))

(assert (=> d!428240 (rulesValidInductive!832 Lexer!2327 (rules!11668 other!32))))

(assert (=> d!428240 (= (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657)))) lt!505801)))

(declare-fun b!1462089 () Bool)

(declare-fun res!661759 () Bool)

(assert (=> b!1462089 (=> (not res!661759) (not e!932722))))

(assert (=> b!1462089 (= res!661759 (matchR!1829 (regex!2673 (rule!4446 (_1!8009 (get!4616 lt!505801)))) (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!505801))))))))

(assert (= (and d!428240 c!240970) b!1462086))

(assert (= (and d!428240 (not c!240970)) b!1462083))

(assert (= (or b!1462086 b!1462083) bm!98344))

(assert (= (and d!428240 (not res!661756)) b!1462087))

(assert (= (and b!1462087 res!661758) b!1462082))

(assert (= (and b!1462082 res!661760) b!1462088))

(assert (= (and b!1462088 res!661757) b!1462081))

(assert (= (and b!1462081 res!661761) b!1462084))

(assert (= (and b!1462084 res!661755) b!1462089))

(assert (= (and b!1462089 res!661759) b!1462085))

(declare-fun m!1698669 () Bool)

(assert (=> b!1462089 m!1698669))

(declare-fun m!1698671 () Bool)

(assert (=> b!1462089 m!1698671))

(assert (=> b!1462089 m!1698671))

(declare-fun m!1698673 () Bool)

(assert (=> b!1462089 m!1698673))

(assert (=> b!1462089 m!1698673))

(declare-fun m!1698675 () Bool)

(assert (=> b!1462089 m!1698675))

(declare-fun m!1698677 () Bool)

(assert (=> d!428240 m!1698677))

(assert (=> d!428240 m!1696219))

(assert (=> d!428240 m!1696219))

(declare-fun m!1698679 () Bool)

(assert (=> d!428240 m!1698679))

(assert (=> d!428240 m!1696219))

(assert (=> d!428240 m!1696219))

(declare-fun m!1698681 () Bool)

(assert (=> d!428240 m!1698681))

(assert (=> d!428240 m!1698623))

(assert (=> b!1462081 m!1698669))

(assert (=> b!1462081 m!1698671))

(assert (=> b!1462081 m!1698671))

(assert (=> b!1462081 m!1698673))

(assert (=> b!1462081 m!1698673))

(declare-fun m!1698683 () Bool)

(assert (=> b!1462081 m!1698683))

(assert (=> b!1462083 m!1696219))

(declare-fun m!1698685 () Bool)

(assert (=> b!1462083 m!1698685))

(assert (=> b!1462088 m!1698669))

(declare-fun m!1698687 () Bool)

(assert (=> b!1462088 m!1698687))

(assert (=> b!1462088 m!1696219))

(assert (=> b!1462088 m!1697809))

(assert (=> bm!98344 m!1696219))

(declare-fun m!1698689 () Bool)

(assert (=> bm!98344 m!1698689))

(assert (=> b!1462082 m!1698669))

(assert (=> b!1462082 m!1698671))

(assert (=> b!1462082 m!1698671))

(assert (=> b!1462082 m!1698673))

(assert (=> b!1462084 m!1698669))

(declare-fun m!1698691 () Bool)

(assert (=> b!1462084 m!1698691))

(assert (=> b!1462084 m!1698691))

(declare-fun m!1698693 () Bool)

(assert (=> b!1462084 m!1698693))

(assert (=> b!1462085 m!1698669))

(declare-fun m!1698695 () Bool)

(assert (=> b!1462085 m!1698695))

(declare-fun m!1698697 () Bool)

(assert (=> b!1462087 m!1698697))

(assert (=> b!1461016 d!428240))

(declare-fun d!428242 () Bool)

(assert (=> d!428242 (= (seqFromList!1712 (t!134383 lt!504657)) (fromListB!736 (t!134383 lt!504657)))))

(declare-fun bs!344274 () Bool)

(assert (= bs!344274 d!428242))

(declare-fun m!1698699 () Bool)

(assert (=> bs!344274 m!1698699))

(assert (=> b!1461016 d!428242))

(declare-fun d!428244 () Bool)

(declare-fun lt!505810 () BalanceConc!10284)

(assert (=> d!428244 (= (list!6075 lt!505810) (printListTailRec!291 Lexer!2327 (dropList!480 (singletonSeq!1277 (h!20575 lt!504657)) 0) (list!6075 (BalanceConc!10285 Empty!5172))))))

(declare-fun e!932725 () BalanceConc!10284)

(assert (=> d!428244 (= lt!505810 e!932725)))

(declare-fun c!240971 () Bool)

(assert (=> d!428244 (= c!240971 (>= 0 (size!12413 (singletonSeq!1277 (h!20575 lt!504657)))))))

(declare-fun e!932724 () Bool)

(assert (=> d!428244 e!932724))

(declare-fun res!661762 () Bool)

(assert (=> d!428244 (=> (not res!661762) (not e!932724))))

(assert (=> d!428244 (= res!661762 (>= 0 0))))

(assert (=> d!428244 (= (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504657)) 0 (BalanceConc!10285 Empty!5172)) lt!505810)))

(declare-fun b!1462090 () Bool)

(assert (=> b!1462090 (= e!932724 (<= 0 (size!12413 (singletonSeq!1277 (h!20575 lt!504657)))))))

(declare-fun b!1462091 () Bool)

(assert (=> b!1462091 (= e!932725 (BalanceConc!10285 Empty!5172))))

(declare-fun b!1462092 () Bool)

(assert (=> b!1462092 (= e!932725 (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504657)) (+ 0 1) (++!4084 (BalanceConc!10285 Empty!5172) (charsOf!1536 (apply!3952 (singletonSeq!1277 (h!20575 lt!504657)) 0)))))))

(declare-fun lt!505806 () List!15240)

(assert (=> b!1462092 (= lt!505806 (list!6073 (singletonSeq!1277 (h!20575 lt!504657))))))

(declare-fun lt!505807 () Unit!24235)

(assert (=> b!1462092 (= lt!505807 (lemmaDropApply!494 lt!505806 0))))

(assert (=> b!1462092 (= (head!3012 (drop!744 lt!505806 0)) (apply!3953 lt!505806 0))))

(declare-fun lt!505811 () Unit!24235)

(assert (=> b!1462092 (= lt!505811 lt!505807)))

(declare-fun lt!505809 () List!15240)

(assert (=> b!1462092 (= lt!505809 (list!6073 (singletonSeq!1277 (h!20575 lt!504657))))))

(declare-fun lt!505808 () Unit!24235)

(assert (=> b!1462092 (= lt!505808 (lemmaDropTail!474 lt!505809 0))))

(assert (=> b!1462092 (= (tail!2174 (drop!744 lt!505809 0)) (drop!744 lt!505809 (+ 0 1)))))

(declare-fun lt!505805 () Unit!24235)

(assert (=> b!1462092 (= lt!505805 lt!505808)))

(assert (= (and d!428244 res!661762) b!1462090))

(assert (= (and d!428244 c!240971) b!1462091))

(assert (= (and d!428244 (not c!240971)) b!1462092))

(declare-fun m!1698701 () Bool)

(assert (=> d!428244 m!1698701))

(declare-fun m!1698703 () Bool)

(assert (=> d!428244 m!1698703))

(assert (=> d!428244 m!1698367))

(declare-fun m!1698705 () Bool)

(assert (=> d!428244 m!1698705))

(assert (=> d!428244 m!1698367))

(assert (=> d!428244 m!1696201))

(declare-fun m!1698707 () Bool)

(assert (=> d!428244 m!1698707))

(assert (=> d!428244 m!1696201))

(assert (=> d!428244 m!1698703))

(assert (=> b!1462090 m!1696201))

(assert (=> b!1462090 m!1698707))

(assert (=> b!1462092 m!1696201))

(declare-fun m!1698709 () Bool)

(assert (=> b!1462092 m!1698709))

(declare-fun m!1698711 () Bool)

(assert (=> b!1462092 m!1698711))

(declare-fun m!1698713 () Bool)

(assert (=> b!1462092 m!1698713))

(declare-fun m!1698715 () Bool)

(assert (=> b!1462092 m!1698715))

(declare-fun m!1698717 () Bool)

(assert (=> b!1462092 m!1698717))

(declare-fun m!1698719 () Bool)

(assert (=> b!1462092 m!1698719))

(declare-fun m!1698721 () Bool)

(assert (=> b!1462092 m!1698721))

(declare-fun m!1698723 () Bool)

(assert (=> b!1462092 m!1698723))

(declare-fun m!1698725 () Bool)

(assert (=> b!1462092 m!1698725))

(assert (=> b!1462092 m!1698721))

(assert (=> b!1462092 m!1698709))

(assert (=> b!1462092 m!1696201))

(assert (=> b!1462092 m!1698719))

(declare-fun m!1698727 () Bool)

(assert (=> b!1462092 m!1698727))

(declare-fun m!1698729 () Bool)

(assert (=> b!1462092 m!1698729))

(assert (=> b!1462092 m!1696201))

(assert (=> b!1462092 m!1698565))

(assert (=> b!1462092 m!1698727))

(declare-fun m!1698731 () Bool)

(assert (=> b!1462092 m!1698731))

(assert (=> b!1462092 m!1698723))

(assert (=> b!1461016 d!428244))

(declare-fun b!1462266 () Bool)

(declare-fun e!932841 () Bool)

(declare-fun lt!506208 () Token!5008)

(declare-datatypes ((Option!2877 0))(
  ( (None!2876) (Some!2876 (v!22504 Rule!5146)) )
))
(declare-fun get!4618 (Option!2877) Rule!5146)

(declare-fun getRuleFromTag!222 (LexerInterface!2329 List!15241 String!18071) Option!2877)

(assert (=> b!1462266 (= e!932841 (= (rule!4446 lt!506208) (get!4618 (getRuleFromTag!222 Lexer!2327 (rules!11668 other!32) (tag!2937 (rule!4446 lt!506208))))))))

(declare-fun b!1462267 () Bool)

(declare-fun e!932843 () Unit!24235)

(declare-fun Unit!24401 () Unit!24235)

(assert (=> b!1462267 (= e!932843 Unit!24401)))

(declare-fun b!1462268 () Bool)

(declare-fun e!932844 () Unit!24235)

(declare-fun Unit!24402 () Unit!24235)

(assert (=> b!1462268 (= e!932844 Unit!24402)))

(declare-fun b!1462269 () Bool)

(assert (=> b!1462269 false))

(declare-fun lt!506215 () Unit!24235)

(declare-fun lt!506243 () Unit!24235)

(assert (=> b!1462269 (= lt!506215 lt!506243)))

(declare-fun lt!506222 () List!15238)

(assert (=> b!1462269 (not (matchR!1829 (regex!2673 (rule!4446 lt!506208)) lt!506222))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!48 (LexerInterface!2329 List!15241 Rule!5146 List!15238 List!15238 Rule!5146) Unit!24235)

(assert (=> b!1462269 (= lt!506243 (lemmaMaxPrefNoSmallerRuleMatches!48 Lexer!2327 (rules!11668 other!32) (rule!4446 (h!20575 lt!504657)) lt!506222 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (rule!4446 lt!506208)))))

(assert (=> b!1462269 (= lt!506222 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))

(declare-fun e!932842 () Unit!24235)

(declare-fun Unit!24403 () Unit!24235)

(assert (=> b!1462269 (= e!932842 Unit!24403)))

(declare-fun b!1462270 () Bool)

(declare-fun Unit!24404 () Unit!24235)

(assert (=> b!1462270 (= e!932844 Unit!24404)))

(declare-fun lt!506212 () List!15238)

(declare-fun lt!506264 () List!15238)

(declare-fun lt!506211 () Unit!24235)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!8 (LexerInterface!2329 List!15241 List!15238 Token!5008 Rule!5146 List!15238) Unit!24235)

(assert (=> b!1462270 (= lt!506211 (lemmaMaxPrefixThenMatchesRulesRegex!8 Lexer!2327 (rules!11668 other!32) lt!506212 lt!506208 (rule!4446 lt!506208) lt!506264))))

(assert (=> b!1462270 (matchR!1829 (rulesRegex!410 Lexer!2327 (rules!11668 other!32)) (list!6075 (charsOf!1536 lt!506208)))))

(declare-fun lt!506206 () Unit!24235)

(assert (=> b!1462270 (= lt!506206 lt!506211)))

(declare-fun lt!506225 () List!15238)

(assert (=> b!1462270 (= lt!506225 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))

(declare-fun lt!506251 () List!15238)

(assert (=> b!1462270 (= lt!506251 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))

(declare-fun lt!506257 () List!15238)

(declare-fun getSuffix!653 (List!15238 List!15238) List!15238)

(assert (=> b!1462270 (= lt!506257 (getSuffix!653 lt!506212 (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))

(declare-fun lt!506248 () Unit!24235)

(declare-fun lemmaSamePrefixThenSameSuffix!605 (List!15238 List!15238 List!15238 List!15238 List!15238) Unit!24235)

(assert (=> b!1462270 (= lt!506248 (lemmaSamePrefixThenSameSuffix!605 lt!506225 (list!6075 lt!504919) lt!506251 lt!506257 lt!506212))))

(assert (=> b!1462270 (= (list!6075 lt!504919) lt!506257)))

(declare-fun lt!506207 () Unit!24235)

(assert (=> b!1462270 (= lt!506207 lt!506248)))

(declare-fun lt!506260 () List!15238)

(assert (=> b!1462270 (= lt!506260 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))

(declare-fun lt!506245 () Unit!24235)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!96 (List!15238 List!15238) Unit!24235)

(assert (=> b!1462270 (= lt!506245 (lemmaAddHeadSuffixToPrefixStillPrefix!96 lt!506260 lt!506212))))

(assert (=> b!1462270 (isPrefix!1203 (++!4081 lt!506260 (Cons!15172 (head!3008 (getSuffix!653 lt!506212 lt!506260)) Nil!15172)) lt!506212)))

(declare-fun lt!506205 () Unit!24235)

(assert (=> b!1462270 (= lt!506205 lt!506245)))

(declare-fun lt!506238 () List!15238)

(assert (=> b!1462270 (= lt!506238 (list!6075 (charsOf!1536 lt!506208)))))

(declare-fun lt!506256 () List!15238)

(assert (=> b!1462270 (= lt!506256 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (Cons!15172 (head!3008 (list!6075 lt!504919)) Nil!15172)))))

(declare-fun lt!506217 () Unit!24235)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!8 (List!15238 List!15238 List!15238) Unit!24235)

(assert (=> b!1462270 (= lt!506217 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!8 lt!506238 lt!506256 lt!506212))))

(assert (=> b!1462270 (isPrefix!1203 lt!506256 lt!506238)))

(declare-fun lt!506274 () Unit!24235)

(assert (=> b!1462270 (= lt!506274 lt!506217)))

(declare-fun lt!506233 () Regex!3987)

(assert (=> b!1462270 (= lt!506233 (rulesRegex!410 Lexer!2327 (rules!11668 other!32)))))

(declare-fun lt!506269 () List!15238)

(assert (=> b!1462270 (= lt!506269 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (Cons!15172 (head!3008 (list!6075 lt!504919)) Nil!15172)))))

(declare-fun lt!506232 () List!15238)

(assert (=> b!1462270 (= lt!506232 (list!6075 (charsOf!1536 lt!506208)))))

(declare-fun lt!506250 () Unit!24235)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!9 (Regex!3987 List!15238 List!15238) Unit!24235)

(assert (=> b!1462270 (= lt!506250 (lemmaNotPrefixMatchThenCannotMatchLonger!9 lt!506233 lt!506269 lt!506232))))

(assert (=> b!1462270 (not (matchR!1829 lt!506233 lt!506232))))

(declare-fun lt!506254 () Unit!24235)

(assert (=> b!1462270 (= lt!506254 lt!506250)))

(assert (=> b!1462270 false))

(declare-fun d!428246 () Bool)

(assert (=> d!428246 (= (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919))) (Some!2874 (tuple2!14247 (h!20575 lt!504657) (list!6075 lt!504919))))))

(declare-fun lt!506239 () Unit!24235)

(declare-fun Unit!24405 () Unit!24235)

(assert (=> d!428246 (= lt!506239 Unit!24405)))

(declare-fun lt!506218 () Unit!24235)

(declare-fun e!932845 () Unit!24235)

(assert (=> d!428246 (= lt!506218 e!932845)))

(declare-fun c!241021 () Bool)

(assert (=> d!428246 (= c!241021 (not (= (rule!4446 lt!506208) (rule!4446 (h!20575 lt!504657)))))))

(declare-fun lt!506220 () Unit!24235)

(declare-fun lt!506240 () Unit!24235)

(assert (=> d!428246 (= lt!506220 lt!506240)))

(assert (=> d!428246 (= (list!6075 lt!504919) lt!506264)))

(assert (=> d!428246 (= lt!506240 (lemmaSamePrefixThenSameSuffix!605 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919) (list!6075 (charsOf!1536 (h!20575 lt!504657))) lt!506264 lt!506212))))

(declare-fun lt!506231 () Unit!24235)

(declare-fun lt!506272 () Unit!24235)

(assert (=> d!428246 (= lt!506231 lt!506272)))

(declare-fun lt!506235 () List!15238)

(declare-fun lt!506221 () List!15238)

(assert (=> d!428246 (= lt!506235 lt!506221)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!107 (List!15238 List!15238 List!15238) Unit!24235)

(assert (=> d!428246 (= lt!506272 (lemmaIsPrefixSameLengthThenSameList!107 lt!506235 lt!506221 lt!506212))))

(assert (=> d!428246 (= lt!506221 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))

(assert (=> d!428246 (= lt!506235 (list!6075 (charsOf!1536 lt!506208)))))

(declare-fun lt!506236 () Unit!24235)

(declare-fun e!932840 () Unit!24235)

(assert (=> d!428246 (= lt!506236 e!932840)))

(declare-fun c!241018 () Bool)

(assert (=> d!428246 (= c!241018 (< (size!12415 (charsOf!1536 lt!506208)) (size!12415 (charsOf!1536 (h!20575 lt!504657)))))))

(declare-fun lt!506230 () Unit!24235)

(assert (=> d!428246 (= lt!506230 e!932844)))

(declare-fun c!241020 () Bool)

(assert (=> d!428246 (= c!241020 (> (size!12415 (charsOf!1536 lt!506208)) (size!12415 (charsOf!1536 (h!20575 lt!504657)))))))

(declare-fun lt!506258 () Unit!24235)

(declare-fun lt!506224 () Unit!24235)

(assert (=> d!428246 (= lt!506258 lt!506224)))

(assert (=> d!428246 (matchR!1829 (rulesRegex!410 Lexer!2327 (rules!11668 other!32)) (list!6075 (charsOf!1536 (h!20575 lt!504657))))))

(assert (=> d!428246 (= lt!506224 (lemmaMaxPrefixThenMatchesRulesRegex!8 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657))) (h!20575 lt!504657) (rule!4446 (h!20575 lt!504657)) Nil!15172))))

(declare-fun lt!506262 () Unit!24235)

(declare-fun lt!506268 () Unit!24235)

(assert (=> d!428246 (= lt!506262 lt!506268)))

(declare-fun lt!506219 () List!15238)

(assert (=> d!428246 (= lt!506264 lt!506219)))

(declare-fun lt!506216 () List!15238)

(declare-fun lt!506267 () List!15238)

(assert (=> d!428246 (= lt!506268 (lemmaSamePrefixThenSameSuffix!605 lt!506267 lt!506264 lt!506216 lt!506219 lt!506212))))

(assert (=> d!428246 (= lt!506219 (getSuffix!653 lt!506212 (list!6075 (charsOf!1536 lt!506208))))))

(assert (=> d!428246 (= lt!506216 (list!6075 (charsOf!1536 lt!506208)))))

(assert (=> d!428246 (= lt!506267 (list!6075 (charsOf!1536 lt!506208)))))

(declare-fun lt!506234 () Unit!24235)

(declare-fun lt!506242 () Unit!24235)

(assert (=> d!428246 (= lt!506234 lt!506242)))

(declare-fun lt!506213 () List!15238)

(assert (=> d!428246 (= (maxPrefixOneRule!661 Lexer!2327 (rule!4446 lt!506208) lt!506212) (Some!2874 (tuple2!14247 (Token!5009 (apply!3962 (transformation!2673 (rule!4446 lt!506208)) (seqFromList!1714 lt!506213)) (rule!4446 lt!506208) (size!12411 lt!506213) lt!506213) lt!506264)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!198 (LexerInterface!2329 List!15241 List!15238 List!15238 List!15238 Rule!5146) Unit!24235)

(assert (=> d!428246 (= lt!506242 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!198 Lexer!2327 (rules!11668 other!32) lt!506213 lt!506212 lt!506264 (rule!4446 lt!506208)))))

(assert (=> d!428246 (= lt!506213 (list!6075 (charsOf!1536 lt!506208)))))

(declare-fun lt!506214 () Unit!24235)

(declare-fun lemmaCharactersSize!304 (Token!5008) Unit!24235)

(assert (=> d!428246 (= lt!506214 (lemmaCharactersSize!304 lt!506208))))

(declare-fun lt!506210 () Unit!24235)

(declare-fun lemmaEqSameImage!115 (TokenValueInjection!5186 BalanceConc!10284 BalanceConc!10284) Unit!24235)

(assert (=> d!428246 (= lt!506210 (lemmaEqSameImage!115 (transformation!2673 (rule!4446 lt!506208)) (charsOf!1536 lt!506208) (seqFromList!1714 (originalCharacters!3535 lt!506208))))))

(declare-fun lt!506209 () Unit!24235)

(declare-fun lemmaSemiInverse!350 (TokenValueInjection!5186 BalanceConc!10284) Unit!24235)

(assert (=> d!428246 (= lt!506209 (lemmaSemiInverse!350 (transformation!2673 (rule!4446 lt!506208)) (charsOf!1536 lt!506208)))))

(declare-fun lt!506275 () Unit!24235)

(declare-fun lemmaInv!382 (TokenValueInjection!5186) Unit!24235)

(assert (=> d!428246 (= lt!506275 (lemmaInv!382 (transformation!2673 (rule!4446 lt!506208))))))

(declare-fun lt!506253 () Unit!24235)

(declare-fun lt!506226 () Unit!24235)

(assert (=> d!428246 (= lt!506253 lt!506226)))

(declare-fun lt!506271 () List!15238)

(assert (=> d!428246 (isPrefix!1203 lt!506271 (++!4081 lt!506271 lt!506264))))

(assert (=> d!428246 (= lt!506226 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!506271 lt!506264))))

(assert (=> d!428246 (= lt!506271 (list!6075 (charsOf!1536 lt!506208)))))

(declare-fun lt!506259 () Unit!24235)

(declare-fun lt!506227 () Unit!24235)

(assert (=> d!428246 (= lt!506259 lt!506227)))

(assert (=> d!428246 e!932841))

(declare-fun res!661839 () Bool)

(assert (=> d!428246 (=> (not res!661839) (not e!932841))))

(declare-fun isDefined!2326 (Option!2877) Bool)

(assert (=> d!428246 (= res!661839 (isDefined!2326 (getRuleFromTag!222 Lexer!2327 (rules!11668 other!32) (tag!2937 (rule!4446 lt!506208)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!222 (LexerInterface!2329 List!15241 List!15238 Token!5008) Unit!24235)

(assert (=> d!428246 (= lt!506227 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!222 Lexer!2327 (rules!11668 other!32) lt!506212 lt!506208))))

(declare-fun lt!506263 () Option!2875)

(assert (=> d!428246 (= lt!506264 (_2!8009 (get!4616 lt!506263)))))

(assert (=> d!428246 (= lt!506208 (_1!8009 (get!4616 lt!506263)))))

(declare-fun lt!506266 () Unit!24235)

(assert (=> d!428246 (= lt!506266 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!239 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919)))))

(assert (=> d!428246 (= lt!506263 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) lt!506212))))

(declare-fun lt!506255 () Unit!24235)

(declare-fun lt!506265 () Unit!24235)

(assert (=> d!428246 (= lt!506255 lt!506265)))

(declare-fun lt!506228 () List!15238)

(assert (=> d!428246 (isPrefix!1203 lt!506228 (++!4081 lt!506228 (list!6075 lt!504919)))))

(assert (=> d!428246 (= lt!506265 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!506228 (list!6075 lt!504919)))))

(assert (=> d!428246 (= lt!506228 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))

(assert (=> d!428246 (= lt!506212 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919)))))

(assert (=> d!428246 (not (isEmpty!9528 (rules!11668 other!32)))))

(assert (=> d!428246 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!37 Lexer!2327 (rules!11668 other!32) (h!20575 lt!504657) (rule!4446 (h!20575 lt!504657)) (list!6075 lt!504919)) lt!506239)))

(declare-fun b!1462271 () Bool)

(declare-fun Unit!24406 () Unit!24235)

(assert (=> b!1462271 (= e!932842 Unit!24406)))

(declare-fun b!1462272 () Bool)

(declare-fun Unit!24407 () Unit!24235)

(assert (=> b!1462272 (= e!932840 Unit!24407)))

(declare-fun b!1462273 () Bool)

(assert (=> b!1462273 false))

(declare-fun lt!506249 () Unit!24235)

(declare-fun lt!506244 () Unit!24235)

(assert (=> b!1462273 (= lt!506249 lt!506244)))

(assert (=> b!1462273 (= (rule!4446 lt!506208) (rule!4446 (h!20575 lt!504657)))))

(declare-fun lemmaSameIndexThenSameElement!24 (List!15241 Rule!5146 Rule!5146) Unit!24235)

(assert (=> b!1462273 (= lt!506244 (lemmaSameIndexThenSameElement!24 (rules!11668 other!32) (rule!4446 lt!506208) (rule!4446 (h!20575 lt!504657))))))

(declare-fun Unit!24408 () Unit!24235)

(assert (=> b!1462273 (= e!932843 Unit!24408)))

(declare-fun b!1462274 () Bool)

(declare-fun Unit!24409 () Unit!24235)

(assert (=> b!1462274 (= e!932845 Unit!24409)))

(declare-fun c!241016 () Bool)

(declare-fun getIndex!76 (List!15241 Rule!5146) Int)

(assert (=> b!1462274 (= c!241016 (< (getIndex!76 (rules!11668 other!32) (rule!4446 (h!20575 lt!504657))) (getIndex!76 (rules!11668 other!32) (rule!4446 lt!506208))))))

(declare-fun lt!506270 () Unit!24235)

(declare-fun e!932839 () Unit!24235)

(assert (=> b!1462274 (= lt!506270 e!932839)))

(declare-fun c!241017 () Bool)

(assert (=> b!1462274 (= c!241017 (< (getIndex!76 (rules!11668 other!32) (rule!4446 lt!506208)) (getIndex!76 (rules!11668 other!32) (rule!4446 (h!20575 lt!504657)))))))

(declare-fun lt!506229 () Unit!24235)

(assert (=> b!1462274 (= lt!506229 e!932842)))

(declare-fun c!241019 () Bool)

(assert (=> b!1462274 (= c!241019 (= (getIndex!76 (rules!11668 other!32) (rule!4446 lt!506208)) (getIndex!76 (rules!11668 other!32) (rule!4446 (h!20575 lt!504657)))))))

(declare-fun lt!506273 () Unit!24235)

(assert (=> b!1462274 (= lt!506273 e!932843)))

(assert (=> b!1462274 false))

(declare-fun b!1462275 () Bool)

(declare-fun Unit!24410 () Unit!24235)

(assert (=> b!1462275 (= e!932845 Unit!24410)))

(declare-fun b!1462276 () Bool)

(declare-fun Unit!24411 () Unit!24235)

(assert (=> b!1462276 (= e!932840 Unit!24411)))

(declare-fun lt!506247 () List!15238)

(assert (=> b!1462276 (= lt!506247 (list!6075 (charsOf!1536 lt!506208)))))

(declare-fun lt!506223 () List!15238)

(assert (=> b!1462276 (= lt!506223 (list!6075 (charsOf!1536 (h!20575 lt!504657))))))

(declare-fun lt!506241 () Unit!24235)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!98 (LexerInterface!2329 List!15241 Rule!5146 List!15238 List!15238 List!15238 Rule!5146) Unit!24235)

(assert (=> b!1462276 (= lt!506241 (lemmaMaxPrefixOutputsMaxPrefix!98 Lexer!2327 (rules!11668 other!32) (rule!4446 lt!506208) lt!506247 lt!506212 lt!506223 (rule!4446 (h!20575 lt!504657))))))

(assert (=> b!1462276 (not (matchR!1829 (regex!2673 (rule!4446 (h!20575 lt!504657))) lt!506223))))

(declare-fun lt!506252 () Unit!24235)

(assert (=> b!1462276 (= lt!506252 lt!506241)))

(assert (=> b!1462276 false))

(declare-fun b!1462277 () Bool)

(declare-fun res!661838 () Bool)

(assert (=> b!1462277 (=> (not res!661838) (not e!932841))))

(assert (=> b!1462277 (= res!661838 (matchR!1829 (regex!2673 (get!4618 (getRuleFromTag!222 Lexer!2327 (rules!11668 other!32) (tag!2937 (rule!4446 lt!506208))))) (list!6075 (charsOf!1536 lt!506208))))))

(declare-fun b!1462278 () Bool)

(assert (=> b!1462278 false))

(declare-fun lt!506261 () Unit!24235)

(declare-fun lt!506246 () Unit!24235)

(assert (=> b!1462278 (= lt!506261 lt!506246)))

(declare-fun lt!506237 () List!15238)

(assert (=> b!1462278 (not (matchR!1829 (regex!2673 (rule!4446 (h!20575 lt!504657))) lt!506237))))

(assert (=> b!1462278 (= lt!506246 (lemmaMaxPrefNoSmallerRuleMatches!48 Lexer!2327 (rules!11668 other!32) (rule!4446 lt!506208) lt!506237 lt!506212 (rule!4446 (h!20575 lt!504657))))))

(assert (=> b!1462278 (= lt!506237 (list!6075 (charsOf!1536 lt!506208)))))

(declare-fun Unit!24412 () Unit!24235)

(assert (=> b!1462278 (= e!932839 Unit!24412)))

(declare-fun b!1462279 () Bool)

(declare-fun Unit!24413 () Unit!24235)

(assert (=> b!1462279 (= e!932839 Unit!24413)))

(assert (= (and d!428246 res!661839) b!1462277))

(assert (= (and b!1462277 res!661838) b!1462266))

(assert (= (and d!428246 c!241020) b!1462270))

(assert (= (and d!428246 (not c!241020)) b!1462268))

(assert (= (and d!428246 c!241018) b!1462276))

(assert (= (and d!428246 (not c!241018)) b!1462272))

(assert (= (and d!428246 c!241021) b!1462274))

(assert (= (and d!428246 (not c!241021)) b!1462275))

(assert (= (and b!1462274 c!241016) b!1462278))

(assert (= (and b!1462274 (not c!241016)) b!1462279))

(assert (= (and b!1462274 c!241017) b!1462269))

(assert (= (and b!1462274 (not c!241017)) b!1462271))

(assert (= (and b!1462274 c!241019) b!1462273))

(assert (= (and b!1462274 (not c!241019)) b!1462267))

(declare-fun m!1699107 () Bool)

(assert (=> b!1462278 m!1699107))

(declare-fun m!1699109 () Bool)

(assert (=> b!1462278 m!1699109))

(declare-fun m!1699111 () Bool)

(assert (=> b!1462278 m!1699111))

(assert (=> b!1462278 m!1699111))

(declare-fun m!1699113 () Bool)

(assert (=> b!1462278 m!1699113))

(assert (=> b!1462277 m!1699111))

(assert (=> b!1462277 m!1699113))

(declare-fun m!1699115 () Bool)

(assert (=> b!1462277 m!1699115))

(assert (=> b!1462277 m!1699115))

(declare-fun m!1699117 () Bool)

(assert (=> b!1462277 m!1699117))

(assert (=> b!1462277 m!1699113))

(declare-fun m!1699119 () Bool)

(assert (=> b!1462277 m!1699119))

(assert (=> b!1462277 m!1699111))

(assert (=> b!1462266 m!1699115))

(assert (=> b!1462266 m!1699115))

(assert (=> b!1462266 m!1699117))

(assert (=> d!428246 m!1696259))

(assert (=> d!428246 m!1699115))

(assert (=> d!428246 m!1696191))

(declare-fun m!1699121 () Bool)

(assert (=> d!428246 m!1699121))

(assert (=> d!428246 m!1696219))

(declare-fun m!1699123 () Bool)

(assert (=> d!428246 m!1699123))

(assert (=> d!428246 m!1696225))

(declare-fun m!1699125 () Bool)

(assert (=> d!428246 m!1699125))

(assert (=> d!428246 m!1699113))

(declare-fun m!1699127 () Bool)

(assert (=> d!428246 m!1699127))

(assert (=> d!428246 m!1696259))

(declare-fun m!1699129 () Bool)

(assert (=> d!428246 m!1699129))

(assert (=> d!428246 m!1699111))

(declare-fun m!1699131 () Bool)

(assert (=> d!428246 m!1699131))

(declare-fun m!1699133 () Bool)

(assert (=> d!428246 m!1699133))

(assert (=> d!428246 m!1699111))

(declare-fun m!1699135 () Bool)

(assert (=> d!428246 m!1699135))

(declare-fun m!1699137 () Bool)

(assert (=> d!428246 m!1699137))

(assert (=> d!428246 m!1696225))

(declare-fun m!1699139 () Bool)

(assert (=> d!428246 m!1699139))

(declare-fun m!1699141 () Bool)

(assert (=> d!428246 m!1699141))

(assert (=> d!428246 m!1699139))

(declare-fun m!1699143 () Bool)

(assert (=> d!428246 m!1699143))

(declare-fun m!1699145 () Bool)

(assert (=> d!428246 m!1699145))

(declare-fun m!1699147 () Bool)

(assert (=> d!428246 m!1699147))

(declare-fun m!1699149 () Bool)

(assert (=> d!428246 m!1699149))

(declare-fun m!1699151 () Bool)

(assert (=> d!428246 m!1699151))

(assert (=> d!428246 m!1699145))

(declare-fun m!1699153 () Bool)

(assert (=> d!428246 m!1699153))

(declare-fun m!1699155 () Bool)

(assert (=> d!428246 m!1699155))

(declare-fun m!1699157 () Bool)

(assert (=> d!428246 m!1699157))

(assert (=> d!428246 m!1699133))

(assert (=> d!428246 m!1696219))

(declare-fun m!1699159 () Bool)

(assert (=> d!428246 m!1699159))

(declare-fun m!1699161 () Bool)

(assert (=> d!428246 m!1699161))

(declare-fun m!1699163 () Bool)

(assert (=> d!428246 m!1699163))

(assert (=> d!428246 m!1699135))

(declare-fun m!1699165 () Bool)

(assert (=> d!428246 m!1699165))

(assert (=> d!428246 m!1699111))

(declare-fun m!1699167 () Bool)

(assert (=> d!428246 m!1699167))

(assert (=> d!428246 m!1699111))

(declare-fun m!1699169 () Bool)

(assert (=> d!428246 m!1699169))

(assert (=> d!428246 m!1696219))

(assert (=> d!428246 m!1696225))

(assert (=> d!428246 m!1696227))

(declare-fun m!1699171 () Bool)

(assert (=> d!428246 m!1699171))

(assert (=> d!428246 m!1696219))

(assert (=> d!428246 m!1696225))

(assert (=> d!428246 m!1699155))

(declare-fun m!1699173 () Bool)

(assert (=> d!428246 m!1699173))

(assert (=> d!428246 m!1699111))

(assert (=> d!428246 m!1699113))

(assert (=> d!428246 m!1699147))

(declare-fun m!1699175 () Bool)

(assert (=> d!428246 m!1699175))

(assert (=> d!428246 m!1696259))

(assert (=> d!428246 m!1696219))

(assert (=> d!428246 m!1696219))

(assert (=> d!428246 m!1696225))

(assert (=> d!428246 m!1696219))

(declare-fun m!1699177 () Bool)

(assert (=> d!428246 m!1699177))

(declare-fun m!1699179 () Bool)

(assert (=> d!428246 m!1699179))

(assert (=> d!428246 m!1699115))

(declare-fun m!1699181 () Bool)

(assert (=> d!428246 m!1699181))

(assert (=> b!1462270 m!1696259))

(declare-fun m!1699183 () Bool)

(assert (=> b!1462270 m!1699183))

(assert (=> b!1462270 m!1696225))

(assert (=> b!1462270 m!1696267))

(declare-fun m!1699185 () Bool)

(assert (=> b!1462270 m!1699185))

(assert (=> b!1462270 m!1696225))

(declare-fun m!1699187 () Bool)

(assert (=> b!1462270 m!1699187))

(assert (=> b!1462270 m!1699185))

(declare-fun m!1699189 () Bool)

(assert (=> b!1462270 m!1699189))

(assert (=> b!1462270 m!1699133))

(assert (=> b!1462270 m!1699113))

(declare-fun m!1699191 () Bool)

(assert (=> b!1462270 m!1699191))

(assert (=> b!1462270 m!1696219))

(declare-fun m!1699193 () Bool)

(assert (=> b!1462270 m!1699193))

(declare-fun m!1699195 () Bool)

(assert (=> b!1462270 m!1699195))

(declare-fun m!1699197 () Bool)

(assert (=> b!1462270 m!1699197))

(assert (=> b!1462270 m!1696219))

(declare-fun m!1699199 () Bool)

(assert (=> b!1462270 m!1699199))

(declare-fun m!1699201 () Bool)

(assert (=> b!1462270 m!1699201))

(assert (=> b!1462270 m!1699133))

(declare-fun m!1699203 () Bool)

(assert (=> b!1462270 m!1699203))

(declare-fun m!1699205 () Bool)

(assert (=> b!1462270 m!1699205))

(declare-fun m!1699207 () Bool)

(assert (=> b!1462270 m!1699207))

(assert (=> b!1462270 m!1699205))

(declare-fun m!1699209 () Bool)

(assert (=> b!1462270 m!1699209))

(assert (=> b!1462270 m!1699111))

(assert (=> b!1462270 m!1699111))

(assert (=> b!1462270 m!1699113))

(assert (=> b!1462270 m!1696259))

(assert (=> b!1462270 m!1696219))

(declare-fun m!1699211 () Bool)

(assert (=> b!1462276 m!1699211))

(assert (=> b!1462276 m!1699111))

(assert (=> b!1462276 m!1696259))

(declare-fun m!1699213 () Bool)

(assert (=> b!1462276 m!1699213))

(assert (=> b!1462276 m!1699111))

(assert (=> b!1462276 m!1699113))

(assert (=> b!1462276 m!1696259))

(assert (=> b!1462276 m!1696219))

(declare-fun m!1699215 () Bool)

(assert (=> b!1462269 m!1699215))

(assert (=> b!1462269 m!1696259))

(assert (=> b!1462269 m!1696259))

(assert (=> b!1462269 m!1696219))

(assert (=> b!1462269 m!1696219))

(declare-fun m!1699217 () Bool)

(assert (=> b!1462269 m!1699217))

(declare-fun m!1699219 () Bool)

(assert (=> b!1462274 m!1699219))

(declare-fun m!1699221 () Bool)

(assert (=> b!1462274 m!1699221))

(declare-fun m!1699223 () Bool)

(assert (=> b!1462273 m!1699223))

(assert (=> b!1461016 d!428246))

(declare-fun b!1462280 () Bool)

(declare-fun res!661846 () Bool)

(declare-fun e!932847 () Bool)

(assert (=> b!1462280 (=> (not res!661846) (not e!932847))))

(declare-fun lt!506277 () Option!2875)

(assert (=> b!1462280 (= res!661846 (= (++!4081 (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506277)))) (_2!8009 (get!4616 lt!506277))) (originalCharacters!3535 (h!20575 lt!504657))))))

(declare-fun b!1462281 () Bool)

(declare-fun res!661845 () Bool)

(assert (=> b!1462281 (=> (not res!661845) (not e!932847))))

(assert (=> b!1462281 (= res!661845 (= (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506277)))) (originalCharacters!3535 (_1!8009 (get!4616 lt!506277)))))))

(declare-fun bm!98346 () Bool)

(declare-fun call!98351 () Option!2875)

(assert (=> bm!98346 (= call!98351 (maxPrefixOneRule!661 Lexer!2327 (h!20576 (rules!11668 other!32)) (originalCharacters!3535 (h!20575 lt!504657))))))

(declare-fun b!1462282 () Bool)

(declare-fun e!932846 () Option!2875)

(declare-fun lt!506279 () Option!2875)

(declare-fun lt!506280 () Option!2875)

(assert (=> b!1462282 (= e!932846 (ite (and ((_ is None!2874) lt!506279) ((_ is None!2874) lt!506280)) None!2874 (ite ((_ is None!2874) lt!506280) lt!506279 (ite ((_ is None!2874) lt!506279) lt!506280 (ite (>= (size!12407 (_1!8009 (v!22498 lt!506279))) (size!12407 (_1!8009 (v!22498 lt!506280)))) lt!506279 lt!506280)))))))

(assert (=> b!1462282 (= lt!506279 call!98351)))

(assert (=> b!1462282 (= lt!506280 (maxPrefix!1193 Lexer!2327 (t!134384 (rules!11668 other!32)) (originalCharacters!3535 (h!20575 lt!504657))))))

(declare-fun b!1462283 () Bool)

(declare-fun res!661840 () Bool)

(assert (=> b!1462283 (=> (not res!661840) (not e!932847))))

(assert (=> b!1462283 (= res!661840 (= (value!85828 (_1!8009 (get!4616 lt!506277))) (apply!3962 (transformation!2673 (rule!4446 (_1!8009 (get!4616 lt!506277)))) (seqFromList!1714 (originalCharacters!3535 (_1!8009 (get!4616 lt!506277)))))))))

(declare-fun b!1462284 () Bool)

(assert (=> b!1462284 (= e!932847 (contains!2908 (rules!11668 other!32) (rule!4446 (_1!8009 (get!4616 lt!506277)))))))

(declare-fun b!1462285 () Bool)

(assert (=> b!1462285 (= e!932846 call!98351)))

(declare-fun b!1462286 () Bool)

(declare-fun e!932848 () Bool)

(assert (=> b!1462286 (= e!932848 e!932847)))

(declare-fun res!661843 () Bool)

(assert (=> b!1462286 (=> (not res!661843) (not e!932847))))

(assert (=> b!1462286 (= res!661843 (isDefined!2324 lt!506277))))

(declare-fun b!1462287 () Bool)

(declare-fun res!661842 () Bool)

(assert (=> b!1462287 (=> (not res!661842) (not e!932847))))

(assert (=> b!1462287 (= res!661842 (< (size!12411 (_2!8009 (get!4616 lt!506277))) (size!12411 (originalCharacters!3535 (h!20575 lt!504657)))))))

(declare-fun d!428328 () Bool)

(assert (=> d!428328 e!932848))

(declare-fun res!661841 () Bool)

(assert (=> d!428328 (=> res!661841 e!932848)))

(assert (=> d!428328 (= res!661841 (isEmpty!9533 lt!506277))))

(assert (=> d!428328 (= lt!506277 e!932846)))

(declare-fun c!241022 () Bool)

(assert (=> d!428328 (= c!241022 (and ((_ is Cons!15175) (rules!11668 other!32)) ((_ is Nil!15175) (t!134384 (rules!11668 other!32)))))))

(declare-fun lt!506276 () Unit!24235)

(declare-fun lt!506278 () Unit!24235)

(assert (=> d!428328 (= lt!506276 lt!506278)))

(assert (=> d!428328 (isPrefix!1203 (originalCharacters!3535 (h!20575 lt!504657)) (originalCharacters!3535 (h!20575 lt!504657)))))

(assert (=> d!428328 (= lt!506278 (lemmaIsPrefixRefl!835 (originalCharacters!3535 (h!20575 lt!504657)) (originalCharacters!3535 (h!20575 lt!504657))))))

(assert (=> d!428328 (rulesValidInductive!832 Lexer!2327 (rules!11668 other!32))))

(assert (=> d!428328 (= (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (originalCharacters!3535 (h!20575 lt!504657))) lt!506277)))

(declare-fun b!1462288 () Bool)

(declare-fun res!661844 () Bool)

(assert (=> b!1462288 (=> (not res!661844) (not e!932847))))

(assert (=> b!1462288 (= res!661844 (matchR!1829 (regex!2673 (rule!4446 (_1!8009 (get!4616 lt!506277)))) (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506277))))))))

(assert (= (and d!428328 c!241022) b!1462285))

(assert (= (and d!428328 (not c!241022)) b!1462282))

(assert (= (or b!1462285 b!1462282) bm!98346))

(assert (= (and d!428328 (not res!661841)) b!1462286))

(assert (= (and b!1462286 res!661843) b!1462281))

(assert (= (and b!1462281 res!661845) b!1462287))

(assert (= (and b!1462287 res!661842) b!1462280))

(assert (= (and b!1462280 res!661846) b!1462283))

(assert (= (and b!1462283 res!661840) b!1462288))

(assert (= (and b!1462288 res!661844) b!1462284))

(declare-fun m!1699225 () Bool)

(assert (=> b!1462288 m!1699225))

(declare-fun m!1699227 () Bool)

(assert (=> b!1462288 m!1699227))

(assert (=> b!1462288 m!1699227))

(declare-fun m!1699229 () Bool)

(assert (=> b!1462288 m!1699229))

(assert (=> b!1462288 m!1699229))

(declare-fun m!1699231 () Bool)

(assert (=> b!1462288 m!1699231))

(declare-fun m!1699233 () Bool)

(assert (=> d!428328 m!1699233))

(declare-fun m!1699235 () Bool)

(assert (=> d!428328 m!1699235))

(declare-fun m!1699237 () Bool)

(assert (=> d!428328 m!1699237))

(assert (=> d!428328 m!1698623))

(assert (=> b!1462280 m!1699225))

(assert (=> b!1462280 m!1699227))

(assert (=> b!1462280 m!1699227))

(assert (=> b!1462280 m!1699229))

(assert (=> b!1462280 m!1699229))

(declare-fun m!1699239 () Bool)

(assert (=> b!1462280 m!1699239))

(declare-fun m!1699241 () Bool)

(assert (=> b!1462282 m!1699241))

(assert (=> b!1462287 m!1699225))

(declare-fun m!1699243 () Bool)

(assert (=> b!1462287 m!1699243))

(declare-fun m!1699245 () Bool)

(assert (=> b!1462287 m!1699245))

(declare-fun m!1699247 () Bool)

(assert (=> bm!98346 m!1699247))

(assert (=> b!1462281 m!1699225))

(assert (=> b!1462281 m!1699227))

(assert (=> b!1462281 m!1699227))

(assert (=> b!1462281 m!1699229))

(assert (=> b!1462283 m!1699225))

(declare-fun m!1699249 () Bool)

(assert (=> b!1462283 m!1699249))

(assert (=> b!1462283 m!1699249))

(declare-fun m!1699251 () Bool)

(assert (=> b!1462283 m!1699251))

(assert (=> b!1462284 m!1699225))

(declare-fun m!1699253 () Bool)

(assert (=> b!1462284 m!1699253))

(declare-fun m!1699255 () Bool)

(assert (=> b!1462286 m!1699255))

(assert (=> b!1461016 d!428328))

(declare-fun d!428330 () Bool)

(declare-fun e!932863 () Bool)

(assert (=> d!428330 e!932863))

(declare-fun res!661849 () Bool)

(assert (=> d!428330 (=> (not res!661849) (not e!932863))))

(assert (=> d!428330 (= res!661849 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 lt!504657)))))) (t!134383 lt!504657)))))

(declare-fun lt!506301 () Unit!24235)

(declare-fun e!932864 () Unit!24235)

(assert (=> d!428330 (= lt!506301 e!932864)))

(declare-fun c!241035 () Bool)

(assert (=> d!428330 (= c!241035 (or ((_ is Nil!15174) (t!134383 lt!504657)) ((_ is Nil!15174) (t!134383 (t!134383 lt!504657)))))))

(assert (=> d!428330 (not (isEmpty!9528 (rules!11668 other!32)))))

(assert (=> d!428330 (= (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 other!32) (t!134383 lt!504657)) lt!506301)))

(declare-fun b!1462315 () Bool)

(declare-fun Unit!24414 () Unit!24235)

(assert (=> b!1462315 (= e!932864 Unit!24414)))

(declare-fun b!1462316 () Bool)

(declare-fun Unit!24415 () Unit!24235)

(assert (=> b!1462316 (= e!932864 Unit!24415)))

(declare-fun lt!506287 () BalanceConc!10284)

(assert (=> b!1462316 (= lt!506287 (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 lt!504657))))))

(declare-fun lt!506293 () BalanceConc!10284)

(assert (=> b!1462316 (= lt!506293 (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 (t!134383 lt!504657)))))))

(declare-fun lt!506289 () tuple2!14244)

(assert (=> b!1462316 (= lt!506289 (lex!1074 Lexer!2327 (rules!11668 other!32) lt!506293))))

(declare-fun lt!506294 () List!15238)

(assert (=> b!1462316 (= lt!506294 (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504657)))))))

(declare-fun lt!506292 () List!15238)

(assert (=> b!1462316 (= lt!506292 (list!6075 lt!506293))))

(declare-fun lt!506305 () Unit!24235)

(assert (=> b!1462316 (= lt!506305 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!506294 lt!506292))))

(assert (=> b!1462316 (isPrefix!1203 lt!506294 (++!4081 lt!506294 lt!506292))))

(declare-fun lt!506310 () Unit!24235)

(assert (=> b!1462316 (= lt!506310 lt!506305)))

(declare-fun lt!506296 () Unit!24235)

(assert (=> b!1462316 (= lt!506296 (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 other!32) (t!134383 (t!134383 lt!504657))))))

(declare-fun lt!506303 () Unit!24235)

(assert (=> b!1462316 (= lt!506303 (seqFromListBHdTlConstructive!95 (h!20575 (t!134383 (t!134383 lt!504657))) (t!134383 (t!134383 (t!134383 lt!504657))) (_1!8008 lt!506289)))))

(assert (=> b!1462316 (= (list!6073 (_1!8008 lt!506289)) (list!6073 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 (t!134383 lt!504657)))) (h!20575 (t!134383 (t!134383 lt!504657))))))))

(declare-fun lt!506307 () Unit!24235)

(assert (=> b!1462316 (= lt!506307 lt!506303)))

(declare-fun lt!506299 () Option!2875)

(assert (=> b!1462316 (= lt!506299 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 lt!506287)))))

(assert (=> b!1462316 (= (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 (t!134383 lt!504657)))) (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 (t!134383 lt!504657))) 0 (BalanceConc!10285 Empty!5172)))))

(declare-fun lt!506300 () Unit!24235)

(declare-fun Unit!24416 () Unit!24235)

(assert (=> b!1462316 (= lt!506300 Unit!24416)))

(declare-fun lt!506291 () Unit!24235)

(assert (=> b!1462316 (= lt!506291 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!239 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504657)))) (list!6075 lt!506293)))))

(assert (=> b!1462316 (= (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504657)))) (originalCharacters!3535 (h!20575 (t!134383 lt!504657))))))

(declare-fun lt!506295 () Unit!24235)

(declare-fun Unit!24417 () Unit!24235)

(assert (=> b!1462316 (= lt!506295 Unit!24417)))

(assert (=> b!1462316 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (t!134383 lt!504657)))) 0))) (Cons!15172 (head!3008 (originalCharacters!3535 (h!20575 (t!134383 (t!134383 lt!504657))))) Nil!15172))))

(declare-fun lt!506297 () Unit!24235)

(declare-fun Unit!24418 () Unit!24235)

(assert (=> b!1462316 (= lt!506297 Unit!24418)))

(assert (=> b!1462316 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (t!134383 lt!504657)))) 0))) (Cons!15172 (head!3008 (list!6075 lt!506293)) Nil!15172))))

(declare-fun lt!506308 () Unit!24235)

(declare-fun Unit!24419 () Unit!24235)

(assert (=> b!1462316 (= lt!506308 Unit!24419)))

(assert (=> b!1462316 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (t!134383 lt!504657)))) 0))) (Cons!15172 (head!3009 lt!506293) Nil!15172))))

(declare-fun lt!506290 () Unit!24235)

(declare-fun Unit!24420 () Unit!24235)

(assert (=> b!1462316 (= lt!506290 Unit!24420)))

(assert (=> b!1462316 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (originalCharacters!3535 (h!20575 (t!134383 lt!504657)))))))

(declare-fun lt!506302 () Unit!24235)

(declare-fun Unit!24421 () Unit!24235)

(assert (=> b!1462316 (= lt!506302 Unit!24421)))

(assert (=> b!1462316 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504657))))))))

(declare-fun lt!506309 () Unit!24235)

(declare-fun Unit!24422 () Unit!24235)

(assert (=> b!1462316 (= lt!506309 Unit!24422)))

(declare-fun lt!506304 () Unit!24235)

(declare-fun Unit!24423 () Unit!24235)

(assert (=> b!1462316 (= lt!506304 Unit!24423)))

(assert (=> b!1462316 (= (_1!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504657))))))) (h!20575 (t!134383 lt!504657)))))

(declare-fun lt!506298 () Unit!24235)

(declare-fun Unit!24424 () Unit!24235)

(assert (=> b!1462316 (= lt!506298 Unit!24424)))

(assert (=> b!1462316 (isEmpty!9527 (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504657))))))))))

(declare-fun lt!506312 () Unit!24235)

(declare-fun Unit!24425 () Unit!24235)

(assert (=> b!1462316 (= lt!506312 Unit!24425)))

(assert (=> b!1462316 (matchR!1829 (regex!2673 (rule!4446 (h!20575 (t!134383 lt!504657)))) (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504657)))))))

(declare-fun lt!506288 () Unit!24235)

(declare-fun Unit!24426 () Unit!24235)

(assert (=> b!1462316 (= lt!506288 Unit!24426)))

(assert (=> b!1462316 (= (rule!4446 (h!20575 (t!134383 lt!504657))) (rule!4446 (h!20575 (t!134383 lt!504657))))))

(declare-fun lt!506306 () Unit!24235)

(declare-fun Unit!24427 () Unit!24235)

(assert (=> b!1462316 (= lt!506306 Unit!24427)))

(declare-fun lt!506311 () Unit!24235)

(assert (=> b!1462316 (= lt!506311 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!37 Lexer!2327 (rules!11668 other!32) (h!20575 (t!134383 lt!504657)) (rule!4446 (h!20575 (t!134383 lt!504657))) (list!6075 lt!506293)))))

(declare-fun b!1462317 () Bool)

(assert (=> b!1462317 (= e!932863 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 lt!504657)))))))))

(assert (= (and d!428330 c!241035) b!1462315))

(assert (= (and d!428330 (not c!241035)) b!1462316))

(assert (= (and d!428330 res!661849) b!1462317))

(assert (=> d!428330 m!1696205))

(assert (=> d!428330 m!1696213))

(assert (=> d!428330 m!1696191))

(declare-fun m!1699257 () Bool)

(assert (=> d!428330 m!1699257))

(assert (=> d!428330 m!1696205))

(assert (=> d!428330 m!1696213))

(declare-fun m!1699259 () Bool)

(assert (=> d!428330 m!1699259))

(declare-fun m!1699261 () Bool)

(assert (=> b!1462316 m!1699261))

(declare-fun m!1699263 () Bool)

(assert (=> b!1462316 m!1699263))

(declare-fun m!1699265 () Bool)

(assert (=> b!1462316 m!1699265))

(declare-fun m!1699267 () Bool)

(assert (=> b!1462316 m!1699267))

(assert (=> b!1462316 m!1696209))

(declare-fun m!1699269 () Bool)

(assert (=> b!1462316 m!1699269))

(declare-fun m!1699271 () Bool)

(assert (=> b!1462316 m!1699271))

(declare-fun m!1699273 () Bool)

(assert (=> b!1462316 m!1699273))

(assert (=> b!1462316 m!1696209))

(declare-fun m!1699275 () Bool)

(assert (=> b!1462316 m!1699275))

(assert (=> b!1462316 m!1699265))

(assert (=> b!1462316 m!1699273))

(declare-fun m!1699277 () Bool)

(assert (=> b!1462316 m!1699277))

(assert (=> b!1462316 m!1699269))

(declare-fun m!1699279 () Bool)

(assert (=> b!1462316 m!1699279))

(assert (=> b!1462316 m!1697829))

(declare-fun m!1699281 () Bool)

(assert (=> b!1462316 m!1699281))

(assert (=> b!1462316 m!1696205))

(assert (=> b!1462316 m!1696213))

(declare-fun m!1699283 () Bool)

(assert (=> b!1462316 m!1699283))

(assert (=> b!1462316 m!1697829))

(declare-fun m!1699285 () Bool)

(assert (=> b!1462316 m!1699285))

(declare-fun m!1699287 () Bool)

(assert (=> b!1462316 m!1699287))

(declare-fun m!1699289 () Bool)

(assert (=> b!1462316 m!1699289))

(declare-fun m!1699291 () Bool)

(assert (=> b!1462316 m!1699291))

(declare-fun m!1699293 () Bool)

(assert (=> b!1462316 m!1699293))

(assert (=> b!1462316 m!1699285))

(declare-fun m!1699295 () Bool)

(assert (=> b!1462316 m!1699295))

(declare-fun m!1699297 () Bool)

(assert (=> b!1462316 m!1699297))

(declare-fun m!1699299 () Bool)

(assert (=> b!1462316 m!1699299))

(assert (=> b!1462316 m!1699297))

(declare-fun m!1699301 () Bool)

(assert (=> b!1462316 m!1699301))

(declare-fun m!1699303 () Bool)

(assert (=> b!1462316 m!1699303))

(assert (=> b!1462316 m!1697829))

(assert (=> b!1462316 m!1699291))

(declare-fun m!1699305 () Bool)

(assert (=> b!1462316 m!1699305))

(declare-fun m!1699307 () Bool)

(assert (=> b!1462316 m!1699307))

(assert (=> b!1462316 m!1699291))

(declare-fun m!1699309 () Bool)

(assert (=> b!1462316 m!1699309))

(declare-fun m!1699311 () Bool)

(assert (=> b!1462316 m!1699311))

(assert (=> b!1462316 m!1699285))

(assert (=> b!1462316 m!1699261))

(assert (=> b!1462316 m!1699265))

(declare-fun m!1699313 () Bool)

(assert (=> b!1462316 m!1699313))

(assert (=> b!1462316 m!1699311))

(declare-fun m!1699315 () Bool)

(assert (=> b!1462316 m!1699315))

(assert (=> b!1462316 m!1696205))

(declare-fun m!1699317 () Bool)

(assert (=> b!1462316 m!1699317))

(assert (=> b!1462316 m!1696197))

(assert (=> b!1462316 m!1699271))

(assert (=> b!1462316 m!1699263))

(declare-fun m!1699319 () Bool)

(assert (=> b!1462316 m!1699319))

(assert (=> b!1462316 m!1699319))

(declare-fun m!1699321 () Bool)

(assert (=> b!1462316 m!1699321))

(declare-fun m!1699323 () Bool)

(assert (=> b!1462316 m!1699323))

(assert (=> b!1462316 m!1696197))

(assert (=> b!1462316 m!1697829))

(assert (=> b!1462316 m!1699285))

(declare-fun m!1699325 () Bool)

(assert (=> b!1462316 m!1699325))

(assert (=> b!1462317 m!1696205))

(assert (=> b!1462317 m!1696205))

(assert (=> b!1462317 m!1696213))

(assert (=> b!1462317 m!1696213))

(assert (=> b!1462317 m!1699259))

(declare-fun m!1699327 () Bool)

(assert (=> b!1462317 m!1699327))

(assert (=> b!1461016 d!428330))

(declare-fun d!428332 () Bool)

(declare-fun e!932871 () Bool)

(assert (=> d!428332 e!932871))

(declare-fun res!661852 () Bool)

(assert (=> d!428332 (=> (not res!661852) (not e!932871))))

(declare-fun lt!506317 () BalanceConc!10284)

(assert (=> d!428332 (= res!661852 (= (list!6075 lt!506317) (Cons!15172 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504657))) 0) Nil!15172)))))

(declare-fun singleton!538 (C!8152) BalanceConc!10284)

(assert (=> d!428332 (= lt!506317 (singleton!538 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504657))) 0)))))

(assert (=> d!428332 (= (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504657))) 0)) lt!506317)))

(declare-fun b!1462328 () Bool)

(declare-fun isBalanced!1553 (Conc!5172) Bool)

(assert (=> b!1462328 (= e!932871 (isBalanced!1553 (c!240744 lt!506317)))))

(assert (= (and d!428332 res!661852) b!1462328))

(declare-fun m!1699329 () Bool)

(assert (=> d!428332 m!1699329))

(assert (=> d!428332 m!1696199))

(declare-fun m!1699331 () Bool)

(assert (=> d!428332 m!1699331))

(declare-fun m!1699333 () Bool)

(assert (=> b!1462328 m!1699333))

(assert (=> b!1461016 d!428332))

(assert (=> b!1461016 d!428018))

(declare-fun d!428334 () Bool)

(assert (=> d!428334 (= (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657))))) (not (isEmpty!9533 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))))

(declare-fun bs!344291 () Bool)

(assert (= bs!344291 d!428334))

(assert (=> bs!344291 m!1696231))

(declare-fun m!1699335 () Bool)

(assert (=> bs!344291 m!1699335))

(assert (=> b!1461016 d!428334))

(declare-fun d!428336 () Bool)

(assert (=> d!428336 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504657))) 0))) (list!6081 (c!240744 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504657))) 0)))))))

(declare-fun bs!344292 () Bool)

(assert (= bs!344292 d!428336))

(declare-fun m!1699337 () Bool)

(assert (=> bs!344292 m!1699337))

(assert (=> b!1461016 d!428336))

(assert (=> b!1461016 d!427916))

(declare-fun d!428338 () Bool)

(assert (=> d!428338 (= (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (originalCharacters!3535 (h!20575 lt!504657)))) (not (isEmpty!9533 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (originalCharacters!3535 (h!20575 lt!504657))))))))

(declare-fun bs!344293 () Bool)

(assert (= bs!344293 d!428338))

(assert (=> bs!344293 m!1696207))

(declare-fun m!1699339 () Bool)

(assert (=> bs!344293 m!1699339))

(assert (=> b!1461016 d!428338))

(declare-fun d!428340 () Bool)

(assert (=> d!428340 (= (seqFromList!1712 (t!134383 (t!134383 lt!504657))) (fromListB!736 (t!134383 (t!134383 lt!504657))))))

(declare-fun bs!344294 () Bool)

(assert (= bs!344294 d!428340))

(declare-fun m!1699341 () Bool)

(assert (=> bs!344294 m!1699341))

(assert (=> b!1461016 d!428340))

(assert (=> b!1461016 d!428016))

(declare-fun d!428342 () Bool)

(declare-fun e!932876 () Bool)

(assert (=> d!428342 e!932876))

(declare-fun res!661863 () Bool)

(assert (=> d!428342 (=> (not res!661863) (not e!932876))))

(declare-fun prepend!427 (Conc!5173 Token!5008) Conc!5173)

(assert (=> d!428342 (= res!661863 (isBalanced!1550 (prepend!427 (c!240746 (seqFromList!1712 (t!134383 (t!134383 lt!504657)))) (h!20575 (t!134383 lt!504657)))))))

(declare-fun lt!506320 () BalanceConc!10286)

(assert (=> d!428342 (= lt!506320 (BalanceConc!10287 (prepend!427 (c!240746 (seqFromList!1712 (t!134383 (t!134383 lt!504657)))) (h!20575 (t!134383 lt!504657)))))))

(assert (=> d!428342 (= (prepend!425 (seqFromList!1712 (t!134383 (t!134383 lt!504657))) (h!20575 (t!134383 lt!504657))) lt!506320)))

(declare-fun b!1462339 () Bool)

(assert (=> b!1462339 (= e!932876 (= (list!6073 lt!506320) (Cons!15174 (h!20575 (t!134383 lt!504657)) (list!6073 (seqFromList!1712 (t!134383 (t!134383 lt!504657)))))))))

(assert (= (and d!428342 res!661863) b!1462339))

(declare-fun m!1699343 () Bool)

(assert (=> d!428342 m!1699343))

(assert (=> d!428342 m!1699343))

(declare-fun m!1699345 () Bool)

(assert (=> d!428342 m!1699345))

(declare-fun m!1699347 () Bool)

(assert (=> b!1462339 m!1699347))

(assert (=> b!1462339 m!1696209))

(declare-fun m!1699349 () Bool)

(assert (=> b!1462339 m!1699349))

(assert (=> b!1461016 d!428342))

(declare-fun d!428344 () Bool)

(assert (=> d!428344 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919))))))

(declare-fun lt!506401 () Unit!24235)

(declare-fun e!932946 () Unit!24235)

(assert (=> d!428344 (= lt!506401 e!932946)))

(declare-fun c!241078 () Bool)

(assert (=> d!428344 (= c!241078 (isEmpty!9533 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919)))))))

(declare-fun lt!506408 () Unit!24235)

(declare-fun lt!506411 () Unit!24235)

(assert (=> d!428344 (= lt!506408 lt!506411)))

(declare-fun e!932947 () Bool)

(assert (=> d!428344 e!932947))

(declare-fun res!661902 () Bool)

(assert (=> d!428344 (=> (not res!661902) (not e!932947))))

(declare-fun lt!506405 () Token!5008)

(assert (=> d!428344 (= res!661902 (isDefined!2326 (getRuleFromTag!222 Lexer!2327 (rules!11668 other!32) (tag!2937 (rule!4446 lt!506405)))))))

(assert (=> d!428344 (= lt!506411 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!222 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657))) lt!506405))))

(declare-fun lt!506417 () Unit!24235)

(declare-fun lt!506412 () Unit!24235)

(assert (=> d!428344 (= lt!506417 lt!506412)))

(declare-fun lt!506414 () List!15238)

(assert (=> d!428344 (isPrefix!1203 lt!506414 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!108 (List!15238 List!15238 List!15238) Unit!24235)

(assert (=> d!428344 (= lt!506412 (lemmaPrefixStaysPrefixWhenAddingToSuffix!108 lt!506414 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919)))))

(assert (=> d!428344 (= lt!506414 (list!6075 (charsOf!1536 lt!506405)))))

(declare-fun lt!506406 () Unit!24235)

(declare-fun lt!506409 () Unit!24235)

(assert (=> d!428344 (= lt!506406 lt!506409)))

(declare-fun lt!506413 () List!15238)

(declare-fun lt!506415 () List!15238)

(assert (=> d!428344 (isPrefix!1203 lt!506413 (++!4081 lt!506413 lt!506415))))

(assert (=> d!428344 (= lt!506409 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!506413 lt!506415))))

(assert (=> d!428344 (= lt!506415 (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))))

(assert (=> d!428344 (= lt!506413 (list!6075 (charsOf!1536 lt!506405)))))

(assert (=> d!428344 (= lt!506405 (head!3012 (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 other!32) (seqFromList!1714 (list!6075 (charsOf!1536 (h!20575 lt!504657)))))))))))

(assert (=> d!428344 (not (isEmpty!9528 (rules!11668 other!32)))))

(assert (=> d!428344 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!239 Lexer!2327 (rules!11668 other!32) (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919)) lt!506401)))

(declare-fun b!1462455 () Bool)

(assert (=> b!1462455 (= e!932947 (= (rule!4446 lt!506405) (get!4618 (getRuleFromTag!222 Lexer!2327 (rules!11668 other!32) (tag!2937 (rule!4446 lt!506405))))))))

(declare-fun b!1462454 () Bool)

(declare-fun res!661901 () Bool)

(assert (=> b!1462454 (=> (not res!661901) (not e!932947))))

(assert (=> b!1462454 (= res!661901 (matchR!1829 (regex!2673 (get!4618 (getRuleFromTag!222 Lexer!2327 (rules!11668 other!32) (tag!2937 (rule!4446 lt!506405))))) (list!6075 (charsOf!1536 lt!506405))))))

(declare-fun b!1462456 () Bool)

(declare-fun Unit!24428 () Unit!24235)

(assert (=> b!1462456 (= e!932946 Unit!24428)))

(declare-fun lt!506416 () List!15238)

(assert (=> b!1462456 (= lt!506416 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919)))))

(declare-fun lt!506403 () Unit!24235)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!116 (LexerInterface!2329 Rule!5146 List!15241 List!15238) Unit!24235)

(assert (=> b!1462456 (= lt!506403 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!116 Lexer!2327 (rule!4446 lt!506405) (rules!11668 other!32) lt!506416))))

(assert (=> b!1462456 (isEmpty!9533 (maxPrefixOneRule!661 Lexer!2327 (rule!4446 lt!506405) lt!506416))))

(declare-fun lt!506402 () Unit!24235)

(assert (=> b!1462456 (= lt!506402 lt!506403)))

(declare-fun lt!506404 () List!15238)

(assert (=> b!1462456 (= lt!506404 (list!6075 (charsOf!1536 lt!506405)))))

(declare-fun lt!506407 () Unit!24235)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!112 (LexerInterface!2329 Rule!5146 List!15238 List!15238) Unit!24235)

(assert (=> b!1462456 (= lt!506407 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!112 Lexer!2327 (rule!4446 lt!506405) lt!506404 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504657))) (list!6075 lt!504919))))))

(assert (=> b!1462456 (not (matchR!1829 (regex!2673 (rule!4446 lt!506405)) lt!506404))))

(declare-fun lt!506410 () Unit!24235)

(assert (=> b!1462456 (= lt!506410 lt!506407)))

(assert (=> b!1462456 false))

(declare-fun b!1462457 () Bool)

(declare-fun Unit!24429 () Unit!24235)

(assert (=> b!1462457 (= e!932946 Unit!24429)))

(assert (= (and d!428344 res!661902) b!1462454))

(assert (= (and b!1462454 res!661901) b!1462455))

(assert (= (and d!428344 c!241078) b!1462456))

(assert (= (and d!428344 (not c!241078)) b!1462457))

(declare-fun m!1699595 () Bool)

(assert (=> d!428344 m!1699595))

(declare-fun m!1699597 () Bool)

(assert (=> d!428344 m!1699597))

(declare-fun m!1699599 () Bool)

(assert (=> d!428344 m!1699599))

(declare-fun m!1699601 () Bool)

(assert (=> d!428344 m!1699601))

(assert (=> d!428344 m!1696219))

(assert (=> d!428344 m!1696231))

(declare-fun m!1699603 () Bool)

(assert (=> d!428344 m!1699603))

(declare-fun m!1699605 () Bool)

(assert (=> d!428344 m!1699605))

(declare-fun m!1699607 () Bool)

(assert (=> d!428344 m!1699607))

(assert (=> d!428344 m!1699155))

(assert (=> d!428344 m!1699157))

(declare-fun m!1699609 () Bool)

(assert (=> d!428344 m!1699609))

(declare-fun m!1699611 () Bool)

(assert (=> d!428344 m!1699611))

(assert (=> d!428344 m!1699157))

(declare-fun m!1699613 () Bool)

(assert (=> d!428344 m!1699613))

(assert (=> d!428344 m!1696219))

(assert (=> d!428344 m!1696225))

(assert (=> d!428344 m!1699155))

(assert (=> d!428344 m!1699607))

(declare-fun m!1699617 () Bool)

(assert (=> d!428344 m!1699617))

(assert (=> d!428344 m!1699595))

(assert (=> d!428344 m!1699601))

(declare-fun m!1699623 () Bool)

(assert (=> d!428344 m!1699623))

(assert (=> d!428344 m!1696219))

(assert (=> d!428344 m!1696225))

(declare-fun m!1699625 () Bool)

(assert (=> d!428344 m!1699625))

(assert (=> d!428344 m!1699157))

(declare-fun m!1699627 () Bool)

(assert (=> d!428344 m!1699627))

(assert (=> d!428344 m!1696219))

(declare-fun m!1699629 () Bool)

(assert (=> d!428344 m!1699629))

(assert (=> d!428344 m!1696191))

(assert (=> d!428344 m!1696231))

(assert (=> d!428344 m!1696233))

(assert (=> d!428344 m!1699155))

(declare-fun m!1699631 () Bool)

(assert (=> d!428344 m!1699631))

(assert (=> d!428344 m!1699603))

(assert (=> d!428344 m!1696219))

(assert (=> d!428344 m!1699609))

(assert (=> b!1462455 m!1699603))

(assert (=> b!1462455 m!1699603))

(declare-fun m!1699633 () Bool)

(assert (=> b!1462455 m!1699633))

(assert (=> b!1462454 m!1699603))

(assert (=> b!1462454 m!1699633))

(assert (=> b!1462454 m!1699607))

(assert (=> b!1462454 m!1699617))

(declare-fun m!1699635 () Bool)

(assert (=> b!1462454 m!1699635))

(assert (=> b!1462454 m!1699607))

(assert (=> b!1462454 m!1699617))

(assert (=> b!1462454 m!1699603))

(declare-fun m!1699637 () Bool)

(assert (=> b!1462456 m!1699637))

(declare-fun m!1699639 () Bool)

(assert (=> b!1462456 m!1699639))

(declare-fun m!1699641 () Bool)

(assert (=> b!1462456 m!1699641))

(assert (=> b!1462456 m!1699607))

(declare-fun m!1699643 () Bool)

(assert (=> b!1462456 m!1699643))

(assert (=> b!1462456 m!1696219))

(assert (=> b!1462456 m!1696225))

(assert (=> b!1462456 m!1699155))

(assert (=> b!1462456 m!1699607))

(assert (=> b!1462456 m!1699617))

(assert (=> b!1462456 m!1699639))

(assert (=> b!1462456 m!1699155))

(declare-fun m!1699645 () Bool)

(assert (=> b!1462456 m!1699645))

(assert (=> b!1461016 d!428344))

(declare-fun d!428412 () Bool)

(assert (=> d!428412 (= (separableTokens!263 Lexer!2327 (tokens!2100 thiss!10022) (rules!11668 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!136 Lexer!2327 (tokens!2100 thiss!10022) 0 (rules!11668 thiss!10022)))))

(declare-fun bs!344305 () Bool)

(assert (= bs!344305 d!428412))

(declare-fun m!1699647 () Bool)

(assert (=> bs!344305 m!1699647))

(assert (=> b!1461215 d!428412))

(declare-fun bs!344322 () Bool)

(declare-fun d!428414 () Bool)

(assert (= bs!344322 (and d!428414 d!427750)))

(declare-fun lambda!63312 () Int)

(assert (=> bs!344322 (= (= (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) (rules!11668 thiss!10022)) (= lambda!63312 lambda!63291))))

(declare-fun bs!344323 () Bool)

(assert (= bs!344323 (and d!428414 d!428190)))

(assert (=> bs!344323 (= (= (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) (rules!11668 thiss!10022)) (= lambda!63312 lambda!63299))))

(declare-fun bs!344324 () Bool)

(assert (= bs!344324 (and d!428414 d!428106)))

(assert (=> bs!344324 (= (= (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) (rules!11668 thiss!10022)) (= lambda!63312 lambda!63297))))

(declare-fun bs!344325 () Bool)

(assert (= bs!344325 (and d!428414 d!428096)))

(assert (=> bs!344325 (= (= (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) (rules!11668 thiss!10022)) (= lambda!63312 lambda!63296))))

(declare-fun bs!344326 () Bool)

(assert (= bs!344326 (and d!428414 d!428178)))

(assert (=> bs!344326 (= (= (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) (rules!11668 thiss!10022)) (= lambda!63312 lambda!63298))))

(declare-fun b!1462574 () Bool)

(declare-fun e!933020 () Bool)

(assert (=> b!1462574 (= e!933020 true)))

(declare-fun b!1462573 () Bool)

(declare-fun e!933019 () Bool)

(assert (=> b!1462573 (= e!933019 e!933020)))

(declare-fun b!1462572 () Bool)

(declare-fun e!933018 () Bool)

(assert (=> b!1462572 (= e!933018 e!933019)))

(assert (=> d!428414 e!933018))

(assert (= b!1462573 b!1462574))

(assert (= b!1462572 b!1462573))

(assert (= (and d!428414 ((_ is Cons!15175) (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)))) b!1462572))

(assert (=> b!1462574 (< (dynLambda!6923 order!9145 (toValue!3984 (transformation!2673 (h!20576 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)))))) (dynLambda!6924 order!9147 lambda!63312))))

(assert (=> b!1462574 (< (dynLambda!6925 order!9149 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)))))) (dynLambda!6924 order!9147 lambda!63312))))

(assert (=> d!428414 true))

(declare-fun e!933017 () Bool)

(assert (=> d!428414 e!933017))

(declare-fun res!661941 () Bool)

(assert (=> d!428414 (=> (not res!661941) (not e!933017))))

(declare-fun lt!506463 () Bool)

(assert (=> d!428414 (= res!661941 (= lt!506463 (forall!3740 (list!6073 (tokens!2100 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))) lambda!63312)))))

(declare-fun forall!3742 (BalanceConc!10286 Int) Bool)

(assert (=> d!428414 (= lt!506463 (forall!3742 (tokens!2100 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) lambda!63312))))

(assert (=> d!428414 (not (isEmpty!9528 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))))))

(assert (=> d!428414 (= (rulesProduceEachTokenIndividually!879 Lexer!2327 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) (tokens!2100 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))) lt!506463)))

(declare-fun b!1462571 () Bool)

(assert (=> b!1462571 (= e!933017 (= lt!506463 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) (list!6073 (tokens!2100 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))))))))

(assert (= (and d!428414 res!661941) b!1462571))

(declare-fun m!1699815 () Bool)

(assert (=> d!428414 m!1699815))

(assert (=> d!428414 m!1699815))

(declare-fun m!1699817 () Bool)

(assert (=> d!428414 m!1699817))

(declare-fun m!1699819 () Bool)

(assert (=> d!428414 m!1699819))

(assert (=> d!428414 m!1695841))

(assert (=> b!1462571 m!1699815))

(assert (=> b!1462571 m!1699815))

(declare-fun m!1699821 () Bool)

(assert (=> b!1462571 m!1699821))

(assert (=> b!1460948 d!428414))

(declare-fun d!428496 () Bool)

(declare-fun lt!506464 () C!8152)

(assert (=> d!428496 (= lt!506464 (head!3008 (list!6075 lt!504887)))))

(assert (=> d!428496 (= lt!506464 (head!3015 (c!240744 lt!504887)))))

(assert (=> d!428496 (not (isEmpty!9529 lt!504887))))

(assert (=> d!428496 (= (head!3009 lt!504887) lt!506464)))

(declare-fun bs!344327 () Bool)

(assert (= bs!344327 d!428496))

(assert (=> bs!344327 m!1696119))

(assert (=> bs!344327 m!1696119))

(assert (=> bs!344327 m!1696159))

(declare-fun m!1699823 () Bool)

(assert (=> bs!344327 m!1699823))

(declare-fun m!1699825 () Bool)

(assert (=> bs!344327 m!1699825))

(assert (=> b!1461001 d!428496))

(declare-fun d!428498 () Bool)

(assert (=> d!428498 (= (list!6073 (_1!8008 lt!504883)) (list!6073 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 lt!504650))) (h!20575 (t!134383 lt!504650)))))))

(declare-fun lt!506465 () Unit!24235)

(assert (=> d!428498 (= lt!506465 (choose!8993 (h!20575 (t!134383 lt!504650)) (t!134383 (t!134383 lt!504650)) (_1!8008 lt!504883)))))

(assert (=> d!428498 (= (list!6073 (_1!8008 lt!504883)) (list!6073 (seqFromList!1712 ($colon$colon!249 (t!134383 (t!134383 lt!504650)) (h!20575 (t!134383 lt!504650))))))))

(assert (=> d!428498 (= (seqFromListBHdTlConstructive!95 (h!20575 (t!134383 lt!504650)) (t!134383 (t!134383 lt!504650)) (_1!8008 lt!504883)) lt!506465)))

(declare-fun bs!344328 () Bool)

(assert (= bs!344328 d!428498))

(assert (=> bs!344328 m!1696139))

(assert (=> bs!344328 m!1696107))

(assert (=> bs!344328 m!1696111))

(assert (=> bs!344328 m!1696105))

(declare-fun m!1699827 () Bool)

(assert (=> bs!344328 m!1699827))

(declare-fun m!1699829 () Bool)

(assert (=> bs!344328 m!1699829))

(assert (=> bs!344328 m!1696105))

(assert (=> bs!344328 m!1696107))

(assert (=> bs!344328 m!1699827))

(declare-fun m!1699831 () Bool)

(assert (=> bs!344328 m!1699831))

(assert (=> bs!344328 m!1699829))

(declare-fun m!1699833 () Bool)

(assert (=> bs!344328 m!1699833))

(assert (=> b!1461001 d!428498))

(declare-fun d!428500 () Bool)

(declare-fun lt!506471 () BalanceConc!10284)

(assert (=> d!428500 (= (list!6075 lt!506471) (printListTailRec!291 Lexer!2327 (dropList!480 (singletonSeq!1277 (h!20575 lt!504650)) 0) (list!6075 (BalanceConc!10285 Empty!5172))))))

(declare-fun e!933022 () BalanceConc!10284)

(assert (=> d!428500 (= lt!506471 e!933022)))

(declare-fun c!241114 () Bool)

(assert (=> d!428500 (= c!241114 (>= 0 (size!12413 (singletonSeq!1277 (h!20575 lt!504650)))))))

(declare-fun e!933021 () Bool)

(assert (=> d!428500 e!933021))

(declare-fun res!661942 () Bool)

(assert (=> d!428500 (=> (not res!661942) (not e!933021))))

(assert (=> d!428500 (= res!661942 (>= 0 0))))

(assert (=> d!428500 (= (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504650)) 0 (BalanceConc!10285 Empty!5172)) lt!506471)))

(declare-fun b!1462575 () Bool)

(assert (=> b!1462575 (= e!933021 (<= 0 (size!12413 (singletonSeq!1277 (h!20575 lt!504650)))))))

(declare-fun b!1462576 () Bool)

(assert (=> b!1462576 (= e!933022 (BalanceConc!10285 Empty!5172))))

(declare-fun b!1462577 () Bool)

(assert (=> b!1462577 (= e!933022 (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504650)) (+ 0 1) (++!4084 (BalanceConc!10285 Empty!5172) (charsOf!1536 (apply!3952 (singletonSeq!1277 (h!20575 lt!504650)) 0)))))))

(declare-fun lt!506467 () List!15240)

(assert (=> b!1462577 (= lt!506467 (list!6073 (singletonSeq!1277 (h!20575 lt!504650))))))

(declare-fun lt!506468 () Unit!24235)

(assert (=> b!1462577 (= lt!506468 (lemmaDropApply!494 lt!506467 0))))

(assert (=> b!1462577 (= (head!3012 (drop!744 lt!506467 0)) (apply!3953 lt!506467 0))))

(declare-fun lt!506472 () Unit!24235)

(assert (=> b!1462577 (= lt!506472 lt!506468)))

(declare-fun lt!506470 () List!15240)

(assert (=> b!1462577 (= lt!506470 (list!6073 (singletonSeq!1277 (h!20575 lt!504650))))))

(declare-fun lt!506469 () Unit!24235)

(assert (=> b!1462577 (= lt!506469 (lemmaDropTail!474 lt!506470 0))))

(assert (=> b!1462577 (= (tail!2174 (drop!744 lt!506470 0)) (drop!744 lt!506470 (+ 0 1)))))

(declare-fun lt!506466 () Unit!24235)

(assert (=> b!1462577 (= lt!506466 lt!506469)))

(assert (= (and d!428500 res!661942) b!1462575))

(assert (= (and d!428500 c!241114) b!1462576))

(assert (= (and d!428500 (not c!241114)) b!1462577))

(declare-fun m!1699835 () Bool)

(assert (=> d!428500 m!1699835))

(declare-fun m!1699837 () Bool)

(assert (=> d!428500 m!1699837))

(assert (=> d!428500 m!1698367))

(declare-fun m!1699839 () Bool)

(assert (=> d!428500 m!1699839))

(assert (=> d!428500 m!1698367))

(assert (=> d!428500 m!1696097))

(declare-fun m!1699841 () Bool)

(assert (=> d!428500 m!1699841))

(assert (=> d!428500 m!1696097))

(assert (=> d!428500 m!1699837))

(assert (=> b!1462575 m!1696097))

(assert (=> b!1462575 m!1699841))

(assert (=> b!1462577 m!1696097))

(declare-fun m!1699843 () Bool)

(assert (=> b!1462577 m!1699843))

(declare-fun m!1699845 () Bool)

(assert (=> b!1462577 m!1699845))

(declare-fun m!1699847 () Bool)

(assert (=> b!1462577 m!1699847))

(declare-fun m!1699849 () Bool)

(assert (=> b!1462577 m!1699849))

(declare-fun m!1699851 () Bool)

(assert (=> b!1462577 m!1699851))

(declare-fun m!1699853 () Bool)

(assert (=> b!1462577 m!1699853))

(declare-fun m!1699855 () Bool)

(assert (=> b!1462577 m!1699855))

(declare-fun m!1699857 () Bool)

(assert (=> b!1462577 m!1699857))

(declare-fun m!1699859 () Bool)

(assert (=> b!1462577 m!1699859))

(assert (=> b!1462577 m!1699855))

(assert (=> b!1462577 m!1699843))

(assert (=> b!1462577 m!1696097))

(assert (=> b!1462577 m!1699853))

(declare-fun m!1699861 () Bool)

(assert (=> b!1462577 m!1699861))

(declare-fun m!1699863 () Bool)

(assert (=> b!1462577 m!1699863))

(assert (=> b!1462577 m!1696097))

(declare-fun m!1699865 () Bool)

(assert (=> b!1462577 m!1699865))

(assert (=> b!1462577 m!1699861))

(declare-fun m!1699867 () Bool)

(assert (=> b!1462577 m!1699867))

(assert (=> b!1462577 m!1699857))

(assert (=> b!1461001 d!428500))

(declare-fun d!428502 () Bool)

(assert (=> d!428502 (= (list!6075 lt!504881) (list!6081 (c!240744 lt!504881)))))

(declare-fun bs!344329 () Bool)

(assert (= bs!344329 d!428502))

(declare-fun m!1699869 () Bool)

(assert (=> bs!344329 m!1699869))

(assert (=> b!1461001 d!428502))

(declare-fun d!428504 () Bool)

(assert (=> d!428504 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504650))) 0))) (list!6081 (c!240744 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504650))) 0)))))))

(declare-fun bs!344330 () Bool)

(assert (= bs!344330 d!428504))

(declare-fun m!1699871 () Bool)

(assert (=> bs!344330 m!1699871))

(assert (=> b!1461001 d!428504))

(assert (=> b!1461001 d!428174))

(declare-fun d!428506 () Bool)

(declare-fun e!933023 () Bool)

(assert (=> d!428506 e!933023))

(declare-fun res!661943 () Bool)

(assert (=> d!428506 (=> (not res!661943) (not e!933023))))

(assert (=> d!428506 (= res!661943 (isBalanced!1550 (prepend!427 (c!240746 (seqFromList!1712 (t!134383 (t!134383 lt!504650)))) (h!20575 (t!134383 lt!504650)))))))

(declare-fun lt!506473 () BalanceConc!10286)

(assert (=> d!428506 (= lt!506473 (BalanceConc!10287 (prepend!427 (c!240746 (seqFromList!1712 (t!134383 (t!134383 lt!504650)))) (h!20575 (t!134383 lt!504650)))))))

(assert (=> d!428506 (= (prepend!425 (seqFromList!1712 (t!134383 (t!134383 lt!504650))) (h!20575 (t!134383 lt!504650))) lt!506473)))

(declare-fun b!1462578 () Bool)

(assert (=> b!1462578 (= e!933023 (= (list!6073 lt!506473) (Cons!15174 (h!20575 (t!134383 lt!504650)) (list!6073 (seqFromList!1712 (t!134383 (t!134383 lt!504650)))))))))

(assert (= (and d!428506 res!661943) b!1462578))

(declare-fun m!1699873 () Bool)

(assert (=> d!428506 m!1699873))

(assert (=> d!428506 m!1699873))

(declare-fun m!1699875 () Bool)

(assert (=> d!428506 m!1699875))

(declare-fun m!1699877 () Bool)

(assert (=> b!1462578 m!1699877))

(assert (=> b!1462578 m!1696105))

(declare-fun m!1699879 () Bool)

(assert (=> b!1462578 m!1699879))

(assert (=> b!1461001 d!428506))

(declare-fun d!428508 () Bool)

(assert (=> d!428508 (= (head!3008 (list!6075 lt!504887)) (h!20573 (list!6075 lt!504887)))))

(assert (=> b!1461001 d!428508))

(declare-fun b!1462580 () Bool)

(declare-fun e!933024 () List!15238)

(assert (=> b!1462580 (= e!933024 (Cons!15172 (h!20573 lt!504888) (++!4081 (t!134381 lt!504888) lt!504886)))))

(declare-fun b!1462582 () Bool)

(declare-fun lt!506474 () List!15238)

(declare-fun e!933025 () Bool)

(assert (=> b!1462582 (= e!933025 (or (not (= lt!504886 Nil!15172)) (= lt!506474 lt!504888)))))

(declare-fun b!1462581 () Bool)

(declare-fun res!661944 () Bool)

(assert (=> b!1462581 (=> (not res!661944) (not e!933025))))

(assert (=> b!1462581 (= res!661944 (= (size!12411 lt!506474) (+ (size!12411 lt!504888) (size!12411 lt!504886))))))

(declare-fun b!1462579 () Bool)

(assert (=> b!1462579 (= e!933024 lt!504886)))

(declare-fun d!428510 () Bool)

(assert (=> d!428510 e!933025))

(declare-fun res!661945 () Bool)

(assert (=> d!428510 (=> (not res!661945) (not e!933025))))

(assert (=> d!428510 (= res!661945 (= (content!2242 lt!506474) ((_ map or) (content!2242 lt!504888) (content!2242 lt!504886))))))

(assert (=> d!428510 (= lt!506474 e!933024)))

(declare-fun c!241115 () Bool)

(assert (=> d!428510 (= c!241115 ((_ is Nil!15172) lt!504888))))

(assert (=> d!428510 (= (++!4081 lt!504888 lt!504886) lt!506474)))

(assert (= (and d!428510 c!241115) b!1462579))

(assert (= (and d!428510 (not c!241115)) b!1462580))

(assert (= (and d!428510 res!661945) b!1462581))

(assert (= (and b!1462581 res!661944) b!1462582))

(declare-fun m!1699881 () Bool)

(assert (=> b!1462580 m!1699881))

(declare-fun m!1699883 () Bool)

(assert (=> b!1462581 m!1699883))

(declare-fun m!1699885 () Bool)

(assert (=> b!1462581 m!1699885))

(declare-fun m!1699887 () Bool)

(assert (=> b!1462581 m!1699887))

(declare-fun m!1699889 () Bool)

(assert (=> d!428510 m!1699889))

(declare-fun m!1699891 () Bool)

(assert (=> d!428510 m!1699891))

(declare-fun m!1699893 () Bool)

(assert (=> d!428510 m!1699893))

(assert (=> b!1461001 d!428510))

(declare-fun d!428512 () Bool)

(assert (=> d!428512 (= (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (originalCharacters!3535 (h!20575 lt!504650)))) (not (isEmpty!9533 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (originalCharacters!3535 (h!20575 lt!504650))))))))

(declare-fun bs!344331 () Bool)

(assert (= bs!344331 d!428512))

(assert (=> bs!344331 m!1696103))

(declare-fun m!1699895 () Bool)

(assert (=> bs!344331 m!1699895))

(assert (=> b!1461001 d!428512))

(declare-fun d!428514 () Bool)

(assert (=> d!428514 (= (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6081 (c!240744 (charsOf!1536 (h!20575 lt!504650)))))))

(declare-fun bs!344332 () Bool)

(assert (= bs!344332 d!428514))

(declare-fun m!1699897 () Bool)

(assert (=> bs!344332 m!1699897))

(assert (=> b!1461001 d!428514))

(declare-fun d!428516 () Bool)

(declare-fun lt!506475 () BalanceConc!10284)

(assert (=> d!428516 (= (list!6075 lt!506475) (originalCharacters!3535 (h!20575 lt!504650)))))

(assert (=> d!428516 (= lt!506475 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504650)))) (value!85828 (h!20575 lt!504650))))))

(assert (=> d!428516 (= (charsOf!1536 (h!20575 lt!504650)) lt!506475)))

(declare-fun b_lambda!45639 () Bool)

(assert (=> (not b_lambda!45639) (not d!428516)))

(declare-fun t!134465 () Bool)

(declare-fun tb!82481 () Bool)

(assert (=> (and b!1461246 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504650))))) t!134465) tb!82481))

(declare-fun b!1462583 () Bool)

(declare-fun e!933026 () Bool)

(declare-fun tp!411641 () Bool)

(assert (=> b!1462583 (= e!933026 (and (inv!20288 (c!240744 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504650)))) (value!85828 (h!20575 lt!504650))))) tp!411641))))

(declare-fun result!99114 () Bool)

(assert (=> tb!82481 (= result!99114 (and (inv!20289 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504650)))) (value!85828 (h!20575 lt!504650)))) e!933026))))

(assert (= tb!82481 b!1462583))

(declare-fun m!1699899 () Bool)

(assert (=> b!1462583 m!1699899))

(declare-fun m!1699901 () Bool)

(assert (=> tb!82481 m!1699901))

(assert (=> d!428516 t!134465))

(declare-fun b_and!99841 () Bool)

(assert (= b_and!99813 (and (=> t!134465 result!99114) b_and!99841)))

(declare-fun tb!82483 () Bool)

(declare-fun t!134467 () Bool)

(assert (=> (and b!1461252 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504650))))) t!134467) tb!82483))

(declare-fun result!99116 () Bool)

(assert (= result!99116 result!99114))

(assert (=> d!428516 t!134467))

(declare-fun b_and!99843 () Bool)

(assert (= b_and!99815 (and (=> t!134467 result!99116) b_and!99843)))

(declare-fun m!1699903 () Bool)

(assert (=> d!428516 m!1699903))

(declare-fun m!1699905 () Bool)

(assert (=> d!428516 m!1699905))

(assert (=> b!1461001 d!428516))

(declare-fun d!428518 () Bool)

(declare-fun e!933027 () Bool)

(assert (=> d!428518 e!933027))

(declare-fun res!661948 () Bool)

(assert (=> d!428518 (=> res!661948 e!933027)))

(declare-fun lt!506476 () Bool)

(assert (=> d!428518 (= res!661948 (not lt!506476))))

(declare-fun e!933028 () Bool)

(assert (=> d!428518 (= lt!506476 e!933028)))

(declare-fun res!661949 () Bool)

(assert (=> d!428518 (=> res!661949 e!933028)))

(assert (=> d!428518 (= res!661949 ((_ is Nil!15172) lt!504888))))

(assert (=> d!428518 (= (isPrefix!1203 lt!504888 (++!4081 lt!504888 lt!504886)) lt!506476)))

(declare-fun b!1462585 () Bool)

(declare-fun res!661946 () Bool)

(declare-fun e!933029 () Bool)

(assert (=> b!1462585 (=> (not res!661946) (not e!933029))))

(assert (=> b!1462585 (= res!661946 (= (head!3008 lt!504888) (head!3008 (++!4081 lt!504888 lt!504886))))))

(declare-fun b!1462584 () Bool)

(assert (=> b!1462584 (= e!933028 e!933029)))

(declare-fun res!661947 () Bool)

(assert (=> b!1462584 (=> (not res!661947) (not e!933029))))

(assert (=> b!1462584 (= res!661947 (not ((_ is Nil!15172) (++!4081 lt!504888 lt!504886))))))

(declare-fun b!1462586 () Bool)

(assert (=> b!1462586 (= e!933029 (isPrefix!1203 (tail!2176 lt!504888) (tail!2176 (++!4081 lt!504888 lt!504886))))))

(declare-fun b!1462587 () Bool)

(assert (=> b!1462587 (= e!933027 (>= (size!12411 (++!4081 lt!504888 lt!504886)) (size!12411 lt!504888)))))

(assert (= (and d!428518 (not res!661949)) b!1462584))

(assert (= (and b!1462584 res!661947) b!1462585))

(assert (= (and b!1462585 res!661946) b!1462586))

(assert (= (and d!428518 (not res!661948)) b!1462587))

(declare-fun m!1699907 () Bool)

(assert (=> b!1462585 m!1699907))

(assert (=> b!1462585 m!1696145))

(declare-fun m!1699909 () Bool)

(assert (=> b!1462585 m!1699909))

(declare-fun m!1699911 () Bool)

(assert (=> b!1462586 m!1699911))

(assert (=> b!1462586 m!1696145))

(declare-fun m!1699913 () Bool)

(assert (=> b!1462586 m!1699913))

(assert (=> b!1462586 m!1699911))

(assert (=> b!1462586 m!1699913))

(declare-fun m!1699915 () Bool)

(assert (=> b!1462586 m!1699915))

(assert (=> b!1462587 m!1696145))

(declare-fun m!1699917 () Bool)

(assert (=> b!1462587 m!1699917))

(assert (=> b!1462587 m!1699885))

(assert (=> b!1461001 d!428518))

(declare-fun d!428520 () Bool)

(assert (=> d!428520 (= (seqFromList!1712 (t!134383 (t!134383 lt!504650))) (fromListB!736 (t!134383 (t!134383 lt!504650))))))

(declare-fun bs!344333 () Bool)

(assert (= bs!344333 d!428520))

(declare-fun m!1699919 () Bool)

(assert (=> bs!344333 m!1699919))

(assert (=> b!1461001 d!428520))

(declare-fun d!428522 () Bool)

(assert (=> d!428522 (= (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650))))) (v!22498 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650))))))))

(assert (=> b!1461001 d!428522))

(declare-fun d!428524 () Bool)

(assert (=> d!428524 (= (list!6073 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 lt!504650))) (h!20575 (t!134383 lt!504650)))) (list!6077 (c!240746 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 lt!504650))) (h!20575 (t!134383 lt!504650))))))))

(declare-fun bs!344334 () Bool)

(assert (= bs!344334 d!428524))

(declare-fun m!1699921 () Bool)

(assert (=> bs!344334 m!1699921))

(assert (=> b!1461001 d!428524))

(assert (=> b!1461001 d!428176))

(declare-fun d!428526 () Bool)

(assert (=> d!428526 (isPrefix!1203 lt!504888 (++!4081 lt!504888 lt!504886))))

(declare-fun lt!506477 () Unit!24235)

(assert (=> d!428526 (= lt!506477 (choose!8994 lt!504888 lt!504886))))

(assert (=> d!428526 (= (lemmaConcatTwoListThenFirstIsPrefix!766 lt!504888 lt!504886) lt!506477)))

(declare-fun bs!344335 () Bool)

(assert (= bs!344335 d!428526))

(assert (=> bs!344335 m!1696145))

(assert (=> bs!344335 m!1696145))

(assert (=> bs!344335 m!1696149))

(declare-fun m!1699923 () Bool)

(assert (=> bs!344335 m!1699923))

(assert (=> b!1461001 d!428526))

(declare-fun d!428528 () Bool)

(assert (=> d!428528 (= (isEmpty!9527 (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650))))))) ((_ is Nil!15172) (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650))))))))))

(assert (=> b!1461001 d!428528))

(declare-fun b!1462588 () Bool)

(declare-fun res!661956 () Bool)

(declare-fun e!933031 () Bool)

(assert (=> b!1462588 (=> (not res!661956) (not e!933031))))

(declare-fun lt!506479 () Option!2875)

(assert (=> b!1462588 (= res!661956 (= (++!4081 (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506479)))) (_2!8009 (get!4616 lt!506479))) (list!6075 lt!504881)))))

(declare-fun b!1462589 () Bool)

(declare-fun res!661955 () Bool)

(assert (=> b!1462589 (=> (not res!661955) (not e!933031))))

(assert (=> b!1462589 (= res!661955 (= (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506479)))) (originalCharacters!3535 (_1!8009 (get!4616 lt!506479)))))))

(declare-fun bm!98401 () Bool)

(declare-fun call!98406 () Option!2875)

(assert (=> bm!98401 (= call!98406 (maxPrefixOneRule!661 Lexer!2327 (h!20576 (rules!11668 thiss!10022)) (list!6075 lt!504881)))))

(declare-fun b!1462590 () Bool)

(declare-fun e!933030 () Option!2875)

(declare-fun lt!506481 () Option!2875)

(declare-fun lt!506482 () Option!2875)

(assert (=> b!1462590 (= e!933030 (ite (and ((_ is None!2874) lt!506481) ((_ is None!2874) lt!506482)) None!2874 (ite ((_ is None!2874) lt!506482) lt!506481 (ite ((_ is None!2874) lt!506481) lt!506482 (ite (>= (size!12407 (_1!8009 (v!22498 lt!506481))) (size!12407 (_1!8009 (v!22498 lt!506482)))) lt!506481 lt!506482)))))))

(assert (=> b!1462590 (= lt!506481 call!98406)))

(assert (=> b!1462590 (= lt!506482 (maxPrefix!1193 Lexer!2327 (t!134384 (rules!11668 thiss!10022)) (list!6075 lt!504881)))))

(declare-fun b!1462591 () Bool)

(declare-fun res!661950 () Bool)

(assert (=> b!1462591 (=> (not res!661950) (not e!933031))))

(assert (=> b!1462591 (= res!661950 (= (value!85828 (_1!8009 (get!4616 lt!506479))) (apply!3962 (transformation!2673 (rule!4446 (_1!8009 (get!4616 lt!506479)))) (seqFromList!1714 (originalCharacters!3535 (_1!8009 (get!4616 lt!506479)))))))))

(declare-fun b!1462592 () Bool)

(assert (=> b!1462592 (= e!933031 (contains!2908 (rules!11668 thiss!10022) (rule!4446 (_1!8009 (get!4616 lt!506479)))))))

(declare-fun b!1462593 () Bool)

(assert (=> b!1462593 (= e!933030 call!98406)))

(declare-fun b!1462594 () Bool)

(declare-fun e!933032 () Bool)

(assert (=> b!1462594 (= e!933032 e!933031)))

(declare-fun res!661953 () Bool)

(assert (=> b!1462594 (=> (not res!661953) (not e!933031))))

(assert (=> b!1462594 (= res!661953 (isDefined!2324 lt!506479))))

(declare-fun b!1462595 () Bool)

(declare-fun res!661952 () Bool)

(assert (=> b!1462595 (=> (not res!661952) (not e!933031))))

(assert (=> b!1462595 (= res!661952 (< (size!12411 (_2!8009 (get!4616 lt!506479))) (size!12411 (list!6075 lt!504881))))))

(declare-fun d!428530 () Bool)

(assert (=> d!428530 e!933032))

(declare-fun res!661951 () Bool)

(assert (=> d!428530 (=> res!661951 e!933032)))

(assert (=> d!428530 (= res!661951 (isEmpty!9533 lt!506479))))

(assert (=> d!428530 (= lt!506479 e!933030)))

(declare-fun c!241116 () Bool)

(assert (=> d!428530 (= c!241116 (and ((_ is Cons!15175) (rules!11668 thiss!10022)) ((_ is Nil!15175) (t!134384 (rules!11668 thiss!10022)))))))

(declare-fun lt!506478 () Unit!24235)

(declare-fun lt!506480 () Unit!24235)

(assert (=> d!428530 (= lt!506478 lt!506480)))

(assert (=> d!428530 (isPrefix!1203 (list!6075 lt!504881) (list!6075 lt!504881))))

(assert (=> d!428530 (= lt!506480 (lemmaIsPrefixRefl!835 (list!6075 lt!504881) (list!6075 lt!504881)))))

(assert (=> d!428530 (rulesValidInductive!832 Lexer!2327 (rules!11668 thiss!10022))))

(assert (=> d!428530 (= (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 lt!504881)) lt!506479)))

(declare-fun b!1462596 () Bool)

(declare-fun res!661954 () Bool)

(assert (=> b!1462596 (=> (not res!661954) (not e!933031))))

(assert (=> b!1462596 (= res!661954 (matchR!1829 (regex!2673 (rule!4446 (_1!8009 (get!4616 lt!506479)))) (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506479))))))))

(assert (= (and d!428530 c!241116) b!1462593))

(assert (= (and d!428530 (not c!241116)) b!1462590))

(assert (= (or b!1462593 b!1462590) bm!98401))

(assert (= (and d!428530 (not res!661951)) b!1462594))

(assert (= (and b!1462594 res!661953) b!1462589))

(assert (= (and b!1462589 res!661955) b!1462595))

(assert (= (and b!1462595 res!661952) b!1462588))

(assert (= (and b!1462588 res!661956) b!1462591))

(assert (= (and b!1462591 res!661950) b!1462596))

(assert (= (and b!1462596 res!661954) b!1462592))

(declare-fun m!1699925 () Bool)

(assert (=> b!1462596 m!1699925))

(declare-fun m!1699927 () Bool)

(assert (=> b!1462596 m!1699927))

(assert (=> b!1462596 m!1699927))

(declare-fun m!1699929 () Bool)

(assert (=> b!1462596 m!1699929))

(assert (=> b!1462596 m!1699929))

(declare-fun m!1699931 () Bool)

(assert (=> b!1462596 m!1699931))

(declare-fun m!1699933 () Bool)

(assert (=> d!428530 m!1699933))

(assert (=> d!428530 m!1696131))

(assert (=> d!428530 m!1696131))

(declare-fun m!1699935 () Bool)

(assert (=> d!428530 m!1699935))

(assert (=> d!428530 m!1696131))

(assert (=> d!428530 m!1696131))

(declare-fun m!1699937 () Bool)

(assert (=> d!428530 m!1699937))

(declare-fun m!1699939 () Bool)

(assert (=> d!428530 m!1699939))

(assert (=> b!1462588 m!1699925))

(assert (=> b!1462588 m!1699927))

(assert (=> b!1462588 m!1699927))

(assert (=> b!1462588 m!1699929))

(assert (=> b!1462588 m!1699929))

(declare-fun m!1699941 () Bool)

(assert (=> b!1462588 m!1699941))

(assert (=> b!1462590 m!1696131))

(declare-fun m!1699943 () Bool)

(assert (=> b!1462590 m!1699943))

(assert (=> b!1462595 m!1699925))

(declare-fun m!1699945 () Bool)

(assert (=> b!1462595 m!1699945))

(assert (=> b!1462595 m!1696131))

(declare-fun m!1699947 () Bool)

(assert (=> b!1462595 m!1699947))

(assert (=> bm!98401 m!1696131))

(declare-fun m!1699949 () Bool)

(assert (=> bm!98401 m!1699949))

(assert (=> b!1462589 m!1699925))

(assert (=> b!1462589 m!1699927))

(assert (=> b!1462589 m!1699927))

(assert (=> b!1462589 m!1699929))

(assert (=> b!1462591 m!1699925))

(declare-fun m!1699951 () Bool)

(assert (=> b!1462591 m!1699951))

(assert (=> b!1462591 m!1699951))

(declare-fun m!1699953 () Bool)

(assert (=> b!1462591 m!1699953))

(assert (=> b!1462592 m!1699925))

(declare-fun m!1699955 () Bool)

(assert (=> b!1462592 m!1699955))

(declare-fun m!1699957 () Bool)

(assert (=> b!1462594 m!1699957))

(assert (=> b!1461001 d!428530))

(declare-fun b!1462597 () Bool)

(declare-fun res!661963 () Bool)

(declare-fun e!933034 () Bool)

(assert (=> b!1462597 (=> (not res!661963) (not e!933034))))

(declare-fun lt!506484 () Option!2875)

(assert (=> b!1462597 (= res!661963 (= (++!4081 (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506484)))) (_2!8009 (get!4616 lt!506484))) (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))

(declare-fun b!1462598 () Bool)

(declare-fun res!661962 () Bool)

(assert (=> b!1462598 (=> (not res!661962) (not e!933034))))

(assert (=> b!1462598 (= res!661962 (= (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506484)))) (originalCharacters!3535 (_1!8009 (get!4616 lt!506484)))))))

(declare-fun bm!98402 () Bool)

(declare-fun call!98407 () Option!2875)

(assert (=> bm!98402 (= call!98407 (maxPrefixOneRule!661 Lexer!2327 (h!20576 (rules!11668 thiss!10022)) (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))

(declare-fun b!1462599 () Bool)

(declare-fun e!933033 () Option!2875)

(declare-fun lt!506486 () Option!2875)

(declare-fun lt!506487 () Option!2875)

(assert (=> b!1462599 (= e!933033 (ite (and ((_ is None!2874) lt!506486) ((_ is None!2874) lt!506487)) None!2874 (ite ((_ is None!2874) lt!506487) lt!506486 (ite ((_ is None!2874) lt!506486) lt!506487 (ite (>= (size!12407 (_1!8009 (v!22498 lt!506486))) (size!12407 (_1!8009 (v!22498 lt!506487)))) lt!506486 lt!506487)))))))

(assert (=> b!1462599 (= lt!506486 call!98407)))

(assert (=> b!1462599 (= lt!506487 (maxPrefix!1193 Lexer!2327 (t!134384 (rules!11668 thiss!10022)) (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))

(declare-fun b!1462600 () Bool)

(declare-fun res!661957 () Bool)

(assert (=> b!1462600 (=> (not res!661957) (not e!933034))))

(assert (=> b!1462600 (= res!661957 (= (value!85828 (_1!8009 (get!4616 lt!506484))) (apply!3962 (transformation!2673 (rule!4446 (_1!8009 (get!4616 lt!506484)))) (seqFromList!1714 (originalCharacters!3535 (_1!8009 (get!4616 lt!506484)))))))))

(declare-fun b!1462601 () Bool)

(assert (=> b!1462601 (= e!933034 (contains!2908 (rules!11668 thiss!10022) (rule!4446 (_1!8009 (get!4616 lt!506484)))))))

(declare-fun b!1462602 () Bool)

(assert (=> b!1462602 (= e!933033 call!98407)))

(declare-fun b!1462603 () Bool)

(declare-fun e!933035 () Bool)

(assert (=> b!1462603 (= e!933035 e!933034)))

(declare-fun res!661960 () Bool)

(assert (=> b!1462603 (=> (not res!661960) (not e!933034))))

(assert (=> b!1462603 (= res!661960 (isDefined!2324 lt!506484))))

(declare-fun b!1462604 () Bool)

(declare-fun res!661959 () Bool)

(assert (=> b!1462604 (=> (not res!661959) (not e!933034))))

(assert (=> b!1462604 (= res!661959 (< (size!12411 (_2!8009 (get!4616 lt!506484))) (size!12411 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))))

(declare-fun d!428532 () Bool)

(assert (=> d!428532 e!933035))

(declare-fun res!661958 () Bool)

(assert (=> d!428532 (=> res!661958 e!933035)))

(assert (=> d!428532 (= res!661958 (isEmpty!9533 lt!506484))))

(assert (=> d!428532 (= lt!506484 e!933033)))

(declare-fun c!241117 () Bool)

(assert (=> d!428532 (= c!241117 (and ((_ is Cons!15175) (rules!11668 thiss!10022)) ((_ is Nil!15175) (t!134384 (rules!11668 thiss!10022)))))))

(declare-fun lt!506483 () Unit!24235)

(declare-fun lt!506485 () Unit!24235)

(assert (=> d!428532 (= lt!506483 lt!506485)))

(assert (=> d!428532 (isPrefix!1203 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 (charsOf!1536 (h!20575 lt!504650))))))

(assert (=> d!428532 (= lt!506485 (lemmaIsPrefixRefl!835 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))

(assert (=> d!428532 (rulesValidInductive!832 Lexer!2327 (rules!11668 thiss!10022))))

(assert (=> d!428532 (= (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650)))) lt!506484)))

(declare-fun b!1462605 () Bool)

(declare-fun res!661961 () Bool)

(assert (=> b!1462605 (=> (not res!661961) (not e!933034))))

(assert (=> b!1462605 (= res!661961 (matchR!1829 (regex!2673 (rule!4446 (_1!8009 (get!4616 lt!506484)))) (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506484))))))))

(assert (= (and d!428532 c!241117) b!1462602))

(assert (= (and d!428532 (not c!241117)) b!1462599))

(assert (= (or b!1462602 b!1462599) bm!98402))

(assert (= (and d!428532 (not res!661958)) b!1462603))

(assert (= (and b!1462603 res!661960) b!1462598))

(assert (= (and b!1462598 res!661962) b!1462604))

(assert (= (and b!1462604 res!661959) b!1462597))

(assert (= (and b!1462597 res!661963) b!1462600))

(assert (= (and b!1462600 res!661957) b!1462605))

(assert (= (and b!1462605 res!661961) b!1462601))

(declare-fun m!1699959 () Bool)

(assert (=> b!1462605 m!1699959))

(declare-fun m!1699961 () Bool)

(assert (=> b!1462605 m!1699961))

(assert (=> b!1462605 m!1699961))

(declare-fun m!1699963 () Bool)

(assert (=> b!1462605 m!1699963))

(assert (=> b!1462605 m!1699963))

(declare-fun m!1699965 () Bool)

(assert (=> b!1462605 m!1699965))

(declare-fun m!1699967 () Bool)

(assert (=> d!428532 m!1699967))

(assert (=> d!428532 m!1695811))

(assert (=> d!428532 m!1695811))

(declare-fun m!1699969 () Bool)

(assert (=> d!428532 m!1699969))

(assert (=> d!428532 m!1695811))

(assert (=> d!428532 m!1695811))

(declare-fun m!1699971 () Bool)

(assert (=> d!428532 m!1699971))

(assert (=> d!428532 m!1699939))

(assert (=> b!1462597 m!1699959))

(assert (=> b!1462597 m!1699961))

(assert (=> b!1462597 m!1699961))

(assert (=> b!1462597 m!1699963))

(assert (=> b!1462597 m!1699963))

(declare-fun m!1699973 () Bool)

(assert (=> b!1462597 m!1699973))

(assert (=> b!1462599 m!1695811))

(declare-fun m!1699975 () Bool)

(assert (=> b!1462599 m!1699975))

(assert (=> b!1462604 m!1699959))

(declare-fun m!1699977 () Bool)

(assert (=> b!1462604 m!1699977))

(assert (=> b!1462604 m!1695811))

(declare-fun m!1699979 () Bool)

(assert (=> b!1462604 m!1699979))

(assert (=> bm!98402 m!1695811))

(declare-fun m!1699981 () Bool)

(assert (=> bm!98402 m!1699981))

(assert (=> b!1462598 m!1699959))

(assert (=> b!1462598 m!1699961))

(assert (=> b!1462598 m!1699961))

(assert (=> b!1462598 m!1699963))

(assert (=> b!1462600 m!1699959))

(declare-fun m!1699983 () Bool)

(assert (=> b!1462600 m!1699983))

(assert (=> b!1462600 m!1699983))

(declare-fun m!1699985 () Bool)

(assert (=> b!1462600 m!1699985))

(assert (=> b!1462601 m!1699959))

(declare-fun m!1699987 () Bool)

(assert (=> b!1462601 m!1699987))

(declare-fun m!1699989 () Bool)

(assert (=> b!1462603 m!1699989))

(assert (=> b!1461001 d!428532))

(declare-fun d!428534 () Bool)

(assert (=> d!428534 (= (head!3008 (originalCharacters!3535 (h!20575 (t!134383 lt!504650)))) (h!20573 (originalCharacters!3535 (h!20575 (t!134383 lt!504650)))))))

(assert (=> b!1461001 d!428534))

(declare-fun d!428536 () Bool)

(declare-fun e!933036 () Bool)

(assert (=> d!428536 e!933036))

(declare-fun res!661964 () Bool)

(assert (=> d!428536 (=> (not res!661964) (not e!933036))))

(declare-fun lt!506488 () BalanceConc!10286)

(assert (=> d!428536 (= res!661964 (= (list!6073 lt!506488) (Cons!15174 (h!20575 lt!504650) Nil!15174)))))

(assert (=> d!428536 (= lt!506488 (singleton!537 (h!20575 lt!504650)))))

(assert (=> d!428536 (= (singletonSeq!1277 (h!20575 lt!504650)) lt!506488)))

(declare-fun b!1462606 () Bool)

(assert (=> b!1462606 (= e!933036 (isBalanced!1550 (c!240746 lt!506488)))))

(assert (= (and d!428536 res!661964) b!1462606))

(declare-fun m!1699991 () Bool)

(assert (=> d!428536 m!1699991))

(declare-fun m!1699993 () Bool)

(assert (=> d!428536 m!1699993))

(declare-fun m!1699995 () Bool)

(assert (=> b!1462606 m!1699995))

(assert (=> b!1461001 d!428536))

(declare-fun d!428538 () Bool)

(assert (=> d!428538 (= (list!6073 (_1!8008 lt!504883)) (list!6077 (c!240746 (_1!8008 lt!504883))))))

(declare-fun bs!344336 () Bool)

(assert (= bs!344336 d!428538))

(declare-fun m!1699997 () Bool)

(assert (=> bs!344336 m!1699997))

(assert (=> b!1461001 d!428538))

(declare-fun d!428540 () Bool)

(assert (=> d!428540 (= (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650))))) (not (isEmpty!9533 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))))

(declare-fun bs!344337 () Bool)

(assert (= bs!344337 d!428540))

(assert (=> bs!344337 m!1696125))

(declare-fun m!1699999 () Bool)

(assert (=> bs!344337 m!1699999))

(assert (=> b!1461001 d!428540))

(declare-fun d!428542 () Bool)

(declare-fun e!933037 () Bool)

(assert (=> d!428542 e!933037))

(declare-fun res!661965 () Bool)

(assert (=> d!428542 (=> (not res!661965) (not e!933037))))

(assert (=> d!428542 (= res!661965 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 lt!504650)))))) (t!134383 lt!504650)))))

(declare-fun lt!506503 () Unit!24235)

(declare-fun e!933038 () Unit!24235)

(assert (=> d!428542 (= lt!506503 e!933038)))

(declare-fun c!241118 () Bool)

(assert (=> d!428542 (= c!241118 (or ((_ is Nil!15174) (t!134383 lt!504650)) ((_ is Nil!15174) (t!134383 (t!134383 lt!504650)))))))

(assert (=> d!428542 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428542 (= (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 thiss!10022) (t!134383 lt!504650)) lt!506503)))

(declare-fun b!1462607 () Bool)

(declare-fun Unit!24430 () Unit!24235)

(assert (=> b!1462607 (= e!933038 Unit!24430)))

(declare-fun b!1462608 () Bool)

(declare-fun Unit!24431 () Unit!24235)

(assert (=> b!1462608 (= e!933038 Unit!24431)))

(declare-fun lt!506489 () BalanceConc!10284)

(assert (=> b!1462608 (= lt!506489 (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 lt!504650))))))

(declare-fun lt!506495 () BalanceConc!10284)

(assert (=> b!1462608 (= lt!506495 (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 (t!134383 lt!504650)))))))

(declare-fun lt!506491 () tuple2!14244)

(assert (=> b!1462608 (= lt!506491 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!506495))))

(declare-fun lt!506496 () List!15238)

(assert (=> b!1462608 (= lt!506496 (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504650)))))))

(declare-fun lt!506494 () List!15238)

(assert (=> b!1462608 (= lt!506494 (list!6075 lt!506495))))

(declare-fun lt!506507 () Unit!24235)

(assert (=> b!1462608 (= lt!506507 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!506496 lt!506494))))

(assert (=> b!1462608 (isPrefix!1203 lt!506496 (++!4081 lt!506496 lt!506494))))

(declare-fun lt!506512 () Unit!24235)

(assert (=> b!1462608 (= lt!506512 lt!506507)))

(declare-fun lt!506498 () Unit!24235)

(assert (=> b!1462608 (= lt!506498 (theoremInvertabilityWhenTokenListSeparable!77 Lexer!2327 (rules!11668 thiss!10022) (t!134383 (t!134383 lt!504650))))))

(declare-fun lt!506505 () Unit!24235)

(assert (=> b!1462608 (= lt!506505 (seqFromListBHdTlConstructive!95 (h!20575 (t!134383 (t!134383 lt!504650))) (t!134383 (t!134383 (t!134383 lt!504650))) (_1!8008 lt!506491)))))

(assert (=> b!1462608 (= (list!6073 (_1!8008 lt!506491)) (list!6073 (prepend!425 (seqFromList!1712 (t!134383 (t!134383 (t!134383 lt!504650)))) (h!20575 (t!134383 (t!134383 lt!504650))))))))

(declare-fun lt!506509 () Unit!24235)

(assert (=> b!1462608 (= lt!506509 lt!506505)))

(declare-fun lt!506501 () Option!2875)

(assert (=> b!1462608 (= lt!506501 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 lt!506489)))))

(assert (=> b!1462608 (= (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 (t!134383 lt!504650)))) (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 (t!134383 lt!504650))) 0 (BalanceConc!10285 Empty!5172)))))

(declare-fun lt!506502 () Unit!24235)

(declare-fun Unit!24432 () Unit!24235)

(assert (=> b!1462608 (= lt!506502 Unit!24432)))

(declare-fun lt!506493 () Unit!24235)

(assert (=> b!1462608 (= lt!506493 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!239 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504650)))) (list!6075 lt!506495)))))

(assert (=> b!1462608 (= (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504650)))) (originalCharacters!3535 (h!20575 (t!134383 lt!504650))))))

(declare-fun lt!506497 () Unit!24235)

(declare-fun Unit!24433 () Unit!24235)

(assert (=> b!1462608 (= lt!506497 Unit!24433)))

(assert (=> b!1462608 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (t!134383 lt!504650)))) 0))) (Cons!15172 (head!3008 (originalCharacters!3535 (h!20575 (t!134383 (t!134383 lt!504650))))) Nil!15172))))

(declare-fun lt!506499 () Unit!24235)

(declare-fun Unit!24434 () Unit!24235)

(assert (=> b!1462608 (= lt!506499 Unit!24434)))

(assert (=> b!1462608 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (t!134383 lt!504650)))) 0))) (Cons!15172 (head!3008 (list!6075 lt!506495)) Nil!15172))))

(declare-fun lt!506510 () Unit!24235)

(declare-fun Unit!24435 () Unit!24235)

(assert (=> b!1462608 (= lt!506510 Unit!24435)))

(assert (=> b!1462608 (= (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 (t!134383 lt!504650)))) 0))) (Cons!15172 (head!3009 lt!506495) Nil!15172))))

(declare-fun lt!506492 () Unit!24235)

(declare-fun Unit!24436 () Unit!24235)

(assert (=> b!1462608 (= lt!506492 Unit!24436)))

(assert (=> b!1462608 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (originalCharacters!3535 (h!20575 (t!134383 lt!504650)))))))

(declare-fun lt!506504 () Unit!24235)

(declare-fun Unit!24437 () Unit!24235)

(assert (=> b!1462608 (= lt!506504 Unit!24437)))

(assert (=> b!1462608 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504650))))))))

(declare-fun lt!506511 () Unit!24235)

(declare-fun Unit!24438 () Unit!24235)

(assert (=> b!1462608 (= lt!506511 Unit!24438)))

(declare-fun lt!506506 () Unit!24235)

(declare-fun Unit!24439 () Unit!24235)

(assert (=> b!1462608 (= lt!506506 Unit!24439)))

(assert (=> b!1462608 (= (_1!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504650))))))) (h!20575 (t!134383 lt!504650)))))

(declare-fun lt!506500 () Unit!24235)

(declare-fun Unit!24440 () Unit!24235)

(assert (=> b!1462608 (= lt!506500 Unit!24440)))

(assert (=> b!1462608 (isEmpty!9527 (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504650))))))))))

(declare-fun lt!506514 () Unit!24235)

(declare-fun Unit!24441 () Unit!24235)

(assert (=> b!1462608 (= lt!506514 Unit!24441)))

(assert (=> b!1462608 (matchR!1829 (regex!2673 (rule!4446 (h!20575 (t!134383 lt!504650)))) (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504650)))))))

(declare-fun lt!506490 () Unit!24235)

(declare-fun Unit!24442 () Unit!24235)

(assert (=> b!1462608 (= lt!506490 Unit!24442)))

(assert (=> b!1462608 (= (rule!4446 (h!20575 (t!134383 lt!504650))) (rule!4446 (h!20575 (t!134383 lt!504650))))))

(declare-fun lt!506508 () Unit!24235)

(declare-fun Unit!24443 () Unit!24235)

(assert (=> b!1462608 (= lt!506508 Unit!24443)))

(declare-fun lt!506513 () Unit!24235)

(assert (=> b!1462608 (= lt!506513 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!37 Lexer!2327 (rules!11668 thiss!10022) (h!20575 (t!134383 lt!504650)) (rule!4446 (h!20575 (t!134383 lt!504650))) (list!6075 lt!506495)))))

(declare-fun b!1462609 () Bool)

(assert (=> b!1462609 (= e!933037 (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 lt!504650)))))))))

(assert (= (and d!428542 c!241118) b!1462607))

(assert (= (and d!428542 (not c!241118)) b!1462608))

(assert (= (and d!428542 res!661965) b!1462609))

(assert (=> d!428542 m!1696101))

(assert (=> d!428542 m!1696109))

(assert (=> d!428542 m!1696087))

(declare-fun m!1700001 () Bool)

(assert (=> d!428542 m!1700001))

(assert (=> d!428542 m!1696101))

(assert (=> d!428542 m!1696109))

(declare-fun m!1700003 () Bool)

(assert (=> d!428542 m!1700003))

(declare-fun m!1700005 () Bool)

(assert (=> b!1462608 m!1700005))

(declare-fun m!1700007 () Bool)

(assert (=> b!1462608 m!1700007))

(declare-fun m!1700009 () Bool)

(assert (=> b!1462608 m!1700009))

(declare-fun m!1700011 () Bool)

(assert (=> b!1462608 m!1700011))

(assert (=> b!1462608 m!1696105))

(declare-fun m!1700013 () Bool)

(assert (=> b!1462608 m!1700013))

(declare-fun m!1700015 () Bool)

(assert (=> b!1462608 m!1700015))

(declare-fun m!1700017 () Bool)

(assert (=> b!1462608 m!1700017))

(assert (=> b!1462608 m!1696105))

(declare-fun m!1700019 () Bool)

(assert (=> b!1462608 m!1700019))

(assert (=> b!1462608 m!1700009))

(assert (=> b!1462608 m!1700017))

(declare-fun m!1700021 () Bool)

(assert (=> b!1462608 m!1700021))

(assert (=> b!1462608 m!1700013))

(declare-fun m!1700023 () Bool)

(assert (=> b!1462608 m!1700023))

(declare-fun m!1700025 () Bool)

(assert (=> b!1462608 m!1700025))

(declare-fun m!1700027 () Bool)

(assert (=> b!1462608 m!1700027))

(assert (=> b!1462608 m!1696101))

(assert (=> b!1462608 m!1696109))

(declare-fun m!1700029 () Bool)

(assert (=> b!1462608 m!1700029))

(assert (=> b!1462608 m!1700025))

(declare-fun m!1700031 () Bool)

(assert (=> b!1462608 m!1700031))

(declare-fun m!1700033 () Bool)

(assert (=> b!1462608 m!1700033))

(declare-fun m!1700035 () Bool)

(assert (=> b!1462608 m!1700035))

(declare-fun m!1700037 () Bool)

(assert (=> b!1462608 m!1700037))

(declare-fun m!1700039 () Bool)

(assert (=> b!1462608 m!1700039))

(assert (=> b!1462608 m!1700031))

(declare-fun m!1700041 () Bool)

(assert (=> b!1462608 m!1700041))

(declare-fun m!1700043 () Bool)

(assert (=> b!1462608 m!1700043))

(declare-fun m!1700045 () Bool)

(assert (=> b!1462608 m!1700045))

(assert (=> b!1462608 m!1700043))

(declare-fun m!1700047 () Bool)

(assert (=> b!1462608 m!1700047))

(declare-fun m!1700049 () Bool)

(assert (=> b!1462608 m!1700049))

(assert (=> b!1462608 m!1700025))

(assert (=> b!1462608 m!1700037))

(declare-fun m!1700051 () Bool)

(assert (=> b!1462608 m!1700051))

(declare-fun m!1700053 () Bool)

(assert (=> b!1462608 m!1700053))

(assert (=> b!1462608 m!1700037))

(declare-fun m!1700055 () Bool)

(assert (=> b!1462608 m!1700055))

(declare-fun m!1700057 () Bool)

(assert (=> b!1462608 m!1700057))

(assert (=> b!1462608 m!1700031))

(assert (=> b!1462608 m!1700005))

(assert (=> b!1462608 m!1700009))

(declare-fun m!1700059 () Bool)

(assert (=> b!1462608 m!1700059))

(assert (=> b!1462608 m!1700057))

(declare-fun m!1700061 () Bool)

(assert (=> b!1462608 m!1700061))

(assert (=> b!1462608 m!1696101))

(declare-fun m!1700063 () Bool)

(assert (=> b!1462608 m!1700063))

(assert (=> b!1462608 m!1696093))

(assert (=> b!1462608 m!1700015))

(assert (=> b!1462608 m!1700007))

(declare-fun m!1700065 () Bool)

(assert (=> b!1462608 m!1700065))

(assert (=> b!1462608 m!1700065))

(declare-fun m!1700067 () Bool)

(assert (=> b!1462608 m!1700067))

(declare-fun m!1700069 () Bool)

(assert (=> b!1462608 m!1700069))

(assert (=> b!1462608 m!1696093))

(assert (=> b!1462608 m!1700025))

(assert (=> b!1462608 m!1700031))

(declare-fun m!1700071 () Bool)

(assert (=> b!1462608 m!1700071))

(assert (=> b!1462609 m!1696101))

(assert (=> b!1462609 m!1696101))

(assert (=> b!1462609 m!1696109))

(assert (=> b!1462609 m!1696109))

(assert (=> b!1462609 m!1700003))

(declare-fun m!1700073 () Bool)

(assert (=> b!1462609 m!1700073))

(assert (=> b!1461001 d!428542))

(declare-fun d!428544 () Bool)

(assert (=> d!428544 (= (seqFromList!1712 (t!134383 lt!504650)) (fromListB!736 (t!134383 lt!504650)))))

(declare-fun bs!344338 () Bool)

(assert (= bs!344338 d!428544))

(declare-fun m!1700075 () Bool)

(assert (=> bs!344338 m!1700075))

(assert (=> b!1461001 d!428544))

(declare-fun d!428546 () Bool)

(declare-fun e!933039 () Bool)

(assert (=> d!428546 e!933039))

(declare-fun res!661966 () Bool)

(assert (=> d!428546 (=> (not res!661966) (not e!933039))))

(declare-fun lt!506515 () BalanceConc!10284)

(assert (=> d!428546 (= res!661966 (= (list!6075 lt!506515) (Cons!15172 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504650))) 0) Nil!15172)))))

(assert (=> d!428546 (= lt!506515 (singleton!538 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504650))) 0)))))

(assert (=> d!428546 (= (singletonSeq!1278 (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504650))) 0)) lt!506515)))

(declare-fun b!1462610 () Bool)

(assert (=> b!1462610 (= e!933039 (isBalanced!1553 (c!240744 lt!506515)))))

(assert (= (and d!428546 res!661966) b!1462610))

(declare-fun m!1700077 () Bool)

(assert (=> d!428546 m!1700077))

(assert (=> d!428546 m!1696095))

(declare-fun m!1700079 () Bool)

(assert (=> d!428546 m!1700079))

(declare-fun m!1700081 () Bool)

(assert (=> b!1462610 m!1700081))

(assert (=> b!1461001 d!428546))

(declare-fun d!428548 () Bool)

(declare-fun lt!506516 () BalanceConc!10284)

(assert (=> d!428548 (= (list!6075 lt!506516) (printList!725 Lexer!2327 (list!6073 (singletonSeq!1277 (h!20575 lt!504650)))))))

(assert (=> d!428548 (= lt!506516 (printTailRec!697 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504650)) 0 (BalanceConc!10285 Empty!5172)))))

(assert (=> d!428548 (= (print!1103 Lexer!2327 (singletonSeq!1277 (h!20575 lt!504650))) lt!506516)))

(declare-fun bs!344339 () Bool)

(assert (= bs!344339 d!428548))

(declare-fun m!1700083 () Bool)

(assert (=> bs!344339 m!1700083))

(assert (=> bs!344339 m!1696097))

(assert (=> bs!344339 m!1699865))

(assert (=> bs!344339 m!1699865))

(declare-fun m!1700085 () Bool)

(assert (=> bs!344339 m!1700085))

(assert (=> bs!344339 m!1696097))

(assert (=> bs!344339 m!1696099))

(assert (=> b!1461001 d!428548))

(declare-fun d!428550 () Bool)

(assert (=> d!428550 (isDefined!2324 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887))))))

(declare-fun lt!506517 () Unit!24235)

(declare-fun e!933040 () Unit!24235)

(assert (=> d!428550 (= lt!506517 e!933040)))

(declare-fun c!241119 () Bool)

(assert (=> d!428550 (= c!241119 (isEmpty!9533 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887)))))))

(declare-fun lt!506524 () Unit!24235)

(declare-fun lt!506527 () Unit!24235)

(assert (=> d!428550 (= lt!506524 lt!506527)))

(declare-fun e!933041 () Bool)

(assert (=> d!428550 e!933041))

(declare-fun res!661968 () Bool)

(assert (=> d!428550 (=> (not res!661968) (not e!933041))))

(declare-fun lt!506521 () Token!5008)

(assert (=> d!428550 (= res!661968 (isDefined!2326 (getRuleFromTag!222 Lexer!2327 (rules!11668 thiss!10022) (tag!2937 (rule!4446 lt!506521)))))))

(assert (=> d!428550 (= lt!506527 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!222 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650))) lt!506521))))

(declare-fun lt!506533 () Unit!24235)

(declare-fun lt!506528 () Unit!24235)

(assert (=> d!428550 (= lt!506533 lt!506528)))

(declare-fun lt!506530 () List!15238)

(assert (=> d!428550 (isPrefix!1203 lt!506530 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887)))))

(assert (=> d!428550 (= lt!506528 (lemmaPrefixStaysPrefixWhenAddingToSuffix!108 lt!506530 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887)))))

(assert (=> d!428550 (= lt!506530 (list!6075 (charsOf!1536 lt!506521)))))

(declare-fun lt!506522 () Unit!24235)

(declare-fun lt!506525 () Unit!24235)

(assert (=> d!428550 (= lt!506522 lt!506525)))

(declare-fun lt!506529 () List!15238)

(declare-fun lt!506531 () List!15238)

(assert (=> d!428550 (isPrefix!1203 lt!506529 (++!4081 lt!506529 lt!506531))))

(assert (=> d!428550 (= lt!506525 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!506529 lt!506531))))

(assert (=> d!428550 (= lt!506531 (_2!8009 (get!4616 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))))

(assert (=> d!428550 (= lt!506529 (list!6075 (charsOf!1536 lt!506521)))))

(assert (=> d!428550 (= lt!506521 (head!3012 (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (seqFromList!1714 (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))))))

(assert (=> d!428550 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428550 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!239 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887)) lt!506517)))

(declare-fun b!1462612 () Bool)

(assert (=> b!1462612 (= e!933041 (= (rule!4446 lt!506521) (get!4618 (getRuleFromTag!222 Lexer!2327 (rules!11668 thiss!10022) (tag!2937 (rule!4446 lt!506521))))))))

(declare-fun b!1462611 () Bool)

(declare-fun res!661967 () Bool)

(assert (=> b!1462611 (=> (not res!661967) (not e!933041))))

(assert (=> b!1462611 (= res!661967 (matchR!1829 (regex!2673 (get!4618 (getRuleFromTag!222 Lexer!2327 (rules!11668 thiss!10022) (tag!2937 (rule!4446 lt!506521))))) (list!6075 (charsOf!1536 lt!506521))))))

(declare-fun b!1462613 () Bool)

(declare-fun Unit!24444 () Unit!24235)

(assert (=> b!1462613 (= e!933040 Unit!24444)))

(declare-fun lt!506532 () List!15238)

(assert (=> b!1462613 (= lt!506532 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887)))))

(declare-fun lt!506519 () Unit!24235)

(assert (=> b!1462613 (= lt!506519 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!116 Lexer!2327 (rule!4446 lt!506521) (rules!11668 thiss!10022) lt!506532))))

(assert (=> b!1462613 (isEmpty!9533 (maxPrefixOneRule!661 Lexer!2327 (rule!4446 lt!506521) lt!506532))))

(declare-fun lt!506518 () Unit!24235)

(assert (=> b!1462613 (= lt!506518 lt!506519)))

(declare-fun lt!506520 () List!15238)

(assert (=> b!1462613 (= lt!506520 (list!6075 (charsOf!1536 lt!506521)))))

(declare-fun lt!506523 () Unit!24235)

(assert (=> b!1462613 (= lt!506523 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!112 Lexer!2327 (rule!4446 lt!506521) lt!506520 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887))))))

(assert (=> b!1462613 (not (matchR!1829 (regex!2673 (rule!4446 lt!506521)) lt!506520))))

(declare-fun lt!506526 () Unit!24235)

(assert (=> b!1462613 (= lt!506526 lt!506523)))

(assert (=> b!1462613 false))

(declare-fun b!1462614 () Bool)

(declare-fun Unit!24445 () Unit!24235)

(assert (=> b!1462614 (= e!933040 Unit!24445)))

(assert (= (and d!428550 res!661968) b!1462611))

(assert (= (and b!1462611 res!661967) b!1462612))

(assert (= (and d!428550 c!241119) b!1462613))

(assert (= (and d!428550 (not c!241119)) b!1462614))

(declare-fun m!1700087 () Bool)

(assert (=> d!428550 m!1700087))

(declare-fun m!1700089 () Bool)

(assert (=> d!428550 m!1700089))

(declare-fun m!1700091 () Bool)

(assert (=> d!428550 m!1700091))

(declare-fun m!1700093 () Bool)

(assert (=> d!428550 m!1700093))

(assert (=> d!428550 m!1695811))

(assert (=> d!428550 m!1696125))

(declare-fun m!1700095 () Bool)

(assert (=> d!428550 m!1700095))

(declare-fun m!1700097 () Bool)

(assert (=> d!428550 m!1700097))

(declare-fun m!1700099 () Bool)

(assert (=> d!428550 m!1700099))

(declare-fun m!1700101 () Bool)

(assert (=> d!428550 m!1700101))

(declare-fun m!1700103 () Bool)

(assert (=> d!428550 m!1700103))

(declare-fun m!1700105 () Bool)

(assert (=> d!428550 m!1700105))

(declare-fun m!1700107 () Bool)

(assert (=> d!428550 m!1700107))

(assert (=> d!428550 m!1700103))

(declare-fun m!1700109 () Bool)

(assert (=> d!428550 m!1700109))

(assert (=> d!428550 m!1695811))

(assert (=> d!428550 m!1696119))

(assert (=> d!428550 m!1700101))

(assert (=> d!428550 m!1700099))

(declare-fun m!1700111 () Bool)

(assert (=> d!428550 m!1700111))

(assert (=> d!428550 m!1700087))

(assert (=> d!428550 m!1700093))

(declare-fun m!1700113 () Bool)

(assert (=> d!428550 m!1700113))

(assert (=> d!428550 m!1695811))

(assert (=> d!428550 m!1696119))

(declare-fun m!1700115 () Bool)

(assert (=> d!428550 m!1700115))

(assert (=> d!428550 m!1700103))

(declare-fun m!1700117 () Bool)

(assert (=> d!428550 m!1700117))

(assert (=> d!428550 m!1695811))

(declare-fun m!1700119 () Bool)

(assert (=> d!428550 m!1700119))

(assert (=> d!428550 m!1696087))

(assert (=> d!428550 m!1696125))

(assert (=> d!428550 m!1696127))

(assert (=> d!428550 m!1700101))

(declare-fun m!1700121 () Bool)

(assert (=> d!428550 m!1700121))

(assert (=> d!428550 m!1700095))

(assert (=> d!428550 m!1695811))

(assert (=> d!428550 m!1700105))

(assert (=> b!1462612 m!1700095))

(assert (=> b!1462612 m!1700095))

(declare-fun m!1700123 () Bool)

(assert (=> b!1462612 m!1700123))

(assert (=> b!1462611 m!1700095))

(assert (=> b!1462611 m!1700123))

(assert (=> b!1462611 m!1700099))

(assert (=> b!1462611 m!1700111))

(declare-fun m!1700125 () Bool)

(assert (=> b!1462611 m!1700125))

(assert (=> b!1462611 m!1700099))

(assert (=> b!1462611 m!1700111))

(assert (=> b!1462611 m!1700095))

(declare-fun m!1700127 () Bool)

(assert (=> b!1462613 m!1700127))

(declare-fun m!1700129 () Bool)

(assert (=> b!1462613 m!1700129))

(declare-fun m!1700131 () Bool)

(assert (=> b!1462613 m!1700131))

(assert (=> b!1462613 m!1700099))

(declare-fun m!1700133 () Bool)

(assert (=> b!1462613 m!1700133))

(assert (=> b!1462613 m!1695811))

(assert (=> b!1462613 m!1696119))

(assert (=> b!1462613 m!1700101))

(assert (=> b!1462613 m!1700099))

(assert (=> b!1462613 m!1700111))

(assert (=> b!1462613 m!1700129))

(assert (=> b!1462613 m!1700101))

(declare-fun m!1700135 () Bool)

(assert (=> b!1462613 m!1700135))

(assert (=> b!1461001 d!428550))

(declare-fun d!428552 () Bool)

(declare-fun lt!506534 () C!8152)

(assert (=> d!428552 (= lt!506534 (apply!3960 (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504650)))) 0))))

(assert (=> d!428552 (= lt!506534 (apply!3961 (c!240744 (charsOf!1536 (h!20575 (t!134383 lt!504650)))) 0))))

(declare-fun e!933042 () Bool)

(assert (=> d!428552 e!933042))

(declare-fun res!661969 () Bool)

(assert (=> d!428552 (=> (not res!661969) (not e!933042))))

(assert (=> d!428552 (= res!661969 (<= 0 0))))

(assert (=> d!428552 (= (apply!3949 (charsOf!1536 (h!20575 (t!134383 lt!504650))) 0) lt!506534)))

(declare-fun b!1462615 () Bool)

(assert (=> b!1462615 (= e!933042 (< 0 (size!12415 (charsOf!1536 (h!20575 (t!134383 lt!504650))))))))

(assert (= (and d!428552 res!661969) b!1462615))

(assert (=> d!428552 m!1696093))

(assert (=> d!428552 m!1700025))

(assert (=> d!428552 m!1700025))

(declare-fun m!1700137 () Bool)

(assert (=> d!428552 m!1700137))

(declare-fun m!1700139 () Bool)

(assert (=> d!428552 m!1700139))

(assert (=> b!1462615 m!1696093))

(declare-fun m!1700141 () Bool)

(assert (=> b!1462615 m!1700141))

(assert (=> b!1461001 d!428552))

(declare-fun d!428554 () Bool)

(declare-fun e!933045 () Bool)

(assert (=> d!428554 e!933045))

(declare-fun res!661970 () Bool)

(assert (=> d!428554 (=> (not res!661970) (not e!933045))))

(declare-fun e!933043 () Bool)

(assert (=> d!428554 (= res!661970 e!933043)))

(declare-fun c!241120 () Bool)

(declare-fun lt!506535 () tuple2!14244)

(assert (=> d!428554 (= c!241120 (> (size!12413 (_1!8008 lt!506535)) 0))))

(assert (=> d!428554 (= lt!506535 (lexTailRecV2!471 Lexer!2327 (rules!11668 thiss!10022) lt!504887 (BalanceConc!10285 Empty!5172) lt!504887 (BalanceConc!10287 Empty!5173)))))

(assert (=> d!428554 (= (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!504887) lt!506535)))

(declare-fun b!1462616 () Bool)

(declare-fun e!933044 () Bool)

(assert (=> b!1462616 (= e!933043 e!933044)))

(declare-fun res!661972 () Bool)

(assert (=> b!1462616 (= res!661972 (< (size!12415 (_2!8008 lt!506535)) (size!12415 lt!504887)))))

(assert (=> b!1462616 (=> (not res!661972) (not e!933044))))

(declare-fun b!1462617 () Bool)

(declare-fun res!661971 () Bool)

(assert (=> b!1462617 (=> (not res!661971) (not e!933045))))

(assert (=> b!1462617 (= res!661971 (= (list!6073 (_1!8008 lt!506535)) (_1!8011 (lexList!716 Lexer!2327 (rules!11668 thiss!10022) (list!6075 lt!504887)))))))

(declare-fun b!1462618 () Bool)

(assert (=> b!1462618 (= e!933045 (= (list!6075 (_2!8008 lt!506535)) (_2!8011 (lexList!716 Lexer!2327 (rules!11668 thiss!10022) (list!6075 lt!504887)))))))

(declare-fun b!1462619 () Bool)

(assert (=> b!1462619 (= e!933043 (= (_2!8008 lt!506535) lt!504887))))

(declare-fun b!1462620 () Bool)

(assert (=> b!1462620 (= e!933044 (not (isEmpty!9519 (_1!8008 lt!506535))))))

(assert (= (and d!428554 c!241120) b!1462616))

(assert (= (and d!428554 (not c!241120)) b!1462619))

(assert (= (and b!1462616 res!661972) b!1462620))

(assert (= (and d!428554 res!661970) b!1462617))

(assert (= (and b!1462617 res!661971) b!1462618))

(declare-fun m!1700143 () Bool)

(assert (=> b!1462617 m!1700143))

(assert (=> b!1462617 m!1696119))

(assert (=> b!1462617 m!1696119))

(declare-fun m!1700145 () Bool)

(assert (=> b!1462617 m!1700145))

(declare-fun m!1700147 () Bool)

(assert (=> b!1462618 m!1700147))

(assert (=> b!1462618 m!1696119))

(assert (=> b!1462618 m!1696119))

(assert (=> b!1462618 m!1700145))

(declare-fun m!1700149 () Bool)

(assert (=> b!1462620 m!1700149))

(declare-fun m!1700151 () Bool)

(assert (=> b!1462616 m!1700151))

(declare-fun m!1700153 () Bool)

(assert (=> b!1462616 m!1700153))

(declare-fun m!1700155 () Bool)

(assert (=> d!428554 m!1700155))

(declare-fun m!1700157 () Bool)

(assert (=> d!428554 m!1700157))

(assert (=> b!1461001 d!428554))

(declare-fun d!428556 () Bool)

(assert (=> d!428556 (= (list!6075 lt!504887) (list!6081 (c!240744 lt!504887)))))

(declare-fun bs!344340 () Bool)

(assert (= bs!344340 d!428556))

(declare-fun m!1700159 () Bool)

(assert (=> bs!344340 m!1700159))

(assert (=> b!1461001 d!428556))

(declare-fun d!428558 () Bool)

(declare-fun lt!506536 () BalanceConc!10284)

(assert (=> d!428558 (= (list!6075 lt!506536) (originalCharacters!3535 (h!20575 (t!134383 lt!504650))))))

(assert (=> d!428558 (= lt!506536 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504650))))) (value!85828 (h!20575 (t!134383 lt!504650)))))))

(assert (=> d!428558 (= (charsOf!1536 (h!20575 (t!134383 lt!504650))) lt!506536)))

(declare-fun b_lambda!45641 () Bool)

(assert (=> (not b_lambda!45641) (not d!428558)))

(declare-fun t!134469 () Bool)

(declare-fun tb!82485 () Bool)

(assert (=> (and b!1461246 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504650)))))) t!134469) tb!82485))

(declare-fun b!1462621 () Bool)

(declare-fun e!933046 () Bool)

(declare-fun tp!411642 () Bool)

(assert (=> b!1462621 (= e!933046 (and (inv!20288 (c!240744 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504650))))) (value!85828 (h!20575 (t!134383 lt!504650)))))) tp!411642))))

(declare-fun result!99118 () Bool)

(assert (=> tb!82485 (= result!99118 (and (inv!20289 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504650))))) (value!85828 (h!20575 (t!134383 lt!504650))))) e!933046))))

(assert (= tb!82485 b!1462621))

(declare-fun m!1700161 () Bool)

(assert (=> b!1462621 m!1700161))

(declare-fun m!1700163 () Bool)

(assert (=> tb!82485 m!1700163))

(assert (=> d!428558 t!134469))

(declare-fun b_and!99845 () Bool)

(assert (= b_and!99841 (and (=> t!134469 result!99118) b_and!99845)))

(declare-fun t!134471 () Bool)

(declare-fun tb!82487 () Bool)

(assert (=> (and b!1461252 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504650)))))) t!134471) tb!82487))

(declare-fun result!99120 () Bool)

(assert (= result!99120 result!99118))

(assert (=> d!428558 t!134471))

(declare-fun b_and!99847 () Bool)

(assert (= b_and!99843 (and (=> t!134471 result!99120) b_and!99847)))

(declare-fun m!1700165 () Bool)

(assert (=> d!428558 m!1700165))

(declare-fun m!1700167 () Bool)

(assert (=> d!428558 m!1700167))

(assert (=> b!1461001 d!428558))

(declare-fun b!1462622 () Bool)

(declare-fun e!933053 () Bool)

(declare-fun lt!506537 () Bool)

(declare-fun call!98408 () Bool)

(assert (=> b!1462622 (= e!933053 (= lt!506537 call!98408))))

(declare-fun b!1462623 () Bool)

(declare-fun e!933049 () Bool)

(assert (=> b!1462623 (= e!933049 (not lt!506537))))

(declare-fun b!1462624 () Bool)

(declare-fun e!933052 () Bool)

(assert (=> b!1462624 (= e!933052 (nullable!1249 (regex!2673 (rule!4446 (h!20575 lt!504650)))))))

(declare-fun b!1462625 () Bool)

(assert (=> b!1462625 (= e!933052 (matchR!1829 (derivativeStep!1005 (regex!2673 (rule!4446 (h!20575 lt!504650))) (head!3008 (list!6075 (charsOf!1536 (h!20575 lt!504650))))) (tail!2176 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))))

(declare-fun b!1462626 () Bool)

(declare-fun res!661977 () Bool)

(declare-fun e!933050 () Bool)

(assert (=> b!1462626 (=> res!661977 e!933050)))

(declare-fun e!933051 () Bool)

(assert (=> b!1462626 (= res!661977 e!933051)))

(declare-fun res!661973 () Bool)

(assert (=> b!1462626 (=> (not res!661973) (not e!933051))))

(assert (=> b!1462626 (= res!661973 lt!506537)))

(declare-fun bm!98403 () Bool)

(assert (=> bm!98403 (= call!98408 (isEmpty!9527 (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))

(declare-fun b!1462627 () Bool)

(declare-fun e!933048 () Bool)

(declare-fun e!933047 () Bool)

(assert (=> b!1462627 (= e!933048 e!933047)))

(declare-fun res!661978 () Bool)

(assert (=> b!1462627 (=> res!661978 e!933047)))

(assert (=> b!1462627 (= res!661978 call!98408)))

(declare-fun b!1462628 () Bool)

(declare-fun res!661974 () Bool)

(assert (=> b!1462628 (=> res!661974 e!933047)))

(assert (=> b!1462628 (= res!661974 (not (isEmpty!9527 (tail!2176 (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))))

(declare-fun b!1462629 () Bool)

(assert (=> b!1462629 (= e!933050 e!933048)))

(declare-fun res!661979 () Bool)

(assert (=> b!1462629 (=> (not res!661979) (not e!933048))))

(assert (=> b!1462629 (= res!661979 (not lt!506537))))

(declare-fun b!1462630 () Bool)

(assert (=> b!1462630 (= e!933051 (= (head!3008 (list!6075 (charsOf!1536 (h!20575 lt!504650)))) (c!240745 (regex!2673 (rule!4446 (h!20575 lt!504650))))))))

(declare-fun b!1462632 () Bool)

(declare-fun res!661975 () Bool)

(assert (=> b!1462632 (=> (not res!661975) (not e!933051))))

(assert (=> b!1462632 (= res!661975 (isEmpty!9527 (tail!2176 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))))

(declare-fun b!1462633 () Bool)

(declare-fun res!661976 () Bool)

(assert (=> b!1462633 (=> res!661976 e!933050)))

(assert (=> b!1462633 (= res!661976 (not ((_ is ElementMatch!3987) (regex!2673 (rule!4446 (h!20575 lt!504650))))))))

(assert (=> b!1462633 (= e!933049 e!933050)))

(declare-fun b!1462634 () Bool)

(assert (=> b!1462634 (= e!933047 (not (= (head!3008 (list!6075 (charsOf!1536 (h!20575 lt!504650)))) (c!240745 (regex!2673 (rule!4446 (h!20575 lt!504650)))))))))

(declare-fun b!1462635 () Bool)

(assert (=> b!1462635 (= e!933053 e!933049)))

(declare-fun c!241123 () Bool)

(assert (=> b!1462635 (= c!241123 ((_ is EmptyLang!3987) (regex!2673 (rule!4446 (h!20575 lt!504650)))))))

(declare-fun d!428560 () Bool)

(assert (=> d!428560 e!933053))

(declare-fun c!241122 () Bool)

(assert (=> d!428560 (= c!241122 ((_ is EmptyExpr!3987) (regex!2673 (rule!4446 (h!20575 lt!504650)))))))

(assert (=> d!428560 (= lt!506537 e!933052)))

(declare-fun c!241121 () Bool)

(assert (=> d!428560 (= c!241121 (isEmpty!9527 (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))

(assert (=> d!428560 (validRegex!1683 (regex!2673 (rule!4446 (h!20575 lt!504650))))))

(assert (=> d!428560 (= (matchR!1829 (regex!2673 (rule!4446 (h!20575 lt!504650))) (list!6075 (charsOf!1536 (h!20575 lt!504650)))) lt!506537)))

(declare-fun b!1462631 () Bool)

(declare-fun res!661980 () Bool)

(assert (=> b!1462631 (=> (not res!661980) (not e!933051))))

(assert (=> b!1462631 (= res!661980 (not call!98408))))

(assert (= (and d!428560 c!241121) b!1462624))

(assert (= (and d!428560 (not c!241121)) b!1462625))

(assert (= (and d!428560 c!241122) b!1462622))

(assert (= (and d!428560 (not c!241122)) b!1462635))

(assert (= (and b!1462635 c!241123) b!1462623))

(assert (= (and b!1462635 (not c!241123)) b!1462633))

(assert (= (and b!1462633 (not res!661976)) b!1462626))

(assert (= (and b!1462626 res!661973) b!1462631))

(assert (= (and b!1462631 res!661980) b!1462632))

(assert (= (and b!1462632 res!661975) b!1462630))

(assert (= (and b!1462626 (not res!661977)) b!1462629))

(assert (= (and b!1462629 res!661979) b!1462627))

(assert (= (and b!1462627 (not res!661978)) b!1462628))

(assert (= (and b!1462628 (not res!661974)) b!1462634))

(assert (= (or b!1462622 b!1462627 b!1462631) bm!98403))

(assert (=> b!1462634 m!1695811))

(declare-fun m!1700169 () Bool)

(assert (=> b!1462634 m!1700169))

(assert (=> b!1462628 m!1695811))

(declare-fun m!1700171 () Bool)

(assert (=> b!1462628 m!1700171))

(assert (=> b!1462628 m!1700171))

(declare-fun m!1700173 () Bool)

(assert (=> b!1462628 m!1700173))

(assert (=> b!1462625 m!1695811))

(assert (=> b!1462625 m!1700169))

(assert (=> b!1462625 m!1700169))

(declare-fun m!1700175 () Bool)

(assert (=> b!1462625 m!1700175))

(assert (=> b!1462625 m!1695811))

(assert (=> b!1462625 m!1700171))

(assert (=> b!1462625 m!1700175))

(assert (=> b!1462625 m!1700171))

(declare-fun m!1700177 () Bool)

(assert (=> b!1462625 m!1700177))

(assert (=> bm!98403 m!1695811))

(declare-fun m!1700179 () Bool)

(assert (=> bm!98403 m!1700179))

(assert (=> b!1462632 m!1695811))

(assert (=> b!1462632 m!1700171))

(assert (=> b!1462632 m!1700171))

(assert (=> b!1462632 m!1700173))

(assert (=> b!1462630 m!1695811))

(assert (=> b!1462630 m!1700169))

(assert (=> d!428560 m!1695811))

(assert (=> d!428560 m!1700179))

(declare-fun m!1700181 () Bool)

(assert (=> d!428560 m!1700181))

(declare-fun m!1700183 () Bool)

(assert (=> b!1462624 m!1700183))

(assert (=> b!1461001 d!428560))

(declare-fun d!428562 () Bool)

(declare-fun lt!506538 () BalanceConc!10284)

(assert (=> d!428562 (= (list!6075 lt!506538) (printList!725 Lexer!2327 (list!6073 (seqFromList!1712 (t!134383 lt!504650)))))))

(assert (=> d!428562 (= lt!506538 (printTailRec!697 Lexer!2327 (seqFromList!1712 (t!134383 lt!504650)) 0 (BalanceConc!10285 Empty!5172)))))

(assert (=> d!428562 (= (print!1103 Lexer!2327 (seqFromList!1712 (t!134383 lt!504650))) lt!506538)))

(declare-fun bs!344341 () Bool)

(assert (= bs!344341 d!428562))

(declare-fun m!1700185 () Bool)

(assert (=> bs!344341 m!1700185))

(assert (=> bs!344341 m!1696101))

(declare-fun m!1700187 () Bool)

(assert (=> bs!344341 m!1700187))

(assert (=> bs!344341 m!1700187))

(declare-fun m!1700189 () Bool)

(assert (=> bs!344341 m!1700189))

(assert (=> bs!344341 m!1696101))

(declare-fun m!1700191 () Bool)

(assert (=> bs!344341 m!1700191))

(assert (=> b!1461001 d!428562))

(declare-fun b!1462636 () Bool)

(declare-fun res!661987 () Bool)

(declare-fun e!933055 () Bool)

(assert (=> b!1462636 (=> (not res!661987) (not e!933055))))

(declare-fun lt!506540 () Option!2875)

(assert (=> b!1462636 (= res!661987 (= (++!4081 (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506540)))) (_2!8009 (get!4616 lt!506540))) (originalCharacters!3535 (h!20575 lt!504650))))))

(declare-fun b!1462637 () Bool)

(declare-fun res!661986 () Bool)

(assert (=> b!1462637 (=> (not res!661986) (not e!933055))))

(assert (=> b!1462637 (= res!661986 (= (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506540)))) (originalCharacters!3535 (_1!8009 (get!4616 lt!506540)))))))

(declare-fun bm!98404 () Bool)

(declare-fun call!98409 () Option!2875)

(assert (=> bm!98404 (= call!98409 (maxPrefixOneRule!661 Lexer!2327 (h!20576 (rules!11668 thiss!10022)) (originalCharacters!3535 (h!20575 lt!504650))))))

(declare-fun b!1462638 () Bool)

(declare-fun e!933054 () Option!2875)

(declare-fun lt!506542 () Option!2875)

(declare-fun lt!506543 () Option!2875)

(assert (=> b!1462638 (= e!933054 (ite (and ((_ is None!2874) lt!506542) ((_ is None!2874) lt!506543)) None!2874 (ite ((_ is None!2874) lt!506543) lt!506542 (ite ((_ is None!2874) lt!506542) lt!506543 (ite (>= (size!12407 (_1!8009 (v!22498 lt!506542))) (size!12407 (_1!8009 (v!22498 lt!506543)))) lt!506542 lt!506543)))))))

(assert (=> b!1462638 (= lt!506542 call!98409)))

(assert (=> b!1462638 (= lt!506543 (maxPrefix!1193 Lexer!2327 (t!134384 (rules!11668 thiss!10022)) (originalCharacters!3535 (h!20575 lt!504650))))))

(declare-fun b!1462639 () Bool)

(declare-fun res!661981 () Bool)

(assert (=> b!1462639 (=> (not res!661981) (not e!933055))))

(assert (=> b!1462639 (= res!661981 (= (value!85828 (_1!8009 (get!4616 lt!506540))) (apply!3962 (transformation!2673 (rule!4446 (_1!8009 (get!4616 lt!506540)))) (seqFromList!1714 (originalCharacters!3535 (_1!8009 (get!4616 lt!506540)))))))))

(declare-fun b!1462640 () Bool)

(assert (=> b!1462640 (= e!933055 (contains!2908 (rules!11668 thiss!10022) (rule!4446 (_1!8009 (get!4616 lt!506540)))))))

(declare-fun b!1462641 () Bool)

(assert (=> b!1462641 (= e!933054 call!98409)))

(declare-fun b!1462642 () Bool)

(declare-fun e!933056 () Bool)

(assert (=> b!1462642 (= e!933056 e!933055)))

(declare-fun res!661984 () Bool)

(assert (=> b!1462642 (=> (not res!661984) (not e!933055))))

(assert (=> b!1462642 (= res!661984 (isDefined!2324 lt!506540))))

(declare-fun b!1462643 () Bool)

(declare-fun res!661983 () Bool)

(assert (=> b!1462643 (=> (not res!661983) (not e!933055))))

(assert (=> b!1462643 (= res!661983 (< (size!12411 (_2!8009 (get!4616 lt!506540))) (size!12411 (originalCharacters!3535 (h!20575 lt!504650)))))))

(declare-fun d!428564 () Bool)

(assert (=> d!428564 e!933056))

(declare-fun res!661982 () Bool)

(assert (=> d!428564 (=> res!661982 e!933056)))

(assert (=> d!428564 (= res!661982 (isEmpty!9533 lt!506540))))

(assert (=> d!428564 (= lt!506540 e!933054)))

(declare-fun c!241124 () Bool)

(assert (=> d!428564 (= c!241124 (and ((_ is Cons!15175) (rules!11668 thiss!10022)) ((_ is Nil!15175) (t!134384 (rules!11668 thiss!10022)))))))

(declare-fun lt!506539 () Unit!24235)

(declare-fun lt!506541 () Unit!24235)

(assert (=> d!428564 (= lt!506539 lt!506541)))

(assert (=> d!428564 (isPrefix!1203 (originalCharacters!3535 (h!20575 lt!504650)) (originalCharacters!3535 (h!20575 lt!504650)))))

(assert (=> d!428564 (= lt!506541 (lemmaIsPrefixRefl!835 (originalCharacters!3535 (h!20575 lt!504650)) (originalCharacters!3535 (h!20575 lt!504650))))))

(assert (=> d!428564 (rulesValidInductive!832 Lexer!2327 (rules!11668 thiss!10022))))

(assert (=> d!428564 (= (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (originalCharacters!3535 (h!20575 lt!504650))) lt!506540)))

(declare-fun b!1462644 () Bool)

(declare-fun res!661985 () Bool)

(assert (=> b!1462644 (=> (not res!661985) (not e!933055))))

(assert (=> b!1462644 (= res!661985 (matchR!1829 (regex!2673 (rule!4446 (_1!8009 (get!4616 lt!506540)))) (list!6075 (charsOf!1536 (_1!8009 (get!4616 lt!506540))))))))

(assert (= (and d!428564 c!241124) b!1462641))

(assert (= (and d!428564 (not c!241124)) b!1462638))

(assert (= (or b!1462641 b!1462638) bm!98404))

(assert (= (and d!428564 (not res!661982)) b!1462642))

(assert (= (and b!1462642 res!661984) b!1462637))

(assert (= (and b!1462637 res!661986) b!1462643))

(assert (= (and b!1462643 res!661983) b!1462636))

(assert (= (and b!1462636 res!661987) b!1462639))

(assert (= (and b!1462639 res!661981) b!1462644))

(assert (= (and b!1462644 res!661985) b!1462640))

(declare-fun m!1700193 () Bool)

(assert (=> b!1462644 m!1700193))

(declare-fun m!1700195 () Bool)

(assert (=> b!1462644 m!1700195))

(assert (=> b!1462644 m!1700195))

(declare-fun m!1700197 () Bool)

(assert (=> b!1462644 m!1700197))

(assert (=> b!1462644 m!1700197))

(declare-fun m!1700199 () Bool)

(assert (=> b!1462644 m!1700199))

(declare-fun m!1700201 () Bool)

(assert (=> d!428564 m!1700201))

(declare-fun m!1700203 () Bool)

(assert (=> d!428564 m!1700203))

(declare-fun m!1700205 () Bool)

(assert (=> d!428564 m!1700205))

(assert (=> d!428564 m!1699939))

(assert (=> b!1462636 m!1700193))

(assert (=> b!1462636 m!1700195))

(assert (=> b!1462636 m!1700195))

(assert (=> b!1462636 m!1700197))

(assert (=> b!1462636 m!1700197))

(declare-fun m!1700207 () Bool)

(assert (=> b!1462636 m!1700207))

(declare-fun m!1700209 () Bool)

(assert (=> b!1462638 m!1700209))

(assert (=> b!1462643 m!1700193))

(declare-fun m!1700211 () Bool)

(assert (=> b!1462643 m!1700211))

(declare-fun m!1700213 () Bool)

(assert (=> b!1462643 m!1700213))

(declare-fun m!1700215 () Bool)

(assert (=> bm!98404 m!1700215))

(assert (=> b!1462637 m!1700193))

(assert (=> b!1462637 m!1700195))

(assert (=> b!1462637 m!1700195))

(assert (=> b!1462637 m!1700197))

(assert (=> b!1462639 m!1700193))

(declare-fun m!1700217 () Bool)

(assert (=> b!1462639 m!1700217))

(assert (=> b!1462639 m!1700217))

(declare-fun m!1700219 () Bool)

(assert (=> b!1462639 m!1700219))

(assert (=> b!1462640 m!1700193))

(declare-fun m!1700221 () Bool)

(assert (=> b!1462640 m!1700221))

(declare-fun m!1700223 () Bool)

(assert (=> b!1462642 m!1700223))

(assert (=> b!1461001 d!428564))

(declare-fun b!1462645 () Bool)

(declare-fun e!933059 () Bool)

(declare-fun lt!506547 () Token!5008)

(assert (=> b!1462645 (= e!933059 (= (rule!4446 lt!506547) (get!4618 (getRuleFromTag!222 Lexer!2327 (rules!11668 thiss!10022) (tag!2937 (rule!4446 lt!506547))))))))

(declare-fun b!1462646 () Bool)

(declare-fun e!933061 () Unit!24235)

(declare-fun Unit!24460 () Unit!24235)

(assert (=> b!1462646 (= e!933061 Unit!24460)))

(declare-fun b!1462647 () Bool)

(declare-fun e!933062 () Unit!24235)

(declare-fun Unit!24461 () Unit!24235)

(assert (=> b!1462647 (= e!933062 Unit!24461)))

(declare-fun b!1462648 () Bool)

(assert (=> b!1462648 false))

(declare-fun lt!506554 () Unit!24235)

(declare-fun lt!506582 () Unit!24235)

(assert (=> b!1462648 (= lt!506554 lt!506582)))

(declare-fun lt!506561 () List!15238)

(assert (=> b!1462648 (not (matchR!1829 (regex!2673 (rule!4446 lt!506547)) lt!506561))))

(assert (=> b!1462648 (= lt!506582 (lemmaMaxPrefNoSmallerRuleMatches!48 Lexer!2327 (rules!11668 thiss!10022) (rule!4446 (h!20575 lt!504650)) lt!506561 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (rule!4446 lt!506547)))))

(assert (=> b!1462648 (= lt!506561 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))

(declare-fun e!933060 () Unit!24235)

(declare-fun Unit!24462 () Unit!24235)

(assert (=> b!1462648 (= e!933060 Unit!24462)))

(declare-fun b!1462649 () Bool)

(declare-fun Unit!24463 () Unit!24235)

(assert (=> b!1462649 (= e!933062 Unit!24463)))

(declare-fun lt!506550 () Unit!24235)

(declare-fun lt!506603 () List!15238)

(declare-fun lt!506551 () List!15238)

(assert (=> b!1462649 (= lt!506550 (lemmaMaxPrefixThenMatchesRulesRegex!8 Lexer!2327 (rules!11668 thiss!10022) lt!506551 lt!506547 (rule!4446 lt!506547) lt!506603))))

(assert (=> b!1462649 (matchR!1829 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)) (list!6075 (charsOf!1536 lt!506547)))))

(declare-fun lt!506545 () Unit!24235)

(assert (=> b!1462649 (= lt!506545 lt!506550)))

(declare-fun lt!506564 () List!15238)

(assert (=> b!1462649 (= lt!506564 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))

(declare-fun lt!506590 () List!15238)

(assert (=> b!1462649 (= lt!506590 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))

(declare-fun lt!506596 () List!15238)

(assert (=> b!1462649 (= lt!506596 (getSuffix!653 lt!506551 (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))

(declare-fun lt!506587 () Unit!24235)

(assert (=> b!1462649 (= lt!506587 (lemmaSamePrefixThenSameSuffix!605 lt!506564 (list!6075 lt!504887) lt!506590 lt!506596 lt!506551))))

(assert (=> b!1462649 (= (list!6075 lt!504887) lt!506596)))

(declare-fun lt!506546 () Unit!24235)

(assert (=> b!1462649 (= lt!506546 lt!506587)))

(declare-fun lt!506599 () List!15238)

(assert (=> b!1462649 (= lt!506599 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))

(declare-fun lt!506584 () Unit!24235)

(assert (=> b!1462649 (= lt!506584 (lemmaAddHeadSuffixToPrefixStillPrefix!96 lt!506599 lt!506551))))

(assert (=> b!1462649 (isPrefix!1203 (++!4081 lt!506599 (Cons!15172 (head!3008 (getSuffix!653 lt!506551 lt!506599)) Nil!15172)) lt!506551)))

(declare-fun lt!506544 () Unit!24235)

(assert (=> b!1462649 (= lt!506544 lt!506584)))

(declare-fun lt!506577 () List!15238)

(assert (=> b!1462649 (= lt!506577 (list!6075 (charsOf!1536 lt!506547)))))

(declare-fun lt!506595 () List!15238)

(assert (=> b!1462649 (= lt!506595 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (Cons!15172 (head!3008 (list!6075 lt!504887)) Nil!15172)))))

(declare-fun lt!506556 () Unit!24235)

(assert (=> b!1462649 (= lt!506556 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!8 lt!506577 lt!506595 lt!506551))))

(assert (=> b!1462649 (isPrefix!1203 lt!506595 lt!506577)))

(declare-fun lt!506613 () Unit!24235)

(assert (=> b!1462649 (= lt!506613 lt!506556)))

(declare-fun lt!506572 () Regex!3987)

(assert (=> b!1462649 (= lt!506572 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)))))

(declare-fun lt!506608 () List!15238)

(assert (=> b!1462649 (= lt!506608 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (Cons!15172 (head!3008 (list!6075 lt!504887)) Nil!15172)))))

(declare-fun lt!506571 () List!15238)

(assert (=> b!1462649 (= lt!506571 (list!6075 (charsOf!1536 lt!506547)))))

(declare-fun lt!506589 () Unit!24235)

(assert (=> b!1462649 (= lt!506589 (lemmaNotPrefixMatchThenCannotMatchLonger!9 lt!506572 lt!506608 lt!506571))))

(assert (=> b!1462649 (not (matchR!1829 lt!506572 lt!506571))))

(declare-fun lt!506593 () Unit!24235)

(assert (=> b!1462649 (= lt!506593 lt!506589)))

(assert (=> b!1462649 false))

(declare-fun d!428566 () Bool)

(assert (=> d!428566 (= (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887))) (Some!2874 (tuple2!14247 (h!20575 lt!504650) (list!6075 lt!504887))))))

(declare-fun lt!506578 () Unit!24235)

(declare-fun Unit!24464 () Unit!24235)

(assert (=> d!428566 (= lt!506578 Unit!24464)))

(declare-fun lt!506557 () Unit!24235)

(declare-fun e!933063 () Unit!24235)

(assert (=> d!428566 (= lt!506557 e!933063)))

(declare-fun c!241130 () Bool)

(assert (=> d!428566 (= c!241130 (not (= (rule!4446 lt!506547) (rule!4446 (h!20575 lt!504650)))))))

(declare-fun lt!506559 () Unit!24235)

(declare-fun lt!506579 () Unit!24235)

(assert (=> d!428566 (= lt!506559 lt!506579)))

(assert (=> d!428566 (= (list!6075 lt!504887) lt!506603)))

(assert (=> d!428566 (= lt!506579 (lemmaSamePrefixThenSameSuffix!605 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887) (list!6075 (charsOf!1536 (h!20575 lt!504650))) lt!506603 lt!506551))))

(declare-fun lt!506570 () Unit!24235)

(declare-fun lt!506611 () Unit!24235)

(assert (=> d!428566 (= lt!506570 lt!506611)))

(declare-fun lt!506574 () List!15238)

(declare-fun lt!506560 () List!15238)

(assert (=> d!428566 (= lt!506574 lt!506560)))

(assert (=> d!428566 (= lt!506611 (lemmaIsPrefixSameLengthThenSameList!107 lt!506574 lt!506560 lt!506551))))

(assert (=> d!428566 (= lt!506560 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))

(assert (=> d!428566 (= lt!506574 (list!6075 (charsOf!1536 lt!506547)))))

(declare-fun lt!506575 () Unit!24235)

(declare-fun e!933058 () Unit!24235)

(assert (=> d!428566 (= lt!506575 e!933058)))

(declare-fun c!241127 () Bool)

(assert (=> d!428566 (= c!241127 (< (size!12415 (charsOf!1536 lt!506547)) (size!12415 (charsOf!1536 (h!20575 lt!504650)))))))

(declare-fun lt!506569 () Unit!24235)

(assert (=> d!428566 (= lt!506569 e!933062)))

(declare-fun c!241129 () Bool)

(assert (=> d!428566 (= c!241129 (> (size!12415 (charsOf!1536 lt!506547)) (size!12415 (charsOf!1536 (h!20575 lt!504650)))))))

(declare-fun lt!506597 () Unit!24235)

(declare-fun lt!506563 () Unit!24235)

(assert (=> d!428566 (= lt!506597 lt!506563)))

(assert (=> d!428566 (matchR!1829 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)) (list!6075 (charsOf!1536 (h!20575 lt!504650))))))

(assert (=> d!428566 (= lt!506563 (lemmaMaxPrefixThenMatchesRulesRegex!8 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650))) (h!20575 lt!504650) (rule!4446 (h!20575 lt!504650)) Nil!15172))))

(declare-fun lt!506601 () Unit!24235)

(declare-fun lt!506607 () Unit!24235)

(assert (=> d!428566 (= lt!506601 lt!506607)))

(declare-fun lt!506558 () List!15238)

(assert (=> d!428566 (= lt!506603 lt!506558)))

(declare-fun lt!506555 () List!15238)

(declare-fun lt!506606 () List!15238)

(assert (=> d!428566 (= lt!506607 (lemmaSamePrefixThenSameSuffix!605 lt!506606 lt!506603 lt!506555 lt!506558 lt!506551))))

(assert (=> d!428566 (= lt!506558 (getSuffix!653 lt!506551 (list!6075 (charsOf!1536 lt!506547))))))

(assert (=> d!428566 (= lt!506555 (list!6075 (charsOf!1536 lt!506547)))))

(assert (=> d!428566 (= lt!506606 (list!6075 (charsOf!1536 lt!506547)))))

(declare-fun lt!506573 () Unit!24235)

(declare-fun lt!506581 () Unit!24235)

(assert (=> d!428566 (= lt!506573 lt!506581)))

(declare-fun lt!506552 () List!15238)

(assert (=> d!428566 (= (maxPrefixOneRule!661 Lexer!2327 (rule!4446 lt!506547) lt!506551) (Some!2874 (tuple2!14247 (Token!5009 (apply!3962 (transformation!2673 (rule!4446 lt!506547)) (seqFromList!1714 lt!506552)) (rule!4446 lt!506547) (size!12411 lt!506552) lt!506552) lt!506603)))))

(assert (=> d!428566 (= lt!506581 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!198 Lexer!2327 (rules!11668 thiss!10022) lt!506552 lt!506551 lt!506603 (rule!4446 lt!506547)))))

(assert (=> d!428566 (= lt!506552 (list!6075 (charsOf!1536 lt!506547)))))

(declare-fun lt!506553 () Unit!24235)

(assert (=> d!428566 (= lt!506553 (lemmaCharactersSize!304 lt!506547))))

(declare-fun lt!506549 () Unit!24235)

(assert (=> d!428566 (= lt!506549 (lemmaEqSameImage!115 (transformation!2673 (rule!4446 lt!506547)) (charsOf!1536 lt!506547) (seqFromList!1714 (originalCharacters!3535 lt!506547))))))

(declare-fun lt!506548 () Unit!24235)

(assert (=> d!428566 (= lt!506548 (lemmaSemiInverse!350 (transformation!2673 (rule!4446 lt!506547)) (charsOf!1536 lt!506547)))))

(declare-fun lt!506614 () Unit!24235)

(assert (=> d!428566 (= lt!506614 (lemmaInv!382 (transformation!2673 (rule!4446 lt!506547))))))

(declare-fun lt!506592 () Unit!24235)

(declare-fun lt!506565 () Unit!24235)

(assert (=> d!428566 (= lt!506592 lt!506565)))

(declare-fun lt!506610 () List!15238)

(assert (=> d!428566 (isPrefix!1203 lt!506610 (++!4081 lt!506610 lt!506603))))

(assert (=> d!428566 (= lt!506565 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!506610 lt!506603))))

(assert (=> d!428566 (= lt!506610 (list!6075 (charsOf!1536 lt!506547)))))

(declare-fun lt!506598 () Unit!24235)

(declare-fun lt!506566 () Unit!24235)

(assert (=> d!428566 (= lt!506598 lt!506566)))

(assert (=> d!428566 e!933059))

(declare-fun res!661989 () Bool)

(assert (=> d!428566 (=> (not res!661989) (not e!933059))))

(assert (=> d!428566 (= res!661989 (isDefined!2326 (getRuleFromTag!222 Lexer!2327 (rules!11668 thiss!10022) (tag!2937 (rule!4446 lt!506547)))))))

(assert (=> d!428566 (= lt!506566 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!222 Lexer!2327 (rules!11668 thiss!10022) lt!506551 lt!506547))))

(declare-fun lt!506602 () Option!2875)

(assert (=> d!428566 (= lt!506603 (_2!8009 (get!4616 lt!506602)))))

(assert (=> d!428566 (= lt!506547 (_1!8009 (get!4616 lt!506602)))))

(declare-fun lt!506605 () Unit!24235)

(assert (=> d!428566 (= lt!506605 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!239 Lexer!2327 (rules!11668 thiss!10022) (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887)))))

(assert (=> d!428566 (= lt!506602 (maxPrefix!1193 Lexer!2327 (rules!11668 thiss!10022) lt!506551))))

(declare-fun lt!506594 () Unit!24235)

(declare-fun lt!506604 () Unit!24235)

(assert (=> d!428566 (= lt!506594 lt!506604)))

(declare-fun lt!506567 () List!15238)

(assert (=> d!428566 (isPrefix!1203 lt!506567 (++!4081 lt!506567 (list!6075 lt!504887)))))

(assert (=> d!428566 (= lt!506604 (lemmaConcatTwoListThenFirstIsPrefix!766 lt!506567 (list!6075 lt!504887)))))

(assert (=> d!428566 (= lt!506567 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))

(assert (=> d!428566 (= lt!506551 (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (list!6075 lt!504887)))))

(assert (=> d!428566 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428566 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!37 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!504650) (rule!4446 (h!20575 lt!504650)) (list!6075 lt!504887)) lt!506578)))

(declare-fun b!1462650 () Bool)

(declare-fun Unit!24465 () Unit!24235)

(assert (=> b!1462650 (= e!933060 Unit!24465)))

(declare-fun b!1462651 () Bool)

(declare-fun Unit!24466 () Unit!24235)

(assert (=> b!1462651 (= e!933058 Unit!24466)))

(declare-fun b!1462652 () Bool)

(assert (=> b!1462652 false))

(declare-fun lt!506588 () Unit!24235)

(declare-fun lt!506583 () Unit!24235)

(assert (=> b!1462652 (= lt!506588 lt!506583)))

(assert (=> b!1462652 (= (rule!4446 lt!506547) (rule!4446 (h!20575 lt!504650)))))

(assert (=> b!1462652 (= lt!506583 (lemmaSameIndexThenSameElement!24 (rules!11668 thiss!10022) (rule!4446 lt!506547) (rule!4446 (h!20575 lt!504650))))))

(declare-fun Unit!24467 () Unit!24235)

(assert (=> b!1462652 (= e!933061 Unit!24467)))

(declare-fun b!1462653 () Bool)

(declare-fun Unit!24468 () Unit!24235)

(assert (=> b!1462653 (= e!933063 Unit!24468)))

(declare-fun c!241125 () Bool)

(assert (=> b!1462653 (= c!241125 (< (getIndex!76 (rules!11668 thiss!10022) (rule!4446 (h!20575 lt!504650))) (getIndex!76 (rules!11668 thiss!10022) (rule!4446 lt!506547))))))

(declare-fun lt!506609 () Unit!24235)

(declare-fun e!933057 () Unit!24235)

(assert (=> b!1462653 (= lt!506609 e!933057)))

(declare-fun c!241126 () Bool)

(assert (=> b!1462653 (= c!241126 (< (getIndex!76 (rules!11668 thiss!10022) (rule!4446 lt!506547)) (getIndex!76 (rules!11668 thiss!10022) (rule!4446 (h!20575 lt!504650)))))))

(declare-fun lt!506568 () Unit!24235)

(assert (=> b!1462653 (= lt!506568 e!933060)))

(declare-fun c!241128 () Bool)

(assert (=> b!1462653 (= c!241128 (= (getIndex!76 (rules!11668 thiss!10022) (rule!4446 lt!506547)) (getIndex!76 (rules!11668 thiss!10022) (rule!4446 (h!20575 lt!504650)))))))

(declare-fun lt!506612 () Unit!24235)

(assert (=> b!1462653 (= lt!506612 e!933061)))

(assert (=> b!1462653 false))

(declare-fun b!1462654 () Bool)

(declare-fun Unit!24469 () Unit!24235)

(assert (=> b!1462654 (= e!933063 Unit!24469)))

(declare-fun b!1462655 () Bool)

(declare-fun Unit!24470 () Unit!24235)

(assert (=> b!1462655 (= e!933058 Unit!24470)))

(declare-fun lt!506586 () List!15238)

(assert (=> b!1462655 (= lt!506586 (list!6075 (charsOf!1536 lt!506547)))))

(declare-fun lt!506562 () List!15238)

(assert (=> b!1462655 (= lt!506562 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))

(declare-fun lt!506580 () Unit!24235)

(assert (=> b!1462655 (= lt!506580 (lemmaMaxPrefixOutputsMaxPrefix!98 Lexer!2327 (rules!11668 thiss!10022) (rule!4446 lt!506547) lt!506586 lt!506551 lt!506562 (rule!4446 (h!20575 lt!504650))))))

(assert (=> b!1462655 (not (matchR!1829 (regex!2673 (rule!4446 (h!20575 lt!504650))) lt!506562))))

(declare-fun lt!506591 () Unit!24235)

(assert (=> b!1462655 (= lt!506591 lt!506580)))

(assert (=> b!1462655 false))

(declare-fun b!1462656 () Bool)

(declare-fun res!661988 () Bool)

(assert (=> b!1462656 (=> (not res!661988) (not e!933059))))

(assert (=> b!1462656 (= res!661988 (matchR!1829 (regex!2673 (get!4618 (getRuleFromTag!222 Lexer!2327 (rules!11668 thiss!10022) (tag!2937 (rule!4446 lt!506547))))) (list!6075 (charsOf!1536 lt!506547))))))

(declare-fun b!1462657 () Bool)

(assert (=> b!1462657 false))

(declare-fun lt!506600 () Unit!24235)

(declare-fun lt!506585 () Unit!24235)

(assert (=> b!1462657 (= lt!506600 lt!506585)))

(declare-fun lt!506576 () List!15238)

(assert (=> b!1462657 (not (matchR!1829 (regex!2673 (rule!4446 (h!20575 lt!504650))) lt!506576))))

(assert (=> b!1462657 (= lt!506585 (lemmaMaxPrefNoSmallerRuleMatches!48 Lexer!2327 (rules!11668 thiss!10022) (rule!4446 lt!506547) lt!506576 lt!506551 (rule!4446 (h!20575 lt!504650))))))

(assert (=> b!1462657 (= lt!506576 (list!6075 (charsOf!1536 lt!506547)))))

(declare-fun Unit!24471 () Unit!24235)

(assert (=> b!1462657 (= e!933057 Unit!24471)))

(declare-fun b!1462658 () Bool)

(declare-fun Unit!24472 () Unit!24235)

(assert (=> b!1462658 (= e!933057 Unit!24472)))

(assert (= (and d!428566 res!661989) b!1462656))

(assert (= (and b!1462656 res!661988) b!1462645))

(assert (= (and d!428566 c!241129) b!1462649))

(assert (= (and d!428566 (not c!241129)) b!1462647))

(assert (= (and d!428566 c!241127) b!1462655))

(assert (= (and d!428566 (not c!241127)) b!1462651))

(assert (= (and d!428566 c!241130) b!1462653))

(assert (= (and d!428566 (not c!241130)) b!1462654))

(assert (= (and b!1462653 c!241125) b!1462657))

(assert (= (and b!1462653 (not c!241125)) b!1462658))

(assert (= (and b!1462653 c!241126) b!1462648))

(assert (= (and b!1462653 (not c!241126)) b!1462650))

(assert (= (and b!1462653 c!241128) b!1462652))

(assert (= (and b!1462653 (not c!241128)) b!1462646))

(declare-fun m!1700225 () Bool)

(assert (=> b!1462657 m!1700225))

(declare-fun m!1700227 () Bool)

(assert (=> b!1462657 m!1700227))

(declare-fun m!1700229 () Bool)

(assert (=> b!1462657 m!1700229))

(assert (=> b!1462657 m!1700229))

(declare-fun m!1700231 () Bool)

(assert (=> b!1462657 m!1700231))

(assert (=> b!1462656 m!1700229))

(assert (=> b!1462656 m!1700231))

(declare-fun m!1700233 () Bool)

(assert (=> b!1462656 m!1700233))

(assert (=> b!1462656 m!1700233))

(declare-fun m!1700235 () Bool)

(assert (=> b!1462656 m!1700235))

(assert (=> b!1462656 m!1700231))

(declare-fun m!1700237 () Bool)

(assert (=> b!1462656 m!1700237))

(assert (=> b!1462656 m!1700229))

(assert (=> b!1462645 m!1700233))

(assert (=> b!1462645 m!1700233))

(assert (=> b!1462645 m!1700235))

(assert (=> d!428566 m!1695809))

(assert (=> d!428566 m!1700233))

(assert (=> d!428566 m!1696087))

(declare-fun m!1700239 () Bool)

(assert (=> d!428566 m!1700239))

(assert (=> d!428566 m!1695811))

(declare-fun m!1700241 () Bool)

(assert (=> d!428566 m!1700241))

(assert (=> d!428566 m!1696119))

(declare-fun m!1700243 () Bool)

(assert (=> d!428566 m!1700243))

(assert (=> d!428566 m!1700231))

(declare-fun m!1700245 () Bool)

(assert (=> d!428566 m!1700245))

(assert (=> d!428566 m!1695809))

(declare-fun m!1700247 () Bool)

(assert (=> d!428566 m!1700247))

(assert (=> d!428566 m!1700229))

(declare-fun m!1700249 () Bool)

(assert (=> d!428566 m!1700249))

(assert (=> d!428566 m!1696305))

(assert (=> d!428566 m!1700229))

(declare-fun m!1700251 () Bool)

(assert (=> d!428566 m!1700251))

(declare-fun m!1700253 () Bool)

(assert (=> d!428566 m!1700253))

(assert (=> d!428566 m!1696119))

(declare-fun m!1700255 () Bool)

(assert (=> d!428566 m!1700255))

(declare-fun m!1700257 () Bool)

(assert (=> d!428566 m!1700257))

(assert (=> d!428566 m!1700255))

(declare-fun m!1700259 () Bool)

(assert (=> d!428566 m!1700259))

(declare-fun m!1700261 () Bool)

(assert (=> d!428566 m!1700261))

(declare-fun m!1700263 () Bool)

(assert (=> d!428566 m!1700263))

(declare-fun m!1700265 () Bool)

(assert (=> d!428566 m!1700265))

(declare-fun m!1700267 () Bool)

(assert (=> d!428566 m!1700267))

(assert (=> d!428566 m!1700261))

(declare-fun m!1700269 () Bool)

(assert (=> d!428566 m!1700269))

(assert (=> d!428566 m!1700101))

(assert (=> d!428566 m!1700103))

(assert (=> d!428566 m!1696305))

(assert (=> d!428566 m!1695811))

(declare-fun m!1700271 () Bool)

(assert (=> d!428566 m!1700271))

(declare-fun m!1700273 () Bool)

(assert (=> d!428566 m!1700273))

(declare-fun m!1700275 () Bool)

(assert (=> d!428566 m!1700275))

(assert (=> d!428566 m!1700251))

(declare-fun m!1700277 () Bool)

(assert (=> d!428566 m!1700277))

(assert (=> d!428566 m!1700229))

(declare-fun m!1700279 () Bool)

(assert (=> d!428566 m!1700279))

(assert (=> d!428566 m!1700229))

(declare-fun m!1700281 () Bool)

(assert (=> d!428566 m!1700281))

(assert (=> d!428566 m!1695811))

(assert (=> d!428566 m!1696119))

(assert (=> d!428566 m!1696121))

(declare-fun m!1700283 () Bool)

(assert (=> d!428566 m!1700283))

(assert (=> d!428566 m!1695811))

(assert (=> d!428566 m!1696119))

(assert (=> d!428566 m!1700101))

(declare-fun m!1700285 () Bool)

(assert (=> d!428566 m!1700285))

(assert (=> d!428566 m!1700229))

(assert (=> d!428566 m!1700231))

(assert (=> d!428566 m!1700263))

(declare-fun m!1700287 () Bool)

(assert (=> d!428566 m!1700287))

(assert (=> d!428566 m!1695809))

(assert (=> d!428566 m!1695811))

(assert (=> d!428566 m!1695811))

(assert (=> d!428566 m!1696119))

(assert (=> d!428566 m!1695811))

(declare-fun m!1700289 () Bool)

(assert (=> d!428566 m!1700289))

(declare-fun m!1700291 () Bool)

(assert (=> d!428566 m!1700291))

(assert (=> d!428566 m!1700233))

(declare-fun m!1700293 () Bool)

(assert (=> d!428566 m!1700293))

(assert (=> b!1462649 m!1695809))

(declare-fun m!1700295 () Bool)

(assert (=> b!1462649 m!1700295))

(assert (=> b!1462649 m!1696119))

(assert (=> b!1462649 m!1696159))

(declare-fun m!1700297 () Bool)

(assert (=> b!1462649 m!1700297))

(assert (=> b!1462649 m!1696119))

(declare-fun m!1700299 () Bool)

(assert (=> b!1462649 m!1700299))

(assert (=> b!1462649 m!1700297))

(declare-fun m!1700301 () Bool)

(assert (=> b!1462649 m!1700301))

(assert (=> b!1462649 m!1696305))

(assert (=> b!1462649 m!1700231))

(declare-fun m!1700303 () Bool)

(assert (=> b!1462649 m!1700303))

(assert (=> b!1462649 m!1695811))

(declare-fun m!1700305 () Bool)

(assert (=> b!1462649 m!1700305))

(declare-fun m!1700307 () Bool)

(assert (=> b!1462649 m!1700307))

(declare-fun m!1700309 () Bool)

(assert (=> b!1462649 m!1700309))

(assert (=> b!1462649 m!1695811))

(declare-fun m!1700311 () Bool)

(assert (=> b!1462649 m!1700311))

(declare-fun m!1700313 () Bool)

(assert (=> b!1462649 m!1700313))

(assert (=> b!1462649 m!1696305))

(declare-fun m!1700315 () Bool)

(assert (=> b!1462649 m!1700315))

(declare-fun m!1700317 () Bool)

(assert (=> b!1462649 m!1700317))

(declare-fun m!1700319 () Bool)

(assert (=> b!1462649 m!1700319))

(assert (=> b!1462649 m!1700317))

(declare-fun m!1700321 () Bool)

(assert (=> b!1462649 m!1700321))

(assert (=> b!1462649 m!1700229))

(assert (=> b!1462649 m!1700229))

(assert (=> b!1462649 m!1700231))

(assert (=> b!1462649 m!1695809))

(assert (=> b!1462649 m!1695811))

(declare-fun m!1700323 () Bool)

(assert (=> b!1462655 m!1700323))

(assert (=> b!1462655 m!1700229))

(assert (=> b!1462655 m!1695809))

(declare-fun m!1700325 () Bool)

(assert (=> b!1462655 m!1700325))

(assert (=> b!1462655 m!1700229))

(assert (=> b!1462655 m!1700231))

(assert (=> b!1462655 m!1695809))

(assert (=> b!1462655 m!1695811))

(declare-fun m!1700327 () Bool)

(assert (=> b!1462648 m!1700327))

(assert (=> b!1462648 m!1695809))

(assert (=> b!1462648 m!1695809))

(assert (=> b!1462648 m!1695811))

(assert (=> b!1462648 m!1695811))

(declare-fun m!1700329 () Bool)

(assert (=> b!1462648 m!1700329))

(declare-fun m!1700331 () Bool)

(assert (=> b!1462653 m!1700331))

(declare-fun m!1700333 () Bool)

(assert (=> b!1462653 m!1700333))

(declare-fun m!1700335 () Bool)

(assert (=> b!1462652 m!1700335))

(assert (=> b!1461001 d!428566))

(declare-fun d!428568 () Bool)

(declare-fun lt!506615 () BalanceConc!10284)

(assert (=> d!428568 (= (list!6075 lt!506615) (originalCharacters!3535 lt!504656))))

(assert (=> d!428568 (= lt!506615 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 lt!504656))) (value!85828 lt!504656)))))

(assert (=> d!428568 (= (charsOf!1536 lt!504656) lt!506615)))

(declare-fun b_lambda!45643 () Bool)

(assert (=> (not b_lambda!45643) (not d!428568)))

(declare-fun t!134473 () Bool)

(declare-fun tb!82489 () Bool)

(assert (=> (and b!1461246 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32)))) (toChars!3843 (transformation!2673 (rule!4446 lt!504656)))) t!134473) tb!82489))

(declare-fun b!1462659 () Bool)

(declare-fun e!933064 () Bool)

(declare-fun tp!411643 () Bool)

(assert (=> b!1462659 (= e!933064 (and (inv!20288 (c!240744 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 lt!504656))) (value!85828 lt!504656)))) tp!411643))))

(declare-fun result!99122 () Bool)

(assert (=> tb!82489 (= result!99122 (and (inv!20289 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 lt!504656))) (value!85828 lt!504656))) e!933064))))

(assert (= tb!82489 b!1462659))

(declare-fun m!1700337 () Bool)

(assert (=> b!1462659 m!1700337))

(declare-fun m!1700339 () Bool)

(assert (=> tb!82489 m!1700339))

(assert (=> d!428568 t!134473))

(declare-fun b_and!99849 () Bool)

(assert (= b_and!99845 (and (=> t!134473 result!99122) b_and!99849)))

(declare-fun t!134475 () Bool)

(declare-fun tb!82491 () Bool)

(assert (=> (and b!1461252 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) (toChars!3843 (transformation!2673 (rule!4446 lt!504656)))) t!134475) tb!82491))

(declare-fun result!99124 () Bool)

(assert (= result!99124 result!99122))

(assert (=> d!428568 t!134475))

(declare-fun b_and!99851 () Bool)

(assert (= b_and!99847 (and (=> t!134475 result!99124) b_and!99851)))

(declare-fun m!1700341 () Bool)

(assert (=> d!428568 m!1700341))

(declare-fun m!1700343 () Bool)

(assert (=> d!428568 m!1700343))

(assert (=> d!427718 d!428568))

(declare-fun b!1462682 () Bool)

(declare-fun res!662003 () Bool)

(declare-fun e!933077 () Bool)

(assert (=> b!1462682 (=> (not res!662003) (not e!933077))))

(declare-fun height!776 (Conc!5172) Int)

(declare-fun ++!4087 (Conc!5172 Conc!5172) Conc!5172)

(assert (=> b!1462682 (= res!662003 (<= (height!776 (++!4087 (c!240744 (charsOf!1536 lt!504656)) (c!240744 (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))))) (+ (max!0 (height!776 (c!240744 (charsOf!1536 lt!504656))) (height!776 (c!240744 (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))))) 1)))))

(declare-fun b!1462681 () Bool)

(declare-fun res!662002 () Bool)

(assert (=> b!1462681 (=> (not res!662002) (not e!933077))))

(assert (=> b!1462681 (= res!662002 (isBalanced!1553 (++!4087 (c!240744 (charsOf!1536 lt!504656)) (c!240744 (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))))))))

(declare-fun b!1462683 () Bool)

(declare-fun res!662004 () Bool)

(assert (=> b!1462683 (=> (not res!662004) (not e!933077))))

(assert (=> b!1462683 (= res!662004 (>= (height!776 (++!4087 (c!240744 (charsOf!1536 lt!504656)) (c!240744 (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))))) (max!0 (height!776 (c!240744 (charsOf!1536 lt!504656))) (height!776 (c!240744 (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0)))))))))

(declare-fun d!428570 () Bool)

(assert (=> d!428570 e!933077))

(declare-fun res!662005 () Bool)

(assert (=> d!428570 (=> (not res!662005) (not e!933077))))

(declare-fun appendAssocInst!335 (Conc!5172 Conc!5172) Bool)

(assert (=> d!428570 (= res!662005 (appendAssocInst!335 (c!240744 (charsOf!1536 lt!504656)) (c!240744 (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0)))))))

(declare-fun lt!506627 () BalanceConc!10284)

(assert (=> d!428570 (= lt!506627 (BalanceConc!10285 (++!4087 (c!240744 (charsOf!1536 lt!504656)) (c!240744 (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))))))))

(assert (=> d!428570 (= (++!4084 (charsOf!1536 lt!504656) (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))) lt!506627)))

(declare-fun b!1462684 () Bool)

(assert (=> b!1462684 (= e!933077 (= (list!6075 lt!506627) (++!4081 (list!6075 (charsOf!1536 lt!504656)) (list!6075 (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))))))))

(assert (= (and d!428570 res!662005) b!1462681))

(assert (= (and b!1462681 res!662002) b!1462682))

(assert (= (and b!1462682 res!662003) b!1462683))

(assert (= (and b!1462683 res!662004) b!1462684))

(declare-fun m!1700381 () Bool)

(assert (=> b!1462681 m!1700381))

(assert (=> b!1462681 m!1700381))

(declare-fun m!1700383 () Bool)

(assert (=> b!1462681 m!1700383))

(declare-fun m!1700385 () Bool)

(assert (=> b!1462684 m!1700385))

(assert (=> b!1462684 m!1696299))

(declare-fun m!1700387 () Bool)

(assert (=> b!1462684 m!1700387))

(assert (=> b!1462684 m!1696301))

(declare-fun m!1700389 () Bool)

(assert (=> b!1462684 m!1700389))

(assert (=> b!1462684 m!1700387))

(assert (=> b!1462684 m!1700389))

(declare-fun m!1700391 () Bool)

(assert (=> b!1462684 m!1700391))

(declare-fun m!1700393 () Bool)

(assert (=> b!1462682 m!1700393))

(assert (=> b!1462682 m!1700381))

(assert (=> b!1462682 m!1700381))

(declare-fun m!1700395 () Bool)

(assert (=> b!1462682 m!1700395))

(declare-fun m!1700397 () Bool)

(assert (=> b!1462682 m!1700397))

(assert (=> b!1462682 m!1700393))

(assert (=> b!1462682 m!1700397))

(declare-fun m!1700399 () Bool)

(assert (=> b!1462682 m!1700399))

(declare-fun m!1700401 () Bool)

(assert (=> d!428570 m!1700401))

(assert (=> d!428570 m!1700381))

(assert (=> b!1462683 m!1700393))

(assert (=> b!1462683 m!1700381))

(assert (=> b!1462683 m!1700381))

(assert (=> b!1462683 m!1700395))

(assert (=> b!1462683 m!1700397))

(assert (=> b!1462683 m!1700393))

(assert (=> b!1462683 m!1700397))

(assert (=> b!1462683 m!1700399))

(assert (=> d!427718 d!428570))

(declare-fun lt!506715 () Bool)

(declare-fun d!428590 () Bool)

(declare-fun prefixMatch!318 (Regex!3987 List!15238) Bool)

(assert (=> d!428590 (= lt!506715 (prefixMatch!318 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)) (list!6075 (++!4084 (charsOf!1536 lt!504656) (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))))))))

(declare-datatypes ((List!15246 0))(
  ( (Nil!15180) (Cons!15180 (h!20581 Regex!3987) (t!134639 List!15246)) )
))
(declare-datatypes ((Context!1246 0))(
  ( (Context!1247 (exprs!1123 List!15246)) )
))
(declare-fun prefixMatchZipperSequence!354 ((InoxSet Context!1246) BalanceConc!10284 Int) Bool)

(declare-fun focus!114 (Regex!3987) (InoxSet Context!1246))

(assert (=> d!428590 (= lt!506715 (prefixMatchZipperSequence!354 (focus!114 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022))) (++!4084 (charsOf!1536 lt!504656) (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))) 0))))

(declare-fun lt!506712 () Unit!24235)

(declare-fun lt!506717 () Unit!24235)

(assert (=> d!428590 (= lt!506712 lt!506717)))

(declare-fun lt!506710 () List!15238)

(declare-fun lt!506718 () (InoxSet Context!1246))

(declare-fun prefixMatchZipper!94 ((InoxSet Context!1246) List!15238) Bool)

(assert (=> d!428590 (= (prefixMatch!318 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)) lt!506710) (prefixMatchZipper!94 lt!506718 lt!506710))))

(declare-datatypes ((List!15247 0))(
  ( (Nil!15181) (Cons!15181 (h!20582 Context!1246) (t!134640 List!15247)) )
))
(declare-fun lt!506714 () List!15247)

(declare-fun prefixMatchZipperRegexEquiv!94 ((InoxSet Context!1246) List!15247 Regex!3987 List!15238) Unit!24235)

(assert (=> d!428590 (= lt!506717 (prefixMatchZipperRegexEquiv!94 lt!506718 lt!506714 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)) lt!506710))))

(assert (=> d!428590 (= lt!506710 (list!6075 (++!4084 (charsOf!1536 lt!504656) (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0)))))))

(declare-fun toList!778 ((InoxSet Context!1246)) List!15247)

(assert (=> d!428590 (= lt!506714 (toList!778 (focus!114 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)))))))

(assert (=> d!428590 (= lt!506718 (focus!114 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022))))))

(declare-fun lt!506713 () Unit!24235)

(declare-fun lt!506716 () Unit!24235)

(assert (=> d!428590 (= lt!506713 lt!506716)))

(declare-fun lt!506709 () (InoxSet Context!1246))

(declare-fun lt!506711 () Int)

(declare-fun dropList!482 (BalanceConc!10284 Int) List!15238)

(assert (=> d!428590 (= (prefixMatchZipper!94 lt!506709 (dropList!482 (++!4084 (charsOf!1536 lt!504656) (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))) lt!506711)) (prefixMatchZipperSequence!354 lt!506709 (++!4084 (charsOf!1536 lt!504656) (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))) lt!506711))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!94 ((InoxSet Context!1246) BalanceConc!10284 Int) Unit!24235)

(assert (=> d!428590 (= lt!506716 (lemmaprefixMatchZipperSequenceEquivalent!94 lt!506709 (++!4084 (charsOf!1536 lt!504656) (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0))) lt!506711))))

(assert (=> d!428590 (= lt!506711 0)))

(assert (=> d!428590 (= lt!506709 (focus!114 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022))))))

(assert (=> d!428590 (validRegex!1683 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)))))

(assert (=> d!428590 (= (prefixMatchZipperSequence!352 (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)) (++!4084 (charsOf!1536 lt!504656) (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0)))) lt!506715)))

(declare-fun bs!344381 () Bool)

(assert (= bs!344381 d!428590))

(assert (=> bs!344381 m!1696305))

(declare-fun m!1700749 () Bool)

(assert (=> bs!344381 m!1700749))

(declare-fun m!1700751 () Bool)

(assert (=> bs!344381 m!1700751))

(assert (=> bs!344381 m!1696305))

(declare-fun m!1700753 () Bool)

(assert (=> bs!344381 m!1700753))

(assert (=> bs!344381 m!1696305))

(declare-fun m!1700755 () Bool)

(assert (=> bs!344381 m!1700755))

(declare-fun m!1700757 () Bool)

(assert (=> bs!344381 m!1700757))

(declare-fun m!1700759 () Bool)

(assert (=> bs!344381 m!1700759))

(assert (=> bs!344381 m!1696303))

(declare-fun m!1700761 () Bool)

(assert (=> bs!344381 m!1700761))

(declare-fun m!1700763 () Bool)

(assert (=> bs!344381 m!1700763))

(assert (=> bs!344381 m!1696303))

(declare-fun m!1700765 () Bool)

(assert (=> bs!344381 m!1700765))

(assert (=> bs!344381 m!1696305))

(assert (=> bs!344381 m!1700757))

(assert (=> bs!344381 m!1696305))

(declare-fun m!1700767 () Bool)

(assert (=> bs!344381 m!1700767))

(assert (=> bs!344381 m!1700757))

(assert (=> bs!344381 m!1696303))

(declare-fun m!1700769 () Bool)

(assert (=> bs!344381 m!1700769))

(declare-fun m!1700771 () Bool)

(assert (=> bs!344381 m!1700771))

(declare-fun m!1700773 () Bool)

(assert (=> bs!344381 m!1700773))

(assert (=> bs!344381 m!1696303))

(assert (=> bs!344381 m!1700771))

(assert (=> bs!344381 m!1696303))

(assert (=> bs!344381 m!1700749))

(assert (=> d!427718 d!428590))

(declare-fun d!428668 () Bool)

(declare-fun lt!506720 () C!8152)

(assert (=> d!428668 (= lt!506720 (apply!3960 (list!6075 (charsOf!1536 lt!504659)) 0))))

(assert (=> d!428668 (= lt!506720 (apply!3961 (c!240744 (charsOf!1536 lt!504659)) 0))))

(declare-fun e!933128 () Bool)

(assert (=> d!428668 e!933128))

(declare-fun res!662056 () Bool)

(assert (=> d!428668 (=> (not res!662056) (not e!933128))))

(assert (=> d!428668 (= res!662056 (<= 0 0))))

(assert (=> d!428668 (= (apply!3949 (charsOf!1536 lt!504659) 0) lt!506720)))

(declare-fun b!1462773 () Bool)

(assert (=> b!1462773 (= e!933128 (< 0 (size!12415 (charsOf!1536 lt!504659))))))

(assert (= (and d!428668 res!662056) b!1462773))

(assert (=> d!428668 m!1696295))

(declare-fun m!1700787 () Bool)

(assert (=> d!428668 m!1700787))

(assert (=> d!428668 m!1700787))

(declare-fun m!1700791 () Bool)

(assert (=> d!428668 m!1700791))

(declare-fun m!1700793 () Bool)

(assert (=> d!428668 m!1700793))

(assert (=> b!1462773 m!1696295))

(declare-fun m!1700797 () Bool)

(assert (=> b!1462773 m!1700797))

(assert (=> d!427718 d!428668))

(declare-fun d!428670 () Bool)

(declare-fun e!933129 () Bool)

(assert (=> d!428670 e!933129))

(declare-fun res!662057 () Bool)

(assert (=> d!428670 (=> (not res!662057) (not e!933129))))

(declare-fun lt!506721 () BalanceConc!10284)

(assert (=> d!428670 (= res!662057 (= (list!6075 lt!506721) (Cons!15172 (apply!3949 (charsOf!1536 lt!504659) 0) Nil!15172)))))

(assert (=> d!428670 (= lt!506721 (singleton!538 (apply!3949 (charsOf!1536 lt!504659) 0)))))

(assert (=> d!428670 (= (singletonSeq!1278 (apply!3949 (charsOf!1536 lt!504659) 0)) lt!506721)))

(declare-fun b!1462774 () Bool)

(assert (=> b!1462774 (= e!933129 (isBalanced!1553 (c!240744 lt!506721)))))

(assert (= (and d!428670 res!662057) b!1462774))

(declare-fun m!1700799 () Bool)

(assert (=> d!428670 m!1700799))

(assert (=> d!428670 m!1696297))

(declare-fun m!1700801 () Bool)

(assert (=> d!428670 m!1700801))

(declare-fun m!1700803 () Bool)

(assert (=> b!1462774 m!1700803))

(assert (=> d!427718 d!428670))

(declare-fun d!428674 () Bool)

(declare-fun lt!506739 () BalanceConc!10284)

(assert (=> d!428674 (= (list!6075 lt!506739) (originalCharacters!3535 lt!504659))))

(assert (=> d!428674 (= lt!506739 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 lt!504659))) (value!85828 lt!504659)))))

(assert (=> d!428674 (= (charsOf!1536 lt!504659) lt!506739)))

(declare-fun b_lambda!45645 () Bool)

(assert (=> (not b_lambda!45645) (not d!428674)))

(declare-fun tb!82493 () Bool)

(declare-fun t!134478 () Bool)

(assert (=> (and b!1461246 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32)))) (toChars!3843 (transformation!2673 (rule!4446 lt!504659)))) t!134478) tb!82493))

(declare-fun b!1462779 () Bool)

(declare-fun e!933132 () Bool)

(declare-fun tp!411644 () Bool)

(assert (=> b!1462779 (= e!933132 (and (inv!20288 (c!240744 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 lt!504659))) (value!85828 lt!504659)))) tp!411644))))

(declare-fun result!99126 () Bool)

(assert (=> tb!82493 (= result!99126 (and (inv!20289 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 lt!504659))) (value!85828 lt!504659))) e!933132))))

(assert (= tb!82493 b!1462779))

(declare-fun m!1700805 () Bool)

(assert (=> b!1462779 m!1700805))

(declare-fun m!1700807 () Bool)

(assert (=> tb!82493 m!1700807))

(assert (=> d!428674 t!134478))

(declare-fun b_and!99853 () Bool)

(assert (= b_and!99849 (and (=> t!134478 result!99126) b_and!99853)))

(declare-fun tb!82495 () Bool)

(declare-fun t!134480 () Bool)

(assert (=> (and b!1461252 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) (toChars!3843 (transformation!2673 (rule!4446 lt!504659)))) t!134480) tb!82495))

(declare-fun result!99128 () Bool)

(assert (= result!99128 result!99126))

(assert (=> d!428674 t!134480))

(declare-fun b_and!99855 () Bool)

(assert (= b_and!99851 (and (=> t!134480 result!99128) b_and!99855)))

(declare-fun m!1700809 () Bool)

(assert (=> d!428674 m!1700809))

(declare-fun m!1700811 () Bool)

(assert (=> d!428674 m!1700811))

(assert (=> d!427718 d!428674))

(declare-fun d!428676 () Bool)

(declare-fun lt!506814 () Unit!24235)

(declare-fun lemma!177 (List!15241 LexerInterface!2329 List!15241) Unit!24235)

(assert (=> d!428676 (= lt!506814 (lemma!177 (rules!11668 thiss!10022) Lexer!2327 (rules!11668 thiss!10022)))))

(declare-fun lambda!63318 () Int)

(declare-fun generalisedUnion!185 (List!15246) Regex!3987)

(declare-fun map!3299 (List!15241 Int) List!15246)

(assert (=> d!428676 (= (rulesRegex!410 Lexer!2327 (rules!11668 thiss!10022)) (generalisedUnion!185 (map!3299 (rules!11668 thiss!10022) lambda!63318)))))

(declare-fun bs!344383 () Bool)

(assert (= bs!344383 d!428676))

(declare-fun m!1700871 () Bool)

(assert (=> bs!344383 m!1700871))

(declare-fun m!1700873 () Bool)

(assert (=> bs!344383 m!1700873))

(assert (=> bs!344383 m!1700873))

(declare-fun m!1700875 () Bool)

(assert (=> bs!344383 m!1700875))

(assert (=> d!427718 d!428676))

(declare-fun b!1462795 () Bool)

(declare-fun e!933140 () List!15238)

(assert (=> b!1462795 (= e!933140 (Cons!15172 (h!20573 (t!134381 (printList!725 Lexer!2327 lt!504650))) (++!4081 (t!134381 (t!134381 (printList!725 Lexer!2327 lt!504650))) (printList!725 Lexer!2327 lt!504657))))))

(declare-fun b!1462797 () Bool)

(declare-fun lt!506815 () List!15238)

(declare-fun e!933141 () Bool)

(assert (=> b!1462797 (= e!933141 (or (not (= (printList!725 Lexer!2327 lt!504657) Nil!15172)) (= lt!506815 (t!134381 (printList!725 Lexer!2327 lt!504650)))))))

(declare-fun b!1462796 () Bool)

(declare-fun res!662062 () Bool)

(assert (=> b!1462796 (=> (not res!662062) (not e!933141))))

(assert (=> b!1462796 (= res!662062 (= (size!12411 lt!506815) (+ (size!12411 (t!134381 (printList!725 Lexer!2327 lt!504650))) (size!12411 (printList!725 Lexer!2327 lt!504657)))))))

(declare-fun b!1462794 () Bool)

(assert (=> b!1462794 (= e!933140 (printList!725 Lexer!2327 lt!504657))))

(declare-fun d!428682 () Bool)

(assert (=> d!428682 e!933141))

(declare-fun res!662063 () Bool)

(assert (=> d!428682 (=> (not res!662063) (not e!933141))))

(assert (=> d!428682 (= res!662063 (= (content!2242 lt!506815) ((_ map or) (content!2242 (t!134381 (printList!725 Lexer!2327 lt!504650))) (content!2242 (printList!725 Lexer!2327 lt!504657)))))))

(assert (=> d!428682 (= lt!506815 e!933140)))

(declare-fun c!241160 () Bool)

(assert (=> d!428682 (= c!241160 ((_ is Nil!15172) (t!134381 (printList!725 Lexer!2327 lt!504650))))))

(assert (=> d!428682 (= (++!4081 (t!134381 (printList!725 Lexer!2327 lt!504650)) (printList!725 Lexer!2327 lt!504657)) lt!506815)))

(assert (= (and d!428682 c!241160) b!1462794))

(assert (= (and d!428682 (not c!241160)) b!1462795))

(assert (= (and d!428682 res!662063) b!1462796))

(assert (= (and b!1462796 res!662062) b!1462797))

(assert (=> b!1462795 m!1695657))

(declare-fun m!1700877 () Bool)

(assert (=> b!1462795 m!1700877))

(declare-fun m!1700879 () Bool)

(assert (=> b!1462796 m!1700879))

(assert (=> b!1462796 m!1698153))

(assert (=> b!1462796 m!1695657))

(assert (=> b!1462796 m!1695823))

(declare-fun m!1700881 () Bool)

(assert (=> d!428682 m!1700881))

(assert (=> d!428682 m!1697799))

(assert (=> d!428682 m!1695657))

(assert (=> d!428682 m!1695829))

(assert (=> b!1460935 d!428682))

(declare-fun bs!344384 () Bool)

(declare-fun d!428684 () Bool)

(assert (= bs!344384 (and d!428684 d!428190)))

(declare-fun lambda!63319 () Int)

(assert (=> bs!344384 (= lambda!63319 lambda!63299)))

(declare-fun bs!344385 () Bool)

(assert (= bs!344385 (and d!428684 d!428106)))

(assert (=> bs!344385 (= lambda!63319 lambda!63297)))

(declare-fun bs!344386 () Bool)

(assert (= bs!344386 (and d!428684 d!428096)))

(assert (=> bs!344386 (= lambda!63319 lambda!63296)))

(declare-fun bs!344387 () Bool)

(assert (= bs!344387 (and d!428684 d!428178)))

(assert (=> bs!344387 (= lambda!63319 lambda!63298)))

(declare-fun bs!344388 () Bool)

(assert (= bs!344388 (and d!428684 d!427750)))

(assert (=> bs!344388 (= lambda!63319 lambda!63291)))

(declare-fun bs!344389 () Bool)

(assert (= bs!344389 (and d!428684 d!428414)))

(assert (=> bs!344389 (= (= (rules!11668 thiss!10022) (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))) (= lambda!63319 lambda!63312))))

(declare-fun b!1462802 () Bool)

(declare-fun e!933146 () Bool)

(assert (=> b!1462802 (= e!933146 true)))

(declare-fun b!1462801 () Bool)

(declare-fun e!933145 () Bool)

(assert (=> b!1462801 (= e!933145 e!933146)))

(declare-fun b!1462800 () Bool)

(declare-fun e!933144 () Bool)

(assert (=> b!1462800 (= e!933144 e!933145)))

(assert (=> d!428684 e!933144))

(assert (= b!1462801 b!1462802))

(assert (= b!1462800 b!1462801))

(assert (= (and d!428684 ((_ is Cons!15175) (rules!11668 thiss!10022))) b!1462800))

(assert (=> b!1462802 (< (dynLambda!6923 order!9145 (toValue!3984 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63319))))

(assert (=> b!1462802 (< (dynLambda!6925 order!9149 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63319))))

(assert (=> d!428684 true))

(declare-fun lt!506816 () Bool)

(assert (=> d!428684 (= lt!506816 (forall!3740 lt!504657 lambda!63319))))

(declare-fun e!933143 () Bool)

(assert (=> d!428684 (= lt!506816 e!933143)))

(declare-fun res!662065 () Bool)

(assert (=> d!428684 (=> res!662065 e!933143)))

(assert (=> d!428684 (= res!662065 (not ((_ is Cons!15174) lt!504657)))))

(assert (=> d!428684 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428684 (= (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!504657) lt!506816)))

(declare-fun b!1462798 () Bool)

(declare-fun e!933142 () Bool)

(assert (=> b!1462798 (= e!933143 e!933142)))

(declare-fun res!662064 () Bool)

(assert (=> b!1462798 (=> (not res!662064) (not e!933142))))

(assert (=> b!1462798 (= res!662064 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!504657)))))

(declare-fun b!1462799 () Bool)

(assert (=> b!1462799 (= e!933142 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (t!134383 lt!504657)))))

(assert (= (and d!428684 (not res!662065)) b!1462798))

(assert (= (and b!1462798 res!662064) b!1462799))

(declare-fun m!1700883 () Bool)

(assert (=> d!428684 m!1700883))

(assert (=> d!428684 m!1696087))

(declare-fun m!1700885 () Bool)

(assert (=> b!1462798 m!1700885))

(declare-fun m!1700887 () Bool)

(assert (=> b!1462799 m!1700887))

(assert (=> b!1461074 d!428684))

(assert (=> b!1461046 d!427870))

(assert (=> b!1461046 d!428150))

(assert (=> b!1461046 d!428152))

(assert (=> b!1461046 d!428154))

(assert (=> b!1461046 d!428156))

(declare-fun e!933148 () Bool)

(declare-fun b!1462806 () Bool)

(declare-fun lt!506817 () List!15240)

(assert (=> b!1462806 (= e!933148 (or (not (= lt!504657 Nil!15174)) (= lt!506817 (t!134383 lt!504650))))))

(declare-fun b!1462805 () Bool)

(declare-fun res!662067 () Bool)

(assert (=> b!1462805 (=> (not res!662067) (not e!933148))))

(assert (=> b!1462805 (= res!662067 (= (size!12414 lt!506817) (+ (size!12414 (t!134383 lt!504650)) (size!12414 lt!504657))))))

(declare-fun b!1462803 () Bool)

(declare-fun e!933147 () List!15240)

(assert (=> b!1462803 (= e!933147 lt!504657)))

(declare-fun d!428686 () Bool)

(assert (=> d!428686 e!933148))

(declare-fun res!662066 () Bool)

(assert (=> d!428686 (=> (not res!662066) (not e!933148))))

(assert (=> d!428686 (= res!662066 (= (content!2243 lt!506817) ((_ map or) (content!2243 (t!134383 lt!504650)) (content!2243 lt!504657))))))

(assert (=> d!428686 (= lt!506817 e!933147)))

(declare-fun c!241161 () Bool)

(assert (=> d!428686 (= c!241161 ((_ is Nil!15174) (t!134383 lt!504650)))))

(assert (=> d!428686 (= (++!4080 (t!134383 lt!504650) lt!504657) lt!506817)))

(declare-fun b!1462804 () Bool)

(assert (=> b!1462804 (= e!933147 (Cons!15174 (h!20575 (t!134383 lt!504650)) (++!4080 (t!134383 (t!134383 lt!504650)) lt!504657)))))

(assert (= (and d!428686 c!241161) b!1462803))

(assert (= (and d!428686 (not c!241161)) b!1462804))

(assert (= (and d!428686 res!662066) b!1462805))

(assert (= (and b!1462805 res!662067) b!1462806))

(declare-fun m!1700889 () Bool)

(assert (=> b!1462805 m!1700889))

(assert (=> b!1462805 m!1698353))

(assert (=> b!1462805 m!1696401))

(declare-fun m!1700891 () Bool)

(assert (=> d!428686 m!1700891))

(assert (=> d!428686 m!1697843))

(assert (=> d!428686 m!1696407))

(declare-fun m!1700897 () Bool)

(assert (=> b!1462804 m!1700897))

(assert (=> b!1461085 d!428686))

(declare-fun b!1462807 () Bool)

(declare-fun res!662068 () Bool)

(declare-fun e!933150 () Bool)

(assert (=> b!1462807 (=> (not res!662068) (not e!933150))))

(assert (=> b!1462807 (= res!662068 (not (isEmpty!9526 (left!12896 (c!240746 (tokens!2100 other!32))))))))

(declare-fun b!1462808 () Bool)

(declare-fun res!662070 () Bool)

(assert (=> b!1462808 (=> (not res!662070) (not e!933150))))

(assert (=> b!1462808 (= res!662070 (isBalanced!1550 (left!12896 (c!240746 (tokens!2100 other!32)))))))

(declare-fun b!1462809 () Bool)

(declare-fun e!933149 () Bool)

(assert (=> b!1462809 (= e!933149 e!933150)))

(declare-fun res!662072 () Bool)

(assert (=> b!1462809 (=> (not res!662072) (not e!933150))))

(assert (=> b!1462809 (= res!662072 (<= (- 1) (- (height!774 (left!12896 (c!240746 (tokens!2100 other!32)))) (height!774 (right!13226 (c!240746 (tokens!2100 other!32)))))))))

(declare-fun b!1462810 () Bool)

(assert (=> b!1462810 (= e!933150 (not (isEmpty!9526 (right!13226 (c!240746 (tokens!2100 other!32))))))))

(declare-fun b!1462811 () Bool)

(declare-fun res!662073 () Bool)

(assert (=> b!1462811 (=> (not res!662073) (not e!933150))))

(assert (=> b!1462811 (= res!662073 (isBalanced!1550 (right!13226 (c!240746 (tokens!2100 other!32)))))))

(declare-fun d!428688 () Bool)

(declare-fun res!662071 () Bool)

(assert (=> d!428688 (=> res!662071 e!933149)))

(assert (=> d!428688 (= res!662071 (not ((_ is Node!5173) (c!240746 (tokens!2100 other!32)))))))

(assert (=> d!428688 (= (isBalanced!1550 (c!240746 (tokens!2100 other!32))) e!933149)))

(declare-fun b!1462812 () Bool)

(declare-fun res!662069 () Bool)

(assert (=> b!1462812 (=> (not res!662069) (not e!933150))))

(assert (=> b!1462812 (= res!662069 (<= (- (height!774 (left!12896 (c!240746 (tokens!2100 other!32)))) (height!774 (right!13226 (c!240746 (tokens!2100 other!32))))) 1))))

(assert (= (and d!428688 (not res!662071)) b!1462809))

(assert (= (and b!1462809 res!662072) b!1462812))

(assert (= (and b!1462812 res!662069) b!1462808))

(assert (= (and b!1462808 res!662070) b!1462811))

(assert (= (and b!1462811 res!662073) b!1462807))

(assert (= (and b!1462807 res!662068) b!1462810))

(declare-fun m!1700923 () Bool)

(assert (=> b!1462812 m!1700923))

(declare-fun m!1700927 () Bool)

(assert (=> b!1462812 m!1700927))

(declare-fun m!1700929 () Bool)

(assert (=> b!1462810 m!1700929))

(assert (=> b!1462809 m!1700923))

(assert (=> b!1462809 m!1700927))

(declare-fun m!1700931 () Bool)

(assert (=> b!1462807 m!1700931))

(declare-fun m!1700933 () Bool)

(assert (=> b!1462808 m!1700933))

(declare-fun m!1700937 () Bool)

(assert (=> b!1462811 m!1700937))

(assert (=> d!427658 d!428688))

(assert (=> b!1460900 d!428412))

(declare-fun b!1462813 () Bool)

(declare-fun e!933152 () Bool)

(declare-fun e!933153 () Bool)

(assert (=> b!1462813 (= e!933152 e!933153)))

(declare-fun res!662077 () Bool)

(assert (=> b!1462813 (=> (not res!662077) (not e!933153))))

(assert (=> b!1462813 (= res!662077 ((_ is Cons!15174) lt!505087))))

(declare-fun b!1462815 () Bool)

(declare-fun e!933154 () Bool)

(assert (=> b!1462815 (= e!933154 (subseq!367 (t!134383 lt!505090) (t!134383 lt!505087)))))

(declare-fun d!428690 () Bool)

(declare-fun res!662074 () Bool)

(assert (=> d!428690 (=> res!662074 e!933152)))

(assert (=> d!428690 (= res!662074 ((_ is Nil!15174) lt!505090))))

(assert (=> d!428690 (= (subseq!367 lt!505090 lt!505087) e!933152)))

(declare-fun b!1462814 () Bool)

(declare-fun e!933151 () Bool)

(assert (=> b!1462814 (= e!933153 e!933151)))

(declare-fun res!662075 () Bool)

(assert (=> b!1462814 (=> res!662075 e!933151)))

(assert (=> b!1462814 (= res!662075 e!933154)))

(declare-fun res!662076 () Bool)

(assert (=> b!1462814 (=> (not res!662076) (not e!933154))))

(assert (=> b!1462814 (= res!662076 (= (h!20575 lt!505090) (h!20575 lt!505087)))))

(declare-fun b!1462816 () Bool)

(assert (=> b!1462816 (= e!933151 (subseq!367 lt!505090 (t!134383 lt!505087)))))

(assert (= (and d!428690 (not res!662074)) b!1462813))

(assert (= (and b!1462813 res!662077) b!1462814))

(assert (= (and b!1462814 res!662076) b!1462815))

(assert (= (and b!1462814 (not res!662075)) b!1462816))

(declare-fun m!1700959 () Bool)

(assert (=> b!1462815 m!1700959))

(declare-fun m!1700963 () Bool)

(assert (=> b!1462816 m!1700963))

(assert (=> b!1461120 d!428690))

(declare-fun d!428692 () Bool)

(assert (=> d!428692 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656))))) (list!6077 (c!240746 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504656)))))))))

(declare-fun bs!344390 () Bool)

(assert (= bs!344390 d!428692))

(declare-fun m!1700973 () Bool)

(assert (=> bs!344390 m!1700973))

(assert (=> d!427728 d!428692))

(declare-fun d!428694 () Bool)

(declare-fun lt!506818 () Int)

(assert (=> d!428694 (= lt!506818 (size!12414 (list!6073 (_1!8008 lt!504957))))))

(assert (=> d!428694 (= lt!506818 (size!12417 (c!240746 (_1!8008 lt!504957))))))

(assert (=> d!428694 (= (size!12413 (_1!8008 lt!504957)) lt!506818)))

(declare-fun bs!344391 () Bool)

(assert (= bs!344391 d!428694))

(declare-fun m!1700981 () Bool)

(assert (=> bs!344391 m!1700981))

(assert (=> bs!344391 m!1700981))

(declare-fun m!1700985 () Bool)

(assert (=> bs!344391 m!1700985))

(declare-fun m!1700989 () Bool)

(assert (=> bs!344391 m!1700989))

(assert (=> d!427728 d!428694))

(assert (=> d!427728 d!428160))

(declare-fun d!428696 () Bool)

(assert (=> d!428696 (= (list!6073 (singletonSeq!1277 lt!504656)) (list!6077 (c!240746 (singletonSeq!1277 lt!504656))))))

(declare-fun bs!344392 () Bool)

(assert (= bs!344392 d!428696))

(declare-fun m!1700993 () Bool)

(assert (=> bs!344392 m!1700993))

(assert (=> d!427728 d!428696))

(assert (=> d!427728 d!428162))

(assert (=> d!427728 d!427986))

(assert (=> d!427728 d!428164))

(assert (=> b!1460902 d!428180))

(declare-fun d!428698 () Bool)

(assert (=> d!428698 (= (list!6075 lt!504912) (list!6081 (c!240744 lt!504912)))))

(declare-fun bs!344393 () Bool)

(assert (= bs!344393 d!428698))

(declare-fun m!1700999 () Bool)

(assert (=> bs!344393 m!1700999))

(assert (=> d!427702 d!428698))

(declare-fun d!428700 () Bool)

(declare-fun c!241162 () Bool)

(assert (=> d!428700 (= c!241162 ((_ is Cons!15174) (list!6073 (tokens!2100 other!32))))))

(declare-fun e!933155 () List!15238)

(assert (=> d!428700 (= (printList!725 Lexer!2327 (list!6073 (tokens!2100 other!32))) e!933155)))

(declare-fun b!1462817 () Bool)

(assert (=> b!1462817 (= e!933155 (++!4081 (list!6075 (charsOf!1536 (h!20575 (list!6073 (tokens!2100 other!32))))) (printList!725 Lexer!2327 (t!134383 (list!6073 (tokens!2100 other!32))))))))

(declare-fun b!1462818 () Bool)

(assert (=> b!1462818 (= e!933155 Nil!15172)))

(assert (= (and d!428700 c!241162) b!1462817))

(assert (= (and d!428700 (not c!241162)) b!1462818))

(assert (=> b!1462817 m!1697161))

(assert (=> b!1462817 m!1697161))

(assert (=> b!1462817 m!1697109))

(declare-fun m!1701019 () Bool)

(assert (=> b!1462817 m!1701019))

(assert (=> b!1462817 m!1697109))

(assert (=> b!1462817 m!1701019))

(declare-fun m!1701025 () Bool)

(assert (=> b!1462817 m!1701025))

(assert (=> d!427702 d!428700))

(assert (=> d!427702 d!427720))

(declare-fun d!428702 () Bool)

(declare-fun lt!506824 () BalanceConc!10284)

(assert (=> d!428702 (= (list!6075 lt!506824) (printListTailRec!291 Lexer!2327 (dropList!480 (tokens!2100 other!32) 0) (list!6075 (BalanceConc!10285 Empty!5172))))))

(declare-fun e!933157 () BalanceConc!10284)

(assert (=> d!428702 (= lt!506824 e!933157)))

(declare-fun c!241163 () Bool)

(assert (=> d!428702 (= c!241163 (>= 0 (size!12413 (tokens!2100 other!32))))))

(declare-fun e!933156 () Bool)

(assert (=> d!428702 e!933156))

(declare-fun res!662078 () Bool)

(assert (=> d!428702 (=> (not res!662078) (not e!933156))))

(assert (=> d!428702 (= res!662078 (>= 0 0))))

(assert (=> d!428702 (= (printTailRec!697 Lexer!2327 (tokens!2100 other!32) 0 (BalanceConc!10285 Empty!5172)) lt!506824)))

(declare-fun b!1462819 () Bool)

(assert (=> b!1462819 (= e!933156 (<= 0 (size!12413 (tokens!2100 other!32))))))

(declare-fun b!1462820 () Bool)

(assert (=> b!1462820 (= e!933157 (BalanceConc!10285 Empty!5172))))

(declare-fun b!1462821 () Bool)

(assert (=> b!1462821 (= e!933157 (printTailRec!697 Lexer!2327 (tokens!2100 other!32) (+ 0 1) (++!4084 (BalanceConc!10285 Empty!5172) (charsOf!1536 (apply!3952 (tokens!2100 other!32) 0)))))))

(declare-fun lt!506820 () List!15240)

(assert (=> b!1462821 (= lt!506820 (list!6073 (tokens!2100 other!32)))))

(declare-fun lt!506821 () Unit!24235)

(assert (=> b!1462821 (= lt!506821 (lemmaDropApply!494 lt!506820 0))))

(assert (=> b!1462821 (= (head!3012 (drop!744 lt!506820 0)) (apply!3953 lt!506820 0))))

(declare-fun lt!506825 () Unit!24235)

(assert (=> b!1462821 (= lt!506825 lt!506821)))

(declare-fun lt!506823 () List!15240)

(assert (=> b!1462821 (= lt!506823 (list!6073 (tokens!2100 other!32)))))

(declare-fun lt!506822 () Unit!24235)

(assert (=> b!1462821 (= lt!506822 (lemmaDropTail!474 lt!506823 0))))

(assert (=> b!1462821 (= (tail!2174 (drop!744 lt!506823 0)) (drop!744 lt!506823 (+ 0 1)))))

(declare-fun lt!506819 () Unit!24235)

(assert (=> b!1462821 (= lt!506819 lt!506822)))

(assert (= (and d!428702 res!662078) b!1462819))

(assert (= (and d!428702 c!241163) b!1462820))

(assert (= (and d!428702 (not c!241163)) b!1462821))

(declare-fun m!1701039 () Bool)

(assert (=> d!428702 m!1701039))

(declare-fun m!1701041 () Bool)

(assert (=> d!428702 m!1701041))

(assert (=> d!428702 m!1698367))

(declare-fun m!1701043 () Bool)

(assert (=> d!428702 m!1701043))

(assert (=> d!428702 m!1698367))

(declare-fun m!1701045 () Bool)

(assert (=> d!428702 m!1701045))

(assert (=> d!428702 m!1701041))

(assert (=> b!1462819 m!1701045))

(declare-fun m!1701047 () Bool)

(assert (=> b!1462821 m!1701047))

(declare-fun m!1701049 () Bool)

(assert (=> b!1462821 m!1701049))

(declare-fun m!1701051 () Bool)

(assert (=> b!1462821 m!1701051))

(declare-fun m!1701053 () Bool)

(assert (=> b!1462821 m!1701053))

(declare-fun m!1701057 () Bool)

(assert (=> b!1462821 m!1701057))

(declare-fun m!1701061 () Bool)

(assert (=> b!1462821 m!1701061))

(declare-fun m!1701063 () Bool)

(assert (=> b!1462821 m!1701063))

(declare-fun m!1701065 () Bool)

(assert (=> b!1462821 m!1701065))

(declare-fun m!1701067 () Bool)

(assert (=> b!1462821 m!1701067))

(assert (=> b!1462821 m!1701063))

(assert (=> b!1462821 m!1701047))

(assert (=> b!1462821 m!1701061))

(declare-fun m!1701071 () Bool)

(assert (=> b!1462821 m!1701071))

(declare-fun m!1701073 () Bool)

(assert (=> b!1462821 m!1701073))

(assert (=> b!1462821 m!1695651))

(assert (=> b!1462821 m!1701071))

(declare-fun m!1701077 () Bool)

(assert (=> b!1462821 m!1701077))

(assert (=> b!1462821 m!1701065))

(assert (=> d!427702 d!428702))

(assert (=> d!427730 d!427732))

(declare-fun d!428708 () Bool)

(assert (=> d!428708 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!504659)))

(assert (=> d!428708 true))

(declare-fun _$77!621 () Unit!24235)

(assert (=> d!428708 (= (choose!8982 Lexer!2327 (rules!11668 thiss!10022) lt!504657 lt!504659) _$77!621)))

(declare-fun bs!344409 () Bool)

(assert (= bs!344409 d!428708))

(assert (=> bs!344409 m!1695653))

(assert (=> d!427730 d!428708))

(assert (=> d!427730 d!427986))

(declare-fun d!428736 () Bool)

(declare-fun lt!506863 () Bool)

(assert (=> d!428736 (= lt!506863 (isEmpty!9527 (list!6075 (_2!8008 lt!504957))))))

(assert (=> d!428736 (= lt!506863 (isEmpty!9531 (c!240744 (_2!8008 lt!504957))))))

(assert (=> d!428736 (= (isEmpty!9529 (_2!8008 lt!504957)) lt!506863)))

(declare-fun bs!344410 () Bool)

(assert (= bs!344410 d!428736))

(declare-fun m!1701289 () Bool)

(assert (=> bs!344410 m!1701289))

(assert (=> bs!344410 m!1701289))

(declare-fun m!1701291 () Bool)

(assert (=> bs!344410 m!1701291))

(declare-fun m!1701293 () Bool)

(assert (=> bs!344410 m!1701293))

(assert (=> b!1461032 d!428736))

(declare-fun bs!344411 () Bool)

(declare-fun d!428738 () Bool)

(assert (= bs!344411 (and d!428738 d!428684)))

(declare-fun lambda!63321 () Int)

(assert (=> bs!344411 (= (= (rules!11668 other!32) (rules!11668 thiss!10022)) (= lambda!63321 lambda!63319))))

(declare-fun bs!344412 () Bool)

(assert (= bs!344412 (and d!428738 d!428190)))

(assert (=> bs!344412 (= (= (rules!11668 other!32) (rules!11668 thiss!10022)) (= lambda!63321 lambda!63299))))

(declare-fun bs!344413 () Bool)

(assert (= bs!344413 (and d!428738 d!428106)))

(assert (=> bs!344413 (= (= (rules!11668 other!32) (rules!11668 thiss!10022)) (= lambda!63321 lambda!63297))))

(declare-fun bs!344414 () Bool)

(assert (= bs!344414 (and d!428738 d!428096)))

(assert (=> bs!344414 (= (= (rules!11668 other!32) (rules!11668 thiss!10022)) (= lambda!63321 lambda!63296))))

(declare-fun bs!344415 () Bool)

(assert (= bs!344415 (and d!428738 d!428178)))

(assert (=> bs!344415 (= (= (rules!11668 other!32) (rules!11668 thiss!10022)) (= lambda!63321 lambda!63298))))

(declare-fun bs!344416 () Bool)

(assert (= bs!344416 (and d!428738 d!427750)))

(assert (=> bs!344416 (= (= (rules!11668 other!32) (rules!11668 thiss!10022)) (= lambda!63321 lambda!63291))))

(declare-fun bs!344417 () Bool)

(assert (= bs!344417 (and d!428738 d!428414)))

(assert (=> bs!344417 (= (= (rules!11668 other!32) (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))) (= lambda!63321 lambda!63312))))

(declare-fun b!1462931 () Bool)

(declare-fun e!933230 () Bool)

(assert (=> b!1462931 (= e!933230 true)))

(declare-fun b!1462930 () Bool)

(declare-fun e!933229 () Bool)

(assert (=> b!1462930 (= e!933229 e!933230)))

(declare-fun b!1462929 () Bool)

(declare-fun e!933228 () Bool)

(assert (=> b!1462929 (= e!933228 e!933229)))

(assert (=> d!428738 e!933228))

(assert (= b!1462930 b!1462931))

(assert (= b!1462929 b!1462930))

(assert (= (and d!428738 ((_ is Cons!15175) (rules!11668 other!32))) b!1462929))

(assert (=> b!1462931 (< (dynLambda!6923 order!9145 (toValue!3984 (transformation!2673 (h!20576 (rules!11668 other!32))))) (dynLambda!6924 order!9147 lambda!63321))))

(assert (=> b!1462931 (< (dynLambda!6925 order!9149 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32))))) (dynLambda!6924 order!9147 lambda!63321))))

(assert (=> d!428738 true))

(declare-fun e!933227 () Bool)

(assert (=> d!428738 e!933227))

(declare-fun res!662120 () Bool)

(assert (=> d!428738 (=> (not res!662120) (not e!933227))))

(declare-fun lt!506864 () Bool)

(assert (=> d!428738 (= res!662120 (= lt!506864 (forall!3740 (list!6073 (tokens!2100 other!32)) lambda!63321)))))

(assert (=> d!428738 (= lt!506864 (forall!3742 (tokens!2100 other!32) lambda!63321))))

(assert (=> d!428738 (not (isEmpty!9528 (rules!11668 other!32)))))

(assert (=> d!428738 (= (rulesProduceEachTokenIndividually!879 Lexer!2327 (rules!11668 other!32) (tokens!2100 other!32)) lt!506864)))

(declare-fun b!1462928 () Bool)

(assert (=> b!1462928 (= e!933227 (= lt!506864 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 other!32) (list!6073 (tokens!2100 other!32)))))))

(assert (= (and d!428738 res!662120) b!1462928))

(assert (=> d!428738 m!1695651))

(assert (=> d!428738 m!1695651))

(declare-fun m!1701295 () Bool)

(assert (=> d!428738 m!1701295))

(declare-fun m!1701297 () Bool)

(assert (=> d!428738 m!1701297))

(assert (=> d!428738 m!1696191))

(assert (=> b!1462928 m!1695651))

(assert (=> b!1462928 m!1695651))

(declare-fun m!1701299 () Bool)

(assert (=> b!1462928 m!1701299))

(assert (=> b!1461217 d!428738))

(declare-fun b!1462933 () Bool)

(declare-fun e!933231 () List!15238)

(assert (=> b!1462933 (= e!933231 (Cons!15172 (h!20573 (list!6075 (charsOf!1536 (h!20575 lt!504655)))) (++!4081 (t!134381 (list!6075 (charsOf!1536 (h!20575 lt!504655)))) (printList!725 Lexer!2327 (t!134383 lt!504655)))))))

(declare-fun b!1462935 () Bool)

(declare-fun e!933232 () Bool)

(declare-fun lt!506865 () List!15238)

(assert (=> b!1462935 (= e!933232 (or (not (= (printList!725 Lexer!2327 (t!134383 lt!504655)) Nil!15172)) (= lt!506865 (list!6075 (charsOf!1536 (h!20575 lt!504655))))))))

(declare-fun b!1462934 () Bool)

(declare-fun res!662121 () Bool)

(assert (=> b!1462934 (=> (not res!662121) (not e!933232))))

(assert (=> b!1462934 (= res!662121 (= (size!12411 lt!506865) (+ (size!12411 (list!6075 (charsOf!1536 (h!20575 lt!504655)))) (size!12411 (printList!725 Lexer!2327 (t!134383 lt!504655))))))))

(declare-fun b!1462932 () Bool)

(assert (=> b!1462932 (= e!933231 (printList!725 Lexer!2327 (t!134383 lt!504655)))))

(declare-fun d!428740 () Bool)

(assert (=> d!428740 e!933232))

(declare-fun res!662122 () Bool)

(assert (=> d!428740 (=> (not res!662122) (not e!933232))))

(assert (=> d!428740 (= res!662122 (= (content!2242 lt!506865) ((_ map or) (content!2242 (list!6075 (charsOf!1536 (h!20575 lt!504655)))) (content!2242 (printList!725 Lexer!2327 (t!134383 lt!504655))))))))

(assert (=> d!428740 (= lt!506865 e!933231)))

(declare-fun c!241166 () Bool)

(assert (=> d!428740 (= c!241166 ((_ is Nil!15172) (list!6075 (charsOf!1536 (h!20575 lt!504655)))))))

(assert (=> d!428740 (= (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504655))) (printList!725 Lexer!2327 (t!134383 lt!504655))) lt!506865)))

(assert (= (and d!428740 c!241166) b!1462932))

(assert (= (and d!428740 (not c!241166)) b!1462933))

(assert (= (and d!428740 res!662122) b!1462934))

(assert (= (and b!1462934 res!662121) b!1462935))

(assert (=> b!1462933 m!1695771))

(declare-fun m!1701301 () Bool)

(assert (=> b!1462933 m!1701301))

(declare-fun m!1701303 () Bool)

(assert (=> b!1462934 m!1701303))

(assert (=> b!1462934 m!1695769))

(declare-fun m!1701305 () Bool)

(assert (=> b!1462934 m!1701305))

(assert (=> b!1462934 m!1695771))

(declare-fun m!1701307 () Bool)

(assert (=> b!1462934 m!1701307))

(declare-fun m!1701309 () Bool)

(assert (=> d!428740 m!1701309))

(assert (=> d!428740 m!1695769))

(declare-fun m!1701311 () Bool)

(assert (=> d!428740 m!1701311))

(assert (=> d!428740 m!1695771))

(declare-fun m!1701313 () Bool)

(assert (=> d!428740 m!1701313))

(assert (=> b!1460907 d!428740))

(declare-fun d!428742 () Bool)

(assert (=> d!428742 (= (list!6075 (charsOf!1536 (h!20575 lt!504655))) (list!6081 (c!240744 (charsOf!1536 (h!20575 lt!504655)))))))

(declare-fun bs!344418 () Bool)

(assert (= bs!344418 d!428742))

(declare-fun m!1701315 () Bool)

(assert (=> bs!344418 m!1701315))

(assert (=> b!1460907 d!428742))

(declare-fun d!428744 () Bool)

(declare-fun lt!506866 () BalanceConc!10284)

(assert (=> d!428744 (= (list!6075 lt!506866) (originalCharacters!3535 (h!20575 lt!504655)))))

(assert (=> d!428744 (= lt!506866 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504655)))) (value!85828 (h!20575 lt!504655))))))

(assert (=> d!428744 (= (charsOf!1536 (h!20575 lt!504655)) lt!506866)))

(declare-fun b_lambda!45651 () Bool)

(assert (=> (not b_lambda!45651) (not d!428744)))

(declare-fun t!134562 () Bool)

(declare-fun tb!82573 () Bool)

(assert (=> (and b!1461246 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 other!32)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504655))))) t!134562) tb!82573))

(declare-fun b!1462936 () Bool)

(declare-fun e!933233 () Bool)

(declare-fun tp!411706 () Bool)

(assert (=> b!1462936 (= e!933233 (and (inv!20288 (c!240744 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504655)))) (value!85828 (h!20575 lt!504655))))) tp!411706))))

(declare-fun result!99210 () Bool)

(assert (=> tb!82573 (= result!99210 (and (inv!20289 (dynLambda!6927 (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504655)))) (value!85828 (h!20575 lt!504655)))) e!933233))))

(assert (= tb!82573 b!1462936))

(declare-fun m!1701317 () Bool)

(assert (=> b!1462936 m!1701317))

(declare-fun m!1701319 () Bool)

(assert (=> tb!82573 m!1701319))

(assert (=> d!428744 t!134562))

(declare-fun b_and!99877 () Bool)

(assert (= b_and!99853 (and (=> t!134562 result!99210) b_and!99877)))

(declare-fun t!134564 () Bool)

(declare-fun tb!82575 () Bool)

(assert (=> (and b!1461252 (= (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022)))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504655))))) t!134564) tb!82575))

(declare-fun result!99212 () Bool)

(assert (= result!99212 result!99210))

(assert (=> d!428744 t!134564))

(declare-fun b_and!99879 () Bool)

(assert (= b_and!99855 (and (=> t!134564 result!99212) b_and!99879)))

(declare-fun m!1701321 () Bool)

(assert (=> d!428744 m!1701321))

(declare-fun m!1701323 () Bool)

(assert (=> d!428744 m!1701323))

(assert (=> b!1460907 d!428744))

(declare-fun d!428746 () Bool)

(declare-fun c!241167 () Bool)

(assert (=> d!428746 (= c!241167 ((_ is Cons!15174) (t!134383 lt!504655)))))

(declare-fun e!933234 () List!15238)

(assert (=> d!428746 (= (printList!725 Lexer!2327 (t!134383 lt!504655)) e!933234)))

(declare-fun b!1462937 () Bool)

(assert (=> b!1462937 (= e!933234 (++!4081 (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504655)))) (printList!725 Lexer!2327 (t!134383 (t!134383 lt!504655)))))))

(declare-fun b!1462938 () Bool)

(assert (=> b!1462938 (= e!933234 Nil!15172)))

(assert (= (and d!428746 c!241167) b!1462937))

(assert (= (and d!428746 (not c!241167)) b!1462938))

(assert (=> b!1462937 m!1696689))

(assert (=> b!1462937 m!1696689))

(assert (=> b!1462937 m!1697873))

(declare-fun m!1701325 () Bool)

(assert (=> b!1462937 m!1701325))

(assert (=> b!1462937 m!1697873))

(assert (=> b!1462937 m!1701325))

(declare-fun m!1701327 () Bool)

(assert (=> b!1462937 m!1701327))

(assert (=> b!1460907 d!428746))

(assert (=> b!1461195 d!428042))

(declare-fun d!428748 () Bool)

(declare-fun c!241168 () Bool)

(assert (=> d!428748 (= c!241168 ((_ is Node!5173) (left!12896 (c!240746 (tokens!2100 thiss!10022)))))))

(declare-fun e!933235 () Bool)

(assert (=> d!428748 (= (inv!20275 (left!12896 (c!240746 (tokens!2100 thiss!10022)))) e!933235)))

(declare-fun b!1462939 () Bool)

(assert (=> b!1462939 (= e!933235 (inv!20280 (left!12896 (c!240746 (tokens!2100 thiss!10022)))))))

(declare-fun b!1462940 () Bool)

(declare-fun e!933236 () Bool)

(assert (=> b!1462940 (= e!933235 e!933236)))

(declare-fun res!662123 () Bool)

(assert (=> b!1462940 (= res!662123 (not ((_ is Leaf!7711) (left!12896 (c!240746 (tokens!2100 thiss!10022))))))))

(assert (=> b!1462940 (=> res!662123 e!933236)))

(declare-fun b!1462941 () Bool)

(assert (=> b!1462941 (= e!933236 (inv!20281 (left!12896 (c!240746 (tokens!2100 thiss!10022)))))))

(assert (= (and d!428748 c!241168) b!1462939))

(assert (= (and d!428748 (not c!241168)) b!1462940))

(assert (= (and b!1462940 (not res!662123)) b!1462941))

(declare-fun m!1701329 () Bool)

(assert (=> b!1462939 m!1701329))

(declare-fun m!1701331 () Bool)

(assert (=> b!1462941 m!1701331))

(assert (=> b!1461247 d!428748))

(declare-fun d!428750 () Bool)

(declare-fun c!241169 () Bool)

(assert (=> d!428750 (= c!241169 ((_ is Node!5173) (right!13226 (c!240746 (tokens!2100 thiss!10022)))))))

(declare-fun e!933237 () Bool)

(assert (=> d!428750 (= (inv!20275 (right!13226 (c!240746 (tokens!2100 thiss!10022)))) e!933237)))

(declare-fun b!1462942 () Bool)

(assert (=> b!1462942 (= e!933237 (inv!20280 (right!13226 (c!240746 (tokens!2100 thiss!10022)))))))

(declare-fun b!1462943 () Bool)

(declare-fun e!933238 () Bool)

(assert (=> b!1462943 (= e!933237 e!933238)))

(declare-fun res!662124 () Bool)

(assert (=> b!1462943 (= res!662124 (not ((_ is Leaf!7711) (right!13226 (c!240746 (tokens!2100 thiss!10022))))))))

(assert (=> b!1462943 (=> res!662124 e!933238)))

(declare-fun b!1462944 () Bool)

(assert (=> b!1462944 (= e!933238 (inv!20281 (right!13226 (c!240746 (tokens!2100 thiss!10022)))))))

(assert (= (and d!428750 c!241169) b!1462942))

(assert (= (and d!428750 (not c!241169)) b!1462943))

(assert (= (and b!1462943 (not res!662124)) b!1462944))

(declare-fun m!1701333 () Bool)

(assert (=> b!1462942 m!1701333))

(declare-fun m!1701335 () Bool)

(assert (=> b!1462944 m!1701335))

(assert (=> b!1461247 d!428750))

(assert (=> b!1461116 d!427986))

(declare-fun d!428752 () Bool)

(declare-fun res!662125 () Bool)

(declare-fun e!933239 () Bool)

(assert (=> d!428752 (=> (not res!662125) (not e!933239))))

(assert (=> d!428752 (= res!662125 (<= (size!12414 (list!6079 (xs!7920 (c!240746 (tokens!2100 thiss!10022))))) 512))))

(assert (=> d!428752 (= (inv!20281 (c!240746 (tokens!2100 thiss!10022))) e!933239)))

(declare-fun b!1462945 () Bool)

(declare-fun res!662126 () Bool)

(assert (=> b!1462945 (=> (not res!662126) (not e!933239))))

(assert (=> b!1462945 (= res!662126 (= (csize!10577 (c!240746 (tokens!2100 thiss!10022))) (size!12414 (list!6079 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))))

(declare-fun b!1462946 () Bool)

(assert (=> b!1462946 (= e!933239 (and (> (csize!10577 (c!240746 (tokens!2100 thiss!10022))) 0) (<= (csize!10577 (c!240746 (tokens!2100 thiss!10022))) 512)))))

(assert (= (and d!428752 res!662125) b!1462945))

(assert (= (and b!1462945 res!662126) b!1462946))

(declare-fun m!1701337 () Bool)

(assert (=> d!428752 m!1701337))

(assert (=> d!428752 m!1701337))

(declare-fun m!1701339 () Bool)

(assert (=> d!428752 m!1701339))

(assert (=> b!1462945 m!1701337))

(assert (=> b!1462945 m!1701337))

(assert (=> b!1462945 m!1701339))

(assert (=> b!1461212 d!428752))

(declare-fun d!428754 () Bool)

(assert (=> d!428754 (= (printList!725 Lexer!2327 (++!4080 lt!504650 lt!504657)) (++!4081 (printList!725 Lexer!2327 lt!504650) (printList!725 Lexer!2327 lt!504657)))))

(assert (=> d!428754 true))

(declare-fun _$40!329 () Unit!24235)

(assert (=> d!428754 (= (choose!8978 Lexer!2327 lt!504650 lt!504657) _$40!329)))

(declare-fun bs!344419 () Bool)

(assert (= bs!344419 d!428754))

(assert (=> bs!344419 m!1695693))

(assert (=> bs!344419 m!1695657))

(assert (=> bs!344419 m!1695693))

(assert (=> bs!344419 m!1695765))

(assert (=> bs!344419 m!1695655))

(assert (=> bs!344419 m!1695657))

(assert (=> bs!344419 m!1695659))

(assert (=> bs!344419 m!1695655))

(assert (=> d!427660 d!428754))

(assert (=> d!427660 d!427670))

(assert (=> d!427660 d!427672))

(assert (=> d!427660 d!427744))

(declare-fun d!428756 () Bool)

(declare-fun c!241170 () Bool)

(assert (=> d!428756 (= c!241170 ((_ is Cons!15174) (++!4080 lt!504650 lt!504657)))))

(declare-fun e!933240 () List!15238)

(assert (=> d!428756 (= (printList!725 Lexer!2327 (++!4080 lt!504650 lt!504657)) e!933240)))

(declare-fun b!1462947 () Bool)

(assert (=> b!1462947 (= e!933240 (++!4081 (list!6075 (charsOf!1536 (h!20575 (++!4080 lt!504650 lt!504657)))) (printList!725 Lexer!2327 (t!134383 (++!4080 lt!504650 lt!504657)))))))

(declare-fun b!1462948 () Bool)

(assert (=> b!1462948 (= e!933240 Nil!15172)))

(assert (= (and d!428756 c!241170) b!1462947))

(assert (= (and d!428756 (not c!241170)) b!1462948))

(declare-fun m!1701341 () Bool)

(assert (=> b!1462947 m!1701341))

(assert (=> b!1462947 m!1701341))

(declare-fun m!1701343 () Bool)

(assert (=> b!1462947 m!1701343))

(declare-fun m!1701345 () Bool)

(assert (=> b!1462947 m!1701345))

(assert (=> b!1462947 m!1701343))

(assert (=> b!1462947 m!1701345))

(declare-fun m!1701347 () Bool)

(assert (=> b!1462947 m!1701347))

(assert (=> d!427660 d!428756))

(assert (=> d!427660 d!427708))

(declare-fun d!428758 () Bool)

(declare-fun res!662127 () Bool)

(declare-fun e!933241 () Bool)

(assert (=> d!428758 (=> (not res!662127) (not e!933241))))

(assert (=> d!428758 (= res!662127 (rulesValid!990 Lexer!2327 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))))))

(assert (=> d!428758 (= (rulesInvariant!2162 Lexer!2327 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))) e!933241)))

(declare-fun b!1462949 () Bool)

(assert (=> b!1462949 (= e!933241 (noDuplicateTag!990 Lexer!2327 (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662)) Nil!15179))))

(assert (= (and d!428758 res!662127) b!1462949))

(declare-fun m!1701349 () Bool)

(assert (=> d!428758 m!1701349))

(declare-fun m!1701351 () Bool)

(assert (=> b!1462949 m!1701351))

(assert (=> b!1460947 d!428758))

(declare-fun bs!344420 () Bool)

(declare-fun d!428760 () Bool)

(assert (= bs!344420 (and d!428760 d!428684)))

(declare-fun lambda!63322 () Int)

(assert (=> bs!344420 (= lambda!63322 lambda!63319)))

(declare-fun bs!344421 () Bool)

(assert (= bs!344421 (and d!428760 d!428738)))

(assert (=> bs!344421 (= (= (rules!11668 thiss!10022) (rules!11668 other!32)) (= lambda!63322 lambda!63321))))

(declare-fun bs!344422 () Bool)

(assert (= bs!344422 (and d!428760 d!428190)))

(assert (=> bs!344422 (= lambda!63322 lambda!63299)))

(declare-fun bs!344423 () Bool)

(assert (= bs!344423 (and d!428760 d!428106)))

(assert (=> bs!344423 (= lambda!63322 lambda!63297)))

(declare-fun bs!344424 () Bool)

(assert (= bs!344424 (and d!428760 d!428096)))

(assert (=> bs!344424 (= lambda!63322 lambda!63296)))

(declare-fun bs!344425 () Bool)

(assert (= bs!344425 (and d!428760 d!428178)))

(assert (=> bs!344425 (= lambda!63322 lambda!63298)))

(declare-fun bs!344426 () Bool)

(assert (= bs!344426 (and d!428760 d!427750)))

(assert (=> bs!344426 (= lambda!63322 lambda!63291)))

(declare-fun bs!344427 () Bool)

(assert (= bs!344427 (and d!428760 d!428414)))

(assert (=> bs!344427 (= (= (rules!11668 thiss!10022) (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))) (= lambda!63322 lambda!63312))))

(declare-fun b!1462953 () Bool)

(declare-fun e!933245 () Bool)

(assert (=> b!1462953 (= e!933245 true)))

(declare-fun b!1462952 () Bool)

(declare-fun e!933244 () Bool)

(assert (=> b!1462952 (= e!933244 e!933245)))

(declare-fun b!1462951 () Bool)

(declare-fun e!933243 () Bool)

(assert (=> b!1462951 (= e!933243 e!933244)))

(assert (=> d!428760 e!933243))

(assert (= b!1462952 b!1462953))

(assert (= b!1462951 b!1462952))

(assert (= (and d!428760 ((_ is Cons!15175) (rules!11668 thiss!10022))) b!1462951))

(assert (=> b!1462953 (< (dynLambda!6923 order!9145 (toValue!3984 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63322))))

(assert (=> b!1462953 (< (dynLambda!6925 order!9149 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63322))))

(assert (=> d!428760 true))

(declare-fun e!933242 () Bool)

(assert (=> d!428760 e!933242))

(declare-fun res!662128 () Bool)

(assert (=> d!428760 (=> (not res!662128) (not e!933242))))

(declare-fun lt!506867 () Bool)

(assert (=> d!428760 (= res!662128 (= lt!506867 (forall!3740 (list!6073 (tokens!2100 thiss!10022)) lambda!63322)))))

(assert (=> d!428760 (= lt!506867 (forall!3742 (tokens!2100 thiss!10022) lambda!63322))))

(assert (=> d!428760 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428760 (= (rulesProduceEachTokenIndividually!879 Lexer!2327 (rules!11668 thiss!10022) (tokens!2100 thiss!10022)) lt!506867)))

(declare-fun b!1462950 () Bool)

(assert (=> b!1462950 (= e!933242 (= lt!506867 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (list!6073 (tokens!2100 thiss!10022)))))))

(assert (= (and d!428760 res!662128) b!1462950))

(assert (=> d!428760 m!1695647))

(assert (=> d!428760 m!1695647))

(declare-fun m!1701353 () Bool)

(assert (=> d!428760 m!1701353))

(declare-fun m!1701355 () Bool)

(assert (=> d!428760 m!1701355))

(assert (=> d!428760 m!1696087))

(assert (=> b!1462950 m!1695647))

(assert (=> b!1462950 m!1695647))

(declare-fun m!1701357 () Bool)

(assert (=> b!1462950 m!1701357))

(assert (=> b!1461214 d!428760))

(declare-fun d!428762 () Bool)

(declare-fun res!662129 () Bool)

(declare-fun e!933246 () Bool)

(assert (=> d!428762 (=> (not res!662129) (not e!933246))))

(assert (=> d!428762 (= res!662129 (rulesValid!990 Lexer!2327 (rules!11668 other!32)))))

(assert (=> d!428762 (= (rulesInvariant!2162 Lexer!2327 (rules!11668 other!32)) e!933246)))

(declare-fun b!1462954 () Bool)

(assert (=> b!1462954 (= e!933246 (noDuplicateTag!990 Lexer!2327 (rules!11668 other!32) Nil!15179))))

(assert (= (and d!428762 res!662129) b!1462954))

(declare-fun m!1701359 () Bool)

(assert (=> d!428762 m!1701359))

(declare-fun m!1701361 () Bool)

(assert (=> b!1462954 m!1701361))

(assert (=> d!427656 d!428762))

(declare-fun d!428764 () Bool)

(declare-fun lt!506868 () Bool)

(assert (=> d!428764 (= lt!506868 (isEmpty!9527 (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659)))))))))

(assert (=> d!428764 (= lt!506868 (isEmpty!9531 (c!240744 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659)))))))))

(assert (=> d!428764 (= (isEmpty!9529 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (singletonSeq!1277 lt!504659))))) lt!506868)))

(declare-fun bs!344428 () Bool)

(assert (= bs!344428 d!428764))

(declare-fun m!1701363 () Bool)

(assert (=> bs!344428 m!1701363))

(assert (=> bs!344428 m!1701363))

(declare-fun m!1701365 () Bool)

(assert (=> bs!344428 m!1701365))

(declare-fun m!1701367 () Bool)

(assert (=> bs!344428 m!1701367))

(assert (=> b!1461036 d!428764))

(assert (=> b!1461036 d!427980))

(assert (=> b!1461036 d!427982))

(assert (=> b!1461036 d!427984))

(declare-fun d!428766 () Bool)

(declare-fun lt!506869 () Token!5008)

(assert (=> d!428766 (= lt!506869 (apply!3953 (list!6073 (_1!8008 lt!504957)) 0))))

(assert (=> d!428766 (= lt!506869 (apply!3959 (c!240746 (_1!8008 lt!504957)) 0))))

(declare-fun e!933247 () Bool)

(assert (=> d!428766 e!933247))

(declare-fun res!662130 () Bool)

(assert (=> d!428766 (=> (not res!662130) (not e!933247))))

(assert (=> d!428766 (= res!662130 (<= 0 0))))

(assert (=> d!428766 (= (apply!3952 (_1!8008 lt!504957) 0) lt!506869)))

(declare-fun b!1462955 () Bool)

(assert (=> b!1462955 (= e!933247 (< 0 (size!12413 (_1!8008 lt!504957))))))

(assert (= (and d!428766 res!662130) b!1462955))

(assert (=> d!428766 m!1700981))

(assert (=> d!428766 m!1700981))

(declare-fun m!1701369 () Bool)

(assert (=> d!428766 m!1701369))

(declare-fun m!1701371 () Bool)

(assert (=> d!428766 m!1701371))

(assert (=> b!1462955 m!1696321))

(assert (=> b!1461031 d!428766))

(assert (=> d!427716 d!427728))

(declare-fun d!428768 () Bool)

(assert (=> d!428768 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!504656)))

(assert (=> d!428768 true))

(declare-fun _$77!622 () Unit!24235)

(assert (=> d!428768 (= (choose!8982 Lexer!2327 (rules!11668 thiss!10022) lt!504650 lt!504656) _$77!622)))

(declare-fun bs!344429 () Bool)

(assert (= bs!344429 d!428768))

(assert (=> bs!344429 m!1695641))

(assert (=> d!427716 d!428768))

(assert (=> d!427716 d!427986))

(declare-fun bs!344430 () Bool)

(declare-fun d!428770 () Bool)

(assert (= bs!344430 (and d!428770 d!428684)))

(declare-fun lambda!63323 () Int)

(assert (=> bs!344430 (= lambda!63323 lambda!63319)))

(declare-fun bs!344431 () Bool)

(assert (= bs!344431 (and d!428770 d!428738)))

(assert (=> bs!344431 (= (= (rules!11668 thiss!10022) (rules!11668 other!32)) (= lambda!63323 lambda!63321))))

(declare-fun bs!344432 () Bool)

(assert (= bs!344432 (and d!428770 d!428190)))

(assert (=> bs!344432 (= lambda!63323 lambda!63299)))

(declare-fun bs!344433 () Bool)

(assert (= bs!344433 (and d!428770 d!428106)))

(assert (=> bs!344433 (= lambda!63323 lambda!63297)))

(declare-fun bs!344434 () Bool)

(assert (= bs!344434 (and d!428770 d!428760)))

(assert (=> bs!344434 (= lambda!63323 lambda!63322)))

(declare-fun bs!344435 () Bool)

(assert (= bs!344435 (and d!428770 d!428096)))

(assert (=> bs!344435 (= lambda!63323 lambda!63296)))

(declare-fun bs!344436 () Bool)

(assert (= bs!344436 (and d!428770 d!428178)))

(assert (=> bs!344436 (= lambda!63323 lambda!63298)))

(declare-fun bs!344437 () Bool)

(assert (= bs!344437 (and d!428770 d!427750)))

(assert (=> bs!344437 (= lambda!63323 lambda!63291)))

(declare-fun bs!344438 () Bool)

(assert (= bs!344438 (and d!428770 d!428414)))

(assert (=> bs!344438 (= (= (rules!11668 thiss!10022) (rules!11668 (PrintableTokens!1129 (rules!11668 thiss!10022) lt!504662))) (= lambda!63323 lambda!63312))))

(declare-fun b!1462960 () Bool)

(declare-fun e!933252 () Bool)

(assert (=> b!1462960 (= e!933252 true)))

(declare-fun b!1462959 () Bool)

(declare-fun e!933251 () Bool)

(assert (=> b!1462959 (= e!933251 e!933252)))

(declare-fun b!1462958 () Bool)

(declare-fun e!933250 () Bool)

(assert (=> b!1462958 (= e!933250 e!933251)))

(assert (=> d!428770 e!933250))

(assert (= b!1462959 b!1462960))

(assert (= b!1462958 b!1462959))

(assert (= (and d!428770 ((_ is Cons!15175) (rules!11668 thiss!10022))) b!1462958))

(assert (=> b!1462960 (< (dynLambda!6923 order!9145 (toValue!3984 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63323))))

(assert (=> b!1462960 (< (dynLambda!6925 order!9149 (toChars!3843 (transformation!2673 (h!20576 (rules!11668 thiss!10022))))) (dynLambda!6924 order!9147 lambda!63323))))

(assert (=> d!428770 true))

(declare-fun lt!506870 () Bool)

(assert (=> d!428770 (= lt!506870 (forall!3740 lt!504650 lambda!63323))))

(declare-fun e!933249 () Bool)

(assert (=> d!428770 (= lt!506870 e!933249)))

(declare-fun res!662132 () Bool)

(assert (=> d!428770 (=> res!662132 e!933249)))

(assert (=> d!428770 (= res!662132 (not ((_ is Cons!15174) lt!504650)))))

(assert (=> d!428770 (not (isEmpty!9528 (rules!11668 thiss!10022)))))

(assert (=> d!428770 (= (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!504650) lt!506870)))

(declare-fun b!1462956 () Bool)

(declare-fun e!933248 () Bool)

(assert (=> b!1462956 (= e!933249 e!933248)))

(declare-fun res!662131 () Bool)

(assert (=> b!1462956 (=> (not res!662131) (not e!933248))))

(assert (=> b!1462956 (= res!662131 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!504650)))))

(declare-fun b!1462957 () Bool)

(assert (=> b!1462957 (= e!933248 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) (t!134383 lt!504650)))))

(assert (= (and d!428770 (not res!662132)) b!1462956))

(assert (= (and b!1462956 res!662131) b!1462957))

(declare-fun m!1701373 () Bool)

(assert (=> d!428770 m!1701373))

(assert (=> d!428770 m!1696087))

(declare-fun m!1701375 () Bool)

(assert (=> b!1462956 m!1701375))

(declare-fun m!1701377 () Bool)

(assert (=> b!1462957 m!1701377))

(assert (=> b!1461073 d!428770))

(declare-fun b!1462962 () Bool)

(declare-fun e!933253 () List!15238)

(assert (=> b!1462962 (= e!933253 (Cons!15172 (h!20573 (list!6075 (charsOf!1536 (h!20575 lt!504650)))) (++!4081 (t!134381 (list!6075 (charsOf!1536 (h!20575 lt!504650)))) (printList!725 Lexer!2327 (t!134383 lt!504650)))))))

(declare-fun b!1462964 () Bool)

(declare-fun e!933254 () Bool)

(declare-fun lt!506871 () List!15238)

(assert (=> b!1462964 (= e!933254 (or (not (= (printList!725 Lexer!2327 (t!134383 lt!504650)) Nil!15172)) (= lt!506871 (list!6075 (charsOf!1536 (h!20575 lt!504650))))))))

(declare-fun b!1462963 () Bool)

(declare-fun res!662133 () Bool)

(assert (=> b!1462963 (=> (not res!662133) (not e!933254))))

(assert (=> b!1462963 (= res!662133 (= (size!12411 lt!506871) (+ (size!12411 (list!6075 (charsOf!1536 (h!20575 lt!504650)))) (size!12411 (printList!725 Lexer!2327 (t!134383 lt!504650))))))))

(declare-fun b!1462961 () Bool)

(assert (=> b!1462961 (= e!933253 (printList!725 Lexer!2327 (t!134383 lt!504650)))))

(declare-fun d!428772 () Bool)

(assert (=> d!428772 e!933254))

(declare-fun res!662134 () Bool)

(assert (=> d!428772 (=> (not res!662134) (not e!933254))))

(assert (=> d!428772 (= res!662134 (= (content!2242 lt!506871) ((_ map or) (content!2242 (list!6075 (charsOf!1536 (h!20575 lt!504650)))) (content!2242 (printList!725 Lexer!2327 (t!134383 lt!504650))))))))

(assert (=> d!428772 (= lt!506871 e!933253)))

(declare-fun c!241171 () Bool)

(assert (=> d!428772 (= c!241171 ((_ is Nil!15172) (list!6075 (charsOf!1536 (h!20575 lt!504650)))))))

(assert (=> d!428772 (= (++!4081 (list!6075 (charsOf!1536 (h!20575 lt!504650))) (printList!725 Lexer!2327 (t!134383 lt!504650))) lt!506871)))

(assert (= (and d!428772 c!241171) b!1462961))

(assert (= (and d!428772 (not c!241171)) b!1462962))

(assert (= (and d!428772 res!662134) b!1462963))

(assert (= (and b!1462963 res!662133) b!1462964))

(assert (=> b!1462962 m!1695813))

(declare-fun m!1701379 () Bool)

(assert (=> b!1462962 m!1701379))

(declare-fun m!1701381 () Bool)

(assert (=> b!1462963 m!1701381))

(assert (=> b!1462963 m!1695811))

(assert (=> b!1462963 m!1699979))

(assert (=> b!1462963 m!1695813))

(declare-fun m!1701383 () Bool)

(assert (=> b!1462963 m!1701383))

(declare-fun m!1701385 () Bool)

(assert (=> d!428772 m!1701385))

(assert (=> d!428772 m!1695811))

(declare-fun m!1701387 () Bool)

(assert (=> d!428772 m!1701387))

(assert (=> d!428772 m!1695813))

(declare-fun m!1701389 () Bool)

(assert (=> d!428772 m!1701389))

(assert (=> b!1460924 d!428772))

(assert (=> b!1460924 d!428514))

(assert (=> b!1460924 d!428516))

(declare-fun d!428774 () Bool)

(declare-fun c!241172 () Bool)

(assert (=> d!428774 (= c!241172 ((_ is Cons!15174) (t!134383 lt!504650)))))

(declare-fun e!933255 () List!15238)

(assert (=> d!428774 (= (printList!725 Lexer!2327 (t!134383 lt!504650)) e!933255)))

(declare-fun b!1462965 () Bool)

(assert (=> b!1462965 (= e!933255 (++!4081 (list!6075 (charsOf!1536 (h!20575 (t!134383 lt!504650)))) (printList!725 Lexer!2327 (t!134383 (t!134383 lt!504650)))))))

(declare-fun b!1462966 () Bool)

(assert (=> b!1462966 (= e!933255 Nil!15172)))

(assert (= (and d!428774 c!241172) b!1462965))

(assert (= (and d!428774 (not c!241172)) b!1462966))

(assert (=> b!1462965 m!1696093))

(assert (=> b!1462965 m!1696093))

(assert (=> b!1462965 m!1700025))

(declare-fun m!1701391 () Bool)

(assert (=> b!1462965 m!1701391))

(assert (=> b!1462965 m!1700025))

(assert (=> b!1462965 m!1701391))

(declare-fun m!1701393 () Bool)

(assert (=> b!1462965 m!1701393))

(assert (=> b!1460924 d!428774))

(assert (=> b!1460847 d!427776))

(declare-fun b!1462967 () Bool)

(declare-fun res!662135 () Bool)

(declare-fun e!933257 () Bool)

(assert (=> b!1462967 (=> (not res!662135) (not e!933257))))

(assert (=> b!1462967 (= res!662135 (not (isEmpty!9526 (left!12896 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))))))))

(declare-fun b!1462968 () Bool)

(declare-fun res!662137 () Bool)

(assert (=> b!1462968 (=> (not res!662137) (not e!933257))))

(assert (=> b!1462968 (= res!662137 (isBalanced!1550 (left!12896 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32))))))))

(declare-fun b!1462969 () Bool)

(declare-fun e!933256 () Bool)

(assert (=> b!1462969 (= e!933256 e!933257)))

(declare-fun res!662139 () Bool)

(assert (=> b!1462969 (=> (not res!662139) (not e!933257))))

(assert (=> b!1462969 (= res!662139 (<= (- 1) (- (height!774 (left!12896 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32))))) (height!774 (right!13226 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32))))))))))

(declare-fun b!1462970 () Bool)

(assert (=> b!1462970 (= e!933257 (not (isEmpty!9526 (right!13226 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))))))))

(declare-fun b!1462971 () Bool)

(declare-fun res!662140 () Bool)

(assert (=> b!1462971 (=> (not res!662140) (not e!933257))))

(assert (=> b!1462971 (= res!662140 (isBalanced!1550 (right!13226 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32))))))))

(declare-fun d!428776 () Bool)

(declare-fun res!662138 () Bool)

(assert (=> d!428776 (=> res!662138 e!933256)))

(assert (=> d!428776 (= res!662138 (not ((_ is Node!5173) (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32))))))))

(assert (=> d!428776 (= (isBalanced!1550 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))) e!933256)))

(declare-fun b!1462972 () Bool)

(declare-fun res!662136 () Bool)

(assert (=> b!1462972 (=> (not res!662136) (not e!933257))))

(assert (=> b!1462972 (= res!662136 (<= (- (height!774 (left!12896 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32))))) (height!774 (right!13226 (++!4085 (c!240746 (tokens!2100 thiss!10022)) (c!240746 (tokens!2100 other!32)))))) 1))))

(assert (= (and d!428776 (not res!662138)) b!1462969))

(assert (= (and b!1462969 res!662139) b!1462972))

(assert (= (and b!1462972 res!662136) b!1462968))

(assert (= (and b!1462968 res!662137) b!1462971))

(assert (= (and b!1462971 res!662140) b!1462967))

(assert (= (and b!1462967 res!662135) b!1462970))

(declare-fun m!1701395 () Bool)

(assert (=> b!1462972 m!1701395))

(declare-fun m!1701397 () Bool)

(assert (=> b!1462972 m!1701397))

(declare-fun m!1701399 () Bool)

(assert (=> b!1462970 m!1701399))

(assert (=> b!1462969 m!1701395))

(assert (=> b!1462969 m!1701397))

(declare-fun m!1701401 () Bool)

(assert (=> b!1462967 m!1701401))

(declare-fun m!1701403 () Bool)

(assert (=> b!1462968 m!1701403))

(declare-fun m!1701405 () Bool)

(assert (=> b!1462971 m!1701405))

(assert (=> b!1461045 d!428776))

(assert (=> b!1461045 d!427870))

(declare-fun b!1462973 () Bool)

(declare-fun res!662141 () Bool)

(declare-fun e!933260 () Bool)

(assert (=> b!1462973 (=> (not res!662141) (not e!933260))))

(assert (=> b!1462973 (= res!662141 (not (isEmpty!9528 (rules!11668 thiss!10022))))))

(declare-fun b!1462974 () Bool)

(declare-fun lt!506900 () List!15240)

(assert (=> b!1462974 (= e!933260 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!506900))))

(declare-fun b!1462975 () Bool)

(declare-fun e!933261 () Bool)

(declare-fun e!933262 () Bool)

(assert (=> b!1462975 (= e!933261 e!933262)))

(declare-fun res!662144 () Bool)

(assert (=> b!1462975 (=> (not res!662144) (not e!933262))))

(assert (=> b!1462975 (= res!662144 (separableTokensPredicate!538 Lexer!2327 (apply!3952 lt!504662 (+ 0 1)) (apply!3952 lt!504662 (+ 0 1 1)) (rules!11668 thiss!10022)))))

(declare-fun lt!506901 () Unit!24235)

(declare-fun Unit!24488 () Unit!24235)

(assert (=> b!1462975 (= lt!506901 Unit!24488)))

(assert (=> b!1462975 (> (size!12415 (charsOf!1536 (apply!3952 lt!504662 (+ 0 1 1)))) 0)))

(declare-fun lt!506893 () Unit!24235)

(declare-fun Unit!24489 () Unit!24235)

(assert (=> b!1462975 (= lt!506893 Unit!24489)))

(assert (=> b!1462975 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (apply!3952 lt!504662 (+ 0 1 1)))))

(declare-fun lt!506878 () Unit!24235)

(declare-fun Unit!24490 () Unit!24235)

(assert (=> b!1462975 (= lt!506878 Unit!24490)))

(assert (=> b!1462975 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (apply!3952 lt!504662 (+ 0 1)))))

(declare-fun lt!506888 () Unit!24235)

(declare-fun lt!506886 () Unit!24235)

(assert (=> b!1462975 (= lt!506888 lt!506886)))

(declare-fun lt!506896 () Token!5008)

(assert (=> b!1462975 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!506896)))

(declare-fun lt!506891 () List!15240)

(assert (=> b!1462975 (= lt!506886 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!506891 lt!506896))))

(assert (=> b!1462975 (= lt!506896 (apply!3952 lt!504662 (+ 0 1 1)))))

(assert (=> b!1462975 (= lt!506891 (list!6073 lt!504662))))

(declare-fun lt!506887 () Unit!24235)

(declare-fun lt!506880 () Unit!24235)

(assert (=> b!1462975 (= lt!506887 lt!506880)))

(declare-fun lt!506873 () Token!5008)

(assert (=> b!1462975 (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) lt!506873)))

(declare-fun lt!506895 () List!15240)

(assert (=> b!1462975 (= lt!506880 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!431 Lexer!2327 (rules!11668 thiss!10022) lt!506895 lt!506873))))

(assert (=> b!1462975 (= lt!506873 (apply!3952 lt!504662 (+ 0 1)))))

(assert (=> b!1462975 (= lt!506895 (list!6073 lt!504662))))

(declare-fun lt!506885 () Unit!24235)

(declare-fun lt!506897 () Unit!24235)

(assert (=> b!1462975 (= lt!506885 lt!506897)))

(declare-fun lt!506883 () List!15240)

(declare-fun lt!506877 () Int)

(assert (=> b!1462975 (= (tail!2174 (drop!744 lt!506883 lt!506877)) (drop!744 lt!506883 (+ lt!506877 1)))))

(assert (=> b!1462975 (= lt!506897 (lemmaDropTail!474 lt!506883 lt!506877))))

(assert (=> b!1462975 (= lt!506877 (+ 0 1 1))))

(assert (=> b!1462975 (= lt!506883 (list!6073 lt!504662))))

(declare-fun lt!506894 () Unit!24235)

(declare-fun lt!506882 () Unit!24235)

(assert (=> b!1462975 (= lt!506894 lt!506882)))

(declare-fun lt!506902 () List!15240)

(assert (=> b!1462975 (= (tail!2174 (drop!744 lt!506902 (+ 0 1))) (drop!744 lt!506902 (+ 0 1 1)))))

(assert (=> b!1462975 (= lt!506882 (lemmaDropTail!474 lt!506902 (+ 0 1)))))

(assert (=> b!1462975 (= lt!506902 (list!6073 lt!504662))))

(declare-fun lt!506892 () Unit!24235)

(declare-fun lt!506890 () Unit!24235)

(assert (=> b!1462975 (= lt!506892 lt!506890)))

(declare-fun lt!506876 () List!15240)

(declare-fun lt!506879 () Int)

(assert (=> b!1462975 (= (head!3012 (drop!744 lt!506876 lt!506879)) (apply!3953 lt!506876 lt!506879))))

(assert (=> b!1462975 (= lt!506890 (lemmaDropApply!494 lt!506876 lt!506879))))

(assert (=> b!1462975 (= lt!506879 (+ 0 1 1))))

(assert (=> b!1462975 (= lt!506876 (list!6073 lt!504662))))

(declare-fun lt!506884 () Unit!24235)

(declare-fun lt!506875 () Unit!24235)

(assert (=> b!1462975 (= lt!506884 lt!506875)))

(declare-fun lt!506904 () List!15240)

(assert (=> b!1462975 (= (head!3012 (drop!744 lt!506904 (+ 0 1))) (apply!3953 lt!506904 (+ 0 1)))))

(assert (=> b!1462975 (= lt!506875 (lemmaDropApply!494 lt!506904 (+ 0 1)))))

(assert (=> b!1462975 (= lt!506904 (list!6073 lt!504662))))

(declare-fun b!1462976 () Bool)

(assert (=> b!1462976 (= e!933262 (tokensListTwoByTwoPredicateSeparable!136 Lexer!2327 lt!504662 (+ 0 1 1) (rules!11668 thiss!10022)))))

(declare-fun d!428778 () Bool)

(declare-fun lt!506889 () Bool)

(assert (=> d!428778 (= lt!506889 (tokensListTwoByTwoPredicateSeparableList!247 Lexer!2327 (dropList!480 lt!504662 (+ 0 1)) (rules!11668 thiss!10022)))))

(declare-fun lt!506898 () Unit!24235)

(declare-fun lt!506874 () Unit!24235)

(assert (=> d!428778 (= lt!506898 lt!506874)))

(declare-fun lt!506903 () List!15240)

(assert (=> d!428778 (rulesProduceEachTokenIndividuallyList!748 Lexer!2327 (rules!11668 thiss!10022) lt!506903)))

(assert (=> d!428778 (= lt!506874 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!62 Lexer!2327 (rules!11668 thiss!10022) lt!506900 lt!506903))))

(assert (=> d!428778 e!933260))

(declare-fun res!662142 () Bool)

(assert (=> d!428778 (=> (not res!662142) (not e!933260))))

(assert (=> d!428778 (= res!662142 ((_ is Lexer!2327) Lexer!2327))))

(assert (=> d!428778 (= lt!506903 (dropList!480 lt!504662 (+ 0 1)))))

(assert (=> d!428778 (= lt!506900 (list!6073 lt!504662))))

(declare-fun lt!506872 () Unit!24235)

(declare-fun lt!506881 () Unit!24235)

(assert (=> d!428778 (= lt!506872 lt!506881)))

(declare-fun lt!506899 () List!15240)

(assert (=> d!428778 (subseq!367 (drop!744 lt!506899 (+ 0 1)) lt!506899)))

(assert (=> d!428778 (= lt!506881 (lemmaDropSubSeq!62 lt!506899 (+ 0 1)))))

(declare-fun e!933258 () Bool)

(assert (=> d!428778 e!933258))

(declare-fun res!662147 () Bool)

(assert (=> d!428778 (=> (not res!662147) (not e!933258))))

(assert (=> d!428778 (= res!662147 (>= (+ 0 1) 0))))

(assert (=> d!428778 (= lt!506899 (list!6073 lt!504662))))

(assert (=> d!428778 (= lt!506889 e!933261)))

(declare-fun res!662145 () Bool)

(assert (=> d!428778 (=> res!662145 e!933261)))

(assert (=> d!428778 (= res!662145 (not (< (+ 0 1) (- (size!12413 lt!504662) 1))))))

(declare-fun e!933259 () Bool)

(assert (=> d!428778 e!933259))

(declare-fun res!662146 () Bool)

(assert (=> d!428778 (=> (not res!662146) (not e!933259))))

(assert (=> d!428778 (= res!662146 (>= (+ 0 1) 0))))

(assert (=> d!428778 (= (tokensListTwoByTwoPredicateSeparable!136 Lexer!2327 lt!504662 (+ 0 1) (rules!11668 thiss!10022)) lt!506889)))

(declare-fun b!1462977 () Bool)

(declare-fun res!662143 () Bool)

(assert (=> b!1462977 (=> (not res!662143) (not e!933260))))

(assert (=> b!1462977 (= res!662143 (subseq!367 lt!506903 lt!506900))))

(declare-fun b!1462978 () Bool)

(declare-fun res!662148 () Bool)

(assert (=> b!1462978 (=> (not res!662148) (not e!933260))))

(assert (=> b!1462978 (= res!662148 (rulesInvariant!2162 Lexer!2327 (rules!11668 thiss!10022)))))

(declare-fun b!1462979 () Bool)

(assert (=> b!1462979 (= e!933259 (<= (+ 0 1) (size!12413 lt!504662)))))

(declare-fun b!1462980 () Bool)

(assert (=> b!1462980 (= e!933258 (<= (+ 0 1) (size!12414 lt!506899)))))

(assert (= (and d!428778 res!662146) b!1462979))

(assert (= (and d!428778 (not res!662145)) b!1462975))

(assert (= (and b!1462975 res!662144) b!1462976))

(assert (= (and d!428778 res!662147) b!1462980))

(assert (= (and d!428778 res!662142) b!1462973))

(assert (= (and b!1462973 res!662141) b!1462978))

(assert (= (and b!1462978 res!662148) b!1462977))

(assert (= (and b!1462977 res!662143) b!1462974))

(declare-fun m!1701407 () Bool)

(assert (=> b!1462974 m!1701407))

(declare-fun m!1701409 () Bool)

(assert (=> b!1462976 m!1701409))

(assert (=> b!1462978 m!1695749))

(assert (=> b!1462979 m!1696423))

(declare-fun m!1701411 () Bool)

(assert (=> b!1462977 m!1701411))

(declare-fun m!1701413 () Bool)

(assert (=> b!1462980 m!1701413))

(assert (=> b!1462973 m!1696087))

(declare-fun m!1701415 () Bool)

(assert (=> d!428778 m!1701415))

(declare-fun m!1701417 () Bool)

(assert (=> d!428778 m!1701417))

(assert (=> d!428778 m!1696433))

(declare-fun m!1701419 () Bool)

(assert (=> d!428778 m!1701419))

(assert (=> d!428778 m!1701417))

(declare-fun m!1701421 () Bool)

(assert (=> d!428778 m!1701421))

(declare-fun m!1701423 () Bool)

(assert (=> d!428778 m!1701423))

(assert (=> d!428778 m!1701415))

(declare-fun m!1701425 () Bool)

(assert (=> d!428778 m!1701425))

(declare-fun m!1701427 () Bool)

(assert (=> d!428778 m!1701427))

(assert (=> d!428778 m!1696423))

(assert (=> b!1462975 m!1696447))

(declare-fun m!1701429 () Bool)

(assert (=> b!1462975 m!1701429))

(declare-fun m!1701431 () Bool)

(assert (=> b!1462975 m!1701431))

(assert (=> b!1462975 m!1696433))

(declare-fun m!1701433 () Bool)

(assert (=> b!1462975 m!1701433))

(declare-fun m!1701435 () Bool)

(assert (=> b!1462975 m!1701435))

(declare-fun m!1701437 () Bool)

(assert (=> b!1462975 m!1701437))

(declare-fun m!1701439 () Bool)

(assert (=> b!1462975 m!1701439))

(declare-fun m!1701441 () Bool)

(assert (=> b!1462975 m!1701441))

(declare-fun m!1701443 () Bool)

(assert (=> b!1462975 m!1701443))

(declare-fun m!1701445 () Bool)

(assert (=> b!1462975 m!1701445))

(assert (=> b!1462975 m!1696447))

(declare-fun m!1701447 () Bool)

(assert (=> b!1462975 m!1701447))

(declare-fun m!1701449 () Bool)

(assert (=> b!1462975 m!1701449))

(declare-fun m!1701451 () Bool)

(assert (=> b!1462975 m!1701451))

(assert (=> b!1462975 m!1701429))

(declare-fun m!1701453 () Bool)

(assert (=> b!1462975 m!1701453))

(declare-fun m!1701455 () Bool)

(assert (=> b!1462975 m!1701455))

(declare-fun m!1701457 () Bool)

(assert (=> b!1462975 m!1701457))

(declare-fun m!1701459 () Bool)

(assert (=> b!1462975 m!1701459))

(declare-fun m!1701461 () Bool)

(assert (=> b!1462975 m!1701461))

(declare-fun m!1701463 () Bool)

(assert (=> b!1462975 m!1701463))

(declare-fun m!1701465 () Bool)

(assert (=> b!1462975 m!1701465))

(declare-fun m!1701467 () Bool)

(assert (=> b!1462975 m!1701467))

(assert (=> b!1462975 m!1701445))

(declare-fun m!1701469 () Bool)

(assert (=> b!1462975 m!1701469))

(assert (=> b!1462975 m!1696447))

(assert (=> b!1462975 m!1696471))

(assert (=> b!1462975 m!1701437))

(assert (=> b!1462975 m!1701429))

(assert (=> b!1462975 m!1701447))

(assert (=> b!1462975 m!1701429))

(declare-fun m!1701471 () Bool)

(assert (=> b!1462975 m!1701471))

(declare-fun m!1701473 () Bool)

(assert (=> b!1462975 m!1701473))

(assert (=> b!1462975 m!1701435))

(declare-fun m!1701475 () Bool)

(assert (=> b!1462975 m!1701475))

(declare-fun m!1701477 () Bool)

(assert (=> b!1462975 m!1701477))

(assert (=> b!1462975 m!1701461))

(assert (=> b!1461119 d!428778))

(declare-fun d!428780 () Bool)

(assert (=> d!428780 (= (isEmpty!9525 (list!6073 (tokens!2100 thiss!10022))) ((_ is Nil!15174) (list!6073 (tokens!2100 thiss!10022))))))

(assert (=> d!427782 d!428780))

(assert (=> d!427782 d!427726))

(declare-fun d!428782 () Bool)

(declare-fun lt!506905 () Bool)

(assert (=> d!428782 (= lt!506905 (isEmpty!9525 (list!6077 (c!240746 (tokens!2100 thiss!10022)))))))

(assert (=> d!428782 (= lt!506905 (= (size!12417 (c!240746 (tokens!2100 thiss!10022))) 0))))

(assert (=> d!428782 (= (isEmpty!9526 (c!240746 (tokens!2100 thiss!10022))) lt!506905)))

(declare-fun bs!344439 () Bool)

(assert (= bs!344439 d!428782))

(assert (=> bs!344439 m!1696319))

(assert (=> bs!344439 m!1696319))

(declare-fun m!1701479 () Bool)

(assert (=> bs!344439 m!1701479))

(declare-fun m!1701481 () Bool)

(assert (=> bs!344439 m!1701481))

(assert (=> d!427782 d!428782))

(assert (=> d!427678 d!428176))

(assert (=> d!427678 d!428174))

(assert (=> d!427678 d!427986))

(assert (=> d!427678 d!428172))

(declare-fun d!428784 () Bool)

(assert (=> d!428784 (= (list!6073 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 lt!504650))))) (list!6077 (c!240746 (_1!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) (print!1103 Lexer!2327 (seqFromList!1712 lt!504650)))))))))

(declare-fun bs!344440 () Bool)

(assert (= bs!344440 d!428784))

(declare-fun m!1701483 () Bool)

(assert (=> bs!344440 m!1701483))

(assert (=> d!427678 d!428784))

(assert (=> b!1460899 d!428760))

(declare-fun d!428786 () Bool)

(assert (=> d!428786 (= (isEmpty!9527 (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!504940)))) ((_ is Nil!15172) (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!504940)))))))

(assert (=> b!1461020 d!428786))

(declare-fun d!428788 () Bool)

(assert (=> d!428788 (= (list!6075 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!504940))) (list!6081 (c!240744 (_2!8008 (lex!1074 Lexer!2327 (rules!11668 thiss!10022) lt!504940)))))))

(declare-fun bs!344441 () Bool)

(assert (= bs!344441 d!428788))

(declare-fun m!1701485 () Bool)

(assert (=> bs!344441 m!1701485))

(assert (=> b!1461020 d!428788))

(assert (=> b!1461020 d!427808))

(declare-fun d!428790 () Bool)

(assert (=> d!428790 (= (inv!20284 (xs!7920 (c!240746 (tokens!2100 other!32)))) (<= (size!12414 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32))))) 2147483647))))

(declare-fun bs!344442 () Bool)

(assert (= bs!344442 d!428790))

(declare-fun m!1701487 () Bool)

(assert (=> bs!344442 m!1701487))

(assert (=> b!1461234 d!428790))

(assert (=> b!1460901 d!428738))

(declare-fun b!1462981 () Bool)

(declare-fun e!933263 () List!15240)

(assert (=> b!1462981 (= e!933263 Nil!15174)))

(declare-fun b!1462984 () Bool)

(declare-fun e!933264 () List!15240)

(assert (=> b!1462984 (= e!933264 (++!4080 (list!6077 (left!12896 (c!240746 (tokens!2100 thiss!10022)))) (list!6077 (right!13226 (c!240746 (tokens!2100 thiss!10022))))))))

(declare-fun b!1462983 () Bool)

(assert (=> b!1462983 (= e!933264 (list!6079 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))

(declare-fun d!428792 () Bool)

(declare-fun c!241173 () Bool)

(assert (=> d!428792 (= c!241173 ((_ is Empty!5173) (c!240746 (tokens!2100 thiss!10022))))))

(assert (=> d!428792 (= (list!6077 (c!240746 (tokens!2100 thiss!10022))) e!933263)))

(declare-fun b!1462982 () Bool)

(assert (=> b!1462982 (= e!933263 e!933264)))

(declare-fun c!241174 () Bool)

(assert (=> b!1462982 (= c!241174 ((_ is Leaf!7711) (c!240746 (tokens!2100 thiss!10022))))))

(assert (= (and d!428792 c!241173) b!1462981))

(assert (= (and d!428792 (not c!241173)) b!1462982))

(assert (= (and b!1462982 c!241174) b!1462983))

(assert (= (and b!1462982 (not c!241174)) b!1462984))

(assert (=> b!1462984 m!1697249))

(assert (=> b!1462984 m!1697253))

(assert (=> b!1462984 m!1697249))

(assert (=> b!1462984 m!1697253))

(declare-fun m!1701489 () Bool)

(assert (=> b!1462984 m!1701489))

(assert (=> b!1462983 m!1701337))

(assert (=> d!427726 d!428792))

(assert (=> b!1461216 d!428762))

(assert (=> d!427642 d!427854))

(declare-fun d!428794 () Bool)

(declare-fun res!662149 () Bool)

(declare-fun e!933265 () Bool)

(assert (=> d!428794 (=> (not res!662149) (not e!933265))))

(assert (=> d!428794 (= res!662149 (= (csize!10576 (c!240746 (tokens!2100 other!32))) (+ (size!12417 (left!12896 (c!240746 (tokens!2100 other!32)))) (size!12417 (right!13226 (c!240746 (tokens!2100 other!32)))))))))

(assert (=> d!428794 (= (inv!20280 (c!240746 (tokens!2100 other!32))) e!933265)))

(declare-fun b!1462985 () Bool)

(declare-fun res!662150 () Bool)

(assert (=> b!1462985 (=> (not res!662150) (not e!933265))))

(assert (=> b!1462985 (= res!662150 (and (not (= (left!12896 (c!240746 (tokens!2100 other!32))) Empty!5173)) (not (= (right!13226 (c!240746 (tokens!2100 other!32))) Empty!5173))))))

(declare-fun b!1462986 () Bool)

(declare-fun res!662151 () Bool)

(assert (=> b!1462986 (=> (not res!662151) (not e!933265))))

(assert (=> b!1462986 (= res!662151 (= (cheight!5384 (c!240746 (tokens!2100 other!32))) (+ (max!0 (height!774 (left!12896 (c!240746 (tokens!2100 other!32)))) (height!774 (right!13226 (c!240746 (tokens!2100 other!32))))) 1)))))

(declare-fun b!1462987 () Bool)

(assert (=> b!1462987 (= e!933265 (<= 0 (cheight!5384 (c!240746 (tokens!2100 other!32)))))))

(assert (= (and d!428794 res!662149) b!1462985))

(assert (= (and b!1462985 res!662150) b!1462986))

(assert (= (and b!1462986 res!662151) b!1462987))

(declare-fun m!1701491 () Bool)

(assert (=> d!428794 m!1701491))

(declare-fun m!1701493 () Bool)

(assert (=> d!428794 m!1701493))

(assert (=> b!1462986 m!1700923))

(assert (=> b!1462986 m!1700927))

(assert (=> b!1462986 m!1700923))

(assert (=> b!1462986 m!1700927))

(declare-fun m!1701495 () Bool)

(assert (=> b!1462986 m!1701495))

(assert (=> b!1460863 d!428794))

(declare-fun b!1462990 () Bool)

(declare-fun b_free!36495 () Bool)

(declare-fun b_next!37199 () Bool)

(assert (=> b!1462990 (= b_free!36495 (not b_next!37199))))

(declare-fun tp!411707 () Bool)

(declare-fun b_and!99881 () Bool)

(assert (=> b!1462990 (= tp!411707 b_and!99881)))

(declare-fun b_free!36497 () Bool)

(declare-fun b_next!37201 () Bool)

(assert (=> b!1462990 (= b_free!36497 (not b_next!37201))))

(declare-fun tb!82577 () Bool)

(declare-fun t!134566 () Bool)

(assert (=> (and b!1462990 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022))))) (toChars!3843 (transformation!2673 (rule!4446 (apply!3952 lt!504662 (+ 0 1)))))) t!134566) tb!82577))

(declare-fun result!99214 () Bool)

(assert (= result!99214 result!99072))

(assert (=> d!427960 t!134566))

(declare-fun tb!82579 () Bool)

(declare-fun t!134568 () Bool)

(assert (=> (and b!1462990 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504657)))))) t!134568) tb!82579))

(declare-fun result!99216 () Bool)

(assert (= result!99216 result!99086))

(assert (=> d!428202 t!134568))

(declare-fun tb!82581 () Bool)

(declare-fun t!134570 () Bool)

(assert (=> (and b!1462990 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504655))))) t!134570) tb!82581))

(declare-fun result!99218 () Bool)

(assert (= result!99218 result!99210))

(assert (=> d!428744 t!134570))

(declare-fun tb!82583 () Bool)

(declare-fun t!134572 () Bool)

(assert (=> (and b!1462990 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022))))) (toChars!3843 (transformation!2673 (rule!4446 lt!504656)))) t!134572) tb!82583))

(declare-fun result!99220 () Bool)

(assert (= result!99220 result!99122))

(assert (=> d!428568 t!134572))

(declare-fun tb!82585 () Bool)

(declare-fun t!134574 () Bool)

(assert (=> (and b!1462990 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022))))) (toChars!3843 (transformation!2673 (rule!4446 lt!504659)))) t!134574) tb!82585))

(declare-fun result!99222 () Bool)

(assert (= result!99222 result!99126))

(assert (=> d!428674 t!134574))

(declare-fun t!134576 () Bool)

(declare-fun tb!82587 () Bool)

(assert (=> (and b!1462990 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504650))))) t!134576) tb!82587))

(declare-fun result!99224 () Bool)

(assert (= result!99224 result!99114))

(assert (=> d!428516 t!134576))

(declare-fun t!134578 () Bool)

(declare-fun tb!82589 () Bool)

(assert (=> (and b!1462990 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504650)))))) t!134578) tb!82589))

(declare-fun result!99226 () Bool)

(assert (= result!99226 result!99118))

(assert (=> d!428558 t!134578))

(declare-fun t!134580 () Bool)

(declare-fun tb!82591 () Bool)

(assert (=> (and b!1462990 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504657))))) t!134580) tb!82591))

(declare-fun result!99228 () Bool)

(assert (= result!99228 result!99078))

(assert (=> d!428018 t!134580))

(declare-fun t!134582 () Bool)

(declare-fun tb!82593 () Bool)

(assert (=> (and b!1462990 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504655)))))) t!134582) tb!82593))

(declare-fun result!99230 () Bool)

(assert (= result!99230 result!99082))

(assert (=> d!428046 t!134582))

(declare-fun b_and!99883 () Bool)

(declare-fun tp!411708 () Bool)

(assert (=> b!1462990 (= tp!411708 (and (=> t!134578 result!99226) (=> t!134566 result!99214) (=> t!134582 result!99230) (=> t!134580 result!99228) (=> t!134574 result!99222) (=> t!134572 result!99220) (=> t!134576 result!99224) (=> t!134570 result!99218) (=> t!134568 result!99216) b_and!99883))))

(declare-fun e!933266 () Bool)

(assert (=> b!1462990 (= e!933266 (and tp!411707 tp!411708))))

(declare-fun tp!411709 () Bool)

(declare-fun e!933269 () Bool)

(declare-fun b!1462989 () Bool)

(assert (=> b!1462989 (= e!933269 (and tp!411709 (inv!20271 (tag!2937 (h!20576 (t!134384 (rules!11668 thiss!10022))))) (inv!20285 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022))))) e!933266))))

(declare-fun b!1462988 () Bool)

(declare-fun e!933268 () Bool)

(declare-fun tp!411710 () Bool)

(assert (=> b!1462988 (= e!933268 (and e!933269 tp!411710))))

(assert (=> b!1461250 (= tp!411624 e!933268)))

(assert (= b!1462989 b!1462990))

(assert (= b!1462988 b!1462989))

(assert (= (and b!1461250 ((_ is Cons!15175) (t!134384 (rules!11668 thiss!10022)))) b!1462988))

(declare-fun m!1701497 () Bool)

(assert (=> b!1462989 m!1701497))

(declare-fun m!1701499 () Bool)

(assert (=> b!1462989 m!1701499))

(declare-fun b!1462991 () Bool)

(declare-fun tp!411712 () Bool)

(declare-fun e!933270 () Bool)

(declare-fun tp!411711 () Bool)

(assert (=> b!1462991 (= e!933270 (and (inv!20275 (left!12896 (left!12896 (c!240746 (tokens!2100 other!32))))) tp!411711 (inv!20275 (right!13226 (left!12896 (c!240746 (tokens!2100 other!32))))) tp!411712))))

(declare-fun b!1462993 () Bool)

(declare-fun e!933271 () Bool)

(declare-fun tp!411713 () Bool)

(assert (=> b!1462993 (= e!933271 tp!411713)))

(declare-fun b!1462992 () Bool)

(assert (=> b!1462992 (= e!933270 (and (inv!20284 (xs!7920 (left!12896 (c!240746 (tokens!2100 other!32))))) e!933271))))

(assert (=> b!1461233 (= tp!411603 (and (inv!20275 (left!12896 (c!240746 (tokens!2100 other!32)))) e!933270))))

(assert (= (and b!1461233 ((_ is Node!5173) (left!12896 (c!240746 (tokens!2100 other!32))))) b!1462991))

(assert (= b!1462992 b!1462993))

(assert (= (and b!1461233 ((_ is Leaf!7711) (left!12896 (c!240746 (tokens!2100 other!32))))) b!1462992))

(declare-fun m!1701501 () Bool)

(assert (=> b!1462991 m!1701501))

(declare-fun m!1701503 () Bool)

(assert (=> b!1462991 m!1701503))

(declare-fun m!1701505 () Bool)

(assert (=> b!1462992 m!1701505))

(assert (=> b!1461233 m!1696701))

(declare-fun tp!411715 () Bool)

(declare-fun tp!411714 () Bool)

(declare-fun e!933272 () Bool)

(declare-fun b!1462994 () Bool)

(assert (=> b!1462994 (= e!933272 (and (inv!20275 (left!12896 (right!13226 (c!240746 (tokens!2100 other!32))))) tp!411714 (inv!20275 (right!13226 (right!13226 (c!240746 (tokens!2100 other!32))))) tp!411715))))

(declare-fun b!1462996 () Bool)

(declare-fun e!933273 () Bool)

(declare-fun tp!411716 () Bool)

(assert (=> b!1462996 (= e!933273 tp!411716)))

(declare-fun b!1462995 () Bool)

(assert (=> b!1462995 (= e!933272 (and (inv!20284 (xs!7920 (right!13226 (c!240746 (tokens!2100 other!32))))) e!933273))))

(assert (=> b!1461233 (= tp!411604 (and (inv!20275 (right!13226 (c!240746 (tokens!2100 other!32)))) e!933272))))

(assert (= (and b!1461233 ((_ is Node!5173) (right!13226 (c!240746 (tokens!2100 other!32))))) b!1462994))

(assert (= b!1462995 b!1462996))

(assert (= (and b!1461233 ((_ is Leaf!7711) (right!13226 (c!240746 (tokens!2100 other!32))))) b!1462995))

(declare-fun m!1701507 () Bool)

(assert (=> b!1462994 m!1701507))

(declare-fun m!1701509 () Bool)

(assert (=> b!1462994 m!1701509))

(declare-fun m!1701511 () Bool)

(assert (=> b!1462995 m!1701511))

(assert (=> b!1461233 m!1696703))

(declare-fun b!1463010 () Bool)

(declare-fun b_free!36499 () Bool)

(declare-fun b_next!37203 () Bool)

(assert (=> b!1463010 (= b_free!36499 (not b_next!37203))))

(declare-fun tp!411731 () Bool)

(declare-fun b_and!99885 () Bool)

(assert (=> b!1463010 (= tp!411731 b_and!99885)))

(declare-fun b_free!36501 () Bool)

(declare-fun b_next!37205 () Bool)

(assert (=> b!1463010 (= b_free!36501 (not b_next!37205))))

(declare-fun t!134584 () Bool)

(declare-fun tb!82595 () Bool)

(assert (=> (and b!1463010 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))) (toChars!3843 (transformation!2673 (rule!4446 (apply!3952 lt!504662 (+ 0 1)))))) t!134584) tb!82595))

(declare-fun result!99234 () Bool)

(assert (= result!99234 result!99072))

(assert (=> d!427960 t!134584))

(declare-fun tb!82597 () Bool)

(declare-fun t!134586 () Bool)

(assert (=> (and b!1463010 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504657)))))) t!134586) tb!82597))

(declare-fun result!99236 () Bool)

(assert (= result!99236 result!99086))

(assert (=> d!428202 t!134586))

(declare-fun t!134588 () Bool)

(declare-fun tb!82599 () Bool)

(assert (=> (and b!1463010 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504655))))) t!134588) tb!82599))

(declare-fun result!99238 () Bool)

(assert (= result!99238 result!99210))

(assert (=> d!428744 t!134588))

(declare-fun t!134590 () Bool)

(declare-fun tb!82601 () Bool)

(assert (=> (and b!1463010 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))) (toChars!3843 (transformation!2673 (rule!4446 lt!504656)))) t!134590) tb!82601))

(declare-fun result!99240 () Bool)

(assert (= result!99240 result!99122))

(assert (=> d!428568 t!134590))

(declare-fun t!134592 () Bool)

(declare-fun tb!82603 () Bool)

(assert (=> (and b!1463010 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))) (toChars!3843 (transformation!2673 (rule!4446 lt!504659)))) t!134592) tb!82603))

(declare-fun result!99242 () Bool)

(assert (= result!99242 result!99126))

(assert (=> d!428674 t!134592))

(declare-fun t!134594 () Bool)

(declare-fun tb!82605 () Bool)

(assert (=> (and b!1463010 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504650))))) t!134594) tb!82605))

(declare-fun result!99244 () Bool)

(assert (= result!99244 result!99114))

(assert (=> d!428516 t!134594))

(declare-fun t!134596 () Bool)

(declare-fun tb!82607 () Bool)

(assert (=> (and b!1463010 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504650)))))) t!134596) tb!82607))

(declare-fun result!99246 () Bool)

(assert (= result!99246 result!99118))

(assert (=> d!428558 t!134596))

(declare-fun t!134598 () Bool)

(declare-fun tb!82609 () Bool)

(assert (=> (and b!1463010 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504657))))) t!134598) tb!82609))

(declare-fun result!99248 () Bool)

(assert (= result!99248 result!99078))

(assert (=> d!428018 t!134598))

(declare-fun t!134600 () Bool)

(declare-fun tb!82611 () Bool)

(assert (=> (and b!1463010 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504655)))))) t!134600) tb!82611))

(declare-fun result!99250 () Bool)

(assert (= result!99250 result!99082))

(assert (=> d!428046 t!134600))

(declare-fun b_and!99887 () Bool)

(declare-fun tp!411727 () Bool)

(assert (=> b!1463010 (= tp!411727 (and (=> t!134590 result!99240) (=> t!134584 result!99234) (=> t!134596 result!99246) (=> t!134598 result!99248) (=> t!134592 result!99242) (=> t!134594 result!99244) (=> t!134588 result!99238) (=> t!134586 result!99236) (=> t!134600 result!99250) b_and!99887))))

(declare-fun e!933287 () Bool)

(declare-fun e!933291 () Bool)

(declare-fun b!1463009 () Bool)

(declare-fun tp!411729 () Bool)

(assert (=> b!1463009 (= e!933291 (and tp!411729 (inv!20271 (tag!2937 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))) (inv!20285 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))))) e!933287))))

(declare-fun e!933288 () Bool)

(assert (=> b!1461249 (= tp!411620 e!933288)))

(assert (=> b!1463010 (= e!933287 (and tp!411731 tp!411727))))

(declare-fun tp!411730 () Bool)

(declare-fun b!1463008 () Bool)

(declare-fun e!933290 () Bool)

(declare-fun inv!21 (TokenValue!2763) Bool)

(assert (=> b!1463008 (= e!933290 (and (inv!21 (value!85828 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022))))))) e!933291 tp!411730))))

(declare-fun tp!411728 () Bool)

(declare-fun b!1463007 () Bool)

(declare-fun inv!20290 (Token!5008) Bool)

(assert (=> b!1463007 (= e!933288 (and (inv!20290 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))) e!933290 tp!411728))))

(assert (= b!1463009 b!1463010))

(assert (= b!1463008 b!1463009))

(assert (= b!1463007 b!1463008))

(assert (= (and b!1461249 ((_ is Cons!15174) (innerList!5233 (xs!7920 (c!240746 (tokens!2100 thiss!10022)))))) b!1463007))

(declare-fun m!1701513 () Bool)

(assert (=> b!1463009 m!1701513))

(declare-fun m!1701515 () Bool)

(assert (=> b!1463009 m!1701515))

(declare-fun m!1701517 () Bool)

(assert (=> b!1463008 m!1701517))

(declare-fun m!1701519 () Bool)

(assert (=> b!1463007 m!1701519))

(declare-fun b!1463024 () Bool)

(declare-fun e!933294 () Bool)

(declare-fun tp!411744 () Bool)

(declare-fun tp!411745 () Bool)

(assert (=> b!1463024 (= e!933294 (and tp!411744 tp!411745))))

(declare-fun b!1463021 () Bool)

(declare-fun tp_is_empty!6883 () Bool)

(assert (=> b!1463021 (= e!933294 tp_is_empty!6883)))

(declare-fun b!1463023 () Bool)

(declare-fun tp!411746 () Bool)

(assert (=> b!1463023 (= e!933294 tp!411746)))

(declare-fun b!1463022 () Bool)

(declare-fun tp!411743 () Bool)

(declare-fun tp!411742 () Bool)

(assert (=> b!1463022 (= e!933294 (and tp!411743 tp!411742))))

(assert (=> b!1461251 (= tp!411623 e!933294)))

(assert (= (and b!1461251 ((_ is ElementMatch!3987) (regex!2673 (h!20576 (rules!11668 thiss!10022))))) b!1463021))

(assert (= (and b!1461251 ((_ is Concat!6751) (regex!2673 (h!20576 (rules!11668 thiss!10022))))) b!1463022))

(assert (= (and b!1461251 ((_ is Star!3987) (regex!2673 (h!20576 (rules!11668 thiss!10022))))) b!1463023))

(assert (= (and b!1461251 ((_ is Union!3987) (regex!2673 (h!20576 (rules!11668 thiss!10022))))) b!1463024))

(declare-fun b!1463028 () Bool)

(declare-fun b_free!36503 () Bool)

(declare-fun b_next!37207 () Bool)

(assert (=> b!1463028 (= b_free!36503 (not b_next!37207))))

(declare-fun tp!411751 () Bool)

(declare-fun b_and!99889 () Bool)

(assert (=> b!1463028 (= tp!411751 b_and!99889)))

(declare-fun b_free!36505 () Bool)

(declare-fun b_next!37209 () Bool)

(assert (=> b!1463028 (= b_free!36505 (not b_next!37209))))

(declare-fun t!134602 () Bool)

(declare-fun tb!82613 () Bool)

(assert (=> (and b!1463028 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))))) (toChars!3843 (transformation!2673 (rule!4446 (apply!3952 lt!504662 (+ 0 1)))))) t!134602) tb!82613))

(declare-fun result!99254 () Bool)

(assert (= result!99254 result!99072))

(assert (=> d!427960 t!134602))

(declare-fun t!134604 () Bool)

(declare-fun tb!82615 () Bool)

(assert (=> (and b!1463028 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504657)))))) t!134604) tb!82615))

(declare-fun result!99256 () Bool)

(assert (= result!99256 result!99086))

(assert (=> d!428202 t!134604))

(declare-fun t!134606 () Bool)

(declare-fun tb!82617 () Bool)

(assert (=> (and b!1463028 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504655))))) t!134606) tb!82617))

(declare-fun result!99258 () Bool)

(assert (= result!99258 result!99210))

(assert (=> d!428744 t!134606))

(declare-fun t!134608 () Bool)

(declare-fun tb!82619 () Bool)

(assert (=> (and b!1463028 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))))) (toChars!3843 (transformation!2673 (rule!4446 lt!504656)))) t!134608) tb!82619))

(declare-fun result!99260 () Bool)

(assert (= result!99260 result!99122))

(assert (=> d!428568 t!134608))

(declare-fun tb!82621 () Bool)

(declare-fun t!134610 () Bool)

(assert (=> (and b!1463028 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))))) (toChars!3843 (transformation!2673 (rule!4446 lt!504659)))) t!134610) tb!82621))

(declare-fun result!99262 () Bool)

(assert (= result!99262 result!99126))

(assert (=> d!428674 t!134610))

(declare-fun t!134612 () Bool)

(declare-fun tb!82623 () Bool)

(assert (=> (and b!1463028 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504650))))) t!134612) tb!82623))

(declare-fun result!99264 () Bool)

(assert (= result!99264 result!99114))

(assert (=> d!428516 t!134612))

(declare-fun t!134614 () Bool)

(declare-fun tb!82625 () Bool)

(assert (=> (and b!1463028 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504650)))))) t!134614) tb!82625))

(declare-fun result!99266 () Bool)

(assert (= result!99266 result!99118))

(assert (=> d!428558 t!134614))

(declare-fun tb!82627 () Bool)

(declare-fun t!134616 () Bool)

(assert (=> (and b!1463028 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504657))))) t!134616) tb!82627))

(declare-fun result!99268 () Bool)

(assert (= result!99268 result!99078))

(assert (=> d!428018 t!134616))

(declare-fun tb!82629 () Bool)

(declare-fun t!134618 () Bool)

(assert (=> (and b!1463028 (= (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504655)))))) t!134618) tb!82629))

(declare-fun result!99270 () Bool)

(assert (= result!99270 result!99082))

(assert (=> d!428046 t!134618))

(declare-fun b_and!99891 () Bool)

(declare-fun tp!411747 () Bool)

(assert (=> b!1463028 (= tp!411747 (and (=> t!134602 result!99254) (=> t!134610 result!99262) (=> t!134618 result!99270) (=> t!134612 result!99264) (=> t!134614 result!99266) (=> t!134616 result!99268) (=> t!134606 result!99258) (=> t!134608 result!99260) (=> t!134604 result!99256) b_and!99891))))

(declare-fun tp!411749 () Bool)

(declare-fun b!1463027 () Bool)

(declare-fun e!933296 () Bool)

(declare-fun e!933300 () Bool)

(assert (=> b!1463027 (= e!933300 (and tp!411749 (inv!20271 (tag!2937 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))))) (inv!20285 (transformation!2673 (rule!4446 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))))) e!933296))))

(declare-fun e!933297 () Bool)

(assert (=> b!1461235 (= tp!411605 e!933297)))

(assert (=> b!1463028 (= e!933296 (and tp!411751 tp!411747))))

(declare-fun b!1463026 () Bool)

(declare-fun tp!411750 () Bool)

(declare-fun e!933299 () Bool)

(assert (=> b!1463026 (= e!933299 (and (inv!21 (value!85828 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32))))))) e!933300 tp!411750))))

(declare-fun b!1463025 () Bool)

(declare-fun tp!411748 () Bool)

(assert (=> b!1463025 (= e!933297 (and (inv!20290 (h!20575 (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))) e!933299 tp!411748))))

(assert (= b!1463027 b!1463028))

(assert (= b!1463026 b!1463027))

(assert (= b!1463025 b!1463026))

(assert (= (and b!1461235 ((_ is Cons!15174) (innerList!5233 (xs!7920 (c!240746 (tokens!2100 other!32)))))) b!1463025))

(declare-fun m!1701521 () Bool)

(assert (=> b!1463027 m!1701521))

(declare-fun m!1701523 () Bool)

(assert (=> b!1463027 m!1701523))

(declare-fun m!1701525 () Bool)

(assert (=> b!1463026 m!1701525))

(declare-fun m!1701527 () Bool)

(assert (=> b!1463025 m!1701527))

(declare-fun b!1463031 () Bool)

(declare-fun e!933303 () Bool)

(assert (=> b!1463031 (= e!933303 true)))

(declare-fun b!1463030 () Bool)

(declare-fun e!933302 () Bool)

(assert (=> b!1463030 (= e!933302 e!933303)))

(declare-fun b!1463029 () Bool)

(declare-fun e!933301 () Bool)

(assert (=> b!1463029 (= e!933301 e!933302)))

(assert (=> b!1461205 e!933301))

(assert (= b!1463030 b!1463031))

(assert (= b!1463029 b!1463030))

(assert (= (and b!1461205 ((_ is Cons!15175) (t!134384 (rules!11668 thiss!10022)))) b!1463029))

(assert (=> b!1463031 (< (dynLambda!6923 order!9145 (toValue!3984 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022)))))) (dynLambda!6924 order!9147 lambda!63291))))

(assert (=> b!1463031 (< (dynLambda!6925 order!9149 (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 thiss!10022)))))) (dynLambda!6924 order!9147 lambda!63291))))

(declare-fun b!1463035 () Bool)

(declare-fun e!933304 () Bool)

(declare-fun tp!411754 () Bool)

(declare-fun tp!411755 () Bool)

(assert (=> b!1463035 (= e!933304 (and tp!411754 tp!411755))))

(declare-fun b!1463032 () Bool)

(assert (=> b!1463032 (= e!933304 tp_is_empty!6883)))

(declare-fun b!1463034 () Bool)

(declare-fun tp!411756 () Bool)

(assert (=> b!1463034 (= e!933304 tp!411756)))

(declare-fun b!1463033 () Bool)

(declare-fun tp!411753 () Bool)

(declare-fun tp!411752 () Bool)

(assert (=> b!1463033 (= e!933304 (and tp!411753 tp!411752))))

(assert (=> b!1461245 (= tp!411616 e!933304)))

(assert (= (and b!1461245 ((_ is ElementMatch!3987) (regex!2673 (h!20576 (rules!11668 other!32))))) b!1463032))

(assert (= (and b!1461245 ((_ is Concat!6751) (regex!2673 (h!20576 (rules!11668 other!32))))) b!1463033))

(assert (= (and b!1461245 ((_ is Star!3987) (regex!2673 (h!20576 (rules!11668 other!32))))) b!1463034))

(assert (= (and b!1461245 ((_ is Union!3987) (regex!2673 (h!20576 (rules!11668 other!32))))) b!1463035))

(declare-fun b!1463038 () Bool)

(declare-fun b_free!36507 () Bool)

(declare-fun b_next!37211 () Bool)

(assert (=> b!1463038 (= b_free!36507 (not b_next!37211))))

(declare-fun tp!411757 () Bool)

(declare-fun b_and!99893 () Bool)

(assert (=> b!1463038 (= tp!411757 b_and!99893)))

(declare-fun b_free!36509 () Bool)

(declare-fun b_next!37213 () Bool)

(assert (=> b!1463038 (= b_free!36509 (not b_next!37213))))

(declare-fun tb!82631 () Bool)

(declare-fun t!134620 () Bool)

(assert (=> (and b!1463038 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 other!32))))) (toChars!3843 (transformation!2673 (rule!4446 (apply!3952 lt!504662 (+ 0 1)))))) t!134620) tb!82631))

(declare-fun result!99272 () Bool)

(assert (= result!99272 result!99072))

(assert (=> d!427960 t!134620))

(declare-fun t!134622 () Bool)

(declare-fun tb!82633 () Bool)

(assert (=> (and b!1463038 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 other!32))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504657)))))) t!134622) tb!82633))

(declare-fun result!99274 () Bool)

(assert (= result!99274 result!99086))

(assert (=> d!428202 t!134622))

(declare-fun tb!82635 () Bool)

(declare-fun t!134624 () Bool)

(assert (=> (and b!1463038 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 other!32))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504655))))) t!134624) tb!82635))

(declare-fun result!99276 () Bool)

(assert (= result!99276 result!99210))

(assert (=> d!428744 t!134624))

(declare-fun t!134626 () Bool)

(declare-fun tb!82637 () Bool)

(assert (=> (and b!1463038 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 other!32))))) (toChars!3843 (transformation!2673 (rule!4446 lt!504656)))) t!134626) tb!82637))

(declare-fun result!99278 () Bool)

(assert (= result!99278 result!99122))

(assert (=> d!428568 t!134626))

(declare-fun t!134628 () Bool)

(declare-fun tb!82639 () Bool)

(assert (=> (and b!1463038 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 other!32))))) (toChars!3843 (transformation!2673 (rule!4446 lt!504659)))) t!134628) tb!82639))

(declare-fun result!99280 () Bool)

(assert (= result!99280 result!99126))

(assert (=> d!428674 t!134628))

(declare-fun t!134630 () Bool)

(declare-fun tb!82641 () Bool)

(assert (=> (and b!1463038 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 other!32))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504650))))) t!134630) tb!82641))

(declare-fun result!99282 () Bool)

(assert (= result!99282 result!99114))

(assert (=> d!428516 t!134630))

(declare-fun t!134632 () Bool)

(declare-fun tb!82643 () Bool)

(assert (=> (and b!1463038 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 other!32))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504650)))))) t!134632) tb!82643))

(declare-fun result!99284 () Bool)

(assert (= result!99284 result!99118))

(assert (=> d!428558 t!134632))

(declare-fun t!134634 () Bool)

(declare-fun tb!82645 () Bool)

(assert (=> (and b!1463038 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 other!32))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 lt!504657))))) t!134634) tb!82645))

(declare-fun result!99286 () Bool)

(assert (= result!99286 result!99078))

(assert (=> d!428018 t!134634))

(declare-fun tb!82647 () Bool)

(declare-fun t!134636 () Bool)

(assert (=> (and b!1463038 (= (toChars!3843 (transformation!2673 (h!20576 (t!134384 (rules!11668 other!32))))) (toChars!3843 (transformation!2673 (rule!4446 (h!20575 (t!134383 lt!504655)))))) t!134636) tb!82647))

(declare-fun result!99288 () Bool)

(assert (= result!99288 result!99082))

(assert (=> d!428046 t!134636))

(declare-fun tp!411758 () Bool)

(declare-fun b_and!99895 () Bool)

(assert (=> b!1463038 (= tp!411758 (and (=> t!134620 result!99272) (=> t!134622 result!99274) (=> t!134634 result!99286) (=> t!134632 result!99284) (=> t!134624 result!99276) (=> t!134636 result!99288) (=> t!134626 result!99278) (=> t!134630 result!99282) (=> t!134628 result!99280) b_and!99895))))

(declare-fun e!933305 () Bool)

(assert (=> b!1463038 (= e!933305 (and tp!411757 tp!411758))))

(declare-fun e!933308 () Bool)

(declare-fun b!1463037 () Bool)

(declare-fun tp!411759 () Bool)

(assert (=> b!1463037 (= e!933308 (and tp!411759 (inv!20271 (tag!2937 (h!20576 (t!134384 (rules!11668 other!32))))) (inv!20285 (transformation!2673 (h!20576 (t!134384 (rules!11668 other!32))))) e!933305))))

(declare-fun b!1463036 () Bool)

(declare-fun e!933307 () Bool)

(declare-fun tp!411760 () Bool)

(assert (=> b!1463036 (= e!933307 (and e!933308 tp!411760))))

(assert (=> b!1461244 (= tp!411617 e!933307)))

(assert (= b!1463037 b!1463038))

(assert (= b!1463036 b!1463037))

(assert (= (and b!1461244 ((_ is Cons!15175) (t!134384 (rules!11668 other!32)))) b!1463036))

(declare-fun m!1701529 () Bool)

(assert (=> b!1463037 m!1701529))

(declare-fun m!1701531 () Bool)

(assert (=> b!1463037 m!1701531))

(declare-fun tp!411762 () Bool)

(declare-fun tp!411761 () Bool)

(declare-fun e!933309 () Bool)

(declare-fun b!1463039 () Bool)

(assert (=> b!1463039 (= e!933309 (and (inv!20275 (left!12896 (left!12896 (c!240746 (tokens!2100 thiss!10022))))) tp!411761 (inv!20275 (right!13226 (left!12896 (c!240746 (tokens!2100 thiss!10022))))) tp!411762))))

(declare-fun b!1463041 () Bool)

(declare-fun e!933310 () Bool)

(declare-fun tp!411763 () Bool)

(assert (=> b!1463041 (= e!933310 tp!411763)))

(declare-fun b!1463040 () Bool)

(assert (=> b!1463040 (= e!933309 (and (inv!20284 (xs!7920 (left!12896 (c!240746 (tokens!2100 thiss!10022))))) e!933310))))

(assert (=> b!1461247 (= tp!411618 (and (inv!20275 (left!12896 (c!240746 (tokens!2100 thiss!10022)))) e!933309))))

(assert (= (and b!1461247 ((_ is Node!5173) (left!12896 (c!240746 (tokens!2100 thiss!10022))))) b!1463039))

(assert (= b!1463040 b!1463041))

(assert (= (and b!1461247 ((_ is Leaf!7711) (left!12896 (c!240746 (tokens!2100 thiss!10022))))) b!1463040))

(declare-fun m!1701533 () Bool)

(assert (=> b!1463039 m!1701533))

(declare-fun m!1701535 () Bool)

(assert (=> b!1463039 m!1701535))

(declare-fun m!1701537 () Bool)

(assert (=> b!1463040 m!1701537))

(assert (=> b!1461247 m!1696711))

(declare-fun tp!411764 () Bool)

(declare-fun b!1463042 () Bool)

(declare-fun e!933311 () Bool)

(declare-fun tp!411765 () Bool)

(assert (=> b!1463042 (= e!933311 (and (inv!20275 (left!12896 (right!13226 (c!240746 (tokens!2100 thiss!10022))))) tp!411764 (inv!20275 (right!13226 (right!13226 (c!240746 (tokens!2100 thiss!10022))))) tp!411765))))

(declare-fun b!1463044 () Bool)

(declare-fun e!933312 () Bool)

(declare-fun tp!411766 () Bool)

(assert (=> b!1463044 (= e!933312 tp!411766)))

(declare-fun b!1463043 () Bool)

(assert (=> b!1463043 (= e!933311 (and (inv!20284 (xs!7920 (right!13226 (c!240746 (tokens!2100 thiss!10022))))) e!933312))))

(assert (=> b!1461247 (= tp!411619 (and (inv!20275 (right!13226 (c!240746 (tokens!2100 thiss!10022)))) e!933311))))

(assert (= (and b!1461247 ((_ is Node!5173) (right!13226 (c!240746 (tokens!2100 thiss!10022))))) b!1463042))

(assert (= b!1463043 b!1463044))

(assert (= (and b!1461247 ((_ is Leaf!7711) (right!13226 (c!240746 (tokens!2100 thiss!10022))))) b!1463043))

(declare-fun m!1701539 () Bool)

(assert (=> b!1463042 m!1701539))

(declare-fun m!1701541 () Bool)

(assert (=> b!1463042 m!1701541))

(declare-fun m!1701543 () Bool)

(assert (=> b!1463043 m!1701543))

(assert (=> b!1461247 m!1696713))

(declare-fun b_lambda!45653 () Bool)

(assert (= b_lambda!45621 (or d!427750 b_lambda!45653)))

(declare-fun bs!344443 () Bool)

(declare-fun d!428796 () Bool)

(assert (= bs!344443 (and d!428796 d!427750)))

(assert (=> bs!344443 (= (dynLambda!6928 lambda!63291 (h!20575 lt!504655)) (rulesProduceIndividualToken!1248 Lexer!2327 (rules!11668 thiss!10022) (h!20575 lt!504655)))))

(assert (=> bs!344443 m!1696675))

(assert (=> b!1461913 d!428796))

(check-sat (not b!1461994) (not d!427970) (not b!1462621) (not b!1461710) b_and!99887 (not b!1462587) (not b!1462657) (not d!428006) (not b!1462991) (not b!1462933) (not b!1462060) (not d!427966) (not b!1462810) (not b!1462280) (not b!1462808) (not b!1461982) (not b!1461388) (not b!1462090) (not d!428220) (not b!1461666) (not b!1461871) (not b!1461984) (not b!1461319) (not b!1462062) (not b!1461340) (not d!427946) (not tb!82445) (not b!1461557) (not b!1462031) (not b!1461565) (not d!427938) (not b!1462638) (not b!1461939) (not b!1463037) (not b!1461864) (not d!428556) (not b!1462970) (not b!1461247) (not d!428024) (not b!1461947) (not b!1461755) (not d!428696) (not b!1461317) (not b!1462317) (not d!428550) (not b!1461637) (not b!1461945) (not d!427928) b_and!99895 (not b!1462288) (not b!1461685) (not b!1461313) (not d!428344) (not b!1462655) (not b!1462613) (not b!1461689) (not b!1462601) (not bm!98337) (not b!1461625) (not b!1462087) (not b!1462581) (not d!428512) (not b!1463044) (not b!1462278) (not b!1462939) (not b!1462270) (not d!428218) (not b!1462273) (not b!1461711) (not b!1462606) (not d!428670) (not b!1462620) (not b!1463029) (not b!1462625) (not d!428560) (not d!428524) (not b!1461626) (not b!1461965) (not b!1462798) (not d!428698) (not b!1462992) (not d!428530) (not d!428342) (not b!1462266) (not b_next!37205) (not b!1462603) (not b_lambda!45645) (not b!1461429) (not bm!98327) (not d!428038) (not b!1463023) (not d!428162) (not b!1461736) (not b!1462615) (not b!1462578) (not b!1462269) (not b!1462085) (not b!1462682) (not b!1462972) (not b!1462057) (not b!1462978) (not b!1462645) (not b!1462994) (not tb!82441) (not b!1463043) (not b!1462074) (not b!1461500) (not b!1461919) (not d!428236) (not d!428188) (not d!428514) (not b!1461387) (not b!1461926) (not b!1461558) (not d!428684) (not d!428018) (not b!1462595) (not b!1461988) (not d!428548) (not d!428160) (not d!428204) (not b!1461339) (not d!428736) (not d!428242) (not d!427842) (not b!1461867) (not b!1461924) (not d!428336) (not d!428764) (not d!428758) (not d!428330) (not b!1461732) (not b!1462652) (not b!1461374) (not b!1461756) (not b!1461737) (not d!427828) (not d!427856) (not b!1461608) (not b!1462653) (not b!1462956) (not tb!82493) (not b!1462799) (not b!1461690) (not b!1461641) (not b!1461687) (not d!428510) (not d!427830) (not b!1461665) (not b!1462605) (not b!1461862) (not d!428498) (not b!1462339) (not d!428240) (not d!427924) b_and!99891 (not b!1462078) (not d!428500) (not d!427968) (not d!428046) (not bm!98307) (not b!1462455) (not d!428754) (not b!1461971) (not b!1462033) (not b!1462936) (not bm!98326) (not d!428172) (not b!1461362) (not d!428016) (not d!428544) (not d!428214) (not d!428516) (not d!428782) (not b!1462804) (not b!1461753) (not b!1461866) (not d!427958) (not d!428228) (not b!1462624) (not d!427886) b_and!99789 (not b!1463041) (not b!1462076) (not b!1461509) (not d!428246) (not b!1462632) (not d!428794) (not b!1461872) (not bm!98303) (not bm!98318) (not b!1463027) (not b!1462974) (not b!1462815) (not d!427936) (not b!1462962) (not b!1462630) (not b!1461357) (not b!1463036) (not b!1461951) (not d!428148) (not d!427974) (not d!428702) (not d!427972) (not b!1461749) (not b!1463033) (not d!428164) (not b!1461494) (not d!428034) (not bm!98402) b_and!99893 (not d!428174) (not d!428136) (not b!1461363) (not b!1461701) (not b!1462059) (not bm!98328) (not d!428002) (not d!428158) (not b!1461978) (not tb!82489) (not b!1461553) (not d!428766) (not d!428772) (not b!1461368) (not b!1461386) (not b!1462809) (not d!428674) (not b!1463034) (not b!1461674) (not b!1462951) (not d!427858) (not b!1461992) (not b!1462611) (not d!428752) (not b!1462984) (not b!1462779) (not bm!98404) (not d!428186) (not b!1462058) (not d!428682) (not b!1462807) (not b!1462600) (not b!1462993) (not b!1462954) (not b!1462947) (not b!1461940) (not b!1463022) (not d!428112) (not d!428568) (not d!427904) (not b!1462942) (not b!1461341) (not b!1461758) (not d!428504) (not b!1462596) (not bm!98325) (not b!1461663) (not d!428790) (not b_lambda!45643) (not b!1461740) (not b_lambda!45619) (not b!1461754) (not d!428014) (not b_next!37203) (not b!1461702) (not b!1462965) (not b!1461664) (not b!1463025) (not b!1462973) (not b!1462928) (not b!1462805) (not b!1462454) (not b!1463007) (not b!1462083) (not b!1461884) b_and!99785 (not d!428566) (not b!1463035) (not b_lambda!45651) (not b!1462796) (not bs!344443) (not b!1462590) (not d!428742) (not b!1461345) (not b!1461343) (not d!427934) (not d!428000) (not bm!98329) (not b!1462649) (not b!1462659) (not d!428412) (not d!428686) (not b!1462588) (not bm!98315) (not d!428760) (not d!428676) (not b!1461946) (not b!1461752) (not b!1463008) (not b!1462628) (not b!1461887) (not b!1462612) (not tb!82449) (not b!1461428) (not d!428506) (not b_next!37213) b_and!99877 (not d!427980) (not b!1461966) (not b!1462643) (not b!1462283) (not d!428558) (not d!427822) (not d!427978) (not b!1462572) (not d!427916) (not d!428216) (not b!1461385) (not b!1462683) (not d!428562) (not b!1462599) (not b!1461969) (not b_next!37175) (not d!428414) (not b_next!37209) (not b!1461615) (not b!1462941) (not d!428496) (not d!428778) (not b!1462029) (not d!428532) (not b!1461670) (not b!1461658) (not d!428192) (not b!1463039) (not b!1461972) (not b!1461616) (not b!1462580) (not d!427982) (not d!428226) (not b_lambda!45641) (not b!1462986) (not b!1462583) (not d!428788) (not b!1461938) (not b!1462284) (not b!1462637) (not b!1462092) (not b!1461649) (not b!1461703) (not d!428692) (not b!1462079) (not b!1462975) (not d!427996) (not b!1462276) (not b!1461927) (not b!1463026) (not b!1461691) (not d!428206) (not b!1461886) (not b!1462609) (not b!1462639) (not b!1463040) (not d!427990) (not d!428200) (not d!428182) (not b!1462944) (not bm!98309) (not b!1461556) (not b_lambda!45617) (not b!1462281) (not d!428552) (not d!428176) (not d!428328) (not b!1462604) (not b!1462681) (not b!1462976) (not b!1462642) (not d!428212) (not b!1461320) (not b!1461708) (not b!1462821) (not b!1462287) (not d!428738) (not b!1462957) (not d!427932) (not b!1461657) (not b!1462084) (not d!428564) (not d!428210) b_and!99885 (not d!428230) (not b!1461505) (not d!428590) (not b!1461430) b_and!99879 (not b!1461654) (not b!1462617) (not b!1461346) (not b!1461497) (not d!428338) (not d!428538) (not d!428784) (not b!1461937) (not b!1461617) (not tb!82453) (not d!428744) (not b!1461356) (not d!428168) (not b!1462937) (not d!428048) (not d!428540) (not d!428194) (not b!1462316) (not b!1461360) (not b!1461633) (not b!1461943) (not b!1462618) (not d!428144) (not b!1462089) (not b!1462996) b_and!99889 (not d!428032) (not d!428106) (not tb!82573) (not b!1461569) (not d!427808) (not b_next!37201) (not b!1461688) (not b!1461868) (not b!1462945) (not b!1461365) (not b!1462989) (not d!427832) (not d!427976) (not b!1461949) (not b!1462575) (not b!1462037) (not b!1462648) (not b!1461645) (not b!1462817) (not d!427960) (not d!427940) (not b!1462577) (not bm!98308) (not b!1461952) (not d!428170) (not b!1461315) (not b!1461358) (not d!428554) (not d!427998) (not b!1462934) (not b_next!37179) (not b!1461720) (not d!428042) (not d!428770) (not b!1461751) (not d!428762) (not d!427948) (not d!427918) (not b!1462064) (not b_next!37177) (not b_lambda!45623) (not b!1462819) (not b!1462081) (not b!1462598) (not b!1461724) (not b!1461914) (not b!1461656) (not d!428520) (not b!1462640) (not b!1461944) (not d!428694) (not b!1461870) (not b!1462274) (not b!1462800) (not b!1461747) (not d!427962) (not b!1462571) (not bm!98324) (not b!1461407) (not b!1461757) (not b!1463042) (not b!1461655) (not d!428180) (not b!1461699) (not b!1462282) (not b_next!37181) (not b!1462968) (not d!428096) (not d!427806) (not d!427920) (not d!428208) (not d!428340) (not b!1461653) (not d!428708) (not d!427866) (not tb!82481) (not d!428526) (not b!1461970) (not b!1462589) (not b_next!37207) (not b!1462969) (not d!427988) (not b!1462774) (not b!1462988) (not b!1461566) (not d!428190) (not b_next!37211) (not d!427956) (not b!1462088) (not d!428178) (not bm!98343) (not b!1461401) (not b!1462929) (not b!1461985) (not d!428036) (not b!1462586) (not b!1462025) (not b!1461389) (not bm!98401) (not d!428542) (not b!1462773) (not d!428222) (not b!1462616) (not b!1461730) (not b!1461503) (not b_next!37199) (not b!1462456) (not b!1461624) (not b!1462636) (not b!1461427) (not b!1462949) (not b!1461431) (not b!1462594) (not b!1462277) (not b!1462955) b_and!99881 (not d!428740) (not b!1461942) (not tb!82485) (not d!428108) (not bm!98340) (not d!428768) (not b!1462812) (not d!428040) (not b!1461989) (not b!1461679) (not b!1461922) (not d!427984) (not b!1461683) (not d!427950) (not b!1462592) (not d!427944) (not d!428244) (not b!1462958) (not b!1462585) (not b!1462644) (not b_lambda!45653) (not d!428202) (not b!1462597) (not b!1462286) (not b!1461555) (not b!1462063) (not b!1461432) (not b_lambda!45639) (not b!1462026) (not b!1461950) (not b!1462995) (not b!1462967) (not b!1462634) (not d!427870) (not b!1463024) (not d!428570) (not b!1462963) tp_is_empty!6883 (not b!1462591) (not d!427894) (not d!428332) (not d!428044) (not b!1461359) (not b!1462082) (not b_lambda!45615) (not b!1462610) (not b!1462816) (not d!428502) (not b!1463009) (not b!1461233) (not b!1461567) (not bm!98346) (not b!1461739) (not b!1461734) (not b!1462684) (not b!1462980) (not d!428668) (not b!1461629) (not b!1461554) (not b!1462056) (not d!427992) (not d!428334) (not b!1462035) (not b!1461885) (not b!1461400) (not d!428546) (not bm!98344) (not b!1461314) (not b!1462075) (not b!1461695) (not d!428536) (not b!1462795) (not d!428104) (not bm!98403) (not b!1461686) (not b!1462983) (not bm!98310) (not b!1462971) (not b!1462977) (not b!1461612) (not b!1462950) (not b!1461991) (not b!1462656) (not d!427898) b_and!99883 (not b!1461705) (not b!1462328) (not b!1461935) (not b!1461990) (not b!1462811) (not d!427854) (not b!1462608) (not b!1462979))
(check-sat b_and!99887 b_and!99895 (not b_next!37205) b_and!99891 b_and!99789 b_and!99893 (not b_next!37203) b_and!99785 b_and!99889 (not b_next!37201) (not b_next!37211) b_and!99883 (not b_next!37213) b_and!99877 (not b_next!37175) (not b_next!37209) b_and!99885 b_and!99879 (not b_next!37179) (not b_next!37177) (not b_next!37181) (not b_next!37207) b_and!99881 (not b_next!37199))
