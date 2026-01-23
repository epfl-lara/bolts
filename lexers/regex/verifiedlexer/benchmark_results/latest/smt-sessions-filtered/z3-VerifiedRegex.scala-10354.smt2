; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537340 () Bool)

(assert start!537340)

(declare-fun b!5096607 () Bool)

(declare-fun b_free!133503 () Bool)

(declare-fun b_next!134293 () Bool)

(assert (=> b!5096607 (= b_free!133503 (not b_next!134293))))

(declare-fun tp!1421339 () Bool)

(declare-fun b_and!350395 () Bool)

(assert (=> b!5096607 (= tp!1421339 b_and!350395)))

(declare-fun b_free!133505 () Bool)

(declare-fun b_next!134295 () Bool)

(assert (=> b!5096607 (= b_free!133505 (not b_next!134295))))

(declare-fun tp!1421336 () Bool)

(declare-fun b_and!350397 () Bool)

(assert (=> b!5096607 (= tp!1421336 b_and!350397)))

(declare-fun b!5096601 () Bool)

(declare-fun res!2169131 () Bool)

(declare-fun e!3178627 () Bool)

(assert (=> b!5096601 (=> (not res!2169131) (not e!3178627))))

(declare-datatypes ((LexerInterface!8120 0))(
  ( (LexerInterfaceExt!8117 (__x!34973 Int)) (Lexer!8118) )
))
(declare-fun thiss!15916 () LexerInterface!8120)

(declare-datatypes ((C!28264 0))(
  ( (C!28265 (val!23784 Int)) )
))
(declare-datatypes ((List!58795 0))(
  ( (Nil!58671) (Cons!58671 (h!65119 C!28264) (t!371760 List!58795)) )
))
(declare-datatypes ((IArray!31461 0))(
  ( (IArray!31462 (innerList!15788 List!58795)) )
))
(declare-datatypes ((Conc!15700 0))(
  ( (Node!15700 (left!43082 Conc!15700) (right!43412 Conc!15700) (csize!31630 Int) (cheight!15911 Int)) (Leaf!26055 (xs!19082 IArray!31461) (csize!31631 Int)) (Empty!15700) )
))
(declare-datatypes ((Regex!14003 0))(
  ( (ElementMatch!14003 (c!875678 C!28264)) (Concat!22845 (regOne!28518 Regex!14003) (regTwo!28518 Regex!14003)) (EmptyExpr!14003) (Star!14003 (reg!14332 Regex!14003)) (EmptyLang!14003) (Union!14003 (regOne!28519 Regex!14003) (regTwo!28519 Regex!14003)) )
))
(declare-datatypes ((String!67131 0))(
  ( (String!67132 (value!273322 String)) )
))
(declare-datatypes ((List!58796 0))(
  ( (Nil!58672) (Cons!58672 (h!65120 (_ BitVec 16)) (t!371761 List!58796)) )
))
(declare-datatypes ((TokenValue!8842 0))(
  ( (FloatLiteralValue!17684 (text!62339 List!58796)) (TokenValueExt!8841 (__x!34974 Int)) (Broken!44210 (value!273323 List!58796)) (Object!8965) (End!8842) (Def!8842) (Underscore!8842) (Match!8842) (Else!8842) (Error!8842) (Case!8842) (If!8842) (Extends!8842) (Abstract!8842) (Class!8842) (Val!8842) (DelimiterValue!17684 (del!8902 List!58796)) (KeywordValue!8848 (value!273324 List!58796)) (CommentValue!17684 (value!273325 List!58796)) (WhitespaceValue!17684 (value!273326 List!58796)) (IndentationValue!8842 (value!273327 List!58796)) (String!67133) (Int32!8842) (Broken!44211 (value!273328 List!58796)) (Boolean!8843) (Unit!149710) (OperatorValue!8845 (op!8902 List!58796)) (IdentifierValue!17684 (value!273329 List!58796)) (IdentifierValue!17685 (value!273330 List!58796)) (WhitespaceValue!17685 (value!273331 List!58796)) (True!17684) (False!17684) (Broken!44212 (value!273332 List!58796)) (Broken!44213 (value!273333 List!58796)) (True!17685) (RightBrace!8842) (RightBracket!8842) (Colon!8842) (Null!8842) (Comma!8842) (LeftBracket!8842) (False!17685) (LeftBrace!8842) (ImaginaryLiteralValue!8842 (text!62340 List!58796)) (StringLiteralValue!26526 (value!273334 List!58796)) (EOFValue!8842 (value!273335 List!58796)) (IdentValue!8842 (value!273336 List!58796)) (DelimiterValue!17685 (value!273337 List!58796)) (DedentValue!8842 (value!273338 List!58796)) (NewLineValue!8842 (value!273339 List!58796)) (IntegerValue!26526 (value!273340 (_ BitVec 32)) (text!62341 List!58796)) (IntegerValue!26527 (value!273341 Int) (text!62342 List!58796)) (Times!8842) (Or!8842) (Equal!8842) (Minus!8842) (Broken!44214 (value!273342 List!58796)) (And!8842) (Div!8842) (LessEqual!8842) (Mod!8842) (Concat!22846) (Not!8842) (Plus!8842) (SpaceValue!8842 (value!273343 List!58796)) (IntegerValue!26528 (value!273344 Int) (text!62343 List!58796)) (StringLiteralValue!26527 (text!62344 List!58796)) (FloatLiteralValue!17685 (text!62345 List!58796)) (BytesLiteralValue!8842 (value!273345 List!58796)) (CommentValue!17685 (value!273346 List!58796)) (StringLiteralValue!26528 (value!273347 List!58796)) (ErrorTokenValue!8842 (msg!8903 List!58796)) )
))
(declare-datatypes ((BalanceConc!30518 0))(
  ( (BalanceConc!30519 (c!875679 Conc!15700)) )
))
(declare-datatypes ((TokenValueInjection!16992 0))(
  ( (TokenValueInjection!16993 (toValue!11551 Int) (toChars!11410 Int)) )
))
(declare-datatypes ((Rule!16856 0))(
  ( (Rule!16857 (regex!8528 Regex!14003) (tag!9392 String!67131) (isSeparator!8528 Bool) (transformation!8528 TokenValueInjection!16992)) )
))
(declare-fun rule!158 () Rule!16856)

(declare-fun ruleValid!3920 (LexerInterface!8120 Rule!16856) Bool)

(assert (=> b!5096601 (= res!2169131 (ruleValid!3920 thiss!15916 rule!158))))

(declare-fun b!5096602 () Bool)

(declare-fun e!3178629 () Bool)

(declare-datatypes ((tuple2!63392 0))(
  ( (tuple2!63393 (_1!34999 List!58795) (_2!34999 List!58795)) )
))
(declare-fun lt!2094047 () tuple2!63392)

(declare-fun matchR!6800 (Regex!14003 List!58795) Bool)

(assert (=> b!5096602 (= e!3178629 (matchR!6800 (regex!8528 rule!158) (_1!34999 lt!2094047)))))

(declare-fun b!5096603 () Bool)

(declare-fun e!3178623 () Bool)

(declare-fun tp_is_empty!37271 () Bool)

(declare-fun tp!1421337 () Bool)

(assert (=> b!5096603 (= e!3178623 (and tp_is_empty!37271 tp!1421337))))

(declare-fun res!2169132 () Bool)

(assert (=> start!537340 (=> (not res!2169132) (not e!3178627))))

(get-info :version)

(assert (=> start!537340 (= res!2169132 ((_ is Lexer!8118) thiss!15916))))

(assert (=> start!537340 e!3178627))

(assert (=> start!537340 true))

(declare-fun e!3178628 () Bool)

(assert (=> start!537340 e!3178628))

(assert (=> start!537340 e!3178623))

(declare-fun lt!2094046 () tuple2!63392)

(declare-fun lt!2094044 () BalanceConc!30518)

(declare-fun b!5096604 () Bool)

(declare-fun e!3178624 () Bool)

(declare-datatypes ((Token!15476 0))(
  ( (Token!15477 (value!273348 TokenValue!8842) (rule!11804 Rule!16856) (size!39302 Int) (originalCharacters!8769 List!58795)) )
))
(declare-fun inv!78169 (Token!15476) Bool)

(declare-fun apply!14300 (TokenValueInjection!16992 BalanceConc!30518) TokenValue!8842)

(declare-fun size!39303 (List!58795) Int)

(assert (=> b!5096604 (= e!3178624 (not (inv!78169 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))))

(declare-datatypes ((Unit!149711 0))(
  ( (Unit!149712) )
))
(declare-fun lt!2094048 () Unit!149711)

(declare-fun lemmaSemiInverse!2650 (TokenValueInjection!16992 BalanceConc!30518) Unit!149711)

(assert (=> b!5096604 (= lt!2094048 (lemmaSemiInverse!2650 (transformation!8528 rule!158) lt!2094044))))

(declare-fun seqFromList!6118 (List!58795) BalanceConc!30518)

(assert (=> b!5096604 (= lt!2094044 (seqFromList!6118 (_1!34999 lt!2094046)))))

(declare-fun lt!2094045 () Unit!149711)

(declare-fun lemmaInv!1416 (TokenValueInjection!16992) Unit!149711)

(assert (=> b!5096604 (= lt!2094045 (lemmaInv!1416 (transformation!8528 rule!158)))))

(assert (=> b!5096604 e!3178629))

(declare-fun res!2169134 () Bool)

(assert (=> b!5096604 (=> res!2169134 e!3178629)))

(declare-fun isEmpty!31756 (List!58795) Bool)

(assert (=> b!5096604 (= res!2169134 (isEmpty!31756 (_1!34999 lt!2094047)))))

(declare-fun input!1493 () List!58795)

(declare-fun findLongestMatchInner!2024 (Regex!14003 List!58795 Int List!58795 List!58795 Int) tuple2!63392)

(assert (=> b!5096604 (= lt!2094047 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))))

(declare-fun lt!2094043 () Unit!149711)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1977 (Regex!14003 List!58795) Unit!149711)

(assert (=> b!5096604 (= lt!2094043 (longestMatchIsAcceptedByMatchOrIsEmpty!1977 (regex!8528 rule!158) input!1493))))

(declare-fun b!5096605 () Bool)

(assert (=> b!5096605 (= e!3178627 e!3178624)))

(declare-fun res!2169133 () Bool)

(assert (=> b!5096605 (=> (not res!2169133) (not e!3178624))))

(assert (=> b!5096605 (= res!2169133 (not (isEmpty!31756 (_1!34999 lt!2094046))))))

(declare-fun findLongestMatchWithZipper!123 (Regex!14003 List!58795) tuple2!63392)

(assert (=> b!5096605 (= lt!2094046 (findLongestMatchWithZipper!123 (regex!8528 rule!158) input!1493))))

(declare-fun e!3178625 () Bool)

(declare-fun tp!1421338 () Bool)

(declare-fun b!5096606 () Bool)

(declare-fun inv!78166 (String!67131) Bool)

(declare-fun inv!78170 (TokenValueInjection!16992) Bool)

(assert (=> b!5096606 (= e!3178628 (and tp!1421338 (inv!78166 (tag!9392 rule!158)) (inv!78170 (transformation!8528 rule!158)) e!3178625))))

(assert (=> b!5096607 (= e!3178625 (and tp!1421339 tp!1421336))))

(assert (= (and start!537340 res!2169132) b!5096601))

(assert (= (and b!5096601 res!2169131) b!5096605))

(assert (= (and b!5096605 res!2169133) b!5096604))

(assert (= (and b!5096604 (not res!2169134)) b!5096602))

(assert (= b!5096606 b!5096607))

(assert (= start!537340 b!5096606))

(assert (= (and start!537340 ((_ is Cons!58671) input!1493)) b!5096603))

(declare-fun m!6153768 () Bool)

(assert (=> b!5096602 m!6153768))

(declare-fun m!6153770 () Bool)

(assert (=> b!5096604 m!6153770))

(declare-fun m!6153772 () Bool)

(assert (=> b!5096604 m!6153772))

(declare-fun m!6153774 () Bool)

(assert (=> b!5096604 m!6153774))

(declare-fun m!6153776 () Bool)

(assert (=> b!5096604 m!6153776))

(declare-fun m!6153778 () Bool)

(assert (=> b!5096604 m!6153778))

(declare-fun m!6153780 () Bool)

(assert (=> b!5096604 m!6153780))

(declare-fun m!6153782 () Bool)

(assert (=> b!5096604 m!6153782))

(declare-fun m!6153784 () Bool)

(assert (=> b!5096604 m!6153784))

(assert (=> b!5096604 m!6153780))

(declare-fun m!6153786 () Bool)

(assert (=> b!5096604 m!6153786))

(assert (=> b!5096604 m!6153778))

(declare-fun m!6153788 () Bool)

(assert (=> b!5096604 m!6153788))

(declare-fun m!6153790 () Bool)

(assert (=> b!5096604 m!6153790))

(declare-fun m!6153792 () Bool)

(assert (=> b!5096606 m!6153792))

(declare-fun m!6153794 () Bool)

(assert (=> b!5096606 m!6153794))

(declare-fun m!6153796 () Bool)

(assert (=> b!5096605 m!6153796))

(declare-fun m!6153798 () Bool)

(assert (=> b!5096605 m!6153798))

(declare-fun m!6153800 () Bool)

(assert (=> b!5096601 m!6153800))

(check-sat b_and!350397 (not b_next!134293) (not b!5096601) b_and!350395 (not b!5096604) (not b!5096603) (not b!5096605) (not b!5096606) tp_is_empty!37271 (not b!5096602) (not b_next!134295))
(check-sat b_and!350397 b_and!350395 (not b_next!134293) (not b_next!134295))
(get-model)

(declare-fun b!5096639 () Bool)

(declare-fun e!3178651 () Bool)

(declare-fun e!3178648 () Bool)

(assert (=> b!5096639 (= e!3178651 e!3178648)))

(declare-fun res!2169162 () Bool)

(assert (=> b!5096639 (=> res!2169162 e!3178648)))

(declare-fun call!354818 () Bool)

(assert (=> b!5096639 (= res!2169162 call!354818)))

(declare-fun b!5096640 () Bool)

(declare-fun e!3178647 () Bool)

(declare-fun lt!2094053 () Bool)

(assert (=> b!5096640 (= e!3178647 (not lt!2094053))))

(declare-fun bm!354813 () Bool)

(assert (=> bm!354813 (= call!354818 (isEmpty!31756 (_1!34999 lt!2094047)))))

(declare-fun b!5096641 () Bool)

(declare-fun head!10826 (List!58795) C!28264)

(assert (=> b!5096641 (= e!3178648 (not (= (head!10826 (_1!34999 lt!2094047)) (c!875678 (regex!8528 rule!158)))))))

(declare-fun b!5096642 () Bool)

(declare-fun e!3178650 () Bool)

(assert (=> b!5096642 (= e!3178650 (= lt!2094053 call!354818))))

(declare-fun b!5096643 () Bool)

(declare-fun res!2169159 () Bool)

(declare-fun e!3178653 () Bool)

(assert (=> b!5096643 (=> (not res!2169159) (not e!3178653))))

(assert (=> b!5096643 (= res!2169159 (not call!354818))))

(declare-fun b!5096644 () Bool)

(declare-fun res!2169161 () Bool)

(declare-fun e!3178649 () Bool)

(assert (=> b!5096644 (=> res!2169161 e!3178649)))

(assert (=> b!5096644 (= res!2169161 e!3178653)))

(declare-fun res!2169163 () Bool)

(assert (=> b!5096644 (=> (not res!2169163) (not e!3178653))))

(assert (=> b!5096644 (= res!2169163 lt!2094053)))

(declare-fun b!5096645 () Bool)

(assert (=> b!5096645 (= e!3178650 e!3178647)))

(declare-fun c!875689 () Bool)

(assert (=> b!5096645 (= c!875689 ((_ is EmptyLang!14003) (regex!8528 rule!158)))))

(declare-fun d!1649147 () Bool)

(assert (=> d!1649147 e!3178650))

(declare-fun c!875687 () Bool)

(assert (=> d!1649147 (= c!875687 ((_ is EmptyExpr!14003) (regex!8528 rule!158)))))

(declare-fun e!3178652 () Bool)

(assert (=> d!1649147 (= lt!2094053 e!3178652)))

(declare-fun c!875688 () Bool)

(assert (=> d!1649147 (= c!875688 (isEmpty!31756 (_1!34999 lt!2094047)))))

(declare-fun validRegex!6129 (Regex!14003) Bool)

(assert (=> d!1649147 (validRegex!6129 (regex!8528 rule!158))))

(assert (=> d!1649147 (= (matchR!6800 (regex!8528 rule!158) (_1!34999 lt!2094047)) lt!2094053)))

(declare-fun b!5096646 () Bool)

(declare-fun res!2169165 () Bool)

(assert (=> b!5096646 (=> res!2169165 e!3178649)))

(assert (=> b!5096646 (= res!2169165 (not ((_ is ElementMatch!14003) (regex!8528 rule!158))))))

(assert (=> b!5096646 (= e!3178647 e!3178649)))

(declare-fun b!5096647 () Bool)

(declare-fun res!2169160 () Bool)

(assert (=> b!5096647 (=> (not res!2169160) (not e!3178653))))

(declare-fun tail!9981 (List!58795) List!58795)

(assert (=> b!5096647 (= res!2169160 (isEmpty!31756 (tail!9981 (_1!34999 lt!2094047))))))

(declare-fun b!5096648 () Bool)

(declare-fun res!2169164 () Bool)

(assert (=> b!5096648 (=> res!2169164 e!3178648)))

(assert (=> b!5096648 (= res!2169164 (not (isEmpty!31756 (tail!9981 (_1!34999 lt!2094047)))))))

(declare-fun b!5096649 () Bool)

(assert (=> b!5096649 (= e!3178653 (= (head!10826 (_1!34999 lt!2094047)) (c!875678 (regex!8528 rule!158))))))

(declare-fun b!5096650 () Bool)

(assert (=> b!5096650 (= e!3178649 e!3178651)))

(declare-fun res!2169158 () Bool)

(assert (=> b!5096650 (=> (not res!2169158) (not e!3178651))))

(assert (=> b!5096650 (= res!2169158 (not lt!2094053))))

(declare-fun b!5096651 () Bool)

(declare-fun nullable!4704 (Regex!14003) Bool)

(assert (=> b!5096651 (= e!3178652 (nullable!4704 (regex!8528 rule!158)))))

(declare-fun b!5096652 () Bool)

(declare-fun derivativeStep!3990 (Regex!14003 C!28264) Regex!14003)

(assert (=> b!5096652 (= e!3178652 (matchR!6800 (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 lt!2094047))) (tail!9981 (_1!34999 lt!2094047))))))

(assert (= (and d!1649147 c!875688) b!5096651))

(assert (= (and d!1649147 (not c!875688)) b!5096652))

(assert (= (and d!1649147 c!875687) b!5096642))

(assert (= (and d!1649147 (not c!875687)) b!5096645))

(assert (= (and b!5096645 c!875689) b!5096640))

(assert (= (and b!5096645 (not c!875689)) b!5096646))

(assert (= (and b!5096646 (not res!2169165)) b!5096644))

(assert (= (and b!5096644 res!2169163) b!5096643))

(assert (= (and b!5096643 res!2169159) b!5096647))

(assert (= (and b!5096647 res!2169160) b!5096649))

(assert (= (and b!5096644 (not res!2169161)) b!5096650))

(assert (= (and b!5096650 res!2169158) b!5096639))

(assert (= (and b!5096639 (not res!2169162)) b!5096648))

(assert (= (and b!5096648 (not res!2169164)) b!5096641))

(assert (= (or b!5096642 b!5096639 b!5096643) bm!354813))

(declare-fun m!6153808 () Bool)

(assert (=> b!5096649 m!6153808))

(declare-fun m!6153810 () Bool)

(assert (=> b!5096647 m!6153810))

(assert (=> b!5096647 m!6153810))

(declare-fun m!6153812 () Bool)

(assert (=> b!5096647 m!6153812))

(assert (=> b!5096652 m!6153808))

(assert (=> b!5096652 m!6153808))

(declare-fun m!6153814 () Bool)

(assert (=> b!5096652 m!6153814))

(assert (=> b!5096652 m!6153810))

(assert (=> b!5096652 m!6153814))

(assert (=> b!5096652 m!6153810))

(declare-fun m!6153816 () Bool)

(assert (=> b!5096652 m!6153816))

(assert (=> d!1649147 m!6153786))

(declare-fun m!6153818 () Bool)

(assert (=> d!1649147 m!6153818))

(assert (=> b!5096648 m!6153810))

(assert (=> b!5096648 m!6153810))

(assert (=> b!5096648 m!6153812))

(assert (=> b!5096641 m!6153808))

(assert (=> bm!354813 m!6153786))

(declare-fun m!6153820 () Bool)

(assert (=> b!5096651 m!6153820))

(assert (=> b!5096602 d!1649147))

(declare-fun d!1649157 () Bool)

(declare-fun res!2169170 () Bool)

(declare-fun e!3178656 () Bool)

(assert (=> d!1649157 (=> (not res!2169170) (not e!3178656))))

(assert (=> d!1649157 (= res!2169170 (not (isEmpty!31756 (originalCharacters!8769 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))))))

(assert (=> d!1649157 (= (inv!78169 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))) e!3178656)))

(declare-fun b!5096657 () Bool)

(declare-fun res!2169171 () Bool)

(assert (=> b!5096657 (=> (not res!2169171) (not e!3178656))))

(declare-fun list!19147 (BalanceConc!30518) List!58795)

(declare-fun dynLambda!23567 (Int TokenValue!8842) BalanceConc!30518)

(assert (=> b!5096657 (= res!2169171 (= (originalCharacters!8769 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))) (list!19147 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))))))

(declare-fun b!5096658 () Bool)

(assert (=> b!5096658 (= e!3178656 (= (size!39302 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))) (size!39303 (originalCharacters!8769 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))))))

(assert (= (and d!1649157 res!2169170) b!5096657))

(assert (= (and b!5096657 res!2169171) b!5096658))

(declare-fun b_lambda!198757 () Bool)

(assert (=> (not b_lambda!198757) (not b!5096657)))

(declare-fun t!371763 () Bool)

(declare-fun tb!261837 () Bool)

(assert (=> (and b!5096607 (= (toChars!11410 (transformation!8528 rule!158)) (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))) t!371763) tb!261837))

(declare-fun tp!1421342 () Bool)

(declare-fun b!5096663 () Bool)

(declare-fun e!3178659 () Bool)

(declare-fun inv!78173 (Conc!15700) Bool)

(assert (=> b!5096663 (= e!3178659 (and (inv!78173 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))) tp!1421342))))

(declare-fun result!328900 () Bool)

(declare-fun inv!78174 (BalanceConc!30518) Bool)

(assert (=> tb!261837 (= result!328900 (and (inv!78174 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) e!3178659))))

(assert (= tb!261837 b!5096663))

(declare-fun m!6153822 () Bool)

(assert (=> b!5096663 m!6153822))

(declare-fun m!6153824 () Bool)

(assert (=> tb!261837 m!6153824))

(assert (=> b!5096657 t!371763))

(declare-fun b_and!350399 () Bool)

(assert (= b_and!350397 (and (=> t!371763 result!328900) b_and!350399)))

(declare-fun m!6153826 () Bool)

(assert (=> d!1649157 m!6153826))

(declare-fun m!6153828 () Bool)

(assert (=> b!5096657 m!6153828))

(assert (=> b!5096657 m!6153828))

(declare-fun m!6153830 () Bool)

(assert (=> b!5096657 m!6153830))

(declare-fun m!6153832 () Bool)

(assert (=> b!5096658 m!6153832))

(assert (=> b!5096604 d!1649157))

(declare-fun b!5096692 () Bool)

(declare-fun e!3178679 () Unit!149711)

(declare-fun Unit!149713 () Unit!149711)

(assert (=> b!5096692 (= e!3178679 Unit!149713)))

(declare-fun b!5096693 () Bool)

(declare-fun e!3178681 () tuple2!63392)

(declare-fun lt!2094122 () tuple2!63392)

(assert (=> b!5096693 (= e!3178681 lt!2094122)))

(declare-fun bm!354831 () Bool)

(declare-fun call!354840 () Bool)

(assert (=> bm!354831 (= call!354840 (nullable!4704 (regex!8528 rule!158)))))

(declare-fun bm!354832 () Bool)

(declare-fun call!354842 () Bool)

(declare-fun isPrefix!5413 (List!58795 List!58795) Bool)

(assert (=> bm!354832 (= call!354842 (isPrefix!5413 input!1493 input!1493))))

(declare-fun bm!354833 () Bool)

(declare-fun call!354835 () C!28264)

(assert (=> bm!354833 (= call!354835 (head!10826 input!1493))))

(declare-fun b!5096694 () Bool)

(assert (=> b!5096694 (= e!3178681 (tuple2!63393 Nil!58671 input!1493))))

(declare-fun b!5096695 () Bool)

(declare-fun Unit!149715 () Unit!149711)

(assert (=> b!5096695 (= e!3178679 Unit!149715)))

(declare-fun lt!2094110 () Unit!149711)

(declare-fun call!354839 () Unit!149711)

(assert (=> b!5096695 (= lt!2094110 call!354839)))

(assert (=> b!5096695 call!354842))

(declare-fun lt!2094121 () Unit!149711)

(assert (=> b!5096695 (= lt!2094121 lt!2094110)))

(declare-fun lt!2094131 () Unit!149711)

(declare-fun call!354841 () Unit!149711)

(assert (=> b!5096695 (= lt!2094131 call!354841)))

(assert (=> b!5096695 (= input!1493 Nil!58671)))

(declare-fun lt!2094136 () Unit!149711)

(assert (=> b!5096695 (= lt!2094136 lt!2094131)))

(assert (=> b!5096695 false))

(declare-fun b!5096696 () Bool)

(declare-fun c!875704 () Bool)

(assert (=> b!5096696 (= c!875704 call!354840)))

(declare-fun lt!2094124 () Unit!149711)

(declare-fun lt!2094135 () Unit!149711)

(assert (=> b!5096696 (= lt!2094124 lt!2094135)))

(declare-fun lt!2094130 () C!28264)

(declare-fun lt!2094114 () List!58795)

(declare-fun ++!12858 (List!58795 List!58795) List!58795)

(assert (=> b!5096696 (= (++!12858 (++!12858 Nil!58671 (Cons!58671 lt!2094130 Nil!58671)) lt!2094114) input!1493)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1511 (List!58795 C!28264 List!58795 List!58795) Unit!149711)

(assert (=> b!5096696 (= lt!2094135 (lemmaMoveElementToOtherListKeepsConcatEq!1511 Nil!58671 lt!2094130 lt!2094114 input!1493))))

(assert (=> b!5096696 (= lt!2094114 (tail!9981 input!1493))))

(assert (=> b!5096696 (= lt!2094130 (head!10826 input!1493))))

(declare-fun lt!2094119 () Unit!149711)

(declare-fun lt!2094134 () Unit!149711)

(assert (=> b!5096696 (= lt!2094119 lt!2094134)))

(declare-fun getSuffix!3156 (List!58795 List!58795) List!58795)

(assert (=> b!5096696 (isPrefix!5413 (++!12858 Nil!58671 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671)) input!1493)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!900 (List!58795 List!58795) Unit!149711)

(assert (=> b!5096696 (= lt!2094134 (lemmaAddHeadSuffixToPrefixStillPrefix!900 Nil!58671 input!1493))))

(declare-fun lt!2094129 () Unit!149711)

(declare-fun lt!2094137 () Unit!149711)

(assert (=> b!5096696 (= lt!2094129 lt!2094137)))

(assert (=> b!5096696 (= lt!2094137 (lemmaAddHeadSuffixToPrefixStillPrefix!900 Nil!58671 input!1493))))

(declare-fun lt!2094123 () List!58795)

(assert (=> b!5096696 (= lt!2094123 (++!12858 Nil!58671 (Cons!58671 (head!10826 input!1493) Nil!58671)))))

(declare-fun lt!2094128 () Unit!149711)

(assert (=> b!5096696 (= lt!2094128 e!3178679)))

(declare-fun c!875707 () Bool)

(assert (=> b!5096696 (= c!875707 (= (size!39303 Nil!58671) (size!39303 input!1493)))))

(declare-fun lt!2094133 () Unit!149711)

(declare-fun lt!2094115 () Unit!149711)

(assert (=> b!5096696 (= lt!2094133 lt!2094115)))

(assert (=> b!5096696 (<= (size!39303 Nil!58671) (size!39303 input!1493))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!826 (List!58795 List!58795) Unit!149711)

(assert (=> b!5096696 (= lt!2094115 (lemmaIsPrefixThenSmallerEqSize!826 Nil!58671 input!1493))))

(declare-fun e!3178677 () tuple2!63392)

(declare-fun e!3178678 () tuple2!63392)

(assert (=> b!5096696 (= e!3178677 e!3178678)))

(declare-fun bm!354834 () Bool)

(declare-fun call!354836 () List!58795)

(assert (=> bm!354834 (= call!354836 (tail!9981 input!1493))))

(declare-fun b!5096697 () Bool)

(declare-fun e!3178682 () tuple2!63392)

(assert (=> b!5096697 (= e!3178682 (tuple2!63393 Nil!58671 Nil!58671))))

(declare-fun b!5096698 () Bool)

(declare-fun e!3178680 () tuple2!63392)

(assert (=> b!5096698 (= e!3178680 e!3178677)))

(declare-fun c!875706 () Bool)

(assert (=> b!5096698 (= c!875706 (= (size!39303 Nil!58671) (size!39303 input!1493)))))

(declare-fun b!5096699 () Bool)

(declare-fun call!354837 () tuple2!63392)

(assert (=> b!5096699 (= e!3178678 call!354837)))

(declare-fun b!5096700 () Bool)

(assert (=> b!5096700 (= e!3178678 e!3178681)))

(assert (=> b!5096700 (= lt!2094122 call!354837)))

(declare-fun c!875703 () Bool)

(assert (=> b!5096700 (= c!875703 (isEmpty!31756 (_1!34999 lt!2094122)))))

(declare-fun b!5096701 () Bool)

(declare-fun e!3178676 () Bool)

(declare-fun e!3178683 () Bool)

(assert (=> b!5096701 (= e!3178676 e!3178683)))

(declare-fun res!2169176 () Bool)

(assert (=> b!5096701 (=> res!2169176 e!3178683)))

(declare-fun lt!2094126 () tuple2!63392)

(assert (=> b!5096701 (= res!2169176 (isEmpty!31756 (_1!34999 lt!2094126)))))

(declare-fun bm!354835 () Bool)

(declare-fun call!354838 () Regex!14003)

(assert (=> bm!354835 (= call!354837 (findLongestMatchInner!2024 call!354838 lt!2094123 (+ (size!39303 Nil!58671) 1) call!354836 input!1493 (size!39303 input!1493)))))

(declare-fun bm!354830 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1291 (List!58795 List!58795 List!58795) Unit!149711)

(assert (=> bm!354830 (= call!354841 (lemmaIsPrefixSameLengthThenSameList!1291 input!1493 Nil!58671 input!1493))))

(declare-fun d!1649159 () Bool)

(assert (=> d!1649159 e!3178676))

(declare-fun res!2169177 () Bool)

(assert (=> d!1649159 (=> (not res!2169177) (not e!3178676))))

(assert (=> d!1649159 (= res!2169177 (= (++!12858 (_1!34999 lt!2094126) (_2!34999 lt!2094126)) input!1493))))

(assert (=> d!1649159 (= lt!2094126 e!3178680)))

(declare-fun c!875702 () Bool)

(declare-fun lostCause!1200 (Regex!14003) Bool)

(assert (=> d!1649159 (= c!875702 (lostCause!1200 (regex!8528 rule!158)))))

(declare-fun lt!2094113 () Unit!149711)

(declare-fun Unit!149717 () Unit!149711)

(assert (=> d!1649159 (= lt!2094113 Unit!149717)))

(assert (=> d!1649159 (= (getSuffix!3156 input!1493 Nil!58671) input!1493)))

(declare-fun lt!2094118 () Unit!149711)

(declare-fun lt!2094125 () Unit!149711)

(assert (=> d!1649159 (= lt!2094118 lt!2094125)))

(declare-fun lt!2094117 () List!58795)

(assert (=> d!1649159 (= input!1493 lt!2094117)))

(declare-fun lemmaSamePrefixThenSameSuffix!2570 (List!58795 List!58795 List!58795 List!58795 List!58795) Unit!149711)

(assert (=> d!1649159 (= lt!2094125 (lemmaSamePrefixThenSameSuffix!2570 Nil!58671 input!1493 Nil!58671 lt!2094117 input!1493))))

(assert (=> d!1649159 (= lt!2094117 (getSuffix!3156 input!1493 Nil!58671))))

(declare-fun lt!2094127 () Unit!149711)

(declare-fun lt!2094132 () Unit!149711)

(assert (=> d!1649159 (= lt!2094127 lt!2094132)))

(assert (=> d!1649159 (isPrefix!5413 Nil!58671 (++!12858 Nil!58671 input!1493))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3472 (List!58795 List!58795) Unit!149711)

(assert (=> d!1649159 (= lt!2094132 (lemmaConcatTwoListThenFirstIsPrefix!3472 Nil!58671 input!1493))))

(assert (=> d!1649159 (validRegex!6129 (regex!8528 rule!158))))

(assert (=> d!1649159 (= (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)) lt!2094126)))

(declare-fun b!5096702 () Bool)

(assert (=> b!5096702 (= e!3178680 (tuple2!63393 Nil!58671 input!1493))))

(declare-fun b!5096703 () Bool)

(assert (=> b!5096703 (= e!3178682 (tuple2!63393 Nil!58671 input!1493))))

(declare-fun b!5096704 () Bool)

(assert (=> b!5096704 (= e!3178683 (>= (size!39303 (_1!34999 lt!2094126)) (size!39303 Nil!58671)))))

(declare-fun b!5096705 () Bool)

(declare-fun c!875705 () Bool)

(assert (=> b!5096705 (= c!875705 call!354840)))

(declare-fun lt!2094120 () Unit!149711)

(declare-fun lt!2094116 () Unit!149711)

(assert (=> b!5096705 (= lt!2094120 lt!2094116)))

(assert (=> b!5096705 (= input!1493 Nil!58671)))

(assert (=> b!5096705 (= lt!2094116 call!354841)))

(declare-fun lt!2094111 () Unit!149711)

(declare-fun lt!2094112 () Unit!149711)

(assert (=> b!5096705 (= lt!2094111 lt!2094112)))

(assert (=> b!5096705 call!354842))

(assert (=> b!5096705 (= lt!2094112 call!354839)))

(assert (=> b!5096705 (= e!3178677 e!3178682)))

(declare-fun bm!354836 () Bool)

(assert (=> bm!354836 (= call!354838 (derivativeStep!3990 (regex!8528 rule!158) call!354835))))

(declare-fun bm!354837 () Bool)

(declare-fun lemmaIsPrefixRefl!3673 (List!58795 List!58795) Unit!149711)

(assert (=> bm!354837 (= call!354839 (lemmaIsPrefixRefl!3673 input!1493 input!1493))))

(assert (= (and d!1649159 c!875702) b!5096702))

(assert (= (and d!1649159 (not c!875702)) b!5096698))

(assert (= (and b!5096698 c!875706) b!5096705))

(assert (= (and b!5096698 (not c!875706)) b!5096696))

(assert (= (and b!5096705 c!875705) b!5096697))

(assert (= (and b!5096705 (not c!875705)) b!5096703))

(assert (= (and b!5096696 c!875707) b!5096695))

(assert (= (and b!5096696 (not c!875707)) b!5096692))

(assert (= (and b!5096696 c!875704) b!5096700))

(assert (= (and b!5096696 (not c!875704)) b!5096699))

(assert (= (and b!5096700 c!875703) b!5096694))

(assert (= (and b!5096700 (not c!875703)) b!5096693))

(assert (= (or b!5096700 b!5096699) bm!354833))

(assert (= (or b!5096700 b!5096699) bm!354834))

(assert (= (or b!5096700 b!5096699) bm!354836))

(assert (= (or b!5096700 b!5096699) bm!354835))

(assert (= (or b!5096705 b!5096695) bm!354837))

(assert (= (or b!5096705 b!5096695) bm!354832))

(assert (= (or b!5096705 b!5096696) bm!354831))

(assert (= (or b!5096705 b!5096695) bm!354830))

(assert (= (and d!1649159 res!2169177) b!5096701))

(assert (= (and b!5096701 (not res!2169176)) b!5096704))

(declare-fun m!6153834 () Bool)

(assert (=> bm!354830 m!6153834))

(declare-fun m!6153836 () Bool)

(assert (=> b!5096700 m!6153836))

(declare-fun m!6153838 () Bool)

(assert (=> b!5096696 m!6153838))

(declare-fun m!6153840 () Bool)

(assert (=> b!5096696 m!6153840))

(declare-fun m!6153842 () Bool)

(assert (=> b!5096696 m!6153842))

(declare-fun m!6153844 () Bool)

(assert (=> b!5096696 m!6153844))

(declare-fun m!6153846 () Bool)

(assert (=> b!5096696 m!6153846))

(declare-fun m!6153848 () Bool)

(assert (=> b!5096696 m!6153848))

(declare-fun m!6153850 () Bool)

(assert (=> b!5096696 m!6153850))

(declare-fun m!6153852 () Bool)

(assert (=> b!5096696 m!6153852))

(assert (=> b!5096696 m!6153850))

(declare-fun m!6153854 () Bool)

(assert (=> b!5096696 m!6153854))

(assert (=> b!5096696 m!6153780))

(declare-fun m!6153856 () Bool)

(assert (=> b!5096696 m!6153856))

(assert (=> b!5096696 m!6153854))

(declare-fun m!6153858 () Bool)

(assert (=> b!5096696 m!6153858))

(assert (=> b!5096696 m!6153856))

(declare-fun m!6153860 () Bool)

(assert (=> b!5096696 m!6153860))

(assert (=> b!5096696 m!6153778))

(declare-fun m!6153862 () Bool)

(assert (=> bm!354836 m!6153862))

(declare-fun m!6153864 () Bool)

(assert (=> d!1649159 m!6153864))

(assert (=> d!1649159 m!6153818))

(declare-fun m!6153866 () Bool)

(assert (=> d!1649159 m!6153866))

(declare-fun m!6153868 () Bool)

(assert (=> d!1649159 m!6153868))

(declare-fun m!6153870 () Bool)

(assert (=> d!1649159 m!6153870))

(declare-fun m!6153872 () Bool)

(assert (=> d!1649159 m!6153872))

(assert (=> d!1649159 m!6153850))

(assert (=> d!1649159 m!6153868))

(declare-fun m!6153874 () Bool)

(assert (=> d!1649159 m!6153874))

(declare-fun m!6153876 () Bool)

(assert (=> b!5096701 m!6153876))

(assert (=> bm!354834 m!6153842))

(assert (=> bm!354831 m!6153820))

(declare-fun m!6153878 () Bool)

(assert (=> bm!354837 m!6153878))

(assert (=> bm!354835 m!6153780))

(declare-fun m!6153880 () Bool)

(assert (=> bm!354835 m!6153880))

(assert (=> bm!354833 m!6153840))

(declare-fun m!6153882 () Bool)

(assert (=> b!5096704 m!6153882))

(assert (=> b!5096704 m!6153778))

(declare-fun m!6153884 () Bool)

(assert (=> bm!354832 m!6153884))

(assert (=> b!5096604 d!1649159))

(declare-fun b!5096768 () Bool)

(declare-fun e!3178721 () Bool)

(assert (=> b!5096768 (= e!3178721 true)))

(declare-fun d!1649161 () Bool)

(assert (=> d!1649161 e!3178721))

(assert (= d!1649161 b!5096768))

(declare-fun order!26755 () Int)

(declare-fun lambda!249904 () Int)

(declare-fun order!26753 () Int)

(declare-fun dynLambda!23568 (Int Int) Int)

(declare-fun dynLambda!23569 (Int Int) Int)

(assert (=> b!5096768 (< (dynLambda!23568 order!26753 (toValue!11551 (transformation!8528 rule!158))) (dynLambda!23569 order!26755 lambda!249904))))

(declare-fun order!26757 () Int)

(declare-fun dynLambda!23570 (Int Int) Int)

(assert (=> b!5096768 (< (dynLambda!23570 order!26757 (toChars!11410 (transformation!8528 rule!158))) (dynLambda!23569 order!26755 lambda!249904))))

(declare-fun dynLambda!23571 (Int BalanceConc!30518) TokenValue!8842)

(assert (=> d!1649161 (= (list!19147 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))) (list!19147 lt!2094044))))

(declare-fun lt!2094225 () Unit!149711)

(declare-fun ForallOf!1291 (Int BalanceConc!30518) Unit!149711)

(assert (=> d!1649161 (= lt!2094225 (ForallOf!1291 lambda!249904 lt!2094044))))

(assert (=> d!1649161 (= (lemmaSemiInverse!2650 (transformation!8528 rule!158) lt!2094044) lt!2094225)))

(declare-fun b_lambda!198763 () Bool)

(assert (=> (not b_lambda!198763) (not d!1649161)))

(declare-fun t!371769 () Bool)

(declare-fun tb!261843 () Bool)

(assert (=> (and b!5096607 (= (toChars!11410 (transformation!8528 rule!158)) (toChars!11410 (transformation!8528 rule!158))) t!371769) tb!261843))

(declare-fun tp!1421346 () Bool)

(declare-fun e!3178722 () Bool)

(declare-fun b!5096769 () Bool)

(assert (=> b!5096769 (= e!3178722 (and (inv!78173 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))) tp!1421346))))

(declare-fun result!328912 () Bool)

(assert (=> tb!261843 (= result!328912 (and (inv!78174 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))) e!3178722))))

(assert (= tb!261843 b!5096769))

(declare-fun m!6153958 () Bool)

(assert (=> b!5096769 m!6153958))

(declare-fun m!6153960 () Bool)

(assert (=> tb!261843 m!6153960))

(assert (=> d!1649161 t!371769))

(declare-fun b_and!350405 () Bool)

(assert (= b_and!350399 (and (=> t!371769 result!328912) b_and!350405)))

(declare-fun b_lambda!198765 () Bool)

(assert (=> (not b_lambda!198765) (not d!1649161)))

(declare-fun t!371771 () Bool)

(declare-fun tb!261845 () Bool)

(assert (=> (and b!5096607 (= (toValue!11551 (transformation!8528 rule!158)) (toValue!11551 (transformation!8528 rule!158))) t!371771) tb!261845))

(declare-fun result!328914 () Bool)

(declare-fun inv!21 (TokenValue!8842) Bool)

(assert (=> tb!261845 (= result!328914 (inv!21 (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))))

(declare-fun m!6153962 () Bool)

(assert (=> tb!261845 m!6153962))

(assert (=> d!1649161 t!371771))

(declare-fun b_and!350407 () Bool)

(assert (= b_and!350395 (and (=> t!371771 result!328914) b_and!350407)))

(declare-fun m!6153964 () Bool)

(assert (=> d!1649161 m!6153964))

(declare-fun m!6153966 () Bool)

(assert (=> d!1649161 m!6153966))

(declare-fun m!6153968 () Bool)

(assert (=> d!1649161 m!6153968))

(assert (=> d!1649161 m!6153968))

(declare-fun m!6153970 () Bool)

(assert (=> d!1649161 m!6153970))

(declare-fun m!6153972 () Bool)

(assert (=> d!1649161 m!6153972))

(assert (=> d!1649161 m!6153966))

(assert (=> b!5096604 d!1649161))

(declare-fun d!1649167 () Bool)

(assert (=> d!1649167 (= (isEmpty!31756 (_1!34999 lt!2094047)) ((_ is Nil!58671) (_1!34999 lt!2094047)))))

(assert (=> b!5096604 d!1649167))

(declare-fun d!1649171 () Bool)

(declare-fun fromListB!2766 (List!58795) BalanceConc!30518)

(assert (=> d!1649171 (= (seqFromList!6118 (_1!34999 lt!2094046)) (fromListB!2766 (_1!34999 lt!2094046)))))

(declare-fun bs!1191343 () Bool)

(assert (= bs!1191343 d!1649171))

(declare-fun m!6153986 () Bool)

(assert (=> bs!1191343 m!6153986))

(assert (=> b!5096604 d!1649171))

(declare-fun d!1649175 () Bool)

(declare-fun e!3178735 () Bool)

(assert (=> d!1649175 e!3178735))

(declare-fun res!2169194 () Bool)

(assert (=> d!1649175 (=> res!2169194 e!3178735)))

(assert (=> d!1649175 (= res!2169194 (isEmpty!31756 (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))))))

(declare-fun lt!2094233 () Unit!149711)

(declare-fun choose!37313 (Regex!14003 List!58795) Unit!149711)

(assert (=> d!1649175 (= lt!2094233 (choose!37313 (regex!8528 rule!158) input!1493))))

(assert (=> d!1649175 (validRegex!6129 (regex!8528 rule!158))))

(assert (=> d!1649175 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1977 (regex!8528 rule!158) input!1493) lt!2094233)))

(declare-fun b!5096785 () Bool)

(assert (=> b!5096785 (= e!3178735 (matchR!6800 (regex!8528 rule!158) (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))))))

(assert (= (and d!1649175 (not res!2169194)) b!5096785))

(declare-fun m!6153990 () Bool)

(assert (=> d!1649175 m!6153990))

(assert (=> d!1649175 m!6153778))

(assert (=> d!1649175 m!6153780))

(assert (=> d!1649175 m!6153782))

(assert (=> d!1649175 m!6153778))

(declare-fun m!6153992 () Bool)

(assert (=> d!1649175 m!6153992))

(assert (=> d!1649175 m!6153780))

(assert (=> d!1649175 m!6153818))

(assert (=> b!5096785 m!6153778))

(assert (=> b!5096785 m!6153780))

(assert (=> b!5096785 m!6153778))

(assert (=> b!5096785 m!6153780))

(assert (=> b!5096785 m!6153782))

(declare-fun m!6153998 () Bool)

(assert (=> b!5096785 m!6153998))

(assert (=> b!5096604 d!1649175))

(declare-fun d!1649179 () Bool)

(declare-fun lt!2094237 () Int)

(assert (=> d!1649179 (>= lt!2094237 0)))

(declare-fun e!3178739 () Int)

(assert (=> d!1649179 (= lt!2094237 e!3178739)))

(declare-fun c!875732 () Bool)

(assert (=> d!1649179 (= c!875732 ((_ is Nil!58671) (_1!34999 lt!2094046)))))

(assert (=> d!1649179 (= (size!39303 (_1!34999 lt!2094046)) lt!2094237)))

(declare-fun b!5096791 () Bool)

(assert (=> b!5096791 (= e!3178739 0)))

(declare-fun b!5096792 () Bool)

(assert (=> b!5096792 (= e!3178739 (+ 1 (size!39303 (t!371760 (_1!34999 lt!2094046)))))))

(assert (= (and d!1649179 c!875732) b!5096791))

(assert (= (and d!1649179 (not c!875732)) b!5096792))

(declare-fun m!6154002 () Bool)

(assert (=> b!5096792 m!6154002))

(assert (=> b!5096604 d!1649179))

(declare-fun d!1649185 () Bool)

(assert (=> d!1649185 (= (apply!14300 (transformation!8528 rule!158) lt!2094044) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))))

(declare-fun b_lambda!198771 () Bool)

(assert (=> (not b_lambda!198771) (not d!1649185)))

(assert (=> d!1649185 t!371771))

(declare-fun b_and!350413 () Bool)

(assert (= b_and!350407 (and (=> t!371771 result!328914) b_and!350413)))

(assert (=> d!1649185 m!6153966))

(assert (=> b!5096604 d!1649185))

(declare-fun d!1649187 () Bool)

(declare-fun e!3178749 () Bool)

(assert (=> d!1649187 e!3178749))

(declare-fun res!2169205 () Bool)

(assert (=> d!1649187 (=> (not res!2169205) (not e!3178749))))

(declare-fun semiInverseModEq!3798 (Int Int) Bool)

(assert (=> d!1649187 (= res!2169205 (semiInverseModEq!3798 (toChars!11410 (transformation!8528 rule!158)) (toValue!11551 (transformation!8528 rule!158))))))

(declare-fun Unit!149719 () Unit!149711)

(assert (=> d!1649187 (= (lemmaInv!1416 (transformation!8528 rule!158)) Unit!149719)))

(declare-fun b!5096806 () Bool)

(declare-fun equivClasses!3613 (Int Int) Bool)

(assert (=> b!5096806 (= e!3178749 (equivClasses!3613 (toChars!11410 (transformation!8528 rule!158)) (toValue!11551 (transformation!8528 rule!158))))))

(assert (= (and d!1649187 res!2169205) b!5096806))

(declare-fun m!6154008 () Bool)

(assert (=> d!1649187 m!6154008))

(declare-fun m!6154010 () Bool)

(assert (=> b!5096806 m!6154010))

(assert (=> b!5096604 d!1649187))

(declare-fun d!1649195 () Bool)

(declare-fun lt!2094240 () Int)

(assert (=> d!1649195 (>= lt!2094240 0)))

(declare-fun e!3178751 () Int)

(assert (=> d!1649195 (= lt!2094240 e!3178751)))

(declare-fun c!875735 () Bool)

(assert (=> d!1649195 (= c!875735 ((_ is Nil!58671) input!1493))))

(assert (=> d!1649195 (= (size!39303 input!1493) lt!2094240)))

(declare-fun b!5096809 () Bool)

(assert (=> b!5096809 (= e!3178751 0)))

(declare-fun b!5096810 () Bool)

(assert (=> b!5096810 (= e!3178751 (+ 1 (size!39303 (t!371760 input!1493))))))

(assert (= (and d!1649195 c!875735) b!5096809))

(assert (= (and d!1649195 (not c!875735)) b!5096810))

(declare-fun m!6154012 () Bool)

(assert (=> b!5096810 m!6154012))

(assert (=> b!5096604 d!1649195))

(declare-fun d!1649199 () Bool)

(declare-fun lt!2094241 () Int)

(assert (=> d!1649199 (>= lt!2094241 0)))

(declare-fun e!3178752 () Int)

(assert (=> d!1649199 (= lt!2094241 e!3178752)))

(declare-fun c!875736 () Bool)

(assert (=> d!1649199 (= c!875736 ((_ is Nil!58671) Nil!58671))))

(assert (=> d!1649199 (= (size!39303 Nil!58671) lt!2094241)))

(declare-fun b!5096811 () Bool)

(assert (=> b!5096811 (= e!3178752 0)))

(declare-fun b!5096812 () Bool)

(assert (=> b!5096812 (= e!3178752 (+ 1 (size!39303 (t!371760 Nil!58671))))))

(assert (= (and d!1649199 c!875736) b!5096811))

(assert (= (and d!1649199 (not c!875736)) b!5096812))

(declare-fun m!6154014 () Bool)

(assert (=> b!5096812 m!6154014))

(assert (=> b!5096604 d!1649199))

(declare-fun d!1649201 () Bool)

(assert (=> d!1649201 (= (isEmpty!31756 (_1!34999 lt!2094046)) ((_ is Nil!58671) (_1!34999 lt!2094046)))))

(assert (=> b!5096605 d!1649201))

(declare-fun d!1649203 () Bool)

(declare-fun lt!2094260 () tuple2!63392)

(declare-fun findLongestMatch!1836 (Regex!14003 List!58795) tuple2!63392)

(assert (=> d!1649203 (= lt!2094260 (findLongestMatch!1836 (regex!8528 rule!158) input!1493))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58797 0))(
  ( (Nil!58673) (Cons!58673 (h!65121 Regex!14003) (t!371774 List!58797)) )
))
(declare-datatypes ((Context!6772 0))(
  ( (Context!6773 (exprs!3886 List!58797)) )
))
(declare-fun lt!2094264 () (InoxSet Context!6772))

(declare-fun findLongestMatchZipper!28 ((InoxSet Context!6772) List!58795) tuple2!63392)

(assert (=> d!1649203 (= lt!2094260 (findLongestMatchZipper!28 lt!2094264 input!1493))))

(declare-fun lt!2094262 () Unit!149711)

(declare-fun lt!2094263 () Unit!149711)

(assert (=> d!1649203 (= lt!2094262 lt!2094263)))

(declare-fun lt!2094261 () Int)

(declare-fun sizeTr!414 (List!58795 Int) Int)

(assert (=> d!1649203 (= (sizeTr!414 input!1493 lt!2094261) (+ (size!39303 input!1493) lt!2094261))))

(declare-fun lemmaSizeTrEqualsSize!413 (List!58795 Int) Unit!149711)

(assert (=> d!1649203 (= lt!2094263 (lemmaSizeTrEqualsSize!413 input!1493 lt!2094261))))

(assert (=> d!1649203 (= lt!2094261 0)))

(declare-fun lt!2094259 () Unit!149711)

(declare-fun lt!2094265 () Unit!149711)

(assert (=> d!1649203 (= lt!2094259 lt!2094265)))

(assert (=> d!1649203 (= (findLongestMatchZipper!28 lt!2094264 input!1493) (findLongestMatch!1836 (regex!8528 rule!158) input!1493))))

(declare-fun longestMatchSameAsRegex!24 (Regex!14003 (InoxSet Context!6772) List!58795) Unit!149711)

(assert (=> d!1649203 (= lt!2094265 (longestMatchSameAsRegex!24 (regex!8528 rule!158) lt!2094264 input!1493))))

(declare-fun focus!363 (Regex!14003) (InoxSet Context!6772))

(assert (=> d!1649203 (= lt!2094264 (focus!363 (regex!8528 rule!158)))))

(assert (=> d!1649203 (validRegex!6129 (regex!8528 rule!158))))

(assert (=> d!1649203 (= (findLongestMatchWithZipper!123 (regex!8528 rule!158) input!1493) lt!2094260)))

(declare-fun bs!1191344 () Bool)

(assert (= bs!1191344 d!1649203))

(declare-fun m!6154026 () Bool)

(assert (=> bs!1191344 m!6154026))

(declare-fun m!6154028 () Bool)

(assert (=> bs!1191344 m!6154028))

(declare-fun m!6154030 () Bool)

(assert (=> bs!1191344 m!6154030))

(declare-fun m!6154032 () Bool)

(assert (=> bs!1191344 m!6154032))

(assert (=> bs!1191344 m!6153818))

(assert (=> bs!1191344 m!6153780))

(declare-fun m!6154034 () Bool)

(assert (=> bs!1191344 m!6154034))

(declare-fun m!6154036 () Bool)

(assert (=> bs!1191344 m!6154036))

(assert (=> b!5096605 d!1649203))

(declare-fun d!1649209 () Bool)

(declare-fun res!2169236 () Bool)

(declare-fun e!3178776 () Bool)

(assert (=> d!1649209 (=> (not res!2169236) (not e!3178776))))

(assert (=> d!1649209 (= res!2169236 (validRegex!6129 (regex!8528 rule!158)))))

(assert (=> d!1649209 (= (ruleValid!3920 thiss!15916 rule!158) e!3178776)))

(declare-fun b!5096859 () Bool)

(declare-fun res!2169237 () Bool)

(assert (=> b!5096859 (=> (not res!2169237) (not e!3178776))))

(assert (=> b!5096859 (= res!2169237 (not (nullable!4704 (regex!8528 rule!158))))))

(declare-fun b!5096860 () Bool)

(assert (=> b!5096860 (= e!3178776 (not (= (tag!9392 rule!158) (String!67132 ""))))))

(assert (= (and d!1649209 res!2169236) b!5096859))

(assert (= (and b!5096859 res!2169237) b!5096860))

(assert (=> d!1649209 m!6153818))

(assert (=> b!5096859 m!6153820))

(assert (=> b!5096601 d!1649209))

(declare-fun d!1649211 () Bool)

(assert (=> d!1649211 (= (inv!78166 (tag!9392 rule!158)) (= (mod (str.len (value!273322 (tag!9392 rule!158))) 2) 0))))

(assert (=> b!5096606 d!1649211))

(declare-fun d!1649213 () Bool)

(declare-fun res!2169240 () Bool)

(declare-fun e!3178779 () Bool)

(assert (=> d!1649213 (=> (not res!2169240) (not e!3178779))))

(assert (=> d!1649213 (= res!2169240 (semiInverseModEq!3798 (toChars!11410 (transformation!8528 rule!158)) (toValue!11551 (transformation!8528 rule!158))))))

(assert (=> d!1649213 (= (inv!78170 (transformation!8528 rule!158)) e!3178779)))

(declare-fun b!5096863 () Bool)

(assert (=> b!5096863 (= e!3178779 (equivClasses!3613 (toChars!11410 (transformation!8528 rule!158)) (toValue!11551 (transformation!8528 rule!158))))))

(assert (= (and d!1649213 res!2169240) b!5096863))

(assert (=> d!1649213 m!6154008))

(assert (=> b!5096863 m!6154010))

(assert (=> b!5096606 d!1649213))

(declare-fun b!5096868 () Bool)

(declare-fun e!3178782 () Bool)

(declare-fun tp!1421350 () Bool)

(assert (=> b!5096868 (= e!3178782 (and tp_is_empty!37271 tp!1421350))))

(assert (=> b!5096603 (= tp!1421337 e!3178782)))

(assert (= (and b!5096603 ((_ is Cons!58671) (t!371760 input!1493))) b!5096868))

(declare-fun b!5096881 () Bool)

(declare-fun e!3178785 () Bool)

(declare-fun tp!1421362 () Bool)

(assert (=> b!5096881 (= e!3178785 tp!1421362)))

(declare-fun b!5096879 () Bool)

(assert (=> b!5096879 (= e!3178785 tp_is_empty!37271)))

(assert (=> b!5096606 (= tp!1421338 e!3178785)))

(declare-fun b!5096880 () Bool)

(declare-fun tp!1421364 () Bool)

(declare-fun tp!1421365 () Bool)

(assert (=> b!5096880 (= e!3178785 (and tp!1421364 tp!1421365))))

(declare-fun b!5096882 () Bool)

(declare-fun tp!1421361 () Bool)

(declare-fun tp!1421363 () Bool)

(assert (=> b!5096882 (= e!3178785 (and tp!1421361 tp!1421363))))

(assert (= (and b!5096606 ((_ is ElementMatch!14003) (regex!8528 rule!158))) b!5096879))

(assert (= (and b!5096606 ((_ is Concat!22845) (regex!8528 rule!158))) b!5096880))

(assert (= (and b!5096606 ((_ is Star!14003) (regex!8528 rule!158))) b!5096881))

(assert (= (and b!5096606 ((_ is Union!14003) (regex!8528 rule!158))) b!5096882))

(declare-fun b_lambda!198773 () Bool)

(assert (= b_lambda!198763 (or (and b!5096607 b_free!133505) b_lambda!198773)))

(declare-fun b_lambda!198775 () Bool)

(assert (= b_lambda!198771 (or (and b!5096607 b_free!133503) b_lambda!198775)))

(declare-fun b_lambda!198777 () Bool)

(assert (= b_lambda!198765 (or (and b!5096607 b_free!133503) b_lambda!198777)))

(check-sat (not b!5096785) (not b!5096701) (not b!5096657) (not tb!261837) (not d!1649175) (not b!5096859) (not bm!354832) (not b!5096812) (not bm!354813) (not b!5096641) (not b_lambda!198757) b_and!350405 (not b!5096649) (not b!5096700) (not b_next!134293) (not tb!261845) (not b!5096868) (not d!1649203) (not d!1649171) (not b!5096882) b_and!350413 (not b!5096880) (not bm!354835) (not b_lambda!198775) (not b!5096810) (not d!1649159) (not b!5096769) (not bm!354831) (not b_lambda!198777) (not d!1649161) (not b!5096647) (not b!5096863) (not d!1649187) (not b!5096806) (not b!5096652) (not bm!354833) (not b_next!134295) (not b!5096658) (not d!1649157) (not b!5096651) (not bm!354834) (not bm!354837) (not d!1649209) (not b!5096704) (not d!1649147) (not bm!354836) (not bm!354830) (not b!5096696) (not d!1649213) (not tb!261843) (not b!5096881) (not b!5096648) (not b!5096792) (not b!5096663) tp_is_empty!37271 (not b_lambda!198773))
(check-sat b_and!350405 b_and!350413 (not b_next!134293) (not b_next!134295))
(get-model)

(declare-fun d!1649215 () Bool)

(assert (=> d!1649215 (= (head!10826 input!1493) (h!65119 input!1493))))

(assert (=> bm!354833 d!1649215))

(declare-fun d!1649217 () Bool)

(declare-fun e!3178798 () Bool)

(assert (=> d!1649217 e!3178798))

(declare-fun res!2169250 () Bool)

(assert (=> d!1649217 (=> res!2169250 e!3178798)))

(declare-fun lt!2094289 () Bool)

(assert (=> d!1649217 (= res!2169250 (not lt!2094289))))

(declare-fun e!3178800 () Bool)

(assert (=> d!1649217 (= lt!2094289 e!3178800)))

(declare-fun res!2169252 () Bool)

(assert (=> d!1649217 (=> res!2169252 e!3178800)))

(assert (=> d!1649217 (= res!2169252 ((_ is Nil!58671) Nil!58671))))

(assert (=> d!1649217 (= (isPrefix!5413 Nil!58671 (++!12858 Nil!58671 input!1493)) lt!2094289)))

(declare-fun b!5096910 () Bool)

(declare-fun e!3178799 () Bool)

(assert (=> b!5096910 (= e!3178800 e!3178799)))

(declare-fun res!2169251 () Bool)

(assert (=> b!5096910 (=> (not res!2169251) (not e!3178799))))

(assert (=> b!5096910 (= res!2169251 (not ((_ is Nil!58671) (++!12858 Nil!58671 input!1493))))))

(declare-fun b!5096911 () Bool)

(declare-fun res!2169249 () Bool)

(assert (=> b!5096911 (=> (not res!2169249) (not e!3178799))))

(assert (=> b!5096911 (= res!2169249 (= (head!10826 Nil!58671) (head!10826 (++!12858 Nil!58671 input!1493))))))

(declare-fun b!5096913 () Bool)

(assert (=> b!5096913 (= e!3178798 (>= (size!39303 (++!12858 Nil!58671 input!1493)) (size!39303 Nil!58671)))))

(declare-fun b!5096912 () Bool)

(assert (=> b!5096912 (= e!3178799 (isPrefix!5413 (tail!9981 Nil!58671) (tail!9981 (++!12858 Nil!58671 input!1493))))))

(assert (= (and d!1649217 (not res!2169252)) b!5096910))

(assert (= (and b!5096910 res!2169251) b!5096911))

(assert (= (and b!5096911 res!2169249) b!5096912))

(assert (= (and d!1649217 (not res!2169250)) b!5096913))

(declare-fun m!6154050 () Bool)

(assert (=> b!5096911 m!6154050))

(assert (=> b!5096911 m!6153868))

(declare-fun m!6154052 () Bool)

(assert (=> b!5096911 m!6154052))

(assert (=> b!5096913 m!6153868))

(declare-fun m!6154054 () Bool)

(assert (=> b!5096913 m!6154054))

(assert (=> b!5096913 m!6153778))

(declare-fun m!6154056 () Bool)

(assert (=> b!5096912 m!6154056))

(assert (=> b!5096912 m!6153868))

(declare-fun m!6154058 () Bool)

(assert (=> b!5096912 m!6154058))

(assert (=> b!5096912 m!6154056))

(assert (=> b!5096912 m!6154058))

(declare-fun m!6154060 () Bool)

(assert (=> b!5096912 m!6154060))

(assert (=> d!1649159 d!1649217))

(declare-fun d!1649219 () Bool)

(assert (=> d!1649219 (= input!1493 lt!2094117)))

(declare-fun lt!2094292 () Unit!149711)

(declare-fun choose!37315 (List!58795 List!58795 List!58795 List!58795 List!58795) Unit!149711)

(assert (=> d!1649219 (= lt!2094292 (choose!37315 Nil!58671 input!1493 Nil!58671 lt!2094117 input!1493))))

(assert (=> d!1649219 (isPrefix!5413 Nil!58671 input!1493)))

(assert (=> d!1649219 (= (lemmaSamePrefixThenSameSuffix!2570 Nil!58671 input!1493 Nil!58671 lt!2094117 input!1493) lt!2094292)))

(declare-fun bs!1191346 () Bool)

(assert (= bs!1191346 d!1649219))

(declare-fun m!6154062 () Bool)

(assert (=> bs!1191346 m!6154062))

(declare-fun m!6154064 () Bool)

(assert (=> bs!1191346 m!6154064))

(assert (=> d!1649159 d!1649219))

(declare-fun b!5096932 () Bool)

(declare-fun e!3178819 () Bool)

(declare-fun call!354878 () Bool)

(assert (=> b!5096932 (= e!3178819 call!354878)))

(declare-fun d!1649221 () Bool)

(declare-fun res!2169263 () Bool)

(declare-fun e!3178816 () Bool)

(assert (=> d!1649221 (=> res!2169263 e!3178816)))

(assert (=> d!1649221 (= res!2169263 ((_ is ElementMatch!14003) (regex!8528 rule!158)))))

(assert (=> d!1649221 (= (validRegex!6129 (regex!8528 rule!158)) e!3178816)))

(declare-fun b!5096933 () Bool)

(declare-fun res!2169265 () Bool)

(assert (=> b!5096933 (=> (not res!2169265) (not e!3178819))))

(declare-fun call!354877 () Bool)

(assert (=> b!5096933 (= res!2169265 call!354877)))

(declare-fun e!3178821 () Bool)

(assert (=> b!5096933 (= e!3178821 e!3178819)))

(declare-fun b!5096934 () Bool)

(declare-fun e!3178818 () Bool)

(assert (=> b!5096934 (= e!3178816 e!3178818)))

(declare-fun c!875750 () Bool)

(assert (=> b!5096934 (= c!875750 ((_ is Star!14003) (regex!8528 rule!158)))))

(declare-fun c!875751 () Bool)

(declare-fun call!354876 () Bool)

(declare-fun bm!354871 () Bool)

(assert (=> bm!354871 (= call!354876 (validRegex!6129 (ite c!875750 (reg!14332 (regex!8528 rule!158)) (ite c!875751 (regOne!28519 (regex!8528 rule!158)) (regTwo!28518 (regex!8528 rule!158))))))))

(declare-fun b!5096935 () Bool)

(declare-fun res!2169264 () Bool)

(declare-fun e!3178815 () Bool)

(assert (=> b!5096935 (=> res!2169264 e!3178815)))

(assert (=> b!5096935 (= res!2169264 (not ((_ is Concat!22845) (regex!8528 rule!158))))))

(assert (=> b!5096935 (= e!3178821 e!3178815)))

(declare-fun b!5096936 () Bool)

(assert (=> b!5096936 (= e!3178818 e!3178821)))

(assert (=> b!5096936 (= c!875751 ((_ is Union!14003) (regex!8528 rule!158)))))

(declare-fun bm!354872 () Bool)

(assert (=> bm!354872 (= call!354877 call!354876)))

(declare-fun b!5096937 () Bool)

(declare-fun e!3178817 () Bool)

(assert (=> b!5096937 (= e!3178817 call!354877)))

(declare-fun bm!354873 () Bool)

(assert (=> bm!354873 (= call!354878 (validRegex!6129 (ite c!875751 (regTwo!28519 (regex!8528 rule!158)) (regOne!28518 (regex!8528 rule!158)))))))

(declare-fun b!5096938 () Bool)

(declare-fun e!3178820 () Bool)

(assert (=> b!5096938 (= e!3178818 e!3178820)))

(declare-fun res!2169266 () Bool)

(assert (=> b!5096938 (= res!2169266 (not (nullable!4704 (reg!14332 (regex!8528 rule!158)))))))

(assert (=> b!5096938 (=> (not res!2169266) (not e!3178820))))

(declare-fun b!5096939 () Bool)

(assert (=> b!5096939 (= e!3178815 e!3178817)))

(declare-fun res!2169267 () Bool)

(assert (=> b!5096939 (=> (not res!2169267) (not e!3178817))))

(assert (=> b!5096939 (= res!2169267 call!354878)))

(declare-fun b!5096940 () Bool)

(assert (=> b!5096940 (= e!3178820 call!354876)))

(assert (= (and d!1649221 (not res!2169263)) b!5096934))

(assert (= (and b!5096934 c!875750) b!5096938))

(assert (= (and b!5096934 (not c!875750)) b!5096936))

(assert (= (and b!5096938 res!2169266) b!5096940))

(assert (= (and b!5096936 c!875751) b!5096933))

(assert (= (and b!5096936 (not c!875751)) b!5096935))

(assert (= (and b!5096933 res!2169265) b!5096932))

(assert (= (and b!5096935 (not res!2169264)) b!5096939))

(assert (= (and b!5096939 res!2169267) b!5096937))

(assert (= (or b!5096933 b!5096937) bm!354872))

(assert (= (or b!5096932 b!5096939) bm!354873))

(assert (= (or b!5096940 bm!354872) bm!354871))

(declare-fun m!6154066 () Bool)

(assert (=> bm!354871 m!6154066))

(declare-fun m!6154068 () Bool)

(assert (=> bm!354873 m!6154068))

(declare-fun m!6154070 () Bool)

(assert (=> b!5096938 m!6154070))

(assert (=> d!1649159 d!1649221))

(declare-fun d!1649223 () Bool)

(declare-fun lostCauseFct!301 (Regex!14003) Bool)

(assert (=> d!1649223 (= (lostCause!1200 (regex!8528 rule!158)) (lostCauseFct!301 (regex!8528 rule!158)))))

(declare-fun bs!1191347 () Bool)

(assert (= bs!1191347 d!1649223))

(declare-fun m!6154072 () Bool)

(assert (=> bs!1191347 m!6154072))

(assert (=> d!1649159 d!1649223))

(declare-fun d!1649225 () Bool)

(declare-fun lt!2094295 () List!58795)

(assert (=> d!1649225 (= (++!12858 Nil!58671 lt!2094295) input!1493)))

(declare-fun e!3178824 () List!58795)

(assert (=> d!1649225 (= lt!2094295 e!3178824)))

(declare-fun c!875754 () Bool)

(assert (=> d!1649225 (= c!875754 ((_ is Cons!58671) Nil!58671))))

(assert (=> d!1649225 (>= (size!39303 input!1493) (size!39303 Nil!58671))))

(assert (=> d!1649225 (= (getSuffix!3156 input!1493 Nil!58671) lt!2094295)))

(declare-fun b!5096945 () Bool)

(assert (=> b!5096945 (= e!3178824 (getSuffix!3156 (tail!9981 input!1493) (t!371760 Nil!58671)))))

(declare-fun b!5096946 () Bool)

(assert (=> b!5096946 (= e!3178824 input!1493)))

(assert (= (and d!1649225 c!875754) b!5096945))

(assert (= (and d!1649225 (not c!875754)) b!5096946))

(declare-fun m!6154074 () Bool)

(assert (=> d!1649225 m!6154074))

(assert (=> d!1649225 m!6153780))

(assert (=> d!1649225 m!6153778))

(assert (=> b!5096945 m!6153842))

(assert (=> b!5096945 m!6153842))

(declare-fun m!6154076 () Bool)

(assert (=> b!5096945 m!6154076))

(assert (=> d!1649159 d!1649225))

(declare-fun b!5096955 () Bool)

(declare-fun e!3178830 () List!58795)

(assert (=> b!5096955 (= e!3178830 input!1493)))

(declare-fun b!5096956 () Bool)

(assert (=> b!5096956 (= e!3178830 (Cons!58671 (h!65119 Nil!58671) (++!12858 (t!371760 Nil!58671) input!1493)))))

(declare-fun b!5096958 () Bool)

(declare-fun e!3178829 () Bool)

(declare-fun lt!2094298 () List!58795)

(assert (=> b!5096958 (= e!3178829 (or (not (= input!1493 Nil!58671)) (= lt!2094298 Nil!58671)))))

(declare-fun d!1649227 () Bool)

(assert (=> d!1649227 e!3178829))

(declare-fun res!2169273 () Bool)

(assert (=> d!1649227 (=> (not res!2169273) (not e!3178829))))

(declare-fun content!10441 (List!58795) (InoxSet C!28264))

(assert (=> d!1649227 (= res!2169273 (= (content!10441 lt!2094298) ((_ map or) (content!10441 Nil!58671) (content!10441 input!1493))))))

(assert (=> d!1649227 (= lt!2094298 e!3178830)))

(declare-fun c!875757 () Bool)

(assert (=> d!1649227 (= c!875757 ((_ is Nil!58671) Nil!58671))))

(assert (=> d!1649227 (= (++!12858 Nil!58671 input!1493) lt!2094298)))

(declare-fun b!5096957 () Bool)

(declare-fun res!2169272 () Bool)

(assert (=> b!5096957 (=> (not res!2169272) (not e!3178829))))

(assert (=> b!5096957 (= res!2169272 (= (size!39303 lt!2094298) (+ (size!39303 Nil!58671) (size!39303 input!1493))))))

(assert (= (and d!1649227 c!875757) b!5096955))

(assert (= (and d!1649227 (not c!875757)) b!5096956))

(assert (= (and d!1649227 res!2169273) b!5096957))

(assert (= (and b!5096957 res!2169272) b!5096958))

(declare-fun m!6154078 () Bool)

(assert (=> b!5096956 m!6154078))

(declare-fun m!6154080 () Bool)

(assert (=> d!1649227 m!6154080))

(declare-fun m!6154082 () Bool)

(assert (=> d!1649227 m!6154082))

(declare-fun m!6154084 () Bool)

(assert (=> d!1649227 m!6154084))

(declare-fun m!6154086 () Bool)

(assert (=> b!5096957 m!6154086))

(assert (=> b!5096957 m!6153778))

(assert (=> b!5096957 m!6153780))

(assert (=> d!1649159 d!1649227))

(declare-fun d!1649229 () Bool)

(assert (=> d!1649229 (isPrefix!5413 Nil!58671 (++!12858 Nil!58671 input!1493))))

(declare-fun lt!2094301 () Unit!149711)

(declare-fun choose!37316 (List!58795 List!58795) Unit!149711)

(assert (=> d!1649229 (= lt!2094301 (choose!37316 Nil!58671 input!1493))))

(assert (=> d!1649229 (= (lemmaConcatTwoListThenFirstIsPrefix!3472 Nil!58671 input!1493) lt!2094301)))

(declare-fun bs!1191348 () Bool)

(assert (= bs!1191348 d!1649229))

(assert (=> bs!1191348 m!6153868))

(assert (=> bs!1191348 m!6153868))

(assert (=> bs!1191348 m!6153874))

(declare-fun m!6154088 () Bool)

(assert (=> bs!1191348 m!6154088))

(assert (=> d!1649159 d!1649229))

(declare-fun b!5096959 () Bool)

(declare-fun e!3178832 () List!58795)

(assert (=> b!5096959 (= e!3178832 (_2!34999 lt!2094126))))

(declare-fun b!5096960 () Bool)

(assert (=> b!5096960 (= e!3178832 (Cons!58671 (h!65119 (_1!34999 lt!2094126)) (++!12858 (t!371760 (_1!34999 lt!2094126)) (_2!34999 lt!2094126))))))

(declare-fun b!5096962 () Bool)

(declare-fun e!3178831 () Bool)

(declare-fun lt!2094302 () List!58795)

(assert (=> b!5096962 (= e!3178831 (or (not (= (_2!34999 lt!2094126) Nil!58671)) (= lt!2094302 (_1!34999 lt!2094126))))))

(declare-fun d!1649231 () Bool)

(assert (=> d!1649231 e!3178831))

(declare-fun res!2169275 () Bool)

(assert (=> d!1649231 (=> (not res!2169275) (not e!3178831))))

(assert (=> d!1649231 (= res!2169275 (= (content!10441 lt!2094302) ((_ map or) (content!10441 (_1!34999 lt!2094126)) (content!10441 (_2!34999 lt!2094126)))))))

(assert (=> d!1649231 (= lt!2094302 e!3178832)))

(declare-fun c!875758 () Bool)

(assert (=> d!1649231 (= c!875758 ((_ is Nil!58671) (_1!34999 lt!2094126)))))

(assert (=> d!1649231 (= (++!12858 (_1!34999 lt!2094126) (_2!34999 lt!2094126)) lt!2094302)))

(declare-fun b!5096961 () Bool)

(declare-fun res!2169274 () Bool)

(assert (=> b!5096961 (=> (not res!2169274) (not e!3178831))))

(assert (=> b!5096961 (= res!2169274 (= (size!39303 lt!2094302) (+ (size!39303 (_1!34999 lt!2094126)) (size!39303 (_2!34999 lt!2094126)))))))

(assert (= (and d!1649231 c!875758) b!5096959))

(assert (= (and d!1649231 (not c!875758)) b!5096960))

(assert (= (and d!1649231 res!2169275) b!5096961))

(assert (= (and b!5096961 res!2169274) b!5096962))

(declare-fun m!6154090 () Bool)

(assert (=> b!5096960 m!6154090))

(declare-fun m!6154092 () Bool)

(assert (=> d!1649231 m!6154092))

(declare-fun m!6154094 () Bool)

(assert (=> d!1649231 m!6154094))

(declare-fun m!6154096 () Bool)

(assert (=> d!1649231 m!6154096))

(declare-fun m!6154098 () Bool)

(assert (=> b!5096961 m!6154098))

(assert (=> b!5096961 m!6153882))

(declare-fun m!6154100 () Bool)

(assert (=> b!5096961 m!6154100))

(assert (=> d!1649159 d!1649231))

(assert (=> bm!354813 d!1649167))

(declare-fun d!1649233 () Bool)

(assert (=> d!1649233 (= (head!10826 (_1!34999 lt!2094047)) (h!65119 (_1!34999 lt!2094047)))))

(assert (=> b!5096641 d!1649233))

(assert (=> d!1649209 d!1649221))

(declare-fun d!1649235 () Bool)

(declare-fun lt!2094303 () Int)

(assert (=> d!1649235 (>= lt!2094303 0)))

(declare-fun e!3178833 () Int)

(assert (=> d!1649235 (= lt!2094303 e!3178833)))

(declare-fun c!875759 () Bool)

(assert (=> d!1649235 (= c!875759 ((_ is Nil!58671) (originalCharacters!8769 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))))

(assert (=> d!1649235 (= (size!39303 (originalCharacters!8769 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))) lt!2094303)))

(declare-fun b!5096963 () Bool)

(assert (=> b!5096963 (= e!3178833 0)))

(declare-fun b!5096964 () Bool)

(assert (=> b!5096964 (= e!3178833 (+ 1 (size!39303 (t!371760 (originalCharacters!8769 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))))))

(assert (= (and d!1649235 c!875759) b!5096963))

(assert (= (and d!1649235 (not c!875759)) b!5096964))

(declare-fun m!6154102 () Bool)

(assert (=> b!5096964 m!6154102))

(assert (=> b!5096658 d!1649235))

(declare-fun b!5096965 () Bool)

(declare-fun e!3178835 () List!58795)

(assert (=> b!5096965 (= e!3178835 lt!2094114)))

(declare-fun b!5096966 () Bool)

(assert (=> b!5096966 (= e!3178835 (Cons!58671 (h!65119 (++!12858 Nil!58671 (Cons!58671 lt!2094130 Nil!58671))) (++!12858 (t!371760 (++!12858 Nil!58671 (Cons!58671 lt!2094130 Nil!58671))) lt!2094114)))))

(declare-fun e!3178834 () Bool)

(declare-fun lt!2094304 () List!58795)

(declare-fun b!5096968 () Bool)

(assert (=> b!5096968 (= e!3178834 (or (not (= lt!2094114 Nil!58671)) (= lt!2094304 (++!12858 Nil!58671 (Cons!58671 lt!2094130 Nil!58671)))))))

(declare-fun d!1649237 () Bool)

(assert (=> d!1649237 e!3178834))

(declare-fun res!2169277 () Bool)

(assert (=> d!1649237 (=> (not res!2169277) (not e!3178834))))

(assert (=> d!1649237 (= res!2169277 (= (content!10441 lt!2094304) ((_ map or) (content!10441 (++!12858 Nil!58671 (Cons!58671 lt!2094130 Nil!58671))) (content!10441 lt!2094114))))))

(assert (=> d!1649237 (= lt!2094304 e!3178835)))

(declare-fun c!875760 () Bool)

(assert (=> d!1649237 (= c!875760 ((_ is Nil!58671) (++!12858 Nil!58671 (Cons!58671 lt!2094130 Nil!58671))))))

(assert (=> d!1649237 (= (++!12858 (++!12858 Nil!58671 (Cons!58671 lt!2094130 Nil!58671)) lt!2094114) lt!2094304)))

(declare-fun b!5096967 () Bool)

(declare-fun res!2169276 () Bool)

(assert (=> b!5096967 (=> (not res!2169276) (not e!3178834))))

(assert (=> b!5096967 (= res!2169276 (= (size!39303 lt!2094304) (+ (size!39303 (++!12858 Nil!58671 (Cons!58671 lt!2094130 Nil!58671))) (size!39303 lt!2094114))))))

(assert (= (and d!1649237 c!875760) b!5096965))

(assert (= (and d!1649237 (not c!875760)) b!5096966))

(assert (= (and d!1649237 res!2169277) b!5096967))

(assert (= (and b!5096967 res!2169276) b!5096968))

(declare-fun m!6154104 () Bool)

(assert (=> b!5096966 m!6154104))

(declare-fun m!6154106 () Bool)

(assert (=> d!1649237 m!6154106))

(assert (=> d!1649237 m!6153854))

(declare-fun m!6154108 () Bool)

(assert (=> d!1649237 m!6154108))

(declare-fun m!6154110 () Bool)

(assert (=> d!1649237 m!6154110))

(declare-fun m!6154112 () Bool)

(assert (=> b!5096967 m!6154112))

(assert (=> b!5096967 m!6153854))

(declare-fun m!6154114 () Bool)

(assert (=> b!5096967 m!6154114))

(declare-fun m!6154116 () Bool)

(assert (=> b!5096967 m!6154116))

(assert (=> b!5096696 d!1649237))

(declare-fun b!5096969 () Bool)

(declare-fun e!3178837 () List!58795)

(assert (=> b!5096969 (= e!3178837 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671))))

(declare-fun b!5096970 () Bool)

(assert (=> b!5096970 (= e!3178837 (Cons!58671 (h!65119 Nil!58671) (++!12858 (t!371760 Nil!58671) (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671))))))

(declare-fun b!5096972 () Bool)

(declare-fun e!3178836 () Bool)

(declare-fun lt!2094305 () List!58795)

(assert (=> b!5096972 (= e!3178836 (or (not (= (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671) Nil!58671)) (= lt!2094305 Nil!58671)))))

(declare-fun d!1649239 () Bool)

(assert (=> d!1649239 e!3178836))

(declare-fun res!2169279 () Bool)

(assert (=> d!1649239 (=> (not res!2169279) (not e!3178836))))

(assert (=> d!1649239 (= res!2169279 (= (content!10441 lt!2094305) ((_ map or) (content!10441 Nil!58671) (content!10441 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671)))))))

(assert (=> d!1649239 (= lt!2094305 e!3178837)))

(declare-fun c!875761 () Bool)

(assert (=> d!1649239 (= c!875761 ((_ is Nil!58671) Nil!58671))))

(assert (=> d!1649239 (= (++!12858 Nil!58671 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671)) lt!2094305)))

(declare-fun b!5096971 () Bool)

(declare-fun res!2169278 () Bool)

(assert (=> b!5096971 (=> (not res!2169278) (not e!3178836))))

(assert (=> b!5096971 (= res!2169278 (= (size!39303 lt!2094305) (+ (size!39303 Nil!58671) (size!39303 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671)))))))

(assert (= (and d!1649239 c!875761) b!5096969))

(assert (= (and d!1649239 (not c!875761)) b!5096970))

(assert (= (and d!1649239 res!2169279) b!5096971))

(assert (= (and b!5096971 res!2169278) b!5096972))

(declare-fun m!6154118 () Bool)

(assert (=> b!5096970 m!6154118))

(declare-fun m!6154120 () Bool)

(assert (=> d!1649239 m!6154120))

(assert (=> d!1649239 m!6154082))

(declare-fun m!6154122 () Bool)

(assert (=> d!1649239 m!6154122))

(declare-fun m!6154124 () Bool)

(assert (=> b!5096971 m!6154124))

(assert (=> b!5096971 m!6153778))

(declare-fun m!6154126 () Bool)

(assert (=> b!5096971 m!6154126))

(assert (=> b!5096696 d!1649239))

(assert (=> b!5096696 d!1649225))

(assert (=> b!5096696 d!1649215))

(declare-fun b!5096973 () Bool)

(declare-fun e!3178839 () List!58795)

(assert (=> b!5096973 (= e!3178839 (Cons!58671 lt!2094130 Nil!58671))))

(declare-fun b!5096974 () Bool)

(assert (=> b!5096974 (= e!3178839 (Cons!58671 (h!65119 Nil!58671) (++!12858 (t!371760 Nil!58671) (Cons!58671 lt!2094130 Nil!58671))))))

(declare-fun b!5096976 () Bool)

(declare-fun e!3178838 () Bool)

(declare-fun lt!2094306 () List!58795)

(assert (=> b!5096976 (= e!3178838 (or (not (= (Cons!58671 lt!2094130 Nil!58671) Nil!58671)) (= lt!2094306 Nil!58671)))))

(declare-fun d!1649241 () Bool)

(assert (=> d!1649241 e!3178838))

(declare-fun res!2169281 () Bool)

(assert (=> d!1649241 (=> (not res!2169281) (not e!3178838))))

(assert (=> d!1649241 (= res!2169281 (= (content!10441 lt!2094306) ((_ map or) (content!10441 Nil!58671) (content!10441 (Cons!58671 lt!2094130 Nil!58671)))))))

(assert (=> d!1649241 (= lt!2094306 e!3178839)))

(declare-fun c!875762 () Bool)

(assert (=> d!1649241 (= c!875762 ((_ is Nil!58671) Nil!58671))))

(assert (=> d!1649241 (= (++!12858 Nil!58671 (Cons!58671 lt!2094130 Nil!58671)) lt!2094306)))

(declare-fun b!5096975 () Bool)

(declare-fun res!2169280 () Bool)

(assert (=> b!5096975 (=> (not res!2169280) (not e!3178838))))

(assert (=> b!5096975 (= res!2169280 (= (size!39303 lt!2094306) (+ (size!39303 Nil!58671) (size!39303 (Cons!58671 lt!2094130 Nil!58671)))))))

(assert (= (and d!1649241 c!875762) b!5096973))

(assert (= (and d!1649241 (not c!875762)) b!5096974))

(assert (= (and d!1649241 res!2169281) b!5096975))

(assert (= (and b!5096975 res!2169280) b!5096976))

(declare-fun m!6154128 () Bool)

(assert (=> b!5096974 m!6154128))

(declare-fun m!6154130 () Bool)

(assert (=> d!1649241 m!6154130))

(assert (=> d!1649241 m!6154082))

(declare-fun m!6154132 () Bool)

(assert (=> d!1649241 m!6154132))

(declare-fun m!6154134 () Bool)

(assert (=> b!5096975 m!6154134))

(assert (=> b!5096975 m!6153778))

(declare-fun m!6154136 () Bool)

(assert (=> b!5096975 m!6154136))

(assert (=> b!5096696 d!1649241))

(declare-fun d!1649243 () Bool)

(assert (=> d!1649243 (= (tail!9981 input!1493) (t!371760 input!1493))))

(assert (=> b!5096696 d!1649243))

(declare-fun d!1649245 () Bool)

(declare-fun e!3178840 () Bool)

(assert (=> d!1649245 e!3178840))

(declare-fun res!2169283 () Bool)

(assert (=> d!1649245 (=> res!2169283 e!3178840)))

(declare-fun lt!2094307 () Bool)

(assert (=> d!1649245 (= res!2169283 (not lt!2094307))))

(declare-fun e!3178842 () Bool)

(assert (=> d!1649245 (= lt!2094307 e!3178842)))

(declare-fun res!2169285 () Bool)

(assert (=> d!1649245 (=> res!2169285 e!3178842)))

(assert (=> d!1649245 (= res!2169285 ((_ is Nil!58671) (++!12858 Nil!58671 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671))))))

(assert (=> d!1649245 (= (isPrefix!5413 (++!12858 Nil!58671 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671)) input!1493) lt!2094307)))

(declare-fun b!5096977 () Bool)

(declare-fun e!3178841 () Bool)

(assert (=> b!5096977 (= e!3178842 e!3178841)))

(declare-fun res!2169284 () Bool)

(assert (=> b!5096977 (=> (not res!2169284) (not e!3178841))))

(assert (=> b!5096977 (= res!2169284 (not ((_ is Nil!58671) input!1493)))))

(declare-fun b!5096978 () Bool)

(declare-fun res!2169282 () Bool)

(assert (=> b!5096978 (=> (not res!2169282) (not e!3178841))))

(assert (=> b!5096978 (= res!2169282 (= (head!10826 (++!12858 Nil!58671 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671))) (head!10826 input!1493)))))

(declare-fun b!5096980 () Bool)

(assert (=> b!5096980 (= e!3178840 (>= (size!39303 input!1493) (size!39303 (++!12858 Nil!58671 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671)))))))

(declare-fun b!5096979 () Bool)

(assert (=> b!5096979 (= e!3178841 (isPrefix!5413 (tail!9981 (++!12858 Nil!58671 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671))) (tail!9981 input!1493)))))

(assert (= (and d!1649245 (not res!2169285)) b!5096977))

(assert (= (and b!5096977 res!2169284) b!5096978))

(assert (= (and b!5096978 res!2169282) b!5096979))

(assert (= (and d!1649245 (not res!2169283)) b!5096980))

(assert (=> b!5096978 m!6153856))

(declare-fun m!6154138 () Bool)

(assert (=> b!5096978 m!6154138))

(assert (=> b!5096978 m!6153840))

(assert (=> b!5096980 m!6153780))

(assert (=> b!5096980 m!6153856))

(declare-fun m!6154140 () Bool)

(assert (=> b!5096980 m!6154140))

(assert (=> b!5096979 m!6153856))

(declare-fun m!6154142 () Bool)

(assert (=> b!5096979 m!6154142))

(assert (=> b!5096979 m!6153842))

(assert (=> b!5096979 m!6154142))

(assert (=> b!5096979 m!6153842))

(declare-fun m!6154144 () Bool)

(assert (=> b!5096979 m!6154144))

(assert (=> b!5096696 d!1649245))

(declare-fun d!1649247 () Bool)

(assert (=> d!1649247 (= (head!10826 (getSuffix!3156 input!1493 Nil!58671)) (h!65119 (getSuffix!3156 input!1493 Nil!58671)))))

(assert (=> b!5096696 d!1649247))

(declare-fun d!1649249 () Bool)

(assert (=> d!1649249 (<= (size!39303 Nil!58671) (size!39303 input!1493))))

(declare-fun lt!2094310 () Unit!149711)

(declare-fun choose!37317 (List!58795 List!58795) Unit!149711)

(assert (=> d!1649249 (= lt!2094310 (choose!37317 Nil!58671 input!1493))))

(assert (=> d!1649249 (isPrefix!5413 Nil!58671 input!1493)))

(assert (=> d!1649249 (= (lemmaIsPrefixThenSmallerEqSize!826 Nil!58671 input!1493) lt!2094310)))

(declare-fun bs!1191349 () Bool)

(assert (= bs!1191349 d!1649249))

(assert (=> bs!1191349 m!6153778))

(assert (=> bs!1191349 m!6153780))

(declare-fun m!6154146 () Bool)

(assert (=> bs!1191349 m!6154146))

(assert (=> bs!1191349 m!6154064))

(assert (=> b!5096696 d!1649249))

(declare-fun d!1649251 () Bool)

(assert (=> d!1649251 (isPrefix!5413 (++!12858 Nil!58671 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 Nil!58671)) Nil!58671)) input!1493)))

(declare-fun lt!2094313 () Unit!149711)

(declare-fun choose!37318 (List!58795 List!58795) Unit!149711)

(assert (=> d!1649251 (= lt!2094313 (choose!37318 Nil!58671 input!1493))))

(assert (=> d!1649251 (isPrefix!5413 Nil!58671 input!1493)))

(assert (=> d!1649251 (= (lemmaAddHeadSuffixToPrefixStillPrefix!900 Nil!58671 input!1493) lt!2094313)))

(declare-fun bs!1191350 () Bool)

(assert (= bs!1191350 d!1649251))

(assert (=> bs!1191350 m!6153856))

(assert (=> bs!1191350 m!6153860))

(assert (=> bs!1191350 m!6153850))

(assert (=> bs!1191350 m!6154064))

(assert (=> bs!1191350 m!6153850))

(assert (=> bs!1191350 m!6153852))

(declare-fun m!6154148 () Bool)

(assert (=> bs!1191350 m!6154148))

(assert (=> bs!1191350 m!6153856))

(assert (=> b!5096696 d!1649251))

(declare-fun b!5096981 () Bool)

(declare-fun e!3178844 () List!58795)

(assert (=> b!5096981 (= e!3178844 (Cons!58671 (head!10826 input!1493) Nil!58671))))

(declare-fun b!5096982 () Bool)

(assert (=> b!5096982 (= e!3178844 (Cons!58671 (h!65119 Nil!58671) (++!12858 (t!371760 Nil!58671) (Cons!58671 (head!10826 input!1493) Nil!58671))))))

(declare-fun b!5096984 () Bool)

(declare-fun e!3178843 () Bool)

(declare-fun lt!2094314 () List!58795)

(assert (=> b!5096984 (= e!3178843 (or (not (= (Cons!58671 (head!10826 input!1493) Nil!58671) Nil!58671)) (= lt!2094314 Nil!58671)))))

(declare-fun d!1649253 () Bool)

(assert (=> d!1649253 e!3178843))

(declare-fun res!2169287 () Bool)

(assert (=> d!1649253 (=> (not res!2169287) (not e!3178843))))

(assert (=> d!1649253 (= res!2169287 (= (content!10441 lt!2094314) ((_ map or) (content!10441 Nil!58671) (content!10441 (Cons!58671 (head!10826 input!1493) Nil!58671)))))))

(assert (=> d!1649253 (= lt!2094314 e!3178844)))

(declare-fun c!875763 () Bool)

(assert (=> d!1649253 (= c!875763 ((_ is Nil!58671) Nil!58671))))

(assert (=> d!1649253 (= (++!12858 Nil!58671 (Cons!58671 (head!10826 input!1493) Nil!58671)) lt!2094314)))

(declare-fun b!5096983 () Bool)

(declare-fun res!2169286 () Bool)

(assert (=> b!5096983 (=> (not res!2169286) (not e!3178843))))

(assert (=> b!5096983 (= res!2169286 (= (size!39303 lt!2094314) (+ (size!39303 Nil!58671) (size!39303 (Cons!58671 (head!10826 input!1493) Nil!58671)))))))

(assert (= (and d!1649253 c!875763) b!5096981))

(assert (= (and d!1649253 (not c!875763)) b!5096982))

(assert (= (and d!1649253 res!2169287) b!5096983))

(assert (= (and b!5096983 res!2169286) b!5096984))

(declare-fun m!6154150 () Bool)

(assert (=> b!5096982 m!6154150))

(declare-fun m!6154152 () Bool)

(assert (=> d!1649253 m!6154152))

(assert (=> d!1649253 m!6154082))

(declare-fun m!6154154 () Bool)

(assert (=> d!1649253 m!6154154))

(declare-fun m!6154156 () Bool)

(assert (=> b!5096983 m!6154156))

(assert (=> b!5096983 m!6153778))

(declare-fun m!6154158 () Bool)

(assert (=> b!5096983 m!6154158))

(assert (=> b!5096696 d!1649253))

(declare-fun d!1649255 () Bool)

(assert (=> d!1649255 (= (++!12858 (++!12858 Nil!58671 (Cons!58671 lt!2094130 Nil!58671)) lt!2094114) input!1493)))

(declare-fun lt!2094317 () Unit!149711)

(declare-fun choose!37319 (List!58795 C!28264 List!58795 List!58795) Unit!149711)

(assert (=> d!1649255 (= lt!2094317 (choose!37319 Nil!58671 lt!2094130 lt!2094114 input!1493))))

(assert (=> d!1649255 (= (++!12858 Nil!58671 (Cons!58671 lt!2094130 lt!2094114)) input!1493)))

(assert (=> d!1649255 (= (lemmaMoveElementToOtherListKeepsConcatEq!1511 Nil!58671 lt!2094130 lt!2094114 input!1493) lt!2094317)))

(declare-fun bs!1191351 () Bool)

(assert (= bs!1191351 d!1649255))

(assert (=> bs!1191351 m!6153854))

(assert (=> bs!1191351 m!6153854))

(assert (=> bs!1191351 m!6153858))

(declare-fun m!6154160 () Bool)

(assert (=> bs!1191351 m!6154160))

(declare-fun m!6154162 () Bool)

(assert (=> bs!1191351 m!6154162))

(assert (=> b!5096696 d!1649255))

(assert (=> b!5096696 d!1649195))

(assert (=> b!5096696 d!1649199))

(declare-fun d!1649257 () Bool)

(declare-fun list!19148 (Conc!15700) List!58795)

(assert (=> d!1649257 (= (list!19147 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (list!19148 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))))))

(declare-fun bs!1191352 () Bool)

(assert (= bs!1191352 d!1649257))

(declare-fun m!6154164 () Bool)

(assert (=> bs!1191352 m!6154164))

(assert (=> b!5096657 d!1649257))

(assert (=> bm!354834 d!1649243))

(declare-fun d!1649259 () Bool)

(assert (not d!1649259))

(assert (=> b!5096812 d!1649259))

(declare-fun d!1649261 () Bool)

(declare-fun c!875766 () Bool)

(assert (=> d!1649261 (= c!875766 ((_ is Node!15700) (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))))))

(declare-fun e!3178849 () Bool)

(assert (=> d!1649261 (= (inv!78173 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))) e!3178849)))

(declare-fun b!5096991 () Bool)

(declare-fun inv!78175 (Conc!15700) Bool)

(assert (=> b!5096991 (= e!3178849 (inv!78175 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))))))

(declare-fun b!5096992 () Bool)

(declare-fun e!3178850 () Bool)

(assert (=> b!5096992 (= e!3178849 e!3178850)))

(declare-fun res!2169290 () Bool)

(assert (=> b!5096992 (= res!2169290 (not ((_ is Leaf!26055) (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))))))))

(assert (=> b!5096992 (=> res!2169290 e!3178850)))

(declare-fun b!5096993 () Bool)

(declare-fun inv!78176 (Conc!15700) Bool)

(assert (=> b!5096993 (= e!3178850 (inv!78176 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))))))

(assert (= (and d!1649261 c!875766) b!5096991))

(assert (= (and d!1649261 (not c!875766)) b!5096992))

(assert (= (and b!5096992 (not res!2169290)) b!5096993))

(declare-fun m!6154166 () Bool)

(assert (=> b!5096991 m!6154166))

(declare-fun m!6154168 () Bool)

(assert (=> b!5096993 m!6154168))

(assert (=> b!5096663 d!1649261))

(declare-fun b!5096994 () Bool)

(declare-fun e!3178855 () Bool)

(declare-fun e!3178852 () Bool)

(assert (=> b!5096994 (= e!3178855 e!3178852)))

(declare-fun res!2169295 () Bool)

(assert (=> b!5096994 (=> res!2169295 e!3178852)))

(declare-fun call!354879 () Bool)

(assert (=> b!5096994 (= res!2169295 call!354879)))

(declare-fun b!5096995 () Bool)

(declare-fun e!3178851 () Bool)

(declare-fun lt!2094318 () Bool)

(assert (=> b!5096995 (= e!3178851 (not lt!2094318))))

(declare-fun bm!354874 () Bool)

(assert (=> bm!354874 (= call!354879 (isEmpty!31756 (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))))))

(declare-fun b!5096996 () Bool)

(assert (=> b!5096996 (= e!3178852 (not (= (head!10826 (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))) (c!875678 (regex!8528 rule!158)))))))

(declare-fun b!5096997 () Bool)

(declare-fun e!3178854 () Bool)

(assert (=> b!5096997 (= e!3178854 (= lt!2094318 call!354879))))

(declare-fun b!5096998 () Bool)

(declare-fun res!2169292 () Bool)

(declare-fun e!3178857 () Bool)

(assert (=> b!5096998 (=> (not res!2169292) (not e!3178857))))

(assert (=> b!5096998 (= res!2169292 (not call!354879))))

(declare-fun b!5096999 () Bool)

(declare-fun res!2169294 () Bool)

(declare-fun e!3178853 () Bool)

(assert (=> b!5096999 (=> res!2169294 e!3178853)))

(assert (=> b!5096999 (= res!2169294 e!3178857)))

(declare-fun res!2169296 () Bool)

(assert (=> b!5096999 (=> (not res!2169296) (not e!3178857))))

(assert (=> b!5096999 (= res!2169296 lt!2094318)))

(declare-fun b!5097000 () Bool)

(assert (=> b!5097000 (= e!3178854 e!3178851)))

(declare-fun c!875769 () Bool)

(assert (=> b!5097000 (= c!875769 ((_ is EmptyLang!14003) (regex!8528 rule!158)))))

(declare-fun d!1649263 () Bool)

(assert (=> d!1649263 e!3178854))

(declare-fun c!875767 () Bool)

(assert (=> d!1649263 (= c!875767 ((_ is EmptyExpr!14003) (regex!8528 rule!158)))))

(declare-fun e!3178856 () Bool)

(assert (=> d!1649263 (= lt!2094318 e!3178856)))

(declare-fun c!875768 () Bool)

(assert (=> d!1649263 (= c!875768 (isEmpty!31756 (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))))))

(assert (=> d!1649263 (validRegex!6129 (regex!8528 rule!158))))

(assert (=> d!1649263 (= (matchR!6800 (regex!8528 rule!158) (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))) lt!2094318)))

(declare-fun b!5097001 () Bool)

(declare-fun res!2169298 () Bool)

(assert (=> b!5097001 (=> res!2169298 e!3178853)))

(assert (=> b!5097001 (= res!2169298 (not ((_ is ElementMatch!14003) (regex!8528 rule!158))))))

(assert (=> b!5097001 (= e!3178851 e!3178853)))

(declare-fun b!5097002 () Bool)

(declare-fun res!2169293 () Bool)

(assert (=> b!5097002 (=> (not res!2169293) (not e!3178857))))

(assert (=> b!5097002 (= res!2169293 (isEmpty!31756 (tail!9981 (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493))))))))

(declare-fun b!5097003 () Bool)

(declare-fun res!2169297 () Bool)

(assert (=> b!5097003 (=> res!2169297 e!3178852)))

(assert (=> b!5097003 (= res!2169297 (not (isEmpty!31756 (tail!9981 (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))))))))

(declare-fun b!5097004 () Bool)

(assert (=> b!5097004 (= e!3178857 (= (head!10826 (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))) (c!875678 (regex!8528 rule!158))))))

(declare-fun b!5097005 () Bool)

(assert (=> b!5097005 (= e!3178853 e!3178855)))

(declare-fun res!2169291 () Bool)

(assert (=> b!5097005 (=> (not res!2169291) (not e!3178855))))

(assert (=> b!5097005 (= res!2169291 (not lt!2094318))))

(declare-fun b!5097006 () Bool)

(assert (=> b!5097006 (= e!3178856 (nullable!4704 (regex!8528 rule!158)))))

(declare-fun b!5097007 () Bool)

(assert (=> b!5097007 (= e!3178856 (matchR!6800 (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493))))) (tail!9981 (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493))))))))

(assert (= (and d!1649263 c!875768) b!5097006))

(assert (= (and d!1649263 (not c!875768)) b!5097007))

(assert (= (and d!1649263 c!875767) b!5096997))

(assert (= (and d!1649263 (not c!875767)) b!5097000))

(assert (= (and b!5097000 c!875769) b!5096995))

(assert (= (and b!5097000 (not c!875769)) b!5097001))

(assert (= (and b!5097001 (not res!2169298)) b!5096999))

(assert (= (and b!5096999 res!2169296) b!5096998))

(assert (= (and b!5096998 res!2169292) b!5097002))

(assert (= (and b!5097002 res!2169293) b!5097004))

(assert (= (and b!5096999 (not res!2169294)) b!5097005))

(assert (= (and b!5097005 res!2169291) b!5096994))

(assert (= (and b!5096994 (not res!2169295)) b!5097003))

(assert (= (and b!5097003 (not res!2169297)) b!5096996))

(assert (= (or b!5096997 b!5096994 b!5096998) bm!354874))

(declare-fun m!6154170 () Bool)

(assert (=> b!5097004 m!6154170))

(declare-fun m!6154172 () Bool)

(assert (=> b!5097002 m!6154172))

(assert (=> b!5097002 m!6154172))

(declare-fun m!6154174 () Bool)

(assert (=> b!5097002 m!6154174))

(assert (=> b!5097007 m!6154170))

(assert (=> b!5097007 m!6154170))

(declare-fun m!6154176 () Bool)

(assert (=> b!5097007 m!6154176))

(assert (=> b!5097007 m!6154172))

(assert (=> b!5097007 m!6154176))

(assert (=> b!5097007 m!6154172))

(declare-fun m!6154178 () Bool)

(assert (=> b!5097007 m!6154178))

(assert (=> d!1649263 m!6153992))

(assert (=> d!1649263 m!6153818))

(assert (=> b!5097003 m!6154172))

(assert (=> b!5097003 m!6154172))

(assert (=> b!5097003 m!6154174))

(assert (=> b!5096996 m!6154170))

(assert (=> bm!354874 m!6153992))

(assert (=> b!5097006 m!6153820))

(assert (=> b!5096785 d!1649263))

(assert (=> b!5096785 d!1649159))

(assert (=> b!5096785 d!1649199))

(assert (=> b!5096785 d!1649195))

(declare-fun d!1649265 () Bool)

(assert (=> d!1649265 (= (isEmpty!31756 (tail!9981 (_1!34999 lt!2094047))) ((_ is Nil!58671) (tail!9981 (_1!34999 lt!2094047))))))

(assert (=> b!5096647 d!1649265))

(declare-fun d!1649267 () Bool)

(assert (=> d!1649267 (= (tail!9981 (_1!34999 lt!2094047)) (t!371760 (_1!34999 lt!2094047)))))

(assert (=> b!5096647 d!1649267))

(declare-fun bs!1191353 () Bool)

(declare-fun d!1649269 () Bool)

(assert (= bs!1191353 (and d!1649269 d!1649161)))

(declare-fun lambda!249907 () Int)

(assert (=> bs!1191353 (= lambda!249907 lambda!249904)))

(assert (=> d!1649269 true))

(assert (=> d!1649269 (< (dynLambda!23570 order!26757 (toChars!11410 (transformation!8528 rule!158))) (dynLambda!23569 order!26755 lambda!249907))))

(assert (=> d!1649269 true))

(assert (=> d!1649269 (< (dynLambda!23568 order!26753 (toValue!11551 (transformation!8528 rule!158))) (dynLambda!23569 order!26755 lambda!249907))))

(declare-fun Forall!1833 (Int) Bool)

(assert (=> d!1649269 (= (semiInverseModEq!3798 (toChars!11410 (transformation!8528 rule!158)) (toValue!11551 (transformation!8528 rule!158))) (Forall!1833 lambda!249907))))

(declare-fun bs!1191354 () Bool)

(assert (= bs!1191354 d!1649269))

(declare-fun m!6154180 () Bool)

(assert (=> bs!1191354 m!6154180))

(assert (=> d!1649213 d!1649269))

(declare-fun d!1649271 () Bool)

(assert (=> d!1649271 (= (list!19147 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))) (list!19148 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))))))

(declare-fun bs!1191355 () Bool)

(assert (= bs!1191355 d!1649271))

(declare-fun m!6154182 () Bool)

(assert (=> bs!1191355 m!6154182))

(assert (=> d!1649161 d!1649271))

(declare-fun d!1649273 () Bool)

(assert (=> d!1649273 (= (list!19147 lt!2094044) (list!19148 (c!875679 lt!2094044)))))

(declare-fun bs!1191356 () Bool)

(assert (= bs!1191356 d!1649273))

(declare-fun m!6154184 () Bool)

(assert (=> bs!1191356 m!6154184))

(assert (=> d!1649161 d!1649273))

(declare-fun d!1649275 () Bool)

(declare-fun dynLambda!23572 (Int BalanceConc!30518) Bool)

(assert (=> d!1649275 (dynLambda!23572 lambda!249904 lt!2094044)))

(declare-fun lt!2094321 () Unit!149711)

(declare-fun choose!37320 (Int BalanceConc!30518) Unit!149711)

(assert (=> d!1649275 (= lt!2094321 (choose!37320 lambda!249904 lt!2094044))))

(assert (=> d!1649275 (Forall!1833 lambda!249904)))

(assert (=> d!1649275 (= (ForallOf!1291 lambda!249904 lt!2094044) lt!2094321)))

(declare-fun b_lambda!198785 () Bool)

(assert (=> (not b_lambda!198785) (not d!1649275)))

(declare-fun bs!1191357 () Bool)

(assert (= bs!1191357 d!1649275))

(declare-fun m!6154186 () Bool)

(assert (=> bs!1191357 m!6154186))

(declare-fun m!6154188 () Bool)

(assert (=> bs!1191357 m!6154188))

(declare-fun m!6154190 () Bool)

(assert (=> bs!1191357 m!6154190))

(assert (=> d!1649161 d!1649275))

(declare-fun d!1649277 () Bool)

(assert (=> d!1649277 (= (isEmpty!31756 (originalCharacters!8769 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))) ((_ is Nil!58671) (originalCharacters!8769 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))))

(assert (=> d!1649157 d!1649277))

(declare-fun d!1649279 () Bool)

(declare-fun e!3178860 () Bool)

(assert (=> d!1649279 e!3178860))

(declare-fun res!2169301 () Bool)

(assert (=> d!1649279 (=> (not res!2169301) (not e!3178860))))

(declare-fun lt!2094324 () BalanceConc!30518)

(assert (=> d!1649279 (= res!2169301 (= (list!19147 lt!2094324) (_1!34999 lt!2094046)))))

(declare-fun fromList!953 (List!58795) Conc!15700)

(assert (=> d!1649279 (= lt!2094324 (BalanceConc!30519 (fromList!953 (_1!34999 lt!2094046))))))

(assert (=> d!1649279 (= (fromListB!2766 (_1!34999 lt!2094046)) lt!2094324)))

(declare-fun b!5097014 () Bool)

(declare-fun isBalanced!4465 (Conc!15700) Bool)

(assert (=> b!5097014 (= e!3178860 (isBalanced!4465 (fromList!953 (_1!34999 lt!2094046))))))

(assert (= (and d!1649279 res!2169301) b!5097014))

(declare-fun m!6154192 () Bool)

(assert (=> d!1649279 m!6154192))

(declare-fun m!6154194 () Bool)

(assert (=> d!1649279 m!6154194))

(assert (=> b!5097014 m!6154194))

(assert (=> b!5097014 m!6154194))

(declare-fun m!6154196 () Bool)

(assert (=> b!5097014 m!6154196))

(assert (=> d!1649171 d!1649279))

(declare-fun d!1649281 () Bool)

(assert (=> d!1649281 (= (isEmpty!31756 (_1!34999 lt!2094122)) ((_ is Nil!58671) (_1!34999 lt!2094122)))))

(assert (=> b!5096700 d!1649281))

(assert (=> b!5096648 d!1649265))

(assert (=> b!5096648 d!1649267))

(assert (=> b!5096649 d!1649233))

(declare-fun d!1649283 () Bool)

(assert (=> d!1649283 (= (inv!78174 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (isBalanced!4465 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))))))

(declare-fun bs!1191358 () Bool)

(assert (= bs!1191358 d!1649283))

(declare-fun m!6154198 () Bool)

(assert (=> bs!1191358 m!6154198))

(assert (=> tb!261837 d!1649283))

(declare-fun d!1649285 () Bool)

(assert (=> d!1649285 (= (isEmpty!31756 (_1!34999 lt!2094126)) ((_ is Nil!58671) (_1!34999 lt!2094126)))))

(assert (=> b!5096701 d!1649285))

(declare-fun d!1649287 () Bool)

(declare-fun lt!2094333 () tuple2!63392)

(assert (=> d!1649287 (= (++!12858 (_1!34999 lt!2094333) (_2!34999 lt!2094333)) input!1493)))

(declare-fun findLongestMatchInnerZipper!83 ((InoxSet Context!6772) List!58795 Int List!58795 List!58795 Int) tuple2!63392)

(assert (=> d!1649287 (= lt!2094333 (findLongestMatchInnerZipper!83 lt!2094264 Nil!58671 0 input!1493 input!1493 (sizeTr!414 input!1493 0)))))

(declare-fun lt!2094334 () Unit!149711)

(declare-fun lt!2094336 () Unit!149711)

(assert (=> d!1649287 (= lt!2094334 lt!2094336)))

(declare-fun lt!2094335 () Int)

(assert (=> d!1649287 (= (sizeTr!414 input!1493 lt!2094335) (+ (size!39303 input!1493) lt!2094335))))

(assert (=> d!1649287 (= lt!2094336 (lemmaSizeTrEqualsSize!413 input!1493 lt!2094335))))

(assert (=> d!1649287 (= lt!2094335 0)))

(assert (=> d!1649287 (= (findLongestMatchZipper!28 lt!2094264 input!1493) lt!2094333)))

(declare-fun bs!1191359 () Bool)

(assert (= bs!1191359 d!1649287))

(declare-fun m!6154200 () Bool)

(assert (=> bs!1191359 m!6154200))

(assert (=> bs!1191359 m!6153780))

(declare-fun m!6154202 () Bool)

(assert (=> bs!1191359 m!6154202))

(declare-fun m!6154204 () Bool)

(assert (=> bs!1191359 m!6154204))

(assert (=> bs!1191359 m!6154202))

(declare-fun m!6154206 () Bool)

(assert (=> bs!1191359 m!6154206))

(declare-fun m!6154208 () Bool)

(assert (=> bs!1191359 m!6154208))

(assert (=> d!1649203 d!1649287))

(declare-fun d!1649289 () Bool)

(declare-fun e!3178870 () Bool)

(assert (=> d!1649289 e!3178870))

(declare-fun res!2169313 () Bool)

(assert (=> d!1649289 (=> (not res!2169313) (not e!3178870))))

(assert (=> d!1649289 (= res!2169313 (validRegex!6129 (regex!8528 rule!158)))))

(assert (=> d!1649289 (= (focus!363 (regex!8528 rule!158)) (store ((as const (Array Context!6772 Bool)) false) (Context!6773 (Cons!58673 (regex!8528 rule!158) Nil!58673)) true))))

(declare-fun b!5097031 () Bool)

(declare-datatypes ((List!58799 0))(
  ( (Nil!58675) (Cons!58675 (h!65123 Context!6772) (t!371776 List!58799)) )
))
(declare-fun unfocusZipper!347 (List!58799) Regex!14003)

(declare-fun toList!8139 ((InoxSet Context!6772)) List!58799)

(assert (=> b!5097031 (= e!3178870 (= (unfocusZipper!347 (toList!8139 (store ((as const (Array Context!6772 Bool)) false) (Context!6773 (Cons!58673 (regex!8528 rule!158) Nil!58673)) true))) (regex!8528 rule!158)))))

(assert (= (and d!1649289 res!2169313) b!5097031))

(assert (=> d!1649289 m!6153818))

(declare-fun m!6154224 () Bool)

(assert (=> d!1649289 m!6154224))

(assert (=> b!5097031 m!6154224))

(assert (=> b!5097031 m!6154224))

(declare-fun m!6154226 () Bool)

(assert (=> b!5097031 m!6154226))

(assert (=> b!5097031 m!6154226))

(declare-fun m!6154228 () Bool)

(assert (=> b!5097031 m!6154228))

(assert (=> d!1649203 d!1649289))

(assert (=> d!1649203 d!1649221))

(declare-fun d!1649295 () Bool)

(assert (=> d!1649295 (= (sizeTr!414 input!1493 lt!2094261) (+ (size!39303 input!1493) lt!2094261))))

(declare-fun lt!2094340 () Unit!149711)

(declare-fun choose!37321 (List!58795 Int) Unit!149711)

(assert (=> d!1649295 (= lt!2094340 (choose!37321 input!1493 lt!2094261))))

(assert (=> d!1649295 (= (lemmaSizeTrEqualsSize!413 input!1493 lt!2094261) lt!2094340)))

(declare-fun bs!1191360 () Bool)

(assert (= bs!1191360 d!1649295))

(assert (=> bs!1191360 m!6154032))

(assert (=> bs!1191360 m!6153780))

(declare-fun m!6154230 () Bool)

(assert (=> bs!1191360 m!6154230))

(assert (=> d!1649203 d!1649295))

(declare-fun d!1649297 () Bool)

(assert (=> d!1649297 (= (findLongestMatchZipper!28 lt!2094264 input!1493) (findLongestMatch!1836 (regex!8528 rule!158) input!1493))))

(declare-fun lt!2094374 () Unit!149711)

(declare-fun choose!37322 (Regex!14003 (InoxSet Context!6772) List!58795) Unit!149711)

(assert (=> d!1649297 (= lt!2094374 (choose!37322 (regex!8528 rule!158) lt!2094264 input!1493))))

(assert (=> d!1649297 (validRegex!6129 (regex!8528 rule!158))))

(assert (=> d!1649297 (= (longestMatchSameAsRegex!24 (regex!8528 rule!158) lt!2094264 input!1493) lt!2094374)))

(declare-fun bs!1191361 () Bool)

(assert (= bs!1191361 d!1649297))

(assert (=> bs!1191361 m!6154034))

(assert (=> bs!1191361 m!6154028))

(declare-fun m!6154240 () Bool)

(assert (=> bs!1191361 m!6154240))

(assert (=> bs!1191361 m!6153818))

(assert (=> d!1649203 d!1649297))

(declare-fun d!1649305 () Bool)

(declare-fun c!875797 () Bool)

(assert (=> d!1649305 (= c!875797 ((_ is Nil!58671) input!1493))))

(declare-fun e!3178896 () Int)

(assert (=> d!1649305 (= (sizeTr!414 input!1493 lt!2094261) e!3178896)))

(declare-fun b!5097080 () Bool)

(assert (=> b!5097080 (= e!3178896 lt!2094261)))

(declare-fun b!5097081 () Bool)

(assert (=> b!5097081 (= e!3178896 (sizeTr!414 (t!371760 input!1493) (+ lt!2094261 1)))))

(assert (= (and d!1649305 c!875797) b!5097080))

(assert (= (and d!1649305 (not c!875797)) b!5097081))

(declare-fun m!6154282 () Bool)

(assert (=> b!5097081 m!6154282))

(assert (=> d!1649203 d!1649305))

(declare-fun d!1649307 () Bool)

(declare-fun lt!2094392 () tuple2!63392)

(assert (=> d!1649307 (= (++!12858 (_1!34999 lt!2094392) (_2!34999 lt!2094392)) input!1493)))

(assert (=> d!1649307 (= lt!2094392 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 0 input!1493 input!1493 (sizeTr!414 input!1493 0)))))

(declare-fun lt!2094395 () Unit!149711)

(declare-fun lt!2094397 () Unit!149711)

(assert (=> d!1649307 (= lt!2094395 lt!2094397)))

(declare-fun lt!2094396 () List!58795)

(declare-fun lt!2094398 () Int)

(assert (=> d!1649307 (= (sizeTr!414 lt!2094396 lt!2094398) (+ (size!39303 lt!2094396) lt!2094398))))

(assert (=> d!1649307 (= lt!2094397 (lemmaSizeTrEqualsSize!413 lt!2094396 lt!2094398))))

(assert (=> d!1649307 (= lt!2094398 0)))

(assert (=> d!1649307 (= lt!2094396 Nil!58671)))

(declare-fun lt!2094394 () Unit!149711)

(declare-fun lt!2094391 () Unit!149711)

(assert (=> d!1649307 (= lt!2094394 lt!2094391)))

(declare-fun lt!2094393 () Int)

(assert (=> d!1649307 (= (sizeTr!414 input!1493 lt!2094393) (+ (size!39303 input!1493) lt!2094393))))

(assert (=> d!1649307 (= lt!2094391 (lemmaSizeTrEqualsSize!413 input!1493 lt!2094393))))

(assert (=> d!1649307 (= lt!2094393 0)))

(assert (=> d!1649307 (validRegex!6129 (regex!8528 rule!158))))

(assert (=> d!1649307 (= (findLongestMatch!1836 (regex!8528 rule!158) input!1493) lt!2094392)))

(declare-fun bs!1191363 () Bool)

(assert (= bs!1191363 d!1649307))

(declare-fun m!6154304 () Bool)

(assert (=> bs!1191363 m!6154304))

(declare-fun m!6154306 () Bool)

(assert (=> bs!1191363 m!6154306))

(declare-fun m!6154308 () Bool)

(assert (=> bs!1191363 m!6154308))

(declare-fun m!6154310 () Bool)

(assert (=> bs!1191363 m!6154310))

(declare-fun m!6154312 () Bool)

(assert (=> bs!1191363 m!6154312))

(assert (=> bs!1191363 m!6154202))

(declare-fun m!6154314 () Bool)

(assert (=> bs!1191363 m!6154314))

(assert (=> bs!1191363 m!6154202))

(declare-fun m!6154316 () Bool)

(assert (=> bs!1191363 m!6154316))

(assert (=> bs!1191363 m!6153780))

(assert (=> bs!1191363 m!6153818))

(assert (=> d!1649203 d!1649307))

(assert (=> d!1649203 d!1649195))

(declare-fun d!1649317 () Bool)

(declare-fun nullableFct!1274 (Regex!14003) Bool)

(assert (=> d!1649317 (= (nullable!4704 (regex!8528 rule!158)) (nullableFct!1274 (regex!8528 rule!158)))))

(declare-fun bs!1191364 () Bool)

(assert (= bs!1191364 d!1649317))

(declare-fun m!6154318 () Bool)

(assert (=> bs!1191364 m!6154318))

(assert (=> b!5096651 d!1649317))

(assert (=> d!1649147 d!1649167))

(assert (=> d!1649147 d!1649221))

(declare-fun b!5097105 () Bool)

(declare-fun e!3178914 () Unit!149711)

(declare-fun Unit!149724 () Unit!149711)

(assert (=> b!5097105 (= e!3178914 Unit!149724)))

(declare-fun b!5097106 () Bool)

(declare-fun e!3178916 () tuple2!63392)

(declare-fun lt!2094411 () tuple2!63392)

(assert (=> b!5097106 (= e!3178916 lt!2094411)))

(declare-fun bm!354897 () Bool)

(declare-fun call!354906 () Bool)

(assert (=> bm!354897 (= call!354906 (nullable!4704 call!354838))))

(declare-fun bm!354898 () Bool)

(declare-fun call!354908 () Bool)

(assert (=> bm!354898 (= call!354908 (isPrefix!5413 input!1493 input!1493))))

(declare-fun bm!354899 () Bool)

(declare-fun call!354901 () C!28264)

(assert (=> bm!354899 (= call!354901 (head!10826 call!354836))))

(declare-fun b!5097107 () Bool)

(assert (=> b!5097107 (= e!3178916 (tuple2!63393 lt!2094123 call!354836))))

(declare-fun b!5097108 () Bool)

(declare-fun Unit!149725 () Unit!149711)

(assert (=> b!5097108 (= e!3178914 Unit!149725)))

(declare-fun lt!2094399 () Unit!149711)

(declare-fun call!354905 () Unit!149711)

(assert (=> b!5097108 (= lt!2094399 call!354905)))

(assert (=> b!5097108 call!354908))

(declare-fun lt!2094410 () Unit!149711)

(assert (=> b!5097108 (= lt!2094410 lt!2094399)))

(declare-fun lt!2094420 () Unit!149711)

(declare-fun call!354907 () Unit!149711)

(assert (=> b!5097108 (= lt!2094420 call!354907)))

(assert (=> b!5097108 (= input!1493 lt!2094123)))

(declare-fun lt!2094425 () Unit!149711)

(assert (=> b!5097108 (= lt!2094425 lt!2094420)))

(assert (=> b!5097108 false))

(declare-fun b!5097109 () Bool)

(declare-fun c!875807 () Bool)

(assert (=> b!5097109 (= c!875807 call!354906)))

(declare-fun lt!2094413 () Unit!149711)

(declare-fun lt!2094424 () Unit!149711)

(assert (=> b!5097109 (= lt!2094413 lt!2094424)))

(declare-fun lt!2094403 () List!58795)

(declare-fun lt!2094419 () C!28264)

(assert (=> b!5097109 (= (++!12858 (++!12858 lt!2094123 (Cons!58671 lt!2094419 Nil!58671)) lt!2094403) input!1493)))

(assert (=> b!5097109 (= lt!2094424 (lemmaMoveElementToOtherListKeepsConcatEq!1511 lt!2094123 lt!2094419 lt!2094403 input!1493))))

(assert (=> b!5097109 (= lt!2094403 (tail!9981 call!354836))))

(assert (=> b!5097109 (= lt!2094419 (head!10826 call!354836))))

(declare-fun lt!2094408 () Unit!149711)

(declare-fun lt!2094423 () Unit!149711)

(assert (=> b!5097109 (= lt!2094408 lt!2094423)))

(assert (=> b!5097109 (isPrefix!5413 (++!12858 lt!2094123 (Cons!58671 (head!10826 (getSuffix!3156 input!1493 lt!2094123)) Nil!58671)) input!1493)))

(assert (=> b!5097109 (= lt!2094423 (lemmaAddHeadSuffixToPrefixStillPrefix!900 lt!2094123 input!1493))))

(declare-fun lt!2094418 () Unit!149711)

(declare-fun lt!2094426 () Unit!149711)

(assert (=> b!5097109 (= lt!2094418 lt!2094426)))

(assert (=> b!5097109 (= lt!2094426 (lemmaAddHeadSuffixToPrefixStillPrefix!900 lt!2094123 input!1493))))

(declare-fun lt!2094412 () List!58795)

(assert (=> b!5097109 (= lt!2094412 (++!12858 lt!2094123 (Cons!58671 (head!10826 call!354836) Nil!58671)))))

(declare-fun lt!2094417 () Unit!149711)

(assert (=> b!5097109 (= lt!2094417 e!3178914)))

(declare-fun c!875810 () Bool)

(assert (=> b!5097109 (= c!875810 (= (size!39303 lt!2094123) (size!39303 input!1493)))))

(declare-fun lt!2094422 () Unit!149711)

(declare-fun lt!2094404 () Unit!149711)

(assert (=> b!5097109 (= lt!2094422 lt!2094404)))

(assert (=> b!5097109 (<= (size!39303 lt!2094123) (size!39303 input!1493))))

(assert (=> b!5097109 (= lt!2094404 (lemmaIsPrefixThenSmallerEqSize!826 lt!2094123 input!1493))))

(declare-fun e!3178912 () tuple2!63392)

(declare-fun e!3178913 () tuple2!63392)

(assert (=> b!5097109 (= e!3178912 e!3178913)))

(declare-fun bm!354900 () Bool)

(declare-fun call!354902 () List!58795)

(assert (=> bm!354900 (= call!354902 (tail!9981 call!354836))))

(declare-fun b!5097110 () Bool)

(declare-fun e!3178917 () tuple2!63392)

(assert (=> b!5097110 (= e!3178917 (tuple2!63393 lt!2094123 Nil!58671))))

(declare-fun b!5097111 () Bool)

(declare-fun e!3178915 () tuple2!63392)

(assert (=> b!5097111 (= e!3178915 e!3178912)))

(declare-fun c!875809 () Bool)

(assert (=> b!5097111 (= c!875809 (= (+ (size!39303 Nil!58671) 1) (size!39303 input!1493)))))

(declare-fun b!5097112 () Bool)

(declare-fun call!354903 () tuple2!63392)

(assert (=> b!5097112 (= e!3178913 call!354903)))

(declare-fun b!5097113 () Bool)

(assert (=> b!5097113 (= e!3178913 e!3178916)))

(assert (=> b!5097113 (= lt!2094411 call!354903)))

(declare-fun c!875806 () Bool)

(assert (=> b!5097113 (= c!875806 (isEmpty!31756 (_1!34999 lt!2094411)))))

(declare-fun b!5097114 () Bool)

(declare-fun e!3178911 () Bool)

(declare-fun e!3178918 () Bool)

(assert (=> b!5097114 (= e!3178911 e!3178918)))

(declare-fun res!2169323 () Bool)

(assert (=> b!5097114 (=> res!2169323 e!3178918)))

(declare-fun lt!2094415 () tuple2!63392)

(assert (=> b!5097114 (= res!2169323 (isEmpty!31756 (_1!34999 lt!2094415)))))

(declare-fun bm!354901 () Bool)

(declare-fun call!354904 () Regex!14003)

(assert (=> bm!354901 (= call!354903 (findLongestMatchInner!2024 call!354904 lt!2094412 (+ (size!39303 Nil!58671) 1 1) call!354902 input!1493 (size!39303 input!1493)))))

(declare-fun bm!354896 () Bool)

(assert (=> bm!354896 (= call!354907 (lemmaIsPrefixSameLengthThenSameList!1291 input!1493 lt!2094123 input!1493))))

(declare-fun d!1649319 () Bool)

(assert (=> d!1649319 e!3178911))

(declare-fun res!2169324 () Bool)

(assert (=> d!1649319 (=> (not res!2169324) (not e!3178911))))

(assert (=> d!1649319 (= res!2169324 (= (++!12858 (_1!34999 lt!2094415) (_2!34999 lt!2094415)) input!1493))))

(assert (=> d!1649319 (= lt!2094415 e!3178915)))

(declare-fun c!875805 () Bool)

(assert (=> d!1649319 (= c!875805 (lostCause!1200 call!354838))))

(declare-fun lt!2094402 () Unit!149711)

(declare-fun Unit!149726 () Unit!149711)

(assert (=> d!1649319 (= lt!2094402 Unit!149726)))

(assert (=> d!1649319 (= (getSuffix!3156 input!1493 lt!2094123) call!354836)))

(declare-fun lt!2094407 () Unit!149711)

(declare-fun lt!2094414 () Unit!149711)

(assert (=> d!1649319 (= lt!2094407 lt!2094414)))

(declare-fun lt!2094406 () List!58795)

(assert (=> d!1649319 (= call!354836 lt!2094406)))

(assert (=> d!1649319 (= lt!2094414 (lemmaSamePrefixThenSameSuffix!2570 lt!2094123 call!354836 lt!2094123 lt!2094406 input!1493))))

(assert (=> d!1649319 (= lt!2094406 (getSuffix!3156 input!1493 lt!2094123))))

(declare-fun lt!2094416 () Unit!149711)

(declare-fun lt!2094421 () Unit!149711)

(assert (=> d!1649319 (= lt!2094416 lt!2094421)))

(assert (=> d!1649319 (isPrefix!5413 lt!2094123 (++!12858 lt!2094123 call!354836))))

(assert (=> d!1649319 (= lt!2094421 (lemmaConcatTwoListThenFirstIsPrefix!3472 lt!2094123 call!354836))))

(assert (=> d!1649319 (validRegex!6129 call!354838)))

(assert (=> d!1649319 (= (findLongestMatchInner!2024 call!354838 lt!2094123 (+ (size!39303 Nil!58671) 1) call!354836 input!1493 (size!39303 input!1493)) lt!2094415)))

(declare-fun b!5097115 () Bool)

(assert (=> b!5097115 (= e!3178915 (tuple2!63393 Nil!58671 input!1493))))

(declare-fun b!5097116 () Bool)

(assert (=> b!5097116 (= e!3178917 (tuple2!63393 Nil!58671 input!1493))))

(declare-fun b!5097117 () Bool)

(assert (=> b!5097117 (= e!3178918 (>= (size!39303 (_1!34999 lt!2094415)) (size!39303 lt!2094123)))))

(declare-fun b!5097118 () Bool)

(declare-fun c!875808 () Bool)

(assert (=> b!5097118 (= c!875808 call!354906)))

(declare-fun lt!2094409 () Unit!149711)

(declare-fun lt!2094405 () Unit!149711)

(assert (=> b!5097118 (= lt!2094409 lt!2094405)))

(assert (=> b!5097118 (= input!1493 lt!2094123)))

(assert (=> b!5097118 (= lt!2094405 call!354907)))

(declare-fun lt!2094400 () Unit!149711)

(declare-fun lt!2094401 () Unit!149711)

(assert (=> b!5097118 (= lt!2094400 lt!2094401)))

(assert (=> b!5097118 call!354908))

(assert (=> b!5097118 (= lt!2094401 call!354905)))

(assert (=> b!5097118 (= e!3178912 e!3178917)))

(declare-fun bm!354902 () Bool)

(assert (=> bm!354902 (= call!354904 (derivativeStep!3990 call!354838 call!354901))))

(declare-fun bm!354903 () Bool)

(assert (=> bm!354903 (= call!354905 (lemmaIsPrefixRefl!3673 input!1493 input!1493))))

(assert (= (and d!1649319 c!875805) b!5097115))

(assert (= (and d!1649319 (not c!875805)) b!5097111))

(assert (= (and b!5097111 c!875809) b!5097118))

(assert (= (and b!5097111 (not c!875809)) b!5097109))

(assert (= (and b!5097118 c!875808) b!5097110))

(assert (= (and b!5097118 (not c!875808)) b!5097116))

(assert (= (and b!5097109 c!875810) b!5097108))

(assert (= (and b!5097109 (not c!875810)) b!5097105))

(assert (= (and b!5097109 c!875807) b!5097113))

(assert (= (and b!5097109 (not c!875807)) b!5097112))

(assert (= (and b!5097113 c!875806) b!5097107))

(assert (= (and b!5097113 (not c!875806)) b!5097106))

(assert (= (or b!5097113 b!5097112) bm!354899))

(assert (= (or b!5097113 b!5097112) bm!354900))

(assert (= (or b!5097113 b!5097112) bm!354902))

(assert (= (or b!5097113 b!5097112) bm!354901))

(assert (= (or b!5097118 b!5097108) bm!354903))

(assert (= (or b!5097118 b!5097108) bm!354898))

(assert (= (or b!5097118 b!5097109) bm!354897))

(assert (= (or b!5097118 b!5097108) bm!354896))

(assert (= (and d!1649319 res!2169324) b!5097114))

(assert (= (and b!5097114 (not res!2169323)) b!5097117))

(declare-fun m!6154330 () Bool)

(assert (=> bm!354896 m!6154330))

(declare-fun m!6154332 () Bool)

(assert (=> b!5097113 m!6154332))

(declare-fun m!6154334 () Bool)

(assert (=> b!5097109 m!6154334))

(declare-fun m!6154336 () Bool)

(assert (=> b!5097109 m!6154336))

(declare-fun m!6154338 () Bool)

(assert (=> b!5097109 m!6154338))

(declare-fun m!6154340 () Bool)

(assert (=> b!5097109 m!6154340))

(declare-fun m!6154342 () Bool)

(assert (=> b!5097109 m!6154342))

(declare-fun m!6154344 () Bool)

(assert (=> b!5097109 m!6154344))

(declare-fun m!6154346 () Bool)

(assert (=> b!5097109 m!6154346))

(declare-fun m!6154348 () Bool)

(assert (=> b!5097109 m!6154348))

(assert (=> b!5097109 m!6154346))

(declare-fun m!6154350 () Bool)

(assert (=> b!5097109 m!6154350))

(assert (=> b!5097109 m!6153780))

(declare-fun m!6154352 () Bool)

(assert (=> b!5097109 m!6154352))

(assert (=> b!5097109 m!6154350))

(declare-fun m!6154354 () Bool)

(assert (=> b!5097109 m!6154354))

(assert (=> b!5097109 m!6154352))

(declare-fun m!6154356 () Bool)

(assert (=> b!5097109 m!6154356))

(declare-fun m!6154358 () Bool)

(assert (=> b!5097109 m!6154358))

(declare-fun m!6154360 () Bool)

(assert (=> bm!354902 m!6154360))

(declare-fun m!6154362 () Bool)

(assert (=> d!1649319 m!6154362))

(declare-fun m!6154364 () Bool)

(assert (=> d!1649319 m!6154364))

(declare-fun m!6154366 () Bool)

(assert (=> d!1649319 m!6154366))

(declare-fun m!6154368 () Bool)

(assert (=> d!1649319 m!6154368))

(declare-fun m!6154370 () Bool)

(assert (=> d!1649319 m!6154370))

(declare-fun m!6154372 () Bool)

(assert (=> d!1649319 m!6154372))

(assert (=> d!1649319 m!6154346))

(assert (=> d!1649319 m!6154368))

(declare-fun m!6154374 () Bool)

(assert (=> d!1649319 m!6154374))

(declare-fun m!6154376 () Bool)

(assert (=> b!5097114 m!6154376))

(assert (=> bm!354900 m!6154338))

(declare-fun m!6154378 () Bool)

(assert (=> bm!354897 m!6154378))

(assert (=> bm!354903 m!6153878))

(assert (=> bm!354901 m!6153780))

(declare-fun m!6154382 () Bool)

(assert (=> bm!354901 m!6154382))

(assert (=> bm!354899 m!6154336))

(declare-fun m!6154384 () Bool)

(assert (=> b!5097117 m!6154384))

(assert (=> b!5097117 m!6154358))

(assert (=> bm!354898 m!6153884))

(assert (=> bm!354835 d!1649319))

(declare-fun d!1649331 () Bool)

(declare-fun lt!2094432 () Int)

(assert (=> d!1649331 (>= lt!2094432 0)))

(declare-fun e!3178924 () Int)

(assert (=> d!1649331 (= lt!2094432 e!3178924)))

(declare-fun c!875815 () Bool)

(assert (=> d!1649331 (= c!875815 ((_ is Nil!58671) (t!371760 (_1!34999 lt!2094046))))))

(assert (=> d!1649331 (= (size!39303 (t!371760 (_1!34999 lt!2094046))) lt!2094432)))

(declare-fun b!5097128 () Bool)

(assert (=> b!5097128 (= e!3178924 0)))

(declare-fun b!5097129 () Bool)

(assert (=> b!5097129 (= e!3178924 (+ 1 (size!39303 (t!371760 (t!371760 (_1!34999 lt!2094046))))))))

(assert (= (and d!1649331 c!875815) b!5097128))

(assert (= (and d!1649331 (not c!875815)) b!5097129))

(declare-fun m!6154386 () Bool)

(assert (=> b!5097129 m!6154386))

(assert (=> b!5096792 d!1649331))

(declare-fun d!1649333 () Bool)

(assert (=> d!1649333 (= (inv!78174 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))) (isBalanced!4465 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))))))

(declare-fun bs!1191366 () Bool)

(assert (= bs!1191366 d!1649333))

(declare-fun m!6154388 () Bool)

(assert (=> bs!1191366 m!6154388))

(assert (=> tb!261843 d!1649333))

(declare-fun b!5097142 () Bool)

(declare-fun e!3178935 () Bool)

(declare-fun inv!15 (TokenValue!8842) Bool)

(assert (=> b!5097142 (= e!3178935 (inv!15 (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))))

(declare-fun b!5097143 () Bool)

(declare-fun res!2169331 () Bool)

(assert (=> b!5097143 (=> res!2169331 e!3178935)))

(assert (=> b!5097143 (= res!2169331 (not ((_ is IntegerValue!26528) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))))))

(declare-fun e!3178934 () Bool)

(assert (=> b!5097143 (= e!3178934 e!3178935)))

(declare-fun b!5097144 () Bool)

(declare-fun inv!17 (TokenValue!8842) Bool)

(assert (=> b!5097144 (= e!3178934 (inv!17 (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))))

(declare-fun b!5097145 () Bool)

(declare-fun e!3178933 () Bool)

(assert (=> b!5097145 (= e!3178933 e!3178934)))

(declare-fun c!875820 () Bool)

(assert (=> b!5097145 (= c!875820 ((_ is IntegerValue!26527) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))))

(declare-fun b!5097146 () Bool)

(declare-fun inv!16 (TokenValue!8842) Bool)

(assert (=> b!5097146 (= e!3178933 (inv!16 (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))))

(declare-fun d!1649335 () Bool)

(declare-fun c!875821 () Bool)

(assert (=> d!1649335 (= c!875821 ((_ is IntegerValue!26526) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))))

(assert (=> d!1649335 (= (inv!21 (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)) e!3178933)))

(assert (= (and d!1649335 c!875821) b!5097146))

(assert (= (and d!1649335 (not c!875821)) b!5097145))

(assert (= (and b!5097145 c!875820) b!5097144))

(assert (= (and b!5097145 (not c!875820)) b!5097143))

(assert (= (and b!5097143 (not res!2169331)) b!5097142))

(declare-fun m!6154392 () Bool)

(assert (=> b!5097142 m!6154392))

(declare-fun m!6154394 () Bool)

(assert (=> b!5097144 m!6154394))

(declare-fun m!6154396 () Bool)

(assert (=> b!5097146 m!6154396))

(assert (=> tb!261845 d!1649335))

(assert (=> d!1649175 d!1649221))

(assert (=> d!1649175 d!1649159))

(declare-fun d!1649339 () Bool)

(declare-fun e!3178960 () Bool)

(assert (=> d!1649339 e!3178960))

(declare-fun res!2169350 () Bool)

(assert (=> d!1649339 (=> res!2169350 e!3178960)))

(assert (=> d!1649339 (= res!2169350 (isEmpty!31756 (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))))))

(assert (=> d!1649339 true))

(declare-fun _$92!578 () Unit!149711)

(assert (=> d!1649339 (= (choose!37313 (regex!8528 rule!158) input!1493) _$92!578)))

(declare-fun b!5097177 () Bool)

(assert (=> b!5097177 (= e!3178960 (matchR!6800 (regex!8528 rule!158) (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))))))

(assert (= (and d!1649339 (not res!2169350)) b!5097177))

(assert (=> d!1649339 m!6153778))

(assert (=> d!1649339 m!6153780))

(assert (=> d!1649339 m!6153778))

(assert (=> d!1649339 m!6153780))

(assert (=> d!1649339 m!6153782))

(assert (=> d!1649339 m!6153992))

(assert (=> b!5097177 m!6153778))

(assert (=> b!5097177 m!6153780))

(assert (=> b!5097177 m!6153778))

(assert (=> b!5097177 m!6153780))

(assert (=> b!5097177 m!6153782))

(assert (=> b!5097177 m!6153998))

(assert (=> d!1649175 d!1649339))

(declare-fun d!1649345 () Bool)

(assert (=> d!1649345 (= (isEmpty!31756 (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))) ((_ is Nil!58671) (_1!34999 (findLongestMatchInner!2024 (regex!8528 rule!158) Nil!58671 (size!39303 Nil!58671) input!1493 input!1493 (size!39303 input!1493)))))))

(assert (=> d!1649175 d!1649345))

(assert (=> d!1649175 d!1649195))

(assert (=> d!1649175 d!1649199))

(declare-fun b!5097178 () Bool)

(declare-fun e!3178965 () Bool)

(declare-fun e!3178962 () Bool)

(assert (=> b!5097178 (= e!3178965 e!3178962)))

(declare-fun res!2169355 () Bool)

(assert (=> b!5097178 (=> res!2169355 e!3178962)))

(declare-fun call!354918 () Bool)

(assert (=> b!5097178 (= res!2169355 call!354918)))

(declare-fun b!5097179 () Bool)

(declare-fun e!3178961 () Bool)

(declare-fun lt!2094433 () Bool)

(assert (=> b!5097179 (= e!3178961 (not lt!2094433))))

(declare-fun bm!354913 () Bool)

(assert (=> bm!354913 (= call!354918 (isEmpty!31756 (tail!9981 (_1!34999 lt!2094047))))))

(declare-fun b!5097180 () Bool)

(assert (=> b!5097180 (= e!3178962 (not (= (head!10826 (tail!9981 (_1!34999 lt!2094047))) (c!875678 (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 lt!2094047)))))))))

(declare-fun b!5097181 () Bool)

(declare-fun e!3178964 () Bool)

(assert (=> b!5097181 (= e!3178964 (= lt!2094433 call!354918))))

(declare-fun b!5097182 () Bool)

(declare-fun res!2169352 () Bool)

(declare-fun e!3178967 () Bool)

(assert (=> b!5097182 (=> (not res!2169352) (not e!3178967))))

(assert (=> b!5097182 (= res!2169352 (not call!354918))))

(declare-fun b!5097183 () Bool)

(declare-fun res!2169354 () Bool)

(declare-fun e!3178963 () Bool)

(assert (=> b!5097183 (=> res!2169354 e!3178963)))

(assert (=> b!5097183 (= res!2169354 e!3178967)))

(declare-fun res!2169356 () Bool)

(assert (=> b!5097183 (=> (not res!2169356) (not e!3178967))))

(assert (=> b!5097183 (= res!2169356 lt!2094433)))

(declare-fun b!5097184 () Bool)

(assert (=> b!5097184 (= e!3178964 e!3178961)))

(declare-fun c!875830 () Bool)

(assert (=> b!5097184 (= c!875830 ((_ is EmptyLang!14003) (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 lt!2094047)))))))

(declare-fun d!1649347 () Bool)

(assert (=> d!1649347 e!3178964))

(declare-fun c!875828 () Bool)

(assert (=> d!1649347 (= c!875828 ((_ is EmptyExpr!14003) (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 lt!2094047)))))))

(declare-fun e!3178966 () Bool)

(assert (=> d!1649347 (= lt!2094433 e!3178966)))

(declare-fun c!875829 () Bool)

(assert (=> d!1649347 (= c!875829 (isEmpty!31756 (tail!9981 (_1!34999 lt!2094047))))))

(assert (=> d!1649347 (validRegex!6129 (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 lt!2094047))))))

(assert (=> d!1649347 (= (matchR!6800 (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 lt!2094047))) (tail!9981 (_1!34999 lt!2094047))) lt!2094433)))

(declare-fun b!5097185 () Bool)

(declare-fun res!2169358 () Bool)

(assert (=> b!5097185 (=> res!2169358 e!3178963)))

(assert (=> b!5097185 (= res!2169358 (not ((_ is ElementMatch!14003) (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 lt!2094047))))))))

(assert (=> b!5097185 (= e!3178961 e!3178963)))

(declare-fun b!5097186 () Bool)

(declare-fun res!2169353 () Bool)

(assert (=> b!5097186 (=> (not res!2169353) (not e!3178967))))

(assert (=> b!5097186 (= res!2169353 (isEmpty!31756 (tail!9981 (tail!9981 (_1!34999 lt!2094047)))))))

(declare-fun b!5097187 () Bool)

(declare-fun res!2169357 () Bool)

(assert (=> b!5097187 (=> res!2169357 e!3178962)))

(assert (=> b!5097187 (= res!2169357 (not (isEmpty!31756 (tail!9981 (tail!9981 (_1!34999 lt!2094047))))))))

(declare-fun b!5097188 () Bool)

(assert (=> b!5097188 (= e!3178967 (= (head!10826 (tail!9981 (_1!34999 lt!2094047))) (c!875678 (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 lt!2094047))))))))

(declare-fun b!5097189 () Bool)

(assert (=> b!5097189 (= e!3178963 e!3178965)))

(declare-fun res!2169351 () Bool)

(assert (=> b!5097189 (=> (not res!2169351) (not e!3178965))))

(assert (=> b!5097189 (= res!2169351 (not lt!2094433))))

(declare-fun b!5097190 () Bool)

(assert (=> b!5097190 (= e!3178966 (nullable!4704 (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 lt!2094047)))))))

(declare-fun b!5097191 () Bool)

(assert (=> b!5097191 (= e!3178966 (matchR!6800 (derivativeStep!3990 (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 lt!2094047))) (head!10826 (tail!9981 (_1!34999 lt!2094047)))) (tail!9981 (tail!9981 (_1!34999 lt!2094047)))))))

(assert (= (and d!1649347 c!875829) b!5097190))

(assert (= (and d!1649347 (not c!875829)) b!5097191))

(assert (= (and d!1649347 c!875828) b!5097181))

(assert (= (and d!1649347 (not c!875828)) b!5097184))

(assert (= (and b!5097184 c!875830) b!5097179))

(assert (= (and b!5097184 (not c!875830)) b!5097185))

(assert (= (and b!5097185 (not res!2169358)) b!5097183))

(assert (= (and b!5097183 res!2169356) b!5097182))

(assert (= (and b!5097182 res!2169352) b!5097186))

(assert (= (and b!5097186 res!2169353) b!5097188))

(assert (= (and b!5097183 (not res!2169354)) b!5097189))

(assert (= (and b!5097189 res!2169351) b!5097178))

(assert (= (and b!5097178 (not res!2169355)) b!5097187))

(assert (= (and b!5097187 (not res!2169357)) b!5097180))

(assert (= (or b!5097181 b!5097178 b!5097182) bm!354913))

(assert (=> b!5097188 m!6153810))

(declare-fun m!6154410 () Bool)

(assert (=> b!5097188 m!6154410))

(assert (=> b!5097186 m!6153810))

(declare-fun m!6154412 () Bool)

(assert (=> b!5097186 m!6154412))

(assert (=> b!5097186 m!6154412))

(declare-fun m!6154414 () Bool)

(assert (=> b!5097186 m!6154414))

(assert (=> b!5097191 m!6153810))

(assert (=> b!5097191 m!6154410))

(assert (=> b!5097191 m!6153814))

(assert (=> b!5097191 m!6154410))

(declare-fun m!6154416 () Bool)

(assert (=> b!5097191 m!6154416))

(assert (=> b!5097191 m!6153810))

(assert (=> b!5097191 m!6154412))

(assert (=> b!5097191 m!6154416))

(assert (=> b!5097191 m!6154412))

(declare-fun m!6154420 () Bool)

(assert (=> b!5097191 m!6154420))

(assert (=> d!1649347 m!6153810))

(assert (=> d!1649347 m!6153812))

(assert (=> d!1649347 m!6153814))

(declare-fun m!6154422 () Bool)

(assert (=> d!1649347 m!6154422))

(assert (=> b!5097187 m!6153810))

(assert (=> b!5097187 m!6154412))

(assert (=> b!5097187 m!6154412))

(assert (=> b!5097187 m!6154414))

(assert (=> b!5097180 m!6153810))

(assert (=> b!5097180 m!6154410))

(assert (=> bm!354913 m!6153810))

(assert (=> bm!354913 m!6153812))

(assert (=> b!5097190 m!6153814))

(declare-fun m!6154424 () Bool)

(assert (=> b!5097190 m!6154424))

(assert (=> b!5096652 d!1649347))

(declare-fun b!5097218 () Bool)

(declare-fun e!3178984 () Regex!14003)

(assert (=> b!5097218 (= e!3178984 EmptyLang!14003)))

(declare-fun b!5097219 () Bool)

(declare-fun e!3178985 () Regex!14003)

(declare-fun call!354930 () Regex!14003)

(assert (=> b!5097219 (= e!3178985 (Concat!22845 call!354930 (regex!8528 rule!158)))))

(declare-fun b!5097220 () Bool)

(declare-fun e!3178983 () Regex!14003)

(assert (=> b!5097220 (= e!3178984 e!3178983)))

(declare-fun c!875844 () Bool)

(assert (=> b!5097220 (= c!875844 ((_ is ElementMatch!14003) (regex!8528 rule!158)))))

(declare-fun b!5097221 () Bool)

(declare-fun c!875847 () Bool)

(assert (=> b!5097221 (= c!875847 ((_ is Union!14003) (regex!8528 rule!158)))))

(declare-fun e!3178981 () Regex!14003)

(assert (=> b!5097221 (= e!3178983 e!3178981)))

(declare-fun d!1649351 () Bool)

(declare-fun lt!2094455 () Regex!14003)

(assert (=> d!1649351 (validRegex!6129 lt!2094455)))

(assert (=> d!1649351 (= lt!2094455 e!3178984)))

(declare-fun c!875845 () Bool)

(assert (=> d!1649351 (= c!875845 (or ((_ is EmptyExpr!14003) (regex!8528 rule!158)) ((_ is EmptyLang!14003) (regex!8528 rule!158))))))

(assert (=> d!1649351 (validRegex!6129 (regex!8528 rule!158))))

(assert (=> d!1649351 (= (derivativeStep!3990 (regex!8528 rule!158) (head!10826 (_1!34999 lt!2094047))) lt!2094455)))

(declare-fun bm!354922 () Bool)

(declare-fun call!354927 () Regex!14003)

(assert (=> bm!354922 (= call!354927 (derivativeStep!3990 (ite c!875847 (regOne!28519 (regex!8528 rule!158)) (regOne!28518 (regex!8528 rule!158))) (head!10826 (_1!34999 lt!2094047))))))

(declare-fun b!5097222 () Bool)

(declare-fun e!3178982 () Regex!14003)

(declare-fun call!354929 () Regex!14003)

(assert (=> b!5097222 (= e!3178982 (Union!14003 (Concat!22845 call!354929 (regTwo!28518 (regex!8528 rule!158))) EmptyLang!14003))))

(declare-fun b!5097223 () Bool)

(declare-fun c!875846 () Bool)

(assert (=> b!5097223 (= c!875846 (nullable!4704 (regOne!28518 (regex!8528 rule!158))))))

(assert (=> b!5097223 (= e!3178985 e!3178982)))

(declare-fun c!875848 () Bool)

(declare-fun bm!354923 () Bool)

(declare-fun call!354928 () Regex!14003)

(assert (=> bm!354923 (= call!354928 (derivativeStep!3990 (ite c!875847 (regTwo!28519 (regex!8528 rule!158)) (ite c!875848 (reg!14332 (regex!8528 rule!158)) (ite c!875846 (regTwo!28518 (regex!8528 rule!158)) (regOne!28518 (regex!8528 rule!158))))) (head!10826 (_1!34999 lt!2094047))))))

(declare-fun b!5097224 () Bool)

(assert (=> b!5097224 (= e!3178981 e!3178985)))

(assert (=> b!5097224 (= c!875848 ((_ is Star!14003) (regex!8528 rule!158)))))

(declare-fun bm!354924 () Bool)

(assert (=> bm!354924 (= call!354930 call!354928)))

(declare-fun b!5097225 () Bool)

(assert (=> b!5097225 (= e!3178983 (ite (= (head!10826 (_1!34999 lt!2094047)) (c!875678 (regex!8528 rule!158))) EmptyExpr!14003 EmptyLang!14003))))

(declare-fun b!5097226 () Bool)

(assert (=> b!5097226 (= e!3178982 (Union!14003 (Concat!22845 call!354927 (regTwo!28518 (regex!8528 rule!158))) call!354929))))

(declare-fun b!5097227 () Bool)

(assert (=> b!5097227 (= e!3178981 (Union!14003 call!354927 call!354928))))

(declare-fun bm!354925 () Bool)

(assert (=> bm!354925 (= call!354929 call!354930)))

(assert (= (and d!1649351 c!875845) b!5097218))

(assert (= (and d!1649351 (not c!875845)) b!5097220))

(assert (= (and b!5097220 c!875844) b!5097225))

(assert (= (and b!5097220 (not c!875844)) b!5097221))

(assert (= (and b!5097221 c!875847) b!5097227))

(assert (= (and b!5097221 (not c!875847)) b!5097224))

(assert (= (and b!5097224 c!875848) b!5097219))

(assert (= (and b!5097224 (not c!875848)) b!5097223))

(assert (= (and b!5097223 c!875846) b!5097226))

(assert (= (and b!5097223 (not c!875846)) b!5097222))

(assert (= (or b!5097226 b!5097222) bm!354925))

(assert (= (or b!5097219 bm!354925) bm!354924))

(assert (= (or b!5097227 bm!354924) bm!354923))

(assert (= (or b!5097227 b!5097226) bm!354922))

(declare-fun m!6154428 () Bool)

(assert (=> d!1649351 m!6154428))

(assert (=> d!1649351 m!6153818))

(assert (=> bm!354922 m!6153808))

(declare-fun m!6154430 () Bool)

(assert (=> bm!354922 m!6154430))

(declare-fun m!6154432 () Bool)

(assert (=> b!5097223 m!6154432))

(assert (=> bm!354923 m!6153808))

(declare-fun m!6154434 () Bool)

(assert (=> bm!354923 m!6154434))

(assert (=> b!5096652 d!1649351))

(assert (=> b!5096652 d!1649233))

(assert (=> b!5096652 d!1649267))

(assert (=> d!1649187 d!1649269))

(declare-fun d!1649355 () Bool)

(declare-fun lt!2094456 () Int)

(assert (=> d!1649355 (>= lt!2094456 0)))

(declare-fun e!3178986 () Int)

(assert (=> d!1649355 (= lt!2094456 e!3178986)))

(declare-fun c!875849 () Bool)

(assert (=> d!1649355 (= c!875849 ((_ is Nil!58671) (t!371760 input!1493)))))

(assert (=> d!1649355 (= (size!39303 (t!371760 input!1493)) lt!2094456)))

(declare-fun b!5097228 () Bool)

(assert (=> b!5097228 (= e!3178986 0)))

(declare-fun b!5097229 () Bool)

(assert (=> b!5097229 (= e!3178986 (+ 1 (size!39303 (t!371760 (t!371760 input!1493)))))))

(assert (= (and d!1649355 c!875849) b!5097228))

(assert (= (and d!1649355 (not c!875849)) b!5097229))

(declare-fun m!6154436 () Bool)

(assert (=> b!5097229 m!6154436))

(assert (=> b!5096810 d!1649355))

(declare-fun d!1649357 () Bool)

(declare-fun lt!2094461 () Int)

(assert (=> d!1649357 (>= lt!2094461 0)))

(declare-fun e!3178987 () Int)

(assert (=> d!1649357 (= lt!2094461 e!3178987)))

(declare-fun c!875850 () Bool)

(assert (=> d!1649357 (= c!875850 ((_ is Nil!58671) (_1!34999 lt!2094126)))))

(assert (=> d!1649357 (= (size!39303 (_1!34999 lt!2094126)) lt!2094461)))

(declare-fun b!5097230 () Bool)

(assert (=> b!5097230 (= e!3178987 0)))

(declare-fun b!5097231 () Bool)

(assert (=> b!5097231 (= e!3178987 (+ 1 (size!39303 (t!371760 (_1!34999 lt!2094126)))))))

(assert (= (and d!1649357 c!875850) b!5097230))

(assert (= (and d!1649357 (not c!875850)) b!5097231))

(declare-fun m!6154438 () Bool)

(assert (=> b!5097231 m!6154438))

(assert (=> b!5096704 d!1649357))

(assert (=> b!5096704 d!1649199))

(declare-fun b!5097232 () Bool)

(declare-fun e!3178991 () Regex!14003)

(assert (=> b!5097232 (= e!3178991 EmptyLang!14003)))

(declare-fun b!5097233 () Bool)

(declare-fun e!3178992 () Regex!14003)

(declare-fun call!354934 () Regex!14003)

(assert (=> b!5097233 (= e!3178992 (Concat!22845 call!354934 (regex!8528 rule!158)))))

(declare-fun b!5097234 () Bool)

(declare-fun e!3178990 () Regex!14003)

(assert (=> b!5097234 (= e!3178991 e!3178990)))

(declare-fun c!875851 () Bool)

(assert (=> b!5097234 (= c!875851 ((_ is ElementMatch!14003) (regex!8528 rule!158)))))

(declare-fun b!5097235 () Bool)

(declare-fun c!875854 () Bool)

(assert (=> b!5097235 (= c!875854 ((_ is Union!14003) (regex!8528 rule!158)))))

(declare-fun e!3178988 () Regex!14003)

(assert (=> b!5097235 (= e!3178990 e!3178988)))

(declare-fun d!1649359 () Bool)

(declare-fun lt!2094466 () Regex!14003)

(assert (=> d!1649359 (validRegex!6129 lt!2094466)))

(assert (=> d!1649359 (= lt!2094466 e!3178991)))

(declare-fun c!875852 () Bool)

(assert (=> d!1649359 (= c!875852 (or ((_ is EmptyExpr!14003) (regex!8528 rule!158)) ((_ is EmptyLang!14003) (regex!8528 rule!158))))))

(assert (=> d!1649359 (validRegex!6129 (regex!8528 rule!158))))

(assert (=> d!1649359 (= (derivativeStep!3990 (regex!8528 rule!158) call!354835) lt!2094466)))

(declare-fun bm!354926 () Bool)

(declare-fun call!354931 () Regex!14003)

(assert (=> bm!354926 (= call!354931 (derivativeStep!3990 (ite c!875854 (regOne!28519 (regex!8528 rule!158)) (regOne!28518 (regex!8528 rule!158))) call!354835))))

(declare-fun b!5097236 () Bool)

(declare-fun e!3178989 () Regex!14003)

(declare-fun call!354933 () Regex!14003)

(assert (=> b!5097236 (= e!3178989 (Union!14003 (Concat!22845 call!354933 (regTwo!28518 (regex!8528 rule!158))) EmptyLang!14003))))

(declare-fun b!5097237 () Bool)

(declare-fun c!875853 () Bool)

(assert (=> b!5097237 (= c!875853 (nullable!4704 (regOne!28518 (regex!8528 rule!158))))))

(assert (=> b!5097237 (= e!3178992 e!3178989)))

(declare-fun call!354932 () Regex!14003)

(declare-fun bm!354927 () Bool)

(declare-fun c!875855 () Bool)

(assert (=> bm!354927 (= call!354932 (derivativeStep!3990 (ite c!875854 (regTwo!28519 (regex!8528 rule!158)) (ite c!875855 (reg!14332 (regex!8528 rule!158)) (ite c!875853 (regTwo!28518 (regex!8528 rule!158)) (regOne!28518 (regex!8528 rule!158))))) call!354835))))

(declare-fun b!5097238 () Bool)

(assert (=> b!5097238 (= e!3178988 e!3178992)))

(assert (=> b!5097238 (= c!875855 ((_ is Star!14003) (regex!8528 rule!158)))))

(declare-fun bm!354928 () Bool)

(assert (=> bm!354928 (= call!354934 call!354932)))

(declare-fun b!5097239 () Bool)

(assert (=> b!5097239 (= e!3178990 (ite (= call!354835 (c!875678 (regex!8528 rule!158))) EmptyExpr!14003 EmptyLang!14003))))

(declare-fun b!5097240 () Bool)

(assert (=> b!5097240 (= e!3178989 (Union!14003 (Concat!22845 call!354931 (regTwo!28518 (regex!8528 rule!158))) call!354933))))

(declare-fun b!5097241 () Bool)

(assert (=> b!5097241 (= e!3178988 (Union!14003 call!354931 call!354932))))

(declare-fun bm!354929 () Bool)

(assert (=> bm!354929 (= call!354933 call!354934)))

(assert (= (and d!1649359 c!875852) b!5097232))

(assert (= (and d!1649359 (not c!875852)) b!5097234))

(assert (= (and b!5097234 c!875851) b!5097239))

(assert (= (and b!5097234 (not c!875851)) b!5097235))

(assert (= (and b!5097235 c!875854) b!5097241))

(assert (= (and b!5097235 (not c!875854)) b!5097238))

(assert (= (and b!5097238 c!875855) b!5097233))

(assert (= (and b!5097238 (not c!875855)) b!5097237))

(assert (= (and b!5097237 c!875853) b!5097240))

(assert (= (and b!5097237 (not c!875853)) b!5097236))

(assert (= (or b!5097240 b!5097236) bm!354929))

(assert (= (or b!5097233 bm!354929) bm!354928))

(assert (= (or b!5097241 bm!354928) bm!354927))

(assert (= (or b!5097241 b!5097240) bm!354926))

(declare-fun m!6154456 () Bool)

(assert (=> d!1649359 m!6154456))

(assert (=> d!1649359 m!6153818))

(declare-fun m!6154458 () Bool)

(assert (=> bm!354926 m!6154458))

(assert (=> b!5097237 m!6154432))

(declare-fun m!6154460 () Bool)

(assert (=> bm!354927 m!6154460))

(assert (=> bm!354836 d!1649359))

(declare-fun d!1649363 () Bool)

(assert (=> d!1649363 (isPrefix!5413 input!1493 input!1493)))

(declare-fun lt!2094469 () Unit!149711)

(declare-fun choose!37328 (List!58795 List!58795) Unit!149711)

(assert (=> d!1649363 (= lt!2094469 (choose!37328 input!1493 input!1493))))

(assert (=> d!1649363 (= (lemmaIsPrefixRefl!3673 input!1493 input!1493) lt!2094469)))

(declare-fun bs!1191370 () Bool)

(assert (= bs!1191370 d!1649363))

(assert (=> bs!1191370 m!6153884))

(declare-fun m!6154462 () Bool)

(assert (=> bs!1191370 m!6154462))

(assert (=> bm!354837 d!1649363))

(declare-fun d!1649365 () Bool)

(declare-fun c!875856 () Bool)

(assert (=> d!1649365 (= c!875856 ((_ is Node!15700) (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))))))

(declare-fun e!3178993 () Bool)

(assert (=> d!1649365 (= (inv!78173 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))) e!3178993)))

(declare-fun b!5097242 () Bool)

(assert (=> b!5097242 (= e!3178993 (inv!78175 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))))))

(declare-fun b!5097243 () Bool)

(declare-fun e!3178994 () Bool)

(assert (=> b!5097243 (= e!3178993 e!3178994)))

(declare-fun res!2169359 () Bool)

(assert (=> b!5097243 (= res!2169359 (not ((_ is Leaf!26055) (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))))))))

(assert (=> b!5097243 (=> res!2169359 e!3178994)))

(declare-fun b!5097244 () Bool)

(assert (=> b!5097244 (= e!3178994 (inv!78176 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))))))

(assert (= (and d!1649365 c!875856) b!5097242))

(assert (= (and d!1649365 (not c!875856)) b!5097243))

(assert (= (and b!5097243 (not res!2169359)) b!5097244))

(declare-fun m!6154464 () Bool)

(assert (=> b!5097242 m!6154464))

(declare-fun m!6154466 () Bool)

(assert (=> b!5097244 m!6154466))

(assert (=> b!5096769 d!1649365))

(declare-fun d!1649367 () Bool)

(assert (=> d!1649367 (= input!1493 Nil!58671)))

(declare-fun lt!2094472 () Unit!149711)

(declare-fun choose!37330 (List!58795 List!58795 List!58795) Unit!149711)

(assert (=> d!1649367 (= lt!2094472 (choose!37330 input!1493 Nil!58671 input!1493))))

(assert (=> d!1649367 (isPrefix!5413 input!1493 input!1493)))

(assert (=> d!1649367 (= (lemmaIsPrefixSameLengthThenSameList!1291 input!1493 Nil!58671 input!1493) lt!2094472)))

(declare-fun bs!1191371 () Bool)

(assert (= bs!1191371 d!1649367))

(declare-fun m!6154468 () Bool)

(assert (=> bs!1191371 m!6154468))

(assert (=> bs!1191371 m!6153884))

(assert (=> bm!354830 d!1649367))

(declare-fun d!1649369 () Bool)

(assert (=> d!1649369 true))

(declare-fun lambda!249913 () Int)

(declare-fun order!26761 () Int)

(declare-fun dynLambda!23574 (Int Int) Int)

(assert (=> d!1649369 (< (dynLambda!23568 order!26753 (toValue!11551 (transformation!8528 rule!158))) (dynLambda!23574 order!26761 lambda!249913))))

(declare-fun Forall2!1306 (Int) Bool)

(assert (=> d!1649369 (= (equivClasses!3613 (toChars!11410 (transformation!8528 rule!158)) (toValue!11551 (transformation!8528 rule!158))) (Forall2!1306 lambda!249913))))

(declare-fun bs!1191372 () Bool)

(assert (= bs!1191372 d!1649369))

(declare-fun m!6154470 () Bool)

(assert (=> bs!1191372 m!6154470))

(assert (=> b!5096863 d!1649369))

(assert (=> b!5096806 d!1649369))

(assert (=> b!5096859 d!1649317))

(declare-fun d!1649371 () Bool)

(declare-fun e!3178997 () Bool)

(assert (=> d!1649371 e!3178997))

(declare-fun res!2169363 () Bool)

(assert (=> d!1649371 (=> res!2169363 e!3178997)))

(declare-fun lt!2094473 () Bool)

(assert (=> d!1649371 (= res!2169363 (not lt!2094473))))

(declare-fun e!3178999 () Bool)

(assert (=> d!1649371 (= lt!2094473 e!3178999)))

(declare-fun res!2169365 () Bool)

(assert (=> d!1649371 (=> res!2169365 e!3178999)))

(assert (=> d!1649371 (= res!2169365 ((_ is Nil!58671) input!1493))))

(assert (=> d!1649371 (= (isPrefix!5413 input!1493 input!1493) lt!2094473)))

(declare-fun b!5097249 () Bool)

(declare-fun e!3178998 () Bool)

(assert (=> b!5097249 (= e!3178999 e!3178998)))

(declare-fun res!2169364 () Bool)

(assert (=> b!5097249 (=> (not res!2169364) (not e!3178998))))

(assert (=> b!5097249 (= res!2169364 (not ((_ is Nil!58671) input!1493)))))

(declare-fun b!5097250 () Bool)

(declare-fun res!2169362 () Bool)

(assert (=> b!5097250 (=> (not res!2169362) (not e!3178998))))

(assert (=> b!5097250 (= res!2169362 (= (head!10826 input!1493) (head!10826 input!1493)))))

(declare-fun b!5097252 () Bool)

(assert (=> b!5097252 (= e!3178997 (>= (size!39303 input!1493) (size!39303 input!1493)))))

(declare-fun b!5097251 () Bool)

(assert (=> b!5097251 (= e!3178998 (isPrefix!5413 (tail!9981 input!1493) (tail!9981 input!1493)))))

(assert (= (and d!1649371 (not res!2169365)) b!5097249))

(assert (= (and b!5097249 res!2169364) b!5097250))

(assert (= (and b!5097250 res!2169362) b!5097251))

(assert (= (and d!1649371 (not res!2169363)) b!5097252))

(assert (=> b!5097250 m!6153840))

(assert (=> b!5097250 m!6153840))

(assert (=> b!5097252 m!6153780))

(assert (=> b!5097252 m!6153780))

(assert (=> b!5097251 m!6153842))

(assert (=> b!5097251 m!6153842))

(assert (=> b!5097251 m!6153842))

(assert (=> b!5097251 m!6153842))

(declare-fun m!6154472 () Bool)

(assert (=> b!5097251 m!6154472))

(assert (=> bm!354832 d!1649371))

(assert (=> bm!354831 d!1649317))

(declare-fun e!3179005 () Bool)

(declare-fun tp!1421390 () Bool)

(declare-fun b!5097261 () Bool)

(declare-fun tp!1421392 () Bool)

(assert (=> b!5097261 (= e!3179005 (and (inv!78173 (left!43082 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))))) tp!1421390 (inv!78173 (right!43412 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))))) tp!1421392))))

(declare-fun b!5097263 () Bool)

(declare-fun e!3179004 () Bool)

(declare-fun tp!1421391 () Bool)

(assert (=> b!5097263 (= e!3179004 tp!1421391)))

(declare-fun b!5097262 () Bool)

(declare-fun inv!78179 (IArray!31461) Bool)

(assert (=> b!5097262 (= e!3179005 (and (inv!78179 (xs!19082 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))))) e!3179004))))

(assert (=> b!5096663 (= tp!1421342 (and (inv!78173 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046)))))) e!3179005))))

(assert (= (and b!5096663 ((_ is Node!15700) (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))))) b!5097261))

(assert (= b!5097262 b!5097263))

(assert (= (and b!5096663 ((_ is Leaf!26055) (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))) (value!273348 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))))) b!5097262))

(declare-fun m!6154474 () Bool)

(assert (=> b!5097261 m!6154474))

(declare-fun m!6154476 () Bool)

(assert (=> b!5097261 m!6154476))

(declare-fun m!6154478 () Bool)

(assert (=> b!5097262 m!6154478))

(assert (=> b!5096663 m!6153822))

(declare-fun b!5097264 () Bool)

(declare-fun e!3179007 () Bool)

(declare-fun tp!1421395 () Bool)

(declare-fun tp!1421393 () Bool)

(assert (=> b!5097264 (= e!3179007 (and (inv!78173 (left!43082 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))))) tp!1421393 (inv!78173 (right!43412 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))))) tp!1421395))))

(declare-fun b!5097266 () Bool)

(declare-fun e!3179006 () Bool)

(declare-fun tp!1421394 () Bool)

(assert (=> b!5097266 (= e!3179006 tp!1421394)))

(declare-fun b!5097265 () Bool)

(assert (=> b!5097265 (= e!3179007 (and (inv!78179 (xs!19082 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))))) e!3179006))))

(assert (=> b!5096769 (= tp!1421346 (and (inv!78173 (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044)))) e!3179007))))

(assert (= (and b!5096769 ((_ is Node!15700) (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))))) b!5097264))

(assert (= b!5097265 b!5097266))

(assert (= (and b!5096769 ((_ is Leaf!26055) (c!875679 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))))) b!5097265))

(declare-fun m!6154480 () Bool)

(assert (=> b!5097264 m!6154480))

(declare-fun m!6154482 () Bool)

(assert (=> b!5097264 m!6154482))

(declare-fun m!6154484 () Bool)

(assert (=> b!5097265 m!6154484))

(assert (=> b!5096769 m!6153958))

(declare-fun b!5097269 () Bool)

(declare-fun e!3179008 () Bool)

(declare-fun tp!1421397 () Bool)

(assert (=> b!5097269 (= e!3179008 tp!1421397)))

(declare-fun b!5097267 () Bool)

(assert (=> b!5097267 (= e!3179008 tp_is_empty!37271)))

(assert (=> b!5096882 (= tp!1421361 e!3179008)))

(declare-fun b!5097268 () Bool)

(declare-fun tp!1421399 () Bool)

(declare-fun tp!1421400 () Bool)

(assert (=> b!5097268 (= e!3179008 (and tp!1421399 tp!1421400))))

(declare-fun b!5097270 () Bool)

(declare-fun tp!1421396 () Bool)

(declare-fun tp!1421398 () Bool)

(assert (=> b!5097270 (= e!3179008 (and tp!1421396 tp!1421398))))

(assert (= (and b!5096882 ((_ is ElementMatch!14003) (regOne!28519 (regex!8528 rule!158)))) b!5097267))

(assert (= (and b!5096882 ((_ is Concat!22845) (regOne!28519 (regex!8528 rule!158)))) b!5097268))

(assert (= (and b!5096882 ((_ is Star!14003) (regOne!28519 (regex!8528 rule!158)))) b!5097269))

(assert (= (and b!5096882 ((_ is Union!14003) (regOne!28519 (regex!8528 rule!158)))) b!5097270))

(declare-fun b!5097273 () Bool)

(declare-fun e!3179009 () Bool)

(declare-fun tp!1421402 () Bool)

(assert (=> b!5097273 (= e!3179009 tp!1421402)))

(declare-fun b!5097271 () Bool)

(assert (=> b!5097271 (= e!3179009 tp_is_empty!37271)))

(assert (=> b!5096882 (= tp!1421363 e!3179009)))

(declare-fun b!5097272 () Bool)

(declare-fun tp!1421404 () Bool)

(declare-fun tp!1421405 () Bool)

(assert (=> b!5097272 (= e!3179009 (and tp!1421404 tp!1421405))))

(declare-fun b!5097274 () Bool)

(declare-fun tp!1421401 () Bool)

(declare-fun tp!1421403 () Bool)

(assert (=> b!5097274 (= e!3179009 (and tp!1421401 tp!1421403))))

(assert (= (and b!5096882 ((_ is ElementMatch!14003) (regTwo!28519 (regex!8528 rule!158)))) b!5097271))

(assert (= (and b!5096882 ((_ is Concat!22845) (regTwo!28519 (regex!8528 rule!158)))) b!5097272))

(assert (= (and b!5096882 ((_ is Star!14003) (regTwo!28519 (regex!8528 rule!158)))) b!5097273))

(assert (= (and b!5096882 ((_ is Union!14003) (regTwo!28519 (regex!8528 rule!158)))) b!5097274))

(declare-fun b!5097275 () Bool)

(declare-fun e!3179010 () Bool)

(declare-fun tp!1421406 () Bool)

(assert (=> b!5097275 (= e!3179010 (and tp_is_empty!37271 tp!1421406))))

(assert (=> b!5096868 (= tp!1421350 e!3179010)))

(assert (= (and b!5096868 ((_ is Cons!58671) (t!371760 (t!371760 input!1493)))) b!5097275))

(declare-fun b!5097278 () Bool)

(declare-fun e!3179011 () Bool)

(declare-fun tp!1421408 () Bool)

(assert (=> b!5097278 (= e!3179011 tp!1421408)))

(declare-fun b!5097276 () Bool)

(assert (=> b!5097276 (= e!3179011 tp_is_empty!37271)))

(assert (=> b!5096880 (= tp!1421364 e!3179011)))

(declare-fun b!5097277 () Bool)

(declare-fun tp!1421410 () Bool)

(declare-fun tp!1421411 () Bool)

(assert (=> b!5097277 (= e!3179011 (and tp!1421410 tp!1421411))))

(declare-fun b!5097279 () Bool)

(declare-fun tp!1421407 () Bool)

(declare-fun tp!1421409 () Bool)

(assert (=> b!5097279 (= e!3179011 (and tp!1421407 tp!1421409))))

(assert (= (and b!5096880 ((_ is ElementMatch!14003) (regOne!28518 (regex!8528 rule!158)))) b!5097276))

(assert (= (and b!5096880 ((_ is Concat!22845) (regOne!28518 (regex!8528 rule!158)))) b!5097277))

(assert (= (and b!5096880 ((_ is Star!14003) (regOne!28518 (regex!8528 rule!158)))) b!5097278))

(assert (= (and b!5096880 ((_ is Union!14003) (regOne!28518 (regex!8528 rule!158)))) b!5097279))

(declare-fun b!5097282 () Bool)

(declare-fun e!3179012 () Bool)

(declare-fun tp!1421413 () Bool)

(assert (=> b!5097282 (= e!3179012 tp!1421413)))

(declare-fun b!5097280 () Bool)

(assert (=> b!5097280 (= e!3179012 tp_is_empty!37271)))

(assert (=> b!5096880 (= tp!1421365 e!3179012)))

(declare-fun b!5097281 () Bool)

(declare-fun tp!1421415 () Bool)

(declare-fun tp!1421416 () Bool)

(assert (=> b!5097281 (= e!3179012 (and tp!1421415 tp!1421416))))

(declare-fun b!5097283 () Bool)

(declare-fun tp!1421412 () Bool)

(declare-fun tp!1421414 () Bool)

(assert (=> b!5097283 (= e!3179012 (and tp!1421412 tp!1421414))))

(assert (= (and b!5096880 ((_ is ElementMatch!14003) (regTwo!28518 (regex!8528 rule!158)))) b!5097280))

(assert (= (and b!5096880 ((_ is Concat!22845) (regTwo!28518 (regex!8528 rule!158)))) b!5097281))

(assert (= (and b!5096880 ((_ is Star!14003) (regTwo!28518 (regex!8528 rule!158)))) b!5097282))

(assert (= (and b!5096880 ((_ is Union!14003) (regTwo!28518 (regex!8528 rule!158)))) b!5097283))

(declare-fun b!5097286 () Bool)

(declare-fun e!3179013 () Bool)

(declare-fun tp!1421418 () Bool)

(assert (=> b!5097286 (= e!3179013 tp!1421418)))

(declare-fun b!5097284 () Bool)

(assert (=> b!5097284 (= e!3179013 tp_is_empty!37271)))

(assert (=> b!5096881 (= tp!1421362 e!3179013)))

(declare-fun b!5097285 () Bool)

(declare-fun tp!1421420 () Bool)

(declare-fun tp!1421421 () Bool)

(assert (=> b!5097285 (= e!3179013 (and tp!1421420 tp!1421421))))

(declare-fun b!5097287 () Bool)

(declare-fun tp!1421417 () Bool)

(declare-fun tp!1421419 () Bool)

(assert (=> b!5097287 (= e!3179013 (and tp!1421417 tp!1421419))))

(assert (= (and b!5096881 ((_ is ElementMatch!14003) (reg!14332 (regex!8528 rule!158)))) b!5097284))

(assert (= (and b!5096881 ((_ is Concat!22845) (reg!14332 (regex!8528 rule!158)))) b!5097285))

(assert (= (and b!5096881 ((_ is Star!14003) (reg!14332 (regex!8528 rule!158)))) b!5097286))

(assert (= (and b!5096881 ((_ is Union!14003) (reg!14332 (regex!8528 rule!158)))) b!5097287))

(declare-fun b_lambda!198787 () Bool)

(assert (= b_lambda!198757 (or (and b!5096607 b_free!133505 (= (toChars!11410 (transformation!8528 rule!158)) (toChars!11410 (transformation!8528 (rule!11804 (Token!15477 (apply!14300 (transformation!8528 rule!158) lt!2094044) rule!158 (size!39303 (_1!34999 lt!2094046)) (_1!34999 lt!2094046))))))) b_lambda!198787)))

(declare-fun b_lambda!198789 () Bool)

(assert (= b_lambda!198785 (or d!1649161 b_lambda!198789)))

(declare-fun bs!1191374 () Bool)

(declare-fun d!1649375 () Bool)

(assert (= bs!1191374 (and d!1649375 d!1649161)))

(assert (=> bs!1191374 (= (dynLambda!23572 lambda!249904 lt!2094044) (= (list!19147 (dynLambda!23567 (toChars!11410 (transformation!8528 rule!158)) (dynLambda!23571 (toValue!11551 (transformation!8528 rule!158)) lt!2094044))) (list!19147 lt!2094044)))))

(declare-fun b_lambda!198791 () Bool)

(assert (=> (not b_lambda!198791) (not bs!1191374)))

(assert (=> bs!1191374 t!371769))

(declare-fun b_and!350415 () Bool)

(assert (= b_and!350405 (and (=> t!371769 result!328912) b_and!350415)))

(declare-fun b_lambda!198793 () Bool)

(assert (=> (not b_lambda!198793) (not bs!1191374)))

(assert (=> bs!1191374 t!371771))

(declare-fun b_and!350417 () Bool)

(assert (= b_and!350413 (and (=> t!371771 result!328914) b_and!350417)))

(assert (=> bs!1191374 m!6153968))

(assert (=> bs!1191374 m!6153970))

(assert (=> bs!1191374 m!6153966))

(assert (=> bs!1191374 m!6153964))

(assert (=> bs!1191374 m!6153966))

(assert (=> bs!1191374 m!6153968))

(assert (=> d!1649275 d!1649375))

(check-sat (not b!5097187) (not b!5096957) (not b!5097109) (not b!5097231) (not d!1649223) (not b!5097262) (not b!5097285) (not bm!354902) (not b!5097261) (not b!5097286) (not d!1649257) (not d!1649229) (not b!5097014) (not b!5097007) (not b_next!134293) (not b_lambda!198791) (not d!1649225) (not b!5097142) (not b!5097002) (not b!5096974) (not d!1649307) (not d!1649317) (not d!1649275) (not bm!354897) (not b!5097277) (not d!1649359) (not d!1649333) (not d!1649269) (not b!5097265) (not b!5097114) (not b!5097269) (not bm!354873) (not bm!354898) (not b!5097282) (not d!1649241) (not d!1649287) (not d!1649367) (not b!5097270) (not b!5096983) (not b!5097146) (not b!5096966) (not b!5097274) (not b!5097272) (not b_lambda!198775) (not b!5097223) (not bm!354927) (not b!5096996) (not b!5097251) (not d!1649295) (not b!5096960) (not bm!354901) (not b!5096980) (not b!5097113) (not b!5096769) (not b!5097004) (not b!5096975) (not b!5097281) b_and!350415 (not d!1649251) (not d!1649351) (not b_lambda!198777) (not b!5097144) (not b!5097252) (not b!5097003) (not b!5097229) (not b!5097117) (not b!5096978) (not d!1649319) (not b!5097264) (not d!1649219) (not b!5096964) (not d!1649279) (not d!1649283) (not bm!354903) (not b!5096911) (not b!5097081) (not b_next!134295) (not bm!354913) (not b!5097237) (not b_lambda!198789) (not b!5096971) (not b!5097031) (not b!5097250) (not d!1649253) (not bm!354900) (not d!1649227) (not b!5097242) (not d!1649255) (not b!5097283) (not b!5097263) (not b!5096956) (not b!5096979) (not d!1649363) (not b!5096982) (not b!5097191) (not b!5096961) (not b_lambda!198793) (not d!1649339) (not b!5096913) (not b!5097006) (not d!1649249) (not bs!1191374) (not d!1649273) (not d!1649239) (not d!1649237) (not b_lambda!198787) (not b!5096945) (not b!5096912) (not bm!354871) (not b!5097177) (not b!5096938) (not bm!354896) (not bm!354874) (not b!5097268) (not b!5097275) (not d!1649231) (not d!1649347) (not d!1649289) (not b!5097287) (not b!5097266) (not d!1649297) (not bm!354926) (not b!5096993) (not b!5097186) (not b!5097190) (not bm!354922) (not d!1649271) (not b!5097278) (not d!1649369) (not bm!354899) (not b!5097273) (not b!5097180) (not b!5096991) (not b!5096967) (not b!5097129) (not b!5096970) (not bm!354923) (not d!1649263) (not b!5096663) (not b!5097279) tp_is_empty!37271 (not b_lambda!198773) (not b!5097244) (not b!5097188) b_and!350417)
(check-sat b_and!350415 b_and!350417 (not b_next!134293) (not b_next!134295))
