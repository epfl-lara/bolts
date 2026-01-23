; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401938 () Bool)

(assert start!401938)

(declare-fun b!4206786 () Bool)

(declare-fun b_free!123003 () Bool)

(declare-fun b_next!123707 () Bool)

(assert (=> b!4206786 (= b_free!123003 (not b_next!123707))))

(declare-fun tp!1285937 () Bool)

(declare-fun b_and!330693 () Bool)

(assert (=> b!4206786 (= tp!1285937 b_and!330693)))

(declare-fun b_free!123005 () Bool)

(declare-fun b_next!123709 () Bool)

(assert (=> b!4206786 (= b_free!123005 (not b_next!123709))))

(declare-fun tp!1285941 () Bool)

(declare-fun b_and!330695 () Bool)

(assert (=> b!4206786 (= tp!1285941 b_and!330695)))

(declare-fun b!4206794 () Bool)

(declare-fun b_free!123007 () Bool)

(declare-fun b_next!123711 () Bool)

(assert (=> b!4206794 (= b_free!123007 (not b_next!123711))))

(declare-fun tp!1285953 () Bool)

(declare-fun b_and!330697 () Bool)

(assert (=> b!4206794 (= tp!1285953 b_and!330697)))

(declare-fun b_free!123009 () Bool)

(declare-fun b_next!123713 () Bool)

(assert (=> b!4206794 (= b_free!123009 (not b_next!123713))))

(declare-fun tp!1285949 () Bool)

(declare-fun b_and!330699 () Bool)

(assert (=> b!4206794 (= tp!1285949 b_and!330699)))

(declare-fun b!4206808 () Bool)

(declare-fun b_free!123011 () Bool)

(declare-fun b_next!123715 () Bool)

(assert (=> b!4206808 (= b_free!123011 (not b_next!123715))))

(declare-fun tp!1285954 () Bool)

(declare-fun b_and!330701 () Bool)

(assert (=> b!4206808 (= tp!1285954 b_and!330701)))

(declare-fun b_free!123013 () Bool)

(declare-fun b_next!123717 () Bool)

(assert (=> b!4206808 (= b_free!123013 (not b_next!123717))))

(declare-fun tp!1285947 () Bool)

(declare-fun b_and!330703 () Bool)

(assert (=> b!4206808 (= tp!1285947 b_and!330703)))

(declare-fun b!4206801 () Bool)

(declare-fun b_free!123015 () Bool)

(declare-fun b_next!123719 () Bool)

(assert (=> b!4206801 (= b_free!123015 (not b_next!123719))))

(declare-fun tp!1285943 () Bool)

(declare-fun b_and!330705 () Bool)

(assert (=> b!4206801 (= tp!1285943 b_and!330705)))

(declare-fun b_free!123017 () Bool)

(declare-fun b_next!123721 () Bool)

(assert (=> b!4206801 (= b_free!123017 (not b_next!123721))))

(declare-fun tp!1285939 () Bool)

(declare-fun b_and!330707 () Bool)

(assert (=> b!4206801 (= tp!1285939 b_and!330707)))

(declare-fun b!4206776 () Bool)

(declare-fun e!2611502 () Bool)

(declare-fun e!2611501 () Bool)

(assert (=> b!4206776 (= e!2611502 e!2611501)))

(declare-fun res!1727953 () Bool)

(assert (=> b!4206776 (=> (not res!1727953) (not e!2611501))))

(declare-datatypes ((List!46375 0))(
  ( (Nil!46251) (Cons!46251 (h!51671 (_ BitVec 16)) (t!347506 List!46375)) )
))
(declare-datatypes ((TokenValue!7966 0))(
  ( (FloatLiteralValue!15932 (text!56207 List!46375)) (TokenValueExt!7965 (__x!28155 Int)) (Broken!39830 (value!240979 List!46375)) (Object!8089) (End!7966) (Def!7966) (Underscore!7966) (Match!7966) (Else!7966) (Error!7966) (Case!7966) (If!7966) (Extends!7966) (Abstract!7966) (Class!7966) (Val!7966) (DelimiterValue!15932 (del!8026 List!46375)) (KeywordValue!7972 (value!240980 List!46375)) (CommentValue!15932 (value!240981 List!46375)) (WhitespaceValue!15932 (value!240982 List!46375)) (IndentationValue!7966 (value!240983 List!46375)) (String!53699) (Int32!7966) (Broken!39831 (value!240984 List!46375)) (Boolean!7967) (Unit!65368) (OperatorValue!7969 (op!8026 List!46375)) (IdentifierValue!15932 (value!240985 List!46375)) (IdentifierValue!15933 (value!240986 List!46375)) (WhitespaceValue!15933 (value!240987 List!46375)) (True!15932) (False!15932) (Broken!39832 (value!240988 List!46375)) (Broken!39833 (value!240989 List!46375)) (True!15933) (RightBrace!7966) (RightBracket!7966) (Colon!7966) (Null!7966) (Comma!7966) (LeftBracket!7966) (False!15933) (LeftBrace!7966) (ImaginaryLiteralValue!7966 (text!56208 List!46375)) (StringLiteralValue!23898 (value!240990 List!46375)) (EOFValue!7966 (value!240991 List!46375)) (IdentValue!7966 (value!240992 List!46375)) (DelimiterValue!15933 (value!240993 List!46375)) (DedentValue!7966 (value!240994 List!46375)) (NewLineValue!7966 (value!240995 List!46375)) (IntegerValue!23898 (value!240996 (_ BitVec 32)) (text!56209 List!46375)) (IntegerValue!23899 (value!240997 Int) (text!56210 List!46375)) (Times!7966) (Or!7966) (Equal!7966) (Minus!7966) (Broken!39834 (value!240998 List!46375)) (And!7966) (Div!7966) (LessEqual!7966) (Mod!7966) (Concat!20607) (Not!7966) (Plus!7966) (SpaceValue!7966 (value!240999 List!46375)) (IntegerValue!23900 (value!241000 Int) (text!56211 List!46375)) (StringLiteralValue!23899 (text!56212 List!46375)) (FloatLiteralValue!15933 (text!56213 List!46375)) (BytesLiteralValue!7966 (value!241001 List!46375)) (CommentValue!15933 (value!241002 List!46375)) (StringLiteralValue!23900 (value!241003 List!46375)) (ErrorTokenValue!7966 (msg!8027 List!46375)) )
))
(declare-datatypes ((C!25476 0))(
  ( (C!25477 (val!14900 Int)) )
))
(declare-datatypes ((List!46376 0))(
  ( (Nil!46252) (Cons!46252 (h!51672 C!25476) (t!347507 List!46376)) )
))
(declare-datatypes ((IArray!27899 0))(
  ( (IArray!27900 (innerList!14007 List!46376)) )
))
(declare-datatypes ((Regex!12641 0))(
  ( (ElementMatch!12641 (c!716874 C!25476)) (Concat!20608 (regOne!25794 Regex!12641) (regTwo!25794 Regex!12641)) (EmptyExpr!12641) (Star!12641 (reg!12970 Regex!12641)) (EmptyLang!12641) (Union!12641 (regOne!25795 Regex!12641) (regTwo!25795 Regex!12641)) )
))
(declare-datatypes ((String!53700 0))(
  ( (String!53701 (value!241004 String)) )
))
(declare-datatypes ((Conc!13947 0))(
  ( (Node!13947 (left!34438 Conc!13947) (right!34768 Conc!13947) (csize!28124 Int) (cheight!14158 Int)) (Leaf!21559 (xs!17253 IArray!27899) (csize!28125 Int)) (Empty!13947) )
))
(declare-datatypes ((BalanceConc!27488 0))(
  ( (BalanceConc!27489 (c!716875 Conc!13947)) )
))
(declare-datatypes ((TokenValueInjection!15360 0))(
  ( (TokenValueInjection!15361 (toValue!10448 Int) (toChars!10307 Int)) )
))
(declare-datatypes ((Rule!15272 0))(
  ( (Rule!15273 (regex!7736 Regex!12641) (tag!8600 String!53700) (isSeparator!7736 Bool) (transformation!7736 TokenValueInjection!15360)) )
))
(declare-datatypes ((List!46377 0))(
  ( (Nil!46253) (Cons!46253 (h!51673 Rule!15272) (t!347508 List!46377)) )
))
(declare-fun rules!3967 () List!46377)

(declare-datatypes ((Token!14174 0))(
  ( (Token!14175 (value!241005 TokenValue!7966) (rule!10842 Rule!15272) (size!33975 Int) (originalCharacters!8118 List!46376)) )
))
(declare-datatypes ((tuple2!43998 0))(
  ( (tuple2!43999 (_1!25133 Token!14174) (_2!25133 List!46376)) )
))
(declare-datatypes ((Option!9924 0))(
  ( (None!9923) (Some!9923 (v!40785 tuple2!43998)) )
))
(declare-fun lt!1497976 () Option!9924)

(declare-datatypes ((LexerInterface!7331 0))(
  ( (LexerInterfaceExt!7328 (__x!28156 Int)) (Lexer!7329) )
))
(declare-fun thiss!26544 () LexerInterface!7331)

(declare-fun input!3517 () List!46376)

(declare-fun maxPrefix!4371 (LexerInterface!7331 List!46377 List!46376) Option!9924)

(assert (=> b!4206776 (= res!1727953 (= (maxPrefix!4371 thiss!26544 rules!3967 input!3517) lt!1497976))))

(declare-fun t!8364 () Token!14174)

(declare-fun suffix!1557 () List!46376)

(assert (=> b!4206776 (= lt!1497976 (Some!9923 (tuple2!43999 t!8364 suffix!1557)))))

(declare-fun b!4206777 () Bool)

(declare-fun e!2611503 () Bool)

(declare-fun tp_is_empty!22249 () Bool)

(declare-fun tp!1285951 () Bool)

(assert (=> b!4206777 (= e!2611503 (and tp_is_empty!22249 tp!1285951))))

(declare-fun b!4206778 () Bool)

(declare-fun e!2611500 () Bool)

(assert (=> b!4206778 (= e!2611500 true)))

(declare-fun lt!1497975 () Option!9924)

(assert (=> b!4206778 (= lt!1497975 (maxPrefix!4371 thiss!26544 (t!347508 rules!3967) input!3517))))

(declare-fun b!4206779 () Bool)

(declare-fun e!2611497 () Bool)

(declare-fun tp!1285945 () Bool)

(assert (=> b!4206779 (= e!2611497 (and tp_is_empty!22249 tp!1285945))))

(declare-fun b!4206780 () Bool)

(declare-fun e!2611513 () Bool)

(assert (=> b!4206780 (= e!2611501 (not e!2611513))))

(declare-fun res!1727959 () Bool)

(assert (=> b!4206780 (=> res!1727959 e!2611513)))

(declare-fun tBis!41 () Token!14174)

(declare-fun rBis!178 () Rule!15272)

(declare-fun suffixBis!41 () List!46376)

(declare-fun maxPrefixOneRule!3326 (LexerInterface!7331 Rule!15272 List!46376) Option!9924)

(assert (=> b!4206780 (= res!1727959 (not (= (maxPrefixOneRule!3326 thiss!26544 rBis!178 input!3517) (Some!9923 (tuple2!43999 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4595 (List!46376 List!46376) Bool)

(assert (=> b!4206780 (isPrefix!4595 input!3517 input!3517)))

(declare-datatypes ((Unit!65369 0))(
  ( (Unit!65370) )
))
(declare-fun lt!1497977 () Unit!65369)

(declare-fun lemmaIsPrefixRefl!3012 (List!46376 List!46376) Unit!65369)

(assert (=> b!4206780 (= lt!1497977 (lemmaIsPrefixRefl!3012 input!3517 input!3517))))

(declare-fun b!4206781 () Bool)

(assert (=> b!4206781 (= e!2611513 e!2611500)))

(declare-fun res!1727954 () Bool)

(assert (=> b!4206781 (=> res!1727954 e!2611500)))

(declare-fun isEmpty!27387 (List!46377) Bool)

(assert (=> b!4206781 (= res!1727954 (isEmpty!27387 (t!347508 rules!3967)))))

(declare-fun rulesInvariant!6542 (LexerInterface!7331 List!46377) Bool)

(assert (=> b!4206781 (rulesInvariant!6542 thiss!26544 (t!347508 rules!3967))))

(declare-fun lt!1497978 () Unit!65369)

(declare-fun lemmaInvariantOnRulesThenOnTail!848 (LexerInterface!7331 Rule!15272 List!46377) Unit!65369)

(assert (=> b!4206781 (= lt!1497978 (lemmaInvariantOnRulesThenOnTail!848 thiss!26544 (h!51673 rules!3967) (t!347508 rules!3967)))))

(declare-fun b!4206782 () Bool)

(declare-fun res!1727957 () Bool)

(assert (=> b!4206782 (=> (not res!1727957) (not e!2611502))))

(assert (=> b!4206782 (= res!1727957 (rulesInvariant!6542 thiss!26544 rules!3967))))

(declare-fun tp!1285948 () Bool)

(declare-fun e!2611511 () Bool)

(declare-fun b!4206783 () Bool)

(declare-fun e!2611510 () Bool)

(declare-fun inv!60839 (String!53700) Bool)

(declare-fun inv!60842 (TokenValueInjection!15360) Bool)

(assert (=> b!4206783 (= e!2611510 (and tp!1285948 (inv!60839 (tag!8600 (h!51673 rules!3967))) (inv!60842 (transformation!7736 (h!51673 rules!3967))) e!2611511))))

(declare-fun b!4206784 () Bool)

(declare-fun res!1727948 () Bool)

(assert (=> b!4206784 (=> (not res!1727948) (not e!2611502))))

(declare-fun p!3001 () List!46376)

(assert (=> b!4206784 (= res!1727948 (isPrefix!4595 p!3001 input!3517))))

(declare-fun b!4206785 () Bool)

(declare-fun res!1727955 () Bool)

(assert (=> b!4206785 (=> res!1727955 e!2611513)))

(assert (=> b!4206785 (= res!1727955 (= (maxPrefixOneRule!3326 thiss!26544 (h!51673 rules!3967) input!3517) lt!1497976))))

(declare-fun e!2611512 () Bool)

(assert (=> b!4206786 (= e!2611512 (and tp!1285937 tp!1285941))))

(declare-fun b!4206787 () Bool)

(declare-fun e!2611506 () Bool)

(declare-fun tp!1285940 () Bool)

(assert (=> b!4206787 (= e!2611506 (and e!2611510 tp!1285940))))

(declare-fun b!4206788 () Bool)

(declare-fun res!1727951 () Bool)

(assert (=> b!4206788 (=> res!1727951 e!2611513)))

(declare-fun pBis!121 () List!46376)

(declare-fun ++!11810 (List!46376 List!46376) List!46376)

(assert (=> b!4206788 (= res!1727951 (not (= (++!11810 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4206789 () Bool)

(declare-fun e!2611520 () Bool)

(declare-fun tp!1285946 () Bool)

(assert (=> b!4206789 (= e!2611520 (and tp_is_empty!22249 tp!1285946))))

(declare-fun b!4206790 () Bool)

(declare-fun res!1727950 () Bool)

(assert (=> b!4206790 (=> (not res!1727950) (not e!2611502))))

(declare-fun contains!9553 (List!46377 Rule!15272) Bool)

(assert (=> b!4206790 (= res!1727950 (contains!9553 rules!3967 rBis!178))))

(declare-fun b!4206791 () Bool)

(declare-fun res!1727947 () Bool)

(assert (=> b!4206791 (=> res!1727947 e!2611513)))

(declare-fun list!16717 (BalanceConc!27488) List!46376)

(declare-fun charsOf!5159 (Token!14174) BalanceConc!27488)

(assert (=> b!4206791 (= res!1727947 (not (= (list!16717 (charsOf!5159 tBis!41)) pBis!121)))))

(declare-fun tp!1285936 () Bool)

(declare-fun e!2611517 () Bool)

(declare-fun b!4206792 () Bool)

(assert (=> b!4206792 (= e!2611517 (and tp!1285936 (inv!60839 (tag!8600 (rule!10842 t!8364))) (inv!60842 (transformation!7736 (rule!10842 t!8364))) e!2611512))))

(declare-fun res!1727945 () Bool)

(assert (=> start!401938 (=> (not res!1727945) (not e!2611502))))

(get-info :version)

(assert (=> start!401938 (= res!1727945 ((_ is Lexer!7329) thiss!26544))))

(assert (=> start!401938 e!2611502))

(declare-fun e!2611509 () Bool)

(declare-fun inv!60843 (Token!14174) Bool)

(assert (=> start!401938 (and (inv!60843 tBis!41) e!2611509)))

(assert (=> start!401938 true))

(declare-fun e!2611516 () Bool)

(assert (=> start!401938 e!2611516))

(declare-fun e!2611521 () Bool)

(assert (=> start!401938 e!2611521))

(assert (=> start!401938 e!2611506))

(assert (=> start!401938 e!2611520))

(declare-fun e!2611518 () Bool)

(assert (=> start!401938 (and (inv!60843 t!8364) e!2611518)))

(assert (=> start!401938 e!2611503))

(declare-fun e!2611498 () Bool)

(assert (=> start!401938 e!2611498))

(assert (=> start!401938 e!2611497))

(declare-fun b!4206793 () Bool)

(declare-fun res!1727958 () Bool)

(assert (=> b!4206793 (=> (not res!1727958) (not e!2611502))))

(assert (=> b!4206793 (= res!1727958 (= (++!11810 p!3001 suffix!1557) input!3517))))

(declare-fun e!2611499 () Bool)

(assert (=> b!4206794 (= e!2611499 (and tp!1285953 tp!1285949))))

(declare-fun b!4206795 () Bool)

(declare-fun e!2611504 () Bool)

(declare-fun tp!1285942 () Bool)

(assert (=> b!4206795 (= e!2611504 (and tp!1285942 (inv!60839 (tag!8600 (rule!10842 tBis!41))) (inv!60842 (transformation!7736 (rule!10842 tBis!41))) e!2611499))))

(declare-fun b!4206796 () Bool)

(declare-fun tp!1285950 () Bool)

(assert (=> b!4206796 (= e!2611521 (and tp_is_empty!22249 tp!1285950))))

(declare-fun b!4206797 () Bool)

(declare-fun res!1727952 () Bool)

(assert (=> b!4206797 (=> res!1727952 e!2611513)))

(assert (=> b!4206797 (= res!1727952 (not (= (rule!10842 tBis!41) rBis!178)))))

(declare-fun b!4206798 () Bool)

(declare-fun res!1727946 () Bool)

(assert (=> b!4206798 (=> res!1727946 e!2611500)))

(assert (=> b!4206798 (= res!1727946 (not (contains!9553 (t!347508 rules!3967) rBis!178)))))

(declare-fun b!4206799 () Bool)

(declare-fun res!1727961 () Bool)

(assert (=> b!4206799 (=> (not res!1727961) (not e!2611502))))

(assert (=> b!4206799 (= res!1727961 (isPrefix!4595 pBis!121 input!3517))))

(declare-fun tp!1285938 () Bool)

(declare-fun e!2611519 () Bool)

(declare-fun b!4206800 () Bool)

(assert (=> b!4206800 (= e!2611516 (and tp!1285938 (inv!60839 (tag!8600 rBis!178)) (inv!60842 (transformation!7736 rBis!178)) e!2611519))))

(assert (=> b!4206801 (= e!2611519 (and tp!1285943 tp!1285939))))

(declare-fun b!4206802 () Bool)

(declare-fun res!1727949 () Bool)

(assert (=> b!4206802 (=> res!1727949 e!2611513)))

(assert (=> b!4206802 (= res!1727949 (or (and ((_ is Cons!46253) rules!3967) ((_ is Nil!46253) (t!347508 rules!3967))) (not ((_ is Cons!46253) rules!3967)) (= (h!51673 rules!3967) rBis!178)))))

(declare-fun tp!1285944 () Bool)

(declare-fun b!4206803 () Bool)

(declare-fun inv!21 (TokenValue!7966) Bool)

(assert (=> b!4206803 (= e!2611518 (and (inv!21 (value!241005 t!8364)) e!2611517 tp!1285944))))

(declare-fun b!4206804 () Bool)

(declare-fun tp!1285935 () Bool)

(assert (=> b!4206804 (= e!2611509 (and (inv!21 (value!241005 tBis!41)) e!2611504 tp!1285935))))

(declare-fun b!4206805 () Bool)

(declare-fun res!1727960 () Bool)

(assert (=> b!4206805 (=> (not res!1727960) (not e!2611502))))

(assert (=> b!4206805 (= res!1727960 (not (isEmpty!27387 rules!3967)))))

(declare-fun b!4206806 () Bool)

(declare-fun tp!1285952 () Bool)

(assert (=> b!4206806 (= e!2611498 (and tp_is_empty!22249 tp!1285952))))

(declare-fun b!4206807 () Bool)

(declare-fun res!1727956 () Bool)

(assert (=> b!4206807 (=> (not res!1727956) (not e!2611501))))

(declare-fun ruleValid!3448 (LexerInterface!7331 Rule!15272) Bool)

(assert (=> b!4206807 (= res!1727956 (ruleValid!3448 thiss!26544 rBis!178))))

(assert (=> b!4206808 (= e!2611511 (and tp!1285954 tp!1285947))))

(assert (= (and start!401938 res!1727945) b!4206793))

(assert (= (and b!4206793 res!1727958) b!4206784))

(assert (= (and b!4206784 res!1727948) b!4206799))

(assert (= (and b!4206799 res!1727961) b!4206805))

(assert (= (and b!4206805 res!1727960) b!4206782))

(assert (= (and b!4206782 res!1727957) b!4206790))

(assert (= (and b!4206790 res!1727950) b!4206776))

(assert (= (and b!4206776 res!1727953) b!4206807))

(assert (= (and b!4206807 res!1727956) b!4206780))

(assert (= (and b!4206780 (not res!1727959)) b!4206797))

(assert (= (and b!4206797 (not res!1727952)) b!4206791))

(assert (= (and b!4206791 (not res!1727947)) b!4206788))

(assert (= (and b!4206788 (not res!1727951)) b!4206802))

(assert (= (and b!4206802 (not res!1727949)) b!4206785))

(assert (= (and b!4206785 (not res!1727955)) b!4206781))

(assert (= (and b!4206781 (not res!1727954)) b!4206798))

(assert (= (and b!4206798 (not res!1727946)) b!4206778))

(assert (= b!4206795 b!4206794))

(assert (= b!4206804 b!4206795))

(assert (= start!401938 b!4206804))

(assert (= b!4206800 b!4206801))

(assert (= start!401938 b!4206800))

(assert (= (and start!401938 ((_ is Cons!46252) p!3001)) b!4206796))

(assert (= b!4206783 b!4206808))

(assert (= b!4206787 b!4206783))

(assert (= (and start!401938 ((_ is Cons!46253) rules!3967)) b!4206787))

(assert (= (and start!401938 ((_ is Cons!46252) input!3517)) b!4206789))

(assert (= b!4206792 b!4206786))

(assert (= b!4206803 b!4206792))

(assert (= start!401938 b!4206803))

(assert (= (and start!401938 ((_ is Cons!46252) pBis!121)) b!4206777))

(assert (= (and start!401938 ((_ is Cons!46252) suffix!1557)) b!4206806))

(assert (= (and start!401938 ((_ is Cons!46252) suffixBis!41)) b!4206779))

(declare-fun m!4794887 () Bool)

(assert (=> b!4206783 m!4794887))

(declare-fun m!4794889 () Bool)

(assert (=> b!4206783 m!4794889))

(declare-fun m!4794891 () Bool)

(assert (=> b!4206804 m!4794891))

(declare-fun m!4794893 () Bool)

(assert (=> start!401938 m!4794893))

(declare-fun m!4794895 () Bool)

(assert (=> start!401938 m!4794895))

(declare-fun m!4794897 () Bool)

(assert (=> b!4206780 m!4794897))

(declare-fun m!4794899 () Bool)

(assert (=> b!4206780 m!4794899))

(declare-fun m!4794901 () Bool)

(assert (=> b!4206780 m!4794901))

(declare-fun m!4794903 () Bool)

(assert (=> b!4206776 m!4794903))

(declare-fun m!4794905 () Bool)

(assert (=> b!4206798 m!4794905))

(declare-fun m!4794907 () Bool)

(assert (=> b!4206790 m!4794907))

(declare-fun m!4794909 () Bool)

(assert (=> b!4206784 m!4794909))

(declare-fun m!4794911 () Bool)

(assert (=> b!4206791 m!4794911))

(assert (=> b!4206791 m!4794911))

(declare-fun m!4794913 () Bool)

(assert (=> b!4206791 m!4794913))

(declare-fun m!4794915 () Bool)

(assert (=> b!4206805 m!4794915))

(declare-fun m!4794917 () Bool)

(assert (=> b!4206788 m!4794917))

(declare-fun m!4794919 () Bool)

(assert (=> b!4206785 m!4794919))

(declare-fun m!4794921 () Bool)

(assert (=> b!4206781 m!4794921))

(declare-fun m!4794923 () Bool)

(assert (=> b!4206781 m!4794923))

(declare-fun m!4794925 () Bool)

(assert (=> b!4206781 m!4794925))

(declare-fun m!4794927 () Bool)

(assert (=> b!4206807 m!4794927))

(declare-fun m!4794929 () Bool)

(assert (=> b!4206795 m!4794929))

(declare-fun m!4794931 () Bool)

(assert (=> b!4206795 m!4794931))

(declare-fun m!4794933 () Bool)

(assert (=> b!4206782 m!4794933))

(declare-fun m!4794935 () Bool)

(assert (=> b!4206799 m!4794935))

(declare-fun m!4794937 () Bool)

(assert (=> b!4206792 m!4794937))

(declare-fun m!4794939 () Bool)

(assert (=> b!4206792 m!4794939))

(declare-fun m!4794941 () Bool)

(assert (=> b!4206803 m!4794941))

(declare-fun m!4794943 () Bool)

(assert (=> b!4206793 m!4794943))

(declare-fun m!4794945 () Bool)

(assert (=> b!4206778 m!4794945))

(declare-fun m!4794947 () Bool)

(assert (=> b!4206800 m!4794947))

(declare-fun m!4794949 () Bool)

(assert (=> b!4206800 m!4794949))

(check-sat tp_is_empty!22249 (not b!4206789) (not b!4206803) (not b_next!123707) (not b!4206798) (not b!4206782) (not b!4206781) (not b!4206800) (not b!4206779) (not b!4206805) (not b!4206790) (not b!4206776) (not b!4206791) (not b!4206778) (not b!4206784) (not b!4206785) (not b_next!123719) b_and!330703 (not b_next!123715) (not b!4206792) b_and!330701 (not b!4206804) (not b!4206806) (not b!4206787) b_and!330693 b_and!330699 (not b!4206796) (not b!4206807) b_and!330707 (not b_next!123713) (not b_next!123717) (not b!4206783) (not b!4206793) (not b!4206777) b_and!330697 (not b_next!123711) (not start!401938) (not b_next!123709) (not b!4206788) b_and!330705 (not b!4206795) (not b_next!123721) b_and!330695 (not b!4206799) (not b!4206780))
(check-sat (not b_next!123715) b_and!330701 (not b_next!123707) b_and!330697 (not b_next!123711) b_and!330695 (not b_next!123719) b_and!330703 b_and!330693 b_and!330699 b_and!330707 (not b_next!123713) (not b_next!123717) (not b_next!123709) b_and!330705 (not b_next!123721))
