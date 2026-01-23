; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179422 () Bool)

(assert start!179422)

(declare-fun b!1814029 () Bool)

(declare-fun b_free!49975 () Bool)

(declare-fun b_next!50679 () Bool)

(assert (=> b!1814029 (= b_free!49975 (not b_next!50679))))

(declare-fun tp!512284 () Bool)

(declare-fun b_and!140187 () Bool)

(assert (=> b!1814029 (= tp!512284 b_and!140187)))

(declare-fun b_free!49977 () Bool)

(declare-fun b_next!50681 () Bool)

(assert (=> b!1814029 (= b_free!49977 (not b_next!50681))))

(declare-fun tp!512279 () Bool)

(declare-fun b_and!140189 () Bool)

(assert (=> b!1814029 (= tp!512279 b_and!140189)))

(declare-fun b!1813995 () Bool)

(declare-fun b_free!49979 () Bool)

(declare-fun b_next!50683 () Bool)

(assert (=> b!1813995 (= b_free!49979 (not b_next!50683))))

(declare-fun tp!512290 () Bool)

(declare-fun b_and!140191 () Bool)

(assert (=> b!1813995 (= tp!512290 b_and!140191)))

(declare-fun b_free!49981 () Bool)

(declare-fun b_next!50685 () Bool)

(assert (=> b!1813995 (= b_free!49981 (not b_next!50685))))

(declare-fun tp!512288 () Bool)

(declare-fun b_and!140193 () Bool)

(assert (=> b!1813995 (= tp!512288 b_and!140193)))

(declare-fun b!1814019 () Bool)

(declare-fun b_free!49983 () Bool)

(declare-fun b_next!50687 () Bool)

(assert (=> b!1814019 (= b_free!49983 (not b_next!50687))))

(declare-fun tp!512285 () Bool)

(declare-fun b_and!140195 () Bool)

(assert (=> b!1814019 (= tp!512285 b_and!140195)))

(declare-fun b_free!49985 () Bool)

(declare-fun b_next!50689 () Bool)

(assert (=> b!1814019 (= b_free!49985 (not b_next!50689))))

(declare-fun tp!512286 () Bool)

(declare-fun b_and!140197 () Bool)

(assert (=> b!1814019 (= tp!512286 b_and!140197)))

(declare-fun b!1814040 () Bool)

(declare-fun e!1158855 () Bool)

(assert (=> b!1814040 (= e!1158855 true)))

(declare-fun b!1814039 () Bool)

(declare-fun e!1158854 () Bool)

(assert (=> b!1814039 (= e!1158854 e!1158855)))

(declare-fun b!1814038 () Bool)

(declare-fun e!1158853 () Bool)

(assert (=> b!1814038 (= e!1158853 e!1158854)))

(declare-fun b!1813991 () Bool)

(assert (=> b!1813991 e!1158853))

(assert (= b!1814039 b!1814040))

(assert (= b!1814038 b!1814039))

(assert (= b!1813991 b!1814038))

(declare-datatypes ((List!19857 0))(
  ( (Nil!19787) (Cons!19787 (h!25188 (_ BitVec 16)) (t!169358 List!19857)) )
))
(declare-datatypes ((TokenValue!3643 0))(
  ( (FloatLiteralValue!7286 (text!25946 List!19857)) (TokenValueExt!3642 (__x!12588 Int)) (Broken!18215 (value!110907 List!19857)) (Object!3712) (End!3643) (Def!3643) (Underscore!3643) (Match!3643) (Else!3643) (Error!3643) (Case!3643) (If!3643) (Extends!3643) (Abstract!3643) (Class!3643) (Val!3643) (DelimiterValue!7286 (del!3703 List!19857)) (KeywordValue!3649 (value!110908 List!19857)) (CommentValue!7286 (value!110909 List!19857)) (WhitespaceValue!7286 (value!110910 List!19857)) (IndentationValue!3643 (value!110911 List!19857)) (String!22546) (Int32!3643) (Broken!18216 (value!110912 List!19857)) (Boolean!3644) (Unit!34424) (OperatorValue!3646 (op!3703 List!19857)) (IdentifierValue!7286 (value!110913 List!19857)) (IdentifierValue!7287 (value!110914 List!19857)) (WhitespaceValue!7287 (value!110915 List!19857)) (True!7286) (False!7286) (Broken!18217 (value!110916 List!19857)) (Broken!18218 (value!110917 List!19857)) (True!7287) (RightBrace!3643) (RightBracket!3643) (Colon!3643) (Null!3643) (Comma!3643) (LeftBracket!3643) (False!7287) (LeftBrace!3643) (ImaginaryLiteralValue!3643 (text!25947 List!19857)) (StringLiteralValue!10929 (value!110918 List!19857)) (EOFValue!3643 (value!110919 List!19857)) (IdentValue!3643 (value!110920 List!19857)) (DelimiterValue!7287 (value!110921 List!19857)) (DedentValue!3643 (value!110922 List!19857)) (NewLineValue!3643 (value!110923 List!19857)) (IntegerValue!10929 (value!110924 (_ BitVec 32)) (text!25948 List!19857)) (IntegerValue!10930 (value!110925 Int) (text!25949 List!19857)) (Times!3643) (Or!3643) (Equal!3643) (Minus!3643) (Broken!18219 (value!110926 List!19857)) (And!3643) (Div!3643) (LessEqual!3643) (Mod!3643) (Concat!8524) (Not!3643) (Plus!3643) (SpaceValue!3643 (value!110927 List!19857)) (IntegerValue!10931 (value!110928 Int) (text!25950 List!19857)) (StringLiteralValue!10930 (text!25951 List!19857)) (FloatLiteralValue!7287 (text!25952 List!19857)) (BytesLiteralValue!3643 (value!110929 List!19857)) (CommentValue!7287 (value!110930 List!19857)) (StringLiteralValue!10931 (value!110931 List!19857)) (ErrorTokenValue!3643 (msg!3704 List!19857)) )
))
(declare-datatypes ((C!9936 0))(
  ( (C!9937 (val!5564 Int)) )
))
(declare-datatypes ((List!19858 0))(
  ( (Nil!19788) (Cons!19788 (h!25189 C!9936) (t!169359 List!19858)) )
))
(declare-datatypes ((Regex!4881 0))(
  ( (ElementMatch!4881 (c!296326 C!9936)) (Concat!8525 (regOne!10274 Regex!4881) (regTwo!10274 Regex!4881)) (EmptyExpr!4881) (Star!4881 (reg!5210 Regex!4881)) (EmptyLang!4881) (Union!4881 (regOne!10275 Regex!4881) (regTwo!10275 Regex!4881)) )
))
(declare-datatypes ((String!22547 0))(
  ( (String!22548 (value!110932 String)) )
))
(declare-datatypes ((IArray!13171 0))(
  ( (IArray!13172 (innerList!6643 List!19858)) )
))
(declare-datatypes ((Conc!6583 0))(
  ( (Node!6583 (left!15877 Conc!6583) (right!16207 Conc!6583) (csize!13396 Int) (cheight!6794 Int)) (Leaf!9580 (xs!9459 IArray!13171) (csize!13397 Int)) (Empty!6583) )
))
(declare-datatypes ((BalanceConc!13110 0))(
  ( (BalanceConc!13111 (c!296327 Conc!6583)) )
))
(declare-datatypes ((TokenValueInjection!6946 0))(
  ( (TokenValueInjection!6947 (toValue!5084 Int) (toChars!4943 Int)) )
))
(declare-datatypes ((Rule!6906 0))(
  ( (Rule!6907 (regex!3553 Regex!4881) (tag!3965 String!22547) (isSeparator!3553 Bool) (transformation!3553 TokenValueInjection!6946)) )
))
(declare-datatypes ((Token!6672 0))(
  ( (Token!6673 (value!110933 TokenValue!3643) (rule!5663 Rule!6906) (size!15730 Int) (originalCharacters!4367 List!19858)) )
))
(declare-datatypes ((tuple2!19370 0))(
  ( (tuple2!19371 (_1!11087 Token!6672) (_2!11087 List!19858)) )
))
(declare-fun lt!704620 () tuple2!19370)

(declare-fun lambda!71036 () Int)

(declare-fun order!12917 () Int)

(declare-fun order!12915 () Int)

(declare-fun dynLambda!9845 (Int Int) Int)

(declare-fun dynLambda!9846 (Int Int) Int)

(assert (=> b!1814040 (< (dynLambda!9845 order!12915 (toValue!5084 (transformation!3553 (rule!5663 (_1!11087 lt!704620))))) (dynLambda!9846 order!12917 lambda!71036))))

(declare-fun order!12919 () Int)

(declare-fun dynLambda!9847 (Int Int) Int)

(assert (=> b!1814040 (< (dynLambda!9847 order!12919 (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620))))) (dynLambda!9846 order!12917 lambda!71036))))

(declare-fun b!1813986 () Bool)

(declare-fun res!815549 () Bool)

(declare-fun e!1158834 () Bool)

(assert (=> b!1813986 (=> (not res!815549) (not e!1158834))))

(declare-fun token!523 () Token!6672)

(declare-fun rule!422 () Rule!6906)

(assert (=> b!1813986 (= res!815549 (= (rule!5663 token!523) rule!422))))

(declare-fun b!1813987 () Bool)

(declare-fun e!1158818 () Bool)

(declare-fun e!1158839 () Bool)

(assert (=> b!1813987 (= e!1158818 e!1158839)))

(declare-fun res!815538 () Bool)

(assert (=> b!1813987 (=> (not res!815538) (not e!1158839))))

(declare-fun lt!704594 () Rule!6906)

(declare-fun matchR!2354 (Regex!4881 List!19858) Bool)

(declare-fun list!8057 (BalanceConc!13110) List!19858)

(declare-fun charsOf!2202 (Token!6672) BalanceConc!13110)

(assert (=> b!1813987 (= res!815538 (matchR!2354 (regex!3553 lt!704594) (list!8057 (charsOf!2202 (_1!11087 lt!704620)))))))

(declare-datatypes ((Option!4132 0))(
  ( (None!4131) (Some!4131 (v!25652 Rule!6906)) )
))
(declare-fun lt!704606 () Option!4132)

(declare-fun get!6124 (Option!4132) Rule!6906)

(assert (=> b!1813987 (= lt!704594 (get!6124 lt!704606))))

(declare-fun b!1813988 () Bool)

(declare-fun e!1158838 () Bool)

(declare-fun e!1158846 () Bool)

(assert (=> b!1813988 (= e!1158838 e!1158846)))

(declare-fun res!815541 () Bool)

(assert (=> b!1813988 (=> res!815541 e!1158846)))

(declare-fun lt!704617 () Regex!4881)

(declare-fun lt!704581 () List!19858)

(declare-fun prefixMatch!764 (Regex!4881 List!19858) Bool)

(assert (=> b!1813988 (= res!815541 (prefixMatch!764 lt!704617 lt!704581))))

(declare-fun lt!704615 () List!19858)

(declare-fun suffix!1421 () List!19858)

(declare-fun ++!5383 (List!19858 List!19858) List!19858)

(declare-fun head!4218 (List!19858) C!9936)

(assert (=> b!1813988 (= lt!704581 (++!5383 lt!704615 (Cons!19788 (head!4218 suffix!1421) Nil!19788)))))

(declare-datatypes ((LexerInterface!3182 0))(
  ( (LexerInterfaceExt!3179 (__x!12589 Int)) (Lexer!3180) )
))
(declare-fun thiss!24550 () LexerInterface!3182)

(declare-datatypes ((List!19859 0))(
  ( (Nil!19789) (Cons!19789 (h!25190 Rule!6906) (t!169360 List!19859)) )
))
(declare-fun rules!3447 () List!19859)

(declare-fun rulesRegex!909 (LexerInterface!3182 List!19859) Regex!4881)

(assert (=> b!1813988 (= lt!704617 (rulesRegex!909 thiss!24550 rules!3447))))

(declare-fun b!1813989 () Bool)

(declare-fun e!1158813 () Bool)

(declare-fun e!1158817 () Bool)

(assert (=> b!1813989 (= e!1158813 e!1158817)))

(declare-fun res!815542 () Bool)

(assert (=> b!1813989 (=> res!815542 e!1158817)))

(declare-fun lt!704611 () List!19858)

(declare-fun lt!704627 () BalanceConc!13110)

(declare-fun dynLambda!9848 (Int TokenValue!3643) BalanceConc!13110)

(declare-fun dynLambda!9849 (Int BalanceConc!13110) TokenValue!3643)

(assert (=> b!1813989 (= res!815542 (not (= (list!8057 (dynLambda!9848 (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620)))) (dynLambda!9849 (toValue!5084 (transformation!3553 (rule!5663 (_1!11087 lt!704620)))) lt!704627))) lt!704611)))))

(declare-datatypes ((Unit!34425 0))(
  ( (Unit!34426) )
))
(declare-fun lt!704596 () Unit!34425)

(declare-fun lemmaSemiInverse!691 (TokenValueInjection!6946 BalanceConc!13110) Unit!34425)

(assert (=> b!1813989 (= lt!704596 (lemmaSemiInverse!691 (transformation!3553 (rule!5663 (_1!11087 lt!704620))) lt!704627))))

(declare-fun b!1813990 () Bool)

(declare-fun res!815539 () Bool)

(declare-fun e!1158815 () Bool)

(assert (=> b!1813990 (=> res!815539 e!1158815)))

(assert (=> b!1813990 (= res!815539 (not (matchR!2354 (regex!3553 (rule!5663 (_1!11087 lt!704620))) lt!704611)))))

(declare-fun b!1813992 () Bool)

(declare-fun e!1158843 () Bool)

(declare-fun contains!3587 (List!19859 Rule!6906) Bool)

(assert (=> b!1813992 (= e!1158843 (contains!3587 rules!3447 (rule!5663 token!523)))))

(declare-fun b!1813993 () Bool)

(declare-fun e!1158819 () Unit!34425)

(declare-fun Unit!34427 () Unit!34425)

(assert (=> b!1813993 (= e!1158819 Unit!34427)))

(declare-fun lt!704618 () Unit!34425)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!174 (LexerInterface!3182 List!19859 Rule!6906 List!19858 List!19858 Rule!6906) Unit!34425)

(assert (=> b!1813993 (= lt!704618 (lemmaMaxPrefNoSmallerRuleMatches!174 thiss!24550 rules!3447 (rule!5663 token!523) lt!704615 lt!704615 (rule!5663 (_1!11087 lt!704620))))))

(declare-fun res!815550 () Bool)

(assert (=> b!1813993 (= res!815550 (not (matchR!2354 (regex!3553 (rule!5663 (_1!11087 lt!704620))) lt!704615)))))

(declare-fun e!1158844 () Bool)

(assert (=> b!1813993 (=> (not res!815550) (not e!1158844))))

(assert (=> b!1813993 e!1158844))

(declare-fun b!1813994 () Bool)

(declare-fun e!1158841 () Unit!34425)

(declare-fun Unit!34428 () Unit!34425)

(assert (=> b!1813994 (= e!1158841 Unit!34428)))

(declare-fun e!1158826 () Bool)

(assert (=> b!1813995 (= e!1158826 (and tp!512290 tp!512288))))

(declare-fun b!1813996 () Bool)

(declare-fun e!1158840 () Unit!34425)

(declare-fun Unit!34429 () Unit!34425)

(assert (=> b!1813996 (= e!1158840 Unit!34429)))

(declare-fun b!1813997 () Bool)

(declare-fun e!1158836 () Unit!34425)

(declare-fun Unit!34430 () Unit!34425)

(assert (=> b!1813997 (= e!1158836 Unit!34430)))

(declare-fun tp!512282 () Bool)

(declare-fun b!1813998 () Bool)

(declare-fun e!1158829 () Bool)

(declare-fun e!1158825 () Bool)

(declare-fun inv!21 (TokenValue!3643) Bool)

(assert (=> b!1813998 (= e!1158825 (and (inv!21 (value!110933 token!523)) e!1158829 tp!512282))))

(declare-fun b!1813999 () Bool)

(assert (=> b!1813999 (= e!1158839 (= (rule!5663 (_1!11087 lt!704620)) lt!704594))))

(declare-fun b!1814000 () Bool)

(declare-fun e!1158814 () Bool)

(assert (=> b!1814000 (= e!1158814 e!1158843)))

(declare-fun res!815551 () Bool)

(assert (=> b!1814000 (=> res!815551 e!1158843)))

(declare-fun lt!704612 () Int)

(declare-fun lt!704599 () Int)

(assert (=> b!1814000 (= res!815551 (not (= lt!704612 lt!704599)))))

(declare-fun lt!704614 () Unit!34425)

(assert (=> b!1814000 (= lt!704614 e!1158819)))

(declare-fun c!296322 () Bool)

(assert (=> b!1814000 (= c!296322 (< lt!704612 lt!704599))))

(declare-fun lt!704610 () Unit!34425)

(assert (=> b!1814000 (= lt!704610 e!1158841)))

(declare-fun c!296323 () Bool)

(assert (=> b!1814000 (= c!296323 (< lt!704599 lt!704612))))

(declare-fun getIndex!218 (List!19859 Rule!6906) Int)

(assert (=> b!1814000 (= lt!704612 (getIndex!218 rules!3447 (rule!5663 (_1!11087 lt!704620))))))

(assert (=> b!1814000 (= lt!704599 (getIndex!218 rules!3447 (rule!5663 token!523)))))

(declare-fun b!1814001 () Bool)

(declare-fun Unit!34431 () Unit!34425)

(assert (=> b!1814001 (= e!1158840 Unit!34431)))

(declare-fun lt!704604 () List!19858)

(declare-fun lt!704582 () Unit!34425)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!262 (LexerInterface!3182 List!19859 Rule!6906 List!19858 List!19858 List!19858 Rule!6906) Unit!34425)

(assert (=> b!1814001 (= lt!704582 (lemmaMaxPrefixOutputsMaxPrefix!262 thiss!24550 rules!3447 (rule!5663 (_1!11087 lt!704620)) lt!704611 lt!704604 lt!704615 rule!422))))

(assert (=> b!1814001 false))

(declare-fun b!1814002 () Bool)

(declare-fun res!815535 () Bool)

(declare-fun e!1158837 () Bool)

(assert (=> b!1814002 (=> (not res!815535) (not e!1158837))))

(declare-fun rulesInvariant!2851 (LexerInterface!3182 List!19859) Bool)

(assert (=> b!1814002 (= res!815535 (rulesInvariant!2851 thiss!24550 rules!3447))))

(declare-fun b!1814003 () Bool)

(declare-fun e!1158816 () Bool)

(assert (=> b!1814003 (= e!1158816 e!1158834)))

(declare-fun res!815528 () Bool)

(assert (=> b!1814003 (=> (not res!815528) (not e!1158834))))

(declare-fun lt!704600 () tuple2!19370)

(assert (=> b!1814003 (= res!815528 (= (_1!11087 lt!704600) token!523))))

(declare-datatypes ((Option!4133 0))(
  ( (None!4132) (Some!4132 (v!25653 tuple2!19370)) )
))
(declare-fun lt!704601 () Option!4133)

(declare-fun get!6125 (Option!4133) tuple2!19370)

(assert (=> b!1814003 (= lt!704600 (get!6125 lt!704601))))

(declare-fun b!1814004 () Bool)

(declare-fun e!1158827 () Bool)

(assert (=> b!1814004 (= e!1158827 false)))

(declare-fun b!1814005 () Bool)

(declare-fun tp!512281 () Bool)

(declare-fun e!1158820 () Bool)

(declare-fun inv!25792 (String!22547) Bool)

(declare-fun inv!25797 (TokenValueInjection!6946) Bool)

(assert (=> b!1814005 (= e!1158829 (and tp!512281 (inv!25792 (tag!3965 (rule!5663 token!523))) (inv!25797 (transformation!3553 (rule!5663 token!523))) e!1158820))))

(declare-fun b!1814006 () Bool)

(declare-fun e!1158823 () Bool)

(declare-fun e!1158824 () Bool)

(assert (=> b!1814006 (= e!1158823 e!1158824)))

(declare-fun res!815540 () Bool)

(assert (=> b!1814006 (=> res!815540 e!1158824)))

(declare-fun lt!704597 () Option!4133)

(declare-fun lt!704613 () List!19858)

(assert (=> b!1814006 (= res!815540 (or (not (= lt!704613 (_2!11087 lt!704620))) (not (= lt!704597 (Some!4132 (tuple2!19371 (_1!11087 lt!704620) lt!704613))))))))

(assert (=> b!1814006 (= (_2!11087 lt!704620) lt!704613)))

(declare-fun lt!704628 () Unit!34425)

(declare-fun lemmaSamePrefixThenSameSuffix!904 (List!19858 List!19858 List!19858 List!19858 List!19858) Unit!34425)

(assert (=> b!1814006 (= lt!704628 (lemmaSamePrefixThenSameSuffix!904 lt!704611 (_2!11087 lt!704620) lt!704611 lt!704613 lt!704604))))

(declare-fun getSuffix!960 (List!19858 List!19858) List!19858)

(assert (=> b!1814006 (= lt!704613 (getSuffix!960 lt!704604 lt!704611))))

(declare-fun lt!704586 () Int)

(declare-fun lt!704605 () TokenValue!3643)

(assert (=> b!1814006 (= lt!704597 (Some!4132 (tuple2!19371 (Token!6673 lt!704605 (rule!5663 (_1!11087 lt!704620)) lt!704586 lt!704611) (_2!11087 lt!704620))))))

(declare-fun maxPrefixOneRule!1105 (LexerInterface!3182 Rule!6906 List!19858) Option!4133)

(assert (=> b!1814006 (= lt!704597 (maxPrefixOneRule!1105 thiss!24550 (rule!5663 (_1!11087 lt!704620)) lt!704604))))

(declare-fun size!15731 (List!19858) Int)

(assert (=> b!1814006 (= lt!704586 (size!15731 lt!704611))))

(declare-fun apply!5353 (TokenValueInjection!6946 BalanceConc!13110) TokenValue!3643)

(declare-fun seqFromList!2522 (List!19858) BalanceConc!13110)

(assert (=> b!1814006 (= lt!704605 (apply!5353 (transformation!3553 (rule!5663 (_1!11087 lt!704620))) (seqFromList!2522 lt!704611)))))

(declare-fun lt!704584 () Unit!34425)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!483 (LexerInterface!3182 List!19859 List!19858 List!19858 List!19858 Rule!6906) Unit!34425)

(assert (=> b!1814006 (= lt!704584 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!483 thiss!24550 rules!3447 lt!704611 lt!704604 (_2!11087 lt!704620) (rule!5663 (_1!11087 lt!704620))))))

(declare-fun b!1814007 () Bool)

(assert (=> b!1814007 (= e!1158846 e!1158815)))

(declare-fun res!815545 () Bool)

(assert (=> b!1814007 (=> res!815545 e!1158815)))

(declare-fun isPrefix!1793 (List!19858 List!19858) Bool)

(assert (=> b!1814007 (= res!815545 (not (isPrefix!1793 lt!704611 lt!704604)))))

(assert (=> b!1814007 (isPrefix!1793 lt!704611 (++!5383 lt!704611 (_2!11087 lt!704620)))))

(declare-fun lt!704589 () Unit!34425)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1302 (List!19858 List!19858) Unit!34425)

(assert (=> b!1814007 (= lt!704589 (lemmaConcatTwoListThenFirstIsPrefix!1302 lt!704611 (_2!11087 lt!704620)))))

(assert (=> b!1814007 (= lt!704611 (list!8057 lt!704627))))

(assert (=> b!1814007 (= lt!704627 (charsOf!2202 (_1!11087 lt!704620)))))

(assert (=> b!1814007 e!1158818))

(declare-fun res!815527 () Bool)

(assert (=> b!1814007 (=> (not res!815527) (not e!1158818))))

(declare-fun isDefined!3473 (Option!4132) Bool)

(assert (=> b!1814007 (= res!815527 (isDefined!3473 lt!704606))))

(declare-fun getRuleFromTag!601 (LexerInterface!3182 List!19859 String!22547) Option!4132)

(assert (=> b!1814007 (= lt!704606 (getRuleFromTag!601 thiss!24550 rules!3447 (tag!3965 (rule!5663 (_1!11087 lt!704620)))))))

(declare-fun lt!704625 () Unit!34425)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!601 (LexerInterface!3182 List!19859 List!19858 Token!6672) Unit!34425)

(assert (=> b!1814007 (= lt!704625 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!601 thiss!24550 rules!3447 lt!704604 (_1!11087 lt!704620)))))

(declare-fun lt!704588 () Option!4133)

(assert (=> b!1814007 (= lt!704620 (get!6125 lt!704588))))

(declare-fun lt!704626 () Unit!34425)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!704 (LexerInterface!3182 List!19859 List!19858 List!19858) Unit!34425)

(assert (=> b!1814007 (= lt!704626 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!704 thiss!24550 rules!3447 lt!704615 suffix!1421))))

(declare-fun maxPrefix!1736 (LexerInterface!3182 List!19859 List!19858) Option!4133)

(assert (=> b!1814007 (= lt!704588 (maxPrefix!1736 thiss!24550 rules!3447 lt!704604))))

(assert (=> b!1814007 (isPrefix!1793 lt!704615 lt!704604)))

(declare-fun lt!704621 () Unit!34425)

(assert (=> b!1814007 (= lt!704621 (lemmaConcatTwoListThenFirstIsPrefix!1302 lt!704615 suffix!1421))))

(assert (=> b!1814007 (= lt!704604 (++!5383 lt!704615 suffix!1421))))

(declare-fun b!1814008 () Bool)

(declare-fun Unit!34432 () Unit!34425)

(assert (=> b!1814008 (= e!1158819 Unit!34432)))

(declare-fun b!1814009 () Bool)

(declare-fun res!815533 () Bool)

(assert (=> b!1814009 (=> res!815533 e!1158838)))

(declare-fun isEmpty!12522 (List!19858) Bool)

(assert (=> b!1814009 (= res!815533 (isEmpty!12522 suffix!1421))))

(declare-fun b!1814010 () Bool)

(declare-fun Unit!34433 () Unit!34425)

(assert (=> b!1814010 (= e!1158841 Unit!34433)))

(declare-fun lt!704585 () Unit!34425)

(assert (=> b!1814010 (= lt!704585 (lemmaMaxPrefNoSmallerRuleMatches!174 thiss!24550 rules!3447 (rule!5663 (_1!11087 lt!704620)) lt!704611 lt!704604 (rule!5663 token!523)))))

(declare-fun res!815536 () Bool)

(assert (=> b!1814010 (= res!815536 (not (matchR!2354 (regex!3553 (rule!5663 token!523)) lt!704611)))))

(assert (=> b!1814010 (=> (not res!815536) (not e!1158827))))

(assert (=> b!1814010 e!1158827))

(declare-fun b!1814011 () Bool)

(declare-fun e!1158812 () Bool)

(declare-fun e!1158835 () Bool)

(assert (=> b!1814011 (= e!1158812 e!1158835)))

(declare-fun res!815529 () Bool)

(assert (=> b!1814011 (=> res!815529 e!1158835)))

(declare-fun lt!704590 () Int)

(declare-fun lt!704580 () Int)

(assert (=> b!1814011 (= res!815529 (not (= lt!704590 lt!704580)))))

(declare-fun lt!704622 () Unit!34425)

(assert (=> b!1814011 (= lt!704622 e!1158840)))

(declare-fun c!296325 () Bool)

(assert (=> b!1814011 (= c!296325 (< lt!704590 lt!704580))))

(declare-fun b!1814012 () Bool)

(assert (=> b!1814012 (= e!1158835 e!1158814)))

(declare-fun res!815530 () Bool)

(assert (=> b!1814012 (=> res!815530 e!1158814)))

(assert (=> b!1814012 (= res!815530 (= (rule!5663 (_1!11087 lt!704620)) (rule!5663 token!523)))))

(assert (=> b!1814012 (= suffix!1421 (_2!11087 lt!704620))))

(declare-fun lt!704616 () Unit!34425)

(assert (=> b!1814012 (= lt!704616 (lemmaSamePrefixThenSameSuffix!904 lt!704615 suffix!1421 lt!704615 (_2!11087 lt!704620) lt!704604))))

(assert (=> b!1814012 (= lt!704611 lt!704615)))

(declare-fun lt!704607 () Unit!34425)

(declare-fun lemmaIsPrefixSameLengthThenSameList!289 (List!19858 List!19858 List!19858) Unit!34425)

(assert (=> b!1814012 (= lt!704607 (lemmaIsPrefixSameLengthThenSameList!289 lt!704611 lt!704615 lt!704604))))

(assert (=> b!1813991 (= e!1158815 e!1158813)))

(declare-fun res!815548 () Bool)

(assert (=> b!1813991 (=> res!815548 e!1158813)))

(declare-fun Forall!920 (Int) Bool)

(assert (=> b!1813991 (= res!815548 (not (Forall!920 lambda!71036)))))

(declare-fun lt!704608 () Unit!34425)

(declare-fun lemmaInv!752 (TokenValueInjection!6946) Unit!34425)

(assert (=> b!1813991 (= lt!704608 (lemmaInv!752 (transformation!3553 (rule!5663 (_1!11087 lt!704620)))))))

(declare-fun res!815544 () Bool)

(assert (=> start!179422 (=> (not res!815544) (not e!1158837))))

(get-info :version)

(assert (=> start!179422 (= res!815544 ((_ is Lexer!3180) thiss!24550))))

(assert (=> start!179422 e!1158837))

(declare-fun e!1158830 () Bool)

(assert (=> start!179422 e!1158830))

(declare-fun e!1158832 () Bool)

(assert (=> start!179422 e!1158832))

(assert (=> start!179422 true))

(declare-fun inv!25798 (Token!6672) Bool)

(assert (=> start!179422 (and (inv!25798 token!523) e!1158825)))

(declare-fun e!1158828 () Bool)

(assert (=> start!179422 e!1158828))

(declare-fun b!1814013 () Bool)

(declare-fun res!815534 () Bool)

(assert (=> b!1814013 (=> (not res!815534) (not e!1158837))))

(declare-fun isEmpty!12523 (List!19859) Bool)

(assert (=> b!1814013 (= res!815534 (not (isEmpty!12523 rules!3447)))))

(declare-fun e!1158821 () Bool)

(declare-fun e!1158833 () Bool)

(declare-fun b!1814014 () Bool)

(declare-fun tp!512280 () Bool)

(assert (=> b!1814014 (= e!1158833 (and tp!512280 (inv!25792 (tag!3965 (h!25190 rules!3447))) (inv!25797 (transformation!3553 (h!25190 rules!3447))) e!1158821))))

(declare-fun b!1814015 () Bool)

(assert (=> b!1814015 (= e!1158817 e!1158823)))

(declare-fun res!815552 () Bool)

(assert (=> b!1814015 (=> res!815552 e!1158823)))

(declare-fun lt!704595 () TokenValue!3643)

(assert (=> b!1814015 (= res!815552 (not (= lt!704588 (Some!4132 (tuple2!19371 (Token!6673 lt!704595 (rule!5663 (_1!11087 lt!704620)) lt!704590 lt!704611) (_2!11087 lt!704620))))))))

(declare-fun size!15732 (BalanceConc!13110) Int)

(assert (=> b!1814015 (= lt!704590 (size!15732 lt!704627))))

(assert (=> b!1814015 (= lt!704595 (apply!5353 (transformation!3553 (rule!5663 (_1!11087 lt!704620))) lt!704627))))

(declare-fun lt!704591 () Unit!34425)

(declare-fun lemmaCharactersSize!611 (Token!6672) Unit!34425)

(assert (=> b!1814015 (= lt!704591 (lemmaCharactersSize!611 (_1!11087 lt!704620)))))

(declare-fun lt!704592 () Unit!34425)

(declare-fun lemmaEqSameImage!464 (TokenValueInjection!6946 BalanceConc!13110 BalanceConc!13110) Unit!34425)

(assert (=> b!1814015 (= lt!704592 (lemmaEqSameImage!464 (transformation!3553 (rule!5663 (_1!11087 lt!704620))) lt!704627 (seqFromList!2522 (originalCharacters!4367 (_1!11087 lt!704620)))))))

(declare-fun b!1814016 () Bool)

(declare-fun res!815526 () Bool)

(assert (=> b!1814016 (=> res!815526 e!1158843)))

(assert (=> b!1814016 (= res!815526 (not (contains!3587 rules!3447 (rule!5663 (_1!11087 lt!704620)))))))

(declare-fun b!1814017 () Bool)

(declare-fun Unit!34434 () Unit!34425)

(assert (=> b!1814017 (= e!1158836 Unit!34434)))

(declare-fun lt!704602 () Unit!34425)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!260 (LexerInterface!3182 List!19859 List!19858 Token!6672 Rule!6906 List!19858) Unit!34425)

(assert (=> b!1814017 (= lt!704602 (lemmaMaxPrefixThenMatchesRulesRegex!260 thiss!24550 rules!3447 lt!704604 (_1!11087 lt!704620) (rule!5663 (_1!11087 lt!704620)) (_2!11087 lt!704620)))))

(assert (=> b!1814017 (matchR!2354 lt!704617 lt!704611)))

(declare-fun lt!704583 () List!19858)

(assert (=> b!1814017 (= lt!704583 (getSuffix!960 lt!704604 lt!704615))))

(declare-fun lt!704603 () Unit!34425)

(assert (=> b!1814017 (= lt!704603 (lemmaSamePrefixThenSameSuffix!904 lt!704615 suffix!1421 lt!704615 lt!704583 lt!704604))))

(assert (=> b!1814017 (= suffix!1421 lt!704583)))

(declare-fun lt!704593 () Unit!34425)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!329 (List!19858 List!19858) Unit!34425)

(assert (=> b!1814017 (= lt!704593 (lemmaAddHeadSuffixToPrefixStillPrefix!329 lt!704615 lt!704604))))

(assert (=> b!1814017 (isPrefix!1793 (++!5383 lt!704615 (Cons!19788 (head!4218 lt!704583) Nil!19788)) lt!704604)))

(declare-fun lt!704598 () Unit!34425)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!201 (List!19858 List!19858 List!19858) Unit!34425)

(assert (=> b!1814017 (= lt!704598 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!201 lt!704611 lt!704581 lt!704604))))

(assert (=> b!1814017 (isPrefix!1793 lt!704581 lt!704611)))

(declare-fun lt!704624 () Unit!34425)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!192 (Regex!4881 List!19858 List!19858) Unit!34425)

(assert (=> b!1814017 (= lt!704624 (lemmaNotPrefixMatchThenCannotMatchLonger!192 lt!704617 lt!704581 lt!704611))))

(assert (=> b!1814017 false))

(declare-fun b!1814018 () Bool)

(assert (=> b!1814018 (= e!1158824 e!1158812)))

(declare-fun res!815543 () Bool)

(assert (=> b!1814018 (=> res!815543 e!1158812)))

(declare-fun lt!704579 () Bool)

(assert (=> b!1814018 (= res!815543 lt!704579)))

(declare-fun lt!704619 () Unit!34425)

(assert (=> b!1814018 (= lt!704619 e!1158836)))

(declare-fun c!296324 () Bool)

(assert (=> b!1814018 (= c!296324 lt!704579)))

(assert (=> b!1814018 (= lt!704579 (> lt!704590 lt!704580))))

(declare-fun lt!704609 () BalanceConc!13110)

(assert (=> b!1814018 (= lt!704580 (size!15732 lt!704609))))

(assert (=> b!1814018 (matchR!2354 lt!704617 lt!704615)))

(declare-fun lt!704623 () Unit!34425)

(assert (=> b!1814018 (= lt!704623 (lemmaMaxPrefixThenMatchesRulesRegex!260 thiss!24550 rules!3447 lt!704615 token!523 rule!422 Nil!19788))))

(assert (=> b!1814019 (= e!1158821 (and tp!512285 tp!512286))))

(declare-fun b!1814020 () Bool)

(declare-fun tp_is_empty!8005 () Bool)

(declare-fun tp!512289 () Bool)

(assert (=> b!1814020 (= e!1158830 (and tp_is_empty!8005 tp!512289))))

(declare-fun b!1814021 () Bool)

(assert (=> b!1814021 (= e!1158834 (not e!1158838))))

(declare-fun res!815546 () Bool)

(assert (=> b!1814021 (=> res!815546 e!1158838)))

(assert (=> b!1814021 (= res!815546 (not (matchR!2354 (regex!3553 rule!422) lt!704615)))))

(declare-fun ruleValid!1051 (LexerInterface!3182 Rule!6906) Bool)

(assert (=> b!1814021 (ruleValid!1051 thiss!24550 rule!422)))

(declare-fun lt!704587 () Unit!34425)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!574 (LexerInterface!3182 Rule!6906 List!19859) Unit!34425)

(assert (=> b!1814021 (= lt!704587 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!574 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1814022 () Bool)

(declare-fun res!815547 () Bool)

(assert (=> b!1814022 (=> res!815547 e!1158817)))

(assert (=> b!1814022 (= res!815547 (not (= lt!704627 (dynLambda!9848 (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620)))) (value!110933 (_1!11087 lt!704620))))))))

(declare-fun b!1814023 () Bool)

(assert (=> b!1814023 (= e!1158844 false)))

(declare-fun b!1814024 () Bool)

(declare-fun tp!512283 () Bool)

(assert (=> b!1814024 (= e!1158832 (and tp!512283 (inv!25792 (tag!3965 rule!422)) (inv!25797 (transformation!3553 rule!422)) e!1158826))))

(declare-fun b!1814025 () Bool)

(declare-fun res!815532 () Bool)

(assert (=> b!1814025 (=> (not res!815532) (not e!1158837))))

(assert (=> b!1814025 (= res!815532 (contains!3587 rules!3447 rule!422))))

(declare-fun b!1814026 () Bool)

(declare-fun res!815537 () Bool)

(assert (=> b!1814026 (=> (not res!815537) (not e!1158834))))

(assert (=> b!1814026 (= res!815537 (isEmpty!12522 (_2!11087 lt!704600)))))

(declare-fun b!1814027 () Bool)

(assert (=> b!1814027 (= e!1158837 e!1158816)))

(declare-fun res!815531 () Bool)

(assert (=> b!1814027 (=> (not res!815531) (not e!1158816))))

(declare-fun isDefined!3474 (Option!4133) Bool)

(assert (=> b!1814027 (= res!815531 (isDefined!3474 lt!704601))))

(assert (=> b!1814027 (= lt!704601 (maxPrefix!1736 thiss!24550 rules!3447 lt!704615))))

(assert (=> b!1814027 (= lt!704615 (list!8057 lt!704609))))

(assert (=> b!1814027 (= lt!704609 (charsOf!2202 token!523))))

(declare-fun b!1814028 () Bool)

(declare-fun tp!512287 () Bool)

(assert (=> b!1814028 (= e!1158828 (and e!1158833 tp!512287))))

(assert (=> b!1814029 (= e!1158820 (and tp!512284 tp!512279))))

(assert (= (and start!179422 res!815544) b!1814013))

(assert (= (and b!1814013 res!815534) b!1814002))

(assert (= (and b!1814002 res!815535) b!1814025))

(assert (= (and b!1814025 res!815532) b!1814027))

(assert (= (and b!1814027 res!815531) b!1814003))

(assert (= (and b!1814003 res!815528) b!1814026))

(assert (= (and b!1814026 res!815537) b!1813986))

(assert (= (and b!1813986 res!815549) b!1814021))

(assert (= (and b!1814021 (not res!815546)) b!1814009))

(assert (= (and b!1814009 (not res!815533)) b!1813988))

(assert (= (and b!1813988 (not res!815541)) b!1814007))

(assert (= (and b!1814007 res!815527) b!1813987))

(assert (= (and b!1813987 res!815538) b!1813999))

(assert (= (and b!1814007 (not res!815545)) b!1813990))

(assert (= (and b!1813990 (not res!815539)) b!1813991))

(assert (= (and b!1813991 (not res!815548)) b!1813989))

(assert (= (and b!1813989 (not res!815542)) b!1814022))

(assert (= (and b!1814022 (not res!815547)) b!1814015))

(assert (= (and b!1814015 (not res!815552)) b!1814006))

(assert (= (and b!1814006 (not res!815540)) b!1814018))

(assert (= (and b!1814018 c!296324) b!1814017))

(assert (= (and b!1814018 (not c!296324)) b!1813997))

(assert (= (and b!1814018 (not res!815543)) b!1814011))

(assert (= (and b!1814011 c!296325) b!1814001))

(assert (= (and b!1814011 (not c!296325)) b!1813996))

(assert (= (and b!1814011 (not res!815529)) b!1814012))

(assert (= (and b!1814012 (not res!815530)) b!1814000))

(assert (= (and b!1814000 c!296323) b!1814010))

(assert (= (and b!1814000 (not c!296323)) b!1813994))

(assert (= (and b!1814010 res!815536) b!1814004))

(assert (= (and b!1814000 c!296322) b!1813993))

(assert (= (and b!1814000 (not c!296322)) b!1814008))

(assert (= (and b!1813993 res!815550) b!1814023))

(assert (= (and b!1814000 (not res!815551)) b!1814016))

(assert (= (and b!1814016 (not res!815526)) b!1813992))

(assert (= (and start!179422 ((_ is Cons!19788) suffix!1421)) b!1814020))

(assert (= b!1814024 b!1813995))

(assert (= start!179422 b!1814024))

(assert (= b!1814005 b!1814029))

(assert (= b!1813998 b!1814005))

(assert (= start!179422 b!1813998))

(assert (= b!1814014 b!1814019))

(assert (= b!1814028 b!1814014))

(assert (= (and start!179422 ((_ is Cons!19789) rules!3447)) b!1814028))

(declare-fun b_lambda!59831 () Bool)

(assert (=> (not b_lambda!59831) (not b!1813989)))

(declare-fun t!169341 () Bool)

(declare-fun tb!110875 () Bool)

(assert (=> (and b!1814029 (= (toChars!4943 (transformation!3553 (rule!5663 token!523))) (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620))))) t!169341) tb!110875))

(declare-fun tp!512293 () Bool)

(declare-fun b!1814045 () Bool)

(declare-fun e!1158858 () Bool)

(declare-fun inv!25799 (Conc!6583) Bool)

(assert (=> b!1814045 (= e!1158858 (and (inv!25799 (c!296327 (dynLambda!9848 (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620)))) (dynLambda!9849 (toValue!5084 (transformation!3553 (rule!5663 (_1!11087 lt!704620)))) lt!704627)))) tp!512293))))

(declare-fun result!133142 () Bool)

(declare-fun inv!25800 (BalanceConc!13110) Bool)

(assert (=> tb!110875 (= result!133142 (and (inv!25800 (dynLambda!9848 (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620)))) (dynLambda!9849 (toValue!5084 (transformation!3553 (rule!5663 (_1!11087 lt!704620)))) lt!704627))) e!1158858))))

(assert (= tb!110875 b!1814045))

(declare-fun m!2243331 () Bool)

(assert (=> b!1814045 m!2243331))

(declare-fun m!2243333 () Bool)

(assert (=> tb!110875 m!2243333))

(assert (=> b!1813989 t!169341))

(declare-fun b_and!140199 () Bool)

(assert (= b_and!140189 (and (=> t!169341 result!133142) b_and!140199)))

(declare-fun tb!110877 () Bool)

(declare-fun t!169343 () Bool)

(assert (=> (and b!1813995 (= (toChars!4943 (transformation!3553 rule!422)) (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620))))) t!169343) tb!110877))

(declare-fun result!133146 () Bool)

(assert (= result!133146 result!133142))

(assert (=> b!1813989 t!169343))

(declare-fun b_and!140201 () Bool)

(assert (= b_and!140193 (and (=> t!169343 result!133146) b_and!140201)))

(declare-fun tb!110879 () Bool)

(declare-fun t!169345 () Bool)

(assert (=> (and b!1814019 (= (toChars!4943 (transformation!3553 (h!25190 rules!3447))) (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620))))) t!169345) tb!110879))

(declare-fun result!133148 () Bool)

(assert (= result!133148 result!133142))

(assert (=> b!1813989 t!169345))

(declare-fun b_and!140203 () Bool)

(assert (= b_and!140197 (and (=> t!169345 result!133148) b_and!140203)))

(declare-fun b_lambda!59833 () Bool)

(assert (=> (not b_lambda!59833) (not b!1813989)))

(declare-fun tb!110881 () Bool)

(declare-fun t!169347 () Bool)

(assert (=> (and b!1814029 (= (toValue!5084 (transformation!3553 (rule!5663 token!523))) (toValue!5084 (transformation!3553 (rule!5663 (_1!11087 lt!704620))))) t!169347) tb!110881))

(declare-fun result!133150 () Bool)

(assert (=> tb!110881 (= result!133150 (inv!21 (dynLambda!9849 (toValue!5084 (transformation!3553 (rule!5663 (_1!11087 lt!704620)))) lt!704627)))))

(declare-fun m!2243335 () Bool)

(assert (=> tb!110881 m!2243335))

(assert (=> b!1813989 t!169347))

(declare-fun b_and!140205 () Bool)

(assert (= b_and!140187 (and (=> t!169347 result!133150) b_and!140205)))

(declare-fun t!169349 () Bool)

(declare-fun tb!110883 () Bool)

(assert (=> (and b!1813995 (= (toValue!5084 (transformation!3553 rule!422)) (toValue!5084 (transformation!3553 (rule!5663 (_1!11087 lt!704620))))) t!169349) tb!110883))

(declare-fun result!133154 () Bool)

(assert (= result!133154 result!133150))

(assert (=> b!1813989 t!169349))

(declare-fun b_and!140207 () Bool)

(assert (= b_and!140191 (and (=> t!169349 result!133154) b_and!140207)))

(declare-fun tb!110885 () Bool)

(declare-fun t!169351 () Bool)

(assert (=> (and b!1814019 (= (toValue!5084 (transformation!3553 (h!25190 rules!3447))) (toValue!5084 (transformation!3553 (rule!5663 (_1!11087 lt!704620))))) t!169351) tb!110885))

(declare-fun result!133156 () Bool)

(assert (= result!133156 result!133150))

(assert (=> b!1813989 t!169351))

(declare-fun b_and!140209 () Bool)

(assert (= b_and!140195 (and (=> t!169351 result!133156) b_and!140209)))

(declare-fun b_lambda!59835 () Bool)

(assert (=> (not b_lambda!59835) (not b!1814022)))

(declare-fun t!169353 () Bool)

(declare-fun tb!110887 () Bool)

(assert (=> (and b!1814029 (= (toChars!4943 (transformation!3553 (rule!5663 token!523))) (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620))))) t!169353) tb!110887))

(declare-fun b!1814048 () Bool)

(declare-fun e!1158862 () Bool)

(declare-fun tp!512294 () Bool)

(assert (=> b!1814048 (= e!1158862 (and (inv!25799 (c!296327 (dynLambda!9848 (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620)))) (value!110933 (_1!11087 lt!704620))))) tp!512294))))

(declare-fun result!133158 () Bool)

(assert (=> tb!110887 (= result!133158 (and (inv!25800 (dynLambda!9848 (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620)))) (value!110933 (_1!11087 lt!704620)))) e!1158862))))

(assert (= tb!110887 b!1814048))

(declare-fun m!2243337 () Bool)

(assert (=> b!1814048 m!2243337))

(declare-fun m!2243339 () Bool)

(assert (=> tb!110887 m!2243339))

(assert (=> b!1814022 t!169353))

(declare-fun b_and!140211 () Bool)

(assert (= b_and!140199 (and (=> t!169353 result!133158) b_and!140211)))

(declare-fun t!169355 () Bool)

(declare-fun tb!110889 () Bool)

(assert (=> (and b!1813995 (= (toChars!4943 (transformation!3553 rule!422)) (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620))))) t!169355) tb!110889))

(declare-fun result!133160 () Bool)

(assert (= result!133160 result!133158))

(assert (=> b!1814022 t!169355))

(declare-fun b_and!140213 () Bool)

(assert (= b_and!140201 (and (=> t!169355 result!133160) b_and!140213)))

(declare-fun t!169357 () Bool)

(declare-fun tb!110891 () Bool)

(assert (=> (and b!1814019 (= (toChars!4943 (transformation!3553 (h!25190 rules!3447))) (toChars!4943 (transformation!3553 (rule!5663 (_1!11087 lt!704620))))) t!169357) tb!110891))

(declare-fun result!133162 () Bool)

(assert (= result!133162 result!133158))

(assert (=> b!1814022 t!169357))

(declare-fun b_and!140215 () Bool)

(assert (= b_and!140203 (and (=> t!169357 result!133162) b_and!140215)))

(declare-fun m!2243341 () Bool)

(assert (=> b!1814009 m!2243341))

(declare-fun m!2243343 () Bool)

(assert (=> b!1814001 m!2243343))

(declare-fun m!2243345 () Bool)

(assert (=> b!1814002 m!2243345))

(declare-fun m!2243347 () Bool)

(assert (=> b!1814014 m!2243347))

(declare-fun m!2243349 () Bool)

(assert (=> b!1814014 m!2243349))

(declare-fun m!2243351 () Bool)

(assert (=> b!1813998 m!2243351))

(declare-fun m!2243353 () Bool)

(assert (=> b!1814021 m!2243353))

(declare-fun m!2243355 () Bool)

(assert (=> b!1814021 m!2243355))

(declare-fun m!2243357 () Bool)

(assert (=> b!1814021 m!2243357))

(declare-fun m!2243359 () Bool)

(assert (=> b!1814026 m!2243359))

(declare-fun m!2243361 () Bool)

(assert (=> b!1813990 m!2243361))

(declare-fun m!2243363 () Bool)

(assert (=> b!1814015 m!2243363))

(declare-fun m!2243365 () Bool)

(assert (=> b!1814015 m!2243365))

(declare-fun m!2243367 () Bool)

(assert (=> b!1814015 m!2243367))

(assert (=> b!1814015 m!2243363))

(declare-fun m!2243369 () Bool)

(assert (=> b!1814015 m!2243369))

(declare-fun m!2243371 () Bool)

(assert (=> b!1814015 m!2243371))

(declare-fun m!2243373 () Bool)

(assert (=> start!179422 m!2243373))

(declare-fun m!2243375 () Bool)

(assert (=> b!1814024 m!2243375))

(declare-fun m!2243377 () Bool)

(assert (=> b!1814024 m!2243377))

(declare-fun m!2243379 () Bool)

(assert (=> b!1814025 m!2243379))

(declare-fun m!2243381 () Bool)

(assert (=> b!1813992 m!2243381))

(declare-fun m!2243383 () Bool)

(assert (=> b!1813993 m!2243383))

(declare-fun m!2243385 () Bool)

(assert (=> b!1813993 m!2243385))

(declare-fun m!2243387 () Bool)

(assert (=> b!1814007 m!2243387))

(declare-fun m!2243389 () Bool)

(assert (=> b!1814007 m!2243389))

(declare-fun m!2243391 () Bool)

(assert (=> b!1814007 m!2243391))

(declare-fun m!2243393 () Bool)

(assert (=> b!1814007 m!2243393))

(declare-fun m!2243395 () Bool)

(assert (=> b!1814007 m!2243395))

(declare-fun m!2243397 () Bool)

(assert (=> b!1814007 m!2243397))

(declare-fun m!2243399 () Bool)

(assert (=> b!1814007 m!2243399))

(declare-fun m!2243401 () Bool)

(assert (=> b!1814007 m!2243401))

(declare-fun m!2243403 () Bool)

(assert (=> b!1814007 m!2243403))

(assert (=> b!1814007 m!2243399))

(declare-fun m!2243405 () Bool)

(assert (=> b!1814007 m!2243405))

(declare-fun m!2243407 () Bool)

(assert (=> b!1814007 m!2243407))

(declare-fun m!2243409 () Bool)

(assert (=> b!1814007 m!2243409))

(declare-fun m!2243411 () Bool)

(assert (=> b!1814007 m!2243411))

(declare-fun m!2243413 () Bool)

(assert (=> b!1814007 m!2243413))

(declare-fun m!2243415 () Bool)

(assert (=> b!1814007 m!2243415))

(declare-fun m!2243417 () Bool)

(assert (=> b!1814003 m!2243417))

(declare-fun m!2243419 () Bool)

(assert (=> b!1814013 m!2243419))

(declare-fun m!2243421 () Bool)

(assert (=> b!1813989 m!2243421))

(assert (=> b!1813989 m!2243421))

(declare-fun m!2243423 () Bool)

(assert (=> b!1813989 m!2243423))

(assert (=> b!1813989 m!2243423))

(declare-fun m!2243425 () Bool)

(assert (=> b!1813989 m!2243425))

(declare-fun m!2243427 () Bool)

(assert (=> b!1813989 m!2243427))

(declare-fun m!2243429 () Bool)

(assert (=> b!1814022 m!2243429))

(declare-fun m!2243431 () Bool)

(assert (=> b!1814000 m!2243431))

(declare-fun m!2243433 () Bool)

(assert (=> b!1814000 m!2243433))

(declare-fun m!2243435 () Bool)

(assert (=> b!1813991 m!2243435))

(declare-fun m!2243437 () Bool)

(assert (=> b!1813991 m!2243437))

(declare-fun m!2243439 () Bool)

(assert (=> b!1813988 m!2243439))

(declare-fun m!2243441 () Bool)

(assert (=> b!1813988 m!2243441))

(declare-fun m!2243443 () Bool)

(assert (=> b!1813988 m!2243443))

(declare-fun m!2243445 () Bool)

(assert (=> b!1813988 m!2243445))

(declare-fun m!2243447 () Bool)

(assert (=> b!1814016 m!2243447))

(declare-fun m!2243449 () Bool)

(assert (=> b!1814005 m!2243449))

(declare-fun m!2243451 () Bool)

(assert (=> b!1814005 m!2243451))

(declare-fun m!2243453 () Bool)

(assert (=> b!1814012 m!2243453))

(declare-fun m!2243455 () Bool)

(assert (=> b!1814012 m!2243455))

(declare-fun m!2243457 () Bool)

(assert (=> b!1814018 m!2243457))

(declare-fun m!2243459 () Bool)

(assert (=> b!1814018 m!2243459))

(declare-fun m!2243461 () Bool)

(assert (=> b!1814018 m!2243461))

(declare-fun m!2243463 () Bool)

(assert (=> b!1814017 m!2243463))

(declare-fun m!2243465 () Bool)

(assert (=> b!1814017 m!2243465))

(declare-fun m!2243467 () Bool)

(assert (=> b!1814017 m!2243467))

(declare-fun m!2243469 () Bool)

(assert (=> b!1814017 m!2243469))

(declare-fun m!2243471 () Bool)

(assert (=> b!1814017 m!2243471))

(declare-fun m!2243473 () Bool)

(assert (=> b!1814017 m!2243473))

(assert (=> b!1814017 m!2243471))

(declare-fun m!2243475 () Bool)

(assert (=> b!1814017 m!2243475))

(declare-fun m!2243477 () Bool)

(assert (=> b!1814017 m!2243477))

(declare-fun m!2243479 () Bool)

(assert (=> b!1814017 m!2243479))

(declare-fun m!2243481 () Bool)

(assert (=> b!1814017 m!2243481))

(declare-fun m!2243483 () Bool)

(assert (=> b!1814017 m!2243483))

(declare-fun m!2243485 () Bool)

(assert (=> b!1814027 m!2243485))

(declare-fun m!2243487 () Bool)

(assert (=> b!1814027 m!2243487))

(declare-fun m!2243489 () Bool)

(assert (=> b!1814027 m!2243489))

(declare-fun m!2243491 () Bool)

(assert (=> b!1814027 m!2243491))

(declare-fun m!2243493 () Bool)

(assert (=> b!1814010 m!2243493))

(declare-fun m!2243495 () Bool)

(assert (=> b!1814010 m!2243495))

(declare-fun m!2243497 () Bool)

(assert (=> b!1814006 m!2243497))

(declare-fun m!2243499 () Bool)

(assert (=> b!1814006 m!2243499))

(declare-fun m!2243501 () Bool)

(assert (=> b!1814006 m!2243501))

(declare-fun m!2243503 () Bool)

(assert (=> b!1814006 m!2243503))

(declare-fun m!2243505 () Bool)

(assert (=> b!1814006 m!2243505))

(declare-fun m!2243507 () Bool)

(assert (=> b!1814006 m!2243507))

(assert (=> b!1814006 m!2243503))

(declare-fun m!2243509 () Bool)

(assert (=> b!1814006 m!2243509))

(assert (=> b!1813987 m!2243397))

(assert (=> b!1813987 m!2243397))

(declare-fun m!2243511 () Bool)

(assert (=> b!1813987 m!2243511))

(assert (=> b!1813987 m!2243511))

(declare-fun m!2243513 () Bool)

(assert (=> b!1813987 m!2243513))

(declare-fun m!2243515 () Bool)

(assert (=> b!1813987 m!2243515))

(check-sat (not b!1814013) (not b!1814007) (not b!1813988) (not b!1814012) b_and!140207 (not b!1814005) (not b_next!50689) (not b_next!50683) (not b!1814000) (not tb!110875) (not start!179422) (not b!1814015) (not b!1813998) (not b!1813991) (not b!1814018) (not b_next!50685) (not tb!110887) (not b!1814048) (not b_next!50679) b_and!140205 (not b!1814006) (not b!1814028) (not b!1814024) (not b!1814020) (not b!1814021) (not b!1814001) b_and!140209 tp_is_empty!8005 (not b!1814009) (not b_lambda!59833) (not b!1814017) (not b_next!50681) (not b!1814025) (not tb!110881) (not b!1813990) (not b!1813992) (not b!1814016) (not b!1814010) b_and!140213 (not b_lambda!59831) (not b!1814045) (not b!1814014) (not b!1814026) (not b!1814002) (not b_next!50687) (not b_lambda!59835) b_and!140215 b_and!140211 (not b!1814003) (not b!1813987) (not b!1814027) (not b!1813989) (not b!1813993))
(check-sat (not b_next!50685) (not b_next!50679) b_and!140205 b_and!140209 (not b_next!50681) b_and!140213 b_and!140207 (not b_next!50689) (not b_next!50683) (not b_next!50687) b_and!140215 b_and!140211)
