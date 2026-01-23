; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360188 () Bool)

(assert start!360188)

(declare-fun b!3846663 () Bool)

(declare-fun b_free!102973 () Bool)

(declare-fun b_next!103677 () Bool)

(assert (=> b!3846663 (= b_free!102973 (not b_next!103677))))

(declare-fun tp!1165919 () Bool)

(declare-fun b_and!286971 () Bool)

(assert (=> b!3846663 (= tp!1165919 b_and!286971)))

(declare-fun b_free!102975 () Bool)

(declare-fun b_next!103679 () Bool)

(assert (=> b!3846663 (= b_free!102975 (not b_next!103679))))

(declare-fun tp!1165930 () Bool)

(declare-fun b_and!286973 () Bool)

(assert (=> b!3846663 (= tp!1165930 b_and!286973)))

(declare-fun b!3846673 () Bool)

(declare-fun b_free!102977 () Bool)

(declare-fun b_next!103681 () Bool)

(assert (=> b!3846673 (= b_free!102977 (not b_next!103681))))

(declare-fun tp!1165932 () Bool)

(declare-fun b_and!286975 () Bool)

(assert (=> b!3846673 (= tp!1165932 b_and!286975)))

(declare-fun b_free!102979 () Bool)

(declare-fun b_next!103683 () Bool)

(assert (=> b!3846673 (= b_free!102979 (not b_next!103683))))

(declare-fun tp!1165925 () Bool)

(declare-fun b_and!286977 () Bool)

(assert (=> b!3846673 (= tp!1165925 b_and!286977)))

(declare-fun b!3846675 () Bool)

(declare-fun b_free!102981 () Bool)

(declare-fun b_next!103685 () Bool)

(assert (=> b!3846675 (= b_free!102981 (not b_next!103685))))

(declare-fun tp!1165918 () Bool)

(declare-fun b_and!286979 () Bool)

(assert (=> b!3846675 (= tp!1165918 b_and!286979)))

(declare-fun b_free!102983 () Bool)

(declare-fun b_next!103687 () Bool)

(assert (=> b!3846675 (= b_free!102983 (not b_next!103687))))

(declare-fun tp!1165927 () Bool)

(declare-fun b_and!286981 () Bool)

(assert (=> b!3846675 (= tp!1165927 b_and!286981)))

(declare-fun b!3846654 () Bool)

(declare-fun res!1557156 () Bool)

(declare-fun e!2377408 () Bool)

(assert (=> b!3846654 (=> (not res!1557156) (not e!2377408))))

(declare-datatypes ((C!22588 0))(
  ( (C!22589 (val!13388 Int)) )
))
(declare-datatypes ((List!40876 0))(
  ( (Nil!40752) (Cons!40752 (h!46172 C!22588) (t!311105 List!40876)) )
))
(declare-datatypes ((IArray!25019 0))(
  ( (IArray!25020 (innerList!12567 List!40876)) )
))
(declare-datatypes ((Conc!12507 0))(
  ( (Node!12507 (left!31445 Conc!12507) (right!31775 Conc!12507) (csize!25244 Int) (cheight!12718 Int)) (Leaf!19362 (xs!15813 IArray!25019) (csize!25245 Int)) (Empty!12507) )
))
(declare-datatypes ((BalanceConc!24608 0))(
  ( (BalanceConc!24609 (c!670020 Conc!12507)) )
))
(declare-datatypes ((List!40877 0))(
  ( (Nil!40753) (Cons!40753 (h!46173 (_ BitVec 16)) (t!311106 List!40877)) )
))
(declare-datatypes ((TokenValue!6526 0))(
  ( (FloatLiteralValue!13052 (text!46127 List!40877)) (TokenValueExt!6525 (__x!25269 Int)) (Broken!32630 (value!200044 List!40877)) (Object!6649) (End!6526) (Def!6526) (Underscore!6526) (Match!6526) (Else!6526) (Error!6526) (Case!6526) (If!6526) (Extends!6526) (Abstract!6526) (Class!6526) (Val!6526) (DelimiterValue!13052 (del!6586 List!40877)) (KeywordValue!6532 (value!200045 List!40877)) (CommentValue!13052 (value!200046 List!40877)) (WhitespaceValue!13052 (value!200047 List!40877)) (IndentationValue!6526 (value!200048 List!40877)) (String!46347) (Int32!6526) (Broken!32631 (value!200049 List!40877)) (Boolean!6527) (Unit!58431) (OperatorValue!6529 (op!6586 List!40877)) (IdentifierValue!13052 (value!200050 List!40877)) (IdentifierValue!13053 (value!200051 List!40877)) (WhitespaceValue!13053 (value!200052 List!40877)) (True!13052) (False!13052) (Broken!32632 (value!200053 List!40877)) (Broken!32633 (value!200054 List!40877)) (True!13053) (RightBrace!6526) (RightBracket!6526) (Colon!6526) (Null!6526) (Comma!6526) (LeftBracket!6526) (False!13053) (LeftBrace!6526) (ImaginaryLiteralValue!6526 (text!46128 List!40877)) (StringLiteralValue!19578 (value!200055 List!40877)) (EOFValue!6526 (value!200056 List!40877)) (IdentValue!6526 (value!200057 List!40877)) (DelimiterValue!13053 (value!200058 List!40877)) (DedentValue!6526 (value!200059 List!40877)) (NewLineValue!6526 (value!200060 List!40877)) (IntegerValue!19578 (value!200061 (_ BitVec 32)) (text!46129 List!40877)) (IntegerValue!19579 (value!200062 Int) (text!46130 List!40877)) (Times!6526) (Or!6526) (Equal!6526) (Minus!6526) (Broken!32634 (value!200063 List!40877)) (And!6526) (Div!6526) (LessEqual!6526) (Mod!6526) (Concat!17727) (Not!6526) (Plus!6526) (SpaceValue!6526 (value!200064 List!40877)) (IntegerValue!19580 (value!200065 Int) (text!46131 List!40877)) (StringLiteralValue!19579 (text!46132 List!40877)) (FloatLiteralValue!13053 (text!46133 List!40877)) (BytesLiteralValue!6526 (value!200066 List!40877)) (CommentValue!13053 (value!200067 List!40877)) (StringLiteralValue!19580 (value!200068 List!40877)) (ErrorTokenValue!6526 (msg!6587 List!40877)) )
))
(declare-datatypes ((Regex!11201 0))(
  ( (ElementMatch!11201 (c!670021 C!22588)) (Concat!17728 (regOne!22914 Regex!11201) (regTwo!22914 Regex!11201)) (EmptyExpr!11201) (Star!11201 (reg!11530 Regex!11201)) (EmptyLang!11201) (Union!11201 (regOne!22915 Regex!11201) (regTwo!22915 Regex!11201)) )
))
(declare-datatypes ((String!46348 0))(
  ( (String!46349 (value!200069 String)) )
))
(declare-datatypes ((TokenValueInjection!12480 0))(
  ( (TokenValueInjection!12481 (toValue!8712 Int) (toChars!8571 Int)) )
))
(declare-datatypes ((Rule!12392 0))(
  ( (Rule!12393 (regex!6296 Regex!11201) (tag!7156 String!46348) (isSeparator!6296 Bool) (transformation!6296 TokenValueInjection!12480)) )
))
(declare-datatypes ((List!40878 0))(
  ( (Nil!40754) (Cons!40754 (h!46174 Rule!12392) (t!311107 List!40878)) )
))
(declare-fun rules!2768 () List!40878)

(declare-fun isEmpty!24108 (List!40878) Bool)

(assert (=> b!3846654 (= res!1557156 (not (isEmpty!24108 rules!2768)))))

(declare-fun res!1557161 () Bool)

(assert (=> start!360188 (=> (not res!1557161) (not e!2377408))))

(declare-datatypes ((LexerInterface!5885 0))(
  ( (LexerInterfaceExt!5882 (__x!25270 Int)) (Lexer!5883) )
))
(declare-fun thiss!20629 () LexerInterface!5885)

(get-info :version)

(assert (=> start!360188 (= res!1557161 ((_ is Lexer!5883) thiss!20629))))

(assert (=> start!360188 e!2377408))

(declare-fun e!2377416 () Bool)

(assert (=> start!360188 e!2377416))

(assert (=> start!360188 true))

(declare-fun e!2377417 () Bool)

(assert (=> start!360188 e!2377417))

(declare-fun e!2377418 () Bool)

(assert (=> start!360188 e!2377418))

(declare-fun e!2377397 () Bool)

(assert (=> start!360188 e!2377397))

(declare-fun e!2377409 () Bool)

(assert (=> start!360188 e!2377409))

(declare-fun e!2377414 () Bool)

(assert (=> start!360188 e!2377414))

(declare-fun b!3846655 () Bool)

(declare-fun res!1557163 () Bool)

(declare-fun e!2377398 () Bool)

(assert (=> b!3846655 (=> (not res!1557163) (not e!2377398))))

(declare-fun suffixResult!91 () List!40876)

(declare-fun suffix!1176 () List!40876)

(declare-datatypes ((Token!11730 0))(
  ( (Token!11731 (value!200070 TokenValue!6526) (rule!9142 Rule!12392) (size!30655 Int) (originalCharacters!6896 List!40876)) )
))
(declare-datatypes ((List!40879 0))(
  ( (Nil!40755) (Cons!40755 (h!46175 Token!11730) (t!311108 List!40879)) )
))
(declare-fun suffixTokens!72 () List!40879)

(declare-datatypes ((tuple2!39934 0))(
  ( (tuple2!39935 (_1!23101 List!40879) (_2!23101 List!40876)) )
))
(declare-fun lexList!1653 (LexerInterface!5885 List!40878 List!40876) tuple2!39934)

(assert (=> b!3846655 (= res!1557163 (= (lexList!1653 thiss!20629 rules!2768 suffix!1176) (tuple2!39935 suffixTokens!72 suffixResult!91)))))

(declare-fun e!2377420 () Bool)

(declare-fun b!3846656 () Bool)

(declare-fun tp!1165926 () Bool)

(declare-fun e!2377402 () Bool)

(declare-fun inv!54892 (String!46348) Bool)

(declare-fun inv!54895 (TokenValueInjection!12480) Bool)

(assert (=> b!3846656 (= e!2377420 (and tp!1165926 (inv!54892 (tag!7156 (rule!9142 (h!46175 suffixTokens!72)))) (inv!54895 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) e!2377402))))

(declare-fun b!3846657 () Bool)

(declare-fun res!1557155 () Bool)

(assert (=> b!3846657 (=> (not res!1557155) (not e!2377408))))

(declare-fun prefix!426 () List!40876)

(declare-fun isEmpty!24109 (List!40876) Bool)

(assert (=> b!3846657 (= res!1557155 (not (isEmpty!24109 prefix!426)))))

(declare-fun e!2377404 () Bool)

(declare-fun b!3846658 () Bool)

(declare-fun tp!1165916 () Bool)

(declare-fun inv!54896 (Token!11730) Bool)

(assert (=> b!3846658 (= e!2377409 (and (inv!54896 (h!46175 suffixTokens!72)) e!2377404 tp!1165916))))

(declare-fun tp!1165928 () Bool)

(declare-fun prefixTokens!80 () List!40879)

(declare-fun e!2377394 () Bool)

(declare-fun b!3846659 () Bool)

(assert (=> b!3846659 (= e!2377397 (and (inv!54896 (h!46175 prefixTokens!80)) e!2377394 tp!1165928))))

(declare-fun b!3846660 () Bool)

(declare-fun res!1557154 () Bool)

(assert (=> b!3846660 (=> (not res!1557154) (not e!2377408))))

(declare-fun rulesInvariant!5228 (LexerInterface!5885 List!40878) Bool)

(assert (=> b!3846660 (= res!1557154 (rulesInvariant!5228 thiss!20629 rules!2768))))

(declare-fun b!3846661 () Bool)

(declare-fun e!2377400 () Bool)

(declare-datatypes ((tuple2!39936 0))(
  ( (tuple2!39937 (_1!23102 Token!11730) (_2!23102 List!40876)) )
))
(declare-datatypes ((Option!8714 0))(
  ( (None!8713) (Some!8713 (v!39005 tuple2!39936)) )
))
(declare-fun lt!1335797 () Option!8714)

(declare-fun size!30656 (List!40876) Int)

(assert (=> b!3846661 (= e!2377400 (= (size!30655 (_1!23102 (v!39005 lt!1335797))) (size!30656 (originalCharacters!6896 (_1!23102 (v!39005 lt!1335797))))))))

(declare-fun b!3846662 () Bool)

(declare-fun tp_is_empty!19373 () Bool)

(declare-fun tp!1165924 () Bool)

(assert (=> b!3846662 (= e!2377416 (and tp_is_empty!19373 tp!1165924))))

(declare-fun e!2377415 () Bool)

(assert (=> b!3846663 (= e!2377415 (and tp!1165919 tp!1165930))))

(declare-fun b!3846664 () Bool)

(declare-fun e!2377407 () Bool)

(declare-fun e!2377412 () Bool)

(assert (=> b!3846664 (= e!2377407 (not e!2377412))))

(declare-fun res!1557158 () Bool)

(assert (=> b!3846664 (=> res!1557158 e!2377412)))

(declare-fun lt!1335796 () List!40876)

(declare-fun lt!1335788 () List!40876)

(assert (=> b!3846664 (= res!1557158 (not (= lt!1335796 lt!1335788)))))

(declare-fun lt!1335784 () tuple2!39934)

(assert (=> b!3846664 (= lt!1335784 (lexList!1653 thiss!20629 rules!2768 (_2!23102 (v!39005 lt!1335797))))))

(declare-fun lt!1335786 () TokenValue!6526)

(declare-fun lt!1335783 () List!40876)

(declare-fun lt!1335781 () List!40876)

(declare-fun lt!1335799 () Int)

(assert (=> b!3846664 (and (= (size!30655 (_1!23102 (v!39005 lt!1335797))) lt!1335799) (= (originalCharacters!6896 (_1!23102 (v!39005 lt!1335797))) lt!1335783) (= (v!39005 lt!1335797) (tuple2!39937 (Token!11731 lt!1335786 (rule!9142 (_1!23102 (v!39005 lt!1335797))) lt!1335799 lt!1335783) lt!1335781)))))

(assert (=> b!3846664 (= lt!1335799 (size!30656 lt!1335783))))

(assert (=> b!3846664 e!2377400))

(declare-fun res!1557153 () Bool)

(assert (=> b!3846664 (=> (not res!1557153) (not e!2377400))))

(assert (=> b!3846664 (= res!1557153 (= (value!200070 (_1!23102 (v!39005 lt!1335797))) lt!1335786))))

(declare-fun apply!9539 (TokenValueInjection!12480 BalanceConc!24608) TokenValue!6526)

(declare-fun seqFromList!4567 (List!40876) BalanceConc!24608)

(assert (=> b!3846664 (= lt!1335786 (apply!9539 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) (seqFromList!4567 lt!1335783)))))

(assert (=> b!3846664 (= (_2!23102 (v!39005 lt!1335797)) lt!1335781)))

(declare-datatypes ((Unit!58432 0))(
  ( (Unit!58433) )
))
(declare-fun lt!1335793 () Unit!58432)

(declare-fun lemmaSamePrefixThenSameSuffix!1616 (List!40876 List!40876 List!40876 List!40876 List!40876) Unit!58432)

(assert (=> b!3846664 (= lt!1335793 (lemmaSamePrefixThenSameSuffix!1616 lt!1335783 (_2!23102 (v!39005 lt!1335797)) lt!1335783 lt!1335781 lt!1335788))))

(declare-fun getSuffix!1850 (List!40876 List!40876) List!40876)

(assert (=> b!3846664 (= lt!1335781 (getSuffix!1850 lt!1335788 lt!1335783))))

(declare-fun isPrefix!3395 (List!40876 List!40876) Bool)

(assert (=> b!3846664 (isPrefix!3395 lt!1335783 lt!1335796)))

(declare-fun ++!10349 (List!40876 List!40876) List!40876)

(assert (=> b!3846664 (= lt!1335796 (++!10349 lt!1335783 (_2!23102 (v!39005 lt!1335797))))))

(declare-fun lt!1335795 () Unit!58432)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2258 (List!40876 List!40876) Unit!58432)

(assert (=> b!3846664 (= lt!1335795 (lemmaConcatTwoListThenFirstIsPrefix!2258 lt!1335783 (_2!23102 (v!39005 lt!1335797))))))

(declare-fun list!15168 (BalanceConc!24608) List!40876)

(declare-fun charsOf!4124 (Token!11730) BalanceConc!24608)

(assert (=> b!3846664 (= lt!1335783 (list!15168 (charsOf!4124 (_1!23102 (v!39005 lt!1335797)))))))

(declare-fun ruleValid!2248 (LexerInterface!5885 Rule!12392) Bool)

(assert (=> b!3846664 (ruleValid!2248 thiss!20629 (rule!9142 (_1!23102 (v!39005 lt!1335797))))))

(declare-fun lt!1335787 () Unit!58432)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1328 (LexerInterface!5885 Rule!12392 List!40878) Unit!58432)

(assert (=> b!3846664 (= lt!1335787 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1328 thiss!20629 (rule!9142 (_1!23102 (v!39005 lt!1335797))) rules!2768))))

(declare-fun lt!1335790 () Unit!58432)

(declare-fun lemmaCharactersSize!957 (Token!11730) Unit!58432)

(assert (=> b!3846664 (= lt!1335790 (lemmaCharactersSize!957 (_1!23102 (v!39005 lt!1335797))))))

(declare-fun b!3846665 () Bool)

(declare-fun e!2377406 () Bool)

(declare-fun validRegex!5094 (Regex!11201) Bool)

(assert (=> b!3846665 (= e!2377406 (validRegex!5094 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))))))

(declare-fun maxPrefixOneRule!2271 (LexerInterface!5885 Rule!12392 List!40876) Option!8714)

(assert (=> b!3846665 (= (maxPrefixOneRule!2271 thiss!20629 (rule!9142 (_1!23102 (v!39005 lt!1335797))) lt!1335788) (Some!8713 (tuple2!39937 (Token!11731 lt!1335786 (rule!9142 (_1!23102 (v!39005 lt!1335797))) lt!1335799 lt!1335783) (_2!23102 (v!39005 lt!1335797)))))))

(declare-fun lt!1335792 () Unit!58432)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1169 (LexerInterface!5885 List!40878 List!40876 List!40876 List!40876 Rule!12392) Unit!58432)

(assert (=> b!3846665 (= lt!1335792 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1169 thiss!20629 rules!2768 lt!1335783 lt!1335788 (_2!23102 (v!39005 lt!1335797)) (rule!9142 (_1!23102 (v!39005 lt!1335797)))))))

(declare-fun b!3846666 () Bool)

(declare-fun res!1557160 () Bool)

(assert (=> b!3846666 (=> res!1557160 e!2377412)))

(assert (=> b!3846666 (= res!1557160 (or (not (= lt!1335784 (tuple2!39935 (_1!23101 lt!1335784) (_2!23101 lt!1335784)))) (= (_2!23102 (v!39005 lt!1335797)) suffix!1176)))))

(declare-fun b!3846667 () Bool)

(declare-fun e!2377419 () Bool)

(assert (=> b!3846667 (= e!2377419 e!2377406)))

(declare-fun res!1557166 () Bool)

(assert (=> b!3846667 (=> res!1557166 e!2377406)))

(declare-fun lt!1335785 () Int)

(declare-fun lt!1335798 () Int)

(declare-fun lt!1335782 () Int)

(assert (=> b!3846667 (= res!1557166 (or (not (= (+ lt!1335785 lt!1335782) lt!1335798)) (<= lt!1335799 lt!1335785)))))

(assert (=> b!3846667 (= lt!1335785 (size!30656 prefix!426))))

(declare-fun b!3846668 () Bool)

(assert (=> b!3846668 (= e!2377408 e!2377398)))

(declare-fun res!1557152 () Bool)

(assert (=> b!3846668 (=> (not res!1557152) (not e!2377398))))

(declare-fun lt!1335789 () tuple2!39934)

(declare-fun lt!1335794 () List!40879)

(assert (=> b!3846668 (= res!1557152 (= lt!1335789 (tuple2!39935 lt!1335794 suffixResult!91)))))

(assert (=> b!3846668 (= lt!1335789 (lexList!1653 thiss!20629 rules!2768 lt!1335788))))

(declare-fun ++!10350 (List!40879 List!40879) List!40879)

(assert (=> b!3846668 (= lt!1335794 (++!10350 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3846668 (= lt!1335788 (++!10349 prefix!426 suffix!1176))))

(declare-fun b!3846669 () Bool)

(declare-fun res!1557165 () Bool)

(assert (=> b!3846669 (=> (not res!1557165) (not e!2377408))))

(declare-fun isEmpty!24110 (List!40879) Bool)

(assert (=> b!3846669 (= res!1557165 (not (isEmpty!24110 prefixTokens!80)))))

(declare-fun b!3846670 () Bool)

(declare-fun e!2377403 () Bool)

(declare-fun tp!1165922 () Bool)

(assert (=> b!3846670 (= e!2377418 (and e!2377403 tp!1165922))))

(declare-fun b!3846671 () Bool)

(assert (=> b!3846671 (= e!2377398 e!2377407)))

(declare-fun res!1557162 () Bool)

(assert (=> b!3846671 (=> (not res!1557162) (not e!2377407))))

(assert (=> b!3846671 (= res!1557162 ((_ is Some!8713) lt!1335797))))

(declare-fun maxPrefix!3189 (LexerInterface!5885 List!40878 List!40876) Option!8714)

(assert (=> b!3846671 (= lt!1335797 (maxPrefix!3189 thiss!20629 rules!2768 lt!1335788))))

(declare-fun b!3846672 () Bool)

(declare-fun res!1557157 () Bool)

(assert (=> b!3846672 (=> res!1557157 e!2377412)))

(assert (=> b!3846672 (= res!1557157 (not (= lt!1335789 (tuple2!39935 (++!10350 (Cons!40755 (_1!23102 (v!39005 lt!1335797)) Nil!40755) (_1!23101 lt!1335784)) (_2!23101 lt!1335784)))))))

(declare-fun e!2377396 () Bool)

(assert (=> b!3846673 (= e!2377396 (and tp!1165932 tp!1165925))))

(declare-fun b!3846674 () Bool)

(declare-fun tp!1165917 () Bool)

(assert (=> b!3846674 (= e!2377417 (and tp_is_empty!19373 tp!1165917))))

(assert (=> b!3846675 (= e!2377402 (and tp!1165918 tp!1165927))))

(declare-fun tp!1165923 () Bool)

(declare-fun b!3846676 () Bool)

(declare-fun inv!21 (TokenValue!6526) Bool)

(assert (=> b!3846676 (= e!2377404 (and (inv!21 (value!200070 (h!46175 suffixTokens!72))) e!2377420 tp!1165923))))

(declare-fun b!3846677 () Bool)

(declare-fun e!2377401 () Bool)

(assert (=> b!3846677 (= e!2377412 e!2377401)))

(declare-fun res!1557159 () Bool)

(assert (=> b!3846677 (=> res!1557159 e!2377401)))

(declare-fun lt!1335791 () Int)

(assert (=> b!3846677 (= res!1557159 (>= lt!1335791 lt!1335782))))

(assert (=> b!3846677 (= lt!1335782 (size!30656 suffix!1176))))

(assert (=> b!3846677 (= lt!1335791 (size!30656 (_2!23102 (v!39005 lt!1335797))))))

(declare-fun b!3846678 () Bool)

(assert (=> b!3846678 (= e!2377401 e!2377419)))

(declare-fun res!1557164 () Bool)

(assert (=> b!3846678 (=> res!1557164 e!2377419)))

(assert (=> b!3846678 (= res!1557164 (not (= (+ lt!1335799 lt!1335791) lt!1335798)))))

(assert (=> b!3846678 (= lt!1335798 (size!30656 lt!1335788))))

(declare-fun tp!1165920 () Bool)

(declare-fun b!3846679 () Bool)

(declare-fun e!2377405 () Bool)

(assert (=> b!3846679 (= e!2377394 (and (inv!21 (value!200070 (h!46175 prefixTokens!80))) e!2377405 tp!1165920))))

(declare-fun b!3846680 () Bool)

(declare-fun tp!1165929 () Bool)

(assert (=> b!3846680 (= e!2377414 (and tp_is_empty!19373 tp!1165929))))

(declare-fun tp!1165921 () Bool)

(declare-fun b!3846681 () Bool)

(assert (=> b!3846681 (= e!2377405 (and tp!1165921 (inv!54892 (tag!7156 (rule!9142 (h!46175 prefixTokens!80)))) (inv!54895 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) e!2377396))))

(declare-fun tp!1165931 () Bool)

(declare-fun b!3846682 () Bool)

(assert (=> b!3846682 (= e!2377403 (and tp!1165931 (inv!54892 (tag!7156 (h!46174 rules!2768))) (inv!54895 (transformation!6296 (h!46174 rules!2768))) e!2377415))))

(assert (= (and start!360188 res!1557161) b!3846654))

(assert (= (and b!3846654 res!1557156) b!3846660))

(assert (= (and b!3846660 res!1557154) b!3846669))

(assert (= (and b!3846669 res!1557165) b!3846657))

(assert (= (and b!3846657 res!1557155) b!3846668))

(assert (= (and b!3846668 res!1557152) b!3846655))

(assert (= (and b!3846655 res!1557163) b!3846671))

(assert (= (and b!3846671 res!1557162) b!3846664))

(assert (= (and b!3846664 res!1557153) b!3846661))

(assert (= (and b!3846664 (not res!1557158)) b!3846672))

(assert (= (and b!3846672 (not res!1557157)) b!3846666))

(assert (= (and b!3846666 (not res!1557160)) b!3846677))

(assert (= (and b!3846677 (not res!1557159)) b!3846678))

(assert (= (and b!3846678 (not res!1557164)) b!3846667))

(assert (= (and b!3846667 (not res!1557166)) b!3846665))

(assert (= (and start!360188 ((_ is Cons!40752) suffixResult!91)) b!3846662))

(assert (= (and start!360188 ((_ is Cons!40752) suffix!1176)) b!3846674))

(assert (= b!3846682 b!3846663))

(assert (= b!3846670 b!3846682))

(assert (= (and start!360188 ((_ is Cons!40754) rules!2768)) b!3846670))

(assert (= b!3846681 b!3846673))

(assert (= b!3846679 b!3846681))

(assert (= b!3846659 b!3846679))

(assert (= (and start!360188 ((_ is Cons!40755) prefixTokens!80)) b!3846659))

(assert (= b!3846656 b!3846675))

(assert (= b!3846676 b!3846656))

(assert (= b!3846658 b!3846676))

(assert (= (and start!360188 ((_ is Cons!40755) suffixTokens!72)) b!3846658))

(assert (= (and start!360188 ((_ is Cons!40752) prefix!426)) b!3846680))

(declare-fun m!4401361 () Bool)

(assert (=> b!3846678 m!4401361))

(declare-fun m!4401363 () Bool)

(assert (=> b!3846661 m!4401363))

(declare-fun m!4401365 () Bool)

(assert (=> b!3846672 m!4401365))

(declare-fun m!4401367 () Bool)

(assert (=> b!3846655 m!4401367))

(declare-fun m!4401369 () Bool)

(assert (=> b!3846671 m!4401369))

(declare-fun m!4401371 () Bool)

(assert (=> b!3846668 m!4401371))

(declare-fun m!4401373 () Bool)

(assert (=> b!3846668 m!4401373))

(declare-fun m!4401375 () Bool)

(assert (=> b!3846668 m!4401375))

(declare-fun m!4401377 () Bool)

(assert (=> b!3846677 m!4401377))

(declare-fun m!4401379 () Bool)

(assert (=> b!3846677 m!4401379))

(declare-fun m!4401381 () Bool)

(assert (=> b!3846659 m!4401381))

(declare-fun m!4401383 () Bool)

(assert (=> b!3846665 m!4401383))

(declare-fun m!4401385 () Bool)

(assert (=> b!3846665 m!4401385))

(declare-fun m!4401387 () Bool)

(assert (=> b!3846665 m!4401387))

(declare-fun m!4401389 () Bool)

(assert (=> b!3846656 m!4401389))

(declare-fun m!4401391 () Bool)

(assert (=> b!3846656 m!4401391))

(declare-fun m!4401393 () Bool)

(assert (=> b!3846681 m!4401393))

(declare-fun m!4401395 () Bool)

(assert (=> b!3846681 m!4401395))

(declare-fun m!4401397 () Bool)

(assert (=> b!3846664 m!4401397))

(declare-fun m!4401399 () Bool)

(assert (=> b!3846664 m!4401399))

(declare-fun m!4401401 () Bool)

(assert (=> b!3846664 m!4401401))

(declare-fun m!4401403 () Bool)

(assert (=> b!3846664 m!4401403))

(declare-fun m!4401405 () Bool)

(assert (=> b!3846664 m!4401405))

(declare-fun m!4401407 () Bool)

(assert (=> b!3846664 m!4401407))

(declare-fun m!4401409 () Bool)

(assert (=> b!3846664 m!4401409))

(declare-fun m!4401411 () Bool)

(assert (=> b!3846664 m!4401411))

(declare-fun m!4401413 () Bool)

(assert (=> b!3846664 m!4401413))

(declare-fun m!4401415 () Bool)

(assert (=> b!3846664 m!4401415))

(declare-fun m!4401417 () Bool)

(assert (=> b!3846664 m!4401417))

(assert (=> b!3846664 m!4401409))

(declare-fun m!4401419 () Bool)

(assert (=> b!3846664 m!4401419))

(declare-fun m!4401421 () Bool)

(assert (=> b!3846664 m!4401421))

(assert (=> b!3846664 m!4401407))

(declare-fun m!4401423 () Bool)

(assert (=> b!3846664 m!4401423))

(declare-fun m!4401425 () Bool)

(assert (=> b!3846660 m!4401425))

(declare-fun m!4401427 () Bool)

(assert (=> b!3846679 m!4401427))

(declare-fun m!4401429 () Bool)

(assert (=> b!3846669 m!4401429))

(declare-fun m!4401431 () Bool)

(assert (=> b!3846676 m!4401431))

(declare-fun m!4401433 () Bool)

(assert (=> b!3846667 m!4401433))

(declare-fun m!4401435 () Bool)

(assert (=> b!3846682 m!4401435))

(declare-fun m!4401437 () Bool)

(assert (=> b!3846682 m!4401437))

(declare-fun m!4401439 () Bool)

(assert (=> b!3846658 m!4401439))

(declare-fun m!4401441 () Bool)

(assert (=> b!3846657 m!4401441))

(declare-fun m!4401443 () Bool)

(assert (=> b!3846654 m!4401443))

(check-sat b_and!286973 b_and!286979 (not b!3846656) (not b!3846677) (not b!3846664) (not b!3846659) (not b!3846679) (not b_next!103685) (not b!3846667) (not b!3846668) (not b!3846672) (not b_next!103683) (not b_next!103687) (not b!3846662) (not b!3846671) b_and!286977 (not b_next!103681) (not b!3846682) (not b!3846669) tp_is_empty!19373 (not b!3846658) (not b!3846678) (not b!3846657) (not b!3846660) b_and!286981 (not b_next!103677) (not b!3846654) b_and!286971 (not b!3846661) (not b!3846670) (not b!3846655) (not b!3846674) (not b!3846681) (not b!3846676) (not b!3846680) (not b!3846665) b_and!286975 (not b_next!103679))
(check-sat (not b_next!103683) (not b_next!103687) b_and!286977 b_and!286973 b_and!286979 (not b_next!103681) b_and!286971 (not b_next!103685) b_and!286981 (not b_next!103677) b_and!286975 (not b_next!103679))
(get-model)

(declare-fun b!3846765 () Bool)

(declare-fun e!2377477 () Bool)

(declare-fun e!2377475 () Bool)

(assert (=> b!3846765 (= e!2377477 e!2377475)))

(declare-fun res!1557210 () Bool)

(declare-fun lt!1335821 () tuple2!39934)

(assert (=> b!3846765 (= res!1557210 (< (size!30656 (_2!23101 lt!1335821)) (size!30656 (_2!23102 (v!39005 lt!1335797)))))))

(assert (=> b!3846765 (=> (not res!1557210) (not e!2377475))))

(declare-fun b!3846766 () Bool)

(declare-fun e!2377476 () tuple2!39934)

(declare-fun lt!1335822 () Option!8714)

(declare-fun lt!1335823 () tuple2!39934)

(assert (=> b!3846766 (= e!2377476 (tuple2!39935 (Cons!40755 (_1!23102 (v!39005 lt!1335822)) (_1!23101 lt!1335823)) (_2!23101 lt!1335823)))))

(assert (=> b!3846766 (= lt!1335823 (lexList!1653 thiss!20629 rules!2768 (_2!23102 (v!39005 lt!1335822))))))

(declare-fun b!3846767 () Bool)

(assert (=> b!3846767 (= e!2377476 (tuple2!39935 Nil!40755 (_2!23102 (v!39005 lt!1335797))))))

(declare-fun d!1140517 () Bool)

(assert (=> d!1140517 e!2377477))

(declare-fun c!670044 () Bool)

(declare-fun size!30659 (List!40879) Int)

(assert (=> d!1140517 (= c!670044 (> (size!30659 (_1!23101 lt!1335821)) 0))))

(assert (=> d!1140517 (= lt!1335821 e!2377476)))

(declare-fun c!670045 () Bool)

(assert (=> d!1140517 (= c!670045 ((_ is Some!8713) lt!1335822))))

(assert (=> d!1140517 (= lt!1335822 (maxPrefix!3189 thiss!20629 rules!2768 (_2!23102 (v!39005 lt!1335797))))))

(assert (=> d!1140517 (= (lexList!1653 thiss!20629 rules!2768 (_2!23102 (v!39005 lt!1335797))) lt!1335821)))

(declare-fun b!3846768 () Bool)

(assert (=> b!3846768 (= e!2377475 (not (isEmpty!24110 (_1!23101 lt!1335821))))))

(declare-fun b!3846769 () Bool)

(assert (=> b!3846769 (= e!2377477 (= (_2!23101 lt!1335821) (_2!23102 (v!39005 lt!1335797))))))

(assert (= (and d!1140517 c!670045) b!3846766))

(assert (= (and d!1140517 (not c!670045)) b!3846767))

(assert (= (and d!1140517 c!670044) b!3846765))

(assert (= (and d!1140517 (not c!670044)) b!3846769))

(assert (= (and b!3846765 res!1557210) b!3846768))

(declare-fun m!4401491 () Bool)

(assert (=> b!3846765 m!4401491))

(assert (=> b!3846765 m!4401379))

(declare-fun m!4401493 () Bool)

(assert (=> b!3846766 m!4401493))

(declare-fun m!4401495 () Bool)

(assert (=> d!1140517 m!4401495))

(declare-fun m!4401497 () Bool)

(assert (=> d!1140517 m!4401497))

(declare-fun m!4401499 () Bool)

(assert (=> b!3846768 m!4401499))

(assert (=> b!3846664 d!1140517))

(declare-fun d!1140535 () Bool)

(declare-fun res!1557215 () Bool)

(declare-fun e!2377480 () Bool)

(assert (=> d!1140535 (=> (not res!1557215) (not e!2377480))))

(assert (=> d!1140535 (= res!1557215 (validRegex!5094 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))))))

(assert (=> d!1140535 (= (ruleValid!2248 thiss!20629 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) e!2377480)))

(declare-fun b!3846774 () Bool)

(declare-fun res!1557216 () Bool)

(assert (=> b!3846774 (=> (not res!1557216) (not e!2377480))))

(declare-fun nullable!3895 (Regex!11201) Bool)

(assert (=> b!3846774 (= res!1557216 (not (nullable!3895 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))))))

(declare-fun b!3846775 () Bool)

(assert (=> b!3846775 (= e!2377480 (not (= (tag!7156 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) (String!46349 ""))))))

(assert (= (and d!1140535 res!1557215) b!3846774))

(assert (= (and b!3846774 res!1557216) b!3846775))

(assert (=> d!1140535 m!4401383))

(declare-fun m!4401501 () Bool)

(assert (=> b!3846774 m!4401501))

(assert (=> b!3846664 d!1140535))

(declare-fun d!1140537 () Bool)

(assert (=> d!1140537 (= (_2!23102 (v!39005 lt!1335797)) lt!1335781)))

(declare-fun lt!1335826 () Unit!58432)

(declare-fun choose!22631 (List!40876 List!40876 List!40876 List!40876 List!40876) Unit!58432)

(assert (=> d!1140537 (= lt!1335826 (choose!22631 lt!1335783 (_2!23102 (v!39005 lt!1335797)) lt!1335783 lt!1335781 lt!1335788))))

(assert (=> d!1140537 (isPrefix!3395 lt!1335783 lt!1335788)))

(assert (=> d!1140537 (= (lemmaSamePrefixThenSameSuffix!1616 lt!1335783 (_2!23102 (v!39005 lt!1335797)) lt!1335783 lt!1335781 lt!1335788) lt!1335826)))

(declare-fun bs!582719 () Bool)

(assert (= bs!582719 d!1140537))

(declare-fun m!4401503 () Bool)

(assert (=> bs!582719 m!4401503))

(declare-fun m!4401505 () Bool)

(assert (=> bs!582719 m!4401505))

(assert (=> b!3846664 d!1140537))

(declare-fun d!1140539 () Bool)

(assert (=> d!1140539 (= (size!30655 (_1!23102 (v!39005 lt!1335797))) (size!30656 (originalCharacters!6896 (_1!23102 (v!39005 lt!1335797)))))))

(declare-fun Unit!58434 () Unit!58432)

(assert (=> d!1140539 (= (lemmaCharactersSize!957 (_1!23102 (v!39005 lt!1335797))) Unit!58434)))

(declare-fun bs!582720 () Bool)

(assert (= bs!582720 d!1140539))

(assert (=> bs!582720 m!4401363))

(assert (=> b!3846664 d!1140539))

(declare-fun d!1140541 () Bool)

(assert (=> d!1140541 (isPrefix!3395 lt!1335783 (++!10349 lt!1335783 (_2!23102 (v!39005 lt!1335797))))))

(declare-fun lt!1335829 () Unit!58432)

(declare-fun choose!22632 (List!40876 List!40876) Unit!58432)

(assert (=> d!1140541 (= lt!1335829 (choose!22632 lt!1335783 (_2!23102 (v!39005 lt!1335797))))))

(assert (=> d!1140541 (= (lemmaConcatTwoListThenFirstIsPrefix!2258 lt!1335783 (_2!23102 (v!39005 lt!1335797))) lt!1335829)))

(declare-fun bs!582721 () Bool)

(assert (= bs!582721 d!1140541))

(assert (=> bs!582721 m!4401415))

(assert (=> bs!582721 m!4401415))

(declare-fun m!4401507 () Bool)

(assert (=> bs!582721 m!4401507))

(declare-fun m!4401509 () Bool)

(assert (=> bs!582721 m!4401509))

(assert (=> b!3846664 d!1140541))

(declare-fun d!1140543 () Bool)

(declare-fun lt!1335832 () BalanceConc!24608)

(assert (=> d!1140543 (= (list!15168 lt!1335832) (originalCharacters!6896 (_1!23102 (v!39005 lt!1335797))))))

(declare-fun dynLambda!17588 (Int TokenValue!6526) BalanceConc!24608)

(assert (=> d!1140543 (= lt!1335832 (dynLambda!17588 (toChars!8571 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))) (value!200070 (_1!23102 (v!39005 lt!1335797)))))))

(assert (=> d!1140543 (= (charsOf!4124 (_1!23102 (v!39005 lt!1335797))) lt!1335832)))

(declare-fun b_lambda!112419 () Bool)

(assert (=> (not b_lambda!112419) (not d!1140543)))

(declare-fun t!311110 () Bool)

(declare-fun tb!221537 () Bool)

(assert (=> (and b!3846663 (= (toChars!8571 (transformation!6296 (h!46174 rules!2768))) (toChars!8571 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311110) tb!221537))

(declare-fun b!3846780 () Bool)

(declare-fun e!2377483 () Bool)

(declare-fun tp!1165935 () Bool)

(declare-fun inv!54899 (Conc!12507) Bool)

(assert (=> b!3846780 (= e!2377483 (and (inv!54899 (c!670020 (dynLambda!17588 (toChars!8571 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))) (value!200070 (_1!23102 (v!39005 lt!1335797)))))) tp!1165935))))

(declare-fun result!269974 () Bool)

(declare-fun inv!54900 (BalanceConc!24608) Bool)

(assert (=> tb!221537 (= result!269974 (and (inv!54900 (dynLambda!17588 (toChars!8571 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))) (value!200070 (_1!23102 (v!39005 lt!1335797))))) e!2377483))))

(assert (= tb!221537 b!3846780))

(declare-fun m!4401511 () Bool)

(assert (=> b!3846780 m!4401511))

(declare-fun m!4401513 () Bool)

(assert (=> tb!221537 m!4401513))

(assert (=> d!1140543 t!311110))

(declare-fun b_and!286983 () Bool)

(assert (= b_and!286973 (and (=> t!311110 result!269974) b_and!286983)))

(declare-fun tb!221539 () Bool)

(declare-fun t!311112 () Bool)

(assert (=> (and b!3846673 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) (toChars!8571 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311112) tb!221539))

(declare-fun result!269978 () Bool)

(assert (= result!269978 result!269974))

(assert (=> d!1140543 t!311112))

(declare-fun b_and!286985 () Bool)

(assert (= b_and!286977 (and (=> t!311112 result!269978) b_and!286985)))

(declare-fun tb!221541 () Bool)

(declare-fun t!311114 () Bool)

(assert (=> (and b!3846675 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) (toChars!8571 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311114) tb!221541))

(declare-fun result!269980 () Bool)

(assert (= result!269980 result!269974))

(assert (=> d!1140543 t!311114))

(declare-fun b_and!286987 () Bool)

(assert (= b_and!286981 (and (=> t!311114 result!269980) b_and!286987)))

(declare-fun m!4401515 () Bool)

(assert (=> d!1140543 m!4401515))

(declare-fun m!4401517 () Bool)

(assert (=> d!1140543 m!4401517))

(assert (=> b!3846664 d!1140543))

(declare-fun d!1140545 () Bool)

(declare-fun dynLambda!17589 (Int BalanceConc!24608) TokenValue!6526)

(assert (=> d!1140545 (= (apply!9539 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) (seqFromList!4567 lt!1335783)) (dynLambda!17589 (toValue!8712 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))) (seqFromList!4567 lt!1335783)))))

(declare-fun b_lambda!112421 () Bool)

(assert (=> (not b_lambda!112421) (not d!1140545)))

(declare-fun tb!221543 () Bool)

(declare-fun t!311116 () Bool)

(assert (=> (and b!3846663 (= (toValue!8712 (transformation!6296 (h!46174 rules!2768))) (toValue!8712 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311116) tb!221543))

(declare-fun result!269982 () Bool)

(assert (=> tb!221543 (= result!269982 (inv!21 (dynLambda!17589 (toValue!8712 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))) (seqFromList!4567 lt!1335783))))))

(declare-fun m!4401519 () Bool)

(assert (=> tb!221543 m!4401519))

(assert (=> d!1140545 t!311116))

(declare-fun b_and!286989 () Bool)

(assert (= b_and!286971 (and (=> t!311116 result!269982) b_and!286989)))

(declare-fun t!311118 () Bool)

(declare-fun tb!221545 () Bool)

(assert (=> (and b!3846673 (= (toValue!8712 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) (toValue!8712 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311118) tb!221545))

(declare-fun result!269986 () Bool)

(assert (= result!269986 result!269982))

(assert (=> d!1140545 t!311118))

(declare-fun b_and!286991 () Bool)

(assert (= b_and!286975 (and (=> t!311118 result!269986) b_and!286991)))

(declare-fun tb!221547 () Bool)

(declare-fun t!311120 () Bool)

(assert (=> (and b!3846675 (= (toValue!8712 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) (toValue!8712 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311120) tb!221547))

(declare-fun result!269988 () Bool)

(assert (= result!269988 result!269982))

(assert (=> d!1140545 t!311120))

(declare-fun b_and!286993 () Bool)

(assert (= b_and!286979 (and (=> t!311120 result!269988) b_and!286993)))

(assert (=> d!1140545 m!4401407))

(declare-fun m!4401521 () Bool)

(assert (=> d!1140545 m!4401521))

(assert (=> b!3846664 d!1140545))

(declare-fun d!1140547 () Bool)

(declare-fun lt!1335845 () Int)

(assert (=> d!1140547 (>= lt!1335845 0)))

(declare-fun e!2377497 () Int)

(assert (=> d!1140547 (= lt!1335845 e!2377497)))

(declare-fun c!670050 () Bool)

(assert (=> d!1140547 (= c!670050 ((_ is Nil!40752) lt!1335783))))

(assert (=> d!1140547 (= (size!30656 lt!1335783) lt!1335845)))

(declare-fun b!3846805 () Bool)

(assert (=> b!3846805 (= e!2377497 0)))

(declare-fun b!3846806 () Bool)

(assert (=> b!3846806 (= e!2377497 (+ 1 (size!30656 (t!311105 lt!1335783))))))

(assert (= (and d!1140547 c!670050) b!3846805))

(assert (= (and d!1140547 (not c!670050)) b!3846806))

(declare-fun m!4401523 () Bool)

(assert (=> b!3846806 m!4401523))

(assert (=> b!3846664 d!1140547))

(declare-fun d!1140549 () Bool)

(assert (=> d!1140549 (ruleValid!2248 thiss!20629 (rule!9142 (_1!23102 (v!39005 lt!1335797))))))

(declare-fun lt!1335853 () Unit!58432)

(declare-fun choose!22633 (LexerInterface!5885 Rule!12392 List!40878) Unit!58432)

(assert (=> d!1140549 (= lt!1335853 (choose!22633 thiss!20629 (rule!9142 (_1!23102 (v!39005 lt!1335797))) rules!2768))))

(declare-fun contains!8242 (List!40878 Rule!12392) Bool)

(assert (=> d!1140549 (contains!8242 rules!2768 (rule!9142 (_1!23102 (v!39005 lt!1335797))))))

(assert (=> d!1140549 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1328 thiss!20629 (rule!9142 (_1!23102 (v!39005 lt!1335797))) rules!2768) lt!1335853)))

(declare-fun bs!582722 () Bool)

(assert (= bs!582722 d!1140549))

(assert (=> bs!582722 m!4401421))

(declare-fun m!4401567 () Bool)

(assert (=> bs!582722 m!4401567))

(declare-fun m!4401569 () Bool)

(assert (=> bs!582722 m!4401569))

(assert (=> b!3846664 d!1140549))

(declare-fun d!1140553 () Bool)

(declare-fun fromListB!2104 (List!40876) BalanceConc!24608)

(assert (=> d!1140553 (= (seqFromList!4567 lt!1335783) (fromListB!2104 lt!1335783))))

(declare-fun bs!582723 () Bool)

(assert (= bs!582723 d!1140553))

(declare-fun m!4401571 () Bool)

(assert (=> bs!582723 m!4401571))

(assert (=> b!3846664 d!1140553))

(declare-fun b!3846837 () Bool)

(declare-fun lt!1335859 () List!40876)

(declare-fun e!2377512 () Bool)

(assert (=> b!3846837 (= e!2377512 (or (not (= (_2!23102 (v!39005 lt!1335797)) Nil!40752)) (= lt!1335859 lt!1335783)))))

(declare-fun b!3846834 () Bool)

(declare-fun e!2377513 () List!40876)

(assert (=> b!3846834 (= e!2377513 (_2!23102 (v!39005 lt!1335797)))))

(declare-fun b!3846836 () Bool)

(declare-fun res!1557245 () Bool)

(assert (=> b!3846836 (=> (not res!1557245) (not e!2377512))))

(assert (=> b!3846836 (= res!1557245 (= (size!30656 lt!1335859) (+ (size!30656 lt!1335783) (size!30656 (_2!23102 (v!39005 lt!1335797))))))))

(declare-fun d!1140555 () Bool)

(assert (=> d!1140555 e!2377512))

(declare-fun res!1557244 () Bool)

(assert (=> d!1140555 (=> (not res!1557244) (not e!2377512))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6055 (List!40876) (InoxSet C!22588))

(assert (=> d!1140555 (= res!1557244 (= (content!6055 lt!1335859) ((_ map or) (content!6055 lt!1335783) (content!6055 (_2!23102 (v!39005 lt!1335797))))))))

(assert (=> d!1140555 (= lt!1335859 e!2377513)))

(declare-fun c!670058 () Bool)

(assert (=> d!1140555 (= c!670058 ((_ is Nil!40752) lt!1335783))))

(assert (=> d!1140555 (= (++!10349 lt!1335783 (_2!23102 (v!39005 lt!1335797))) lt!1335859)))

(declare-fun b!3846835 () Bool)

(assert (=> b!3846835 (= e!2377513 (Cons!40752 (h!46172 lt!1335783) (++!10349 (t!311105 lt!1335783) (_2!23102 (v!39005 lt!1335797)))))))

(assert (= (and d!1140555 c!670058) b!3846834))

(assert (= (and d!1140555 (not c!670058)) b!3846835))

(assert (= (and d!1140555 res!1557244) b!3846836))

(assert (= (and b!3846836 res!1557245) b!3846837))

(declare-fun m!4401581 () Bool)

(assert (=> b!3846836 m!4401581))

(assert (=> b!3846836 m!4401399))

(assert (=> b!3846836 m!4401379))

(declare-fun m!4401583 () Bool)

(assert (=> d!1140555 m!4401583))

(declare-fun m!4401585 () Bool)

(assert (=> d!1140555 m!4401585))

(declare-fun m!4401587 () Bool)

(assert (=> d!1140555 m!4401587))

(declare-fun m!4401589 () Bool)

(assert (=> b!3846835 m!4401589))

(assert (=> b!3846664 d!1140555))

(declare-fun d!1140561 () Bool)

(declare-fun list!15170 (Conc!12507) List!40876)

(assert (=> d!1140561 (= (list!15168 (charsOf!4124 (_1!23102 (v!39005 lt!1335797)))) (list!15170 (c!670020 (charsOf!4124 (_1!23102 (v!39005 lt!1335797))))))))

(declare-fun bs!582725 () Bool)

(assert (= bs!582725 d!1140561))

(declare-fun m!4401601 () Bool)

(assert (=> bs!582725 m!4401601))

(assert (=> b!3846664 d!1140561))

(declare-fun d!1140567 () Bool)

(declare-fun lt!1335865 () List!40876)

(assert (=> d!1140567 (= (++!10349 lt!1335783 lt!1335865) lt!1335788)))

(declare-fun e!2377522 () List!40876)

(assert (=> d!1140567 (= lt!1335865 e!2377522)))

(declare-fun c!670065 () Bool)

(assert (=> d!1140567 (= c!670065 ((_ is Cons!40752) lt!1335783))))

(assert (=> d!1140567 (>= (size!30656 lt!1335788) (size!30656 lt!1335783))))

(assert (=> d!1140567 (= (getSuffix!1850 lt!1335788 lt!1335783) lt!1335865)))

(declare-fun b!3846852 () Bool)

(declare-fun tail!5817 (List!40876) List!40876)

(assert (=> b!3846852 (= e!2377522 (getSuffix!1850 (tail!5817 lt!1335788) (t!311105 lt!1335783)))))

(declare-fun b!3846853 () Bool)

(assert (=> b!3846853 (= e!2377522 lt!1335788)))

(assert (= (and d!1140567 c!670065) b!3846852))

(assert (= (and d!1140567 (not c!670065)) b!3846853))

(declare-fun m!4401603 () Bool)

(assert (=> d!1140567 m!4401603))

(assert (=> d!1140567 m!4401361))

(assert (=> d!1140567 m!4401399))

(declare-fun m!4401605 () Bool)

(assert (=> b!3846852 m!4401605))

(assert (=> b!3846852 m!4401605))

(declare-fun m!4401607 () Bool)

(assert (=> b!3846852 m!4401607))

(assert (=> b!3846664 d!1140567))

(declare-fun d!1140569 () Bool)

(declare-fun e!2377531 () Bool)

(assert (=> d!1140569 e!2377531))

(declare-fun res!1557257 () Bool)

(assert (=> d!1140569 (=> res!1557257 e!2377531)))

(declare-fun lt!1335868 () Bool)

(assert (=> d!1140569 (= res!1557257 (not lt!1335868))))

(declare-fun e!2377530 () Bool)

(assert (=> d!1140569 (= lt!1335868 e!2377530)))

(declare-fun res!1557258 () Bool)

(assert (=> d!1140569 (=> res!1557258 e!2377530)))

(assert (=> d!1140569 (= res!1557258 ((_ is Nil!40752) lt!1335783))))

(assert (=> d!1140569 (= (isPrefix!3395 lt!1335783 lt!1335796) lt!1335868)))

(declare-fun b!3846862 () Bool)

(declare-fun e!2377529 () Bool)

(assert (=> b!3846862 (= e!2377530 e!2377529)))

(declare-fun res!1557256 () Bool)

(assert (=> b!3846862 (=> (not res!1557256) (not e!2377529))))

(assert (=> b!3846862 (= res!1557256 (not ((_ is Nil!40752) lt!1335796)))))

(declare-fun b!3846865 () Bool)

(assert (=> b!3846865 (= e!2377531 (>= (size!30656 lt!1335796) (size!30656 lt!1335783)))))

(declare-fun b!3846863 () Bool)

(declare-fun res!1557259 () Bool)

(assert (=> b!3846863 (=> (not res!1557259) (not e!2377529))))

(declare-fun head!8090 (List!40876) C!22588)

(assert (=> b!3846863 (= res!1557259 (= (head!8090 lt!1335783) (head!8090 lt!1335796)))))

(declare-fun b!3846864 () Bool)

(assert (=> b!3846864 (= e!2377529 (isPrefix!3395 (tail!5817 lt!1335783) (tail!5817 lt!1335796)))))

(assert (= (and d!1140569 (not res!1557258)) b!3846862))

(assert (= (and b!3846862 res!1557256) b!3846863))

(assert (= (and b!3846863 res!1557259) b!3846864))

(assert (= (and d!1140569 (not res!1557257)) b!3846865))

(declare-fun m!4401609 () Bool)

(assert (=> b!3846865 m!4401609))

(assert (=> b!3846865 m!4401399))

(declare-fun m!4401611 () Bool)

(assert (=> b!3846863 m!4401611))

(declare-fun m!4401613 () Bool)

(assert (=> b!3846863 m!4401613))

(declare-fun m!4401615 () Bool)

(assert (=> b!3846864 m!4401615))

(declare-fun m!4401617 () Bool)

(assert (=> b!3846864 m!4401617))

(assert (=> b!3846864 m!4401615))

(assert (=> b!3846864 m!4401617))

(declare-fun m!4401619 () Bool)

(assert (=> b!3846864 m!4401619))

(assert (=> b!3846664 d!1140569))

(declare-fun d!1140571 () Bool)

(assert (=> d!1140571 (= (isEmpty!24108 rules!2768) ((_ is Nil!40754) rules!2768))))

(assert (=> b!3846654 d!1140571))

(declare-fun b!3846894 () Bool)

(declare-fun e!2377546 () Bool)

(declare-fun e!2377545 () Bool)

(assert (=> b!3846894 (= e!2377546 e!2377545)))

(declare-fun c!670072 () Bool)

(assert (=> b!3846894 (= c!670072 ((_ is IntegerValue!19579) (value!200070 (h!46175 suffixTokens!72))))))

(declare-fun b!3846895 () Bool)

(declare-fun inv!17 (TokenValue!6526) Bool)

(assert (=> b!3846895 (= e!2377545 (inv!17 (value!200070 (h!46175 suffixTokens!72))))))

(declare-fun b!3846896 () Bool)

(declare-fun inv!16 (TokenValue!6526) Bool)

(assert (=> b!3846896 (= e!2377546 (inv!16 (value!200070 (h!46175 suffixTokens!72))))))

(declare-fun b!3846897 () Bool)

(declare-fun e!2377544 () Bool)

(declare-fun inv!15 (TokenValue!6526) Bool)

(assert (=> b!3846897 (= e!2377544 (inv!15 (value!200070 (h!46175 suffixTokens!72))))))

(declare-fun d!1140573 () Bool)

(declare-fun c!670073 () Bool)

(assert (=> d!1140573 (= c!670073 ((_ is IntegerValue!19578) (value!200070 (h!46175 suffixTokens!72))))))

(assert (=> d!1140573 (= (inv!21 (value!200070 (h!46175 suffixTokens!72))) e!2377546)))

(declare-fun b!3846898 () Bool)

(declare-fun res!1557276 () Bool)

(assert (=> b!3846898 (=> res!1557276 e!2377544)))

(assert (=> b!3846898 (= res!1557276 (not ((_ is IntegerValue!19580) (value!200070 (h!46175 suffixTokens!72)))))))

(assert (=> b!3846898 (= e!2377545 e!2377544)))

(assert (= (and d!1140573 c!670073) b!3846896))

(assert (= (and d!1140573 (not c!670073)) b!3846894))

(assert (= (and b!3846894 c!670072) b!3846895))

(assert (= (and b!3846894 (not c!670072)) b!3846898))

(assert (= (and b!3846898 (not res!1557276)) b!3846897))

(declare-fun m!4401621 () Bool)

(assert (=> b!3846895 m!4401621))

(declare-fun m!4401623 () Bool)

(assert (=> b!3846896 m!4401623))

(declare-fun m!4401625 () Bool)

(assert (=> b!3846897 m!4401625))

(assert (=> b!3846676 d!1140573))

(declare-fun b!3846932 () Bool)

(declare-fun e!2377570 () Bool)

(declare-fun call!282093 () Bool)

(assert (=> b!3846932 (= e!2377570 call!282093)))

(declare-fun b!3846933 () Bool)

(declare-fun res!1557300 () Bool)

(assert (=> b!3846933 (=> (not res!1557300) (not e!2377570))))

(declare-fun call!282091 () Bool)

(assert (=> b!3846933 (= res!1557300 call!282091)))

(declare-fun e!2377572 () Bool)

(assert (=> b!3846933 (= e!2377572 e!2377570)))

(declare-fun b!3846934 () Bool)

(declare-fun e!2377568 () Bool)

(assert (=> b!3846934 (= e!2377568 e!2377572)))

(declare-fun c!670079 () Bool)

(assert (=> b!3846934 (= c!670079 ((_ is Union!11201) (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))))))

(declare-fun b!3846935 () Bool)

(declare-fun e!2377573 () Bool)

(assert (=> b!3846935 (= e!2377573 call!282091)))

(declare-fun bm!282086 () Bool)

(assert (=> bm!282086 (= call!282091 (validRegex!5094 (ite c!670079 (regOne!22915 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))) (regTwo!22914 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))))))))

(declare-fun b!3846936 () Bool)

(declare-fun res!1557302 () Bool)

(declare-fun e!2377569 () Bool)

(assert (=> b!3846936 (=> res!1557302 e!2377569)))

(assert (=> b!3846936 (= res!1557302 (not ((_ is Concat!17728) (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))))))

(assert (=> b!3846936 (= e!2377572 e!2377569)))

(declare-fun bm!282087 () Bool)

(declare-fun call!282092 () Bool)

(assert (=> bm!282087 (= call!282093 call!282092)))

(declare-fun d!1140575 () Bool)

(declare-fun res!1557304 () Bool)

(declare-fun e!2377567 () Bool)

(assert (=> d!1140575 (=> res!1557304 e!2377567)))

(assert (=> d!1140575 (= res!1557304 ((_ is ElementMatch!11201) (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))))))

(assert (=> d!1140575 (= (validRegex!5094 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))) e!2377567)))

(declare-fun b!3846937 () Bool)

(declare-fun e!2377571 () Bool)

(assert (=> b!3846937 (= e!2377568 e!2377571)))

(declare-fun res!1557303 () Bool)

(assert (=> b!3846937 (= res!1557303 (not (nullable!3895 (reg!11530 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))))))))

(assert (=> b!3846937 (=> (not res!1557303) (not e!2377571))))

(declare-fun c!670080 () Bool)

(declare-fun bm!282088 () Bool)

(assert (=> bm!282088 (= call!282092 (validRegex!5094 (ite c!670080 (reg!11530 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))) (ite c!670079 (regTwo!22915 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))) (regOne!22914 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))))))))

(declare-fun b!3846938 () Bool)

(assert (=> b!3846938 (= e!2377571 call!282092)))

(declare-fun b!3846939 () Bool)

(assert (=> b!3846939 (= e!2377567 e!2377568)))

(assert (=> b!3846939 (= c!670080 ((_ is Star!11201) (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797))))))))

(declare-fun b!3846940 () Bool)

(assert (=> b!3846940 (= e!2377569 e!2377573)))

(declare-fun res!1557301 () Bool)

(assert (=> b!3846940 (=> (not res!1557301) (not e!2377573))))

(assert (=> b!3846940 (= res!1557301 call!282093)))

(assert (= (and d!1140575 (not res!1557304)) b!3846939))

(assert (= (and b!3846939 c!670080) b!3846937))

(assert (= (and b!3846939 (not c!670080)) b!3846934))

(assert (= (and b!3846937 res!1557303) b!3846938))

(assert (= (and b!3846934 c!670079) b!3846933))

(assert (= (and b!3846934 (not c!670079)) b!3846936))

(assert (= (and b!3846933 res!1557300) b!3846932))

(assert (= (and b!3846936 (not res!1557302)) b!3846940))

(assert (= (and b!3846940 res!1557301) b!3846935))

(assert (= (or b!3846932 b!3846940) bm!282087))

(assert (= (or b!3846933 b!3846935) bm!282086))

(assert (= (or b!3846938 bm!282087) bm!282088))

(declare-fun m!4401661 () Bool)

(assert (=> bm!282086 m!4401661))

(declare-fun m!4401663 () Bool)

(assert (=> b!3846937 m!4401663))

(declare-fun m!4401665 () Bool)

(assert (=> bm!282088 m!4401665))

(assert (=> b!3846665 d!1140575))

(declare-fun b!3847090 () Bool)

(declare-fun res!1557351 () Bool)

(declare-fun e!2377676 () Bool)

(assert (=> b!3847090 (=> (not res!1557351) (not e!2377676))))

(declare-fun lt!1335929 () Option!8714)

(declare-fun get!13488 (Option!8714) tuple2!39936)

(assert (=> b!3847090 (= res!1557351 (= (rule!9142 (_1!23102 (get!13488 lt!1335929))) (rule!9142 (_1!23102 (v!39005 lt!1335797)))))))

(declare-fun b!3847091 () Bool)

(declare-fun res!1557349 () Bool)

(assert (=> b!3847091 (=> (not res!1557349) (not e!2377676))))

(assert (=> b!3847091 (= res!1557349 (= (++!10349 (list!15168 (charsOf!4124 (_1!23102 (get!13488 lt!1335929)))) (_2!23102 (get!13488 lt!1335929))) lt!1335788))))

(declare-fun d!1140581 () Bool)

(declare-fun e!2377677 () Bool)

(assert (=> d!1140581 e!2377677))

(declare-fun res!1557348 () Bool)

(assert (=> d!1140581 (=> res!1557348 e!2377677)))

(declare-fun isEmpty!24112 (Option!8714) Bool)

(assert (=> d!1140581 (= res!1557348 (isEmpty!24112 lt!1335929))))

(declare-fun e!2377674 () Option!8714)

(assert (=> d!1140581 (= lt!1335929 e!2377674)))

(declare-fun c!670100 () Bool)

(declare-datatypes ((tuple2!39940 0))(
  ( (tuple2!39941 (_1!23104 List!40876) (_2!23104 List!40876)) )
))
(declare-fun lt!1335926 () tuple2!39940)

(assert (=> d!1140581 (= c!670100 (isEmpty!24109 (_1!23104 lt!1335926)))))

(declare-fun findLongestMatch!1075 (Regex!11201 List!40876) tuple2!39940)

(assert (=> d!1140581 (= lt!1335926 (findLongestMatch!1075 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) lt!1335788))))

(assert (=> d!1140581 (ruleValid!2248 thiss!20629 (rule!9142 (_1!23102 (v!39005 lt!1335797))))))

(assert (=> d!1140581 (= (maxPrefixOneRule!2271 thiss!20629 (rule!9142 (_1!23102 (v!39005 lt!1335797))) lt!1335788) lt!1335929)))

(declare-fun b!3847092 () Bool)

(declare-fun res!1557347 () Bool)

(assert (=> b!3847092 (=> (not res!1557347) (not e!2377676))))

(assert (=> b!3847092 (= res!1557347 (= (value!200070 (_1!23102 (get!13488 lt!1335929))) (apply!9539 (transformation!6296 (rule!9142 (_1!23102 (get!13488 lt!1335929)))) (seqFromList!4567 (originalCharacters!6896 (_1!23102 (get!13488 lt!1335929)))))))))

(declare-fun b!3847093 () Bool)

(declare-fun size!30660 (BalanceConc!24608) Int)

(assert (=> b!3847093 (= e!2377674 (Some!8713 (tuple2!39937 (Token!11731 (apply!9539 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) (seqFromList!4567 (_1!23104 lt!1335926))) (rule!9142 (_1!23102 (v!39005 lt!1335797))) (size!30660 (seqFromList!4567 (_1!23104 lt!1335926))) (_1!23104 lt!1335926)) (_2!23104 lt!1335926))))))

(declare-fun lt!1335927 () Unit!58432)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1135 (Regex!11201 List!40876) Unit!58432)

(assert (=> b!3847093 (= lt!1335927 (longestMatchIsAcceptedByMatchOrIsEmpty!1135 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) lt!1335788))))

(declare-fun res!1557352 () Bool)

(declare-fun findLongestMatchInner!1162 (Regex!11201 List!40876 Int List!40876 List!40876 Int) tuple2!39940)

(assert (=> b!3847093 (= res!1557352 (isEmpty!24109 (_1!23104 (findLongestMatchInner!1162 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) Nil!40752 (size!30656 Nil!40752) lt!1335788 lt!1335788 (size!30656 lt!1335788)))))))

(declare-fun e!2377675 () Bool)

(assert (=> b!3847093 (=> res!1557352 e!2377675)))

(assert (=> b!3847093 e!2377675))

(declare-fun lt!1335925 () Unit!58432)

(assert (=> b!3847093 (= lt!1335925 lt!1335927)))

(declare-fun lt!1335928 () Unit!58432)

(declare-fun lemmaSemiInverse!1668 (TokenValueInjection!12480 BalanceConc!24608) Unit!58432)

(assert (=> b!3847093 (= lt!1335928 (lemmaSemiInverse!1668 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) (seqFromList!4567 (_1!23104 lt!1335926))))))

(declare-fun b!3847094 () Bool)

(assert (=> b!3847094 (= e!2377674 None!8713)))

(declare-fun b!3847095 () Bool)

(declare-fun matchR!5348 (Regex!11201 List!40876) Bool)

(assert (=> b!3847095 (= e!2377675 (matchR!5348 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) (_1!23104 (findLongestMatchInner!1162 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) Nil!40752 (size!30656 Nil!40752) lt!1335788 lt!1335788 (size!30656 lt!1335788)))))))

(declare-fun b!3847096 () Bool)

(assert (=> b!3847096 (= e!2377677 e!2377676)))

(declare-fun res!1557353 () Bool)

(assert (=> b!3847096 (=> (not res!1557353) (not e!2377676))))

(assert (=> b!3847096 (= res!1557353 (matchR!5348 (regex!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) (list!15168 (charsOf!4124 (_1!23102 (get!13488 lt!1335929))))))))

(declare-fun b!3847097 () Bool)

(declare-fun res!1557350 () Bool)

(assert (=> b!3847097 (=> (not res!1557350) (not e!2377676))))

(assert (=> b!3847097 (= res!1557350 (< (size!30656 (_2!23102 (get!13488 lt!1335929))) (size!30656 lt!1335788)))))

(declare-fun b!3847098 () Bool)

(assert (=> b!3847098 (= e!2377676 (= (size!30655 (_1!23102 (get!13488 lt!1335929))) (size!30656 (originalCharacters!6896 (_1!23102 (get!13488 lt!1335929))))))))

(assert (= (and d!1140581 c!670100) b!3847094))

(assert (= (and d!1140581 (not c!670100)) b!3847093))

(assert (= (and b!3847093 (not res!1557352)) b!3847095))

(assert (= (and d!1140581 (not res!1557348)) b!3847096))

(assert (= (and b!3847096 res!1557353) b!3847091))

(assert (= (and b!3847091 res!1557349) b!3847097))

(assert (= (and b!3847097 res!1557350) b!3847090))

(assert (= (and b!3847090 res!1557351) b!3847092))

(assert (= (and b!3847092 res!1557347) b!3847098))

(declare-fun m!4401817 () Bool)

(assert (=> b!3847095 m!4401817))

(assert (=> b!3847095 m!4401361))

(assert (=> b!3847095 m!4401817))

(assert (=> b!3847095 m!4401361))

(declare-fun m!4401819 () Bool)

(assert (=> b!3847095 m!4401819))

(declare-fun m!4401821 () Bool)

(assert (=> b!3847095 m!4401821))

(declare-fun m!4401823 () Bool)

(assert (=> b!3847096 m!4401823))

(declare-fun m!4401825 () Bool)

(assert (=> b!3847096 m!4401825))

(assert (=> b!3847096 m!4401825))

(declare-fun m!4401827 () Bool)

(assert (=> b!3847096 m!4401827))

(assert (=> b!3847096 m!4401827))

(declare-fun m!4401829 () Bool)

(assert (=> b!3847096 m!4401829))

(assert (=> b!3847091 m!4401823))

(assert (=> b!3847091 m!4401825))

(assert (=> b!3847091 m!4401825))

(assert (=> b!3847091 m!4401827))

(assert (=> b!3847091 m!4401827))

(declare-fun m!4401831 () Bool)

(assert (=> b!3847091 m!4401831))

(assert (=> b!3847098 m!4401823))

(declare-fun m!4401833 () Bool)

(assert (=> b!3847098 m!4401833))

(assert (=> b!3847097 m!4401823))

(declare-fun m!4401835 () Bool)

(assert (=> b!3847097 m!4401835))

(assert (=> b!3847097 m!4401361))

(declare-fun m!4401837 () Bool)

(assert (=> d!1140581 m!4401837))

(declare-fun m!4401839 () Bool)

(assert (=> d!1140581 m!4401839))

(declare-fun m!4401841 () Bool)

(assert (=> d!1140581 m!4401841))

(assert (=> d!1140581 m!4401421))

(assert (=> b!3847092 m!4401823))

(declare-fun m!4401843 () Bool)

(assert (=> b!3847092 m!4401843))

(assert (=> b!3847092 m!4401843))

(declare-fun m!4401845 () Bool)

(assert (=> b!3847092 m!4401845))

(assert (=> b!3847093 m!4401817))

(assert (=> b!3847093 m!4401361))

(assert (=> b!3847093 m!4401819))

(declare-fun m!4401847 () Bool)

(assert (=> b!3847093 m!4401847))

(declare-fun m!4401849 () Bool)

(assert (=> b!3847093 m!4401849))

(assert (=> b!3847093 m!4401817))

(assert (=> b!3847093 m!4401847))

(assert (=> b!3847093 m!4401847))

(declare-fun m!4401851 () Bool)

(assert (=> b!3847093 m!4401851))

(assert (=> b!3847093 m!4401361))

(declare-fun m!4401853 () Bool)

(assert (=> b!3847093 m!4401853))

(declare-fun m!4401855 () Bool)

(assert (=> b!3847093 m!4401855))

(assert (=> b!3847093 m!4401847))

(declare-fun m!4401857 () Bool)

(assert (=> b!3847093 m!4401857))

(assert (=> b!3847090 m!4401823))

(assert (=> b!3846665 d!1140581))

(declare-fun d!1140635 () Bool)

(assert (=> d!1140635 (= (maxPrefixOneRule!2271 thiss!20629 (rule!9142 (_1!23102 (v!39005 lt!1335797))) lt!1335788) (Some!8713 (tuple2!39937 (Token!11731 (apply!9539 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))) (seqFromList!4567 lt!1335783)) (rule!9142 (_1!23102 (v!39005 lt!1335797))) (size!30656 lt!1335783) lt!1335783) (_2!23102 (v!39005 lt!1335797)))))))

(declare-fun lt!1335932 () Unit!58432)

(declare-fun choose!22636 (LexerInterface!5885 List!40878 List!40876 List!40876 List!40876 Rule!12392) Unit!58432)

(assert (=> d!1140635 (= lt!1335932 (choose!22636 thiss!20629 rules!2768 lt!1335783 lt!1335788 (_2!23102 (v!39005 lt!1335797)) (rule!9142 (_1!23102 (v!39005 lt!1335797)))))))

(assert (=> d!1140635 (not (isEmpty!24108 rules!2768))))

(assert (=> d!1140635 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1169 thiss!20629 rules!2768 lt!1335783 lt!1335788 (_2!23102 (v!39005 lt!1335797)) (rule!9142 (_1!23102 (v!39005 lt!1335797)))) lt!1335932)))

(declare-fun bs!582732 () Bool)

(assert (= bs!582732 d!1140635))

(declare-fun m!4401859 () Bool)

(assert (=> bs!582732 m!4401859))

(assert (=> bs!582732 m!4401407))

(assert (=> bs!582732 m!4401407))

(assert (=> bs!582732 m!4401423))

(assert (=> bs!582732 m!4401443))

(assert (=> bs!582732 m!4401399))

(assert (=> bs!582732 m!4401385))

(assert (=> b!3846665 d!1140635))

(declare-fun b!3847099 () Bool)

(declare-fun e!2377680 () Bool)

(declare-fun e!2377678 () Bool)

(assert (=> b!3847099 (= e!2377680 e!2377678)))

(declare-fun res!1557354 () Bool)

(declare-fun lt!1335933 () tuple2!39934)

(assert (=> b!3847099 (= res!1557354 (< (size!30656 (_2!23101 lt!1335933)) (size!30656 suffix!1176)))))

(assert (=> b!3847099 (=> (not res!1557354) (not e!2377678))))

(declare-fun b!3847100 () Bool)

(declare-fun e!2377679 () tuple2!39934)

(declare-fun lt!1335934 () Option!8714)

(declare-fun lt!1335935 () tuple2!39934)

(assert (=> b!3847100 (= e!2377679 (tuple2!39935 (Cons!40755 (_1!23102 (v!39005 lt!1335934)) (_1!23101 lt!1335935)) (_2!23101 lt!1335935)))))

(assert (=> b!3847100 (= lt!1335935 (lexList!1653 thiss!20629 rules!2768 (_2!23102 (v!39005 lt!1335934))))))

(declare-fun b!3847101 () Bool)

(assert (=> b!3847101 (= e!2377679 (tuple2!39935 Nil!40755 suffix!1176))))

(declare-fun d!1140637 () Bool)

(assert (=> d!1140637 e!2377680))

(declare-fun c!670101 () Bool)

(assert (=> d!1140637 (= c!670101 (> (size!30659 (_1!23101 lt!1335933)) 0))))

(assert (=> d!1140637 (= lt!1335933 e!2377679)))

(declare-fun c!670102 () Bool)

(assert (=> d!1140637 (= c!670102 ((_ is Some!8713) lt!1335934))))

(assert (=> d!1140637 (= lt!1335934 (maxPrefix!3189 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1140637 (= (lexList!1653 thiss!20629 rules!2768 suffix!1176) lt!1335933)))

(declare-fun b!3847102 () Bool)

(assert (=> b!3847102 (= e!2377678 (not (isEmpty!24110 (_1!23101 lt!1335933))))))

(declare-fun b!3847103 () Bool)

(assert (=> b!3847103 (= e!2377680 (= (_2!23101 lt!1335933) suffix!1176))))

(assert (= (and d!1140637 c!670102) b!3847100))

(assert (= (and d!1140637 (not c!670102)) b!3847101))

(assert (= (and d!1140637 c!670101) b!3847099))

(assert (= (and d!1140637 (not c!670101)) b!3847103))

(assert (= (and b!3847099 res!1557354) b!3847102))

(declare-fun m!4401861 () Bool)

(assert (=> b!3847099 m!4401861))

(assert (=> b!3847099 m!4401377))

(declare-fun m!4401863 () Bool)

(assert (=> b!3847100 m!4401863))

(declare-fun m!4401865 () Bool)

(assert (=> d!1140637 m!4401865))

(declare-fun m!4401867 () Bool)

(assert (=> d!1140637 m!4401867))

(declare-fun m!4401869 () Bool)

(assert (=> b!3847102 m!4401869))

(assert (=> b!3846655 d!1140637))

(declare-fun d!1140639 () Bool)

(assert (=> d!1140639 (= (inv!54892 (tag!7156 (rule!9142 (h!46175 suffixTokens!72)))) (= (mod (str.len (value!200069 (tag!7156 (rule!9142 (h!46175 suffixTokens!72))))) 2) 0))))

(assert (=> b!3846656 d!1140639))

(declare-fun d!1140641 () Bool)

(declare-fun res!1557357 () Bool)

(declare-fun e!2377683 () Bool)

(assert (=> d!1140641 (=> (not res!1557357) (not e!2377683))))

(declare-fun semiInverseModEq!2695 (Int Int) Bool)

(assert (=> d!1140641 (= res!1557357 (semiInverseModEq!2695 (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) (toValue!8712 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72))))))))

(assert (=> d!1140641 (= (inv!54895 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) e!2377683)))

(declare-fun b!3847106 () Bool)

(declare-fun equivClasses!2594 (Int Int) Bool)

(assert (=> b!3847106 (= e!2377683 (equivClasses!2594 (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) (toValue!8712 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72))))))))

(assert (= (and d!1140641 res!1557357) b!3847106))

(declare-fun m!4401871 () Bool)

(assert (=> d!1140641 m!4401871))

(declare-fun m!4401873 () Bool)

(assert (=> b!3847106 m!4401873))

(assert (=> b!3846656 d!1140641))

(declare-fun d!1140643 () Bool)

(declare-fun lt!1335936 () Int)

(assert (=> d!1140643 (>= lt!1335936 0)))

(declare-fun e!2377684 () Int)

(assert (=> d!1140643 (= lt!1335936 e!2377684)))

(declare-fun c!670103 () Bool)

(assert (=> d!1140643 (= c!670103 ((_ is Nil!40752) suffix!1176))))

(assert (=> d!1140643 (= (size!30656 suffix!1176) lt!1335936)))

(declare-fun b!3847107 () Bool)

(assert (=> b!3847107 (= e!2377684 0)))

(declare-fun b!3847108 () Bool)

(assert (=> b!3847108 (= e!2377684 (+ 1 (size!30656 (t!311105 suffix!1176))))))

(assert (= (and d!1140643 c!670103) b!3847107))

(assert (= (and d!1140643 (not c!670103)) b!3847108))

(declare-fun m!4401875 () Bool)

(assert (=> b!3847108 m!4401875))

(assert (=> b!3846677 d!1140643))

(declare-fun d!1140645 () Bool)

(declare-fun lt!1335937 () Int)

(assert (=> d!1140645 (>= lt!1335937 0)))

(declare-fun e!2377685 () Int)

(assert (=> d!1140645 (= lt!1335937 e!2377685)))

(declare-fun c!670104 () Bool)

(assert (=> d!1140645 (= c!670104 ((_ is Nil!40752) (_2!23102 (v!39005 lt!1335797))))))

(assert (=> d!1140645 (= (size!30656 (_2!23102 (v!39005 lt!1335797))) lt!1335937)))

(declare-fun b!3847109 () Bool)

(assert (=> b!3847109 (= e!2377685 0)))

(declare-fun b!3847110 () Bool)

(assert (=> b!3847110 (= e!2377685 (+ 1 (size!30656 (t!311105 (_2!23102 (v!39005 lt!1335797))))))))

(assert (= (and d!1140645 c!670104) b!3847109))

(assert (= (and d!1140645 (not c!670104)) b!3847110))

(declare-fun m!4401877 () Bool)

(assert (=> b!3847110 m!4401877))

(assert (=> b!3846677 d!1140645))

(declare-fun d!1140647 () Bool)

(declare-fun lt!1335938 () Int)

(assert (=> d!1140647 (>= lt!1335938 0)))

(declare-fun e!2377686 () Int)

(assert (=> d!1140647 (= lt!1335938 e!2377686)))

(declare-fun c!670105 () Bool)

(assert (=> d!1140647 (= c!670105 ((_ is Nil!40752) lt!1335788))))

(assert (=> d!1140647 (= (size!30656 lt!1335788) lt!1335938)))

(declare-fun b!3847111 () Bool)

(assert (=> b!3847111 (= e!2377686 0)))

(declare-fun b!3847112 () Bool)

(assert (=> b!3847112 (= e!2377686 (+ 1 (size!30656 (t!311105 lt!1335788))))))

(assert (= (and d!1140647 c!670105) b!3847111))

(assert (= (and d!1140647 (not c!670105)) b!3847112))

(declare-fun m!4401879 () Bool)

(assert (=> b!3847112 m!4401879))

(assert (=> b!3846678 d!1140647))

(declare-fun d!1140649 () Bool)

(declare-fun lt!1335939 () Int)

(assert (=> d!1140649 (>= lt!1335939 0)))

(declare-fun e!2377687 () Int)

(assert (=> d!1140649 (= lt!1335939 e!2377687)))

(declare-fun c!670106 () Bool)

(assert (=> d!1140649 (= c!670106 ((_ is Nil!40752) prefix!426))))

(assert (=> d!1140649 (= (size!30656 prefix!426) lt!1335939)))

(declare-fun b!3847113 () Bool)

(assert (=> b!3847113 (= e!2377687 0)))

(declare-fun b!3847114 () Bool)

(assert (=> b!3847114 (= e!2377687 (+ 1 (size!30656 (t!311105 prefix!426))))))

(assert (= (and d!1140649 c!670106) b!3847113))

(assert (= (and d!1140649 (not c!670106)) b!3847114))

(declare-fun m!4401881 () Bool)

(assert (=> b!3847114 m!4401881))

(assert (=> b!3846667 d!1140649))

(declare-fun b!3847115 () Bool)

(declare-fun e!2377690 () Bool)

(declare-fun e!2377688 () Bool)

(assert (=> b!3847115 (= e!2377690 e!2377688)))

(declare-fun res!1557358 () Bool)

(declare-fun lt!1335940 () tuple2!39934)

(assert (=> b!3847115 (= res!1557358 (< (size!30656 (_2!23101 lt!1335940)) (size!30656 lt!1335788)))))

(assert (=> b!3847115 (=> (not res!1557358) (not e!2377688))))

(declare-fun b!3847116 () Bool)

(declare-fun e!2377689 () tuple2!39934)

(declare-fun lt!1335941 () Option!8714)

(declare-fun lt!1335942 () tuple2!39934)

(assert (=> b!3847116 (= e!2377689 (tuple2!39935 (Cons!40755 (_1!23102 (v!39005 lt!1335941)) (_1!23101 lt!1335942)) (_2!23101 lt!1335942)))))

(assert (=> b!3847116 (= lt!1335942 (lexList!1653 thiss!20629 rules!2768 (_2!23102 (v!39005 lt!1335941))))))

(declare-fun b!3847117 () Bool)

(assert (=> b!3847117 (= e!2377689 (tuple2!39935 Nil!40755 lt!1335788))))

(declare-fun d!1140651 () Bool)

(assert (=> d!1140651 e!2377690))

(declare-fun c!670107 () Bool)

(assert (=> d!1140651 (= c!670107 (> (size!30659 (_1!23101 lt!1335940)) 0))))

(assert (=> d!1140651 (= lt!1335940 e!2377689)))

(declare-fun c!670108 () Bool)

(assert (=> d!1140651 (= c!670108 ((_ is Some!8713) lt!1335941))))

(assert (=> d!1140651 (= lt!1335941 (maxPrefix!3189 thiss!20629 rules!2768 lt!1335788))))

(assert (=> d!1140651 (= (lexList!1653 thiss!20629 rules!2768 lt!1335788) lt!1335940)))

(declare-fun b!3847118 () Bool)

(assert (=> b!3847118 (= e!2377688 (not (isEmpty!24110 (_1!23101 lt!1335940))))))

(declare-fun b!3847119 () Bool)

(assert (=> b!3847119 (= e!2377690 (= (_2!23101 lt!1335940) lt!1335788))))

(assert (= (and d!1140651 c!670108) b!3847116))

(assert (= (and d!1140651 (not c!670108)) b!3847117))

(assert (= (and d!1140651 c!670107) b!3847115))

(assert (= (and d!1140651 (not c!670107)) b!3847119))

(assert (= (and b!3847115 res!1557358) b!3847118))

(declare-fun m!4401883 () Bool)

(assert (=> b!3847115 m!4401883))

(assert (=> b!3847115 m!4401361))

(declare-fun m!4401885 () Bool)

(assert (=> b!3847116 m!4401885))

(declare-fun m!4401887 () Bool)

(assert (=> d!1140651 m!4401887))

(assert (=> d!1140651 m!4401369))

(declare-fun m!4401889 () Bool)

(assert (=> b!3847118 m!4401889))

(assert (=> b!3846668 d!1140651))

(declare-fun b!3847128 () Bool)

(declare-fun e!2377696 () List!40879)

(assert (=> b!3847128 (= e!2377696 suffixTokens!72)))

(declare-fun d!1140653 () Bool)

(declare-fun e!2377695 () Bool)

(assert (=> d!1140653 e!2377695))

(declare-fun res!1557363 () Bool)

(assert (=> d!1140653 (=> (not res!1557363) (not e!2377695))))

(declare-fun lt!1335945 () List!40879)

(declare-fun content!6056 (List!40879) (InoxSet Token!11730))

(assert (=> d!1140653 (= res!1557363 (= (content!6056 lt!1335945) ((_ map or) (content!6056 prefixTokens!80) (content!6056 suffixTokens!72))))))

(assert (=> d!1140653 (= lt!1335945 e!2377696)))

(declare-fun c!670111 () Bool)

(assert (=> d!1140653 (= c!670111 ((_ is Nil!40755) prefixTokens!80))))

(assert (=> d!1140653 (= (++!10350 prefixTokens!80 suffixTokens!72) lt!1335945)))

(declare-fun b!3847131 () Bool)

(assert (=> b!3847131 (= e!2377695 (or (not (= suffixTokens!72 Nil!40755)) (= lt!1335945 prefixTokens!80)))))

(declare-fun b!3847130 () Bool)

(declare-fun res!1557364 () Bool)

(assert (=> b!3847130 (=> (not res!1557364) (not e!2377695))))

(assert (=> b!3847130 (= res!1557364 (= (size!30659 lt!1335945) (+ (size!30659 prefixTokens!80) (size!30659 suffixTokens!72))))))

(declare-fun b!3847129 () Bool)

(assert (=> b!3847129 (= e!2377696 (Cons!40755 (h!46175 prefixTokens!80) (++!10350 (t!311108 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1140653 c!670111) b!3847128))

(assert (= (and d!1140653 (not c!670111)) b!3847129))

(assert (= (and d!1140653 res!1557363) b!3847130))

(assert (= (and b!3847130 res!1557364) b!3847131))

(declare-fun m!4401891 () Bool)

(assert (=> d!1140653 m!4401891))

(declare-fun m!4401893 () Bool)

(assert (=> d!1140653 m!4401893))

(declare-fun m!4401895 () Bool)

(assert (=> d!1140653 m!4401895))

(declare-fun m!4401897 () Bool)

(assert (=> b!3847130 m!4401897))

(declare-fun m!4401899 () Bool)

(assert (=> b!3847130 m!4401899))

(declare-fun m!4401901 () Bool)

(assert (=> b!3847130 m!4401901))

(declare-fun m!4401903 () Bool)

(assert (=> b!3847129 m!4401903))

(assert (=> b!3846668 d!1140653))

(declare-fun e!2377697 () Bool)

(declare-fun lt!1335946 () List!40876)

(declare-fun b!3847135 () Bool)

(assert (=> b!3847135 (= e!2377697 (or (not (= suffix!1176 Nil!40752)) (= lt!1335946 prefix!426)))))

(declare-fun b!3847132 () Bool)

(declare-fun e!2377698 () List!40876)

(assert (=> b!3847132 (= e!2377698 suffix!1176)))

(declare-fun b!3847134 () Bool)

(declare-fun res!1557366 () Bool)

(assert (=> b!3847134 (=> (not res!1557366) (not e!2377697))))

(assert (=> b!3847134 (= res!1557366 (= (size!30656 lt!1335946) (+ (size!30656 prefix!426) (size!30656 suffix!1176))))))

(declare-fun d!1140655 () Bool)

(assert (=> d!1140655 e!2377697))

(declare-fun res!1557365 () Bool)

(assert (=> d!1140655 (=> (not res!1557365) (not e!2377697))))

(assert (=> d!1140655 (= res!1557365 (= (content!6055 lt!1335946) ((_ map or) (content!6055 prefix!426) (content!6055 suffix!1176))))))

(assert (=> d!1140655 (= lt!1335946 e!2377698)))

(declare-fun c!670112 () Bool)

(assert (=> d!1140655 (= c!670112 ((_ is Nil!40752) prefix!426))))

(assert (=> d!1140655 (= (++!10349 prefix!426 suffix!1176) lt!1335946)))

(declare-fun b!3847133 () Bool)

(assert (=> b!3847133 (= e!2377698 (Cons!40752 (h!46172 prefix!426) (++!10349 (t!311105 prefix!426) suffix!1176)))))

(assert (= (and d!1140655 c!670112) b!3847132))

(assert (= (and d!1140655 (not c!670112)) b!3847133))

(assert (= (and d!1140655 res!1557365) b!3847134))

(assert (= (and b!3847134 res!1557366) b!3847135))

(declare-fun m!4401905 () Bool)

(assert (=> b!3847134 m!4401905))

(assert (=> b!3847134 m!4401433))

(assert (=> b!3847134 m!4401377))

(declare-fun m!4401907 () Bool)

(assert (=> d!1140655 m!4401907))

(declare-fun m!4401909 () Bool)

(assert (=> d!1140655 m!4401909))

(declare-fun m!4401911 () Bool)

(assert (=> d!1140655 m!4401911))

(declare-fun m!4401913 () Bool)

(assert (=> b!3847133 m!4401913))

(assert (=> b!3846668 d!1140655))

(declare-fun d!1140657 () Bool)

(assert (=> d!1140657 (= (isEmpty!24109 prefix!426) ((_ is Nil!40752) prefix!426))))

(assert (=> b!3846657 d!1140657))

(declare-fun d!1140659 () Bool)

(declare-fun res!1557371 () Bool)

(declare-fun e!2377701 () Bool)

(assert (=> d!1140659 (=> (not res!1557371) (not e!2377701))))

(assert (=> d!1140659 (= res!1557371 (not (isEmpty!24109 (originalCharacters!6896 (h!46175 suffixTokens!72)))))))

(assert (=> d!1140659 (= (inv!54896 (h!46175 suffixTokens!72)) e!2377701)))

(declare-fun b!3847140 () Bool)

(declare-fun res!1557372 () Bool)

(assert (=> b!3847140 (=> (not res!1557372) (not e!2377701))))

(assert (=> b!3847140 (= res!1557372 (= (originalCharacters!6896 (h!46175 suffixTokens!72)) (list!15168 (dynLambda!17588 (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) (value!200070 (h!46175 suffixTokens!72))))))))

(declare-fun b!3847141 () Bool)

(assert (=> b!3847141 (= e!2377701 (= (size!30655 (h!46175 suffixTokens!72)) (size!30656 (originalCharacters!6896 (h!46175 suffixTokens!72)))))))

(assert (= (and d!1140659 res!1557371) b!3847140))

(assert (= (and b!3847140 res!1557372) b!3847141))

(declare-fun b_lambda!112435 () Bool)

(assert (=> (not b_lambda!112435) (not b!3847140)))

(declare-fun t!311171 () Bool)

(declare-fun tb!221597 () Bool)

(assert (=> (and b!3846663 (= (toChars!8571 (transformation!6296 (h!46174 rules!2768))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72))))) t!311171) tb!221597))

(declare-fun b!3847142 () Bool)

(declare-fun e!2377702 () Bool)

(declare-fun tp!1166005 () Bool)

(assert (=> b!3847142 (= e!2377702 (and (inv!54899 (c!670020 (dynLambda!17588 (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) (value!200070 (h!46175 suffixTokens!72))))) tp!1166005))))

(declare-fun result!270050 () Bool)

(assert (=> tb!221597 (= result!270050 (and (inv!54900 (dynLambda!17588 (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) (value!200070 (h!46175 suffixTokens!72)))) e!2377702))))

(assert (= tb!221597 b!3847142))

(declare-fun m!4401915 () Bool)

(assert (=> b!3847142 m!4401915))

(declare-fun m!4401917 () Bool)

(assert (=> tb!221597 m!4401917))

(assert (=> b!3847140 t!311171))

(declare-fun b_and!287031 () Bool)

(assert (= b_and!286983 (and (=> t!311171 result!270050) b_and!287031)))

(declare-fun t!311173 () Bool)

(declare-fun tb!221599 () Bool)

(assert (=> (and b!3846673 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72))))) t!311173) tb!221599))

(declare-fun result!270052 () Bool)

(assert (= result!270052 result!270050))

(assert (=> b!3847140 t!311173))

(declare-fun b_and!287033 () Bool)

(assert (= b_and!286985 (and (=> t!311173 result!270052) b_and!287033)))

(declare-fun t!311175 () Bool)

(declare-fun tb!221601 () Bool)

(assert (=> (and b!3846675 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72))))) t!311175) tb!221601))

(declare-fun result!270054 () Bool)

(assert (= result!270054 result!270050))

(assert (=> b!3847140 t!311175))

(declare-fun b_and!287035 () Bool)

(assert (= b_and!286987 (and (=> t!311175 result!270054) b_and!287035)))

(declare-fun m!4401919 () Bool)

(assert (=> d!1140659 m!4401919))

(declare-fun m!4401921 () Bool)

(assert (=> b!3847140 m!4401921))

(assert (=> b!3847140 m!4401921))

(declare-fun m!4401923 () Bool)

(assert (=> b!3847140 m!4401923))

(declare-fun m!4401925 () Bool)

(assert (=> b!3847141 m!4401925))

(assert (=> b!3846658 d!1140659))

(declare-fun b!3847143 () Bool)

(declare-fun e!2377705 () Bool)

(declare-fun e!2377704 () Bool)

(assert (=> b!3847143 (= e!2377705 e!2377704)))

(declare-fun c!670113 () Bool)

(assert (=> b!3847143 (= c!670113 ((_ is IntegerValue!19579) (value!200070 (h!46175 prefixTokens!80))))))

(declare-fun b!3847144 () Bool)

(assert (=> b!3847144 (= e!2377704 (inv!17 (value!200070 (h!46175 prefixTokens!80))))))

(declare-fun b!3847145 () Bool)

(assert (=> b!3847145 (= e!2377705 (inv!16 (value!200070 (h!46175 prefixTokens!80))))))

(declare-fun b!3847146 () Bool)

(declare-fun e!2377703 () Bool)

(assert (=> b!3847146 (= e!2377703 (inv!15 (value!200070 (h!46175 prefixTokens!80))))))

(declare-fun d!1140661 () Bool)

(declare-fun c!670114 () Bool)

(assert (=> d!1140661 (= c!670114 ((_ is IntegerValue!19578) (value!200070 (h!46175 prefixTokens!80))))))

(assert (=> d!1140661 (= (inv!21 (value!200070 (h!46175 prefixTokens!80))) e!2377705)))

(declare-fun b!3847147 () Bool)

(declare-fun res!1557373 () Bool)

(assert (=> b!3847147 (=> res!1557373 e!2377703)))

(assert (=> b!3847147 (= res!1557373 (not ((_ is IntegerValue!19580) (value!200070 (h!46175 prefixTokens!80)))))))

(assert (=> b!3847147 (= e!2377704 e!2377703)))

(assert (= (and d!1140661 c!670114) b!3847145))

(assert (= (and d!1140661 (not c!670114)) b!3847143))

(assert (= (and b!3847143 c!670113) b!3847144))

(assert (= (and b!3847143 (not c!670113)) b!3847147))

(assert (= (and b!3847147 (not res!1557373)) b!3847146))

(declare-fun m!4401927 () Bool)

(assert (=> b!3847144 m!4401927))

(declare-fun m!4401929 () Bool)

(assert (=> b!3847145 m!4401929))

(declare-fun m!4401931 () Bool)

(assert (=> b!3847146 m!4401931))

(assert (=> b!3846679 d!1140661))

(declare-fun d!1140663 () Bool)

(assert (=> d!1140663 (= (isEmpty!24110 prefixTokens!80) ((_ is Nil!40755) prefixTokens!80))))

(assert (=> b!3846669 d!1140663))

(declare-fun d!1140665 () Bool)

(declare-fun res!1557374 () Bool)

(declare-fun e!2377706 () Bool)

(assert (=> d!1140665 (=> (not res!1557374) (not e!2377706))))

(assert (=> d!1140665 (= res!1557374 (not (isEmpty!24109 (originalCharacters!6896 (h!46175 prefixTokens!80)))))))

(assert (=> d!1140665 (= (inv!54896 (h!46175 prefixTokens!80)) e!2377706)))

(declare-fun b!3847148 () Bool)

(declare-fun res!1557375 () Bool)

(assert (=> b!3847148 (=> (not res!1557375) (not e!2377706))))

(assert (=> b!3847148 (= res!1557375 (= (originalCharacters!6896 (h!46175 prefixTokens!80)) (list!15168 (dynLambda!17588 (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) (value!200070 (h!46175 prefixTokens!80))))))))

(declare-fun b!3847149 () Bool)

(assert (=> b!3847149 (= e!2377706 (= (size!30655 (h!46175 prefixTokens!80)) (size!30656 (originalCharacters!6896 (h!46175 prefixTokens!80)))))))

(assert (= (and d!1140665 res!1557374) b!3847148))

(assert (= (and b!3847148 res!1557375) b!3847149))

(declare-fun b_lambda!112437 () Bool)

(assert (=> (not b_lambda!112437) (not b!3847148)))

(declare-fun t!311177 () Bool)

(declare-fun tb!221603 () Bool)

(assert (=> (and b!3846663 (= (toChars!8571 (transformation!6296 (h!46174 rules!2768))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80))))) t!311177) tb!221603))

(declare-fun b!3847150 () Bool)

(declare-fun e!2377707 () Bool)

(declare-fun tp!1166006 () Bool)

(assert (=> b!3847150 (= e!2377707 (and (inv!54899 (c!670020 (dynLambda!17588 (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) (value!200070 (h!46175 prefixTokens!80))))) tp!1166006))))

(declare-fun result!270056 () Bool)

(assert (=> tb!221603 (= result!270056 (and (inv!54900 (dynLambda!17588 (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) (value!200070 (h!46175 prefixTokens!80)))) e!2377707))))

(assert (= tb!221603 b!3847150))

(declare-fun m!4401933 () Bool)

(assert (=> b!3847150 m!4401933))

(declare-fun m!4401935 () Bool)

(assert (=> tb!221603 m!4401935))

(assert (=> b!3847148 t!311177))

(declare-fun b_and!287037 () Bool)

(assert (= b_and!287031 (and (=> t!311177 result!270056) b_and!287037)))

(declare-fun t!311179 () Bool)

(declare-fun tb!221605 () Bool)

(assert (=> (and b!3846673 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80))))) t!311179) tb!221605))

(declare-fun result!270058 () Bool)

(assert (= result!270058 result!270056))

(assert (=> b!3847148 t!311179))

(declare-fun b_and!287039 () Bool)

(assert (= b_and!287033 (and (=> t!311179 result!270058) b_and!287039)))

(declare-fun t!311181 () Bool)

(declare-fun tb!221607 () Bool)

(assert (=> (and b!3846675 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80))))) t!311181) tb!221607))

(declare-fun result!270060 () Bool)

(assert (= result!270060 result!270056))

(assert (=> b!3847148 t!311181))

(declare-fun b_and!287041 () Bool)

(assert (= b_and!287035 (and (=> t!311181 result!270060) b_and!287041)))

(declare-fun m!4401937 () Bool)

(assert (=> d!1140665 m!4401937))

(declare-fun m!4401939 () Bool)

(assert (=> b!3847148 m!4401939))

(assert (=> b!3847148 m!4401939))

(declare-fun m!4401941 () Bool)

(assert (=> b!3847148 m!4401941))

(declare-fun m!4401943 () Bool)

(assert (=> b!3847149 m!4401943))

(assert (=> b!3846659 d!1140665))

(declare-fun d!1140667 () Bool)

(declare-fun res!1557378 () Bool)

(declare-fun e!2377710 () Bool)

(assert (=> d!1140667 (=> (not res!1557378) (not e!2377710))))

(declare-fun rulesValid!2430 (LexerInterface!5885 List!40878) Bool)

(assert (=> d!1140667 (= res!1557378 (rulesValid!2430 thiss!20629 rules!2768))))

(assert (=> d!1140667 (= (rulesInvariant!5228 thiss!20629 rules!2768) e!2377710)))

(declare-fun b!3847153 () Bool)

(declare-datatypes ((List!40881 0))(
  ( (Nil!40757) (Cons!40757 (h!46177 String!46348) (t!311206 List!40881)) )
))
(declare-fun noDuplicateTag!2431 (LexerInterface!5885 List!40878 List!40881) Bool)

(assert (=> b!3847153 (= e!2377710 (noDuplicateTag!2431 thiss!20629 rules!2768 Nil!40757))))

(assert (= (and d!1140667 res!1557378) b!3847153))

(declare-fun m!4401945 () Bool)

(assert (=> d!1140667 m!4401945))

(declare-fun m!4401947 () Bool)

(assert (=> b!3847153 m!4401947))

(assert (=> b!3846660 d!1140667))

(declare-fun d!1140669 () Bool)

(assert (=> d!1140669 (= (inv!54892 (tag!7156 (rule!9142 (h!46175 prefixTokens!80)))) (= (mod (str.len (value!200069 (tag!7156 (rule!9142 (h!46175 prefixTokens!80))))) 2) 0))))

(assert (=> b!3846681 d!1140669))

(declare-fun d!1140671 () Bool)

(declare-fun res!1557379 () Bool)

(declare-fun e!2377711 () Bool)

(assert (=> d!1140671 (=> (not res!1557379) (not e!2377711))))

(assert (=> d!1140671 (= res!1557379 (semiInverseModEq!2695 (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) (toValue!8712 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80))))))))

(assert (=> d!1140671 (= (inv!54895 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) e!2377711)))

(declare-fun b!3847154 () Bool)

(assert (=> b!3847154 (= e!2377711 (equivClasses!2594 (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) (toValue!8712 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80))))))))

(assert (= (and d!1140671 res!1557379) b!3847154))

(declare-fun m!4401949 () Bool)

(assert (=> d!1140671 m!4401949))

(declare-fun m!4401951 () Bool)

(assert (=> b!3847154 m!4401951))

(assert (=> b!3846681 d!1140671))

(declare-fun d!1140673 () Bool)

(assert (=> d!1140673 (= (inv!54892 (tag!7156 (h!46174 rules!2768))) (= (mod (str.len (value!200069 (tag!7156 (h!46174 rules!2768)))) 2) 0))))

(assert (=> b!3846682 d!1140673))

(declare-fun d!1140675 () Bool)

(declare-fun res!1557380 () Bool)

(declare-fun e!2377712 () Bool)

(assert (=> d!1140675 (=> (not res!1557380) (not e!2377712))))

(assert (=> d!1140675 (= res!1557380 (semiInverseModEq!2695 (toChars!8571 (transformation!6296 (h!46174 rules!2768))) (toValue!8712 (transformation!6296 (h!46174 rules!2768)))))))

(assert (=> d!1140675 (= (inv!54895 (transformation!6296 (h!46174 rules!2768))) e!2377712)))

(declare-fun b!3847155 () Bool)

(assert (=> b!3847155 (= e!2377712 (equivClasses!2594 (toChars!8571 (transformation!6296 (h!46174 rules!2768))) (toValue!8712 (transformation!6296 (h!46174 rules!2768)))))))

(assert (= (and d!1140675 res!1557380) b!3847155))

(declare-fun m!4401953 () Bool)

(assert (=> d!1140675 m!4401953))

(declare-fun m!4401955 () Bool)

(assert (=> b!3847155 m!4401955))

(assert (=> b!3846682 d!1140675))

(declare-fun b!3847174 () Bool)

(declare-fun e!2377720 () Option!8714)

(declare-fun call!282096 () Option!8714)

(assert (=> b!3847174 (= e!2377720 call!282096)))

(declare-fun b!3847175 () Bool)

(declare-fun res!1557396 () Bool)

(declare-fun e!2377721 () Bool)

(assert (=> b!3847175 (=> (not res!1557396) (not e!2377721))))

(declare-fun lt!1335961 () Option!8714)

(assert (=> b!3847175 (= res!1557396 (= (list!15168 (charsOf!4124 (_1!23102 (get!13488 lt!1335961)))) (originalCharacters!6896 (_1!23102 (get!13488 lt!1335961)))))))

(declare-fun b!3847177 () Bool)

(declare-fun res!1557399 () Bool)

(assert (=> b!3847177 (=> (not res!1557399) (not e!2377721))))

(assert (=> b!3847177 (= res!1557399 (< (size!30656 (_2!23102 (get!13488 lt!1335961))) (size!30656 lt!1335788)))))

(declare-fun b!3847178 () Bool)

(assert (=> b!3847178 (= e!2377721 (contains!8242 rules!2768 (rule!9142 (_1!23102 (get!13488 lt!1335961)))))))

(declare-fun b!3847179 () Bool)

(declare-fun res!1557395 () Bool)

(assert (=> b!3847179 (=> (not res!1557395) (not e!2377721))))

(assert (=> b!3847179 (= res!1557395 (= (value!200070 (_1!23102 (get!13488 lt!1335961))) (apply!9539 (transformation!6296 (rule!9142 (_1!23102 (get!13488 lt!1335961)))) (seqFromList!4567 (originalCharacters!6896 (_1!23102 (get!13488 lt!1335961)))))))))

(declare-fun bm!282091 () Bool)

(assert (=> bm!282091 (= call!282096 (maxPrefixOneRule!2271 thiss!20629 (h!46174 rules!2768) lt!1335788))))

(declare-fun b!3847180 () Bool)

(declare-fun res!1557401 () Bool)

(assert (=> b!3847180 (=> (not res!1557401) (not e!2377721))))

(assert (=> b!3847180 (= res!1557401 (= (++!10349 (list!15168 (charsOf!4124 (_1!23102 (get!13488 lt!1335961)))) (_2!23102 (get!13488 lt!1335961))) lt!1335788))))

(declare-fun b!3847181 () Bool)

(declare-fun res!1557398 () Bool)

(assert (=> b!3847181 (=> (not res!1557398) (not e!2377721))))

(assert (=> b!3847181 (= res!1557398 (matchR!5348 (regex!6296 (rule!9142 (_1!23102 (get!13488 lt!1335961)))) (list!15168 (charsOf!4124 (_1!23102 (get!13488 lt!1335961))))))))

(declare-fun b!3847182 () Bool)

(declare-fun lt!1335957 () Option!8714)

(declare-fun lt!1335958 () Option!8714)

(assert (=> b!3847182 (= e!2377720 (ite (and ((_ is None!8713) lt!1335957) ((_ is None!8713) lt!1335958)) None!8713 (ite ((_ is None!8713) lt!1335958) lt!1335957 (ite ((_ is None!8713) lt!1335957) lt!1335958 (ite (>= (size!30655 (_1!23102 (v!39005 lt!1335957))) (size!30655 (_1!23102 (v!39005 lt!1335958)))) lt!1335957 lt!1335958)))))))

(assert (=> b!3847182 (= lt!1335957 call!282096)))

(assert (=> b!3847182 (= lt!1335958 (maxPrefix!3189 thiss!20629 (t!311107 rules!2768) lt!1335788))))

(declare-fun b!3847176 () Bool)

(declare-fun e!2377719 () Bool)

(assert (=> b!3847176 (= e!2377719 e!2377721)))

(declare-fun res!1557397 () Bool)

(assert (=> b!3847176 (=> (not res!1557397) (not e!2377721))))

(declare-fun isDefined!6843 (Option!8714) Bool)

(assert (=> b!3847176 (= res!1557397 (isDefined!6843 lt!1335961))))

(declare-fun d!1140677 () Bool)

(assert (=> d!1140677 e!2377719))

(declare-fun res!1557400 () Bool)

(assert (=> d!1140677 (=> res!1557400 e!2377719)))

(assert (=> d!1140677 (= res!1557400 (isEmpty!24112 lt!1335961))))

(assert (=> d!1140677 (= lt!1335961 e!2377720)))

(declare-fun c!670117 () Bool)

(assert (=> d!1140677 (= c!670117 (and ((_ is Cons!40754) rules!2768) ((_ is Nil!40754) (t!311107 rules!2768))))))

(declare-fun lt!1335960 () Unit!58432)

(declare-fun lt!1335959 () Unit!58432)

(assert (=> d!1140677 (= lt!1335960 lt!1335959)))

(assert (=> d!1140677 (isPrefix!3395 lt!1335788 lt!1335788)))

(declare-fun lemmaIsPrefixRefl!2166 (List!40876 List!40876) Unit!58432)

(assert (=> d!1140677 (= lt!1335959 (lemmaIsPrefixRefl!2166 lt!1335788 lt!1335788))))

(declare-fun rulesValidInductive!2232 (LexerInterface!5885 List!40878) Bool)

(assert (=> d!1140677 (rulesValidInductive!2232 thiss!20629 rules!2768)))

(assert (=> d!1140677 (= (maxPrefix!3189 thiss!20629 rules!2768 lt!1335788) lt!1335961)))

(assert (= (and d!1140677 c!670117) b!3847174))

(assert (= (and d!1140677 (not c!670117)) b!3847182))

(assert (= (or b!3847174 b!3847182) bm!282091))

(assert (= (and d!1140677 (not res!1557400)) b!3847176))

(assert (= (and b!3847176 res!1557397) b!3847175))

(assert (= (and b!3847175 res!1557396) b!3847177))

(assert (= (and b!3847177 res!1557399) b!3847180))

(assert (= (and b!3847180 res!1557401) b!3847179))

(assert (= (and b!3847179 res!1557395) b!3847181))

(assert (= (and b!3847181 res!1557398) b!3847178))

(declare-fun m!4401957 () Bool)

(assert (=> b!3847176 m!4401957))

(declare-fun m!4401959 () Bool)

(assert (=> b!3847175 m!4401959))

(declare-fun m!4401961 () Bool)

(assert (=> b!3847175 m!4401961))

(assert (=> b!3847175 m!4401961))

(declare-fun m!4401963 () Bool)

(assert (=> b!3847175 m!4401963))

(assert (=> b!3847179 m!4401959))

(declare-fun m!4401965 () Bool)

(assert (=> b!3847179 m!4401965))

(assert (=> b!3847179 m!4401965))

(declare-fun m!4401967 () Bool)

(assert (=> b!3847179 m!4401967))

(assert (=> b!3847178 m!4401959))

(declare-fun m!4401969 () Bool)

(assert (=> b!3847178 m!4401969))

(declare-fun m!4401971 () Bool)

(assert (=> bm!282091 m!4401971))

(assert (=> b!3847177 m!4401959))

(declare-fun m!4401973 () Bool)

(assert (=> b!3847177 m!4401973))

(assert (=> b!3847177 m!4401361))

(declare-fun m!4401975 () Bool)

(assert (=> b!3847182 m!4401975))

(assert (=> b!3847180 m!4401959))

(assert (=> b!3847180 m!4401961))

(assert (=> b!3847180 m!4401961))

(assert (=> b!3847180 m!4401963))

(assert (=> b!3847180 m!4401963))

(declare-fun m!4401977 () Bool)

(assert (=> b!3847180 m!4401977))

(declare-fun m!4401979 () Bool)

(assert (=> d!1140677 m!4401979))

(declare-fun m!4401981 () Bool)

(assert (=> d!1140677 m!4401981))

(declare-fun m!4401983 () Bool)

(assert (=> d!1140677 m!4401983))

(declare-fun m!4401985 () Bool)

(assert (=> d!1140677 m!4401985))

(assert (=> b!3847181 m!4401959))

(assert (=> b!3847181 m!4401961))

(assert (=> b!3847181 m!4401961))

(assert (=> b!3847181 m!4401963))

(assert (=> b!3847181 m!4401963))

(declare-fun m!4401987 () Bool)

(assert (=> b!3847181 m!4401987))

(assert (=> b!3846671 d!1140677))

(declare-fun b!3847183 () Bool)

(declare-fun e!2377723 () List!40879)

(assert (=> b!3847183 (= e!2377723 (_1!23101 lt!1335784))))

(declare-fun d!1140679 () Bool)

(declare-fun e!2377722 () Bool)

(assert (=> d!1140679 e!2377722))

(declare-fun res!1557402 () Bool)

(assert (=> d!1140679 (=> (not res!1557402) (not e!2377722))))

(declare-fun lt!1335962 () List!40879)

(assert (=> d!1140679 (= res!1557402 (= (content!6056 lt!1335962) ((_ map or) (content!6056 (Cons!40755 (_1!23102 (v!39005 lt!1335797)) Nil!40755)) (content!6056 (_1!23101 lt!1335784)))))))

(assert (=> d!1140679 (= lt!1335962 e!2377723)))

(declare-fun c!670118 () Bool)

(assert (=> d!1140679 (= c!670118 ((_ is Nil!40755) (Cons!40755 (_1!23102 (v!39005 lt!1335797)) Nil!40755)))))

(assert (=> d!1140679 (= (++!10350 (Cons!40755 (_1!23102 (v!39005 lt!1335797)) Nil!40755) (_1!23101 lt!1335784)) lt!1335962)))

(declare-fun b!3847186 () Bool)

(assert (=> b!3847186 (= e!2377722 (or (not (= (_1!23101 lt!1335784) Nil!40755)) (= lt!1335962 (Cons!40755 (_1!23102 (v!39005 lt!1335797)) Nil!40755))))))

(declare-fun b!3847185 () Bool)

(declare-fun res!1557403 () Bool)

(assert (=> b!3847185 (=> (not res!1557403) (not e!2377722))))

(assert (=> b!3847185 (= res!1557403 (= (size!30659 lt!1335962) (+ (size!30659 (Cons!40755 (_1!23102 (v!39005 lt!1335797)) Nil!40755)) (size!30659 (_1!23101 lt!1335784)))))))

(declare-fun b!3847184 () Bool)

(assert (=> b!3847184 (= e!2377723 (Cons!40755 (h!46175 (Cons!40755 (_1!23102 (v!39005 lt!1335797)) Nil!40755)) (++!10350 (t!311108 (Cons!40755 (_1!23102 (v!39005 lt!1335797)) Nil!40755)) (_1!23101 lt!1335784))))))

(assert (= (and d!1140679 c!670118) b!3847183))

(assert (= (and d!1140679 (not c!670118)) b!3847184))

(assert (= (and d!1140679 res!1557402) b!3847185))

(assert (= (and b!3847185 res!1557403) b!3847186))

(declare-fun m!4401989 () Bool)

(assert (=> d!1140679 m!4401989))

(declare-fun m!4401991 () Bool)

(assert (=> d!1140679 m!4401991))

(declare-fun m!4401993 () Bool)

(assert (=> d!1140679 m!4401993))

(declare-fun m!4401995 () Bool)

(assert (=> b!3847185 m!4401995))

(declare-fun m!4401997 () Bool)

(assert (=> b!3847185 m!4401997))

(declare-fun m!4401999 () Bool)

(assert (=> b!3847185 m!4401999))

(declare-fun m!4402001 () Bool)

(assert (=> b!3847184 m!4402001))

(assert (=> b!3846672 d!1140679))

(declare-fun d!1140681 () Bool)

(declare-fun lt!1335963 () Int)

(assert (=> d!1140681 (>= lt!1335963 0)))

(declare-fun e!2377724 () Int)

(assert (=> d!1140681 (= lt!1335963 e!2377724)))

(declare-fun c!670119 () Bool)

(assert (=> d!1140681 (= c!670119 ((_ is Nil!40752) (originalCharacters!6896 (_1!23102 (v!39005 lt!1335797)))))))

(assert (=> d!1140681 (= (size!30656 (originalCharacters!6896 (_1!23102 (v!39005 lt!1335797)))) lt!1335963)))

(declare-fun b!3847187 () Bool)

(assert (=> b!3847187 (= e!2377724 0)))

(declare-fun b!3847188 () Bool)

(assert (=> b!3847188 (= e!2377724 (+ 1 (size!30656 (t!311105 (originalCharacters!6896 (_1!23102 (v!39005 lt!1335797)))))))))

(assert (= (and d!1140681 c!670119) b!3847187))

(assert (= (and d!1140681 (not c!670119)) b!3847188))

(declare-fun m!4402003 () Bool)

(assert (=> b!3847188 m!4402003))

(assert (=> b!3846661 d!1140681))

(declare-fun b!3847193 () Bool)

(declare-fun e!2377727 () Bool)

(declare-fun tp!1166009 () Bool)

(assert (=> b!3847193 (= e!2377727 (and tp_is_empty!19373 tp!1166009))))

(assert (=> b!3846674 (= tp!1165917 e!2377727)))

(assert (= (and b!3846674 ((_ is Cons!40752) (t!311105 suffix!1176))) b!3847193))

(declare-fun b!3847194 () Bool)

(declare-fun e!2377728 () Bool)

(declare-fun tp!1166010 () Bool)

(assert (=> b!3847194 (= e!2377728 (and tp_is_empty!19373 tp!1166010))))

(assert (=> b!3846676 (= tp!1165923 e!2377728)))

(assert (= (and b!3846676 ((_ is Cons!40752) (originalCharacters!6896 (h!46175 suffixTokens!72)))) b!3847194))

(declare-fun b!3847208 () Bool)

(declare-fun e!2377731 () Bool)

(declare-fun tp!1166023 () Bool)

(declare-fun tp!1166024 () Bool)

(assert (=> b!3847208 (= e!2377731 (and tp!1166023 tp!1166024))))

(assert (=> b!3846656 (= tp!1165926 e!2377731)))

(declare-fun b!3847207 () Bool)

(declare-fun tp!1166025 () Bool)

(assert (=> b!3847207 (= e!2377731 tp!1166025)))

(declare-fun b!3847206 () Bool)

(declare-fun tp!1166021 () Bool)

(declare-fun tp!1166022 () Bool)

(assert (=> b!3847206 (= e!2377731 (and tp!1166021 tp!1166022))))

(declare-fun b!3847205 () Bool)

(assert (=> b!3847205 (= e!2377731 tp_is_empty!19373)))

(assert (= (and b!3846656 ((_ is ElementMatch!11201) (regex!6296 (rule!9142 (h!46175 suffixTokens!72))))) b!3847205))

(assert (= (and b!3846656 ((_ is Concat!17728) (regex!6296 (rule!9142 (h!46175 suffixTokens!72))))) b!3847206))

(assert (= (and b!3846656 ((_ is Star!11201) (regex!6296 (rule!9142 (h!46175 suffixTokens!72))))) b!3847207))

(assert (= (and b!3846656 ((_ is Union!11201) (regex!6296 (rule!9142 (h!46175 suffixTokens!72))))) b!3847208))

(declare-fun b!3847222 () Bool)

(declare-fun b_free!102997 () Bool)

(declare-fun b_next!103701 () Bool)

(assert (=> b!3847222 (= b_free!102997 (not b_next!103701))))

(declare-fun t!311183 () Bool)

(declare-fun tb!221609 () Bool)

(assert (=> (and b!3847222 (= (toValue!8712 (transformation!6296 (rule!9142 (h!46175 (t!311108 suffixTokens!72))))) (toValue!8712 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311183) tb!221609))

(declare-fun result!270068 () Bool)

(assert (= result!270068 result!269982))

(assert (=> d!1140545 t!311183))

(declare-fun tp!1166039 () Bool)

(declare-fun b_and!287043 () Bool)

(assert (=> b!3847222 (= tp!1166039 (and (=> t!311183 result!270068) b_and!287043))))

(declare-fun b_free!102999 () Bool)

(declare-fun b_next!103703 () Bool)

(assert (=> b!3847222 (= b_free!102999 (not b_next!103703))))

(declare-fun t!311185 () Bool)

(declare-fun tb!221611 () Bool)

(assert (=> (and b!3847222 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 (t!311108 suffixTokens!72))))) (toChars!8571 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311185) tb!221611))

(declare-fun result!270070 () Bool)

(assert (= result!270070 result!269974))

(assert (=> d!1140543 t!311185))

(declare-fun t!311187 () Bool)

(declare-fun tb!221613 () Bool)

(assert (=> (and b!3847222 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 (t!311108 suffixTokens!72))))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72))))) t!311187) tb!221613))

(declare-fun result!270072 () Bool)

(assert (= result!270072 result!270050))

(assert (=> b!3847140 t!311187))

(declare-fun tb!221615 () Bool)

(declare-fun t!311189 () Bool)

(assert (=> (and b!3847222 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 (t!311108 suffixTokens!72))))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80))))) t!311189) tb!221615))

(declare-fun result!270074 () Bool)

(assert (= result!270074 result!270056))

(assert (=> b!3847148 t!311189))

(declare-fun tp!1166040 () Bool)

(declare-fun b_and!287045 () Bool)

(assert (=> b!3847222 (= tp!1166040 (and (=> t!311185 result!270070) (=> t!311187 result!270072) (=> t!311189 result!270074) b_and!287045))))

(declare-fun tp!1166038 () Bool)

(declare-fun e!2377746 () Bool)

(declare-fun e!2377748 () Bool)

(declare-fun b!3847219 () Bool)

(assert (=> b!3847219 (= e!2377748 (and (inv!54896 (h!46175 (t!311108 suffixTokens!72))) e!2377746 tp!1166038))))

(assert (=> b!3846658 (= tp!1165916 e!2377748)))

(declare-fun b!3847221 () Bool)

(declare-fun tp!1166037 () Bool)

(declare-fun e!2377749 () Bool)

(declare-fun e!2377745 () Bool)

(assert (=> b!3847221 (= e!2377749 (and tp!1166037 (inv!54892 (tag!7156 (rule!9142 (h!46175 (t!311108 suffixTokens!72))))) (inv!54895 (transformation!6296 (rule!9142 (h!46175 (t!311108 suffixTokens!72))))) e!2377745))))

(assert (=> b!3847222 (= e!2377745 (and tp!1166039 tp!1166040))))

(declare-fun b!3847220 () Bool)

(declare-fun tp!1166036 () Bool)

(assert (=> b!3847220 (= e!2377746 (and (inv!21 (value!200070 (h!46175 (t!311108 suffixTokens!72)))) e!2377749 tp!1166036))))

(assert (= b!3847221 b!3847222))

(assert (= b!3847220 b!3847221))

(assert (= b!3847219 b!3847220))

(assert (= (and b!3846658 ((_ is Cons!40755) (t!311108 suffixTokens!72))) b!3847219))

(declare-fun m!4402005 () Bool)

(assert (=> b!3847219 m!4402005))

(declare-fun m!4402007 () Bool)

(assert (=> b!3847221 m!4402007))

(declare-fun m!4402009 () Bool)

(assert (=> b!3847221 m!4402009))

(declare-fun m!4402011 () Bool)

(assert (=> b!3847220 m!4402011))

(declare-fun b!3847223 () Bool)

(declare-fun e!2377750 () Bool)

(declare-fun tp!1166041 () Bool)

(assert (=> b!3847223 (= e!2377750 (and tp_is_empty!19373 tp!1166041))))

(assert (=> b!3846679 (= tp!1165920 e!2377750)))

(assert (= (and b!3846679 ((_ is Cons!40752) (originalCharacters!6896 (h!46175 prefixTokens!80)))) b!3847223))

(declare-fun b!3847224 () Bool)

(declare-fun e!2377751 () Bool)

(declare-fun tp!1166042 () Bool)

(assert (=> b!3847224 (= e!2377751 (and tp_is_empty!19373 tp!1166042))))

(assert (=> b!3846680 (= tp!1165929 e!2377751)))

(assert (= (and b!3846680 ((_ is Cons!40752) (t!311105 prefix!426))) b!3847224))

(declare-fun b!3847235 () Bool)

(declare-fun b_free!103001 () Bool)

(declare-fun b_next!103705 () Bool)

(assert (=> b!3847235 (= b_free!103001 (not b_next!103705))))

(declare-fun t!311191 () Bool)

(declare-fun tb!221617 () Bool)

(assert (=> (and b!3847235 (= (toValue!8712 (transformation!6296 (h!46174 (t!311107 rules!2768)))) (toValue!8712 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311191) tb!221617))

(declare-fun result!270078 () Bool)

(assert (= result!270078 result!269982))

(assert (=> d!1140545 t!311191))

(declare-fun tp!1166053 () Bool)

(declare-fun b_and!287047 () Bool)

(assert (=> b!3847235 (= tp!1166053 (and (=> t!311191 result!270078) b_and!287047))))

(declare-fun b_free!103003 () Bool)

(declare-fun b_next!103707 () Bool)

(assert (=> b!3847235 (= b_free!103003 (not b_next!103707))))

(declare-fun tb!221619 () Bool)

(declare-fun t!311193 () Bool)

(assert (=> (and b!3847235 (= (toChars!8571 (transformation!6296 (h!46174 (t!311107 rules!2768)))) (toChars!8571 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311193) tb!221619))

(declare-fun result!270080 () Bool)

(assert (= result!270080 result!269974))

(assert (=> d!1140543 t!311193))

(declare-fun tb!221621 () Bool)

(declare-fun t!311195 () Bool)

(assert (=> (and b!3847235 (= (toChars!8571 (transformation!6296 (h!46174 (t!311107 rules!2768)))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72))))) t!311195) tb!221621))

(declare-fun result!270082 () Bool)

(assert (= result!270082 result!270050))

(assert (=> b!3847140 t!311195))

(declare-fun tb!221623 () Bool)

(declare-fun t!311197 () Bool)

(assert (=> (and b!3847235 (= (toChars!8571 (transformation!6296 (h!46174 (t!311107 rules!2768)))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80))))) t!311197) tb!221623))

(declare-fun result!270084 () Bool)

(assert (= result!270084 result!270056))

(assert (=> b!3847148 t!311197))

(declare-fun b_and!287049 () Bool)

(declare-fun tp!1166054 () Bool)

(assert (=> b!3847235 (= tp!1166054 (and (=> t!311193 result!270080) (=> t!311195 result!270082) (=> t!311197 result!270084) b_and!287049))))

(declare-fun e!2377760 () Bool)

(assert (=> b!3847235 (= e!2377760 (and tp!1166053 tp!1166054))))

(declare-fun e!2377761 () Bool)

(declare-fun tp!1166051 () Bool)

(declare-fun b!3847234 () Bool)

(assert (=> b!3847234 (= e!2377761 (and tp!1166051 (inv!54892 (tag!7156 (h!46174 (t!311107 rules!2768)))) (inv!54895 (transformation!6296 (h!46174 (t!311107 rules!2768)))) e!2377760))))

(declare-fun b!3847233 () Bool)

(declare-fun e!2377762 () Bool)

(declare-fun tp!1166052 () Bool)

(assert (=> b!3847233 (= e!2377762 (and e!2377761 tp!1166052))))

(assert (=> b!3846670 (= tp!1165922 e!2377762)))

(assert (= b!3847234 b!3847235))

(assert (= b!3847233 b!3847234))

(assert (= (and b!3846670 ((_ is Cons!40754) (t!311107 rules!2768))) b!3847233))

(declare-fun m!4402013 () Bool)

(assert (=> b!3847234 m!4402013))

(declare-fun m!4402015 () Bool)

(assert (=> b!3847234 m!4402015))

(declare-fun b!3847239 () Bool)

(declare-fun b_free!103005 () Bool)

(declare-fun b_next!103709 () Bool)

(assert (=> b!3847239 (= b_free!103005 (not b_next!103709))))

(declare-fun t!311199 () Bool)

(declare-fun tb!221625 () Bool)

(assert (=> (and b!3847239 (= (toValue!8712 (transformation!6296 (rule!9142 (h!46175 (t!311108 prefixTokens!80))))) (toValue!8712 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311199) tb!221625))

(declare-fun result!270086 () Bool)

(assert (= result!270086 result!269982))

(assert (=> d!1140545 t!311199))

(declare-fun b_and!287051 () Bool)

(declare-fun tp!1166058 () Bool)

(assert (=> b!3847239 (= tp!1166058 (and (=> t!311199 result!270086) b_and!287051))))

(declare-fun b_free!103007 () Bool)

(declare-fun b_next!103711 () Bool)

(assert (=> b!3847239 (= b_free!103007 (not b_next!103711))))

(declare-fun tb!221627 () Bool)

(declare-fun t!311201 () Bool)

(assert (=> (and b!3847239 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 (t!311108 prefixTokens!80))))) (toChars!8571 (transformation!6296 (rule!9142 (_1!23102 (v!39005 lt!1335797)))))) t!311201) tb!221627))

(declare-fun result!270088 () Bool)

(assert (= result!270088 result!269974))

(assert (=> d!1140543 t!311201))

(declare-fun t!311203 () Bool)

(declare-fun tb!221629 () Bool)

(assert (=> (and b!3847239 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 (t!311108 prefixTokens!80))))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72))))) t!311203) tb!221629))

(declare-fun result!270090 () Bool)

(assert (= result!270090 result!270050))

(assert (=> b!3847140 t!311203))

(declare-fun t!311205 () Bool)

(declare-fun tb!221631 () Bool)

(assert (=> (and b!3847239 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 (t!311108 prefixTokens!80))))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80))))) t!311205) tb!221631))

(declare-fun result!270092 () Bool)

(assert (= result!270092 result!270056))

(assert (=> b!3847148 t!311205))

(declare-fun b_and!287053 () Bool)

(declare-fun tp!1166059 () Bool)

(assert (=> b!3847239 (= tp!1166059 (and (=> t!311201 result!270088) (=> t!311203 result!270090) (=> t!311205 result!270092) b_and!287053))))

(declare-fun e!2377768 () Bool)

(declare-fun b!3847236 () Bool)

(declare-fun tp!1166057 () Bool)

(declare-fun e!2377766 () Bool)

(assert (=> b!3847236 (= e!2377768 (and (inv!54896 (h!46175 (t!311108 prefixTokens!80))) e!2377766 tp!1166057))))

(assert (=> b!3846659 (= tp!1165928 e!2377768)))

(declare-fun e!2377765 () Bool)

(declare-fun tp!1166056 () Bool)

(declare-fun b!3847238 () Bool)

(declare-fun e!2377769 () Bool)

(assert (=> b!3847238 (= e!2377769 (and tp!1166056 (inv!54892 (tag!7156 (rule!9142 (h!46175 (t!311108 prefixTokens!80))))) (inv!54895 (transformation!6296 (rule!9142 (h!46175 (t!311108 prefixTokens!80))))) e!2377765))))

(assert (=> b!3847239 (= e!2377765 (and tp!1166058 tp!1166059))))

(declare-fun b!3847237 () Bool)

(declare-fun tp!1166055 () Bool)

(assert (=> b!3847237 (= e!2377766 (and (inv!21 (value!200070 (h!46175 (t!311108 prefixTokens!80)))) e!2377769 tp!1166055))))

(assert (= b!3847238 b!3847239))

(assert (= b!3847237 b!3847238))

(assert (= b!3847236 b!3847237))

(assert (= (and b!3846659 ((_ is Cons!40755) (t!311108 prefixTokens!80))) b!3847236))

(declare-fun m!4402017 () Bool)

(assert (=> b!3847236 m!4402017))

(declare-fun m!4402019 () Bool)

(assert (=> b!3847238 m!4402019))

(declare-fun m!4402021 () Bool)

(assert (=> b!3847238 m!4402021))

(declare-fun m!4402023 () Bool)

(assert (=> b!3847237 m!4402023))

(declare-fun b!3847243 () Bool)

(declare-fun e!2377770 () Bool)

(declare-fun tp!1166062 () Bool)

(declare-fun tp!1166063 () Bool)

(assert (=> b!3847243 (= e!2377770 (and tp!1166062 tp!1166063))))

(assert (=> b!3846681 (= tp!1165921 e!2377770)))

(declare-fun b!3847242 () Bool)

(declare-fun tp!1166064 () Bool)

(assert (=> b!3847242 (= e!2377770 tp!1166064)))

(declare-fun b!3847241 () Bool)

(declare-fun tp!1166060 () Bool)

(declare-fun tp!1166061 () Bool)

(assert (=> b!3847241 (= e!2377770 (and tp!1166060 tp!1166061))))

(declare-fun b!3847240 () Bool)

(assert (=> b!3847240 (= e!2377770 tp_is_empty!19373)))

(assert (= (and b!3846681 ((_ is ElementMatch!11201) (regex!6296 (rule!9142 (h!46175 prefixTokens!80))))) b!3847240))

(assert (= (and b!3846681 ((_ is Concat!17728) (regex!6296 (rule!9142 (h!46175 prefixTokens!80))))) b!3847241))

(assert (= (and b!3846681 ((_ is Star!11201) (regex!6296 (rule!9142 (h!46175 prefixTokens!80))))) b!3847242))

(assert (= (and b!3846681 ((_ is Union!11201) (regex!6296 (rule!9142 (h!46175 prefixTokens!80))))) b!3847243))

(declare-fun b!3847247 () Bool)

(declare-fun e!2377771 () Bool)

(declare-fun tp!1166067 () Bool)

(declare-fun tp!1166068 () Bool)

(assert (=> b!3847247 (= e!2377771 (and tp!1166067 tp!1166068))))

(assert (=> b!3846682 (= tp!1165931 e!2377771)))

(declare-fun b!3847246 () Bool)

(declare-fun tp!1166069 () Bool)

(assert (=> b!3847246 (= e!2377771 tp!1166069)))

(declare-fun b!3847245 () Bool)

(declare-fun tp!1166065 () Bool)

(declare-fun tp!1166066 () Bool)

(assert (=> b!3847245 (= e!2377771 (and tp!1166065 tp!1166066))))

(declare-fun b!3847244 () Bool)

(assert (=> b!3847244 (= e!2377771 tp_is_empty!19373)))

(assert (= (and b!3846682 ((_ is ElementMatch!11201) (regex!6296 (h!46174 rules!2768)))) b!3847244))

(assert (= (and b!3846682 ((_ is Concat!17728) (regex!6296 (h!46174 rules!2768)))) b!3847245))

(assert (= (and b!3846682 ((_ is Star!11201) (regex!6296 (h!46174 rules!2768)))) b!3847246))

(assert (= (and b!3846682 ((_ is Union!11201) (regex!6296 (h!46174 rules!2768)))) b!3847247))

(declare-fun b!3847248 () Bool)

(declare-fun e!2377772 () Bool)

(declare-fun tp!1166070 () Bool)

(assert (=> b!3847248 (= e!2377772 (and tp_is_empty!19373 tp!1166070))))

(assert (=> b!3846662 (= tp!1165924 e!2377772)))

(assert (= (and b!3846662 ((_ is Cons!40752) (t!311105 suffixResult!91))) b!3847248))

(declare-fun b_lambda!112439 () Bool)

(assert (= b_lambda!112437 (or (and b!3846673 b_free!102979) (and b!3847222 b_free!102999 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 (t!311108 suffixTokens!72))))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))))) (and b!3847235 b_free!103003 (= (toChars!8571 (transformation!6296 (h!46174 (t!311107 rules!2768)))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))))) (and b!3846675 b_free!102983 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))))) (and b!3847239 b_free!103007 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 (t!311108 prefixTokens!80))))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))))) (and b!3846663 b_free!102975 (= (toChars!8571 (transformation!6296 (h!46174 rules!2768))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))))) b_lambda!112439)))

(declare-fun b_lambda!112441 () Bool)

(assert (= b_lambda!112435 (or (and b!3847235 b_free!103003 (= (toChars!8571 (transformation!6296 (h!46174 (t!311107 rules!2768)))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))))) (and b!3847239 b_free!103007 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 (t!311108 prefixTokens!80))))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))))) (and b!3846675 b_free!102983) (and b!3847222 b_free!102999 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 (t!311108 suffixTokens!72))))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))))) (and b!3846663 b_free!102975 (= (toChars!8571 (transformation!6296 (h!46174 rules!2768))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))))) (and b!3846673 b_free!102979 (= (toChars!8571 (transformation!6296 (rule!9142 (h!46175 prefixTokens!80)))) (toChars!8571 (transformation!6296 (rule!9142 (h!46175 suffixTokens!72)))))) b_lambda!112441)))

(check-sat (not b!3847238) (not b!3846780) (not b!3847207) b_and!287045 (not b!3847194) (not tb!221537) b_and!286991 (not b_next!103709) (not d!1140641) (not b!3847114) (not b!3847219) (not b!3847208) (not b_next!103683) (not b!3846765) (not b!3847188) (not d!1140567) (not b_next!103687) (not d!1140543) (not b!3847130) (not b!3847224) (not b!3847248) (not d!1140665) (not b!3847184) (not d!1140539) (not d!1140671) (not b!3847115) (not b!3847178) (not bm!282086) (not b!3846806) (not b!3847108) (not b_lambda!112421) (not b!3847110) b_and!287053 (not b!3847116) (not b!3847140) (not tb!221597) (not b!3847220) (not d!1140517) (not b!3847155) (not b!3847146) (not b!3847154) (not b_lambda!112439) (not b!3847233) (not b!3847175) (not b!3847145) (not b!3847144) (not d!1140679) (not b_next!103681) (not b!3847106) (not d!1140537) (not b!3847133) (not b_next!103705) (not b!3847181) (not d!1140651) (not d!1140581) (not b!3847102) b_and!287037 tp_is_empty!19373 (not b!3846835) b_and!287039 b_and!287047 (not b_next!103701) (not b!3847223) (not b!3847100) (not b!3847112) (not b!3847092) (not b!3847182) (not b!3847149) (not d!1140635) (not b!3846852) (not tb!221543) (not d!1140555) (not tb!221603) (not b!3847179) (not b!3847093) (not b!3847180) (not d!1140675) b_and!286989 (not b!3847245) (not d!1140667) (not b!3847148) (not d!1140535) (not b!3846896) (not b!3847097) (not d!1140637) (not b!3846766) (not d!1140655) (not b_next!103677) (not b!3847206) (not b!3847242) (not b!3847193) (not b!3847141) (not b!3846937) (not d!1140677) (not b!3847134) (not b!3847236) (not b!3847234) (not b!3846836) (not d!1140549) (not b!3847091) (not b!3846863) (not b!3847177) (not b_lambda!112441) (not b!3847098) (not b_next!103711) b_and!287051 (not b!3847247) b_and!287049 (not b!3846897) b_and!286993 (not b!3846774) (not bm!282088) (not bm!282091) (not b_next!103707) (not b!3847241) (not b!3847176) b_and!287043 (not b!3846864) (not b!3847129) (not b!3847096) (not b!3847099) (not b!3847150) (not b_lambda!112419) (not d!1140553) (not b!3847221) (not b!3846865) (not d!1140659) (not b!3847185) (not b!3847118) (not b_next!103685) (not b!3847090) (not b!3846768) (not d!1140653) (not b!3847153) (not b!3846895) (not b!3847243) (not b_next!103679) (not b!3847246) (not b!3847237) (not b_next!103703) (not d!1140561) b_and!287041 (not b!3847142) (not b!3847095) (not d!1140541))
(check-sat b_and!287045 (not b_next!103683) (not b_next!103687) b_and!287053 b_and!286989 (not b_next!103677) b_and!286993 (not b_next!103685) (not b_next!103679) b_and!286991 (not b_next!103709) (not b_next!103681) (not b_next!103705) b_and!287037 b_and!287039 b_and!287047 (not b_next!103701) b_and!287049 (not b_next!103711) b_and!287051 (not b_next!103707) b_and!287043 (not b_next!103703) b_and!287041)
