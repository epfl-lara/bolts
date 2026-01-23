; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10058 () Bool)

(assert start!10058)

(declare-fun b!102913 () Bool)

(declare-fun b_free!3081 () Bool)

(declare-fun b_next!3081 () Bool)

(assert (=> b!102913 (= b_free!3081 (not b_next!3081))))

(declare-fun tp!57728 () Bool)

(declare-fun b_and!4599 () Bool)

(assert (=> b!102913 (= tp!57728 b_and!4599)))

(declare-fun b_free!3083 () Bool)

(declare-fun b_next!3083 () Bool)

(assert (=> b!102913 (= b_free!3083 (not b_next!3083))))

(declare-fun tp!57732 () Bool)

(declare-fun b_and!4601 () Bool)

(assert (=> b!102913 (= tp!57732 b_and!4601)))

(declare-fun b!102912 () Bool)

(declare-fun e!57044 () Bool)

(declare-fun e!57049 () Bool)

(assert (=> b!102912 (= e!57044 e!57049)))

(declare-fun res!49674 () Bool)

(assert (=> b!102912 (=> (not res!49674) (not e!57049))))

(declare-datatypes ((List!1658 0))(
  ( (Nil!1652) (Cons!1652 (h!7049 (_ BitVec 16)) (t!21327 List!1658)) )
))
(declare-datatypes ((TokenValue!351 0))(
  ( (FloatLiteralValue!702 (text!2902 List!1658)) (TokenValueExt!350 (__x!1797 Int)) (Broken!1755 (value!13152 List!1658)) (Object!356) (End!351) (Def!351) (Underscore!351) (Match!351) (Else!351) (Error!351) (Case!351) (If!351) (Extends!351) (Abstract!351) (Class!351) (Val!351) (DelimiterValue!702 (del!411 List!1658)) (KeywordValue!357 (value!13153 List!1658)) (CommentValue!702 (value!13154 List!1658)) (WhitespaceValue!702 (value!13155 List!1658)) (IndentationValue!351 (value!13156 List!1658)) (String!2146) (Int32!351) (Broken!1756 (value!13157 List!1658)) (Boolean!352) (Unit!1099) (OperatorValue!354 (op!411 List!1658)) (IdentifierValue!702 (value!13158 List!1658)) (IdentifierValue!703 (value!13159 List!1658)) (WhitespaceValue!703 (value!13160 List!1658)) (True!702) (False!702) (Broken!1757 (value!13161 List!1658)) (Broken!1758 (value!13162 List!1658)) (True!703) (RightBrace!351) (RightBracket!351) (Colon!351) (Null!351) (Comma!351) (LeftBracket!351) (False!703) (LeftBrace!351) (ImaginaryLiteralValue!351 (text!2903 List!1658)) (StringLiteralValue!1053 (value!13163 List!1658)) (EOFValue!351 (value!13164 List!1658)) (IdentValue!351 (value!13165 List!1658)) (DelimiterValue!703 (value!13166 List!1658)) (DedentValue!351 (value!13167 List!1658)) (NewLineValue!351 (value!13168 List!1658)) (IntegerValue!1053 (value!13169 (_ BitVec 32)) (text!2904 List!1658)) (IntegerValue!1054 (value!13170 Int) (text!2905 List!1658)) (Times!351) (Or!351) (Equal!351) (Minus!351) (Broken!1759 (value!13171 List!1658)) (And!351) (Div!351) (LessEqual!351) (Mod!351) (Concat!780) (Not!351) (Plus!351) (SpaceValue!351 (value!13172 List!1658)) (IntegerValue!1055 (value!13173 Int) (text!2906 List!1658)) (StringLiteralValue!1054 (text!2907 List!1658)) (FloatLiteralValue!703 (text!2908 List!1658)) (BytesLiteralValue!351 (value!13174 List!1658)) (CommentValue!703 (value!13175 List!1658)) (StringLiteralValue!1055 (value!13176 List!1658)) (ErrorTokenValue!351 (msg!412 List!1658)) )
))
(declare-datatypes ((C!1780 0))(
  ( (C!1781 (val!497 Int)) )
))
(declare-datatypes ((List!1659 0))(
  ( (Nil!1653) (Cons!1653 (h!7050 C!1780) (t!21328 List!1659)) )
))
(declare-datatypes ((IArray!1037 0))(
  ( (IArray!1038 (innerList!576 List!1659)) )
))
(declare-datatypes ((Conc!518 0))(
  ( (Node!518 (left!1263 Conc!518) (right!1593 Conc!518) (csize!1266 Int) (cheight!729 Int)) (Leaf!834 (xs!3105 IArray!1037) (csize!1267 Int)) (Empty!518) )
))
(declare-datatypes ((BalanceConc!1040 0))(
  ( (BalanceConc!1041 (c!24918 Conc!518)) )
))
(declare-datatypes ((Regex!429 0))(
  ( (ElementMatch!429 (c!24919 C!1780)) (Concat!781 (regOne!1370 Regex!429) (regTwo!1370 Regex!429)) (EmptyExpr!429) (Star!429 (reg!758 Regex!429)) (EmptyLang!429) (Union!429 (regOne!1371 Regex!429) (regTwo!1371 Regex!429)) )
))
(declare-datatypes ((String!2147 0))(
  ( (String!2148 (value!13177 String)) )
))
(declare-datatypes ((TokenValueInjection!526 0))(
  ( (TokenValueInjection!527 (toValue!936 Int) (toChars!795 Int)) )
))
(declare-datatypes ((Rule!522 0))(
  ( (Rule!523 (regex!361 Regex!429) (tag!539 String!2147) (isSeparator!361 Bool) (transformation!361 TokenValueInjection!526)) )
))
(declare-datatypes ((Token!470 0))(
  ( (Token!471 (value!13178 TokenValue!351) (rule!866 Rule!522) (size!1462 Int) (originalCharacters!406 List!1659)) )
))
(declare-datatypes ((List!1660 0))(
  ( (Nil!1654) (Cons!1654 (h!7051 Token!470) (t!21329 List!1660)) )
))
(declare-datatypes ((IArray!1039 0))(
  ( (IArray!1040 (innerList!577 List!1660)) )
))
(declare-datatypes ((Conc!519 0))(
  ( (Node!519 (left!1264 Conc!519) (right!1594 Conc!519) (csize!1268 Int) (cheight!730 Int)) (Leaf!835 (xs!3106 IArray!1039) (csize!1269 Int)) (Empty!519) )
))
(declare-datatypes ((BalanceConc!1042 0))(
  ( (BalanceConc!1043 (c!24920 Conc!519)) )
))
(declare-datatypes ((tuple2!1806 0))(
  ( (tuple2!1807 (_1!1110 BalanceConc!1042) (_2!1110 BalanceConc!1040)) )
))
(declare-fun lt!28614 () tuple2!1806)

(declare-fun list!684 (BalanceConc!1042) List!1660)

(assert (=> b!102912 (= res!49674 (= (list!684 (_1!1110 lt!28614)) (list!684 (BalanceConc!1043 Empty!519))))))

(declare-datatypes ((LexerInterface!253 0))(
  ( (LexerInterfaceExt!250 (__x!1798 Int)) (Lexer!251) )
))
(declare-fun thiss!11428 () LexerInterface!253)

(declare-datatypes ((List!1661 0))(
  ( (Nil!1655) (Cons!1655 (h!7052 Rule!522) (t!21330 List!1661)) )
))
(declare-fun rules!1152 () List!1661)

(declare-fun lexRec!54 (LexerInterface!253 List!1661 BalanceConc!1040) tuple2!1806)

(assert (=> b!102912 (= lt!28614 (lexRec!54 thiss!11428 rules!1152 (BalanceConc!1041 Empty!518)))))

(declare-fun e!57050 () Bool)

(assert (=> b!102913 (= e!57050 (and tp!57728 tp!57732))))

(declare-fun res!49675 () Bool)

(declare-fun e!57047 () Bool)

(assert (=> start!10058 (=> (not res!49675) (not e!57047))))

(get-info :version)

(assert (=> start!10058 (= res!49675 ((_ is Lexer!251) thiss!11428))))

(assert (=> start!10058 e!57047))

(assert (=> start!10058 true))

(declare-fun e!57048 () Bool)

(assert (=> start!10058 e!57048))

(declare-fun input!576 () BalanceConc!1040)

(declare-fun e!57045 () Bool)

(declare-fun inv!2006 (BalanceConc!1040) Bool)

(assert (=> start!10058 (and (inv!2006 input!576) e!57045)))

(declare-fun b!102914 () Bool)

(declare-fun res!49672 () Bool)

(assert (=> b!102914 (=> (not res!49672) (not e!57047))))

(declare-fun rulesInvariant!247 (LexerInterface!253 List!1661) Bool)

(assert (=> b!102914 (= res!49672 (rulesInvariant!247 thiss!11428 rules!1152))))

(declare-fun b!102915 () Bool)

(declare-fun isEmpty!753 (List!1659) Bool)

(declare-fun list!685 (BalanceConc!1040) List!1659)

(assert (=> b!102915 (= e!57049 (not (isEmpty!753 (list!685 (_2!1110 lt!28614)))))))

(declare-fun b!102916 () Bool)

(assert (=> b!102916 (= e!57047 e!57044)))

(declare-fun res!49673 () Bool)

(assert (=> b!102916 (=> (not res!49673) (not e!57044))))

(declare-fun lt!28613 () List!1659)

(declare-fun lt!28612 () List!1659)

(declare-fun ++!264 (List!1659 List!1659) List!1659)

(assert (=> b!102916 (= res!49673 (= lt!28613 (++!264 lt!28612 lt!28613)))))

(assert (=> b!102916 (= lt!28613 (list!685 input!576))))

(assert (=> b!102916 (= lt!28612 (list!685 (BalanceConc!1041 Empty!518)))))

(declare-fun tp!57730 () Bool)

(declare-fun e!57046 () Bool)

(declare-fun b!102917 () Bool)

(declare-fun inv!2002 (String!2147) Bool)

(declare-fun inv!2007 (TokenValueInjection!526) Bool)

(assert (=> b!102917 (= e!57046 (and tp!57730 (inv!2002 (tag!539 (h!7052 rules!1152))) (inv!2007 (transformation!361 (h!7052 rules!1152))) e!57050))))

(declare-fun b!102918 () Bool)

(declare-fun res!49671 () Bool)

(assert (=> b!102918 (=> (not res!49671) (not e!57047))))

(declare-fun isEmpty!754 (List!1661) Bool)

(assert (=> b!102918 (= res!49671 (not (isEmpty!754 rules!1152)))))

(declare-fun b!102919 () Bool)

(declare-fun tp!57729 () Bool)

(assert (=> b!102919 (= e!57048 (and e!57046 tp!57729))))

(declare-fun b!102920 () Bool)

(declare-fun tp!57731 () Bool)

(declare-fun inv!2008 (Conc!518) Bool)

(assert (=> b!102920 (= e!57045 (and (inv!2008 (c!24918 input!576)) tp!57731))))

(assert (= (and start!10058 res!49675) b!102918))

(assert (= (and b!102918 res!49671) b!102914))

(assert (= (and b!102914 res!49672) b!102916))

(assert (= (and b!102916 res!49673) b!102912))

(assert (= (and b!102912 res!49674) b!102915))

(assert (= b!102917 b!102913))

(assert (= b!102919 b!102917))

(assert (= (and start!10058 ((_ is Cons!1655) rules!1152)) b!102919))

(assert (= start!10058 b!102920))

(declare-fun m!89370 () Bool)

(assert (=> b!102915 m!89370))

(assert (=> b!102915 m!89370))

(declare-fun m!89372 () Bool)

(assert (=> b!102915 m!89372))

(declare-fun m!89374 () Bool)

(assert (=> start!10058 m!89374))

(declare-fun m!89376 () Bool)

(assert (=> b!102912 m!89376))

(declare-fun m!89378 () Bool)

(assert (=> b!102912 m!89378))

(declare-fun m!89380 () Bool)

(assert (=> b!102912 m!89380))

(declare-fun m!89382 () Bool)

(assert (=> b!102916 m!89382))

(declare-fun m!89384 () Bool)

(assert (=> b!102916 m!89384))

(declare-fun m!89386 () Bool)

(assert (=> b!102916 m!89386))

(declare-fun m!89388 () Bool)

(assert (=> b!102920 m!89388))

(declare-fun m!89390 () Bool)

(assert (=> b!102917 m!89390))

(declare-fun m!89392 () Bool)

(assert (=> b!102917 m!89392))

(declare-fun m!89394 () Bool)

(assert (=> b!102914 m!89394))

(declare-fun m!89396 () Bool)

(assert (=> b!102918 m!89396))

(check-sat (not b!102916) (not b_next!3083) (not b!102917) b_and!4599 (not b!102920) (not start!10058) (not b!102912) (not b!102919) b_and!4601 (not b_next!3081) (not b!102914) (not b!102918) (not b!102915))
(check-sat b_and!4601 b_and!4599 (not b_next!3083) (not b_next!3081))
(get-model)

(declare-fun d!24652 () Bool)

(declare-fun res!49678 () Bool)

(declare-fun e!57053 () Bool)

(assert (=> d!24652 (=> (not res!49678) (not e!57053))))

(declare-fun rulesValid!101 (LexerInterface!253 List!1661) Bool)

(assert (=> d!24652 (= res!49678 (rulesValid!101 thiss!11428 rules!1152))))

(assert (=> d!24652 (= (rulesInvariant!247 thiss!11428 rules!1152) e!57053)))

(declare-fun b!102923 () Bool)

(declare-datatypes ((List!1663 0))(
  ( (Nil!1657) (Cons!1657 (h!7054 String!2147) (t!21332 List!1663)) )
))
(declare-fun noDuplicateTag!101 (LexerInterface!253 List!1661 List!1663) Bool)

(assert (=> b!102923 (= e!57053 (noDuplicateTag!101 thiss!11428 rules!1152 Nil!1657))))

(assert (= (and d!24652 res!49678) b!102923))

(declare-fun m!89398 () Bool)

(assert (=> d!24652 m!89398))

(declare-fun m!89400 () Bool)

(assert (=> b!102923 m!89400))

(assert (=> b!102914 d!24652))

(declare-fun d!24654 () Bool)

(declare-fun list!688 (Conc!519) List!1660)

(assert (=> d!24654 (= (list!684 (_1!1110 lt!28614)) (list!688 (c!24920 (_1!1110 lt!28614))))))

(declare-fun bs!10023 () Bool)

(assert (= bs!10023 d!24654))

(declare-fun m!89402 () Bool)

(assert (=> bs!10023 m!89402))

(assert (=> b!102912 d!24654))

(declare-fun d!24658 () Bool)

(assert (=> d!24658 (= (list!684 (BalanceConc!1043 Empty!519)) (list!688 (c!24920 (BalanceConc!1043 Empty!519))))))

(declare-fun bs!10024 () Bool)

(assert (= bs!10024 d!24658))

(declare-fun m!89404 () Bool)

(assert (=> bs!10024 m!89404))

(assert (=> b!102912 d!24658))

(declare-fun b!103022 () Bool)

(declare-fun e!57115 () Bool)

(declare-fun e!57116 () Bool)

(assert (=> b!103022 (= e!57115 e!57116)))

(declare-fun res!49710 () Bool)

(declare-fun lt!28633 () tuple2!1806)

(declare-fun size!1466 (BalanceConc!1040) Int)

(assert (=> b!103022 (= res!49710 (< (size!1466 (_2!1110 lt!28633)) (size!1466 (BalanceConc!1041 Empty!518))))))

(assert (=> b!103022 (=> (not res!49710) (not e!57116))))

(declare-fun b!103023 () Bool)

(declare-fun e!57113 () tuple2!1806)

(declare-fun lt!28635 () tuple2!1806)

(declare-datatypes ((tuple2!1812 0))(
  ( (tuple2!1813 (_1!1113 Token!470) (_2!1113 BalanceConc!1040)) )
))
(declare-datatypes ((Option!188 0))(
  ( (None!187) (Some!187 (v!12992 tuple2!1812)) )
))
(declare-fun lt!28634 () Option!188)

(declare-fun prepend!133 (BalanceConc!1042 Token!470) BalanceConc!1042)

(assert (=> b!103023 (= e!57113 (tuple2!1807 (prepend!133 (_1!1110 lt!28635) (_1!1113 (v!12992 lt!28634))) (_2!1110 lt!28635)))))

(assert (=> b!103023 (= lt!28635 (lexRec!54 thiss!11428 rules!1152 (_2!1113 (v!12992 lt!28634))))))

(declare-fun b!103024 () Bool)

(declare-fun isEmpty!756 (BalanceConc!1042) Bool)

(assert (=> b!103024 (= e!57116 (not (isEmpty!756 (_1!1110 lt!28633))))))

(declare-fun e!57114 () Bool)

(declare-fun b!103025 () Bool)

(declare-datatypes ((tuple2!1814 0))(
  ( (tuple2!1815 (_1!1114 List!1660) (_2!1114 List!1659)) )
))
(declare-fun lexList!77 (LexerInterface!253 List!1661 List!1659) tuple2!1814)

(assert (=> b!103025 (= e!57114 (= (list!685 (_2!1110 lt!28633)) (_2!1114 (lexList!77 thiss!11428 rules!1152 (list!685 (BalanceConc!1041 Empty!518))))))))

(declare-fun d!24660 () Bool)

(assert (=> d!24660 e!57114))

(declare-fun res!49711 () Bool)

(assert (=> d!24660 (=> (not res!49711) (not e!57114))))

(assert (=> d!24660 (= res!49711 e!57115)))

(declare-fun c!24940 () Bool)

(declare-fun size!1467 (BalanceConc!1042) Int)

(assert (=> d!24660 (= c!24940 (> (size!1467 (_1!1110 lt!28633)) 0))))

(assert (=> d!24660 (= lt!28633 e!57113)))

(declare-fun c!24939 () Bool)

(assert (=> d!24660 (= c!24939 ((_ is Some!187) lt!28634))))

(declare-fun maxPrefixZipperSequence!52 (LexerInterface!253 List!1661 BalanceConc!1040) Option!188)

(assert (=> d!24660 (= lt!28634 (maxPrefixZipperSequence!52 thiss!11428 rules!1152 (BalanceConc!1041 Empty!518)))))

(assert (=> d!24660 (= (lexRec!54 thiss!11428 rules!1152 (BalanceConc!1041 Empty!518)) lt!28633)))

(declare-fun b!103026 () Bool)

(assert (=> b!103026 (= e!57115 (= (list!685 (_2!1110 lt!28633)) (list!685 (BalanceConc!1041 Empty!518))))))

(declare-fun b!103027 () Bool)

(assert (=> b!103027 (= e!57113 (tuple2!1807 (BalanceConc!1043 Empty!519) (BalanceConc!1041 Empty!518)))))

(declare-fun b!103028 () Bool)

(declare-fun res!49709 () Bool)

(assert (=> b!103028 (=> (not res!49709) (not e!57114))))

(assert (=> b!103028 (= res!49709 (= (list!684 (_1!1110 lt!28633)) (_1!1114 (lexList!77 thiss!11428 rules!1152 (list!685 (BalanceConc!1041 Empty!518))))))))

(assert (= (and d!24660 c!24939) b!103023))

(assert (= (and d!24660 (not c!24939)) b!103027))

(assert (= (and d!24660 c!24940) b!103022))

(assert (= (and d!24660 (not c!24940)) b!103026))

(assert (= (and b!103022 res!49710) b!103024))

(assert (= (and d!24660 res!49711) b!103028))

(assert (= (and b!103028 res!49709) b!103025))

(declare-fun m!89474 () Bool)

(assert (=> b!103022 m!89474))

(declare-fun m!89476 () Bool)

(assert (=> b!103022 m!89476))

(declare-fun m!89478 () Bool)

(assert (=> d!24660 m!89478))

(declare-fun m!89480 () Bool)

(assert (=> d!24660 m!89480))

(declare-fun m!89482 () Bool)

(assert (=> b!103023 m!89482))

(declare-fun m!89484 () Bool)

(assert (=> b!103023 m!89484))

(declare-fun m!89486 () Bool)

(assert (=> b!103026 m!89486))

(assert (=> b!103026 m!89386))

(declare-fun m!89488 () Bool)

(assert (=> b!103024 m!89488))

(assert (=> b!103025 m!89486))

(assert (=> b!103025 m!89386))

(assert (=> b!103025 m!89386))

(declare-fun m!89490 () Bool)

(assert (=> b!103025 m!89490))

(declare-fun m!89492 () Bool)

(assert (=> b!103028 m!89492))

(assert (=> b!103028 m!89386))

(assert (=> b!103028 m!89386))

(assert (=> b!103028 m!89490))

(assert (=> b!102912 d!24660))

(declare-fun d!24688 () Bool)

(assert (=> d!24688 (= (isEmpty!754 rules!1152) ((_ is Nil!1655) rules!1152))))

(assert (=> b!102918 d!24688))

(declare-fun b!103040 () Bool)

(declare-fun e!57121 () Bool)

(declare-fun lt!28638 () List!1659)

(assert (=> b!103040 (= e!57121 (or (not (= lt!28613 Nil!1653)) (= lt!28638 lt!28612)))))

(declare-fun d!24690 () Bool)

(assert (=> d!24690 e!57121))

(declare-fun res!49716 () Bool)

(assert (=> d!24690 (=> (not res!49716) (not e!57121))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!138 (List!1659) (InoxSet C!1780))

(assert (=> d!24690 (= res!49716 (= (content!138 lt!28638) ((_ map or) (content!138 lt!28612) (content!138 lt!28613))))))

(declare-fun e!57122 () List!1659)

(assert (=> d!24690 (= lt!28638 e!57122)))

(declare-fun c!24943 () Bool)

(assert (=> d!24690 (= c!24943 ((_ is Nil!1653) lt!28612))))

(assert (=> d!24690 (= (++!264 lt!28612 lt!28613) lt!28638)))

(declare-fun b!103037 () Bool)

(assert (=> b!103037 (= e!57122 lt!28613)))

(declare-fun b!103039 () Bool)

(declare-fun res!49717 () Bool)

(assert (=> b!103039 (=> (not res!49717) (not e!57121))))

(declare-fun size!1468 (List!1659) Int)

(assert (=> b!103039 (= res!49717 (= (size!1468 lt!28638) (+ (size!1468 lt!28612) (size!1468 lt!28613))))))

(declare-fun b!103038 () Bool)

(assert (=> b!103038 (= e!57122 (Cons!1653 (h!7050 lt!28612) (++!264 (t!21328 lt!28612) lt!28613)))))

(assert (= (and d!24690 c!24943) b!103037))

(assert (= (and d!24690 (not c!24943)) b!103038))

(assert (= (and d!24690 res!49716) b!103039))

(assert (= (and b!103039 res!49717) b!103040))

(declare-fun m!89494 () Bool)

(assert (=> d!24690 m!89494))

(declare-fun m!89496 () Bool)

(assert (=> d!24690 m!89496))

(declare-fun m!89498 () Bool)

(assert (=> d!24690 m!89498))

(declare-fun m!89500 () Bool)

(assert (=> b!103039 m!89500))

(declare-fun m!89502 () Bool)

(assert (=> b!103039 m!89502))

(declare-fun m!89504 () Bool)

(assert (=> b!103039 m!89504))

(declare-fun m!89506 () Bool)

(assert (=> b!103038 m!89506))

(assert (=> b!102916 d!24690))

(declare-fun d!24692 () Bool)

(declare-fun list!689 (Conc!518) List!1659)

(assert (=> d!24692 (= (list!685 input!576) (list!689 (c!24918 input!576)))))

(declare-fun bs!10031 () Bool)

(assert (= bs!10031 d!24692))

(declare-fun m!89508 () Bool)

(assert (=> bs!10031 m!89508))

(assert (=> b!102916 d!24692))

(declare-fun d!24694 () Bool)

(assert (=> d!24694 (= (list!685 (BalanceConc!1041 Empty!518)) (list!689 (c!24918 (BalanceConc!1041 Empty!518))))))

(declare-fun bs!10032 () Bool)

(assert (= bs!10032 d!24694))

(declare-fun m!89510 () Bool)

(assert (=> bs!10032 m!89510))

(assert (=> b!102916 d!24694))

(declare-fun d!24696 () Bool)

(assert (=> d!24696 (= (inv!2002 (tag!539 (h!7052 rules!1152))) (= (mod (str.len (value!13177 (tag!539 (h!7052 rules!1152)))) 2) 0))))

(assert (=> b!102917 d!24696))

(declare-fun d!24698 () Bool)

(declare-fun res!49720 () Bool)

(declare-fun e!57125 () Bool)

(assert (=> d!24698 (=> (not res!49720) (not e!57125))))

(declare-fun semiInverseModEq!93 (Int Int) Bool)

(assert (=> d!24698 (= res!49720 (semiInverseModEq!93 (toChars!795 (transformation!361 (h!7052 rules!1152))) (toValue!936 (transformation!361 (h!7052 rules!1152)))))))

(assert (=> d!24698 (= (inv!2007 (transformation!361 (h!7052 rules!1152))) e!57125)))

(declare-fun b!103043 () Bool)

(declare-fun equivClasses!88 (Int Int) Bool)

(assert (=> b!103043 (= e!57125 (equivClasses!88 (toChars!795 (transformation!361 (h!7052 rules!1152))) (toValue!936 (transformation!361 (h!7052 rules!1152)))))))

(assert (= (and d!24698 res!49720) b!103043))

(declare-fun m!89512 () Bool)

(assert (=> d!24698 m!89512))

(declare-fun m!89514 () Bool)

(assert (=> b!103043 m!89514))

(assert (=> b!102917 d!24698))

(declare-fun d!24700 () Bool)

(assert (=> d!24700 (= (isEmpty!753 (list!685 (_2!1110 lt!28614))) ((_ is Nil!1653) (list!685 (_2!1110 lt!28614))))))

(assert (=> b!102915 d!24700))

(declare-fun d!24702 () Bool)

(assert (=> d!24702 (= (list!685 (_2!1110 lt!28614)) (list!689 (c!24918 (_2!1110 lt!28614))))))

(declare-fun bs!10033 () Bool)

(assert (= bs!10033 d!24702))

(declare-fun m!89516 () Bool)

(assert (=> bs!10033 m!89516))

(assert (=> b!102915 d!24702))

(declare-fun d!24704 () Bool)

(declare-fun c!24946 () Bool)

(assert (=> d!24704 (= c!24946 ((_ is Node!518) (c!24918 input!576)))))

(declare-fun e!57130 () Bool)

(assert (=> d!24704 (= (inv!2008 (c!24918 input!576)) e!57130)))

(declare-fun b!103050 () Bool)

(declare-fun inv!2012 (Conc!518) Bool)

(assert (=> b!103050 (= e!57130 (inv!2012 (c!24918 input!576)))))

(declare-fun b!103051 () Bool)

(declare-fun e!57131 () Bool)

(assert (=> b!103051 (= e!57130 e!57131)))

(declare-fun res!49723 () Bool)

(assert (=> b!103051 (= res!49723 (not ((_ is Leaf!834) (c!24918 input!576))))))

(assert (=> b!103051 (=> res!49723 e!57131)))

(declare-fun b!103052 () Bool)

(declare-fun inv!2013 (Conc!518) Bool)

(assert (=> b!103052 (= e!57131 (inv!2013 (c!24918 input!576)))))

(assert (= (and d!24704 c!24946) b!103050))

(assert (= (and d!24704 (not c!24946)) b!103051))

(assert (= (and b!103051 (not res!49723)) b!103052))

(declare-fun m!89518 () Bool)

(assert (=> b!103050 m!89518))

(declare-fun m!89520 () Bool)

(assert (=> b!103052 m!89520))

(assert (=> b!102920 d!24704))

(declare-fun d!24706 () Bool)

(declare-fun isBalanced!139 (Conc!518) Bool)

(assert (=> d!24706 (= (inv!2006 input!576) (isBalanced!139 (c!24918 input!576)))))

(declare-fun bs!10034 () Bool)

(assert (= bs!10034 d!24706))

(declare-fun m!89522 () Bool)

(assert (=> bs!10034 m!89522))

(assert (=> start!10058 d!24706))

(declare-fun b!103063 () Bool)

(declare-fun b_free!3089 () Bool)

(declare-fun b_next!3089 () Bool)

(assert (=> b!103063 (= b_free!3089 (not b_next!3089))))

(declare-fun tp!57778 () Bool)

(declare-fun b_and!4607 () Bool)

(assert (=> b!103063 (= tp!57778 b_and!4607)))

(declare-fun b_free!3091 () Bool)

(declare-fun b_next!3091 () Bool)

(assert (=> b!103063 (= b_free!3091 (not b_next!3091))))

(declare-fun tp!57779 () Bool)

(declare-fun b_and!4609 () Bool)

(assert (=> b!103063 (= tp!57779 b_and!4609)))

(declare-fun e!57140 () Bool)

(assert (=> b!103063 (= e!57140 (and tp!57778 tp!57779))))

(declare-fun tp!57780 () Bool)

(declare-fun b!103062 () Bool)

(declare-fun e!57143 () Bool)

(assert (=> b!103062 (= e!57143 (and tp!57780 (inv!2002 (tag!539 (h!7052 (t!21330 rules!1152)))) (inv!2007 (transformation!361 (h!7052 (t!21330 rules!1152)))) e!57140))))

(declare-fun b!103061 () Bool)

(declare-fun e!57141 () Bool)

(declare-fun tp!57777 () Bool)

(assert (=> b!103061 (= e!57141 (and e!57143 tp!57777))))

(assert (=> b!102919 (= tp!57729 e!57141)))

(assert (= b!103062 b!103063))

(assert (= b!103061 b!103062))

(assert (= (and b!102919 ((_ is Cons!1655) (t!21330 rules!1152))) b!103061))

(declare-fun m!89524 () Bool)

(assert (=> b!103062 m!89524))

(declare-fun m!89526 () Bool)

(assert (=> b!103062 m!89526))

(declare-fun e!57146 () Bool)

(assert (=> b!102917 (= tp!57730 e!57146)))

(declare-fun b!103074 () Bool)

(declare-fun tp_is_empty!777 () Bool)

(assert (=> b!103074 (= e!57146 tp_is_empty!777)))

(declare-fun b!103075 () Bool)

(declare-fun tp!57792 () Bool)

(declare-fun tp!57794 () Bool)

(assert (=> b!103075 (= e!57146 (and tp!57792 tp!57794))))

(declare-fun b!103077 () Bool)

(declare-fun tp!57795 () Bool)

(declare-fun tp!57791 () Bool)

(assert (=> b!103077 (= e!57146 (and tp!57795 tp!57791))))

(declare-fun b!103076 () Bool)

(declare-fun tp!57793 () Bool)

(assert (=> b!103076 (= e!57146 tp!57793)))

(assert (= (and b!102917 ((_ is ElementMatch!429) (regex!361 (h!7052 rules!1152)))) b!103074))

(assert (= (and b!102917 ((_ is Concat!781) (regex!361 (h!7052 rules!1152)))) b!103075))

(assert (= (and b!102917 ((_ is Star!429) (regex!361 (h!7052 rules!1152)))) b!103076))

(assert (= (and b!102917 ((_ is Union!429) (regex!361 (h!7052 rules!1152)))) b!103077))

(declare-fun b!103086 () Bool)

(declare-fun tp!57804 () Bool)

(declare-fun e!57151 () Bool)

(declare-fun tp!57802 () Bool)

(assert (=> b!103086 (= e!57151 (and (inv!2008 (left!1263 (c!24918 input!576))) tp!57802 (inv!2008 (right!1593 (c!24918 input!576))) tp!57804))))

(declare-fun b!103088 () Bool)

(declare-fun e!57152 () Bool)

(declare-fun tp!57803 () Bool)

(assert (=> b!103088 (= e!57152 tp!57803)))

(declare-fun b!103087 () Bool)

(declare-fun inv!2014 (IArray!1037) Bool)

(assert (=> b!103087 (= e!57151 (and (inv!2014 (xs!3105 (c!24918 input!576))) e!57152))))

(assert (=> b!102920 (= tp!57731 (and (inv!2008 (c!24918 input!576)) e!57151))))

(assert (= (and b!102920 ((_ is Node!518) (c!24918 input!576))) b!103086))

(assert (= b!103087 b!103088))

(assert (= (and b!102920 ((_ is Leaf!834) (c!24918 input!576))) b!103087))

(declare-fun m!89528 () Bool)

(assert (=> b!103086 m!89528))

(declare-fun m!89530 () Bool)

(assert (=> b!103086 m!89530))

(declare-fun m!89532 () Bool)

(assert (=> b!103087 m!89532))

(assert (=> b!102920 m!89388))

(check-sat (not b!103061) tp_is_empty!777 (not d!24692) b_and!4607 b_and!4609 (not b!103038) (not b!103023) (not b!103050) (not d!24652) (not b!103075) (not b!103025) (not b!103026) (not b_next!3089) (not b!103022) (not b!103062) (not d!24654) (not b_next!3083) (not b!103028) (not d!24706) (not b!103087) (not d!24694) (not d!24702) (not b_next!3091) b_and!4599 (not b!103076) (not d!24658) (not b!103086) (not b!102923) (not b!102920) (not d!24690) (not d!24660) (not b!103043) (not d!24698) b_and!4601 (not b!103077) (not b!103088) (not b!103052) (not b_next!3081) (not b!103039) (not b!103024))
(check-sat (not b_next!3089) b_and!4607 (not b_next!3083) b_and!4609 b_and!4601 (not b_next!3081) (not b_next!3091) b_and!4599)
(get-model)

(declare-fun d!24740 () Bool)

(declare-fun c!24975 () Bool)

(assert (=> d!24740 (= c!24975 ((_ is Nil!1653) lt!28638))))

(declare-fun e!57199 () (InoxSet C!1780))

(assert (=> d!24740 (= (content!138 lt!28638) e!57199)))

(declare-fun b!103173 () Bool)

(assert (=> b!103173 (= e!57199 ((as const (Array C!1780 Bool)) false))))

(declare-fun b!103174 () Bool)

(assert (=> b!103174 (= e!57199 ((_ map or) (store ((as const (Array C!1780 Bool)) false) (h!7050 lt!28638) true) (content!138 (t!21328 lt!28638))))))

(assert (= (and d!24740 c!24975) b!103173))

(assert (= (and d!24740 (not c!24975)) b!103174))

(declare-fun m!89606 () Bool)

(assert (=> b!103174 m!89606))

(declare-fun m!89608 () Bool)

(assert (=> b!103174 m!89608))

(assert (=> d!24690 d!24740))

(declare-fun d!24742 () Bool)

(declare-fun c!24976 () Bool)

(assert (=> d!24742 (= c!24976 ((_ is Nil!1653) lt!28612))))

(declare-fun e!57200 () (InoxSet C!1780))

(assert (=> d!24742 (= (content!138 lt!28612) e!57200)))

(declare-fun b!103175 () Bool)

(assert (=> b!103175 (= e!57200 ((as const (Array C!1780 Bool)) false))))

(declare-fun b!103176 () Bool)

(assert (=> b!103176 (= e!57200 ((_ map or) (store ((as const (Array C!1780 Bool)) false) (h!7050 lt!28612) true) (content!138 (t!21328 lt!28612))))))

(assert (= (and d!24742 c!24976) b!103175))

(assert (= (and d!24742 (not c!24976)) b!103176))

(declare-fun m!89610 () Bool)

(assert (=> b!103176 m!89610))

(declare-fun m!89612 () Bool)

(assert (=> b!103176 m!89612))

(assert (=> d!24690 d!24742))

(declare-fun d!24744 () Bool)

(declare-fun c!24977 () Bool)

(assert (=> d!24744 (= c!24977 ((_ is Nil!1653) lt!28613))))

(declare-fun e!57201 () (InoxSet C!1780))

(assert (=> d!24744 (= (content!138 lt!28613) e!57201)))

(declare-fun b!103177 () Bool)

(assert (=> b!103177 (= e!57201 ((as const (Array C!1780 Bool)) false))))

(declare-fun b!103178 () Bool)

(assert (=> b!103178 (= e!57201 ((_ map or) (store ((as const (Array C!1780 Bool)) false) (h!7050 lt!28613) true) (content!138 (t!21328 lt!28613))))))

(assert (= (and d!24744 c!24977) b!103177))

(assert (= (and d!24744 (not c!24977)) b!103178))

(declare-fun m!89614 () Bool)

(assert (=> b!103178 m!89614))

(declare-fun m!89616 () Bool)

(assert (=> b!103178 m!89616))

(assert (=> d!24690 d!24744))

(declare-fun e!57202 () Bool)

(declare-fun b!103182 () Bool)

(declare-fun lt!28654 () List!1659)

(assert (=> b!103182 (= e!57202 (or (not (= lt!28613 Nil!1653)) (= lt!28654 (t!21328 lt!28612))))))

(declare-fun d!24746 () Bool)

(assert (=> d!24746 e!57202))

(declare-fun res!49758 () Bool)

(assert (=> d!24746 (=> (not res!49758) (not e!57202))))

(assert (=> d!24746 (= res!49758 (= (content!138 lt!28654) ((_ map or) (content!138 (t!21328 lt!28612)) (content!138 lt!28613))))))

(declare-fun e!57203 () List!1659)

(assert (=> d!24746 (= lt!28654 e!57203)))

(declare-fun c!24978 () Bool)

(assert (=> d!24746 (= c!24978 ((_ is Nil!1653) (t!21328 lt!28612)))))

(assert (=> d!24746 (= (++!264 (t!21328 lt!28612) lt!28613) lt!28654)))

(declare-fun b!103179 () Bool)

(assert (=> b!103179 (= e!57203 lt!28613)))

(declare-fun b!103181 () Bool)

(declare-fun res!49759 () Bool)

(assert (=> b!103181 (=> (not res!49759) (not e!57202))))

(assert (=> b!103181 (= res!49759 (= (size!1468 lt!28654) (+ (size!1468 (t!21328 lt!28612)) (size!1468 lt!28613))))))

(declare-fun b!103180 () Bool)

(assert (=> b!103180 (= e!57203 (Cons!1653 (h!7050 (t!21328 lt!28612)) (++!264 (t!21328 (t!21328 lt!28612)) lt!28613)))))

(assert (= (and d!24746 c!24978) b!103179))

(assert (= (and d!24746 (not c!24978)) b!103180))

(assert (= (and d!24746 res!49758) b!103181))

(assert (= (and b!103181 res!49759) b!103182))

(declare-fun m!89618 () Bool)

(assert (=> d!24746 m!89618))

(assert (=> d!24746 m!89612))

(assert (=> d!24746 m!89498))

(declare-fun m!89620 () Bool)

(assert (=> b!103181 m!89620))

(declare-fun m!89622 () Bool)

(assert (=> b!103181 m!89622))

(assert (=> b!103181 m!89504))

(declare-fun m!89624 () Bool)

(assert (=> b!103180 m!89624))

(assert (=> b!103038 d!24746))

(declare-fun d!24748 () Bool)

(declare-fun lt!28657 () Int)

(assert (=> d!24748 (>= lt!28657 0)))

(declare-fun e!57206 () Int)

(assert (=> d!24748 (= lt!28657 e!57206)))

(declare-fun c!24981 () Bool)

(assert (=> d!24748 (= c!24981 ((_ is Nil!1653) lt!28638))))

(assert (=> d!24748 (= (size!1468 lt!28638) lt!28657)))

(declare-fun b!103187 () Bool)

(assert (=> b!103187 (= e!57206 0)))

(declare-fun b!103188 () Bool)

(assert (=> b!103188 (= e!57206 (+ 1 (size!1468 (t!21328 lt!28638))))))

(assert (= (and d!24748 c!24981) b!103187))

(assert (= (and d!24748 (not c!24981)) b!103188))

(declare-fun m!89626 () Bool)

(assert (=> b!103188 m!89626))

(assert (=> b!103039 d!24748))

(declare-fun d!24750 () Bool)

(declare-fun lt!28658 () Int)

(assert (=> d!24750 (>= lt!28658 0)))

(declare-fun e!57207 () Int)

(assert (=> d!24750 (= lt!28658 e!57207)))

(declare-fun c!24982 () Bool)

(assert (=> d!24750 (= c!24982 ((_ is Nil!1653) lt!28612))))

(assert (=> d!24750 (= (size!1468 lt!28612) lt!28658)))

(declare-fun b!103189 () Bool)

(assert (=> b!103189 (= e!57207 0)))

(declare-fun b!103190 () Bool)

(assert (=> b!103190 (= e!57207 (+ 1 (size!1468 (t!21328 lt!28612))))))

(assert (= (and d!24750 c!24982) b!103189))

(assert (= (and d!24750 (not c!24982)) b!103190))

(assert (=> b!103190 m!89622))

(assert (=> b!103039 d!24750))

(declare-fun d!24752 () Bool)

(declare-fun lt!28659 () Int)

(assert (=> d!24752 (>= lt!28659 0)))

(declare-fun e!57208 () Int)

(assert (=> d!24752 (= lt!28659 e!57208)))

(declare-fun c!24983 () Bool)

(assert (=> d!24752 (= c!24983 ((_ is Nil!1653) lt!28613))))

(assert (=> d!24752 (= (size!1468 lt!28613) lt!28659)))

(declare-fun b!103191 () Bool)

(assert (=> b!103191 (= e!57208 0)))

(declare-fun b!103192 () Bool)

(assert (=> b!103192 (= e!57208 (+ 1 (size!1468 (t!21328 lt!28613))))))

(assert (= (and d!24752 c!24983) b!103191))

(assert (= (and d!24752 (not c!24983)) b!103192))

(declare-fun m!89628 () Bool)

(assert (=> b!103192 m!89628))

(assert (=> b!103039 d!24752))

(declare-fun b!103203 () Bool)

(declare-fun e!57214 () List!1659)

(declare-fun list!692 (IArray!1037) List!1659)

(assert (=> b!103203 (= e!57214 (list!692 (xs!3105 (c!24918 (_2!1110 lt!28614)))))))

(declare-fun b!103202 () Bool)

(declare-fun e!57213 () List!1659)

(assert (=> b!103202 (= e!57213 e!57214)))

(declare-fun c!24989 () Bool)

(assert (=> b!103202 (= c!24989 ((_ is Leaf!834) (c!24918 (_2!1110 lt!28614))))))

(declare-fun b!103204 () Bool)

(assert (=> b!103204 (= e!57214 (++!264 (list!689 (left!1263 (c!24918 (_2!1110 lt!28614)))) (list!689 (right!1593 (c!24918 (_2!1110 lt!28614))))))))

(declare-fun b!103201 () Bool)

(assert (=> b!103201 (= e!57213 Nil!1653)))

(declare-fun d!24754 () Bool)

(declare-fun c!24988 () Bool)

(assert (=> d!24754 (= c!24988 ((_ is Empty!518) (c!24918 (_2!1110 lt!28614))))))

(assert (=> d!24754 (= (list!689 (c!24918 (_2!1110 lt!28614))) e!57213)))

(assert (= (and d!24754 c!24988) b!103201))

(assert (= (and d!24754 (not c!24988)) b!103202))

(assert (= (and b!103202 c!24989) b!103203))

(assert (= (and b!103202 (not c!24989)) b!103204))

(declare-fun m!89630 () Bool)

(assert (=> b!103203 m!89630))

(declare-fun m!89632 () Bool)

(assert (=> b!103204 m!89632))

(declare-fun m!89634 () Bool)

(assert (=> b!103204 m!89634))

(assert (=> b!103204 m!89632))

(assert (=> b!103204 m!89634))

(declare-fun m!89636 () Bool)

(assert (=> b!103204 m!89636))

(assert (=> d!24702 d!24754))

(declare-fun b!103214 () Bool)

(declare-fun e!57219 () List!1660)

(declare-fun e!57220 () List!1660)

(assert (=> b!103214 (= e!57219 e!57220)))

(declare-fun c!24995 () Bool)

(assert (=> b!103214 (= c!24995 ((_ is Leaf!835) (c!24920 (BalanceConc!1043 Empty!519))))))

(declare-fun d!24756 () Bool)

(declare-fun c!24994 () Bool)

(assert (=> d!24756 (= c!24994 ((_ is Empty!519) (c!24920 (BalanceConc!1043 Empty!519))))))

(assert (=> d!24756 (= (list!688 (c!24920 (BalanceConc!1043 Empty!519))) e!57219)))

(declare-fun b!103215 () Bool)

(declare-fun list!693 (IArray!1039) List!1660)

(assert (=> b!103215 (= e!57220 (list!693 (xs!3106 (c!24920 (BalanceConc!1043 Empty!519)))))))

(declare-fun b!103216 () Bool)

(declare-fun ++!266 (List!1660 List!1660) List!1660)

(assert (=> b!103216 (= e!57220 (++!266 (list!688 (left!1264 (c!24920 (BalanceConc!1043 Empty!519)))) (list!688 (right!1594 (c!24920 (BalanceConc!1043 Empty!519))))))))

(declare-fun b!103213 () Bool)

(assert (=> b!103213 (= e!57219 Nil!1654)))

(assert (= (and d!24756 c!24994) b!103213))

(assert (= (and d!24756 (not c!24994)) b!103214))

(assert (= (and b!103214 c!24995) b!103215))

(assert (= (and b!103214 (not c!24995)) b!103216))

(declare-fun m!89638 () Bool)

(assert (=> b!103215 m!89638))

(declare-fun m!89640 () Bool)

(assert (=> b!103216 m!89640))

(declare-fun m!89642 () Bool)

(assert (=> b!103216 m!89642))

(assert (=> b!103216 m!89640))

(assert (=> b!103216 m!89642))

(declare-fun m!89644 () Bool)

(assert (=> b!103216 m!89644))

(assert (=> d!24658 d!24756))

(declare-fun d!24758 () Bool)

(assert (=> d!24758 true))

(declare-fun order!789 () Int)

(declare-fun order!791 () Int)

(declare-fun lambda!1899 () Int)

(declare-fun dynLambda!513 (Int Int) Int)

(declare-fun dynLambda!514 (Int Int) Int)

(assert (=> d!24758 (< (dynLambda!513 order!789 (toChars!795 (transformation!361 (h!7052 rules!1152)))) (dynLambda!514 order!791 lambda!1899))))

(assert (=> d!24758 true))

(declare-fun order!793 () Int)

(declare-fun dynLambda!515 (Int Int) Int)

(assert (=> d!24758 (< (dynLambda!515 order!793 (toValue!936 (transformation!361 (h!7052 rules!1152)))) (dynLambda!514 order!791 lambda!1899))))

(declare-fun Forall!72 (Int) Bool)

(assert (=> d!24758 (= (semiInverseModEq!93 (toChars!795 (transformation!361 (h!7052 rules!1152))) (toValue!936 (transformation!361 (h!7052 rules!1152)))) (Forall!72 lambda!1899))))

(declare-fun bs!10045 () Bool)

(assert (= bs!10045 d!24758))

(declare-fun m!89744 () Bool)

(assert (=> bs!10045 m!89744))

(assert (=> d!24698 d!24758))

(declare-fun d!24796 () Bool)

(assert (=> d!24796 (= (list!684 (_1!1110 lt!28633)) (list!688 (c!24920 (_1!1110 lt!28633))))))

(declare-fun bs!10046 () Bool)

(assert (= bs!10046 d!24796))

(declare-fun m!89746 () Bool)

(assert (=> bs!10046 m!89746))

(assert (=> b!103028 d!24796))

(declare-fun b!103292 () Bool)

(declare-fun e!57256 () Bool)

(declare-fun lt!28687 () tuple2!1814)

(assert (=> b!103292 (= e!57256 (= (_2!1114 lt!28687) (list!685 (BalanceConc!1041 Empty!518))))))

(declare-fun b!103293 () Bool)

(declare-fun e!57254 () Bool)

(assert (=> b!103293 (= e!57256 e!57254)))

(declare-fun res!49789 () Bool)

(assert (=> b!103293 (= res!49789 (< (size!1468 (_2!1114 lt!28687)) (size!1468 (list!685 (BalanceConc!1041 Empty!518)))))))

(assert (=> b!103293 (=> (not res!49789) (not e!57254))))

(declare-fun d!24798 () Bool)

(assert (=> d!24798 e!57256))

(declare-fun c!25014 () Bool)

(declare-fun size!1471 (List!1660) Int)

(assert (=> d!24798 (= c!25014 (> (size!1471 (_1!1114 lt!28687)) 0))))

(declare-fun e!57255 () tuple2!1814)

(assert (=> d!24798 (= lt!28687 e!57255)))

(declare-fun c!25015 () Bool)

(declare-datatypes ((tuple2!1818 0))(
  ( (tuple2!1819 (_1!1116 Token!470) (_2!1116 List!1659)) )
))
(declare-datatypes ((Option!190 0))(
  ( (None!189) (Some!189 (v!12996 tuple2!1818)) )
))
(declare-fun lt!28686 () Option!190)

(assert (=> d!24798 (= c!25015 ((_ is Some!189) lt!28686))))

(declare-fun maxPrefix!89 (LexerInterface!253 List!1661 List!1659) Option!190)

(assert (=> d!24798 (= lt!28686 (maxPrefix!89 thiss!11428 rules!1152 (list!685 (BalanceConc!1041 Empty!518))))))

(assert (=> d!24798 (= (lexList!77 thiss!11428 rules!1152 (list!685 (BalanceConc!1041 Empty!518))) lt!28687)))

(declare-fun b!103294 () Bool)

(assert (=> b!103294 (= e!57255 (tuple2!1815 Nil!1654 (list!685 (BalanceConc!1041 Empty!518))))))

(declare-fun b!103295 () Bool)

(declare-fun isEmpty!760 (List!1660) Bool)

(assert (=> b!103295 (= e!57254 (not (isEmpty!760 (_1!1114 lt!28687))))))

(declare-fun b!103296 () Bool)

(declare-fun lt!28685 () tuple2!1814)

(assert (=> b!103296 (= e!57255 (tuple2!1815 (Cons!1654 (_1!1116 (v!12996 lt!28686)) (_1!1114 lt!28685)) (_2!1114 lt!28685)))))

(assert (=> b!103296 (= lt!28685 (lexList!77 thiss!11428 rules!1152 (_2!1116 (v!12996 lt!28686))))))

(assert (= (and d!24798 c!25015) b!103296))

(assert (= (and d!24798 (not c!25015)) b!103294))

(assert (= (and d!24798 c!25014) b!103293))

(assert (= (and d!24798 (not c!25014)) b!103292))

(assert (= (and b!103293 res!49789) b!103295))

(declare-fun m!89748 () Bool)

(assert (=> b!103293 m!89748))

(assert (=> b!103293 m!89386))

(declare-fun m!89750 () Bool)

(assert (=> b!103293 m!89750))

(declare-fun m!89752 () Bool)

(assert (=> d!24798 m!89752))

(assert (=> d!24798 m!89386))

(declare-fun m!89754 () Bool)

(assert (=> d!24798 m!89754))

(declare-fun m!89756 () Bool)

(assert (=> b!103295 m!89756))

(declare-fun m!89758 () Bool)

(assert (=> b!103296 m!89758))

(assert (=> b!103028 d!24798))

(assert (=> b!103028 d!24694))

(declare-fun b!103299 () Bool)

(declare-fun e!57258 () List!1659)

(assert (=> b!103299 (= e!57258 (list!692 (xs!3105 (c!24918 input!576))))))

(declare-fun b!103298 () Bool)

(declare-fun e!57257 () List!1659)

(assert (=> b!103298 (= e!57257 e!57258)))

(declare-fun c!25017 () Bool)

(assert (=> b!103298 (= c!25017 ((_ is Leaf!834) (c!24918 input!576)))))

(declare-fun b!103300 () Bool)

(assert (=> b!103300 (= e!57258 (++!264 (list!689 (left!1263 (c!24918 input!576))) (list!689 (right!1593 (c!24918 input!576)))))))

(declare-fun b!103297 () Bool)

(assert (=> b!103297 (= e!57257 Nil!1653)))

(declare-fun d!24800 () Bool)

(declare-fun c!25016 () Bool)

(assert (=> d!24800 (= c!25016 ((_ is Empty!518) (c!24918 input!576)))))

(assert (=> d!24800 (= (list!689 (c!24918 input!576)) e!57257)))

(assert (= (and d!24800 c!25016) b!103297))

(assert (= (and d!24800 (not c!25016)) b!103298))

(assert (= (and b!103298 c!25017) b!103299))

(assert (= (and b!103298 (not c!25017)) b!103300))

(declare-fun m!89760 () Bool)

(assert (=> b!103299 m!89760))

(declare-fun m!89762 () Bool)

(assert (=> b!103300 m!89762))

(declare-fun m!89764 () Bool)

(assert (=> b!103300 m!89764))

(assert (=> b!103300 m!89762))

(assert (=> b!103300 m!89764))

(declare-fun m!89766 () Bool)

(assert (=> b!103300 m!89766))

(assert (=> d!24692 d!24800))

(declare-fun d!24802 () Bool)

(assert (=> d!24802 (= (inv!2002 (tag!539 (h!7052 (t!21330 rules!1152)))) (= (mod (str.len (value!13177 (tag!539 (h!7052 (t!21330 rules!1152))))) 2) 0))))

(assert (=> b!103062 d!24802))

(declare-fun d!24804 () Bool)

(declare-fun res!49790 () Bool)

(declare-fun e!57259 () Bool)

(assert (=> d!24804 (=> (not res!49790) (not e!57259))))

(assert (=> d!24804 (= res!49790 (semiInverseModEq!93 (toChars!795 (transformation!361 (h!7052 (t!21330 rules!1152)))) (toValue!936 (transformation!361 (h!7052 (t!21330 rules!1152))))))))

(assert (=> d!24804 (= (inv!2007 (transformation!361 (h!7052 (t!21330 rules!1152)))) e!57259)))

(declare-fun b!103301 () Bool)

(assert (=> b!103301 (= e!57259 (equivClasses!88 (toChars!795 (transformation!361 (h!7052 (t!21330 rules!1152)))) (toValue!936 (transformation!361 (h!7052 (t!21330 rules!1152))))))))

(assert (= (and d!24804 res!49790) b!103301))

(declare-fun m!89768 () Bool)

(assert (=> d!24804 m!89768))

(declare-fun m!89770 () Bool)

(assert (=> b!103301 m!89770))

(assert (=> b!103062 d!24804))

(declare-fun d!24806 () Bool)

(assert (=> d!24806 (= (inv!2014 (xs!3105 (c!24918 input!576))) (<= (size!1468 (innerList!576 (xs!3105 (c!24918 input!576)))) 2147483647))))

(declare-fun bs!10047 () Bool)

(assert (= bs!10047 d!24806))

(declare-fun m!89772 () Bool)

(assert (=> bs!10047 m!89772))

(assert (=> b!103087 d!24806))

(declare-fun b!103314 () Bool)

(declare-fun res!49808 () Bool)

(declare-fun e!57265 () Bool)

(assert (=> b!103314 (=> (not res!49808) (not e!57265))))

(declare-fun isEmpty!761 (Conc!518) Bool)

(assert (=> b!103314 (= res!49808 (not (isEmpty!761 (left!1263 (c!24918 input!576)))))))

(declare-fun b!103315 () Bool)

(declare-fun e!57264 () Bool)

(assert (=> b!103315 (= e!57264 e!57265)))

(declare-fun res!49804 () Bool)

(assert (=> b!103315 (=> (not res!49804) (not e!57265))))

(declare-fun height!56 (Conc!518) Int)

(assert (=> b!103315 (= res!49804 (<= (- 1) (- (height!56 (left!1263 (c!24918 input!576))) (height!56 (right!1593 (c!24918 input!576))))))))

(declare-fun b!103316 () Bool)

(declare-fun res!49807 () Bool)

(assert (=> b!103316 (=> (not res!49807) (not e!57265))))

(assert (=> b!103316 (= res!49807 (isBalanced!139 (left!1263 (c!24918 input!576))))))

(declare-fun b!103317 () Bool)

(assert (=> b!103317 (= e!57265 (not (isEmpty!761 (right!1593 (c!24918 input!576)))))))

(declare-fun b!103318 () Bool)

(declare-fun res!49805 () Bool)

(assert (=> b!103318 (=> (not res!49805) (not e!57265))))

(assert (=> b!103318 (= res!49805 (isBalanced!139 (right!1593 (c!24918 input!576))))))

(declare-fun b!103319 () Bool)

(declare-fun res!49803 () Bool)

(assert (=> b!103319 (=> (not res!49803) (not e!57265))))

(assert (=> b!103319 (= res!49803 (<= (- (height!56 (left!1263 (c!24918 input!576))) (height!56 (right!1593 (c!24918 input!576)))) 1))))

(declare-fun d!24808 () Bool)

(declare-fun res!49806 () Bool)

(assert (=> d!24808 (=> res!49806 e!57264)))

(assert (=> d!24808 (= res!49806 (not ((_ is Node!518) (c!24918 input!576))))))

(assert (=> d!24808 (= (isBalanced!139 (c!24918 input!576)) e!57264)))

(assert (= (and d!24808 (not res!49806)) b!103315))

(assert (= (and b!103315 res!49804) b!103319))

(assert (= (and b!103319 res!49803) b!103316))

(assert (= (and b!103316 res!49807) b!103318))

(assert (= (and b!103318 res!49805) b!103314))

(assert (= (and b!103314 res!49808) b!103317))

(declare-fun m!89774 () Bool)

(assert (=> b!103318 m!89774))

(declare-fun m!89776 () Bool)

(assert (=> b!103317 m!89776))

(declare-fun m!89778 () Bool)

(assert (=> b!103314 m!89778))

(declare-fun m!89780 () Bool)

(assert (=> b!103315 m!89780))

(declare-fun m!89782 () Bool)

(assert (=> b!103315 m!89782))

(declare-fun m!89784 () Bool)

(assert (=> b!103316 m!89784))

(assert (=> b!103319 m!89780))

(assert (=> b!103319 m!89782))

(assert (=> d!24706 d!24808))

(declare-fun d!24810 () Bool)

(assert (=> d!24810 (= (list!685 (_2!1110 lt!28633)) (list!689 (c!24918 (_2!1110 lt!28633))))))

(declare-fun bs!10048 () Bool)

(assert (= bs!10048 d!24810))

(declare-fun m!89786 () Bool)

(assert (=> bs!10048 m!89786))

(assert (=> b!103026 d!24810))

(assert (=> b!103026 d!24694))

(declare-fun d!24812 () Bool)

(declare-fun lt!28704 () Bool)

(assert (=> d!24812 (= lt!28704 (isEmpty!760 (list!684 (_1!1110 lt!28633))))))

(declare-fun isEmpty!762 (Conc!519) Bool)

(assert (=> d!24812 (= lt!28704 (isEmpty!762 (c!24920 (_1!1110 lt!28633))))))

(assert (=> d!24812 (= (isEmpty!756 (_1!1110 lt!28633)) lt!28704)))

(declare-fun bs!10049 () Bool)

(assert (= bs!10049 d!24812))

(assert (=> bs!10049 m!89492))

(assert (=> bs!10049 m!89492))

(declare-fun m!89788 () Bool)

(assert (=> bs!10049 m!89788))

(declare-fun m!89790 () Bool)

(assert (=> bs!10049 m!89790))

(assert (=> b!103024 d!24812))

(declare-fun d!24814 () Bool)

(assert (=> d!24814 true))

(declare-fun lt!28707 () Bool)

(declare-fun rulesValidInductive!78 (LexerInterface!253 List!1661) Bool)

(assert (=> d!24814 (= lt!28707 (rulesValidInductive!78 thiss!11428 rules!1152))))

(declare-fun lambda!1902 () Int)

(declare-fun forall!222 (List!1661 Int) Bool)

(assert (=> d!24814 (= lt!28707 (forall!222 rules!1152 lambda!1902))))

(assert (=> d!24814 (= (rulesValid!101 thiss!11428 rules!1152) lt!28707)))

(declare-fun bs!10050 () Bool)

(assert (= bs!10050 d!24814))

(declare-fun m!89792 () Bool)

(assert (=> bs!10050 m!89792))

(declare-fun m!89794 () Bool)

(assert (=> bs!10050 m!89794))

(assert (=> d!24652 d!24814))

(assert (=> b!102920 d!24704))

(declare-fun d!24816 () Bool)

(declare-fun c!25020 () Bool)

(assert (=> d!24816 (= c!25020 ((_ is Node!518) (left!1263 (c!24918 input!576))))))

(declare-fun e!57278 () Bool)

(assert (=> d!24816 (= (inv!2008 (left!1263 (c!24918 input!576))) e!57278)))

(declare-fun b!103338 () Bool)

(assert (=> b!103338 (= e!57278 (inv!2012 (left!1263 (c!24918 input!576))))))

(declare-fun b!103339 () Bool)

(declare-fun e!57279 () Bool)

(assert (=> b!103339 (= e!57278 e!57279)))

(declare-fun res!49821 () Bool)

(assert (=> b!103339 (= res!49821 (not ((_ is Leaf!834) (left!1263 (c!24918 input!576)))))))

(assert (=> b!103339 (=> res!49821 e!57279)))

(declare-fun b!103340 () Bool)

(assert (=> b!103340 (= e!57279 (inv!2013 (left!1263 (c!24918 input!576))))))

(assert (= (and d!24816 c!25020) b!103338))

(assert (= (and d!24816 (not c!25020)) b!103339))

(assert (= (and b!103339 (not res!49821)) b!103340))

(declare-fun m!89796 () Bool)

(assert (=> b!103338 m!89796))

(declare-fun m!89798 () Bool)

(assert (=> b!103340 m!89798))

(assert (=> b!103086 d!24816))

(declare-fun d!24818 () Bool)

(declare-fun c!25021 () Bool)

(assert (=> d!24818 (= c!25021 ((_ is Node!518) (right!1593 (c!24918 input!576))))))

(declare-fun e!57280 () Bool)

(assert (=> d!24818 (= (inv!2008 (right!1593 (c!24918 input!576))) e!57280)))

(declare-fun b!103341 () Bool)

(assert (=> b!103341 (= e!57280 (inv!2012 (right!1593 (c!24918 input!576))))))

(declare-fun b!103342 () Bool)

(declare-fun e!57281 () Bool)

(assert (=> b!103342 (= e!57280 e!57281)))

(declare-fun res!49822 () Bool)

(assert (=> b!103342 (= res!49822 (not ((_ is Leaf!834) (right!1593 (c!24918 input!576)))))))

(assert (=> b!103342 (=> res!49822 e!57281)))

(declare-fun b!103343 () Bool)

(assert (=> b!103343 (= e!57281 (inv!2013 (right!1593 (c!24918 input!576))))))

(assert (= (and d!24818 c!25021) b!103341))

(assert (= (and d!24818 (not c!25021)) b!103342))

(assert (= (and b!103342 (not res!49822)) b!103343))

(declare-fun m!89800 () Bool)

(assert (=> b!103341 m!89800))

(declare-fun m!89802 () Bool)

(assert (=> b!103343 m!89802))

(assert (=> b!103086 d!24818))

(assert (=> b!103025 d!24810))

(assert (=> b!103025 d!24798))

(assert (=> b!103025 d!24694))

(declare-fun d!24820 () Bool)

(declare-fun e!57294 () Bool)

(assert (=> d!24820 e!57294))

(declare-fun res!49831 () Bool)

(assert (=> d!24820 (=> (not res!49831) (not e!57294))))

(declare-fun isBalanced!141 (Conc!519) Bool)

(declare-fun prepend!135 (Conc!519 Token!470) Conc!519)

(assert (=> d!24820 (= res!49831 (isBalanced!141 (prepend!135 (c!24920 (_1!1110 lt!28635)) (_1!1113 (v!12992 lt!28634)))))))

(declare-fun lt!28717 () BalanceConc!1042)

(assert (=> d!24820 (= lt!28717 (BalanceConc!1043 (prepend!135 (c!24920 (_1!1110 lt!28635)) (_1!1113 (v!12992 lt!28634)))))))

(assert (=> d!24820 (= (prepend!133 (_1!1110 lt!28635) (_1!1113 (v!12992 lt!28634))) lt!28717)))

(declare-fun b!103372 () Bool)

(assert (=> b!103372 (= e!57294 (= (list!684 lt!28717) (Cons!1654 (_1!1113 (v!12992 lt!28634)) (list!684 (_1!1110 lt!28635)))))))

(assert (= (and d!24820 res!49831) b!103372))

(declare-fun m!89826 () Bool)

(assert (=> d!24820 m!89826))

(assert (=> d!24820 m!89826))

(declare-fun m!89828 () Bool)

(assert (=> d!24820 m!89828))

(declare-fun m!89830 () Bool)

(assert (=> b!103372 m!89830))

(declare-fun m!89832 () Bool)

(assert (=> b!103372 m!89832))

(assert (=> b!103023 d!24820))

(declare-fun b!103380 () Bool)

(declare-fun e!57300 () Bool)

(declare-fun e!57302 () Bool)

(assert (=> b!103380 (= e!57300 e!57302)))

(declare-fun res!49833 () Bool)

(declare-fun lt!28718 () tuple2!1806)

(assert (=> b!103380 (= res!49833 (< (size!1466 (_2!1110 lt!28718)) (size!1466 (_2!1113 (v!12992 lt!28634)))))))

(assert (=> b!103380 (=> (not res!49833) (not e!57302))))

(declare-fun b!103381 () Bool)

(declare-fun e!57298 () tuple2!1806)

(declare-fun lt!28720 () tuple2!1806)

(declare-fun lt!28719 () Option!188)

(assert (=> b!103381 (= e!57298 (tuple2!1807 (prepend!133 (_1!1110 lt!28720) (_1!1113 (v!12992 lt!28719))) (_2!1110 lt!28720)))))

(assert (=> b!103381 (= lt!28720 (lexRec!54 thiss!11428 rules!1152 (_2!1113 (v!12992 lt!28719))))))

(declare-fun b!103382 () Bool)

(assert (=> b!103382 (= e!57302 (not (isEmpty!756 (_1!1110 lt!28718))))))

(declare-fun e!57299 () Bool)

(declare-fun b!103383 () Bool)

(assert (=> b!103383 (= e!57299 (= (list!685 (_2!1110 lt!28718)) (_2!1114 (lexList!77 thiss!11428 rules!1152 (list!685 (_2!1113 (v!12992 lt!28634)))))))))

(declare-fun d!24822 () Bool)

(assert (=> d!24822 e!57299))

(declare-fun res!49834 () Bool)

(assert (=> d!24822 (=> (not res!49834) (not e!57299))))

(assert (=> d!24822 (= res!49834 e!57300)))

(declare-fun c!25025 () Bool)

(assert (=> d!24822 (= c!25025 (> (size!1467 (_1!1110 lt!28718)) 0))))

(assert (=> d!24822 (= lt!28718 e!57298)))

(declare-fun c!25024 () Bool)

(assert (=> d!24822 (= c!25024 ((_ is Some!187) lt!28719))))

(assert (=> d!24822 (= lt!28719 (maxPrefixZipperSequence!52 thiss!11428 rules!1152 (_2!1113 (v!12992 lt!28634))))))

(assert (=> d!24822 (= (lexRec!54 thiss!11428 rules!1152 (_2!1113 (v!12992 lt!28634))) lt!28718)))

(declare-fun b!103384 () Bool)

(assert (=> b!103384 (= e!57300 (= (list!685 (_2!1110 lt!28718)) (list!685 (_2!1113 (v!12992 lt!28634)))))))

(declare-fun b!103385 () Bool)

(assert (=> b!103385 (= e!57298 (tuple2!1807 (BalanceConc!1043 Empty!519) (_2!1113 (v!12992 lt!28634))))))

(declare-fun b!103386 () Bool)

(declare-fun res!49832 () Bool)

(assert (=> b!103386 (=> (not res!49832) (not e!57299))))

(assert (=> b!103386 (= res!49832 (= (list!684 (_1!1110 lt!28718)) (_1!1114 (lexList!77 thiss!11428 rules!1152 (list!685 (_2!1113 (v!12992 lt!28634)))))))))

(assert (= (and d!24822 c!25024) b!103381))

(assert (= (and d!24822 (not c!25024)) b!103385))

(assert (= (and d!24822 c!25025) b!103380))

(assert (= (and d!24822 (not c!25025)) b!103384))

(assert (= (and b!103380 res!49833) b!103382))

(assert (= (and d!24822 res!49834) b!103386))

(assert (= (and b!103386 res!49832) b!103383))

(declare-fun m!89840 () Bool)

(assert (=> b!103380 m!89840))

(declare-fun m!89844 () Bool)

(assert (=> b!103380 m!89844))

(declare-fun m!89848 () Bool)

(assert (=> d!24822 m!89848))

(declare-fun m!89852 () Bool)

(assert (=> d!24822 m!89852))

(declare-fun m!89854 () Bool)

(assert (=> b!103381 m!89854))

(declare-fun m!89856 () Bool)

(assert (=> b!103381 m!89856))

(declare-fun m!89858 () Bool)

(assert (=> b!103384 m!89858))

(declare-fun m!89860 () Bool)

(assert (=> b!103384 m!89860))

(declare-fun m!89862 () Bool)

(assert (=> b!103382 m!89862))

(assert (=> b!103383 m!89858))

(assert (=> b!103383 m!89860))

(assert (=> b!103383 m!89860))

(declare-fun m!89864 () Bool)

(assert (=> b!103383 m!89864))

(declare-fun m!89866 () Bool)

(assert (=> b!103386 m!89866))

(assert (=> b!103386 m!89860))

(assert (=> b!103386 m!89860))

(assert (=> b!103386 m!89864))

(assert (=> b!103023 d!24822))

(declare-fun b!103401 () Bool)

(declare-fun e!57312 () List!1660)

(declare-fun e!57313 () List!1660)

(assert (=> b!103401 (= e!57312 e!57313)))

(declare-fun c!25027 () Bool)

(assert (=> b!103401 (= c!25027 ((_ is Leaf!835) (c!24920 (_1!1110 lt!28614))))))

(declare-fun d!24824 () Bool)

(declare-fun c!25026 () Bool)

(assert (=> d!24824 (= c!25026 ((_ is Empty!519) (c!24920 (_1!1110 lt!28614))))))

(assert (=> d!24824 (= (list!688 (c!24920 (_1!1110 lt!28614))) e!57312)))

(declare-fun b!103402 () Bool)

(assert (=> b!103402 (= e!57313 (list!693 (xs!3106 (c!24920 (_1!1110 lt!28614)))))))

(declare-fun b!103403 () Bool)

(assert (=> b!103403 (= e!57313 (++!266 (list!688 (left!1264 (c!24920 (_1!1110 lt!28614)))) (list!688 (right!1594 (c!24920 (_1!1110 lt!28614))))))))

(declare-fun b!103400 () Bool)

(assert (=> b!103400 (= e!57312 Nil!1654)))

(assert (= (and d!24824 c!25026) b!103400))

(assert (= (and d!24824 (not c!25026)) b!103401))

(assert (= (and b!103401 c!25027) b!103402))

(assert (= (and b!103401 (not c!25027)) b!103403))

(declare-fun m!89872 () Bool)

(assert (=> b!103402 m!89872))

(declare-fun m!89874 () Bool)

(assert (=> b!103403 m!89874))

(declare-fun m!89876 () Bool)

(assert (=> b!103403 m!89876))

(assert (=> b!103403 m!89874))

(assert (=> b!103403 m!89876))

(declare-fun m!89878 () Bool)

(assert (=> b!103403 m!89878))

(assert (=> d!24654 d!24824))

(declare-fun d!24826 () Bool)

(declare-fun lt!28723 () Int)

(assert (=> d!24826 (= lt!28723 (size!1468 (list!685 (_2!1110 lt!28633))))))

(declare-fun size!1473 (Conc!518) Int)

(assert (=> d!24826 (= lt!28723 (size!1473 (c!24918 (_2!1110 lt!28633))))))

(assert (=> d!24826 (= (size!1466 (_2!1110 lt!28633)) lt!28723)))

(declare-fun bs!10051 () Bool)

(assert (= bs!10051 d!24826))

(assert (=> bs!10051 m!89486))

(assert (=> bs!10051 m!89486))

(declare-fun m!89880 () Bool)

(assert (=> bs!10051 m!89880))

(declare-fun m!89882 () Bool)

(assert (=> bs!10051 m!89882))

(assert (=> b!103022 d!24826))

(declare-fun d!24828 () Bool)

(declare-fun lt!28724 () Int)

(assert (=> d!24828 (= lt!28724 (size!1468 (list!685 (BalanceConc!1041 Empty!518))))))

(assert (=> d!24828 (= lt!28724 (size!1473 (c!24918 (BalanceConc!1041 Empty!518))))))

(assert (=> d!24828 (= (size!1466 (BalanceConc!1041 Empty!518)) lt!28724)))

(declare-fun bs!10052 () Bool)

(assert (= bs!10052 d!24828))

(assert (=> bs!10052 m!89386))

(assert (=> bs!10052 m!89386))

(assert (=> bs!10052 m!89750))

(declare-fun m!89884 () Bool)

(assert (=> bs!10052 m!89884))

(assert (=> b!103022 d!24828))

(declare-fun d!24830 () Bool)

(assert (=> d!24830 true))

(declare-fun lambda!1905 () Int)

(declare-fun order!795 () Int)

(declare-fun dynLambda!516 (Int Int) Int)

(assert (=> d!24830 (< (dynLambda!515 order!793 (toValue!936 (transformation!361 (h!7052 rules!1152)))) (dynLambda!516 order!795 lambda!1905))))

(declare-fun Forall2!61 (Int) Bool)

(assert (=> d!24830 (= (equivClasses!88 (toChars!795 (transformation!361 (h!7052 rules!1152))) (toValue!936 (transformation!361 (h!7052 rules!1152)))) (Forall2!61 lambda!1905))))

(declare-fun bs!10053 () Bool)

(assert (= bs!10053 d!24830))

(declare-fun m!89886 () Bool)

(assert (=> bs!10053 m!89886))

(assert (=> b!103043 d!24830))

(declare-fun d!24832 () Bool)

(declare-fun res!49841 () Bool)

(declare-fun e!57318 () Bool)

(assert (=> d!24832 (=> (not res!49841) (not e!57318))))

(assert (=> d!24832 (= res!49841 (<= (size!1468 (list!692 (xs!3105 (c!24918 input!576)))) 512))))

(assert (=> d!24832 (= (inv!2013 (c!24918 input!576)) e!57318)))

(declare-fun b!103412 () Bool)

(declare-fun res!49842 () Bool)

(assert (=> b!103412 (=> (not res!49842) (not e!57318))))

(assert (=> b!103412 (= res!49842 (= (csize!1267 (c!24918 input!576)) (size!1468 (list!692 (xs!3105 (c!24918 input!576))))))))

(declare-fun b!103413 () Bool)

(assert (=> b!103413 (= e!57318 (and (> (csize!1267 (c!24918 input!576)) 0) (<= (csize!1267 (c!24918 input!576)) 512)))))

(assert (= (and d!24832 res!49841) b!103412))

(assert (= (and b!103412 res!49842) b!103413))

(assert (=> d!24832 m!89760))

(assert (=> d!24832 m!89760))

(declare-fun m!89888 () Bool)

(assert (=> d!24832 m!89888))

(assert (=> b!103412 m!89760))

(assert (=> b!103412 m!89760))

(assert (=> b!103412 m!89888))

(assert (=> b!103052 d!24832))

(declare-fun d!24834 () Bool)

(declare-fun res!49849 () Bool)

(declare-fun e!57321 () Bool)

(assert (=> d!24834 (=> (not res!49849) (not e!57321))))

(assert (=> d!24834 (= res!49849 (= (csize!1266 (c!24918 input!576)) (+ (size!1473 (left!1263 (c!24918 input!576))) (size!1473 (right!1593 (c!24918 input!576))))))))

(assert (=> d!24834 (= (inv!2012 (c!24918 input!576)) e!57321)))

(declare-fun b!103420 () Bool)

(declare-fun res!49850 () Bool)

(assert (=> b!103420 (=> (not res!49850) (not e!57321))))

(assert (=> b!103420 (= res!49850 (and (not (= (left!1263 (c!24918 input!576)) Empty!518)) (not (= (right!1593 (c!24918 input!576)) Empty!518))))))

(declare-fun b!103421 () Bool)

(declare-fun res!49851 () Bool)

(assert (=> b!103421 (=> (not res!49851) (not e!57321))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!103421 (= res!49851 (= (cheight!729 (c!24918 input!576)) (+ (max!0 (height!56 (left!1263 (c!24918 input!576))) (height!56 (right!1593 (c!24918 input!576)))) 1)))))

(declare-fun b!103422 () Bool)

(assert (=> b!103422 (= e!57321 (<= 0 (cheight!729 (c!24918 input!576))))))

(assert (= (and d!24834 res!49849) b!103420))

(assert (= (and b!103420 res!49850) b!103421))

(assert (= (and b!103421 res!49851) b!103422))

(declare-fun m!89890 () Bool)

(assert (=> d!24834 m!89890))

(declare-fun m!89892 () Bool)

(assert (=> d!24834 m!89892))

(assert (=> b!103421 m!89780))

(assert (=> b!103421 m!89782))

(assert (=> b!103421 m!89780))

(assert (=> b!103421 m!89782))

(declare-fun m!89894 () Bool)

(assert (=> b!103421 m!89894))

(assert (=> b!103050 d!24834))

(declare-fun b!103425 () Bool)

(declare-fun e!57323 () List!1659)

(assert (=> b!103425 (= e!57323 (list!692 (xs!3105 (c!24918 (BalanceConc!1041 Empty!518)))))))

(declare-fun b!103424 () Bool)

(declare-fun e!57322 () List!1659)

(assert (=> b!103424 (= e!57322 e!57323)))

(declare-fun c!25029 () Bool)

(assert (=> b!103424 (= c!25029 ((_ is Leaf!834) (c!24918 (BalanceConc!1041 Empty!518))))))

(declare-fun b!103426 () Bool)

(assert (=> b!103426 (= e!57323 (++!264 (list!689 (left!1263 (c!24918 (BalanceConc!1041 Empty!518)))) (list!689 (right!1593 (c!24918 (BalanceConc!1041 Empty!518))))))))

(declare-fun b!103423 () Bool)

(assert (=> b!103423 (= e!57322 Nil!1653)))

(declare-fun d!24836 () Bool)

(declare-fun c!25028 () Bool)

(assert (=> d!24836 (= c!25028 ((_ is Empty!518) (c!24918 (BalanceConc!1041 Empty!518))))))

(assert (=> d!24836 (= (list!689 (c!24918 (BalanceConc!1041 Empty!518))) e!57322)))

(assert (= (and d!24836 c!25028) b!103423))

(assert (= (and d!24836 (not c!25028)) b!103424))

(assert (= (and b!103424 c!25029) b!103425))

(assert (= (and b!103424 (not c!25029)) b!103426))

(declare-fun m!89896 () Bool)

(assert (=> b!103425 m!89896))

(declare-fun m!89898 () Bool)

(assert (=> b!103426 m!89898))

(declare-fun m!89900 () Bool)

(assert (=> b!103426 m!89900))

(assert (=> b!103426 m!89898))

(assert (=> b!103426 m!89900))

(declare-fun m!89902 () Bool)

(assert (=> b!103426 m!89902))

(assert (=> d!24694 d!24836))

(declare-fun d!24838 () Bool)

(declare-fun lt!28727 () Int)

(assert (=> d!24838 (= lt!28727 (size!1471 (list!684 (_1!1110 lt!28633))))))

(declare-fun size!1474 (Conc!519) Int)

(assert (=> d!24838 (= lt!28727 (size!1474 (c!24920 (_1!1110 lt!28633))))))

(assert (=> d!24838 (= (size!1467 (_1!1110 lt!28633)) lt!28727)))

(declare-fun bs!10054 () Bool)

(assert (= bs!10054 d!24838))

(assert (=> bs!10054 m!89492))

(assert (=> bs!10054 m!89492))

(declare-fun m!89904 () Bool)

(assert (=> bs!10054 m!89904))

(declare-fun m!89906 () Bool)

(assert (=> bs!10054 m!89906))

(assert (=> d!24660 d!24838))

(declare-fun b!103444 () Bool)

(declare-fun e!57339 () Option!188)

(declare-fun call!4442 () Option!188)

(assert (=> b!103444 (= e!57339 call!4442)))

(declare-fun b!103445 () Bool)

(declare-fun e!57341 () Bool)

(declare-fun e!57340 () Bool)

(assert (=> b!103445 (= e!57341 e!57340)))

(declare-fun res!49867 () Bool)

(assert (=> b!103445 (=> (not res!49867) (not e!57340))))

(declare-fun lt!28748 () Option!188)

(declare-fun get!423 (Option!188) tuple2!1812)

(declare-fun get!424 (Option!190) tuple2!1818)

(declare-fun maxPrefixZipper!13 (LexerInterface!253 List!1661 List!1659) Option!190)

(assert (=> b!103445 (= res!49867 (= (_1!1113 (get!423 lt!28748)) (_1!1116 (get!424 (maxPrefixZipper!13 thiss!11428 rules!1152 (list!685 (BalanceConc!1041 Empty!518)))))))))

(declare-fun b!103446 () Bool)

(declare-fun e!57337 () Bool)

(declare-fun e!57338 () Bool)

(assert (=> b!103446 (= e!57337 e!57338)))

(declare-fun res!49865 () Bool)

(assert (=> b!103446 (=> res!49865 e!57338)))

(declare-fun isDefined!63 (Option!188) Bool)

(assert (=> b!103446 (= res!49865 (not (isDefined!63 lt!28748)))))

(declare-fun b!103447 () Bool)

(assert (=> b!103447 (= e!57340 (= (list!685 (_2!1113 (get!423 lt!28748))) (_2!1116 (get!424 (maxPrefixZipper!13 thiss!11428 rules!1152 (list!685 (BalanceConc!1041 Empty!518)))))))))

(declare-fun bm!4437 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!14 (LexerInterface!253 Rule!522 BalanceConc!1040) Option!188)

(assert (=> bm!4437 (= call!4442 (maxPrefixOneRuleZipperSequence!14 thiss!11428 (h!7052 rules!1152) (BalanceConc!1041 Empty!518)))))

(declare-fun b!103448 () Bool)

(declare-fun res!49868 () Bool)

(assert (=> b!103448 (=> (not res!49868) (not e!57337))))

(assert (=> b!103448 (= res!49868 e!57341)))

(declare-fun res!49864 () Bool)

(assert (=> b!103448 (=> res!49864 e!57341)))

(assert (=> b!103448 (= res!49864 (not (isDefined!63 lt!28748)))))

(declare-fun b!103449 () Bool)

(declare-fun lt!28742 () Option!188)

(declare-fun lt!28745 () Option!188)

(assert (=> b!103449 (= e!57339 (ite (and ((_ is None!187) lt!28742) ((_ is None!187) lt!28745)) None!187 (ite ((_ is None!187) lt!28745) lt!28742 (ite ((_ is None!187) lt!28742) lt!28745 (ite (>= (size!1462 (_1!1113 (v!12992 lt!28742))) (size!1462 (_1!1113 (v!12992 lt!28745)))) lt!28742 lt!28745)))))))

(assert (=> b!103449 (= lt!28742 call!4442)))

(assert (=> b!103449 (= lt!28745 (maxPrefixZipperSequence!52 thiss!11428 (t!21330 rules!1152) (BalanceConc!1041 Empty!518)))))

(declare-fun b!103450 () Bool)

(declare-fun e!57336 () Bool)

(assert (=> b!103450 (= e!57338 e!57336)))

(declare-fun res!49869 () Bool)

(assert (=> b!103450 (=> (not res!49869) (not e!57336))))

(assert (=> b!103450 (= res!49869 (= (_1!1113 (get!423 lt!28748)) (_1!1116 (get!424 (maxPrefix!89 thiss!11428 rules!1152 (list!685 (BalanceConc!1041 Empty!518)))))))))

(declare-fun b!103443 () Bool)

(assert (=> b!103443 (= e!57336 (= (list!685 (_2!1113 (get!423 lt!28748))) (_2!1116 (get!424 (maxPrefix!89 thiss!11428 rules!1152 (list!685 (BalanceConc!1041 Empty!518)))))))))

(declare-fun d!24840 () Bool)

(assert (=> d!24840 e!57337))

(declare-fun res!49866 () Bool)

(assert (=> d!24840 (=> (not res!49866) (not e!57337))))

(declare-fun isDefined!64 (Option!190) Bool)

(assert (=> d!24840 (= res!49866 (= (isDefined!63 lt!28748) (isDefined!64 (maxPrefixZipper!13 thiss!11428 rules!1152 (list!685 (BalanceConc!1041 Empty!518))))))))

(assert (=> d!24840 (= lt!28748 e!57339)))

(declare-fun c!25032 () Bool)

(assert (=> d!24840 (= c!25032 (and ((_ is Cons!1655) rules!1152) ((_ is Nil!1655) (t!21330 rules!1152))))))

(declare-datatypes ((Unit!1102 0))(
  ( (Unit!1103) )
))
(declare-fun lt!28746 () Unit!1102)

(declare-fun lt!28747 () Unit!1102)

(assert (=> d!24840 (= lt!28746 lt!28747)))

(declare-fun lt!28743 () List!1659)

(declare-fun lt!28744 () List!1659)

(declare-fun isPrefix!47 (List!1659 List!1659) Bool)

(assert (=> d!24840 (isPrefix!47 lt!28743 lt!28744)))

(declare-fun lemmaIsPrefixRefl!47 (List!1659 List!1659) Unit!1102)

(assert (=> d!24840 (= lt!28747 (lemmaIsPrefixRefl!47 lt!28743 lt!28744))))

(assert (=> d!24840 (= lt!28744 (list!685 (BalanceConc!1041 Empty!518)))))

(assert (=> d!24840 (= lt!28743 (list!685 (BalanceConc!1041 Empty!518)))))

(assert (=> d!24840 (rulesValidInductive!78 thiss!11428 rules!1152)))

(assert (=> d!24840 (= (maxPrefixZipperSequence!52 thiss!11428 rules!1152 (BalanceConc!1041 Empty!518)) lt!28748)))

(assert (= (and d!24840 c!25032) b!103444))

(assert (= (and d!24840 (not c!25032)) b!103449))

(assert (= (or b!103444 b!103449) bm!4437))

(assert (= (and d!24840 res!49866) b!103448))

(assert (= (and b!103448 (not res!49864)) b!103445))

(assert (= (and b!103445 res!49867) b!103447))

(assert (= (and b!103448 res!49868) b!103446))

(assert (= (and b!103446 (not res!49865)) b!103450))

(assert (= (and b!103450 res!49869) b!103443))

(declare-fun m!89908 () Bool)

(assert (=> b!103450 m!89908))

(assert (=> b!103450 m!89386))

(assert (=> b!103450 m!89386))

(assert (=> b!103450 m!89754))

(assert (=> b!103450 m!89754))

(declare-fun m!89910 () Bool)

(assert (=> b!103450 m!89910))

(assert (=> b!103443 m!89908))

(declare-fun m!89912 () Bool)

(assert (=> b!103443 m!89912))

(assert (=> b!103443 m!89386))

(assert (=> b!103443 m!89386))

(assert (=> b!103443 m!89754))

(assert (=> b!103443 m!89754))

(assert (=> b!103443 m!89910))

(declare-fun m!89914 () Bool)

(assert (=> b!103449 m!89914))

(assert (=> b!103445 m!89908))

(assert (=> b!103445 m!89386))

(assert (=> b!103445 m!89386))

(declare-fun m!89916 () Bool)

(assert (=> b!103445 m!89916))

(assert (=> b!103445 m!89916))

(declare-fun m!89918 () Bool)

(assert (=> b!103445 m!89918))

(declare-fun m!89920 () Bool)

(assert (=> bm!4437 m!89920))

(assert (=> d!24840 m!89386))

(assert (=> d!24840 m!89916))

(assert (=> d!24840 m!89792))

(assert (=> d!24840 m!89916))

(declare-fun m!89922 () Bool)

(assert (=> d!24840 m!89922))

(assert (=> d!24840 m!89386))

(declare-fun m!89924 () Bool)

(assert (=> d!24840 m!89924))

(declare-fun m!89926 () Bool)

(assert (=> d!24840 m!89926))

(declare-fun m!89928 () Bool)

(assert (=> d!24840 m!89928))

(assert (=> b!103446 m!89924))

(assert (=> b!103448 m!89924))

(assert (=> b!103447 m!89386))

(assert (=> b!103447 m!89916))

(assert (=> b!103447 m!89908))

(assert (=> b!103447 m!89912))

(assert (=> b!103447 m!89386))

(assert (=> b!103447 m!89916))

(assert (=> b!103447 m!89918))

(assert (=> d!24660 d!24840))

(declare-fun d!24842 () Bool)

(declare-fun res!49874 () Bool)

(declare-fun e!57346 () Bool)

(assert (=> d!24842 (=> res!49874 e!57346)))

(assert (=> d!24842 (= res!49874 ((_ is Nil!1655) rules!1152))))

(assert (=> d!24842 (= (noDuplicateTag!101 thiss!11428 rules!1152 Nil!1657) e!57346)))

(declare-fun b!103455 () Bool)

(declare-fun e!57347 () Bool)

(assert (=> b!103455 (= e!57346 e!57347)))

(declare-fun res!49875 () Bool)

(assert (=> b!103455 (=> (not res!49875) (not e!57347))))

(declare-fun contains!271 (List!1663 String!2147) Bool)

(assert (=> b!103455 (= res!49875 (not (contains!271 Nil!1657 (tag!539 (h!7052 rules!1152)))))))

(declare-fun b!103456 () Bool)

(assert (=> b!103456 (= e!57347 (noDuplicateTag!101 thiss!11428 (t!21330 rules!1152) (Cons!1657 (tag!539 (h!7052 rules!1152)) Nil!1657)))))

(assert (= (and d!24842 (not res!49874)) b!103455))

(assert (= (and b!103455 res!49875) b!103456))

(declare-fun m!89930 () Bool)

(assert (=> b!103455 m!89930))

(declare-fun m!89932 () Bool)

(assert (=> b!103456 m!89932))

(assert (=> b!102923 d!24842))

(declare-fun e!57348 () Bool)

(assert (=> b!103077 (= tp!57795 e!57348)))

(declare-fun b!103457 () Bool)

(assert (=> b!103457 (= e!57348 tp_is_empty!777)))

(declare-fun b!103458 () Bool)

(declare-fun tp!57849 () Bool)

(declare-fun tp!57851 () Bool)

(assert (=> b!103458 (= e!57348 (and tp!57849 tp!57851))))

(declare-fun b!103460 () Bool)

(declare-fun tp!57852 () Bool)

(declare-fun tp!57848 () Bool)

(assert (=> b!103460 (= e!57348 (and tp!57852 tp!57848))))

(declare-fun b!103459 () Bool)

(declare-fun tp!57850 () Bool)

(assert (=> b!103459 (= e!57348 tp!57850)))

(assert (= (and b!103077 ((_ is ElementMatch!429) (regOne!1371 (regex!361 (h!7052 rules!1152))))) b!103457))

(assert (= (and b!103077 ((_ is Concat!781) (regOne!1371 (regex!361 (h!7052 rules!1152))))) b!103458))

(assert (= (and b!103077 ((_ is Star!429) (regOne!1371 (regex!361 (h!7052 rules!1152))))) b!103459))

(assert (= (and b!103077 ((_ is Union!429) (regOne!1371 (regex!361 (h!7052 rules!1152))))) b!103460))

(declare-fun e!57349 () Bool)

(assert (=> b!103077 (= tp!57791 e!57349)))

(declare-fun b!103461 () Bool)

(assert (=> b!103461 (= e!57349 tp_is_empty!777)))

(declare-fun b!103462 () Bool)

(declare-fun tp!57854 () Bool)

(declare-fun tp!57856 () Bool)

(assert (=> b!103462 (= e!57349 (and tp!57854 tp!57856))))

(declare-fun b!103464 () Bool)

(declare-fun tp!57857 () Bool)

(declare-fun tp!57853 () Bool)

(assert (=> b!103464 (= e!57349 (and tp!57857 tp!57853))))

(declare-fun b!103463 () Bool)

(declare-fun tp!57855 () Bool)

(assert (=> b!103463 (= e!57349 tp!57855)))

(assert (= (and b!103077 ((_ is ElementMatch!429) (regTwo!1371 (regex!361 (h!7052 rules!1152))))) b!103461))

(assert (= (and b!103077 ((_ is Concat!781) (regTwo!1371 (regex!361 (h!7052 rules!1152))))) b!103462))

(assert (= (and b!103077 ((_ is Star!429) (regTwo!1371 (regex!361 (h!7052 rules!1152))))) b!103463))

(assert (= (and b!103077 ((_ is Union!429) (regTwo!1371 (regex!361 (h!7052 rules!1152))))) b!103464))

(declare-fun e!57350 () Bool)

(assert (=> b!103062 (= tp!57780 e!57350)))

(declare-fun b!103465 () Bool)

(assert (=> b!103465 (= e!57350 tp_is_empty!777)))

(declare-fun b!103466 () Bool)

(declare-fun tp!57859 () Bool)

(declare-fun tp!57861 () Bool)

(assert (=> b!103466 (= e!57350 (and tp!57859 tp!57861))))

(declare-fun b!103468 () Bool)

(declare-fun tp!57862 () Bool)

(declare-fun tp!57858 () Bool)

(assert (=> b!103468 (= e!57350 (and tp!57862 tp!57858))))

(declare-fun b!103467 () Bool)

(declare-fun tp!57860 () Bool)

(assert (=> b!103467 (= e!57350 tp!57860)))

(assert (= (and b!103062 ((_ is ElementMatch!429) (regex!361 (h!7052 (t!21330 rules!1152))))) b!103465))

(assert (= (and b!103062 ((_ is Concat!781) (regex!361 (h!7052 (t!21330 rules!1152))))) b!103466))

(assert (= (and b!103062 ((_ is Star!429) (regex!361 (h!7052 (t!21330 rules!1152))))) b!103467))

(assert (= (and b!103062 ((_ is Union!429) (regex!361 (h!7052 (t!21330 rules!1152))))) b!103468))

(declare-fun e!57351 () Bool)

(assert (=> b!103076 (= tp!57793 e!57351)))

(declare-fun b!103469 () Bool)

(assert (=> b!103469 (= e!57351 tp_is_empty!777)))

(declare-fun b!103470 () Bool)

(declare-fun tp!57864 () Bool)

(declare-fun tp!57866 () Bool)

(assert (=> b!103470 (= e!57351 (and tp!57864 tp!57866))))

(declare-fun b!103472 () Bool)

(declare-fun tp!57867 () Bool)

(declare-fun tp!57863 () Bool)

(assert (=> b!103472 (= e!57351 (and tp!57867 tp!57863))))

(declare-fun b!103471 () Bool)

(declare-fun tp!57865 () Bool)

(assert (=> b!103471 (= e!57351 tp!57865)))

(assert (= (and b!103076 ((_ is ElementMatch!429) (reg!758 (regex!361 (h!7052 rules!1152))))) b!103469))

(assert (= (and b!103076 ((_ is Concat!781) (reg!758 (regex!361 (h!7052 rules!1152))))) b!103470))

(assert (= (and b!103076 ((_ is Star!429) (reg!758 (regex!361 (h!7052 rules!1152))))) b!103471))

(assert (= (and b!103076 ((_ is Union!429) (reg!758 (regex!361 (h!7052 rules!1152))))) b!103472))

(declare-fun b!103475 () Bool)

(declare-fun b_free!3097 () Bool)

(declare-fun b_next!3097 () Bool)

(assert (=> b!103475 (= b_free!3097 (not b_next!3097))))

(declare-fun tp!57869 () Bool)

(declare-fun b_and!4615 () Bool)

(assert (=> b!103475 (= tp!57869 b_and!4615)))

(declare-fun b_free!3099 () Bool)

(declare-fun b_next!3099 () Bool)

(assert (=> b!103475 (= b_free!3099 (not b_next!3099))))

(declare-fun tp!57870 () Bool)

(declare-fun b_and!4617 () Bool)

(assert (=> b!103475 (= tp!57870 b_and!4617)))

(declare-fun e!57352 () Bool)

(assert (=> b!103475 (= e!57352 (and tp!57869 tp!57870))))

(declare-fun tp!57871 () Bool)

(declare-fun b!103474 () Bool)

(declare-fun e!57355 () Bool)

(assert (=> b!103474 (= e!57355 (and tp!57871 (inv!2002 (tag!539 (h!7052 (t!21330 (t!21330 rules!1152))))) (inv!2007 (transformation!361 (h!7052 (t!21330 (t!21330 rules!1152))))) e!57352))))

(declare-fun b!103473 () Bool)

(declare-fun e!57353 () Bool)

(declare-fun tp!57868 () Bool)

(assert (=> b!103473 (= e!57353 (and e!57355 tp!57868))))

(assert (=> b!103061 (= tp!57777 e!57353)))

(assert (= b!103474 b!103475))

(assert (= b!103473 b!103474))

(assert (= (and b!103061 ((_ is Cons!1655) (t!21330 (t!21330 rules!1152)))) b!103473))

(declare-fun m!89934 () Bool)

(assert (=> b!103474 m!89934))

(declare-fun m!89936 () Bool)

(assert (=> b!103474 m!89936))

(declare-fun b!103480 () Bool)

(declare-fun e!57358 () Bool)

(declare-fun tp!57874 () Bool)

(assert (=> b!103480 (= e!57358 (and tp_is_empty!777 tp!57874))))

(assert (=> b!103088 (= tp!57803 e!57358)))

(assert (= (and b!103088 ((_ is Cons!1653) (innerList!576 (xs!3105 (c!24918 input!576))))) b!103480))

(declare-fun e!57359 () Bool)

(assert (=> b!103075 (= tp!57792 e!57359)))

(declare-fun b!103481 () Bool)

(assert (=> b!103481 (= e!57359 tp_is_empty!777)))

(declare-fun b!103482 () Bool)

(declare-fun tp!57876 () Bool)

(declare-fun tp!57878 () Bool)

(assert (=> b!103482 (= e!57359 (and tp!57876 tp!57878))))

(declare-fun b!103484 () Bool)

(declare-fun tp!57879 () Bool)

(declare-fun tp!57875 () Bool)

(assert (=> b!103484 (= e!57359 (and tp!57879 tp!57875))))

(declare-fun b!103483 () Bool)

(declare-fun tp!57877 () Bool)

(assert (=> b!103483 (= e!57359 tp!57877)))

(assert (= (and b!103075 ((_ is ElementMatch!429) (regOne!1370 (regex!361 (h!7052 rules!1152))))) b!103481))

(assert (= (and b!103075 ((_ is Concat!781) (regOne!1370 (regex!361 (h!7052 rules!1152))))) b!103482))

(assert (= (and b!103075 ((_ is Star!429) (regOne!1370 (regex!361 (h!7052 rules!1152))))) b!103483))

(assert (= (and b!103075 ((_ is Union!429) (regOne!1370 (regex!361 (h!7052 rules!1152))))) b!103484))

(declare-fun e!57360 () Bool)

(assert (=> b!103075 (= tp!57794 e!57360)))

(declare-fun b!103485 () Bool)

(assert (=> b!103485 (= e!57360 tp_is_empty!777)))

(declare-fun b!103486 () Bool)

(declare-fun tp!57881 () Bool)

(declare-fun tp!57883 () Bool)

(assert (=> b!103486 (= e!57360 (and tp!57881 tp!57883))))

(declare-fun b!103488 () Bool)

(declare-fun tp!57884 () Bool)

(declare-fun tp!57880 () Bool)

(assert (=> b!103488 (= e!57360 (and tp!57884 tp!57880))))

(declare-fun b!103487 () Bool)

(declare-fun tp!57882 () Bool)

(assert (=> b!103487 (= e!57360 tp!57882)))

(assert (= (and b!103075 ((_ is ElementMatch!429) (regTwo!1370 (regex!361 (h!7052 rules!1152))))) b!103485))

(assert (= (and b!103075 ((_ is Concat!781) (regTwo!1370 (regex!361 (h!7052 rules!1152))))) b!103486))

(assert (= (and b!103075 ((_ is Star!429) (regTwo!1370 (regex!361 (h!7052 rules!1152))))) b!103487))

(assert (= (and b!103075 ((_ is Union!429) (regTwo!1370 (regex!361 (h!7052 rules!1152))))) b!103488))

(declare-fun b!103489 () Bool)

(declare-fun tp!57887 () Bool)

(declare-fun e!57361 () Bool)

(declare-fun tp!57885 () Bool)

(assert (=> b!103489 (= e!57361 (and (inv!2008 (left!1263 (left!1263 (c!24918 input!576)))) tp!57885 (inv!2008 (right!1593 (left!1263 (c!24918 input!576)))) tp!57887))))

(declare-fun b!103491 () Bool)

(declare-fun e!57362 () Bool)

(declare-fun tp!57886 () Bool)

(assert (=> b!103491 (= e!57362 tp!57886)))

(declare-fun b!103490 () Bool)

(assert (=> b!103490 (= e!57361 (and (inv!2014 (xs!3105 (left!1263 (c!24918 input!576)))) e!57362))))

(assert (=> b!103086 (= tp!57802 (and (inv!2008 (left!1263 (c!24918 input!576))) e!57361))))

(assert (= (and b!103086 ((_ is Node!518) (left!1263 (c!24918 input!576)))) b!103489))

(assert (= b!103490 b!103491))

(assert (= (and b!103086 ((_ is Leaf!834) (left!1263 (c!24918 input!576)))) b!103490))

(declare-fun m!89938 () Bool)

(assert (=> b!103489 m!89938))

(declare-fun m!89940 () Bool)

(assert (=> b!103489 m!89940))

(declare-fun m!89942 () Bool)

(assert (=> b!103490 m!89942))

(assert (=> b!103086 m!89528))

(declare-fun e!57363 () Bool)

(declare-fun tp!57888 () Bool)

(declare-fun tp!57890 () Bool)

(declare-fun b!103492 () Bool)

(assert (=> b!103492 (= e!57363 (and (inv!2008 (left!1263 (right!1593 (c!24918 input!576)))) tp!57888 (inv!2008 (right!1593 (right!1593 (c!24918 input!576)))) tp!57890))))

(declare-fun b!103494 () Bool)

(declare-fun e!57364 () Bool)

(declare-fun tp!57889 () Bool)

(assert (=> b!103494 (= e!57364 tp!57889)))

(declare-fun b!103493 () Bool)

(assert (=> b!103493 (= e!57363 (and (inv!2014 (xs!3105 (right!1593 (c!24918 input!576)))) e!57364))))

(assert (=> b!103086 (= tp!57804 (and (inv!2008 (right!1593 (c!24918 input!576))) e!57363))))

(assert (= (and b!103086 ((_ is Node!518) (right!1593 (c!24918 input!576)))) b!103492))

(assert (= b!103493 b!103494))

(assert (= (and b!103086 ((_ is Leaf!834) (right!1593 (c!24918 input!576)))) b!103493))

(declare-fun m!89944 () Bool)

(assert (=> b!103492 m!89944))

(declare-fun m!89946 () Bool)

(assert (=> b!103492 m!89946))

(declare-fun m!89948 () Bool)

(assert (=> b!103493 m!89948))

(assert (=> b!103086 m!89530))

(check-sat (not b!103466) (not b!103299) b_and!4607 (not b!103489) (not b!103443) (not b!103293) (not d!24834) (not d!24826) (not b!103216) (not d!24804) (not d!24746) (not d!24814) (not b!103470) (not b!103295) (not b!103472) (not b!103319) (not d!24758) (not b!103372) (not b!103181) tp_is_empty!777 (not b!103487) (not b!103446) (not b!103482) (not b!103426) (not b_next!3089) (not b!103448) (not b!103484) (not b!103341) (not b!103488) (not b!103412) (not b!103473) (not b!103315) (not d!24838) (not b!103474) (not b_next!3083) (not b!103383) (not b!103447) (not b!103386) (not b!103384) b_and!4617 (not d!24796) (not b!103204) (not b!103178) (not b!103203) (not b_next!3099) (not b!103493) (not b_next!3091) (not b!103402) (not b!103425) b_and!4599 (not b!103086) (not b!103467) (not b!103491) (not b!103456) b_and!4609 (not b!103455) (not b!103301) (not b!103460) (not b!103458) (not b_next!3097) (not b!103468) (not b!103462) (not d!24822) (not b!103180) (not b!103421) (not b!103464) b_and!4615 (not b!103381) (not b!103449) (not b!103340) (not b!103300) (not d!24832) (not b!103314) (not b!103463) (not b!103480) (not b!103174) (not b!103459) (not d!24840) (not d!24830) (not d!24828) (not b!103296) (not b!103490) (not b!103188) (not b!103316) (not b!103450) (not d!24820) (not b!103403) (not b!103483) (not b!103338) (not b!103494) (not b!103318) (not b!103445) (not d!24806) (not b!103317) (not bm!4437) (not d!24810) b_and!4601 (not b!103192) (not b!103215) (not b!103343) (not b!103492) (not b!103190) (not d!24798) (not b!103486) (not b!103380) (not b_next!3081) (not b!103382) (not b!103176) (not b!103471) (not d!24812))
(check-sat (not b_next!3089) b_and!4607 (not b_next!3083) b_and!4617 b_and!4615 b_and!4601 (not b_next!3081) (not b_next!3099) (not b_next!3091) b_and!4599 b_and!4609 (not b_next!3097))
