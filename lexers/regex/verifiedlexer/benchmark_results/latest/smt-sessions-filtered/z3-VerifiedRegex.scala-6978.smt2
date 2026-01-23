; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!370168 () Bool)

(assert start!370168)

(declare-fun b!3941848 () Bool)

(declare-fun b_free!107861 () Bool)

(declare-fun b_next!108565 () Bool)

(assert (=> b!3941848 (= b_free!107861 (not b_next!108565))))

(declare-fun tp!1199734 () Bool)

(declare-fun b_and!301271 () Bool)

(assert (=> b!3941848 (= tp!1199734 b_and!301271)))

(declare-fun b_free!107863 () Bool)

(declare-fun b_next!108567 () Bool)

(assert (=> b!3941848 (= b_free!107863 (not b_next!108567))))

(declare-fun tp!1199718 () Bool)

(declare-fun b_and!301273 () Bool)

(assert (=> b!3941848 (= tp!1199718 b_and!301273)))

(declare-fun b!3941834 () Bool)

(declare-fun b_free!107865 () Bool)

(declare-fun b_next!108569 () Bool)

(assert (=> b!3941834 (= b_free!107865 (not b_next!108569))))

(declare-fun tp!1199719 () Bool)

(declare-fun b_and!301275 () Bool)

(assert (=> b!3941834 (= tp!1199719 b_and!301275)))

(declare-fun b_free!107867 () Bool)

(declare-fun b_next!108571 () Bool)

(assert (=> b!3941834 (= b_free!107867 (not b_next!108571))))

(declare-fun tp!1199733 () Bool)

(declare-fun b_and!301277 () Bool)

(assert (=> b!3941834 (= tp!1199733 b_and!301277)))

(declare-fun b!3941849 () Bool)

(declare-fun b_free!107869 () Bool)

(declare-fun b_next!108573 () Bool)

(assert (=> b!3941849 (= b_free!107869 (not b_next!108573))))

(declare-fun tp!1199726 () Bool)

(declare-fun b_and!301279 () Bool)

(assert (=> b!3941849 (= tp!1199726 b_and!301279)))

(declare-fun b_free!107871 () Bool)

(declare-fun b_next!108575 () Bool)

(assert (=> b!3941849 (= b_free!107871 (not b_next!108575))))

(declare-fun tp!1199724 () Bool)

(declare-fun b_and!301281 () Bool)

(assert (=> b!3941849 (= tp!1199724 b_and!301281)))

(declare-fun e!2439045 () Bool)

(declare-fun tp!1199725 () Bool)

(declare-fun e!2439048 () Bool)

(declare-fun b!3941828 () Bool)

(declare-datatypes ((List!41989 0))(
  ( (Nil!41865) (Cons!41865 (h!47285 (_ BitVec 16)) (t!327024 List!41989)) )
))
(declare-datatypes ((TokenValue!6774 0))(
  ( (FloatLiteralValue!13548 (text!47863 List!41989)) (TokenValueExt!6773 (__x!25765 Int)) (Broken!33870 (value!207112 List!41989)) (Object!6897) (End!6774) (Def!6774) (Underscore!6774) (Match!6774) (Else!6774) (Error!6774) (Case!6774) (If!6774) (Extends!6774) (Abstract!6774) (Class!6774) (Val!6774) (DelimiterValue!13548 (del!6834 List!41989)) (KeywordValue!6780 (value!207113 List!41989)) (CommentValue!13548 (value!207114 List!41989)) (WhitespaceValue!13548 (value!207115 List!41989)) (IndentationValue!6774 (value!207116 List!41989)) (String!47587) (Int32!6774) (Broken!33871 (value!207117 List!41989)) (Boolean!6775) (Unit!60411) (OperatorValue!6777 (op!6834 List!41989)) (IdentifierValue!13548 (value!207118 List!41989)) (IdentifierValue!13549 (value!207119 List!41989)) (WhitespaceValue!13549 (value!207120 List!41989)) (True!13548) (False!13548) (Broken!33872 (value!207121 List!41989)) (Broken!33873 (value!207122 List!41989)) (True!13549) (RightBrace!6774) (RightBracket!6774) (Colon!6774) (Null!6774) (Comma!6774) (LeftBracket!6774) (False!13549) (LeftBrace!6774) (ImaginaryLiteralValue!6774 (text!47864 List!41989)) (StringLiteralValue!20322 (value!207123 List!41989)) (EOFValue!6774 (value!207124 List!41989)) (IdentValue!6774 (value!207125 List!41989)) (DelimiterValue!13549 (value!207126 List!41989)) (DedentValue!6774 (value!207127 List!41989)) (NewLineValue!6774 (value!207128 List!41989)) (IntegerValue!20322 (value!207129 (_ BitVec 32)) (text!47865 List!41989)) (IntegerValue!20323 (value!207130 Int) (text!47866 List!41989)) (Times!6774) (Or!6774) (Equal!6774) (Minus!6774) (Broken!33874 (value!207131 List!41989)) (And!6774) (Div!6774) (LessEqual!6774) (Mod!6774) (Concat!18223) (Not!6774) (Plus!6774) (SpaceValue!6774 (value!207132 List!41989)) (IntegerValue!20324 (value!207133 Int) (text!47867 List!41989)) (StringLiteralValue!20323 (text!47868 List!41989)) (FloatLiteralValue!13549 (text!47869 List!41989)) (BytesLiteralValue!6774 (value!207134 List!41989)) (CommentValue!13549 (value!207135 List!41989)) (StringLiteralValue!20324 (value!207136 List!41989)) (ErrorTokenValue!6774 (msg!6835 List!41989)) )
))
(declare-datatypes ((C!23084 0))(
  ( (C!23085 (val!13636 Int)) )
))
(declare-datatypes ((Regex!11449 0))(
  ( (ElementMatch!11449 (c!684788 C!23084)) (Concat!18224 (regOne!23410 Regex!11449) (regTwo!23410 Regex!11449)) (EmptyExpr!11449) (Star!11449 (reg!11778 Regex!11449)) (EmptyLang!11449) (Union!11449 (regOne!23411 Regex!11449) (regTwo!23411 Regex!11449)) )
))
(declare-datatypes ((String!47588 0))(
  ( (String!47589 (value!207137 String)) )
))
(declare-datatypes ((List!41990 0))(
  ( (Nil!41866) (Cons!41866 (h!47286 C!23084) (t!327025 List!41990)) )
))
(declare-datatypes ((IArray!25515 0))(
  ( (IArray!25516 (innerList!12815 List!41990)) )
))
(declare-datatypes ((Conc!12755 0))(
  ( (Node!12755 (left!31889 Conc!12755) (right!32219 Conc!12755) (csize!25740 Int) (cheight!12966 Int)) (Leaf!19734 (xs!16061 IArray!25515) (csize!25741 Int)) (Empty!12755) )
))
(declare-datatypes ((BalanceConc!25104 0))(
  ( (BalanceConc!25105 (c!684789 Conc!12755)) )
))
(declare-datatypes ((TokenValueInjection!12976 0))(
  ( (TokenValueInjection!12977 (toValue!9008 Int) (toChars!8867 Int)) )
))
(declare-datatypes ((Rule!12888 0))(
  ( (Rule!12889 (regex!6544 Regex!11449) (tag!7404 String!47588) (isSeparator!6544 Bool) (transformation!6544 TokenValueInjection!12976)) )
))
(declare-datatypes ((Token!12226 0))(
  ( (Token!12227 (value!207138 TokenValue!6774) (rule!9504 Rule!12888) (size!31397 Int) (originalCharacters!7144 List!41990)) )
))
(declare-datatypes ((List!41991 0))(
  ( (Nil!41867) (Cons!41867 (h!47287 Token!12226) (t!327026 List!41991)) )
))
(declare-fun prefixTokens!80 () List!41991)

(declare-fun inv!21 (TokenValue!6774) Bool)

(assert (=> b!3941828 (= e!2439045 (and (inv!21 (value!207138 (h!47287 prefixTokens!80))) e!2439048 tp!1199725))))

(declare-fun b!3941829 () Bool)

(declare-fun res!1595180 () Bool)

(declare-fun e!2439046 () Bool)

(assert (=> b!3941829 (=> (not res!1595180) (not e!2439046))))

(declare-fun suffixResult!91 () List!41990)

(declare-datatypes ((LexerInterface!6133 0))(
  ( (LexerInterfaceExt!6130 (__x!25766 Int)) (Lexer!6131) )
))
(declare-fun thiss!20629 () LexerInterface!6133)

(declare-fun suffix!1176 () List!41990)

(declare-datatypes ((List!41992 0))(
  ( (Nil!41868) (Cons!41868 (h!47288 Rule!12888) (t!327027 List!41992)) )
))
(declare-fun rules!2768 () List!41992)

(declare-fun suffixTokens!72 () List!41991)

(declare-datatypes ((tuple2!41154 0))(
  ( (tuple2!41155 (_1!23711 List!41991) (_2!23711 List!41990)) )
))
(declare-fun lexList!1901 (LexerInterface!6133 List!41992 List!41990) tuple2!41154)

(assert (=> b!3941829 (= res!1595180 (= (lexList!1901 thiss!20629 rules!2768 suffix!1176) (tuple2!41155 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3941830 () Bool)

(declare-fun e!2439054 () Bool)

(declare-fun rulesValidInductive!2364 (LexerInterface!6133 List!41992) Bool)

(assert (=> b!3941830 (= e!2439054 (not (rulesValidInductive!2364 thiss!20629 rules!2768)))))

(declare-fun e!2439050 () Bool)

(declare-fun tp!1199723 () Bool)

(declare-fun e!2439059 () Bool)

(declare-fun b!3941831 () Bool)

(declare-fun inv!56070 (String!47588) Bool)

(declare-fun inv!56073 (TokenValueInjection!12976) Bool)

(assert (=> b!3941831 (= e!2439059 (and tp!1199723 (inv!56070 (tag!7404 (h!47288 rules!2768))) (inv!56073 (transformation!6544 (h!47288 rules!2768))) e!2439050))))

(declare-fun b!3941832 () Bool)

(declare-fun e!2439056 () Bool)

(declare-fun tp!1199732 () Bool)

(assert (=> b!3941832 (= e!2439056 (and e!2439059 tp!1199732))))

(declare-fun b!3941833 () Bool)

(declare-fun e!2439066 () Bool)

(declare-fun tp_is_empty!19869 () Bool)

(declare-fun tp!1199722 () Bool)

(assert (=> b!3941833 (= e!2439066 (and tp_is_empty!19869 tp!1199722))))

(declare-fun e!2439064 () Bool)

(assert (=> b!3941834 (= e!2439064 (and tp!1199719 tp!1199733))))

(declare-fun b!3941835 () Bool)

(declare-fun res!1595184 () Bool)

(declare-fun e!2439052 () Bool)

(assert (=> b!3941835 (=> (not res!1595184) (not e!2439052))))

(declare-fun rulesInvariant!5476 (LexerInterface!6133 List!41992) Bool)

(assert (=> b!3941835 (= res!1595184 (rulesInvariant!5476 thiss!20629 rules!2768))))

(declare-fun b!3941837 () Bool)

(declare-fun e!2439057 () Bool)

(declare-fun tp!1199730 () Bool)

(assert (=> b!3941837 (= e!2439057 (and tp_is_empty!19869 tp!1199730))))

(declare-fun b!3941838 () Bool)

(declare-fun e!2439063 () Bool)

(assert (=> b!3941838 (= e!2439046 e!2439063)))

(declare-fun res!1595182 () Bool)

(assert (=> b!3941838 (=> (not res!1595182) (not e!2439063))))

(declare-datatypes ((tuple2!41156 0))(
  ( (tuple2!41157 (_1!23712 Token!12226) (_2!23712 List!41990)) )
))
(declare-datatypes ((Option!8964 0))(
  ( (None!8963) (Some!8963 (v!39295 tuple2!41156)) )
))
(declare-fun lt!1378613 () Option!8964)

(get-info :version)

(assert (=> b!3941838 (= res!1595182 ((_ is Some!8963) lt!1378613))))

(declare-fun lt!1378611 () List!41990)

(declare-fun maxPrefix!3437 (LexerInterface!6133 List!41992 List!41990) Option!8964)

(assert (=> b!3941838 (= lt!1378613 (maxPrefix!3437 thiss!20629 rules!2768 lt!1378611))))

(declare-fun b!3941839 () Bool)

(declare-fun e!2439058 () Bool)

(declare-fun tp!1199727 () Bool)

(assert (=> b!3941839 (= e!2439058 (and tp_is_empty!19869 tp!1199727))))

(declare-fun b!3941840 () Bool)

(declare-fun e!2439062 () Bool)

(declare-fun e!2439061 () Bool)

(declare-fun tp!1199728 () Bool)

(declare-fun inv!56074 (Token!12226) Bool)

(assert (=> b!3941840 (= e!2439061 (and (inv!56074 (h!47287 suffixTokens!72)) e!2439062 tp!1199728))))

(declare-fun b!3941841 () Bool)

(declare-fun tp!1199720 () Bool)

(declare-fun e!2439049 () Bool)

(declare-fun e!2439044 () Bool)

(assert (=> b!3941841 (= e!2439049 (and tp!1199720 (inv!56070 (tag!7404 (rule!9504 (h!47287 suffixTokens!72)))) (inv!56073 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))) e!2439044))))

(declare-fun b!3941842 () Bool)

(declare-fun res!1595178 () Bool)

(assert (=> b!3941842 (=> (not res!1595178) (not e!2439052))))

(declare-fun prefix!426 () List!41990)

(declare-fun isEmpty!24978 (List!41990) Bool)

(assert (=> b!3941842 (= res!1595178 (not (isEmpty!24978 prefix!426)))))

(declare-fun b!3941843 () Bool)

(declare-fun res!1595186 () Bool)

(assert (=> b!3941843 (=> (not res!1595186) (not e!2439052))))

(declare-fun isEmpty!24979 (List!41991) Bool)

(assert (=> b!3941843 (= res!1595186 (not (isEmpty!24979 prefixTokens!80)))))

(declare-fun b!3941844 () Bool)

(assert (=> b!3941844 (= e!2439063 e!2439054)))

(declare-fun res!1595179 () Bool)

(assert (=> b!3941844 (=> (not res!1595179) (not e!2439054))))

(declare-fun contains!8383 (List!41992 Rule!12888) Bool)

(assert (=> b!3941844 (= res!1595179 (contains!8383 rules!2768 (rule!9504 (_1!23712 (v!39295 lt!1378613)))))))

(declare-datatypes ((Unit!60412 0))(
  ( (Unit!60413) )
))
(declare-fun lt!1378612 () Unit!60412)

(declare-fun lemmaCharactersSize!1197 (Token!12226) Unit!60412)

(assert (=> b!3941844 (= lt!1378612 (lemmaCharactersSize!1197 (_1!23712 (v!39295 lt!1378613))))))

(declare-fun e!2439053 () Bool)

(declare-fun tp!1199729 () Bool)

(declare-fun b!3941845 () Bool)

(assert (=> b!3941845 (= e!2439053 (and (inv!56074 (h!47287 prefixTokens!80)) e!2439045 tp!1199729))))

(declare-fun b!3941846 () Bool)

(declare-fun tp!1199721 () Bool)

(assert (=> b!3941846 (= e!2439048 (and tp!1199721 (inv!56070 (tag!7404 (rule!9504 (h!47287 prefixTokens!80)))) (inv!56073 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))) e!2439064))))

(declare-fun b!3941847 () Bool)

(assert (=> b!3941847 (= e!2439052 e!2439046)))

(declare-fun res!1595181 () Bool)

(assert (=> b!3941847 (=> (not res!1595181) (not e!2439046))))

(declare-fun ++!10845 (List!41991 List!41991) List!41991)

(assert (=> b!3941847 (= res!1595181 (= (lexList!1901 thiss!20629 rules!2768 lt!1378611) (tuple2!41155 (++!10845 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun ++!10846 (List!41990 List!41990) List!41990)

(assert (=> b!3941847 (= lt!1378611 (++!10846 prefix!426 suffix!1176))))

(declare-fun b!3941836 () Bool)

(declare-fun res!1595183 () Bool)

(assert (=> b!3941836 (=> (not res!1595183) (not e!2439052))))

(declare-fun isEmpty!24980 (List!41992) Bool)

(assert (=> b!3941836 (= res!1595183 (not (isEmpty!24980 rules!2768)))))

(declare-fun res!1595185 () Bool)

(assert (=> start!370168 (=> (not res!1595185) (not e!2439052))))

(assert (=> start!370168 (= res!1595185 ((_ is Lexer!6131) thiss!20629))))

(assert (=> start!370168 e!2439052))

(assert (=> start!370168 e!2439066))

(assert (=> start!370168 true))

(assert (=> start!370168 e!2439058))

(assert (=> start!370168 e!2439056))

(assert (=> start!370168 e!2439053))

(assert (=> start!370168 e!2439061))

(assert (=> start!370168 e!2439057))

(assert (=> b!3941848 (= e!2439050 (and tp!1199734 tp!1199718))))

(assert (=> b!3941849 (= e!2439044 (and tp!1199726 tp!1199724))))

(declare-fun tp!1199731 () Bool)

(declare-fun b!3941850 () Bool)

(assert (=> b!3941850 (= e!2439062 (and (inv!21 (value!207138 (h!47287 suffixTokens!72))) e!2439049 tp!1199731))))

(assert (= (and start!370168 res!1595185) b!3941836))

(assert (= (and b!3941836 res!1595183) b!3941835))

(assert (= (and b!3941835 res!1595184) b!3941843))

(assert (= (and b!3941843 res!1595186) b!3941842))

(assert (= (and b!3941842 res!1595178) b!3941847))

(assert (= (and b!3941847 res!1595181) b!3941829))

(assert (= (and b!3941829 res!1595180) b!3941838))

(assert (= (and b!3941838 res!1595182) b!3941844))

(assert (= (and b!3941844 res!1595179) b!3941830))

(assert (= (and start!370168 ((_ is Cons!41866) suffixResult!91)) b!3941833))

(assert (= (and start!370168 ((_ is Cons!41866) suffix!1176)) b!3941839))

(assert (= b!3941831 b!3941848))

(assert (= b!3941832 b!3941831))

(assert (= (and start!370168 ((_ is Cons!41868) rules!2768)) b!3941832))

(assert (= b!3941846 b!3941834))

(assert (= b!3941828 b!3941846))

(assert (= b!3941845 b!3941828))

(assert (= (and start!370168 ((_ is Cons!41867) prefixTokens!80)) b!3941845))

(assert (= b!3941841 b!3941849))

(assert (= b!3941850 b!3941841))

(assert (= b!3941840 b!3941850))

(assert (= (and start!370168 ((_ is Cons!41867) suffixTokens!72)) b!3941840))

(assert (= (and start!370168 ((_ is Cons!41866) prefix!426)) b!3941837))

(declare-fun m!4510453 () Bool)

(assert (=> b!3941831 m!4510453))

(declare-fun m!4510455 () Bool)

(assert (=> b!3941831 m!4510455))

(declare-fun m!4510457 () Bool)

(assert (=> b!3941829 m!4510457))

(declare-fun m!4510459 () Bool)

(assert (=> b!3941840 m!4510459))

(declare-fun m!4510461 () Bool)

(assert (=> b!3941835 m!4510461))

(declare-fun m!4510463 () Bool)

(assert (=> b!3941836 m!4510463))

(declare-fun m!4510465 () Bool)

(assert (=> b!3941843 m!4510465))

(declare-fun m!4510467 () Bool)

(assert (=> b!3941841 m!4510467))

(declare-fun m!4510469 () Bool)

(assert (=> b!3941841 m!4510469))

(declare-fun m!4510471 () Bool)

(assert (=> b!3941850 m!4510471))

(declare-fun m!4510473 () Bool)

(assert (=> b!3941847 m!4510473))

(declare-fun m!4510475 () Bool)

(assert (=> b!3941847 m!4510475))

(declare-fun m!4510477 () Bool)

(assert (=> b!3941847 m!4510477))

(declare-fun m!4510479 () Bool)

(assert (=> b!3941838 m!4510479))

(declare-fun m!4510481 () Bool)

(assert (=> b!3941842 m!4510481))

(declare-fun m!4510483 () Bool)

(assert (=> b!3941844 m!4510483))

(declare-fun m!4510485 () Bool)

(assert (=> b!3941844 m!4510485))

(declare-fun m!4510487 () Bool)

(assert (=> b!3941845 m!4510487))

(declare-fun m!4510489 () Bool)

(assert (=> b!3941830 m!4510489))

(declare-fun m!4510491 () Bool)

(assert (=> b!3941828 m!4510491))

(declare-fun m!4510493 () Bool)

(assert (=> b!3941846 m!4510493))

(declare-fun m!4510495 () Bool)

(assert (=> b!3941846 m!4510495))

(check-sat (not b!3941835) tp_is_empty!19869 b_and!301277 b_and!301279 b_and!301271 b_and!301273 b_and!301275 (not b!3941829) (not b!3941830) (not b!3941833) (not b!3941844) (not b!3941850) (not b_next!108569) (not b!3941846) (not b_next!108571) (not b!3941839) (not b!3941845) (not b!3941837) (not b_next!108567) b_and!301281 (not b!3941847) (not b!3941836) (not b!3941841) (not b!3941828) (not b!3941842) (not b!3941831) (not b!3941832) (not b_next!108565) (not b!3941843) (not b!3941840) (not b_next!108575) (not b_next!108573) (not b!3941838))
(check-sat (not b_next!108569) (not b_next!108571) b_and!301277 b_and!301279 b_and!301271 b_and!301273 b_and!301275 (not b_next!108565) (not b_next!108567) b_and!301281 (not b_next!108575) (not b_next!108573))
(get-model)

(declare-fun d!1169163 () Bool)

(declare-fun lt!1378616 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6325 (List!41992) (InoxSet Rule!12888))

(assert (=> d!1169163 (= lt!1378616 (select (content!6325 rules!2768) (rule!9504 (_1!23712 (v!39295 lt!1378613)))))))

(declare-fun e!2439071 () Bool)

(assert (=> d!1169163 (= lt!1378616 e!2439071)))

(declare-fun res!1595196 () Bool)

(assert (=> d!1169163 (=> (not res!1595196) (not e!2439071))))

(assert (=> d!1169163 (= res!1595196 ((_ is Cons!41868) rules!2768))))

(assert (=> d!1169163 (= (contains!8383 rules!2768 (rule!9504 (_1!23712 (v!39295 lt!1378613)))) lt!1378616)))

(declare-fun b!3941855 () Bool)

(declare-fun e!2439072 () Bool)

(assert (=> b!3941855 (= e!2439071 e!2439072)))

(declare-fun res!1595195 () Bool)

(assert (=> b!3941855 (=> res!1595195 e!2439072)))

(assert (=> b!3941855 (= res!1595195 (= (h!47288 rules!2768) (rule!9504 (_1!23712 (v!39295 lt!1378613)))))))

(declare-fun b!3941856 () Bool)

(assert (=> b!3941856 (= e!2439072 (contains!8383 (t!327027 rules!2768) (rule!9504 (_1!23712 (v!39295 lt!1378613)))))))

(assert (= (and d!1169163 res!1595196) b!3941855))

(assert (= (and b!3941855 (not res!1595195)) b!3941856))

(declare-fun m!4510497 () Bool)

(assert (=> d!1169163 m!4510497))

(declare-fun m!4510499 () Bool)

(assert (=> d!1169163 m!4510499))

(declare-fun m!4510501 () Bool)

(assert (=> b!3941856 m!4510501))

(assert (=> b!3941844 d!1169163))

(declare-fun d!1169165 () Bool)

(declare-fun size!31400 (List!41990) Int)

(assert (=> d!1169165 (= (size!31397 (_1!23712 (v!39295 lt!1378613))) (size!31400 (originalCharacters!7144 (_1!23712 (v!39295 lt!1378613)))))))

(declare-fun Unit!60415 () Unit!60412)

(assert (=> d!1169165 (= (lemmaCharactersSize!1197 (_1!23712 (v!39295 lt!1378613))) Unit!60415)))

(declare-fun bs!586689 () Bool)

(assert (= bs!586689 d!1169165))

(declare-fun m!4510503 () Bool)

(assert (=> bs!586689 m!4510503))

(assert (=> b!3941844 d!1169165))

(declare-fun d!1169169 () Bool)

(assert (=> d!1169169 (= (isEmpty!24979 prefixTokens!80) ((_ is Nil!41867) prefixTokens!80))))

(assert (=> b!3941843 d!1169169))

(declare-fun d!1169171 () Bool)

(assert (=> d!1169171 (= (isEmpty!24978 prefix!426) ((_ is Nil!41866) prefix!426))))

(assert (=> b!3941842 d!1169171))

(declare-fun d!1169173 () Bool)

(assert (=> d!1169173 (= (inv!56070 (tag!7404 (h!47288 rules!2768))) (= (mod (str.len (value!207137 (tag!7404 (h!47288 rules!2768)))) 2) 0))))

(assert (=> b!3941831 d!1169173))

(declare-fun d!1169175 () Bool)

(declare-fun res!1595205 () Bool)

(declare-fun e!2439081 () Bool)

(assert (=> d!1169175 (=> (not res!1595205) (not e!2439081))))

(declare-fun semiInverseModEq!2817 (Int Int) Bool)

(assert (=> d!1169175 (= res!1595205 (semiInverseModEq!2817 (toChars!8867 (transformation!6544 (h!47288 rules!2768))) (toValue!9008 (transformation!6544 (h!47288 rules!2768)))))))

(assert (=> d!1169175 (= (inv!56073 (transformation!6544 (h!47288 rules!2768))) e!2439081)))

(declare-fun b!3941865 () Bool)

(declare-fun equivClasses!2716 (Int Int) Bool)

(assert (=> b!3941865 (= e!2439081 (equivClasses!2716 (toChars!8867 (transformation!6544 (h!47288 rules!2768))) (toValue!9008 (transformation!6544 (h!47288 rules!2768)))))))

(assert (= (and d!1169175 res!1595205) b!3941865))

(declare-fun m!4510513 () Bool)

(assert (=> d!1169175 m!4510513))

(declare-fun m!4510515 () Bool)

(assert (=> b!3941865 m!4510515))

(assert (=> b!3941831 d!1169175))

(declare-fun d!1169183 () Bool)

(assert (=> d!1169183 (= (isEmpty!24980 rules!2768) ((_ is Nil!41868) rules!2768))))

(assert (=> b!3941836 d!1169183))

(declare-fun d!1169185 () Bool)

(assert (=> d!1169185 (= (inv!56070 (tag!7404 (rule!9504 (h!47287 prefixTokens!80)))) (= (mod (str.len (value!207137 (tag!7404 (rule!9504 (h!47287 prefixTokens!80))))) 2) 0))))

(assert (=> b!3941846 d!1169185))

(declare-fun d!1169187 () Bool)

(declare-fun res!1595206 () Bool)

(declare-fun e!2439082 () Bool)

(assert (=> d!1169187 (=> (not res!1595206) (not e!2439082))))

(assert (=> d!1169187 (= res!1595206 (semiInverseModEq!2817 (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))) (toValue!9008 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80))))))))

(assert (=> d!1169187 (= (inv!56073 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))) e!2439082)))

(declare-fun b!3941866 () Bool)

(assert (=> b!3941866 (= e!2439082 (equivClasses!2716 (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))) (toValue!9008 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80))))))))

(assert (= (and d!1169187 res!1595206) b!3941866))

(declare-fun m!4510517 () Bool)

(assert (=> d!1169187 m!4510517))

(declare-fun m!4510519 () Bool)

(assert (=> b!3941866 m!4510519))

(assert (=> b!3941846 d!1169187))

(declare-fun d!1169189 () Bool)

(declare-fun res!1595209 () Bool)

(declare-fun e!2439085 () Bool)

(assert (=> d!1169189 (=> (not res!1595209) (not e!2439085))))

(declare-fun rulesValid!2550 (LexerInterface!6133 List!41992) Bool)

(assert (=> d!1169189 (= res!1595209 (rulesValid!2550 thiss!20629 rules!2768))))

(assert (=> d!1169189 (= (rulesInvariant!5476 thiss!20629 rules!2768) e!2439085)))

(declare-fun b!3941869 () Bool)

(declare-datatypes ((List!41993 0))(
  ( (Nil!41869) (Cons!41869 (h!47289 String!47588) (t!327076 List!41993)) )
))
(declare-fun noDuplicateTag!2551 (LexerInterface!6133 List!41992 List!41993) Bool)

(assert (=> b!3941869 (= e!2439085 (noDuplicateTag!2551 thiss!20629 rules!2768 Nil!41869))))

(assert (= (and d!1169189 res!1595209) b!3941869))

(declare-fun m!4510521 () Bool)

(assert (=> d!1169189 m!4510521))

(declare-fun m!4510523 () Bool)

(assert (=> b!3941869 m!4510523))

(assert (=> b!3941835 d!1169189))

(declare-fun d!1169191 () Bool)

(declare-fun res!1595214 () Bool)

(declare-fun e!2439088 () Bool)

(assert (=> d!1169191 (=> (not res!1595214) (not e!2439088))))

(assert (=> d!1169191 (= res!1595214 (not (isEmpty!24978 (originalCharacters!7144 (h!47287 prefixTokens!80)))))))

(assert (=> d!1169191 (= (inv!56074 (h!47287 prefixTokens!80)) e!2439088)))

(declare-fun b!3941874 () Bool)

(declare-fun res!1595215 () Bool)

(assert (=> b!3941874 (=> (not res!1595215) (not e!2439088))))

(declare-fun list!15548 (BalanceConc!25104) List!41990)

(declare-fun dynLambda!17929 (Int TokenValue!6774) BalanceConc!25104)

(assert (=> b!3941874 (= res!1595215 (= (originalCharacters!7144 (h!47287 prefixTokens!80)) (list!15548 (dynLambda!17929 (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))) (value!207138 (h!47287 prefixTokens!80))))))))

(declare-fun b!3941875 () Bool)

(assert (=> b!3941875 (= e!2439088 (= (size!31397 (h!47287 prefixTokens!80)) (size!31400 (originalCharacters!7144 (h!47287 prefixTokens!80)))))))

(assert (= (and d!1169191 res!1595214) b!3941874))

(assert (= (and b!3941874 res!1595215) b!3941875))

(declare-fun b_lambda!115271 () Bool)

(assert (=> (not b_lambda!115271) (not b!3941874)))

(declare-fun t!327029 () Bool)

(declare-fun tb!236309 () Bool)

(assert (=> (and b!3941848 (= (toChars!8867 (transformation!6544 (h!47288 rules!2768))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80))))) t!327029) tb!236309))

(declare-fun b!3941880 () Bool)

(declare-fun e!2439091 () Bool)

(declare-fun tp!1199737 () Bool)

(declare-fun inv!56077 (Conc!12755) Bool)

(assert (=> b!3941880 (= e!2439091 (and (inv!56077 (c!684789 (dynLambda!17929 (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))) (value!207138 (h!47287 prefixTokens!80))))) tp!1199737))))

(declare-fun result!286254 () Bool)

(declare-fun inv!56078 (BalanceConc!25104) Bool)

(assert (=> tb!236309 (= result!286254 (and (inv!56078 (dynLambda!17929 (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))) (value!207138 (h!47287 prefixTokens!80)))) e!2439091))))

(assert (= tb!236309 b!3941880))

(declare-fun m!4510525 () Bool)

(assert (=> b!3941880 m!4510525))

(declare-fun m!4510527 () Bool)

(assert (=> tb!236309 m!4510527))

(assert (=> b!3941874 t!327029))

(declare-fun b_and!301283 () Bool)

(assert (= b_and!301273 (and (=> t!327029 result!286254) b_and!301283)))

(declare-fun t!327031 () Bool)

(declare-fun tb!236311 () Bool)

(assert (=> (and b!3941834 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80))))) t!327031) tb!236311))

(declare-fun result!286258 () Bool)

(assert (= result!286258 result!286254))

(assert (=> b!3941874 t!327031))

(declare-fun b_and!301285 () Bool)

(assert (= b_and!301277 (and (=> t!327031 result!286258) b_and!301285)))

(declare-fun t!327033 () Bool)

(declare-fun tb!236313 () Bool)

(assert (=> (and b!3941849 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80))))) t!327033) tb!236313))

(declare-fun result!286260 () Bool)

(assert (= result!286260 result!286254))

(assert (=> b!3941874 t!327033))

(declare-fun b_and!301287 () Bool)

(assert (= b_and!301281 (and (=> t!327033 result!286260) b_and!301287)))

(declare-fun m!4510529 () Bool)

(assert (=> d!1169191 m!4510529))

(declare-fun m!4510531 () Bool)

(assert (=> b!3941874 m!4510531))

(assert (=> b!3941874 m!4510531))

(declare-fun m!4510533 () Bool)

(assert (=> b!3941874 m!4510533))

(declare-fun m!4510535 () Bool)

(assert (=> b!3941875 m!4510535))

(assert (=> b!3941845 d!1169191))

(declare-fun b!3941895 () Bool)

(declare-fun e!2439102 () Bool)

(declare-fun inv!17 (TokenValue!6774) Bool)

(assert (=> b!3941895 (= e!2439102 (inv!17 (value!207138 (h!47287 prefixTokens!80))))))

(declare-fun b!3941896 () Bool)

(declare-fun e!2439100 () Bool)

(declare-fun inv!16 (TokenValue!6774) Bool)

(assert (=> b!3941896 (= e!2439100 (inv!16 (value!207138 (h!47287 prefixTokens!80))))))

(declare-fun d!1169193 () Bool)

(declare-fun c!684796 () Bool)

(assert (=> d!1169193 (= c!684796 ((_ is IntegerValue!20322) (value!207138 (h!47287 prefixTokens!80))))))

(assert (=> d!1169193 (= (inv!21 (value!207138 (h!47287 prefixTokens!80))) e!2439100)))

(declare-fun b!3941897 () Bool)

(assert (=> b!3941897 (= e!2439100 e!2439102)))

(declare-fun c!684797 () Bool)

(assert (=> b!3941897 (= c!684797 ((_ is IntegerValue!20323) (value!207138 (h!47287 prefixTokens!80))))))

(declare-fun b!3941898 () Bool)

(declare-fun e!2439101 () Bool)

(declare-fun inv!15 (TokenValue!6774) Bool)

(assert (=> b!3941898 (= e!2439101 (inv!15 (value!207138 (h!47287 prefixTokens!80))))))

(declare-fun b!3941899 () Bool)

(declare-fun res!1595218 () Bool)

(assert (=> b!3941899 (=> res!1595218 e!2439101)))

(assert (=> b!3941899 (= res!1595218 (not ((_ is IntegerValue!20324) (value!207138 (h!47287 prefixTokens!80)))))))

(assert (=> b!3941899 (= e!2439102 e!2439101)))

(assert (= (and d!1169193 c!684796) b!3941896))

(assert (= (and d!1169193 (not c!684796)) b!3941897))

(assert (= (and b!3941897 c!684797) b!3941895))

(assert (= (and b!3941897 (not c!684797)) b!3941899))

(assert (= (and b!3941899 (not res!1595218)) b!3941898))

(declare-fun m!4510537 () Bool)

(assert (=> b!3941895 m!4510537))

(declare-fun m!4510539 () Bool)

(assert (=> b!3941896 m!4510539))

(declare-fun m!4510541 () Bool)

(assert (=> b!3941898 m!4510541))

(assert (=> b!3941828 d!1169193))

(declare-fun b!3942023 () Bool)

(declare-fun res!1595292 () Bool)

(declare-fun e!2439165 () Bool)

(assert (=> b!3942023 (=> (not res!1595292) (not e!2439165))))

(declare-fun lt!1378666 () Option!8964)

(declare-fun get!13830 (Option!8964) tuple2!41156)

(declare-fun apply!9777 (TokenValueInjection!12976 BalanceConc!25104) TokenValue!6774)

(declare-fun seqFromList!4805 (List!41990) BalanceConc!25104)

(assert (=> b!3942023 (= res!1595292 (= (value!207138 (_1!23712 (get!13830 lt!1378666))) (apply!9777 (transformation!6544 (rule!9504 (_1!23712 (get!13830 lt!1378666)))) (seqFromList!4805 (originalCharacters!7144 (_1!23712 (get!13830 lt!1378666)))))))))

(declare-fun b!3942024 () Bool)

(declare-fun res!1595287 () Bool)

(assert (=> b!3942024 (=> (not res!1595287) (not e!2439165))))

(declare-fun charsOf!4362 (Token!12226) BalanceConc!25104)

(assert (=> b!3942024 (= res!1595287 (= (list!15548 (charsOf!4362 (_1!23712 (get!13830 lt!1378666)))) (originalCharacters!7144 (_1!23712 (get!13830 lt!1378666)))))))

(declare-fun b!3942025 () Bool)

(declare-fun e!2439164 () Bool)

(assert (=> b!3942025 (= e!2439164 e!2439165)))

(declare-fun res!1595286 () Bool)

(assert (=> b!3942025 (=> (not res!1595286) (not e!2439165))))

(declare-fun isDefined!6963 (Option!8964) Bool)

(assert (=> b!3942025 (= res!1595286 (isDefined!6963 lt!1378666))))

(declare-fun b!3942026 () Bool)

(declare-fun res!1595291 () Bool)

(assert (=> b!3942026 (=> (not res!1595291) (not e!2439165))))

(declare-fun matchR!5496 (Regex!11449 List!41990) Bool)

(assert (=> b!3942026 (= res!1595291 (matchR!5496 (regex!6544 (rule!9504 (_1!23712 (get!13830 lt!1378666)))) (list!15548 (charsOf!4362 (_1!23712 (get!13830 lt!1378666))))))))

(declare-fun b!3942027 () Bool)

(declare-fun e!2439166 () Option!8964)

(declare-fun call!285068 () Option!8964)

(assert (=> b!3942027 (= e!2439166 call!285068)))

(declare-fun b!3942028 () Bool)

(declare-fun res!1595289 () Bool)

(assert (=> b!3942028 (=> (not res!1595289) (not e!2439165))))

(assert (=> b!3942028 (= res!1595289 (< (size!31400 (_2!23712 (get!13830 lt!1378666))) (size!31400 lt!1378611)))))

(declare-fun bm!285063 () Bool)

(declare-fun maxPrefixOneRule!2501 (LexerInterface!6133 Rule!12888 List!41990) Option!8964)

(assert (=> bm!285063 (= call!285068 (maxPrefixOneRule!2501 thiss!20629 (h!47288 rules!2768) lt!1378611))))

(declare-fun d!1169195 () Bool)

(assert (=> d!1169195 e!2439164))

(declare-fun res!1595288 () Bool)

(assert (=> d!1169195 (=> res!1595288 e!2439164)))

(declare-fun isEmpty!24982 (Option!8964) Bool)

(assert (=> d!1169195 (= res!1595288 (isEmpty!24982 lt!1378666))))

(assert (=> d!1169195 (= lt!1378666 e!2439166)))

(declare-fun c!684823 () Bool)

(assert (=> d!1169195 (= c!684823 (and ((_ is Cons!41868) rules!2768) ((_ is Nil!41868) (t!327027 rules!2768))))))

(declare-fun lt!1378667 () Unit!60412)

(declare-fun lt!1378665 () Unit!60412)

(assert (=> d!1169195 (= lt!1378667 lt!1378665)))

(declare-fun isPrefix!3633 (List!41990 List!41990) Bool)

(assert (=> d!1169195 (isPrefix!3633 lt!1378611 lt!1378611)))

(declare-fun lemmaIsPrefixRefl!2294 (List!41990 List!41990) Unit!60412)

(assert (=> d!1169195 (= lt!1378665 (lemmaIsPrefixRefl!2294 lt!1378611 lt!1378611))))

(assert (=> d!1169195 (rulesValidInductive!2364 thiss!20629 rules!2768)))

(assert (=> d!1169195 (= (maxPrefix!3437 thiss!20629 rules!2768 lt!1378611) lt!1378666)))

(declare-fun b!3942029 () Bool)

(declare-fun res!1595290 () Bool)

(assert (=> b!3942029 (=> (not res!1595290) (not e!2439165))))

(assert (=> b!3942029 (= res!1595290 (= (++!10846 (list!15548 (charsOf!4362 (_1!23712 (get!13830 lt!1378666)))) (_2!23712 (get!13830 lt!1378666))) lt!1378611))))

(declare-fun b!3942030 () Bool)

(declare-fun lt!1378663 () Option!8964)

(declare-fun lt!1378664 () Option!8964)

(assert (=> b!3942030 (= e!2439166 (ite (and ((_ is None!8963) lt!1378663) ((_ is None!8963) lt!1378664)) None!8963 (ite ((_ is None!8963) lt!1378664) lt!1378663 (ite ((_ is None!8963) lt!1378663) lt!1378664 (ite (>= (size!31397 (_1!23712 (v!39295 lt!1378663))) (size!31397 (_1!23712 (v!39295 lt!1378664)))) lt!1378663 lt!1378664)))))))

(assert (=> b!3942030 (= lt!1378663 call!285068)))

(assert (=> b!3942030 (= lt!1378664 (maxPrefix!3437 thiss!20629 (t!327027 rules!2768) lt!1378611))))

(declare-fun b!3942031 () Bool)

(assert (=> b!3942031 (= e!2439165 (contains!8383 rules!2768 (rule!9504 (_1!23712 (get!13830 lt!1378666)))))))

(assert (= (and d!1169195 c!684823) b!3942027))

(assert (= (and d!1169195 (not c!684823)) b!3942030))

(assert (= (or b!3942027 b!3942030) bm!285063))

(assert (= (and d!1169195 (not res!1595288)) b!3942025))

(assert (= (and b!3942025 res!1595286) b!3942024))

(assert (= (and b!3942024 res!1595287) b!3942028))

(assert (= (and b!3942028 res!1595289) b!3942029))

(assert (= (and b!3942029 res!1595290) b!3942023))

(assert (= (and b!3942023 res!1595292) b!3942026))

(assert (= (and b!3942026 res!1595291) b!3942031))

(declare-fun m!4510673 () Bool)

(assert (=> b!3942024 m!4510673))

(declare-fun m!4510675 () Bool)

(assert (=> b!3942024 m!4510675))

(assert (=> b!3942024 m!4510675))

(declare-fun m!4510677 () Bool)

(assert (=> b!3942024 m!4510677))

(assert (=> b!3942028 m!4510673))

(declare-fun m!4510679 () Bool)

(assert (=> b!3942028 m!4510679))

(declare-fun m!4510681 () Bool)

(assert (=> b!3942028 m!4510681))

(assert (=> b!3942023 m!4510673))

(declare-fun m!4510683 () Bool)

(assert (=> b!3942023 m!4510683))

(assert (=> b!3942023 m!4510683))

(declare-fun m!4510685 () Bool)

(assert (=> b!3942023 m!4510685))

(assert (=> b!3942031 m!4510673))

(declare-fun m!4510687 () Bool)

(assert (=> b!3942031 m!4510687))

(declare-fun m!4510689 () Bool)

(assert (=> b!3942025 m!4510689))

(assert (=> b!3942029 m!4510673))

(assert (=> b!3942029 m!4510675))

(assert (=> b!3942029 m!4510675))

(assert (=> b!3942029 m!4510677))

(assert (=> b!3942029 m!4510677))

(declare-fun m!4510691 () Bool)

(assert (=> b!3942029 m!4510691))

(declare-fun m!4510693 () Bool)

(assert (=> bm!285063 m!4510693))

(assert (=> b!3942026 m!4510673))

(assert (=> b!3942026 m!4510675))

(assert (=> b!3942026 m!4510675))

(assert (=> b!3942026 m!4510677))

(assert (=> b!3942026 m!4510677))

(declare-fun m!4510695 () Bool)

(assert (=> b!3942026 m!4510695))

(declare-fun m!4510697 () Bool)

(assert (=> b!3942030 m!4510697))

(declare-fun m!4510699 () Bool)

(assert (=> d!1169195 m!4510699))

(declare-fun m!4510701 () Bool)

(assert (=> d!1169195 m!4510701))

(declare-fun m!4510703 () Bool)

(assert (=> d!1169195 m!4510703))

(assert (=> d!1169195 m!4510489))

(assert (=> b!3941838 d!1169195))

(declare-fun b!3942050 () Bool)

(declare-fun e!2439183 () Bool)

(declare-fun lt!1378678 () tuple2!41154)

(assert (=> b!3942050 (= e!2439183 (= (_2!23711 lt!1378678) lt!1378611))))

(declare-fun b!3942051 () Bool)

(declare-fun e!2439181 () Bool)

(assert (=> b!3942051 (= e!2439183 e!2439181)))

(declare-fun res!1595303 () Bool)

(assert (=> b!3942051 (= res!1595303 (< (size!31400 (_2!23711 lt!1378678)) (size!31400 lt!1378611)))))

(assert (=> b!3942051 (=> (not res!1595303) (not e!2439181))))

(declare-fun b!3942052 () Bool)

(declare-fun e!2439182 () tuple2!41154)

(assert (=> b!3942052 (= e!2439182 (tuple2!41155 Nil!41867 lt!1378611))))

(declare-fun d!1169231 () Bool)

(assert (=> d!1169231 e!2439183))

(declare-fun c!684829 () Bool)

(declare-fun size!31401 (List!41991) Int)

(assert (=> d!1169231 (= c!684829 (> (size!31401 (_1!23711 lt!1378678)) 0))))

(assert (=> d!1169231 (= lt!1378678 e!2439182)))

(declare-fun c!684828 () Bool)

(declare-fun lt!1378677 () Option!8964)

(assert (=> d!1169231 (= c!684828 ((_ is Some!8963) lt!1378677))))

(assert (=> d!1169231 (= lt!1378677 (maxPrefix!3437 thiss!20629 rules!2768 lt!1378611))))

(assert (=> d!1169231 (= (lexList!1901 thiss!20629 rules!2768 lt!1378611) lt!1378678)))

(declare-fun b!3942053 () Bool)

(assert (=> b!3942053 (= e!2439181 (not (isEmpty!24979 (_1!23711 lt!1378678))))))

(declare-fun b!3942054 () Bool)

(declare-fun lt!1378676 () tuple2!41154)

(assert (=> b!3942054 (= e!2439182 (tuple2!41155 (Cons!41867 (_1!23712 (v!39295 lt!1378677)) (_1!23711 lt!1378676)) (_2!23711 lt!1378676)))))

(assert (=> b!3942054 (= lt!1378676 (lexList!1901 thiss!20629 rules!2768 (_2!23712 (v!39295 lt!1378677))))))

(assert (= (and d!1169231 c!684828) b!3942054))

(assert (= (and d!1169231 (not c!684828)) b!3942052))

(assert (= (and d!1169231 c!684829) b!3942051))

(assert (= (and d!1169231 (not c!684829)) b!3942050))

(assert (= (and b!3942051 res!1595303) b!3942053))

(declare-fun m!4510705 () Bool)

(assert (=> b!3942051 m!4510705))

(assert (=> b!3942051 m!4510681))

(declare-fun m!4510707 () Bool)

(assert (=> d!1169231 m!4510707))

(assert (=> d!1169231 m!4510479))

(declare-fun m!4510709 () Bool)

(assert (=> b!3942053 m!4510709))

(declare-fun m!4510711 () Bool)

(assert (=> b!3942054 m!4510711))

(assert (=> b!3941847 d!1169231))

(declare-fun b!3942064 () Bool)

(declare-fun e!2439188 () List!41991)

(assert (=> b!3942064 (= e!2439188 (Cons!41867 (h!47287 prefixTokens!80) (++!10845 (t!327026 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1169233 () Bool)

(declare-fun e!2439189 () Bool)

(assert (=> d!1169233 e!2439189))

(declare-fun res!1595309 () Bool)

(assert (=> d!1169233 (=> (not res!1595309) (not e!2439189))))

(declare-fun lt!1378681 () List!41991)

(declare-fun content!6326 (List!41991) (InoxSet Token!12226))

(assert (=> d!1169233 (= res!1595309 (= (content!6326 lt!1378681) ((_ map or) (content!6326 prefixTokens!80) (content!6326 suffixTokens!72))))))

(assert (=> d!1169233 (= lt!1378681 e!2439188)))

(declare-fun c!684832 () Bool)

(assert (=> d!1169233 (= c!684832 ((_ is Nil!41867) prefixTokens!80))))

(assert (=> d!1169233 (= (++!10845 prefixTokens!80 suffixTokens!72) lt!1378681)))

(declare-fun b!3942065 () Bool)

(declare-fun res!1595308 () Bool)

(assert (=> b!3942065 (=> (not res!1595308) (not e!2439189))))

(assert (=> b!3942065 (= res!1595308 (= (size!31401 lt!1378681) (+ (size!31401 prefixTokens!80) (size!31401 suffixTokens!72))))))

(declare-fun b!3942063 () Bool)

(assert (=> b!3942063 (= e!2439188 suffixTokens!72)))

(declare-fun b!3942066 () Bool)

(assert (=> b!3942066 (= e!2439189 (or (not (= suffixTokens!72 Nil!41867)) (= lt!1378681 prefixTokens!80)))))

(assert (= (and d!1169233 c!684832) b!3942063))

(assert (= (and d!1169233 (not c!684832)) b!3942064))

(assert (= (and d!1169233 res!1595309) b!3942065))

(assert (= (and b!3942065 res!1595308) b!3942066))

(declare-fun m!4510713 () Bool)

(assert (=> b!3942064 m!4510713))

(declare-fun m!4510715 () Bool)

(assert (=> d!1169233 m!4510715))

(declare-fun m!4510717 () Bool)

(assert (=> d!1169233 m!4510717))

(declare-fun m!4510719 () Bool)

(assert (=> d!1169233 m!4510719))

(declare-fun m!4510721 () Bool)

(assert (=> b!3942065 m!4510721))

(declare-fun m!4510723 () Bool)

(assert (=> b!3942065 m!4510723))

(declare-fun m!4510725 () Bool)

(assert (=> b!3942065 m!4510725))

(assert (=> b!3941847 d!1169233))

(declare-fun lt!1378684 () List!41990)

(declare-fun e!2439195 () Bool)

(declare-fun b!3942078 () Bool)

(assert (=> b!3942078 (= e!2439195 (or (not (= suffix!1176 Nil!41866)) (= lt!1378684 prefix!426)))))

(declare-fun b!3942075 () Bool)

(declare-fun e!2439194 () List!41990)

(assert (=> b!3942075 (= e!2439194 suffix!1176)))

(declare-fun b!3942077 () Bool)

(declare-fun res!1595315 () Bool)

(assert (=> b!3942077 (=> (not res!1595315) (not e!2439195))))

(assert (=> b!3942077 (= res!1595315 (= (size!31400 lt!1378684) (+ (size!31400 prefix!426) (size!31400 suffix!1176))))))

(declare-fun b!3942076 () Bool)

(assert (=> b!3942076 (= e!2439194 (Cons!41866 (h!47286 prefix!426) (++!10846 (t!327025 prefix!426) suffix!1176)))))

(declare-fun d!1169235 () Bool)

(assert (=> d!1169235 e!2439195))

(declare-fun res!1595314 () Bool)

(assert (=> d!1169235 (=> (not res!1595314) (not e!2439195))))

(declare-fun content!6327 (List!41990) (InoxSet C!23084))

(assert (=> d!1169235 (= res!1595314 (= (content!6327 lt!1378684) ((_ map or) (content!6327 prefix!426) (content!6327 suffix!1176))))))

(assert (=> d!1169235 (= lt!1378684 e!2439194)))

(declare-fun c!684835 () Bool)

(assert (=> d!1169235 (= c!684835 ((_ is Nil!41866) prefix!426))))

(assert (=> d!1169235 (= (++!10846 prefix!426 suffix!1176) lt!1378684)))

(assert (= (and d!1169235 c!684835) b!3942075))

(assert (= (and d!1169235 (not c!684835)) b!3942076))

(assert (= (and d!1169235 res!1595314) b!3942077))

(assert (= (and b!3942077 res!1595315) b!3942078))

(declare-fun m!4510727 () Bool)

(assert (=> b!3942077 m!4510727))

(declare-fun m!4510729 () Bool)

(assert (=> b!3942077 m!4510729))

(declare-fun m!4510731 () Bool)

(assert (=> b!3942077 m!4510731))

(declare-fun m!4510733 () Bool)

(assert (=> b!3942076 m!4510733))

(declare-fun m!4510735 () Bool)

(assert (=> d!1169235 m!4510735))

(declare-fun m!4510737 () Bool)

(assert (=> d!1169235 m!4510737))

(declare-fun m!4510739 () Bool)

(assert (=> d!1169235 m!4510739))

(assert (=> b!3941847 d!1169235))

(declare-fun d!1169237 () Bool)

(assert (=> d!1169237 (= (inv!56070 (tag!7404 (rule!9504 (h!47287 suffixTokens!72)))) (= (mod (str.len (value!207137 (tag!7404 (rule!9504 (h!47287 suffixTokens!72))))) 2) 0))))

(assert (=> b!3941841 d!1169237))

(declare-fun d!1169239 () Bool)

(declare-fun res!1595316 () Bool)

(declare-fun e!2439196 () Bool)

(assert (=> d!1169239 (=> (not res!1595316) (not e!2439196))))

(assert (=> d!1169239 (= res!1595316 (semiInverseModEq!2817 (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))) (toValue!9008 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72))))))))

(assert (=> d!1169239 (= (inv!56073 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))) e!2439196)))

(declare-fun b!3942079 () Bool)

(assert (=> b!3942079 (= e!2439196 (equivClasses!2716 (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))) (toValue!9008 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72))))))))

(assert (= (and d!1169239 res!1595316) b!3942079))

(declare-fun m!4510741 () Bool)

(assert (=> d!1169239 m!4510741))

(declare-fun m!4510743 () Bool)

(assert (=> b!3942079 m!4510743))

(assert (=> b!3941841 d!1169239))

(declare-fun d!1169241 () Bool)

(assert (=> d!1169241 true))

(declare-fun lt!1378688 () Bool)

(declare-fun lambda!126667 () Int)

(declare-fun forall!8319 (List!41992 Int) Bool)

(assert (=> d!1169241 (= lt!1378688 (forall!8319 rules!2768 lambda!126667))))

(declare-fun e!2439252 () Bool)

(assert (=> d!1169241 (= lt!1378688 e!2439252)))

(declare-fun res!1595324 () Bool)

(assert (=> d!1169241 (=> res!1595324 e!2439252)))

(assert (=> d!1169241 (= res!1595324 (not ((_ is Cons!41868) rules!2768)))))

(assert (=> d!1169241 (= (rulesValidInductive!2364 thiss!20629 rules!2768) lt!1378688)))

(declare-fun b!3942148 () Bool)

(declare-fun e!2439251 () Bool)

(assert (=> b!3942148 (= e!2439252 e!2439251)))

(declare-fun res!1595323 () Bool)

(assert (=> b!3942148 (=> (not res!1595323) (not e!2439251))))

(declare-fun ruleValid!2486 (LexerInterface!6133 Rule!12888) Bool)

(assert (=> b!3942148 (= res!1595323 (ruleValid!2486 thiss!20629 (h!47288 rules!2768)))))

(declare-fun b!3942149 () Bool)

(assert (=> b!3942149 (= e!2439251 (rulesValidInductive!2364 thiss!20629 (t!327027 rules!2768)))))

(assert (= (and d!1169241 (not res!1595324)) b!3942148))

(assert (= (and b!3942148 res!1595323) b!3942149))

(declare-fun m!4510771 () Bool)

(assert (=> d!1169241 m!4510771))

(declare-fun m!4510773 () Bool)

(assert (=> b!3942148 m!4510773))

(declare-fun m!4510775 () Bool)

(assert (=> b!3942149 m!4510775))

(assert (=> b!3941830 d!1169241))

(declare-fun d!1169245 () Bool)

(declare-fun res!1595325 () Bool)

(declare-fun e!2439253 () Bool)

(assert (=> d!1169245 (=> (not res!1595325) (not e!2439253))))

(assert (=> d!1169245 (= res!1595325 (not (isEmpty!24978 (originalCharacters!7144 (h!47287 suffixTokens!72)))))))

(assert (=> d!1169245 (= (inv!56074 (h!47287 suffixTokens!72)) e!2439253)))

(declare-fun b!3942152 () Bool)

(declare-fun res!1595326 () Bool)

(assert (=> b!3942152 (=> (not res!1595326) (not e!2439253))))

(assert (=> b!3942152 (= res!1595326 (= (originalCharacters!7144 (h!47287 suffixTokens!72)) (list!15548 (dynLambda!17929 (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))) (value!207138 (h!47287 suffixTokens!72))))))))

(declare-fun b!3942153 () Bool)

(assert (=> b!3942153 (= e!2439253 (= (size!31397 (h!47287 suffixTokens!72)) (size!31400 (originalCharacters!7144 (h!47287 suffixTokens!72)))))))

(assert (= (and d!1169245 res!1595325) b!3942152))

(assert (= (and b!3942152 res!1595326) b!3942153))

(declare-fun b_lambda!115281 () Bool)

(assert (=> (not b_lambda!115281) (not b!3942152)))

(declare-fun tb!236339 () Bool)

(declare-fun t!327059 () Bool)

(assert (=> (and b!3941848 (= (toChars!8867 (transformation!6544 (h!47288 rules!2768))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72))))) t!327059) tb!236339))

(declare-fun b!3942154 () Bool)

(declare-fun e!2439254 () Bool)

(declare-fun tp!1199806 () Bool)

(assert (=> b!3942154 (= e!2439254 (and (inv!56077 (c!684789 (dynLambda!17929 (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))) (value!207138 (h!47287 suffixTokens!72))))) tp!1199806))))

(declare-fun result!286296 () Bool)

(assert (=> tb!236339 (= result!286296 (and (inv!56078 (dynLambda!17929 (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))) (value!207138 (h!47287 suffixTokens!72)))) e!2439254))))

(assert (= tb!236339 b!3942154))

(declare-fun m!4510777 () Bool)

(assert (=> b!3942154 m!4510777))

(declare-fun m!4510779 () Bool)

(assert (=> tb!236339 m!4510779))

(assert (=> b!3942152 t!327059))

(declare-fun b_and!301313 () Bool)

(assert (= b_and!301283 (and (=> t!327059 result!286296) b_and!301313)))

(declare-fun t!327061 () Bool)

(declare-fun tb!236341 () Bool)

(assert (=> (and b!3941834 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72))))) t!327061) tb!236341))

(declare-fun result!286298 () Bool)

(assert (= result!286298 result!286296))

(assert (=> b!3942152 t!327061))

(declare-fun b_and!301315 () Bool)

(assert (= b_and!301285 (and (=> t!327061 result!286298) b_and!301315)))

(declare-fun t!327063 () Bool)

(declare-fun tb!236343 () Bool)

(assert (=> (and b!3941849 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72))))) t!327063) tb!236343))

(declare-fun result!286300 () Bool)

(assert (= result!286300 result!286296))

(assert (=> b!3942152 t!327063))

(declare-fun b_and!301317 () Bool)

(assert (= b_and!301287 (and (=> t!327063 result!286300) b_and!301317)))

(declare-fun m!4510781 () Bool)

(assert (=> d!1169245 m!4510781))

(declare-fun m!4510783 () Bool)

(assert (=> b!3942152 m!4510783))

(assert (=> b!3942152 m!4510783))

(declare-fun m!4510785 () Bool)

(assert (=> b!3942152 m!4510785))

(declare-fun m!4510787 () Bool)

(assert (=> b!3942153 m!4510787))

(assert (=> b!3941840 d!1169245))

(declare-fun b!3942155 () Bool)

(declare-fun e!2439257 () Bool)

(declare-fun lt!1378691 () tuple2!41154)

(assert (=> b!3942155 (= e!2439257 (= (_2!23711 lt!1378691) suffix!1176))))

(declare-fun b!3942156 () Bool)

(declare-fun e!2439255 () Bool)

(assert (=> b!3942156 (= e!2439257 e!2439255)))

(declare-fun res!1595327 () Bool)

(assert (=> b!3942156 (= res!1595327 (< (size!31400 (_2!23711 lt!1378691)) (size!31400 suffix!1176)))))

(assert (=> b!3942156 (=> (not res!1595327) (not e!2439255))))

(declare-fun b!3942157 () Bool)

(declare-fun e!2439256 () tuple2!41154)

(assert (=> b!3942157 (= e!2439256 (tuple2!41155 Nil!41867 suffix!1176))))

(declare-fun d!1169247 () Bool)

(assert (=> d!1169247 e!2439257))

(declare-fun c!684837 () Bool)

(assert (=> d!1169247 (= c!684837 (> (size!31401 (_1!23711 lt!1378691)) 0))))

(assert (=> d!1169247 (= lt!1378691 e!2439256)))

(declare-fun c!684836 () Bool)

(declare-fun lt!1378690 () Option!8964)

(assert (=> d!1169247 (= c!684836 ((_ is Some!8963) lt!1378690))))

(assert (=> d!1169247 (= lt!1378690 (maxPrefix!3437 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1169247 (= (lexList!1901 thiss!20629 rules!2768 suffix!1176) lt!1378691)))

(declare-fun b!3942158 () Bool)

(assert (=> b!3942158 (= e!2439255 (not (isEmpty!24979 (_1!23711 lt!1378691))))))

(declare-fun b!3942159 () Bool)

(declare-fun lt!1378689 () tuple2!41154)

(assert (=> b!3942159 (= e!2439256 (tuple2!41155 (Cons!41867 (_1!23712 (v!39295 lt!1378690)) (_1!23711 lt!1378689)) (_2!23711 lt!1378689)))))

(assert (=> b!3942159 (= lt!1378689 (lexList!1901 thiss!20629 rules!2768 (_2!23712 (v!39295 lt!1378690))))))

(assert (= (and d!1169247 c!684836) b!3942159))

(assert (= (and d!1169247 (not c!684836)) b!3942157))

(assert (= (and d!1169247 c!684837) b!3942156))

(assert (= (and d!1169247 (not c!684837)) b!3942155))

(assert (= (and b!3942156 res!1595327) b!3942158))

(declare-fun m!4510789 () Bool)

(assert (=> b!3942156 m!4510789))

(assert (=> b!3942156 m!4510731))

(declare-fun m!4510791 () Bool)

(assert (=> d!1169247 m!4510791))

(declare-fun m!4510793 () Bool)

(assert (=> d!1169247 m!4510793))

(declare-fun m!4510795 () Bool)

(assert (=> b!3942158 m!4510795))

(declare-fun m!4510797 () Bool)

(assert (=> b!3942159 m!4510797))

(assert (=> b!3941829 d!1169247))

(declare-fun b!3942160 () Bool)

(declare-fun e!2439260 () Bool)

(assert (=> b!3942160 (= e!2439260 (inv!17 (value!207138 (h!47287 suffixTokens!72))))))

(declare-fun b!3942161 () Bool)

(declare-fun e!2439258 () Bool)

(assert (=> b!3942161 (= e!2439258 (inv!16 (value!207138 (h!47287 suffixTokens!72))))))

(declare-fun d!1169249 () Bool)

(declare-fun c!684838 () Bool)

(assert (=> d!1169249 (= c!684838 ((_ is IntegerValue!20322) (value!207138 (h!47287 suffixTokens!72))))))

(assert (=> d!1169249 (= (inv!21 (value!207138 (h!47287 suffixTokens!72))) e!2439258)))

(declare-fun b!3942162 () Bool)

(assert (=> b!3942162 (= e!2439258 e!2439260)))

(declare-fun c!684839 () Bool)

(assert (=> b!3942162 (= c!684839 ((_ is IntegerValue!20323) (value!207138 (h!47287 suffixTokens!72))))))

(declare-fun b!3942163 () Bool)

(declare-fun e!2439259 () Bool)

(assert (=> b!3942163 (= e!2439259 (inv!15 (value!207138 (h!47287 suffixTokens!72))))))

(declare-fun b!3942164 () Bool)

(declare-fun res!1595328 () Bool)

(assert (=> b!3942164 (=> res!1595328 e!2439259)))

(assert (=> b!3942164 (= res!1595328 (not ((_ is IntegerValue!20324) (value!207138 (h!47287 suffixTokens!72)))))))

(assert (=> b!3942164 (= e!2439260 e!2439259)))

(assert (= (and d!1169249 c!684838) b!3942161))

(assert (= (and d!1169249 (not c!684838)) b!3942162))

(assert (= (and b!3942162 c!684839) b!3942160))

(assert (= (and b!3942162 (not c!684839)) b!3942164))

(assert (= (and b!3942164 (not res!1595328)) b!3942163))

(declare-fun m!4510799 () Bool)

(assert (=> b!3942160 m!4510799))

(declare-fun m!4510801 () Bool)

(assert (=> b!3942161 m!4510801))

(declare-fun m!4510803 () Bool)

(assert (=> b!3942163 m!4510803))

(assert (=> b!3941850 d!1169249))

(declare-fun b!3942169 () Bool)

(declare-fun e!2439263 () Bool)

(declare-fun tp!1199809 () Bool)

(assert (=> b!3942169 (= e!2439263 (and tp_is_empty!19869 tp!1199809))))

(assert (=> b!3941833 (= tp!1199722 e!2439263)))

(assert (= (and b!3941833 ((_ is Cons!41866) (t!327025 suffixResult!91))) b!3942169))

(declare-fun b!3942180 () Bool)

(declare-fun b_free!107885 () Bool)

(declare-fun b_next!108589 () Bool)

(assert (=> b!3942180 (= b_free!107885 (not b_next!108589))))

(declare-fun tp!1199818 () Bool)

(declare-fun b_and!301319 () Bool)

(assert (=> b!3942180 (= tp!1199818 b_and!301319)))

(declare-fun b_free!107887 () Bool)

(declare-fun b_next!108591 () Bool)

(assert (=> b!3942180 (= b_free!107887 (not b_next!108591))))

(declare-fun tb!236345 () Bool)

(declare-fun t!327065 () Bool)

(assert (=> (and b!3942180 (= (toChars!8867 (transformation!6544 (h!47288 (t!327027 rules!2768)))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80))))) t!327065) tb!236345))

(declare-fun result!286306 () Bool)

(assert (= result!286306 result!286254))

(assert (=> b!3941874 t!327065))

(declare-fun t!327067 () Bool)

(declare-fun tb!236347 () Bool)

(assert (=> (and b!3942180 (= (toChars!8867 (transformation!6544 (h!47288 (t!327027 rules!2768)))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72))))) t!327067) tb!236347))

(declare-fun result!286308 () Bool)

(assert (= result!286308 result!286296))

(assert (=> b!3942152 t!327067))

(declare-fun tp!1199819 () Bool)

(declare-fun b_and!301321 () Bool)

(assert (=> b!3942180 (= tp!1199819 (and (=> t!327065 result!286306) (=> t!327067 result!286308) b_and!301321))))

(declare-fun e!2439272 () Bool)

(assert (=> b!3942180 (= e!2439272 (and tp!1199818 tp!1199819))))

(declare-fun tp!1199821 () Bool)

(declare-fun e!2439275 () Bool)

(declare-fun b!3942179 () Bool)

(assert (=> b!3942179 (= e!2439275 (and tp!1199821 (inv!56070 (tag!7404 (h!47288 (t!327027 rules!2768)))) (inv!56073 (transformation!6544 (h!47288 (t!327027 rules!2768)))) e!2439272))))

(declare-fun b!3942178 () Bool)

(declare-fun e!2439273 () Bool)

(declare-fun tp!1199820 () Bool)

(assert (=> b!3942178 (= e!2439273 (and e!2439275 tp!1199820))))

(assert (=> b!3941832 (= tp!1199732 e!2439273)))

(assert (= b!3942179 b!3942180))

(assert (= b!3942178 b!3942179))

(assert (= (and b!3941832 ((_ is Cons!41868) (t!327027 rules!2768))) b!3942178))

(declare-fun m!4510805 () Bool)

(assert (=> b!3942179 m!4510805))

(declare-fun m!4510807 () Bool)

(assert (=> b!3942179 m!4510807))

(declare-fun b!3942193 () Bool)

(declare-fun e!2439278 () Bool)

(declare-fun tp!1199836 () Bool)

(assert (=> b!3942193 (= e!2439278 tp!1199836)))

(declare-fun b!3942191 () Bool)

(assert (=> b!3942191 (= e!2439278 tp_is_empty!19869)))

(assert (=> b!3941831 (= tp!1199723 e!2439278)))

(declare-fun b!3942194 () Bool)

(declare-fun tp!1199832 () Bool)

(declare-fun tp!1199835 () Bool)

(assert (=> b!3942194 (= e!2439278 (and tp!1199832 tp!1199835))))

(declare-fun b!3942192 () Bool)

(declare-fun tp!1199834 () Bool)

(declare-fun tp!1199833 () Bool)

(assert (=> b!3942192 (= e!2439278 (and tp!1199834 tp!1199833))))

(assert (= (and b!3941831 ((_ is ElementMatch!11449) (regex!6544 (h!47288 rules!2768)))) b!3942191))

(assert (= (and b!3941831 ((_ is Concat!18224) (regex!6544 (h!47288 rules!2768)))) b!3942192))

(assert (= (and b!3941831 ((_ is Star!11449) (regex!6544 (h!47288 rules!2768)))) b!3942193))

(assert (= (and b!3941831 ((_ is Union!11449) (regex!6544 (h!47288 rules!2768)))) b!3942194))

(declare-fun b!3942197 () Bool)

(declare-fun e!2439279 () Bool)

(declare-fun tp!1199841 () Bool)

(assert (=> b!3942197 (= e!2439279 tp!1199841)))

(declare-fun b!3942195 () Bool)

(assert (=> b!3942195 (= e!2439279 tp_is_empty!19869)))

(assert (=> b!3941846 (= tp!1199721 e!2439279)))

(declare-fun b!3942198 () Bool)

(declare-fun tp!1199837 () Bool)

(declare-fun tp!1199840 () Bool)

(assert (=> b!3942198 (= e!2439279 (and tp!1199837 tp!1199840))))

(declare-fun b!3942196 () Bool)

(declare-fun tp!1199839 () Bool)

(declare-fun tp!1199838 () Bool)

(assert (=> b!3942196 (= e!2439279 (and tp!1199839 tp!1199838))))

(assert (= (and b!3941846 ((_ is ElementMatch!11449) (regex!6544 (rule!9504 (h!47287 prefixTokens!80))))) b!3942195))

(assert (= (and b!3941846 ((_ is Concat!18224) (regex!6544 (rule!9504 (h!47287 prefixTokens!80))))) b!3942196))

(assert (= (and b!3941846 ((_ is Star!11449) (regex!6544 (rule!9504 (h!47287 prefixTokens!80))))) b!3942197))

(assert (= (and b!3941846 ((_ is Union!11449) (regex!6544 (rule!9504 (h!47287 prefixTokens!80))))) b!3942198))

(declare-fun b!3942212 () Bool)

(declare-fun b_free!107889 () Bool)

(declare-fun b_next!108593 () Bool)

(assert (=> b!3942212 (= b_free!107889 (not b_next!108593))))

(declare-fun tp!1199853 () Bool)

(declare-fun b_and!301323 () Bool)

(assert (=> b!3942212 (= tp!1199853 b_and!301323)))

(declare-fun b_free!107891 () Bool)

(declare-fun b_next!108595 () Bool)

(assert (=> b!3942212 (= b_free!107891 (not b_next!108595))))

(declare-fun t!327069 () Bool)

(declare-fun tb!236349 () Bool)

(assert (=> (and b!3942212 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 (t!327026 prefixTokens!80))))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80))))) t!327069) tb!236349))

(declare-fun result!286314 () Bool)

(assert (= result!286314 result!286254))

(assert (=> b!3941874 t!327069))

(declare-fun t!327071 () Bool)

(declare-fun tb!236351 () Bool)

(assert (=> (and b!3942212 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 (t!327026 prefixTokens!80))))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72))))) t!327071) tb!236351))

(declare-fun result!286316 () Bool)

(assert (= result!286316 result!286296))

(assert (=> b!3942152 t!327071))

(declare-fun tp!1199852 () Bool)

(declare-fun b_and!301325 () Bool)

(assert (=> b!3942212 (= tp!1199852 (and (=> t!327069 result!286314) (=> t!327071 result!286316) b_and!301325))))

(declare-fun b!3942210 () Bool)

(declare-fun e!2439297 () Bool)

(declare-fun e!2439295 () Bool)

(declare-fun tp!1199855 () Bool)

(assert (=> b!3942210 (= e!2439295 (and (inv!21 (value!207138 (h!47287 (t!327026 prefixTokens!80)))) e!2439297 tp!1199855))))

(declare-fun e!2439296 () Bool)

(assert (=> b!3942212 (= e!2439296 (and tp!1199853 tp!1199852))))

(declare-fun e!2439294 () Bool)

(assert (=> b!3941845 (= tp!1199729 e!2439294)))

(declare-fun tp!1199856 () Bool)

(declare-fun b!3942209 () Bool)

(assert (=> b!3942209 (= e!2439294 (and (inv!56074 (h!47287 (t!327026 prefixTokens!80))) e!2439295 tp!1199856))))

(declare-fun b!3942211 () Bool)

(declare-fun tp!1199854 () Bool)

(assert (=> b!3942211 (= e!2439297 (and tp!1199854 (inv!56070 (tag!7404 (rule!9504 (h!47287 (t!327026 prefixTokens!80))))) (inv!56073 (transformation!6544 (rule!9504 (h!47287 (t!327026 prefixTokens!80))))) e!2439296))))

(assert (= b!3942211 b!3942212))

(assert (= b!3942210 b!3942211))

(assert (= b!3942209 b!3942210))

(assert (= (and b!3941845 ((_ is Cons!41867) (t!327026 prefixTokens!80))) b!3942209))

(declare-fun m!4510809 () Bool)

(assert (=> b!3942210 m!4510809))

(declare-fun m!4510811 () Bool)

(assert (=> b!3942209 m!4510811))

(declare-fun m!4510813 () Bool)

(assert (=> b!3942211 m!4510813))

(declare-fun m!4510815 () Bool)

(assert (=> b!3942211 m!4510815))

(declare-fun b!3942213 () Bool)

(declare-fun e!2439298 () Bool)

(declare-fun tp!1199857 () Bool)

(assert (=> b!3942213 (= e!2439298 (and tp_is_empty!19869 tp!1199857))))

(assert (=> b!3941828 (= tp!1199725 e!2439298)))

(assert (= (and b!3941828 ((_ is Cons!41866) (originalCharacters!7144 (h!47287 prefixTokens!80)))) b!3942213))

(declare-fun b!3942214 () Bool)

(declare-fun e!2439299 () Bool)

(declare-fun tp!1199858 () Bool)

(assert (=> b!3942214 (= e!2439299 (and tp_is_empty!19869 tp!1199858))))

(assert (=> b!3941837 (= tp!1199730 e!2439299)))

(assert (= (and b!3941837 ((_ is Cons!41866) (t!327025 prefix!426))) b!3942214))

(declare-fun b!3942217 () Bool)

(declare-fun e!2439300 () Bool)

(declare-fun tp!1199863 () Bool)

(assert (=> b!3942217 (= e!2439300 tp!1199863)))

(declare-fun b!3942215 () Bool)

(assert (=> b!3942215 (= e!2439300 tp_is_empty!19869)))

(assert (=> b!3941841 (= tp!1199720 e!2439300)))

(declare-fun b!3942218 () Bool)

(declare-fun tp!1199859 () Bool)

(declare-fun tp!1199862 () Bool)

(assert (=> b!3942218 (= e!2439300 (and tp!1199859 tp!1199862))))

(declare-fun b!3942216 () Bool)

(declare-fun tp!1199861 () Bool)

(declare-fun tp!1199860 () Bool)

(assert (=> b!3942216 (= e!2439300 (and tp!1199861 tp!1199860))))

(assert (= (and b!3941841 ((_ is ElementMatch!11449) (regex!6544 (rule!9504 (h!47287 suffixTokens!72))))) b!3942215))

(assert (= (and b!3941841 ((_ is Concat!18224) (regex!6544 (rule!9504 (h!47287 suffixTokens!72))))) b!3942216))

(assert (= (and b!3941841 ((_ is Star!11449) (regex!6544 (rule!9504 (h!47287 suffixTokens!72))))) b!3942217))

(assert (= (and b!3941841 ((_ is Union!11449) (regex!6544 (rule!9504 (h!47287 suffixTokens!72))))) b!3942218))

(declare-fun b!3942222 () Bool)

(declare-fun b_free!107893 () Bool)

(declare-fun b_next!108597 () Bool)

(assert (=> b!3942222 (= b_free!107893 (not b_next!108597))))

(declare-fun tp!1199865 () Bool)

(declare-fun b_and!301327 () Bool)

(assert (=> b!3942222 (= tp!1199865 b_and!301327)))

(declare-fun b_free!107895 () Bool)

(declare-fun b_next!108599 () Bool)

(assert (=> b!3942222 (= b_free!107895 (not b_next!108599))))

(declare-fun tb!236353 () Bool)

(declare-fun t!327073 () Bool)

(assert (=> (and b!3942222 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 (t!327026 suffixTokens!72))))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80))))) t!327073) tb!236353))

(declare-fun result!286318 () Bool)

(assert (= result!286318 result!286254))

(assert (=> b!3941874 t!327073))

(declare-fun t!327075 () Bool)

(declare-fun tb!236355 () Bool)

(assert (=> (and b!3942222 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 (t!327026 suffixTokens!72))))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72))))) t!327075) tb!236355))

(declare-fun result!286320 () Bool)

(assert (= result!286320 result!286296))

(assert (=> b!3942152 t!327075))

(declare-fun b_and!301329 () Bool)

(declare-fun tp!1199864 () Bool)

(assert (=> b!3942222 (= tp!1199864 (and (=> t!327073 result!286318) (=> t!327075 result!286320) b_and!301329))))

(declare-fun b!3942220 () Bool)

(declare-fun e!2439306 () Bool)

(declare-fun tp!1199867 () Bool)

(declare-fun e!2439304 () Bool)

(assert (=> b!3942220 (= e!2439304 (and (inv!21 (value!207138 (h!47287 (t!327026 suffixTokens!72)))) e!2439306 tp!1199867))))

(declare-fun e!2439305 () Bool)

(assert (=> b!3942222 (= e!2439305 (and tp!1199865 tp!1199864))))

(declare-fun e!2439303 () Bool)

(assert (=> b!3941840 (= tp!1199728 e!2439303)))

(declare-fun b!3942219 () Bool)

(declare-fun tp!1199868 () Bool)

(assert (=> b!3942219 (= e!2439303 (and (inv!56074 (h!47287 (t!327026 suffixTokens!72))) e!2439304 tp!1199868))))

(declare-fun tp!1199866 () Bool)

(declare-fun b!3942221 () Bool)

(assert (=> b!3942221 (= e!2439306 (and tp!1199866 (inv!56070 (tag!7404 (rule!9504 (h!47287 (t!327026 suffixTokens!72))))) (inv!56073 (transformation!6544 (rule!9504 (h!47287 (t!327026 suffixTokens!72))))) e!2439305))))

(assert (= b!3942221 b!3942222))

(assert (= b!3942220 b!3942221))

(assert (= b!3942219 b!3942220))

(assert (= (and b!3941840 ((_ is Cons!41867) (t!327026 suffixTokens!72))) b!3942219))

(declare-fun m!4510817 () Bool)

(assert (=> b!3942220 m!4510817))

(declare-fun m!4510819 () Bool)

(assert (=> b!3942219 m!4510819))

(declare-fun m!4510821 () Bool)

(assert (=> b!3942221 m!4510821))

(declare-fun m!4510823 () Bool)

(assert (=> b!3942221 m!4510823))

(declare-fun b!3942223 () Bool)

(declare-fun e!2439307 () Bool)

(declare-fun tp!1199869 () Bool)

(assert (=> b!3942223 (= e!2439307 (and tp_is_empty!19869 tp!1199869))))

(assert (=> b!3941850 (= tp!1199731 e!2439307)))

(assert (= (and b!3941850 ((_ is Cons!41866) (originalCharacters!7144 (h!47287 suffixTokens!72)))) b!3942223))

(declare-fun b!3942224 () Bool)

(declare-fun e!2439308 () Bool)

(declare-fun tp!1199870 () Bool)

(assert (=> b!3942224 (= e!2439308 (and tp_is_empty!19869 tp!1199870))))

(assert (=> b!3941839 (= tp!1199727 e!2439308)))

(assert (= (and b!3941839 ((_ is Cons!41866) (t!327025 suffix!1176))) b!3942224))

(declare-fun b_lambda!115283 () Bool)

(assert (= b_lambda!115281 (or (and b!3942212 b_free!107891 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 (t!327026 prefixTokens!80))))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))))) (and b!3941848 b_free!107863 (= (toChars!8867 (transformation!6544 (h!47288 rules!2768))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))))) (and b!3941849 b_free!107871) (and b!3942222 b_free!107895 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 (t!327026 suffixTokens!72))))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))))) (and b!3941834 b_free!107867 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))))) (and b!3942180 b_free!107887 (= (toChars!8867 (transformation!6544 (h!47288 (t!327027 rules!2768)))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))))) b_lambda!115283)))

(declare-fun b_lambda!115285 () Bool)

(assert (= b_lambda!115271 (or (and b!3942180 b_free!107887 (= (toChars!8867 (transformation!6544 (h!47288 (t!327027 rules!2768)))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))))) (and b!3941834 b_free!107867) (and b!3941849 b_free!107871 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 suffixTokens!72)))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))))) (and b!3941848 b_free!107863 (= (toChars!8867 (transformation!6544 (h!47288 rules!2768))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))))) (and b!3942222 b_free!107895 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 (t!327026 suffixTokens!72))))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))))) (and b!3942212 b_free!107891 (= (toChars!8867 (transformation!6544 (rule!9504 (h!47287 (t!327026 prefixTokens!80))))) (toChars!8867 (transformation!6544 (rule!9504 (h!47287 prefixTokens!80)))))) b_lambda!115285)))

(check-sat b_and!301319 (not b_lambda!115283) (not b!3942221) b_and!301317 (not d!1169189) (not b!3942223) (not b!3942192) b_and!301329 (not b!3941896) (not tb!236309) (not d!1169195) (not b!3942025) (not b!3941895) (not b!3942169) (not b_next!108591) (not d!1169187) (not b!3942160) (not b_next!108597) (not b_next!108569) (not b!3941865) (not b!3942023) (not b!3942076) (not b!3942159) tp_is_empty!19869 (not d!1169191) (not b!3942214) (not b_next!108571) (not d!1169163) (not b!3942064) (not b_next!108567) (not b!3942197) (not b!3942158) (not d!1169235) b_and!301279 (not b!3942219) (not b!3942210) (not b!3942024) (not d!1169241) (not b_next!108599) b_and!301271 (not b!3942211) (not b!3942154) (not b!3942149) (not b!3942209) (not b!3942028) (not b!3942194) (not b!3942030) b_and!301275 (not b!3942220) (not tb!236339) (not b!3941869) b_and!301315 (not b!3941856) (not b!3942193) (not d!1169247) (not b!3942161) (not b_next!108595) (not b!3942153) b_and!301325 (not b!3942051) (not b!3942026) (not b!3942217) (not b_lambda!115285) b_and!301327 (not b!3942196) (not b!3942224) (not d!1169239) (not b!3942216) (not b!3942053) (not b_next!108589) (not d!1169175) (not b!3942179) (not b!3941898) (not b!3942163) (not b_next!108565) (not b!3941866) (not b_next!108593) (not b!3942148) (not b!3941874) b_and!301321 (not b!3942029) b_and!301323 (not b!3942152) (not b!3942054) (not b!3941880) (not bm!285063) (not b_next!108575) (not b_next!108573) (not d!1169231) (not b!3942031) b_and!301313 (not b!3942218) (not b!3942213) (not d!1169245) (not b!3942065) (not b!3941875) (not b!3942178) (not d!1169165) (not b!3942079) (not d!1169233) (not b!3942156) (not b!3942077) (not b!3942198))
(check-sat (not b_next!108591) b_and!301319 (not b_next!108571) (not b_next!108567) b_and!301279 b_and!301275 b_and!301315 b_and!301327 (not b_next!108589) b_and!301323 b_and!301313 b_and!301329 b_and!301317 (not b_next!108597) (not b_next!108569) (not b_next!108599) b_and!301271 (not b_next!108595) b_and!301325 (not b_next!108565) b_and!301321 (not b_next!108593) (not b_next!108575) (not b_next!108573))
