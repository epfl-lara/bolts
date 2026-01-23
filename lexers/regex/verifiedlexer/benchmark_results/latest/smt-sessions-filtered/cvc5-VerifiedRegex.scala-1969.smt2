; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100440 () Bool)

(assert start!100440)

(declare-fun b!1153664 () Bool)

(declare-fun res!518970 () Bool)

(declare-fun e!737594 () Bool)

(assert (=> b!1153664 (=> (not res!518970) (not e!737594))))

(declare-fun to!267 () Int)

(declare-datatypes ((List!11145 0))(
  ( (Nil!11121) (Cons!11121 (h!16522 (_ BitVec 16)) (t!108679 List!11145)) )
))
(declare-datatypes ((TokenValue!1984 0))(
  ( (FloatLiteralValue!3968 (text!14333 List!11145)) (TokenValueExt!1983 (__x!7679 Int)) (Broken!9920 (value!62635 List!11145)) (Object!2007) (End!1984) (Def!1984) (Underscore!1984) (Match!1984) (Else!1984) (Error!1984) (Case!1984) (If!1984) (Extends!1984) (Abstract!1984) (Class!1984) (Val!1984) (DelimiterValue!3968 (del!2044 List!11145)) (KeywordValue!1990 (value!62636 List!11145)) (CommentValue!3968 (value!62637 List!11145)) (WhitespaceValue!3968 (value!62638 List!11145)) (IndentationValue!1984 (value!62639 List!11145)) (String!13509) (Int32!1984) (Broken!9921 (value!62640 List!11145)) (Boolean!1985) (Unit!17177) (OperatorValue!1987 (op!2044 List!11145)) (IdentifierValue!3968 (value!62641 List!11145)) (IdentifierValue!3969 (value!62642 List!11145)) (WhitespaceValue!3969 (value!62643 List!11145)) (True!3968) (False!3968) (Broken!9922 (value!62644 List!11145)) (Broken!9923 (value!62645 List!11145)) (True!3969) (RightBrace!1984) (RightBracket!1984) (Colon!1984) (Null!1984) (Comma!1984) (LeftBracket!1984) (False!3969) (LeftBrace!1984) (ImaginaryLiteralValue!1984 (text!14334 List!11145)) (StringLiteralValue!5952 (value!62646 List!11145)) (EOFValue!1984 (value!62647 List!11145)) (IdentValue!1984 (value!62648 List!11145)) (DelimiterValue!3969 (value!62649 List!11145)) (DedentValue!1984 (value!62650 List!11145)) (NewLineValue!1984 (value!62651 List!11145)) (IntegerValue!5952 (value!62652 (_ BitVec 32)) (text!14335 List!11145)) (IntegerValue!5953 (value!62653 Int) (text!14336 List!11145)) (Times!1984) (Or!1984) (Equal!1984) (Minus!1984) (Broken!9924 (value!62654 List!11145)) (And!1984) (Div!1984) (LessEqual!1984) (Mod!1984) (Concat!5172) (Not!1984) (Plus!1984) (SpaceValue!1984 (value!62655 List!11145)) (IntegerValue!5954 (value!62656 Int) (text!14337 List!11145)) (StringLiteralValue!5953 (text!14338 List!11145)) (FloatLiteralValue!3969 (text!14339 List!11145)) (BytesLiteralValue!1984 (value!62657 List!11145)) (CommentValue!3969 (value!62658 List!11145)) (StringLiteralValue!5954 (value!62659 List!11145)) (ErrorTokenValue!1984 (msg!2045 List!11145)) )
))
(declare-datatypes ((C!6694 0))(
  ( (C!6695 (val!3603 Int)) )
))
(declare-datatypes ((Regex!3188 0))(
  ( (ElementMatch!3188 (c!193916 C!6694)) (Concat!5173 (regOne!6888 Regex!3188) (regTwo!6888 Regex!3188)) (EmptyExpr!3188) (Star!3188 (reg!3517 Regex!3188)) (EmptyLang!3188) (Union!3188 (regOne!6889 Regex!3188) (regTwo!6889 Regex!3188)) )
))
(declare-datatypes ((String!13510 0))(
  ( (String!13511 (value!62660 String)) )
))
(declare-datatypes ((List!11146 0))(
  ( (Nil!11122) (Cons!11122 (h!16523 C!6694) (t!108680 List!11146)) )
))
(declare-datatypes ((IArray!7201 0))(
  ( (IArray!7202 (innerList!3658 List!11146)) )
))
(declare-datatypes ((Conc!3598 0))(
  ( (Node!3598 (left!9679 Conc!3598) (right!10009 Conc!3598) (csize!7426 Int) (cheight!3809 Int)) (Leaf!5568 (xs!6303 IArray!7201) (csize!7427 Int)) (Empty!3598) )
))
(declare-datatypes ((BalanceConc!7218 0))(
  ( (BalanceConc!7219 (c!193917 Conc!3598)) )
))
(declare-datatypes ((TokenValueInjection!3668 0))(
  ( (TokenValueInjection!3669 (toValue!3019 Int) (toChars!2878 Int)) )
))
(declare-datatypes ((Rule!3636 0))(
  ( (Rule!3637 (regex!1918 Regex!3188) (tag!2180 String!13510) (isSeparator!1918 Bool) (transformation!1918 TokenValueInjection!3668)) )
))
(declare-datatypes ((Token!3498 0))(
  ( (Token!3499 (value!62661 TokenValue!1984) (rule!3339 Rule!3636) (size!8768 Int) (originalCharacters!2472 List!11146)) )
))
(declare-datatypes ((List!11147 0))(
  ( (Nil!11123) (Cons!11123 (h!16524 Token!3498) (t!108681 List!11147)) )
))
(declare-datatypes ((List!11148 0))(
  ( (Nil!11124) (Cons!11124 (h!16525 Rule!3636) (t!108682 List!11148)) )
))
(declare-datatypes ((IArray!7203 0))(
  ( (IArray!7204 (innerList!3659 List!11147)) )
))
(declare-datatypes ((Conc!3599 0))(
  ( (Node!3599 (left!9680 Conc!3599) (right!10010 Conc!3599) (csize!7428 Int) (cheight!3810 Int)) (Leaf!5569 (xs!6304 IArray!7203) (csize!7429 Int)) (Empty!3599) )
))
(declare-datatypes ((BalanceConc!7220 0))(
  ( (BalanceConc!7221 (c!193918 Conc!3599)) )
))
(declare-datatypes ((PrintableTokens!522 0))(
  ( (PrintableTokens!523 (rules!9379 List!11148) (tokens!1517 BalanceConc!7220)) )
))
(declare-fun thiss!10527 () PrintableTokens!522)

(declare-fun size!8769 (BalanceConc!7220) Int)

(assert (=> b!1153664 (= res!518970 (<= to!267 (size!8769 (tokens!1517 thiss!10527))))))

(declare-fun b!1153665 () Bool)

(declare-fun e!737593 () Bool)

(declare-fun isEmpty!6903 (List!11148) Bool)

(assert (=> b!1153665 (= e!737593 (isEmpty!6903 (rules!9379 thiss!10527)))))

(declare-fun res!518969 () Bool)

(assert (=> start!100440 (=> (not res!518969) (not e!737594))))

(declare-fun from!787 () Int)

(assert (=> start!100440 (= res!518969 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100440 e!737594))

(assert (=> start!100440 true))

(declare-fun e!737595 () Bool)

(declare-fun inv!14608 (PrintableTokens!522) Bool)

(assert (=> start!100440 (and (inv!14608 thiss!10527) e!737595)))

(declare-fun b!1153666 () Bool)

(declare-fun e!737592 () Bool)

(declare-fun tp!332700 () Bool)

(declare-fun inv!14609 (Conc!3599) Bool)

(assert (=> b!1153666 (= e!737592 (and (inv!14609 (c!193918 (tokens!1517 thiss!10527))) tp!332700))))

(declare-fun b!1153667 () Bool)

(assert (=> b!1153667 (= e!737594 e!737593)))

(declare-fun res!518971 () Bool)

(assert (=> b!1153667 (=> (not res!518971) (not e!737593))))

(declare-datatypes ((LexerInterface!1613 0))(
  ( (LexerInterfaceExt!1610 (__x!7680 Int)) (Lexer!1611) )
))
(declare-fun rulesInvariant!1487 (LexerInterface!1613 List!11148) Bool)

(assert (=> b!1153667 (= res!518971 (rulesInvariant!1487 Lexer!1611 (rules!9379 thiss!10527)))))

(declare-datatypes ((Unit!17178 0))(
  ( (Unit!17179) )
))
(declare-fun lt!392468 () Unit!17178)

(declare-fun lemmaInvariant!105 (PrintableTokens!522) Unit!17178)

(assert (=> b!1153667 (= lt!392468 (lemmaInvariant!105 thiss!10527))))

(declare-fun tp!332699 () Bool)

(declare-fun b!1153668 () Bool)

(declare-fun inv!14610 (BalanceConc!7220) Bool)

(assert (=> b!1153668 (= e!737595 (and tp!332699 (inv!14610 (tokens!1517 thiss!10527)) e!737592))))

(assert (= (and start!100440 res!518969) b!1153664))

(assert (= (and b!1153664 res!518970) b!1153667))

(assert (= (and b!1153667 res!518971) b!1153665))

(assert (= b!1153668 b!1153666))

(assert (= start!100440 b!1153668))

(declare-fun m!1321053 () Bool)

(assert (=> b!1153668 m!1321053))

(declare-fun m!1321055 () Bool)

(assert (=> start!100440 m!1321055))

(declare-fun m!1321057 () Bool)

(assert (=> b!1153667 m!1321057))

(declare-fun m!1321059 () Bool)

(assert (=> b!1153667 m!1321059))

(declare-fun m!1321061 () Bool)

(assert (=> b!1153665 m!1321061))

(declare-fun m!1321063 () Bool)

(assert (=> b!1153664 m!1321063))

(declare-fun m!1321065 () Bool)

(assert (=> b!1153666 m!1321065))

(push 1)

(assert (not start!100440))

(assert (not b!1153664))

(assert (not b!1153666))

(assert (not b!1153665))

(assert (not b!1153668))

(assert (not b!1153667))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!329984 () Bool)

(declare-fun res!518983 () Bool)

(declare-fun e!737610 () Bool)

(assert (=> d!329984 (=> (not res!518983) (not e!737610))))

(declare-fun rulesValid!661 (LexerInterface!1613 List!11148) Bool)

(assert (=> d!329984 (= res!518983 (rulesValid!661 Lexer!1611 (rules!9379 thiss!10527)))))

(assert (=> d!329984 (= (rulesInvariant!1487 Lexer!1611 (rules!9379 thiss!10527)) e!737610)))

(declare-fun b!1153686 () Bool)

(declare-datatypes ((List!11153 0))(
  ( (Nil!11129) (Cons!11129 (h!16530 String!13510) (t!108687 List!11153)) )
))
(declare-fun noDuplicateTag!661 (LexerInterface!1613 List!11148 List!11153) Bool)

(assert (=> b!1153686 (= e!737610 (noDuplicateTag!661 Lexer!1611 (rules!9379 thiss!10527) Nil!11129))))

(assert (= (and d!329984 res!518983) b!1153686))

(declare-fun m!1321081 () Bool)

(assert (=> d!329984 m!1321081))

(declare-fun m!1321083 () Bool)

(assert (=> b!1153686 m!1321083))

(assert (=> b!1153667 d!329984))

(declare-fun d!329988 () Bool)

(declare-fun e!737616 () Bool)

(assert (=> d!329988 e!737616))

(declare-fun res!518991 () Bool)

(assert (=> d!329988 (=> (not res!518991) (not e!737616))))

(assert (=> d!329988 (= res!518991 (rulesInvariant!1487 Lexer!1611 (rules!9379 thiss!10527)))))

(declare-fun Unit!17183 () Unit!17178)

(assert (=> d!329988 (= (lemmaInvariant!105 thiss!10527) Unit!17183)))

(declare-fun b!1153694 () Bool)

(declare-fun res!518992 () Bool)

(assert (=> b!1153694 (=> (not res!518992) (not e!737616))))

(declare-fun rulesProduceEachTokenIndividually!653 (LexerInterface!1613 List!11148 BalanceConc!7220) Bool)

(assert (=> b!1153694 (= res!518992 (rulesProduceEachTokenIndividually!653 Lexer!1611 (rules!9379 thiss!10527) (tokens!1517 thiss!10527)))))

(declare-fun b!1153695 () Bool)

(declare-fun separableTokens!80 (LexerInterface!1613 BalanceConc!7220 List!11148) Bool)

(assert (=> b!1153695 (= e!737616 (separableTokens!80 Lexer!1611 (tokens!1517 thiss!10527) (rules!9379 thiss!10527)))))

(assert (= (and d!329988 res!518991) b!1153694))

(assert (= (and b!1153694 res!518992) b!1153695))

(assert (=> d!329988 m!1321057))

(declare-fun m!1321089 () Bool)

(assert (=> b!1153694 m!1321089))

(declare-fun m!1321091 () Bool)

(assert (=> b!1153695 m!1321091))

(assert (=> b!1153667 d!329988))

(declare-fun d!329992 () Bool)

(declare-fun isBalanced!1019 (Conc!3599) Bool)

(assert (=> d!329992 (= (inv!14610 (tokens!1517 thiss!10527)) (isBalanced!1019 (c!193918 (tokens!1517 thiss!10527))))))

(declare-fun bs!282723 () Bool)

(assert (= bs!282723 d!329992))

(declare-fun m!1321093 () Bool)

(assert (=> bs!282723 m!1321093))

(assert (=> b!1153668 d!329992))

(declare-fun d!329994 () Bool)

(declare-fun lt!392474 () Int)

(declare-fun size!8772 (List!11147) Int)

(declare-fun list!4109 (BalanceConc!7220) List!11147)

(assert (=> d!329994 (= lt!392474 (size!8772 (list!4109 (tokens!1517 thiss!10527))))))

(declare-fun size!8773 (Conc!3599) Int)

(assert (=> d!329994 (= lt!392474 (size!8773 (c!193918 (tokens!1517 thiss!10527))))))

(assert (=> d!329994 (= (size!8769 (tokens!1517 thiss!10527)) lt!392474)))

(declare-fun bs!282724 () Bool)

(assert (= bs!282724 d!329994))

(declare-fun m!1321095 () Bool)

(assert (=> bs!282724 m!1321095))

(assert (=> bs!282724 m!1321095))

(declare-fun m!1321097 () Bool)

(assert (=> bs!282724 m!1321097))

(declare-fun m!1321099 () Bool)

(assert (=> bs!282724 m!1321099))

(assert (=> b!1153664 d!329994))

(declare-fun d!329996 () Bool)

(assert (=> d!329996 (= (isEmpty!6903 (rules!9379 thiss!10527)) (is-Nil!11124 (rules!9379 thiss!10527)))))

(assert (=> b!1153665 d!329996))

(declare-fun d!329998 () Bool)

(declare-fun res!518999 () Bool)

(declare-fun e!737619 () Bool)

(assert (=> d!329998 (=> (not res!518999) (not e!737619))))

(assert (=> d!329998 (= res!518999 (not (isEmpty!6903 (rules!9379 thiss!10527))))))

(assert (=> d!329998 (= (inv!14608 thiss!10527) e!737619)))

(declare-fun b!1153702 () Bool)

(declare-fun res!519000 () Bool)

(assert (=> b!1153702 (=> (not res!519000) (not e!737619))))

(assert (=> b!1153702 (= res!519000 (rulesInvariant!1487 Lexer!1611 (rules!9379 thiss!10527)))))

(declare-fun b!1153703 () Bool)

(declare-fun res!519001 () Bool)

(assert (=> b!1153703 (=> (not res!519001) (not e!737619))))

(assert (=> b!1153703 (= res!519001 (rulesProduceEachTokenIndividually!653 Lexer!1611 (rules!9379 thiss!10527) (tokens!1517 thiss!10527)))))

(declare-fun b!1153704 () Bool)

(assert (=> b!1153704 (= e!737619 (separableTokens!80 Lexer!1611 (tokens!1517 thiss!10527) (rules!9379 thiss!10527)))))

(assert (= (and d!329998 res!518999) b!1153702))

(assert (= (and b!1153702 res!519000) b!1153703))

(assert (= (and b!1153703 res!519001) b!1153704))

(assert (=> d!329998 m!1321061))

(assert (=> b!1153702 m!1321057))

(assert (=> b!1153703 m!1321089))

(assert (=> b!1153704 m!1321091))

(assert (=> start!100440 d!329998))

(declare-fun d!330000 () Bool)

(declare-fun c!193924 () Bool)

(assert (=> d!330000 (= c!193924 (is-Node!3599 (c!193918 (tokens!1517 thiss!10527))))))

(declare-fun e!737624 () Bool)

(assert (=> d!330000 (= (inv!14609 (c!193918 (tokens!1517 thiss!10527))) e!737624)))

(declare-fun b!1153711 () Bool)

(declare-fun inv!14614 (Conc!3599) Bool)

(assert (=> b!1153711 (= e!737624 (inv!14614 (c!193918 (tokens!1517 thiss!10527))))))

(declare-fun b!1153712 () Bool)

(declare-fun e!737625 () Bool)

(assert (=> b!1153712 (= e!737624 e!737625)))

(declare-fun res!519004 () Bool)

(assert (=> b!1153712 (= res!519004 (not (is-Leaf!5569 (c!193918 (tokens!1517 thiss!10527)))))))

(assert (=> b!1153712 (=> res!519004 e!737625)))

(declare-fun b!1153713 () Bool)

(declare-fun inv!14615 (Conc!3599) Bool)

(assert (=> b!1153713 (= e!737625 (inv!14615 (c!193918 (tokens!1517 thiss!10527))))))

(assert (= (and d!330000 c!193924) b!1153711))

(assert (= (and d!330000 (not c!193924)) b!1153712))

(assert (= (and b!1153712 (not res!519004)) b!1153713))

(declare-fun m!1321101 () Bool)

(assert (=> b!1153711 m!1321101))

(declare-fun m!1321103 () Bool)

(assert (=> b!1153713 m!1321103))

(assert (=> b!1153666 d!330000))

(declare-fun b!1153724 () Bool)

(declare-fun b_free!27617 () Bool)

(declare-fun b_next!28321 () Bool)

(assert (=> b!1153724 (= b_free!27617 (not b_next!28321))))

(declare-fun tp!332716 () Bool)

(declare-fun b_and!80493 () Bool)

(assert (=> b!1153724 (= tp!332716 b_and!80493)))

(declare-fun b_free!27619 () Bool)

(declare-fun b_next!28323 () Bool)

(assert (=> b!1153724 (= b_free!27619 (not b_next!28323))))

(declare-fun tp!332715 () Bool)

(declare-fun b_and!80495 () Bool)

(assert (=> b!1153724 (= tp!332715 b_and!80495)))

(declare-fun e!737634 () Bool)

(assert (=> b!1153724 (= e!737634 (and tp!332716 tp!332715))))

(declare-fun e!737636 () Bool)

(declare-fun b!1153723 () Bool)

(declare-fun tp!332718 () Bool)

(declare-fun inv!14605 (String!13510) Bool)

(declare-fun inv!14616 (TokenValueInjection!3668) Bool)

(assert (=> b!1153723 (= e!737636 (and tp!332718 (inv!14605 (tag!2180 (h!16525 (rules!9379 thiss!10527)))) (inv!14616 (transformation!1918 (h!16525 (rules!9379 thiss!10527)))) e!737634))))

(declare-fun b!1153722 () Bool)

(declare-fun e!737635 () Bool)

(declare-fun tp!332717 () Bool)

(assert (=> b!1153722 (= e!737635 (and e!737636 tp!332717))))

(assert (=> b!1153668 (= tp!332699 e!737635)))

(assert (= b!1153723 b!1153724))

(assert (= b!1153722 b!1153723))

(assert (= (and b!1153668 (is-Cons!11124 (rules!9379 thiss!10527))) b!1153722))

(declare-fun m!1321105 () Bool)

(assert (=> b!1153723 m!1321105))

(declare-fun m!1321107 () Bool)

(assert (=> b!1153723 m!1321107))

(declare-fun b!1153733 () Bool)

(declare-fun tp!332726 () Bool)

(declare-fun e!737642 () Bool)

(declare-fun tp!332727 () Bool)

(assert (=> b!1153733 (= e!737642 (and (inv!14609 (left!9680 (c!193918 (tokens!1517 thiss!10527)))) tp!332726 (inv!14609 (right!10010 (c!193918 (tokens!1517 thiss!10527)))) tp!332727))))

(declare-fun b!1153735 () Bool)

(declare-fun e!737643 () Bool)

(declare-fun tp!332725 () Bool)

(assert (=> b!1153735 (= e!737643 tp!332725)))

(declare-fun b!1153734 () Bool)

(declare-fun inv!14617 (IArray!7203) Bool)

(assert (=> b!1153734 (= e!737642 (and (inv!14617 (xs!6304 (c!193918 (tokens!1517 thiss!10527)))) e!737643))))

(assert (=> b!1153666 (= tp!332700 (and (inv!14609 (c!193918 (tokens!1517 thiss!10527))) e!737642))))

(assert (= (and b!1153666 (is-Node!3599 (c!193918 (tokens!1517 thiss!10527)))) b!1153733))

(assert (= b!1153734 b!1153735))

(assert (= (and b!1153666 (is-Leaf!5569 (c!193918 (tokens!1517 thiss!10527)))) b!1153734))

(declare-fun m!1321109 () Bool)

(assert (=> b!1153733 m!1321109))

(declare-fun m!1321111 () Bool)

(assert (=> b!1153733 m!1321111))

(declare-fun m!1321113 () Bool)

(assert (=> b!1153734 m!1321113))

(assert (=> b!1153666 m!1321065))

(push 1)

(assert b_and!80493)

(assert (not b_next!28321))

(assert (not d!329984))

(assert (not d!329998))

(assert (not b!1153695))

(assert b_and!80495)

(assert (not b!1153703))

(assert (not d!329994))

(assert (not b_next!28323))

(assert (not d!329992))

(assert (not b!1153686))

(assert (not b!1153733))

(assert (not b!1153704))

(assert (not b!1153694))

(assert (not b!1153666))

(assert (not b!1153723))

(assert (not b!1153711))

(assert (not d!329988))

(assert (not b!1153702))

(assert (not b!1153734))

(assert (not b!1153735))

(assert (not b!1153722))

(assert (not b!1153713))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80493)

(assert b_and!80495)

(assert (not b_next!28321))

(assert (not b_next!28323))

(check-sat)

(pop 1)

