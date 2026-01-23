; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!166450 () Bool)

(assert start!166450)

(declare-fun b!1705653 () Bool)

(declare-fun b_free!45995 () Bool)

(declare-fun b_next!46699 () Bool)

(assert (=> b!1705653 (= b_free!45995 (not b_next!46699))))

(declare-fun tp!487020 () Bool)

(declare-fun b_and!123209 () Bool)

(assert (=> b!1705653 (= tp!487020 b_and!123209)))

(declare-fun b_free!45997 () Bool)

(declare-fun b_next!46701 () Bool)

(assert (=> b!1705653 (= b_free!45997 (not b_next!46701))))

(declare-fun tp!487013 () Bool)

(declare-fun b_and!123211 () Bool)

(assert (=> b!1705653 (= tp!487013 b_and!123211)))

(declare-fun b!1705654 () Bool)

(declare-fun b_free!45999 () Bool)

(declare-fun b_next!46703 () Bool)

(assert (=> b!1705654 (= b_free!45999 (not b_next!46703))))

(declare-fun tp!487019 () Bool)

(declare-fun b_and!123213 () Bool)

(assert (=> b!1705654 (= tp!487019 b_and!123213)))

(declare-fun b_free!46001 () Bool)

(declare-fun b_next!46705 () Bool)

(assert (=> b!1705654 (= b_free!46001 (not b_next!46705))))

(declare-fun tp!487017 () Bool)

(declare-fun b_and!123215 () Bool)

(assert (=> b!1705654 (= tp!487017 b_and!123215)))

(declare-fun b!1705652 () Bool)

(declare-fun b_free!46003 () Bool)

(declare-fun b_next!46707 () Bool)

(assert (=> b!1705652 (= b_free!46003 (not b_next!46707))))

(declare-fun tp!487015 () Bool)

(declare-fun b_and!123217 () Bool)

(assert (=> b!1705652 (= tp!487015 b_and!123217)))

(declare-fun b_free!46005 () Bool)

(declare-fun b_next!46709 () Bool)

(assert (=> b!1705652 (= b_free!46005 (not b_next!46709))))

(declare-fun tp!487012 () Bool)

(declare-fun b_and!123219 () Bool)

(assert (=> b!1705652 (= tp!487012 b_and!123219)))

(declare-fun res!764528 () Bool)

(declare-fun e!1090861 () Bool)

(assert (=> start!166450 (=> (not res!764528) (not e!1090861))))

(declare-datatypes ((LexerInterface!2902 0))(
  ( (LexerInterfaceExt!2899 (__x!12028 Int)) (Lexer!2900) )
))
(declare-fun thiss!24550 () LexerInterface!2902)

(get-info :version)

(assert (=> start!166450 (= res!764528 ((_ is Lexer!2900) thiss!24550))))

(assert (=> start!166450 e!1090861))

(assert (=> start!166450 true))

(declare-fun e!1090865 () Bool)

(assert (=> start!166450 e!1090865))

(declare-fun e!1090858 () Bool)

(assert (=> start!166450 e!1090858))

(declare-datatypes ((List!18644 0))(
  ( (Nil!18574) (Cons!18574 (h!23975 (_ BitVec 16)) (t!157945 List!18644)) )
))
(declare-datatypes ((TokenValue!3363 0))(
  ( (FloatLiteralValue!6726 (text!23986 List!18644)) (TokenValueExt!3362 (__x!12029 Int)) (Broken!16815 (value!102927 List!18644)) (Object!3432) (End!3363) (Def!3363) (Underscore!3363) (Match!3363) (Else!3363) (Error!3363) (Case!3363) (If!3363) (Extends!3363) (Abstract!3363) (Class!3363) (Val!3363) (DelimiterValue!6726 (del!3423 List!18644)) (KeywordValue!3369 (value!102928 List!18644)) (CommentValue!6726 (value!102929 List!18644)) (WhitespaceValue!6726 (value!102930 List!18644)) (IndentationValue!3363 (value!102931 List!18644)) (String!21146) (Int32!3363) (Broken!16816 (value!102932 List!18644)) (Boolean!3364) (Unit!32428) (OperatorValue!3366 (op!3423 List!18644)) (IdentifierValue!6726 (value!102933 List!18644)) (IdentifierValue!6727 (value!102934 List!18644)) (WhitespaceValue!6727 (value!102935 List!18644)) (True!6726) (False!6726) (Broken!16817 (value!102936 List!18644)) (Broken!16818 (value!102937 List!18644)) (True!6727) (RightBrace!3363) (RightBracket!3363) (Colon!3363) (Null!3363) (Comma!3363) (LeftBracket!3363) (False!6727) (LeftBrace!3363) (ImaginaryLiteralValue!3363 (text!23987 List!18644)) (StringLiteralValue!10089 (value!102938 List!18644)) (EOFValue!3363 (value!102939 List!18644)) (IdentValue!3363 (value!102940 List!18644)) (DelimiterValue!6727 (value!102941 List!18644)) (DedentValue!3363 (value!102942 List!18644)) (NewLineValue!3363 (value!102943 List!18644)) (IntegerValue!10089 (value!102944 (_ BitVec 32)) (text!23988 List!18644)) (IntegerValue!10090 (value!102945 Int) (text!23989 List!18644)) (Times!3363) (Or!3363) (Equal!3363) (Minus!3363) (Broken!16819 (value!102946 List!18644)) (And!3363) (Div!3363) (LessEqual!3363) (Mod!3363) (Concat!7964) (Not!3363) (Plus!3363) (SpaceValue!3363 (value!102947 List!18644)) (IntegerValue!10091 (value!102948 Int) (text!23990 List!18644)) (StringLiteralValue!10090 (text!23991 List!18644)) (FloatLiteralValue!6727 (text!23992 List!18644)) (BytesLiteralValue!3363 (value!102949 List!18644)) (CommentValue!6727 (value!102950 List!18644)) (StringLiteralValue!10091 (value!102951 List!18644)) (ErrorTokenValue!3363 (msg!3424 List!18644)) )
))
(declare-datatypes ((C!9376 0))(
  ( (C!9377 (val!5284 Int)) )
))
(declare-datatypes ((List!18645 0))(
  ( (Nil!18575) (Cons!18575 (h!23976 C!9376) (t!157946 List!18645)) )
))
(declare-datatypes ((String!21147 0))(
  ( (String!21148 (value!102952 String)) )
))
(declare-datatypes ((Regex!4601 0))(
  ( (ElementMatch!4601 (c!279642 C!9376)) (Concat!7965 (regOne!9714 Regex!4601) (regTwo!9714 Regex!4601)) (EmptyExpr!4601) (Star!4601 (reg!4930 Regex!4601)) (EmptyLang!4601) (Union!4601 (regOne!9715 Regex!4601) (regTwo!9715 Regex!4601)) )
))
(declare-datatypes ((IArray!12371 0))(
  ( (IArray!12372 (innerList!6243 List!18645)) )
))
(declare-datatypes ((Conc!6183 0))(
  ( (Node!6183 (left!14833 Conc!6183) (right!15163 Conc!6183) (csize!12596 Int) (cheight!6394 Int)) (Leaf!9040 (xs!9059 IArray!12371) (csize!12597 Int)) (Empty!6183) )
))
(declare-datatypes ((BalanceConc!12310 0))(
  ( (BalanceConc!12311 (c!279643 Conc!6183)) )
))
(declare-datatypes ((TokenValueInjection!6386 0))(
  ( (TokenValueInjection!6387 (toValue!4768 Int) (toChars!4627 Int)) )
))
(declare-datatypes ((Rule!6346 0))(
  ( (Rule!6347 (regex!3273 Regex!4601) (tag!3569 String!21147) (isSeparator!3273 Bool) (transformation!3273 TokenValueInjection!6386)) )
))
(declare-datatypes ((Token!6112 0))(
  ( (Token!6113 (value!102953 TokenValue!3363) (rule!5205 Rule!6346) (size!14798 Int) (originalCharacters!4087 List!18645)) )
))
(declare-fun token!523 () Token!6112)

(declare-fun e!1090866 () Bool)

(declare-fun inv!23965 (Token!6112) Bool)

(assert (=> start!166450 (and (inv!23965 token!523) e!1090866)))

(declare-fun b!1705648 () Bool)

(declare-fun rule!422 () Rule!6346)

(declare-fun tp!487021 () Bool)

(declare-fun e!1090862 () Bool)

(declare-fun inv!23962 (String!21147) Bool)

(declare-fun inv!23966 (TokenValueInjection!6386) Bool)

(assert (=> b!1705648 (= e!1090858 (and tp!487021 (inv!23962 (tag!3569 rule!422)) (inv!23966 (transformation!3273 rule!422)) e!1090862))))

(declare-fun e!1090867 () Bool)

(declare-fun b!1705649 () Bool)

(declare-fun tp!487016 () Bool)

(declare-fun e!1090860 () Bool)

(assert (=> b!1705649 (= e!1090867 (and tp!487016 (inv!23962 (tag!3569 (rule!5205 token!523))) (inv!23966 (transformation!3273 (rule!5205 token!523))) e!1090860))))

(declare-fun b!1705650 () Bool)

(declare-fun res!764527 () Bool)

(assert (=> b!1705650 (=> (not res!764527) (not e!1090861))))

(declare-datatypes ((List!18646 0))(
  ( (Nil!18576) (Cons!18576 (h!23977 Rule!6346) (t!157947 List!18646)) )
))
(declare-fun rules!3447 () List!18646)

(declare-datatypes ((tuple2!18326 0))(
  ( (tuple2!18327 (_1!10565 Token!6112) (_2!10565 List!18645)) )
))
(declare-datatypes ((Option!3597 0))(
  ( (None!3596) (Some!3596 (v!24969 tuple2!18326)) )
))
(declare-fun isDefined!2942 (Option!3597) Bool)

(declare-fun maxPrefix!1456 (LexerInterface!2902 List!18646 List!18645) Option!3597)

(declare-fun list!7489 (BalanceConc!12310) List!18645)

(declare-fun charsOf!1922 (Token!6112) BalanceConc!12310)

(assert (=> b!1705650 (= res!764527 (isDefined!2942 (maxPrefix!1456 thiss!24550 rules!3447 (list!7489 (charsOf!1922 token!523)))))))

(declare-fun b!1705651 () Bool)

(declare-fun e!1090868 () Bool)

(declare-fun tp!487022 () Bool)

(assert (=> b!1705651 (= e!1090865 (and e!1090868 tp!487022))))

(assert (=> b!1705652 (= e!1090862 (and tp!487015 tp!487012))))

(declare-fun e!1090870 () Bool)

(assert (=> b!1705653 (= e!1090870 (and tp!487020 tp!487013))))

(assert (=> b!1705654 (= e!1090860 (and tp!487019 tp!487017))))

(declare-fun b!1705655 () Bool)

(declare-fun res!764531 () Bool)

(assert (=> b!1705655 (=> (not res!764531) (not e!1090861))))

(declare-fun isEmpty!11661 (List!18646) Bool)

(assert (=> b!1705655 (= res!764531 (not (isEmpty!11661 rules!3447)))))

(declare-fun b!1705656 () Bool)

(declare-fun res!764529 () Bool)

(assert (=> b!1705656 (=> (not res!764529) (not e!1090861))))

(declare-fun contains!3289 (List!18646 Rule!6346) Bool)

(assert (=> b!1705656 (= res!764529 (contains!3289 rules!3447 rule!422))))

(declare-fun b!1705657 () Bool)

(declare-fun tp!487014 () Bool)

(declare-fun inv!21 (TokenValue!3363) Bool)

(assert (=> b!1705657 (= e!1090866 (and (inv!21 (value!102953 token!523)) e!1090867 tp!487014))))

(declare-fun b!1705658 () Bool)

(assert (=> b!1705658 (= e!1090861 false)))

(declare-fun lt!652306 () Bool)

(declare-fun rulesValidInductive!1066 (LexerInterface!2902 List!18646) Bool)

(assert (=> b!1705658 (= lt!652306 (rulesValidInductive!1066 thiss!24550 rules!3447))))

(declare-fun b!1705659 () Bool)

(declare-fun res!764530 () Bool)

(assert (=> b!1705659 (=> (not res!764530) (not e!1090861))))

(declare-fun rulesInvariant!2571 (LexerInterface!2902 List!18646) Bool)

(assert (=> b!1705659 (= res!764530 (rulesInvariant!2571 thiss!24550 rules!3447))))

(declare-fun b!1705660 () Bool)

(declare-fun tp!487018 () Bool)

(assert (=> b!1705660 (= e!1090868 (and tp!487018 (inv!23962 (tag!3569 (h!23977 rules!3447))) (inv!23966 (transformation!3273 (h!23977 rules!3447))) e!1090870))))

(assert (= (and start!166450 res!764528) b!1705655))

(assert (= (and b!1705655 res!764531) b!1705659))

(assert (= (and b!1705659 res!764530) b!1705656))

(assert (= (and b!1705656 res!764529) b!1705650))

(assert (= (and b!1705650 res!764527) b!1705658))

(assert (= b!1705660 b!1705653))

(assert (= b!1705651 b!1705660))

(assert (= (and start!166450 ((_ is Cons!18576) rules!3447)) b!1705651))

(assert (= b!1705648 b!1705652))

(assert (= start!166450 b!1705648))

(assert (= b!1705649 b!1705654))

(assert (= b!1705657 b!1705649))

(assert (= start!166450 b!1705657))

(declare-fun m!2109497 () Bool)

(assert (=> b!1705656 m!2109497))

(declare-fun m!2109499 () Bool)

(assert (=> b!1705658 m!2109499))

(declare-fun m!2109501 () Bool)

(assert (=> start!166450 m!2109501))

(declare-fun m!2109503 () Bool)

(assert (=> b!1705657 m!2109503))

(declare-fun m!2109505 () Bool)

(assert (=> b!1705649 m!2109505))

(declare-fun m!2109507 () Bool)

(assert (=> b!1705649 m!2109507))

(declare-fun m!2109509 () Bool)

(assert (=> b!1705648 m!2109509))

(declare-fun m!2109511 () Bool)

(assert (=> b!1705648 m!2109511))

(declare-fun m!2109513 () Bool)

(assert (=> b!1705660 m!2109513))

(declare-fun m!2109515 () Bool)

(assert (=> b!1705660 m!2109515))

(declare-fun m!2109517 () Bool)

(assert (=> b!1705655 m!2109517))

(declare-fun m!2109519 () Bool)

(assert (=> b!1705659 m!2109519))

(declare-fun m!2109521 () Bool)

(assert (=> b!1705650 m!2109521))

(assert (=> b!1705650 m!2109521))

(declare-fun m!2109523 () Bool)

(assert (=> b!1705650 m!2109523))

(assert (=> b!1705650 m!2109523))

(declare-fun m!2109525 () Bool)

(assert (=> b!1705650 m!2109525))

(assert (=> b!1705650 m!2109525))

(declare-fun m!2109527 () Bool)

(assert (=> b!1705650 m!2109527))

(check-sat (not b!1705648) (not b!1705650) (not b!1705656) (not b_next!46703) (not b!1705655) (not b!1705659) (not start!166450) b_and!123219 b_and!123211 (not b!1705658) b_and!123217 (not b_next!46699) (not b!1705660) (not b!1705657) (not b_next!46701) (not b!1705651) (not b_next!46707) (not b_next!46705) (not b!1705649) b_and!123209 b_and!123213 b_and!123215 (not b_next!46709))
(check-sat (not b_next!46701) (not b_next!46703) b_and!123219 b_and!123211 b_and!123209 b_and!123217 (not b_next!46699) (not b_next!46707) (not b_next!46705) b_and!123213 b_and!123215 (not b_next!46709))
