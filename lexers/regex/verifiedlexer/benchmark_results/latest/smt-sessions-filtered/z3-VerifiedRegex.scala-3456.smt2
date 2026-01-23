; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!199236 () Bool)

(assert start!199236)

(declare-fun b!2026009 () Bool)

(declare-fun b_free!56513 () Bool)

(declare-fun b_next!57217 () Bool)

(assert (=> b!2026009 (= b_free!56513 (not b_next!57217))))

(declare-fun tp!602810 () Bool)

(declare-fun b_and!161137 () Bool)

(assert (=> b!2026009 (= tp!602810 b_and!161137)))

(declare-fun b_free!56515 () Bool)

(declare-fun b_next!57219 () Bool)

(assert (=> b!2026009 (= b_free!56515 (not b_next!57219))))

(declare-fun tp!602802 () Bool)

(declare-fun b_and!161139 () Bool)

(assert (=> b!2026009 (= tp!602802 b_and!161139)))

(declare-fun b!2026024 () Bool)

(declare-fun b_free!56517 () Bool)

(declare-fun b_next!57221 () Bool)

(assert (=> b!2026024 (= b_free!56517 (not b_next!57221))))

(declare-fun tp!602800 () Bool)

(declare-fun b_and!161141 () Bool)

(assert (=> b!2026024 (= tp!602800 b_and!161141)))

(declare-fun b_free!56519 () Bool)

(declare-fun b_next!57223 () Bool)

(assert (=> b!2026024 (= b_free!56519 (not b_next!57223))))

(declare-fun tp!602808 () Bool)

(declare-fun b_and!161143 () Bool)

(assert (=> b!2026024 (= tp!602808 b_and!161143)))

(declare-fun b!2026018 () Bool)

(declare-fun b_free!56521 () Bool)

(declare-fun b_next!57225 () Bool)

(assert (=> b!2026018 (= b_free!56521 (not b_next!57225))))

(declare-fun tp!602803 () Bool)

(declare-fun b_and!161145 () Bool)

(assert (=> b!2026018 (= tp!602803 b_and!161145)))

(declare-fun b_free!56523 () Bool)

(declare-fun b_next!57227 () Bool)

(assert (=> b!2026018 (= b_free!56523 (not b_next!57227))))

(declare-fun tp!602807 () Bool)

(declare-fun b_and!161147 () Bool)

(assert (=> b!2026018 (= tp!602807 b_and!161147)))

(declare-fun b!2026003 () Bool)

(declare-fun res!888310 () Bool)

(declare-fun e!1279774 () Bool)

(assert (=> b!2026003 (=> (not res!888310) (not e!1279774))))

(declare-datatypes ((List!22272 0))(
  ( (Nil!22190) (Cons!22190 (h!27591 (_ BitVec 16)) (t!189883 List!22272)) )
))
(declare-datatypes ((TokenValue!4124 0))(
  ( (FloatLiteralValue!8248 (text!29313 List!22272)) (TokenValueExt!4123 (__x!13746 Int)) (Broken!20620 (value!125223 List!22272)) (Object!4205) (End!4124) (Def!4124) (Underscore!4124) (Match!4124) (Else!4124) (Error!4124) (Case!4124) (If!4124) (Extends!4124) (Abstract!4124) (Class!4124) (Val!4124) (DelimiterValue!8248 (del!4184 List!22272)) (KeywordValue!4130 (value!125224 List!22272)) (CommentValue!8248 (value!125225 List!22272)) (WhitespaceValue!8248 (value!125226 List!22272)) (IndentationValue!4124 (value!125227 List!22272)) (String!25737) (Int32!4124) (Broken!20621 (value!125228 List!22272)) (Boolean!4125) (Unit!36841) (OperatorValue!4127 (op!4184 List!22272)) (IdentifierValue!8248 (value!125229 List!22272)) (IdentifierValue!8249 (value!125230 List!22272)) (WhitespaceValue!8249 (value!125231 List!22272)) (True!8248) (False!8248) (Broken!20622 (value!125232 List!22272)) (Broken!20623 (value!125233 List!22272)) (True!8249) (RightBrace!4124) (RightBracket!4124) (Colon!4124) (Null!4124) (Comma!4124) (LeftBracket!4124) (False!8249) (LeftBrace!4124) (ImaginaryLiteralValue!4124 (text!29314 List!22272)) (StringLiteralValue!12372 (value!125234 List!22272)) (EOFValue!4124 (value!125235 List!22272)) (IdentValue!4124 (value!125236 List!22272)) (DelimiterValue!8249 (value!125237 List!22272)) (DedentValue!4124 (value!125238 List!22272)) (NewLineValue!4124 (value!125239 List!22272)) (IntegerValue!12372 (value!125240 (_ BitVec 32)) (text!29315 List!22272)) (IntegerValue!12373 (value!125241 Int) (text!29316 List!22272)) (Times!4124) (Or!4124) (Equal!4124) (Minus!4124) (Broken!20624 (value!125242 List!22272)) (And!4124) (Div!4124) (LessEqual!4124) (Mod!4124) (Concat!9537) (Not!4124) (Plus!4124) (SpaceValue!4124 (value!125243 List!22272)) (IntegerValue!12374 (value!125244 Int) (text!29317 List!22272)) (StringLiteralValue!12373 (text!29318 List!22272)) (FloatLiteralValue!8249 (text!29319 List!22272)) (BytesLiteralValue!4124 (value!125245 List!22272)) (CommentValue!8249 (value!125246 List!22272)) (StringLiteralValue!12374 (value!125247 List!22272)) (ErrorTokenValue!4124 (msg!4185 List!22272)) )
))
(declare-datatypes ((C!10972 0))(
  ( (C!10973 (val!6438 Int)) )
))
(declare-datatypes ((List!22273 0))(
  ( (Nil!22191) (Cons!22191 (h!27592 C!10972) (t!189884 List!22273)) )
))
(declare-datatypes ((String!25738 0))(
  ( (String!25739 (value!125248 String)) )
))
(declare-datatypes ((IArray!14849 0))(
  ( (IArray!14850 (innerList!7482 List!22273)) )
))
(declare-datatypes ((Conc!7422 0))(
  ( (Node!7422 (left!17654 Conc!7422) (right!17984 Conc!7422) (csize!15074 Int) (cheight!7633 Int)) (Leaf!10879 (xs!10324 IArray!14849) (csize!15075 Int)) (Empty!7422) )
))
(declare-datatypes ((BalanceConc!14660 0))(
  ( (BalanceConc!14661 (c!327830 Conc!7422)) )
))
(declare-datatypes ((TokenValueInjection!7832 0))(
  ( (TokenValueInjection!7833 (toValue!5661 Int) (toChars!5520 Int)) )
))
(declare-datatypes ((Regex!5413 0))(
  ( (ElementMatch!5413 (c!327831 C!10972)) (Concat!9538 (regOne!11338 Regex!5413) (regTwo!11338 Regex!5413)) (EmptyExpr!5413) (Star!5413 (reg!5742 Regex!5413)) (EmptyLang!5413) (Union!5413 (regOne!11339 Regex!5413) (regTwo!11339 Regex!5413)) )
))
(declare-datatypes ((Rule!7776 0))(
  ( (Rule!7777 (regex!3988 Regex!5413) (tag!4470 String!25738) (isSeparator!3988 Bool) (transformation!3988 TokenValueInjection!7832)) )
))
(declare-datatypes ((List!22274 0))(
  ( (Nil!22192) (Cons!22192 (h!27593 Rule!7776) (t!189885 List!22274)) )
))
(declare-fun rules!3198 () List!22274)

(declare-fun sepAndNonSepRulesDisjointChars!1086 (List!22274 List!22274) Bool)

(assert (=> b!2026003 (= res!888310 (sepAndNonSepRulesDisjointChars!1086 rules!3198 rules!3198))))

(declare-fun b!2026004 () Bool)

(declare-fun res!888300 () Bool)

(declare-fun e!1279780 () Bool)

(assert (=> b!2026004 (=> res!888300 e!1279780)))

(declare-datatypes ((LexerInterface!3601 0))(
  ( (LexerInterfaceExt!3598 (__x!13747 Int)) (Lexer!3599) )
))
(declare-fun thiss!23328 () LexerInterface!3601)

(declare-datatypes ((Token!7528 0))(
  ( (Token!7529 (value!125249 TokenValue!4124) (rule!6217 Rule!7776) (size!17332 Int) (originalCharacters!4795 List!22273)) )
))
(declare-datatypes ((List!22275 0))(
  ( (Nil!22193) (Cons!22193 (h!27594 Token!7528) (t!189886 List!22275)) )
))
(declare-fun tokens!598 () List!22275)

(declare-fun rulesProduceIndividualToken!1773 (LexerInterface!3601 List!22274 Token!7528) Bool)

(assert (=> b!2026004 (= res!888300 (not (rulesProduceIndividualToken!1773 thiss!23328 rules!3198 (h!27594 tokens!598))))))

(declare-fun b!2026005 () Bool)

(declare-fun res!888307 () Bool)

(assert (=> b!2026005 (=> (not res!888307) (not e!1279774))))

(declare-fun lambda!76423 () Int)

(declare-fun forall!4720 (List!22275 Int) Bool)

(assert (=> b!2026005 (= res!888307 (forall!4720 tokens!598 lambda!76423))))

(declare-fun b!2026006 () Bool)

(declare-fun res!888301 () Bool)

(assert (=> b!2026006 (=> res!888301 e!1279780)))

(declare-datatypes ((tuple2!20868 0))(
  ( (tuple2!20869 (_1!11903 Token!7528) (_2!11903 List!22273)) )
))
(declare-fun lt!760850 () tuple2!20868)

(declare-fun isEmpty!13824 (List!22273) Bool)

(assert (=> b!2026006 (= res!888301 (not (isEmpty!13824 (_2!11903 lt!760850))))))

(declare-fun b!2026007 () Bool)

(declare-fun e!1279792 () Bool)

(declare-fun lt!760866 () Rule!7776)

(assert (=> b!2026007 (= e!1279792 (= (rule!6217 (h!27594 tokens!598)) lt!760866))))

(declare-fun b!2026008 () Bool)

(declare-fun e!1279783 () Bool)

(assert (=> b!2026008 (= e!1279783 e!1279792)))

(declare-fun res!888312 () Bool)

(assert (=> b!2026008 (=> (not res!888312) (not e!1279792))))

(declare-fun lt!760863 () List!22273)

(declare-fun matchR!2679 (Regex!5413 List!22273) Bool)

(assert (=> b!2026008 (= res!888312 (matchR!2679 (regex!3988 lt!760866) lt!760863))))

(declare-datatypes ((Option!4659 0))(
  ( (None!4658) (Some!4658 (v!26967 Rule!7776)) )
))
(declare-fun lt!760858 () Option!4659)

(declare-fun get!7044 (Option!4659) Rule!7776)

(assert (=> b!2026008 (= lt!760866 (get!7044 lt!760858))))

(declare-fun res!888304 () Bool)

(assert (=> start!199236 (=> (not res!888304) (not e!1279774))))

(get-info :version)

(assert (=> start!199236 (= res!888304 ((_ is Lexer!3599) thiss!23328))))

(assert (=> start!199236 e!1279774))

(assert (=> start!199236 true))

(declare-fun e!1279790 () Bool)

(assert (=> start!199236 e!1279790))

(declare-fun e!1279784 () Bool)

(assert (=> start!199236 e!1279784))

(declare-fun separatorToken!354 () Token!7528)

(declare-fun e!1279776 () Bool)

(declare-fun inv!29369 (Token!7528) Bool)

(assert (=> start!199236 (and (inv!29369 separatorToken!354) e!1279776)))

(declare-fun e!1279786 () Bool)

(assert (=> b!2026009 (= e!1279786 (and tp!602810 tp!602802))))

(declare-fun e!1279793 () Bool)

(declare-fun tp!602811 () Bool)

(declare-fun b!2026010 () Bool)

(declare-fun inv!29366 (String!25738) Bool)

(declare-fun inv!29370 (TokenValueInjection!7832) Bool)

(assert (=> b!2026010 (= e!1279793 (and tp!602811 (inv!29366 (tag!4470 (rule!6217 separatorToken!354))) (inv!29370 (transformation!3988 (rule!6217 separatorToken!354))) e!1279786))))

(declare-fun b!2026011 () Bool)

(declare-fun e!1279782 () Bool)

(declare-fun lt!760849 () List!22273)

(declare-fun lt!760846 () List!22273)

(declare-fun contains!4091 (List!22273 C!10972) Bool)

(declare-fun head!4576 (List!22273) C!10972)

(assert (=> b!2026011 (= e!1279782 (not (contains!4091 lt!760849 (head!4576 lt!760846))))))

(declare-fun b!2026012 () Bool)

(declare-fun e!1279772 () Bool)

(declare-fun e!1279778 () Bool)

(assert (=> b!2026012 (= e!1279772 e!1279778)))

(declare-fun res!888303 () Bool)

(assert (=> b!2026012 (=> (not res!888303) (not e!1279778))))

(declare-fun lt!760847 () Rule!7776)

(declare-fun lt!760862 () List!22273)

(assert (=> b!2026012 (= res!888303 (matchR!2679 (regex!3988 lt!760847) lt!760862))))

(declare-fun lt!760873 () Option!4659)

(assert (=> b!2026012 (= lt!760847 (get!7044 lt!760873))))

(declare-fun e!1279789 () Bool)

(declare-fun b!2026013 () Bool)

(declare-fun tp!602804 () Bool)

(assert (=> b!2026013 (= e!1279784 (and (inv!29369 (h!27594 tokens!598)) e!1279789 tp!602804))))

(declare-fun b!2026014 () Bool)

(declare-datatypes ((Unit!36842 0))(
  ( (Unit!36843) )
))
(declare-fun e!1279779 () Unit!36842)

(declare-fun Unit!36844 () Unit!36842)

(assert (=> b!2026014 (= e!1279779 Unit!36844)))

(declare-fun lt!760852 () C!10972)

(declare-fun lt!760871 () Unit!36842)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!314 (Regex!5413 List!22273 C!10972) Unit!36842)

(assert (=> b!2026014 (= lt!760871 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!314 (regex!3988 (rule!6217 separatorToken!354)) lt!760862 lt!760852))))

(declare-fun res!888318 () Bool)

(assert (=> b!2026014 (= res!888318 (not (matchR!2679 (regex!3988 (rule!6217 separatorToken!354)) lt!760862)))))

(declare-fun e!1279781 () Bool)

(assert (=> b!2026014 (=> (not res!888318) (not e!1279781))))

(assert (=> b!2026014 e!1279781))

(declare-fun b!2026015 () Bool)

(declare-fun res!888313 () Bool)

(assert (=> b!2026015 (=> res!888313 e!1279780)))

(declare-fun contains!4092 (List!22274 Rule!7776) Bool)

(assert (=> b!2026015 (= res!888313 (not (contains!4092 rules!3198 (rule!6217 separatorToken!354))))))

(declare-fun b!2026016 () Bool)

(declare-fun tp!602806 () Bool)

(declare-fun inv!21 (TokenValue!4124) Bool)

(assert (=> b!2026016 (= e!1279776 (and (inv!21 (value!125249 separatorToken!354)) e!1279793 tp!602806))))

(declare-fun b!2026017 () Bool)

(declare-fun res!888308 () Bool)

(assert (=> b!2026017 (=> (not res!888308) (not e!1279774))))

(declare-fun rulesInvariant!3208 (LexerInterface!3601 List!22274) Bool)

(assert (=> b!2026017 (= res!888308 (rulesInvariant!3208 thiss!23328 rules!3198))))

(declare-fun e!1279788 () Bool)

(assert (=> b!2026018 (= e!1279788 (and tp!602803 tp!602807))))

(declare-fun tp!602809 () Bool)

(declare-fun e!1279777 () Bool)

(declare-fun b!2026019 () Bool)

(assert (=> b!2026019 (= e!1279789 (and (inv!21 (value!125249 (h!27594 tokens!598))) e!1279777 tp!602809))))

(declare-fun b!2026020 () Bool)

(assert (=> b!2026020 (= e!1279781 false)))

(declare-fun e!1279785 () Bool)

(declare-fun b!2026021 () Bool)

(declare-fun tp!602812 () Bool)

(assert (=> b!2026021 (= e!1279785 (and tp!602812 (inv!29366 (tag!4470 (h!27593 rules!3198))) (inv!29370 (transformation!3988 (h!27593 rules!3198))) e!1279788))))

(declare-fun b!2026022 () Bool)

(declare-fun res!888316 () Bool)

(assert (=> b!2026022 (=> (not res!888316) (not e!1279774))))

(assert (=> b!2026022 (= res!888316 ((_ is Cons!22193) tokens!598))))

(declare-fun b!2026023 () Bool)

(assert (=> b!2026023 (= e!1279778 (= (rule!6217 separatorToken!354) lt!760847))))

(declare-fun e!1279787 () Bool)

(assert (=> b!2026024 (= e!1279787 (and tp!602800 tp!602808))))

(declare-fun b!2026025 () Bool)

(declare-fun Unit!36845 () Unit!36842)

(assert (=> b!2026025 (= e!1279779 Unit!36845)))

(declare-fun b!2026026 () Bool)

(declare-fun e!1279791 () Bool)

(assert (=> b!2026026 (= e!1279791 e!1279780)))

(declare-fun res!888309 () Bool)

(assert (=> b!2026026 (=> res!888309 e!1279780)))

(declare-fun lt!760864 () List!22273)

(declare-fun lt!760872 () List!22273)

(assert (=> b!2026026 (= res!888309 (or (not (= lt!760864 lt!760872)) (not (= lt!760872 lt!760863)) (not (= lt!760864 lt!760863))))))

(declare-fun printList!1120 (LexerInterface!3601 List!22275) List!22273)

(assert (=> b!2026026 (= lt!760872 (printList!1120 thiss!23328 (Cons!22193 (h!27594 tokens!598) Nil!22193)))))

(declare-fun lt!760870 () BalanceConc!14660)

(declare-fun list!9055 (BalanceConc!14660) List!22273)

(assert (=> b!2026026 (= lt!760864 (list!9055 lt!760870))))

(declare-datatypes ((IArray!14851 0))(
  ( (IArray!14852 (innerList!7483 List!22275)) )
))
(declare-datatypes ((Conc!7423 0))(
  ( (Node!7423 (left!17655 Conc!7423) (right!17985 Conc!7423) (csize!15076 Int) (cheight!7634 Int)) (Leaf!10880 (xs!10325 IArray!14851) (csize!15077 Int)) (Empty!7423) )
))
(declare-datatypes ((BalanceConc!14662 0))(
  ( (BalanceConc!14663 (c!327832 Conc!7423)) )
))
(declare-fun lt!760861 () BalanceConc!14662)

(declare-fun printTailRec!1069 (LexerInterface!3601 BalanceConc!14662 Int BalanceConc!14660) BalanceConc!14660)

(assert (=> b!2026026 (= lt!760870 (printTailRec!1069 thiss!23328 lt!760861 0 (BalanceConc!14661 Empty!7422)))))

(declare-fun print!1563 (LexerInterface!3601 BalanceConc!14662) BalanceConc!14660)

(assert (=> b!2026026 (= lt!760870 (print!1563 thiss!23328 lt!760861))))

(declare-fun singletonSeq!1964 (Token!7528) BalanceConc!14662)

(assert (=> b!2026026 (= lt!760861 (singletonSeq!1964 (h!27594 tokens!598)))))

(assert (=> b!2026026 (not (contains!4091 lt!760849 lt!760852))))

(declare-fun usedCharacters!426 (Regex!5413) List!22273)

(assert (=> b!2026026 (= lt!760849 (usedCharacters!426 (regex!3988 (rule!6217 (h!27594 tokens!598)))))))

(declare-fun lt!760855 () Unit!36842)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!98 (LexerInterface!3601 List!22274 List!22274 Rule!7776 Rule!7776 C!10972) Unit!36842)

(assert (=> b!2026026 (= lt!760855 (lemmaNonSepRuleNotContainsCharContainedInASepRule!98 thiss!23328 rules!3198 rules!3198 (rule!6217 (h!27594 tokens!598)) (rule!6217 separatorToken!354) lt!760852))))

(declare-fun lt!760869 () Unit!36842)

(assert (=> b!2026026 (= lt!760869 e!1279779)))

(declare-fun c!327829 () Bool)

(assert (=> b!2026026 (= c!327829 (not (contains!4091 (usedCharacters!426 (regex!3988 (rule!6217 separatorToken!354))) lt!760852)))))

(assert (=> b!2026026 (= lt!760852 (head!4576 lt!760862))))

(declare-fun lt!760868 () List!22273)

(declare-fun lt!760857 () List!22273)

(declare-fun ++!5997 (List!22273 List!22273) List!22273)

(assert (=> b!2026026 (= (++!5997 lt!760857 lt!760868) (++!5997 lt!760863 lt!760846))))

(assert (=> b!2026026 (= lt!760846 (++!5997 lt!760862 lt!760868))))

(assert (=> b!2026026 (= lt!760857 (++!5997 lt!760863 lt!760862))))

(declare-fun lt!760859 () Unit!36842)

(declare-fun lemmaConcatAssociativity!1253 (List!22273 List!22273 List!22273) Unit!36842)

(assert (=> b!2026026 (= lt!760859 (lemmaConcatAssociativity!1253 lt!760863 lt!760862 lt!760868))))

(declare-fun b!2026027 () Bool)

(declare-fun res!888299 () Bool)

(assert (=> b!2026027 (=> (not res!888299) (not e!1279774))))

(assert (=> b!2026027 (= res!888299 (rulesProduceIndividualToken!1773 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2026028 () Bool)

(declare-fun res!888311 () Bool)

(assert (=> b!2026028 (=> res!888311 e!1279782)))

(assert (=> b!2026028 (= res!888311 (isEmpty!13824 lt!760846))))

(declare-fun b!2026029 () Bool)

(declare-fun res!888315 () Bool)

(assert (=> b!2026029 (=> (not res!888315) (not e!1279774))))

(declare-fun isEmpty!13825 (List!22274) Bool)

(assert (=> b!2026029 (= res!888315 (not (isEmpty!13825 rules!3198)))))

(declare-fun tp!602801 () Bool)

(declare-fun b!2026030 () Bool)

(assert (=> b!2026030 (= e!1279777 (and tp!602801 (inv!29366 (tag!4470 (rule!6217 (h!27594 tokens!598)))) (inv!29370 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) e!1279787))))

(declare-fun b!2026031 () Bool)

(declare-fun res!888297 () Bool)

(assert (=> b!2026031 (=> res!888297 e!1279780)))

(assert (=> b!2026031 (= res!888297 (isSeparator!3988 (rule!6217 (h!27594 tokens!598))))))

(declare-fun b!2026032 () Bool)

(declare-fun res!888298 () Bool)

(assert (=> b!2026032 (=> res!888298 e!1279780)))

(assert (=> b!2026032 (= res!888298 (not (contains!4092 rules!3198 (rule!6217 (h!27594 tokens!598)))))))

(declare-fun b!2026033 () Bool)

(declare-fun tp!602805 () Bool)

(assert (=> b!2026033 (= e!1279790 (and e!1279785 tp!602805))))

(declare-fun b!2026034 () Bool)

(declare-fun res!888317 () Bool)

(assert (=> b!2026034 (=> (not res!888317) (not e!1279774))))

(assert (=> b!2026034 (= res!888317 (isSeparator!3988 (rule!6217 separatorToken!354)))))

(declare-fun b!2026035 () Bool)

(declare-fun res!888305 () Bool)

(assert (=> b!2026035 (=> res!888305 e!1279780)))

(declare-fun isEmpty!13826 (BalanceConc!14662) Bool)

(declare-datatypes ((tuple2!20870 0))(
  ( (tuple2!20871 (_1!11904 BalanceConc!14662) (_2!11904 BalanceConc!14660)) )
))
(declare-fun lex!1617 (LexerInterface!3601 List!22274 BalanceConc!14660) tuple2!20870)

(declare-fun seqFromList!2842 (List!22273) BalanceConc!14660)

(assert (=> b!2026035 (= res!888305 (isEmpty!13826 (_1!11904 (lex!1617 thiss!23328 rules!3198 (seqFromList!2842 lt!760863)))))))

(declare-fun b!2026036 () Bool)

(assert (=> b!2026036 (= e!1279780 e!1279782)))

(declare-fun res!888296 () Bool)

(assert (=> b!2026036 (=> res!888296 e!1279782)))

(assert (=> b!2026036 (= res!888296 (not (matchR!2679 (regex!3988 (rule!6217 (h!27594 tokens!598))) lt!760863)))))

(declare-fun ruleValid!1219 (LexerInterface!3601 Rule!7776) Bool)

(assert (=> b!2026036 (ruleValid!1219 thiss!23328 (rule!6217 (h!27594 tokens!598)))))

(declare-fun lt!760853 () Unit!36842)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!690 (LexerInterface!3601 Rule!7776 List!22274) Unit!36842)

(assert (=> b!2026036 (= lt!760853 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!690 thiss!23328 (rule!6217 (h!27594 tokens!598)) rules!3198))))

(declare-fun b!2026037 () Bool)

(declare-fun res!888306 () Bool)

(assert (=> b!2026037 (=> (not res!888306) (not e!1279774))))

(declare-fun rulesProduceEachTokenIndividuallyList!1332 (LexerInterface!3601 List!22274 List!22275) Bool)

(assert (=> b!2026037 (= res!888306 (rulesProduceEachTokenIndividuallyList!1332 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2026038 () Bool)

(assert (=> b!2026038 (= e!1279774 (not e!1279791))))

(declare-fun res!888319 () Bool)

(assert (=> b!2026038 (=> res!888319 e!1279791)))

(declare-datatypes ((Option!4660 0))(
  ( (None!4659) (Some!4659 (v!26968 tuple2!20868)) )
))
(declare-fun lt!760860 () Option!4660)

(declare-fun lt!760865 () Bool)

(assert (=> b!2026038 (= res!888319 (or (and (not lt!760865) (= (_1!11903 (v!26968 lt!760860)) (h!27594 tokens!598))) lt!760865 (= (_1!11903 (v!26968 lt!760860)) (h!27594 tokens!598))))))

(assert (=> b!2026038 (= lt!760865 (not ((_ is Some!4659) lt!760860)))))

(declare-fun maxPrefix!2037 (LexerInterface!3601 List!22274 List!22273) Option!4660)

(assert (=> b!2026038 (= lt!760860 (maxPrefix!2037 thiss!23328 rules!3198 (++!5997 lt!760863 lt!760868)))))

(declare-fun printWithSeparatorTokenWhenNeededList!630 (LexerInterface!3601 List!22274 List!22275 Token!7528) List!22273)

(assert (=> b!2026038 (= lt!760868 (printWithSeparatorTokenWhenNeededList!630 thiss!23328 rules!3198 (t!189886 tokens!598) separatorToken!354))))

(assert (=> b!2026038 e!1279783))

(declare-fun res!888302 () Bool)

(assert (=> b!2026038 (=> (not res!888302) (not e!1279783))))

(declare-fun isDefined!3947 (Option!4659) Bool)

(assert (=> b!2026038 (= res!888302 (isDefined!3947 lt!760858))))

(declare-fun getRuleFromTag!803 (LexerInterface!3601 List!22274 String!25738) Option!4659)

(assert (=> b!2026038 (= lt!760858 (getRuleFromTag!803 thiss!23328 rules!3198 (tag!4470 (rule!6217 (h!27594 tokens!598)))))))

(declare-fun lt!760851 () Unit!36842)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!803 (LexerInterface!3601 List!22274 List!22273 Token!7528) Unit!36842)

(assert (=> b!2026038 (= lt!760851 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!803 thiss!23328 rules!3198 lt!760863 (h!27594 tokens!598)))))

(assert (=> b!2026038 (= (_1!11903 lt!760850) (h!27594 tokens!598))))

(declare-fun lt!760874 () Option!4660)

(declare-fun get!7045 (Option!4660) tuple2!20868)

(assert (=> b!2026038 (= lt!760850 (get!7045 lt!760874))))

(declare-fun isDefined!3948 (Option!4660) Bool)

(assert (=> b!2026038 (isDefined!3948 lt!760874)))

(assert (=> b!2026038 (= lt!760874 (maxPrefix!2037 thiss!23328 rules!3198 lt!760863))))

(declare-fun lt!760854 () BalanceConc!14660)

(assert (=> b!2026038 (= lt!760863 (list!9055 lt!760854))))

(assert (=> b!2026038 e!1279772))

(declare-fun res!888314 () Bool)

(assert (=> b!2026038 (=> (not res!888314) (not e!1279772))))

(assert (=> b!2026038 (= res!888314 (isDefined!3947 lt!760873))))

(assert (=> b!2026038 (= lt!760873 (getRuleFromTag!803 thiss!23328 rules!3198 (tag!4470 (rule!6217 separatorToken!354))))))

(declare-fun lt!760856 () Unit!36842)

(assert (=> b!2026038 (= lt!760856 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!803 thiss!23328 rules!3198 lt!760862 separatorToken!354))))

(declare-fun charsOf!2528 (Token!7528) BalanceConc!14660)

(assert (=> b!2026038 (= lt!760862 (list!9055 (charsOf!2528 separatorToken!354)))))

(declare-fun lt!760867 () Unit!36842)

(declare-fun lemmaEqSameImage!674 (TokenValueInjection!7832 BalanceConc!14660 BalanceConc!14660) Unit!36842)

(assert (=> b!2026038 (= lt!760867 (lemmaEqSameImage!674 (transformation!3988 (rule!6217 (h!27594 tokens!598))) lt!760854 (seqFromList!2842 (originalCharacters!4795 (h!27594 tokens!598)))))))

(declare-fun lt!760848 () Unit!36842)

(declare-fun lemmaSemiInverse!945 (TokenValueInjection!7832 BalanceConc!14660) Unit!36842)

(assert (=> b!2026038 (= lt!760848 (lemmaSemiInverse!945 (transformation!3988 (rule!6217 (h!27594 tokens!598))) lt!760854))))

(assert (=> b!2026038 (= lt!760854 (charsOf!2528 (h!27594 tokens!598)))))

(assert (= (and start!199236 res!888304) b!2026029))

(assert (= (and b!2026029 res!888315) b!2026017))

(assert (= (and b!2026017 res!888308) b!2026037))

(assert (= (and b!2026037 res!888306) b!2026027))

(assert (= (and b!2026027 res!888299) b!2026034))

(assert (= (and b!2026034 res!888317) b!2026005))

(assert (= (and b!2026005 res!888307) b!2026003))

(assert (= (and b!2026003 res!888310) b!2026022))

(assert (= (and b!2026022 res!888316) b!2026038))

(assert (= (and b!2026038 res!888314) b!2026012))

(assert (= (and b!2026012 res!888303) b!2026023))

(assert (= (and b!2026038 res!888302) b!2026008))

(assert (= (and b!2026008 res!888312) b!2026007))

(assert (= (and b!2026038 (not res!888319)) b!2026026))

(assert (= (and b!2026026 c!327829) b!2026014))

(assert (= (and b!2026026 (not c!327829)) b!2026025))

(assert (= (and b!2026014 res!888318) b!2026020))

(assert (= (and b!2026026 (not res!888309)) b!2026004))

(assert (= (and b!2026004 (not res!888300)) b!2026035))

(assert (= (and b!2026035 (not res!888305)) b!2026032))

(assert (= (and b!2026032 (not res!888298)) b!2026015))

(assert (= (and b!2026015 (not res!888313)) b!2026031))

(assert (= (and b!2026031 (not res!888297)) b!2026006))

(assert (= (and b!2026006 (not res!888301)) b!2026036))

(assert (= (and b!2026036 (not res!888296)) b!2026028))

(assert (= (and b!2026028 (not res!888311)) b!2026011))

(assert (= b!2026021 b!2026018))

(assert (= b!2026033 b!2026021))

(assert (= (and start!199236 ((_ is Cons!22192) rules!3198)) b!2026033))

(assert (= b!2026030 b!2026024))

(assert (= b!2026019 b!2026030))

(assert (= b!2026013 b!2026019))

(assert (= (and start!199236 ((_ is Cons!22193) tokens!598)) b!2026013))

(assert (= b!2026010 b!2026009))

(assert (= b!2026016 b!2026010))

(assert (= start!199236 b!2026016))

(declare-fun m!2464687 () Bool)

(assert (=> b!2026005 m!2464687))

(declare-fun m!2464689 () Bool)

(assert (=> b!2026027 m!2464689))

(declare-fun m!2464691 () Bool)

(assert (=> b!2026008 m!2464691))

(declare-fun m!2464693 () Bool)

(assert (=> b!2026008 m!2464693))

(declare-fun m!2464695 () Bool)

(assert (=> b!2026015 m!2464695))

(declare-fun m!2464697 () Bool)

(assert (=> b!2026017 m!2464697))

(declare-fun m!2464699 () Bool)

(assert (=> b!2026013 m!2464699))

(declare-fun m!2464701 () Bool)

(assert (=> b!2026035 m!2464701))

(assert (=> b!2026035 m!2464701))

(declare-fun m!2464703 () Bool)

(assert (=> b!2026035 m!2464703))

(declare-fun m!2464705 () Bool)

(assert (=> b!2026035 m!2464705))

(declare-fun m!2464707 () Bool)

(assert (=> b!2026011 m!2464707))

(assert (=> b!2026011 m!2464707))

(declare-fun m!2464709 () Bool)

(assert (=> b!2026011 m!2464709))

(declare-fun m!2464711 () Bool)

(assert (=> b!2026030 m!2464711))

(declare-fun m!2464713 () Bool)

(assert (=> b!2026030 m!2464713))

(declare-fun m!2464715 () Bool)

(assert (=> b!2026037 m!2464715))

(declare-fun m!2464717 () Bool)

(assert (=> b!2026019 m!2464717))

(declare-fun m!2464719 () Bool)

(assert (=> b!2026036 m!2464719))

(declare-fun m!2464721 () Bool)

(assert (=> b!2026036 m!2464721))

(declare-fun m!2464723 () Bool)

(assert (=> b!2026036 m!2464723))

(declare-fun m!2464725 () Bool)

(assert (=> b!2026010 m!2464725))

(declare-fun m!2464727 () Bool)

(assert (=> b!2026010 m!2464727))

(declare-fun m!2464729 () Bool)

(assert (=> b!2026026 m!2464729))

(declare-fun m!2464731 () Bool)

(assert (=> b!2026026 m!2464731))

(declare-fun m!2464733 () Bool)

(assert (=> b!2026026 m!2464733))

(declare-fun m!2464735 () Bool)

(assert (=> b!2026026 m!2464735))

(declare-fun m!2464737 () Bool)

(assert (=> b!2026026 m!2464737))

(declare-fun m!2464739 () Bool)

(assert (=> b!2026026 m!2464739))

(declare-fun m!2464741 () Bool)

(assert (=> b!2026026 m!2464741))

(declare-fun m!2464743 () Bool)

(assert (=> b!2026026 m!2464743))

(assert (=> b!2026026 m!2464735))

(declare-fun m!2464745 () Bool)

(assert (=> b!2026026 m!2464745))

(declare-fun m!2464747 () Bool)

(assert (=> b!2026026 m!2464747))

(declare-fun m!2464749 () Bool)

(assert (=> b!2026026 m!2464749))

(declare-fun m!2464751 () Bool)

(assert (=> b!2026026 m!2464751))

(declare-fun m!2464753 () Bool)

(assert (=> b!2026026 m!2464753))

(declare-fun m!2464755 () Bool)

(assert (=> b!2026026 m!2464755))

(declare-fun m!2464757 () Bool)

(assert (=> b!2026026 m!2464757))

(declare-fun m!2464759 () Bool)

(assert (=> b!2026026 m!2464759))

(declare-fun m!2464761 () Bool)

(assert (=> b!2026032 m!2464761))

(declare-fun m!2464763 () Bool)

(assert (=> b!2026004 m!2464763))

(declare-fun m!2464765 () Bool)

(assert (=> b!2026003 m!2464765))

(declare-fun m!2464767 () Bool)

(assert (=> b!2026006 m!2464767))

(declare-fun m!2464769 () Bool)

(assert (=> b!2026029 m!2464769))

(declare-fun m!2464771 () Bool)

(assert (=> b!2026016 m!2464771))

(declare-fun m!2464773 () Bool)

(assert (=> start!199236 m!2464773))

(declare-fun m!2464775 () Bool)

(assert (=> b!2026038 m!2464775))

(declare-fun m!2464777 () Bool)

(assert (=> b!2026038 m!2464777))

(declare-fun m!2464779 () Bool)

(assert (=> b!2026038 m!2464779))

(declare-fun m!2464781 () Bool)

(assert (=> b!2026038 m!2464781))

(declare-fun m!2464783 () Bool)

(assert (=> b!2026038 m!2464783))

(declare-fun m!2464785 () Bool)

(assert (=> b!2026038 m!2464785))

(declare-fun m!2464787 () Bool)

(assert (=> b!2026038 m!2464787))

(declare-fun m!2464789 () Bool)

(assert (=> b!2026038 m!2464789))

(declare-fun m!2464791 () Bool)

(assert (=> b!2026038 m!2464791))

(declare-fun m!2464793 () Bool)

(assert (=> b!2026038 m!2464793))

(declare-fun m!2464795 () Bool)

(assert (=> b!2026038 m!2464795))

(assert (=> b!2026038 m!2464781))

(declare-fun m!2464797 () Bool)

(assert (=> b!2026038 m!2464797))

(declare-fun m!2464799 () Bool)

(assert (=> b!2026038 m!2464799))

(assert (=> b!2026038 m!2464793))

(declare-fun m!2464801 () Bool)

(assert (=> b!2026038 m!2464801))

(declare-fun m!2464803 () Bool)

(assert (=> b!2026038 m!2464803))

(declare-fun m!2464805 () Bool)

(assert (=> b!2026038 m!2464805))

(declare-fun m!2464807 () Bool)

(assert (=> b!2026038 m!2464807))

(declare-fun m!2464809 () Bool)

(assert (=> b!2026038 m!2464809))

(declare-fun m!2464811 () Bool)

(assert (=> b!2026038 m!2464811))

(assert (=> b!2026038 m!2464775))

(declare-fun m!2464813 () Bool)

(assert (=> b!2026028 m!2464813))

(declare-fun m!2464815 () Bool)

(assert (=> b!2026021 m!2464815))

(declare-fun m!2464817 () Bool)

(assert (=> b!2026021 m!2464817))

(declare-fun m!2464819 () Bool)

(assert (=> b!2026014 m!2464819))

(declare-fun m!2464821 () Bool)

(assert (=> b!2026014 m!2464821))

(declare-fun m!2464823 () Bool)

(assert (=> b!2026012 m!2464823))

(declare-fun m!2464825 () Bool)

(assert (=> b!2026012 m!2464825))

(check-sat (not b!2026004) b_and!161147 (not b!2026003) (not b!2026027) (not b!2026017) (not b!2026013) (not b!2026015) (not b!2026037) (not b!2026011) (not start!199236) (not b!2026016) b_and!161145 (not b!2026033) (not b!2026019) (not b!2026012) (not b_next!57219) (not b!2026014) (not b_next!57225) (not b!2026029) (not b!2026036) (not b!2026005) (not b!2026008) (not b!2026021) (not b!2026028) (not b!2026038) b_and!161137 (not b!2026010) (not b_next!57217) (not b!2026026) (not b!2026030) b_and!161139 b_and!161141 b_and!161143 (not b_next!57223) (not b!2026032) (not b_next!57221) (not b_next!57227) (not b!2026006) (not b!2026035))
(check-sat b_and!161145 b_and!161147 (not b_next!57219) (not b_next!57225) b_and!161137 (not b_next!57223) (not b_next!57217) b_and!161139 b_and!161141 b_and!161143 (not b_next!57221) (not b_next!57227))
(get-model)

(declare-fun d!619637 () Bool)

(declare-fun lt!760877 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3270 (List!22273) (InoxSet C!10972))

(assert (=> d!619637 (= lt!760877 (select (content!3270 lt!760849) (head!4576 lt!760846)))))

(declare-fun e!1279801 () Bool)

(assert (=> d!619637 (= lt!760877 e!1279801)))

(declare-fun res!888335 () Bool)

(assert (=> d!619637 (=> (not res!888335) (not e!1279801))))

(assert (=> d!619637 (= res!888335 ((_ is Cons!22191) lt!760849))))

(assert (=> d!619637 (= (contains!4091 lt!760849 (head!4576 lt!760846)) lt!760877)))

(declare-fun b!2026043 () Bool)

(declare-fun e!1279802 () Bool)

(assert (=> b!2026043 (= e!1279801 e!1279802)))

(declare-fun res!888334 () Bool)

(assert (=> b!2026043 (=> res!888334 e!1279802)))

(assert (=> b!2026043 (= res!888334 (= (h!27592 lt!760849) (head!4576 lt!760846)))))

(declare-fun b!2026044 () Bool)

(assert (=> b!2026044 (= e!1279802 (contains!4091 (t!189884 lt!760849) (head!4576 lt!760846)))))

(assert (= (and d!619637 res!888335) b!2026043))

(assert (= (and b!2026043 (not res!888334)) b!2026044))

(declare-fun m!2464827 () Bool)

(assert (=> d!619637 m!2464827))

(assert (=> d!619637 m!2464707))

(declare-fun m!2464829 () Bool)

(assert (=> d!619637 m!2464829))

(assert (=> b!2026044 m!2464707))

(declare-fun m!2464831 () Bool)

(assert (=> b!2026044 m!2464831))

(assert (=> b!2026011 d!619637))

(declare-fun d!619639 () Bool)

(assert (=> d!619639 (= (head!4576 lt!760846) (h!27592 lt!760846))))

(assert (=> b!2026011 d!619639))

(declare-fun d!619641 () Bool)

(declare-fun lt!760880 () Bool)

(declare-fun content!3271 (List!22274) (InoxSet Rule!7776))

(assert (=> d!619641 (= lt!760880 (select (content!3271 rules!3198) (rule!6217 (h!27594 tokens!598))))))

(declare-fun e!1279807 () Bool)

(assert (=> d!619641 (= lt!760880 e!1279807)))

(declare-fun res!888340 () Bool)

(assert (=> d!619641 (=> (not res!888340) (not e!1279807))))

(assert (=> d!619641 (= res!888340 ((_ is Cons!22192) rules!3198))))

(assert (=> d!619641 (= (contains!4092 rules!3198 (rule!6217 (h!27594 tokens!598))) lt!760880)))

(declare-fun b!2026049 () Bool)

(declare-fun e!1279808 () Bool)

(assert (=> b!2026049 (= e!1279807 e!1279808)))

(declare-fun res!888341 () Bool)

(assert (=> b!2026049 (=> res!888341 e!1279808)))

(assert (=> b!2026049 (= res!888341 (= (h!27593 rules!3198) (rule!6217 (h!27594 tokens!598))))))

(declare-fun b!2026050 () Bool)

(assert (=> b!2026050 (= e!1279808 (contains!4092 (t!189885 rules!3198) (rule!6217 (h!27594 tokens!598))))))

(assert (= (and d!619641 res!888340) b!2026049))

(assert (= (and b!2026049 (not res!888341)) b!2026050))

(declare-fun m!2464833 () Bool)

(assert (=> d!619641 m!2464833))

(declare-fun m!2464835 () Bool)

(assert (=> d!619641 m!2464835))

(declare-fun m!2464837 () Bool)

(assert (=> b!2026050 m!2464837))

(assert (=> b!2026032 d!619641))

(declare-fun d!619643 () Bool)

(declare-fun res!888346 () Bool)

(declare-fun e!1279811 () Bool)

(assert (=> d!619643 (=> (not res!888346) (not e!1279811))))

(assert (=> d!619643 (= res!888346 (not (isEmpty!13824 (originalCharacters!4795 (h!27594 tokens!598)))))))

(assert (=> d!619643 (= (inv!29369 (h!27594 tokens!598)) e!1279811)))

(declare-fun b!2026055 () Bool)

(declare-fun res!888347 () Bool)

(assert (=> b!2026055 (=> (not res!888347) (not e!1279811))))

(declare-fun dynLambda!11005 (Int TokenValue!4124) BalanceConc!14660)

(assert (=> b!2026055 (= res!888347 (= (originalCharacters!4795 (h!27594 tokens!598)) (list!9055 (dynLambda!11005 (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (value!125249 (h!27594 tokens!598))))))))

(declare-fun b!2026056 () Bool)

(declare-fun size!17333 (List!22273) Int)

(assert (=> b!2026056 (= e!1279811 (= (size!17332 (h!27594 tokens!598)) (size!17333 (originalCharacters!4795 (h!27594 tokens!598)))))))

(assert (= (and d!619643 res!888346) b!2026055))

(assert (= (and b!2026055 res!888347) b!2026056))

(declare-fun b_lambda!68101 () Bool)

(assert (=> (not b_lambda!68101) (not b!2026055)))

(declare-fun tb!127641 () Bool)

(declare-fun t!189888 () Bool)

(assert (=> (and b!2026009 (= (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189888) tb!127641))

(declare-fun b!2026061 () Bool)

(declare-fun e!1279814 () Bool)

(declare-fun tp!602815 () Bool)

(declare-fun inv!29371 (Conc!7422) Bool)

(assert (=> b!2026061 (= e!1279814 (and (inv!29371 (c!327830 (dynLambda!11005 (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (value!125249 (h!27594 tokens!598))))) tp!602815))))

(declare-fun result!152732 () Bool)

(declare-fun inv!29372 (BalanceConc!14660) Bool)

(assert (=> tb!127641 (= result!152732 (and (inv!29372 (dynLambda!11005 (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (value!125249 (h!27594 tokens!598)))) e!1279814))))

(assert (= tb!127641 b!2026061))

(declare-fun m!2464839 () Bool)

(assert (=> b!2026061 m!2464839))

(declare-fun m!2464841 () Bool)

(assert (=> tb!127641 m!2464841))

(assert (=> b!2026055 t!189888))

(declare-fun b_and!161149 () Bool)

(assert (= b_and!161139 (and (=> t!189888 result!152732) b_and!161149)))

(declare-fun t!189890 () Bool)

(declare-fun tb!127643 () Bool)

(assert (=> (and b!2026024 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189890) tb!127643))

(declare-fun result!152736 () Bool)

(assert (= result!152736 result!152732))

(assert (=> b!2026055 t!189890))

(declare-fun b_and!161151 () Bool)

(assert (= b_and!161143 (and (=> t!189890 result!152736) b_and!161151)))

(declare-fun t!189892 () Bool)

(declare-fun tb!127645 () Bool)

(assert (=> (and b!2026018 (= (toChars!5520 (transformation!3988 (h!27593 rules!3198))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189892) tb!127645))

(declare-fun result!152738 () Bool)

(assert (= result!152738 result!152732))

(assert (=> b!2026055 t!189892))

(declare-fun b_and!161153 () Bool)

(assert (= b_and!161147 (and (=> t!189892 result!152738) b_and!161153)))

(declare-fun m!2464843 () Bool)

(assert (=> d!619643 m!2464843))

(declare-fun m!2464845 () Bool)

(assert (=> b!2026055 m!2464845))

(assert (=> b!2026055 m!2464845))

(declare-fun m!2464847 () Bool)

(assert (=> b!2026055 m!2464847))

(declare-fun m!2464849 () Bool)

(assert (=> b!2026056 m!2464849))

(assert (=> b!2026013 d!619643))

(declare-fun b!2026132 () Bool)

(declare-fun e!1279853 () Bool)

(declare-fun e!1279854 () Bool)

(assert (=> b!2026132 (= e!1279853 e!1279854)))

(declare-fun res!888391 () Bool)

(assert (=> b!2026132 (=> (not res!888391) (not e!1279854))))

(declare-fun lt!760886 () Bool)

(assert (=> b!2026132 (= res!888391 (not lt!760886))))

(declare-fun b!2026133 () Bool)

(declare-fun e!1279855 () Bool)

(declare-fun e!1279850 () Bool)

(assert (=> b!2026133 (= e!1279855 e!1279850)))

(declare-fun c!327849 () Bool)

(assert (=> b!2026133 (= c!327849 ((_ is EmptyLang!5413) (regex!3988 lt!760847)))))

(declare-fun b!2026134 () Bool)

(declare-fun res!888388 () Bool)

(declare-fun e!1279856 () Bool)

(assert (=> b!2026134 (=> (not res!888388) (not e!1279856))))

(declare-fun call!124258 () Bool)

(assert (=> b!2026134 (= res!888388 (not call!124258))))

(declare-fun b!2026135 () Bool)

(declare-fun e!1279852 () Bool)

(assert (=> b!2026135 (= e!1279854 e!1279852)))

(declare-fun res!888392 () Bool)

(assert (=> b!2026135 (=> res!888392 e!1279852)))

(assert (=> b!2026135 (= res!888392 call!124258)))

(declare-fun bm!124253 () Bool)

(assert (=> bm!124253 (= call!124258 (isEmpty!13824 lt!760862))))

(declare-fun b!2026136 () Bool)

(declare-fun res!888394 () Bool)

(assert (=> b!2026136 (=> (not res!888394) (not e!1279856))))

(declare-fun tail!3052 (List!22273) List!22273)

(assert (=> b!2026136 (= res!888394 (isEmpty!13824 (tail!3052 lt!760862)))))

(declare-fun b!2026137 () Bool)

(declare-fun res!888390 () Bool)

(assert (=> b!2026137 (=> res!888390 e!1279853)))

(assert (=> b!2026137 (= res!888390 (not ((_ is ElementMatch!5413) (regex!3988 lt!760847))))))

(assert (=> b!2026137 (= e!1279850 e!1279853)))

(declare-fun b!2026138 () Bool)

(declare-fun res!888395 () Bool)

(assert (=> b!2026138 (=> res!888395 e!1279853)))

(assert (=> b!2026138 (= res!888395 e!1279856)))

(declare-fun res!888393 () Bool)

(assert (=> b!2026138 (=> (not res!888393) (not e!1279856))))

(assert (=> b!2026138 (= res!888393 lt!760886)))

(declare-fun b!2026139 () Bool)

(assert (=> b!2026139 (= e!1279855 (= lt!760886 call!124258))))

(declare-fun b!2026140 () Bool)

(assert (=> b!2026140 (= e!1279852 (not (= (head!4576 lt!760862) (c!327831 (regex!3988 lt!760847)))))))

(declare-fun b!2026141 () Bool)

(assert (=> b!2026141 (= e!1279856 (= (head!4576 lt!760862) (c!327831 (regex!3988 lt!760847))))))

(declare-fun d!619647 () Bool)

(assert (=> d!619647 e!1279855))

(declare-fun c!327850 () Bool)

(assert (=> d!619647 (= c!327850 ((_ is EmptyExpr!5413) (regex!3988 lt!760847)))))

(declare-fun e!1279851 () Bool)

(assert (=> d!619647 (= lt!760886 e!1279851)))

(declare-fun c!327848 () Bool)

(assert (=> d!619647 (= c!327848 (isEmpty!13824 lt!760862))))

(declare-fun validRegex!2175 (Regex!5413) Bool)

(assert (=> d!619647 (validRegex!2175 (regex!3988 lt!760847))))

(assert (=> d!619647 (= (matchR!2679 (regex!3988 lt!760847) lt!760862) lt!760886)))

(declare-fun b!2026142 () Bool)

(declare-fun res!888389 () Bool)

(assert (=> b!2026142 (=> res!888389 e!1279852)))

(assert (=> b!2026142 (= res!888389 (not (isEmpty!13824 (tail!3052 lt!760862))))))

(declare-fun b!2026143 () Bool)

(declare-fun derivativeStep!1408 (Regex!5413 C!10972) Regex!5413)

(assert (=> b!2026143 (= e!1279851 (matchR!2679 (derivativeStep!1408 (regex!3988 lt!760847) (head!4576 lt!760862)) (tail!3052 lt!760862)))))

(declare-fun b!2026144 () Bool)

(declare-fun nullable!1649 (Regex!5413) Bool)

(assert (=> b!2026144 (= e!1279851 (nullable!1649 (regex!3988 lt!760847)))))

(declare-fun b!2026145 () Bool)

(assert (=> b!2026145 (= e!1279850 (not lt!760886))))

(assert (= (and d!619647 c!327848) b!2026144))

(assert (= (and d!619647 (not c!327848)) b!2026143))

(assert (= (and d!619647 c!327850) b!2026139))

(assert (= (and d!619647 (not c!327850)) b!2026133))

(assert (= (and b!2026133 c!327849) b!2026145))

(assert (= (and b!2026133 (not c!327849)) b!2026137))

(assert (= (and b!2026137 (not res!888390)) b!2026138))

(assert (= (and b!2026138 res!888393) b!2026134))

(assert (= (and b!2026134 res!888388) b!2026136))

(assert (= (and b!2026136 res!888394) b!2026141))

(assert (= (and b!2026138 (not res!888395)) b!2026132))

(assert (= (and b!2026132 res!888391) b!2026135))

(assert (= (and b!2026135 (not res!888392)) b!2026142))

(assert (= (and b!2026142 (not res!888389)) b!2026140))

(assert (= (or b!2026139 b!2026134 b!2026135) bm!124253))

(declare-fun m!2464867 () Bool)

(assert (=> b!2026142 m!2464867))

(assert (=> b!2026142 m!2464867))

(declare-fun m!2464869 () Bool)

(assert (=> b!2026142 m!2464869))

(declare-fun m!2464871 () Bool)

(assert (=> d!619647 m!2464871))

(declare-fun m!2464873 () Bool)

(assert (=> d!619647 m!2464873))

(assert (=> bm!124253 m!2464871))

(assert (=> b!2026136 m!2464867))

(assert (=> b!2026136 m!2464867))

(assert (=> b!2026136 m!2464869))

(declare-fun m!2464875 () Bool)

(assert (=> b!2026144 m!2464875))

(assert (=> b!2026140 m!2464751))

(assert (=> b!2026141 m!2464751))

(assert (=> b!2026143 m!2464751))

(assert (=> b!2026143 m!2464751))

(declare-fun m!2464877 () Bool)

(assert (=> b!2026143 m!2464877))

(assert (=> b!2026143 m!2464867))

(assert (=> b!2026143 m!2464877))

(assert (=> b!2026143 m!2464867))

(declare-fun m!2464879 () Bool)

(assert (=> b!2026143 m!2464879))

(assert (=> b!2026012 d!619647))

(declare-fun d!619651 () Bool)

(assert (=> d!619651 (= (get!7044 lt!760873) (v!26967 lt!760873))))

(assert (=> b!2026012 d!619651))

(declare-fun d!619653 () Bool)

(assert (=> d!619653 (not (matchR!2679 (regex!3988 (rule!6217 separatorToken!354)) lt!760862))))

(declare-fun lt!760891 () Unit!36842)

(declare-fun choose!12343 (Regex!5413 List!22273 C!10972) Unit!36842)

(assert (=> d!619653 (= lt!760891 (choose!12343 (regex!3988 (rule!6217 separatorToken!354)) lt!760862 lt!760852))))

(assert (=> d!619653 (validRegex!2175 (regex!3988 (rule!6217 separatorToken!354)))))

(assert (=> d!619653 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!314 (regex!3988 (rule!6217 separatorToken!354)) lt!760862 lt!760852) lt!760891)))

(declare-fun bs!420695 () Bool)

(assert (= bs!420695 d!619653))

(assert (=> bs!420695 m!2464821))

(declare-fun m!2464881 () Bool)

(assert (=> bs!420695 m!2464881))

(declare-fun m!2464883 () Bool)

(assert (=> bs!420695 m!2464883))

(assert (=> b!2026014 d!619653))

(declare-fun b!2026152 () Bool)

(declare-fun e!1279863 () Bool)

(declare-fun e!1279864 () Bool)

(assert (=> b!2026152 (= e!1279863 e!1279864)))

(declare-fun res!888405 () Bool)

(assert (=> b!2026152 (=> (not res!888405) (not e!1279864))))

(declare-fun lt!760893 () Bool)

(assert (=> b!2026152 (= res!888405 (not lt!760893))))

(declare-fun b!2026153 () Bool)

(declare-fun e!1279865 () Bool)

(declare-fun e!1279860 () Bool)

(assert (=> b!2026153 (= e!1279865 e!1279860)))

(declare-fun c!327853 () Bool)

(assert (=> b!2026153 (= c!327853 ((_ is EmptyLang!5413) (regex!3988 (rule!6217 separatorToken!354))))))

(declare-fun b!2026154 () Bool)

(declare-fun res!888402 () Bool)

(declare-fun e!1279866 () Bool)

(assert (=> b!2026154 (=> (not res!888402) (not e!1279866))))

(declare-fun call!124259 () Bool)

(assert (=> b!2026154 (= res!888402 (not call!124259))))

(declare-fun b!2026155 () Bool)

(declare-fun e!1279862 () Bool)

(assert (=> b!2026155 (= e!1279864 e!1279862)))

(declare-fun res!888406 () Bool)

(assert (=> b!2026155 (=> res!888406 e!1279862)))

(assert (=> b!2026155 (= res!888406 call!124259)))

(declare-fun bm!124254 () Bool)

(assert (=> bm!124254 (= call!124259 (isEmpty!13824 lt!760862))))

(declare-fun b!2026156 () Bool)

(declare-fun res!888408 () Bool)

(assert (=> b!2026156 (=> (not res!888408) (not e!1279866))))

(assert (=> b!2026156 (= res!888408 (isEmpty!13824 (tail!3052 lt!760862)))))

(declare-fun b!2026157 () Bool)

(declare-fun res!888404 () Bool)

(assert (=> b!2026157 (=> res!888404 e!1279863)))

(assert (=> b!2026157 (= res!888404 (not ((_ is ElementMatch!5413) (regex!3988 (rule!6217 separatorToken!354)))))))

(assert (=> b!2026157 (= e!1279860 e!1279863)))

(declare-fun b!2026158 () Bool)

(declare-fun res!888409 () Bool)

(assert (=> b!2026158 (=> res!888409 e!1279863)))

(assert (=> b!2026158 (= res!888409 e!1279866)))

(declare-fun res!888407 () Bool)

(assert (=> b!2026158 (=> (not res!888407) (not e!1279866))))

(assert (=> b!2026158 (= res!888407 lt!760893)))

(declare-fun b!2026159 () Bool)

(assert (=> b!2026159 (= e!1279865 (= lt!760893 call!124259))))

(declare-fun b!2026160 () Bool)

(assert (=> b!2026160 (= e!1279862 (not (= (head!4576 lt!760862) (c!327831 (regex!3988 (rule!6217 separatorToken!354))))))))

(declare-fun b!2026161 () Bool)

(assert (=> b!2026161 (= e!1279866 (= (head!4576 lt!760862) (c!327831 (regex!3988 (rule!6217 separatorToken!354)))))))

(declare-fun d!619657 () Bool)

(assert (=> d!619657 e!1279865))

(declare-fun c!327854 () Bool)

(assert (=> d!619657 (= c!327854 ((_ is EmptyExpr!5413) (regex!3988 (rule!6217 separatorToken!354))))))

(declare-fun e!1279861 () Bool)

(assert (=> d!619657 (= lt!760893 e!1279861)))

(declare-fun c!327852 () Bool)

(assert (=> d!619657 (= c!327852 (isEmpty!13824 lt!760862))))

(assert (=> d!619657 (validRegex!2175 (regex!3988 (rule!6217 separatorToken!354)))))

(assert (=> d!619657 (= (matchR!2679 (regex!3988 (rule!6217 separatorToken!354)) lt!760862) lt!760893)))

(declare-fun b!2026162 () Bool)

(declare-fun res!888403 () Bool)

(assert (=> b!2026162 (=> res!888403 e!1279862)))

(assert (=> b!2026162 (= res!888403 (not (isEmpty!13824 (tail!3052 lt!760862))))))

(declare-fun b!2026163 () Bool)

(assert (=> b!2026163 (= e!1279861 (matchR!2679 (derivativeStep!1408 (regex!3988 (rule!6217 separatorToken!354)) (head!4576 lt!760862)) (tail!3052 lt!760862)))))

(declare-fun b!2026164 () Bool)

(assert (=> b!2026164 (= e!1279861 (nullable!1649 (regex!3988 (rule!6217 separatorToken!354))))))

(declare-fun b!2026165 () Bool)

(assert (=> b!2026165 (= e!1279860 (not lt!760893))))

(assert (= (and d!619657 c!327852) b!2026164))

(assert (= (and d!619657 (not c!327852)) b!2026163))

(assert (= (and d!619657 c!327854) b!2026159))

(assert (= (and d!619657 (not c!327854)) b!2026153))

(assert (= (and b!2026153 c!327853) b!2026165))

(assert (= (and b!2026153 (not c!327853)) b!2026157))

(assert (= (and b!2026157 (not res!888404)) b!2026158))

(assert (= (and b!2026158 res!888407) b!2026154))

(assert (= (and b!2026154 res!888402) b!2026156))

(assert (= (and b!2026156 res!888408) b!2026161))

(assert (= (and b!2026158 (not res!888409)) b!2026152))

(assert (= (and b!2026152 res!888405) b!2026155))

(assert (= (and b!2026155 (not res!888406)) b!2026162))

(assert (= (and b!2026162 (not res!888403)) b!2026160))

(assert (= (or b!2026159 b!2026154 b!2026155) bm!124254))

(assert (=> b!2026162 m!2464867))

(assert (=> b!2026162 m!2464867))

(assert (=> b!2026162 m!2464869))

(assert (=> d!619657 m!2464871))

(assert (=> d!619657 m!2464883))

(assert (=> bm!124254 m!2464871))

(assert (=> b!2026156 m!2464867))

(assert (=> b!2026156 m!2464867))

(assert (=> b!2026156 m!2464869))

(declare-fun m!2464887 () Bool)

(assert (=> b!2026164 m!2464887))

(assert (=> b!2026160 m!2464751))

(assert (=> b!2026161 m!2464751))

(assert (=> b!2026163 m!2464751))

(assert (=> b!2026163 m!2464751))

(declare-fun m!2464889 () Bool)

(assert (=> b!2026163 m!2464889))

(assert (=> b!2026163 m!2464867))

(assert (=> b!2026163 m!2464889))

(assert (=> b!2026163 m!2464867))

(declare-fun m!2464891 () Bool)

(assert (=> b!2026163 m!2464891))

(assert (=> b!2026014 d!619657))

(declare-fun d!619661 () Bool)

(declare-fun lt!760899 () Bool)

(declare-fun isEmpty!13827 (List!22275) Bool)

(declare-fun list!9056 (BalanceConc!14662) List!22275)

(assert (=> d!619661 (= lt!760899 (isEmpty!13827 (list!9056 (_1!11904 (lex!1617 thiss!23328 rules!3198 (seqFromList!2842 lt!760863))))))))

(declare-fun isEmpty!13828 (Conc!7423) Bool)

(assert (=> d!619661 (= lt!760899 (isEmpty!13828 (c!327832 (_1!11904 (lex!1617 thiss!23328 rules!3198 (seqFromList!2842 lt!760863))))))))

(assert (=> d!619661 (= (isEmpty!13826 (_1!11904 (lex!1617 thiss!23328 rules!3198 (seqFromList!2842 lt!760863)))) lt!760899)))

(declare-fun bs!420697 () Bool)

(assert (= bs!420697 d!619661))

(declare-fun m!2464899 () Bool)

(assert (=> bs!420697 m!2464899))

(assert (=> bs!420697 m!2464899))

(declare-fun m!2464901 () Bool)

(assert (=> bs!420697 m!2464901))

(declare-fun m!2464903 () Bool)

(assert (=> bs!420697 m!2464903))

(assert (=> b!2026035 d!619661))

(declare-fun e!1279897 () Bool)

(declare-fun lt!760907 () tuple2!20870)

(declare-fun b!2026213 () Bool)

(declare-datatypes ((tuple2!20872 0))(
  ( (tuple2!20873 (_1!11905 List!22275) (_2!11905 List!22273)) )
))
(declare-fun lexList!978 (LexerInterface!3601 List!22274 List!22273) tuple2!20872)

(assert (=> b!2026213 (= e!1279897 (= (list!9055 (_2!11904 lt!760907)) (_2!11905 (lexList!978 thiss!23328 rules!3198 (list!9055 (seqFromList!2842 lt!760863))))))))

(declare-fun d!619667 () Bool)

(assert (=> d!619667 e!1279897))

(declare-fun res!888443 () Bool)

(assert (=> d!619667 (=> (not res!888443) (not e!1279897))))

(declare-fun e!1279898 () Bool)

(assert (=> d!619667 (= res!888443 e!1279898)))

(declare-fun c!327864 () Bool)

(declare-fun size!17334 (BalanceConc!14662) Int)

(assert (=> d!619667 (= c!327864 (> (size!17334 (_1!11904 lt!760907)) 0))))

(declare-fun lexTailRecV2!701 (LexerInterface!3601 List!22274 BalanceConc!14660 BalanceConc!14660 BalanceConc!14660 BalanceConc!14662) tuple2!20870)

(assert (=> d!619667 (= lt!760907 (lexTailRecV2!701 thiss!23328 rules!3198 (seqFromList!2842 lt!760863) (BalanceConc!14661 Empty!7422) (seqFromList!2842 lt!760863) (BalanceConc!14663 Empty!7423)))))

(assert (=> d!619667 (= (lex!1617 thiss!23328 rules!3198 (seqFromList!2842 lt!760863)) lt!760907)))

(declare-fun b!2026214 () Bool)

(assert (=> b!2026214 (= e!1279898 (= (_2!11904 lt!760907) (seqFromList!2842 lt!760863)))))

(declare-fun b!2026215 () Bool)

(declare-fun e!1279896 () Bool)

(assert (=> b!2026215 (= e!1279898 e!1279896)))

(declare-fun res!888441 () Bool)

(declare-fun size!17335 (BalanceConc!14660) Int)

(assert (=> b!2026215 (= res!888441 (< (size!17335 (_2!11904 lt!760907)) (size!17335 (seqFromList!2842 lt!760863))))))

(assert (=> b!2026215 (=> (not res!888441) (not e!1279896))))

(declare-fun b!2026216 () Bool)

(declare-fun res!888442 () Bool)

(assert (=> b!2026216 (=> (not res!888442) (not e!1279897))))

(assert (=> b!2026216 (= res!888442 (= (list!9056 (_1!11904 lt!760907)) (_1!11905 (lexList!978 thiss!23328 rules!3198 (list!9055 (seqFromList!2842 lt!760863))))))))

(declare-fun b!2026217 () Bool)

(assert (=> b!2026217 (= e!1279896 (not (isEmpty!13826 (_1!11904 lt!760907))))))

(assert (= (and d!619667 c!327864) b!2026215))

(assert (= (and d!619667 (not c!327864)) b!2026214))

(assert (= (and b!2026215 res!888441) b!2026217))

(assert (= (and d!619667 res!888443) b!2026216))

(assert (= (and b!2026216 res!888442) b!2026213))

(declare-fun m!2464933 () Bool)

(assert (=> b!2026213 m!2464933))

(assert (=> b!2026213 m!2464701))

(declare-fun m!2464935 () Bool)

(assert (=> b!2026213 m!2464935))

(assert (=> b!2026213 m!2464935))

(declare-fun m!2464937 () Bool)

(assert (=> b!2026213 m!2464937))

(declare-fun m!2464939 () Bool)

(assert (=> d!619667 m!2464939))

(assert (=> d!619667 m!2464701))

(assert (=> d!619667 m!2464701))

(declare-fun m!2464941 () Bool)

(assert (=> d!619667 m!2464941))

(declare-fun m!2464943 () Bool)

(assert (=> b!2026215 m!2464943))

(assert (=> b!2026215 m!2464701))

(declare-fun m!2464945 () Bool)

(assert (=> b!2026215 m!2464945))

(declare-fun m!2464947 () Bool)

(assert (=> b!2026216 m!2464947))

(assert (=> b!2026216 m!2464701))

(assert (=> b!2026216 m!2464935))

(assert (=> b!2026216 m!2464935))

(assert (=> b!2026216 m!2464937))

(declare-fun m!2464949 () Bool)

(assert (=> b!2026217 m!2464949))

(assert (=> b!2026035 d!619667))

(declare-fun d!619683 () Bool)

(declare-fun fromListB!1277 (List!22273) BalanceConc!14660)

(assert (=> d!619683 (= (seqFromList!2842 lt!760863) (fromListB!1277 lt!760863))))

(declare-fun bs!420699 () Bool)

(assert (= bs!420699 d!619683))

(declare-fun m!2464951 () Bool)

(assert (=> bs!420699 m!2464951))

(assert (=> b!2026035 d!619683))

(declare-fun bs!420705 () Bool)

(declare-fun d!619685 () Bool)

(assert (= bs!420705 (and d!619685 b!2026005)))

(declare-fun lambda!76429 () Int)

(assert (=> bs!420705 (not (= lambda!76429 lambda!76423))))

(declare-fun b!2026338 () Bool)

(declare-fun e!1279982 () Bool)

(assert (=> b!2026338 (= e!1279982 true)))

(declare-fun b!2026337 () Bool)

(declare-fun e!1279981 () Bool)

(assert (=> b!2026337 (= e!1279981 e!1279982)))

(declare-fun b!2026336 () Bool)

(declare-fun e!1279980 () Bool)

(assert (=> b!2026336 (= e!1279980 e!1279981)))

(assert (=> d!619685 e!1279980))

(assert (= b!2026337 b!2026338))

(assert (= b!2026336 b!2026337))

(assert (= (and d!619685 ((_ is Cons!22192) rules!3198)) b!2026336))

(declare-fun order!14183 () Int)

(declare-fun order!14185 () Int)

(declare-fun dynLambda!11006 (Int Int) Int)

(declare-fun dynLambda!11007 (Int Int) Int)

(assert (=> b!2026338 (< (dynLambda!11006 order!14183 (toValue!5661 (transformation!3988 (h!27593 rules!3198)))) (dynLambda!11007 order!14185 lambda!76429))))

(declare-fun order!14187 () Int)

(declare-fun dynLambda!11008 (Int Int) Int)

(assert (=> b!2026338 (< (dynLambda!11008 order!14187 (toChars!5520 (transformation!3988 (h!27593 rules!3198)))) (dynLambda!11007 order!14185 lambda!76429))))

(assert (=> d!619685 true))

(declare-fun lt!760936 () Bool)

(assert (=> d!619685 (= lt!760936 (forall!4720 tokens!598 lambda!76429))))

(declare-fun e!1279973 () Bool)

(assert (=> d!619685 (= lt!760936 e!1279973)))

(declare-fun res!888490 () Bool)

(assert (=> d!619685 (=> res!888490 e!1279973)))

(assert (=> d!619685 (= res!888490 (not ((_ is Cons!22193) tokens!598)))))

(assert (=> d!619685 (not (isEmpty!13825 rules!3198))))

(assert (=> d!619685 (= (rulesProduceEachTokenIndividuallyList!1332 thiss!23328 rules!3198 tokens!598) lt!760936)))

(declare-fun b!2026326 () Bool)

(declare-fun e!1279972 () Bool)

(assert (=> b!2026326 (= e!1279973 e!1279972)))

(declare-fun res!888489 () Bool)

(assert (=> b!2026326 (=> (not res!888489) (not e!1279972))))

(assert (=> b!2026326 (= res!888489 (rulesProduceIndividualToken!1773 thiss!23328 rules!3198 (h!27594 tokens!598)))))

(declare-fun b!2026327 () Bool)

(assert (=> b!2026327 (= e!1279972 (rulesProduceEachTokenIndividuallyList!1332 thiss!23328 rules!3198 (t!189886 tokens!598)))))

(assert (= (and d!619685 (not res!888490)) b!2026326))

(assert (= (and b!2026326 res!888489) b!2026327))

(declare-fun m!2465073 () Bool)

(assert (=> d!619685 m!2465073))

(assert (=> d!619685 m!2464769))

(assert (=> b!2026326 m!2464763))

(declare-fun m!2465075 () Bool)

(assert (=> b!2026327 m!2465075))

(assert (=> b!2026037 d!619685))

(declare-fun d!619733 () Bool)

(declare-fun lt!760937 () Bool)

(assert (=> d!619733 (= lt!760937 (select (content!3271 rules!3198) (rule!6217 separatorToken!354)))))

(declare-fun e!1279983 () Bool)

(assert (=> d!619733 (= lt!760937 e!1279983)))

(declare-fun res!888491 () Bool)

(assert (=> d!619733 (=> (not res!888491) (not e!1279983))))

(assert (=> d!619733 (= res!888491 ((_ is Cons!22192) rules!3198))))

(assert (=> d!619733 (= (contains!4092 rules!3198 (rule!6217 separatorToken!354)) lt!760937)))

(declare-fun b!2026341 () Bool)

(declare-fun e!1279984 () Bool)

(assert (=> b!2026341 (= e!1279983 e!1279984)))

(declare-fun res!888492 () Bool)

(assert (=> b!2026341 (=> res!888492 e!1279984)))

(assert (=> b!2026341 (= res!888492 (= (h!27593 rules!3198) (rule!6217 separatorToken!354)))))

(declare-fun b!2026342 () Bool)

(assert (=> b!2026342 (= e!1279984 (contains!4092 (t!189885 rules!3198) (rule!6217 separatorToken!354)))))

(assert (= (and d!619733 res!888491) b!2026341))

(assert (= (and b!2026341 (not res!888492)) b!2026342))

(assert (=> d!619733 m!2464833))

(declare-fun m!2465077 () Bool)

(assert (=> d!619733 m!2465077))

(declare-fun m!2465079 () Bool)

(assert (=> b!2026342 m!2465079))

(assert (=> b!2026015 d!619733))

(declare-fun b!2026343 () Bool)

(declare-fun e!1279988 () Bool)

(declare-fun e!1279989 () Bool)

(assert (=> b!2026343 (= e!1279988 e!1279989)))

(declare-fun res!888496 () Bool)

(assert (=> b!2026343 (=> (not res!888496) (not e!1279989))))

(declare-fun lt!760938 () Bool)

(assert (=> b!2026343 (= res!888496 (not lt!760938))))

(declare-fun b!2026344 () Bool)

(declare-fun e!1279990 () Bool)

(declare-fun e!1279985 () Bool)

(assert (=> b!2026344 (= e!1279990 e!1279985)))

(declare-fun c!327892 () Bool)

(assert (=> b!2026344 (= c!327892 ((_ is EmptyLang!5413) (regex!3988 (rule!6217 (h!27594 tokens!598)))))))

(declare-fun b!2026345 () Bool)

(declare-fun res!888493 () Bool)

(declare-fun e!1279991 () Bool)

(assert (=> b!2026345 (=> (not res!888493) (not e!1279991))))

(declare-fun call!124278 () Bool)

(assert (=> b!2026345 (= res!888493 (not call!124278))))

(declare-fun b!2026346 () Bool)

(declare-fun e!1279987 () Bool)

(assert (=> b!2026346 (= e!1279989 e!1279987)))

(declare-fun res!888497 () Bool)

(assert (=> b!2026346 (=> res!888497 e!1279987)))

(assert (=> b!2026346 (= res!888497 call!124278)))

(declare-fun bm!124273 () Bool)

(assert (=> bm!124273 (= call!124278 (isEmpty!13824 lt!760863))))

(declare-fun b!2026347 () Bool)

(declare-fun res!888499 () Bool)

(assert (=> b!2026347 (=> (not res!888499) (not e!1279991))))

(assert (=> b!2026347 (= res!888499 (isEmpty!13824 (tail!3052 lt!760863)))))

(declare-fun b!2026348 () Bool)

(declare-fun res!888495 () Bool)

(assert (=> b!2026348 (=> res!888495 e!1279988)))

(assert (=> b!2026348 (= res!888495 (not ((_ is ElementMatch!5413) (regex!3988 (rule!6217 (h!27594 tokens!598))))))))

(assert (=> b!2026348 (= e!1279985 e!1279988)))

(declare-fun b!2026349 () Bool)

(declare-fun res!888500 () Bool)

(assert (=> b!2026349 (=> res!888500 e!1279988)))

(assert (=> b!2026349 (= res!888500 e!1279991)))

(declare-fun res!888498 () Bool)

(assert (=> b!2026349 (=> (not res!888498) (not e!1279991))))

(assert (=> b!2026349 (= res!888498 lt!760938)))

(declare-fun b!2026350 () Bool)

(assert (=> b!2026350 (= e!1279990 (= lt!760938 call!124278))))

(declare-fun b!2026351 () Bool)

(assert (=> b!2026351 (= e!1279987 (not (= (head!4576 lt!760863) (c!327831 (regex!3988 (rule!6217 (h!27594 tokens!598)))))))))

(declare-fun b!2026352 () Bool)

(assert (=> b!2026352 (= e!1279991 (= (head!4576 lt!760863) (c!327831 (regex!3988 (rule!6217 (h!27594 tokens!598))))))))

(declare-fun d!619735 () Bool)

(assert (=> d!619735 e!1279990))

(declare-fun c!327893 () Bool)

(assert (=> d!619735 (= c!327893 ((_ is EmptyExpr!5413) (regex!3988 (rule!6217 (h!27594 tokens!598)))))))

(declare-fun e!1279986 () Bool)

(assert (=> d!619735 (= lt!760938 e!1279986)))

(declare-fun c!327891 () Bool)

(assert (=> d!619735 (= c!327891 (isEmpty!13824 lt!760863))))

(assert (=> d!619735 (validRegex!2175 (regex!3988 (rule!6217 (h!27594 tokens!598))))))

(assert (=> d!619735 (= (matchR!2679 (regex!3988 (rule!6217 (h!27594 tokens!598))) lt!760863) lt!760938)))

(declare-fun b!2026353 () Bool)

(declare-fun res!888494 () Bool)

(assert (=> b!2026353 (=> res!888494 e!1279987)))

(assert (=> b!2026353 (= res!888494 (not (isEmpty!13824 (tail!3052 lt!760863))))))

(declare-fun b!2026354 () Bool)

(assert (=> b!2026354 (= e!1279986 (matchR!2679 (derivativeStep!1408 (regex!3988 (rule!6217 (h!27594 tokens!598))) (head!4576 lt!760863)) (tail!3052 lt!760863)))))

(declare-fun b!2026355 () Bool)

(assert (=> b!2026355 (= e!1279986 (nullable!1649 (regex!3988 (rule!6217 (h!27594 tokens!598)))))))

(declare-fun b!2026356 () Bool)

(assert (=> b!2026356 (= e!1279985 (not lt!760938))))

(assert (= (and d!619735 c!327891) b!2026355))

(assert (= (and d!619735 (not c!327891)) b!2026354))

(assert (= (and d!619735 c!327893) b!2026350))

(assert (= (and d!619735 (not c!327893)) b!2026344))

(assert (= (and b!2026344 c!327892) b!2026356))

(assert (= (and b!2026344 (not c!327892)) b!2026348))

(assert (= (and b!2026348 (not res!888495)) b!2026349))

(assert (= (and b!2026349 res!888498) b!2026345))

(assert (= (and b!2026345 res!888493) b!2026347))

(assert (= (and b!2026347 res!888499) b!2026352))

(assert (= (and b!2026349 (not res!888500)) b!2026343))

(assert (= (and b!2026343 res!888496) b!2026346))

(assert (= (and b!2026346 (not res!888497)) b!2026353))

(assert (= (and b!2026353 (not res!888494)) b!2026351))

(assert (= (or b!2026350 b!2026345 b!2026346) bm!124273))

(declare-fun m!2465081 () Bool)

(assert (=> b!2026353 m!2465081))

(assert (=> b!2026353 m!2465081))

(declare-fun m!2465083 () Bool)

(assert (=> b!2026353 m!2465083))

(declare-fun m!2465085 () Bool)

(assert (=> d!619735 m!2465085))

(declare-fun m!2465087 () Bool)

(assert (=> d!619735 m!2465087))

(assert (=> bm!124273 m!2465085))

(assert (=> b!2026347 m!2465081))

(assert (=> b!2026347 m!2465081))

(assert (=> b!2026347 m!2465083))

(declare-fun m!2465089 () Bool)

(assert (=> b!2026355 m!2465089))

(declare-fun m!2465091 () Bool)

(assert (=> b!2026351 m!2465091))

(assert (=> b!2026352 m!2465091))

(assert (=> b!2026354 m!2465091))

(assert (=> b!2026354 m!2465091))

(declare-fun m!2465093 () Bool)

(assert (=> b!2026354 m!2465093))

(assert (=> b!2026354 m!2465081))

(assert (=> b!2026354 m!2465093))

(assert (=> b!2026354 m!2465081))

(declare-fun m!2465095 () Bool)

(assert (=> b!2026354 m!2465095))

(assert (=> b!2026036 d!619735))

(declare-fun d!619737 () Bool)

(declare-fun res!888505 () Bool)

(declare-fun e!1279994 () Bool)

(assert (=> d!619737 (=> (not res!888505) (not e!1279994))))

(assert (=> d!619737 (= res!888505 (validRegex!2175 (regex!3988 (rule!6217 (h!27594 tokens!598)))))))

(assert (=> d!619737 (= (ruleValid!1219 thiss!23328 (rule!6217 (h!27594 tokens!598))) e!1279994)))

(declare-fun b!2026361 () Bool)

(declare-fun res!888506 () Bool)

(assert (=> b!2026361 (=> (not res!888506) (not e!1279994))))

(assert (=> b!2026361 (= res!888506 (not (nullable!1649 (regex!3988 (rule!6217 (h!27594 tokens!598))))))))

(declare-fun b!2026362 () Bool)

(assert (=> b!2026362 (= e!1279994 (not (= (tag!4470 (rule!6217 (h!27594 tokens!598))) (String!25739 ""))))))

(assert (= (and d!619737 res!888505) b!2026361))

(assert (= (and b!2026361 res!888506) b!2026362))

(assert (=> d!619737 m!2465087))

(assert (=> b!2026361 m!2465089))

(assert (=> b!2026036 d!619737))

(declare-fun d!619739 () Bool)

(assert (=> d!619739 (ruleValid!1219 thiss!23328 (rule!6217 (h!27594 tokens!598)))))

(declare-fun lt!760941 () Unit!36842)

(declare-fun choose!12346 (LexerInterface!3601 Rule!7776 List!22274) Unit!36842)

(assert (=> d!619739 (= lt!760941 (choose!12346 thiss!23328 (rule!6217 (h!27594 tokens!598)) rules!3198))))

(assert (=> d!619739 (contains!4092 rules!3198 (rule!6217 (h!27594 tokens!598)))))

(assert (=> d!619739 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!690 thiss!23328 (rule!6217 (h!27594 tokens!598)) rules!3198) lt!760941)))

(declare-fun bs!420706 () Bool)

(assert (= bs!420706 d!619739))

(assert (=> bs!420706 m!2464721))

(declare-fun m!2465097 () Bool)

(assert (=> bs!420706 m!2465097))

(assert (=> bs!420706 m!2464761))

(assert (=> b!2026036 d!619739))

(declare-fun d!619741 () Bool)

(declare-fun res!888509 () Bool)

(declare-fun e!1279997 () Bool)

(assert (=> d!619741 (=> (not res!888509) (not e!1279997))))

(declare-fun rulesValid!1492 (LexerInterface!3601 List!22274) Bool)

(assert (=> d!619741 (= res!888509 (rulesValid!1492 thiss!23328 rules!3198))))

(assert (=> d!619741 (= (rulesInvariant!3208 thiss!23328 rules!3198) e!1279997)))

(declare-fun b!2026365 () Bool)

(declare-datatypes ((List!22277 0))(
  ( (Nil!22195) (Cons!22195 (h!27596 String!25738) (t!190000 List!22277)) )
))
(declare-fun noDuplicateTag!1490 (LexerInterface!3601 List!22274 List!22277) Bool)

(assert (=> b!2026365 (= e!1279997 (noDuplicateTag!1490 thiss!23328 rules!3198 Nil!22195))))

(assert (= (and d!619741 res!888509) b!2026365))

(declare-fun m!2465099 () Bool)

(assert (=> d!619741 m!2465099))

(declare-fun m!2465101 () Bool)

(assert (=> b!2026365 m!2465101))

(assert (=> b!2026017 d!619741))

(declare-fun d!619743 () Bool)

(declare-fun isEmpty!13829 (Option!4660) Bool)

(assert (=> d!619743 (= (isDefined!3948 lt!760874) (not (isEmpty!13829 lt!760874)))))

(declare-fun bs!420707 () Bool)

(assert (= bs!420707 d!619743))

(declare-fun m!2465103 () Bool)

(assert (=> bs!420707 m!2465103))

(assert (=> b!2026038 d!619743))

(declare-fun d!619745 () Bool)

(assert (=> d!619745 (= (get!7045 lt!760874) (v!26968 lt!760874))))

(assert (=> b!2026038 d!619745))

(declare-fun call!124281 () Option!4660)

(declare-fun bm!124276 () Bool)

(declare-fun maxPrefixOneRule!1262 (LexerInterface!3601 Rule!7776 List!22273) Option!4660)

(assert (=> bm!124276 (= call!124281 (maxPrefixOneRule!1262 thiss!23328 (h!27593 rules!3198) lt!760863))))

(declare-fun b!2026434 () Bool)

(declare-fun res!888547 () Bool)

(declare-fun e!1280037 () Bool)

(assert (=> b!2026434 (=> (not res!888547) (not e!1280037))))

(declare-fun lt!760982 () Option!4660)

(assert (=> b!2026434 (= res!888547 (= (++!5997 (list!9055 (charsOf!2528 (_1!11903 (get!7045 lt!760982)))) (_2!11903 (get!7045 lt!760982))) lt!760863))))

(declare-fun b!2026435 () Bool)

(declare-fun res!888546 () Bool)

(assert (=> b!2026435 (=> (not res!888546) (not e!1280037))))

(assert (=> b!2026435 (= res!888546 (< (size!17333 (_2!11903 (get!7045 lt!760982))) (size!17333 lt!760863)))))

(declare-fun b!2026436 () Bool)

(declare-fun e!1280036 () Option!4660)

(declare-fun lt!760983 () Option!4660)

(declare-fun lt!760981 () Option!4660)

(assert (=> b!2026436 (= e!1280036 (ite (and ((_ is None!4659) lt!760983) ((_ is None!4659) lt!760981)) None!4659 (ite ((_ is None!4659) lt!760981) lt!760983 (ite ((_ is None!4659) lt!760983) lt!760981 (ite (>= (size!17332 (_1!11903 (v!26968 lt!760983))) (size!17332 (_1!11903 (v!26968 lt!760981)))) lt!760983 lt!760981)))))))

(assert (=> b!2026436 (= lt!760983 call!124281)))

(assert (=> b!2026436 (= lt!760981 (maxPrefix!2037 thiss!23328 (t!189885 rules!3198) lt!760863))))

(declare-fun b!2026437 () Bool)

(assert (=> b!2026437 (= e!1280036 call!124281)))

(declare-fun d!619747 () Bool)

(declare-fun e!1280038 () Bool)

(assert (=> d!619747 e!1280038))

(declare-fun res!888543 () Bool)

(assert (=> d!619747 (=> res!888543 e!1280038)))

(assert (=> d!619747 (= res!888543 (isEmpty!13829 lt!760982))))

(assert (=> d!619747 (= lt!760982 e!1280036)))

(declare-fun c!327906 () Bool)

(assert (=> d!619747 (= c!327906 (and ((_ is Cons!22192) rules!3198) ((_ is Nil!22192) (t!189885 rules!3198))))))

(declare-fun lt!760980 () Unit!36842)

(declare-fun lt!760979 () Unit!36842)

(assert (=> d!619747 (= lt!760980 lt!760979)))

(declare-fun isPrefix!1980 (List!22273 List!22273) Bool)

(assert (=> d!619747 (isPrefix!1980 lt!760863 lt!760863)))

(declare-fun lemmaIsPrefixRefl!1298 (List!22273 List!22273) Unit!36842)

(assert (=> d!619747 (= lt!760979 (lemmaIsPrefixRefl!1298 lt!760863 lt!760863))))

(declare-fun rulesValidInductive!1379 (LexerInterface!3601 List!22274) Bool)

(assert (=> d!619747 (rulesValidInductive!1379 thiss!23328 rules!3198)))

(assert (=> d!619747 (= (maxPrefix!2037 thiss!23328 rules!3198 lt!760863) lt!760982)))

(declare-fun b!2026438 () Bool)

(declare-fun res!888549 () Bool)

(assert (=> b!2026438 (=> (not res!888549) (not e!1280037))))

(assert (=> b!2026438 (= res!888549 (= (list!9055 (charsOf!2528 (_1!11903 (get!7045 lt!760982)))) (originalCharacters!4795 (_1!11903 (get!7045 lt!760982)))))))

(declare-fun b!2026439 () Bool)

(declare-fun res!888548 () Bool)

(assert (=> b!2026439 (=> (not res!888548) (not e!1280037))))

(assert (=> b!2026439 (= res!888548 (matchR!2679 (regex!3988 (rule!6217 (_1!11903 (get!7045 lt!760982)))) (list!9055 (charsOf!2528 (_1!11903 (get!7045 lt!760982))))))))

(declare-fun b!2026440 () Bool)

(declare-fun res!888544 () Bool)

(assert (=> b!2026440 (=> (not res!888544) (not e!1280037))))

(declare-fun apply!5834 (TokenValueInjection!7832 BalanceConc!14660) TokenValue!4124)

(assert (=> b!2026440 (= res!888544 (= (value!125249 (_1!11903 (get!7045 lt!760982))) (apply!5834 (transformation!3988 (rule!6217 (_1!11903 (get!7045 lt!760982)))) (seqFromList!2842 (originalCharacters!4795 (_1!11903 (get!7045 lt!760982)))))))))

(declare-fun b!2026441 () Bool)

(assert (=> b!2026441 (= e!1280038 e!1280037)))

(declare-fun res!888545 () Bool)

(assert (=> b!2026441 (=> (not res!888545) (not e!1280037))))

(assert (=> b!2026441 (= res!888545 (isDefined!3948 lt!760982))))

(declare-fun b!2026442 () Bool)

(assert (=> b!2026442 (= e!1280037 (contains!4092 rules!3198 (rule!6217 (_1!11903 (get!7045 lt!760982)))))))

(assert (= (and d!619747 c!327906) b!2026437))

(assert (= (and d!619747 (not c!327906)) b!2026436))

(assert (= (or b!2026437 b!2026436) bm!124276))

(assert (= (and d!619747 (not res!888543)) b!2026441))

(assert (= (and b!2026441 res!888545) b!2026438))

(assert (= (and b!2026438 res!888549) b!2026435))

(assert (= (and b!2026435 res!888546) b!2026434))

(assert (= (and b!2026434 res!888547) b!2026440))

(assert (= (and b!2026440 res!888544) b!2026439))

(assert (= (and b!2026439 res!888548) b!2026442))

(declare-fun m!2465191 () Bool)

(assert (=> b!2026438 m!2465191))

(declare-fun m!2465193 () Bool)

(assert (=> b!2026438 m!2465193))

(assert (=> b!2026438 m!2465193))

(declare-fun m!2465195 () Bool)

(assert (=> b!2026438 m!2465195))

(declare-fun m!2465197 () Bool)

(assert (=> bm!124276 m!2465197))

(assert (=> b!2026439 m!2465191))

(assert (=> b!2026439 m!2465193))

(assert (=> b!2026439 m!2465193))

(assert (=> b!2026439 m!2465195))

(assert (=> b!2026439 m!2465195))

(declare-fun m!2465199 () Bool)

(assert (=> b!2026439 m!2465199))

(assert (=> b!2026434 m!2465191))

(assert (=> b!2026434 m!2465193))

(assert (=> b!2026434 m!2465193))

(assert (=> b!2026434 m!2465195))

(assert (=> b!2026434 m!2465195))

(declare-fun m!2465201 () Bool)

(assert (=> b!2026434 m!2465201))

(assert (=> b!2026435 m!2465191))

(declare-fun m!2465203 () Bool)

(assert (=> b!2026435 m!2465203))

(declare-fun m!2465205 () Bool)

(assert (=> b!2026435 m!2465205))

(declare-fun m!2465207 () Bool)

(assert (=> d!619747 m!2465207))

(declare-fun m!2465209 () Bool)

(assert (=> d!619747 m!2465209))

(declare-fun m!2465211 () Bool)

(assert (=> d!619747 m!2465211))

(declare-fun m!2465213 () Bool)

(assert (=> d!619747 m!2465213))

(declare-fun m!2465215 () Bool)

(assert (=> b!2026436 m!2465215))

(assert (=> b!2026442 m!2465191))

(declare-fun m!2465217 () Bool)

(assert (=> b!2026442 m!2465217))

(assert (=> b!2026440 m!2465191))

(declare-fun m!2465219 () Bool)

(assert (=> b!2026440 m!2465219))

(assert (=> b!2026440 m!2465219))

(declare-fun m!2465221 () Bool)

(assert (=> b!2026440 m!2465221))

(declare-fun m!2465223 () Bool)

(assert (=> b!2026441 m!2465223))

(assert (=> b!2026038 d!619747))

(declare-fun d!619767 () Bool)

(declare-fun isEmpty!13830 (Option!4659) Bool)

(assert (=> d!619767 (= (isDefined!3947 lt!760858) (not (isEmpty!13830 lt!760858)))))

(declare-fun bs!420709 () Bool)

(assert (= bs!420709 d!619767))

(declare-fun m!2465225 () Bool)

(assert (=> bs!420709 m!2465225))

(assert (=> b!2026038 d!619767))

(declare-fun d!619769 () Bool)

(declare-fun list!9057 (Conc!7422) List!22273)

(assert (=> d!619769 (= (list!9055 (charsOf!2528 separatorToken!354)) (list!9057 (c!327830 (charsOf!2528 separatorToken!354))))))

(declare-fun bs!420710 () Bool)

(assert (= bs!420710 d!619769))

(declare-fun m!2465227 () Bool)

(assert (=> bs!420710 m!2465227))

(assert (=> b!2026038 d!619769))

(declare-fun d!619771 () Bool)

(declare-fun e!1280043 () Bool)

(assert (=> d!619771 e!1280043))

(declare-fun res!888556 () Bool)

(assert (=> d!619771 (=> (not res!888556) (not e!1280043))))

(assert (=> d!619771 (= res!888556 (isDefined!3947 (getRuleFromTag!803 thiss!23328 rules!3198 (tag!4470 (rule!6217 separatorToken!354)))))))

(declare-fun lt!760987 () Unit!36842)

(declare-fun choose!12347 (LexerInterface!3601 List!22274 List!22273 Token!7528) Unit!36842)

(assert (=> d!619771 (= lt!760987 (choose!12347 thiss!23328 rules!3198 lt!760862 separatorToken!354))))

(assert (=> d!619771 (rulesInvariant!3208 thiss!23328 rules!3198)))

(assert (=> d!619771 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!803 thiss!23328 rules!3198 lt!760862 separatorToken!354) lt!760987)))

(declare-fun b!2026451 () Bool)

(declare-fun res!888557 () Bool)

(assert (=> b!2026451 (=> (not res!888557) (not e!1280043))))

(assert (=> b!2026451 (= res!888557 (matchR!2679 (regex!3988 (get!7044 (getRuleFromTag!803 thiss!23328 rules!3198 (tag!4470 (rule!6217 separatorToken!354))))) (list!9055 (charsOf!2528 separatorToken!354))))))

(declare-fun b!2026452 () Bool)

(assert (=> b!2026452 (= e!1280043 (= (rule!6217 separatorToken!354) (get!7044 (getRuleFromTag!803 thiss!23328 rules!3198 (tag!4470 (rule!6217 separatorToken!354))))))))

(assert (= (and d!619771 res!888556) b!2026451))

(assert (= (and b!2026451 res!888557) b!2026452))

(assert (=> d!619771 m!2464791))

(assert (=> d!619771 m!2464791))

(declare-fun m!2465229 () Bool)

(assert (=> d!619771 m!2465229))

(declare-fun m!2465231 () Bool)

(assert (=> d!619771 m!2465231))

(assert (=> d!619771 m!2464697))

(assert (=> b!2026451 m!2464791))

(assert (=> b!2026451 m!2464801))

(declare-fun m!2465233 () Bool)

(assert (=> b!2026451 m!2465233))

(assert (=> b!2026451 m!2464793))

(assert (=> b!2026451 m!2464791))

(declare-fun m!2465235 () Bool)

(assert (=> b!2026451 m!2465235))

(assert (=> b!2026451 m!2464793))

(assert (=> b!2026451 m!2464801))

(assert (=> b!2026452 m!2464791))

(assert (=> b!2026452 m!2464791))

(assert (=> b!2026452 m!2465235))

(assert (=> b!2026038 d!619771))

(declare-fun d!619773 () Bool)

(declare-fun e!1280044 () Bool)

(assert (=> d!619773 e!1280044))

(declare-fun res!888558 () Bool)

(assert (=> d!619773 (=> (not res!888558) (not e!1280044))))

(assert (=> d!619773 (= res!888558 (isDefined!3947 (getRuleFromTag!803 thiss!23328 rules!3198 (tag!4470 (rule!6217 (h!27594 tokens!598))))))))

(declare-fun lt!760988 () Unit!36842)

(assert (=> d!619773 (= lt!760988 (choose!12347 thiss!23328 rules!3198 lt!760863 (h!27594 tokens!598)))))

(assert (=> d!619773 (rulesInvariant!3208 thiss!23328 rules!3198)))

(assert (=> d!619773 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!803 thiss!23328 rules!3198 lt!760863 (h!27594 tokens!598)) lt!760988)))

(declare-fun b!2026453 () Bool)

(declare-fun res!888559 () Bool)

(assert (=> b!2026453 (=> (not res!888559) (not e!1280044))))

(assert (=> b!2026453 (= res!888559 (matchR!2679 (regex!3988 (get!7044 (getRuleFromTag!803 thiss!23328 rules!3198 (tag!4470 (rule!6217 (h!27594 tokens!598)))))) (list!9055 (charsOf!2528 (h!27594 tokens!598)))))))

(declare-fun b!2026454 () Bool)

(assert (=> b!2026454 (= e!1280044 (= (rule!6217 (h!27594 tokens!598)) (get!7044 (getRuleFromTag!803 thiss!23328 rules!3198 (tag!4470 (rule!6217 (h!27594 tokens!598)))))))))

(assert (= (and d!619773 res!888558) b!2026453))

(assert (= (and b!2026453 res!888559) b!2026454))

(assert (=> d!619773 m!2464811))

(assert (=> d!619773 m!2464811))

(declare-fun m!2465237 () Bool)

(assert (=> d!619773 m!2465237))

(declare-fun m!2465239 () Bool)

(assert (=> d!619773 m!2465239))

(assert (=> d!619773 m!2464697))

(assert (=> b!2026453 m!2464811))

(declare-fun m!2465241 () Bool)

(assert (=> b!2026453 m!2465241))

(declare-fun m!2465243 () Bool)

(assert (=> b!2026453 m!2465243))

(assert (=> b!2026453 m!2464795))

(assert (=> b!2026453 m!2464811))

(declare-fun m!2465245 () Bool)

(assert (=> b!2026453 m!2465245))

(assert (=> b!2026453 m!2464795))

(assert (=> b!2026453 m!2465241))

(assert (=> b!2026454 m!2464811))

(assert (=> b!2026454 m!2464811))

(assert (=> b!2026454 m!2465245))

(assert (=> b!2026038 d!619773))

(declare-fun b!2026467 () Bool)

(declare-fun e!1280056 () Option!4659)

(declare-fun e!1280053 () Option!4659)

(assert (=> b!2026467 (= e!1280056 e!1280053)))

(declare-fun c!327913 () Bool)

(assert (=> b!2026467 (= c!327913 (and ((_ is Cons!22192) rules!3198) (not (= (tag!4470 (h!27593 rules!3198)) (tag!4470 (rule!6217 (h!27594 tokens!598)))))))))

(declare-fun b!2026468 () Bool)

(declare-fun lt!760996 () Unit!36842)

(declare-fun lt!760997 () Unit!36842)

(assert (=> b!2026468 (= lt!760996 lt!760997)))

(assert (=> b!2026468 (rulesInvariant!3208 thiss!23328 (t!189885 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!305 (LexerInterface!3601 Rule!7776 List!22274) Unit!36842)

(assert (=> b!2026468 (= lt!760997 (lemmaInvariantOnRulesThenOnTail!305 thiss!23328 (h!27593 rules!3198) (t!189885 rules!3198)))))

(assert (=> b!2026468 (= e!1280053 (getRuleFromTag!803 thiss!23328 (t!189885 rules!3198) (tag!4470 (rule!6217 (h!27594 tokens!598)))))))

(declare-fun b!2026469 () Bool)

(declare-fun e!1280055 () Bool)

(declare-fun e!1280054 () Bool)

(assert (=> b!2026469 (= e!1280055 e!1280054)))

(declare-fun res!888565 () Bool)

(assert (=> b!2026469 (=> (not res!888565) (not e!1280054))))

(declare-fun lt!760995 () Option!4659)

(assert (=> b!2026469 (= res!888565 (contains!4092 rules!3198 (get!7044 lt!760995)))))

(declare-fun b!2026470 () Bool)

(assert (=> b!2026470 (= e!1280053 None!4658)))

(declare-fun d!619775 () Bool)

(assert (=> d!619775 e!1280055))

(declare-fun res!888564 () Bool)

(assert (=> d!619775 (=> res!888564 e!1280055)))

(assert (=> d!619775 (= res!888564 (isEmpty!13830 lt!760995))))

(assert (=> d!619775 (= lt!760995 e!1280056)))

(declare-fun c!327912 () Bool)

(assert (=> d!619775 (= c!327912 (and ((_ is Cons!22192) rules!3198) (= (tag!4470 (h!27593 rules!3198)) (tag!4470 (rule!6217 (h!27594 tokens!598))))))))

(assert (=> d!619775 (rulesInvariant!3208 thiss!23328 rules!3198)))

(assert (=> d!619775 (= (getRuleFromTag!803 thiss!23328 rules!3198 (tag!4470 (rule!6217 (h!27594 tokens!598)))) lt!760995)))

(declare-fun b!2026471 () Bool)

(assert (=> b!2026471 (= e!1280056 (Some!4658 (h!27593 rules!3198)))))

(declare-fun b!2026472 () Bool)

(assert (=> b!2026472 (= e!1280054 (= (tag!4470 (get!7044 lt!760995)) (tag!4470 (rule!6217 (h!27594 tokens!598)))))))

(assert (= (and d!619775 c!327912) b!2026471))

(assert (= (and d!619775 (not c!327912)) b!2026467))

(assert (= (and b!2026467 c!327913) b!2026468))

(assert (= (and b!2026467 (not c!327913)) b!2026470))

(assert (= (and d!619775 (not res!888564)) b!2026469))

(assert (= (and b!2026469 res!888565) b!2026472))

(declare-fun m!2465247 () Bool)

(assert (=> b!2026468 m!2465247))

(declare-fun m!2465249 () Bool)

(assert (=> b!2026468 m!2465249))

(declare-fun m!2465251 () Bool)

(assert (=> b!2026468 m!2465251))

(declare-fun m!2465253 () Bool)

(assert (=> b!2026469 m!2465253))

(assert (=> b!2026469 m!2465253))

(declare-fun m!2465255 () Bool)

(assert (=> b!2026469 m!2465255))

(declare-fun m!2465257 () Bool)

(assert (=> d!619775 m!2465257))

(assert (=> d!619775 m!2464697))

(assert (=> b!2026472 m!2465253))

(assert (=> b!2026038 d!619775))

(declare-fun d!619777 () Bool)

(assert (=> d!619777 (= (list!9055 lt!760854) (list!9057 (c!327830 lt!760854)))))

(declare-fun bs!420711 () Bool)

(assert (= bs!420711 d!619777))

(declare-fun m!2465259 () Bool)

(assert (=> bs!420711 m!2465259))

(assert (=> b!2026038 d!619777))

(declare-fun bs!420714 () Bool)

(declare-fun b!2026531 () Bool)

(assert (= bs!420714 (and b!2026531 b!2026005)))

(declare-fun lambda!76435 () Int)

(assert (=> bs!420714 (not (= lambda!76435 lambda!76423))))

(declare-fun bs!420715 () Bool)

(assert (= bs!420715 (and b!2026531 d!619685)))

(assert (=> bs!420715 (= lambda!76435 lambda!76429)))

(declare-fun b!2026535 () Bool)

(declare-fun e!1280083 () Bool)

(assert (=> b!2026535 (= e!1280083 true)))

(declare-fun b!2026534 () Bool)

(declare-fun e!1280082 () Bool)

(assert (=> b!2026534 (= e!1280082 e!1280083)))

(declare-fun b!2026533 () Bool)

(declare-fun e!1280081 () Bool)

(assert (=> b!2026533 (= e!1280081 e!1280082)))

(assert (=> b!2026531 e!1280081))

(assert (= b!2026534 b!2026535))

(assert (= b!2026533 b!2026534))

(assert (= (and b!2026531 ((_ is Cons!22192) rules!3198)) b!2026533))

(assert (=> b!2026535 (< (dynLambda!11006 order!14183 (toValue!5661 (transformation!3988 (h!27593 rules!3198)))) (dynLambda!11007 order!14185 lambda!76435))))

(assert (=> b!2026535 (< (dynLambda!11008 order!14187 (toChars!5520 (transformation!3988 (h!27593 rules!3198)))) (dynLambda!11007 order!14185 lambda!76435))))

(assert (=> b!2026531 true))

(declare-fun b!2026525 () Bool)

(declare-fun e!1280079 () List!22273)

(assert (=> b!2026525 (= e!1280079 Nil!22191)))

(declare-fun b!2026526 () Bool)

(declare-fun e!1280078 () List!22273)

(declare-fun call!124299 () List!22273)

(declare-fun lt!761033 () List!22273)

(assert (=> b!2026526 (= e!1280078 (++!5997 call!124299 lt!761033))))

(declare-fun b!2026527 () Bool)

(declare-fun e!1280077 () List!22273)

(assert (=> b!2026527 (= e!1280077 (list!9055 (charsOf!2528 (h!27594 (t!189886 tokens!598)))))))

(declare-fun b!2026528 () Bool)

(assert (=> b!2026528 (= e!1280078 Nil!22191)))

(assert (=> b!2026528 (= (print!1563 thiss!23328 (singletonSeq!1964 (h!27594 (t!189886 tokens!598)))) (printTailRec!1069 thiss!23328 (singletonSeq!1964 (h!27594 (t!189886 tokens!598))) 0 (BalanceConc!14661 Empty!7422)))))

(declare-fun lt!761030 () Unit!36842)

(declare-fun Unit!36846 () Unit!36842)

(assert (=> b!2026528 (= lt!761030 Unit!36846)))

(declare-fun call!124298 () List!22273)

(declare-fun lt!761032 () Unit!36842)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!774 (LexerInterface!3601 List!22274 List!22273 List!22273) Unit!36842)

(assert (=> b!2026528 (= lt!761032 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!774 thiss!23328 rules!3198 call!124298 lt!761033))))

(assert (=> b!2026528 false))

(declare-fun lt!761034 () Unit!36842)

(declare-fun Unit!36847 () Unit!36842)

(assert (=> b!2026528 (= lt!761034 Unit!36847)))

(declare-fun b!2026529 () Bool)

(declare-fun c!327928 () Bool)

(declare-fun lt!761031 () Option!4660)

(assert (=> b!2026529 (= c!327928 (and ((_ is Some!4659) lt!761031) (not (= (_1!11903 (v!26968 lt!761031)) (h!27594 (t!189886 tokens!598))))))))

(declare-fun e!1280080 () List!22273)

(assert (=> b!2026529 (= e!1280080 e!1280078)))

(declare-fun bm!124292 () Bool)

(declare-fun call!124300 () BalanceConc!14660)

(declare-fun call!124296 () BalanceConc!14660)

(assert (=> bm!124292 (= call!124300 call!124296)))

(declare-fun c!327927 () Bool)

(declare-fun call!124297 () List!22273)

(declare-fun bm!124293 () Bool)

(assert (=> bm!124293 (= call!124297 (list!9055 (ite c!327927 call!124296 call!124300)))))

(declare-fun b!2026530 () Bool)

(assert (=> b!2026530 (= e!1280077 call!124297)))

(assert (=> b!2026531 (= e!1280079 e!1280080)))

(declare-fun lt!761035 () Unit!36842)

(declare-fun forallContained!743 (List!22275 Int Token!7528) Unit!36842)

(assert (=> b!2026531 (= lt!761035 (forallContained!743 (t!189886 tokens!598) lambda!76435 (h!27594 (t!189886 tokens!598))))))

(assert (=> b!2026531 (= lt!761033 (printWithSeparatorTokenWhenNeededList!630 thiss!23328 rules!3198 (t!189886 (t!189886 tokens!598)) separatorToken!354))))

(assert (=> b!2026531 (= lt!761031 (maxPrefix!2037 thiss!23328 rules!3198 (++!5997 (list!9055 (charsOf!2528 (h!27594 (t!189886 tokens!598)))) lt!761033)))))

(assert (=> b!2026531 (= c!327927 (and ((_ is Some!4659) lt!761031) (= (_1!11903 (v!26968 lt!761031)) (h!27594 (t!189886 tokens!598)))))))

(declare-fun d!619779 () Bool)

(declare-fun c!327926 () Bool)

(assert (=> d!619779 (= c!327926 ((_ is Cons!22193) (t!189886 tokens!598)))))

(assert (=> d!619779 (= (printWithSeparatorTokenWhenNeededList!630 thiss!23328 rules!3198 (t!189886 tokens!598) separatorToken!354) e!1280079)))

(declare-fun bm!124291 () Bool)

(assert (=> bm!124291 (= call!124298 call!124297)))

(declare-fun bm!124294 () Bool)

(declare-fun c!327929 () Bool)

(assert (=> bm!124294 (= c!327929 c!327927)))

(assert (=> bm!124294 (= call!124299 (++!5997 e!1280077 (ite c!327927 lt!761033 call!124298)))))

(declare-fun b!2026532 () Bool)

(assert (=> b!2026532 (= e!1280080 call!124299)))

(declare-fun bm!124295 () Bool)

(assert (=> bm!124295 (= call!124296 (charsOf!2528 (ite c!327927 (h!27594 (t!189886 tokens!598)) (ite c!327928 separatorToken!354 (h!27594 (t!189886 tokens!598))))))))

(assert (= (and d!619779 c!327926) b!2026531))

(assert (= (and d!619779 (not c!327926)) b!2026525))

(assert (= (and b!2026531 c!327927) b!2026532))

(assert (= (and b!2026531 (not c!327927)) b!2026529))

(assert (= (and b!2026529 c!327928) b!2026526))

(assert (= (and b!2026529 (not c!327928)) b!2026528))

(assert (= (or b!2026526 b!2026528) bm!124292))

(assert (= (or b!2026526 b!2026528) bm!124291))

(assert (= (or b!2026532 bm!124292) bm!124295))

(assert (= (or b!2026532 bm!124291) bm!124293))

(assert (= (or b!2026532 b!2026526) bm!124294))

(assert (= (and bm!124294 c!327929) b!2026530))

(assert (= (and bm!124294 (not c!327929)) b!2026527))

(declare-fun m!2465329 () Bool)

(assert (=> b!2026531 m!2465329))

(declare-fun m!2465331 () Bool)

(assert (=> b!2026531 m!2465331))

(declare-fun m!2465333 () Bool)

(assert (=> b!2026531 m!2465333))

(assert (=> b!2026531 m!2465331))

(declare-fun m!2465335 () Bool)

(assert (=> b!2026531 m!2465335))

(assert (=> b!2026531 m!2465329))

(assert (=> b!2026531 m!2465335))

(declare-fun m!2465337 () Bool)

(assert (=> b!2026531 m!2465337))

(declare-fun m!2465339 () Bool)

(assert (=> b!2026531 m!2465339))

(declare-fun m!2465341 () Bool)

(assert (=> bm!124294 m!2465341))

(declare-fun m!2465343 () Bool)

(assert (=> bm!124295 m!2465343))

(assert (=> b!2026527 m!2465329))

(assert (=> b!2026527 m!2465329))

(assert (=> b!2026527 m!2465331))

(declare-fun m!2465345 () Bool)

(assert (=> b!2026528 m!2465345))

(assert (=> b!2026528 m!2465345))

(declare-fun m!2465347 () Bool)

(assert (=> b!2026528 m!2465347))

(assert (=> b!2026528 m!2465345))

(declare-fun m!2465349 () Bool)

(assert (=> b!2026528 m!2465349))

(declare-fun m!2465351 () Bool)

(assert (=> b!2026528 m!2465351))

(declare-fun m!2465353 () Bool)

(assert (=> bm!124293 m!2465353))

(declare-fun m!2465355 () Bool)

(assert (=> b!2026526 m!2465355))

(assert (=> b!2026038 d!619779))

(declare-fun d!619791 () Bool)

(assert (=> d!619791 (= (isDefined!3947 lt!760873) (not (isEmpty!13830 lt!760873)))))

(declare-fun bs!420716 () Bool)

(assert (= bs!420716 d!619791))

(declare-fun m!2465357 () Bool)

(assert (=> bs!420716 m!2465357))

(assert (=> b!2026038 d!619791))

(declare-fun b!2026558 () Bool)

(declare-fun e!1280096 () Bool)

(assert (=> b!2026558 (= e!1280096 true)))

(declare-fun d!619793 () Bool)

(assert (=> d!619793 e!1280096))

(assert (= d!619793 b!2026558))

(declare-fun lambda!76440 () Int)

(declare-fun order!14191 () Int)

(declare-fun dynLambda!11013 (Int Int) Int)

(assert (=> b!2026558 (< (dynLambda!11006 order!14183 (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) (dynLambda!11013 order!14191 lambda!76440))))

(assert (=> b!2026558 (< (dynLambda!11008 order!14187 (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) (dynLambda!11013 order!14191 lambda!76440))))

(declare-fun dynLambda!11014 (Int BalanceConc!14660) TokenValue!4124)

(assert (=> d!619793 (= (dynLambda!11014 (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) lt!760854) (dynLambda!11014 (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (seqFromList!2842 (originalCharacters!4795 (h!27594 tokens!598)))))))

(declare-fun lt!761050 () Unit!36842)

(declare-fun Forall2of!240 (Int BalanceConc!14660 BalanceConc!14660) Unit!36842)

(assert (=> d!619793 (= lt!761050 (Forall2of!240 lambda!76440 lt!760854 (seqFromList!2842 (originalCharacters!4795 (h!27594 tokens!598)))))))

(assert (=> d!619793 (= (list!9055 lt!760854) (list!9055 (seqFromList!2842 (originalCharacters!4795 (h!27594 tokens!598)))))))

(assert (=> d!619793 (= (lemmaEqSameImage!674 (transformation!3988 (rule!6217 (h!27594 tokens!598))) lt!760854 (seqFromList!2842 (originalCharacters!4795 (h!27594 tokens!598)))) lt!761050)))

(declare-fun b_lambda!68111 () Bool)

(assert (=> (not b_lambda!68111) (not d!619793)))

(declare-fun t!189921 () Bool)

(declare-fun tb!127665 () Bool)

(assert (=> (and b!2026009 (= (toValue!5661 (transformation!3988 (rule!6217 separatorToken!354))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189921) tb!127665))

(declare-fun result!152762 () Bool)

(assert (=> tb!127665 (= result!152762 (inv!21 (dynLambda!11014 (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) lt!760854)))))

(declare-fun m!2465359 () Bool)

(assert (=> tb!127665 m!2465359))

(assert (=> d!619793 t!189921))

(declare-fun b_and!161173 () Bool)

(assert (= b_and!161137 (and (=> t!189921 result!152762) b_and!161173)))

(declare-fun t!189923 () Bool)

(declare-fun tb!127667 () Bool)

(assert (=> (and b!2026024 (= (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189923) tb!127667))

(declare-fun result!152766 () Bool)

(assert (= result!152766 result!152762))

(assert (=> d!619793 t!189923))

(declare-fun b_and!161175 () Bool)

(assert (= b_and!161141 (and (=> t!189923 result!152766) b_and!161175)))

(declare-fun t!189925 () Bool)

(declare-fun tb!127669 () Bool)

(assert (=> (and b!2026018 (= (toValue!5661 (transformation!3988 (h!27593 rules!3198))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189925) tb!127669))

(declare-fun result!152768 () Bool)

(assert (= result!152768 result!152762))

(assert (=> d!619793 t!189925))

(declare-fun b_and!161177 () Bool)

(assert (= b_and!161145 (and (=> t!189925 result!152768) b_and!161177)))

(declare-fun b_lambda!68113 () Bool)

(assert (=> (not b_lambda!68113) (not d!619793)))

(declare-fun t!189927 () Bool)

(declare-fun tb!127671 () Bool)

(assert (=> (and b!2026009 (= (toValue!5661 (transformation!3988 (rule!6217 separatorToken!354))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189927) tb!127671))

(declare-fun result!152770 () Bool)

(assert (=> tb!127671 (= result!152770 (inv!21 (dynLambda!11014 (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (seqFromList!2842 (originalCharacters!4795 (h!27594 tokens!598))))))))

(declare-fun m!2465361 () Bool)

(assert (=> tb!127671 m!2465361))

(assert (=> d!619793 t!189927))

(declare-fun b_and!161179 () Bool)

(assert (= b_and!161173 (and (=> t!189927 result!152770) b_and!161179)))

(declare-fun t!189929 () Bool)

(declare-fun tb!127673 () Bool)

(assert (=> (and b!2026024 (= (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189929) tb!127673))

(declare-fun result!152772 () Bool)

(assert (= result!152772 result!152770))

(assert (=> d!619793 t!189929))

(declare-fun b_and!161181 () Bool)

(assert (= b_and!161175 (and (=> t!189929 result!152772) b_and!161181)))

(declare-fun t!189931 () Bool)

(declare-fun tb!127675 () Bool)

(assert (=> (and b!2026018 (= (toValue!5661 (transformation!3988 (h!27593 rules!3198))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189931) tb!127675))

(declare-fun result!152774 () Bool)

(assert (= result!152774 result!152770))

(assert (=> d!619793 t!189931))

(declare-fun b_and!161183 () Bool)

(assert (= b_and!161177 (and (=> t!189931 result!152774) b_and!161183)))

(declare-fun m!2465363 () Bool)

(assert (=> d!619793 m!2465363))

(assert (=> d!619793 m!2464781))

(declare-fun m!2465365 () Bool)

(assert (=> d!619793 m!2465365))

(assert (=> d!619793 m!2464809))

(assert (=> d!619793 m!2464781))

(declare-fun m!2465367 () Bool)

(assert (=> d!619793 m!2465367))

(assert (=> d!619793 m!2464781))

(declare-fun m!2465369 () Bool)

(assert (=> d!619793 m!2465369))

(assert (=> b!2026038 d!619793))

(declare-fun d!619795 () Bool)

(declare-fun lt!761059 () BalanceConc!14660)

(assert (=> d!619795 (= (list!9055 lt!761059) (originalCharacters!4795 (h!27594 tokens!598)))))

(assert (=> d!619795 (= lt!761059 (dynLambda!11005 (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (value!125249 (h!27594 tokens!598))))))

(assert (=> d!619795 (= (charsOf!2528 (h!27594 tokens!598)) lt!761059)))

(declare-fun b_lambda!68115 () Bool)

(assert (=> (not b_lambda!68115) (not d!619795)))

(assert (=> d!619795 t!189888))

(declare-fun b_and!161185 () Bool)

(assert (= b_and!161149 (and (=> t!189888 result!152732) b_and!161185)))

(assert (=> d!619795 t!189890))

(declare-fun b_and!161187 () Bool)

(assert (= b_and!161151 (and (=> t!189890 result!152736) b_and!161187)))

(assert (=> d!619795 t!189892))

(declare-fun b_and!161189 () Bool)

(assert (= b_and!161153 (and (=> t!189892 result!152738) b_and!161189)))

(declare-fun m!2465371 () Bool)

(assert (=> d!619795 m!2465371))

(assert (=> d!619795 m!2464845))

(assert (=> b!2026038 d!619795))

(declare-fun d!619797 () Bool)

(assert (=> d!619797 (= (seqFromList!2842 (originalCharacters!4795 (h!27594 tokens!598))) (fromListB!1277 (originalCharacters!4795 (h!27594 tokens!598))))))

(declare-fun bs!420719 () Bool)

(assert (= bs!420719 d!619797))

(declare-fun m!2465373 () Bool)

(assert (=> bs!420719 m!2465373))

(assert (=> b!2026038 d!619797))

(declare-fun d!619799 () Bool)

(declare-fun lt!761060 () BalanceConc!14660)

(assert (=> d!619799 (= (list!9055 lt!761060) (originalCharacters!4795 separatorToken!354))))

(assert (=> d!619799 (= lt!761060 (dynLambda!11005 (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (value!125249 separatorToken!354)))))

(assert (=> d!619799 (= (charsOf!2528 separatorToken!354) lt!761060)))

(declare-fun b_lambda!68117 () Bool)

(assert (=> (not b_lambda!68117) (not d!619799)))

(declare-fun t!189933 () Bool)

(declare-fun tb!127677 () Bool)

(assert (=> (and b!2026009 (= (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354)))) t!189933) tb!127677))

(declare-fun b!2026572 () Bool)

(declare-fun e!1280108 () Bool)

(declare-fun tp!602820 () Bool)

(assert (=> b!2026572 (= e!1280108 (and (inv!29371 (c!327830 (dynLambda!11005 (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (value!125249 separatorToken!354)))) tp!602820))))

(declare-fun result!152776 () Bool)

(assert (=> tb!127677 (= result!152776 (and (inv!29372 (dynLambda!11005 (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (value!125249 separatorToken!354))) e!1280108))))

(assert (= tb!127677 b!2026572))

(declare-fun m!2465375 () Bool)

(assert (=> b!2026572 m!2465375))

(declare-fun m!2465377 () Bool)

(assert (=> tb!127677 m!2465377))

(assert (=> d!619799 t!189933))

(declare-fun b_and!161191 () Bool)

(assert (= b_and!161185 (and (=> t!189933 result!152776) b_and!161191)))

(declare-fun t!189935 () Bool)

(declare-fun tb!127679 () Bool)

(assert (=> (and b!2026024 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354)))) t!189935) tb!127679))

(declare-fun result!152778 () Bool)

(assert (= result!152778 result!152776))

(assert (=> d!619799 t!189935))

(declare-fun b_and!161193 () Bool)

(assert (= b_and!161187 (and (=> t!189935 result!152778) b_and!161193)))

(declare-fun t!189937 () Bool)

(declare-fun tb!127681 () Bool)

(assert (=> (and b!2026018 (= (toChars!5520 (transformation!3988 (h!27593 rules!3198))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354)))) t!189937) tb!127681))

(declare-fun result!152780 () Bool)

(assert (= result!152780 result!152776))

(assert (=> d!619799 t!189937))

(declare-fun b_and!161195 () Bool)

(assert (= b_and!161189 (and (=> t!189937 result!152780) b_and!161195)))

(declare-fun m!2465383 () Bool)

(assert (=> d!619799 m!2465383))

(declare-fun m!2465387 () Bool)

(assert (=> d!619799 m!2465387))

(assert (=> b!2026038 d!619799))

(declare-fun call!124316 () Option!4660)

(declare-fun bm!124311 () Bool)

(assert (=> bm!124311 (= call!124316 (maxPrefixOneRule!1262 thiss!23328 (h!27593 rules!3198) (++!5997 lt!760863 lt!760868)))))

(declare-fun b!2026573 () Bool)

(declare-fun res!888600 () Bool)

(declare-fun e!1280110 () Bool)

(assert (=> b!2026573 (=> (not res!888600) (not e!1280110))))

(declare-fun lt!761064 () Option!4660)

(assert (=> b!2026573 (= res!888600 (= (++!5997 (list!9055 (charsOf!2528 (_1!11903 (get!7045 lt!761064)))) (_2!11903 (get!7045 lt!761064))) (++!5997 lt!760863 lt!760868)))))

(declare-fun b!2026574 () Bool)

(declare-fun res!888599 () Bool)

(assert (=> b!2026574 (=> (not res!888599) (not e!1280110))))

(assert (=> b!2026574 (= res!888599 (< (size!17333 (_2!11903 (get!7045 lt!761064))) (size!17333 (++!5997 lt!760863 lt!760868))))))

(declare-fun b!2026575 () Bool)

(declare-fun e!1280109 () Option!4660)

(declare-fun lt!761065 () Option!4660)

(declare-fun lt!761063 () Option!4660)

(assert (=> b!2026575 (= e!1280109 (ite (and ((_ is None!4659) lt!761065) ((_ is None!4659) lt!761063)) None!4659 (ite ((_ is None!4659) lt!761063) lt!761065 (ite ((_ is None!4659) lt!761065) lt!761063 (ite (>= (size!17332 (_1!11903 (v!26968 lt!761065))) (size!17332 (_1!11903 (v!26968 lt!761063)))) lt!761065 lt!761063)))))))

(assert (=> b!2026575 (= lt!761065 call!124316)))

(assert (=> b!2026575 (= lt!761063 (maxPrefix!2037 thiss!23328 (t!189885 rules!3198) (++!5997 lt!760863 lt!760868)))))

(declare-fun b!2026576 () Bool)

(assert (=> b!2026576 (= e!1280109 call!124316)))

(declare-fun d!619801 () Bool)

(declare-fun e!1280111 () Bool)

(assert (=> d!619801 e!1280111))

(declare-fun res!888596 () Bool)

(assert (=> d!619801 (=> res!888596 e!1280111)))

(assert (=> d!619801 (= res!888596 (isEmpty!13829 lt!761064))))

(assert (=> d!619801 (= lt!761064 e!1280109)))

(declare-fun c!327942 () Bool)

(assert (=> d!619801 (= c!327942 (and ((_ is Cons!22192) rules!3198) ((_ is Nil!22192) (t!189885 rules!3198))))))

(declare-fun lt!761062 () Unit!36842)

(declare-fun lt!761061 () Unit!36842)

(assert (=> d!619801 (= lt!761062 lt!761061)))

(assert (=> d!619801 (isPrefix!1980 (++!5997 lt!760863 lt!760868) (++!5997 lt!760863 lt!760868))))

(assert (=> d!619801 (= lt!761061 (lemmaIsPrefixRefl!1298 (++!5997 lt!760863 lt!760868) (++!5997 lt!760863 lt!760868)))))

(assert (=> d!619801 (rulesValidInductive!1379 thiss!23328 rules!3198)))

(assert (=> d!619801 (= (maxPrefix!2037 thiss!23328 rules!3198 (++!5997 lt!760863 lt!760868)) lt!761064)))

(declare-fun b!2026577 () Bool)

(declare-fun res!888602 () Bool)

(assert (=> b!2026577 (=> (not res!888602) (not e!1280110))))

(assert (=> b!2026577 (= res!888602 (= (list!9055 (charsOf!2528 (_1!11903 (get!7045 lt!761064)))) (originalCharacters!4795 (_1!11903 (get!7045 lt!761064)))))))

(declare-fun b!2026578 () Bool)

(declare-fun res!888601 () Bool)

(assert (=> b!2026578 (=> (not res!888601) (not e!1280110))))

(assert (=> b!2026578 (= res!888601 (matchR!2679 (regex!3988 (rule!6217 (_1!11903 (get!7045 lt!761064)))) (list!9055 (charsOf!2528 (_1!11903 (get!7045 lt!761064))))))))

(declare-fun b!2026579 () Bool)

(declare-fun res!888597 () Bool)

(assert (=> b!2026579 (=> (not res!888597) (not e!1280110))))

(assert (=> b!2026579 (= res!888597 (= (value!125249 (_1!11903 (get!7045 lt!761064))) (apply!5834 (transformation!3988 (rule!6217 (_1!11903 (get!7045 lt!761064)))) (seqFromList!2842 (originalCharacters!4795 (_1!11903 (get!7045 lt!761064)))))))))

(declare-fun b!2026580 () Bool)

(assert (=> b!2026580 (= e!1280111 e!1280110)))

(declare-fun res!888598 () Bool)

(assert (=> b!2026580 (=> (not res!888598) (not e!1280110))))

(assert (=> b!2026580 (= res!888598 (isDefined!3948 lt!761064))))

(declare-fun b!2026581 () Bool)

(assert (=> b!2026581 (= e!1280110 (contains!4092 rules!3198 (rule!6217 (_1!11903 (get!7045 lt!761064)))))))

(assert (= (and d!619801 c!327942) b!2026576))

(assert (= (and d!619801 (not c!327942)) b!2026575))

(assert (= (or b!2026576 b!2026575) bm!124311))

(assert (= (and d!619801 (not res!888596)) b!2026580))

(assert (= (and b!2026580 res!888598) b!2026577))

(assert (= (and b!2026577 res!888602) b!2026574))

(assert (= (and b!2026574 res!888599) b!2026573))

(assert (= (and b!2026573 res!888600) b!2026579))

(assert (= (and b!2026579 res!888597) b!2026578))

(assert (= (and b!2026578 res!888601) b!2026581))

(declare-fun m!2465413 () Bool)

(assert (=> b!2026577 m!2465413))

(declare-fun m!2465415 () Bool)

(assert (=> b!2026577 m!2465415))

(assert (=> b!2026577 m!2465415))

(declare-fun m!2465417 () Bool)

(assert (=> b!2026577 m!2465417))

(assert (=> bm!124311 m!2464775))

(declare-fun m!2465419 () Bool)

(assert (=> bm!124311 m!2465419))

(assert (=> b!2026578 m!2465413))

(assert (=> b!2026578 m!2465415))

(assert (=> b!2026578 m!2465415))

(assert (=> b!2026578 m!2465417))

(assert (=> b!2026578 m!2465417))

(declare-fun m!2465421 () Bool)

(assert (=> b!2026578 m!2465421))

(assert (=> b!2026573 m!2465413))

(assert (=> b!2026573 m!2465415))

(assert (=> b!2026573 m!2465415))

(assert (=> b!2026573 m!2465417))

(assert (=> b!2026573 m!2465417))

(declare-fun m!2465423 () Bool)

(assert (=> b!2026573 m!2465423))

(assert (=> b!2026574 m!2465413))

(declare-fun m!2465425 () Bool)

(assert (=> b!2026574 m!2465425))

(assert (=> b!2026574 m!2464775))

(declare-fun m!2465427 () Bool)

(assert (=> b!2026574 m!2465427))

(declare-fun m!2465429 () Bool)

(assert (=> d!619801 m!2465429))

(assert (=> d!619801 m!2464775))

(assert (=> d!619801 m!2464775))

(declare-fun m!2465431 () Bool)

(assert (=> d!619801 m!2465431))

(assert (=> d!619801 m!2464775))

(assert (=> d!619801 m!2464775))

(declare-fun m!2465433 () Bool)

(assert (=> d!619801 m!2465433))

(assert (=> d!619801 m!2465213))

(assert (=> b!2026575 m!2464775))

(declare-fun m!2465435 () Bool)

(assert (=> b!2026575 m!2465435))

(assert (=> b!2026581 m!2465413))

(declare-fun m!2465437 () Bool)

(assert (=> b!2026581 m!2465437))

(assert (=> b!2026579 m!2465413))

(declare-fun m!2465439 () Bool)

(assert (=> b!2026579 m!2465439))

(assert (=> b!2026579 m!2465439))

(declare-fun m!2465441 () Bool)

(assert (=> b!2026579 m!2465441))

(declare-fun m!2465443 () Bool)

(assert (=> b!2026580 m!2465443))

(assert (=> b!2026038 d!619801))

(declare-fun b!2026582 () Bool)

(declare-fun e!1280115 () Option!4659)

(declare-fun e!1280112 () Option!4659)

(assert (=> b!2026582 (= e!1280115 e!1280112)))

(declare-fun c!327944 () Bool)

(assert (=> b!2026582 (= c!327944 (and ((_ is Cons!22192) rules!3198) (not (= (tag!4470 (h!27593 rules!3198)) (tag!4470 (rule!6217 separatorToken!354))))))))

(declare-fun b!2026583 () Bool)

(declare-fun lt!761067 () Unit!36842)

(declare-fun lt!761068 () Unit!36842)

(assert (=> b!2026583 (= lt!761067 lt!761068)))

(assert (=> b!2026583 (rulesInvariant!3208 thiss!23328 (t!189885 rules!3198))))

(assert (=> b!2026583 (= lt!761068 (lemmaInvariantOnRulesThenOnTail!305 thiss!23328 (h!27593 rules!3198) (t!189885 rules!3198)))))

(assert (=> b!2026583 (= e!1280112 (getRuleFromTag!803 thiss!23328 (t!189885 rules!3198) (tag!4470 (rule!6217 separatorToken!354))))))

(declare-fun b!2026584 () Bool)

(declare-fun e!1280114 () Bool)

(declare-fun e!1280113 () Bool)

(assert (=> b!2026584 (= e!1280114 e!1280113)))

(declare-fun res!888604 () Bool)

(assert (=> b!2026584 (=> (not res!888604) (not e!1280113))))

(declare-fun lt!761066 () Option!4659)

(assert (=> b!2026584 (= res!888604 (contains!4092 rules!3198 (get!7044 lt!761066)))))

(declare-fun b!2026585 () Bool)

(assert (=> b!2026585 (= e!1280112 None!4658)))

(declare-fun d!619807 () Bool)

(assert (=> d!619807 e!1280114))

(declare-fun res!888603 () Bool)

(assert (=> d!619807 (=> res!888603 e!1280114)))

(assert (=> d!619807 (= res!888603 (isEmpty!13830 lt!761066))))

(assert (=> d!619807 (= lt!761066 e!1280115)))

(declare-fun c!327943 () Bool)

(assert (=> d!619807 (= c!327943 (and ((_ is Cons!22192) rules!3198) (= (tag!4470 (h!27593 rules!3198)) (tag!4470 (rule!6217 separatorToken!354)))))))

(assert (=> d!619807 (rulesInvariant!3208 thiss!23328 rules!3198)))

(assert (=> d!619807 (= (getRuleFromTag!803 thiss!23328 rules!3198 (tag!4470 (rule!6217 separatorToken!354))) lt!761066)))

(declare-fun b!2026586 () Bool)

(assert (=> b!2026586 (= e!1280115 (Some!4658 (h!27593 rules!3198)))))

(declare-fun b!2026587 () Bool)

(assert (=> b!2026587 (= e!1280113 (= (tag!4470 (get!7044 lt!761066)) (tag!4470 (rule!6217 separatorToken!354))))))

(assert (= (and d!619807 c!327943) b!2026586))

(assert (= (and d!619807 (not c!327943)) b!2026582))

(assert (= (and b!2026582 c!327944) b!2026583))

(assert (= (and b!2026582 (not c!327944)) b!2026585))

(assert (= (and d!619807 (not res!888603)) b!2026584))

(assert (= (and b!2026584 res!888604) b!2026587))

(assert (=> b!2026583 m!2465247))

(assert (=> b!2026583 m!2465249))

(declare-fun m!2465445 () Bool)

(assert (=> b!2026583 m!2465445))

(declare-fun m!2465447 () Bool)

(assert (=> b!2026584 m!2465447))

(assert (=> b!2026584 m!2465447))

(declare-fun m!2465449 () Bool)

(assert (=> b!2026584 m!2465449))

(declare-fun m!2465451 () Bool)

(assert (=> d!619807 m!2465451))

(assert (=> d!619807 m!2464697))

(assert (=> b!2026587 m!2465447))

(assert (=> b!2026038 d!619807))

(declare-fun b!2026599 () Bool)

(declare-fun e!1280124 () Bool)

(assert (=> b!2026599 (= e!1280124 true)))

(declare-fun d!619809 () Bool)

(assert (=> d!619809 e!1280124))

(assert (= d!619809 b!2026599))

(declare-fun order!14195 () Int)

(declare-fun lambda!76447 () Int)

(declare-fun dynLambda!11018 (Int Int) Int)

(assert (=> b!2026599 (< (dynLambda!11006 order!14183 (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) (dynLambda!11018 order!14195 lambda!76447))))

(assert (=> b!2026599 (< (dynLambda!11008 order!14187 (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) (dynLambda!11018 order!14195 lambda!76447))))

(assert (=> d!619809 (= (list!9055 (dynLambda!11005 (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (dynLambda!11014 (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) lt!760854))) (list!9055 lt!760854))))

(declare-fun lt!761074 () Unit!36842)

(declare-fun ForallOf!445 (Int BalanceConc!14660) Unit!36842)

(assert (=> d!619809 (= lt!761074 (ForallOf!445 lambda!76447 lt!760854))))

(assert (=> d!619809 (= (lemmaSemiInverse!945 (transformation!3988 (rule!6217 (h!27594 tokens!598))) lt!760854) lt!761074)))

(declare-fun b_lambda!68123 () Bool)

(assert (=> (not b_lambda!68123) (not d!619809)))

(declare-fun t!189945 () Bool)

(declare-fun tb!127689 () Bool)

(assert (=> (and b!2026009 (= (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189945) tb!127689))

(declare-fun e!1280125 () Bool)

(declare-fun tp!602821 () Bool)

(declare-fun b!2026600 () Bool)

(assert (=> b!2026600 (= e!1280125 (and (inv!29371 (c!327830 (dynLambda!11005 (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (dynLambda!11014 (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) lt!760854)))) tp!602821))))

(declare-fun result!152788 () Bool)

(assert (=> tb!127689 (= result!152788 (and (inv!29372 (dynLambda!11005 (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (dynLambda!11014 (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) lt!760854))) e!1280125))))

(assert (= tb!127689 b!2026600))

(declare-fun m!2465463 () Bool)

(assert (=> b!2026600 m!2465463))

(declare-fun m!2465465 () Bool)

(assert (=> tb!127689 m!2465465))

(assert (=> d!619809 t!189945))

(declare-fun b_and!161209 () Bool)

(assert (= b_and!161191 (and (=> t!189945 result!152788) b_and!161209)))

(declare-fun t!189947 () Bool)

(declare-fun tb!127691 () Bool)

(assert (=> (and b!2026024 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189947) tb!127691))

(declare-fun result!152790 () Bool)

(assert (= result!152790 result!152788))

(assert (=> d!619809 t!189947))

(declare-fun b_and!161211 () Bool)

(assert (= b_and!161193 (and (=> t!189947 result!152790) b_and!161211)))

(declare-fun tb!127693 () Bool)

(declare-fun t!189949 () Bool)

(assert (=> (and b!2026018 (= (toChars!5520 (transformation!3988 (h!27593 rules!3198))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189949) tb!127693))

(declare-fun result!152792 () Bool)

(assert (= result!152792 result!152788))

(assert (=> d!619809 t!189949))

(declare-fun b_and!161213 () Bool)

(assert (= b_and!161195 (and (=> t!189949 result!152792) b_and!161213)))

(declare-fun b_lambda!68125 () Bool)

(assert (=> (not b_lambda!68125) (not d!619809)))

(assert (=> d!619809 t!189921))

(declare-fun b_and!161215 () Bool)

(assert (= b_and!161179 (and (=> t!189921 result!152762) b_and!161215)))

(assert (=> d!619809 t!189923))

(declare-fun b_and!161217 () Bool)

(assert (= b_and!161181 (and (=> t!189923 result!152766) b_and!161217)))

(assert (=> d!619809 t!189925))

(declare-fun b_and!161219 () Bool)

(assert (= b_and!161183 (and (=> t!189925 result!152768) b_and!161219)))

(assert (=> d!619809 m!2465363))

(declare-fun m!2465467 () Bool)

(assert (=> d!619809 m!2465467))

(declare-fun m!2465469 () Bool)

(assert (=> d!619809 m!2465469))

(assert (=> d!619809 m!2465363))

(assert (=> d!619809 m!2464809))

(assert (=> d!619809 m!2465467))

(declare-fun m!2465471 () Bool)

(assert (=> d!619809 m!2465471))

(assert (=> b!2026038 d!619809))

(declare-fun b!2026609 () Bool)

(declare-fun e!1280131 () List!22273)

(assert (=> b!2026609 (= e!1280131 lt!760868)))

(declare-fun b!2026611 () Bool)

(declare-fun res!888611 () Bool)

(declare-fun e!1280130 () Bool)

(assert (=> b!2026611 (=> (not res!888611) (not e!1280130))))

(declare-fun lt!761077 () List!22273)

(assert (=> b!2026611 (= res!888611 (= (size!17333 lt!761077) (+ (size!17333 lt!760863) (size!17333 lt!760868))))))

(declare-fun b!2026612 () Bool)

(assert (=> b!2026612 (= e!1280130 (or (not (= lt!760868 Nil!22191)) (= lt!761077 lt!760863)))))

(declare-fun d!619815 () Bool)

(assert (=> d!619815 e!1280130))

(declare-fun res!888612 () Bool)

(assert (=> d!619815 (=> (not res!888612) (not e!1280130))))

(assert (=> d!619815 (= res!888612 (= (content!3270 lt!761077) ((_ map or) (content!3270 lt!760863) (content!3270 lt!760868))))))

(assert (=> d!619815 (= lt!761077 e!1280131)))

(declare-fun c!327948 () Bool)

(assert (=> d!619815 (= c!327948 ((_ is Nil!22191) lt!760863))))

(assert (=> d!619815 (= (++!5997 lt!760863 lt!760868) lt!761077)))

(declare-fun b!2026610 () Bool)

(assert (=> b!2026610 (= e!1280131 (Cons!22191 (h!27592 lt!760863) (++!5997 (t!189884 lt!760863) lt!760868)))))

(assert (= (and d!619815 c!327948) b!2026609))

(assert (= (and d!619815 (not c!327948)) b!2026610))

(assert (= (and d!619815 res!888612) b!2026611))

(assert (= (and b!2026611 res!888611) b!2026612))

(declare-fun m!2465473 () Bool)

(assert (=> b!2026611 m!2465473))

(assert (=> b!2026611 m!2465205))

(declare-fun m!2465475 () Bool)

(assert (=> b!2026611 m!2465475))

(declare-fun m!2465477 () Bool)

(assert (=> d!619815 m!2465477))

(declare-fun m!2465479 () Bool)

(assert (=> d!619815 m!2465479))

(declare-fun m!2465481 () Bool)

(assert (=> d!619815 m!2465481))

(declare-fun m!2465483 () Bool)

(assert (=> b!2026610 m!2465483))

(assert (=> b!2026038 d!619815))

(declare-fun d!619817 () Bool)

(declare-fun c!327957 () Bool)

(assert (=> d!619817 (= c!327957 ((_ is IntegerValue!12372) (value!125249 separatorToken!354)))))

(declare-fun e!1280148 () Bool)

(assert (=> d!619817 (= (inv!21 (value!125249 separatorToken!354)) e!1280148)))

(declare-fun b!2026635 () Bool)

(declare-fun res!888619 () Bool)

(declare-fun e!1280147 () Bool)

(assert (=> b!2026635 (=> res!888619 e!1280147)))

(assert (=> b!2026635 (= res!888619 (not ((_ is IntegerValue!12374) (value!125249 separatorToken!354))))))

(declare-fun e!1280146 () Bool)

(assert (=> b!2026635 (= e!1280146 e!1280147)))

(declare-fun b!2026636 () Bool)

(declare-fun inv!16 (TokenValue!4124) Bool)

(assert (=> b!2026636 (= e!1280148 (inv!16 (value!125249 separatorToken!354)))))

(declare-fun b!2026637 () Bool)

(declare-fun inv!15 (TokenValue!4124) Bool)

(assert (=> b!2026637 (= e!1280147 (inv!15 (value!125249 separatorToken!354)))))

(declare-fun b!2026638 () Bool)

(assert (=> b!2026638 (= e!1280148 e!1280146)))

(declare-fun c!327958 () Bool)

(assert (=> b!2026638 (= c!327958 ((_ is IntegerValue!12373) (value!125249 separatorToken!354)))))

(declare-fun b!2026639 () Bool)

(declare-fun inv!17 (TokenValue!4124) Bool)

(assert (=> b!2026639 (= e!1280146 (inv!17 (value!125249 separatorToken!354)))))

(assert (= (and d!619817 c!327957) b!2026636))

(assert (= (and d!619817 (not c!327957)) b!2026638))

(assert (= (and b!2026638 c!327958) b!2026639))

(assert (= (and b!2026638 (not c!327958)) b!2026635))

(assert (= (and b!2026635 (not res!888619)) b!2026637))

(declare-fun m!2465485 () Bool)

(assert (=> b!2026636 m!2465485))

(declare-fun m!2465487 () Bool)

(assert (=> b!2026637 m!2465487))

(declare-fun m!2465489 () Bool)

(assert (=> b!2026639 m!2465489))

(assert (=> b!2026016 d!619817))

(declare-fun d!619819 () Bool)

(declare-fun c!327959 () Bool)

(assert (=> d!619819 (= c!327959 ((_ is IntegerValue!12372) (value!125249 (h!27594 tokens!598))))))

(declare-fun e!1280151 () Bool)

(assert (=> d!619819 (= (inv!21 (value!125249 (h!27594 tokens!598))) e!1280151)))

(declare-fun b!2026640 () Bool)

(declare-fun res!888620 () Bool)

(declare-fun e!1280150 () Bool)

(assert (=> b!2026640 (=> res!888620 e!1280150)))

(assert (=> b!2026640 (= res!888620 (not ((_ is IntegerValue!12374) (value!125249 (h!27594 tokens!598)))))))

(declare-fun e!1280149 () Bool)

(assert (=> b!2026640 (= e!1280149 e!1280150)))

(declare-fun b!2026641 () Bool)

(assert (=> b!2026641 (= e!1280151 (inv!16 (value!125249 (h!27594 tokens!598))))))

(declare-fun b!2026642 () Bool)

(assert (=> b!2026642 (= e!1280150 (inv!15 (value!125249 (h!27594 tokens!598))))))

(declare-fun b!2026643 () Bool)

(assert (=> b!2026643 (= e!1280151 e!1280149)))

(declare-fun c!327960 () Bool)

(assert (=> b!2026643 (= c!327960 ((_ is IntegerValue!12373) (value!125249 (h!27594 tokens!598))))))

(declare-fun b!2026644 () Bool)

(assert (=> b!2026644 (= e!1280149 (inv!17 (value!125249 (h!27594 tokens!598))))))

(assert (= (and d!619819 c!327959) b!2026641))

(assert (= (and d!619819 (not c!327959)) b!2026643))

(assert (= (and b!2026643 c!327960) b!2026644))

(assert (= (and b!2026643 (not c!327960)) b!2026640))

(assert (= (and b!2026640 (not res!888620)) b!2026642))

(declare-fun m!2465491 () Bool)

(assert (=> b!2026641 m!2465491))

(declare-fun m!2465493 () Bool)

(assert (=> b!2026642 m!2465493))

(declare-fun m!2465495 () Bool)

(assert (=> b!2026644 m!2465495))

(assert (=> b!2026019 d!619819))

(declare-fun d!619821 () Bool)

(assert (=> d!619821 (= (inv!29366 (tag!4470 (h!27593 rules!3198))) (= (mod (str.len (value!125248 (tag!4470 (h!27593 rules!3198)))) 2) 0))))

(assert (=> b!2026021 d!619821))

(declare-fun d!619823 () Bool)

(declare-fun res!888627 () Bool)

(declare-fun e!1280162 () Bool)

(assert (=> d!619823 (=> (not res!888627) (not e!1280162))))

(declare-fun semiInverseModEq!1605 (Int Int) Bool)

(assert (=> d!619823 (= res!888627 (semiInverseModEq!1605 (toChars!5520 (transformation!3988 (h!27593 rules!3198))) (toValue!5661 (transformation!3988 (h!27593 rules!3198)))))))

(assert (=> d!619823 (= (inv!29370 (transformation!3988 (h!27593 rules!3198))) e!1280162)))

(declare-fun b!2026659 () Bool)

(declare-fun equivClasses!1532 (Int Int) Bool)

(assert (=> b!2026659 (= e!1280162 (equivClasses!1532 (toChars!5520 (transformation!3988 (h!27593 rules!3198))) (toValue!5661 (transformation!3988 (h!27593 rules!3198)))))))

(assert (= (and d!619823 res!888627) b!2026659))

(declare-fun m!2465517 () Bool)

(assert (=> d!619823 m!2465517))

(declare-fun m!2465519 () Bool)

(assert (=> b!2026659 m!2465519))

(assert (=> b!2026021 d!619823))

(declare-fun d!619829 () Bool)

(declare-fun res!888632 () Bool)

(declare-fun e!1280168 () Bool)

(assert (=> d!619829 (=> res!888632 e!1280168)))

(assert (=> d!619829 (= res!888632 (not ((_ is Cons!22192) rules!3198)))))

(assert (=> d!619829 (= (sepAndNonSepRulesDisjointChars!1086 rules!3198 rules!3198) e!1280168)))

(declare-fun b!2026665 () Bool)

(declare-fun e!1280169 () Bool)

(assert (=> b!2026665 (= e!1280168 e!1280169)))

(declare-fun res!888633 () Bool)

(assert (=> b!2026665 (=> (not res!888633) (not e!1280169))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!488 (Rule!7776 List!22274) Bool)

(assert (=> b!2026665 (= res!888633 (ruleDisjointCharsFromAllFromOtherType!488 (h!27593 rules!3198) rules!3198))))

(declare-fun b!2026666 () Bool)

(assert (=> b!2026666 (= e!1280169 (sepAndNonSepRulesDisjointChars!1086 rules!3198 (t!189885 rules!3198)))))

(assert (= (and d!619829 (not res!888632)) b!2026665))

(assert (= (and b!2026665 res!888633) b!2026666))

(declare-fun m!2465533 () Bool)

(assert (=> b!2026665 m!2465533))

(declare-fun m!2465535 () Bool)

(assert (=> b!2026666 m!2465535))

(assert (=> b!2026003 d!619829))

(declare-fun d!619837 () Bool)

(declare-fun res!888642 () Bool)

(declare-fun e!1280177 () Bool)

(assert (=> d!619837 (=> res!888642 e!1280177)))

(assert (=> d!619837 (= res!888642 ((_ is Nil!22193) tokens!598))))

(assert (=> d!619837 (= (forall!4720 tokens!598 lambda!76423) e!1280177)))

(declare-fun b!2026675 () Bool)

(declare-fun e!1280178 () Bool)

(assert (=> b!2026675 (= e!1280177 e!1280178)))

(declare-fun res!888643 () Bool)

(assert (=> b!2026675 (=> (not res!888643) (not e!1280178))))

(declare-fun dynLambda!11019 (Int Token!7528) Bool)

(assert (=> b!2026675 (= res!888643 (dynLambda!11019 lambda!76423 (h!27594 tokens!598)))))

(declare-fun b!2026676 () Bool)

(assert (=> b!2026676 (= e!1280178 (forall!4720 (t!189886 tokens!598) lambda!76423))))

(assert (= (and d!619837 (not res!888642)) b!2026675))

(assert (= (and b!2026675 res!888643) b!2026676))

(declare-fun b_lambda!68131 () Bool)

(assert (=> (not b_lambda!68131) (not b!2026675)))

(declare-fun m!2465551 () Bool)

(assert (=> b!2026675 m!2465551))

(declare-fun m!2465553 () Bool)

(assert (=> b!2026676 m!2465553))

(assert (=> b!2026005 d!619837))

(declare-fun d!619843 () Bool)

(declare-fun lt!761096 () Bool)

(assert (=> d!619843 (= lt!761096 (select (content!3270 lt!760849) lt!760852))))

(declare-fun e!1280179 () Bool)

(assert (=> d!619843 (= lt!761096 e!1280179)))

(declare-fun res!888645 () Bool)

(assert (=> d!619843 (=> (not res!888645) (not e!1280179))))

(assert (=> d!619843 (= res!888645 ((_ is Cons!22191) lt!760849))))

(assert (=> d!619843 (= (contains!4091 lt!760849 lt!760852) lt!761096)))

(declare-fun b!2026677 () Bool)

(declare-fun e!1280180 () Bool)

(assert (=> b!2026677 (= e!1280179 e!1280180)))

(declare-fun res!888644 () Bool)

(assert (=> b!2026677 (=> res!888644 e!1280180)))

(assert (=> b!2026677 (= res!888644 (= (h!27592 lt!760849) lt!760852))))

(declare-fun b!2026678 () Bool)

(assert (=> b!2026678 (= e!1280180 (contains!4091 (t!189884 lt!760849) lt!760852))))

(assert (= (and d!619843 res!888645) b!2026677))

(assert (= (and b!2026677 (not res!888644)) b!2026678))

(assert (=> d!619843 m!2464827))

(declare-fun m!2465555 () Bool)

(assert (=> d!619843 m!2465555))

(declare-fun m!2465557 () Bool)

(assert (=> b!2026678 m!2465557))

(assert (=> b!2026026 d!619843))

(declare-fun d!619845 () Bool)

(assert (=> d!619845 (= (list!9055 lt!760870) (list!9057 (c!327830 lt!760870)))))

(declare-fun bs!420723 () Bool)

(assert (= bs!420723 d!619845))

(declare-fun m!2465559 () Bool)

(assert (=> bs!420723 m!2465559))

(assert (=> b!2026026 d!619845))

(declare-fun d!619847 () Bool)

(declare-fun c!327967 () Bool)

(assert (=> d!619847 (= c!327967 ((_ is Cons!22193) (Cons!22193 (h!27594 tokens!598) Nil!22193)))))

(declare-fun e!1280183 () List!22273)

(assert (=> d!619847 (= (printList!1120 thiss!23328 (Cons!22193 (h!27594 tokens!598) Nil!22193)) e!1280183)))

(declare-fun b!2026683 () Bool)

(assert (=> b!2026683 (= e!1280183 (++!5997 (list!9055 (charsOf!2528 (h!27594 (Cons!22193 (h!27594 tokens!598) Nil!22193)))) (printList!1120 thiss!23328 (t!189886 (Cons!22193 (h!27594 tokens!598) Nil!22193)))))))

(declare-fun b!2026684 () Bool)

(assert (=> b!2026684 (= e!1280183 Nil!22191)))

(assert (= (and d!619847 c!327967) b!2026683))

(assert (= (and d!619847 (not c!327967)) b!2026684))

(declare-fun m!2465561 () Bool)

(assert (=> b!2026683 m!2465561))

(assert (=> b!2026683 m!2465561))

(declare-fun m!2465563 () Bool)

(assert (=> b!2026683 m!2465563))

(declare-fun m!2465565 () Bool)

(assert (=> b!2026683 m!2465565))

(assert (=> b!2026683 m!2465563))

(assert (=> b!2026683 m!2465565))

(declare-fun m!2465567 () Bool)

(assert (=> b!2026683 m!2465567))

(assert (=> b!2026026 d!619847))

(declare-fun b!2026685 () Bool)

(declare-fun e!1280185 () List!22273)

(assert (=> b!2026685 (= e!1280185 lt!760868)))

(declare-fun b!2026687 () Bool)

(declare-fun res!888646 () Bool)

(declare-fun e!1280184 () Bool)

(assert (=> b!2026687 (=> (not res!888646) (not e!1280184))))

(declare-fun lt!761097 () List!22273)

(assert (=> b!2026687 (= res!888646 (= (size!17333 lt!761097) (+ (size!17333 lt!760857) (size!17333 lt!760868))))))

(declare-fun b!2026688 () Bool)

(assert (=> b!2026688 (= e!1280184 (or (not (= lt!760868 Nil!22191)) (= lt!761097 lt!760857)))))

(declare-fun d!619849 () Bool)

(assert (=> d!619849 e!1280184))

(declare-fun res!888647 () Bool)

(assert (=> d!619849 (=> (not res!888647) (not e!1280184))))

(assert (=> d!619849 (= res!888647 (= (content!3270 lt!761097) ((_ map or) (content!3270 lt!760857) (content!3270 lt!760868))))))

(assert (=> d!619849 (= lt!761097 e!1280185)))

(declare-fun c!327968 () Bool)

(assert (=> d!619849 (= c!327968 ((_ is Nil!22191) lt!760857))))

(assert (=> d!619849 (= (++!5997 lt!760857 lt!760868) lt!761097)))

(declare-fun b!2026686 () Bool)

(assert (=> b!2026686 (= e!1280185 (Cons!22191 (h!27592 lt!760857) (++!5997 (t!189884 lt!760857) lt!760868)))))

(assert (= (and d!619849 c!327968) b!2026685))

(assert (= (and d!619849 (not c!327968)) b!2026686))

(assert (= (and d!619849 res!888647) b!2026687))

(assert (= (and b!2026687 res!888646) b!2026688))

(declare-fun m!2465569 () Bool)

(assert (=> b!2026687 m!2465569))

(declare-fun m!2465571 () Bool)

(assert (=> b!2026687 m!2465571))

(assert (=> b!2026687 m!2465475))

(declare-fun m!2465573 () Bool)

(assert (=> d!619849 m!2465573))

(declare-fun m!2465575 () Bool)

(assert (=> d!619849 m!2465575))

(assert (=> d!619849 m!2465481))

(declare-fun m!2465577 () Bool)

(assert (=> b!2026686 m!2465577))

(assert (=> b!2026026 d!619849))

(declare-fun b!2026689 () Bool)

(declare-fun e!1280187 () List!22273)

(assert (=> b!2026689 (= e!1280187 lt!760846)))

(declare-fun b!2026691 () Bool)

(declare-fun res!888648 () Bool)

(declare-fun e!1280186 () Bool)

(assert (=> b!2026691 (=> (not res!888648) (not e!1280186))))

(declare-fun lt!761098 () List!22273)

(assert (=> b!2026691 (= res!888648 (= (size!17333 lt!761098) (+ (size!17333 lt!760863) (size!17333 lt!760846))))))

(declare-fun b!2026692 () Bool)

(assert (=> b!2026692 (= e!1280186 (or (not (= lt!760846 Nil!22191)) (= lt!761098 lt!760863)))))

(declare-fun d!619851 () Bool)

(assert (=> d!619851 e!1280186))

(declare-fun res!888649 () Bool)

(assert (=> d!619851 (=> (not res!888649) (not e!1280186))))

(assert (=> d!619851 (= res!888649 (= (content!3270 lt!761098) ((_ map or) (content!3270 lt!760863) (content!3270 lt!760846))))))

(assert (=> d!619851 (= lt!761098 e!1280187)))

(declare-fun c!327969 () Bool)

(assert (=> d!619851 (= c!327969 ((_ is Nil!22191) lt!760863))))

(assert (=> d!619851 (= (++!5997 lt!760863 lt!760846) lt!761098)))

(declare-fun b!2026690 () Bool)

(assert (=> b!2026690 (= e!1280187 (Cons!22191 (h!27592 lt!760863) (++!5997 (t!189884 lt!760863) lt!760846)))))

(assert (= (and d!619851 c!327969) b!2026689))

(assert (= (and d!619851 (not c!327969)) b!2026690))

(assert (= (and d!619851 res!888649) b!2026691))

(assert (= (and b!2026691 res!888648) b!2026692))

(declare-fun m!2465579 () Bool)

(assert (=> b!2026691 m!2465579))

(assert (=> b!2026691 m!2465205))

(declare-fun m!2465581 () Bool)

(assert (=> b!2026691 m!2465581))

(declare-fun m!2465583 () Bool)

(assert (=> d!619851 m!2465583))

(assert (=> d!619851 m!2465479))

(declare-fun m!2465585 () Bool)

(assert (=> d!619851 m!2465585))

(declare-fun m!2465587 () Bool)

(assert (=> b!2026690 m!2465587))

(assert (=> b!2026026 d!619851))

(declare-fun bm!124320 () Bool)

(declare-fun call!124327 () List!22273)

(declare-fun c!327981 () Bool)

(assert (=> bm!124320 (= call!124327 (usedCharacters!426 (ite c!327981 (regOne!11339 (regex!3988 (rule!6217 separatorToken!354))) (regTwo!11338 (regex!3988 (rule!6217 separatorToken!354))))))))

(declare-fun b!2026709 () Bool)

(declare-fun e!1280199 () List!22273)

(declare-fun call!124326 () List!22273)

(assert (=> b!2026709 (= e!1280199 call!124326)))

(declare-fun b!2026710 () Bool)

(declare-fun c!327980 () Bool)

(assert (=> b!2026710 (= c!327980 ((_ is Star!5413) (regex!3988 (rule!6217 separatorToken!354))))))

(declare-fun e!1280196 () List!22273)

(declare-fun e!1280198 () List!22273)

(assert (=> b!2026710 (= e!1280196 e!1280198)))

(declare-fun b!2026711 () Bool)

(declare-fun call!124328 () List!22273)

(assert (=> b!2026711 (= e!1280198 call!124328)))

(declare-fun b!2026712 () Bool)

(assert (=> b!2026712 (= e!1280196 (Cons!22191 (c!327831 (regex!3988 (rule!6217 separatorToken!354))) Nil!22191))))

(declare-fun b!2026713 () Bool)

(declare-fun e!1280197 () List!22273)

(assert (=> b!2026713 (= e!1280197 Nil!22191)))

(declare-fun d!619853 () Bool)

(declare-fun c!327979 () Bool)

(assert (=> d!619853 (= c!327979 (or ((_ is EmptyExpr!5413) (regex!3988 (rule!6217 separatorToken!354))) ((_ is EmptyLang!5413) (regex!3988 (rule!6217 separatorToken!354)))))))

(assert (=> d!619853 (= (usedCharacters!426 (regex!3988 (rule!6217 separatorToken!354))) e!1280197)))

(declare-fun b!2026714 () Bool)

(assert (=> b!2026714 (= e!1280198 e!1280199)))

(assert (=> b!2026714 (= c!327981 ((_ is Union!5413) (regex!3988 (rule!6217 separatorToken!354))))))

(declare-fun bm!124321 () Bool)

(declare-fun call!124325 () List!22273)

(assert (=> bm!124321 (= call!124326 (++!5997 (ite c!327981 call!124327 call!124325) (ite c!327981 call!124325 call!124327)))))

(declare-fun bm!124322 () Bool)

(assert (=> bm!124322 (= call!124325 call!124328)))

(declare-fun b!2026715 () Bool)

(assert (=> b!2026715 (= e!1280199 call!124326)))

(declare-fun bm!124323 () Bool)

(assert (=> bm!124323 (= call!124328 (usedCharacters!426 (ite c!327980 (reg!5742 (regex!3988 (rule!6217 separatorToken!354))) (ite c!327981 (regTwo!11339 (regex!3988 (rule!6217 separatorToken!354))) (regOne!11338 (regex!3988 (rule!6217 separatorToken!354)))))))))

(declare-fun b!2026716 () Bool)

(assert (=> b!2026716 (= e!1280197 e!1280196)))

(declare-fun c!327978 () Bool)

(assert (=> b!2026716 (= c!327978 ((_ is ElementMatch!5413) (regex!3988 (rule!6217 separatorToken!354))))))

(assert (= (and d!619853 c!327979) b!2026713))

(assert (= (and d!619853 (not c!327979)) b!2026716))

(assert (= (and b!2026716 c!327978) b!2026712))

(assert (= (and b!2026716 (not c!327978)) b!2026710))

(assert (= (and b!2026710 c!327980) b!2026711))

(assert (= (and b!2026710 (not c!327980)) b!2026714))

(assert (= (and b!2026714 c!327981) b!2026709))

(assert (= (and b!2026714 (not c!327981)) b!2026715))

(assert (= (or b!2026709 b!2026715) bm!124320))

(assert (= (or b!2026709 b!2026715) bm!124322))

(assert (= (or b!2026709 b!2026715) bm!124321))

(assert (= (or b!2026711 bm!124322) bm!124323))

(declare-fun m!2465589 () Bool)

(assert (=> bm!124320 m!2465589))

(declare-fun m!2465591 () Bool)

(assert (=> bm!124321 m!2465591))

(declare-fun m!2465593 () Bool)

(assert (=> bm!124323 m!2465593))

(assert (=> b!2026026 d!619853))

(declare-fun d!619855 () Bool)

(assert (=> d!619855 (= (++!5997 (++!5997 lt!760863 lt!760862) lt!760868) (++!5997 lt!760863 (++!5997 lt!760862 lt!760868)))))

(declare-fun lt!761101 () Unit!36842)

(declare-fun choose!12351 (List!22273 List!22273 List!22273) Unit!36842)

(assert (=> d!619855 (= lt!761101 (choose!12351 lt!760863 lt!760862 lt!760868))))

(assert (=> d!619855 (= (lemmaConcatAssociativity!1253 lt!760863 lt!760862 lt!760868) lt!761101)))

(declare-fun bs!420724 () Bool)

(assert (= bs!420724 d!619855))

(assert (=> bs!420724 m!2464731))

(assert (=> bs!420724 m!2464757))

(assert (=> bs!420724 m!2464757))

(declare-fun m!2465595 () Bool)

(assert (=> bs!420724 m!2465595))

(assert (=> bs!420724 m!2464731))

(declare-fun m!2465597 () Bool)

(assert (=> bs!420724 m!2465597))

(declare-fun m!2465599 () Bool)

(assert (=> bs!420724 m!2465599))

(assert (=> b!2026026 d!619855))

(declare-fun b!2026717 () Bool)

(declare-fun e!1280201 () List!22273)

(assert (=> b!2026717 (= e!1280201 lt!760862)))

(declare-fun b!2026719 () Bool)

(declare-fun res!888650 () Bool)

(declare-fun e!1280200 () Bool)

(assert (=> b!2026719 (=> (not res!888650) (not e!1280200))))

(declare-fun lt!761102 () List!22273)

(assert (=> b!2026719 (= res!888650 (= (size!17333 lt!761102) (+ (size!17333 lt!760863) (size!17333 lt!760862))))))

(declare-fun b!2026720 () Bool)

(assert (=> b!2026720 (= e!1280200 (or (not (= lt!760862 Nil!22191)) (= lt!761102 lt!760863)))))

(declare-fun d!619857 () Bool)

(assert (=> d!619857 e!1280200))

(declare-fun res!888651 () Bool)

(assert (=> d!619857 (=> (not res!888651) (not e!1280200))))

(assert (=> d!619857 (= res!888651 (= (content!3270 lt!761102) ((_ map or) (content!3270 lt!760863) (content!3270 lt!760862))))))

(assert (=> d!619857 (= lt!761102 e!1280201)))

(declare-fun c!327982 () Bool)

(assert (=> d!619857 (= c!327982 ((_ is Nil!22191) lt!760863))))

(assert (=> d!619857 (= (++!5997 lt!760863 lt!760862) lt!761102)))

(declare-fun b!2026718 () Bool)

(assert (=> b!2026718 (= e!1280201 (Cons!22191 (h!27592 lt!760863) (++!5997 (t!189884 lt!760863) lt!760862)))))

(assert (= (and d!619857 c!327982) b!2026717))

(assert (= (and d!619857 (not c!327982)) b!2026718))

(assert (= (and d!619857 res!888651) b!2026719))

(assert (= (and b!2026719 res!888650) b!2026720))

(declare-fun m!2465601 () Bool)

(assert (=> b!2026719 m!2465601))

(assert (=> b!2026719 m!2465205))

(declare-fun m!2465603 () Bool)

(assert (=> b!2026719 m!2465603))

(declare-fun m!2465605 () Bool)

(assert (=> d!619857 m!2465605))

(assert (=> d!619857 m!2465479))

(declare-fun m!2465607 () Bool)

(assert (=> d!619857 m!2465607))

(declare-fun m!2465609 () Bool)

(assert (=> b!2026718 m!2465609))

(assert (=> b!2026026 d!619857))

(declare-fun d!619859 () Bool)

(assert (=> d!619859 (not (contains!4091 (usedCharacters!426 (regex!3988 (rule!6217 (h!27594 tokens!598)))) lt!760852))))

(declare-fun lt!761105 () Unit!36842)

(declare-fun choose!12352 (LexerInterface!3601 List!22274 List!22274 Rule!7776 Rule!7776 C!10972) Unit!36842)

(assert (=> d!619859 (= lt!761105 (choose!12352 thiss!23328 rules!3198 rules!3198 (rule!6217 (h!27594 tokens!598)) (rule!6217 separatorToken!354) lt!760852))))

(assert (=> d!619859 (rulesInvariant!3208 thiss!23328 rules!3198)))

(assert (=> d!619859 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!98 thiss!23328 rules!3198 rules!3198 (rule!6217 (h!27594 tokens!598)) (rule!6217 separatorToken!354) lt!760852) lt!761105)))

(declare-fun bs!420725 () Bool)

(assert (= bs!420725 d!619859))

(assert (=> bs!420725 m!2464733))

(assert (=> bs!420725 m!2464733))

(declare-fun m!2465611 () Bool)

(assert (=> bs!420725 m!2465611))

(declare-fun m!2465613 () Bool)

(assert (=> bs!420725 m!2465613))

(assert (=> bs!420725 m!2464697))

(assert (=> b!2026026 d!619859))

(declare-fun d!619861 () Bool)

(declare-fun lt!761106 () Bool)

(assert (=> d!619861 (= lt!761106 (select (content!3270 (usedCharacters!426 (regex!3988 (rule!6217 separatorToken!354)))) lt!760852))))

(declare-fun e!1280202 () Bool)

(assert (=> d!619861 (= lt!761106 e!1280202)))

(declare-fun res!888653 () Bool)

(assert (=> d!619861 (=> (not res!888653) (not e!1280202))))

(assert (=> d!619861 (= res!888653 ((_ is Cons!22191) (usedCharacters!426 (regex!3988 (rule!6217 separatorToken!354)))))))

(assert (=> d!619861 (= (contains!4091 (usedCharacters!426 (regex!3988 (rule!6217 separatorToken!354))) lt!760852) lt!761106)))

(declare-fun b!2026721 () Bool)

(declare-fun e!1280203 () Bool)

(assert (=> b!2026721 (= e!1280202 e!1280203)))

(declare-fun res!888652 () Bool)

(assert (=> b!2026721 (=> res!888652 e!1280203)))

(assert (=> b!2026721 (= res!888652 (= (h!27592 (usedCharacters!426 (regex!3988 (rule!6217 separatorToken!354)))) lt!760852))))

(declare-fun b!2026722 () Bool)

(assert (=> b!2026722 (= e!1280203 (contains!4091 (t!189884 (usedCharacters!426 (regex!3988 (rule!6217 separatorToken!354)))) lt!760852))))

(assert (= (and d!619861 res!888653) b!2026721))

(assert (= (and b!2026721 (not res!888652)) b!2026722))

(assert (=> d!619861 m!2464735))

(declare-fun m!2465615 () Bool)

(assert (=> d!619861 m!2465615))

(declare-fun m!2465617 () Bool)

(assert (=> d!619861 m!2465617))

(declare-fun m!2465619 () Bool)

(assert (=> b!2026722 m!2465619))

(assert (=> b!2026026 d!619861))

(declare-fun b!2026723 () Bool)

(declare-fun e!1280205 () List!22273)

(assert (=> b!2026723 (= e!1280205 lt!760868)))

(declare-fun b!2026725 () Bool)

(declare-fun res!888654 () Bool)

(declare-fun e!1280204 () Bool)

(assert (=> b!2026725 (=> (not res!888654) (not e!1280204))))

(declare-fun lt!761107 () List!22273)

(assert (=> b!2026725 (= res!888654 (= (size!17333 lt!761107) (+ (size!17333 lt!760862) (size!17333 lt!760868))))))

(declare-fun b!2026726 () Bool)

(assert (=> b!2026726 (= e!1280204 (or (not (= lt!760868 Nil!22191)) (= lt!761107 lt!760862)))))

(declare-fun d!619863 () Bool)

(assert (=> d!619863 e!1280204))

(declare-fun res!888655 () Bool)

(assert (=> d!619863 (=> (not res!888655) (not e!1280204))))

(assert (=> d!619863 (= res!888655 (= (content!3270 lt!761107) ((_ map or) (content!3270 lt!760862) (content!3270 lt!760868))))))

(assert (=> d!619863 (= lt!761107 e!1280205)))

(declare-fun c!327984 () Bool)

(assert (=> d!619863 (= c!327984 ((_ is Nil!22191) lt!760862))))

(assert (=> d!619863 (= (++!5997 lt!760862 lt!760868) lt!761107)))

(declare-fun b!2026724 () Bool)

(assert (=> b!2026724 (= e!1280205 (Cons!22191 (h!27592 lt!760862) (++!5997 (t!189884 lt!760862) lt!760868)))))

(assert (= (and d!619863 c!327984) b!2026723))

(assert (= (and d!619863 (not c!327984)) b!2026724))

(assert (= (and d!619863 res!888655) b!2026725))

(assert (= (and b!2026725 res!888654) b!2026726))

(declare-fun m!2465621 () Bool)

(assert (=> b!2026725 m!2465621))

(assert (=> b!2026725 m!2465603))

(assert (=> b!2026725 m!2465475))

(declare-fun m!2465623 () Bool)

(assert (=> d!619863 m!2465623))

(assert (=> d!619863 m!2465607))

(assert (=> d!619863 m!2465481))

(declare-fun m!2465625 () Bool)

(assert (=> b!2026724 m!2465625))

(assert (=> b!2026026 d!619863))

(declare-fun d!619865 () Bool)

(declare-fun lt!761122 () BalanceConc!14660)

(declare-fun printListTailRec!485 (LexerInterface!3601 List!22275 List!22273) List!22273)

(declare-fun dropList!816 (BalanceConc!14662 Int) List!22275)

(assert (=> d!619865 (= (list!9055 lt!761122) (printListTailRec!485 thiss!23328 (dropList!816 lt!760861 0) (list!9055 (BalanceConc!14661 Empty!7422))))))

(declare-fun e!1280211 () BalanceConc!14660)

(assert (=> d!619865 (= lt!761122 e!1280211)))

(declare-fun c!327987 () Bool)

(assert (=> d!619865 (= c!327987 (>= 0 (size!17334 lt!760861)))))

(declare-fun e!1280210 () Bool)

(assert (=> d!619865 e!1280210))

(declare-fun res!888658 () Bool)

(assert (=> d!619865 (=> (not res!888658) (not e!1280210))))

(assert (=> d!619865 (= res!888658 (>= 0 0))))

(assert (=> d!619865 (= (printTailRec!1069 thiss!23328 lt!760861 0 (BalanceConc!14661 Empty!7422)) lt!761122)))

(declare-fun b!2026733 () Bool)

(assert (=> b!2026733 (= e!1280210 (<= 0 (size!17334 lt!760861)))))

(declare-fun b!2026734 () Bool)

(assert (=> b!2026734 (= e!1280211 (BalanceConc!14661 Empty!7422))))

(declare-fun b!2026735 () Bool)

(declare-fun ++!5999 (BalanceConc!14660 BalanceConc!14660) BalanceConc!14660)

(declare-fun apply!5838 (BalanceConc!14662 Int) Token!7528)

(assert (=> b!2026735 (= e!1280211 (printTailRec!1069 thiss!23328 lt!760861 (+ 0 1) (++!5999 (BalanceConc!14661 Empty!7422) (charsOf!2528 (apply!5838 lt!760861 0)))))))

(declare-fun lt!761124 () List!22275)

(assert (=> b!2026735 (= lt!761124 (list!9056 lt!760861))))

(declare-fun lt!761128 () Unit!36842)

(declare-fun lemmaDropApply!740 (List!22275 Int) Unit!36842)

(assert (=> b!2026735 (= lt!761128 (lemmaDropApply!740 lt!761124 0))))

(declare-fun head!4578 (List!22275) Token!7528)

(declare-fun drop!1117 (List!22275 Int) List!22275)

(declare-fun apply!5839 (List!22275 Int) Token!7528)

(assert (=> b!2026735 (= (head!4578 (drop!1117 lt!761124 0)) (apply!5839 lt!761124 0))))

(declare-fun lt!761126 () Unit!36842)

(assert (=> b!2026735 (= lt!761126 lt!761128)))

(declare-fun lt!761125 () List!22275)

(assert (=> b!2026735 (= lt!761125 (list!9056 lt!760861))))

(declare-fun lt!761127 () Unit!36842)

(declare-fun lemmaDropTail!716 (List!22275 Int) Unit!36842)

(assert (=> b!2026735 (= lt!761127 (lemmaDropTail!716 lt!761125 0))))

(declare-fun tail!3054 (List!22275) List!22275)

(assert (=> b!2026735 (= (tail!3054 (drop!1117 lt!761125 0)) (drop!1117 lt!761125 (+ 0 1)))))

(declare-fun lt!761123 () Unit!36842)

(assert (=> b!2026735 (= lt!761123 lt!761127)))

(assert (= (and d!619865 res!888658) b!2026733))

(assert (= (and d!619865 c!327987) b!2026734))

(assert (= (and d!619865 (not c!327987)) b!2026735))

(declare-fun m!2465627 () Bool)

(assert (=> d!619865 m!2465627))

(declare-fun m!2465629 () Bool)

(assert (=> d!619865 m!2465629))

(declare-fun m!2465631 () Bool)

(assert (=> d!619865 m!2465631))

(declare-fun m!2465633 () Bool)

(assert (=> d!619865 m!2465633))

(assert (=> d!619865 m!2465627))

(assert (=> d!619865 m!2465629))

(declare-fun m!2465635 () Bool)

(assert (=> d!619865 m!2465635))

(assert (=> b!2026733 m!2465635))

(declare-fun m!2465637 () Bool)

(assert (=> b!2026735 m!2465637))

(declare-fun m!2465639 () Bool)

(assert (=> b!2026735 m!2465639))

(declare-fun m!2465641 () Bool)

(assert (=> b!2026735 m!2465641))

(declare-fun m!2465643 () Bool)

(assert (=> b!2026735 m!2465643))

(assert (=> b!2026735 m!2465641))

(declare-fun m!2465645 () Bool)

(assert (=> b!2026735 m!2465645))

(declare-fun m!2465647 () Bool)

(assert (=> b!2026735 m!2465647))

(declare-fun m!2465649 () Bool)

(assert (=> b!2026735 m!2465649))

(assert (=> b!2026735 m!2465637))

(declare-fun m!2465651 () Bool)

(assert (=> b!2026735 m!2465651))

(declare-fun m!2465653 () Bool)

(assert (=> b!2026735 m!2465653))

(assert (=> b!2026735 m!2465643))

(declare-fun m!2465655 () Bool)

(assert (=> b!2026735 m!2465655))

(declare-fun m!2465657 () Bool)

(assert (=> b!2026735 m!2465657))

(declare-fun m!2465659 () Bool)

(assert (=> b!2026735 m!2465659))

(declare-fun m!2465661 () Bool)

(assert (=> b!2026735 m!2465661))

(assert (=> b!2026735 m!2465645))

(assert (=> b!2026735 m!2465657))

(assert (=> b!2026026 d!619865))

(declare-fun bm!124324 () Bool)

(declare-fun call!124331 () List!22273)

(declare-fun c!327991 () Bool)

(assert (=> bm!124324 (= call!124331 (usedCharacters!426 (ite c!327991 (regOne!11339 (regex!3988 (rule!6217 (h!27594 tokens!598)))) (regTwo!11338 (regex!3988 (rule!6217 (h!27594 tokens!598)))))))))

(declare-fun b!2026736 () Bool)

(declare-fun e!1280215 () List!22273)

(declare-fun call!124330 () List!22273)

(assert (=> b!2026736 (= e!1280215 call!124330)))

(declare-fun b!2026737 () Bool)

(declare-fun c!327990 () Bool)

(assert (=> b!2026737 (= c!327990 ((_ is Star!5413) (regex!3988 (rule!6217 (h!27594 tokens!598)))))))

(declare-fun e!1280212 () List!22273)

(declare-fun e!1280214 () List!22273)

(assert (=> b!2026737 (= e!1280212 e!1280214)))

(declare-fun b!2026738 () Bool)

(declare-fun call!124332 () List!22273)

(assert (=> b!2026738 (= e!1280214 call!124332)))

(declare-fun b!2026739 () Bool)

(assert (=> b!2026739 (= e!1280212 (Cons!22191 (c!327831 (regex!3988 (rule!6217 (h!27594 tokens!598)))) Nil!22191))))

(declare-fun b!2026740 () Bool)

(declare-fun e!1280213 () List!22273)

(assert (=> b!2026740 (= e!1280213 Nil!22191)))

(declare-fun d!619867 () Bool)

(declare-fun c!327989 () Bool)

(assert (=> d!619867 (= c!327989 (or ((_ is EmptyExpr!5413) (regex!3988 (rule!6217 (h!27594 tokens!598)))) ((_ is EmptyLang!5413) (regex!3988 (rule!6217 (h!27594 tokens!598))))))))

(assert (=> d!619867 (= (usedCharacters!426 (regex!3988 (rule!6217 (h!27594 tokens!598)))) e!1280213)))

(declare-fun b!2026741 () Bool)

(assert (=> b!2026741 (= e!1280214 e!1280215)))

(assert (=> b!2026741 (= c!327991 ((_ is Union!5413) (regex!3988 (rule!6217 (h!27594 tokens!598)))))))

(declare-fun bm!124325 () Bool)

(declare-fun call!124329 () List!22273)

(assert (=> bm!124325 (= call!124330 (++!5997 (ite c!327991 call!124331 call!124329) (ite c!327991 call!124329 call!124331)))))

(declare-fun bm!124326 () Bool)

(assert (=> bm!124326 (= call!124329 call!124332)))

(declare-fun b!2026742 () Bool)

(assert (=> b!2026742 (= e!1280215 call!124330)))

(declare-fun bm!124327 () Bool)

(assert (=> bm!124327 (= call!124332 (usedCharacters!426 (ite c!327990 (reg!5742 (regex!3988 (rule!6217 (h!27594 tokens!598)))) (ite c!327991 (regTwo!11339 (regex!3988 (rule!6217 (h!27594 tokens!598)))) (regOne!11338 (regex!3988 (rule!6217 (h!27594 tokens!598))))))))))

(declare-fun b!2026743 () Bool)

(assert (=> b!2026743 (= e!1280213 e!1280212)))

(declare-fun c!327988 () Bool)

(assert (=> b!2026743 (= c!327988 ((_ is ElementMatch!5413) (regex!3988 (rule!6217 (h!27594 tokens!598)))))))

(assert (= (and d!619867 c!327989) b!2026740))

(assert (= (and d!619867 (not c!327989)) b!2026743))

(assert (= (and b!2026743 c!327988) b!2026739))

(assert (= (and b!2026743 (not c!327988)) b!2026737))

(assert (= (and b!2026737 c!327990) b!2026738))

(assert (= (and b!2026737 (not c!327990)) b!2026741))

(assert (= (and b!2026741 c!327991) b!2026736))

(assert (= (and b!2026741 (not c!327991)) b!2026742))

(assert (= (or b!2026736 b!2026742) bm!124324))

(assert (= (or b!2026736 b!2026742) bm!124326))

(assert (= (or b!2026736 b!2026742) bm!124325))

(assert (= (or b!2026738 bm!124326) bm!124327))

(declare-fun m!2465663 () Bool)

(assert (=> bm!124324 m!2465663))

(declare-fun m!2465665 () Bool)

(assert (=> bm!124325 m!2465665))

(declare-fun m!2465667 () Bool)

(assert (=> bm!124327 m!2465667))

(assert (=> b!2026026 d!619867))

(declare-fun d!619869 () Bool)

(declare-fun e!1280218 () Bool)

(assert (=> d!619869 e!1280218))

(declare-fun res!888661 () Bool)

(assert (=> d!619869 (=> (not res!888661) (not e!1280218))))

(declare-fun lt!761131 () BalanceConc!14662)

(assert (=> d!619869 (= res!888661 (= (list!9056 lt!761131) (Cons!22193 (h!27594 tokens!598) Nil!22193)))))

(declare-fun singleton!880 (Token!7528) BalanceConc!14662)

(assert (=> d!619869 (= lt!761131 (singleton!880 (h!27594 tokens!598)))))

(assert (=> d!619869 (= (singletonSeq!1964 (h!27594 tokens!598)) lt!761131)))

(declare-fun b!2026746 () Bool)

(declare-fun isBalanced!2311 (Conc!7423) Bool)

(assert (=> b!2026746 (= e!1280218 (isBalanced!2311 (c!327832 lt!761131)))))

(assert (= (and d!619869 res!888661) b!2026746))

(declare-fun m!2465669 () Bool)

(assert (=> d!619869 m!2465669))

(declare-fun m!2465671 () Bool)

(assert (=> d!619869 m!2465671))

(declare-fun m!2465673 () Bool)

(assert (=> b!2026746 m!2465673))

(assert (=> b!2026026 d!619869))

(declare-fun d!619871 () Bool)

(assert (=> d!619871 (= (head!4576 lt!760862) (h!27592 lt!760862))))

(assert (=> b!2026026 d!619871))

(declare-fun d!619873 () Bool)

(declare-fun lt!761134 () BalanceConc!14660)

(assert (=> d!619873 (= (list!9055 lt!761134) (printList!1120 thiss!23328 (list!9056 lt!760861)))))

(assert (=> d!619873 (= lt!761134 (printTailRec!1069 thiss!23328 lt!760861 0 (BalanceConc!14661 Empty!7422)))))

(assert (=> d!619873 (= (print!1563 thiss!23328 lt!760861) lt!761134)))

(declare-fun bs!420726 () Bool)

(assert (= bs!420726 d!619873))

(declare-fun m!2465675 () Bool)

(assert (=> bs!420726 m!2465675))

(assert (=> bs!420726 m!2465639))

(assert (=> bs!420726 m!2465639))

(declare-fun m!2465677 () Bool)

(assert (=> bs!420726 m!2465677))

(assert (=> bs!420726 m!2464755))

(assert (=> b!2026026 d!619873))

(declare-fun d!619875 () Bool)

(declare-fun lt!761150 () Bool)

(declare-fun e!1280235 () Bool)

(assert (=> d!619875 (= lt!761150 e!1280235)))

(declare-fun res!888684 () Bool)

(assert (=> d!619875 (=> (not res!888684) (not e!1280235))))

(assert (=> d!619875 (= res!888684 (= (list!9056 (_1!11904 (lex!1617 thiss!23328 rules!3198 (print!1563 thiss!23328 (singletonSeq!1964 (h!27594 tokens!598)))))) (list!9056 (singletonSeq!1964 (h!27594 tokens!598)))))))

(declare-fun e!1280236 () Bool)

(assert (=> d!619875 (= lt!761150 e!1280236)))

(declare-fun res!888683 () Bool)

(assert (=> d!619875 (=> (not res!888683) (not e!1280236))))

(declare-fun lt!761151 () tuple2!20870)

(assert (=> d!619875 (= res!888683 (= (size!17334 (_1!11904 lt!761151)) 1))))

(assert (=> d!619875 (= lt!761151 (lex!1617 thiss!23328 rules!3198 (print!1563 thiss!23328 (singletonSeq!1964 (h!27594 tokens!598)))))))

(assert (=> d!619875 (not (isEmpty!13825 rules!3198))))

(assert (=> d!619875 (= (rulesProduceIndividualToken!1773 thiss!23328 rules!3198 (h!27594 tokens!598)) lt!761150)))

(declare-fun b!2026772 () Bool)

(declare-fun res!888685 () Bool)

(assert (=> b!2026772 (=> (not res!888685) (not e!1280236))))

(assert (=> b!2026772 (= res!888685 (= (apply!5838 (_1!11904 lt!761151) 0) (h!27594 tokens!598)))))

(declare-fun b!2026773 () Bool)

(declare-fun isEmpty!13833 (BalanceConc!14660) Bool)

(assert (=> b!2026773 (= e!1280236 (isEmpty!13833 (_2!11904 lt!761151)))))

(declare-fun b!2026774 () Bool)

(assert (=> b!2026774 (= e!1280235 (isEmpty!13833 (_2!11904 (lex!1617 thiss!23328 rules!3198 (print!1563 thiss!23328 (singletonSeq!1964 (h!27594 tokens!598)))))))))

(assert (= (and d!619875 res!888683) b!2026772))

(assert (= (and b!2026772 res!888685) b!2026773))

(assert (= (and d!619875 res!888684) b!2026774))

(assert (=> d!619875 m!2464747))

(assert (=> d!619875 m!2464747))

(declare-fun m!2465731 () Bool)

(assert (=> d!619875 m!2465731))

(declare-fun m!2465733 () Bool)

(assert (=> d!619875 m!2465733))

(assert (=> d!619875 m!2464747))

(declare-fun m!2465735 () Bool)

(assert (=> d!619875 m!2465735))

(assert (=> d!619875 m!2464769))

(declare-fun m!2465737 () Bool)

(assert (=> d!619875 m!2465737))

(assert (=> d!619875 m!2465731))

(declare-fun m!2465739 () Bool)

(assert (=> d!619875 m!2465739))

(declare-fun m!2465741 () Bool)

(assert (=> b!2026772 m!2465741))

(declare-fun m!2465743 () Bool)

(assert (=> b!2026773 m!2465743))

(assert (=> b!2026774 m!2464747))

(assert (=> b!2026774 m!2464747))

(assert (=> b!2026774 m!2465731))

(assert (=> b!2026774 m!2465731))

(assert (=> b!2026774 m!2465739))

(declare-fun m!2465745 () Bool)

(assert (=> b!2026774 m!2465745))

(assert (=> b!2026004 d!619875))

(declare-fun d!619887 () Bool)

(assert (=> d!619887 (= (isEmpty!13824 (_2!11903 lt!760850)) ((_ is Nil!22191) (_2!11903 lt!760850)))))

(assert (=> b!2026006 d!619887))

(declare-fun d!619889 () Bool)

(declare-fun lt!761152 () Bool)

(declare-fun e!1280237 () Bool)

(assert (=> d!619889 (= lt!761152 e!1280237)))

(declare-fun res!888687 () Bool)

(assert (=> d!619889 (=> (not res!888687) (not e!1280237))))

(assert (=> d!619889 (= res!888687 (= (list!9056 (_1!11904 (lex!1617 thiss!23328 rules!3198 (print!1563 thiss!23328 (singletonSeq!1964 separatorToken!354))))) (list!9056 (singletonSeq!1964 separatorToken!354))))))

(declare-fun e!1280238 () Bool)

(assert (=> d!619889 (= lt!761152 e!1280238)))

(declare-fun res!888686 () Bool)

(assert (=> d!619889 (=> (not res!888686) (not e!1280238))))

(declare-fun lt!761153 () tuple2!20870)

(assert (=> d!619889 (= res!888686 (= (size!17334 (_1!11904 lt!761153)) 1))))

(assert (=> d!619889 (= lt!761153 (lex!1617 thiss!23328 rules!3198 (print!1563 thiss!23328 (singletonSeq!1964 separatorToken!354))))))

(assert (=> d!619889 (not (isEmpty!13825 rules!3198))))

(assert (=> d!619889 (= (rulesProduceIndividualToken!1773 thiss!23328 rules!3198 separatorToken!354) lt!761152)))

(declare-fun b!2026775 () Bool)

(declare-fun res!888688 () Bool)

(assert (=> b!2026775 (=> (not res!888688) (not e!1280238))))

(assert (=> b!2026775 (= res!888688 (= (apply!5838 (_1!11904 lt!761153) 0) separatorToken!354))))

(declare-fun b!2026776 () Bool)

(assert (=> b!2026776 (= e!1280238 (isEmpty!13833 (_2!11904 lt!761153)))))

(declare-fun b!2026777 () Bool)

(assert (=> b!2026777 (= e!1280237 (isEmpty!13833 (_2!11904 (lex!1617 thiss!23328 rules!3198 (print!1563 thiss!23328 (singletonSeq!1964 separatorToken!354))))))))

(assert (= (and d!619889 res!888686) b!2026775))

(assert (= (and b!2026775 res!888688) b!2026776))

(assert (= (and d!619889 res!888687) b!2026777))

(declare-fun m!2465747 () Bool)

(assert (=> d!619889 m!2465747))

(assert (=> d!619889 m!2465747))

(declare-fun m!2465749 () Bool)

(assert (=> d!619889 m!2465749))

(declare-fun m!2465751 () Bool)

(assert (=> d!619889 m!2465751))

(assert (=> d!619889 m!2465747))

(declare-fun m!2465753 () Bool)

(assert (=> d!619889 m!2465753))

(assert (=> d!619889 m!2464769))

(declare-fun m!2465755 () Bool)

(assert (=> d!619889 m!2465755))

(assert (=> d!619889 m!2465749))

(declare-fun m!2465757 () Bool)

(assert (=> d!619889 m!2465757))

(declare-fun m!2465759 () Bool)

(assert (=> b!2026775 m!2465759))

(declare-fun m!2465761 () Bool)

(assert (=> b!2026776 m!2465761))

(assert (=> b!2026777 m!2465747))

(assert (=> b!2026777 m!2465747))

(assert (=> b!2026777 m!2465749))

(assert (=> b!2026777 m!2465749))

(assert (=> b!2026777 m!2465757))

(declare-fun m!2465763 () Bool)

(assert (=> b!2026777 m!2465763))

(assert (=> b!2026027 d!619889))

(declare-fun d!619891 () Bool)

(assert (=> d!619891 (= (isEmpty!13825 rules!3198) ((_ is Nil!22192) rules!3198))))

(assert (=> b!2026029 d!619891))

(declare-fun d!619893 () Bool)

(declare-fun res!888689 () Bool)

(declare-fun e!1280239 () Bool)

(assert (=> d!619893 (=> (not res!888689) (not e!1280239))))

(assert (=> d!619893 (= res!888689 (not (isEmpty!13824 (originalCharacters!4795 separatorToken!354))))))

(assert (=> d!619893 (= (inv!29369 separatorToken!354) e!1280239)))

(declare-fun b!2026778 () Bool)

(declare-fun res!888690 () Bool)

(assert (=> b!2026778 (=> (not res!888690) (not e!1280239))))

(assert (=> b!2026778 (= res!888690 (= (originalCharacters!4795 separatorToken!354) (list!9055 (dynLambda!11005 (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (value!125249 separatorToken!354)))))))

(declare-fun b!2026779 () Bool)

(assert (=> b!2026779 (= e!1280239 (= (size!17332 separatorToken!354) (size!17333 (originalCharacters!4795 separatorToken!354))))))

(assert (= (and d!619893 res!888689) b!2026778))

(assert (= (and b!2026778 res!888690) b!2026779))

(declare-fun b_lambda!68135 () Bool)

(assert (=> (not b_lambda!68135) (not b!2026778)))

(assert (=> b!2026778 t!189933))

(declare-fun b_and!161239 () Bool)

(assert (= b_and!161209 (and (=> t!189933 result!152776) b_and!161239)))

(assert (=> b!2026778 t!189935))

(declare-fun b_and!161241 () Bool)

(assert (= b_and!161211 (and (=> t!189935 result!152778) b_and!161241)))

(assert (=> b!2026778 t!189937))

(declare-fun b_and!161243 () Bool)

(assert (= b_and!161213 (and (=> t!189937 result!152780) b_and!161243)))

(declare-fun m!2465765 () Bool)

(assert (=> d!619893 m!2465765))

(assert (=> b!2026778 m!2465387))

(assert (=> b!2026778 m!2465387))

(declare-fun m!2465767 () Bool)

(assert (=> b!2026778 m!2465767))

(declare-fun m!2465769 () Bool)

(assert (=> b!2026779 m!2465769))

(assert (=> start!199236 d!619893))

(declare-fun d!619895 () Bool)

(assert (=> d!619895 (= (isEmpty!13824 lt!760846) ((_ is Nil!22191) lt!760846))))

(assert (=> b!2026028 d!619895))

(declare-fun d!619897 () Bool)

(assert (=> d!619897 (= (inv!29366 (tag!4470 (rule!6217 (h!27594 tokens!598)))) (= (mod (str.len (value!125248 (tag!4470 (rule!6217 (h!27594 tokens!598))))) 2) 0))))

(assert (=> b!2026030 d!619897))

(declare-fun d!619899 () Bool)

(declare-fun res!888691 () Bool)

(declare-fun e!1280240 () Bool)

(assert (=> d!619899 (=> (not res!888691) (not e!1280240))))

(assert (=> d!619899 (= res!888691 (semiInverseModEq!1605 (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))))))

(assert (=> d!619899 (= (inv!29370 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) e!1280240)))

(declare-fun b!2026780 () Bool)

(assert (=> b!2026780 (= e!1280240 (equivClasses!1532 (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))))))

(assert (= (and d!619899 res!888691) b!2026780))

(declare-fun m!2465771 () Bool)

(assert (=> d!619899 m!2465771))

(declare-fun m!2465773 () Bool)

(assert (=> b!2026780 m!2465773))

(assert (=> b!2026030 d!619899))

(declare-fun b!2026781 () Bool)

(declare-fun e!1280244 () Bool)

(declare-fun e!1280245 () Bool)

(assert (=> b!2026781 (= e!1280244 e!1280245)))

(declare-fun res!888695 () Bool)

(assert (=> b!2026781 (=> (not res!888695) (not e!1280245))))

(declare-fun lt!761154 () Bool)

(assert (=> b!2026781 (= res!888695 (not lt!761154))))

(declare-fun b!2026782 () Bool)

(declare-fun e!1280246 () Bool)

(declare-fun e!1280241 () Bool)

(assert (=> b!2026782 (= e!1280246 e!1280241)))

(declare-fun c!327995 () Bool)

(assert (=> b!2026782 (= c!327995 ((_ is EmptyLang!5413) (regex!3988 lt!760866)))))

(declare-fun b!2026783 () Bool)

(declare-fun res!888692 () Bool)

(declare-fun e!1280247 () Bool)

(assert (=> b!2026783 (=> (not res!888692) (not e!1280247))))

(declare-fun call!124333 () Bool)

(assert (=> b!2026783 (= res!888692 (not call!124333))))

(declare-fun b!2026784 () Bool)

(declare-fun e!1280243 () Bool)

(assert (=> b!2026784 (= e!1280245 e!1280243)))

(declare-fun res!888696 () Bool)

(assert (=> b!2026784 (=> res!888696 e!1280243)))

(assert (=> b!2026784 (= res!888696 call!124333)))

(declare-fun bm!124328 () Bool)

(assert (=> bm!124328 (= call!124333 (isEmpty!13824 lt!760863))))

(declare-fun b!2026785 () Bool)

(declare-fun res!888698 () Bool)

(assert (=> b!2026785 (=> (not res!888698) (not e!1280247))))

(assert (=> b!2026785 (= res!888698 (isEmpty!13824 (tail!3052 lt!760863)))))

(declare-fun b!2026786 () Bool)

(declare-fun res!888694 () Bool)

(assert (=> b!2026786 (=> res!888694 e!1280244)))

(assert (=> b!2026786 (= res!888694 (not ((_ is ElementMatch!5413) (regex!3988 lt!760866))))))

(assert (=> b!2026786 (= e!1280241 e!1280244)))

(declare-fun b!2026787 () Bool)

(declare-fun res!888699 () Bool)

(assert (=> b!2026787 (=> res!888699 e!1280244)))

(assert (=> b!2026787 (= res!888699 e!1280247)))

(declare-fun res!888697 () Bool)

(assert (=> b!2026787 (=> (not res!888697) (not e!1280247))))

(assert (=> b!2026787 (= res!888697 lt!761154)))

(declare-fun b!2026788 () Bool)

(assert (=> b!2026788 (= e!1280246 (= lt!761154 call!124333))))

(declare-fun b!2026789 () Bool)

(assert (=> b!2026789 (= e!1280243 (not (= (head!4576 lt!760863) (c!327831 (regex!3988 lt!760866)))))))

(declare-fun b!2026790 () Bool)

(assert (=> b!2026790 (= e!1280247 (= (head!4576 lt!760863) (c!327831 (regex!3988 lt!760866))))))

(declare-fun d!619901 () Bool)

(assert (=> d!619901 e!1280246))

(declare-fun c!327996 () Bool)

(assert (=> d!619901 (= c!327996 ((_ is EmptyExpr!5413) (regex!3988 lt!760866)))))

(declare-fun e!1280242 () Bool)

(assert (=> d!619901 (= lt!761154 e!1280242)))

(declare-fun c!327994 () Bool)

(assert (=> d!619901 (= c!327994 (isEmpty!13824 lt!760863))))

(assert (=> d!619901 (validRegex!2175 (regex!3988 lt!760866))))

(assert (=> d!619901 (= (matchR!2679 (regex!3988 lt!760866) lt!760863) lt!761154)))

(declare-fun b!2026791 () Bool)

(declare-fun res!888693 () Bool)

(assert (=> b!2026791 (=> res!888693 e!1280243)))

(assert (=> b!2026791 (= res!888693 (not (isEmpty!13824 (tail!3052 lt!760863))))))

(declare-fun b!2026792 () Bool)

(assert (=> b!2026792 (= e!1280242 (matchR!2679 (derivativeStep!1408 (regex!3988 lt!760866) (head!4576 lt!760863)) (tail!3052 lt!760863)))))

(declare-fun b!2026793 () Bool)

(assert (=> b!2026793 (= e!1280242 (nullable!1649 (regex!3988 lt!760866)))))

(declare-fun b!2026794 () Bool)

(assert (=> b!2026794 (= e!1280241 (not lt!761154))))

(assert (= (and d!619901 c!327994) b!2026793))

(assert (= (and d!619901 (not c!327994)) b!2026792))

(assert (= (and d!619901 c!327996) b!2026788))

(assert (= (and d!619901 (not c!327996)) b!2026782))

(assert (= (and b!2026782 c!327995) b!2026794))

(assert (= (and b!2026782 (not c!327995)) b!2026786))

(assert (= (and b!2026786 (not res!888694)) b!2026787))

(assert (= (and b!2026787 res!888697) b!2026783))

(assert (= (and b!2026783 res!888692) b!2026785))

(assert (= (and b!2026785 res!888698) b!2026790))

(assert (= (and b!2026787 (not res!888699)) b!2026781))

(assert (= (and b!2026781 res!888695) b!2026784))

(assert (= (and b!2026784 (not res!888696)) b!2026791))

(assert (= (and b!2026791 (not res!888693)) b!2026789))

(assert (= (or b!2026788 b!2026783 b!2026784) bm!124328))

(assert (=> b!2026791 m!2465081))

(assert (=> b!2026791 m!2465081))

(assert (=> b!2026791 m!2465083))

(assert (=> d!619901 m!2465085))

(declare-fun m!2465775 () Bool)

(assert (=> d!619901 m!2465775))

(assert (=> bm!124328 m!2465085))

(assert (=> b!2026785 m!2465081))

(assert (=> b!2026785 m!2465081))

(assert (=> b!2026785 m!2465083))

(declare-fun m!2465777 () Bool)

(assert (=> b!2026793 m!2465777))

(assert (=> b!2026789 m!2465091))

(assert (=> b!2026790 m!2465091))

(assert (=> b!2026792 m!2465091))

(assert (=> b!2026792 m!2465091))

(declare-fun m!2465779 () Bool)

(assert (=> b!2026792 m!2465779))

(assert (=> b!2026792 m!2465081))

(assert (=> b!2026792 m!2465779))

(assert (=> b!2026792 m!2465081))

(declare-fun m!2465781 () Bool)

(assert (=> b!2026792 m!2465781))

(assert (=> b!2026008 d!619901))

(declare-fun d!619903 () Bool)

(assert (=> d!619903 (= (get!7044 lt!760858) (v!26967 lt!760858))))

(assert (=> b!2026008 d!619903))

(declare-fun d!619905 () Bool)

(assert (=> d!619905 (= (inv!29366 (tag!4470 (rule!6217 separatorToken!354))) (= (mod (str.len (value!125248 (tag!4470 (rule!6217 separatorToken!354)))) 2) 0))))

(assert (=> b!2026010 d!619905))

(declare-fun d!619907 () Bool)

(declare-fun res!888700 () Bool)

(declare-fun e!1280248 () Bool)

(assert (=> d!619907 (=> (not res!888700) (not e!1280248))))

(assert (=> d!619907 (= res!888700 (semiInverseModEq!1605 (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (toValue!5661 (transformation!3988 (rule!6217 separatorToken!354)))))))

(assert (=> d!619907 (= (inv!29370 (transformation!3988 (rule!6217 separatorToken!354))) e!1280248)))

(declare-fun b!2026795 () Bool)

(assert (=> b!2026795 (= e!1280248 (equivClasses!1532 (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (toValue!5661 (transformation!3988 (rule!6217 separatorToken!354)))))))

(assert (= (and d!619907 res!888700) b!2026795))

(declare-fun m!2465783 () Bool)

(assert (=> d!619907 m!2465783))

(declare-fun m!2465785 () Bool)

(assert (=> b!2026795 m!2465785))

(assert (=> b!2026010 d!619907))

(declare-fun b!2026806 () Bool)

(declare-fun b_free!56525 () Bool)

(declare-fun b_next!57229 () Bool)

(assert (=> b!2026806 (= b_free!56525 (not b_next!57229))))

(declare-fun t!189960 () Bool)

(declare-fun tb!127701 () Bool)

(assert (=> (and b!2026806 (= (toValue!5661 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189960) tb!127701))

(declare-fun result!152802 () Bool)

(assert (= result!152802 result!152762))

(assert (=> d!619793 t!189960))

(declare-fun t!189962 () Bool)

(declare-fun tb!127703 () Bool)

(assert (=> (and b!2026806 (= (toValue!5661 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189962) tb!127703))

(declare-fun result!152804 () Bool)

(assert (= result!152804 result!152770))

(assert (=> d!619793 t!189962))

(assert (=> d!619809 t!189960))

(declare-fun b_and!161245 () Bool)

(declare-fun tp!602834 () Bool)

(assert (=> b!2026806 (= tp!602834 (and (=> t!189960 result!152802) (=> t!189962 result!152804) b_and!161245))))

(declare-fun b_free!56527 () Bool)

(declare-fun b_next!57231 () Bool)

(assert (=> b!2026806 (= b_free!56527 (not b_next!57231))))

(declare-fun tb!127705 () Bool)

(declare-fun t!189964 () Bool)

(assert (=> (and b!2026806 (= (toChars!5520 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189964) tb!127705))

(declare-fun result!152806 () Bool)

(assert (= result!152806 result!152732))

(assert (=> b!2026055 t!189964))

(assert (=> d!619795 t!189964))

(declare-fun tb!127707 () Bool)

(declare-fun t!189966 () Bool)

(assert (=> (and b!2026806 (= (toChars!5520 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354)))) t!189966) tb!127707))

(declare-fun result!152808 () Bool)

(assert (= result!152808 result!152776))

(assert (=> d!619799 t!189966))

(assert (=> b!2026778 t!189966))

(declare-fun tb!127709 () Bool)

(declare-fun t!189968 () Bool)

(assert (=> (and b!2026806 (= (toChars!5520 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189968) tb!127709))

(declare-fun result!152810 () Bool)

(assert (= result!152810 result!152788))

(assert (=> d!619809 t!189968))

(declare-fun b_and!161247 () Bool)

(declare-fun tp!602831 () Bool)

(assert (=> b!2026806 (= tp!602831 (and (=> t!189966 result!152808) (=> t!189968 result!152810) (=> t!189964 result!152806) b_and!161247))))

(declare-fun e!1280259 () Bool)

(assert (=> b!2026806 (= e!1280259 (and tp!602834 tp!602831))))

(declare-fun b!2026805 () Bool)

(declare-fun e!1280258 () Bool)

(declare-fun tp!602832 () Bool)

(assert (=> b!2026805 (= e!1280258 (and tp!602832 (inv!29366 (tag!4470 (h!27593 (t!189885 rules!3198)))) (inv!29370 (transformation!3988 (h!27593 (t!189885 rules!3198)))) e!1280259))))

(declare-fun b!2026804 () Bool)

(declare-fun e!1280260 () Bool)

(declare-fun tp!602833 () Bool)

(assert (=> b!2026804 (= e!1280260 (and e!1280258 tp!602833))))

(assert (=> b!2026033 (= tp!602805 e!1280260)))

(assert (= b!2026805 b!2026806))

(assert (= b!2026804 b!2026805))

(assert (= (and b!2026033 ((_ is Cons!22192) (t!189885 rules!3198))) b!2026804))

(declare-fun m!2465787 () Bool)

(assert (=> b!2026805 m!2465787))

(declare-fun m!2465789 () Bool)

(assert (=> b!2026805 m!2465789))

(declare-fun b!2026830 () Bool)

(declare-fun b_free!56529 () Bool)

(declare-fun b_next!57233 () Bool)

(assert (=> b!2026830 (= b_free!56529 (not b_next!57233))))

(declare-fun t!189970 () Bool)

(declare-fun tb!127711 () Bool)

(assert (=> (and b!2026830 (= (toValue!5661 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189970) tb!127711))

(declare-fun result!152814 () Bool)

(assert (= result!152814 result!152762))

(assert (=> d!619793 t!189970))

(declare-fun t!189972 () Bool)

(declare-fun tb!127713 () Bool)

(assert (=> (and b!2026830 (= (toValue!5661 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189972) tb!127713))

(declare-fun result!152816 () Bool)

(assert (= result!152816 result!152770))

(assert (=> d!619793 t!189972))

(assert (=> d!619809 t!189970))

(declare-fun b_and!161249 () Bool)

(declare-fun tp!602845 () Bool)

(assert (=> b!2026830 (= tp!602845 (and (=> t!189970 result!152814) (=> t!189972 result!152816) b_and!161249))))

(declare-fun b_free!56531 () Bool)

(declare-fun b_next!57235 () Bool)

(assert (=> b!2026830 (= b_free!56531 (not b_next!57235))))

(declare-fun t!189974 () Bool)

(declare-fun tb!127715 () Bool)

(assert (=> (and b!2026830 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189974) tb!127715))

(declare-fun result!152818 () Bool)

(assert (= result!152818 result!152732))

(assert (=> b!2026055 t!189974))

(assert (=> d!619795 t!189974))

(declare-fun tb!127717 () Bool)

(declare-fun t!189976 () Bool)

(assert (=> (and b!2026830 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354)))) t!189976) tb!127717))

(declare-fun result!152820 () Bool)

(assert (= result!152820 result!152776))

(assert (=> d!619799 t!189976))

(assert (=> b!2026778 t!189976))

(declare-fun t!189978 () Bool)

(declare-fun tb!127719 () Bool)

(assert (=> (and b!2026830 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598))))) t!189978) tb!127719))

(declare-fun result!152822 () Bool)

(assert (= result!152822 result!152788))

(assert (=> d!619809 t!189978))

(declare-fun b_and!161251 () Bool)

(declare-fun tp!602846 () Bool)

(assert (=> b!2026830 (= tp!602846 (and (=> t!189974 result!152818) (=> t!189976 result!152820) (=> t!189978 result!152822) b_and!161251))))

(declare-fun e!1280282 () Bool)

(declare-fun e!1280279 () Bool)

(declare-fun tp!602847 () Bool)

(declare-fun b!2026829 () Bool)

(assert (=> b!2026829 (= e!1280282 (and tp!602847 (inv!29366 (tag!4470 (rule!6217 (h!27594 (t!189886 tokens!598))))) (inv!29370 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) e!1280279))))

(declare-fun e!1280281 () Bool)

(assert (=> b!2026013 (= tp!602804 e!1280281)))

(assert (=> b!2026830 (= e!1280279 (and tp!602845 tp!602846))))

(declare-fun b!2026827 () Bool)

(declare-fun e!1280280 () Bool)

(declare-fun tp!602848 () Bool)

(assert (=> b!2026827 (= e!1280281 (and (inv!29369 (h!27594 (t!189886 tokens!598))) e!1280280 tp!602848))))

(declare-fun b!2026828 () Bool)

(declare-fun tp!602849 () Bool)

(assert (=> b!2026828 (= e!1280280 (and (inv!21 (value!125249 (h!27594 (t!189886 tokens!598)))) e!1280282 tp!602849))))

(assert (= b!2026829 b!2026830))

(assert (= b!2026828 b!2026829))

(assert (= b!2026827 b!2026828))

(assert (= (and b!2026013 ((_ is Cons!22193) (t!189886 tokens!598))) b!2026827))

(declare-fun m!2465791 () Bool)

(assert (=> b!2026829 m!2465791))

(declare-fun m!2465793 () Bool)

(assert (=> b!2026829 m!2465793))

(declare-fun m!2465795 () Bool)

(assert (=> b!2026827 m!2465795))

(declare-fun m!2465797 () Bool)

(assert (=> b!2026828 m!2465797))

(declare-fun b!2026835 () Bool)

(declare-fun e!1280287 () Bool)

(declare-fun tp_is_empty!9215 () Bool)

(declare-fun tp!602852 () Bool)

(assert (=> b!2026835 (= e!1280287 (and tp_is_empty!9215 tp!602852))))

(assert (=> b!2026016 (= tp!602806 e!1280287)))

(assert (= (and b!2026016 ((_ is Cons!22191) (originalCharacters!4795 separatorToken!354))) b!2026835))

(declare-fun b!2026853 () Bool)

(declare-fun e!1280293 () Bool)

(declare-fun tp!602865 () Bool)

(assert (=> b!2026853 (= e!1280293 tp!602865)))

(declare-fun b!2026854 () Bool)

(declare-fun tp!602867 () Bool)

(declare-fun tp!602864 () Bool)

(assert (=> b!2026854 (= e!1280293 (and tp!602867 tp!602864))))

(assert (=> b!2026030 (= tp!602801 e!1280293)))

(declare-fun b!2026851 () Bool)

(assert (=> b!2026851 (= e!1280293 tp_is_empty!9215)))

(declare-fun b!2026852 () Bool)

(declare-fun tp!602866 () Bool)

(declare-fun tp!602863 () Bool)

(assert (=> b!2026852 (= e!1280293 (and tp!602866 tp!602863))))

(assert (= (and b!2026030 ((_ is ElementMatch!5413) (regex!3988 (rule!6217 (h!27594 tokens!598))))) b!2026851))

(assert (= (and b!2026030 ((_ is Concat!9538) (regex!3988 (rule!6217 (h!27594 tokens!598))))) b!2026852))

(assert (= (and b!2026030 ((_ is Star!5413) (regex!3988 (rule!6217 (h!27594 tokens!598))))) b!2026853))

(assert (= (and b!2026030 ((_ is Union!5413) (regex!3988 (rule!6217 (h!27594 tokens!598))))) b!2026854))

(declare-fun b!2026855 () Bool)

(declare-fun e!1280294 () Bool)

(declare-fun tp!602868 () Bool)

(assert (=> b!2026855 (= e!1280294 (and tp_is_empty!9215 tp!602868))))

(assert (=> b!2026019 (= tp!602809 e!1280294)))

(assert (= (and b!2026019 ((_ is Cons!22191) (originalCharacters!4795 (h!27594 tokens!598)))) b!2026855))

(declare-fun b!2026858 () Bool)

(declare-fun e!1280295 () Bool)

(declare-fun tp!602871 () Bool)

(assert (=> b!2026858 (= e!1280295 tp!602871)))

(declare-fun b!2026859 () Bool)

(declare-fun tp!602873 () Bool)

(declare-fun tp!602870 () Bool)

(assert (=> b!2026859 (= e!1280295 (and tp!602873 tp!602870))))

(assert (=> b!2026021 (= tp!602812 e!1280295)))

(declare-fun b!2026856 () Bool)

(assert (=> b!2026856 (= e!1280295 tp_is_empty!9215)))

(declare-fun b!2026857 () Bool)

(declare-fun tp!602872 () Bool)

(declare-fun tp!602869 () Bool)

(assert (=> b!2026857 (= e!1280295 (and tp!602872 tp!602869))))

(assert (= (and b!2026021 ((_ is ElementMatch!5413) (regex!3988 (h!27593 rules!3198)))) b!2026856))

(assert (= (and b!2026021 ((_ is Concat!9538) (regex!3988 (h!27593 rules!3198)))) b!2026857))

(assert (= (and b!2026021 ((_ is Star!5413) (regex!3988 (h!27593 rules!3198)))) b!2026858))

(assert (= (and b!2026021 ((_ is Union!5413) (regex!3988 (h!27593 rules!3198)))) b!2026859))

(declare-fun b!2026862 () Bool)

(declare-fun e!1280296 () Bool)

(declare-fun tp!602876 () Bool)

(assert (=> b!2026862 (= e!1280296 tp!602876)))

(declare-fun b!2026863 () Bool)

(declare-fun tp!602878 () Bool)

(declare-fun tp!602875 () Bool)

(assert (=> b!2026863 (= e!1280296 (and tp!602878 tp!602875))))

(assert (=> b!2026010 (= tp!602811 e!1280296)))

(declare-fun b!2026860 () Bool)

(assert (=> b!2026860 (= e!1280296 tp_is_empty!9215)))

(declare-fun b!2026861 () Bool)

(declare-fun tp!602877 () Bool)

(declare-fun tp!602874 () Bool)

(assert (=> b!2026861 (= e!1280296 (and tp!602877 tp!602874))))

(assert (= (and b!2026010 ((_ is ElementMatch!5413) (regex!3988 (rule!6217 separatorToken!354)))) b!2026860))

(assert (= (and b!2026010 ((_ is Concat!9538) (regex!3988 (rule!6217 separatorToken!354)))) b!2026861))

(assert (= (and b!2026010 ((_ is Star!5413) (regex!3988 (rule!6217 separatorToken!354)))) b!2026862))

(assert (= (and b!2026010 ((_ is Union!5413) (regex!3988 (rule!6217 separatorToken!354)))) b!2026863))

(declare-fun b_lambda!68137 () Bool)

(assert (= b_lambda!68101 (or (and b!2026018 b_free!56523 (= (toChars!5520 (transformation!3988 (h!27593 rules!3198))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026830 b_free!56531 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026806 b_free!56527 (= (toChars!5520 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026009 b_free!56515 (= (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026024 b_free!56519) b_lambda!68137)))

(declare-fun b_lambda!68139 () Bool)

(assert (= b_lambda!68125 (or (and b!2026806 b_free!56525 (= (toValue!5661 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026024 b_free!56517) (and b!2026830 b_free!56529 (= (toValue!5661 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026018 b_free!56521 (= (toValue!5661 (transformation!3988 (h!27593 rules!3198))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026009 b_free!56513 (= (toValue!5661 (transformation!3988 (rule!6217 separatorToken!354))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) b_lambda!68139)))

(declare-fun b_lambda!68141 () Bool)

(assert (= b_lambda!68115 (or (and b!2026018 b_free!56523 (= (toChars!5520 (transformation!3988 (h!27593 rules!3198))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026830 b_free!56531 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026806 b_free!56527 (= (toChars!5520 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026009 b_free!56515 (= (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026024 b_free!56519) b_lambda!68141)))

(declare-fun b_lambda!68143 () Bool)

(assert (= b_lambda!68131 (or b!2026005 b_lambda!68143)))

(declare-fun bs!420729 () Bool)

(declare-fun d!619913 () Bool)

(assert (= bs!420729 (and d!619913 b!2026005)))

(assert (=> bs!420729 (= (dynLambda!11019 lambda!76423 (h!27594 tokens!598)) (not (isSeparator!3988 (rule!6217 (h!27594 tokens!598)))))))

(assert (=> b!2026675 d!619913))

(declare-fun b_lambda!68145 () Bool)

(assert (= b_lambda!68113 (or (and b!2026806 b_free!56525 (= (toValue!5661 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026024 b_free!56517) (and b!2026830 b_free!56529 (= (toValue!5661 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026018 b_free!56521 (= (toValue!5661 (transformation!3988 (h!27593 rules!3198))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026009 b_free!56513 (= (toValue!5661 (transformation!3988 (rule!6217 separatorToken!354))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) b_lambda!68145)))

(declare-fun b_lambda!68147 () Bool)

(assert (= b_lambda!68111 (or (and b!2026806 b_free!56525 (= (toValue!5661 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026024 b_free!56517) (and b!2026830 b_free!56529 (= (toValue!5661 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026018 b_free!56521 (= (toValue!5661 (transformation!3988 (h!27593 rules!3198))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026009 b_free!56513 (= (toValue!5661 (transformation!3988 (rule!6217 separatorToken!354))) (toValue!5661 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) b_lambda!68147)))

(declare-fun b_lambda!68149 () Bool)

(assert (= b_lambda!68135 (or (and b!2026806 b_free!56527 (= (toChars!5520 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))))) (and b!2026024 b_free!56519 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))))) (and b!2026018 b_free!56523 (= (toChars!5520 (transformation!3988 (h!27593 rules!3198))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))))) (and b!2026009 b_free!56515) (and b!2026830 b_free!56531 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))))) b_lambda!68149)))

(declare-fun b_lambda!68151 () Bool)

(assert (= b_lambda!68123 (or (and b!2026018 b_free!56523 (= (toChars!5520 (transformation!3988 (h!27593 rules!3198))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026830 b_free!56531 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026806 b_free!56527 (= (toChars!5520 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026009 b_free!56515 (= (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))) (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))))) (and b!2026024 b_free!56519) b_lambda!68151)))

(declare-fun b_lambda!68153 () Bool)

(assert (= b_lambda!68117 (or (and b!2026806 b_free!56527 (= (toChars!5520 (transformation!3988 (h!27593 (t!189885 rules!3198)))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))))) (and b!2026024 b_free!56519 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 tokens!598)))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))))) (and b!2026018 b_free!56523 (= (toChars!5520 (transformation!3988 (h!27593 rules!3198))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))))) (and b!2026009 b_free!56515) (and b!2026830 b_free!56531 (= (toChars!5520 (transformation!3988 (rule!6217 (h!27594 (t!189886 tokens!598))))) (toChars!5520 (transformation!3988 (rule!6217 separatorToken!354))))) b_lambda!68153)))

(check-sat (not d!619775) (not b!2026859) (not b!2026580) b_and!161241 (not d!619863) (not tb!127689) (not b_lambda!68137) (not b!2026795) (not b!2026746) (not b!2026776) (not b!2026061) (not d!619893) (not b!2026805) (not b!2026678) (not b!2026790) (not b!2026574) (not tb!127677) (not b!2026687) (not b!2026792) (not b!2026791) b_and!161251 (not b!2026724) (not b!2026639) (not d!619793) (not b!2026772) b_and!161219 (not b!2026326) (not b_next!57229) (not b_lambda!68153) (not b!2026353) (not b!2026777) b_and!161243 (not b!2026526) (not b!2026835) (not bm!124273) (not b!2026725) (not b!2026160) (not bm!124323) (not bm!124253) (not b!2026779) (not b!2026789) (not bm!124324) (not b!2026442) (not b!2026855) (not d!619865) (not b!2026683) (not bm!124295) (not b!2026691) (not b!2026156) (not b_lambda!68141) (not d!619799) (not b_next!57219) (not b!2026355) (not b!2026642) (not d!619647) (not d!619815) (not b!2026573) (not b_next!57225) (not b!2026686) (not b_next!57235) (not b!2026351) (not d!619771) (not d!619743) (not d!619683) (not b!2026722) (not bm!124254) (not b!2026853) (not d!619845) (not b!2026610) (not d!619773) (not b!2026164) (not b!2026862) (not b_lambda!68145) (not d!619849) (not d!619907) (not b!2026434) b_and!161247 (not b!2026336) (not d!619641) (not tb!127671) (not b!2026858) (not d!619637) (not b!2026215) (not b!2026863) (not b!2026354) (not d!619767) (not b!2026452) (not d!619795) (not b!2026162) (not b!2026804) (not b_lambda!68151) (not b_next!57231) (not b!2026216) (not b!2026217) (not d!619653) (not b!2026690) (not d!619807) (not b!2026587) (not b!2026583) (not d!619797) (not b!2026785) b_and!161215 (not b!2026735) (not d!619855) (not b!2026531) (not b!2026454) (not bm!124321) (not b!2026778) (not d!619747) (not b!2026468) (not d!619791) (not d!619741) (not tb!127665) (not d!619685) (not b!2026352) (not b!2026676) (not b!2026050) (not b!2026141) (not b_lambda!68149) (not b!2026438) (not b!2026527) (not b_next!57233) (not b_lambda!68139) (not b!2026861) (not d!619661) (not b!2026142) (not b!2026733) (not b!2026451) (not b!2026213) (not d!619857) (not d!619889) (not b!2026136) b_and!161245 (not b_next!57217) (not b!2026163) (not b!2026637) (not bm!124293) (not b!2026857) (not d!619801) (not b!2026584) (not b!2026579) (not b!2026361) (not b!2026143) (not b!2026575) b_and!161217 (not d!619859) (not b!2026161) (not b!2026719) (not b!2026441) (not b!2026641) (not b!2026578) (not b!2026440) (not d!619643) (not tb!127641) (not d!619809) (not d!619851) (not b!2026773) (not b!2026775) (not d!619739) (not b!2026044) (not b!2026439) (not b!2026528) b_and!161239 (not b!2026056) (not d!619901) (not b!2026436) (not b!2026342) (not b!2026365) (not d!619667) (not b_lambda!68143) (not d!619869) (not b!2026854) (not b_next!57223) (not bm!124311) (not b!2026472) (not b!2026055) (not d!619733) (not b!2026140) (not b_lambda!68147) (not b!2026780) (not b!2026600) (not b!2026572) (not bm!124276) (not b!2026718) (not b!2026774) (not b!2026453) (not b!2026533) (not b!2026435) (not d!619737) (not d!619843) (not b!2026659) (not d!619735) (not b!2026581) (not b!2026827) (not b!2026347) (not b!2026611) (not d!619899) (not d!619861) (not b!2026665) (not bm!124325) (not bm!124320) (not b!2026793) b_and!161249 tp_is_empty!9215 (not b_next!57221) (not b!2026666) (not b_next!57227) (not d!619873) (not b!2026144) (not bm!124328) (not b!2026636) (not b!2026644) (not d!619769) (not d!619657) (not bm!124327) (not b!2026577) (not d!619823) (not d!619875) (not d!619777) (not b!2026828) (not b!2026852) (not b!2026469) (not b!2026327) (not bm!124294) (not b!2026829))
(check-sat b_and!161241 b_and!161251 (not b_next!57219) b_and!161247 (not b_next!57233) b_and!161245 (not b_next!57217) b_and!161217 b_and!161239 (not b_next!57223) b_and!161249 b_and!161219 (not b_next!57229) b_and!161243 (not b_next!57225) (not b_next!57235) (not b_next!57231) b_and!161215 (not b_next!57221) (not b_next!57227))
