; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401194 () Bool)

(assert start!401194)

(declare-fun b!4199775 () Bool)

(declare-fun b_free!122475 () Bool)

(declare-fun b_next!123179 () Bool)

(assert (=> b!4199775 (= b_free!122475 (not b_next!123179))))

(declare-fun tp!1282910 () Bool)

(declare-fun b_and!329529 () Bool)

(assert (=> b!4199775 (= tp!1282910 b_and!329529)))

(declare-fun b_free!122477 () Bool)

(declare-fun b_next!123181 () Bool)

(assert (=> b!4199775 (= b_free!122477 (not b_next!123181))))

(declare-fun tp!1282913 () Bool)

(declare-fun b_and!329531 () Bool)

(assert (=> b!4199775 (= tp!1282913 b_and!329531)))

(declare-fun b!4199774 () Bool)

(declare-fun b_free!122479 () Bool)

(declare-fun b_next!123183 () Bool)

(assert (=> b!4199774 (= b_free!122479 (not b_next!123183))))

(declare-fun tp!1282911 () Bool)

(declare-fun b_and!329533 () Bool)

(assert (=> b!4199774 (= tp!1282911 b_and!329533)))

(declare-fun b_free!122481 () Bool)

(declare-fun b_next!123185 () Bool)

(assert (=> b!4199774 (= b_free!122481 (not b_next!123185))))

(declare-fun tp!1282920 () Bool)

(declare-fun b_and!329535 () Bool)

(assert (=> b!4199774 (= tp!1282920 b_and!329535)))

(declare-fun b!4199765 () Bool)

(declare-fun res!1724735 () Bool)

(declare-fun e!2606976 () Bool)

(assert (=> b!4199765 (=> (not res!1724735) (not e!2606976))))

(declare-datatypes ((List!46267 0))(
  ( (Nil!46143) (Cons!46143 (h!51563 (_ BitVec 16)) (t!346772 List!46267)) )
))
(declare-datatypes ((TokenValue!7934 0))(
  ( (FloatLiteralValue!15868 (text!55983 List!46267)) (TokenValueExt!7933 (__x!28091 Int)) (Broken!39670 (value!240070 List!46267)) (Object!8057) (End!7934) (Def!7934) (Underscore!7934) (Match!7934) (Else!7934) (Error!7934) (Case!7934) (If!7934) (Extends!7934) (Abstract!7934) (Class!7934) (Val!7934) (DelimiterValue!15868 (del!7994 List!46267)) (KeywordValue!7940 (value!240071 List!46267)) (CommentValue!15868 (value!240072 List!46267)) (WhitespaceValue!15868 (value!240073 List!46267)) (IndentationValue!7934 (value!240074 List!46267)) (String!53539) (Int32!7934) (Broken!39671 (value!240075 List!46267)) (Boolean!7935) (Unit!65248) (OperatorValue!7937 (op!7994 List!46267)) (IdentifierValue!15868 (value!240076 List!46267)) (IdentifierValue!15869 (value!240077 List!46267)) (WhitespaceValue!15869 (value!240078 List!46267)) (True!15868) (False!15868) (Broken!39672 (value!240079 List!46267)) (Broken!39673 (value!240080 List!46267)) (True!15869) (RightBrace!7934) (RightBracket!7934) (Colon!7934) (Null!7934) (Comma!7934) (LeftBracket!7934) (False!15869) (LeftBrace!7934) (ImaginaryLiteralValue!7934 (text!55984 List!46267)) (StringLiteralValue!23802 (value!240081 List!46267)) (EOFValue!7934 (value!240082 List!46267)) (IdentValue!7934 (value!240083 List!46267)) (DelimiterValue!15869 (value!240084 List!46267)) (DedentValue!7934 (value!240085 List!46267)) (NewLineValue!7934 (value!240086 List!46267)) (IntegerValue!23802 (value!240087 (_ BitVec 32)) (text!55985 List!46267)) (IntegerValue!23803 (value!240088 Int) (text!55986 List!46267)) (Times!7934) (Or!7934) (Equal!7934) (Minus!7934) (Broken!39674 (value!240089 List!46267)) (And!7934) (Div!7934) (LessEqual!7934) (Mod!7934) (Concat!20543) (Not!7934) (Plus!7934) (SpaceValue!7934 (value!240090 List!46267)) (IntegerValue!23804 (value!240091 Int) (text!55987 List!46267)) (StringLiteralValue!23803 (text!55988 List!46267)) (FloatLiteralValue!15869 (text!55989 List!46267)) (BytesLiteralValue!7934 (value!240092 List!46267)) (CommentValue!15869 (value!240093 List!46267)) (StringLiteralValue!23804 (value!240094 List!46267)) (ErrorTokenValue!7934 (msg!7995 List!46267)) )
))
(declare-datatypes ((C!25412 0))(
  ( (C!25413 (val!14868 Int)) )
))
(declare-datatypes ((List!46268 0))(
  ( (Nil!46144) (Cons!46144 (h!51564 C!25412) (t!346773 List!46268)) )
))
(declare-datatypes ((IArray!27835 0))(
  ( (IArray!27836 (innerList!13975 List!46268)) )
))
(declare-datatypes ((Regex!12609 0))(
  ( (ElementMatch!12609 (c!716156 C!25412)) (Concat!20544 (regOne!25730 Regex!12609) (regTwo!25730 Regex!12609)) (EmptyExpr!12609) (Star!12609 (reg!12938 Regex!12609)) (EmptyLang!12609) (Union!12609 (regOne!25731 Regex!12609) (regTwo!25731 Regex!12609)) )
))
(declare-datatypes ((String!53540 0))(
  ( (String!53541 (value!240095 String)) )
))
(declare-datatypes ((Conc!13915 0))(
  ( (Node!13915 (left!34374 Conc!13915) (right!34704 Conc!13915) (csize!28060 Int) (cheight!14126 Int)) (Leaf!21511 (xs!17221 IArray!27835) (csize!28061 Int)) (Empty!13915) )
))
(declare-datatypes ((BalanceConc!27424 0))(
  ( (BalanceConc!27425 (c!716157 Conc!13915)) )
))
(declare-datatypes ((TokenValueInjection!15296 0))(
  ( (TokenValueInjection!15297 (toValue!10404 Int) (toChars!10263 Int)) )
))
(declare-datatypes ((Rule!15208 0))(
  ( (Rule!15209 (regex!7704 Regex!12609) (tag!8568 String!53540) (isSeparator!7704 Bool) (transformation!7704 TokenValueInjection!15296)) )
))
(declare-datatypes ((List!46269 0))(
  ( (Nil!46145) (Cons!46145 (h!51565 Rule!15208) (t!346774 List!46269)) )
))
(declare-fun rules!3967 () List!46269)

(declare-fun isEmpty!27329 (List!46269) Bool)

(assert (=> b!4199765 (= res!1724735 (not (isEmpty!27329 rules!3967)))))

(declare-fun b!4199766 () Bool)

(declare-fun res!1724736 () Bool)

(assert (=> b!4199766 (=> (not res!1724736) (not e!2606976))))

(declare-fun p!3001 () List!46268)

(declare-fun input!3517 () List!46268)

(declare-fun isPrefix!4563 (List!46268 List!46268) Bool)

(assert (=> b!4199766 (= res!1724736 (isPrefix!4563 p!3001 input!3517))))

(declare-fun b!4199767 () Bool)

(declare-fun res!1724737 () Bool)

(assert (=> b!4199767 (=> (not res!1724737) (not e!2606976))))

(declare-fun suffix!1557 () List!46268)

(declare-fun ++!11778 (List!46268 List!46268) List!46268)

(assert (=> b!4199767 (= res!1724737 (= (++!11778 p!3001 suffix!1557) input!3517))))

(declare-fun rBis!178 () Rule!15208)

(declare-fun tp!1282915 () Bool)

(declare-fun b!4199768 () Bool)

(declare-fun e!2606977 () Bool)

(declare-fun e!2606967 () Bool)

(declare-fun inv!60701 (String!53540) Bool)

(declare-fun inv!60703 (TokenValueInjection!15296) Bool)

(assert (=> b!4199768 (= e!2606977 (and tp!1282915 (inv!60701 (tag!8568 rBis!178)) (inv!60703 (transformation!7704 rBis!178)) e!2606967))))

(declare-fun b!4199769 () Bool)

(declare-fun e!2606974 () Bool)

(declare-fun e!2606968 () Bool)

(declare-fun tp!1282918 () Bool)

(assert (=> b!4199769 (= e!2606974 (and e!2606968 tp!1282918))))

(declare-fun b!4199770 () Bool)

(declare-datatypes ((LexerInterface!7299 0))(
  ( (LexerInterfaceExt!7296 (__x!28092 Int)) (Lexer!7297) )
))
(declare-fun thiss!26544 () LexerInterface!7299)

(declare-fun rulesValidInductive!2852 (LexerInterface!7299 List!46269) Bool)

(assert (=> b!4199770 (= e!2606976 (not (rulesValidInductive!2852 thiss!26544 rules!3967)))))

(declare-fun b!4199771 () Bool)

(declare-fun e!2606975 () Bool)

(declare-fun tp_is_empty!22185 () Bool)

(declare-fun tp!1282914 () Bool)

(assert (=> b!4199771 (= e!2606975 (and tp_is_empty!22185 tp!1282914))))

(declare-fun b!4199772 () Bool)

(declare-fun e!2606970 () Bool)

(declare-fun tp!1282919 () Bool)

(assert (=> b!4199772 (= e!2606968 (and tp!1282919 (inv!60701 (tag!8568 (h!51565 rules!3967))) (inv!60703 (transformation!7704 (h!51565 rules!3967))) e!2606970))))

(declare-fun b!4199773 () Bool)

(declare-fun e!2606969 () Bool)

(declare-fun tp!1282912 () Bool)

(assert (=> b!4199773 (= e!2606969 (and tp_is_empty!22185 tp!1282912))))

(assert (=> b!4199774 (= e!2606967 (and tp!1282911 tp!1282920))))

(declare-fun res!1724738 () Bool)

(assert (=> start!401194 (=> (not res!1724738) (not e!2606976))))

(get-info :version)

(assert (=> start!401194 (= res!1724738 ((_ is Lexer!7297) thiss!26544))))

(assert (=> start!401194 e!2606976))

(assert (=> start!401194 true))

(assert (=> start!401194 e!2606977))

(assert (=> start!401194 e!2606975))

(assert (=> start!401194 e!2606974))

(declare-fun e!2606978 () Bool)

(assert (=> start!401194 e!2606978))

(assert (=> start!401194 e!2606969))

(declare-fun e!2606973 () Bool)

(assert (=> start!401194 e!2606973))

(assert (=> b!4199775 (= e!2606970 (and tp!1282910 tp!1282913))))

(declare-fun b!4199776 () Bool)

(declare-fun res!1724734 () Bool)

(assert (=> b!4199776 (=> (not res!1724734) (not e!2606976))))

(declare-fun rulesInvariant!6510 (LexerInterface!7299 List!46269) Bool)

(assert (=> b!4199776 (= res!1724734 (rulesInvariant!6510 thiss!26544 rules!3967))))

(declare-fun b!4199777 () Bool)

(declare-fun res!1724740 () Bool)

(assert (=> b!4199777 (=> (not res!1724740) (not e!2606976))))

(declare-fun contains!9515 (List!46269 Rule!15208) Bool)

(assert (=> b!4199777 (= res!1724740 (contains!9515 rules!3967 rBis!178))))

(declare-fun b!4199778 () Bool)

(declare-fun res!1724739 () Bool)

(assert (=> b!4199778 (=> (not res!1724739) (not e!2606976))))

(declare-fun pBis!121 () List!46268)

(assert (=> b!4199778 (= res!1724739 (isPrefix!4563 pBis!121 input!3517))))

(declare-fun b!4199779 () Bool)

(declare-fun tp!1282916 () Bool)

(assert (=> b!4199779 (= e!2606978 (and tp_is_empty!22185 tp!1282916))))

(declare-fun b!4199780 () Bool)

(declare-fun tp!1282917 () Bool)

(assert (=> b!4199780 (= e!2606973 (and tp_is_empty!22185 tp!1282917))))

(assert (= (and start!401194 res!1724738) b!4199767))

(assert (= (and b!4199767 res!1724737) b!4199766))

(assert (= (and b!4199766 res!1724736) b!4199778))

(assert (= (and b!4199778 res!1724739) b!4199765))

(assert (= (and b!4199765 res!1724735) b!4199776))

(assert (= (and b!4199776 res!1724734) b!4199777))

(assert (= (and b!4199777 res!1724740) b!4199770))

(assert (= b!4199768 b!4199774))

(assert (= start!401194 b!4199768))

(assert (= (and start!401194 ((_ is Cons!46144) p!3001)) b!4199771))

(assert (= b!4199772 b!4199775))

(assert (= b!4199769 b!4199772))

(assert (= (and start!401194 ((_ is Cons!46145) rules!3967)) b!4199769))

(assert (= (and start!401194 ((_ is Cons!46144) input!3517)) b!4199779))

(assert (= (and start!401194 ((_ is Cons!46144) pBis!121)) b!4199773))

(assert (= (and start!401194 ((_ is Cons!46144) suffix!1557)) b!4199780))

(declare-fun m!4788417 () Bool)

(assert (=> b!4199767 m!4788417))

(declare-fun m!4788419 () Bool)

(assert (=> b!4199777 m!4788419))

(declare-fun m!4788421 () Bool)

(assert (=> b!4199765 m!4788421))

(declare-fun m!4788423 () Bool)

(assert (=> b!4199768 m!4788423))

(declare-fun m!4788425 () Bool)

(assert (=> b!4199768 m!4788425))

(declare-fun m!4788427 () Bool)

(assert (=> b!4199776 m!4788427))

(declare-fun m!4788429 () Bool)

(assert (=> b!4199778 m!4788429))

(declare-fun m!4788431 () Bool)

(assert (=> b!4199772 m!4788431))

(declare-fun m!4788433 () Bool)

(assert (=> b!4199772 m!4788433))

(declare-fun m!4788435 () Bool)

(assert (=> b!4199770 m!4788435))

(declare-fun m!4788437 () Bool)

(assert (=> b!4199766 m!4788437))

(check-sat (not b!4199777) (not b!4199780) b_and!329531 (not b!4199778) (not b!4199769) (not b!4199766) (not b_next!123185) (not b_next!123181) b_and!329529 b_and!329533 (not b!4199772) (not b_next!123183) (not b!4199768) b_and!329535 (not b!4199767) (not b!4199771) (not b_next!123179) tp_is_empty!22185 (not b!4199779) (not b!4199770) (not b!4199765) (not b!4199773) (not b!4199776))
(check-sat (not b_next!123183) b_and!329535 b_and!329531 (not b_next!123179) (not b_next!123185) (not b_next!123181) b_and!329529 b_and!329533)
(get-model)

(declare-fun d!1238266 () Bool)

(assert (=> d!1238266 true))

(declare-fun lt!1496248 () Bool)

(declare-fun lambda!129577 () Int)

(declare-fun forall!8482 (List!46269 Int) Bool)

(assert (=> d!1238266 (= lt!1496248 (forall!8482 rules!3967 lambda!129577))))

(declare-fun e!2607042 () Bool)

(assert (=> d!1238266 (= lt!1496248 e!2607042)))

(declare-fun res!1724791 () Bool)

(assert (=> d!1238266 (=> res!1724791 e!2607042)))

(assert (=> d!1238266 (= res!1724791 (not ((_ is Cons!46145) rules!3967)))))

(assert (=> d!1238266 (= (rulesValidInductive!2852 thiss!26544 rules!3967) lt!1496248)))

(declare-fun b!4199871 () Bool)

(declare-fun e!2607043 () Bool)

(assert (=> b!4199871 (= e!2607042 e!2607043)))

(declare-fun res!1724790 () Bool)

(assert (=> b!4199871 (=> (not res!1724790) (not e!2607043))))

(declare-fun ruleValid!3420 (LexerInterface!7299 Rule!15208) Bool)

(assert (=> b!4199871 (= res!1724790 (ruleValid!3420 thiss!26544 (h!51565 rules!3967)))))

(declare-fun b!4199872 () Bool)

(assert (=> b!4199872 (= e!2607043 (rulesValidInductive!2852 thiss!26544 (t!346774 rules!3967)))))

(assert (= (and d!1238266 (not res!1724791)) b!4199871))

(assert (= (and b!4199871 res!1724790) b!4199872))

(declare-fun m!4788501 () Bool)

(assert (=> d!1238266 m!4788501))

(declare-fun m!4788503 () Bool)

(assert (=> b!4199871 m!4788503))

(declare-fun m!4788505 () Bool)

(assert (=> b!4199872 m!4788505))

(assert (=> b!4199770 d!1238266))

(declare-fun d!1238288 () Bool)

(assert (=> d!1238288 (= (inv!60701 (tag!8568 rBis!178)) (= (mod (str.len (value!240095 (tag!8568 rBis!178))) 2) 0))))

(assert (=> b!4199768 d!1238288))

(declare-fun d!1238290 () Bool)

(declare-fun res!1724794 () Bool)

(declare-fun e!2607046 () Bool)

(assert (=> d!1238290 (=> (not res!1724794) (not e!2607046))))

(declare-fun semiInverseModEq!3346 (Int Int) Bool)

(assert (=> d!1238290 (= res!1724794 (semiInverseModEq!3346 (toChars!10263 (transformation!7704 rBis!178)) (toValue!10404 (transformation!7704 rBis!178))))))

(assert (=> d!1238290 (= (inv!60703 (transformation!7704 rBis!178)) e!2607046)))

(declare-fun b!4199877 () Bool)

(declare-fun equivClasses!3245 (Int Int) Bool)

(assert (=> b!4199877 (= e!2607046 (equivClasses!3245 (toChars!10263 (transformation!7704 rBis!178)) (toValue!10404 (transformation!7704 rBis!178))))))

(assert (= (and d!1238290 res!1724794) b!4199877))

(declare-fun m!4788507 () Bool)

(assert (=> d!1238290 m!4788507))

(declare-fun m!4788509 () Bool)

(assert (=> b!4199877 m!4788509))

(assert (=> b!4199768 d!1238290))

(declare-fun d!1238292 () Bool)

(assert (=> d!1238292 (= (inv!60701 (tag!8568 (h!51565 rules!3967))) (= (mod (str.len (value!240095 (tag!8568 (h!51565 rules!3967)))) 2) 0))))

(assert (=> b!4199772 d!1238292))

(declare-fun d!1238294 () Bool)

(declare-fun res!1724795 () Bool)

(declare-fun e!2607047 () Bool)

(assert (=> d!1238294 (=> (not res!1724795) (not e!2607047))))

(assert (=> d!1238294 (= res!1724795 (semiInverseModEq!3346 (toChars!10263 (transformation!7704 (h!51565 rules!3967))) (toValue!10404 (transformation!7704 (h!51565 rules!3967)))))))

(assert (=> d!1238294 (= (inv!60703 (transformation!7704 (h!51565 rules!3967))) e!2607047)))

(declare-fun b!4199878 () Bool)

(assert (=> b!4199878 (= e!2607047 (equivClasses!3245 (toChars!10263 (transformation!7704 (h!51565 rules!3967))) (toValue!10404 (transformation!7704 (h!51565 rules!3967)))))))

(assert (= (and d!1238294 res!1724795) b!4199878))

(declare-fun m!4788511 () Bool)

(assert (=> d!1238294 m!4788511))

(declare-fun m!4788513 () Bool)

(assert (=> b!4199878 m!4788513))

(assert (=> b!4199772 d!1238294))

(declare-fun d!1238296 () Bool)

(declare-fun lt!1496251 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7208 (List!46269) (InoxSet Rule!15208))

(assert (=> d!1238296 (= lt!1496251 (select (content!7208 rules!3967) rBis!178))))

(declare-fun e!2607053 () Bool)

(assert (=> d!1238296 (= lt!1496251 e!2607053)))

(declare-fun res!1724800 () Bool)

(assert (=> d!1238296 (=> (not res!1724800) (not e!2607053))))

(assert (=> d!1238296 (= res!1724800 ((_ is Cons!46145) rules!3967))))

(assert (=> d!1238296 (= (contains!9515 rules!3967 rBis!178) lt!1496251)))

(declare-fun b!4199883 () Bool)

(declare-fun e!2607052 () Bool)

(assert (=> b!4199883 (= e!2607053 e!2607052)))

(declare-fun res!1724801 () Bool)

(assert (=> b!4199883 (=> res!1724801 e!2607052)))

(assert (=> b!4199883 (= res!1724801 (= (h!51565 rules!3967) rBis!178))))

(declare-fun b!4199884 () Bool)

(assert (=> b!4199884 (= e!2607052 (contains!9515 (t!346774 rules!3967) rBis!178))))

(assert (= (and d!1238296 res!1724800) b!4199883))

(assert (= (and b!4199883 (not res!1724801)) b!4199884))

(declare-fun m!4788515 () Bool)

(assert (=> d!1238296 m!4788515))

(declare-fun m!4788517 () Bool)

(assert (=> d!1238296 m!4788517))

(declare-fun m!4788519 () Bool)

(assert (=> b!4199884 m!4788519))

(assert (=> b!4199777 d!1238296))

(declare-fun b!4199893 () Bool)

(declare-fun e!2607060 () Bool)

(declare-fun e!2607061 () Bool)

(assert (=> b!4199893 (= e!2607060 e!2607061)))

(declare-fun res!1724813 () Bool)

(assert (=> b!4199893 (=> (not res!1724813) (not e!2607061))))

(assert (=> b!4199893 (= res!1724813 (not ((_ is Nil!46144) input!3517)))))

(declare-fun d!1238298 () Bool)

(declare-fun e!2607062 () Bool)

(assert (=> d!1238298 e!2607062))

(declare-fun res!1724812 () Bool)

(assert (=> d!1238298 (=> res!1724812 e!2607062)))

(declare-fun lt!1496254 () Bool)

(assert (=> d!1238298 (= res!1724812 (not lt!1496254))))

(assert (=> d!1238298 (= lt!1496254 e!2607060)))

(declare-fun res!1724810 () Bool)

(assert (=> d!1238298 (=> res!1724810 e!2607060)))

(assert (=> d!1238298 (= res!1724810 ((_ is Nil!46144) pBis!121))))

(assert (=> d!1238298 (= (isPrefix!4563 pBis!121 input!3517) lt!1496254)))

(declare-fun b!4199894 () Bool)

(declare-fun res!1724811 () Bool)

(assert (=> b!4199894 (=> (not res!1724811) (not e!2607061))))

(declare-fun head!8914 (List!46268) C!25412)

(assert (=> b!4199894 (= res!1724811 (= (head!8914 pBis!121) (head!8914 input!3517)))))

(declare-fun b!4199895 () Bool)

(declare-fun tail!6761 (List!46268) List!46268)

(assert (=> b!4199895 (= e!2607061 (isPrefix!4563 (tail!6761 pBis!121) (tail!6761 input!3517)))))

(declare-fun b!4199896 () Bool)

(declare-fun size!33921 (List!46268) Int)

(assert (=> b!4199896 (= e!2607062 (>= (size!33921 input!3517) (size!33921 pBis!121)))))

(assert (= (and d!1238298 (not res!1724810)) b!4199893))

(assert (= (and b!4199893 res!1724813) b!4199894))

(assert (= (and b!4199894 res!1724811) b!4199895))

(assert (= (and d!1238298 (not res!1724812)) b!4199896))

(declare-fun m!4788521 () Bool)

(assert (=> b!4199894 m!4788521))

(declare-fun m!4788523 () Bool)

(assert (=> b!4199894 m!4788523))

(declare-fun m!4788525 () Bool)

(assert (=> b!4199895 m!4788525))

(declare-fun m!4788527 () Bool)

(assert (=> b!4199895 m!4788527))

(assert (=> b!4199895 m!4788525))

(assert (=> b!4199895 m!4788527))

(declare-fun m!4788529 () Bool)

(assert (=> b!4199895 m!4788529))

(declare-fun m!4788531 () Bool)

(assert (=> b!4199896 m!4788531))

(declare-fun m!4788533 () Bool)

(assert (=> b!4199896 m!4788533))

(assert (=> b!4199778 d!1238298))

(declare-fun b!4199906 () Bool)

(declare-fun e!2607067 () List!46268)

(assert (=> b!4199906 (= e!2607067 (Cons!46144 (h!51564 p!3001) (++!11778 (t!346773 p!3001) suffix!1557)))))

(declare-fun d!1238300 () Bool)

(declare-fun e!2607068 () Bool)

(assert (=> d!1238300 e!2607068))

(declare-fun res!1724818 () Bool)

(assert (=> d!1238300 (=> (not res!1724818) (not e!2607068))))

(declare-fun lt!1496257 () List!46268)

(declare-fun content!7209 (List!46268) (InoxSet C!25412))

(assert (=> d!1238300 (= res!1724818 (= (content!7209 lt!1496257) ((_ map or) (content!7209 p!3001) (content!7209 suffix!1557))))))

(assert (=> d!1238300 (= lt!1496257 e!2607067)))

(declare-fun c!716163 () Bool)

(assert (=> d!1238300 (= c!716163 ((_ is Nil!46144) p!3001))))

(assert (=> d!1238300 (= (++!11778 p!3001 suffix!1557) lt!1496257)))

(declare-fun b!4199907 () Bool)

(declare-fun res!1724819 () Bool)

(assert (=> b!4199907 (=> (not res!1724819) (not e!2607068))))

(assert (=> b!4199907 (= res!1724819 (= (size!33921 lt!1496257) (+ (size!33921 p!3001) (size!33921 suffix!1557))))))

(declare-fun b!4199908 () Bool)

(assert (=> b!4199908 (= e!2607068 (or (not (= suffix!1557 Nil!46144)) (= lt!1496257 p!3001)))))

(declare-fun b!4199905 () Bool)

(assert (=> b!4199905 (= e!2607067 suffix!1557)))

(assert (= (and d!1238300 c!716163) b!4199905))

(assert (= (and d!1238300 (not c!716163)) b!4199906))

(assert (= (and d!1238300 res!1724818) b!4199907))

(assert (= (and b!4199907 res!1724819) b!4199908))

(declare-fun m!4788535 () Bool)

(assert (=> b!4199906 m!4788535))

(declare-fun m!4788537 () Bool)

(assert (=> d!1238300 m!4788537))

(declare-fun m!4788539 () Bool)

(assert (=> d!1238300 m!4788539))

(declare-fun m!4788541 () Bool)

(assert (=> d!1238300 m!4788541))

(declare-fun m!4788543 () Bool)

(assert (=> b!4199907 m!4788543))

(declare-fun m!4788545 () Bool)

(assert (=> b!4199907 m!4788545))

(declare-fun m!4788547 () Bool)

(assert (=> b!4199907 m!4788547))

(assert (=> b!4199767 d!1238300))

(declare-fun d!1238302 () Bool)

(declare-fun res!1724822 () Bool)

(declare-fun e!2607071 () Bool)

(assert (=> d!1238302 (=> (not res!1724822) (not e!2607071))))

(declare-fun rulesValid!3014 (LexerInterface!7299 List!46269) Bool)

(assert (=> d!1238302 (= res!1724822 (rulesValid!3014 thiss!26544 rules!3967))))

(assert (=> d!1238302 (= (rulesInvariant!6510 thiss!26544 rules!3967) e!2607071)))

(declare-fun b!4199911 () Bool)

(declare-datatypes ((List!46271 0))(
  ( (Nil!46147) (Cons!46147 (h!51567 String!53540) (t!346776 List!46271)) )
))
(declare-fun noDuplicateTag!3175 (LexerInterface!7299 List!46269 List!46271) Bool)

(assert (=> b!4199911 (= e!2607071 (noDuplicateTag!3175 thiss!26544 rules!3967 Nil!46147))))

(assert (= (and d!1238302 res!1724822) b!4199911))

(declare-fun m!4788549 () Bool)

(assert (=> d!1238302 m!4788549))

(declare-fun m!4788551 () Bool)

(assert (=> b!4199911 m!4788551))

(assert (=> b!4199776 d!1238302))

(declare-fun d!1238304 () Bool)

(assert (=> d!1238304 (= (isEmpty!27329 rules!3967) ((_ is Nil!46145) rules!3967))))

(assert (=> b!4199765 d!1238304))

(declare-fun b!4199912 () Bool)

(declare-fun e!2607072 () Bool)

(declare-fun e!2607073 () Bool)

(assert (=> b!4199912 (= e!2607072 e!2607073)))

(declare-fun res!1724826 () Bool)

(assert (=> b!4199912 (=> (not res!1724826) (not e!2607073))))

(assert (=> b!4199912 (= res!1724826 (not ((_ is Nil!46144) input!3517)))))

(declare-fun d!1238306 () Bool)

(declare-fun e!2607074 () Bool)

(assert (=> d!1238306 e!2607074))

(declare-fun res!1724825 () Bool)

(assert (=> d!1238306 (=> res!1724825 e!2607074)))

(declare-fun lt!1496258 () Bool)

(assert (=> d!1238306 (= res!1724825 (not lt!1496258))))

(assert (=> d!1238306 (= lt!1496258 e!2607072)))

(declare-fun res!1724823 () Bool)

(assert (=> d!1238306 (=> res!1724823 e!2607072)))

(assert (=> d!1238306 (= res!1724823 ((_ is Nil!46144) p!3001))))

(assert (=> d!1238306 (= (isPrefix!4563 p!3001 input!3517) lt!1496258)))

(declare-fun b!4199913 () Bool)

(declare-fun res!1724824 () Bool)

(assert (=> b!4199913 (=> (not res!1724824) (not e!2607073))))

(assert (=> b!4199913 (= res!1724824 (= (head!8914 p!3001) (head!8914 input!3517)))))

(declare-fun b!4199914 () Bool)

(assert (=> b!4199914 (= e!2607073 (isPrefix!4563 (tail!6761 p!3001) (tail!6761 input!3517)))))

(declare-fun b!4199915 () Bool)

(assert (=> b!4199915 (= e!2607074 (>= (size!33921 input!3517) (size!33921 p!3001)))))

(assert (= (and d!1238306 (not res!1724823)) b!4199912))

(assert (= (and b!4199912 res!1724826) b!4199913))

(assert (= (and b!4199913 res!1724824) b!4199914))

(assert (= (and d!1238306 (not res!1724825)) b!4199915))

(declare-fun m!4788553 () Bool)

(assert (=> b!4199913 m!4788553))

(assert (=> b!4199913 m!4788523))

(declare-fun m!4788555 () Bool)

(assert (=> b!4199914 m!4788555))

(assert (=> b!4199914 m!4788527))

(assert (=> b!4199914 m!4788555))

(assert (=> b!4199914 m!4788527))

(declare-fun m!4788557 () Bool)

(assert (=> b!4199914 m!4788557))

(assert (=> b!4199915 m!4788531))

(assert (=> b!4199915 m!4788545))

(assert (=> b!4199766 d!1238306))

(declare-fun b!4199920 () Bool)

(declare-fun e!2607077 () Bool)

(declare-fun tp!1282961 () Bool)

(assert (=> b!4199920 (= e!2607077 (and tp_is_empty!22185 tp!1282961))))

(assert (=> b!4199780 (= tp!1282917 e!2607077)))

(assert (= (and b!4199780 ((_ is Cons!46144) (t!346773 suffix!1557))) b!4199920))

(declare-fun b!4199931 () Bool)

(declare-fun b_free!122487 () Bool)

(declare-fun b_next!123191 () Bool)

(assert (=> b!4199931 (= b_free!122487 (not b_next!123191))))

(declare-fun tp!1282972 () Bool)

(declare-fun b_and!329541 () Bool)

(assert (=> b!4199931 (= tp!1282972 b_and!329541)))

(declare-fun b_free!122489 () Bool)

(declare-fun b_next!123193 () Bool)

(assert (=> b!4199931 (= b_free!122489 (not b_next!123193))))

(declare-fun tp!1282973 () Bool)

(declare-fun b_and!329543 () Bool)

(assert (=> b!4199931 (= tp!1282973 b_and!329543)))

(declare-fun e!2607087 () Bool)

(assert (=> b!4199931 (= e!2607087 (and tp!1282972 tp!1282973))))

(declare-fun tp!1282971 () Bool)

(declare-fun e!2607086 () Bool)

(declare-fun b!4199930 () Bool)

(assert (=> b!4199930 (= e!2607086 (and tp!1282971 (inv!60701 (tag!8568 (h!51565 (t!346774 rules!3967)))) (inv!60703 (transformation!7704 (h!51565 (t!346774 rules!3967)))) e!2607087))))

(declare-fun b!4199929 () Bool)

(declare-fun e!2607088 () Bool)

(declare-fun tp!1282970 () Bool)

(assert (=> b!4199929 (= e!2607088 (and e!2607086 tp!1282970))))

(assert (=> b!4199769 (= tp!1282918 e!2607088)))

(assert (= b!4199930 b!4199931))

(assert (= b!4199929 b!4199930))

(assert (= (and b!4199769 ((_ is Cons!46145) (t!346774 rules!3967))) b!4199929))

(declare-fun m!4788559 () Bool)

(assert (=> b!4199930 m!4788559))

(declare-fun m!4788561 () Bool)

(assert (=> b!4199930 m!4788561))

(declare-fun b!4199944 () Bool)

(declare-fun e!2607092 () Bool)

(declare-fun tp!1282986 () Bool)

(assert (=> b!4199944 (= e!2607092 tp!1282986)))

(declare-fun b!4199945 () Bool)

(declare-fun tp!1282985 () Bool)

(declare-fun tp!1282988 () Bool)

(assert (=> b!4199945 (= e!2607092 (and tp!1282985 tp!1282988))))

(assert (=> b!4199768 (= tp!1282915 e!2607092)))

(declare-fun b!4199942 () Bool)

(assert (=> b!4199942 (= e!2607092 tp_is_empty!22185)))

(declare-fun b!4199943 () Bool)

(declare-fun tp!1282984 () Bool)

(declare-fun tp!1282987 () Bool)

(assert (=> b!4199943 (= e!2607092 (and tp!1282984 tp!1282987))))

(assert (= (and b!4199768 ((_ is ElementMatch!12609) (regex!7704 rBis!178))) b!4199942))

(assert (= (and b!4199768 ((_ is Concat!20544) (regex!7704 rBis!178))) b!4199943))

(assert (= (and b!4199768 ((_ is Star!12609) (regex!7704 rBis!178))) b!4199944))

(assert (= (and b!4199768 ((_ is Union!12609) (regex!7704 rBis!178))) b!4199945))

(declare-fun b!4199946 () Bool)

(declare-fun e!2607093 () Bool)

(declare-fun tp!1282989 () Bool)

(assert (=> b!4199946 (= e!2607093 (and tp_is_empty!22185 tp!1282989))))

(assert (=> b!4199773 (= tp!1282912 e!2607093)))

(assert (= (and b!4199773 ((_ is Cons!46144) (t!346773 pBis!121))) b!4199946))

(declare-fun b!4199947 () Bool)

(declare-fun e!2607094 () Bool)

(declare-fun tp!1282990 () Bool)

(assert (=> b!4199947 (= e!2607094 (and tp_is_empty!22185 tp!1282990))))

(assert (=> b!4199779 (= tp!1282916 e!2607094)))

(assert (= (and b!4199779 ((_ is Cons!46144) (t!346773 input!3517))) b!4199947))

(declare-fun b!4199950 () Bool)

(declare-fun e!2607095 () Bool)

(declare-fun tp!1282993 () Bool)

(assert (=> b!4199950 (= e!2607095 tp!1282993)))

(declare-fun b!4199951 () Bool)

(declare-fun tp!1282992 () Bool)

(declare-fun tp!1282995 () Bool)

(assert (=> b!4199951 (= e!2607095 (and tp!1282992 tp!1282995))))

(assert (=> b!4199772 (= tp!1282919 e!2607095)))

(declare-fun b!4199948 () Bool)

(assert (=> b!4199948 (= e!2607095 tp_is_empty!22185)))

(declare-fun b!4199949 () Bool)

(declare-fun tp!1282991 () Bool)

(declare-fun tp!1282994 () Bool)

(assert (=> b!4199949 (= e!2607095 (and tp!1282991 tp!1282994))))

(assert (= (and b!4199772 ((_ is ElementMatch!12609) (regex!7704 (h!51565 rules!3967)))) b!4199948))

(assert (= (and b!4199772 ((_ is Concat!20544) (regex!7704 (h!51565 rules!3967)))) b!4199949))

(assert (= (and b!4199772 ((_ is Star!12609) (regex!7704 (h!51565 rules!3967)))) b!4199950))

(assert (= (and b!4199772 ((_ is Union!12609) (regex!7704 (h!51565 rules!3967)))) b!4199951))

(declare-fun b!4199952 () Bool)

(declare-fun e!2607096 () Bool)

(declare-fun tp!1282996 () Bool)

(assert (=> b!4199952 (= e!2607096 (and tp_is_empty!22185 tp!1282996))))

(assert (=> b!4199771 (= tp!1282914 e!2607096)))

(assert (= (and b!4199771 ((_ is Cons!46144) (t!346773 p!3001))) b!4199952))

(check-sat (not b_next!123183) (not b!4199907) (not b!4199950) (not b!4199952) (not d!1238290) (not b!4199949) (not b!4199929) (not b!4199913) b_and!329541 (not b!4199877) b_and!329529 b_and!329533 (not b!4199906) (not b!4199872) b_and!329535 (not b!4199951) (not b!4199946) b_and!329531 (not b_next!123193) (not b!4199914) (not b!4199915) (not d!1238294) (not b!4199871) (not b!4199895) (not b!4199894) (not b!4199930) (not b!4199945) (not b!4199947) b_and!329543 (not b_next!123179) tp_is_empty!22185 (not b!4199878) (not b!4199896) (not b!4199944) (not b_next!123185) (not d!1238300) (not b!4199911) (not d!1238266) (not b_next!123191) (not b_next!123181) (not b!4199943) (not b!4199920) (not d!1238296) (not b!4199884) (not d!1238302))
(check-sat (not b_next!123183) b_and!329535 b_and!329531 (not b_next!123193) (not b_next!123185) b_and!329541 b_and!329529 b_and!329533 b_and!329543 (not b_next!123179) (not b_next!123191) (not b_next!123181))
(get-model)

(declare-fun d!1238314 () Bool)

(assert (=> d!1238314 (= (inv!60701 (tag!8568 (h!51565 (t!346774 rules!3967)))) (= (mod (str.len (value!240095 (tag!8568 (h!51565 (t!346774 rules!3967))))) 2) 0))))

(assert (=> b!4199930 d!1238314))

(declare-fun d!1238316 () Bool)

(declare-fun res!1724841 () Bool)

(declare-fun e!2607108 () Bool)

(assert (=> d!1238316 (=> (not res!1724841) (not e!2607108))))

(assert (=> d!1238316 (= res!1724841 (semiInverseModEq!3346 (toChars!10263 (transformation!7704 (h!51565 (t!346774 rules!3967)))) (toValue!10404 (transformation!7704 (h!51565 (t!346774 rules!3967))))))))

(assert (=> d!1238316 (= (inv!60703 (transformation!7704 (h!51565 (t!346774 rules!3967)))) e!2607108)))

(declare-fun b!4199967 () Bool)

(assert (=> b!4199967 (= e!2607108 (equivClasses!3245 (toChars!10263 (transformation!7704 (h!51565 (t!346774 rules!3967)))) (toValue!10404 (transformation!7704 (h!51565 (t!346774 rules!3967))))))))

(assert (= (and d!1238316 res!1724841) b!4199967))

(declare-fun m!4788577 () Bool)

(assert (=> d!1238316 m!4788577))

(declare-fun m!4788579 () Bool)

(assert (=> b!4199967 m!4788579))

(assert (=> b!4199930 d!1238316))

(declare-fun d!1238320 () Bool)

(declare-fun res!1724852 () Bool)

(declare-fun e!2607114 () Bool)

(assert (=> d!1238320 (=> (not res!1724852) (not e!2607114))))

(declare-fun validRegex!5724 (Regex!12609) Bool)

(assert (=> d!1238320 (= res!1724852 (validRegex!5724 (regex!7704 (h!51565 rules!3967))))))

(assert (=> d!1238320 (= (ruleValid!3420 thiss!26544 (h!51565 rules!3967)) e!2607114)))

(declare-fun b!4199980 () Bool)

(declare-fun res!1724853 () Bool)

(assert (=> b!4199980 (=> (not res!1724853) (not e!2607114))))

(declare-fun nullable!4437 (Regex!12609) Bool)

(assert (=> b!4199980 (= res!1724853 (not (nullable!4437 (regex!7704 (h!51565 rules!3967)))))))

(declare-fun b!4199981 () Bool)

(assert (=> b!4199981 (= e!2607114 (not (= (tag!8568 (h!51565 rules!3967)) (String!53541 ""))))))

(assert (= (and d!1238320 res!1724852) b!4199980))

(assert (= (and b!4199980 res!1724853) b!4199981))

(declare-fun m!4788587 () Bool)

(assert (=> d!1238320 m!4788587))

(declare-fun m!4788589 () Bool)

(assert (=> b!4199980 m!4788589))

(assert (=> b!4199871 d!1238320))

(declare-fun d!1238326 () Bool)

(declare-fun lt!1496269 () Int)

(assert (=> d!1238326 (>= lt!1496269 0)))

(declare-fun e!2607125 () Int)

(assert (=> d!1238326 (= lt!1496269 e!2607125)))

(declare-fun c!716175 () Bool)

(assert (=> d!1238326 (= c!716175 ((_ is Nil!46144) input!3517))))

(assert (=> d!1238326 (= (size!33921 input!3517) lt!1496269)))

(declare-fun b!4200002 () Bool)

(assert (=> b!4200002 (= e!2607125 0)))

(declare-fun b!4200003 () Bool)

(assert (=> b!4200003 (= e!2607125 (+ 1 (size!33921 (t!346773 input!3517))))))

(assert (= (and d!1238326 c!716175) b!4200002))

(assert (= (and d!1238326 (not c!716175)) b!4200003))

(declare-fun m!4788603 () Bool)

(assert (=> b!4200003 m!4788603))

(assert (=> b!4199896 d!1238326))

(declare-fun d!1238338 () Bool)

(declare-fun lt!1496270 () Int)

(assert (=> d!1238338 (>= lt!1496270 0)))

(declare-fun e!2607126 () Int)

(assert (=> d!1238338 (= lt!1496270 e!2607126)))

(declare-fun c!716176 () Bool)

(assert (=> d!1238338 (= c!716176 ((_ is Nil!46144) pBis!121))))

(assert (=> d!1238338 (= (size!33921 pBis!121) lt!1496270)))

(declare-fun b!4200004 () Bool)

(assert (=> b!4200004 (= e!2607126 0)))

(declare-fun b!4200005 () Bool)

(assert (=> b!4200005 (= e!2607126 (+ 1 (size!33921 (t!346773 pBis!121))))))

(assert (= (and d!1238338 c!716176) b!4200004))

(assert (= (and d!1238338 (not c!716176)) b!4200005))

(declare-fun m!4788605 () Bool)

(assert (=> b!4200005 m!4788605))

(assert (=> b!4199896 d!1238338))

(declare-fun d!1238340 () Bool)

(declare-fun lt!1496271 () Bool)

(assert (=> d!1238340 (= lt!1496271 (select (content!7208 (t!346774 rules!3967)) rBis!178))))

(declare-fun e!2607128 () Bool)

(assert (=> d!1238340 (= lt!1496271 e!2607128)))

(declare-fun res!1724856 () Bool)

(assert (=> d!1238340 (=> (not res!1724856) (not e!2607128))))

(assert (=> d!1238340 (= res!1724856 ((_ is Cons!46145) (t!346774 rules!3967)))))

(assert (=> d!1238340 (= (contains!9515 (t!346774 rules!3967) rBis!178) lt!1496271)))

(declare-fun b!4200006 () Bool)

(declare-fun e!2607127 () Bool)

(assert (=> b!4200006 (= e!2607128 e!2607127)))

(declare-fun res!1724857 () Bool)

(assert (=> b!4200006 (=> res!1724857 e!2607127)))

(assert (=> b!4200006 (= res!1724857 (= (h!51565 (t!346774 rules!3967)) rBis!178))))

(declare-fun b!4200007 () Bool)

(assert (=> b!4200007 (= e!2607127 (contains!9515 (t!346774 (t!346774 rules!3967)) rBis!178))))

(assert (= (and d!1238340 res!1724856) b!4200006))

(assert (= (and b!4200006 (not res!1724857)) b!4200007))

(declare-fun m!4788607 () Bool)

(assert (=> d!1238340 m!4788607))

(declare-fun m!4788609 () Bool)

(assert (=> d!1238340 m!4788609))

(declare-fun m!4788611 () Bool)

(assert (=> b!4200007 m!4788611))

(assert (=> b!4199884 d!1238340))

(declare-fun d!1238342 () Bool)

(declare-fun c!716180 () Bool)

(assert (=> d!1238342 (= c!716180 ((_ is Nil!46145) rules!3967))))

(declare-fun e!2607132 () (InoxSet Rule!15208))

(assert (=> d!1238342 (= (content!7208 rules!3967) e!2607132)))

(declare-fun b!4200014 () Bool)

(assert (=> b!4200014 (= e!2607132 ((as const (Array Rule!15208 Bool)) false))))

(declare-fun b!4200015 () Bool)

(assert (=> b!4200015 (= e!2607132 ((_ map or) (store ((as const (Array Rule!15208 Bool)) false) (h!51565 rules!3967) true) (content!7208 (t!346774 rules!3967))))))

(assert (= (and d!1238342 c!716180) b!4200014))

(assert (= (and d!1238342 (not c!716180)) b!4200015))

(declare-fun m!4788617 () Bool)

(assert (=> b!4200015 m!4788617))

(assert (=> b!4200015 m!4788607))

(assert (=> d!1238296 d!1238342))

(declare-fun d!1238348 () Bool)

(assert (=> d!1238348 (= (head!8914 p!3001) (h!51564 p!3001))))

(assert (=> b!4199913 d!1238348))

(declare-fun d!1238354 () Bool)

(assert (=> d!1238354 (= (head!8914 input!3517) (h!51564 input!3517))))

(assert (=> b!4199913 d!1238354))

(declare-fun d!1238356 () Bool)

(declare-fun res!1724864 () Bool)

(declare-fun e!2607139 () Bool)

(assert (=> d!1238356 (=> res!1724864 e!2607139)))

(assert (=> d!1238356 (= res!1724864 ((_ is Nil!46145) rules!3967))))

(assert (=> d!1238356 (= (noDuplicateTag!3175 thiss!26544 rules!3967 Nil!46147) e!2607139)))

(declare-fun b!4200022 () Bool)

(declare-fun e!2607140 () Bool)

(assert (=> b!4200022 (= e!2607139 e!2607140)))

(declare-fun res!1724865 () Bool)

(assert (=> b!4200022 (=> (not res!1724865) (not e!2607140))))

(declare-fun contains!9516 (List!46271 String!53540) Bool)

(assert (=> b!4200022 (= res!1724865 (not (contains!9516 Nil!46147 (tag!8568 (h!51565 rules!3967)))))))

(declare-fun b!4200023 () Bool)

(assert (=> b!4200023 (= e!2607140 (noDuplicateTag!3175 thiss!26544 (t!346774 rules!3967) (Cons!46147 (tag!8568 (h!51565 rules!3967)) Nil!46147)))))

(assert (= (and d!1238356 (not res!1724864)) b!4200022))

(assert (= (and b!4200022 res!1724865) b!4200023))

(declare-fun m!4788619 () Bool)

(assert (=> b!4200022 m!4788619))

(declare-fun m!4788621 () Bool)

(assert (=> b!4200023 m!4788621))

(assert (=> b!4199911 d!1238356))

(declare-fun bs!596922 () Bool)

(declare-fun d!1238358 () Bool)

(assert (= bs!596922 (and d!1238358 d!1238266)))

(declare-fun lambda!129591 () Int)

(assert (=> bs!596922 (= lambda!129591 lambda!129577)))

(assert (=> d!1238358 true))

(declare-fun lt!1496279 () Bool)

(assert (=> d!1238358 (= lt!1496279 (rulesValidInductive!2852 thiss!26544 rules!3967))))

(assert (=> d!1238358 (= lt!1496279 (forall!8482 rules!3967 lambda!129591))))

(assert (=> d!1238358 (= (rulesValid!3014 thiss!26544 rules!3967) lt!1496279)))

(declare-fun bs!596924 () Bool)

(assert (= bs!596924 d!1238358))

(assert (=> bs!596924 m!4788435))

(declare-fun m!4788639 () Bool)

(assert (=> bs!596924 m!4788639))

(assert (=> d!1238302 d!1238358))

(declare-fun bs!596926 () Bool)

(declare-fun d!1238368 () Bool)

(assert (= bs!596926 (and d!1238368 d!1238266)))

(declare-fun lambda!129592 () Int)

(assert (=> bs!596926 (= lambda!129592 lambda!129577)))

(declare-fun bs!596927 () Bool)

(assert (= bs!596927 (and d!1238368 d!1238358)))

(assert (=> bs!596927 (= lambda!129592 lambda!129591)))

(assert (=> d!1238368 true))

(declare-fun lt!1496280 () Bool)

(assert (=> d!1238368 (= lt!1496280 (forall!8482 (t!346774 rules!3967) lambda!129592))))

(declare-fun e!2607144 () Bool)

(assert (=> d!1238368 (= lt!1496280 e!2607144)))

(declare-fun res!1724871 () Bool)

(assert (=> d!1238368 (=> res!1724871 e!2607144)))

(assert (=> d!1238368 (= res!1724871 (not ((_ is Cons!46145) (t!346774 rules!3967))))))

(assert (=> d!1238368 (= (rulesValidInductive!2852 thiss!26544 (t!346774 rules!3967)) lt!1496280)))

(declare-fun b!4200030 () Bool)

(declare-fun e!2607145 () Bool)

(assert (=> b!4200030 (= e!2607144 e!2607145)))

(declare-fun res!1724870 () Bool)

(assert (=> b!4200030 (=> (not res!1724870) (not e!2607145))))

(assert (=> b!4200030 (= res!1724870 (ruleValid!3420 thiss!26544 (h!51565 (t!346774 rules!3967))))))

(declare-fun b!4200031 () Bool)

(assert (=> b!4200031 (= e!2607145 (rulesValidInductive!2852 thiss!26544 (t!346774 (t!346774 rules!3967))))))

(assert (= (and d!1238368 (not res!1724871)) b!4200030))

(assert (= (and b!4200030 res!1724870) b!4200031))

(declare-fun m!4788643 () Bool)

(assert (=> d!1238368 m!4788643))

(declare-fun m!4788645 () Bool)

(assert (=> b!4200030 m!4788645))

(declare-fun m!4788647 () Bool)

(assert (=> b!4200031 m!4788647))

(assert (=> b!4199872 d!1238368))

(assert (=> b!4199915 d!1238326))

(declare-fun d!1238372 () Bool)

(declare-fun lt!1496281 () Int)

(assert (=> d!1238372 (>= lt!1496281 0)))

(declare-fun e!2607146 () Int)

(assert (=> d!1238372 (= lt!1496281 e!2607146)))

(declare-fun c!716181 () Bool)

(assert (=> d!1238372 (= c!716181 ((_ is Nil!46144) p!3001))))

(assert (=> d!1238372 (= (size!33921 p!3001) lt!1496281)))

(declare-fun b!4200032 () Bool)

(assert (=> b!4200032 (= e!2607146 0)))

(declare-fun b!4200033 () Bool)

(assert (=> b!4200033 (= e!2607146 (+ 1 (size!33921 (t!346773 p!3001))))))

(assert (= (and d!1238372 c!716181) b!4200032))

(assert (= (and d!1238372 (not c!716181)) b!4200033))

(declare-fun m!4788649 () Bool)

(assert (=> b!4200033 m!4788649))

(assert (=> b!4199915 d!1238372))

(declare-fun d!1238374 () Bool)

(declare-fun lt!1496282 () Int)

(assert (=> d!1238374 (>= lt!1496282 0)))

(declare-fun e!2607147 () Int)

(assert (=> d!1238374 (= lt!1496282 e!2607147)))

(declare-fun c!716182 () Bool)

(assert (=> d!1238374 (= c!716182 ((_ is Nil!46144) lt!1496257))))

(assert (=> d!1238374 (= (size!33921 lt!1496257) lt!1496282)))

(declare-fun b!4200034 () Bool)

(assert (=> b!4200034 (= e!2607147 0)))

(declare-fun b!4200035 () Bool)

(assert (=> b!4200035 (= e!2607147 (+ 1 (size!33921 (t!346773 lt!1496257))))))

(assert (= (and d!1238374 c!716182) b!4200034))

(assert (= (and d!1238374 (not c!716182)) b!4200035))

(declare-fun m!4788651 () Bool)

(assert (=> b!4200035 m!4788651))

(assert (=> b!4199907 d!1238374))

(assert (=> b!4199907 d!1238372))

(declare-fun d!1238376 () Bool)

(declare-fun lt!1496283 () Int)

(assert (=> d!1238376 (>= lt!1496283 0)))

(declare-fun e!2607148 () Int)

(assert (=> d!1238376 (= lt!1496283 e!2607148)))

(declare-fun c!716183 () Bool)

(assert (=> d!1238376 (= c!716183 ((_ is Nil!46144) suffix!1557))))

(assert (=> d!1238376 (= (size!33921 suffix!1557) lt!1496283)))

(declare-fun b!4200036 () Bool)

(assert (=> b!4200036 (= e!2607148 0)))

(declare-fun b!4200037 () Bool)

(assert (=> b!4200037 (= e!2607148 (+ 1 (size!33921 (t!346773 suffix!1557))))))

(assert (= (and d!1238376 c!716183) b!4200036))

(assert (= (and d!1238376 (not c!716183)) b!4200037))

(declare-fun m!4788653 () Bool)

(assert (=> b!4200037 m!4788653))

(assert (=> b!4199907 d!1238376))

(declare-fun d!1238378 () Bool)

(declare-fun res!1724883 () Bool)

(declare-fun e!2607160 () Bool)

(assert (=> d!1238378 (=> res!1724883 e!2607160)))

(assert (=> d!1238378 (= res!1724883 ((_ is Nil!46145) rules!3967))))

(assert (=> d!1238378 (= (forall!8482 rules!3967 lambda!129577) e!2607160)))

(declare-fun b!4200048 () Bool)

(declare-fun e!2607161 () Bool)

(assert (=> b!4200048 (= e!2607160 e!2607161)))

(declare-fun res!1724884 () Bool)

(assert (=> b!4200048 (=> (not res!1724884) (not e!2607161))))

(declare-fun dynLambda!19904 (Int Rule!15208) Bool)

(assert (=> b!4200048 (= res!1724884 (dynLambda!19904 lambda!129577 (h!51565 rules!3967)))))

(declare-fun b!4200049 () Bool)

(assert (=> b!4200049 (= e!2607161 (forall!8482 (t!346774 rules!3967) lambda!129577))))

(assert (= (and d!1238378 (not res!1724883)) b!4200048))

(assert (= (and b!4200048 res!1724884) b!4200049))

(declare-fun b_lambda!123621 () Bool)

(assert (=> (not b_lambda!123621) (not b!4200048)))

(declare-fun m!4788659 () Bool)

(assert (=> b!4200048 m!4788659))

(declare-fun m!4788661 () Bool)

(assert (=> b!4200049 m!4788661))

(assert (=> d!1238266 d!1238378))

(declare-fun d!1238384 () Bool)

(assert (=> d!1238384 true))

(declare-fun order!24477 () Int)

(declare-fun lambda!129595 () Int)

(declare-fun order!24475 () Int)

(declare-fun dynLambda!19905 (Int Int) Int)

(declare-fun dynLambda!19906 (Int Int) Int)

(assert (=> d!1238384 (< (dynLambda!19905 order!24475 (toChars!10263 (transformation!7704 (h!51565 rules!3967)))) (dynLambda!19906 order!24477 lambda!129595))))

(assert (=> d!1238384 true))

(declare-fun order!24479 () Int)

(declare-fun dynLambda!19907 (Int Int) Int)

(assert (=> d!1238384 (< (dynLambda!19907 order!24479 (toValue!10404 (transformation!7704 (h!51565 rules!3967)))) (dynLambda!19906 order!24477 lambda!129595))))

(declare-fun Forall!1570 (Int) Bool)

(assert (=> d!1238384 (= (semiInverseModEq!3346 (toChars!10263 (transformation!7704 (h!51565 rules!3967))) (toValue!10404 (transformation!7704 (h!51565 rules!3967)))) (Forall!1570 lambda!129595))))

(declare-fun bs!596930 () Bool)

(assert (= bs!596930 d!1238384))

(declare-fun m!4788691 () Bool)

(assert (=> bs!596930 m!4788691))

(assert (=> d!1238294 d!1238384))

(declare-fun b!4200072 () Bool)

(declare-fun e!2607171 () Bool)

(declare-fun e!2607172 () Bool)

(assert (=> b!4200072 (= e!2607171 e!2607172)))

(declare-fun res!1724893 () Bool)

(assert (=> b!4200072 (=> (not res!1724893) (not e!2607172))))

(assert (=> b!4200072 (= res!1724893 (not ((_ is Nil!46144) (tail!6761 input!3517))))))

(declare-fun d!1238400 () Bool)

(declare-fun e!2607173 () Bool)

(assert (=> d!1238400 e!2607173))

(declare-fun res!1724892 () Bool)

(assert (=> d!1238400 (=> res!1724892 e!2607173)))

(declare-fun lt!1496286 () Bool)

(assert (=> d!1238400 (= res!1724892 (not lt!1496286))))

(assert (=> d!1238400 (= lt!1496286 e!2607171)))

(declare-fun res!1724890 () Bool)

(assert (=> d!1238400 (=> res!1724890 e!2607171)))

(assert (=> d!1238400 (= res!1724890 ((_ is Nil!46144) (tail!6761 p!3001)))))

(assert (=> d!1238400 (= (isPrefix!4563 (tail!6761 p!3001) (tail!6761 input!3517)) lt!1496286)))

(declare-fun b!4200073 () Bool)

(declare-fun res!1724891 () Bool)

(assert (=> b!4200073 (=> (not res!1724891) (not e!2607172))))

(assert (=> b!4200073 (= res!1724891 (= (head!8914 (tail!6761 p!3001)) (head!8914 (tail!6761 input!3517))))))

(declare-fun b!4200074 () Bool)

(assert (=> b!4200074 (= e!2607172 (isPrefix!4563 (tail!6761 (tail!6761 p!3001)) (tail!6761 (tail!6761 input!3517))))))

(declare-fun b!4200075 () Bool)

(assert (=> b!4200075 (= e!2607173 (>= (size!33921 (tail!6761 input!3517)) (size!33921 (tail!6761 p!3001))))))

(assert (= (and d!1238400 (not res!1724890)) b!4200072))

(assert (= (and b!4200072 res!1724893) b!4200073))

(assert (= (and b!4200073 res!1724891) b!4200074))

(assert (= (and d!1238400 (not res!1724892)) b!4200075))

(assert (=> b!4200073 m!4788555))

(declare-fun m!4788697 () Bool)

(assert (=> b!4200073 m!4788697))

(assert (=> b!4200073 m!4788527))

(declare-fun m!4788699 () Bool)

(assert (=> b!4200073 m!4788699))

(assert (=> b!4200074 m!4788555))

(declare-fun m!4788701 () Bool)

(assert (=> b!4200074 m!4788701))

(assert (=> b!4200074 m!4788527))

(declare-fun m!4788703 () Bool)

(assert (=> b!4200074 m!4788703))

(assert (=> b!4200074 m!4788701))

(assert (=> b!4200074 m!4788703))

(declare-fun m!4788705 () Bool)

(assert (=> b!4200074 m!4788705))

(assert (=> b!4200075 m!4788527))

(declare-fun m!4788707 () Bool)

(assert (=> b!4200075 m!4788707))

(assert (=> b!4200075 m!4788555))

(declare-fun m!4788709 () Bool)

(assert (=> b!4200075 m!4788709))

(assert (=> b!4199914 d!1238400))

(declare-fun d!1238404 () Bool)

(assert (=> d!1238404 (= (tail!6761 p!3001) (t!346773 p!3001))))

(assert (=> b!4199914 d!1238404))

(declare-fun d!1238406 () Bool)

(assert (=> d!1238406 (= (tail!6761 input!3517) (t!346773 input!3517))))

(assert (=> b!4199914 d!1238406))

(declare-fun d!1238408 () Bool)

(declare-fun c!716192 () Bool)

(assert (=> d!1238408 (= c!716192 ((_ is Nil!46144) lt!1496257))))

(declare-fun e!2607193 () (InoxSet C!25412))

(assert (=> d!1238408 (= (content!7209 lt!1496257) e!2607193)))

(declare-fun b!4200120 () Bool)

(assert (=> b!4200120 (= e!2607193 ((as const (Array C!25412 Bool)) false))))

(declare-fun b!4200121 () Bool)

(assert (=> b!4200121 (= e!2607193 ((_ map or) (store ((as const (Array C!25412 Bool)) false) (h!51564 lt!1496257) true) (content!7209 (t!346773 lt!1496257))))))

(assert (= (and d!1238408 c!716192) b!4200120))

(assert (= (and d!1238408 (not c!716192)) b!4200121))

(declare-fun m!4788715 () Bool)

(assert (=> b!4200121 m!4788715))

(declare-fun m!4788717 () Bool)

(assert (=> b!4200121 m!4788717))

(assert (=> d!1238300 d!1238408))

(declare-fun d!1238410 () Bool)

(declare-fun c!716193 () Bool)

(assert (=> d!1238410 (= c!716193 ((_ is Nil!46144) p!3001))))

(declare-fun e!2607195 () (InoxSet C!25412))

(assert (=> d!1238410 (= (content!7209 p!3001) e!2607195)))

(declare-fun b!4200126 () Bool)

(assert (=> b!4200126 (= e!2607195 ((as const (Array C!25412 Bool)) false))))

(declare-fun b!4200127 () Bool)

(assert (=> b!4200127 (= e!2607195 ((_ map or) (store ((as const (Array C!25412 Bool)) false) (h!51564 p!3001) true) (content!7209 (t!346773 p!3001))))))

(assert (= (and d!1238410 c!716193) b!4200126))

(assert (= (and d!1238410 (not c!716193)) b!4200127))

(declare-fun m!4788719 () Bool)

(assert (=> b!4200127 m!4788719))

(declare-fun m!4788721 () Bool)

(assert (=> b!4200127 m!4788721))

(assert (=> d!1238300 d!1238410))

(declare-fun d!1238412 () Bool)

(declare-fun c!716194 () Bool)

(assert (=> d!1238412 (= c!716194 ((_ is Nil!46144) suffix!1557))))

(declare-fun e!2607197 () (InoxSet C!25412))

(assert (=> d!1238412 (= (content!7209 suffix!1557) e!2607197)))

(declare-fun b!4200132 () Bool)

(assert (=> b!4200132 (= e!2607197 ((as const (Array C!25412 Bool)) false))))

(declare-fun b!4200133 () Bool)

(assert (=> b!4200133 (= e!2607197 ((_ map or) (store ((as const (Array C!25412 Bool)) false) (h!51564 suffix!1557) true) (content!7209 (t!346773 suffix!1557))))))

(assert (= (and d!1238412 c!716194) b!4200132))

(assert (= (and d!1238412 (not c!716194)) b!4200133))

(declare-fun m!4788723 () Bool)

(assert (=> b!4200133 m!4788723))

(declare-fun m!4788725 () Bool)

(assert (=> b!4200133 m!4788725))

(assert (=> d!1238300 d!1238412))

(declare-fun b!4200139 () Bool)

(declare-fun e!2607199 () List!46268)

(assert (=> b!4200139 (= e!2607199 (Cons!46144 (h!51564 (t!346773 p!3001)) (++!11778 (t!346773 (t!346773 p!3001)) suffix!1557)))))

(declare-fun d!1238414 () Bool)

(declare-fun e!2607200 () Bool)

(assert (=> d!1238414 e!2607200))

(declare-fun res!1724895 () Bool)

(assert (=> d!1238414 (=> (not res!1724895) (not e!2607200))))

(declare-fun lt!1496287 () List!46268)

(assert (=> d!1238414 (= res!1724895 (= (content!7209 lt!1496287) ((_ map or) (content!7209 (t!346773 p!3001)) (content!7209 suffix!1557))))))

(assert (=> d!1238414 (= lt!1496287 e!2607199)))

(declare-fun c!716195 () Bool)

(assert (=> d!1238414 (= c!716195 ((_ is Nil!46144) (t!346773 p!3001)))))

(assert (=> d!1238414 (= (++!11778 (t!346773 p!3001) suffix!1557) lt!1496287)))

(declare-fun b!4200140 () Bool)

(declare-fun res!1724896 () Bool)

(assert (=> b!4200140 (=> (not res!1724896) (not e!2607200))))

(assert (=> b!4200140 (= res!1724896 (= (size!33921 lt!1496287) (+ (size!33921 (t!346773 p!3001)) (size!33921 suffix!1557))))))

(declare-fun b!4200141 () Bool)

(assert (=> b!4200141 (= e!2607200 (or (not (= suffix!1557 Nil!46144)) (= lt!1496287 (t!346773 p!3001))))))

(declare-fun b!4200138 () Bool)

(assert (=> b!4200138 (= e!2607199 suffix!1557)))

(assert (= (and d!1238414 c!716195) b!4200138))

(assert (= (and d!1238414 (not c!716195)) b!4200139))

(assert (= (and d!1238414 res!1724895) b!4200140))

(assert (= (and b!4200140 res!1724896) b!4200141))

(declare-fun m!4788727 () Bool)

(assert (=> b!4200139 m!4788727))

(declare-fun m!4788729 () Bool)

(assert (=> d!1238414 m!4788729))

(assert (=> d!1238414 m!4788721))

(assert (=> d!1238414 m!4788541))

(declare-fun m!4788731 () Bool)

(assert (=> b!4200140 m!4788731))

(assert (=> b!4200140 m!4788649))

(assert (=> b!4200140 m!4788547))

(assert (=> b!4199906 d!1238414))

(declare-fun bs!596932 () Bool)

(declare-fun d!1238418 () Bool)

(assert (= bs!596932 (and d!1238418 d!1238384)))

(declare-fun lambda!129597 () Int)

(assert (=> bs!596932 (= (and (= (toChars!10263 (transformation!7704 rBis!178)) (toChars!10263 (transformation!7704 (h!51565 rules!3967)))) (= (toValue!10404 (transformation!7704 rBis!178)) (toValue!10404 (transformation!7704 (h!51565 rules!3967))))) (= lambda!129597 lambda!129595))))

(assert (=> d!1238418 true))

(assert (=> d!1238418 (< (dynLambda!19905 order!24475 (toChars!10263 (transformation!7704 rBis!178))) (dynLambda!19906 order!24477 lambda!129597))))

(assert (=> d!1238418 true))

(assert (=> d!1238418 (< (dynLambda!19907 order!24479 (toValue!10404 (transformation!7704 rBis!178))) (dynLambda!19906 order!24477 lambda!129597))))

(assert (=> d!1238418 (= (semiInverseModEq!3346 (toChars!10263 (transformation!7704 rBis!178)) (toValue!10404 (transformation!7704 rBis!178))) (Forall!1570 lambda!129597))))

(declare-fun bs!596933 () Bool)

(assert (= bs!596933 d!1238418))

(declare-fun m!4788733 () Bool)

(assert (=> bs!596933 m!4788733))

(assert (=> d!1238290 d!1238418))

(declare-fun d!1238420 () Bool)

(assert (=> d!1238420 (= (head!8914 pBis!121) (h!51564 pBis!121))))

(assert (=> b!4199894 d!1238420))

(assert (=> b!4199894 d!1238354))

(declare-fun b!4200142 () Bool)

(declare-fun e!2607201 () Bool)

(declare-fun e!2607202 () Bool)

(assert (=> b!4200142 (= e!2607201 e!2607202)))

(declare-fun res!1724900 () Bool)

(assert (=> b!4200142 (=> (not res!1724900) (not e!2607202))))

(assert (=> b!4200142 (= res!1724900 (not ((_ is Nil!46144) (tail!6761 input!3517))))))

(declare-fun d!1238422 () Bool)

(declare-fun e!2607203 () Bool)

(assert (=> d!1238422 e!2607203))

(declare-fun res!1724899 () Bool)

(assert (=> d!1238422 (=> res!1724899 e!2607203)))

(declare-fun lt!1496288 () Bool)

(assert (=> d!1238422 (= res!1724899 (not lt!1496288))))

(assert (=> d!1238422 (= lt!1496288 e!2607201)))

(declare-fun res!1724897 () Bool)

(assert (=> d!1238422 (=> res!1724897 e!2607201)))

(assert (=> d!1238422 (= res!1724897 ((_ is Nil!46144) (tail!6761 pBis!121)))))

(assert (=> d!1238422 (= (isPrefix!4563 (tail!6761 pBis!121) (tail!6761 input!3517)) lt!1496288)))

(declare-fun b!4200143 () Bool)

(declare-fun res!1724898 () Bool)

(assert (=> b!4200143 (=> (not res!1724898) (not e!2607202))))

(assert (=> b!4200143 (= res!1724898 (= (head!8914 (tail!6761 pBis!121)) (head!8914 (tail!6761 input!3517))))))

(declare-fun b!4200144 () Bool)

(assert (=> b!4200144 (= e!2607202 (isPrefix!4563 (tail!6761 (tail!6761 pBis!121)) (tail!6761 (tail!6761 input!3517))))))

(declare-fun b!4200145 () Bool)

(assert (=> b!4200145 (= e!2607203 (>= (size!33921 (tail!6761 input!3517)) (size!33921 (tail!6761 pBis!121))))))

(assert (= (and d!1238422 (not res!1724897)) b!4200142))

(assert (= (and b!4200142 res!1724900) b!4200143))

(assert (= (and b!4200143 res!1724898) b!4200144))

(assert (= (and d!1238422 (not res!1724899)) b!4200145))

(assert (=> b!4200143 m!4788525))

(declare-fun m!4788735 () Bool)

(assert (=> b!4200143 m!4788735))

(assert (=> b!4200143 m!4788527))

(assert (=> b!4200143 m!4788699))

(assert (=> b!4200144 m!4788525))

(declare-fun m!4788737 () Bool)

(assert (=> b!4200144 m!4788737))

(assert (=> b!4200144 m!4788527))

(assert (=> b!4200144 m!4788703))

(assert (=> b!4200144 m!4788737))

(assert (=> b!4200144 m!4788703))

(declare-fun m!4788739 () Bool)

(assert (=> b!4200144 m!4788739))

(assert (=> b!4200145 m!4788527))

(assert (=> b!4200145 m!4788707))

(assert (=> b!4200145 m!4788525))

(declare-fun m!4788741 () Bool)

(assert (=> b!4200145 m!4788741))

(assert (=> b!4199895 d!1238422))

(declare-fun d!1238424 () Bool)

(assert (=> d!1238424 (= (tail!6761 pBis!121) (t!346773 pBis!121))))

(assert (=> b!4199895 d!1238424))

(assert (=> b!4199895 d!1238406))

(declare-fun d!1238426 () Bool)

(assert (=> d!1238426 true))

(declare-fun order!24481 () Int)

(declare-fun lambda!129600 () Int)

(declare-fun dynLambda!19908 (Int Int) Int)

(assert (=> d!1238426 (< (dynLambda!19907 order!24479 (toValue!10404 (transformation!7704 rBis!178))) (dynLambda!19908 order!24481 lambda!129600))))

(declare-fun Forall2!1169 (Int) Bool)

(assert (=> d!1238426 (= (equivClasses!3245 (toChars!10263 (transformation!7704 rBis!178)) (toValue!10404 (transformation!7704 rBis!178))) (Forall2!1169 lambda!129600))))

(declare-fun bs!596934 () Bool)

(assert (= bs!596934 d!1238426))

(declare-fun m!4788743 () Bool)

(assert (=> bs!596934 m!4788743))

(assert (=> b!4199877 d!1238426))

(declare-fun bs!596935 () Bool)

(declare-fun d!1238428 () Bool)

(assert (= bs!596935 (and d!1238428 d!1238426)))

(declare-fun lambda!129601 () Int)

(assert (=> bs!596935 (= (= (toValue!10404 (transformation!7704 (h!51565 rules!3967))) (toValue!10404 (transformation!7704 rBis!178))) (= lambda!129601 lambda!129600))))

(assert (=> d!1238428 true))

(assert (=> d!1238428 (< (dynLambda!19907 order!24479 (toValue!10404 (transformation!7704 (h!51565 rules!3967)))) (dynLambda!19908 order!24481 lambda!129601))))

(assert (=> d!1238428 (= (equivClasses!3245 (toChars!10263 (transformation!7704 (h!51565 rules!3967))) (toValue!10404 (transformation!7704 (h!51565 rules!3967)))) (Forall2!1169 lambda!129601))))

(declare-fun bs!596936 () Bool)

(assert (= bs!596936 d!1238428))

(declare-fun m!4788745 () Bool)

(assert (=> bs!596936 m!4788745))

(assert (=> b!4199878 d!1238428))

(declare-fun b!4200152 () Bool)

(declare-fun e!2607206 () Bool)

(declare-fun tp!1283062 () Bool)

(assert (=> b!4200152 (= e!2607206 tp!1283062)))

(declare-fun b!4200153 () Bool)

(declare-fun tp!1283061 () Bool)

(declare-fun tp!1283064 () Bool)

(assert (=> b!4200153 (= e!2607206 (and tp!1283061 tp!1283064))))

(assert (=> b!4199945 (= tp!1282985 e!2607206)))

(declare-fun b!4200150 () Bool)

(assert (=> b!4200150 (= e!2607206 tp_is_empty!22185)))

(declare-fun b!4200151 () Bool)

(declare-fun tp!1283060 () Bool)

(declare-fun tp!1283063 () Bool)

(assert (=> b!4200151 (= e!2607206 (and tp!1283060 tp!1283063))))

(assert (= (and b!4199945 ((_ is ElementMatch!12609) (regOne!25731 (regex!7704 rBis!178)))) b!4200150))

(assert (= (and b!4199945 ((_ is Concat!20544) (regOne!25731 (regex!7704 rBis!178)))) b!4200151))

(assert (= (and b!4199945 ((_ is Star!12609) (regOne!25731 (regex!7704 rBis!178)))) b!4200152))

(assert (= (and b!4199945 ((_ is Union!12609) (regOne!25731 (regex!7704 rBis!178)))) b!4200153))

(declare-fun b!4200156 () Bool)

(declare-fun e!2607207 () Bool)

(declare-fun tp!1283067 () Bool)

(assert (=> b!4200156 (= e!2607207 tp!1283067)))

(declare-fun b!4200157 () Bool)

(declare-fun tp!1283066 () Bool)

(declare-fun tp!1283069 () Bool)

(assert (=> b!4200157 (= e!2607207 (and tp!1283066 tp!1283069))))

(assert (=> b!4199945 (= tp!1282988 e!2607207)))

(declare-fun b!4200154 () Bool)

(assert (=> b!4200154 (= e!2607207 tp_is_empty!22185)))

(declare-fun b!4200155 () Bool)

(declare-fun tp!1283065 () Bool)

(declare-fun tp!1283068 () Bool)

(assert (=> b!4200155 (= e!2607207 (and tp!1283065 tp!1283068))))

(assert (= (and b!4199945 ((_ is ElementMatch!12609) (regTwo!25731 (regex!7704 rBis!178)))) b!4200154))

(assert (= (and b!4199945 ((_ is Concat!20544) (regTwo!25731 (regex!7704 rBis!178)))) b!4200155))

(assert (= (and b!4199945 ((_ is Star!12609) (regTwo!25731 (regex!7704 rBis!178)))) b!4200156))

(assert (= (and b!4199945 ((_ is Union!12609) (regTwo!25731 (regex!7704 rBis!178)))) b!4200157))

(declare-fun b!4200160 () Bool)

(declare-fun e!2607208 () Bool)

(declare-fun tp!1283072 () Bool)

(assert (=> b!4200160 (= e!2607208 tp!1283072)))

(declare-fun b!4200161 () Bool)

(declare-fun tp!1283071 () Bool)

(declare-fun tp!1283074 () Bool)

(assert (=> b!4200161 (= e!2607208 (and tp!1283071 tp!1283074))))

(assert (=> b!4199930 (= tp!1282971 e!2607208)))

(declare-fun b!4200158 () Bool)

(assert (=> b!4200158 (= e!2607208 tp_is_empty!22185)))

(declare-fun b!4200159 () Bool)

(declare-fun tp!1283070 () Bool)

(declare-fun tp!1283073 () Bool)

(assert (=> b!4200159 (= e!2607208 (and tp!1283070 tp!1283073))))

(assert (= (and b!4199930 ((_ is ElementMatch!12609) (regex!7704 (h!51565 (t!346774 rules!3967))))) b!4200158))

(assert (= (and b!4199930 ((_ is Concat!20544) (regex!7704 (h!51565 (t!346774 rules!3967))))) b!4200159))

(assert (= (and b!4199930 ((_ is Star!12609) (regex!7704 (h!51565 (t!346774 rules!3967))))) b!4200160))

(assert (= (and b!4199930 ((_ is Union!12609) (regex!7704 (h!51565 (t!346774 rules!3967))))) b!4200161))

(declare-fun b!4200164 () Bool)

(declare-fun e!2607209 () Bool)

(declare-fun tp!1283077 () Bool)

(assert (=> b!4200164 (= e!2607209 tp!1283077)))

(declare-fun b!4200165 () Bool)

(declare-fun tp!1283076 () Bool)

(declare-fun tp!1283079 () Bool)

(assert (=> b!4200165 (= e!2607209 (and tp!1283076 tp!1283079))))

(assert (=> b!4199944 (= tp!1282986 e!2607209)))

(declare-fun b!4200162 () Bool)

(assert (=> b!4200162 (= e!2607209 tp_is_empty!22185)))

(declare-fun b!4200163 () Bool)

(declare-fun tp!1283075 () Bool)

(declare-fun tp!1283078 () Bool)

(assert (=> b!4200163 (= e!2607209 (and tp!1283075 tp!1283078))))

(assert (= (and b!4199944 ((_ is ElementMatch!12609) (reg!12938 (regex!7704 rBis!178)))) b!4200162))

(assert (= (and b!4199944 ((_ is Concat!20544) (reg!12938 (regex!7704 rBis!178)))) b!4200163))

(assert (= (and b!4199944 ((_ is Star!12609) (reg!12938 (regex!7704 rBis!178)))) b!4200164))

(assert (= (and b!4199944 ((_ is Union!12609) (reg!12938 (regex!7704 rBis!178)))) b!4200165))

(declare-fun b!4200168 () Bool)

(declare-fun b_free!122495 () Bool)

(declare-fun b_next!123199 () Bool)

(assert (=> b!4200168 (= b_free!122495 (not b_next!123199))))

(declare-fun tp!1283082 () Bool)

(declare-fun b_and!329549 () Bool)

(assert (=> b!4200168 (= tp!1283082 b_and!329549)))

(declare-fun b_free!122497 () Bool)

(declare-fun b_next!123201 () Bool)

(assert (=> b!4200168 (= b_free!122497 (not b_next!123201))))

(declare-fun tp!1283083 () Bool)

(declare-fun b_and!329551 () Bool)

(assert (=> b!4200168 (= tp!1283083 b_and!329551)))

(declare-fun e!2607211 () Bool)

(assert (=> b!4200168 (= e!2607211 (and tp!1283082 tp!1283083))))

(declare-fun tp!1283081 () Bool)

(declare-fun e!2607210 () Bool)

(declare-fun b!4200167 () Bool)

(assert (=> b!4200167 (= e!2607210 (and tp!1283081 (inv!60701 (tag!8568 (h!51565 (t!346774 (t!346774 rules!3967))))) (inv!60703 (transformation!7704 (h!51565 (t!346774 (t!346774 rules!3967))))) e!2607211))))

(declare-fun b!4200166 () Bool)

(declare-fun e!2607212 () Bool)

(declare-fun tp!1283080 () Bool)

(assert (=> b!4200166 (= e!2607212 (and e!2607210 tp!1283080))))

(assert (=> b!4199929 (= tp!1282970 e!2607212)))

(assert (= b!4200167 b!4200168))

(assert (= b!4200166 b!4200167))

(assert (= (and b!4199929 ((_ is Cons!46145) (t!346774 (t!346774 rules!3967)))) b!4200166))

(declare-fun m!4788747 () Bool)

(assert (=> b!4200167 m!4788747))

(declare-fun m!4788749 () Bool)

(assert (=> b!4200167 m!4788749))

(declare-fun b!4200169 () Bool)

(declare-fun e!2607214 () Bool)

(declare-fun tp!1283084 () Bool)

(assert (=> b!4200169 (= e!2607214 (and tp_is_empty!22185 tp!1283084))))

(assert (=> b!4199946 (= tp!1282989 e!2607214)))

(assert (= (and b!4199946 ((_ is Cons!46144) (t!346773 (t!346773 pBis!121)))) b!4200169))

(declare-fun b!4200172 () Bool)

(declare-fun e!2607215 () Bool)

(declare-fun tp!1283087 () Bool)

(assert (=> b!4200172 (= e!2607215 tp!1283087)))

(declare-fun b!4200173 () Bool)

(declare-fun tp!1283086 () Bool)

(declare-fun tp!1283089 () Bool)

(assert (=> b!4200173 (= e!2607215 (and tp!1283086 tp!1283089))))

(assert (=> b!4199949 (= tp!1282991 e!2607215)))

(declare-fun b!4200170 () Bool)

(assert (=> b!4200170 (= e!2607215 tp_is_empty!22185)))

(declare-fun b!4200171 () Bool)

(declare-fun tp!1283085 () Bool)

(declare-fun tp!1283088 () Bool)

(assert (=> b!4200171 (= e!2607215 (and tp!1283085 tp!1283088))))

(assert (= (and b!4199949 ((_ is ElementMatch!12609) (regOne!25730 (regex!7704 (h!51565 rules!3967))))) b!4200170))

(assert (= (and b!4199949 ((_ is Concat!20544) (regOne!25730 (regex!7704 (h!51565 rules!3967))))) b!4200171))

(assert (= (and b!4199949 ((_ is Star!12609) (regOne!25730 (regex!7704 (h!51565 rules!3967))))) b!4200172))

(assert (= (and b!4199949 ((_ is Union!12609) (regOne!25730 (regex!7704 (h!51565 rules!3967))))) b!4200173))

(declare-fun b!4200176 () Bool)

(declare-fun e!2607216 () Bool)

(declare-fun tp!1283092 () Bool)

(assert (=> b!4200176 (= e!2607216 tp!1283092)))

(declare-fun b!4200177 () Bool)

(declare-fun tp!1283091 () Bool)

(declare-fun tp!1283094 () Bool)

(assert (=> b!4200177 (= e!2607216 (and tp!1283091 tp!1283094))))

(assert (=> b!4199949 (= tp!1282994 e!2607216)))

(declare-fun b!4200174 () Bool)

(assert (=> b!4200174 (= e!2607216 tp_is_empty!22185)))

(declare-fun b!4200175 () Bool)

(declare-fun tp!1283090 () Bool)

(declare-fun tp!1283093 () Bool)

(assert (=> b!4200175 (= e!2607216 (and tp!1283090 tp!1283093))))

(assert (= (and b!4199949 ((_ is ElementMatch!12609) (regTwo!25730 (regex!7704 (h!51565 rules!3967))))) b!4200174))

(assert (= (and b!4199949 ((_ is Concat!20544) (regTwo!25730 (regex!7704 (h!51565 rules!3967))))) b!4200175))

(assert (= (and b!4199949 ((_ is Star!12609) (regTwo!25730 (regex!7704 (h!51565 rules!3967))))) b!4200176))

(assert (= (and b!4199949 ((_ is Union!12609) (regTwo!25730 (regex!7704 (h!51565 rules!3967))))) b!4200177))

(declare-fun b!4200180 () Bool)

(declare-fun e!2607217 () Bool)

(declare-fun tp!1283097 () Bool)

(assert (=> b!4200180 (= e!2607217 tp!1283097)))

(declare-fun b!4200181 () Bool)

(declare-fun tp!1283096 () Bool)

(declare-fun tp!1283099 () Bool)

(assert (=> b!4200181 (= e!2607217 (and tp!1283096 tp!1283099))))

(assert (=> b!4199951 (= tp!1282992 e!2607217)))

(declare-fun b!4200178 () Bool)

(assert (=> b!4200178 (= e!2607217 tp_is_empty!22185)))

(declare-fun b!4200179 () Bool)

(declare-fun tp!1283095 () Bool)

(declare-fun tp!1283098 () Bool)

(assert (=> b!4200179 (= e!2607217 (and tp!1283095 tp!1283098))))

(assert (= (and b!4199951 ((_ is ElementMatch!12609) (regOne!25731 (regex!7704 (h!51565 rules!3967))))) b!4200178))

(assert (= (and b!4199951 ((_ is Concat!20544) (regOne!25731 (regex!7704 (h!51565 rules!3967))))) b!4200179))

(assert (= (and b!4199951 ((_ is Star!12609) (regOne!25731 (regex!7704 (h!51565 rules!3967))))) b!4200180))

(assert (= (and b!4199951 ((_ is Union!12609) (regOne!25731 (regex!7704 (h!51565 rules!3967))))) b!4200181))

(declare-fun b!4200184 () Bool)

(declare-fun e!2607218 () Bool)

(declare-fun tp!1283102 () Bool)

(assert (=> b!4200184 (= e!2607218 tp!1283102)))

(declare-fun b!4200185 () Bool)

(declare-fun tp!1283101 () Bool)

(declare-fun tp!1283104 () Bool)

(assert (=> b!4200185 (= e!2607218 (and tp!1283101 tp!1283104))))

(assert (=> b!4199951 (= tp!1282995 e!2607218)))

(declare-fun b!4200182 () Bool)

(assert (=> b!4200182 (= e!2607218 tp_is_empty!22185)))

(declare-fun b!4200183 () Bool)

(declare-fun tp!1283100 () Bool)

(declare-fun tp!1283103 () Bool)

(assert (=> b!4200183 (= e!2607218 (and tp!1283100 tp!1283103))))

(assert (= (and b!4199951 ((_ is ElementMatch!12609) (regTwo!25731 (regex!7704 (h!51565 rules!3967))))) b!4200182))

(assert (= (and b!4199951 ((_ is Concat!20544) (regTwo!25731 (regex!7704 (h!51565 rules!3967))))) b!4200183))

(assert (= (and b!4199951 ((_ is Star!12609) (regTwo!25731 (regex!7704 (h!51565 rules!3967))))) b!4200184))

(assert (= (and b!4199951 ((_ is Union!12609) (regTwo!25731 (regex!7704 (h!51565 rules!3967))))) b!4200185))

(declare-fun b!4200186 () Bool)

(declare-fun e!2607219 () Bool)

(declare-fun tp!1283105 () Bool)

(assert (=> b!4200186 (= e!2607219 (and tp_is_empty!22185 tp!1283105))))

(assert (=> b!4199947 (= tp!1282990 e!2607219)))

(assert (= (and b!4199947 ((_ is Cons!46144) (t!346773 (t!346773 input!3517)))) b!4200186))

(declare-fun b!4200189 () Bool)

(declare-fun e!2607220 () Bool)

(declare-fun tp!1283108 () Bool)

(assert (=> b!4200189 (= e!2607220 tp!1283108)))

(declare-fun b!4200190 () Bool)

(declare-fun tp!1283107 () Bool)

(declare-fun tp!1283110 () Bool)

(assert (=> b!4200190 (= e!2607220 (and tp!1283107 tp!1283110))))

(assert (=> b!4199950 (= tp!1282993 e!2607220)))

(declare-fun b!4200187 () Bool)

(assert (=> b!4200187 (= e!2607220 tp_is_empty!22185)))

(declare-fun b!4200188 () Bool)

(declare-fun tp!1283106 () Bool)

(declare-fun tp!1283109 () Bool)

(assert (=> b!4200188 (= e!2607220 (and tp!1283106 tp!1283109))))

(assert (= (and b!4199950 ((_ is ElementMatch!12609) (reg!12938 (regex!7704 (h!51565 rules!3967))))) b!4200187))

(assert (= (and b!4199950 ((_ is Concat!20544) (reg!12938 (regex!7704 (h!51565 rules!3967))))) b!4200188))

(assert (= (and b!4199950 ((_ is Star!12609) (reg!12938 (regex!7704 (h!51565 rules!3967))))) b!4200189))

(assert (= (and b!4199950 ((_ is Union!12609) (reg!12938 (regex!7704 (h!51565 rules!3967))))) b!4200190))

(declare-fun b!4200191 () Bool)

(declare-fun e!2607221 () Bool)

(declare-fun tp!1283111 () Bool)

(assert (=> b!4200191 (= e!2607221 (and tp_is_empty!22185 tp!1283111))))

(assert (=> b!4199920 (= tp!1282961 e!2607221)))

(assert (= (and b!4199920 ((_ is Cons!46144) (t!346773 (t!346773 suffix!1557)))) b!4200191))

(declare-fun b!4200192 () Bool)

(declare-fun e!2607222 () Bool)

(declare-fun tp!1283112 () Bool)

(assert (=> b!4200192 (= e!2607222 (and tp_is_empty!22185 tp!1283112))))

(assert (=> b!4199952 (= tp!1282996 e!2607222)))

(assert (= (and b!4199952 ((_ is Cons!46144) (t!346773 (t!346773 p!3001)))) b!4200192))

(declare-fun b!4200195 () Bool)

(declare-fun e!2607223 () Bool)

(declare-fun tp!1283115 () Bool)

(assert (=> b!4200195 (= e!2607223 tp!1283115)))

(declare-fun b!4200196 () Bool)

(declare-fun tp!1283114 () Bool)

(declare-fun tp!1283117 () Bool)

(assert (=> b!4200196 (= e!2607223 (and tp!1283114 tp!1283117))))

(assert (=> b!4199943 (= tp!1282984 e!2607223)))

(declare-fun b!4200193 () Bool)

(assert (=> b!4200193 (= e!2607223 tp_is_empty!22185)))

(declare-fun b!4200194 () Bool)

(declare-fun tp!1283113 () Bool)

(declare-fun tp!1283116 () Bool)

(assert (=> b!4200194 (= e!2607223 (and tp!1283113 tp!1283116))))

(assert (= (and b!4199943 ((_ is ElementMatch!12609) (regOne!25730 (regex!7704 rBis!178)))) b!4200193))

(assert (= (and b!4199943 ((_ is Concat!20544) (regOne!25730 (regex!7704 rBis!178)))) b!4200194))

(assert (= (and b!4199943 ((_ is Star!12609) (regOne!25730 (regex!7704 rBis!178)))) b!4200195))

(assert (= (and b!4199943 ((_ is Union!12609) (regOne!25730 (regex!7704 rBis!178)))) b!4200196))

(declare-fun b!4200199 () Bool)

(declare-fun e!2607224 () Bool)

(declare-fun tp!1283120 () Bool)

(assert (=> b!4200199 (= e!2607224 tp!1283120)))

(declare-fun b!4200200 () Bool)

(declare-fun tp!1283119 () Bool)

(declare-fun tp!1283122 () Bool)

(assert (=> b!4200200 (= e!2607224 (and tp!1283119 tp!1283122))))

(assert (=> b!4199943 (= tp!1282987 e!2607224)))

(declare-fun b!4200197 () Bool)

(assert (=> b!4200197 (= e!2607224 tp_is_empty!22185)))

(declare-fun b!4200198 () Bool)

(declare-fun tp!1283118 () Bool)

(declare-fun tp!1283121 () Bool)

(assert (=> b!4200198 (= e!2607224 (and tp!1283118 tp!1283121))))

(assert (= (and b!4199943 ((_ is ElementMatch!12609) (regTwo!25730 (regex!7704 rBis!178)))) b!4200197))

(assert (= (and b!4199943 ((_ is Concat!20544) (regTwo!25730 (regex!7704 rBis!178)))) b!4200198))

(assert (= (and b!4199943 ((_ is Star!12609) (regTwo!25730 (regex!7704 rBis!178)))) b!4200199))

(assert (= (and b!4199943 ((_ is Union!12609) (regTwo!25730 (regex!7704 rBis!178)))) b!4200200))

(declare-fun b_lambda!123625 () Bool)

(assert (= b_lambda!123621 (or d!1238266 b_lambda!123625)))

(declare-fun bs!596937 () Bool)

(declare-fun d!1238430 () Bool)

(assert (= bs!596937 (and d!1238430 d!1238266)))

(assert (=> bs!596937 (= (dynLambda!19904 lambda!129577 (h!51565 rules!3967)) (ruleValid!3420 thiss!26544 (h!51565 rules!3967)))))

(assert (=> bs!596937 m!4788503))

(assert (=> b!4200048 d!1238430))

(check-sat (not b_next!123193) (not b!4200015) b_and!329529 b_and!329533 (not b!4200153) (not b!4200023) (not b!4200166) (not b!4200157) (not b!4200075) (not b!4200030) (not b!4200074) (not b_lambda!123625) (not b!4200007) (not b!4200164) (not b!4200031) (not b_next!123183) (not d!1238426) (not b!4200199) (not b!4200186) (not d!1238428) (not b!4200175) (not b!4200192) (not b!4200189) (not b!4200003) (not b!4200185) (not b!4200152) (not b!4200160) b_and!329535 (not d!1238320) (not b!4200194) (not b!4200188) (not b_next!123201) b_and!329549 b_and!329531 (not b!4200167) (not b!4200139) (not b!4200005) (not b!4200037) (not b_next!123199) (not b!4200151) (not b!4200127) (not b!4200179) b_and!329551 (not b!4200177) (not b!4200171) (not b!4200173) (not d!1238340) (not b!4200035) (not b!4200156) (not b!4200196) b_and!329543 (not b_next!123179) tp_is_empty!22185 (not b!4200184) (not b!4200176) (not b!4200200) (not bs!596937) (not b!4200190) (not d!1238414) (not b!4200140) (not b!4200144) (not b!4200073) (not b!4200198) (not b!4200163) (not b_next!123185) (not b!4200155) (not b!4200195) (not d!1238384) (not b!4200191) (not b!4199980) (not b!4200033) (not b!4200143) (not b!4200133) (not b_next!123191) (not b_next!123181) (not b!4200181) (not b!4200049) (not b!4200121) (not b!4200172) (not b!4200183) (not b!4200022) (not b!4200169) b_and!329541 (not d!1238418) (not b!4200159) (not b!4199967) (not b!4200165) (not b!4200145) (not d!1238368) (not b!4200180) (not b!4200161) (not d!1238316) (not d!1238358))
(check-sat (not b_next!123183) b_and!329535 (not b_next!123201) (not b_next!123199) (not b_next!123193) b_and!329551 (not b_next!123185) b_and!329541 b_and!329529 b_and!329533 b_and!329549 b_and!329531 b_and!329543 (not b_next!123179) (not b_next!123191) (not b_next!123181))
