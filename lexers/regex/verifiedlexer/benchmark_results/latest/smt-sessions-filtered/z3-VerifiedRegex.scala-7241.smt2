; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385584 () Bool)

(assert start!385584)

(declare-fun b!4080912 () Bool)

(declare-fun b_free!113889 () Bool)

(declare-fun b_next!114593 () Bool)

(assert (=> b!4080912 (= b_free!113889 (not b_next!114593))))

(declare-fun tp!1235413 () Bool)

(declare-fun b_and!313951 () Bool)

(assert (=> b!4080912 (= tp!1235413 b_and!313951)))

(declare-fun b_free!113891 () Bool)

(declare-fun b_next!114595 () Bool)

(assert (=> b!4080912 (= b_free!113891 (not b_next!114595))))

(declare-fun tp!1235411 () Bool)

(declare-fun b_and!313953 () Bool)

(assert (=> b!4080912 (= tp!1235411 b_and!313953)))

(declare-fun b!4080907 () Bool)

(declare-fun b_free!113893 () Bool)

(declare-fun b_next!114597 () Bool)

(assert (=> b!4080907 (= b_free!113893 (not b_next!114597))))

(declare-fun tp!1235407 () Bool)

(declare-fun b_and!313955 () Bool)

(assert (=> b!4080907 (= tp!1235407 b_and!313955)))

(declare-fun b_free!113895 () Bool)

(declare-fun b_next!114599 () Bool)

(assert (=> b!4080907 (= b_free!113895 (not b_next!114599))))

(declare-fun tp!1235410 () Bool)

(declare-fun b_and!313957 () Bool)

(assert (=> b!4080907 (= tp!1235410 b_and!313957)))

(declare-fun b!4080897 () Bool)

(declare-fun e!2532869 () Bool)

(declare-fun tp_is_empty!20921 () Bool)

(declare-fun tp!1235409 () Bool)

(assert (=> b!4080897 (= e!2532869 (and tp_is_empty!20921 tp!1235409))))

(declare-datatypes ((List!43839 0))(
  ( (Nil!43715) (Cons!43715 (h!49135 (_ BitVec 16)) (t!337726 List!43839)) )
))
(declare-datatypes ((TokenValue!7284 0))(
  ( (FloatLiteralValue!14568 (text!51433 List!43839)) (TokenValueExt!7283 (__x!26785 Int)) (Broken!36420 (value!221665 List!43839)) (Object!7407) (End!7284) (Def!7284) (Underscore!7284) (Match!7284) (Else!7284) (Error!7284) (Case!7284) (If!7284) (Extends!7284) (Abstract!7284) (Class!7284) (Val!7284) (DelimiterValue!14568 (del!7344 List!43839)) (KeywordValue!7290 (value!221666 List!43839)) (CommentValue!14568 (value!221667 List!43839)) (WhitespaceValue!14568 (value!221668 List!43839)) (IndentationValue!7284 (value!221669 List!43839)) (String!50169) (Int32!7284) (Broken!36421 (value!221670 List!43839)) (Boolean!7285) (Unit!63252) (OperatorValue!7287 (op!7344 List!43839)) (IdentifierValue!14568 (value!221671 List!43839)) (IdentifierValue!14569 (value!221672 List!43839)) (WhitespaceValue!14569 (value!221673 List!43839)) (True!14568) (False!14568) (Broken!36422 (value!221674 List!43839)) (Broken!36423 (value!221675 List!43839)) (True!14569) (RightBrace!7284) (RightBracket!7284) (Colon!7284) (Null!7284) (Comma!7284) (LeftBracket!7284) (False!14569) (LeftBrace!7284) (ImaginaryLiteralValue!7284 (text!51434 List!43839)) (StringLiteralValue!21852 (value!221676 List!43839)) (EOFValue!7284 (value!221677 List!43839)) (IdentValue!7284 (value!221678 List!43839)) (DelimiterValue!14569 (value!221679 List!43839)) (DedentValue!7284 (value!221680 List!43839)) (NewLineValue!7284 (value!221681 List!43839)) (IntegerValue!21852 (value!221682 (_ BitVec 32)) (text!51435 List!43839)) (IntegerValue!21853 (value!221683 Int) (text!51436 List!43839)) (Times!7284) (Or!7284) (Equal!7284) (Minus!7284) (Broken!36424 (value!221684 List!43839)) (And!7284) (Div!7284) (LessEqual!7284) (Mod!7284) (Concat!19243) (Not!7284) (Plus!7284) (SpaceValue!7284 (value!221685 List!43839)) (IntegerValue!21854 (value!221686 Int) (text!51437 List!43839)) (StringLiteralValue!21853 (text!51438 List!43839)) (FloatLiteralValue!14569 (text!51439 List!43839)) (BytesLiteralValue!7284 (value!221687 List!43839)) (CommentValue!14569 (value!221688 List!43839)) (StringLiteralValue!21854 (value!221689 List!43839)) (ErrorTokenValue!7284 (msg!7345 List!43839)) )
))
(declare-datatypes ((C!24104 0))(
  ( (C!24105 (val!14162 Int)) )
))
(declare-datatypes ((Regex!11959 0))(
  ( (ElementMatch!11959 (c!703754 C!24104)) (Concat!19244 (regOne!24430 Regex!11959) (regTwo!24430 Regex!11959)) (EmptyExpr!11959) (Star!11959 (reg!12288 Regex!11959)) (EmptyLang!11959) (Union!11959 (regOne!24431 Regex!11959) (regTwo!24431 Regex!11959)) )
))
(declare-datatypes ((String!50170 0))(
  ( (String!50171 (value!221690 String)) )
))
(declare-datatypes ((List!43840 0))(
  ( (Nil!43716) (Cons!43716 (h!49136 C!24104) (t!337727 List!43840)) )
))
(declare-datatypes ((IArray!26535 0))(
  ( (IArray!26536 (innerList!13325 List!43840)) )
))
(declare-datatypes ((Conc!13265 0))(
  ( (Node!13265 (left!32854 Conc!13265) (right!33184 Conc!13265) (csize!26760 Int) (cheight!13476 Int)) (Leaf!20507 (xs!16571 IArray!26535) (csize!26761 Int)) (Empty!13265) )
))
(declare-datatypes ((BalanceConc!26124 0))(
  ( (BalanceConc!26125 (c!703755 Conc!13265)) )
))
(declare-datatypes ((TokenValueInjection!13996 0))(
  ( (TokenValueInjection!13997 (toValue!9626 Int) (toChars!9485 Int)) )
))
(declare-datatypes ((Rule!13908 0))(
  ( (Rule!13909 (regex!7054 Regex!11959) (tag!7914 String!50170) (isSeparator!7054 Bool) (transformation!7054 TokenValueInjection!13996)) )
))
(declare-datatypes ((List!43841 0))(
  ( (Nil!43717) (Cons!43717 (h!49137 Rule!13908) (t!337728 List!43841)) )
))
(declare-fun rules!3870 () List!43841)

(declare-fun b!4080898 () Bool)

(declare-fun tp!1235414 () Bool)

(declare-fun e!2532871 () Bool)

(declare-fun e!2532880 () Bool)

(declare-fun inv!58375 (String!50170) Bool)

(declare-fun inv!58377 (TokenValueInjection!13996) Bool)

(assert (=> b!4080898 (= e!2532871 (and tp!1235414 (inv!58375 (tag!7914 (h!49137 rules!3870))) (inv!58377 (transformation!7054 (h!49137 rules!3870))) e!2532880))))

(declare-fun b!4080899 () Bool)

(declare-fun e!2532878 () Bool)

(declare-fun tp!1235405 () Bool)

(assert (=> b!4080899 (= e!2532878 (and tp_is_empty!20921 tp!1235405))))

(declare-fun b!4080900 () Bool)

(declare-fun res!1667255 () Bool)

(declare-fun e!2532870 () Bool)

(assert (=> b!4080900 (=> (not res!1667255) (not e!2532870))))

(declare-fun p!2988 () List!43840)

(declare-fun isEmpty!26125 (List!43840) Bool)

(assert (=> b!4080900 (= res!1667255 (not (isEmpty!26125 p!2988)))))

(declare-fun b!4080901 () Bool)

(declare-fun e!2532877 () Bool)

(declare-datatypes ((Token!13234 0))(
  ( (Token!13235 (value!221691 TokenValue!7284) (rule!10172 Rule!13908) (size!32655 Int) (originalCharacters!7648 List!43840)) )
))
(declare-datatypes ((tuple2!42678 0))(
  ( (tuple2!42679 (_1!24473 Token!13234) (_2!24473 List!43840)) )
))
(declare-datatypes ((Option!9462 0))(
  ( (None!9461) (Some!9461 (v!39919 tuple2!42678)) )
))
(declare-fun lt!1460147 () Option!9462)

(declare-fun get!14337 (Option!9462) tuple2!42678)

(assert (=> b!4080901 (= e!2532877 (= (rule!10172 (_1!24473 (get!14337 lt!1460147))) (h!49137 rules!3870)))))

(declare-fun b!4080902 () Bool)

(declare-fun res!1667258 () Bool)

(assert (=> b!4080902 (=> (not res!1667258) (not e!2532870))))

(declare-fun isEmpty!26126 (List!43841) Bool)

(assert (=> b!4080902 (= res!1667258 (not (isEmpty!26126 rules!3870)))))

(declare-fun b!4080903 () Bool)

(declare-fun res!1667253 () Bool)

(assert (=> b!4080903 (=> (not res!1667253) (not e!2532870))))

(declare-fun r!4213 () Rule!13908)

(declare-fun contains!8725 (List!43841 Rule!13908) Bool)

(assert (=> b!4080903 (= res!1667253 (contains!8725 rules!3870 r!4213))))

(declare-fun e!2532876 () Bool)

(declare-fun tp!1235408 () Bool)

(declare-fun e!2532875 () Bool)

(declare-fun b!4080904 () Bool)

(assert (=> b!4080904 (= e!2532875 (and tp!1235408 (inv!58375 (tag!7914 r!4213)) (inv!58377 (transformation!7054 r!4213)) e!2532876))))

(declare-fun b!4080906 () Bool)

(declare-fun res!1667257 () Bool)

(declare-fun e!2532872 () Bool)

(assert (=> b!4080906 (=> res!1667257 e!2532872)))

(get-info :version)

(assert (=> b!4080906 (= res!1667257 (or (and ((_ is Cons!43717) rules!3870) (= (h!49137 rules!3870) r!4213)) (not ((_ is Cons!43717) rules!3870)) (= (h!49137 rules!3870) r!4213)))))

(assert (=> b!4080907 (= e!2532876 (and tp!1235407 tp!1235410))))

(declare-fun b!4080908 () Bool)

(assert (=> b!4080908 (= e!2532872 e!2532877)))

(declare-fun res!1667251 () Bool)

(assert (=> b!4080908 (=> res!1667251 e!2532877)))

(declare-fun isEmpty!26127 (Option!9462) Bool)

(assert (=> b!4080908 (= res!1667251 (isEmpty!26127 lt!1460147))))

(declare-datatypes ((LexerInterface!6643 0))(
  ( (LexerInterfaceExt!6640 (__x!26786 Int)) (Lexer!6641) )
))
(declare-fun thiss!26199 () LexerInterface!6643)

(declare-fun input!3411 () List!43840)

(declare-fun maxPrefixOneRule!2925 (LexerInterface!6643 Rule!13908 List!43840) Option!9462)

(assert (=> b!4080908 (= lt!1460147 (maxPrefixOneRule!2925 thiss!26199 (h!49137 rules!3870) input!3411))))

(declare-fun rulesInvariant!5986 (LexerInterface!6643 List!43841) Bool)

(assert (=> b!4080908 (rulesInvariant!5986 thiss!26199 (t!337728 rules!3870))))

(declare-datatypes ((Unit!63253 0))(
  ( (Unit!63254) )
))
(declare-fun lt!1460146 () Unit!63253)

(declare-fun lemmaInvariantOnRulesThenOnTail!770 (LexerInterface!6643 Rule!13908 List!43841) Unit!63253)

(assert (=> b!4080908 (= lt!1460146 (lemmaInvariantOnRulesThenOnTail!770 thiss!26199 (h!49137 rules!3870) (t!337728 rules!3870)))))

(declare-fun b!4080909 () Bool)

(declare-fun e!2532874 () Bool)

(declare-fun tp!1235406 () Bool)

(assert (=> b!4080909 (= e!2532874 (and e!2532871 tp!1235406))))

(declare-fun b!4080910 () Bool)

(declare-fun e!2532873 () Bool)

(declare-fun tp!1235412 () Bool)

(assert (=> b!4080910 (= e!2532873 (and tp_is_empty!20921 tp!1235412))))

(declare-fun b!4080905 () Bool)

(declare-fun e!2532882 () Bool)

(assert (=> b!4080905 (= e!2532870 e!2532882)))

(declare-fun res!1667252 () Bool)

(assert (=> b!4080905 (=> (not res!1667252) (not e!2532882))))

(declare-fun suffix!1518 () List!43840)

(declare-fun lt!1460143 () BalanceConc!26124)

(declare-fun maxPrefix!3935 (LexerInterface!6643 List!43841 List!43840) Option!9462)

(declare-fun apply!10237 (TokenValueInjection!13996 BalanceConc!26124) TokenValue!7284)

(declare-fun size!32656 (List!43840) Int)

(assert (=> b!4080905 (= res!1667252 (= (maxPrefix!3935 thiss!26199 rules!3870 input!3411) (Some!9461 (tuple2!42679 (Token!13235 (apply!10237 (transformation!7054 r!4213) lt!1460143) r!4213 (size!32656 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1460144 () Unit!63253)

(declare-fun lemmaSemiInverse!2021 (TokenValueInjection!13996 BalanceConc!26124) Unit!63253)

(assert (=> b!4080905 (= lt!1460144 (lemmaSemiInverse!2021 (transformation!7054 r!4213) lt!1460143))))

(declare-fun seqFromList!5271 (List!43840) BalanceConc!26124)

(assert (=> b!4080905 (= lt!1460143 (seqFromList!5271 p!2988))))

(declare-fun res!1667250 () Bool)

(assert (=> start!385584 (=> (not res!1667250) (not e!2532870))))

(assert (=> start!385584 (= res!1667250 ((_ is Lexer!6641) thiss!26199))))

(assert (=> start!385584 e!2532870))

(assert (=> start!385584 true))

(assert (=> start!385584 e!2532878))

(assert (=> start!385584 e!2532874))

(assert (=> start!385584 e!2532869))

(assert (=> start!385584 e!2532873))

(assert (=> start!385584 e!2532875))

(declare-fun b!4080911 () Bool)

(declare-fun res!1667256 () Bool)

(assert (=> b!4080911 (=> (not res!1667256) (not e!2532870))))

(declare-fun ++!11460 (List!43840 List!43840) List!43840)

(assert (=> b!4080911 (= res!1667256 (= input!3411 (++!11460 p!2988 suffix!1518)))))

(assert (=> b!4080912 (= e!2532880 (and tp!1235413 tp!1235411))))

(declare-fun b!4080913 () Bool)

(assert (=> b!4080913 (= e!2532882 (not e!2532872))))

(declare-fun res!1667254 () Bool)

(assert (=> b!4080913 (=> res!1667254 e!2532872)))

(declare-fun matchR!5904 (Regex!11959 List!43840) Bool)

(assert (=> b!4080913 (= res!1667254 (not (matchR!5904 (regex!7054 r!4213) p!2988)))))

(declare-fun ruleValid!2978 (LexerInterface!6643 Rule!13908) Bool)

(assert (=> b!4080913 (ruleValid!2978 thiss!26199 r!4213)))

(declare-fun lt!1460145 () Unit!63253)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2046 (LexerInterface!6643 Rule!13908 List!43841) Unit!63253)

(assert (=> b!4080913 (= lt!1460145 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2046 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4080914 () Bool)

(declare-fun res!1667259 () Bool)

(assert (=> b!4080914 (=> (not res!1667259) (not e!2532870))))

(assert (=> b!4080914 (= res!1667259 (rulesInvariant!5986 thiss!26199 rules!3870))))

(assert (= (and start!385584 res!1667250) b!4080902))

(assert (= (and b!4080902 res!1667258) b!4080914))

(assert (= (and b!4080914 res!1667259) b!4080903))

(assert (= (and b!4080903 res!1667253) b!4080911))

(assert (= (and b!4080911 res!1667256) b!4080900))

(assert (= (and b!4080900 res!1667255) b!4080905))

(assert (= (and b!4080905 res!1667252) b!4080913))

(assert (= (and b!4080913 (not res!1667254)) b!4080906))

(assert (= (and b!4080906 (not res!1667257)) b!4080908))

(assert (= (and b!4080908 (not res!1667251)) b!4080901))

(assert (= (and start!385584 ((_ is Cons!43716) suffix!1518)) b!4080899))

(assert (= b!4080898 b!4080912))

(assert (= b!4080909 b!4080898))

(assert (= (and start!385584 ((_ is Cons!43717) rules!3870)) b!4080909))

(assert (= (and start!385584 ((_ is Cons!43716) p!2988)) b!4080897))

(assert (= (and start!385584 ((_ is Cons!43716) input!3411)) b!4080910))

(assert (= b!4080904 b!4080907))

(assert (= start!385584 b!4080904))

(declare-fun m!4688589 () Bool)

(assert (=> b!4080914 m!4688589))

(declare-fun m!4688591 () Bool)

(assert (=> b!4080898 m!4688591))

(declare-fun m!4688593 () Bool)

(assert (=> b!4080898 m!4688593))

(declare-fun m!4688595 () Bool)

(assert (=> b!4080902 m!4688595))

(declare-fun m!4688597 () Bool)

(assert (=> b!4080900 m!4688597))

(declare-fun m!4688599 () Bool)

(assert (=> b!4080903 m!4688599))

(declare-fun m!4688601 () Bool)

(assert (=> b!4080901 m!4688601))

(declare-fun m!4688603 () Bool)

(assert (=> b!4080905 m!4688603))

(declare-fun m!4688605 () Bool)

(assert (=> b!4080905 m!4688605))

(declare-fun m!4688607 () Bool)

(assert (=> b!4080905 m!4688607))

(declare-fun m!4688609 () Bool)

(assert (=> b!4080905 m!4688609))

(declare-fun m!4688611 () Bool)

(assert (=> b!4080905 m!4688611))

(declare-fun m!4688613 () Bool)

(assert (=> b!4080904 m!4688613))

(declare-fun m!4688615 () Bool)

(assert (=> b!4080904 m!4688615))

(declare-fun m!4688617 () Bool)

(assert (=> b!4080913 m!4688617))

(declare-fun m!4688619 () Bool)

(assert (=> b!4080913 m!4688619))

(declare-fun m!4688621 () Bool)

(assert (=> b!4080913 m!4688621))

(declare-fun m!4688623 () Bool)

(assert (=> b!4080908 m!4688623))

(declare-fun m!4688625 () Bool)

(assert (=> b!4080908 m!4688625))

(declare-fun m!4688627 () Bool)

(assert (=> b!4080908 m!4688627))

(declare-fun m!4688629 () Bool)

(assert (=> b!4080908 m!4688629))

(declare-fun m!4688631 () Bool)

(assert (=> b!4080911 m!4688631))

(check-sat (not b!4080913) (not b!4080911) (not b_next!114599) tp_is_empty!20921 (not b!4080902) (not b!4080914) (not b!4080910) b_and!313955 (not b!4080897) (not b!4080899) (not b!4080909) (not b!4080905) (not b!4080904) (not b_next!114593) (not b!4080900) b_and!313951 (not b!4080903) b_and!313957 (not b!4080898) (not b!4080908) (not b_next!114597) (not b_next!114595) (not b!4080901) b_and!313953)
(check-sat (not b_next!114599) b_and!313951 b_and!313957 b_and!313955 b_and!313953 (not b_next!114593) (not b_next!114597) (not b_next!114595))
(get-model)

(declare-fun bm!288673 () Bool)

(declare-fun call!288678 () Bool)

(assert (=> bm!288673 (= call!288678 (isEmpty!26125 p!2988))))

(declare-fun b!4080995 () Bool)

(declare-fun e!2532931 () Bool)

(declare-fun head!8623 (List!43840) C!24104)

(assert (=> b!4080995 (= e!2532931 (= (head!8623 p!2988) (c!703754 (regex!7054 r!4213))))))

(declare-fun d!1212106 () Bool)

(declare-fun e!2532927 () Bool)

(assert (=> d!1212106 e!2532927))

(declare-fun c!703771 () Bool)

(assert (=> d!1212106 (= c!703771 ((_ is EmptyExpr!11959) (regex!7054 r!4213)))))

(declare-fun lt!1460156 () Bool)

(declare-fun e!2532928 () Bool)

(assert (=> d!1212106 (= lt!1460156 e!2532928)))

(declare-fun c!703772 () Bool)

(assert (=> d!1212106 (= c!703772 (isEmpty!26125 p!2988))))

(declare-fun validRegex!5412 (Regex!11959) Bool)

(assert (=> d!1212106 (validRegex!5412 (regex!7054 r!4213))))

(assert (=> d!1212106 (= (matchR!5904 (regex!7054 r!4213) p!2988) lt!1460156)))

(declare-fun b!4080996 () Bool)

(declare-fun e!2532929 () Bool)

(declare-fun e!2532930 () Bool)

(assert (=> b!4080996 (= e!2532929 e!2532930)))

(declare-fun res!1667324 () Bool)

(assert (=> b!4080996 (=> res!1667324 e!2532930)))

(assert (=> b!4080996 (= res!1667324 call!288678)))

(declare-fun b!4080997 () Bool)

(declare-fun res!1667322 () Bool)

(declare-fun e!2532925 () Bool)

(assert (=> b!4080997 (=> res!1667322 e!2532925)))

(assert (=> b!4080997 (= res!1667322 (not ((_ is ElementMatch!11959) (regex!7054 r!4213))))))

(declare-fun e!2532926 () Bool)

(assert (=> b!4080997 (= e!2532926 e!2532925)))

(declare-fun b!4080998 () Bool)

(declare-fun nullable!4212 (Regex!11959) Bool)

(assert (=> b!4080998 (= e!2532928 (nullable!4212 (regex!7054 r!4213)))))

(declare-fun b!4080999 () Bool)

(assert (=> b!4080999 (= e!2532930 (not (= (head!8623 p!2988) (c!703754 (regex!7054 r!4213)))))))

(declare-fun b!4081000 () Bool)

(assert (=> b!4081000 (= e!2532925 e!2532929)))

(declare-fun res!1667321 () Bool)

(assert (=> b!4081000 (=> (not res!1667321) (not e!2532929))))

(assert (=> b!4081000 (= res!1667321 (not lt!1460156))))

(declare-fun b!4081001 () Bool)

(assert (=> b!4081001 (= e!2532927 (= lt!1460156 call!288678))))

(declare-fun b!4081002 () Bool)

(declare-fun res!1667318 () Bool)

(assert (=> b!4081002 (=> (not res!1667318) (not e!2532931))))

(declare-fun tail!6357 (List!43840) List!43840)

(assert (=> b!4081002 (= res!1667318 (isEmpty!26125 (tail!6357 p!2988)))))

(declare-fun b!4081003 () Bool)

(declare-fun res!1667320 () Bool)

(assert (=> b!4081003 (=> res!1667320 e!2532930)))

(assert (=> b!4081003 (= res!1667320 (not (isEmpty!26125 (tail!6357 p!2988))))))

(declare-fun b!4081004 () Bool)

(assert (=> b!4081004 (= e!2532926 (not lt!1460156))))

(declare-fun b!4081005 () Bool)

(assert (=> b!4081005 (= e!2532927 e!2532926)))

(declare-fun c!703773 () Bool)

(assert (=> b!4081005 (= c!703773 ((_ is EmptyLang!11959) (regex!7054 r!4213)))))

(declare-fun b!4081006 () Bool)

(declare-fun res!1667323 () Bool)

(assert (=> b!4081006 (=> res!1667323 e!2532925)))

(assert (=> b!4081006 (= res!1667323 e!2532931)))

(declare-fun res!1667319 () Bool)

(assert (=> b!4081006 (=> (not res!1667319) (not e!2532931))))

(assert (=> b!4081006 (= res!1667319 lt!1460156)))

(declare-fun b!4081007 () Bool)

(declare-fun derivativeStep!3613 (Regex!11959 C!24104) Regex!11959)

(assert (=> b!4081007 (= e!2532928 (matchR!5904 (derivativeStep!3613 (regex!7054 r!4213) (head!8623 p!2988)) (tail!6357 p!2988)))))

(declare-fun b!4081008 () Bool)

(declare-fun res!1667317 () Bool)

(assert (=> b!4081008 (=> (not res!1667317) (not e!2532931))))

(assert (=> b!4081008 (= res!1667317 (not call!288678))))

(assert (= (and d!1212106 c!703772) b!4080998))

(assert (= (and d!1212106 (not c!703772)) b!4081007))

(assert (= (and d!1212106 c!703771) b!4081001))

(assert (= (and d!1212106 (not c!703771)) b!4081005))

(assert (= (and b!4081005 c!703773) b!4081004))

(assert (= (and b!4081005 (not c!703773)) b!4080997))

(assert (= (and b!4080997 (not res!1667322)) b!4081006))

(assert (= (and b!4081006 res!1667319) b!4081008))

(assert (= (and b!4081008 res!1667317) b!4081002))

(assert (= (and b!4081002 res!1667318) b!4080995))

(assert (= (and b!4081006 (not res!1667323)) b!4081000))

(assert (= (and b!4081000 res!1667321) b!4080996))

(assert (= (and b!4080996 (not res!1667324)) b!4081003))

(assert (= (and b!4081003 (not res!1667320)) b!4080999))

(assert (= (or b!4081001 b!4081008 b!4080996) bm!288673))

(declare-fun m!4688657 () Bool)

(assert (=> b!4081002 m!4688657))

(assert (=> b!4081002 m!4688657))

(declare-fun m!4688659 () Bool)

(assert (=> b!4081002 m!4688659))

(declare-fun m!4688661 () Bool)

(assert (=> b!4080995 m!4688661))

(assert (=> d!1212106 m!4688597))

(declare-fun m!4688663 () Bool)

(assert (=> d!1212106 m!4688663))

(assert (=> b!4080999 m!4688661))

(assert (=> b!4081007 m!4688661))

(assert (=> b!4081007 m!4688661))

(declare-fun m!4688665 () Bool)

(assert (=> b!4081007 m!4688665))

(assert (=> b!4081007 m!4688657))

(assert (=> b!4081007 m!4688665))

(assert (=> b!4081007 m!4688657))

(declare-fun m!4688667 () Bool)

(assert (=> b!4081007 m!4688667))

(assert (=> b!4081003 m!4688657))

(assert (=> b!4081003 m!4688657))

(assert (=> b!4081003 m!4688659))

(declare-fun m!4688669 () Bool)

(assert (=> b!4080998 m!4688669))

(assert (=> bm!288673 m!4688597))

(assert (=> b!4080913 d!1212106))

(declare-fun d!1212124 () Bool)

(declare-fun res!1667329 () Bool)

(declare-fun e!2532934 () Bool)

(assert (=> d!1212124 (=> (not res!1667329) (not e!2532934))))

(assert (=> d!1212124 (= res!1667329 (validRegex!5412 (regex!7054 r!4213)))))

(assert (=> d!1212124 (= (ruleValid!2978 thiss!26199 r!4213) e!2532934)))

(declare-fun b!4081013 () Bool)

(declare-fun res!1667330 () Bool)

(assert (=> b!4081013 (=> (not res!1667330) (not e!2532934))))

(assert (=> b!4081013 (= res!1667330 (not (nullable!4212 (regex!7054 r!4213))))))

(declare-fun b!4081014 () Bool)

(assert (=> b!4081014 (= e!2532934 (not (= (tag!7914 r!4213) (String!50171 ""))))))

(assert (= (and d!1212124 res!1667329) b!4081013))

(assert (= (and b!4081013 res!1667330) b!4081014))

(assert (=> d!1212124 m!4688663))

(assert (=> b!4081013 m!4688669))

(assert (=> b!4080913 d!1212124))

(declare-fun d!1212126 () Bool)

(assert (=> d!1212126 (ruleValid!2978 thiss!26199 r!4213)))

(declare-fun lt!1460159 () Unit!63253)

(declare-fun choose!24917 (LexerInterface!6643 Rule!13908 List!43841) Unit!63253)

(assert (=> d!1212126 (= lt!1460159 (choose!24917 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1212126 (contains!8725 rules!3870 r!4213)))

(assert (=> d!1212126 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2046 thiss!26199 r!4213 rules!3870) lt!1460159)))

(declare-fun bs!592912 () Bool)

(assert (= bs!592912 d!1212126))

(assert (=> bs!592912 m!4688619))

(declare-fun m!4688671 () Bool)

(assert (=> bs!592912 m!4688671))

(assert (=> bs!592912 m!4688599))

(assert (=> b!4080913 d!1212126))

(declare-fun d!1212128 () Bool)

(declare-fun lt!1460162 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6702 (List!43841) (InoxSet Rule!13908))

(assert (=> d!1212128 (= lt!1460162 (select (content!6702 rules!3870) r!4213))))

(declare-fun e!2532939 () Bool)

(assert (=> d!1212128 (= lt!1460162 e!2532939)))

(declare-fun res!1667336 () Bool)

(assert (=> d!1212128 (=> (not res!1667336) (not e!2532939))))

(assert (=> d!1212128 (= res!1667336 ((_ is Cons!43717) rules!3870))))

(assert (=> d!1212128 (= (contains!8725 rules!3870 r!4213) lt!1460162)))

(declare-fun b!4081019 () Bool)

(declare-fun e!2532940 () Bool)

(assert (=> b!4081019 (= e!2532939 e!2532940)))

(declare-fun res!1667335 () Bool)

(assert (=> b!4081019 (=> res!1667335 e!2532940)))

(assert (=> b!4081019 (= res!1667335 (= (h!49137 rules!3870) r!4213))))

(declare-fun b!4081020 () Bool)

(assert (=> b!4081020 (= e!2532940 (contains!8725 (t!337728 rules!3870) r!4213))))

(assert (= (and d!1212128 res!1667336) b!4081019))

(assert (= (and b!4081019 (not res!1667335)) b!4081020))

(declare-fun m!4688673 () Bool)

(assert (=> d!1212128 m!4688673))

(declare-fun m!4688675 () Bool)

(assert (=> d!1212128 m!4688675))

(declare-fun m!4688677 () Bool)

(assert (=> b!4081020 m!4688677))

(assert (=> b!4080903 d!1212128))

(declare-fun d!1212130 () Bool)

(declare-fun res!1667353 () Bool)

(declare-fun e!2532949 () Bool)

(assert (=> d!1212130 (=> (not res!1667353) (not e!2532949))))

(declare-fun rulesValid!2754 (LexerInterface!6643 List!43841) Bool)

(assert (=> d!1212130 (= res!1667353 (rulesValid!2754 thiss!26199 rules!3870))))

(assert (=> d!1212130 (= (rulesInvariant!5986 thiss!26199 rules!3870) e!2532949)))

(declare-fun b!4081041 () Bool)

(declare-datatypes ((List!43843 0))(
  ( (Nil!43719) (Cons!43719 (h!49139 String!50170) (t!337754 List!43843)) )
))
(declare-fun noDuplicateTag!2755 (LexerInterface!6643 List!43841 List!43843) Bool)

(assert (=> b!4081041 (= e!2532949 (noDuplicateTag!2755 thiss!26199 rules!3870 Nil!43719))))

(assert (= (and d!1212130 res!1667353) b!4081041))

(declare-fun m!4688679 () Bool)

(assert (=> d!1212130 m!4688679))

(declare-fun m!4688681 () Bool)

(assert (=> b!4081041 m!4688681))

(assert (=> b!4080914 d!1212130))

(declare-fun d!1212132 () Bool)

(assert (=> d!1212132 (= (inv!58375 (tag!7914 r!4213)) (= (mod (str.len (value!221690 (tag!7914 r!4213))) 2) 0))))

(assert (=> b!4080904 d!1212132))

(declare-fun d!1212134 () Bool)

(declare-fun res!1667363 () Bool)

(declare-fun e!2532958 () Bool)

(assert (=> d!1212134 (=> (not res!1667363) (not e!2532958))))

(declare-fun semiInverseModEq!3020 (Int Int) Bool)

(assert (=> d!1212134 (= res!1667363 (semiInverseModEq!3020 (toChars!9485 (transformation!7054 r!4213)) (toValue!9626 (transformation!7054 r!4213))))))

(assert (=> d!1212134 (= (inv!58377 (transformation!7054 r!4213)) e!2532958)))

(declare-fun b!4081059 () Bool)

(declare-fun equivClasses!2919 (Int Int) Bool)

(assert (=> b!4081059 (= e!2532958 (equivClasses!2919 (toChars!9485 (transformation!7054 r!4213)) (toValue!9626 (transformation!7054 r!4213))))))

(assert (= (and d!1212134 res!1667363) b!4081059))

(declare-fun m!4688717 () Bool)

(assert (=> d!1212134 m!4688717))

(declare-fun m!4688719 () Bool)

(assert (=> b!4081059 m!4688719))

(assert (=> b!4080904 d!1212134))

(declare-fun d!1212140 () Bool)

(assert (=> d!1212140 (= (isEmpty!26125 p!2988) ((_ is Nil!43716) p!2988))))

(assert (=> b!4080900 d!1212140))

(declare-fun b!4081069 () Bool)

(declare-fun e!2532963 () List!43840)

(assert (=> b!4081069 (= e!2532963 (Cons!43716 (h!49136 p!2988) (++!11460 (t!337727 p!2988) suffix!1518)))))

(declare-fun b!4081068 () Bool)

(assert (=> b!4081068 (= e!2532963 suffix!1518)))

(declare-fun b!4081070 () Bool)

(declare-fun res!1667368 () Bool)

(declare-fun e!2532964 () Bool)

(assert (=> b!4081070 (=> (not res!1667368) (not e!2532964))))

(declare-fun lt!1460185 () List!43840)

(assert (=> b!4081070 (= res!1667368 (= (size!32656 lt!1460185) (+ (size!32656 p!2988) (size!32656 suffix!1518))))))

(declare-fun d!1212144 () Bool)

(assert (=> d!1212144 e!2532964))

(declare-fun res!1667369 () Bool)

(assert (=> d!1212144 (=> (not res!1667369) (not e!2532964))))

(declare-fun content!6703 (List!43840) (InoxSet C!24104))

(assert (=> d!1212144 (= res!1667369 (= (content!6703 lt!1460185) ((_ map or) (content!6703 p!2988) (content!6703 suffix!1518))))))

(assert (=> d!1212144 (= lt!1460185 e!2532963)))

(declare-fun c!703783 () Bool)

(assert (=> d!1212144 (= c!703783 ((_ is Nil!43716) p!2988))))

(assert (=> d!1212144 (= (++!11460 p!2988 suffix!1518) lt!1460185)))

(declare-fun b!4081071 () Bool)

(assert (=> b!4081071 (= e!2532964 (or (not (= suffix!1518 Nil!43716)) (= lt!1460185 p!2988)))))

(assert (= (and d!1212144 c!703783) b!4081068))

(assert (= (and d!1212144 (not c!703783)) b!4081069))

(assert (= (and d!1212144 res!1667369) b!4081070))

(assert (= (and b!4081070 res!1667368) b!4081071))

(declare-fun m!4688723 () Bool)

(assert (=> b!4081069 m!4688723))

(declare-fun m!4688725 () Bool)

(assert (=> b!4081070 m!4688725))

(assert (=> b!4081070 m!4688611))

(declare-fun m!4688727 () Bool)

(assert (=> b!4081070 m!4688727))

(declare-fun m!4688729 () Bool)

(assert (=> d!1212144 m!4688729))

(declare-fun m!4688731 () Bool)

(assert (=> d!1212144 m!4688731))

(declare-fun m!4688733 () Bool)

(assert (=> d!1212144 m!4688733))

(assert (=> b!4080911 d!1212144))

(declare-fun d!1212146 () Bool)

(assert (=> d!1212146 (= (get!14337 lt!1460147) (v!39919 lt!1460147))))

(assert (=> b!4080901 d!1212146))

(declare-fun d!1212148 () Bool)

(assert (=> d!1212148 (= (isEmpty!26126 rules!3870) ((_ is Nil!43717) rules!3870))))

(assert (=> b!4080902 d!1212148))

(declare-fun d!1212150 () Bool)

(assert (=> d!1212150 (= (isEmpty!26127 lt!1460147) (not ((_ is Some!9461) lt!1460147)))))

(assert (=> b!4080908 d!1212150))

(declare-fun b!4081090 () Bool)

(declare-fun res!1667384 () Bool)

(declare-fun e!2532974 () Bool)

(assert (=> b!4081090 (=> (not res!1667384) (not e!2532974))))

(declare-fun lt!1460198 () Option!9462)

(assert (=> b!4081090 (= res!1667384 (= (rule!10172 (_1!24473 (get!14337 lt!1460198))) (h!49137 rules!3870)))))

(declare-fun b!4081091 () Bool)

(assert (=> b!4081091 (= e!2532974 (= (size!32655 (_1!24473 (get!14337 lt!1460198))) (size!32656 (originalCharacters!7648 (_1!24473 (get!14337 lt!1460198))))))))

(declare-fun d!1212152 () Bool)

(declare-fun e!2532976 () Bool)

(assert (=> d!1212152 e!2532976))

(declare-fun res!1667390 () Bool)

(assert (=> d!1212152 (=> res!1667390 e!2532976)))

(assert (=> d!1212152 (= res!1667390 (isEmpty!26127 lt!1460198))))

(declare-fun e!2532973 () Option!9462)

(assert (=> d!1212152 (= lt!1460198 e!2532973)))

(declare-fun c!703786 () Bool)

(declare-datatypes ((tuple2!42682 0))(
  ( (tuple2!42683 (_1!24475 List!43840) (_2!24475 List!43840)) )
))
(declare-fun lt!1460199 () tuple2!42682)

(assert (=> d!1212152 (= c!703786 (isEmpty!26125 (_1!24475 lt!1460199)))))

(declare-fun findLongestMatch!1352 (Regex!11959 List!43840) tuple2!42682)

(assert (=> d!1212152 (= lt!1460199 (findLongestMatch!1352 (regex!7054 (h!49137 rules!3870)) input!3411))))

(assert (=> d!1212152 (ruleValid!2978 thiss!26199 (h!49137 rules!3870))))

(assert (=> d!1212152 (= (maxPrefixOneRule!2925 thiss!26199 (h!49137 rules!3870) input!3411) lt!1460198)))

(declare-fun b!4081092 () Bool)

(declare-fun res!1667386 () Bool)

(assert (=> b!4081092 (=> (not res!1667386) (not e!2532974))))

(assert (=> b!4081092 (= res!1667386 (< (size!32656 (_2!24473 (get!14337 lt!1460198))) (size!32656 input!3411)))))

(declare-fun b!4081093 () Bool)

(assert (=> b!4081093 (= e!2532976 e!2532974)))

(declare-fun res!1667385 () Bool)

(assert (=> b!4081093 (=> (not res!1667385) (not e!2532974))))

(declare-fun list!16246 (BalanceConc!26124) List!43840)

(declare-fun charsOf!4828 (Token!13234) BalanceConc!26124)

(assert (=> b!4081093 (= res!1667385 (matchR!5904 (regex!7054 (h!49137 rules!3870)) (list!16246 (charsOf!4828 (_1!24473 (get!14337 lt!1460198))))))))

(declare-fun b!4081094 () Bool)

(declare-fun e!2532975 () Bool)

(declare-fun findLongestMatchInner!1439 (Regex!11959 List!43840 Int List!43840 List!43840 Int) tuple2!42682)

(assert (=> b!4081094 (= e!2532975 (matchR!5904 (regex!7054 (h!49137 rules!3870)) (_1!24475 (findLongestMatchInner!1439 (regex!7054 (h!49137 rules!3870)) Nil!43716 (size!32656 Nil!43716) input!3411 input!3411 (size!32656 input!3411)))))))

(declare-fun b!4081095 () Bool)

(assert (=> b!4081095 (= e!2532973 None!9461)))

(declare-fun b!4081096 () Bool)

(declare-fun res!1667388 () Bool)

(assert (=> b!4081096 (=> (not res!1667388) (not e!2532974))))

(assert (=> b!4081096 (= res!1667388 (= (value!221691 (_1!24473 (get!14337 lt!1460198))) (apply!10237 (transformation!7054 (rule!10172 (_1!24473 (get!14337 lt!1460198)))) (seqFromList!5271 (originalCharacters!7648 (_1!24473 (get!14337 lt!1460198)))))))))

(declare-fun b!4081097 () Bool)

(declare-fun res!1667387 () Bool)

(assert (=> b!4081097 (=> (not res!1667387) (not e!2532974))))

(assert (=> b!4081097 (= res!1667387 (= (++!11460 (list!16246 (charsOf!4828 (_1!24473 (get!14337 lt!1460198)))) (_2!24473 (get!14337 lt!1460198))) input!3411))))

(declare-fun b!4081098 () Bool)

(declare-fun size!32658 (BalanceConc!26124) Int)

(assert (=> b!4081098 (= e!2532973 (Some!9461 (tuple2!42679 (Token!13235 (apply!10237 (transformation!7054 (h!49137 rules!3870)) (seqFromList!5271 (_1!24475 lt!1460199))) (h!49137 rules!3870) (size!32658 (seqFromList!5271 (_1!24475 lt!1460199))) (_1!24475 lt!1460199)) (_2!24475 lt!1460199))))))

(declare-fun lt!1460200 () Unit!63253)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1412 (Regex!11959 List!43840) Unit!63253)

(assert (=> b!4081098 (= lt!1460200 (longestMatchIsAcceptedByMatchOrIsEmpty!1412 (regex!7054 (h!49137 rules!3870)) input!3411))))

(declare-fun res!1667389 () Bool)

(assert (=> b!4081098 (= res!1667389 (isEmpty!26125 (_1!24475 (findLongestMatchInner!1439 (regex!7054 (h!49137 rules!3870)) Nil!43716 (size!32656 Nil!43716) input!3411 input!3411 (size!32656 input!3411)))))))

(assert (=> b!4081098 (=> res!1667389 e!2532975)))

(assert (=> b!4081098 e!2532975))

(declare-fun lt!1460196 () Unit!63253)

(assert (=> b!4081098 (= lt!1460196 lt!1460200)))

(declare-fun lt!1460197 () Unit!63253)

(assert (=> b!4081098 (= lt!1460197 (lemmaSemiInverse!2021 (transformation!7054 (h!49137 rules!3870)) (seqFromList!5271 (_1!24475 lt!1460199))))))

(assert (= (and d!1212152 c!703786) b!4081095))

(assert (= (and d!1212152 (not c!703786)) b!4081098))

(assert (= (and b!4081098 (not res!1667389)) b!4081094))

(assert (= (and d!1212152 (not res!1667390)) b!4081093))

(assert (= (and b!4081093 res!1667385) b!4081097))

(assert (= (and b!4081097 res!1667387) b!4081092))

(assert (= (and b!4081092 res!1667386) b!4081090))

(assert (= (and b!4081090 res!1667384) b!4081096))

(assert (= (and b!4081096 res!1667388) b!4081091))

(declare-fun m!4688735 () Bool)

(assert (=> b!4081093 m!4688735))

(declare-fun m!4688737 () Bool)

(assert (=> b!4081093 m!4688737))

(assert (=> b!4081093 m!4688737))

(declare-fun m!4688739 () Bool)

(assert (=> b!4081093 m!4688739))

(assert (=> b!4081093 m!4688739))

(declare-fun m!4688741 () Bool)

(assert (=> b!4081093 m!4688741))

(assert (=> b!4081090 m!4688735))

(assert (=> b!4081097 m!4688735))

(assert (=> b!4081097 m!4688737))

(assert (=> b!4081097 m!4688737))

(assert (=> b!4081097 m!4688739))

(assert (=> b!4081097 m!4688739))

(declare-fun m!4688743 () Bool)

(assert (=> b!4081097 m!4688743))

(declare-fun m!4688745 () Bool)

(assert (=> b!4081098 m!4688745))

(declare-fun m!4688747 () Bool)

(assert (=> b!4081098 m!4688747))

(declare-fun m!4688749 () Bool)

(assert (=> b!4081098 m!4688749))

(assert (=> b!4081098 m!4688745))

(declare-fun m!4688751 () Bool)

(assert (=> b!4081098 m!4688751))

(declare-fun m!4688753 () Bool)

(assert (=> b!4081098 m!4688753))

(assert (=> b!4081098 m!4688751))

(assert (=> b!4081098 m!4688751))

(declare-fun m!4688755 () Bool)

(assert (=> b!4081098 m!4688755))

(declare-fun m!4688757 () Bool)

(assert (=> b!4081098 m!4688757))

(declare-fun m!4688759 () Bool)

(assert (=> b!4081098 m!4688759))

(assert (=> b!4081098 m!4688751))

(declare-fun m!4688761 () Bool)

(assert (=> b!4081098 m!4688761))

(assert (=> b!4081098 m!4688747))

(assert (=> b!4081092 m!4688735))

(declare-fun m!4688763 () Bool)

(assert (=> b!4081092 m!4688763))

(assert (=> b!4081092 m!4688747))

(assert (=> b!4081091 m!4688735))

(declare-fun m!4688765 () Bool)

(assert (=> b!4081091 m!4688765))

(declare-fun m!4688767 () Bool)

(assert (=> d!1212152 m!4688767))

(declare-fun m!4688769 () Bool)

(assert (=> d!1212152 m!4688769))

(declare-fun m!4688771 () Bool)

(assert (=> d!1212152 m!4688771))

(declare-fun m!4688773 () Bool)

(assert (=> d!1212152 m!4688773))

(assert (=> b!4081094 m!4688745))

(assert (=> b!4081094 m!4688747))

(assert (=> b!4081094 m!4688745))

(assert (=> b!4081094 m!4688747))

(assert (=> b!4081094 m!4688749))

(declare-fun m!4688775 () Bool)

(assert (=> b!4081094 m!4688775))

(assert (=> b!4081096 m!4688735))

(declare-fun m!4688777 () Bool)

(assert (=> b!4081096 m!4688777))

(assert (=> b!4081096 m!4688777))

(declare-fun m!4688779 () Bool)

(assert (=> b!4081096 m!4688779))

(assert (=> b!4080908 d!1212152))

(declare-fun d!1212154 () Bool)

(declare-fun res!1667391 () Bool)

(declare-fun e!2532977 () Bool)

(assert (=> d!1212154 (=> (not res!1667391) (not e!2532977))))

(assert (=> d!1212154 (= res!1667391 (rulesValid!2754 thiss!26199 (t!337728 rules!3870)))))

(assert (=> d!1212154 (= (rulesInvariant!5986 thiss!26199 (t!337728 rules!3870)) e!2532977)))

(declare-fun b!4081099 () Bool)

(assert (=> b!4081099 (= e!2532977 (noDuplicateTag!2755 thiss!26199 (t!337728 rules!3870) Nil!43719))))

(assert (= (and d!1212154 res!1667391) b!4081099))

(declare-fun m!4688781 () Bool)

(assert (=> d!1212154 m!4688781))

(declare-fun m!4688783 () Bool)

(assert (=> b!4081099 m!4688783))

(assert (=> b!4080908 d!1212154))

(declare-fun d!1212156 () Bool)

(assert (=> d!1212156 (rulesInvariant!5986 thiss!26199 (t!337728 rules!3870))))

(declare-fun lt!1460203 () Unit!63253)

(declare-fun choose!24918 (LexerInterface!6643 Rule!13908 List!43841) Unit!63253)

(assert (=> d!1212156 (= lt!1460203 (choose!24918 thiss!26199 (h!49137 rules!3870) (t!337728 rules!3870)))))

(assert (=> d!1212156 (rulesInvariant!5986 thiss!26199 (Cons!43717 (h!49137 rules!3870) (t!337728 rules!3870)))))

(assert (=> d!1212156 (= (lemmaInvariantOnRulesThenOnTail!770 thiss!26199 (h!49137 rules!3870) (t!337728 rules!3870)) lt!1460203)))

(declare-fun bs!592914 () Bool)

(assert (= bs!592914 d!1212156))

(assert (=> bs!592914 m!4688627))

(declare-fun m!4688785 () Bool)

(assert (=> bs!592914 m!4688785))

(declare-fun m!4688787 () Bool)

(assert (=> bs!592914 m!4688787))

(assert (=> b!4080908 d!1212156))

(declare-fun d!1212158 () Bool)

(assert (=> d!1212158 (= (inv!58375 (tag!7914 (h!49137 rules!3870))) (= (mod (str.len (value!221690 (tag!7914 (h!49137 rules!3870)))) 2) 0))))

(assert (=> b!4080898 d!1212158))

(declare-fun d!1212160 () Bool)

(declare-fun res!1667392 () Bool)

(declare-fun e!2532978 () Bool)

(assert (=> d!1212160 (=> (not res!1667392) (not e!2532978))))

(assert (=> d!1212160 (= res!1667392 (semiInverseModEq!3020 (toChars!9485 (transformation!7054 (h!49137 rules!3870))) (toValue!9626 (transformation!7054 (h!49137 rules!3870)))))))

(assert (=> d!1212160 (= (inv!58377 (transformation!7054 (h!49137 rules!3870))) e!2532978)))

(declare-fun b!4081100 () Bool)

(assert (=> b!4081100 (= e!2532978 (equivClasses!2919 (toChars!9485 (transformation!7054 (h!49137 rules!3870))) (toValue!9626 (transformation!7054 (h!49137 rules!3870)))))))

(assert (= (and d!1212160 res!1667392) b!4081100))

(declare-fun m!4688789 () Bool)

(assert (=> d!1212160 m!4688789))

(declare-fun m!4688791 () Bool)

(assert (=> b!4081100 m!4688791))

(assert (=> b!4080898 d!1212160))

(declare-fun d!1212162 () Bool)

(declare-fun dynLambda!18612 (Int BalanceConc!26124) TokenValue!7284)

(assert (=> d!1212162 (= (apply!10237 (transformation!7054 r!4213) lt!1460143) (dynLambda!18612 (toValue!9626 (transformation!7054 r!4213)) lt!1460143))))

(declare-fun b_lambda!119327 () Bool)

(assert (=> (not b_lambda!119327) (not d!1212162)))

(declare-fun t!337730 () Bool)

(declare-fun tb!245113 () Bool)

(assert (=> (and b!4080912 (= (toValue!9626 (transformation!7054 (h!49137 rules!3870))) (toValue!9626 (transformation!7054 r!4213))) t!337730) tb!245113))

(declare-fun result!297286 () Bool)

(declare-fun inv!21 (TokenValue!7284) Bool)

(assert (=> tb!245113 (= result!297286 (inv!21 (dynLambda!18612 (toValue!9626 (transformation!7054 r!4213)) lt!1460143)))))

(declare-fun m!4688793 () Bool)

(assert (=> tb!245113 m!4688793))

(assert (=> d!1212162 t!337730))

(declare-fun b_and!313959 () Bool)

(assert (= b_and!313951 (and (=> t!337730 result!297286) b_and!313959)))

(declare-fun t!337732 () Bool)

(declare-fun tb!245115 () Bool)

(assert (=> (and b!4080907 (= (toValue!9626 (transformation!7054 r!4213)) (toValue!9626 (transformation!7054 r!4213))) t!337732) tb!245115))

(declare-fun result!297290 () Bool)

(assert (= result!297290 result!297286))

(assert (=> d!1212162 t!337732))

(declare-fun b_and!313961 () Bool)

(assert (= b_and!313955 (and (=> t!337732 result!297290) b_and!313961)))

(declare-fun m!4688795 () Bool)

(assert (=> d!1212162 m!4688795))

(assert (=> b!4080905 d!1212162))

(declare-fun b!4081204 () Bool)

(declare-fun e!2533042 () Bool)

(assert (=> b!4081204 (= e!2533042 true)))

(declare-fun d!1212164 () Bool)

(assert (=> d!1212164 e!2533042))

(assert (= d!1212164 b!4081204))

(declare-fun order!22883 () Int)

(declare-fun order!22881 () Int)

(declare-fun lambda!127789 () Int)

(declare-fun dynLambda!18613 (Int Int) Int)

(declare-fun dynLambda!18614 (Int Int) Int)

(assert (=> b!4081204 (< (dynLambda!18613 order!22881 (toValue!9626 (transformation!7054 r!4213))) (dynLambda!18614 order!22883 lambda!127789))))

(declare-fun order!22885 () Int)

(declare-fun dynLambda!18615 (Int Int) Int)

(assert (=> b!4081204 (< (dynLambda!18615 order!22885 (toChars!9485 (transformation!7054 r!4213))) (dynLambda!18614 order!22883 lambda!127789))))

(declare-fun dynLambda!18616 (Int TokenValue!7284) BalanceConc!26124)

(assert (=> d!1212164 (= (list!16246 (dynLambda!18616 (toChars!9485 (transformation!7054 r!4213)) (dynLambda!18612 (toValue!9626 (transformation!7054 r!4213)) lt!1460143))) (list!16246 lt!1460143))))

(declare-fun lt!1460231 () Unit!63253)

(declare-fun ForallOf!859 (Int BalanceConc!26124) Unit!63253)

(assert (=> d!1212164 (= lt!1460231 (ForallOf!859 lambda!127789 lt!1460143))))

(assert (=> d!1212164 (= (lemmaSemiInverse!2021 (transformation!7054 r!4213) lt!1460143) lt!1460231)))

(declare-fun b_lambda!119341 () Bool)

(assert (=> (not b_lambda!119341) (not d!1212164)))

(declare-fun tb!245129 () Bool)

(declare-fun t!337746 () Bool)

(assert (=> (and b!4080912 (= (toChars!9485 (transformation!7054 (h!49137 rules!3870))) (toChars!9485 (transformation!7054 r!4213))) t!337746) tb!245129))

(declare-fun tp!1235457 () Bool)

(declare-fun e!2533045 () Bool)

(declare-fun b!4081209 () Bool)

(declare-fun inv!58380 (Conc!13265) Bool)

(assert (=> b!4081209 (= e!2533045 (and (inv!58380 (c!703755 (dynLambda!18616 (toChars!9485 (transformation!7054 r!4213)) (dynLambda!18612 (toValue!9626 (transformation!7054 r!4213)) lt!1460143)))) tp!1235457))))

(declare-fun result!297314 () Bool)

(declare-fun inv!58381 (BalanceConc!26124) Bool)

(assert (=> tb!245129 (= result!297314 (and (inv!58381 (dynLambda!18616 (toChars!9485 (transformation!7054 r!4213)) (dynLambda!18612 (toValue!9626 (transformation!7054 r!4213)) lt!1460143))) e!2533045))))

(assert (= tb!245129 b!4081209))

(declare-fun m!4688891 () Bool)

(assert (=> b!4081209 m!4688891))

(declare-fun m!4688893 () Bool)

(assert (=> tb!245129 m!4688893))

(assert (=> d!1212164 t!337746))

(declare-fun b_and!313979 () Bool)

(assert (= b_and!313953 (and (=> t!337746 result!297314) b_and!313979)))

(declare-fun t!337748 () Bool)

(declare-fun tb!245131 () Bool)

(assert (=> (and b!4080907 (= (toChars!9485 (transformation!7054 r!4213)) (toChars!9485 (transformation!7054 r!4213))) t!337748) tb!245131))

(declare-fun result!297318 () Bool)

(assert (= result!297318 result!297314))

(assert (=> d!1212164 t!337748))

(declare-fun b_and!313981 () Bool)

(assert (= b_and!313957 (and (=> t!337748 result!297318) b_and!313981)))

(declare-fun b_lambda!119343 () Bool)

(assert (=> (not b_lambda!119343) (not d!1212164)))

(assert (=> d!1212164 t!337730))

(declare-fun b_and!313983 () Bool)

(assert (= b_and!313959 (and (=> t!337730 result!297286) b_and!313983)))

(assert (=> d!1212164 t!337732))

(declare-fun b_and!313985 () Bool)

(assert (= b_and!313961 (and (=> t!337732 result!297290) b_and!313985)))

(assert (=> d!1212164 m!4688795))

(assert (=> d!1212164 m!4688795))

(declare-fun m!4688895 () Bool)

(assert (=> d!1212164 m!4688895))

(declare-fun m!4688897 () Bool)

(assert (=> d!1212164 m!4688897))

(declare-fun m!4688899 () Bool)

(assert (=> d!1212164 m!4688899))

(assert (=> d!1212164 m!4688895))

(declare-fun m!4688901 () Bool)

(assert (=> d!1212164 m!4688901))

(assert (=> b!4080905 d!1212164))

(declare-fun b!4081228 () Bool)

(declare-fun res!1667449 () Bool)

(declare-fun e!2533053 () Bool)

(assert (=> b!4081228 (=> (not res!1667449) (not e!2533053))))

(declare-fun lt!1460243 () Option!9462)

(assert (=> b!4081228 (= res!1667449 (< (size!32656 (_2!24473 (get!14337 lt!1460243))) (size!32656 input!3411)))))

(declare-fun b!4081229 () Bool)

(declare-fun e!2533054 () Option!9462)

(declare-fun call!288684 () Option!9462)

(assert (=> b!4081229 (= e!2533054 call!288684)))

(declare-fun b!4081230 () Bool)

(declare-fun res!1667444 () Bool)

(assert (=> b!4081230 (=> (not res!1667444) (not e!2533053))))

(assert (=> b!4081230 (= res!1667444 (= (++!11460 (list!16246 (charsOf!4828 (_1!24473 (get!14337 lt!1460243)))) (_2!24473 (get!14337 lt!1460243))) input!3411))))

(declare-fun bm!288679 () Bool)

(assert (=> bm!288679 (= call!288684 (maxPrefixOneRule!2925 thiss!26199 (h!49137 rules!3870) input!3411))))

(declare-fun d!1212188 () Bool)

(declare-fun e!2533052 () Bool)

(assert (=> d!1212188 e!2533052))

(declare-fun res!1667447 () Bool)

(assert (=> d!1212188 (=> res!1667447 e!2533052)))

(assert (=> d!1212188 (= res!1667447 (isEmpty!26127 lt!1460243))))

(assert (=> d!1212188 (= lt!1460243 e!2533054)))

(declare-fun c!703796 () Bool)

(assert (=> d!1212188 (= c!703796 (and ((_ is Cons!43717) rules!3870) ((_ is Nil!43717) (t!337728 rules!3870))))))

(declare-fun lt!1460245 () Unit!63253)

(declare-fun lt!1460242 () Unit!63253)

(assert (=> d!1212188 (= lt!1460245 lt!1460242)))

(declare-fun isPrefix!4115 (List!43840 List!43840) Bool)

(assert (=> d!1212188 (isPrefix!4115 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2666 (List!43840 List!43840) Unit!63253)

(assert (=> d!1212188 (= lt!1460242 (lemmaIsPrefixRefl!2666 input!3411 input!3411))))

(declare-fun rulesValidInductive!2595 (LexerInterface!6643 List!43841) Bool)

(assert (=> d!1212188 (rulesValidInductive!2595 thiss!26199 rules!3870)))

(assert (=> d!1212188 (= (maxPrefix!3935 thiss!26199 rules!3870 input!3411) lt!1460243)))

(declare-fun b!4081231 () Bool)

(declare-fun res!1667445 () Bool)

(assert (=> b!4081231 (=> (not res!1667445) (not e!2533053))))

(assert (=> b!4081231 (= res!1667445 (= (list!16246 (charsOf!4828 (_1!24473 (get!14337 lt!1460243)))) (originalCharacters!7648 (_1!24473 (get!14337 lt!1460243)))))))

(declare-fun b!4081232 () Bool)

(declare-fun res!1667446 () Bool)

(assert (=> b!4081232 (=> (not res!1667446) (not e!2533053))))

(assert (=> b!4081232 (= res!1667446 (matchR!5904 (regex!7054 (rule!10172 (_1!24473 (get!14337 lt!1460243)))) (list!16246 (charsOf!4828 (_1!24473 (get!14337 lt!1460243))))))))

(declare-fun b!4081233 () Bool)

(declare-fun lt!1460244 () Option!9462)

(declare-fun lt!1460246 () Option!9462)

(assert (=> b!4081233 (= e!2533054 (ite (and ((_ is None!9461) lt!1460244) ((_ is None!9461) lt!1460246)) None!9461 (ite ((_ is None!9461) lt!1460246) lt!1460244 (ite ((_ is None!9461) lt!1460244) lt!1460246 (ite (>= (size!32655 (_1!24473 (v!39919 lt!1460244))) (size!32655 (_1!24473 (v!39919 lt!1460246)))) lt!1460244 lt!1460246)))))))

(assert (=> b!4081233 (= lt!1460244 call!288684)))

(assert (=> b!4081233 (= lt!1460246 (maxPrefix!3935 thiss!26199 (t!337728 rules!3870) input!3411))))

(declare-fun b!4081234 () Bool)

(assert (=> b!4081234 (= e!2533053 (contains!8725 rules!3870 (rule!10172 (_1!24473 (get!14337 lt!1460243)))))))

(declare-fun b!4081235 () Bool)

(declare-fun res!1667448 () Bool)

(assert (=> b!4081235 (=> (not res!1667448) (not e!2533053))))

(assert (=> b!4081235 (= res!1667448 (= (value!221691 (_1!24473 (get!14337 lt!1460243))) (apply!10237 (transformation!7054 (rule!10172 (_1!24473 (get!14337 lt!1460243)))) (seqFromList!5271 (originalCharacters!7648 (_1!24473 (get!14337 lt!1460243)))))))))

(declare-fun b!4081236 () Bool)

(assert (=> b!4081236 (= e!2533052 e!2533053)))

(declare-fun res!1667450 () Bool)

(assert (=> b!4081236 (=> (not res!1667450) (not e!2533053))))

(declare-fun isDefined!7164 (Option!9462) Bool)

(assert (=> b!4081236 (= res!1667450 (isDefined!7164 lt!1460243))))

(assert (= (and d!1212188 c!703796) b!4081229))

(assert (= (and d!1212188 (not c!703796)) b!4081233))

(assert (= (or b!4081229 b!4081233) bm!288679))

(assert (= (and d!1212188 (not res!1667447)) b!4081236))

(assert (= (and b!4081236 res!1667450) b!4081231))

(assert (= (and b!4081231 res!1667445) b!4081228))

(assert (= (and b!4081228 res!1667449) b!4081230))

(assert (= (and b!4081230 res!1667444) b!4081235))

(assert (= (and b!4081235 res!1667448) b!4081232))

(assert (= (and b!4081232 res!1667446) b!4081234))

(declare-fun m!4688903 () Bool)

(assert (=> b!4081230 m!4688903))

(declare-fun m!4688905 () Bool)

(assert (=> b!4081230 m!4688905))

(assert (=> b!4081230 m!4688905))

(declare-fun m!4688907 () Bool)

(assert (=> b!4081230 m!4688907))

(assert (=> b!4081230 m!4688907))

(declare-fun m!4688909 () Bool)

(assert (=> b!4081230 m!4688909))

(assert (=> b!4081231 m!4688903))

(assert (=> b!4081231 m!4688905))

(assert (=> b!4081231 m!4688905))

(assert (=> b!4081231 m!4688907))

(assert (=> b!4081235 m!4688903))

(declare-fun m!4688911 () Bool)

(assert (=> b!4081235 m!4688911))

(assert (=> b!4081235 m!4688911))

(declare-fun m!4688913 () Bool)

(assert (=> b!4081235 m!4688913))

(assert (=> b!4081228 m!4688903))

(declare-fun m!4688915 () Bool)

(assert (=> b!4081228 m!4688915))

(assert (=> b!4081228 m!4688747))

(assert (=> bm!288679 m!4688625))

(declare-fun m!4688917 () Bool)

(assert (=> d!1212188 m!4688917))

(declare-fun m!4688919 () Bool)

(assert (=> d!1212188 m!4688919))

(declare-fun m!4688921 () Bool)

(assert (=> d!1212188 m!4688921))

(declare-fun m!4688923 () Bool)

(assert (=> d!1212188 m!4688923))

(assert (=> b!4081234 m!4688903))

(declare-fun m!4688925 () Bool)

(assert (=> b!4081234 m!4688925))

(declare-fun m!4688927 () Bool)

(assert (=> b!4081233 m!4688927))

(assert (=> b!4081232 m!4688903))

(assert (=> b!4081232 m!4688905))

(assert (=> b!4081232 m!4688905))

(assert (=> b!4081232 m!4688907))

(assert (=> b!4081232 m!4688907))

(declare-fun m!4688929 () Bool)

(assert (=> b!4081232 m!4688929))

(declare-fun m!4688931 () Bool)

(assert (=> b!4081236 m!4688931))

(assert (=> b!4080905 d!1212188))

(declare-fun d!1212190 () Bool)

(declare-fun lt!1460249 () Int)

(assert (=> d!1212190 (>= lt!1460249 0)))

(declare-fun e!2533057 () Int)

(assert (=> d!1212190 (= lt!1460249 e!2533057)))

(declare-fun c!703799 () Bool)

(assert (=> d!1212190 (= c!703799 ((_ is Nil!43716) p!2988))))

(assert (=> d!1212190 (= (size!32656 p!2988) lt!1460249)))

(declare-fun b!4081241 () Bool)

(assert (=> b!4081241 (= e!2533057 0)))

(declare-fun b!4081242 () Bool)

(assert (=> b!4081242 (= e!2533057 (+ 1 (size!32656 (t!337727 p!2988))))))

(assert (= (and d!1212190 c!703799) b!4081241))

(assert (= (and d!1212190 (not c!703799)) b!4081242))

(declare-fun m!4688933 () Bool)

(assert (=> b!4081242 m!4688933))

(assert (=> b!4080905 d!1212190))

(declare-fun d!1212192 () Bool)

(declare-fun fromListB!2406 (List!43840) BalanceConc!26124)

(assert (=> d!1212192 (= (seqFromList!5271 p!2988) (fromListB!2406 p!2988))))

(declare-fun bs!592916 () Bool)

(assert (= bs!592916 d!1212192))

(declare-fun m!4688935 () Bool)

(assert (=> bs!592916 m!4688935))

(assert (=> b!4080905 d!1212192))

(declare-fun b!4081247 () Bool)

(declare-fun e!2533060 () Bool)

(declare-fun tp!1235460 () Bool)

(assert (=> b!4081247 (= e!2533060 (and tp_is_empty!20921 tp!1235460))))

(assert (=> b!4080897 (= tp!1235409 e!2533060)))

(assert (= (and b!4080897 ((_ is Cons!43716) (t!337727 p!2988))) b!4081247))

(declare-fun b!4081261 () Bool)

(declare-fun e!2533063 () Bool)

(declare-fun tp!1235471 () Bool)

(declare-fun tp!1235475 () Bool)

(assert (=> b!4081261 (= e!2533063 (and tp!1235471 tp!1235475))))

(declare-fun b!4081260 () Bool)

(declare-fun tp!1235473 () Bool)

(assert (=> b!4081260 (= e!2533063 tp!1235473)))

(assert (=> b!4080898 (= tp!1235414 e!2533063)))

(declare-fun b!4081259 () Bool)

(declare-fun tp!1235472 () Bool)

(declare-fun tp!1235474 () Bool)

(assert (=> b!4081259 (= e!2533063 (and tp!1235472 tp!1235474))))

(declare-fun b!4081258 () Bool)

(assert (=> b!4081258 (= e!2533063 tp_is_empty!20921)))

(assert (= (and b!4080898 ((_ is ElementMatch!11959) (regex!7054 (h!49137 rules!3870)))) b!4081258))

(assert (= (and b!4080898 ((_ is Concat!19244) (regex!7054 (h!49137 rules!3870)))) b!4081259))

(assert (= (and b!4080898 ((_ is Star!11959) (regex!7054 (h!49137 rules!3870)))) b!4081260))

(assert (= (and b!4080898 ((_ is Union!11959) (regex!7054 (h!49137 rules!3870)))) b!4081261))

(declare-fun b!4081272 () Bool)

(declare-fun b_free!113901 () Bool)

(declare-fun b_next!114605 () Bool)

(assert (=> b!4081272 (= b_free!113901 (not b_next!114605))))

(declare-fun tb!245133 () Bool)

(declare-fun t!337751 () Bool)

(assert (=> (and b!4081272 (= (toValue!9626 (transformation!7054 (h!49137 (t!337728 rules!3870)))) (toValue!9626 (transformation!7054 r!4213))) t!337751) tb!245133))

(declare-fun result!297326 () Bool)

(assert (= result!297326 result!297286))

(assert (=> d!1212162 t!337751))

(assert (=> d!1212164 t!337751))

(declare-fun b_and!313987 () Bool)

(declare-fun tp!1235487 () Bool)

(assert (=> b!4081272 (= tp!1235487 (and (=> t!337751 result!297326) b_and!313987))))

(declare-fun b_free!113903 () Bool)

(declare-fun b_next!114607 () Bool)

(assert (=> b!4081272 (= b_free!113903 (not b_next!114607))))

(declare-fun tb!245135 () Bool)

(declare-fun t!337753 () Bool)

(assert (=> (and b!4081272 (= (toChars!9485 (transformation!7054 (h!49137 (t!337728 rules!3870)))) (toChars!9485 (transformation!7054 r!4213))) t!337753) tb!245135))

(declare-fun result!297328 () Bool)

(assert (= result!297328 result!297314))

(assert (=> d!1212164 t!337753))

(declare-fun tp!1235485 () Bool)

(declare-fun b_and!313989 () Bool)

(assert (=> b!4081272 (= tp!1235485 (and (=> t!337753 result!297328) b_and!313989))))

(declare-fun e!2533074 () Bool)

(assert (=> b!4081272 (= e!2533074 (and tp!1235487 tp!1235485))))

(declare-fun tp!1235484 () Bool)

(declare-fun b!4081271 () Bool)

(declare-fun e!2533073 () Bool)

(assert (=> b!4081271 (= e!2533073 (and tp!1235484 (inv!58375 (tag!7914 (h!49137 (t!337728 rules!3870)))) (inv!58377 (transformation!7054 (h!49137 (t!337728 rules!3870)))) e!2533074))))

(declare-fun b!4081270 () Bool)

(declare-fun e!2533072 () Bool)

(declare-fun tp!1235486 () Bool)

(assert (=> b!4081270 (= e!2533072 (and e!2533073 tp!1235486))))

(assert (=> b!4080909 (= tp!1235406 e!2533072)))

(assert (= b!4081271 b!4081272))

(assert (= b!4081270 b!4081271))

(assert (= (and b!4080909 ((_ is Cons!43717) (t!337728 rules!3870))) b!4081270))

(declare-fun m!4688937 () Bool)

(assert (=> b!4081271 m!4688937))

(declare-fun m!4688939 () Bool)

(assert (=> b!4081271 m!4688939))

(declare-fun b!4081276 () Bool)

(declare-fun e!2533076 () Bool)

(declare-fun tp!1235488 () Bool)

(declare-fun tp!1235492 () Bool)

(assert (=> b!4081276 (= e!2533076 (and tp!1235488 tp!1235492))))

(declare-fun b!4081275 () Bool)

(declare-fun tp!1235490 () Bool)

(assert (=> b!4081275 (= e!2533076 tp!1235490)))

(assert (=> b!4080904 (= tp!1235408 e!2533076)))

(declare-fun b!4081274 () Bool)

(declare-fun tp!1235489 () Bool)

(declare-fun tp!1235491 () Bool)

(assert (=> b!4081274 (= e!2533076 (and tp!1235489 tp!1235491))))

(declare-fun b!4081273 () Bool)

(assert (=> b!4081273 (= e!2533076 tp_is_empty!20921)))

(assert (= (and b!4080904 ((_ is ElementMatch!11959) (regex!7054 r!4213))) b!4081273))

(assert (= (and b!4080904 ((_ is Concat!19244) (regex!7054 r!4213))) b!4081274))

(assert (= (and b!4080904 ((_ is Star!11959) (regex!7054 r!4213))) b!4081275))

(assert (= (and b!4080904 ((_ is Union!11959) (regex!7054 r!4213))) b!4081276))

(declare-fun b!4081277 () Bool)

(declare-fun e!2533077 () Bool)

(declare-fun tp!1235493 () Bool)

(assert (=> b!4081277 (= e!2533077 (and tp_is_empty!20921 tp!1235493))))

(assert (=> b!4080899 (= tp!1235405 e!2533077)))

(assert (= (and b!4080899 ((_ is Cons!43716) (t!337727 suffix!1518))) b!4081277))

(declare-fun b!4081278 () Bool)

(declare-fun e!2533078 () Bool)

(declare-fun tp!1235494 () Bool)

(assert (=> b!4081278 (= e!2533078 (and tp_is_empty!20921 tp!1235494))))

(assert (=> b!4080910 (= tp!1235412 e!2533078)))

(assert (= (and b!4080910 ((_ is Cons!43716) (t!337727 input!3411))) b!4081278))

(declare-fun b_lambda!119345 () Bool)

(assert (= b_lambda!119343 (or (and b!4080912 b_free!113889 (= (toValue!9626 (transformation!7054 (h!49137 rules!3870))) (toValue!9626 (transformation!7054 r!4213)))) (and b!4080907 b_free!113893) (and b!4081272 b_free!113901 (= (toValue!9626 (transformation!7054 (h!49137 (t!337728 rules!3870)))) (toValue!9626 (transformation!7054 r!4213)))) b_lambda!119345)))

(declare-fun b_lambda!119347 () Bool)

(assert (= b_lambda!119341 (or (and b!4080912 b_free!113891 (= (toChars!9485 (transformation!7054 (h!49137 rules!3870))) (toChars!9485 (transformation!7054 r!4213)))) (and b!4080907 b_free!113895) (and b!4081272 b_free!113903 (= (toChars!9485 (transformation!7054 (h!49137 (t!337728 rules!3870)))) (toChars!9485 (transformation!7054 r!4213)))) b_lambda!119347)))

(declare-fun b_lambda!119349 () Bool)

(assert (= b_lambda!119327 (or (and b!4080912 b_free!113889 (= (toValue!9626 (transformation!7054 (h!49137 rules!3870))) (toValue!9626 (transformation!7054 r!4213)))) (and b!4080907 b_free!113893) (and b!4081272 b_free!113901 (= (toValue!9626 (transformation!7054 (h!49137 (t!337728 rules!3870)))) (toValue!9626 (transformation!7054 r!4213)))) b_lambda!119349)))

(check-sat (not b!4081070) (not d!1212126) (not d!1212192) (not b!4081094) (not b!4081275) (not b!4081209) b_and!313979 (not b!4081099) (not b!4081232) b_and!313981 (not d!1212124) (not b_next!114599) (not b!4081277) (not b_lambda!119349) (not b!4081271) (not d!1212130) (not b!4081098) (not b!4081236) tp_is_empty!20921 (not b!4081230) (not b!4080999) (not b!4081100) (not d!1212152) b_and!313985 (not b!4081059) (not b!4081260) (not d!1212144) (not b!4081231) (not b!4080998) (not d!1212156) (not b!4081234) (not b!4081093) (not b!4081007) (not b!4081270) (not d!1212154) (not bm!288679) (not b!4081096) (not b!4081090) (not b!4081092) (not b!4081003) (not d!1212134) (not d!1212106) (not b!4081274) (not b_lambda!119347) (not b!4081091) (not b_next!114605) (not b!4081278) (not b!4081261) (not b_next!114597) (not b!4081259) (not b!4081013) (not b_next!114595) (not b_next!114607) (not b!4081233) (not b!4080995) (not d!1212164) (not b!4081020) b_and!313983 (not b!4081247) (not tb!245113) b_and!313987 (not d!1212128) (not b!4081097) (not b!4081235) (not bm!288673) b_and!313989 (not d!1212160) (not b!4081276) (not d!1212188) (not b_lambda!119345) (not b!4081069) (not tb!245129) (not b!4081002) (not b_next!114593) (not b!4081228) (not b!4081041) (not b!4081242))
(check-sat b_and!313979 b_and!313985 (not b_next!114605) (not b_next!114607) b_and!313983 b_and!313987 b_and!313989 (not b_next!114593) b_and!313981 (not b_next!114599) (not b_next!114597) (not b_next!114595))
