; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353960 () Bool)

(assert start!353960)

(declare-fun b!3767973 () Bool)

(declare-fun b_free!100965 () Bool)

(declare-fun b_next!101669 () Bool)

(assert (=> b!3767973 (= b_free!100965 (not b_next!101669))))

(declare-fun tp!1151105 () Bool)

(declare-fun b_and!279779 () Bool)

(assert (=> b!3767973 (= tp!1151105 b_and!279779)))

(declare-fun b_free!100967 () Bool)

(declare-fun b_next!101671 () Bool)

(assert (=> b!3767973 (= b_free!100967 (not b_next!101671))))

(declare-fun tp!1151104 () Bool)

(declare-fun b_and!279781 () Bool)

(assert (=> b!3767973 (= tp!1151104 b_and!279781)))

(declare-fun b!3767957 () Bool)

(declare-fun e!2330490 () Bool)

(declare-fun e!2330494 () Bool)

(assert (=> b!3767957 (= e!2330490 e!2330494)))

(declare-fun res!1525483 () Bool)

(assert (=> b!3767957 (=> res!1525483 e!2330494)))

(declare-datatypes ((List!40360 0))(
  ( (Nil!40236) (Cons!40236 (h!45656 (_ BitVec 16)) (t!304397 List!40360)) )
))
(declare-datatypes ((TokenValue!6414 0))(
  ( (FloatLiteralValue!12828 (text!45343 List!40360)) (TokenValueExt!6413 (__x!25045 Int)) (Broken!32070 (value!196825 List!40360)) (Object!6537) (End!6414) (Def!6414) (Underscore!6414) (Match!6414) (Else!6414) (Error!6414) (Case!6414) (If!6414) (Extends!6414) (Abstract!6414) (Class!6414) (Val!6414) (DelimiterValue!12828 (del!6474 List!40360)) (KeywordValue!6420 (value!196826 List!40360)) (CommentValue!12828 (value!196827 List!40360)) (WhitespaceValue!12828 (value!196828 List!40360)) (IndentationValue!6414 (value!196829 List!40360)) (String!45751) (Int32!6414) (Broken!32071 (value!196830 List!40360)) (Boolean!6415) (Unit!57939) (OperatorValue!6417 (op!6474 List!40360)) (IdentifierValue!12828 (value!196831 List!40360)) (IdentifierValue!12829 (value!196832 List!40360)) (WhitespaceValue!12829 (value!196833 List!40360)) (True!12828) (False!12828) (Broken!32072 (value!196834 List!40360)) (Broken!32073 (value!196835 List!40360)) (True!12829) (RightBrace!6414) (RightBracket!6414) (Colon!6414) (Null!6414) (Comma!6414) (LeftBracket!6414) (False!12829) (LeftBrace!6414) (ImaginaryLiteralValue!6414 (text!45344 List!40360)) (StringLiteralValue!19242 (value!196836 List!40360)) (EOFValue!6414 (value!196837 List!40360)) (IdentValue!6414 (value!196838 List!40360)) (DelimiterValue!12829 (value!196839 List!40360)) (DedentValue!6414 (value!196840 List!40360)) (NewLineValue!6414 (value!196841 List!40360)) (IntegerValue!19242 (value!196842 (_ BitVec 32)) (text!45345 List!40360)) (IntegerValue!19243 (value!196843 Int) (text!45346 List!40360)) (Times!6414) (Or!6414) (Equal!6414) (Minus!6414) (Broken!32074 (value!196844 List!40360)) (And!6414) (Div!6414) (LessEqual!6414) (Mod!6414) (Concat!17503) (Not!6414) (Plus!6414) (SpaceValue!6414 (value!196845 List!40360)) (IntegerValue!19244 (value!196846 Int) (text!45347 List!40360)) (StringLiteralValue!19243 (text!45348 List!40360)) (FloatLiteralValue!12829 (text!45349 List!40360)) (BytesLiteralValue!6414 (value!196847 List!40360)) (CommentValue!12829 (value!196848 List!40360)) (StringLiteralValue!19244 (value!196849 List!40360)) (ErrorTokenValue!6414 (msg!6475 List!40360)) )
))
(declare-datatypes ((C!22364 0))(
  ( (C!22365 (val!13258 Int)) )
))
(declare-datatypes ((Regex!11089 0))(
  ( (ElementMatch!11089 (c!652717 C!22364)) (Concat!17504 (regOne!22690 Regex!11089) (regTwo!22690 Regex!11089)) (EmptyExpr!11089) (Star!11089 (reg!11418 Regex!11089)) (EmptyLang!11089) (Union!11089 (regOne!22691 Regex!11089) (regTwo!22691 Regex!11089)) )
))
(declare-datatypes ((String!45752 0))(
  ( (String!45753 (value!196850 String)) )
))
(declare-datatypes ((List!40361 0))(
  ( (Nil!40237) (Cons!40237 (h!45657 C!22364) (t!304398 List!40361)) )
))
(declare-datatypes ((IArray!24689 0))(
  ( (IArray!24690 (innerList!12402 List!40361)) )
))
(declare-datatypes ((Conc!12342 0))(
  ( (Node!12342 (left!31139 Conc!12342) (right!31469 Conc!12342) (csize!24914 Int) (cheight!12553 Int)) (Leaf!19132 (xs!15556 IArray!24689) (csize!24915 Int)) (Empty!12342) )
))
(declare-datatypes ((BalanceConc!24278 0))(
  ( (BalanceConc!24279 (c!652718 Conc!12342)) )
))
(declare-datatypes ((TokenValueInjection!12256 0))(
  ( (TokenValueInjection!12257 (toValue!8548 Int) (toChars!8407 Int)) )
))
(declare-datatypes ((Rule!12168 0))(
  ( (Rule!12169 (regex!6184 Regex!11089) (tag!7044 String!45752) (isSeparator!6184 Bool) (transformation!6184 TokenValueInjection!12256)) )
))
(declare-datatypes ((Token!11506 0))(
  ( (Token!11507 (value!196851 TokenValue!6414) (rule!8948 Rule!12168) (size!30273 Int) (originalCharacters!6784 List!40361)) )
))
(declare-datatypes ((List!40362 0))(
  ( (Nil!40238) (Cons!40238 (h!45658 Token!11506) (t!304399 List!40362)) )
))
(declare-fun lt!1303733 () List!40362)

(declare-fun isEmpty!23632 (List!40362) Bool)

(assert (=> b!3767957 (= res!1525483 (isEmpty!23632 lt!1303733))))

(declare-fun lt!1303751 () List!40361)

(declare-datatypes ((IArray!24691 0))(
  ( (IArray!24692 (innerList!12403 List!40362)) )
))
(declare-datatypes ((Conc!12343 0))(
  ( (Node!12343 (left!31140 Conc!12343) (right!31470 Conc!12343) (csize!24916 Int) (cheight!12554 Int)) (Leaf!19133 (xs!15557 IArray!24691) (csize!24917 Int)) (Empty!12343) )
))
(declare-datatypes ((BalanceConc!24280 0))(
  ( (BalanceConc!24281 (c!652719 Conc!12343)) )
))
(declare-datatypes ((tuple2!39280 0))(
  ( (tuple2!39281 (_1!22774 BalanceConc!24280) (_2!22774 BalanceConc!24278)) )
))
(declare-fun lt!1303730 () tuple2!39280)

(declare-fun list!14887 (BalanceConc!24278) List!40361)

(assert (=> b!3767957 (= lt!1303751 (list!14887 (_2!22774 lt!1303730)))))

(declare-fun acc!335 () BalanceConc!24280)

(declare-datatypes ((tuple2!39282 0))(
  ( (tuple2!39283 (_1!22775 Token!11506) (_2!22775 BalanceConc!24278)) )
))
(declare-datatypes ((Option!8584 0))(
  ( (None!8583) (Some!8583 (v!38749 tuple2!39282)) )
))
(declare-fun lt!1303736 () Option!8584)

(declare-fun list!14888 (BalanceConc!24280) List!40362)

(declare-fun append!1016 (BalanceConc!24280 Token!11506) BalanceConc!24280)

(assert (=> b!3767957 (= lt!1303733 (list!14888 (append!1016 acc!335 (_1!22775 (v!38749 lt!1303736)))))))

(declare-fun lt!1303743 () List!40362)

(declare-fun lt!1303748 () List!40362)

(declare-fun lt!1303726 () List!40362)

(declare-fun ++!10004 (List!40362 List!40362) List!40362)

(assert (=> b!3767957 (= (++!10004 (++!10004 lt!1303743 lt!1303748) lt!1303726) (++!10004 lt!1303743 (++!10004 lt!1303748 lt!1303726)))))

(declare-datatypes ((Unit!57940 0))(
  ( (Unit!57941) )
))
(declare-fun lt!1303747 () Unit!57940)

(declare-fun lemmaConcatAssociativity!2119 (List!40362 List!40362 List!40362) Unit!57940)

(assert (=> b!3767957 (= lt!1303747 (lemmaConcatAssociativity!2119 lt!1303743 lt!1303748 lt!1303726))))

(assert (=> b!3767957 (= lt!1303726 (list!14888 (_1!22774 lt!1303730)))))

(assert (=> b!3767957 (= lt!1303748 (Cons!40238 (_1!22775 (v!38749 lt!1303736)) Nil!40238))))

(declare-fun lt!1303744 () tuple2!39280)

(declare-fun e!2330496 () tuple2!39280)

(assert (=> b!3767957 (= lt!1303744 e!2330496)))

(declare-fun c!652716 () Bool)

(declare-fun lt!1303746 () Option!8584)

(get-info :version)

(assert (=> b!3767957 (= c!652716 ((_ is Some!8583) lt!1303746))))

(declare-fun input!678 () BalanceConc!24278)

(declare-datatypes ((List!40363 0))(
  ( (Nil!40239) (Cons!40239 (h!45659 Rule!12168) (t!304400 List!40363)) )
))
(declare-fun rules!1265 () List!40363)

(declare-datatypes ((LexerInterface!5773 0))(
  ( (LexerInterfaceExt!5770 (__x!25046 Int)) (Lexer!5771) )
))
(declare-fun thiss!11876 () LexerInterface!5773)

(declare-fun maxPrefixZipperSequence!1181 (LexerInterface!5773 List!40363 BalanceConc!24278) Option!8584)

(assert (=> b!3767957 (= lt!1303746 (maxPrefixZipperSequence!1181 thiss!11876 rules!1265 input!678))))

(declare-fun lt!1303750 () List!40361)

(declare-fun lt!1303731 () List!40361)

(declare-fun lt!1303732 () List!40361)

(declare-fun ++!10005 (List!40361 List!40361) List!40361)

(assert (=> b!3767957 (= lt!1303750 (++!10005 lt!1303731 lt!1303732))))

(declare-fun lt!1303727 () List!40361)

(declare-fun lt!1303741 () List!40361)

(assert (=> b!3767957 (= lt!1303750 (++!10005 lt!1303727 lt!1303741))))

(declare-fun lt!1303735 () List!40361)

(assert (=> b!3767957 (= lt!1303732 (++!10005 lt!1303735 lt!1303741))))

(assert (=> b!3767957 (= lt!1303727 (++!10005 lt!1303731 lt!1303735))))

(declare-fun lt!1303745 () Unit!57940)

(declare-fun lemmaConcatAssociativity!2120 (List!40361 List!40361 List!40361) Unit!57940)

(assert (=> b!3767957 (= lt!1303745 (lemmaConcatAssociativity!2120 lt!1303731 lt!1303735 lt!1303741))))

(assert (=> b!3767957 (= lt!1303741 (list!14887 (_2!22775 (v!38749 lt!1303736))))))

(declare-fun charsOf!4026 (Token!11506) BalanceConc!24278)

(assert (=> b!3767957 (= lt!1303735 (list!14887 (charsOf!4026 (_1!22775 (v!38749 lt!1303736)))))))

(declare-fun lexRec!797 (LexerInterface!5773 List!40363 BalanceConc!24278) tuple2!39280)

(assert (=> b!3767957 (= lt!1303730 (lexRec!797 thiss!11876 rules!1265 (_2!22775 (v!38749 lt!1303736))))))

(declare-fun b!3767958 () Bool)

(declare-fun e!2330501 () Bool)

(declare-fun treated!13 () BalanceConc!24278)

(declare-fun tp!1151106 () Bool)

(declare-fun inv!54050 (Conc!12342) Bool)

(assert (=> b!3767958 (= e!2330501 (and (inv!54050 (c!652718 treated!13)) tp!1151106))))

(declare-fun b!3767959 () Bool)

(declare-fun res!1525478 () Bool)

(declare-fun e!2330497 () Bool)

(assert (=> b!3767959 (=> (not res!1525478) (not e!2330497))))

(declare-fun lt!1303739 () tuple2!39280)

(declare-fun isEmpty!23633 (List!40361) Bool)

(assert (=> b!3767959 (= res!1525478 (isEmpty!23633 (list!14887 (_2!22774 lt!1303739))))))

(declare-fun b!3767960 () Bool)

(declare-fun e!2330499 () Bool)

(assert (=> b!3767960 (= e!2330499 e!2330490)))

(declare-fun res!1525479 () Bool)

(assert (=> b!3767960 (=> res!1525479 e!2330490)))

(assert (=> b!3767960 (= res!1525479 (not ((_ is Some!8583) lt!1303736)))))

(declare-fun totalInput!335 () BalanceConc!24278)

(declare-fun maxPrefixZipperSequenceV2!577 (LexerInterface!5773 List!40363 BalanceConc!24278 BalanceConc!24278) Option!8584)

(assert (=> b!3767960 (= lt!1303736 (maxPrefixZipperSequenceV2!577 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun b!3767961 () Bool)

(declare-fun lt!1303734 () tuple2!39280)

(declare-fun prepend!1316 (BalanceConc!24280 Token!11506) BalanceConc!24280)

(assert (=> b!3767961 (= e!2330496 (tuple2!39281 (prepend!1316 (_1!22774 lt!1303734) (_1!22775 (v!38749 lt!1303746))) (_2!22774 lt!1303734)))))

(assert (=> b!3767961 (= lt!1303734 (lexRec!797 thiss!11876 rules!1265 (_2!22775 (v!38749 lt!1303746))))))

(declare-fun b!3767962 () Bool)

(declare-fun e!2330493 () Bool)

(declare-fun e!2330488 () Bool)

(declare-fun tp!1151101 () Bool)

(assert (=> b!3767962 (= e!2330493 (and e!2330488 tp!1151101))))

(declare-fun b!3767963 () Bool)

(declare-fun e!2330502 () Bool)

(declare-fun tp!1151103 () Bool)

(assert (=> b!3767963 (= e!2330502 (and (inv!54050 (c!652718 totalInput!335)) tp!1151103))))

(declare-fun res!1525484 () Bool)

(declare-fun e!2330487 () Bool)

(assert (=> start!353960 (=> (not res!1525484) (not e!2330487))))

(assert (=> start!353960 (= res!1525484 ((_ is Lexer!5771) thiss!11876))))

(assert (=> start!353960 e!2330487))

(declare-fun e!2330498 () Bool)

(declare-fun inv!54051 (BalanceConc!24278) Bool)

(assert (=> start!353960 (and (inv!54051 input!678) e!2330498)))

(declare-fun e!2330495 () Bool)

(declare-fun inv!54052 (BalanceConc!24280) Bool)

(assert (=> start!353960 (and (inv!54052 acc!335) e!2330495)))

(assert (=> start!353960 (and (inv!54051 treated!13) e!2330501)))

(assert (=> start!353960 e!2330493))

(assert (=> start!353960 true))

(assert (=> start!353960 (and (inv!54051 totalInput!335) e!2330502)))

(declare-fun b!3767964 () Bool)

(assert (=> b!3767964 (= e!2330494 true)))

(declare-datatypes ((tuple2!39284 0))(
  ( (tuple2!39285 (_1!22776 List!40362) (_2!22776 List!40361)) )
))
(declare-fun lt!1303729 () tuple2!39284)

(declare-fun lexList!1547 (LexerInterface!5773 List!40363 List!40361) tuple2!39284)

(assert (=> b!3767964 (= lt!1303729 (lexList!1547 thiss!11876 rules!1265 lt!1303741))))

(declare-fun b!3767965 () Bool)

(declare-fun e!2330492 () Bool)

(assert (=> b!3767965 (= e!2330497 e!2330492)))

(declare-fun res!1525481 () Bool)

(assert (=> b!3767965 (=> (not res!1525481) (not e!2330492))))

(declare-fun lt!1303738 () tuple2!39280)

(declare-fun ++!10006 (BalanceConc!24280 BalanceConc!24280) BalanceConc!24280)

(assert (=> b!3767965 (= res!1525481 (= (list!14888 (_1!22774 lt!1303738)) (list!14888 (++!10006 acc!335 (_1!22774 lt!1303744)))))))

(assert (=> b!3767965 (= lt!1303744 (lexRec!797 thiss!11876 rules!1265 input!678))))

(assert (=> b!3767965 (= lt!1303738 (lexRec!797 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3767966 () Bool)

(assert (=> b!3767966 (= e!2330492 (not e!2330499))))

(declare-fun res!1525477 () Bool)

(assert (=> b!3767966 (=> res!1525477 e!2330499)))

(declare-fun lt!1303737 () List!40361)

(declare-fun lt!1303742 () List!40361)

(declare-fun isSuffix!958 (List!40361 List!40361) Bool)

(assert (=> b!3767966 (= res!1525477 (not (isSuffix!958 lt!1303737 lt!1303742)))))

(declare-fun lt!1303740 () List!40361)

(assert (=> b!3767966 (isSuffix!958 lt!1303737 lt!1303740)))

(declare-fun lt!1303728 () Unit!57940)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!643 (List!40361 List!40361) Unit!57940)

(assert (=> b!3767966 (= lt!1303728 (lemmaConcatTwoListThenFSndIsSuffix!643 lt!1303731 lt!1303737))))

(declare-fun b!3767967 () Bool)

(declare-fun tp!1151099 () Bool)

(assert (=> b!3767967 (= e!2330498 (and (inv!54050 (c!652718 input!678)) tp!1151099))))

(declare-fun b!3767968 () Bool)

(declare-fun res!1525475 () Bool)

(assert (=> b!3767968 (=> (not res!1525475) (not e!2330492))))

(assert (=> b!3767968 (= res!1525475 (= (list!14887 (_2!22774 lt!1303738)) (list!14887 (_2!22774 lt!1303744))))))

(declare-fun tp!1151102 () Bool)

(declare-fun b!3767969 () Bool)

(declare-fun e!2330491 () Bool)

(declare-fun inv!54044 (String!45752) Bool)

(declare-fun inv!54053 (TokenValueInjection!12256) Bool)

(assert (=> b!3767969 (= e!2330488 (and tp!1151102 (inv!54044 (tag!7044 (h!45659 rules!1265))) (inv!54053 (transformation!6184 (h!45659 rules!1265))) e!2330491))))

(declare-fun b!3767970 () Bool)

(declare-fun res!1525485 () Bool)

(assert (=> b!3767970 (=> (not res!1525485) (not e!2330487))))

(declare-fun rulesInvariant!5116 (LexerInterface!5773 List!40363) Bool)

(assert (=> b!3767970 (= res!1525485 (rulesInvariant!5116 thiss!11876 rules!1265))))

(declare-fun b!3767971 () Bool)

(assert (=> b!3767971 (= e!2330496 (tuple2!39281 (BalanceConc!24281 Empty!12343) input!678))))

(declare-fun b!3767972 () Bool)

(declare-fun e!2330500 () Bool)

(assert (=> b!3767972 (= e!2330500 e!2330497)))

(declare-fun res!1525486 () Bool)

(assert (=> b!3767972 (=> (not res!1525486) (not e!2330497))))

(declare-fun lt!1303749 () List!40362)

(assert (=> b!3767972 (= res!1525486 (= lt!1303749 lt!1303743))))

(assert (=> b!3767972 (= lt!1303743 (list!14888 acc!335))))

(assert (=> b!3767972 (= lt!1303749 (list!14888 (_1!22774 lt!1303739)))))

(assert (=> b!3767972 (= lt!1303739 (lexRec!797 thiss!11876 rules!1265 treated!13))))

(assert (=> b!3767973 (= e!2330491 (and tp!1151105 tp!1151104))))

(declare-fun b!3767974 () Bool)

(declare-fun res!1525482 () Bool)

(assert (=> b!3767974 (=> res!1525482 e!2330494)))

(assert (=> b!3767974 (= res!1525482 (isEmpty!23633 lt!1303727))))

(declare-fun b!3767975 () Bool)

(declare-fun res!1525476 () Bool)

(assert (=> b!3767975 (=> res!1525476 e!2330494)))

(assert (=> b!3767975 (= res!1525476 (not (= (lexList!1547 thiss!11876 rules!1265 lt!1303750) (tuple2!39285 (++!10004 lt!1303733 lt!1303726) lt!1303751))))))

(declare-fun b!3767976 () Bool)

(assert (=> b!3767976 (= e!2330487 e!2330500)))

(declare-fun res!1525474 () Bool)

(assert (=> b!3767976 (=> (not res!1525474) (not e!2330500))))

(assert (=> b!3767976 (= res!1525474 (= lt!1303742 lt!1303740))))

(assert (=> b!3767976 (= lt!1303740 (++!10005 lt!1303731 lt!1303737))))

(assert (=> b!3767976 (= lt!1303742 (list!14887 totalInput!335))))

(assert (=> b!3767976 (= lt!1303737 (list!14887 input!678))))

(assert (=> b!3767976 (= lt!1303731 (list!14887 treated!13))))

(declare-fun b!3767977 () Bool)

(declare-fun res!1525480 () Bool)

(assert (=> b!3767977 (=> (not res!1525480) (not e!2330487))))

(declare-fun isEmpty!23634 (List!40363) Bool)

(assert (=> b!3767977 (= res!1525480 (not (isEmpty!23634 rules!1265)))))

(declare-fun b!3767978 () Bool)

(declare-fun tp!1151100 () Bool)

(declare-fun inv!54054 (Conc!12343) Bool)

(assert (=> b!3767978 (= e!2330495 (and (inv!54054 (c!652719 acc!335)) tp!1151100))))

(assert (= (and start!353960 res!1525484) b!3767977))

(assert (= (and b!3767977 res!1525480) b!3767970))

(assert (= (and b!3767970 res!1525485) b!3767976))

(assert (= (and b!3767976 res!1525474) b!3767972))

(assert (= (and b!3767972 res!1525486) b!3767959))

(assert (= (and b!3767959 res!1525478) b!3767965))

(assert (= (and b!3767965 res!1525481) b!3767968))

(assert (= (and b!3767968 res!1525475) b!3767966))

(assert (= (and b!3767966 (not res!1525477)) b!3767960))

(assert (= (and b!3767960 (not res!1525479)) b!3767957))

(assert (= (and b!3767957 c!652716) b!3767961))

(assert (= (and b!3767957 (not c!652716)) b!3767971))

(assert (= (and b!3767957 (not res!1525483)) b!3767974))

(assert (= (and b!3767974 (not res!1525482)) b!3767975))

(assert (= (and b!3767975 (not res!1525476)) b!3767964))

(assert (= start!353960 b!3767967))

(assert (= start!353960 b!3767978))

(assert (= start!353960 b!3767958))

(assert (= b!3767969 b!3767973))

(assert (= b!3767962 b!3767969))

(assert (= (and start!353960 ((_ is Cons!40239) rules!1265)) b!3767962))

(assert (= start!353960 b!3767963))

(declare-fun m!4264553 () Bool)

(assert (=> b!3767957 m!4264553))

(declare-fun m!4264555 () Bool)

(assert (=> b!3767957 m!4264555))

(declare-fun m!4264557 () Bool)

(assert (=> b!3767957 m!4264557))

(declare-fun m!4264559 () Bool)

(assert (=> b!3767957 m!4264559))

(assert (=> b!3767957 m!4264559))

(declare-fun m!4264561 () Bool)

(assert (=> b!3767957 m!4264561))

(declare-fun m!4264563 () Bool)

(assert (=> b!3767957 m!4264563))

(declare-fun m!4264565 () Bool)

(assert (=> b!3767957 m!4264565))

(declare-fun m!4264567 () Bool)

(assert (=> b!3767957 m!4264567))

(declare-fun m!4264569 () Bool)

(assert (=> b!3767957 m!4264569))

(declare-fun m!4264571 () Bool)

(assert (=> b!3767957 m!4264571))

(declare-fun m!4264573 () Bool)

(assert (=> b!3767957 m!4264573))

(declare-fun m!4264575 () Bool)

(assert (=> b!3767957 m!4264575))

(assert (=> b!3767957 m!4264553))

(declare-fun m!4264577 () Bool)

(assert (=> b!3767957 m!4264577))

(declare-fun m!4264579 () Bool)

(assert (=> b!3767957 m!4264579))

(declare-fun m!4264581 () Bool)

(assert (=> b!3767957 m!4264581))

(assert (=> b!3767957 m!4264565))

(declare-fun m!4264583 () Bool)

(assert (=> b!3767957 m!4264583))

(declare-fun m!4264585 () Bool)

(assert (=> b!3767957 m!4264585))

(assert (=> b!3767957 m!4264573))

(declare-fun m!4264587 () Bool)

(assert (=> b!3767957 m!4264587))

(declare-fun m!4264589 () Bool)

(assert (=> b!3767957 m!4264589))

(declare-fun m!4264591 () Bool)

(assert (=> b!3767957 m!4264591))

(declare-fun m!4264593 () Bool)

(assert (=> b!3767966 m!4264593))

(declare-fun m!4264595 () Bool)

(assert (=> b!3767966 m!4264595))

(declare-fun m!4264597 () Bool)

(assert (=> b!3767966 m!4264597))

(declare-fun m!4264599 () Bool)

(assert (=> b!3767968 m!4264599))

(declare-fun m!4264601 () Bool)

(assert (=> b!3767968 m!4264601))

(declare-fun m!4264603 () Bool)

(assert (=> b!3767970 m!4264603))

(declare-fun m!4264605 () Bool)

(assert (=> b!3767974 m!4264605))

(declare-fun m!4264607 () Bool)

(assert (=> b!3767967 m!4264607))

(declare-fun m!4264609 () Bool)

(assert (=> b!3767963 m!4264609))

(declare-fun m!4264611 () Bool)

(assert (=> b!3767961 m!4264611))

(declare-fun m!4264613 () Bool)

(assert (=> b!3767961 m!4264613))

(declare-fun m!4264615 () Bool)

(assert (=> b!3767976 m!4264615))

(declare-fun m!4264617 () Bool)

(assert (=> b!3767976 m!4264617))

(declare-fun m!4264619 () Bool)

(assert (=> b!3767976 m!4264619))

(declare-fun m!4264621 () Bool)

(assert (=> b!3767976 m!4264621))

(declare-fun m!4264623 () Bool)

(assert (=> b!3767969 m!4264623))

(declare-fun m!4264625 () Bool)

(assert (=> b!3767969 m!4264625))

(declare-fun m!4264627 () Bool)

(assert (=> b!3767972 m!4264627))

(declare-fun m!4264629 () Bool)

(assert (=> b!3767972 m!4264629))

(declare-fun m!4264631 () Bool)

(assert (=> b!3767972 m!4264631))

(declare-fun m!4264633 () Bool)

(assert (=> b!3767959 m!4264633))

(assert (=> b!3767959 m!4264633))

(declare-fun m!4264635 () Bool)

(assert (=> b!3767959 m!4264635))

(declare-fun m!4264637 () Bool)

(assert (=> b!3767958 m!4264637))

(declare-fun m!4264639 () Bool)

(assert (=> b!3767975 m!4264639))

(declare-fun m!4264641 () Bool)

(assert (=> b!3767975 m!4264641))

(declare-fun m!4264643 () Bool)

(assert (=> b!3767977 m!4264643))

(declare-fun m!4264645 () Bool)

(assert (=> b!3767960 m!4264645))

(declare-fun m!4264647 () Bool)

(assert (=> b!3767964 m!4264647))

(declare-fun m!4264649 () Bool)

(assert (=> b!3767965 m!4264649))

(declare-fun m!4264651 () Bool)

(assert (=> b!3767965 m!4264651))

(assert (=> b!3767965 m!4264651))

(declare-fun m!4264653 () Bool)

(assert (=> b!3767965 m!4264653))

(declare-fun m!4264655 () Bool)

(assert (=> b!3767965 m!4264655))

(declare-fun m!4264657 () Bool)

(assert (=> b!3767965 m!4264657))

(declare-fun m!4264659 () Bool)

(assert (=> b!3767978 m!4264659))

(declare-fun m!4264661 () Bool)

(assert (=> start!353960 m!4264661))

(declare-fun m!4264663 () Bool)

(assert (=> start!353960 m!4264663))

(declare-fun m!4264665 () Bool)

(assert (=> start!353960 m!4264665))

(declare-fun m!4264667 () Bool)

(assert (=> start!353960 m!4264667))

(check-sat (not b!3767976) (not b_next!101671) (not b!3767974) (not b!3767958) (not b!3767961) (not start!353960) (not b!3767978) (not b!3767977) b_and!279779 (not b!3767960) (not b!3767963) (not b!3767968) (not b!3767967) (not b!3767962) (not b!3767964) (not b!3767966) (not b!3767957) (not b!3767959) (not b!3767970) (not b!3767969) (not b!3767965) (not b!3767972) b_and!279781 (not b_next!101669) (not b!3767975))
(check-sat b_and!279779 b_and!279781 (not b_next!101669) (not b_next!101671))
