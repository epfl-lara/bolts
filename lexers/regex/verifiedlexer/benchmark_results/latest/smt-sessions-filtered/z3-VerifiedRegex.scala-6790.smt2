; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353964 () Bool)

(assert start!353964)

(declare-fun b!3768077 () Bool)

(declare-fun b_free!100973 () Bool)

(declare-fun b_next!101677 () Bool)

(assert (=> b!3768077 (= b_free!100973 (not b_next!101677))))

(declare-fun tp!1151147 () Bool)

(declare-fun b_and!279787 () Bool)

(assert (=> b!3768077 (= tp!1151147 b_and!279787)))

(declare-fun b_free!100975 () Bool)

(declare-fun b_next!101679 () Bool)

(assert (=> b!3768077 (= b_free!100975 (not b_next!101679))))

(declare-fun tp!1151148 () Bool)

(declare-fun b_and!279789 () Bool)

(assert (=> b!3768077 (= tp!1151148 b_and!279789)))

(declare-fun b!3768074 () Bool)

(declare-fun e!2330583 () Bool)

(declare-fun e!2330579 () Bool)

(assert (=> b!3768074 (= e!2330583 e!2330579)))

(declare-fun res!1525542 () Bool)

(assert (=> b!3768074 (=> (not res!1525542) (not e!2330579))))

(declare-datatypes ((List!40368 0))(
  ( (Nil!40244) (Cons!40244 (h!45664 (_ BitVec 16)) (t!304405 List!40368)) )
))
(declare-datatypes ((TokenValue!6416 0))(
  ( (FloatLiteralValue!12832 (text!45357 List!40368)) (TokenValueExt!6415 (__x!25049 Int)) (Broken!32080 (value!196882 List!40368)) (Object!6539) (End!6416) (Def!6416) (Underscore!6416) (Match!6416) (Else!6416) (Error!6416) (Case!6416) (If!6416) (Extends!6416) (Abstract!6416) (Class!6416) (Val!6416) (DelimiterValue!12832 (del!6476 List!40368)) (KeywordValue!6422 (value!196883 List!40368)) (CommentValue!12832 (value!196884 List!40368)) (WhitespaceValue!12832 (value!196885 List!40368)) (IndentationValue!6416 (value!196886 List!40368)) (String!45761) (Int32!6416) (Broken!32081 (value!196887 List!40368)) (Boolean!6417) (Unit!57945) (OperatorValue!6419 (op!6476 List!40368)) (IdentifierValue!12832 (value!196888 List!40368)) (IdentifierValue!12833 (value!196889 List!40368)) (WhitespaceValue!12833 (value!196890 List!40368)) (True!12832) (False!12832) (Broken!32082 (value!196891 List!40368)) (Broken!32083 (value!196892 List!40368)) (True!12833) (RightBrace!6416) (RightBracket!6416) (Colon!6416) (Null!6416) (Comma!6416) (LeftBracket!6416) (False!12833) (LeftBrace!6416) (ImaginaryLiteralValue!6416 (text!45358 List!40368)) (StringLiteralValue!19248 (value!196893 List!40368)) (EOFValue!6416 (value!196894 List!40368)) (IdentValue!6416 (value!196895 List!40368)) (DelimiterValue!12833 (value!196896 List!40368)) (DedentValue!6416 (value!196897 List!40368)) (NewLineValue!6416 (value!196898 List!40368)) (IntegerValue!19248 (value!196899 (_ BitVec 32)) (text!45359 List!40368)) (IntegerValue!19249 (value!196900 Int) (text!45360 List!40368)) (Times!6416) (Or!6416) (Equal!6416) (Minus!6416) (Broken!32084 (value!196901 List!40368)) (And!6416) (Div!6416) (LessEqual!6416) (Mod!6416) (Concat!17507) (Not!6416) (Plus!6416) (SpaceValue!6416 (value!196902 List!40368)) (IntegerValue!19250 (value!196903 Int) (text!45361 List!40368)) (StringLiteralValue!19249 (text!45362 List!40368)) (FloatLiteralValue!12833 (text!45363 List!40368)) (BytesLiteralValue!6416 (value!196904 List!40368)) (CommentValue!12833 (value!196905 List!40368)) (StringLiteralValue!19250 (value!196906 List!40368)) (ErrorTokenValue!6416 (msg!6477 List!40368)) )
))
(declare-datatypes ((C!22368 0))(
  ( (C!22369 (val!13260 Int)) )
))
(declare-datatypes ((Regex!11091 0))(
  ( (ElementMatch!11091 (c!652731 C!22368)) (Concat!17508 (regOne!22694 Regex!11091) (regTwo!22694 Regex!11091)) (EmptyExpr!11091) (Star!11091 (reg!11420 Regex!11091)) (EmptyLang!11091) (Union!11091 (regOne!22695 Regex!11091) (regTwo!22695 Regex!11091)) )
))
(declare-datatypes ((String!45762 0))(
  ( (String!45763 (value!196907 String)) )
))
(declare-datatypes ((List!40369 0))(
  ( (Nil!40245) (Cons!40245 (h!45665 C!22368) (t!304406 List!40369)) )
))
(declare-datatypes ((IArray!24697 0))(
  ( (IArray!24698 (innerList!12406 List!40369)) )
))
(declare-datatypes ((Conc!12346 0))(
  ( (Node!12346 (left!31144 Conc!12346) (right!31474 Conc!12346) (csize!24922 Int) (cheight!12557 Int)) (Leaf!19137 (xs!15560 IArray!24697) (csize!24923 Int)) (Empty!12346) )
))
(declare-datatypes ((BalanceConc!24286 0))(
  ( (BalanceConc!24287 (c!652732 Conc!12346)) )
))
(declare-datatypes ((TokenValueInjection!12260 0))(
  ( (TokenValueInjection!12261 (toValue!8550 Int) (toChars!8409 Int)) )
))
(declare-datatypes ((Rule!12172 0))(
  ( (Rule!12173 (regex!6186 Regex!11091) (tag!7046 String!45762) (isSeparator!6186 Bool) (transformation!6186 TokenValueInjection!12260)) )
))
(declare-datatypes ((Token!11510 0))(
  ( (Token!11511 (value!196908 TokenValue!6416) (rule!8950 Rule!12172) (size!30275 Int) (originalCharacters!6786 List!40369)) )
))
(declare-datatypes ((List!40370 0))(
  ( (Nil!40246) (Cons!40246 (h!45666 Token!11510) (t!304407 List!40370)) )
))
(declare-datatypes ((IArray!24699 0))(
  ( (IArray!24700 (innerList!12407 List!40370)) )
))
(declare-datatypes ((Conc!12347 0))(
  ( (Node!12347 (left!31145 Conc!12347) (right!31475 Conc!12347) (csize!24924 Int) (cheight!12558 Int)) (Leaf!19138 (xs!15561 IArray!24699) (csize!24925 Int)) (Empty!12347) )
))
(declare-datatypes ((BalanceConc!24288 0))(
  ( (BalanceConc!24289 (c!652733 Conc!12347)) )
))
(declare-fun acc!335 () BalanceConc!24288)

(declare-datatypes ((tuple2!39292 0))(
  ( (tuple2!39293 (_1!22780 BalanceConc!24288) (_2!22780 BalanceConc!24286)) )
))
(declare-fun lt!1303878 () tuple2!39292)

(declare-fun lt!1303887 () tuple2!39292)

(declare-fun list!14891 (BalanceConc!24288) List!40370)

(declare-fun ++!10011 (BalanceConc!24288 BalanceConc!24288) BalanceConc!24288)

(assert (=> b!3768074 (= res!1525542 (= (list!14891 (_1!22780 lt!1303878)) (list!14891 (++!10011 acc!335 (_1!22780 lt!1303887)))))))

(declare-fun input!678 () BalanceConc!24286)

(declare-datatypes ((List!40371 0))(
  ( (Nil!40247) (Cons!40247 (h!45667 Rule!12172) (t!304408 List!40371)) )
))
(declare-fun rules!1265 () List!40371)

(declare-datatypes ((LexerInterface!5775 0))(
  ( (LexerInterfaceExt!5772 (__x!25050 Int)) (Lexer!5773) )
))
(declare-fun thiss!11876 () LexerInterface!5775)

(declare-fun lexRec!799 (LexerInterface!5775 List!40371 BalanceConc!24286) tuple2!39292)

(assert (=> b!3768074 (= lt!1303887 (lexRec!799 thiss!11876 rules!1265 input!678))))

(declare-fun totalInput!335 () BalanceConc!24286)

(assert (=> b!3768074 (= lt!1303878 (lexRec!799 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3768075 () Bool)

(declare-fun e!2330582 () Bool)

(declare-fun e!2330591 () Bool)

(assert (=> b!3768075 (= e!2330582 e!2330591)))

(declare-fun res!1525541 () Bool)

(assert (=> b!3768075 (=> res!1525541 e!2330591)))

(declare-datatypes ((tuple2!39294 0))(
  ( (tuple2!39295 (_1!22781 Token!11510) (_2!22781 BalanceConc!24286)) )
))
(declare-datatypes ((Option!8586 0))(
  ( (None!8585) (Some!8585 (v!38751 tuple2!39294)) )
))
(declare-fun lt!1303900 () Option!8586)

(get-info :version)

(assert (=> b!3768075 (= res!1525541 (not ((_ is Some!8585) lt!1303900)))))

(declare-fun maxPrefixZipperSequenceV2!579 (LexerInterface!5775 List!40371 BalanceConc!24286 BalanceConc!24286) Option!8586)

(assert (=> b!3768075 (= lt!1303900 (maxPrefixZipperSequenceV2!579 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun res!1525539 () Bool)

(declare-fun e!2330585 () Bool)

(assert (=> start!353964 (=> (not res!1525539) (not e!2330585))))

(assert (=> start!353964 (= res!1525539 ((_ is Lexer!5773) thiss!11876))))

(assert (=> start!353964 e!2330585))

(declare-fun e!2330589 () Bool)

(declare-fun inv!54063 (BalanceConc!24286) Bool)

(assert (=> start!353964 (and (inv!54063 input!678) e!2330589)))

(declare-fun e!2330590 () Bool)

(declare-fun inv!54064 (BalanceConc!24288) Bool)

(assert (=> start!353964 (and (inv!54064 acc!335) e!2330590)))

(declare-fun treated!13 () BalanceConc!24286)

(declare-fun e!2330578 () Bool)

(assert (=> start!353964 (and (inv!54063 treated!13) e!2330578)))

(declare-fun e!2330588 () Bool)

(assert (=> start!353964 e!2330588))

(assert (=> start!353964 true))

(declare-fun e!2330587 () Bool)

(assert (=> start!353964 (and (inv!54063 totalInput!335) e!2330587)))

(declare-fun b!3768076 () Bool)

(assert (=> b!3768076 (= e!2330591 true)))

(declare-fun lt!1303890 () BalanceConc!24286)

(declare-fun lt!1303880 () BalanceConc!24286)

(declare-fun ++!10012 (BalanceConc!24286 BalanceConc!24286) BalanceConc!24286)

(assert (=> b!3768076 (= lt!1303890 (++!10012 treated!13 lt!1303880))))

(declare-fun lt!1303889 () List!40369)

(declare-fun lt!1303895 () List!40370)

(declare-datatypes ((tuple2!39296 0))(
  ( (tuple2!39297 (_1!22782 List!40370) (_2!22782 List!40369)) )
))
(declare-fun lexList!1549 (LexerInterface!5775 List!40371 List!40369) tuple2!39296)

(assert (=> b!3768076 (= (lexList!1549 thiss!11876 rules!1265 lt!1303889) (tuple2!39297 lt!1303895 Nil!40245))))

(declare-fun lt!1303899 () List!40370)

(declare-datatypes ((Unit!57946 0))(
  ( (Unit!57947) )
))
(declare-fun lt!1303885 () Unit!57946)

(declare-fun lt!1303877 () List!40369)

(declare-fun lt!1303891 () tuple2!39292)

(declare-fun lemmaLexThenLexPrefix!551 (LexerInterface!5775 List!40371 List!40369 List!40369 List!40370 List!40370 List!40369) Unit!57946)

(declare-fun list!14892 (BalanceConc!24286) List!40369)

(assert (=> b!3768076 (= lt!1303885 (lemmaLexThenLexPrefix!551 thiss!11876 rules!1265 lt!1303889 lt!1303877 lt!1303895 lt!1303899 (list!14892 (_2!22780 lt!1303891))))))

(declare-fun append!1018 (BalanceConc!24288 Token!11510) BalanceConc!24288)

(assert (=> b!3768076 (= lt!1303895 (list!14891 (append!1018 acc!335 (_1!22781 (v!38751 lt!1303900)))))))

(declare-fun lt!1303881 () List!40370)

(declare-fun lt!1303883 () List!40370)

(declare-fun ++!10013 (List!40370 List!40370) List!40370)

(assert (=> b!3768076 (= (++!10013 (++!10013 lt!1303881 lt!1303883) lt!1303899) (++!10013 lt!1303881 (++!10013 lt!1303883 lt!1303899)))))

(declare-fun lt!1303886 () Unit!57946)

(declare-fun lemmaConcatAssociativity!2123 (List!40370 List!40370 List!40370) Unit!57946)

(assert (=> b!3768076 (= lt!1303886 (lemmaConcatAssociativity!2123 lt!1303881 lt!1303883 lt!1303899))))

(assert (=> b!3768076 (= lt!1303899 (list!14891 (_1!22780 lt!1303891)))))

(assert (=> b!3768076 (= lt!1303883 (Cons!40246 (_1!22781 (v!38751 lt!1303900)) Nil!40246))))

(declare-fun e!2330584 () tuple2!39292)

(assert (=> b!3768076 (= lt!1303887 e!2330584)))

(declare-fun c!652730 () Bool)

(declare-fun lt!1303892 () Option!8586)

(assert (=> b!3768076 (= c!652730 ((_ is Some!8585) lt!1303892))))

(declare-fun maxPrefixZipperSequence!1183 (LexerInterface!5775 List!40371 BalanceConc!24286) Option!8586)

(assert (=> b!3768076 (= lt!1303892 (maxPrefixZipperSequence!1183 thiss!11876 rules!1265 input!678))))

(declare-fun lt!1303884 () List!40369)

(declare-fun lt!1303894 () List!40369)

(declare-fun ++!10014 (List!40369 List!40369) List!40369)

(assert (=> b!3768076 (= (++!10014 lt!1303889 lt!1303877) (++!10014 lt!1303894 (++!10014 lt!1303884 lt!1303877)))))

(assert (=> b!3768076 (= lt!1303889 (++!10014 lt!1303894 lt!1303884))))

(declare-fun lt!1303882 () Unit!57946)

(declare-fun lemmaConcatAssociativity!2124 (List!40369 List!40369 List!40369) Unit!57946)

(assert (=> b!3768076 (= lt!1303882 (lemmaConcatAssociativity!2124 lt!1303894 lt!1303884 lt!1303877))))

(assert (=> b!3768076 (= lt!1303877 (list!14892 (_2!22781 (v!38751 lt!1303900))))))

(assert (=> b!3768076 (= lt!1303884 (list!14892 lt!1303880))))

(declare-fun charsOf!4028 (Token!11510) BalanceConc!24286)

(assert (=> b!3768076 (= lt!1303880 (charsOf!4028 (_1!22781 (v!38751 lt!1303900))))))

(assert (=> b!3768076 (= lt!1303891 (lexRec!799 thiss!11876 rules!1265 (_2!22781 (v!38751 lt!1303900))))))

(declare-fun e!2330581 () Bool)

(assert (=> b!3768077 (= e!2330581 (and tp!1151147 tp!1151148))))

(declare-fun b!3768078 () Bool)

(declare-fun res!1525537 () Bool)

(assert (=> b!3768078 (=> (not res!1525537) (not e!2330585))))

(declare-fun rulesInvariant!5118 (LexerInterface!5775 List!40371) Bool)

(assert (=> b!3768078 (= res!1525537 (rulesInvariant!5118 thiss!11876 rules!1265))))

(declare-fun b!3768079 () Bool)

(declare-fun res!1525545 () Bool)

(assert (=> b!3768079 (=> (not res!1525545) (not e!2330579))))

(assert (=> b!3768079 (= res!1525545 (= (list!14892 (_2!22780 lt!1303878)) (list!14892 (_2!22780 lt!1303887))))))

(declare-fun b!3768080 () Bool)

(declare-fun e!2330586 () Bool)

(declare-fun tp!1151151 () Bool)

(declare-fun inv!54057 (String!45762) Bool)

(declare-fun inv!54065 (TokenValueInjection!12260) Bool)

(assert (=> b!3768080 (= e!2330586 (and tp!1151151 (inv!54057 (tag!7046 (h!45667 rules!1265))) (inv!54065 (transformation!6186 (h!45667 rules!1265))) e!2330581))))

(declare-fun b!3768081 () Bool)

(declare-fun tp!1151154 () Bool)

(declare-fun inv!54066 (Conc!12346) Bool)

(assert (=> b!3768081 (= e!2330589 (and (inv!54066 (c!652732 input!678)) tp!1151154))))

(declare-fun b!3768082 () Bool)

(declare-fun e!2330592 () Bool)

(assert (=> b!3768082 (= e!2330592 e!2330583)))

(declare-fun res!1525538 () Bool)

(assert (=> b!3768082 (=> (not res!1525538) (not e!2330583))))

(declare-fun lt!1303896 () List!40370)

(assert (=> b!3768082 (= res!1525538 (= lt!1303896 lt!1303881))))

(assert (=> b!3768082 (= lt!1303881 (list!14891 acc!335))))

(declare-fun lt!1303888 () tuple2!39292)

(assert (=> b!3768082 (= lt!1303896 (list!14891 (_1!22780 lt!1303888)))))

(assert (=> b!3768082 (= lt!1303888 (lexRec!799 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3768083 () Bool)

(declare-fun tp!1151150 () Bool)

(declare-fun inv!54067 (Conc!12347) Bool)

(assert (=> b!3768083 (= e!2330590 (and (inv!54067 (c!652733 acc!335)) tp!1151150))))

(declare-fun b!3768084 () Bool)

(declare-fun res!1525543 () Bool)

(assert (=> b!3768084 (=> (not res!1525543) (not e!2330583))))

(declare-fun isEmpty!23637 (List!40369) Bool)

(assert (=> b!3768084 (= res!1525543 (isEmpty!23637 (list!14892 (_2!22780 lt!1303888))))))

(declare-fun b!3768085 () Bool)

(assert (=> b!3768085 (= e!2330584 (tuple2!39293 (BalanceConc!24289 Empty!12347) input!678))))

(declare-fun b!3768086 () Bool)

(declare-fun tp!1151153 () Bool)

(assert (=> b!3768086 (= e!2330587 (and (inv!54066 (c!652732 totalInput!335)) tp!1151153))))

(declare-fun b!3768087 () Bool)

(assert (=> b!3768087 (= e!2330579 (not e!2330582))))

(declare-fun res!1525544 () Bool)

(assert (=> b!3768087 (=> res!1525544 e!2330582)))

(declare-fun lt!1303898 () List!40369)

(declare-fun lt!1303897 () List!40369)

(declare-fun isSuffix!960 (List!40369 List!40369) Bool)

(assert (=> b!3768087 (= res!1525544 (not (isSuffix!960 lt!1303898 lt!1303897)))))

(declare-fun lt!1303879 () List!40369)

(assert (=> b!3768087 (isSuffix!960 lt!1303898 lt!1303879)))

(declare-fun lt!1303901 () Unit!57946)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!645 (List!40369 List!40369) Unit!57946)

(assert (=> b!3768087 (= lt!1303901 (lemmaConcatTwoListThenFSndIsSuffix!645 lt!1303894 lt!1303898))))

(declare-fun b!3768088 () Bool)

(declare-fun tp!1151149 () Bool)

(assert (=> b!3768088 (= e!2330578 (and (inv!54066 (c!652732 treated!13)) tp!1151149))))

(declare-fun b!3768089 () Bool)

(assert (=> b!3768089 (= e!2330585 e!2330592)))

(declare-fun res!1525540 () Bool)

(assert (=> b!3768089 (=> (not res!1525540) (not e!2330592))))

(assert (=> b!3768089 (= res!1525540 (= lt!1303897 lt!1303879))))

(assert (=> b!3768089 (= lt!1303879 (++!10014 lt!1303894 lt!1303898))))

(assert (=> b!3768089 (= lt!1303897 (list!14892 totalInput!335))))

(assert (=> b!3768089 (= lt!1303898 (list!14892 input!678))))

(assert (=> b!3768089 (= lt!1303894 (list!14892 treated!13))))

(declare-fun b!3768090 () Bool)

(declare-fun lt!1303893 () tuple2!39292)

(declare-fun prepend!1318 (BalanceConc!24288 Token!11510) BalanceConc!24288)

(assert (=> b!3768090 (= e!2330584 (tuple2!39293 (prepend!1318 (_1!22780 lt!1303893) (_1!22781 (v!38751 lt!1303892))) (_2!22780 lt!1303893)))))

(assert (=> b!3768090 (= lt!1303893 (lexRec!799 thiss!11876 rules!1265 (_2!22781 (v!38751 lt!1303892))))))

(declare-fun b!3768091 () Bool)

(declare-fun tp!1151152 () Bool)

(assert (=> b!3768091 (= e!2330588 (and e!2330586 tp!1151152))))

(declare-fun b!3768092 () Bool)

(declare-fun res!1525546 () Bool)

(assert (=> b!3768092 (=> (not res!1525546) (not e!2330585))))

(declare-fun isEmpty!23638 (List!40371) Bool)

(assert (=> b!3768092 (= res!1525546 (not (isEmpty!23638 rules!1265)))))

(assert (= (and start!353964 res!1525539) b!3768092))

(assert (= (and b!3768092 res!1525546) b!3768078))

(assert (= (and b!3768078 res!1525537) b!3768089))

(assert (= (and b!3768089 res!1525540) b!3768082))

(assert (= (and b!3768082 res!1525538) b!3768084))

(assert (= (and b!3768084 res!1525543) b!3768074))

(assert (= (and b!3768074 res!1525542) b!3768079))

(assert (= (and b!3768079 res!1525545) b!3768087))

(assert (= (and b!3768087 (not res!1525544)) b!3768075))

(assert (= (and b!3768075 (not res!1525541)) b!3768076))

(assert (= (and b!3768076 c!652730) b!3768090))

(assert (= (and b!3768076 (not c!652730)) b!3768085))

(assert (= start!353964 b!3768081))

(assert (= start!353964 b!3768083))

(assert (= start!353964 b!3768088))

(assert (= b!3768080 b!3768077))

(assert (= b!3768091 b!3768080))

(assert (= (and start!353964 ((_ is Cons!40247) rules!1265)) b!3768091))

(assert (= start!353964 b!3768086))

(declare-fun m!4264781 () Bool)

(assert (=> b!3768078 m!4264781))

(declare-fun m!4264783 () Bool)

(assert (=> b!3768080 m!4264783))

(declare-fun m!4264785 () Bool)

(assert (=> b!3768080 m!4264785))

(declare-fun m!4264787 () Bool)

(assert (=> b!3768090 m!4264787))

(declare-fun m!4264789 () Bool)

(assert (=> b!3768090 m!4264789))

(declare-fun m!4264791 () Bool)

(assert (=> b!3768075 m!4264791))

(declare-fun m!4264793 () Bool)

(assert (=> b!3768081 m!4264793))

(declare-fun m!4264795 () Bool)

(assert (=> b!3768083 m!4264795))

(declare-fun m!4264797 () Bool)

(assert (=> b!3768086 m!4264797))

(declare-fun m!4264799 () Bool)

(assert (=> b!3768092 m!4264799))

(declare-fun m!4264801 () Bool)

(assert (=> start!353964 m!4264801))

(declare-fun m!4264803 () Bool)

(assert (=> start!353964 m!4264803))

(declare-fun m!4264805 () Bool)

(assert (=> start!353964 m!4264805))

(declare-fun m!4264807 () Bool)

(assert (=> start!353964 m!4264807))

(declare-fun m!4264809 () Bool)

(assert (=> b!3768087 m!4264809))

(declare-fun m!4264811 () Bool)

(assert (=> b!3768087 m!4264811))

(declare-fun m!4264813 () Bool)

(assert (=> b!3768087 m!4264813))

(declare-fun m!4264815 () Bool)

(assert (=> b!3768079 m!4264815))

(declare-fun m!4264817 () Bool)

(assert (=> b!3768079 m!4264817))

(declare-fun m!4264819 () Bool)

(assert (=> b!3768084 m!4264819))

(assert (=> b!3768084 m!4264819))

(declare-fun m!4264821 () Bool)

(assert (=> b!3768084 m!4264821))

(declare-fun m!4264823 () Bool)

(assert (=> b!3768082 m!4264823))

(declare-fun m!4264825 () Bool)

(assert (=> b!3768082 m!4264825))

(declare-fun m!4264827 () Bool)

(assert (=> b!3768082 m!4264827))

(declare-fun m!4264829 () Bool)

(assert (=> b!3768089 m!4264829))

(declare-fun m!4264831 () Bool)

(assert (=> b!3768089 m!4264831))

(declare-fun m!4264833 () Bool)

(assert (=> b!3768089 m!4264833))

(declare-fun m!4264835 () Bool)

(assert (=> b!3768089 m!4264835))

(declare-fun m!4264837 () Bool)

(assert (=> b!3768076 m!4264837))

(declare-fun m!4264839 () Bool)

(assert (=> b!3768076 m!4264839))

(declare-fun m!4264841 () Bool)

(assert (=> b!3768076 m!4264841))

(declare-fun m!4264843 () Bool)

(assert (=> b!3768076 m!4264843))

(declare-fun m!4264845 () Bool)

(assert (=> b!3768076 m!4264845))

(declare-fun m!4264847 () Bool)

(assert (=> b!3768076 m!4264847))

(assert (=> b!3768076 m!4264841))

(declare-fun m!4264849 () Bool)

(assert (=> b!3768076 m!4264849))

(declare-fun m!4264851 () Bool)

(assert (=> b!3768076 m!4264851))

(declare-fun m!4264853 () Bool)

(assert (=> b!3768076 m!4264853))

(declare-fun m!4264855 () Bool)

(assert (=> b!3768076 m!4264855))

(assert (=> b!3768076 m!4264849))

(declare-fun m!4264857 () Bool)

(assert (=> b!3768076 m!4264857))

(declare-fun m!4264859 () Bool)

(assert (=> b!3768076 m!4264859))

(declare-fun m!4264861 () Bool)

(assert (=> b!3768076 m!4264861))

(declare-fun m!4264863 () Bool)

(assert (=> b!3768076 m!4264863))

(assert (=> b!3768076 m!4264859))

(declare-fun m!4264865 () Bool)

(assert (=> b!3768076 m!4264865))

(declare-fun m!4264867 () Bool)

(assert (=> b!3768076 m!4264867))

(declare-fun m!4264869 () Bool)

(assert (=> b!3768076 m!4264869))

(declare-fun m!4264871 () Bool)

(assert (=> b!3768076 m!4264871))

(assert (=> b!3768076 m!4264837))

(declare-fun m!4264873 () Bool)

(assert (=> b!3768076 m!4264873))

(declare-fun m!4264875 () Bool)

(assert (=> b!3768076 m!4264875))

(declare-fun m!4264877 () Bool)

(assert (=> b!3768076 m!4264877))

(assert (=> b!3768076 m!4264871))

(declare-fun m!4264879 () Bool)

(assert (=> b!3768076 m!4264879))

(declare-fun m!4264881 () Bool)

(assert (=> b!3768074 m!4264881))

(declare-fun m!4264883 () Bool)

(assert (=> b!3768074 m!4264883))

(assert (=> b!3768074 m!4264883))

(declare-fun m!4264885 () Bool)

(assert (=> b!3768074 m!4264885))

(declare-fun m!4264887 () Bool)

(assert (=> b!3768074 m!4264887))

(declare-fun m!4264889 () Bool)

(assert (=> b!3768074 m!4264889))

(declare-fun m!4264891 () Bool)

(assert (=> b!3768088 m!4264891))

(check-sat (not b!3768075) (not b!3768088) (not b_next!101679) b_and!279789 (not b!3768087) (not b!3768090) (not b!3768081) (not start!353964) (not b!3768078) (not b!3768084) (not b!3768082) (not b!3768076) (not b!3768074) (not b!3768092) (not b!3768086) (not b!3768079) (not b!3768091) (not b!3768089) b_and!279787 (not b!3768080) (not b!3768083) (not b_next!101677))
(check-sat b_and!279787 b_and!279789 (not b_next!101677) (not b_next!101679))
