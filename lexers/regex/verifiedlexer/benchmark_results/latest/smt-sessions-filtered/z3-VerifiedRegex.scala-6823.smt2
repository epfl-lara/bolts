; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358788 () Bool)

(assert start!358788)

(declare-fun b!3833936 () Bool)

(declare-fun b_free!101805 () Bool)

(declare-fun b_next!102509 () Bool)

(assert (=> b!3833936 (= b_free!101805 (not b_next!102509))))

(declare-fun tp!1160273 () Bool)

(declare-fun b_and!284995 () Bool)

(assert (=> b!3833936 (= tp!1160273 b_and!284995)))

(declare-fun b_free!101807 () Bool)

(declare-fun b_next!102511 () Bool)

(assert (=> b!3833936 (= b_free!101807 (not b_next!102511))))

(declare-fun tp!1160274 () Bool)

(declare-fun b_and!284997 () Bool)

(assert (=> b!3833936 (= tp!1160274 b_and!284997)))

(declare-fun b!3833943 () Bool)

(declare-fun b_free!101809 () Bool)

(declare-fun b_next!102513 () Bool)

(assert (=> b!3833943 (= b_free!101809 (not b_next!102513))))

(declare-fun tp!1160280 () Bool)

(declare-fun b_and!284999 () Bool)

(assert (=> b!3833943 (= tp!1160280 b_and!284999)))

(declare-fun b_free!101811 () Bool)

(declare-fun b_next!102515 () Bool)

(assert (=> b!3833943 (= b_free!101811 (not b_next!102515))))

(declare-fun tp!1160279 () Bool)

(declare-fun b_and!285001 () Bool)

(assert (=> b!3833943 (= tp!1160279 b_and!285001)))

(declare-fun b!3833933 () Bool)

(declare-fun b_free!101813 () Bool)

(declare-fun b_next!102517 () Bool)

(assert (=> b!3833933 (= b_free!101813 (not b_next!102517))))

(declare-fun tp!1160278 () Bool)

(declare-fun b_and!285003 () Bool)

(assert (=> b!3833933 (= tp!1160278 b_and!285003)))

(declare-fun b_free!101815 () Bool)

(declare-fun b_next!102519 () Bool)

(assert (=> b!3833933 (= b_free!101815 (not b_next!102519))))

(declare-fun tp!1160281 () Bool)

(declare-fun b_and!285005 () Bool)

(assert (=> b!3833933 (= tp!1160281 b_and!285005)))

(declare-fun res!1551878 () Bool)

(declare-fun e!2367710 () Bool)

(assert (=> start!358788 (=> (not res!1551878) (not e!2367710))))

(declare-datatypes ((LexerInterface!5823 0))(
  ( (LexerInterfaceExt!5820 (__x!25145 Int)) (Lexer!5821) )
))
(declare-fun thiss!20629 () LexerInterface!5823)

(get-info :version)

(assert (=> start!358788 (= res!1551878 ((_ is Lexer!5821) thiss!20629))))

(assert (=> start!358788 e!2367710))

(declare-fun e!2367696 () Bool)

(assert (=> start!358788 e!2367696))

(assert (=> start!358788 true))

(declare-fun e!2367711 () Bool)

(assert (=> start!358788 e!2367711))

(declare-fun e!2367704 () Bool)

(assert (=> start!358788 e!2367704))

(declare-fun e!2367709 () Bool)

(assert (=> start!358788 e!2367709))

(declare-fun e!2367707 () Bool)

(assert (=> start!358788 e!2367707))

(declare-fun e!2367706 () Bool)

(assert (=> start!358788 e!2367706))

(declare-fun b!3833930 () Bool)

(declare-fun e!2367700 () Bool)

(declare-fun tp!1160275 () Bool)

(assert (=> b!3833930 (= e!2367704 (and e!2367700 tp!1160275))))

(declare-fun b!3833931 () Bool)

(declare-fun res!1551875 () Bool)

(assert (=> b!3833931 (=> (not res!1551875) (not e!2367710))))

(declare-datatypes ((C!22464 0))(
  ( (C!22465 (val!13326 Int)) )
))
(declare-datatypes ((List!40608 0))(
  ( (Nil!40484) (Cons!40484 (h!45904 C!22464) (t!309341 List!40608)) )
))
(declare-datatypes ((IArray!24895 0))(
  ( (IArray!24896 (innerList!12505 List!40608)) )
))
(declare-datatypes ((Conc!12445 0))(
  ( (Node!12445 (left!31320 Conc!12445) (right!31650 Conc!12445) (csize!25120 Int) (cheight!12656 Int)) (Leaf!19269 (xs!15751 IArray!24895) (csize!25121 Int)) (Empty!12445) )
))
(declare-datatypes ((BalanceConc!24484 0))(
  ( (BalanceConc!24485 (c!668552 Conc!12445)) )
))
(declare-datatypes ((List!40609 0))(
  ( (Nil!40485) (Cons!40485 (h!45905 (_ BitVec 16)) (t!309342 List!40609)) )
))
(declare-datatypes ((TokenValue!6464 0))(
  ( (FloatLiteralValue!12928 (text!45693 List!40609)) (TokenValueExt!6463 (__x!25146 Int)) (Broken!32320 (value!198277 List!40609)) (Object!6587) (End!6464) (Def!6464) (Underscore!6464) (Match!6464) (Else!6464) (Error!6464) (Case!6464) (If!6464) (Extends!6464) (Abstract!6464) (Class!6464) (Val!6464) (DelimiterValue!12928 (del!6524 List!40609)) (KeywordValue!6470 (value!198278 List!40609)) (CommentValue!12928 (value!198279 List!40609)) (WhitespaceValue!12928 (value!198280 List!40609)) (IndentationValue!6464 (value!198281 List!40609)) (String!46037) (Int32!6464) (Broken!32321 (value!198282 List!40609)) (Boolean!6465) (Unit!58227) (OperatorValue!6467 (op!6524 List!40609)) (IdentifierValue!12928 (value!198283 List!40609)) (IdentifierValue!12929 (value!198284 List!40609)) (WhitespaceValue!12929 (value!198285 List!40609)) (True!12928) (False!12928) (Broken!32322 (value!198286 List!40609)) (Broken!32323 (value!198287 List!40609)) (True!12929) (RightBrace!6464) (RightBracket!6464) (Colon!6464) (Null!6464) (Comma!6464) (LeftBracket!6464) (False!12929) (LeftBrace!6464) (ImaginaryLiteralValue!6464 (text!45694 List!40609)) (StringLiteralValue!19392 (value!198288 List!40609)) (EOFValue!6464 (value!198289 List!40609)) (IdentValue!6464 (value!198290 List!40609)) (DelimiterValue!12929 (value!198291 List!40609)) (DedentValue!6464 (value!198292 List!40609)) (NewLineValue!6464 (value!198293 List!40609)) (IntegerValue!19392 (value!198294 (_ BitVec 32)) (text!45695 List!40609)) (IntegerValue!19393 (value!198295 Int) (text!45696 List!40609)) (Times!6464) (Or!6464) (Equal!6464) (Minus!6464) (Broken!32324 (value!198296 List!40609)) (And!6464) (Div!6464) (LessEqual!6464) (Mod!6464) (Concat!17603) (Not!6464) (Plus!6464) (SpaceValue!6464 (value!198297 List!40609)) (IntegerValue!19394 (value!198298 Int) (text!45697 List!40609)) (StringLiteralValue!19393 (text!45698 List!40609)) (FloatLiteralValue!12929 (text!45699 List!40609)) (BytesLiteralValue!6464 (value!198299 List!40609)) (CommentValue!12929 (value!198300 List!40609)) (StringLiteralValue!19394 (value!198301 List!40609)) (ErrorTokenValue!6464 (msg!6525 List!40609)) )
))
(declare-datatypes ((Regex!11139 0))(
  ( (ElementMatch!11139 (c!668553 C!22464)) (Concat!17604 (regOne!22790 Regex!11139) (regTwo!22790 Regex!11139)) (EmptyExpr!11139) (Star!11139 (reg!11468 Regex!11139)) (EmptyLang!11139) (Union!11139 (regOne!22791 Regex!11139) (regTwo!22791 Regex!11139)) )
))
(declare-datatypes ((String!46038 0))(
  ( (String!46039 (value!198302 String)) )
))
(declare-datatypes ((TokenValueInjection!12356 0))(
  ( (TokenValueInjection!12357 (toValue!8642 Int) (toChars!8501 Int)) )
))
(declare-datatypes ((Rule!12268 0))(
  ( (Rule!12269 (regex!6234 Regex!11139) (tag!7094 String!46038) (isSeparator!6234 Bool) (transformation!6234 TokenValueInjection!12356)) )
))
(declare-datatypes ((List!40610 0))(
  ( (Nil!40486) (Cons!40486 (h!45906 Rule!12268) (t!309343 List!40610)) )
))
(declare-fun rules!2768 () List!40610)

(declare-fun rulesInvariant!5166 (LexerInterface!5823 List!40610) Bool)

(assert (=> b!3833931 (= res!1551875 (rulesInvariant!5166 thiss!20629 rules!2768))))

(declare-fun e!2367712 () Bool)

(declare-datatypes ((Token!11606 0))(
  ( (Token!11607 (value!198303 TokenValue!6464) (rule!9066 Rule!12268) (size!30502 Int) (originalCharacters!6834 List!40608)) )
))
(declare-datatypes ((List!40611 0))(
  ( (Nil!40487) (Cons!40487 (h!45907 Token!11606) (t!309344 List!40611)) )
))
(declare-fun prefixTokens!80 () List!40611)

(declare-fun b!3833932 () Bool)

(declare-fun e!2367698 () Bool)

(declare-fun tp!1160277 () Bool)

(declare-fun inv!21 (TokenValue!6464) Bool)

(assert (=> b!3833932 (= e!2367712 (and (inv!21 (value!198303 (h!45907 prefixTokens!80))) e!2367698 tp!1160277))))

(declare-fun e!2367703 () Bool)

(assert (=> b!3833933 (= e!2367703 (and tp!1160278 tp!1160281))))

(declare-fun b!3833934 () Bool)

(declare-fun res!1551874 () Bool)

(assert (=> b!3833934 (=> (not res!1551874) (not e!2367710))))

(declare-fun isEmpty!23902 (List!40610) Bool)

(assert (=> b!3833934 (= res!1551874 (not (isEmpty!23902 rules!2768)))))

(declare-fun b!3833935 () Bool)

(declare-fun tp_is_empty!19249 () Bool)

(declare-fun tp!1160282 () Bool)

(assert (=> b!3833935 (= e!2367706 (and tp_is_empty!19249 tp!1160282))))

(declare-fun e!2367701 () Bool)

(assert (=> b!3833936 (= e!2367701 (and tp!1160273 tp!1160274))))

(declare-fun b!3833937 () Bool)

(declare-fun e!2367695 () Bool)

(declare-fun tp!1160268 () Bool)

(declare-fun suffixTokens!72 () List!40611)

(declare-fun inv!54626 (Token!11606) Bool)

(assert (=> b!3833937 (= e!2367707 (and (inv!54626 (h!45907 suffixTokens!72)) e!2367695 tp!1160268))))

(declare-fun b!3833938 () Bool)

(declare-fun res!1551876 () Bool)

(assert (=> b!3833938 (=> (not res!1551876) (not e!2367710))))

(declare-fun suffixResult!91 () List!40608)

(declare-fun suffix!1176 () List!40608)

(declare-datatypes ((tuple2!39660 0))(
  ( (tuple2!39661 (_1!22964 List!40611) (_2!22964 List!40608)) )
))
(declare-fun lexList!1591 (LexerInterface!5823 List!40610 List!40608) tuple2!39660)

(assert (=> b!3833938 (= res!1551876 (= (lexList!1591 thiss!20629 rules!2768 suffix!1176) (tuple2!39661 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3833939 () Bool)

(declare-fun tp!1160272 () Bool)

(assert (=> b!3833939 (= e!2367696 (and tp_is_empty!19249 tp!1160272))))

(declare-fun b!3833940 () Bool)

(assert (=> b!3833940 (= e!2367710 false)))

(declare-fun lt!1330839 () Bool)

(declare-fun rulesValidInductive!2196 (LexerInterface!5823 List!40610) Bool)

(assert (=> b!3833940 (= lt!1330839 (rulesValidInductive!2196 thiss!20629 rules!2768))))

(declare-fun e!2367697 () Bool)

(declare-fun b!3833941 () Bool)

(declare-fun tp!1160271 () Bool)

(assert (=> b!3833941 (= e!2367695 (and (inv!21 (value!198303 (h!45907 suffixTokens!72))) e!2367697 tp!1160271))))

(declare-fun tp!1160283 () Bool)

(declare-fun b!3833942 () Bool)

(declare-fun inv!54623 (String!46038) Bool)

(declare-fun inv!54627 (TokenValueInjection!12356) Bool)

(assert (=> b!3833942 (= e!2367700 (and tp!1160283 (inv!54623 (tag!7094 (h!45906 rules!2768))) (inv!54627 (transformation!6234 (h!45906 rules!2768))) e!2367703))))

(declare-fun e!2367713 () Bool)

(assert (=> b!3833943 (= e!2367713 (and tp!1160280 tp!1160279))))

(declare-fun b!3833944 () Bool)

(declare-fun res!1551877 () Bool)

(assert (=> b!3833944 (=> (not res!1551877) (not e!2367710))))

(declare-fun prefix!426 () List!40608)

(declare-fun ++!10225 (List!40608 List!40608) List!40608)

(declare-fun ++!10226 (List!40611 List!40611) List!40611)

(assert (=> b!3833944 (= res!1551877 (= (lexList!1591 thiss!20629 rules!2768 (++!10225 prefix!426 suffix!1176)) (tuple2!39661 (++!10226 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun b!3833945 () Bool)

(declare-fun res!1551872 () Bool)

(assert (=> b!3833945 (=> (not res!1551872) (not e!2367710))))

(declare-fun isEmpty!23903 (List!40611) Bool)

(assert (=> b!3833945 (= res!1551872 (not (isEmpty!23903 prefixTokens!80)))))

(declare-fun b!3833946 () Bool)

(declare-fun tp!1160276 () Bool)

(assert (=> b!3833946 (= e!2367709 (and (inv!54626 (h!45907 prefixTokens!80)) e!2367712 tp!1160276))))

(declare-fun tp!1160269 () Bool)

(declare-fun b!3833947 () Bool)

(assert (=> b!3833947 (= e!2367698 (and tp!1160269 (inv!54623 (tag!7094 (rule!9066 (h!45907 prefixTokens!80)))) (inv!54627 (transformation!6234 (rule!9066 (h!45907 prefixTokens!80)))) e!2367701))))

(declare-fun b!3833948 () Bool)

(declare-fun res!1551873 () Bool)

(assert (=> b!3833948 (=> (not res!1551873) (not e!2367710))))

(declare-fun isEmpty!23904 (List!40608) Bool)

(assert (=> b!3833948 (= res!1551873 (not (isEmpty!23904 prefix!426)))))

(declare-fun b!3833949 () Bool)

(declare-fun tp!1160270 () Bool)

(assert (=> b!3833949 (= e!2367711 (and tp_is_empty!19249 tp!1160270))))

(declare-fun tp!1160284 () Bool)

(declare-fun b!3833950 () Bool)

(assert (=> b!3833950 (= e!2367697 (and tp!1160284 (inv!54623 (tag!7094 (rule!9066 (h!45907 suffixTokens!72)))) (inv!54627 (transformation!6234 (rule!9066 (h!45907 suffixTokens!72)))) e!2367713))))

(assert (= (and start!358788 res!1551878) b!3833934))

(assert (= (and b!3833934 res!1551874) b!3833931))

(assert (= (and b!3833931 res!1551875) b!3833945))

(assert (= (and b!3833945 res!1551872) b!3833948))

(assert (= (and b!3833948 res!1551873) b!3833944))

(assert (= (and b!3833944 res!1551877) b!3833938))

(assert (= (and b!3833938 res!1551876) b!3833940))

(assert (= (and start!358788 ((_ is Cons!40484) suffixResult!91)) b!3833939))

(assert (= (and start!358788 ((_ is Cons!40484) suffix!1176)) b!3833949))

(assert (= b!3833942 b!3833933))

(assert (= b!3833930 b!3833942))

(assert (= (and start!358788 ((_ is Cons!40486) rules!2768)) b!3833930))

(assert (= b!3833947 b!3833936))

(assert (= b!3833932 b!3833947))

(assert (= b!3833946 b!3833932))

(assert (= (and start!358788 ((_ is Cons!40487) prefixTokens!80)) b!3833946))

(assert (= b!3833950 b!3833943))

(assert (= b!3833941 b!3833950))

(assert (= b!3833937 b!3833941))

(assert (= (and start!358788 ((_ is Cons!40487) suffixTokens!72)) b!3833937))

(assert (= (and start!358788 ((_ is Cons!40484) prefix!426)) b!3833935))

(declare-fun m!4388243 () Bool)

(assert (=> b!3833940 m!4388243))

(declare-fun m!4388245 () Bool)

(assert (=> b!3833938 m!4388245))

(declare-fun m!4388247 () Bool)

(assert (=> b!3833950 m!4388247))

(declare-fun m!4388249 () Bool)

(assert (=> b!3833950 m!4388249))

(declare-fun m!4388251 () Bool)

(assert (=> b!3833937 m!4388251))

(declare-fun m!4388253 () Bool)

(assert (=> b!3833934 m!4388253))

(declare-fun m!4388255 () Bool)

(assert (=> b!3833942 m!4388255))

(declare-fun m!4388257 () Bool)

(assert (=> b!3833942 m!4388257))

(declare-fun m!4388259 () Bool)

(assert (=> b!3833932 m!4388259))

(declare-fun m!4388261 () Bool)

(assert (=> b!3833948 m!4388261))

(declare-fun m!4388263 () Bool)

(assert (=> b!3833944 m!4388263))

(assert (=> b!3833944 m!4388263))

(declare-fun m!4388265 () Bool)

(assert (=> b!3833944 m!4388265))

(declare-fun m!4388267 () Bool)

(assert (=> b!3833944 m!4388267))

(declare-fun m!4388269 () Bool)

(assert (=> b!3833931 m!4388269))

(declare-fun m!4388271 () Bool)

(assert (=> b!3833941 m!4388271))

(declare-fun m!4388273 () Bool)

(assert (=> b!3833945 m!4388273))

(declare-fun m!4388275 () Bool)

(assert (=> b!3833947 m!4388275))

(declare-fun m!4388277 () Bool)

(assert (=> b!3833947 m!4388277))

(declare-fun m!4388279 () Bool)

(assert (=> b!3833946 m!4388279))

(check-sat (not b!3833947) (not b!3833945) (not b!3833938) (not b!3833950) b_and!285001 (not b!3833931) b_and!284999 (not b!3833930) (not b_next!102509) (not b!3833934) (not b!3833941) (not b!3833939) (not b!3833935) (not b_next!102515) (not b!3833948) (not b!3833949) b_and!285003 (not b!3833937) (not b!3833932) b_and!285005 (not b_next!102519) (not b_next!102517) b_and!284997 b_and!284995 (not b_next!102511) (not b!3833940) tp_is_empty!19249 (not b!3833944) (not b!3833946) (not b!3833942) (not b_next!102513))
(check-sat (not b_next!102515) b_and!285003 b_and!285001 b_and!284999 (not b_next!102509) (not b_next!102513) b_and!285005 (not b_next!102519) (not b_next!102517) b_and!284997 b_and!284995 (not b_next!102511))
