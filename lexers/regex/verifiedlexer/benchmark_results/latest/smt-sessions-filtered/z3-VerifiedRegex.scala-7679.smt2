; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404374 () Bool)

(assert start!404374)

(declare-fun b!4228640 () Bool)

(declare-fun b_free!124859 () Bool)

(declare-fun b_next!125563 () Bool)

(assert (=> b!4228640 (= b_free!124859 (not b_next!125563))))

(declare-fun tp!1295337 () Bool)

(declare-fun b_and!334097 () Bool)

(assert (=> b!4228640 (= tp!1295337 b_and!334097)))

(declare-fun b_free!124861 () Bool)

(declare-fun b_next!125565 () Bool)

(assert (=> b!4228640 (= b_free!124861 (not b_next!125565))))

(declare-fun tp!1295334 () Bool)

(declare-fun b_and!334099 () Bool)

(assert (=> b!4228640 (= tp!1295334 b_and!334099)))

(declare-fun b!4228636 () Bool)

(declare-fun b_free!124863 () Bool)

(declare-fun b_next!125567 () Bool)

(assert (=> b!4228636 (= b_free!124863 (not b_next!125567))))

(declare-fun tp!1295332 () Bool)

(declare-fun b_and!334101 () Bool)

(assert (=> b!4228636 (= tp!1295332 b_and!334101)))

(declare-fun b_free!124865 () Bool)

(declare-fun b_next!125569 () Bool)

(assert (=> b!4228636 (= b_free!124865 (not b_next!125569))))

(declare-fun tp!1295333 () Bool)

(declare-fun b_and!334103 () Bool)

(assert (=> b!4228636 (= tp!1295333 b_and!334103)))

(declare-fun b!4228630 () Bool)

(declare-fun res!1738860 () Bool)

(declare-fun e!2625713 () Bool)

(assert (=> b!4228630 (=> (not res!1738860) (not e!2625713))))

(declare-datatypes ((C!25748 0))(
  ( (C!25749 (val!15036 Int)) )
))
(declare-datatypes ((List!46804 0))(
  ( (Nil!46680) (Cons!46680 (h!52100 C!25748) (t!349425 List!46804)) )
))
(declare-fun pBis!134 () List!46804)

(declare-fun input!3586 () List!46804)

(declare-fun isPrefix!4685 (List!46804 List!46804) Bool)

(assert (=> b!4228630 (= res!1738860 (isPrefix!4685 pBis!134 input!3586))))

(declare-fun e!2625708 () Bool)

(declare-fun e!2625704 () Bool)

(declare-datatypes ((List!46805 0))(
  ( (Nil!46681) (Cons!46681 (h!52101 (_ BitVec 16)) (t!349426 List!46805)) )
))
(declare-datatypes ((TokenValue!8100 0))(
  ( (FloatLiteralValue!16200 (text!57145 List!46805)) (TokenValueExt!8099 (__x!28423 Int)) (Broken!40500 (value!244767 List!46805)) (Object!8223) (End!8100) (Def!8100) (Underscore!8100) (Match!8100) (Else!8100) (Error!8100) (Case!8100) (If!8100) (Extends!8100) (Abstract!8100) (Class!8100) (Val!8100) (DelimiterValue!16200 (del!8160 List!46805)) (KeywordValue!8106 (value!244768 List!46805)) (CommentValue!16200 (value!244769 List!46805)) (WhitespaceValue!16200 (value!244770 List!46805)) (IndentationValue!8100 (value!244771 List!46805)) (String!54373) (Int32!8100) (Broken!40501 (value!244772 List!46805)) (Boolean!8101) (Unit!65780) (OperatorValue!8103 (op!8160 List!46805)) (IdentifierValue!16200 (value!244773 List!46805)) (IdentifierValue!16201 (value!244774 List!46805)) (WhitespaceValue!16201 (value!244775 List!46805)) (True!16200) (False!16200) (Broken!40502 (value!244776 List!46805)) (Broken!40503 (value!244777 List!46805)) (True!16201) (RightBrace!8100) (RightBracket!8100) (Colon!8100) (Null!8100) (Comma!8100) (LeftBracket!8100) (False!16201) (LeftBrace!8100) (ImaginaryLiteralValue!8100 (text!57146 List!46805)) (StringLiteralValue!24300 (value!244778 List!46805)) (EOFValue!8100 (value!244779 List!46805)) (IdentValue!8100 (value!244780 List!46805)) (DelimiterValue!16201 (value!244781 List!46805)) (DedentValue!8100 (value!244782 List!46805)) (NewLineValue!8100 (value!244783 List!46805)) (IntegerValue!24300 (value!244784 (_ BitVec 32)) (text!57147 List!46805)) (IntegerValue!24301 (value!244785 Int) (text!57148 List!46805)) (Times!8100) (Or!8100) (Equal!8100) (Minus!8100) (Broken!40504 (value!244786 List!46805)) (And!8100) (Div!8100) (LessEqual!8100) (Mod!8100) (Concat!20875) (Not!8100) (Plus!8100) (SpaceValue!8100 (value!244787 List!46805)) (IntegerValue!24302 (value!244788 Int) (text!57149 List!46805)) (StringLiteralValue!24301 (text!57150 List!46805)) (FloatLiteralValue!16201 (text!57151 List!46805)) (BytesLiteralValue!8100 (value!244789 List!46805)) (CommentValue!16201 (value!244790 List!46805)) (StringLiteralValue!24302 (value!244791 List!46805)) (ErrorTokenValue!8100 (msg!8161 List!46805)) )
))
(declare-datatypes ((String!54374 0))(
  ( (String!54375 (value!244792 String)) )
))
(declare-datatypes ((IArray!28167 0))(
  ( (IArray!28168 (innerList!14141 List!46804)) )
))
(declare-datatypes ((Conc!14081 0))(
  ( (Node!14081 (left!34720 Conc!14081) (right!35050 Conc!14081) (csize!28392 Int) (cheight!14292 Int)) (Leaf!21761 (xs!17387 IArray!28167) (csize!28393 Int)) (Empty!14081) )
))
(declare-datatypes ((BalanceConc!27756 0))(
  ( (BalanceConc!27757 (c!718788 Conc!14081)) )
))
(declare-datatypes ((TokenValueInjection!15628 0))(
  ( (TokenValueInjection!15629 (toValue!10598 Int) (toChars!10457 Int)) )
))
(declare-datatypes ((Regex!12775 0))(
  ( (ElementMatch!12775 (c!718789 C!25748)) (Concat!20876 (regOne!26062 Regex!12775) (regTwo!26062 Regex!12775)) (EmptyExpr!12775) (Star!12775 (reg!13104 Regex!12775)) (EmptyLang!12775) (Union!12775 (regOne!26063 Regex!12775) (regTwo!26063 Regex!12775)) )
))
(declare-datatypes ((Rule!15540 0))(
  ( (Rule!15541 (regex!7870 Regex!12775) (tag!8734 String!54374) (isSeparator!7870 Bool) (transformation!7870 TokenValueInjection!15628)) )
))
(declare-fun r!4334 () Rule!15540)

(declare-fun tp!1295328 () Bool)

(declare-fun b!4228631 () Bool)

(declare-fun inv!61346 (String!54374) Bool)

(declare-fun inv!61349 (TokenValueInjection!15628) Bool)

(assert (=> b!4228631 (= e!2625708 (and tp!1295328 (inv!61346 (tag!8734 r!4334)) (inv!61349 (transformation!7870 r!4334)) e!2625704))))

(declare-fun b!4228632 () Bool)

(declare-fun e!2625718 () Bool)

(assert (=> b!4228632 (= e!2625713 e!2625718)))

(declare-fun res!1738858 () Bool)

(assert (=> b!4228632 (=> (not res!1738858) (not e!2625718))))

(declare-fun lt!1503393 () Int)

(declare-fun lt!1503394 () Int)

(assert (=> b!4228632 (= res!1738858 (<= lt!1503393 lt!1503394))))

(declare-fun size!34198 (List!46804) Int)

(assert (=> b!4228632 (= lt!1503394 (size!34198 input!3586))))

(assert (=> b!4228632 (= lt!1503393 (size!34198 pBis!134))))

(declare-fun b!4228633 () Bool)

(declare-fun e!2625705 () Bool)

(assert (=> b!4228633 (= e!2625705 true)))

(declare-datatypes ((tuple2!44272 0))(
  ( (tuple2!44273 (_1!25270 List!46804) (_2!25270 List!46804)) )
))
(declare-fun lt!1503392 () tuple2!44272)

(declare-fun findLongestMatchInner!1679 (Regex!12775 List!46804 Int List!46804 List!46804 Int) tuple2!44272)

(assert (=> b!4228633 (= lt!1503392 (findLongestMatchInner!1679 (regex!7870 r!4334) Nil!46680 (size!34198 Nil!46680) input!3586 input!3586 lt!1503394))))

(declare-fun res!1738859 () Bool)

(assert (=> start!404374 (=> (not res!1738859) (not e!2625713))))

(declare-datatypes ((LexerInterface!7465 0))(
  ( (LexerInterfaceExt!7462 (__x!28424 Int)) (Lexer!7463) )
))
(declare-fun thiss!26785 () LexerInterface!7465)

(get-info :version)

(assert (=> start!404374 (= res!1738859 ((_ is Lexer!7463) thiss!26785))))

(assert (=> start!404374 e!2625713))

(assert (=> start!404374 true))

(declare-fun e!2625706 () Bool)

(assert (=> start!404374 e!2625706))

(declare-datatypes ((Token!14374 0))(
  ( (Token!14375 (value!244793 TokenValue!8100) (rule!10984 Rule!15540) (size!34199 Int) (originalCharacters!8218 List!46804)) )
))
(declare-fun t!8425 () Token!14374)

(declare-fun e!2625703 () Bool)

(declare-fun inv!61350 (Token!14374) Bool)

(assert (=> start!404374 (and (inv!61350 t!8425) e!2625703)))

(assert (=> start!404374 e!2625708))

(declare-fun e!2625715 () Bool)

(assert (=> start!404374 e!2625715))

(declare-fun e!2625717 () Bool)

(assert (=> start!404374 e!2625717))

(declare-fun e!2625709 () Bool)

(assert (=> start!404374 e!2625709))

(declare-fun b!4228634 () Bool)

(declare-fun tp_is_empty!22485 () Bool)

(declare-fun tp!1295329 () Bool)

(assert (=> b!4228634 (= e!2625706 (and tp_is_empty!22485 tp!1295329))))

(declare-fun b!4228635 () Bool)

(declare-fun e!2625710 () Bool)

(assert (=> b!4228635 (= e!2625718 e!2625710)))

(declare-fun res!1738863 () Bool)

(assert (=> b!4228635 (=> (not res!1738863) (not e!2625710))))

(declare-fun lt!1503391 () Int)

(assert (=> b!4228635 (= res!1738863 (> lt!1503393 lt!1503391))))

(declare-fun p!3014 () List!46804)

(assert (=> b!4228635 (= lt!1503391 (size!34198 p!3014))))

(declare-fun e!2625716 () Bool)

(assert (=> b!4228636 (= e!2625716 (and tp!1295332 tp!1295333))))

(declare-fun b!4228637 () Bool)

(declare-fun res!1738861 () Bool)

(assert (=> b!4228637 (=> (not res!1738861) (not e!2625710))))

(declare-fun matchR!6414 (Regex!12775 List!46804) Bool)

(assert (=> b!4228637 (= res!1738861 (matchR!6414 (regex!7870 r!4334) p!3014))))

(declare-fun b!4228638 () Bool)

(declare-fun tp!1295338 () Bool)

(assert (=> b!4228638 (= e!2625709 (and tp_is_empty!22485 tp!1295338))))

(declare-fun b!4228639 () Bool)

(declare-fun res!1738868 () Bool)

(assert (=> b!4228639 (=> (not res!1738868) (not e!2625710))))

(declare-fun validRegex!5793 (Regex!12775) Bool)

(assert (=> b!4228639 (= res!1738868 (validRegex!5793 (regex!7870 r!4334)))))

(assert (=> b!4228640 (= e!2625704 (and tp!1295337 tp!1295334))))

(declare-fun tp!1295336 () Bool)

(declare-fun e!2625711 () Bool)

(declare-fun b!4228641 () Bool)

(declare-fun inv!21 (TokenValue!8100) Bool)

(assert (=> b!4228641 (= e!2625703 (and (inv!21 (value!244793 t!8425)) e!2625711 tp!1295336))))

(declare-fun b!4228642 () Bool)

(declare-fun res!1738862 () Bool)

(assert (=> b!4228642 (=> (not res!1738862) (not e!2625713))))

(declare-fun suffix!1590 () List!46804)

(declare-fun ++!11900 (List!46804 List!46804) List!46804)

(assert (=> b!4228642 (= res!1738862 (= (++!11900 p!3014 suffix!1590) input!3586))))

(declare-fun b!4228643 () Bool)

(declare-fun tp!1295331 () Bool)

(assert (=> b!4228643 (= e!2625715 (and tp_is_empty!22485 tp!1295331))))

(declare-fun b!4228644 () Bool)

(declare-fun res!1738867 () Bool)

(assert (=> b!4228644 (=> res!1738867 e!2625705)))

(assert (=> b!4228644 (= res!1738867 (< lt!1503393 lt!1503391))))

(declare-fun b!4228645 () Bool)

(declare-fun tp!1295335 () Bool)

(assert (=> b!4228645 (= e!2625711 (and tp!1295335 (inv!61346 (tag!8734 (rule!10984 t!8425))) (inv!61349 (transformation!7870 (rule!10984 t!8425))) e!2625716))))

(declare-fun b!4228646 () Bool)

(declare-fun res!1738866 () Bool)

(assert (=> b!4228646 (=> (not res!1738866) (not e!2625710))))

(declare-fun ruleValid!3566 (LexerInterface!7465 Rule!15540) Bool)

(assert (=> b!4228646 (= res!1738866 (ruleValid!3566 thiss!26785 r!4334))))

(declare-fun b!4228647 () Bool)

(assert (=> b!4228647 (= e!2625710 (not e!2625705))))

(declare-fun res!1738857 () Bool)

(assert (=> b!4228647 (=> res!1738857 e!2625705)))

(declare-datatypes ((tuple2!44274 0))(
  ( (tuple2!44275 (_1!25271 Token!14374) (_2!25271 List!46804)) )
))
(declare-datatypes ((Option!10018 0))(
  ( (None!10017) (Some!10017 (v!40945 tuple2!44274)) )
))
(declare-fun maxPrefixOneRule!3412 (LexerInterface!7465 Rule!15540 List!46804) Option!10018)

(assert (=> b!4228647 (= res!1738857 (not (= (maxPrefixOneRule!3412 thiss!26785 r!4334 input!3586) (Some!10017 (tuple2!44275 t!8425 suffix!1590)))))))

(assert (=> b!4228647 (isPrefix!4685 input!3586 input!3586)))

(declare-datatypes ((Unit!65781 0))(
  ( (Unit!65782) )
))
(declare-fun lt!1503390 () Unit!65781)

(declare-fun lemmaIsPrefixRefl!3096 (List!46804 List!46804) Unit!65781)

(assert (=> b!4228647 (= lt!1503390 (lemmaIsPrefixRefl!3096 input!3586 input!3586))))

(declare-fun b!4228648 () Bool)

(declare-fun res!1738864 () Bool)

(assert (=> b!4228648 (=> (not res!1738864) (not e!2625710))))

(declare-fun list!16848 (BalanceConc!27756) List!46804)

(declare-fun charsOf!5245 (Token!14374) BalanceConc!27756)

(assert (=> b!4228648 (= res!1738864 (= (list!16848 (charsOf!5245 t!8425)) p!3014))))

(declare-fun b!4228649 () Bool)

(declare-fun tp!1295330 () Bool)

(assert (=> b!4228649 (= e!2625717 (and tp_is_empty!22485 tp!1295330))))

(declare-fun b!4228650 () Bool)

(declare-fun res!1738865 () Bool)

(assert (=> b!4228650 (=> (not res!1738865) (not e!2625713))))

(assert (=> b!4228650 (= res!1738865 (isPrefix!4685 p!3014 input!3586))))

(assert (= (and start!404374 res!1738859) b!4228642))

(assert (= (and b!4228642 res!1738862) b!4228650))

(assert (= (and b!4228650 res!1738865) b!4228630))

(assert (= (and b!4228630 res!1738860) b!4228632))

(assert (= (and b!4228632 res!1738858) b!4228635))

(assert (= (and b!4228635 res!1738863) b!4228646))

(assert (= (and b!4228646 res!1738866) b!4228639))

(assert (= (and b!4228639 res!1738868) b!4228637))

(assert (= (and b!4228637 res!1738861) b!4228648))

(assert (= (and b!4228648 res!1738864) b!4228647))

(assert (= (and b!4228647 (not res!1738857)) b!4228644))

(assert (= (and b!4228644 (not res!1738867)) b!4228633))

(assert (= (and start!404374 ((_ is Cons!46680) p!3014)) b!4228634))

(assert (= b!4228645 b!4228636))

(assert (= b!4228641 b!4228645))

(assert (= start!404374 b!4228641))

(assert (= b!4228631 b!4228640))

(assert (= start!404374 b!4228631))

(assert (= (and start!404374 ((_ is Cons!46680) input!3586)) b!4228643))

(assert (= (and start!404374 ((_ is Cons!46680) pBis!134)) b!4228649))

(assert (= (and start!404374 ((_ is Cons!46680) suffix!1590)) b!4228638))

(declare-fun m!4815563 () Bool)

(assert (=> b!4228637 m!4815563))

(declare-fun m!4815565 () Bool)

(assert (=> b!4228641 m!4815565))

(declare-fun m!4815567 () Bool)

(assert (=> b!4228645 m!4815567))

(declare-fun m!4815569 () Bool)

(assert (=> b!4228645 m!4815569))

(declare-fun m!4815571 () Bool)

(assert (=> b!4228631 m!4815571))

(declare-fun m!4815573 () Bool)

(assert (=> b!4228631 m!4815573))

(declare-fun m!4815575 () Bool)

(assert (=> start!404374 m!4815575))

(declare-fun m!4815577 () Bool)

(assert (=> b!4228635 m!4815577))

(declare-fun m!4815579 () Bool)

(assert (=> b!4228642 m!4815579))

(declare-fun m!4815581 () Bool)

(assert (=> b!4228639 m!4815581))

(declare-fun m!4815583 () Bool)

(assert (=> b!4228632 m!4815583))

(declare-fun m!4815585 () Bool)

(assert (=> b!4228632 m!4815585))

(declare-fun m!4815587 () Bool)

(assert (=> b!4228648 m!4815587))

(assert (=> b!4228648 m!4815587))

(declare-fun m!4815589 () Bool)

(assert (=> b!4228648 m!4815589))

(declare-fun m!4815591 () Bool)

(assert (=> b!4228630 m!4815591))

(declare-fun m!4815593 () Bool)

(assert (=> b!4228633 m!4815593))

(assert (=> b!4228633 m!4815593))

(declare-fun m!4815595 () Bool)

(assert (=> b!4228633 m!4815595))

(declare-fun m!4815597 () Bool)

(assert (=> b!4228650 m!4815597))

(declare-fun m!4815599 () Bool)

(assert (=> b!4228646 m!4815599))

(declare-fun m!4815601 () Bool)

(assert (=> b!4228647 m!4815601))

(declare-fun m!4815603 () Bool)

(assert (=> b!4228647 m!4815603))

(declare-fun m!4815605 () Bool)

(assert (=> b!4228647 m!4815605))

(check-sat (not b!4228647) (not b!4228650) (not b!4228649) (not b!4228635) (not b!4228638) (not b_next!125563) b_and!334103 (not b!4228631) (not b!4228633) (not b!4228641) (not b!4228637) (not b!4228645) (not b!4228632) (not b!4228646) (not b!4228630) (not b!4228643) (not b_next!125567) tp_is_empty!22485 (not b!4228648) b_and!334099 (not b!4228634) (not b!4228642) (not b_next!125565) (not b!4228639) b_and!334101 b_and!334097 (not start!404374) (not b_next!125569))
(check-sat (not b_next!125567) (not b_next!125563) b_and!334099 (not b_next!125565) b_and!334103 (not b_next!125569) b_and!334101 b_and!334097)
