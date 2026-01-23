; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220428 () Bool)

(assert start!220428)

(declare-fun b!2258722 () Bool)

(declare-fun b_free!66637 () Bool)

(declare-fun b_next!67341 () Bool)

(assert (=> b!2258722 (= b_free!66637 (not b_next!67341))))

(declare-fun tp!714164 () Bool)

(declare-fun b_and!177393 () Bool)

(assert (=> b!2258722 (= tp!714164 b_and!177393)))

(declare-fun b_free!66639 () Bool)

(declare-fun b_next!67343 () Bool)

(assert (=> b!2258722 (= b_free!66639 (not b_next!67343))))

(declare-fun tp!714172 () Bool)

(declare-fun b_and!177395 () Bool)

(assert (=> b!2258722 (= tp!714172 b_and!177395)))

(declare-fun b!2258732 () Bool)

(declare-fun b_free!66641 () Bool)

(declare-fun b_next!67345 () Bool)

(assert (=> b!2258732 (= b_free!66641 (not b_next!67345))))

(declare-fun tp!714165 () Bool)

(declare-fun b_and!177397 () Bool)

(assert (=> b!2258732 (= tp!714165 b_and!177397)))

(declare-fun b_free!66643 () Bool)

(declare-fun b_next!67347 () Bool)

(assert (=> b!2258732 (= b_free!66643 (not b_next!67347))))

(declare-fun tp!714176 () Bool)

(declare-fun b_and!177399 () Bool)

(assert (=> b!2258732 (= tp!714176 b_and!177399)))

(declare-fun b!2258714 () Bool)

(declare-fun b_free!66645 () Bool)

(declare-fun b_next!67349 () Bool)

(assert (=> b!2258714 (= b_free!66645 (not b_next!67349))))

(declare-fun tp!714174 () Bool)

(declare-fun b_and!177401 () Bool)

(assert (=> b!2258714 (= tp!714174 b_and!177401)))

(declare-fun b_free!66647 () Bool)

(declare-fun b_next!67351 () Bool)

(assert (=> b!2258714 (= b_free!66647 (not b_next!67351))))

(declare-fun tp!714167 () Bool)

(declare-fun b_and!177403 () Bool)

(assert (=> b!2258714 (= tp!714167 b_and!177403)))

(declare-fun b!2258710 () Bool)

(declare-fun b_free!66649 () Bool)

(declare-fun b_next!67353 () Bool)

(assert (=> b!2258710 (= b_free!66649 (not b_next!67353))))

(declare-fun tp!714170 () Bool)

(declare-fun b_and!177405 () Bool)

(assert (=> b!2258710 (= tp!714170 b_and!177405)))

(declare-fun b_free!66651 () Bool)

(declare-fun b_next!67355 () Bool)

(assert (=> b!2258710 (= b_free!66651 (not b_next!67355))))

(declare-fun tp!714166 () Bool)

(declare-fun b_and!177407 () Bool)

(assert (=> b!2258710 (= tp!714166 b_and!177407)))

(declare-fun e!1446187 () Bool)

(declare-fun b!2258703 () Bool)

(declare-fun tp!714178 () Bool)

(declare-datatypes ((List!26919 0))(
  ( (Nil!26825) (Cons!26825 (h!32226 (_ BitVec 16)) (t!201435 List!26919)) )
))
(declare-datatypes ((TokenValue!4427 0))(
  ( (FloatLiteralValue!8854 (text!31434 List!26919)) (TokenValueExt!4426 (__x!17914 Int)) (Broken!22135 (value!135346 List!26919)) (Object!4520) (End!4427) (Def!4427) (Underscore!4427) (Match!4427) (Else!4427) (Error!4427) (Case!4427) (If!4427) (Extends!4427) (Abstract!4427) (Class!4427) (Val!4427) (DelimiterValue!8854 (del!4487 List!26919)) (KeywordValue!4433 (value!135347 List!26919)) (CommentValue!8854 (value!135348 List!26919)) (WhitespaceValue!8854 (value!135349 List!26919)) (IndentationValue!4427 (value!135350 List!26919)) (String!29238) (Int32!4427) (Broken!22136 (value!135351 List!26919)) (Boolean!4428) (Unit!39751) (OperatorValue!4430 (op!4487 List!26919)) (IdentifierValue!8854 (value!135352 List!26919)) (IdentifierValue!8855 (value!135353 List!26919)) (WhitespaceValue!8855 (value!135354 List!26919)) (True!8854) (False!8854) (Broken!22137 (value!135355 List!26919)) (Broken!22138 (value!135356 List!26919)) (True!8855) (RightBrace!4427) (RightBracket!4427) (Colon!4427) (Null!4427) (Comma!4427) (LeftBracket!4427) (False!8855) (LeftBrace!4427) (ImaginaryLiteralValue!4427 (text!31435 List!26919)) (StringLiteralValue!13281 (value!135357 List!26919)) (EOFValue!4427 (value!135358 List!26919)) (IdentValue!4427 (value!135359 List!26919)) (DelimiterValue!8855 (value!135360 List!26919)) (DedentValue!4427 (value!135361 List!26919)) (NewLineValue!4427 (value!135362 List!26919)) (IntegerValue!13281 (value!135363 (_ BitVec 32)) (text!31436 List!26919)) (IntegerValue!13282 (value!135364 Int) (text!31437 List!26919)) (Times!4427) (Or!4427) (Equal!4427) (Minus!4427) (Broken!22139 (value!135365 List!26919)) (And!4427) (Div!4427) (LessEqual!4427) (Mod!4427) (Concat!11040) (Not!4427) (Plus!4427) (SpaceValue!4427 (value!135366 List!26919)) (IntegerValue!13283 (value!135367 Int) (text!31438 List!26919)) (StringLiteralValue!13282 (text!31439 List!26919)) (FloatLiteralValue!8855 (text!31440 List!26919)) (BytesLiteralValue!4427 (value!135368 List!26919)) (CommentValue!8855 (value!135369 List!26919)) (StringLiteralValue!13283 (value!135370 List!26919)) (ErrorTokenValue!4427 (msg!4488 List!26919)) )
))
(declare-datatypes ((C!13372 0))(
  ( (C!13373 (val!7734 Int)) )
))
(declare-datatypes ((List!26920 0))(
  ( (Nil!26826) (Cons!26826 (h!32227 C!13372) (t!201436 List!26920)) )
))
(declare-datatypes ((IArray!17361 0))(
  ( (IArray!17362 (innerList!8738 List!26920)) )
))
(declare-datatypes ((Conc!8678 0))(
  ( (Node!8678 (left!20363 Conc!8678) (right!20693 Conc!8678) (csize!17586 Int) (cheight!8889 Int)) (Leaf!12796 (xs!11620 IArray!17361) (csize!17587 Int)) (Empty!8678) )
))
(declare-datatypes ((BalanceConc!17084 0))(
  ( (BalanceConc!17085 (c!358846 Conc!8678)) )
))
(declare-datatypes ((Regex!6613 0))(
  ( (ElementMatch!6613 (c!358847 C!13372)) (Concat!11041 (regOne!13738 Regex!6613) (regTwo!13738 Regex!6613)) (EmptyExpr!6613) (Star!6613 (reg!6942 Regex!6613)) (EmptyLang!6613) (Union!6613 (regOne!13739 Regex!6613) (regTwo!13739 Regex!6613)) )
))
(declare-datatypes ((String!29239 0))(
  ( (String!29240 (value!135371 String)) )
))
(declare-datatypes ((TokenValueInjection!8394 0))(
  ( (TokenValueInjection!8395 (toValue!6007 Int) (toChars!5866 Int)) )
))
(declare-datatypes ((Rule!8330 0))(
  ( (Rule!8331 (regex!4265 Regex!6613) (tag!4755 String!29239) (isSeparator!4265 Bool) (transformation!4265 TokenValueInjection!8394)) )
))
(declare-fun otherR!12 () Rule!8330)

(declare-fun e!1446191 () Bool)

(declare-fun inv!36353 (String!29239) Bool)

(declare-fun inv!36356 (TokenValueInjection!8394) Bool)

(assert (=> b!2258703 (= e!1446191 (and tp!714178 (inv!36353 (tag!4755 otherR!12)) (inv!36356 (transformation!4265 otherR!12)) e!1446187))))

(declare-fun b!2258704 () Bool)

(declare-fun e!1446205 () Bool)

(declare-fun e!1446199 () Bool)

(assert (=> b!2258704 (= e!1446205 (not e!1446199))))

(declare-fun res!965673 () Bool)

(assert (=> b!2258704 (=> res!965673 e!1446199)))

(declare-fun e!1446186 () Bool)

(assert (=> b!2258704 (= res!965673 e!1446186)))

(declare-fun res!965672 () Bool)

(assert (=> b!2258704 (=> (not res!965672) (not e!1446186))))

(declare-fun lt!839372 () Bool)

(assert (=> b!2258704 (= res!965672 (not lt!839372))))

(declare-datatypes ((LexerInterface!3862 0))(
  ( (LexerInterfaceExt!3859 (__x!17915 Int)) (Lexer!3860) )
))
(declare-fun thiss!16613 () LexerInterface!3862)

(declare-fun r!2363 () Rule!8330)

(declare-fun ruleValid!1357 (LexerInterface!3862 Rule!8330) Bool)

(assert (=> b!2258704 (ruleValid!1357 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39752 0))(
  ( (Unit!39753) )
))
(declare-fun lt!839370 () Unit!39752)

(declare-datatypes ((List!26921 0))(
  ( (Nil!26827) (Cons!26827 (h!32228 Rule!8330) (t!201437 List!26921)) )
))
(declare-fun rules!1750 () List!26921)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!764 (LexerInterface!3862 Rule!8330 List!26921) Unit!39752)

(assert (=> b!2258704 (= lt!839370 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!764 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2258705 () Bool)

(declare-fun res!965675 () Bool)

(assert (=> b!2258705 (=> (not res!965675) (not e!1446205))))

(declare-fun otherP!12 () List!26920)

(declare-fun input!1722 () List!26920)

(declare-fun isPrefix!2255 (List!26920 List!26920) Bool)

(assert (=> b!2258705 (= res!965675 (isPrefix!2255 otherP!12 input!1722))))

(declare-fun b!2258706 () Bool)

(declare-fun e!1446201 () Bool)

(declare-fun e!1446198 () Bool)

(assert (=> b!2258706 (= e!1446201 e!1446198)))

(declare-fun res!965677 () Bool)

(assert (=> b!2258706 (=> (not res!965677) (not e!1446198))))

(declare-datatypes ((Token!8008 0))(
  ( (Token!8009 (value!135372 TokenValue!4427) (rule!6575 Rule!8330) (size!21012 Int) (originalCharacters!5035 List!26920)) )
))
(declare-datatypes ((List!26922 0))(
  ( (Nil!26828) (Cons!26828 (h!32229 Token!8008) (t!201438 List!26922)) )
))
(declare-fun tokens!456 () List!26922)

(declare-fun suffix!886 () List!26920)

(declare-datatypes ((IArray!17363 0))(
  ( (IArray!17364 (innerList!8739 List!26922)) )
))
(declare-datatypes ((Conc!8679 0))(
  ( (Node!8679 (left!20364 Conc!8679) (right!20694 Conc!8679) (csize!17588 Int) (cheight!8890 Int)) (Leaf!12797 (xs!11621 IArray!17363) (csize!17589 Int)) (Empty!8679) )
))
(declare-datatypes ((BalanceConc!17086 0))(
  ( (BalanceConc!17087 (c!358848 Conc!8679)) )
))
(declare-datatypes ((tuple2!26404 0))(
  ( (tuple2!26405 (_1!15712 BalanceConc!17086) (_2!15712 BalanceConc!17084)) )
))
(declare-fun lt!839367 () tuple2!26404)

(declare-datatypes ((tuple2!26406 0))(
  ( (tuple2!26407 (_1!15713 List!26922) (_2!15713 List!26920)) )
))
(declare-fun list!10333 (BalanceConc!17086) List!26922)

(declare-fun list!10334 (BalanceConc!17084) List!26920)

(assert (=> b!2258706 (= res!965677 (= (tuple2!26407 (list!10333 (_1!15712 lt!839367)) (list!10334 (_2!15712 lt!839367))) (tuple2!26407 tokens!456 suffix!886)))))

(declare-fun lex!1701 (LexerInterface!3862 List!26921 BalanceConc!17084) tuple2!26404)

(declare-fun seqFromList!2969 (List!26920) BalanceConc!17084)

(assert (=> b!2258706 (= lt!839367 (lex!1701 thiss!16613 rules!1750 (seqFromList!2969 input!1722)))))

(declare-fun b!2258707 () Bool)

(declare-fun e!1446197 () Bool)

(declare-fun head!4842 (List!26922) Token!8008)

(assert (=> b!2258707 (= e!1446197 (= (rule!6575 (head!4842 tokens!456)) r!2363))))

(declare-fun e!1446195 () Bool)

(declare-fun e!1446207 () Bool)

(declare-fun b!2258708 () Bool)

(declare-fun tp!714169 () Bool)

(declare-fun inv!36357 (Token!8008) Bool)

(assert (=> b!2258708 (= e!1446207 (and (inv!36357 (h!32229 tokens!456)) e!1446195 tp!714169))))

(declare-fun b!2258709 () Bool)

(declare-fun e!1446196 () Bool)

(declare-fun e!1446210 () Bool)

(assert (=> b!2258709 (= e!1446196 e!1446210)))

(declare-fun res!965670 () Bool)

(assert (=> b!2258709 (=> res!965670 e!1446210)))

(get-info :version)

(assert (=> b!2258709 (= res!965670 ((_ is Nil!26828) tokens!456))))

(declare-fun lt!839369 () Unit!39752)

(declare-fun e!1446183 () Unit!39752)

(assert (=> b!2258709 (= lt!839369 e!1446183)))

(declare-fun c!358845 () Bool)

(declare-fun lt!839371 () Int)

(declare-fun lt!839366 () Int)

(assert (=> b!2258709 (= c!358845 (= lt!839371 lt!839366))))

(declare-fun e!1446202 () Bool)

(assert (=> b!2258710 (= e!1446202 (and tp!714170 tp!714166))))

(declare-fun b!2258711 () Bool)

(declare-fun e!1446194 () Bool)

(declare-fun tp_is_empty!10447 () Bool)

(declare-fun tp!714173 () Bool)

(assert (=> b!2258711 (= e!1446194 (and tp_is_empty!10447 tp!714173))))

(declare-fun b!2258712 () Bool)

(declare-fun res!965667 () Bool)

(assert (=> b!2258712 (=> (not res!965667) (not e!1446201))))

(declare-fun contains!4617 (List!26921 Rule!8330) Bool)

(assert (=> b!2258712 (= res!965667 (contains!4617 rules!1750 r!2363))))

(declare-fun b!2258713 () Bool)

(declare-fun res!965674 () Bool)

(assert (=> b!2258713 (=> (not res!965674) (not e!1446201))))

(declare-fun rulesInvariant!3364 (LexerInterface!3862 List!26921) Bool)

(assert (=> b!2258713 (= res!965674 (rulesInvariant!3364 thiss!16613 rules!1750))))

(declare-fun e!1446200 () Bool)

(assert (=> b!2258714 (= e!1446200 (and tp!714174 tp!714167))))

(declare-fun b!2258715 () Bool)

(declare-fun e!1446203 () Bool)

(declare-fun tp!714181 () Bool)

(assert (=> b!2258715 (= e!1446203 (and tp_is_empty!10447 tp!714181))))

(declare-fun b!2258716 () Bool)

(declare-fun matchR!2874 (Regex!6613 List!26920) Bool)

(declare-fun charsOf!2653 (Token!8008) BalanceConc!17084)

(assert (=> b!2258716 (= e!1446186 (not (matchR!2874 (regex!4265 r!2363) (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))

(declare-fun b!2258717 () Bool)

(assert (=> b!2258717 (= e!1446199 e!1446196)))

(declare-fun res!965680 () Bool)

(assert (=> b!2258717 (=> res!965680 e!1446196)))

(assert (=> b!2258717 (= res!965680 (> lt!839371 lt!839366))))

(declare-fun getIndex!286 (List!26921 Rule!8330) Int)

(assert (=> b!2258717 (= lt!839366 (getIndex!286 rules!1750 otherR!12))))

(assert (=> b!2258717 (= lt!839371 (getIndex!286 rules!1750 r!2363))))

(assert (=> b!2258717 (ruleValid!1357 thiss!16613 otherR!12)))

(declare-fun lt!839368 () Unit!39752)

(assert (=> b!2258717 (= lt!839368 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!764 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2258718 () Bool)

(declare-fun res!965671 () Bool)

(assert (=> b!2258718 (=> (not res!965671) (not e!1446205))))

(assert (=> b!2258718 (= res!965671 (not (= r!2363 otherR!12)))))

(declare-fun b!2258719 () Bool)

(declare-fun e!1446193 () Bool)

(declare-fun size!21013 (BalanceConc!17084) Int)

(declare-fun size!21014 (List!26920) Int)

(assert (=> b!2258719 (= e!1446193 (<= (size!21013 (charsOf!2653 (head!4842 tokens!456))) (size!21014 otherP!12)))))

(declare-fun res!965666 () Bool)

(assert (=> start!220428 (=> (not res!965666) (not e!1446201))))

(assert (=> start!220428 (= res!965666 ((_ is Lexer!3860) thiss!16613))))

(assert (=> start!220428 e!1446201))

(assert (=> start!220428 true))

(declare-fun e!1446189 () Bool)

(assert (=> start!220428 e!1446189))

(assert (=> start!220428 e!1446191))

(assert (=> start!220428 e!1446194))

(assert (=> start!220428 e!1446203))

(declare-fun e!1446192 () Bool)

(assert (=> start!220428 e!1446192))

(declare-fun e!1446209 () Bool)

(assert (=> start!220428 e!1446209))

(assert (=> start!220428 e!1446207))

(declare-fun b!2258720 () Bool)

(declare-fun res!965668 () Bool)

(assert (=> b!2258720 (=> (not res!965668) (not e!1446201))))

(declare-fun isEmpty!15155 (List!26921) Bool)

(assert (=> b!2258720 (= res!965668 (not (isEmpty!15155 rules!1750)))))

(declare-fun b!2258721 () Bool)

(declare-fun Unit!39754 () Unit!39752)

(assert (=> b!2258721 (= e!1446183 Unit!39754)))

(declare-fun e!1446188 () Bool)

(assert (=> b!2258722 (= e!1446188 (and tp!714164 tp!714172))))

(declare-fun b!2258723 () Bool)

(declare-fun Unit!39755 () Unit!39752)

(assert (=> b!2258723 (= e!1446183 Unit!39755)))

(declare-fun lt!839365 () Unit!39752)

(declare-fun lemmaSameIndexThenSameElement!132 (List!26921 Rule!8330 Rule!8330) Unit!39752)

(assert (=> b!2258723 (= lt!839365 (lemmaSameIndexThenSameElement!132 rules!1750 r!2363 otherR!12))))

(assert (=> b!2258723 false))

(declare-fun tp!714171 () Bool)

(declare-fun e!1446185 () Bool)

(declare-fun b!2258724 () Bool)

(assert (=> b!2258724 (= e!1446185 (and tp!714171 (inv!36353 (tag!4755 (rule!6575 (h!32229 tokens!456)))) (inv!36356 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) e!1446188))))

(declare-fun b!2258725 () Bool)

(declare-fun res!965665 () Bool)

(assert (=> b!2258725 (=> (not res!965665) (not e!1446201))))

(assert (=> b!2258725 (= res!965665 (contains!4617 rules!1750 otherR!12))))

(declare-fun b!2258726 () Bool)

(declare-fun tp!714177 () Bool)

(assert (=> b!2258726 (= e!1446209 (and tp!714177 (inv!36353 (tag!4755 r!2363)) (inv!36356 (transformation!4265 r!2363)) e!1446200))))

(declare-fun b!2258727 () Bool)

(declare-fun e!1446190 () Bool)

(declare-fun tp!714168 () Bool)

(assert (=> b!2258727 (= e!1446192 (and e!1446190 tp!714168))))

(declare-fun b!2258728 () Bool)

(declare-fun res!965669 () Bool)

(assert (=> b!2258728 (=> (not res!965669) (not e!1446205))))

(assert (=> b!2258728 (= res!965669 e!1446197)))

(declare-fun res!965676 () Bool)

(assert (=> b!2258728 (=> res!965676 e!1446197)))

(assert (=> b!2258728 (= res!965676 lt!839372)))

(declare-fun b!2258729 () Bool)

(declare-fun tp!714179 () Bool)

(assert (=> b!2258729 (= e!1446189 (and tp_is_empty!10447 tp!714179))))

(declare-fun tp!714180 () Bool)

(declare-fun b!2258730 () Bool)

(declare-fun inv!21 (TokenValue!4427) Bool)

(assert (=> b!2258730 (= e!1446195 (and (inv!21 (value!135372 (h!32229 tokens!456))) e!1446185 tp!714180))))

(declare-fun b!2258731 () Bool)

(declare-fun rulesValidInductive!1485 (LexerInterface!3862 List!26921) Bool)

(assert (=> b!2258731 (= e!1446210 (rulesValidInductive!1485 thiss!16613 rules!1750))))

(assert (=> b!2258732 (= e!1446187 (and tp!714165 tp!714176))))

(declare-fun b!2258733 () Bool)

(declare-fun tp!714175 () Bool)

(assert (=> b!2258733 (= e!1446190 (and tp!714175 (inv!36353 (tag!4755 (h!32228 rules!1750))) (inv!36356 (transformation!4265 (h!32228 rules!1750))) e!1446202))))

(declare-fun b!2258734 () Bool)

(assert (=> b!2258734 (= e!1446198 e!1446205)))

(declare-fun res!965678 () Bool)

(assert (=> b!2258734 (=> (not res!965678) (not e!1446205))))

(assert (=> b!2258734 (= res!965678 e!1446193)))

(declare-fun res!965679 () Bool)

(assert (=> b!2258734 (=> res!965679 e!1446193)))

(assert (=> b!2258734 (= res!965679 lt!839372)))

(declare-fun isEmpty!15156 (List!26922) Bool)

(assert (=> b!2258734 (= lt!839372 (isEmpty!15156 tokens!456))))

(assert (= (and start!220428 res!965666) b!2258720))

(assert (= (and b!2258720 res!965668) b!2258713))

(assert (= (and b!2258713 res!965674) b!2258712))

(assert (= (and b!2258712 res!965667) b!2258725))

(assert (= (and b!2258725 res!965665) b!2258706))

(assert (= (and b!2258706 res!965677) b!2258734))

(assert (= (and b!2258734 (not res!965679)) b!2258719))

(assert (= (and b!2258734 res!965678) b!2258728))

(assert (= (and b!2258728 (not res!965676)) b!2258707))

(assert (= (and b!2258728 res!965669) b!2258705))

(assert (= (and b!2258705 res!965675) b!2258718))

(assert (= (and b!2258718 res!965671) b!2258704))

(assert (= (and b!2258704 res!965672) b!2258716))

(assert (= (and b!2258704 (not res!965673)) b!2258717))

(assert (= (and b!2258717 (not res!965680)) b!2258709))

(assert (= (and b!2258709 c!358845) b!2258723))

(assert (= (and b!2258709 (not c!358845)) b!2258721))

(assert (= (and b!2258709 (not res!965670)) b!2258731))

(assert (= (and start!220428 ((_ is Cons!26826) input!1722)) b!2258729))

(assert (= b!2258703 b!2258732))

(assert (= start!220428 b!2258703))

(assert (= (and start!220428 ((_ is Cons!26826) suffix!886)) b!2258711))

(assert (= (and start!220428 ((_ is Cons!26826) otherP!12)) b!2258715))

(assert (= b!2258733 b!2258710))

(assert (= b!2258727 b!2258733))

(assert (= (and start!220428 ((_ is Cons!26827) rules!1750)) b!2258727))

(assert (= b!2258726 b!2258714))

(assert (= start!220428 b!2258726))

(assert (= b!2258724 b!2258722))

(assert (= b!2258730 b!2258724))

(assert (= b!2258708 b!2258730))

(assert (= (and start!220428 ((_ is Cons!26828) tokens!456)) b!2258708))

(declare-fun m!2688539 () Bool)

(assert (=> b!2258708 m!2688539))

(declare-fun m!2688541 () Bool)

(assert (=> b!2258707 m!2688541))

(declare-fun m!2688543 () Bool)

(assert (=> b!2258712 m!2688543))

(declare-fun m!2688545 () Bool)

(assert (=> b!2258717 m!2688545))

(declare-fun m!2688547 () Bool)

(assert (=> b!2258717 m!2688547))

(declare-fun m!2688549 () Bool)

(assert (=> b!2258717 m!2688549))

(declare-fun m!2688551 () Bool)

(assert (=> b!2258717 m!2688551))

(assert (=> b!2258719 m!2688541))

(assert (=> b!2258719 m!2688541))

(declare-fun m!2688553 () Bool)

(assert (=> b!2258719 m!2688553))

(assert (=> b!2258719 m!2688553))

(declare-fun m!2688555 () Bool)

(assert (=> b!2258719 m!2688555))

(declare-fun m!2688557 () Bool)

(assert (=> b!2258719 m!2688557))

(declare-fun m!2688559 () Bool)

(assert (=> b!2258730 m!2688559))

(declare-fun m!2688561 () Bool)

(assert (=> b!2258704 m!2688561))

(declare-fun m!2688563 () Bool)

(assert (=> b!2258704 m!2688563))

(declare-fun m!2688565 () Bool)

(assert (=> b!2258720 m!2688565))

(declare-fun m!2688567 () Bool)

(assert (=> b!2258723 m!2688567))

(declare-fun m!2688569 () Bool)

(assert (=> b!2258706 m!2688569))

(declare-fun m!2688571 () Bool)

(assert (=> b!2258706 m!2688571))

(declare-fun m!2688573 () Bool)

(assert (=> b!2258706 m!2688573))

(assert (=> b!2258706 m!2688573))

(declare-fun m!2688575 () Bool)

(assert (=> b!2258706 m!2688575))

(declare-fun m!2688577 () Bool)

(assert (=> b!2258725 m!2688577))

(declare-fun m!2688579 () Bool)

(assert (=> b!2258734 m!2688579))

(declare-fun m!2688581 () Bool)

(assert (=> b!2258724 m!2688581))

(declare-fun m!2688583 () Bool)

(assert (=> b!2258724 m!2688583))

(declare-fun m!2688585 () Bool)

(assert (=> b!2258726 m!2688585))

(declare-fun m!2688587 () Bool)

(assert (=> b!2258726 m!2688587))

(declare-fun m!2688589 () Bool)

(assert (=> b!2258705 m!2688589))

(declare-fun m!2688591 () Bool)

(assert (=> b!2258713 m!2688591))

(assert (=> b!2258716 m!2688541))

(assert (=> b!2258716 m!2688541))

(assert (=> b!2258716 m!2688553))

(assert (=> b!2258716 m!2688553))

(declare-fun m!2688593 () Bool)

(assert (=> b!2258716 m!2688593))

(assert (=> b!2258716 m!2688593))

(declare-fun m!2688595 () Bool)

(assert (=> b!2258716 m!2688595))

(declare-fun m!2688597 () Bool)

(assert (=> b!2258703 m!2688597))

(declare-fun m!2688599 () Bool)

(assert (=> b!2258703 m!2688599))

(declare-fun m!2688601 () Bool)

(assert (=> b!2258731 m!2688601))

(declare-fun m!2688603 () Bool)

(assert (=> b!2258733 m!2688603))

(declare-fun m!2688605 () Bool)

(assert (=> b!2258733 m!2688605))

(check-sat (not b!2258729) b_and!177397 (not b!2258733) b_and!177401 (not b!2258711) (not b!2258725) (not b!2258720) (not b!2258712) (not b_next!67347) b_and!177399 (not b!2258731) (not b_next!67355) tp_is_empty!10447 b_and!177393 b_and!177403 (not b!2258708) (not b!2258706) (not b!2258723) (not b!2258704) (not b!2258730) (not b_next!67341) b_and!177405 (not b!2258724) (not b_next!67343) b_and!177407 (not b!2258715) (not b!2258713) b_and!177395 (not b_next!67349) (not b_next!67353) (not b!2258726) (not b!2258716) (not b!2258717) (not b!2258707) (not b!2258734) (not b!2258719) (not b!2258727) (not b_next!67351) (not b_next!67345) (not b!2258705) (not b!2258703))
(check-sat (not b_next!67347) b_and!177399 b_and!177397 (not b_next!67355) b_and!177401 b_and!177393 b_and!177403 (not b_next!67341) b_and!177405 (not b_next!67343) b_and!177407 b_and!177395 (not b_next!67349) (not b_next!67353) (not b_next!67351) (not b_next!67345))
(get-model)

(declare-fun d!669138 () Bool)

(assert (=> d!669138 (= (isEmpty!15156 tokens!456) ((_ is Nil!26828) tokens!456))))

(assert (=> b!2258734 d!669138))

(declare-fun d!669140 () Bool)

(assert (=> d!669140 (= r!2363 otherR!12)))

(declare-fun lt!839375 () Unit!39752)

(declare-fun choose!13215 (List!26921 Rule!8330 Rule!8330) Unit!39752)

(assert (=> d!669140 (= lt!839375 (choose!13215 rules!1750 r!2363 otherR!12))))

(assert (=> d!669140 (contains!4617 rules!1750 r!2363)))

(assert (=> d!669140 (= (lemmaSameIndexThenSameElement!132 rules!1750 r!2363 otherR!12) lt!839375)))

(declare-fun bs!455310 () Bool)

(assert (= bs!455310 d!669140))

(declare-fun m!2688607 () Bool)

(assert (=> bs!455310 m!2688607))

(assert (=> bs!455310 m!2688543))

(assert (=> b!2258723 d!669140))

(declare-fun d!669142 () Bool)

(assert (=> d!669142 (= (inv!36353 (tag!4755 (rule!6575 (h!32229 tokens!456)))) (= (mod (str.len (value!135371 (tag!4755 (rule!6575 (h!32229 tokens!456))))) 2) 0))))

(assert (=> b!2258724 d!669142))

(declare-fun d!669144 () Bool)

(declare-fun res!965689 () Bool)

(declare-fun e!1446214 () Bool)

(assert (=> d!669144 (=> (not res!965689) (not e!1446214))))

(declare-fun semiInverseModEq!1718 (Int Int) Bool)

(assert (=> d!669144 (= res!965689 (semiInverseModEq!1718 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456))))))))

(assert (=> d!669144 (= (inv!36356 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) e!1446214)))

(declare-fun b!2258737 () Bool)

(declare-fun equivClasses!1637 (Int Int) Bool)

(assert (=> b!2258737 (= e!1446214 (equivClasses!1637 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456))))))))

(assert (= (and d!669144 res!965689) b!2258737))

(declare-fun m!2688609 () Bool)

(assert (=> d!669144 m!2688609))

(declare-fun m!2688611 () Bool)

(assert (=> b!2258737 m!2688611))

(assert (=> b!2258724 d!669144))

(declare-fun d!669146 () Bool)

(declare-fun res!965692 () Bool)

(declare-fun e!1446217 () Bool)

(assert (=> d!669146 (=> (not res!965692) (not e!1446217))))

(declare-fun rulesValid!1561 (LexerInterface!3862 List!26921) Bool)

(assert (=> d!669146 (= res!965692 (rulesValid!1561 thiss!16613 rules!1750))))

(assert (=> d!669146 (= (rulesInvariant!3364 thiss!16613 rules!1750) e!1446217)))

(declare-fun b!2258740 () Bool)

(declare-datatypes ((List!26923 0))(
  ( (Nil!26829) (Cons!26829 (h!32230 String!29239) (t!201487 List!26923)) )
))
(declare-fun noDuplicateTag!1559 (LexerInterface!3862 List!26921 List!26923) Bool)

(assert (=> b!2258740 (= e!1446217 (noDuplicateTag!1559 thiss!16613 rules!1750 Nil!26829))))

(assert (= (and d!669146 res!965692) b!2258740))

(declare-fun m!2688613 () Bool)

(assert (=> d!669146 m!2688613))

(declare-fun m!2688615 () Bool)

(assert (=> b!2258740 m!2688615))

(assert (=> b!2258713 d!669146))

(declare-fun d!669148 () Bool)

(declare-fun lt!839378 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3571 (List!26921) (InoxSet Rule!8330))

(assert (=> d!669148 (= lt!839378 (select (content!3571 rules!1750) r!2363))))

(declare-fun e!1446223 () Bool)

(assert (=> d!669148 (= lt!839378 e!1446223)))

(declare-fun res!965698 () Bool)

(assert (=> d!669148 (=> (not res!965698) (not e!1446223))))

(assert (=> d!669148 (= res!965698 ((_ is Cons!26827) rules!1750))))

(assert (=> d!669148 (= (contains!4617 rules!1750 r!2363) lt!839378)))

(declare-fun b!2258745 () Bool)

(declare-fun e!1446222 () Bool)

(assert (=> b!2258745 (= e!1446223 e!1446222)))

(declare-fun res!965697 () Bool)

(assert (=> b!2258745 (=> res!965697 e!1446222)))

(assert (=> b!2258745 (= res!965697 (= (h!32228 rules!1750) r!2363))))

(declare-fun b!2258746 () Bool)

(assert (=> b!2258746 (= e!1446222 (contains!4617 (t!201437 rules!1750) r!2363))))

(assert (= (and d!669148 res!965698) b!2258745))

(assert (= (and b!2258745 (not res!965697)) b!2258746))

(declare-fun m!2688617 () Bool)

(assert (=> d!669148 m!2688617))

(declare-fun m!2688619 () Bool)

(assert (=> d!669148 m!2688619))

(declare-fun m!2688621 () Bool)

(assert (=> b!2258746 m!2688621))

(assert (=> b!2258712 d!669148))

(declare-fun d!669150 () Bool)

(assert (=> d!669150 (= (inv!36353 (tag!4755 (h!32228 rules!1750))) (= (mod (str.len (value!135371 (tag!4755 (h!32228 rules!1750)))) 2) 0))))

(assert (=> b!2258733 d!669150))

(declare-fun d!669152 () Bool)

(declare-fun res!965699 () Bool)

(declare-fun e!1446224 () Bool)

(assert (=> d!669152 (=> (not res!965699) (not e!1446224))))

(assert (=> d!669152 (= res!965699 (semiInverseModEq!1718 (toChars!5866 (transformation!4265 (h!32228 rules!1750))) (toValue!6007 (transformation!4265 (h!32228 rules!1750)))))))

(assert (=> d!669152 (= (inv!36356 (transformation!4265 (h!32228 rules!1750))) e!1446224)))

(declare-fun b!2258747 () Bool)

(assert (=> b!2258747 (= e!1446224 (equivClasses!1637 (toChars!5866 (transformation!4265 (h!32228 rules!1750))) (toValue!6007 (transformation!4265 (h!32228 rules!1750)))))))

(assert (= (and d!669152 res!965699) b!2258747))

(declare-fun m!2688623 () Bool)

(assert (=> d!669152 m!2688623))

(declare-fun m!2688625 () Bool)

(assert (=> b!2258747 m!2688625))

(assert (=> b!2258733 d!669152))

(declare-fun d!669154 () Bool)

(assert (=> d!669154 true))

(declare-fun lt!839394 () Bool)

(declare-fun lambda!85279 () Int)

(declare-fun forall!5470 (List!26921 Int) Bool)

(assert (=> d!669154 (= lt!839394 (forall!5470 rules!1750 lambda!85279))))

(declare-fun e!1446269 () Bool)

(assert (=> d!669154 (= lt!839394 e!1446269)))

(declare-fun res!965740 () Bool)

(assert (=> d!669154 (=> res!965740 e!1446269)))

(assert (=> d!669154 (= res!965740 (not ((_ is Cons!26827) rules!1750)))))

(assert (=> d!669154 (= (rulesValidInductive!1485 thiss!16613 rules!1750) lt!839394)))

(declare-fun b!2258812 () Bool)

(declare-fun e!1446268 () Bool)

(assert (=> b!2258812 (= e!1446269 e!1446268)))

(declare-fun res!965739 () Bool)

(assert (=> b!2258812 (=> (not res!965739) (not e!1446268))))

(assert (=> b!2258812 (= res!965739 (ruleValid!1357 thiss!16613 (h!32228 rules!1750)))))

(declare-fun b!2258813 () Bool)

(assert (=> b!2258813 (= e!1446268 (rulesValidInductive!1485 thiss!16613 (t!201437 rules!1750)))))

(assert (= (and d!669154 (not res!965740)) b!2258812))

(assert (= (and b!2258812 res!965739) b!2258813))

(declare-fun m!2688669 () Bool)

(assert (=> d!669154 m!2688669))

(declare-fun m!2688671 () Bool)

(assert (=> b!2258812 m!2688671))

(declare-fun m!2688673 () Bool)

(assert (=> b!2258813 m!2688673))

(assert (=> b!2258731 d!669154))

(declare-fun b!2258826 () Bool)

(declare-fun e!1446278 () Bool)

(declare-fun e!1446276 () Bool)

(assert (=> b!2258826 (= e!1446278 e!1446276)))

(declare-fun c!358867 () Bool)

(assert (=> b!2258826 (= c!358867 ((_ is IntegerValue!13282) (value!135372 (h!32229 tokens!456))))))

(declare-fun b!2258827 () Bool)

(declare-fun inv!17 (TokenValue!4427) Bool)

(assert (=> b!2258827 (= e!1446276 (inv!17 (value!135372 (h!32229 tokens!456))))))

(declare-fun b!2258828 () Bool)

(declare-fun res!965743 () Bool)

(declare-fun e!1446277 () Bool)

(assert (=> b!2258828 (=> res!965743 e!1446277)))

(assert (=> b!2258828 (= res!965743 (not ((_ is IntegerValue!13283) (value!135372 (h!32229 tokens!456)))))))

(assert (=> b!2258828 (= e!1446276 e!1446277)))

(declare-fun b!2258829 () Bool)

(declare-fun inv!16 (TokenValue!4427) Bool)

(assert (=> b!2258829 (= e!1446278 (inv!16 (value!135372 (h!32229 tokens!456))))))

(declare-fun d!669182 () Bool)

(declare-fun c!358868 () Bool)

(assert (=> d!669182 (= c!358868 ((_ is IntegerValue!13281) (value!135372 (h!32229 tokens!456))))))

(assert (=> d!669182 (= (inv!21 (value!135372 (h!32229 tokens!456))) e!1446278)))

(declare-fun b!2258830 () Bool)

(declare-fun inv!15 (TokenValue!4427) Bool)

(assert (=> b!2258830 (= e!1446277 (inv!15 (value!135372 (h!32229 tokens!456))))))

(assert (= (and d!669182 c!358868) b!2258829))

(assert (= (and d!669182 (not c!358868)) b!2258826))

(assert (= (and b!2258826 c!358867) b!2258827))

(assert (= (and b!2258826 (not c!358867)) b!2258828))

(assert (= (and b!2258828 (not res!965743)) b!2258830))

(declare-fun m!2688675 () Bool)

(assert (=> b!2258827 m!2688675))

(declare-fun m!2688677 () Bool)

(assert (=> b!2258829 m!2688677))

(declare-fun m!2688679 () Bool)

(assert (=> b!2258830 m!2688679))

(assert (=> b!2258730 d!669182))

(declare-fun d!669184 () Bool)

(declare-fun lt!839397 () Int)

(assert (=> d!669184 (= lt!839397 (size!21014 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))

(declare-fun size!21016 (Conc!8678) Int)

(assert (=> d!669184 (= lt!839397 (size!21016 (c!358846 (charsOf!2653 (head!4842 tokens!456)))))))

(assert (=> d!669184 (= (size!21013 (charsOf!2653 (head!4842 tokens!456))) lt!839397)))

(declare-fun bs!455314 () Bool)

(assert (= bs!455314 d!669184))

(assert (=> bs!455314 m!2688553))

(assert (=> bs!455314 m!2688593))

(assert (=> bs!455314 m!2688593))

(declare-fun m!2688681 () Bool)

(assert (=> bs!455314 m!2688681))

(declare-fun m!2688683 () Bool)

(assert (=> bs!455314 m!2688683))

(assert (=> b!2258719 d!669184))

(declare-fun d!669186 () Bool)

(declare-fun lt!839400 () BalanceConc!17084)

(assert (=> d!669186 (= (list!10334 lt!839400) (originalCharacters!5035 (head!4842 tokens!456)))))

(declare-fun dynLambda!11628 (Int TokenValue!4427) BalanceConc!17084)

(assert (=> d!669186 (= lt!839400 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456))))))

(assert (=> d!669186 (= (charsOf!2653 (head!4842 tokens!456)) lt!839400)))

(declare-fun b_lambda!72093 () Bool)

(assert (=> (not b_lambda!72093) (not d!669186)))

(declare-fun t!201440 () Bool)

(declare-fun tb!133839 () Bool)

(assert (=> (and b!2258722 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456))))) t!201440) tb!133839))

(declare-fun b!2258835 () Bool)

(declare-fun e!1446281 () Bool)

(declare-fun tp!714184 () Bool)

(declare-fun inv!36358 (Conc!8678) Bool)

(assert (=> b!2258835 (= e!1446281 (and (inv!36358 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456))))) tp!714184))))

(declare-fun result!163174 () Bool)

(declare-fun inv!36359 (BalanceConc!17084) Bool)

(assert (=> tb!133839 (= result!163174 (and (inv!36359 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456)))) e!1446281))))

(assert (= tb!133839 b!2258835))

(declare-fun m!2688685 () Bool)

(assert (=> b!2258835 m!2688685))

(declare-fun m!2688687 () Bool)

(assert (=> tb!133839 m!2688687))

(assert (=> d!669186 t!201440))

(declare-fun b_and!177409 () Bool)

(assert (= b_and!177395 (and (=> t!201440 result!163174) b_and!177409)))

(declare-fun t!201442 () Bool)

(declare-fun tb!133841 () Bool)

(assert (=> (and b!2258732 (= (toChars!5866 (transformation!4265 otherR!12)) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456))))) t!201442) tb!133841))

(declare-fun result!163178 () Bool)

(assert (= result!163178 result!163174))

(assert (=> d!669186 t!201442))

(declare-fun b_and!177411 () Bool)

(assert (= b_and!177399 (and (=> t!201442 result!163178) b_and!177411)))

(declare-fun tb!133843 () Bool)

(declare-fun t!201444 () Bool)

(assert (=> (and b!2258714 (= (toChars!5866 (transformation!4265 r!2363)) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456))))) t!201444) tb!133843))

(declare-fun result!163180 () Bool)

(assert (= result!163180 result!163174))

(assert (=> d!669186 t!201444))

(declare-fun b_and!177413 () Bool)

(assert (= b_and!177403 (and (=> t!201444 result!163180) b_and!177413)))

(declare-fun t!201446 () Bool)

(declare-fun tb!133845 () Bool)

(assert (=> (and b!2258710 (= (toChars!5866 (transformation!4265 (h!32228 rules!1750))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456))))) t!201446) tb!133845))

(declare-fun result!163182 () Bool)

(assert (= result!163182 result!163174))

(assert (=> d!669186 t!201446))

(declare-fun b_and!177415 () Bool)

(assert (= b_and!177407 (and (=> t!201446 result!163182) b_and!177415)))

(declare-fun m!2688689 () Bool)

(assert (=> d!669186 m!2688689))

(declare-fun m!2688691 () Bool)

(assert (=> d!669186 m!2688691))

(assert (=> b!2258719 d!669186))

(declare-fun d!669188 () Bool)

(assert (=> d!669188 (= (head!4842 tokens!456) (h!32229 tokens!456))))

(assert (=> b!2258719 d!669188))

(declare-fun d!669190 () Bool)

(declare-fun lt!839403 () Int)

(assert (=> d!669190 (>= lt!839403 0)))

(declare-fun e!1446284 () Int)

(assert (=> d!669190 (= lt!839403 e!1446284)))

(declare-fun c!358871 () Bool)

(assert (=> d!669190 (= c!358871 ((_ is Nil!26826) otherP!12))))

(assert (=> d!669190 (= (size!21014 otherP!12) lt!839403)))

(declare-fun b!2258840 () Bool)

(assert (=> b!2258840 (= e!1446284 0)))

(declare-fun b!2258841 () Bool)

(assert (=> b!2258841 (= e!1446284 (+ 1 (size!21014 (t!201436 otherP!12))))))

(assert (= (and d!669190 c!358871) b!2258840))

(assert (= (and d!669190 (not c!358871)) b!2258841))

(declare-fun m!2688693 () Bool)

(assert (=> b!2258841 m!2688693))

(assert (=> b!2258719 d!669190))

(declare-fun d!669192 () Bool)

(assert (=> d!669192 (= (isEmpty!15155 rules!1750) ((_ is Nil!26827) rules!1750))))

(assert (=> b!2258720 d!669192))

(assert (=> b!2258707 d!669188))

(declare-fun d!669194 () Bool)

(declare-fun res!965748 () Bool)

(declare-fun e!1446287 () Bool)

(assert (=> d!669194 (=> (not res!965748) (not e!1446287))))

(declare-fun isEmpty!15159 (List!26920) Bool)

(assert (=> d!669194 (= res!965748 (not (isEmpty!15159 (originalCharacters!5035 (h!32229 tokens!456)))))))

(assert (=> d!669194 (= (inv!36357 (h!32229 tokens!456)) e!1446287)))

(declare-fun b!2258846 () Bool)

(declare-fun res!965749 () Bool)

(assert (=> b!2258846 (=> (not res!965749) (not e!1446287))))

(assert (=> b!2258846 (= res!965749 (= (originalCharacters!5035 (h!32229 tokens!456)) (list!10334 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456))))))))

(declare-fun b!2258847 () Bool)

(assert (=> b!2258847 (= e!1446287 (= (size!21012 (h!32229 tokens!456)) (size!21014 (originalCharacters!5035 (h!32229 tokens!456)))))))

(assert (= (and d!669194 res!965748) b!2258846))

(assert (= (and b!2258846 res!965749) b!2258847))

(declare-fun b_lambda!72095 () Bool)

(assert (=> (not b_lambda!72095) (not b!2258846)))

(declare-fun t!201448 () Bool)

(declare-fun tb!133847 () Bool)

(assert (=> (and b!2258722 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) t!201448) tb!133847))

(declare-fun b!2258848 () Bool)

(declare-fun e!1446288 () Bool)

(declare-fun tp!714185 () Bool)

(assert (=> b!2258848 (= e!1446288 (and (inv!36358 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456))))) tp!714185))))

(declare-fun result!163184 () Bool)

(assert (=> tb!133847 (= result!163184 (and (inv!36359 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456)))) e!1446288))))

(assert (= tb!133847 b!2258848))

(declare-fun m!2688695 () Bool)

(assert (=> b!2258848 m!2688695))

(declare-fun m!2688697 () Bool)

(assert (=> tb!133847 m!2688697))

(assert (=> b!2258846 t!201448))

(declare-fun b_and!177417 () Bool)

(assert (= b_and!177409 (and (=> t!201448 result!163184) b_and!177417)))

(declare-fun t!201450 () Bool)

(declare-fun tb!133849 () Bool)

(assert (=> (and b!2258732 (= (toChars!5866 (transformation!4265 otherR!12)) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) t!201450) tb!133849))

(declare-fun result!163186 () Bool)

(assert (= result!163186 result!163184))

(assert (=> b!2258846 t!201450))

(declare-fun b_and!177419 () Bool)

(assert (= b_and!177411 (and (=> t!201450 result!163186) b_and!177419)))

(declare-fun t!201452 () Bool)

(declare-fun tb!133851 () Bool)

(assert (=> (and b!2258714 (= (toChars!5866 (transformation!4265 r!2363)) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) t!201452) tb!133851))

(declare-fun result!163188 () Bool)

(assert (= result!163188 result!163184))

(assert (=> b!2258846 t!201452))

(declare-fun b_and!177421 () Bool)

(assert (= b_and!177413 (and (=> t!201452 result!163188) b_and!177421)))

(declare-fun t!201454 () Bool)

(declare-fun tb!133853 () Bool)

(assert (=> (and b!2258710 (= (toChars!5866 (transformation!4265 (h!32228 rules!1750))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) t!201454) tb!133853))

(declare-fun result!163190 () Bool)

(assert (= result!163190 result!163184))

(assert (=> b!2258846 t!201454))

(declare-fun b_and!177423 () Bool)

(assert (= b_and!177415 (and (=> t!201454 result!163190) b_and!177423)))

(declare-fun m!2688699 () Bool)

(assert (=> d!669194 m!2688699))

(declare-fun m!2688701 () Bool)

(assert (=> b!2258846 m!2688701))

(assert (=> b!2258846 m!2688701))

(declare-fun m!2688703 () Bool)

(assert (=> b!2258846 m!2688703))

(declare-fun m!2688705 () Bool)

(assert (=> b!2258847 m!2688705))

(assert (=> b!2258708 d!669194))

(declare-fun d!669196 () Bool)

(declare-fun list!10337 (Conc!8679) List!26922)

(assert (=> d!669196 (= (list!10333 (_1!15712 lt!839367)) (list!10337 (c!358848 (_1!15712 lt!839367))))))

(declare-fun bs!455315 () Bool)

(assert (= bs!455315 d!669196))

(declare-fun m!2688707 () Bool)

(assert (=> bs!455315 m!2688707))

(assert (=> b!2258706 d!669196))

(declare-fun d!669198 () Bool)

(declare-fun list!10338 (Conc!8678) List!26920)

(assert (=> d!669198 (= (list!10334 (_2!15712 lt!839367)) (list!10338 (c!358846 (_2!15712 lt!839367))))))

(declare-fun bs!455316 () Bool)

(assert (= bs!455316 d!669198))

(declare-fun m!2688709 () Bool)

(assert (=> bs!455316 m!2688709))

(assert (=> b!2258706 d!669198))

(declare-fun b!2258946 () Bool)

(declare-fun res!965810 () Bool)

(declare-fun e!1446347 () Bool)

(assert (=> b!2258946 (=> (not res!965810) (not e!1446347))))

(declare-fun lt!839429 () tuple2!26404)

(declare-fun lexList!1062 (LexerInterface!3862 List!26921 List!26920) tuple2!26406)

(assert (=> b!2258946 (= res!965810 (= (list!10333 (_1!15712 lt!839429)) (_1!15713 (lexList!1062 thiss!16613 rules!1750 (list!10334 (seqFromList!2969 input!1722))))))))

(declare-fun b!2258947 () Bool)

(declare-fun e!1446348 () Bool)

(assert (=> b!2258947 (= e!1446348 (= (_2!15712 lt!839429) (seqFromList!2969 input!1722)))))

(declare-fun b!2258948 () Bool)

(assert (=> b!2258948 (= e!1446347 (= (list!10334 (_2!15712 lt!839429)) (_2!15713 (lexList!1062 thiss!16613 rules!1750 (list!10334 (seqFromList!2969 input!1722))))))))

(declare-fun b!2258949 () Bool)

(declare-fun e!1446349 () Bool)

(declare-fun isEmpty!15160 (BalanceConc!17086) Bool)

(assert (=> b!2258949 (= e!1446349 (not (isEmpty!15160 (_1!15712 lt!839429))))))

(declare-fun d!669200 () Bool)

(assert (=> d!669200 e!1446347))

(declare-fun res!965808 () Bool)

(assert (=> d!669200 (=> (not res!965808) (not e!1446347))))

(assert (=> d!669200 (= res!965808 e!1446348)))

(declare-fun c!358889 () Bool)

(declare-fun size!21017 (BalanceConc!17086) Int)

(assert (=> d!669200 (= c!358889 (> (size!21017 (_1!15712 lt!839429)) 0))))

(declare-fun lexTailRecV2!737 (LexerInterface!3862 List!26921 BalanceConc!17084 BalanceConc!17084 BalanceConc!17084 BalanceConc!17086) tuple2!26404)

(assert (=> d!669200 (= lt!839429 (lexTailRecV2!737 thiss!16613 rules!1750 (seqFromList!2969 input!1722) (BalanceConc!17085 Empty!8678) (seqFromList!2969 input!1722) (BalanceConc!17087 Empty!8679)))))

(assert (=> d!669200 (= (lex!1701 thiss!16613 rules!1750 (seqFromList!2969 input!1722)) lt!839429)))

(declare-fun b!2258950 () Bool)

(assert (=> b!2258950 (= e!1446348 e!1446349)))

(declare-fun res!965809 () Bool)

(assert (=> b!2258950 (= res!965809 (< (size!21013 (_2!15712 lt!839429)) (size!21013 (seqFromList!2969 input!1722))))))

(assert (=> b!2258950 (=> (not res!965809) (not e!1446349))))

(assert (= (and d!669200 c!358889) b!2258950))

(assert (= (and d!669200 (not c!358889)) b!2258947))

(assert (= (and b!2258950 res!965809) b!2258949))

(assert (= (and d!669200 res!965808) b!2258946))

(assert (= (and b!2258946 res!965810) b!2258948))

(declare-fun m!2688789 () Bool)

(assert (=> b!2258946 m!2688789))

(assert (=> b!2258946 m!2688573))

(declare-fun m!2688791 () Bool)

(assert (=> b!2258946 m!2688791))

(assert (=> b!2258946 m!2688791))

(declare-fun m!2688793 () Bool)

(assert (=> b!2258946 m!2688793))

(declare-fun m!2688795 () Bool)

(assert (=> b!2258950 m!2688795))

(assert (=> b!2258950 m!2688573))

(declare-fun m!2688797 () Bool)

(assert (=> b!2258950 m!2688797))

(declare-fun m!2688799 () Bool)

(assert (=> b!2258949 m!2688799))

(declare-fun m!2688801 () Bool)

(assert (=> b!2258948 m!2688801))

(assert (=> b!2258948 m!2688573))

(assert (=> b!2258948 m!2688791))

(assert (=> b!2258948 m!2688791))

(assert (=> b!2258948 m!2688793))

(declare-fun m!2688803 () Bool)

(assert (=> d!669200 m!2688803))

(assert (=> d!669200 m!2688573))

(assert (=> d!669200 m!2688573))

(declare-fun m!2688805 () Bool)

(assert (=> d!669200 m!2688805))

(assert (=> b!2258706 d!669200))

(declare-fun d!669240 () Bool)

(declare-fun fromListB!1328 (List!26920) BalanceConc!17084)

(assert (=> d!669240 (= (seqFromList!2969 input!1722) (fromListB!1328 input!1722))))

(declare-fun bs!455322 () Bool)

(assert (= bs!455322 d!669240))

(declare-fun m!2688823 () Bool)

(assert (=> bs!455322 m!2688823))

(assert (=> b!2258706 d!669240))

(declare-fun b!2259010 () Bool)

(declare-fun e!1446383 () Int)

(assert (=> b!2259010 (= e!1446383 (- 1))))

(declare-fun d!669246 () Bool)

(declare-fun lt!839432 () Int)

(assert (=> d!669246 (>= lt!839432 0)))

(declare-fun e!1446382 () Int)

(assert (=> d!669246 (= lt!839432 e!1446382)))

(declare-fun c!358895 () Bool)

(assert (=> d!669246 (= c!358895 (and ((_ is Cons!26827) rules!1750) (= (h!32228 rules!1750) otherR!12)))))

(assert (=> d!669246 (contains!4617 rules!1750 otherR!12)))

(assert (=> d!669246 (= (getIndex!286 rules!1750 otherR!12) lt!839432)))

(declare-fun b!2259009 () Bool)

(assert (=> b!2259009 (= e!1446383 (+ 1 (getIndex!286 (t!201437 rules!1750) otherR!12)))))

(declare-fun b!2259008 () Bool)

(assert (=> b!2259008 (= e!1446382 e!1446383)))

(declare-fun c!358894 () Bool)

(assert (=> b!2259008 (= c!358894 (and ((_ is Cons!26827) rules!1750) (not (= (h!32228 rules!1750) otherR!12))))))

(declare-fun b!2259007 () Bool)

(assert (=> b!2259007 (= e!1446382 0)))

(assert (= (and d!669246 c!358895) b!2259007))

(assert (= (and d!669246 (not c!358895)) b!2259008))

(assert (= (and b!2259008 c!358894) b!2259009))

(assert (= (and b!2259008 (not c!358894)) b!2259010))

(assert (=> d!669246 m!2688577))

(declare-fun m!2688829 () Bool)

(assert (=> b!2259009 m!2688829))

(assert (=> b!2258717 d!669246))

(declare-fun b!2259014 () Bool)

(declare-fun e!1446385 () Int)

(assert (=> b!2259014 (= e!1446385 (- 1))))

(declare-fun d!669248 () Bool)

(declare-fun lt!839433 () Int)

(assert (=> d!669248 (>= lt!839433 0)))

(declare-fun e!1446384 () Int)

(assert (=> d!669248 (= lt!839433 e!1446384)))

(declare-fun c!358897 () Bool)

(assert (=> d!669248 (= c!358897 (and ((_ is Cons!26827) rules!1750) (= (h!32228 rules!1750) r!2363)))))

(assert (=> d!669248 (contains!4617 rules!1750 r!2363)))

(assert (=> d!669248 (= (getIndex!286 rules!1750 r!2363) lt!839433)))

(declare-fun b!2259013 () Bool)

(assert (=> b!2259013 (= e!1446385 (+ 1 (getIndex!286 (t!201437 rules!1750) r!2363)))))

(declare-fun b!2259012 () Bool)

(assert (=> b!2259012 (= e!1446384 e!1446385)))

(declare-fun c!358896 () Bool)

(assert (=> b!2259012 (= c!358896 (and ((_ is Cons!26827) rules!1750) (not (= (h!32228 rules!1750) r!2363))))))

(declare-fun b!2259011 () Bool)

(assert (=> b!2259011 (= e!1446384 0)))

(assert (= (and d!669248 c!358897) b!2259011))

(assert (= (and d!669248 (not c!358897)) b!2259012))

(assert (= (and b!2259012 c!358896) b!2259013))

(assert (= (and b!2259012 (not c!358896)) b!2259014))

(assert (=> d!669248 m!2688543))

(declare-fun m!2688831 () Bool)

(assert (=> b!2259013 m!2688831))

(assert (=> b!2258717 d!669248))

(declare-fun d!669250 () Bool)

(declare-fun res!965818 () Bool)

(declare-fun e!1446398 () Bool)

(assert (=> d!669250 (=> (not res!965818) (not e!1446398))))

(declare-fun validRegex!2474 (Regex!6613) Bool)

(assert (=> d!669250 (= res!965818 (validRegex!2474 (regex!4265 otherR!12)))))

(assert (=> d!669250 (= (ruleValid!1357 thiss!16613 otherR!12) e!1446398)))

(declare-fun b!2259025 () Bool)

(declare-fun res!965819 () Bool)

(assert (=> b!2259025 (=> (not res!965819) (not e!1446398))))

(declare-fun nullable!1816 (Regex!6613) Bool)

(assert (=> b!2259025 (= res!965819 (not (nullable!1816 (regex!4265 otherR!12))))))

(declare-fun b!2259026 () Bool)

(assert (=> b!2259026 (= e!1446398 (not (= (tag!4755 otherR!12) (String!29240 ""))))))

(assert (= (and d!669250 res!965818) b!2259025))

(assert (= (and b!2259025 res!965819) b!2259026))

(declare-fun m!2688833 () Bool)

(assert (=> d!669250 m!2688833))

(declare-fun m!2688835 () Bool)

(assert (=> b!2259025 m!2688835))

(assert (=> b!2258717 d!669250))

(declare-fun d!669252 () Bool)

(assert (=> d!669252 (ruleValid!1357 thiss!16613 otherR!12)))

(declare-fun lt!839436 () Unit!39752)

(declare-fun choose!13217 (LexerInterface!3862 Rule!8330 List!26921) Unit!39752)

(assert (=> d!669252 (= lt!839436 (choose!13217 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!669252 (contains!4617 rules!1750 otherR!12)))

(assert (=> d!669252 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!764 thiss!16613 otherR!12 rules!1750) lt!839436)))

(declare-fun bs!455323 () Bool)

(assert (= bs!455323 d!669252))

(assert (=> bs!455323 m!2688549))

(declare-fun m!2688845 () Bool)

(assert (=> bs!455323 m!2688845))

(assert (=> bs!455323 m!2688577))

(assert (=> b!2258717 d!669252))

(declare-fun d!669254 () Bool)

(assert (=> d!669254 (= (inv!36353 (tag!4755 r!2363)) (= (mod (str.len (value!135371 (tag!4755 r!2363))) 2) 0))))

(assert (=> b!2258726 d!669254))

(declare-fun d!669256 () Bool)

(declare-fun res!965820 () Bool)

(declare-fun e!1446407 () Bool)

(assert (=> d!669256 (=> (not res!965820) (not e!1446407))))

(assert (=> d!669256 (= res!965820 (semiInverseModEq!1718 (toChars!5866 (transformation!4265 r!2363)) (toValue!6007 (transformation!4265 r!2363))))))

(assert (=> d!669256 (= (inv!36356 (transformation!4265 r!2363)) e!1446407)))

(declare-fun b!2259036 () Bool)

(assert (=> b!2259036 (= e!1446407 (equivClasses!1637 (toChars!5866 (transformation!4265 r!2363)) (toValue!6007 (transformation!4265 r!2363))))))

(assert (= (and d!669256 res!965820) b!2259036))

(declare-fun m!2688847 () Bool)

(assert (=> d!669256 m!2688847))

(declare-fun m!2688849 () Bool)

(assert (=> b!2259036 m!2688849))

(assert (=> b!2258726 d!669256))

(declare-fun b!2259065 () Bool)

(declare-fun res!965844 () Bool)

(declare-fun e!1446427 () Bool)

(assert (=> b!2259065 (=> (not res!965844) (not e!1446427))))

(declare-fun tail!3259 (List!26920) List!26920)

(assert (=> b!2259065 (= res!965844 (isEmpty!15159 (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))

(declare-fun b!2259066 () Bool)

(declare-fun res!965841 () Bool)

(declare-fun e!1446424 () Bool)

(assert (=> b!2259066 (=> res!965841 e!1446424)))

(assert (=> b!2259066 (= res!965841 (not ((_ is ElementMatch!6613) (regex!4265 r!2363))))))

(declare-fun e!1446423 () Bool)

(assert (=> b!2259066 (= e!1446423 e!1446424)))

(declare-fun d!669258 () Bool)

(declare-fun e!1446422 () Bool)

(assert (=> d!669258 e!1446422))

(declare-fun c!358905 () Bool)

(assert (=> d!669258 (= c!358905 ((_ is EmptyExpr!6613) (regex!4265 r!2363)))))

(declare-fun lt!839439 () Bool)

(declare-fun e!1446428 () Bool)

(assert (=> d!669258 (= lt!839439 e!1446428)))

(declare-fun c!358904 () Bool)

(assert (=> d!669258 (= c!358904 (isEmpty!15159 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))

(assert (=> d!669258 (validRegex!2474 (regex!4265 r!2363))))

(assert (=> d!669258 (= (matchR!2874 (regex!4265 r!2363) (list!10334 (charsOf!2653 (head!4842 tokens!456)))) lt!839439)))

(declare-fun b!2259067 () Bool)

(declare-fun e!1446426 () Bool)

(declare-fun head!4844 (List!26920) C!13372)

(assert (=> b!2259067 (= e!1446426 (not (= (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456)))) (c!358847 (regex!4265 r!2363)))))))

(declare-fun b!2259068 () Bool)

(declare-fun res!965837 () Bool)

(assert (=> b!2259068 (=> (not res!965837) (not e!1446427))))

(declare-fun call!135754 () Bool)

(assert (=> b!2259068 (= res!965837 (not call!135754))))

(declare-fun b!2259069 () Bool)

(declare-fun derivativeStep!1478 (Regex!6613 C!13372) Regex!6613)

(assert (=> b!2259069 (= e!1446428 (matchR!2874 (derivativeStep!1478 (regex!4265 r!2363) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456))))) (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))

(declare-fun b!2259070 () Bool)

(assert (=> b!2259070 (= e!1446427 (= (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456)))) (c!358847 (regex!4265 r!2363))))))

(declare-fun b!2259071 () Bool)

(declare-fun res!965838 () Bool)

(assert (=> b!2259071 (=> res!965838 e!1446426)))

(assert (=> b!2259071 (= res!965838 (not (isEmpty!15159 (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))))

(declare-fun b!2259072 () Bool)

(assert (=> b!2259072 (= e!1446428 (nullable!1816 (regex!4265 r!2363)))))

(declare-fun b!2259073 () Bool)

(assert (=> b!2259073 (= e!1446422 e!1446423)))

(declare-fun c!358906 () Bool)

(assert (=> b!2259073 (= c!358906 ((_ is EmptyLang!6613) (regex!4265 r!2363)))))

(declare-fun bm!135749 () Bool)

(assert (=> bm!135749 (= call!135754 (isEmpty!15159 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))

(declare-fun b!2259074 () Bool)

(declare-fun e!1446425 () Bool)

(assert (=> b!2259074 (= e!1446424 e!1446425)))

(declare-fun res!965840 () Bool)

(assert (=> b!2259074 (=> (not res!965840) (not e!1446425))))

(assert (=> b!2259074 (= res!965840 (not lt!839439))))

(declare-fun b!2259075 () Bool)

(declare-fun res!965843 () Bool)

(assert (=> b!2259075 (=> res!965843 e!1446424)))

(assert (=> b!2259075 (= res!965843 e!1446427)))

(declare-fun res!965839 () Bool)

(assert (=> b!2259075 (=> (not res!965839) (not e!1446427))))

(assert (=> b!2259075 (= res!965839 lt!839439)))

(declare-fun b!2259076 () Bool)

(assert (=> b!2259076 (= e!1446423 (not lt!839439))))

(declare-fun b!2259077 () Bool)

(assert (=> b!2259077 (= e!1446425 e!1446426)))

(declare-fun res!965842 () Bool)

(assert (=> b!2259077 (=> res!965842 e!1446426)))

(assert (=> b!2259077 (= res!965842 call!135754)))

(declare-fun b!2259078 () Bool)

(assert (=> b!2259078 (= e!1446422 (= lt!839439 call!135754))))

(assert (= (and d!669258 c!358904) b!2259072))

(assert (= (and d!669258 (not c!358904)) b!2259069))

(assert (= (and d!669258 c!358905) b!2259078))

(assert (= (and d!669258 (not c!358905)) b!2259073))

(assert (= (and b!2259073 c!358906) b!2259076))

(assert (= (and b!2259073 (not c!358906)) b!2259066))

(assert (= (and b!2259066 (not res!965841)) b!2259075))

(assert (= (and b!2259075 res!965839) b!2259068))

(assert (= (and b!2259068 res!965837) b!2259065))

(assert (= (and b!2259065 res!965844) b!2259070))

(assert (= (and b!2259075 (not res!965843)) b!2259074))

(assert (= (and b!2259074 res!965840) b!2259077))

(assert (= (and b!2259077 (not res!965842)) b!2259071))

(assert (= (and b!2259071 (not res!965838)) b!2259067))

(assert (= (or b!2259078 b!2259068 b!2259077) bm!135749))

(assert (=> b!2259067 m!2688593))

(declare-fun m!2688851 () Bool)

(assert (=> b!2259067 m!2688851))

(assert (=> b!2259065 m!2688593))

(declare-fun m!2688853 () Bool)

(assert (=> b!2259065 m!2688853))

(assert (=> b!2259065 m!2688853))

(declare-fun m!2688855 () Bool)

(assert (=> b!2259065 m!2688855))

(assert (=> b!2259071 m!2688593))

(assert (=> b!2259071 m!2688853))

(assert (=> b!2259071 m!2688853))

(assert (=> b!2259071 m!2688855))

(assert (=> d!669258 m!2688593))

(declare-fun m!2688857 () Bool)

(assert (=> d!669258 m!2688857))

(declare-fun m!2688859 () Bool)

(assert (=> d!669258 m!2688859))

(assert (=> bm!135749 m!2688593))

(assert (=> bm!135749 m!2688857))

(assert (=> b!2259069 m!2688593))

(assert (=> b!2259069 m!2688851))

(assert (=> b!2259069 m!2688851))

(declare-fun m!2688861 () Bool)

(assert (=> b!2259069 m!2688861))

(assert (=> b!2259069 m!2688593))

(assert (=> b!2259069 m!2688853))

(assert (=> b!2259069 m!2688861))

(assert (=> b!2259069 m!2688853))

(declare-fun m!2688863 () Bool)

(assert (=> b!2259069 m!2688863))

(declare-fun m!2688865 () Bool)

(assert (=> b!2259072 m!2688865))

(assert (=> b!2259070 m!2688593))

(assert (=> b!2259070 m!2688851))

(assert (=> b!2258716 d!669258))

(declare-fun d!669260 () Bool)

(assert (=> d!669260 (= (list!10334 (charsOf!2653 (head!4842 tokens!456))) (list!10338 (c!358846 (charsOf!2653 (head!4842 tokens!456)))))))

(declare-fun bs!455324 () Bool)

(assert (= bs!455324 d!669260))

(declare-fun m!2688867 () Bool)

(assert (=> bs!455324 m!2688867))

(assert (=> b!2258716 d!669260))

(assert (=> b!2258716 d!669186))

(assert (=> b!2258716 d!669188))

(declare-fun d!669262 () Bool)

(declare-fun e!1446435 () Bool)

(assert (=> d!669262 e!1446435))

(declare-fun res!965853 () Bool)

(assert (=> d!669262 (=> res!965853 e!1446435)))

(declare-fun lt!839442 () Bool)

(assert (=> d!669262 (= res!965853 (not lt!839442))))

(declare-fun e!1446436 () Bool)

(assert (=> d!669262 (= lt!839442 e!1446436)))

(declare-fun res!965855 () Bool)

(assert (=> d!669262 (=> res!965855 e!1446436)))

(assert (=> d!669262 (= res!965855 ((_ is Nil!26826) otherP!12))))

(assert (=> d!669262 (= (isPrefix!2255 otherP!12 input!1722) lt!839442)))

(declare-fun b!2259088 () Bool)

(declare-fun res!965854 () Bool)

(declare-fun e!1446437 () Bool)

(assert (=> b!2259088 (=> (not res!965854) (not e!1446437))))

(assert (=> b!2259088 (= res!965854 (= (head!4844 otherP!12) (head!4844 input!1722)))))

(declare-fun b!2259087 () Bool)

(assert (=> b!2259087 (= e!1446436 e!1446437)))

(declare-fun res!965856 () Bool)

(assert (=> b!2259087 (=> (not res!965856) (not e!1446437))))

(assert (=> b!2259087 (= res!965856 (not ((_ is Nil!26826) input!1722)))))

(declare-fun b!2259089 () Bool)

(assert (=> b!2259089 (= e!1446437 (isPrefix!2255 (tail!3259 otherP!12) (tail!3259 input!1722)))))

(declare-fun b!2259090 () Bool)

(assert (=> b!2259090 (= e!1446435 (>= (size!21014 input!1722) (size!21014 otherP!12)))))

(assert (= (and d!669262 (not res!965855)) b!2259087))

(assert (= (and b!2259087 res!965856) b!2259088))

(assert (= (and b!2259088 res!965854) b!2259089))

(assert (= (and d!669262 (not res!965853)) b!2259090))

(declare-fun m!2688869 () Bool)

(assert (=> b!2259088 m!2688869))

(declare-fun m!2688871 () Bool)

(assert (=> b!2259088 m!2688871))

(declare-fun m!2688873 () Bool)

(assert (=> b!2259089 m!2688873))

(declare-fun m!2688875 () Bool)

(assert (=> b!2259089 m!2688875))

(assert (=> b!2259089 m!2688873))

(assert (=> b!2259089 m!2688875))

(declare-fun m!2688877 () Bool)

(assert (=> b!2259089 m!2688877))

(declare-fun m!2688879 () Bool)

(assert (=> b!2259090 m!2688879))

(assert (=> b!2259090 m!2688557))

(assert (=> b!2258705 d!669262))

(declare-fun d!669264 () Bool)

(assert (=> d!669264 (= (inv!36353 (tag!4755 otherR!12)) (= (mod (str.len (value!135371 (tag!4755 otherR!12))) 2) 0))))

(assert (=> b!2258703 d!669264))

(declare-fun d!669266 () Bool)

(declare-fun res!965857 () Bool)

(declare-fun e!1446438 () Bool)

(assert (=> d!669266 (=> (not res!965857) (not e!1446438))))

(assert (=> d!669266 (= res!965857 (semiInverseModEq!1718 (toChars!5866 (transformation!4265 otherR!12)) (toValue!6007 (transformation!4265 otherR!12))))))

(assert (=> d!669266 (= (inv!36356 (transformation!4265 otherR!12)) e!1446438)))

(declare-fun b!2259091 () Bool)

(assert (=> b!2259091 (= e!1446438 (equivClasses!1637 (toChars!5866 (transformation!4265 otherR!12)) (toValue!6007 (transformation!4265 otherR!12))))))

(assert (= (and d!669266 res!965857) b!2259091))

(declare-fun m!2688881 () Bool)

(assert (=> d!669266 m!2688881))

(declare-fun m!2688883 () Bool)

(assert (=> b!2259091 m!2688883))

(assert (=> b!2258703 d!669266))

(declare-fun d!669268 () Bool)

(declare-fun res!965858 () Bool)

(declare-fun e!1446439 () Bool)

(assert (=> d!669268 (=> (not res!965858) (not e!1446439))))

(assert (=> d!669268 (= res!965858 (validRegex!2474 (regex!4265 r!2363)))))

(assert (=> d!669268 (= (ruleValid!1357 thiss!16613 r!2363) e!1446439)))

(declare-fun b!2259092 () Bool)

(declare-fun res!965859 () Bool)

(assert (=> b!2259092 (=> (not res!965859) (not e!1446439))))

(assert (=> b!2259092 (= res!965859 (not (nullable!1816 (regex!4265 r!2363))))))

(declare-fun b!2259093 () Bool)

(assert (=> b!2259093 (= e!1446439 (not (= (tag!4755 r!2363) (String!29240 ""))))))

(assert (= (and d!669268 res!965858) b!2259092))

(assert (= (and b!2259092 res!965859) b!2259093))

(assert (=> d!669268 m!2688859))

(assert (=> b!2259092 m!2688865))

(assert (=> b!2258704 d!669268))

(declare-fun d!669270 () Bool)

(assert (=> d!669270 (ruleValid!1357 thiss!16613 r!2363)))

(declare-fun lt!839443 () Unit!39752)

(assert (=> d!669270 (= lt!839443 (choose!13217 thiss!16613 r!2363 rules!1750))))

(assert (=> d!669270 (contains!4617 rules!1750 r!2363)))

(assert (=> d!669270 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!764 thiss!16613 r!2363 rules!1750) lt!839443)))

(declare-fun bs!455325 () Bool)

(assert (= bs!455325 d!669270))

(assert (=> bs!455325 m!2688561))

(declare-fun m!2688885 () Bool)

(assert (=> bs!455325 m!2688885))

(assert (=> bs!455325 m!2688543))

(assert (=> b!2258704 d!669270))

(declare-fun d!669272 () Bool)

(declare-fun lt!839444 () Bool)

(assert (=> d!669272 (= lt!839444 (select (content!3571 rules!1750) otherR!12))))

(declare-fun e!1446441 () Bool)

(assert (=> d!669272 (= lt!839444 e!1446441)))

(declare-fun res!965861 () Bool)

(assert (=> d!669272 (=> (not res!965861) (not e!1446441))))

(assert (=> d!669272 (= res!965861 ((_ is Cons!26827) rules!1750))))

(assert (=> d!669272 (= (contains!4617 rules!1750 otherR!12) lt!839444)))

(declare-fun b!2259094 () Bool)

(declare-fun e!1446440 () Bool)

(assert (=> b!2259094 (= e!1446441 e!1446440)))

(declare-fun res!965860 () Bool)

(assert (=> b!2259094 (=> res!965860 e!1446440)))

(assert (=> b!2259094 (= res!965860 (= (h!32228 rules!1750) otherR!12))))

(declare-fun b!2259095 () Bool)

(assert (=> b!2259095 (= e!1446440 (contains!4617 (t!201437 rules!1750) otherR!12))))

(assert (= (and d!669272 res!965861) b!2259094))

(assert (= (and b!2259094 (not res!965860)) b!2259095))

(assert (=> d!669272 m!2688617))

(declare-fun m!2688887 () Bool)

(assert (=> d!669272 m!2688887))

(declare-fun m!2688889 () Bool)

(assert (=> b!2259095 m!2688889))

(assert (=> b!2258725 d!669272))

(declare-fun b!2259106 () Bool)

(declare-fun e!1446444 () Bool)

(assert (=> b!2259106 (= e!1446444 tp_is_empty!10447)))

(declare-fun b!2259109 () Bool)

(declare-fun tp!714263 () Bool)

(declare-fun tp!714265 () Bool)

(assert (=> b!2259109 (= e!1446444 (and tp!714263 tp!714265))))

(declare-fun b!2259107 () Bool)

(declare-fun tp!714266 () Bool)

(declare-fun tp!714267 () Bool)

(assert (=> b!2259107 (= e!1446444 (and tp!714266 tp!714267))))

(assert (=> b!2258724 (= tp!714171 e!1446444)))

(declare-fun b!2259108 () Bool)

(declare-fun tp!714264 () Bool)

(assert (=> b!2259108 (= e!1446444 tp!714264)))

(assert (= (and b!2258724 ((_ is ElementMatch!6613) (regex!4265 (rule!6575 (h!32229 tokens!456))))) b!2259106))

(assert (= (and b!2258724 ((_ is Concat!11041) (regex!4265 (rule!6575 (h!32229 tokens!456))))) b!2259107))

(assert (= (and b!2258724 ((_ is Star!6613) (regex!4265 (rule!6575 (h!32229 tokens!456))))) b!2259108))

(assert (= (and b!2258724 ((_ is Union!6613) (regex!4265 (rule!6575 (h!32229 tokens!456))))) b!2259109))

(declare-fun b!2259114 () Bool)

(declare-fun e!1446447 () Bool)

(declare-fun tp!714270 () Bool)

(assert (=> b!2259114 (= e!1446447 (and tp_is_empty!10447 tp!714270))))

(assert (=> b!2258711 (= tp!714173 e!1446447)))

(assert (= (and b!2258711 ((_ is Cons!26826) (t!201436 suffix!886))) b!2259114))

(declare-fun b!2259115 () Bool)

(declare-fun e!1446448 () Bool)

(assert (=> b!2259115 (= e!1446448 tp_is_empty!10447)))

(declare-fun b!2259118 () Bool)

(declare-fun tp!714271 () Bool)

(declare-fun tp!714273 () Bool)

(assert (=> b!2259118 (= e!1446448 (and tp!714271 tp!714273))))

(declare-fun b!2259116 () Bool)

(declare-fun tp!714274 () Bool)

(declare-fun tp!714275 () Bool)

(assert (=> b!2259116 (= e!1446448 (and tp!714274 tp!714275))))

(assert (=> b!2258733 (= tp!714175 e!1446448)))

(declare-fun b!2259117 () Bool)

(declare-fun tp!714272 () Bool)

(assert (=> b!2259117 (= e!1446448 tp!714272)))

(assert (= (and b!2258733 ((_ is ElementMatch!6613) (regex!4265 (h!32228 rules!1750)))) b!2259115))

(assert (= (and b!2258733 ((_ is Concat!11041) (regex!4265 (h!32228 rules!1750)))) b!2259116))

(assert (= (and b!2258733 ((_ is Star!6613) (regex!4265 (h!32228 rules!1750)))) b!2259117))

(assert (= (and b!2258733 ((_ is Union!6613) (regex!4265 (h!32228 rules!1750)))) b!2259118))

(declare-fun b!2259119 () Bool)

(declare-fun e!1446449 () Bool)

(declare-fun tp!714276 () Bool)

(assert (=> b!2259119 (= e!1446449 (and tp_is_empty!10447 tp!714276))))

(assert (=> b!2258730 (= tp!714180 e!1446449)))

(assert (= (and b!2258730 ((_ is Cons!26826) (originalCharacters!5035 (h!32229 tokens!456)))) b!2259119))

(declare-fun b!2259133 () Bool)

(declare-fun b_free!66661 () Bool)

(declare-fun b_next!67365 () Bool)

(assert (=> b!2259133 (= b_free!66661 (not b_next!67365))))

(declare-fun tp!714290 () Bool)

(declare-fun b_and!177449 () Bool)

(assert (=> b!2259133 (= tp!714290 b_and!177449)))

(declare-fun b_free!66663 () Bool)

(declare-fun b_next!67367 () Bool)

(assert (=> b!2259133 (= b_free!66663 (not b_next!67367))))

(declare-fun t!201480 () Bool)

(declare-fun tb!133879 () Bool)

(assert (=> (and b!2259133 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456))))) t!201480) tb!133879))

(declare-fun result!163232 () Bool)

(assert (= result!163232 result!163174))

(assert (=> d!669186 t!201480))

(declare-fun t!201482 () Bool)

(declare-fun tb!133881 () Bool)

(assert (=> (and b!2259133 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) t!201482) tb!133881))

(declare-fun result!163234 () Bool)

(assert (= result!163234 result!163184))

(assert (=> b!2258846 t!201482))

(declare-fun b_and!177451 () Bool)

(declare-fun tp!714291 () Bool)

(assert (=> b!2259133 (= tp!714291 (and (=> t!201480 result!163232) (=> t!201482 result!163234) b_and!177451))))

(declare-fun e!1446466 () Bool)

(assert (=> b!2258708 (= tp!714169 e!1446466)))

(declare-fun tp!714287 () Bool)

(declare-fun e!1446463 () Bool)

(declare-fun e!1446467 () Bool)

(declare-fun b!2259132 () Bool)

(assert (=> b!2259132 (= e!1446463 (and tp!714287 (inv!36353 (tag!4755 (rule!6575 (h!32229 (t!201438 tokens!456))))) (inv!36356 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) e!1446467))))

(declare-fun b!2259130 () Bool)

(declare-fun tp!714289 () Bool)

(declare-fun e!1446462 () Bool)

(assert (=> b!2259130 (= e!1446466 (and (inv!36357 (h!32229 (t!201438 tokens!456))) e!1446462 tp!714289))))

(declare-fun tp!714288 () Bool)

(declare-fun b!2259131 () Bool)

(assert (=> b!2259131 (= e!1446462 (and (inv!21 (value!135372 (h!32229 (t!201438 tokens!456)))) e!1446463 tp!714288))))

(assert (=> b!2259133 (= e!1446467 (and tp!714290 tp!714291))))

(assert (= b!2259132 b!2259133))

(assert (= b!2259131 b!2259132))

(assert (= b!2259130 b!2259131))

(assert (= (and b!2258708 ((_ is Cons!26828) (t!201438 tokens!456))) b!2259130))

(declare-fun m!2688891 () Bool)

(assert (=> b!2259132 m!2688891))

(declare-fun m!2688893 () Bool)

(assert (=> b!2259132 m!2688893))

(declare-fun m!2688895 () Bool)

(assert (=> b!2259130 m!2688895))

(declare-fun m!2688897 () Bool)

(assert (=> b!2259131 m!2688897))

(declare-fun b!2259134 () Bool)

(declare-fun e!1446468 () Bool)

(declare-fun tp!714292 () Bool)

(assert (=> b!2259134 (= e!1446468 (and tp_is_empty!10447 tp!714292))))

(assert (=> b!2258729 (= tp!714179 e!1446468)))

(assert (= (and b!2258729 ((_ is Cons!26826) (t!201436 input!1722))) b!2259134))

(declare-fun b!2259145 () Bool)

(declare-fun b_free!66665 () Bool)

(declare-fun b_next!67369 () Bool)

(assert (=> b!2259145 (= b_free!66665 (not b_next!67369))))

(declare-fun tp!714301 () Bool)

(declare-fun b_and!177453 () Bool)

(assert (=> b!2259145 (= tp!714301 b_and!177453)))

(declare-fun b_free!66667 () Bool)

(declare-fun b_next!67371 () Bool)

(assert (=> b!2259145 (= b_free!66667 (not b_next!67371))))

(declare-fun tb!133883 () Bool)

(declare-fun t!201484 () Bool)

(assert (=> (and b!2259145 (= (toChars!5866 (transformation!4265 (h!32228 (t!201437 rules!1750)))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456))))) t!201484) tb!133883))

(declare-fun result!163238 () Bool)

(assert (= result!163238 result!163174))

(assert (=> d!669186 t!201484))

(declare-fun t!201486 () Bool)

(declare-fun tb!133885 () Bool)

(assert (=> (and b!2259145 (= (toChars!5866 (transformation!4265 (h!32228 (t!201437 rules!1750)))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) t!201486) tb!133885))

(declare-fun result!163240 () Bool)

(assert (= result!163240 result!163184))

(assert (=> b!2258846 t!201486))

(declare-fun tp!714303 () Bool)

(declare-fun b_and!177455 () Bool)

(assert (=> b!2259145 (= tp!714303 (and (=> t!201484 result!163238) (=> t!201486 result!163240) b_and!177455))))

(declare-fun e!1446479 () Bool)

(assert (=> b!2259145 (= e!1446479 (and tp!714301 tp!714303))))

(declare-fun b!2259144 () Bool)

(declare-fun tp!714302 () Bool)

(declare-fun e!1446480 () Bool)

(assert (=> b!2259144 (= e!1446480 (and tp!714302 (inv!36353 (tag!4755 (h!32228 (t!201437 rules!1750)))) (inv!36356 (transformation!4265 (h!32228 (t!201437 rules!1750)))) e!1446479))))

(declare-fun b!2259143 () Bool)

(declare-fun e!1446478 () Bool)

(declare-fun tp!714304 () Bool)

(assert (=> b!2259143 (= e!1446478 (and e!1446480 tp!714304))))

(assert (=> b!2258727 (= tp!714168 e!1446478)))

(assert (= b!2259144 b!2259145))

(assert (= b!2259143 b!2259144))

(assert (= (and b!2258727 ((_ is Cons!26827) (t!201437 rules!1750))) b!2259143))

(declare-fun m!2688899 () Bool)

(assert (=> b!2259144 m!2688899))

(declare-fun m!2688901 () Bool)

(assert (=> b!2259144 m!2688901))

(declare-fun b!2259146 () Bool)

(declare-fun e!1446481 () Bool)

(assert (=> b!2259146 (= e!1446481 tp_is_empty!10447)))

(declare-fun b!2259149 () Bool)

(declare-fun tp!714305 () Bool)

(declare-fun tp!714307 () Bool)

(assert (=> b!2259149 (= e!1446481 (and tp!714305 tp!714307))))

(declare-fun b!2259147 () Bool)

(declare-fun tp!714308 () Bool)

(declare-fun tp!714309 () Bool)

(assert (=> b!2259147 (= e!1446481 (and tp!714308 tp!714309))))

(assert (=> b!2258726 (= tp!714177 e!1446481)))

(declare-fun b!2259148 () Bool)

(declare-fun tp!714306 () Bool)

(assert (=> b!2259148 (= e!1446481 tp!714306)))

(assert (= (and b!2258726 ((_ is ElementMatch!6613) (regex!4265 r!2363))) b!2259146))

(assert (= (and b!2258726 ((_ is Concat!11041) (regex!4265 r!2363))) b!2259147))

(assert (= (and b!2258726 ((_ is Star!6613) (regex!4265 r!2363))) b!2259148))

(assert (= (and b!2258726 ((_ is Union!6613) (regex!4265 r!2363))) b!2259149))

(declare-fun b!2259150 () Bool)

(declare-fun e!1446482 () Bool)

(declare-fun tp!714310 () Bool)

(assert (=> b!2259150 (= e!1446482 (and tp_is_empty!10447 tp!714310))))

(assert (=> b!2258715 (= tp!714181 e!1446482)))

(assert (= (and b!2258715 ((_ is Cons!26826) (t!201436 otherP!12))) b!2259150))

(declare-fun b!2259151 () Bool)

(declare-fun e!1446483 () Bool)

(assert (=> b!2259151 (= e!1446483 tp_is_empty!10447)))

(declare-fun b!2259154 () Bool)

(declare-fun tp!714311 () Bool)

(declare-fun tp!714313 () Bool)

(assert (=> b!2259154 (= e!1446483 (and tp!714311 tp!714313))))

(declare-fun b!2259152 () Bool)

(declare-fun tp!714314 () Bool)

(declare-fun tp!714315 () Bool)

(assert (=> b!2259152 (= e!1446483 (and tp!714314 tp!714315))))

(assert (=> b!2258703 (= tp!714178 e!1446483)))

(declare-fun b!2259153 () Bool)

(declare-fun tp!714312 () Bool)

(assert (=> b!2259153 (= e!1446483 tp!714312)))

(assert (= (and b!2258703 ((_ is ElementMatch!6613) (regex!4265 otherR!12))) b!2259151))

(assert (= (and b!2258703 ((_ is Concat!11041) (regex!4265 otherR!12))) b!2259152))

(assert (= (and b!2258703 ((_ is Star!6613) (regex!4265 otherR!12))) b!2259153))

(assert (= (and b!2258703 ((_ is Union!6613) (regex!4265 otherR!12))) b!2259154))

(declare-fun b_lambda!72103 () Bool)

(assert (= b_lambda!72095 (or (and b!2259145 b_free!66667 (= (toChars!5866 (transformation!4265 (h!32228 (t!201437 rules!1750)))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))))) (and b!2258722 b_free!66639) (and b!2258714 b_free!66647 (= (toChars!5866 (transformation!4265 r!2363)) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))))) (and b!2258710 b_free!66651 (= (toChars!5866 (transformation!4265 (h!32228 rules!1750))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))))) (and b!2258732 b_free!66643 (= (toChars!5866 (transformation!4265 otherR!12)) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))))) (and b!2259133 b_free!66663 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))))) b_lambda!72103)))

(check-sat b_and!177449 (not b!2258835) (not b!2259119) (not d!669240) (not b!2259131) (not b_next!67347) (not d!669198) (not b!2258812) (not b!2258946) (not d!669266) (not b!2259090) (not b!2259154) (not b!2259132) (not b!2259153) (not b!2259095) b_and!177419 (not d!669140) b_and!177451 (not b!2259025) (not b!2259107) (not b!2259109) (not b!2259148) (not b!2258813) (not b!2258746) (not b!2259069) b_and!177397 (not b!2259065) tp_is_empty!10447 (not b!2259108) (not b_next!67355) (not b!2259143) b_and!177393 (not tb!133847) (not b!2259070) (not d!669248) (not b!2258830) (not b!2259147) (not d!669268) (not b!2259152) (not d!669144) (not b!2259092) (not b!2258737) (not b!2258829) (not d!669186) (not b!2259072) (not b_next!67341) (not b!2259036) b_and!177405 (not b!2259116) b_and!177401 (not b!2259144) (not d!669250) (not d!669152) (not d!669258) (not d!669270) (not tb!133839) (not bm!135749) (not b!2259089) (not b!2258848) (not b!2259067) (not b_lambda!72103) (not b!2258846) b_and!177455 (not b!2259150) (not b!2259130) (not b!2258747) (not d!669260) (not b!2259071) (not b_next!67343) b_and!177421 (not b_next!67369) (not d!669154) (not b!2258740) (not b_next!67367) (not b!2259117) (not b!2259013) (not b_lambda!72093) (not b_next!67349) (not b!2258950) (not d!669256) b_and!177453 (not b_next!67353) (not b_next!67365) b_and!177423 (not d!669184) (not b!2259009) (not b!2258948) (not b!2258827) (not d!669146) (not b_next!67371) (not b!2258841) (not d!669246) (not d!669148) (not d!669252) (not b!2259149) (not d!669272) (not d!669194) (not b_next!67351) (not b_next!67345) (not b!2259134) (not b!2259114) (not b!2259091) (not d!669200) b_and!177417 (not b!2258847) (not b!2259088) (not b!2259118) (not b!2258949) (not d!669196))
(check-sat (not b_next!67347) b_and!177397 (not b_next!67355) b_and!177393 b_and!177449 b_and!177401 b_and!177455 (not b_next!67367) (not b_next!67371) b_and!177417 b_and!177419 b_and!177451 (not b_next!67341) b_and!177405 (not b_next!67343) b_and!177421 (not b_next!67369) (not b_next!67349) b_and!177453 (not b_next!67353) (not b_next!67365) b_and!177423 (not b_next!67351) (not b_next!67345))
(get-model)

(declare-fun d!669274 () Bool)

(declare-fun charsToBigInt!0 (List!26919 Int) Int)

(assert (=> d!669274 (= (inv!15 (value!135372 (h!32229 tokens!456))) (= (charsToBigInt!0 (text!31438 (value!135372 (h!32229 tokens!456))) 0) (value!135367 (value!135372 (h!32229 tokens!456)))))))

(declare-fun bs!455326 () Bool)

(assert (= bs!455326 d!669274))

(declare-fun m!2688903 () Bool)

(assert (=> bs!455326 m!2688903))

(assert (=> b!2258830 d!669274))

(declare-fun d!669276 () Bool)

(declare-fun e!1446484 () Bool)

(assert (=> d!669276 e!1446484))

(declare-fun res!965866 () Bool)

(assert (=> d!669276 (=> res!965866 e!1446484)))

(declare-fun lt!839445 () Bool)

(assert (=> d!669276 (= res!965866 (not lt!839445))))

(declare-fun e!1446485 () Bool)

(assert (=> d!669276 (= lt!839445 e!1446485)))

(declare-fun res!965868 () Bool)

(assert (=> d!669276 (=> res!965868 e!1446485)))

(assert (=> d!669276 (= res!965868 ((_ is Nil!26826) (tail!3259 otherP!12)))))

(assert (=> d!669276 (= (isPrefix!2255 (tail!3259 otherP!12) (tail!3259 input!1722)) lt!839445)))

(declare-fun b!2259156 () Bool)

(declare-fun res!965867 () Bool)

(declare-fun e!1446486 () Bool)

(assert (=> b!2259156 (=> (not res!965867) (not e!1446486))))

(assert (=> b!2259156 (= res!965867 (= (head!4844 (tail!3259 otherP!12)) (head!4844 (tail!3259 input!1722))))))

(declare-fun b!2259155 () Bool)

(assert (=> b!2259155 (= e!1446485 e!1446486)))

(declare-fun res!965869 () Bool)

(assert (=> b!2259155 (=> (not res!965869) (not e!1446486))))

(assert (=> b!2259155 (= res!965869 (not ((_ is Nil!26826) (tail!3259 input!1722))))))

(declare-fun b!2259157 () Bool)

(assert (=> b!2259157 (= e!1446486 (isPrefix!2255 (tail!3259 (tail!3259 otherP!12)) (tail!3259 (tail!3259 input!1722))))))

(declare-fun b!2259158 () Bool)

(assert (=> b!2259158 (= e!1446484 (>= (size!21014 (tail!3259 input!1722)) (size!21014 (tail!3259 otherP!12))))))

(assert (= (and d!669276 (not res!965868)) b!2259155))

(assert (= (and b!2259155 res!965869) b!2259156))

(assert (= (and b!2259156 res!965867) b!2259157))

(assert (= (and d!669276 (not res!965866)) b!2259158))

(assert (=> b!2259156 m!2688873))

(declare-fun m!2688905 () Bool)

(assert (=> b!2259156 m!2688905))

(assert (=> b!2259156 m!2688875))

(declare-fun m!2688907 () Bool)

(assert (=> b!2259156 m!2688907))

(assert (=> b!2259157 m!2688873))

(declare-fun m!2688909 () Bool)

(assert (=> b!2259157 m!2688909))

(assert (=> b!2259157 m!2688875))

(declare-fun m!2688911 () Bool)

(assert (=> b!2259157 m!2688911))

(assert (=> b!2259157 m!2688909))

(assert (=> b!2259157 m!2688911))

(declare-fun m!2688913 () Bool)

(assert (=> b!2259157 m!2688913))

(assert (=> b!2259158 m!2688875))

(declare-fun m!2688915 () Bool)

(assert (=> b!2259158 m!2688915))

(assert (=> b!2259158 m!2688873))

(declare-fun m!2688917 () Bool)

(assert (=> b!2259158 m!2688917))

(assert (=> b!2259089 d!669276))

(declare-fun d!669278 () Bool)

(assert (=> d!669278 (= (tail!3259 otherP!12) (t!201436 otherP!12))))

(assert (=> b!2259089 d!669278))

(declare-fun d!669280 () Bool)

(assert (=> d!669280 (= (tail!3259 input!1722) (t!201436 input!1722))))

(assert (=> b!2259089 d!669280))

(declare-fun d!669282 () Bool)

(assert (=> d!669282 (= (list!10334 lt!839400) (list!10338 (c!358846 lt!839400)))))

(declare-fun bs!455327 () Bool)

(assert (= bs!455327 d!669282))

(declare-fun m!2688919 () Bool)

(assert (=> bs!455327 m!2688919))

(assert (=> d!669186 d!669282))

(assert (=> d!669246 d!669272))

(declare-fun d!669284 () Bool)

(declare-fun c!358909 () Bool)

(assert (=> d!669284 (= c!358909 ((_ is Node!8678) (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456))))))))

(declare-fun e!1446491 () Bool)

(assert (=> d!669284 (= (inv!36358 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456))))) e!1446491)))

(declare-fun b!2259165 () Bool)

(declare-fun inv!36362 (Conc!8678) Bool)

(assert (=> b!2259165 (= e!1446491 (inv!36362 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456))))))))

(declare-fun b!2259166 () Bool)

(declare-fun e!1446492 () Bool)

(assert (=> b!2259166 (= e!1446491 e!1446492)))

(declare-fun res!965872 () Bool)

(assert (=> b!2259166 (= res!965872 (not ((_ is Leaf!12796) (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456)))))))))

(assert (=> b!2259166 (=> res!965872 e!1446492)))

(declare-fun b!2259167 () Bool)

(declare-fun inv!36363 (Conc!8678) Bool)

(assert (=> b!2259167 (= e!1446492 (inv!36363 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456))))))))

(assert (= (and d!669284 c!358909) b!2259165))

(assert (= (and d!669284 (not c!358909)) b!2259166))

(assert (= (and b!2259166 (not res!965872)) b!2259167))

(declare-fun m!2688921 () Bool)

(assert (=> b!2259165 m!2688921))

(declare-fun m!2688923 () Bool)

(assert (=> b!2259167 m!2688923))

(assert (=> b!2258848 d!669284))

(declare-fun d!669286 () Bool)

(assert (=> d!669286 (= (isEmpty!15159 (list!10334 (charsOf!2653 (head!4842 tokens!456)))) ((_ is Nil!26826) (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))

(assert (=> bm!135749 d!669286))

(declare-fun b!2259177 () Bool)

(declare-fun e!1446497 () List!26920)

(declare-fun e!1446498 () List!26920)

(assert (=> b!2259177 (= e!1446497 e!1446498)))

(declare-fun c!358915 () Bool)

(assert (=> b!2259177 (= c!358915 ((_ is Leaf!12796) (c!358846 (charsOf!2653 (head!4842 tokens!456)))))))

(declare-fun d!669288 () Bool)

(declare-fun c!358914 () Bool)

(assert (=> d!669288 (= c!358914 ((_ is Empty!8678) (c!358846 (charsOf!2653 (head!4842 tokens!456)))))))

(assert (=> d!669288 (= (list!10338 (c!358846 (charsOf!2653 (head!4842 tokens!456)))) e!1446497)))

(declare-fun b!2259176 () Bool)

(assert (=> b!2259176 (= e!1446497 Nil!26826)))

(declare-fun b!2259178 () Bool)

(declare-fun list!10339 (IArray!17361) List!26920)

(assert (=> b!2259178 (= e!1446498 (list!10339 (xs!11620 (c!358846 (charsOf!2653 (head!4842 tokens!456))))))))

(declare-fun b!2259179 () Bool)

(declare-fun ++!6526 (List!26920 List!26920) List!26920)

(assert (=> b!2259179 (= e!1446498 (++!6526 (list!10338 (left!20363 (c!358846 (charsOf!2653 (head!4842 tokens!456))))) (list!10338 (right!20693 (c!358846 (charsOf!2653 (head!4842 tokens!456)))))))))

(assert (= (and d!669288 c!358914) b!2259176))

(assert (= (and d!669288 (not c!358914)) b!2259177))

(assert (= (and b!2259177 c!358915) b!2259178))

(assert (= (and b!2259177 (not c!358915)) b!2259179))

(declare-fun m!2688925 () Bool)

(assert (=> b!2259178 m!2688925))

(declare-fun m!2688927 () Bool)

(assert (=> b!2259179 m!2688927))

(declare-fun m!2688929 () Bool)

(assert (=> b!2259179 m!2688929))

(assert (=> b!2259179 m!2688927))

(assert (=> b!2259179 m!2688929))

(declare-fun m!2688931 () Bool)

(assert (=> b!2259179 m!2688931))

(assert (=> d!669260 d!669288))

(declare-fun b!2259191 () Bool)

(declare-fun e!1446504 () List!26922)

(declare-fun ++!6527 (List!26922 List!26922) List!26922)

(assert (=> b!2259191 (= e!1446504 (++!6527 (list!10337 (left!20364 (c!358848 (_1!15712 lt!839367)))) (list!10337 (right!20694 (c!358848 (_1!15712 lt!839367))))))))

(declare-fun b!2259188 () Bool)

(declare-fun e!1446503 () List!26922)

(assert (=> b!2259188 (= e!1446503 Nil!26828)))

(declare-fun d!669290 () Bool)

(declare-fun c!358920 () Bool)

(assert (=> d!669290 (= c!358920 ((_ is Empty!8679) (c!358848 (_1!15712 lt!839367))))))

(assert (=> d!669290 (= (list!10337 (c!358848 (_1!15712 lt!839367))) e!1446503)))

(declare-fun b!2259189 () Bool)

(assert (=> b!2259189 (= e!1446503 e!1446504)))

(declare-fun c!358921 () Bool)

(assert (=> b!2259189 (= c!358921 ((_ is Leaf!12797) (c!358848 (_1!15712 lt!839367))))))

(declare-fun b!2259190 () Bool)

(declare-fun list!10340 (IArray!17363) List!26922)

(assert (=> b!2259190 (= e!1446504 (list!10340 (xs!11621 (c!358848 (_1!15712 lt!839367)))))))

(assert (= (and d!669290 c!358920) b!2259188))

(assert (= (and d!669290 (not c!358920)) b!2259189))

(assert (= (and b!2259189 c!358921) b!2259190))

(assert (= (and b!2259189 (not c!358921)) b!2259191))

(declare-fun m!2688933 () Bool)

(assert (=> b!2259191 m!2688933))

(declare-fun m!2688935 () Bool)

(assert (=> b!2259191 m!2688935))

(assert (=> b!2259191 m!2688933))

(assert (=> b!2259191 m!2688935))

(declare-fun m!2688937 () Bool)

(assert (=> b!2259191 m!2688937))

(declare-fun m!2688939 () Bool)

(assert (=> b!2259190 m!2688939))

(assert (=> d!669196 d!669290))

(declare-fun d!669292 () Bool)

(assert (=> d!669292 true))

(declare-fun order!14959 () Int)

(declare-fun lambda!85282 () Int)

(declare-fun order!14957 () Int)

(declare-fun dynLambda!11630 (Int Int) Int)

(declare-fun dynLambda!11631 (Int Int) Int)

(assert (=> d!669292 (< (dynLambda!11630 order!14957 (toChars!5866 (transformation!4265 otherR!12))) (dynLambda!11631 order!14959 lambda!85282))))

(assert (=> d!669292 true))

(declare-fun order!14961 () Int)

(declare-fun dynLambda!11632 (Int Int) Int)

(assert (=> d!669292 (< (dynLambda!11632 order!14961 (toValue!6007 (transformation!4265 otherR!12))) (dynLambda!11631 order!14959 lambda!85282))))

(declare-fun Forall!1066 (Int) Bool)

(assert (=> d!669292 (= (semiInverseModEq!1718 (toChars!5866 (transformation!4265 otherR!12)) (toValue!6007 (transformation!4265 otherR!12))) (Forall!1066 lambda!85282))))

(declare-fun bs!455328 () Bool)

(assert (= bs!455328 d!669292))

(declare-fun m!2688941 () Bool)

(assert (=> bs!455328 m!2688941))

(assert (=> d!669266 d!669292))

(declare-fun d!669294 () Bool)

(assert (=> d!669294 (= (inv!36353 (tag!4755 (rule!6575 (h!32229 (t!201438 tokens!456))))) (= (mod (str.len (value!135371 (tag!4755 (rule!6575 (h!32229 (t!201438 tokens!456)))))) 2) 0))))

(assert (=> b!2259132 d!669294))

(declare-fun d!669296 () Bool)

(declare-fun res!965873 () Bool)

(declare-fun e!1446505 () Bool)

(assert (=> d!669296 (=> (not res!965873) (not e!1446505))))

(assert (=> d!669296 (= res!965873 (semiInverseModEq!1718 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) (toValue!6007 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))))))

(assert (=> d!669296 (= (inv!36356 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) e!1446505)))

(declare-fun b!2259196 () Bool)

(assert (=> b!2259196 (= e!1446505 (equivClasses!1637 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) (toValue!6007 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))))))

(assert (= (and d!669296 res!965873) b!2259196))

(declare-fun m!2688943 () Bool)

(assert (=> d!669296 m!2688943))

(declare-fun m!2688945 () Bool)

(assert (=> b!2259196 m!2688945))

(assert (=> b!2259132 d!669296))

(declare-fun bs!455329 () Bool)

(declare-fun d!669298 () Bool)

(assert (= bs!455329 (and d!669298 d!669292)))

(declare-fun lambda!85283 () Int)

(assert (=> bs!455329 (= (and (= (toChars!5866 (transformation!4265 (h!32228 rules!1750))) (toChars!5866 (transformation!4265 otherR!12))) (= (toValue!6007 (transformation!4265 (h!32228 rules!1750))) (toValue!6007 (transformation!4265 otherR!12)))) (= lambda!85283 lambda!85282))))

(assert (=> d!669298 true))

(assert (=> d!669298 (< (dynLambda!11630 order!14957 (toChars!5866 (transformation!4265 (h!32228 rules!1750)))) (dynLambda!11631 order!14959 lambda!85283))))

(assert (=> d!669298 true))

(assert (=> d!669298 (< (dynLambda!11632 order!14961 (toValue!6007 (transformation!4265 (h!32228 rules!1750)))) (dynLambda!11631 order!14959 lambda!85283))))

(assert (=> d!669298 (= (semiInverseModEq!1718 (toChars!5866 (transformation!4265 (h!32228 rules!1750))) (toValue!6007 (transformation!4265 (h!32228 rules!1750)))) (Forall!1066 lambda!85283))))

(declare-fun bs!455330 () Bool)

(assert (= bs!455330 d!669298))

(declare-fun m!2688947 () Bool)

(assert (=> bs!455330 m!2688947))

(assert (=> d!669152 d!669298))

(declare-fun d!669300 () Bool)

(declare-fun nullableFct!428 (Regex!6613) Bool)

(assert (=> d!669300 (= (nullable!1816 (regex!4265 r!2363)) (nullableFct!428 (regex!4265 r!2363)))))

(declare-fun bs!455331 () Bool)

(assert (= bs!455331 d!669300))

(declare-fun m!2688949 () Bool)

(assert (=> bs!455331 m!2688949))

(assert (=> b!2259072 d!669300))

(declare-fun d!669302 () Bool)

(declare-fun lt!839446 () Int)

(assert (=> d!669302 (= lt!839446 (size!21014 (list!10334 (_2!15712 lt!839429))))))

(assert (=> d!669302 (= lt!839446 (size!21016 (c!358846 (_2!15712 lt!839429))))))

(assert (=> d!669302 (= (size!21013 (_2!15712 lt!839429)) lt!839446)))

(declare-fun bs!455332 () Bool)

(assert (= bs!455332 d!669302))

(assert (=> bs!455332 m!2688801))

(assert (=> bs!455332 m!2688801))

(declare-fun m!2688951 () Bool)

(assert (=> bs!455332 m!2688951))

(declare-fun m!2688953 () Bool)

(assert (=> bs!455332 m!2688953))

(assert (=> b!2258950 d!669302))

(declare-fun d!669304 () Bool)

(declare-fun lt!839447 () Int)

(assert (=> d!669304 (= lt!839447 (size!21014 (list!10334 (seqFromList!2969 input!1722))))))

(assert (=> d!669304 (= lt!839447 (size!21016 (c!358846 (seqFromList!2969 input!1722))))))

(assert (=> d!669304 (= (size!21013 (seqFromList!2969 input!1722)) lt!839447)))

(declare-fun bs!455333 () Bool)

(assert (= bs!455333 d!669304))

(assert (=> bs!455333 m!2688573))

(assert (=> bs!455333 m!2688791))

(assert (=> bs!455333 m!2688791))

(declare-fun m!2688955 () Bool)

(assert (=> bs!455333 m!2688955))

(declare-fun m!2688957 () Bool)

(assert (=> bs!455333 m!2688957))

(assert (=> b!2258950 d!669304))

(declare-fun b!2259200 () Bool)

(declare-fun e!1446507 () Int)

(assert (=> b!2259200 (= e!1446507 (- 1))))

(declare-fun d!669306 () Bool)

(declare-fun lt!839448 () Int)

(assert (=> d!669306 (>= lt!839448 0)))

(declare-fun e!1446506 () Int)

(assert (=> d!669306 (= lt!839448 e!1446506)))

(declare-fun c!358923 () Bool)

(assert (=> d!669306 (= c!358923 (and ((_ is Cons!26827) (t!201437 rules!1750)) (= (h!32228 (t!201437 rules!1750)) otherR!12)))))

(assert (=> d!669306 (contains!4617 (t!201437 rules!1750) otherR!12)))

(assert (=> d!669306 (= (getIndex!286 (t!201437 rules!1750) otherR!12) lt!839448)))

(declare-fun b!2259199 () Bool)

(assert (=> b!2259199 (= e!1446507 (+ 1 (getIndex!286 (t!201437 (t!201437 rules!1750)) otherR!12)))))

(declare-fun b!2259198 () Bool)

(assert (=> b!2259198 (= e!1446506 e!1446507)))

(declare-fun c!358922 () Bool)

(assert (=> b!2259198 (= c!358922 (and ((_ is Cons!26827) (t!201437 rules!1750)) (not (= (h!32228 (t!201437 rules!1750)) otherR!12))))))

(declare-fun b!2259197 () Bool)

(assert (=> b!2259197 (= e!1446506 0)))

(assert (= (and d!669306 c!358923) b!2259197))

(assert (= (and d!669306 (not c!358923)) b!2259198))

(assert (= (and b!2259198 c!358922) b!2259199))

(assert (= (and b!2259198 (not c!358922)) b!2259200))

(assert (=> d!669306 m!2688889))

(declare-fun m!2688959 () Bool)

(assert (=> b!2259199 m!2688959))

(assert (=> b!2259009 d!669306))

(declare-fun d!669308 () Bool)

(declare-fun res!965874 () Bool)

(declare-fun e!1446508 () Bool)

(assert (=> d!669308 (=> (not res!965874) (not e!1446508))))

(assert (=> d!669308 (= res!965874 (not (isEmpty!15159 (originalCharacters!5035 (h!32229 (t!201438 tokens!456))))))))

(assert (=> d!669308 (= (inv!36357 (h!32229 (t!201438 tokens!456))) e!1446508)))

(declare-fun b!2259201 () Bool)

(declare-fun res!965875 () Bool)

(assert (=> b!2259201 (=> (not res!965875) (not e!1446508))))

(assert (=> b!2259201 (= res!965875 (= (originalCharacters!5035 (h!32229 (t!201438 tokens!456))) (list!10334 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) (value!135372 (h!32229 (t!201438 tokens!456)))))))))

(declare-fun b!2259202 () Bool)

(assert (=> b!2259202 (= e!1446508 (= (size!21012 (h!32229 (t!201438 tokens!456))) (size!21014 (originalCharacters!5035 (h!32229 (t!201438 tokens!456))))))))

(assert (= (and d!669308 res!965874) b!2259201))

(assert (= (and b!2259201 res!965875) b!2259202))

(declare-fun b_lambda!72105 () Bool)

(assert (=> (not b_lambda!72105) (not b!2259201)))

(declare-fun t!201492 () Bool)

(declare-fun tb!133887 () Bool)

(assert (=> (and b!2258732 (= (toChars!5866 (transformation!4265 otherR!12)) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) t!201492) tb!133887))

(declare-fun b!2259203 () Bool)

(declare-fun e!1446509 () Bool)

(declare-fun tp!714316 () Bool)

(assert (=> b!2259203 (= e!1446509 (and (inv!36358 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) (value!135372 (h!32229 (t!201438 tokens!456)))))) tp!714316))))

(declare-fun result!163242 () Bool)

(assert (=> tb!133887 (= result!163242 (and (inv!36359 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) (value!135372 (h!32229 (t!201438 tokens!456))))) e!1446509))))

(assert (= tb!133887 b!2259203))

(declare-fun m!2688961 () Bool)

(assert (=> b!2259203 m!2688961))

(declare-fun m!2688963 () Bool)

(assert (=> tb!133887 m!2688963))

(assert (=> b!2259201 t!201492))

(declare-fun b_and!177457 () Bool)

(assert (= b_and!177419 (and (=> t!201492 result!163242) b_and!177457)))

(declare-fun t!201494 () Bool)

(declare-fun tb!133889 () Bool)

(assert (=> (and b!2258710 (= (toChars!5866 (transformation!4265 (h!32228 rules!1750))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) t!201494) tb!133889))

(declare-fun result!163244 () Bool)

(assert (= result!163244 result!163242))

(assert (=> b!2259201 t!201494))

(declare-fun b_and!177459 () Bool)

(assert (= b_and!177423 (and (=> t!201494 result!163244) b_and!177459)))

(declare-fun t!201496 () Bool)

(declare-fun tb!133891 () Bool)

(assert (=> (and b!2259145 (= (toChars!5866 (transformation!4265 (h!32228 (t!201437 rules!1750)))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) t!201496) tb!133891))

(declare-fun result!163246 () Bool)

(assert (= result!163246 result!163242))

(assert (=> b!2259201 t!201496))

(declare-fun b_and!177461 () Bool)

(assert (= b_and!177455 (and (=> t!201496 result!163246) b_and!177461)))

(declare-fun t!201498 () Bool)

(declare-fun tb!133893 () Bool)

(assert (=> (and b!2259133 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) t!201498) tb!133893))

(declare-fun result!163248 () Bool)

(assert (= result!163248 result!163242))

(assert (=> b!2259201 t!201498))

(declare-fun b_and!177463 () Bool)

(assert (= b_and!177451 (and (=> t!201498 result!163248) b_and!177463)))

(declare-fun tb!133895 () Bool)

(declare-fun t!201500 () Bool)

(assert (=> (and b!2258714 (= (toChars!5866 (transformation!4265 r!2363)) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) t!201500) tb!133895))

(declare-fun result!163250 () Bool)

(assert (= result!163250 result!163242))

(assert (=> b!2259201 t!201500))

(declare-fun b_and!177465 () Bool)

(assert (= b_and!177421 (and (=> t!201500 result!163250) b_and!177465)))

(declare-fun t!201502 () Bool)

(declare-fun tb!133897 () Bool)

(assert (=> (and b!2258722 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) t!201502) tb!133897))

(declare-fun result!163252 () Bool)

(assert (= result!163252 result!163242))

(assert (=> b!2259201 t!201502))

(declare-fun b_and!177467 () Bool)

(assert (= b_and!177417 (and (=> t!201502 result!163252) b_and!177467)))

(declare-fun m!2688965 () Bool)

(assert (=> d!669308 m!2688965))

(declare-fun m!2688967 () Bool)

(assert (=> b!2259201 m!2688967))

(assert (=> b!2259201 m!2688967))

(declare-fun m!2688969 () Bool)

(assert (=> b!2259201 m!2688969))

(declare-fun m!2688971 () Bool)

(assert (=> b!2259202 m!2688971))

(assert (=> b!2259130 d!669308))

(declare-fun d!669310 () Bool)

(assert (=> d!669310 (= (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456)))) (h!32227 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))

(assert (=> b!2259070 d!669310))

(declare-fun d!669312 () Bool)

(declare-fun lt!839451 () Int)

(declare-fun size!21019 (List!26922) Int)

(assert (=> d!669312 (= lt!839451 (size!21019 (list!10333 (_1!15712 lt!839429))))))

(declare-fun size!21020 (Conc!8679) Int)

(assert (=> d!669312 (= lt!839451 (size!21020 (c!358848 (_1!15712 lt!839429))))))

(assert (=> d!669312 (= (size!21017 (_1!15712 lt!839429)) lt!839451)))

(declare-fun bs!455334 () Bool)

(assert (= bs!455334 d!669312))

(assert (=> bs!455334 m!2688789))

(assert (=> bs!455334 m!2688789))

(declare-fun m!2688973 () Bool)

(assert (=> bs!455334 m!2688973))

(declare-fun m!2688975 () Bool)

(assert (=> bs!455334 m!2688975))

(assert (=> d!669200 d!669312))

(declare-fun b!2259257 () Bool)

(declare-fun e!1446553 () tuple2!26404)

(assert (=> b!2259257 (= e!1446553 (tuple2!26405 (BalanceConc!17087 Empty!8679) (seqFromList!2969 input!1722)))))

(declare-datatypes ((tuple2!26408 0))(
  ( (tuple2!26409 (_1!15714 Token!8008) (_2!15714 BalanceConc!17084)) )
))
(declare-datatypes ((Option!5238 0))(
  ( (None!5237) (Some!5237 (v!30269 tuple2!26408)) )
))
(declare-fun lt!839530 () Option!5238)

(declare-fun lt!839534 () tuple2!26404)

(declare-fun b!2259258 () Bool)

(declare-fun lexRec!516 (LexerInterface!3862 List!26921 BalanceConc!17084) tuple2!26404)

(assert (=> b!2259258 (= lt!839534 (lexRec!516 thiss!16613 rules!1750 (_2!15714 (v!30269 lt!839530))))))

(declare-fun e!1446550 () tuple2!26404)

(declare-fun prepend!986 (BalanceConc!17086 Token!8008) BalanceConc!17086)

(assert (=> b!2259258 (= e!1446550 (tuple2!26405 (prepend!986 (_1!15712 lt!839534) (_1!15714 (v!30269 lt!839530))) (_2!15712 lt!839534)))))

(declare-fun e!1446551 () Bool)

(declare-fun b!2259259 () Bool)

(declare-fun lt!839542 () tuple2!26404)

(assert (=> b!2259259 (= e!1446551 (= (list!10334 (_2!15712 lt!839542)) (list!10334 (_2!15712 (lexRec!516 thiss!16613 rules!1750 (seqFromList!2969 input!1722))))))))

(declare-fun b!2259260 () Bool)

(declare-fun lt!839526 () BalanceConc!17084)

(declare-fun lt!839541 () Option!5238)

(declare-fun append!679 (BalanceConc!17086 Token!8008) BalanceConc!17086)

(assert (=> b!2259260 (= e!1446553 (lexTailRecV2!737 thiss!16613 rules!1750 (seqFromList!2969 input!1722) lt!839526 (_2!15714 (v!30269 lt!839541)) (append!679 (BalanceConc!17087 Empty!8679) (_1!15714 (v!30269 lt!839541)))))))

(declare-fun lt!839533 () tuple2!26404)

(assert (=> b!2259260 (= lt!839533 (lexRec!516 thiss!16613 rules!1750 (_2!15714 (v!30269 lt!839541))))))

(declare-fun lt!839557 () List!26920)

(assert (=> b!2259260 (= lt!839557 (list!10334 (BalanceConc!17085 Empty!8678)))))

(declare-fun lt!839537 () List!26920)

(assert (=> b!2259260 (= lt!839537 (list!10334 (charsOf!2653 (_1!15714 (v!30269 lt!839541)))))))

(declare-fun lt!839553 () List!26920)

(assert (=> b!2259260 (= lt!839553 (list!10334 (_2!15714 (v!30269 lt!839541))))))

(declare-fun lt!839548 () Unit!39752)

(declare-fun lemmaConcatAssociativity!1344 (List!26920 List!26920 List!26920) Unit!39752)

(assert (=> b!2259260 (= lt!839548 (lemmaConcatAssociativity!1344 lt!839557 lt!839537 lt!839553))))

(assert (=> b!2259260 (= (++!6526 (++!6526 lt!839557 lt!839537) lt!839553) (++!6526 lt!839557 (++!6526 lt!839537 lt!839553)))))

(declare-fun lt!839558 () Unit!39752)

(assert (=> b!2259260 (= lt!839558 lt!839548)))

(declare-fun lt!839538 () Option!5238)

(declare-fun maxPrefixZipperSequence!851 (LexerInterface!3862 List!26921 BalanceConc!17084) Option!5238)

(assert (=> b!2259260 (= lt!839538 (maxPrefixZipperSequence!851 thiss!16613 rules!1750 (seqFromList!2969 input!1722)))))

(declare-fun c!358937 () Bool)

(assert (=> b!2259260 (= c!358937 ((_ is Some!5237) lt!839538))))

(declare-fun e!1446552 () tuple2!26404)

(assert (=> b!2259260 (= (lexRec!516 thiss!16613 rules!1750 (seqFromList!2969 input!1722)) e!1446552)))

(declare-fun lt!839543 () Unit!39752)

(declare-fun Unit!39756 () Unit!39752)

(assert (=> b!2259260 (= lt!839543 Unit!39756)))

(declare-fun lt!839545 () List!26922)

(assert (=> b!2259260 (= lt!839545 (list!10333 (BalanceConc!17087 Empty!8679)))))

(declare-fun lt!839539 () List!26922)

(assert (=> b!2259260 (= lt!839539 (Cons!26828 (_1!15714 (v!30269 lt!839541)) Nil!26828))))

(declare-fun lt!839547 () List!26922)

(assert (=> b!2259260 (= lt!839547 (list!10333 (_1!15712 lt!839533)))))

(declare-fun lt!839544 () Unit!39752)

(declare-fun lemmaConcatAssociativity!1345 (List!26922 List!26922 List!26922) Unit!39752)

(assert (=> b!2259260 (= lt!839544 (lemmaConcatAssociativity!1345 lt!839545 lt!839539 lt!839547))))

(assert (=> b!2259260 (= (++!6527 (++!6527 lt!839545 lt!839539) lt!839547) (++!6527 lt!839545 (++!6527 lt!839539 lt!839547)))))

(declare-fun lt!839546 () Unit!39752)

(assert (=> b!2259260 (= lt!839546 lt!839544)))

(declare-fun lt!839551 () List!26920)

(assert (=> b!2259260 (= lt!839551 (++!6526 (list!10334 (BalanceConc!17085 Empty!8678)) (list!10334 (charsOf!2653 (_1!15714 (v!30269 lt!839541))))))))

(declare-fun lt!839529 () List!26920)

(assert (=> b!2259260 (= lt!839529 (list!10334 (_2!15714 (v!30269 lt!839541))))))

(declare-fun lt!839527 () List!26922)

(assert (=> b!2259260 (= lt!839527 (list!10333 (append!679 (BalanceConc!17087 Empty!8679) (_1!15714 (v!30269 lt!839541)))))))

(declare-fun lt!839532 () Unit!39752)

(declare-fun lemmaLexThenLexPrefix!330 (LexerInterface!3862 List!26921 List!26920 List!26920 List!26922 List!26922 List!26920) Unit!39752)

(assert (=> b!2259260 (= lt!839532 (lemmaLexThenLexPrefix!330 thiss!16613 rules!1750 lt!839551 lt!839529 lt!839527 (list!10333 (_1!15712 lt!839533)) (list!10334 (_2!15712 lt!839533))))))

(assert (=> b!2259260 (= (lexList!1062 thiss!16613 rules!1750 lt!839551) (tuple2!26407 lt!839527 Nil!26826))))

(declare-fun lt!839540 () Unit!39752)

(assert (=> b!2259260 (= lt!839540 lt!839532)))

(declare-fun lt!839528 () BalanceConc!17084)

(declare-fun ++!6528 (BalanceConc!17084 BalanceConc!17084) BalanceConc!17084)

(assert (=> b!2259260 (= lt!839528 (++!6528 (BalanceConc!17085 Empty!8678) (charsOf!2653 (_1!15714 (v!30269 lt!839541)))))))

(assert (=> b!2259260 (= lt!839530 (maxPrefixZipperSequence!851 thiss!16613 rules!1750 lt!839528))))

(declare-fun c!358936 () Bool)

(assert (=> b!2259260 (= c!358936 ((_ is Some!5237) lt!839530))))

(assert (=> b!2259260 (= (lexRec!516 thiss!16613 rules!1750 (++!6528 (BalanceConc!17085 Empty!8678) (charsOf!2653 (_1!15714 (v!30269 lt!839541))))) e!1446550)))

(declare-fun lt!839535 () Unit!39752)

(declare-fun Unit!39757 () Unit!39752)

(assert (=> b!2259260 (= lt!839535 Unit!39757)))

(assert (=> b!2259260 (= lt!839526 (++!6528 (BalanceConc!17085 Empty!8678) (charsOf!2653 (_1!15714 (v!30269 lt!839541)))))))

(declare-fun lt!839531 () List!26920)

(assert (=> b!2259260 (= lt!839531 (list!10334 lt!839526))))

(declare-fun lt!839555 () List!26920)

(assert (=> b!2259260 (= lt!839555 (list!10334 (_2!15714 (v!30269 lt!839541))))))

(declare-fun lt!839554 () Unit!39752)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!446 (List!26920 List!26920) Unit!39752)

(assert (=> b!2259260 (= lt!839554 (lemmaConcatTwoListThenFSndIsSuffix!446 lt!839531 lt!839555))))

(declare-fun isSuffix!752 (List!26920 List!26920) Bool)

(assert (=> b!2259260 (isSuffix!752 lt!839555 (++!6526 lt!839531 lt!839555))))

(declare-fun lt!839549 () Unit!39752)

(assert (=> b!2259260 (= lt!839549 lt!839554)))

(declare-fun b!2259261 () Bool)

(assert (=> b!2259261 (= e!1446552 (tuple2!26405 (BalanceConc!17087 Empty!8679) (seqFromList!2969 input!1722)))))

(declare-fun lt!839536 () tuple2!26404)

(declare-fun b!2259262 () Bool)

(assert (=> b!2259262 (= lt!839536 (lexRec!516 thiss!16613 rules!1750 (_2!15714 (v!30269 lt!839538))))))

(assert (=> b!2259262 (= e!1446552 (tuple2!26405 (prepend!986 (_1!15712 lt!839536) (_1!15714 (v!30269 lt!839538))) (_2!15712 lt!839536)))))

(declare-fun d!669314 () Bool)

(assert (=> d!669314 e!1446551))

(declare-fun res!965907 () Bool)

(assert (=> d!669314 (=> (not res!965907) (not e!1446551))))

(assert (=> d!669314 (= res!965907 (= (list!10333 (_1!15712 lt!839542)) (list!10333 (_1!15712 (lexRec!516 thiss!16613 rules!1750 (seqFromList!2969 input!1722))))))))

(assert (=> d!669314 (= lt!839542 e!1446553)))

(declare-fun c!358938 () Bool)

(assert (=> d!669314 (= c!358938 ((_ is Some!5237) lt!839541))))

(declare-fun maxPrefixZipperSequenceV2!386 (LexerInterface!3862 List!26921 BalanceConc!17084 BalanceConc!17084) Option!5238)

(assert (=> d!669314 (= lt!839541 (maxPrefixZipperSequenceV2!386 thiss!16613 rules!1750 (seqFromList!2969 input!1722) (seqFromList!2969 input!1722)))))

(declare-fun lt!839556 () Unit!39752)

(declare-fun lt!839550 () Unit!39752)

(assert (=> d!669314 (= lt!839556 lt!839550)))

(declare-fun lt!839525 () List!26920)

(declare-fun lt!839552 () List!26920)

(assert (=> d!669314 (isSuffix!752 lt!839525 (++!6526 lt!839552 lt!839525))))

(assert (=> d!669314 (= lt!839550 (lemmaConcatTwoListThenFSndIsSuffix!446 lt!839552 lt!839525))))

(assert (=> d!669314 (= lt!839525 (list!10334 (seqFromList!2969 input!1722)))))

(assert (=> d!669314 (= lt!839552 (list!10334 (BalanceConc!17085 Empty!8678)))))

(assert (=> d!669314 (= (lexTailRecV2!737 thiss!16613 rules!1750 (seqFromList!2969 input!1722) (BalanceConc!17085 Empty!8678) (seqFromList!2969 input!1722) (BalanceConc!17087 Empty!8679)) lt!839542)))

(declare-fun b!2259263 () Bool)

(assert (=> b!2259263 (= e!1446550 (tuple2!26405 (BalanceConc!17087 Empty!8679) lt!839528))))

(assert (= (and d!669314 c!358938) b!2259260))

(assert (= (and d!669314 (not c!358938)) b!2259257))

(assert (= (and b!2259260 c!358937) b!2259262))

(assert (= (and b!2259260 (not c!358937)) b!2259261))

(assert (= (and b!2259260 c!358936) b!2259258))

(assert (= (and b!2259260 (not c!358936)) b!2259263))

(assert (= (and d!669314 res!965907) b!2259259))

(declare-fun m!2689011 () Bool)

(assert (=> b!2259259 m!2689011))

(assert (=> b!2259259 m!2688573))

(declare-fun m!2689013 () Bool)

(assert (=> b!2259259 m!2689013))

(declare-fun m!2689015 () Bool)

(assert (=> b!2259259 m!2689015))

(declare-fun m!2689017 () Bool)

(assert (=> b!2259260 m!2689017))

(declare-fun m!2689019 () Bool)

(assert (=> b!2259260 m!2689019))

(declare-fun m!2689021 () Bool)

(assert (=> b!2259260 m!2689021))

(declare-fun m!2689023 () Bool)

(assert (=> b!2259260 m!2689023))

(declare-fun m!2689025 () Bool)

(assert (=> b!2259260 m!2689025))

(declare-fun m!2689027 () Bool)

(assert (=> b!2259260 m!2689027))

(declare-fun m!2689029 () Bool)

(assert (=> b!2259260 m!2689029))

(declare-fun m!2689031 () Bool)

(assert (=> b!2259260 m!2689031))

(declare-fun m!2689033 () Bool)

(assert (=> b!2259260 m!2689033))

(declare-fun m!2689035 () Bool)

(assert (=> b!2259260 m!2689035))

(assert (=> b!2259260 m!2689023))

(declare-fun m!2689037 () Bool)

(assert (=> b!2259260 m!2689037))

(assert (=> b!2259260 m!2689021))

(declare-fun m!2689039 () Bool)

(assert (=> b!2259260 m!2689039))

(assert (=> b!2259260 m!2688573))

(assert (=> b!2259260 m!2689013))

(declare-fun m!2689041 () Bool)

(assert (=> b!2259260 m!2689041))

(declare-fun m!2689043 () Bool)

(assert (=> b!2259260 m!2689043))

(declare-fun m!2689045 () Bool)

(assert (=> b!2259260 m!2689045))

(declare-fun m!2689047 () Bool)

(assert (=> b!2259260 m!2689047))

(assert (=> b!2259260 m!2689047))

(declare-fun m!2689049 () Bool)

(assert (=> b!2259260 m!2689049))

(declare-fun m!2689051 () Bool)

(assert (=> b!2259260 m!2689051))

(declare-fun m!2689053 () Bool)

(assert (=> b!2259260 m!2689053))

(declare-fun m!2689055 () Bool)

(assert (=> b!2259260 m!2689055))

(assert (=> b!2259260 m!2689051))

(assert (=> b!2259260 m!2689033))

(declare-fun m!2689057 () Bool)

(assert (=> b!2259260 m!2689057))

(assert (=> b!2259260 m!2688573))

(declare-fun m!2689059 () Bool)

(assert (=> b!2259260 m!2689059))

(declare-fun m!2689061 () Bool)

(assert (=> b!2259260 m!2689061))

(assert (=> b!2259260 m!2689027))

(assert (=> b!2259260 m!2689021))

(assert (=> b!2259260 m!2689041))

(declare-fun m!2689063 () Bool)

(assert (=> b!2259260 m!2689063))

(declare-fun m!2689065 () Bool)

(assert (=> b!2259260 m!2689065))

(declare-fun m!2689067 () Bool)

(assert (=> b!2259260 m!2689067))

(assert (=> b!2259260 m!2689017))

(assert (=> b!2259260 m!2689065))

(assert (=> b!2259260 m!2689039))

(declare-fun m!2689069 () Bool)

(assert (=> b!2259260 m!2689069))

(assert (=> b!2259260 m!2689063))

(declare-fun m!2689071 () Bool)

(assert (=> b!2259260 m!2689071))

(declare-fun m!2689073 () Bool)

(assert (=> b!2259260 m!2689073))

(assert (=> b!2259260 m!2688573))

(assert (=> b!2259260 m!2689041))

(declare-fun m!2689075 () Bool)

(assert (=> b!2259260 m!2689075))

(assert (=> b!2259260 m!2689067))

(declare-fun m!2689077 () Bool)

(assert (=> b!2259260 m!2689077))

(declare-fun m!2689079 () Bool)

(assert (=> b!2259260 m!2689079))

(declare-fun m!2689081 () Bool)

(assert (=> b!2259262 m!2689081))

(declare-fun m!2689083 () Bool)

(assert (=> b!2259262 m!2689083))

(declare-fun m!2689085 () Bool)

(assert (=> d!669314 m!2689085))

(declare-fun m!2689087 () Bool)

(assert (=> d!669314 m!2689087))

(assert (=> d!669314 m!2688573))

(assert (=> d!669314 m!2688791))

(declare-fun m!2689089 () Bool)

(assert (=> d!669314 m!2689089))

(declare-fun m!2689091 () Bool)

(assert (=> d!669314 m!2689091))

(assert (=> d!669314 m!2688573))

(assert (=> d!669314 m!2688573))

(declare-fun m!2689093 () Bool)

(assert (=> d!669314 m!2689093))

(assert (=> d!669314 m!2689087))

(declare-fun m!2689095 () Bool)

(assert (=> d!669314 m!2689095))

(assert (=> d!669314 m!2689065))

(assert (=> d!669314 m!2688573))

(assert (=> d!669314 m!2689013))

(declare-fun m!2689097 () Bool)

(assert (=> b!2259258 m!2689097))

(declare-fun m!2689099 () Bool)

(assert (=> b!2259258 m!2689099))

(assert (=> d!669200 d!669314))

(declare-fun d!669332 () Bool)

(declare-fun isBalanced!2656 (Conc!8678) Bool)

(assert (=> d!669332 (= (inv!36359 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456)))) (isBalanced!2656 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456))))))))

(declare-fun bs!455336 () Bool)

(assert (= bs!455336 d!669332))

(declare-fun m!2689101 () Bool)

(assert (=> bs!455336 m!2689101))

(assert (=> tb!133839 d!669332))

(declare-fun d!669334 () Bool)

(declare-fun lt!839561 () Bool)

(assert (=> d!669334 (= lt!839561 (isEmpty!15156 (list!10333 (_1!15712 lt!839429))))))

(declare-fun isEmpty!15161 (Conc!8679) Bool)

(assert (=> d!669334 (= lt!839561 (isEmpty!15161 (c!358848 (_1!15712 lt!839429))))))

(assert (=> d!669334 (= (isEmpty!15160 (_1!15712 lt!839429)) lt!839561)))

(declare-fun bs!455337 () Bool)

(assert (= bs!455337 d!669334))

(assert (=> bs!455337 m!2688789))

(assert (=> bs!455337 m!2688789))

(declare-fun m!2689103 () Bool)

(assert (=> bs!455337 m!2689103))

(declare-fun m!2689105 () Bool)

(assert (=> bs!455337 m!2689105))

(assert (=> b!2258949 d!669334))

(assert (=> d!669270 d!669268))

(declare-fun d!669336 () Bool)

(assert (=> d!669336 (ruleValid!1357 thiss!16613 r!2363)))

(assert (=> d!669336 true))

(declare-fun _$65!1052 () Unit!39752)

(assert (=> d!669336 (= (choose!13217 thiss!16613 r!2363 rules!1750) _$65!1052)))

(declare-fun bs!455338 () Bool)

(assert (= bs!455338 d!669336))

(assert (=> bs!455338 m!2688561))

(assert (=> d!669270 d!669336))

(assert (=> d!669270 d!669148))

(assert (=> b!2259067 d!669310))

(declare-fun d!669338 () Bool)

(declare-fun lt!839562 () Int)

(assert (=> d!669338 (>= lt!839562 0)))

(declare-fun e!1446554 () Int)

(assert (=> d!669338 (= lt!839562 e!1446554)))

(declare-fun c!358939 () Bool)

(assert (=> d!669338 (= c!358939 ((_ is Nil!26826) (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))

(assert (=> d!669338 (= (size!21014 (list!10334 (charsOf!2653 (head!4842 tokens!456)))) lt!839562)))

(declare-fun b!2259264 () Bool)

(assert (=> b!2259264 (= e!1446554 0)))

(declare-fun b!2259265 () Bool)

(assert (=> b!2259265 (= e!1446554 (+ 1 (size!21014 (t!201436 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))))

(assert (= (and d!669338 c!358939) b!2259264))

(assert (= (and d!669338 (not c!358939)) b!2259265))

(declare-fun m!2689107 () Bool)

(assert (=> b!2259265 m!2689107))

(assert (=> d!669184 d!669338))

(assert (=> d!669184 d!669260))

(declare-fun d!669340 () Bool)

(declare-fun lt!839565 () Int)

(assert (=> d!669340 (= lt!839565 (size!21014 (list!10338 (c!358846 (charsOf!2653 (head!4842 tokens!456))))))))

(assert (=> d!669340 (= lt!839565 (ite ((_ is Empty!8678) (c!358846 (charsOf!2653 (head!4842 tokens!456)))) 0 (ite ((_ is Leaf!12796) (c!358846 (charsOf!2653 (head!4842 tokens!456)))) (csize!17587 (c!358846 (charsOf!2653 (head!4842 tokens!456)))) (csize!17586 (c!358846 (charsOf!2653 (head!4842 tokens!456)))))))))

(assert (=> d!669340 (= (size!21016 (c!358846 (charsOf!2653 (head!4842 tokens!456)))) lt!839565)))

(declare-fun bs!455339 () Bool)

(assert (= bs!455339 d!669340))

(assert (=> bs!455339 m!2688867))

(assert (=> bs!455339 m!2688867))

(declare-fun m!2689109 () Bool)

(assert (=> bs!455339 m!2689109))

(assert (=> d!669184 d!669340))

(declare-fun d!669342 () Bool)

(declare-fun lt!839566 () Int)

(assert (=> d!669342 (>= lt!839566 0)))

(declare-fun e!1446555 () Int)

(assert (=> d!669342 (= lt!839566 e!1446555)))

(declare-fun c!358940 () Bool)

(assert (=> d!669342 (= c!358940 ((_ is Nil!26826) (originalCharacters!5035 (h!32229 tokens!456))))))

(assert (=> d!669342 (= (size!21014 (originalCharacters!5035 (h!32229 tokens!456))) lt!839566)))

(declare-fun b!2259266 () Bool)

(assert (=> b!2259266 (= e!1446555 0)))

(declare-fun b!2259267 () Bool)

(assert (=> b!2259267 (= e!1446555 (+ 1 (size!21014 (t!201436 (originalCharacters!5035 (h!32229 tokens!456))))))))

(assert (= (and d!669342 c!358940) b!2259266))

(assert (= (and d!669342 (not c!358940)) b!2259267))

(declare-fun m!2689111 () Bool)

(assert (=> b!2259267 m!2689111))

(assert (=> b!2258847 d!669342))

(declare-fun bs!455340 () Bool)

(declare-fun d!669344 () Bool)

(assert (= bs!455340 (and d!669344 d!669154)))

(declare-fun lambda!85284 () Int)

(assert (=> bs!455340 (= lambda!85284 lambda!85279)))

(assert (=> d!669344 true))

(declare-fun lt!839567 () Bool)

(assert (=> d!669344 (= lt!839567 (forall!5470 (t!201437 rules!1750) lambda!85284))))

(declare-fun e!1446557 () Bool)

(assert (=> d!669344 (= lt!839567 e!1446557)))

(declare-fun res!965909 () Bool)

(assert (=> d!669344 (=> res!965909 e!1446557)))

(assert (=> d!669344 (= res!965909 (not ((_ is Cons!26827) (t!201437 rules!1750))))))

(assert (=> d!669344 (= (rulesValidInductive!1485 thiss!16613 (t!201437 rules!1750)) lt!839567)))

(declare-fun b!2259268 () Bool)

(declare-fun e!1446556 () Bool)

(assert (=> b!2259268 (= e!1446557 e!1446556)))

(declare-fun res!965908 () Bool)

(assert (=> b!2259268 (=> (not res!965908) (not e!1446556))))

(assert (=> b!2259268 (= res!965908 (ruleValid!1357 thiss!16613 (h!32228 (t!201437 rules!1750))))))

(declare-fun b!2259269 () Bool)

(assert (=> b!2259269 (= e!1446556 (rulesValidInductive!1485 thiss!16613 (t!201437 (t!201437 rules!1750))))))

(assert (= (and d!669344 (not res!965909)) b!2259268))

(assert (= (and b!2259268 res!965908) b!2259269))

(declare-fun m!2689113 () Bool)

(assert (=> d!669344 m!2689113))

(declare-fun m!2689115 () Bool)

(assert (=> b!2259268 m!2689115))

(declare-fun m!2689117 () Bool)

(assert (=> b!2259269 m!2689117))

(assert (=> b!2258813 d!669344))

(declare-fun d!669346 () Bool)

(assert (=> d!669346 (= (isEmpty!15159 (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456))))) ((_ is Nil!26826) (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))

(assert (=> b!2259065 d!669346))

(declare-fun d!669348 () Bool)

(assert (=> d!669348 (= (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456)))) (t!201436 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))

(assert (=> b!2259065 d!669348))

(declare-fun bs!455341 () Bool)

(declare-fun d!669350 () Bool)

(assert (= bs!455341 (and d!669350 d!669292)))

(declare-fun lambda!85285 () Int)

(assert (=> bs!455341 (= (and (= (toChars!5866 (transformation!4265 r!2363)) (toChars!5866 (transformation!4265 otherR!12))) (= (toValue!6007 (transformation!4265 r!2363)) (toValue!6007 (transformation!4265 otherR!12)))) (= lambda!85285 lambda!85282))))

(declare-fun bs!455342 () Bool)

(assert (= bs!455342 (and d!669350 d!669298)))

(assert (=> bs!455342 (= (and (= (toChars!5866 (transformation!4265 r!2363)) (toChars!5866 (transformation!4265 (h!32228 rules!1750)))) (= (toValue!6007 (transformation!4265 r!2363)) (toValue!6007 (transformation!4265 (h!32228 rules!1750))))) (= lambda!85285 lambda!85283))))

(assert (=> d!669350 true))

(assert (=> d!669350 (< (dynLambda!11630 order!14957 (toChars!5866 (transformation!4265 r!2363))) (dynLambda!11631 order!14959 lambda!85285))))

(assert (=> d!669350 true))

(assert (=> d!669350 (< (dynLambda!11632 order!14961 (toValue!6007 (transformation!4265 r!2363))) (dynLambda!11631 order!14959 lambda!85285))))

(assert (=> d!669350 (= (semiInverseModEq!1718 (toChars!5866 (transformation!4265 r!2363)) (toValue!6007 (transformation!4265 r!2363))) (Forall!1066 lambda!85285))))

(declare-fun bs!455343 () Bool)

(assert (= bs!455343 d!669350))

(declare-fun m!2689119 () Bool)

(assert (=> bs!455343 m!2689119))

(assert (=> d!669256 d!669350))

(declare-fun d!669352 () Bool)

(declare-fun c!358941 () Bool)

(assert (=> d!669352 (= c!358941 ((_ is Node!8678) (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456))))))))

(declare-fun e!1446558 () Bool)

(assert (=> d!669352 (= (inv!36358 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456))))) e!1446558)))

(declare-fun b!2259270 () Bool)

(assert (=> b!2259270 (= e!1446558 (inv!36362 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456))))))))

(declare-fun b!2259271 () Bool)

(declare-fun e!1446559 () Bool)

(assert (=> b!2259271 (= e!1446558 e!1446559)))

(declare-fun res!965910 () Bool)

(assert (=> b!2259271 (= res!965910 (not ((_ is Leaf!12796) (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456)))))))))

(assert (=> b!2259271 (=> res!965910 e!1446559)))

(declare-fun b!2259272 () Bool)

(assert (=> b!2259272 (= e!1446559 (inv!36363 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456))))))))

(assert (= (and d!669352 c!358941) b!2259270))

(assert (= (and d!669352 (not c!358941)) b!2259271))

(assert (= (and b!2259271 (not res!965910)) b!2259272))

(declare-fun m!2689121 () Bool)

(assert (=> b!2259270 m!2689121))

(declare-fun m!2689123 () Bool)

(assert (=> b!2259272 m!2689123))

(assert (=> b!2258835 d!669352))

(declare-fun bs!455344 () Bool)

(declare-fun d!669354 () Bool)

(assert (= bs!455344 (and d!669354 d!669292)))

(declare-fun lambda!85286 () Int)

(assert (=> bs!455344 (= (and (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toChars!5866 (transformation!4265 otherR!12))) (= (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toValue!6007 (transformation!4265 otherR!12)))) (= lambda!85286 lambda!85282))))

(declare-fun bs!455345 () Bool)

(assert (= bs!455345 (and d!669354 d!669298)))

(assert (=> bs!455345 (= (and (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toChars!5866 (transformation!4265 (h!32228 rules!1750)))) (= (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toValue!6007 (transformation!4265 (h!32228 rules!1750))))) (= lambda!85286 lambda!85283))))

(declare-fun bs!455346 () Bool)

(assert (= bs!455346 (and d!669354 d!669350)))

(assert (=> bs!455346 (= (and (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toChars!5866 (transformation!4265 r!2363))) (= (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toValue!6007 (transformation!4265 r!2363)))) (= lambda!85286 lambda!85285))))

(assert (=> d!669354 true))

(assert (=> d!669354 (< (dynLambda!11630 order!14957 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) (dynLambda!11631 order!14959 lambda!85286))))

(assert (=> d!669354 true))

(assert (=> d!669354 (< (dynLambda!11632 order!14961 (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) (dynLambda!11631 order!14959 lambda!85286))))

(assert (=> d!669354 (= (semiInverseModEq!1718 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) (Forall!1066 lambda!85286))))

(declare-fun bs!455347 () Bool)

(assert (= bs!455347 d!669354))

(declare-fun m!2689125 () Bool)

(assert (=> bs!455347 m!2689125))

(assert (=> d!669144 d!669354))

(assert (=> d!669252 d!669250))

(declare-fun d!669356 () Bool)

(assert (=> d!669356 (ruleValid!1357 thiss!16613 otherR!12)))

(assert (=> d!669356 true))

(declare-fun _$65!1053 () Unit!39752)

(assert (=> d!669356 (= (choose!13217 thiss!16613 otherR!12 rules!1750) _$65!1053)))

(declare-fun bs!455348 () Bool)

(assert (= bs!455348 d!669356))

(assert (=> bs!455348 m!2688549))

(assert (=> d!669252 d!669356))

(assert (=> d!669252 d!669272))

(declare-fun b!2259274 () Bool)

(declare-fun e!1446560 () List!26920)

(declare-fun e!1446561 () List!26920)

(assert (=> b!2259274 (= e!1446560 e!1446561)))

(declare-fun c!358943 () Bool)

(assert (=> b!2259274 (= c!358943 ((_ is Leaf!12796) (c!358846 (_2!15712 lt!839367))))))

(declare-fun d!669358 () Bool)

(declare-fun c!358942 () Bool)

(assert (=> d!669358 (= c!358942 ((_ is Empty!8678) (c!358846 (_2!15712 lt!839367))))))

(assert (=> d!669358 (= (list!10338 (c!358846 (_2!15712 lt!839367))) e!1446560)))

(declare-fun b!2259273 () Bool)

(assert (=> b!2259273 (= e!1446560 Nil!26826)))

(declare-fun b!2259275 () Bool)

(assert (=> b!2259275 (= e!1446561 (list!10339 (xs!11620 (c!358846 (_2!15712 lt!839367)))))))

(declare-fun b!2259276 () Bool)

(assert (=> b!2259276 (= e!1446561 (++!6526 (list!10338 (left!20363 (c!358846 (_2!15712 lt!839367)))) (list!10338 (right!20693 (c!358846 (_2!15712 lt!839367))))))))

(assert (= (and d!669358 c!358942) b!2259273))

(assert (= (and d!669358 (not c!358942)) b!2259274))

(assert (= (and b!2259274 c!358943) b!2259275))

(assert (= (and b!2259274 (not c!358943)) b!2259276))

(declare-fun m!2689127 () Bool)

(assert (=> b!2259275 m!2689127))

(declare-fun m!2689129 () Bool)

(assert (=> b!2259276 m!2689129))

(declare-fun m!2689131 () Bool)

(assert (=> b!2259276 m!2689131))

(assert (=> b!2259276 m!2689129))

(assert (=> b!2259276 m!2689131))

(declare-fun m!2689133 () Bool)

(assert (=> b!2259276 m!2689133))

(assert (=> d!669198 d!669358))

(declare-fun d!669360 () Bool)

(declare-fun lt!839568 () Bool)

(assert (=> d!669360 (= lt!839568 (select (content!3571 (t!201437 rules!1750)) otherR!12))))

(declare-fun e!1446563 () Bool)

(assert (=> d!669360 (= lt!839568 e!1446563)))

(declare-fun res!965912 () Bool)

(assert (=> d!669360 (=> (not res!965912) (not e!1446563))))

(assert (=> d!669360 (= res!965912 ((_ is Cons!26827) (t!201437 rules!1750)))))

(assert (=> d!669360 (= (contains!4617 (t!201437 rules!1750) otherR!12) lt!839568)))

(declare-fun b!2259277 () Bool)

(declare-fun e!1446562 () Bool)

(assert (=> b!2259277 (= e!1446563 e!1446562)))

(declare-fun res!965911 () Bool)

(assert (=> b!2259277 (=> res!965911 e!1446562)))

(assert (=> b!2259277 (= res!965911 (= (h!32228 (t!201437 rules!1750)) otherR!12))))

(declare-fun b!2259278 () Bool)

(assert (=> b!2259278 (= e!1446562 (contains!4617 (t!201437 (t!201437 rules!1750)) otherR!12))))

(assert (= (and d!669360 res!965912) b!2259277))

(assert (= (and b!2259277 (not res!965911)) b!2259278))

(declare-fun m!2689135 () Bool)

(assert (=> d!669360 m!2689135))

(declare-fun m!2689137 () Bool)

(assert (=> d!669360 m!2689137))

(declare-fun m!2689139 () Bool)

(assert (=> b!2259278 m!2689139))

(assert (=> b!2259095 d!669360))

(declare-fun d!669362 () Bool)

(declare-fun lt!839569 () Int)

(assert (=> d!669362 (>= lt!839569 0)))

(declare-fun e!1446564 () Int)

(assert (=> d!669362 (= lt!839569 e!1446564)))

(declare-fun c!358944 () Bool)

(assert (=> d!669362 (= c!358944 ((_ is Nil!26826) (t!201436 otherP!12)))))

(assert (=> d!669362 (= (size!21014 (t!201436 otherP!12)) lt!839569)))

(declare-fun b!2259279 () Bool)

(assert (=> b!2259279 (= e!1446564 0)))

(declare-fun b!2259280 () Bool)

(assert (=> b!2259280 (= e!1446564 (+ 1 (size!21014 (t!201436 (t!201436 otherP!12)))))))

(assert (= (and d!669362 c!358944) b!2259279))

(assert (= (and d!669362 (not c!358944)) b!2259280))

(declare-fun m!2689141 () Bool)

(assert (=> b!2259280 m!2689141))

(assert (=> b!2258841 d!669362))

(declare-fun d!669364 () Bool)

(assert (=> d!669364 (= (head!4844 otherP!12) (h!32227 otherP!12))))

(assert (=> b!2259088 d!669364))

(declare-fun d!669366 () Bool)

(assert (=> d!669366 (= (head!4844 input!1722) (h!32227 input!1722))))

(assert (=> b!2259088 d!669366))

(declare-fun d!669368 () Bool)

(declare-fun charsToInt!0 (List!26919) (_ BitVec 32))

(assert (=> d!669368 (= (inv!16 (value!135372 (h!32229 tokens!456))) (= (charsToInt!0 (text!31436 (value!135372 (h!32229 tokens!456)))) (value!135363 (value!135372 (h!32229 tokens!456)))))))

(declare-fun bs!455349 () Bool)

(assert (= bs!455349 d!669368))

(declare-fun m!2689143 () Bool)

(assert (=> bs!455349 m!2689143))

(assert (=> b!2258829 d!669368))

(declare-fun d!669370 () Bool)

(declare-fun lt!839570 () Int)

(assert (=> d!669370 (>= lt!839570 0)))

(declare-fun e!1446565 () Int)

(assert (=> d!669370 (= lt!839570 e!1446565)))

(declare-fun c!358945 () Bool)

(assert (=> d!669370 (= c!358945 ((_ is Nil!26826) input!1722))))

(assert (=> d!669370 (= (size!21014 input!1722) lt!839570)))

(declare-fun b!2259281 () Bool)

(assert (=> b!2259281 (= e!1446565 0)))

(declare-fun b!2259282 () Bool)

(assert (=> b!2259282 (= e!1446565 (+ 1 (size!21014 (t!201436 input!1722))))))

(assert (= (and d!669370 c!358945) b!2259281))

(assert (= (and d!669370 (not c!358945)) b!2259282))

(declare-fun m!2689145 () Bool)

(assert (=> b!2259282 m!2689145))

(assert (=> b!2259090 d!669370))

(assert (=> b!2259090 d!669190))

(declare-fun d!669372 () Bool)

(assert (=> d!669372 true))

(declare-fun lambda!85289 () Int)

(declare-fun order!14963 () Int)

(declare-fun dynLambda!11633 (Int Int) Int)

(assert (=> d!669372 (< (dynLambda!11632 order!14961 (toValue!6007 (transformation!4265 (h!32228 rules!1750)))) (dynLambda!11633 order!14963 lambda!85289))))

(declare-fun Forall2!683 (Int) Bool)

(assert (=> d!669372 (= (equivClasses!1637 (toChars!5866 (transformation!4265 (h!32228 rules!1750))) (toValue!6007 (transformation!4265 (h!32228 rules!1750)))) (Forall2!683 lambda!85289))))

(declare-fun bs!455350 () Bool)

(assert (= bs!455350 d!669372))

(declare-fun m!2689147 () Bool)

(assert (=> bs!455350 m!2689147))

(assert (=> b!2258747 d!669372))

(declare-fun bs!455351 () Bool)

(declare-fun d!669374 () Bool)

(assert (= bs!455351 (and d!669374 d!669372)))

(declare-fun lambda!85290 () Int)

(assert (=> bs!455351 (= (= (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toValue!6007 (transformation!4265 (h!32228 rules!1750)))) (= lambda!85290 lambda!85289))))

(assert (=> d!669374 true))

(assert (=> d!669374 (< (dynLambda!11632 order!14961 (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) (dynLambda!11633 order!14963 lambda!85290))))

(assert (=> d!669374 (= (equivClasses!1637 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) (Forall2!683 lambda!85290))))

(declare-fun bs!455352 () Bool)

(assert (= bs!455352 d!669374))

(declare-fun m!2689149 () Bool)

(assert (=> bs!455352 m!2689149))

(assert (=> b!2258737 d!669374))

(declare-fun d!669376 () Bool)

(declare-fun c!358948 () Bool)

(assert (=> d!669376 (= c!358948 ((_ is Nil!26827) rules!1750))))

(declare-fun e!1446570 () (InoxSet Rule!8330))

(assert (=> d!669376 (= (content!3571 rules!1750) e!1446570)))

(declare-fun b!2259291 () Bool)

(assert (=> b!2259291 (= e!1446570 ((as const (Array Rule!8330 Bool)) false))))

(declare-fun b!2259292 () Bool)

(assert (=> b!2259292 (= e!1446570 ((_ map or) (store ((as const (Array Rule!8330 Bool)) false) (h!32228 rules!1750) true) (content!3571 (t!201437 rules!1750))))))

(assert (= (and d!669376 c!358948) b!2259291))

(assert (= (and d!669376 (not c!358948)) b!2259292))

(declare-fun m!2689151 () Bool)

(assert (=> b!2259292 m!2689151))

(assert (=> b!2259292 m!2689135))

(assert (=> d!669272 d!669376))

(declare-fun d!669378 () Bool)

(declare-fun res!965919 () Bool)

(declare-fun e!1446575 () Bool)

(assert (=> d!669378 (=> res!965919 e!1446575)))

(assert (=> d!669378 (= res!965919 ((_ is Nil!26827) rules!1750))))

(assert (=> d!669378 (= (noDuplicateTag!1559 thiss!16613 rules!1750 Nil!26829) e!1446575)))

(declare-fun b!2259297 () Bool)

(declare-fun e!1446576 () Bool)

(assert (=> b!2259297 (= e!1446575 e!1446576)))

(declare-fun res!965920 () Bool)

(assert (=> b!2259297 (=> (not res!965920) (not e!1446576))))

(declare-fun contains!4619 (List!26923 String!29239) Bool)

(assert (=> b!2259297 (= res!965920 (not (contains!4619 Nil!26829 (tag!4755 (h!32228 rules!1750)))))))

(declare-fun b!2259298 () Bool)

(assert (=> b!2259298 (= e!1446576 (noDuplicateTag!1559 thiss!16613 (t!201437 rules!1750) (Cons!26829 (tag!4755 (h!32228 rules!1750)) Nil!26829)))))

(assert (= (and d!669378 (not res!965919)) b!2259297))

(assert (= (and b!2259297 res!965920) b!2259298))

(declare-fun m!2689153 () Bool)

(assert (=> b!2259297 m!2689153))

(declare-fun m!2689155 () Bool)

(assert (=> b!2259298 m!2689155))

(assert (=> b!2258740 d!669378))

(declare-fun bs!455353 () Bool)

(declare-fun d!669380 () Bool)

(assert (= bs!455353 (and d!669380 d!669372)))

(declare-fun lambda!85291 () Int)

(assert (=> bs!455353 (= (= (toValue!6007 (transformation!4265 otherR!12)) (toValue!6007 (transformation!4265 (h!32228 rules!1750)))) (= lambda!85291 lambda!85289))))

(declare-fun bs!455354 () Bool)

(assert (= bs!455354 (and d!669380 d!669374)))

(assert (=> bs!455354 (= (= (toValue!6007 (transformation!4265 otherR!12)) (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) (= lambda!85291 lambda!85290))))

(assert (=> d!669380 true))

(assert (=> d!669380 (< (dynLambda!11632 order!14961 (toValue!6007 (transformation!4265 otherR!12))) (dynLambda!11633 order!14963 lambda!85291))))

(assert (=> d!669380 (= (equivClasses!1637 (toChars!5866 (transformation!4265 otherR!12)) (toValue!6007 (transformation!4265 otherR!12))) (Forall2!683 lambda!85291))))

(declare-fun bs!455355 () Bool)

(assert (= bs!455355 d!669380))

(declare-fun m!2689157 () Bool)

(assert (=> bs!455355 m!2689157))

(assert (=> b!2259091 d!669380))

(declare-fun d!669382 () Bool)

(declare-fun charsToBigInt!1 (List!26919) Int)

(assert (=> d!669382 (= (inv!17 (value!135372 (h!32229 tokens!456))) (= (charsToBigInt!1 (text!31437 (value!135372 (h!32229 tokens!456)))) (value!135364 (value!135372 (h!32229 tokens!456)))))))

(declare-fun bs!455356 () Bool)

(assert (= bs!455356 d!669382))

(declare-fun m!2689159 () Bool)

(assert (=> bs!455356 m!2689159))

(assert (=> b!2258827 d!669382))

(assert (=> d!669258 d!669286))

(declare-fun d!669384 () Bool)

(declare-fun res!965934 () Bool)

(declare-fun e!1446602 () Bool)

(assert (=> d!669384 (=> res!965934 e!1446602)))

(assert (=> d!669384 (= res!965934 ((_ is ElementMatch!6613) (regex!4265 r!2363)))))

(assert (=> d!669384 (= (validRegex!2474 (regex!4265 r!2363)) e!1446602)))

(declare-fun b!2259329 () Bool)

(declare-fun e!1446603 () Bool)

(declare-fun e!1446597 () Bool)

(assert (=> b!2259329 (= e!1446603 e!1446597)))

(declare-fun res!965933 () Bool)

(assert (=> b!2259329 (=> (not res!965933) (not e!1446597))))

(declare-fun call!135771 () Bool)

(assert (=> b!2259329 (= res!965933 call!135771)))

(declare-fun b!2259330 () Bool)

(declare-fun e!1446600 () Bool)

(assert (=> b!2259330 (= e!1446602 e!1446600)))

(declare-fun c!358959 () Bool)

(assert (=> b!2259330 (= c!358959 ((_ is Star!6613) (regex!4265 r!2363)))))

(declare-fun b!2259331 () Bool)

(declare-fun res!965935 () Bool)

(assert (=> b!2259331 (=> res!965935 e!1446603)))

(assert (=> b!2259331 (= res!965935 (not ((_ is Concat!11041) (regex!4265 r!2363))))))

(declare-fun e!1446599 () Bool)

(assert (=> b!2259331 (= e!1446599 e!1446603)))

(declare-fun b!2259332 () Bool)

(assert (=> b!2259332 (= e!1446600 e!1446599)))

(declare-fun c!358960 () Bool)

(assert (=> b!2259332 (= c!358960 ((_ is Union!6613) (regex!4265 r!2363)))))

(declare-fun b!2259333 () Bool)

(declare-fun e!1446598 () Bool)

(assert (=> b!2259333 (= e!1446600 e!1446598)))

(declare-fun res!965932 () Bool)

(assert (=> b!2259333 (= res!965932 (not (nullable!1816 (reg!6942 (regex!4265 r!2363)))))))

(assert (=> b!2259333 (=> (not res!965932) (not e!1446598))))

(declare-fun bm!135765 () Bool)

(declare-fun call!135772 () Bool)

(assert (=> bm!135765 (= call!135771 call!135772)))

(declare-fun b!2259334 () Bool)

(declare-fun res!965931 () Bool)

(declare-fun e!1446601 () Bool)

(assert (=> b!2259334 (=> (not res!965931) (not e!1446601))))

(declare-fun call!135770 () Bool)

(assert (=> b!2259334 (= res!965931 call!135770)))

(assert (=> b!2259334 (= e!1446599 e!1446601)))

(declare-fun b!2259335 () Bool)

(assert (=> b!2259335 (= e!1446597 call!135770)))

(declare-fun bm!135766 () Bool)

(assert (=> bm!135766 (= call!135772 (validRegex!2474 (ite c!358959 (reg!6942 (regex!4265 r!2363)) (ite c!358960 (regTwo!13739 (regex!4265 r!2363)) (regOne!13738 (regex!4265 r!2363))))))))

(declare-fun bm!135767 () Bool)

(assert (=> bm!135767 (= call!135770 (validRegex!2474 (ite c!358960 (regOne!13739 (regex!4265 r!2363)) (regTwo!13738 (regex!4265 r!2363)))))))

(declare-fun b!2259336 () Bool)

(assert (=> b!2259336 (= e!1446601 call!135771)))

(declare-fun b!2259337 () Bool)

(assert (=> b!2259337 (= e!1446598 call!135772)))

(assert (= (and d!669384 (not res!965934)) b!2259330))

(assert (= (and b!2259330 c!358959) b!2259333))

(assert (= (and b!2259330 (not c!358959)) b!2259332))

(assert (= (and b!2259333 res!965932) b!2259337))

(assert (= (and b!2259332 c!358960) b!2259334))

(assert (= (and b!2259332 (not c!358960)) b!2259331))

(assert (= (and b!2259334 res!965931) b!2259336))

(assert (= (and b!2259331 (not res!965935)) b!2259329))

(assert (= (and b!2259329 res!965933) b!2259335))

(assert (= (or b!2259334 b!2259335) bm!135767))

(assert (= (or b!2259336 b!2259329) bm!135765))

(assert (= (or b!2259337 bm!135765) bm!135766))

(declare-fun m!2689161 () Bool)

(assert (=> b!2259333 m!2689161))

(declare-fun m!2689163 () Bool)

(assert (=> bm!135766 m!2689163))

(declare-fun m!2689165 () Bool)

(assert (=> bm!135767 m!2689165))

(assert (=> d!669258 d!669384))

(declare-fun b!2259340 () Bool)

(declare-fun e!1446608 () Bool)

(declare-fun e!1446606 () Bool)

(assert (=> b!2259340 (= e!1446608 e!1446606)))

(declare-fun c!358961 () Bool)

(assert (=> b!2259340 (= c!358961 ((_ is IntegerValue!13282) (value!135372 (h!32229 (t!201438 tokens!456)))))))

(declare-fun b!2259341 () Bool)

(assert (=> b!2259341 (= e!1446606 (inv!17 (value!135372 (h!32229 (t!201438 tokens!456)))))))

(declare-fun b!2259342 () Bool)

(declare-fun res!965938 () Bool)

(declare-fun e!1446607 () Bool)

(assert (=> b!2259342 (=> res!965938 e!1446607)))

(assert (=> b!2259342 (= res!965938 (not ((_ is IntegerValue!13283) (value!135372 (h!32229 (t!201438 tokens!456))))))))

(assert (=> b!2259342 (= e!1446606 e!1446607)))

(declare-fun b!2259343 () Bool)

(assert (=> b!2259343 (= e!1446608 (inv!16 (value!135372 (h!32229 (t!201438 tokens!456)))))))

(declare-fun d!669386 () Bool)

(declare-fun c!358962 () Bool)

(assert (=> d!669386 (= c!358962 ((_ is IntegerValue!13281) (value!135372 (h!32229 (t!201438 tokens!456)))))))

(assert (=> d!669386 (= (inv!21 (value!135372 (h!32229 (t!201438 tokens!456)))) e!1446608)))

(declare-fun b!2259344 () Bool)

(assert (=> b!2259344 (= e!1446607 (inv!15 (value!135372 (h!32229 (t!201438 tokens!456)))))))

(assert (= (and d!669386 c!358962) b!2259343))

(assert (= (and d!669386 (not c!358962)) b!2259340))

(assert (= (and b!2259340 c!358961) b!2259341))

(assert (= (and b!2259340 (not c!358961)) b!2259342))

(assert (= (and b!2259342 (not res!965938)) b!2259344))

(declare-fun m!2689167 () Bool)

(assert (=> b!2259341 m!2689167))

(declare-fun m!2689169 () Bool)

(assert (=> b!2259343 m!2689169))

(declare-fun m!2689171 () Bool)

(assert (=> b!2259344 m!2689171))

(assert (=> b!2259131 d!669386))

(assert (=> b!2259071 d!669346))

(assert (=> b!2259071 d!669348))

(declare-fun d!669388 () Bool)

(declare-fun res!965942 () Bool)

(declare-fun e!1446614 () Bool)

(assert (=> d!669388 (=> res!965942 e!1446614)))

(assert (=> d!669388 (= res!965942 ((_ is ElementMatch!6613) (regex!4265 otherR!12)))))

(assert (=> d!669388 (= (validRegex!2474 (regex!4265 otherR!12)) e!1446614)))

(declare-fun b!2259345 () Bool)

(declare-fun e!1446615 () Bool)

(declare-fun e!1446609 () Bool)

(assert (=> b!2259345 (= e!1446615 e!1446609)))

(declare-fun res!965941 () Bool)

(assert (=> b!2259345 (=> (not res!965941) (not e!1446609))))

(declare-fun call!135774 () Bool)

(assert (=> b!2259345 (= res!965941 call!135774)))

(declare-fun b!2259346 () Bool)

(declare-fun e!1446612 () Bool)

(assert (=> b!2259346 (= e!1446614 e!1446612)))

(declare-fun c!358963 () Bool)

(assert (=> b!2259346 (= c!358963 ((_ is Star!6613) (regex!4265 otherR!12)))))

(declare-fun b!2259347 () Bool)

(declare-fun res!965943 () Bool)

(assert (=> b!2259347 (=> res!965943 e!1446615)))

(assert (=> b!2259347 (= res!965943 (not ((_ is Concat!11041) (regex!4265 otherR!12))))))

(declare-fun e!1446611 () Bool)

(assert (=> b!2259347 (= e!1446611 e!1446615)))

(declare-fun b!2259348 () Bool)

(assert (=> b!2259348 (= e!1446612 e!1446611)))

(declare-fun c!358964 () Bool)

(assert (=> b!2259348 (= c!358964 ((_ is Union!6613) (regex!4265 otherR!12)))))

(declare-fun b!2259349 () Bool)

(declare-fun e!1446610 () Bool)

(assert (=> b!2259349 (= e!1446612 e!1446610)))

(declare-fun res!965940 () Bool)

(assert (=> b!2259349 (= res!965940 (not (nullable!1816 (reg!6942 (regex!4265 otherR!12)))))))

(assert (=> b!2259349 (=> (not res!965940) (not e!1446610))))

(declare-fun bm!135768 () Bool)

(declare-fun call!135775 () Bool)

(assert (=> bm!135768 (= call!135774 call!135775)))

(declare-fun b!2259350 () Bool)

(declare-fun res!965939 () Bool)

(declare-fun e!1446613 () Bool)

(assert (=> b!2259350 (=> (not res!965939) (not e!1446613))))

(declare-fun call!135773 () Bool)

(assert (=> b!2259350 (= res!965939 call!135773)))

(assert (=> b!2259350 (= e!1446611 e!1446613)))

(declare-fun b!2259351 () Bool)

(assert (=> b!2259351 (= e!1446609 call!135773)))

(declare-fun bm!135769 () Bool)

(assert (=> bm!135769 (= call!135775 (validRegex!2474 (ite c!358963 (reg!6942 (regex!4265 otherR!12)) (ite c!358964 (regTwo!13739 (regex!4265 otherR!12)) (regOne!13738 (regex!4265 otherR!12))))))))

(declare-fun bm!135770 () Bool)

(assert (=> bm!135770 (= call!135773 (validRegex!2474 (ite c!358964 (regOne!13739 (regex!4265 otherR!12)) (regTwo!13738 (regex!4265 otherR!12)))))))

(declare-fun b!2259352 () Bool)

(assert (=> b!2259352 (= e!1446613 call!135774)))

(declare-fun b!2259353 () Bool)

(assert (=> b!2259353 (= e!1446610 call!135775)))

(assert (= (and d!669388 (not res!965942)) b!2259346))

(assert (= (and b!2259346 c!358963) b!2259349))

(assert (= (and b!2259346 (not c!358963)) b!2259348))

(assert (= (and b!2259349 res!965940) b!2259353))

(assert (= (and b!2259348 c!358964) b!2259350))

(assert (= (and b!2259348 (not c!358964)) b!2259347))

(assert (= (and b!2259350 res!965939) b!2259352))

(assert (= (and b!2259347 (not res!965943)) b!2259345))

(assert (= (and b!2259345 res!965941) b!2259351))

(assert (= (or b!2259350 b!2259351) bm!135770))

(assert (= (or b!2259352 b!2259345) bm!135768))

(assert (= (or b!2259353 bm!135768) bm!135769))

(declare-fun m!2689173 () Bool)

(assert (=> b!2259349 m!2689173))

(declare-fun m!2689175 () Bool)

(assert (=> bm!135769 m!2689175))

(declare-fun m!2689177 () Bool)

(assert (=> bm!135770 m!2689177))

(assert (=> d!669250 d!669388))

(assert (=> d!669248 d!669148))

(declare-fun b!2259354 () Bool)

(declare-fun res!965951 () Bool)

(declare-fun e!1446621 () Bool)

(assert (=> b!2259354 (=> (not res!965951) (not e!1446621))))

(assert (=> b!2259354 (= res!965951 (isEmpty!15159 (tail!3259 (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))))

(declare-fun b!2259355 () Bool)

(declare-fun res!965948 () Bool)

(declare-fun e!1446618 () Bool)

(assert (=> b!2259355 (=> res!965948 e!1446618)))

(assert (=> b!2259355 (= res!965948 (not ((_ is ElementMatch!6613) (derivativeStep!1478 (regex!4265 r!2363) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))))

(declare-fun e!1446617 () Bool)

(assert (=> b!2259355 (= e!1446617 e!1446618)))

(declare-fun d!669390 () Bool)

(declare-fun e!1446616 () Bool)

(assert (=> d!669390 e!1446616))

(declare-fun c!358966 () Bool)

(assert (=> d!669390 (= c!358966 ((_ is EmptyExpr!6613) (derivativeStep!1478 (regex!4265 r!2363) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))))

(declare-fun lt!839639 () Bool)

(declare-fun e!1446622 () Bool)

(assert (=> d!669390 (= lt!839639 e!1446622)))

(declare-fun c!358965 () Bool)

(assert (=> d!669390 (= c!358965 (isEmpty!15159 (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))

(assert (=> d!669390 (validRegex!2474 (derivativeStep!1478 (regex!4265 r!2363) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))

(assert (=> d!669390 (= (matchR!2874 (derivativeStep!1478 (regex!4265 r!2363) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456))))) (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456))))) lt!839639)))

(declare-fun b!2259356 () Bool)

(declare-fun e!1446620 () Bool)

(assert (=> b!2259356 (= e!1446620 (not (= (head!4844 (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456))))) (c!358847 (derivativeStep!1478 (regex!4265 r!2363) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))))))

(declare-fun b!2259357 () Bool)

(declare-fun res!965944 () Bool)

(assert (=> b!2259357 (=> (not res!965944) (not e!1446621))))

(declare-fun call!135776 () Bool)

(assert (=> b!2259357 (= res!965944 (not call!135776))))

(declare-fun b!2259358 () Bool)

(assert (=> b!2259358 (= e!1446622 (matchR!2874 (derivativeStep!1478 (derivativeStep!1478 (regex!4265 r!2363) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456))))) (head!4844 (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))) (tail!3259 (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))))

(declare-fun b!2259359 () Bool)

(assert (=> b!2259359 (= e!1446621 (= (head!4844 (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456))))) (c!358847 (derivativeStep!1478 (regex!4265 r!2363) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))))

(declare-fun b!2259360 () Bool)

(declare-fun res!965945 () Bool)

(assert (=> b!2259360 (=> res!965945 e!1446620)))

(assert (=> b!2259360 (= res!965945 (not (isEmpty!15159 (tail!3259 (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))))

(declare-fun b!2259361 () Bool)

(assert (=> b!2259361 (= e!1446622 (nullable!1816 (derivativeStep!1478 (regex!4265 r!2363) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))))

(declare-fun b!2259362 () Bool)

(assert (=> b!2259362 (= e!1446616 e!1446617)))

(declare-fun c!358967 () Bool)

(assert (=> b!2259362 (= c!358967 ((_ is EmptyLang!6613) (derivativeStep!1478 (regex!4265 r!2363) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456)))))))))

(declare-fun bm!135771 () Bool)

(assert (=> bm!135771 (= call!135776 (isEmpty!15159 (tail!3259 (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))

(declare-fun b!2259363 () Bool)

(declare-fun e!1446619 () Bool)

(assert (=> b!2259363 (= e!1446618 e!1446619)))

(declare-fun res!965947 () Bool)

(assert (=> b!2259363 (=> (not res!965947) (not e!1446619))))

(assert (=> b!2259363 (= res!965947 (not lt!839639))))

(declare-fun b!2259364 () Bool)

(declare-fun res!965950 () Bool)

(assert (=> b!2259364 (=> res!965950 e!1446618)))

(assert (=> b!2259364 (= res!965950 e!1446621)))

(declare-fun res!965946 () Bool)

(assert (=> b!2259364 (=> (not res!965946) (not e!1446621))))

(assert (=> b!2259364 (= res!965946 lt!839639)))

(declare-fun b!2259365 () Bool)

(assert (=> b!2259365 (= e!1446617 (not lt!839639))))

(declare-fun b!2259366 () Bool)

(assert (=> b!2259366 (= e!1446619 e!1446620)))

(declare-fun res!965949 () Bool)

(assert (=> b!2259366 (=> res!965949 e!1446620)))

(assert (=> b!2259366 (= res!965949 call!135776)))

(declare-fun b!2259367 () Bool)

(assert (=> b!2259367 (= e!1446616 (= lt!839639 call!135776))))

(assert (= (and d!669390 c!358965) b!2259361))

(assert (= (and d!669390 (not c!358965)) b!2259358))

(assert (= (and d!669390 c!358966) b!2259367))

(assert (= (and d!669390 (not c!358966)) b!2259362))

(assert (= (and b!2259362 c!358967) b!2259365))

(assert (= (and b!2259362 (not c!358967)) b!2259355))

(assert (= (and b!2259355 (not res!965948)) b!2259364))

(assert (= (and b!2259364 res!965946) b!2259357))

(assert (= (and b!2259357 res!965944) b!2259354))

(assert (= (and b!2259354 res!965951) b!2259359))

(assert (= (and b!2259364 (not res!965950)) b!2259363))

(assert (= (and b!2259363 res!965947) b!2259366))

(assert (= (and b!2259366 (not res!965949)) b!2259360))

(assert (= (and b!2259360 (not res!965945)) b!2259356))

(assert (= (or b!2259367 b!2259357 b!2259366) bm!135771))

(assert (=> b!2259356 m!2688853))

(declare-fun m!2689179 () Bool)

(assert (=> b!2259356 m!2689179))

(assert (=> b!2259354 m!2688853))

(declare-fun m!2689181 () Bool)

(assert (=> b!2259354 m!2689181))

(assert (=> b!2259354 m!2689181))

(declare-fun m!2689183 () Bool)

(assert (=> b!2259354 m!2689183))

(assert (=> b!2259360 m!2688853))

(assert (=> b!2259360 m!2689181))

(assert (=> b!2259360 m!2689181))

(assert (=> b!2259360 m!2689183))

(assert (=> d!669390 m!2688853))

(assert (=> d!669390 m!2688855))

(assert (=> d!669390 m!2688861))

(declare-fun m!2689185 () Bool)

(assert (=> d!669390 m!2689185))

(assert (=> bm!135771 m!2688853))

(assert (=> bm!135771 m!2688855))

(assert (=> b!2259358 m!2688853))

(assert (=> b!2259358 m!2689179))

(assert (=> b!2259358 m!2688861))

(assert (=> b!2259358 m!2689179))

(declare-fun m!2689187 () Bool)

(assert (=> b!2259358 m!2689187))

(assert (=> b!2259358 m!2688853))

(assert (=> b!2259358 m!2689181))

(assert (=> b!2259358 m!2689187))

(assert (=> b!2259358 m!2689181))

(declare-fun m!2689189 () Bool)

(assert (=> b!2259358 m!2689189))

(assert (=> b!2259361 m!2688861))

(declare-fun m!2689191 () Bool)

(assert (=> b!2259361 m!2689191))

(assert (=> b!2259359 m!2688853))

(assert (=> b!2259359 m!2689179))

(assert (=> b!2259069 d!669390))

(declare-fun bm!135780 () Bool)

(declare-fun call!135787 () Regex!6613)

(declare-fun c!358984 () Bool)

(assert (=> bm!135780 (= call!135787 (derivativeStep!1478 (ite c!358984 (regTwo!13739 (regex!4265 r!2363)) (regTwo!13738 (regex!4265 r!2363))) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))

(declare-fun call!135786 () Regex!6613)

(declare-fun b!2259395 () Bool)

(declare-fun e!1446638 () Regex!6613)

(assert (=> b!2259395 (= e!1446638 (Union!6613 (Concat!11041 call!135786 (regTwo!13738 (regex!4265 r!2363))) call!135787))))

(declare-fun b!2259396 () Bool)

(assert (=> b!2259396 (= c!358984 ((_ is Union!6613) (regex!4265 r!2363)))))

(declare-fun e!1446639 () Regex!6613)

(declare-fun e!1446641 () Regex!6613)

(assert (=> b!2259396 (= e!1446639 e!1446641)))

(declare-fun bm!135781 () Bool)

(declare-fun call!135785 () Regex!6613)

(declare-fun call!135788 () Regex!6613)

(assert (=> bm!135781 (= call!135785 call!135788)))

(declare-fun b!2259397 () Bool)

(assert (=> b!2259397 (= e!1446639 (ite (= (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456)))) (c!358847 (regex!4265 r!2363))) EmptyExpr!6613 EmptyLang!6613))))

(declare-fun bm!135782 () Bool)

(assert (=> bm!135782 (= call!135786 call!135785)))

(declare-fun b!2259398 () Bool)

(declare-fun e!1446637 () Regex!6613)

(assert (=> b!2259398 (= e!1446637 EmptyLang!6613)))

(declare-fun b!2259400 () Bool)

(assert (=> b!2259400 (= e!1446637 e!1446639)))

(declare-fun c!358981 () Bool)

(assert (=> b!2259400 (= c!358981 ((_ is ElementMatch!6613) (regex!4265 r!2363)))))

(declare-fun b!2259401 () Bool)

(declare-fun e!1446640 () Regex!6613)

(assert (=> b!2259401 (= e!1446640 (Concat!11041 call!135785 (regex!4265 r!2363)))))

(declare-fun b!2259402 () Bool)

(assert (=> b!2259402 (= e!1446638 (Union!6613 (Concat!11041 call!135786 (regTwo!13738 (regex!4265 r!2363))) EmptyLang!6613))))

(declare-fun b!2259403 () Bool)

(declare-fun c!358983 () Bool)

(assert (=> b!2259403 (= c!358983 (nullable!1816 (regOne!13738 (regex!4265 r!2363))))))

(assert (=> b!2259403 (= e!1446640 e!1446638)))

(declare-fun b!2259404 () Bool)

(assert (=> b!2259404 (= e!1446641 (Union!6613 call!135788 call!135787))))

(declare-fun bm!135783 () Bool)

(declare-fun c!358985 () Bool)

(assert (=> bm!135783 (= call!135788 (derivativeStep!1478 (ite c!358984 (regOne!13739 (regex!4265 r!2363)) (ite c!358985 (reg!6942 (regex!4265 r!2363)) (regOne!13738 (regex!4265 r!2363)))) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456))))))))

(declare-fun b!2259399 () Bool)

(assert (=> b!2259399 (= e!1446641 e!1446640)))

(assert (=> b!2259399 (= c!358985 ((_ is Star!6613) (regex!4265 r!2363)))))

(declare-fun d!669392 () Bool)

(declare-fun lt!839676 () Regex!6613)

(assert (=> d!669392 (validRegex!2474 lt!839676)))

(assert (=> d!669392 (= lt!839676 e!1446637)))

(declare-fun c!358982 () Bool)

(assert (=> d!669392 (= c!358982 (or ((_ is EmptyExpr!6613) (regex!4265 r!2363)) ((_ is EmptyLang!6613) (regex!4265 r!2363))))))

(assert (=> d!669392 (validRegex!2474 (regex!4265 r!2363))))

(assert (=> d!669392 (= (derivativeStep!1478 (regex!4265 r!2363) (head!4844 (list!10334 (charsOf!2653 (head!4842 tokens!456))))) lt!839676)))

(assert (= (and d!669392 c!358982) b!2259398))

(assert (= (and d!669392 (not c!358982)) b!2259400))

(assert (= (and b!2259400 c!358981) b!2259397))

(assert (= (and b!2259400 (not c!358981)) b!2259396))

(assert (= (and b!2259396 c!358984) b!2259404))

(assert (= (and b!2259396 (not c!358984)) b!2259399))

(assert (= (and b!2259399 c!358985) b!2259401))

(assert (= (and b!2259399 (not c!358985)) b!2259403))

(assert (= (and b!2259403 c!358983) b!2259395))

(assert (= (and b!2259403 (not c!358983)) b!2259402))

(assert (= (or b!2259395 b!2259402) bm!135782))

(assert (= (or b!2259401 bm!135782) bm!135781))

(assert (= (or b!2259404 bm!135781) bm!135783))

(assert (= (or b!2259404 b!2259395) bm!135780))

(assert (=> bm!135780 m!2688851))

(declare-fun m!2689283 () Bool)

(assert (=> bm!135780 m!2689283))

(declare-fun m!2689285 () Bool)

(assert (=> b!2259403 m!2689285))

(assert (=> bm!135783 m!2688851))

(declare-fun m!2689287 () Bool)

(assert (=> bm!135783 m!2689287))

(declare-fun m!2689289 () Bool)

(assert (=> d!669392 m!2689289))

(assert (=> d!669392 m!2688859))

(assert (=> b!2259069 d!669392))

(assert (=> b!2259069 d!669310))

(assert (=> b!2259069 d!669348))

(declare-fun d!669396 () Bool)

(assert (=> d!669396 (= (inv!36359 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456)))) (isBalanced!2656 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456))))))))

(declare-fun bs!455358 () Bool)

(assert (= bs!455358 d!669396))

(declare-fun m!2689291 () Bool)

(assert (=> bs!455358 m!2689291))

(assert (=> tb!133847 d!669396))

(declare-fun d!669400 () Bool)

(assert (=> d!669400 (= r!2363 otherR!12)))

(assert (=> d!669400 true))

(declare-fun _$42!178 () Unit!39752)

(assert (=> d!669400 (= (choose!13215 rules!1750 r!2363 otherR!12) _$42!178)))

(assert (=> d!669140 d!669400))

(assert (=> d!669140 d!669148))

(declare-fun d!669402 () Bool)

(assert (=> d!669402 (= (list!10334 (_2!15712 lt!839429)) (list!10338 (c!358846 (_2!15712 lt!839429))))))

(declare-fun bs!455359 () Bool)

(assert (= bs!455359 d!669402))

(declare-fun m!2689293 () Bool)

(assert (=> bs!455359 m!2689293))

(assert (=> b!2258948 d!669402))

(declare-fun d!669404 () Bool)

(declare-fun e!1446673 () Bool)

(assert (=> d!669404 e!1446673))

(declare-fun c!359009 () Bool)

(declare-fun lt!839694 () tuple2!26406)

(assert (=> d!669404 (= c!359009 (> (size!21019 (_1!15713 lt!839694)) 0))))

(declare-fun e!1446675 () tuple2!26406)

(assert (=> d!669404 (= lt!839694 e!1446675)))

(declare-fun c!359010 () Bool)

(declare-datatypes ((tuple2!26412 0))(
  ( (tuple2!26413 (_1!15716 Token!8008) (_2!15716 List!26920)) )
))
(declare-datatypes ((Option!5240 0))(
  ( (None!5239) (Some!5239 (v!30271 tuple2!26412)) )
))
(declare-fun lt!839693 () Option!5240)

(assert (=> d!669404 (= c!359010 ((_ is Some!5239) lt!839693))))

(declare-fun maxPrefix!2137 (LexerInterface!3862 List!26921 List!26920) Option!5240)

(assert (=> d!669404 (= lt!839693 (maxPrefix!2137 thiss!16613 rules!1750 (list!10334 (seqFromList!2969 input!1722))))))

(assert (=> d!669404 (= (lexList!1062 thiss!16613 rules!1750 (list!10334 (seqFromList!2969 input!1722))) lt!839694)))

(declare-fun b!2259462 () Bool)

(declare-fun lt!839692 () tuple2!26406)

(assert (=> b!2259462 (= e!1446675 (tuple2!26407 (Cons!26828 (_1!15716 (v!30271 lt!839693)) (_1!15713 lt!839692)) (_2!15713 lt!839692)))))

(assert (=> b!2259462 (= lt!839692 (lexList!1062 thiss!16613 rules!1750 (_2!15716 (v!30271 lt!839693))))))

(declare-fun b!2259463 () Bool)

(assert (=> b!2259463 (= e!1446675 (tuple2!26407 Nil!26828 (list!10334 (seqFromList!2969 input!1722))))))

(declare-fun b!2259464 () Bool)

(assert (=> b!2259464 (= e!1446673 (= (_2!15713 lt!839694) (list!10334 (seqFromList!2969 input!1722))))))

(declare-fun b!2259465 () Bool)

(declare-fun e!1446674 () Bool)

(assert (=> b!2259465 (= e!1446674 (not (isEmpty!15156 (_1!15713 lt!839694))))))

(declare-fun b!2259466 () Bool)

(assert (=> b!2259466 (= e!1446673 e!1446674)))

(declare-fun res!965966 () Bool)

(assert (=> b!2259466 (= res!965966 (< (size!21014 (_2!15713 lt!839694)) (size!21014 (list!10334 (seqFromList!2969 input!1722)))))))

(assert (=> b!2259466 (=> (not res!965966) (not e!1446674))))

(assert (= (and d!669404 c!359010) b!2259462))

(assert (= (and d!669404 (not c!359010)) b!2259463))

(assert (= (and d!669404 c!359009) b!2259466))

(assert (= (and d!669404 (not c!359009)) b!2259464))

(assert (= (and b!2259466 res!965966) b!2259465))

(declare-fun m!2689333 () Bool)

(assert (=> d!669404 m!2689333))

(assert (=> d!669404 m!2688791))

(declare-fun m!2689335 () Bool)

(assert (=> d!669404 m!2689335))

(declare-fun m!2689337 () Bool)

(assert (=> b!2259462 m!2689337))

(declare-fun m!2689339 () Bool)

(assert (=> b!2259465 m!2689339))

(declare-fun m!2689341 () Bool)

(assert (=> b!2259466 m!2689341))

(assert (=> b!2259466 m!2688791))

(assert (=> b!2259466 m!2688955))

(assert (=> b!2258948 d!669404))

(declare-fun d!669422 () Bool)

(assert (=> d!669422 (= (list!10334 (seqFromList!2969 input!1722)) (list!10338 (c!358846 (seqFromList!2969 input!1722))))))

(declare-fun bs!455363 () Bool)

(assert (= bs!455363 d!669422))

(declare-fun m!2689343 () Bool)

(assert (=> bs!455363 m!2689343))

(assert (=> b!2258948 d!669422))

(declare-fun d!669424 () Bool)

(assert (=> d!669424 (= (isEmpty!15159 (originalCharacters!5035 (h!32229 tokens!456))) ((_ is Nil!26826) (originalCharacters!5035 (h!32229 tokens!456))))))

(assert (=> d!669194 d!669424))

(declare-fun bs!455365 () Bool)

(declare-fun d!669426 () Bool)

(assert (= bs!455365 (and d!669426 d!669372)))

(declare-fun lambda!85292 () Int)

(assert (=> bs!455365 (= (= (toValue!6007 (transformation!4265 r!2363)) (toValue!6007 (transformation!4265 (h!32228 rules!1750)))) (= lambda!85292 lambda!85289))))

(declare-fun bs!455366 () Bool)

(assert (= bs!455366 (and d!669426 d!669374)))

(assert (=> bs!455366 (= (= (toValue!6007 (transformation!4265 r!2363)) (toValue!6007 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) (= lambda!85292 lambda!85290))))

(declare-fun bs!455367 () Bool)

(assert (= bs!455367 (and d!669426 d!669380)))

(assert (=> bs!455367 (= (= (toValue!6007 (transformation!4265 r!2363)) (toValue!6007 (transformation!4265 otherR!12))) (= lambda!85292 lambda!85291))))

(assert (=> d!669426 true))

(assert (=> d!669426 (< (dynLambda!11632 order!14961 (toValue!6007 (transformation!4265 r!2363))) (dynLambda!11633 order!14963 lambda!85292))))

(assert (=> d!669426 (= (equivClasses!1637 (toChars!5866 (transformation!4265 r!2363)) (toValue!6007 (transformation!4265 r!2363))) (Forall2!683 lambda!85292))))

(declare-fun bs!455368 () Bool)

(assert (= bs!455368 d!669426))

(declare-fun m!2689347 () Bool)

(assert (=> bs!455368 m!2689347))

(assert (=> b!2259036 d!669426))

(declare-fun d!669430 () Bool)

(assert (=> d!669430 (= (nullable!1816 (regex!4265 otherR!12)) (nullableFct!428 (regex!4265 otherR!12)))))

(declare-fun bs!455369 () Bool)

(assert (= bs!455369 d!669430))

(declare-fun m!2689349 () Bool)

(assert (=> bs!455369 m!2689349))

(assert (=> b!2259025 d!669430))

(declare-fun d!669432 () Bool)

(declare-fun res!965969 () Bool)

(declare-fun e!1446678 () Bool)

(assert (=> d!669432 (=> (not res!965969) (not e!1446678))))

(assert (=> d!669432 (= res!965969 (validRegex!2474 (regex!4265 (h!32228 rules!1750))))))

(assert (=> d!669432 (= (ruleValid!1357 thiss!16613 (h!32228 rules!1750)) e!1446678)))

(declare-fun b!2259469 () Bool)

(declare-fun res!965972 () Bool)

(assert (=> b!2259469 (=> (not res!965972) (not e!1446678))))

(assert (=> b!2259469 (= res!965972 (not (nullable!1816 (regex!4265 (h!32228 rules!1750)))))))

(declare-fun b!2259470 () Bool)

(assert (=> b!2259470 (= e!1446678 (not (= (tag!4755 (h!32228 rules!1750)) (String!29240 ""))))))

(assert (= (and d!669432 res!965969) b!2259469))

(assert (= (and b!2259469 res!965972) b!2259470))

(declare-fun m!2689351 () Bool)

(assert (=> d!669432 m!2689351))

(declare-fun m!2689353 () Bool)

(assert (=> b!2259469 m!2689353))

(assert (=> b!2258812 d!669432))

(declare-fun d!669434 () Bool)

(assert (=> d!669434 (= (list!10334 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456)))) (list!10338 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456))))))))

(declare-fun bs!455370 () Bool)

(assert (= bs!455370 d!669434))

(declare-fun m!2689355 () Bool)

(assert (=> bs!455370 m!2689355))

(assert (=> b!2258846 d!669434))

(declare-fun d!669436 () Bool)

(assert (=> d!669436 (= (list!10333 (_1!15712 lt!839429)) (list!10337 (c!358848 (_1!15712 lt!839429))))))

(declare-fun bs!455371 () Bool)

(assert (= bs!455371 d!669436))

(declare-fun m!2689357 () Bool)

(assert (=> bs!455371 m!2689357))

(assert (=> b!2258946 d!669436))

(assert (=> b!2258946 d!669404))

(assert (=> b!2258946 d!669422))

(assert (=> b!2259092 d!669300))

(declare-fun d!669438 () Bool)

(assert (=> d!669438 (= (inv!36353 (tag!4755 (h!32228 (t!201437 rules!1750)))) (= (mod (str.len (value!135371 (tag!4755 (h!32228 (t!201437 rules!1750))))) 2) 0))))

(assert (=> b!2259144 d!669438))

(declare-fun d!669440 () Bool)

(declare-fun res!965973 () Bool)

(declare-fun e!1446681 () Bool)

(assert (=> d!669440 (=> (not res!965973) (not e!1446681))))

(assert (=> d!669440 (= res!965973 (semiInverseModEq!1718 (toChars!5866 (transformation!4265 (h!32228 (t!201437 rules!1750)))) (toValue!6007 (transformation!4265 (h!32228 (t!201437 rules!1750))))))))

(assert (=> d!669440 (= (inv!36356 (transformation!4265 (h!32228 (t!201437 rules!1750)))) e!1446681)))

(declare-fun b!2259473 () Bool)

(assert (=> b!2259473 (= e!1446681 (equivClasses!1637 (toChars!5866 (transformation!4265 (h!32228 (t!201437 rules!1750)))) (toValue!6007 (transformation!4265 (h!32228 (t!201437 rules!1750))))))))

(assert (= (and d!669440 res!965973) b!2259473))

(declare-fun m!2689359 () Bool)

(assert (=> d!669440 m!2689359))

(declare-fun m!2689361 () Bool)

(assert (=> b!2259473 m!2689361))

(assert (=> b!2259144 d!669440))

(declare-fun d!669442 () Bool)

(declare-fun lt!839695 () Bool)

(assert (=> d!669442 (= lt!839695 (select (content!3571 (t!201437 rules!1750)) r!2363))))

(declare-fun e!1446685 () Bool)

(assert (=> d!669442 (= lt!839695 e!1446685)))

(declare-fun res!965977 () Bool)

(assert (=> d!669442 (=> (not res!965977) (not e!1446685))))

(assert (=> d!669442 (= res!965977 ((_ is Cons!26827) (t!201437 rules!1750)))))

(assert (=> d!669442 (= (contains!4617 (t!201437 rules!1750) r!2363) lt!839695)))

(declare-fun b!2259476 () Bool)

(declare-fun e!1446684 () Bool)

(assert (=> b!2259476 (= e!1446685 e!1446684)))

(declare-fun res!965976 () Bool)

(assert (=> b!2259476 (=> res!965976 e!1446684)))

(assert (=> b!2259476 (= res!965976 (= (h!32228 (t!201437 rules!1750)) r!2363))))

(declare-fun b!2259477 () Bool)

(assert (=> b!2259477 (= e!1446684 (contains!4617 (t!201437 (t!201437 rules!1750)) r!2363))))

(assert (= (and d!669442 res!965977) b!2259476))

(assert (= (and b!2259476 (not res!965976)) b!2259477))

(assert (=> d!669442 m!2689135))

(declare-fun m!2689367 () Bool)

(assert (=> d!669442 m!2689367))

(declare-fun m!2689369 () Bool)

(assert (=> b!2259477 m!2689369))

(assert (=> b!2258746 d!669442))

(assert (=> d!669268 d!669384))

(declare-fun bs!455373 () Bool)

(declare-fun d!669444 () Bool)

(assert (= bs!455373 (and d!669444 d!669154)))

(declare-fun lambda!85295 () Int)

(assert (=> bs!455373 (= lambda!85295 lambda!85279)))

(declare-fun bs!455374 () Bool)

(assert (= bs!455374 (and d!669444 d!669344)))

(assert (=> bs!455374 (= lambda!85295 lambda!85284)))

(assert (=> d!669444 true))

(declare-fun lt!839698 () Bool)

(assert (=> d!669444 (= lt!839698 (rulesValidInductive!1485 thiss!16613 rules!1750))))

(assert (=> d!669444 (= lt!839698 (forall!5470 rules!1750 lambda!85295))))

(assert (=> d!669444 (= (rulesValid!1561 thiss!16613 rules!1750) lt!839698)))

(declare-fun bs!455375 () Bool)

(assert (= bs!455375 d!669444))

(assert (=> bs!455375 m!2688601))

(declare-fun m!2689379 () Bool)

(assert (=> bs!455375 m!2689379))

(assert (=> d!669146 d!669444))

(declare-fun d!669454 () Bool)

(declare-fun e!1446697 () Bool)

(assert (=> d!669454 e!1446697))

(declare-fun res!965987 () Bool)

(assert (=> d!669454 (=> (not res!965987) (not e!1446697))))

(declare-fun lt!839701 () BalanceConc!17084)

(assert (=> d!669454 (= res!965987 (= (list!10334 lt!839701) input!1722))))

(declare-fun fromList!514 (List!26920) Conc!8678)

(assert (=> d!669454 (= lt!839701 (BalanceConc!17085 (fromList!514 input!1722)))))

(assert (=> d!669454 (= (fromListB!1328 input!1722) lt!839701)))

(declare-fun b!2259491 () Bool)

(assert (=> b!2259491 (= e!1446697 (isBalanced!2656 (fromList!514 input!1722)))))

(assert (= (and d!669454 res!965987) b!2259491))

(declare-fun m!2689381 () Bool)

(assert (=> d!669454 m!2689381))

(declare-fun m!2689383 () Bool)

(assert (=> d!669454 m!2689383))

(assert (=> b!2259491 m!2689383))

(assert (=> b!2259491 m!2689383))

(declare-fun m!2689385 () Bool)

(assert (=> b!2259491 m!2689385))

(assert (=> d!669240 d!669454))

(declare-fun d!669456 () Bool)

(declare-fun res!965992 () Bool)

(declare-fun e!1446702 () Bool)

(assert (=> d!669456 (=> res!965992 e!1446702)))

(assert (=> d!669456 (= res!965992 ((_ is Nil!26827) rules!1750))))

(assert (=> d!669456 (= (forall!5470 rules!1750 lambda!85279) e!1446702)))

(declare-fun b!2259498 () Bool)

(declare-fun e!1446703 () Bool)

(assert (=> b!2259498 (= e!1446702 e!1446703)))

(declare-fun res!965993 () Bool)

(assert (=> b!2259498 (=> (not res!965993) (not e!1446703))))

(declare-fun dynLambda!11639 (Int Rule!8330) Bool)

(assert (=> b!2259498 (= res!965993 (dynLambda!11639 lambda!85279 (h!32228 rules!1750)))))

(declare-fun b!2259499 () Bool)

(assert (=> b!2259499 (= e!1446703 (forall!5470 (t!201437 rules!1750) lambda!85279))))

(assert (= (and d!669456 (not res!965992)) b!2259498))

(assert (= (and b!2259498 res!965993) b!2259499))

(declare-fun b_lambda!72109 () Bool)

(assert (=> (not b_lambda!72109) (not b!2259498)))

(declare-fun m!2689389 () Bool)

(assert (=> b!2259498 m!2689389))

(declare-fun m!2689391 () Bool)

(assert (=> b!2259499 m!2689391))

(assert (=> d!669154 d!669456))

(declare-fun b!2259503 () Bool)

(declare-fun e!1446705 () Int)

(assert (=> b!2259503 (= e!1446705 (- 1))))

(declare-fun d!669460 () Bool)

(declare-fun lt!839702 () Int)

(assert (=> d!669460 (>= lt!839702 0)))

(declare-fun e!1446704 () Int)

(assert (=> d!669460 (= lt!839702 e!1446704)))

(declare-fun c!359015 () Bool)

(assert (=> d!669460 (= c!359015 (and ((_ is Cons!26827) (t!201437 rules!1750)) (= (h!32228 (t!201437 rules!1750)) r!2363)))))

(assert (=> d!669460 (contains!4617 (t!201437 rules!1750) r!2363)))

(assert (=> d!669460 (= (getIndex!286 (t!201437 rules!1750) r!2363) lt!839702)))

(declare-fun b!2259502 () Bool)

(assert (=> b!2259502 (= e!1446705 (+ 1 (getIndex!286 (t!201437 (t!201437 rules!1750)) r!2363)))))

(declare-fun b!2259501 () Bool)

(assert (=> b!2259501 (= e!1446704 e!1446705)))

(declare-fun c!359014 () Bool)

(assert (=> b!2259501 (= c!359014 (and ((_ is Cons!26827) (t!201437 rules!1750)) (not (= (h!32228 (t!201437 rules!1750)) r!2363))))))

(declare-fun b!2259500 () Bool)

(assert (=> b!2259500 (= e!1446704 0)))

(assert (= (and d!669460 c!359015) b!2259500))

(assert (= (and d!669460 (not c!359015)) b!2259501))

(assert (= (and b!2259501 c!359014) b!2259502))

(assert (= (and b!2259501 (not c!359014)) b!2259503))

(assert (=> d!669460 m!2688621))

(declare-fun m!2689393 () Bool)

(assert (=> b!2259502 m!2689393))

(assert (=> b!2259013 d!669460))

(assert (=> d!669148 d!669376))

(declare-fun b!2259504 () Bool)

(declare-fun e!1446706 () Bool)

(assert (=> b!2259504 (= e!1446706 tp_is_empty!10447)))

(declare-fun b!2259507 () Bool)

(declare-fun tp!714317 () Bool)

(declare-fun tp!714319 () Bool)

(assert (=> b!2259507 (= e!1446706 (and tp!714317 tp!714319))))

(declare-fun b!2259505 () Bool)

(declare-fun tp!714320 () Bool)

(declare-fun tp!714321 () Bool)

(assert (=> b!2259505 (= e!1446706 (and tp!714320 tp!714321))))

(assert (=> b!2259108 (= tp!714264 e!1446706)))

(declare-fun b!2259506 () Bool)

(declare-fun tp!714318 () Bool)

(assert (=> b!2259506 (= e!1446706 tp!714318)))

(assert (= (and b!2259108 ((_ is ElementMatch!6613) (reg!6942 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259504))

(assert (= (and b!2259108 ((_ is Concat!11041) (reg!6942 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259505))

(assert (= (and b!2259108 ((_ is Star!6613) (reg!6942 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259506))

(assert (= (and b!2259108 ((_ is Union!6613) (reg!6942 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259507))

(declare-fun b!2259508 () Bool)

(declare-fun e!1446707 () Bool)

(assert (=> b!2259508 (= e!1446707 tp_is_empty!10447)))

(declare-fun b!2259511 () Bool)

(declare-fun tp!714322 () Bool)

(declare-fun tp!714324 () Bool)

(assert (=> b!2259511 (= e!1446707 (and tp!714322 tp!714324))))

(declare-fun b!2259509 () Bool)

(declare-fun tp!714325 () Bool)

(declare-fun tp!714326 () Bool)

(assert (=> b!2259509 (= e!1446707 (and tp!714325 tp!714326))))

(assert (=> b!2259147 (= tp!714308 e!1446707)))

(declare-fun b!2259510 () Bool)

(declare-fun tp!714323 () Bool)

(assert (=> b!2259510 (= e!1446707 tp!714323)))

(assert (= (and b!2259147 ((_ is ElementMatch!6613) (regOne!13738 (regex!4265 r!2363)))) b!2259508))

(assert (= (and b!2259147 ((_ is Concat!11041) (regOne!13738 (regex!4265 r!2363)))) b!2259509))

(assert (= (and b!2259147 ((_ is Star!6613) (regOne!13738 (regex!4265 r!2363)))) b!2259510))

(assert (= (and b!2259147 ((_ is Union!6613) (regOne!13738 (regex!4265 r!2363)))) b!2259511))

(declare-fun b!2259512 () Bool)

(declare-fun e!1446708 () Bool)

(assert (=> b!2259512 (= e!1446708 tp_is_empty!10447)))

(declare-fun b!2259515 () Bool)

(declare-fun tp!714327 () Bool)

(declare-fun tp!714329 () Bool)

(assert (=> b!2259515 (= e!1446708 (and tp!714327 tp!714329))))

(declare-fun b!2259513 () Bool)

(declare-fun tp!714330 () Bool)

(declare-fun tp!714331 () Bool)

(assert (=> b!2259513 (= e!1446708 (and tp!714330 tp!714331))))

(assert (=> b!2259147 (= tp!714309 e!1446708)))

(declare-fun b!2259514 () Bool)

(declare-fun tp!714328 () Bool)

(assert (=> b!2259514 (= e!1446708 tp!714328)))

(assert (= (and b!2259147 ((_ is ElementMatch!6613) (regTwo!13738 (regex!4265 r!2363)))) b!2259512))

(assert (= (and b!2259147 ((_ is Concat!11041) (regTwo!13738 (regex!4265 r!2363)))) b!2259513))

(assert (= (and b!2259147 ((_ is Star!6613) (regTwo!13738 (regex!4265 r!2363)))) b!2259514))

(assert (= (and b!2259147 ((_ is Union!6613) (regTwo!13738 (regex!4265 r!2363)))) b!2259515))

(declare-fun b!2259516 () Bool)

(declare-fun e!1446709 () Bool)

(assert (=> b!2259516 (= e!1446709 tp_is_empty!10447)))

(declare-fun b!2259519 () Bool)

(declare-fun tp!714332 () Bool)

(declare-fun tp!714334 () Bool)

(assert (=> b!2259519 (= e!1446709 (and tp!714332 tp!714334))))

(declare-fun b!2259517 () Bool)

(declare-fun tp!714335 () Bool)

(declare-fun tp!714336 () Bool)

(assert (=> b!2259517 (= e!1446709 (and tp!714335 tp!714336))))

(assert (=> b!2259109 (= tp!714263 e!1446709)))

(declare-fun b!2259518 () Bool)

(declare-fun tp!714333 () Bool)

(assert (=> b!2259518 (= e!1446709 tp!714333)))

(assert (= (and b!2259109 ((_ is ElementMatch!6613) (regOne!13739 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259516))

(assert (= (and b!2259109 ((_ is Concat!11041) (regOne!13739 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259517))

(assert (= (and b!2259109 ((_ is Star!6613) (regOne!13739 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259518))

(assert (= (and b!2259109 ((_ is Union!6613) (regOne!13739 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259519))

(declare-fun b!2259520 () Bool)

(declare-fun e!1446710 () Bool)

(assert (=> b!2259520 (= e!1446710 tp_is_empty!10447)))

(declare-fun b!2259523 () Bool)

(declare-fun tp!714337 () Bool)

(declare-fun tp!714339 () Bool)

(assert (=> b!2259523 (= e!1446710 (and tp!714337 tp!714339))))

(declare-fun b!2259521 () Bool)

(declare-fun tp!714340 () Bool)

(declare-fun tp!714341 () Bool)

(assert (=> b!2259521 (= e!1446710 (and tp!714340 tp!714341))))

(assert (=> b!2259109 (= tp!714265 e!1446710)))

(declare-fun b!2259522 () Bool)

(declare-fun tp!714338 () Bool)

(assert (=> b!2259522 (= e!1446710 tp!714338)))

(assert (= (and b!2259109 ((_ is ElementMatch!6613) (regTwo!13739 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259520))

(assert (= (and b!2259109 ((_ is Concat!11041) (regTwo!13739 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259521))

(assert (= (and b!2259109 ((_ is Star!6613) (regTwo!13739 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259522))

(assert (= (and b!2259109 ((_ is Union!6613) (regTwo!13739 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259523))

(declare-fun b!2259524 () Bool)

(declare-fun e!1446711 () Bool)

(assert (=> b!2259524 (= e!1446711 tp_is_empty!10447)))

(declare-fun b!2259527 () Bool)

(declare-fun tp!714342 () Bool)

(declare-fun tp!714344 () Bool)

(assert (=> b!2259527 (= e!1446711 (and tp!714342 tp!714344))))

(declare-fun b!2259525 () Bool)

(declare-fun tp!714345 () Bool)

(declare-fun tp!714346 () Bool)

(assert (=> b!2259525 (= e!1446711 (and tp!714345 tp!714346))))

(assert (=> b!2259148 (= tp!714306 e!1446711)))

(declare-fun b!2259526 () Bool)

(declare-fun tp!714343 () Bool)

(assert (=> b!2259526 (= e!1446711 tp!714343)))

(assert (= (and b!2259148 ((_ is ElementMatch!6613) (reg!6942 (regex!4265 r!2363)))) b!2259524))

(assert (= (and b!2259148 ((_ is Concat!11041) (reg!6942 (regex!4265 r!2363)))) b!2259525))

(assert (= (and b!2259148 ((_ is Star!6613) (reg!6942 (regex!4265 r!2363)))) b!2259526))

(assert (= (and b!2259148 ((_ is Union!6613) (reg!6942 (regex!4265 r!2363)))) b!2259527))

(declare-fun tp!714354 () Bool)

(declare-fun b!2259536 () Bool)

(declare-fun e!1446716 () Bool)

(declare-fun tp!714355 () Bool)

(assert (=> b!2259536 (= e!1446716 (and (inv!36358 (left!20363 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456)))))) tp!714355 (inv!36358 (right!20693 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456)))))) tp!714354))))

(declare-fun b!2259538 () Bool)

(declare-fun e!1446717 () Bool)

(declare-fun tp!714353 () Bool)

(assert (=> b!2259538 (= e!1446717 tp!714353)))

(declare-fun b!2259537 () Bool)

(declare-fun inv!36366 (IArray!17361) Bool)

(assert (=> b!2259537 (= e!1446716 (and (inv!36366 (xs!11620 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456)))))) e!1446717))))

(assert (=> b!2258848 (= tp!714185 (and (inv!36358 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456))))) e!1446716))))

(assert (= (and b!2258848 ((_ is Node!8678) (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456)))))) b!2259536))

(assert (= b!2259537 b!2259538))

(assert (= (and b!2258848 ((_ is Leaf!12796) (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (value!135372 (h!32229 tokens!456)))))) b!2259537))

(declare-fun m!2689401 () Bool)

(assert (=> b!2259536 m!2689401))

(declare-fun m!2689403 () Bool)

(assert (=> b!2259536 m!2689403))

(declare-fun m!2689407 () Bool)

(assert (=> b!2259537 m!2689407))

(assert (=> b!2258848 m!2688695))

(declare-fun b!2259541 () Bool)

(declare-fun e!1446719 () Bool)

(assert (=> b!2259541 (= e!1446719 tp_is_empty!10447)))

(declare-fun b!2259544 () Bool)

(declare-fun tp!714356 () Bool)

(declare-fun tp!714358 () Bool)

(assert (=> b!2259544 (= e!1446719 (and tp!714356 tp!714358))))

(declare-fun b!2259542 () Bool)

(declare-fun tp!714359 () Bool)

(declare-fun tp!714360 () Bool)

(assert (=> b!2259542 (= e!1446719 (and tp!714359 tp!714360))))

(assert (=> b!2259107 (= tp!714266 e!1446719)))

(declare-fun b!2259543 () Bool)

(declare-fun tp!714357 () Bool)

(assert (=> b!2259543 (= e!1446719 tp!714357)))

(assert (= (and b!2259107 ((_ is ElementMatch!6613) (regOne!13738 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259541))

(assert (= (and b!2259107 ((_ is Concat!11041) (regOne!13738 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259542))

(assert (= (and b!2259107 ((_ is Star!6613) (regOne!13738 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259543))

(assert (= (and b!2259107 ((_ is Union!6613) (regOne!13738 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259544))

(declare-fun b!2259545 () Bool)

(declare-fun e!1446720 () Bool)

(assert (=> b!2259545 (= e!1446720 tp_is_empty!10447)))

(declare-fun b!2259548 () Bool)

(declare-fun tp!714361 () Bool)

(declare-fun tp!714363 () Bool)

(assert (=> b!2259548 (= e!1446720 (and tp!714361 tp!714363))))

(declare-fun b!2259546 () Bool)

(declare-fun tp!714364 () Bool)

(declare-fun tp!714365 () Bool)

(assert (=> b!2259546 (= e!1446720 (and tp!714364 tp!714365))))

(assert (=> b!2259107 (= tp!714267 e!1446720)))

(declare-fun b!2259547 () Bool)

(declare-fun tp!714362 () Bool)

(assert (=> b!2259547 (= e!1446720 tp!714362)))

(assert (= (and b!2259107 ((_ is ElementMatch!6613) (regTwo!13738 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259545))

(assert (= (and b!2259107 ((_ is Concat!11041) (regTwo!13738 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259546))

(assert (= (and b!2259107 ((_ is Star!6613) (regTwo!13738 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259547))

(assert (= (and b!2259107 ((_ is Union!6613) (regTwo!13738 (regex!4265 (rule!6575 (h!32229 tokens!456)))))) b!2259548))

(declare-fun b!2259549 () Bool)

(declare-fun e!1446721 () Bool)

(declare-fun tp!714366 () Bool)

(assert (=> b!2259549 (= e!1446721 (and tp_is_empty!10447 tp!714366))))

(assert (=> b!2259114 (= tp!714270 e!1446721)))

(assert (= (and b!2259114 ((_ is Cons!26826) (t!201436 (t!201436 suffix!886)))) b!2259549))

(declare-fun b!2259550 () Bool)

(declare-fun e!1446722 () Bool)

(declare-fun tp!714367 () Bool)

(assert (=> b!2259550 (= e!1446722 (and tp_is_empty!10447 tp!714367))))

(assert (=> b!2259131 (= tp!714288 e!1446722)))

(assert (= (and b!2259131 ((_ is Cons!26826) (originalCharacters!5035 (h!32229 (t!201438 tokens!456))))) b!2259550))

(declare-fun b!2259551 () Bool)

(declare-fun e!1446723 () Bool)

(assert (=> b!2259551 (= e!1446723 tp_is_empty!10447)))

(declare-fun b!2259554 () Bool)

(declare-fun tp!714368 () Bool)

(declare-fun tp!714370 () Bool)

(assert (=> b!2259554 (= e!1446723 (and tp!714368 tp!714370))))

(declare-fun b!2259552 () Bool)

(declare-fun tp!714371 () Bool)

(declare-fun tp!714372 () Bool)

(assert (=> b!2259552 (= e!1446723 (and tp!714371 tp!714372))))

(assert (=> b!2259132 (= tp!714287 e!1446723)))

(declare-fun b!2259553 () Bool)

(declare-fun tp!714369 () Bool)

(assert (=> b!2259553 (= e!1446723 tp!714369)))

(assert (= (and b!2259132 ((_ is ElementMatch!6613) (regex!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) b!2259551))

(assert (= (and b!2259132 ((_ is Concat!11041) (regex!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) b!2259552))

(assert (= (and b!2259132 ((_ is Star!6613) (regex!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) b!2259553))

(assert (= (and b!2259132 ((_ is Union!6613) (regex!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) b!2259554))

(declare-fun b!2259555 () Bool)

(declare-fun e!1446724 () Bool)

(assert (=> b!2259555 (= e!1446724 tp_is_empty!10447)))

(declare-fun b!2259558 () Bool)

(declare-fun tp!714373 () Bool)

(declare-fun tp!714375 () Bool)

(assert (=> b!2259558 (= e!1446724 (and tp!714373 tp!714375))))

(declare-fun b!2259556 () Bool)

(declare-fun tp!714376 () Bool)

(declare-fun tp!714377 () Bool)

(assert (=> b!2259556 (= e!1446724 (and tp!714376 tp!714377))))

(assert (=> b!2259152 (= tp!714314 e!1446724)))

(declare-fun b!2259557 () Bool)

(declare-fun tp!714374 () Bool)

(assert (=> b!2259557 (= e!1446724 tp!714374)))

(assert (= (and b!2259152 ((_ is ElementMatch!6613) (regOne!13738 (regex!4265 otherR!12)))) b!2259555))

(assert (= (and b!2259152 ((_ is Concat!11041) (regOne!13738 (regex!4265 otherR!12)))) b!2259556))

(assert (= (and b!2259152 ((_ is Star!6613) (regOne!13738 (regex!4265 otherR!12)))) b!2259557))

(assert (= (and b!2259152 ((_ is Union!6613) (regOne!13738 (regex!4265 otherR!12)))) b!2259558))

(declare-fun b!2259559 () Bool)

(declare-fun e!1446725 () Bool)

(assert (=> b!2259559 (= e!1446725 tp_is_empty!10447)))

(declare-fun b!2259562 () Bool)

(declare-fun tp!714378 () Bool)

(declare-fun tp!714380 () Bool)

(assert (=> b!2259562 (= e!1446725 (and tp!714378 tp!714380))))

(declare-fun b!2259560 () Bool)

(declare-fun tp!714381 () Bool)

(declare-fun tp!714382 () Bool)

(assert (=> b!2259560 (= e!1446725 (and tp!714381 tp!714382))))

(assert (=> b!2259152 (= tp!714315 e!1446725)))

(declare-fun b!2259561 () Bool)

(declare-fun tp!714379 () Bool)

(assert (=> b!2259561 (= e!1446725 tp!714379)))

(assert (= (and b!2259152 ((_ is ElementMatch!6613) (regTwo!13738 (regex!4265 otherR!12)))) b!2259559))

(assert (= (and b!2259152 ((_ is Concat!11041) (regTwo!13738 (regex!4265 otherR!12)))) b!2259560))

(assert (= (and b!2259152 ((_ is Star!6613) (regTwo!13738 (regex!4265 otherR!12)))) b!2259561))

(assert (= (and b!2259152 ((_ is Union!6613) (regTwo!13738 (regex!4265 otherR!12)))) b!2259562))

(declare-fun b!2259563 () Bool)

(declare-fun e!1446726 () Bool)

(assert (=> b!2259563 (= e!1446726 tp_is_empty!10447)))

(declare-fun b!2259566 () Bool)

(declare-fun tp!714383 () Bool)

(declare-fun tp!714385 () Bool)

(assert (=> b!2259566 (= e!1446726 (and tp!714383 tp!714385))))

(declare-fun b!2259564 () Bool)

(declare-fun tp!714386 () Bool)

(declare-fun tp!714387 () Bool)

(assert (=> b!2259564 (= e!1446726 (and tp!714386 tp!714387))))

(assert (=> b!2259154 (= tp!714311 e!1446726)))

(declare-fun b!2259565 () Bool)

(declare-fun tp!714384 () Bool)

(assert (=> b!2259565 (= e!1446726 tp!714384)))

(assert (= (and b!2259154 ((_ is ElementMatch!6613) (regOne!13739 (regex!4265 otherR!12)))) b!2259563))

(assert (= (and b!2259154 ((_ is Concat!11041) (regOne!13739 (regex!4265 otherR!12)))) b!2259564))

(assert (= (and b!2259154 ((_ is Star!6613) (regOne!13739 (regex!4265 otherR!12)))) b!2259565))

(assert (= (and b!2259154 ((_ is Union!6613) (regOne!13739 (regex!4265 otherR!12)))) b!2259566))

(declare-fun b!2259567 () Bool)

(declare-fun e!1446727 () Bool)

(assert (=> b!2259567 (= e!1446727 tp_is_empty!10447)))

(declare-fun b!2259570 () Bool)

(declare-fun tp!714388 () Bool)

(declare-fun tp!714390 () Bool)

(assert (=> b!2259570 (= e!1446727 (and tp!714388 tp!714390))))

(declare-fun b!2259568 () Bool)

(declare-fun tp!714391 () Bool)

(declare-fun tp!714392 () Bool)

(assert (=> b!2259568 (= e!1446727 (and tp!714391 tp!714392))))

(assert (=> b!2259154 (= tp!714313 e!1446727)))

(declare-fun b!2259569 () Bool)

(declare-fun tp!714389 () Bool)

(assert (=> b!2259569 (= e!1446727 tp!714389)))

(assert (= (and b!2259154 ((_ is ElementMatch!6613) (regTwo!13739 (regex!4265 otherR!12)))) b!2259567))

(assert (= (and b!2259154 ((_ is Concat!11041) (regTwo!13739 (regex!4265 otherR!12)))) b!2259568))

(assert (= (and b!2259154 ((_ is Star!6613) (regTwo!13739 (regex!4265 otherR!12)))) b!2259569))

(assert (= (and b!2259154 ((_ is Union!6613) (regTwo!13739 (regex!4265 otherR!12)))) b!2259570))

(declare-fun b!2259574 () Bool)

(declare-fun b_free!66669 () Bool)

(declare-fun b_next!67373 () Bool)

(assert (=> b!2259574 (= b_free!66669 (not b_next!67373))))

(declare-fun tp!714396 () Bool)

(declare-fun b_and!177469 () Bool)

(assert (=> b!2259574 (= tp!714396 b_and!177469)))

(declare-fun b_free!66671 () Bool)

(declare-fun b_next!67375 () Bool)

(assert (=> b!2259574 (= b_free!66671 (not b_next!67375))))

(declare-fun t!201506 () Bool)

(declare-fun tb!133899 () Bool)

(assert (=> (and b!2259574 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 (t!201438 tokens!456)))))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456))))) t!201506) tb!133899))

(declare-fun result!163256 () Bool)

(assert (= result!163256 result!163174))

(assert (=> d!669186 t!201506))

(declare-fun t!201508 () Bool)

(declare-fun tb!133901 () Bool)

(assert (=> (and b!2259574 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 (t!201438 tokens!456)))))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) t!201508) tb!133901))

(declare-fun result!163258 () Bool)

(assert (= result!163258 result!163184))

(assert (=> b!2258846 t!201508))

(declare-fun t!201510 () Bool)

(declare-fun tb!133903 () Bool)

(assert (=> (and b!2259574 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 (t!201438 tokens!456)))))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) t!201510) tb!133903))

(declare-fun result!163260 () Bool)

(assert (= result!163260 result!163242))

(assert (=> b!2259201 t!201510))

(declare-fun b_and!177471 () Bool)

(declare-fun tp!714397 () Bool)

(assert (=> b!2259574 (= tp!714397 (and (=> t!201506 result!163256) (=> t!201508 result!163258) (=> t!201510 result!163260) b_and!177471))))

(declare-fun e!1446732 () Bool)

(assert (=> b!2259130 (= tp!714289 e!1446732)))

(declare-fun e!1446733 () Bool)

(declare-fun e!1446729 () Bool)

(declare-fun tp!714393 () Bool)

(declare-fun b!2259573 () Bool)

(assert (=> b!2259573 (= e!1446729 (and tp!714393 (inv!36353 (tag!4755 (rule!6575 (h!32229 (t!201438 (t!201438 tokens!456)))))) (inv!36356 (transformation!4265 (rule!6575 (h!32229 (t!201438 (t!201438 tokens!456)))))) e!1446733))))

(declare-fun tp!714395 () Bool)

(declare-fun b!2259571 () Bool)

(declare-fun e!1446728 () Bool)

(assert (=> b!2259571 (= e!1446732 (and (inv!36357 (h!32229 (t!201438 (t!201438 tokens!456)))) e!1446728 tp!714395))))

(declare-fun tp!714394 () Bool)

(declare-fun b!2259572 () Bool)

(assert (=> b!2259572 (= e!1446728 (and (inv!21 (value!135372 (h!32229 (t!201438 (t!201438 tokens!456))))) e!1446729 tp!714394))))

(assert (=> b!2259574 (= e!1446733 (and tp!714396 tp!714397))))

(assert (= b!2259573 b!2259574))

(assert (= b!2259572 b!2259573))

(assert (= b!2259571 b!2259572))

(assert (= (and b!2259130 ((_ is Cons!26828) (t!201438 (t!201438 tokens!456)))) b!2259571))

(declare-fun m!2689411 () Bool)

(assert (=> b!2259573 m!2689411))

(declare-fun m!2689413 () Bool)

(assert (=> b!2259573 m!2689413))

(declare-fun m!2689415 () Bool)

(assert (=> b!2259571 m!2689415))

(declare-fun m!2689419 () Bool)

(assert (=> b!2259572 m!2689419))

(declare-fun b!2259577 () Bool)

(declare-fun e!1446736 () Bool)

(assert (=> b!2259577 (= e!1446736 tp_is_empty!10447)))

(declare-fun b!2259580 () Bool)

(declare-fun tp!714398 () Bool)

(declare-fun tp!714400 () Bool)

(assert (=> b!2259580 (= e!1446736 (and tp!714398 tp!714400))))

(declare-fun b!2259578 () Bool)

(declare-fun tp!714401 () Bool)

(declare-fun tp!714402 () Bool)

(assert (=> b!2259578 (= e!1446736 (and tp!714401 tp!714402))))

(assert (=> b!2259153 (= tp!714312 e!1446736)))

(declare-fun b!2259579 () Bool)

(declare-fun tp!714399 () Bool)

(assert (=> b!2259579 (= e!1446736 tp!714399)))

(assert (= (and b!2259153 ((_ is ElementMatch!6613) (reg!6942 (regex!4265 otherR!12)))) b!2259577))

(assert (= (and b!2259153 ((_ is Concat!11041) (reg!6942 (regex!4265 otherR!12)))) b!2259578))

(assert (= (and b!2259153 ((_ is Star!6613) (reg!6942 (regex!4265 otherR!12)))) b!2259579))

(assert (= (and b!2259153 ((_ is Union!6613) (reg!6942 (regex!4265 otherR!12)))) b!2259580))

(declare-fun b!2259583 () Bool)

(declare-fun e!1446738 () Bool)

(declare-fun tp!714403 () Bool)

(assert (=> b!2259583 (= e!1446738 (and tp_is_empty!10447 tp!714403))))

(assert (=> b!2259134 (= tp!714292 e!1446738)))

(assert (= (and b!2259134 ((_ is Cons!26826) (t!201436 (t!201436 input!1722)))) b!2259583))

(declare-fun b!2259584 () Bool)

(declare-fun tp!714405 () Bool)

(declare-fun e!1446739 () Bool)

(declare-fun tp!714406 () Bool)

(assert (=> b!2259584 (= e!1446739 (and (inv!36358 (left!20363 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456)))))) tp!714406 (inv!36358 (right!20693 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456)))))) tp!714405))))

(declare-fun b!2259586 () Bool)

(declare-fun e!1446740 () Bool)

(declare-fun tp!714404 () Bool)

(assert (=> b!2259586 (= e!1446740 tp!714404)))

(declare-fun b!2259585 () Bool)

(assert (=> b!2259585 (= e!1446739 (and (inv!36366 (xs!11620 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456)))))) e!1446740))))

(assert (=> b!2258835 (= tp!714184 (and (inv!36358 (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456))))) e!1446739))))

(assert (= (and b!2258835 ((_ is Node!8678) (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456)))))) b!2259584))

(assert (= b!2259585 b!2259586))

(assert (= (and b!2258835 ((_ is Leaf!12796) (c!358846 (dynLambda!11628 (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))) (value!135372 (head!4842 tokens!456)))))) b!2259585))

(declare-fun m!2689427 () Bool)

(assert (=> b!2259584 m!2689427))

(declare-fun m!2689429 () Bool)

(assert (=> b!2259584 m!2689429))

(declare-fun m!2689431 () Bool)

(assert (=> b!2259585 m!2689431))

(assert (=> b!2258835 m!2688685))

(declare-fun b!2259589 () Bool)

(declare-fun e!1446742 () Bool)

(declare-fun tp!714407 () Bool)

(assert (=> b!2259589 (= e!1446742 (and tp_is_empty!10447 tp!714407))))

(assert (=> b!2259119 (= tp!714276 e!1446742)))

(assert (= (and b!2259119 ((_ is Cons!26826) (t!201436 (originalCharacters!5035 (h!32229 tokens!456))))) b!2259589))

(declare-fun b!2259590 () Bool)

(declare-fun e!1446743 () Bool)

(assert (=> b!2259590 (= e!1446743 tp_is_empty!10447)))

(declare-fun b!2259593 () Bool)

(declare-fun tp!714408 () Bool)

(declare-fun tp!714410 () Bool)

(assert (=> b!2259593 (= e!1446743 (and tp!714408 tp!714410))))

(declare-fun b!2259591 () Bool)

(declare-fun tp!714411 () Bool)

(declare-fun tp!714412 () Bool)

(assert (=> b!2259591 (= e!1446743 (and tp!714411 tp!714412))))

(assert (=> b!2259144 (= tp!714302 e!1446743)))

(declare-fun b!2259592 () Bool)

(declare-fun tp!714409 () Bool)

(assert (=> b!2259592 (= e!1446743 tp!714409)))

(assert (= (and b!2259144 ((_ is ElementMatch!6613) (regex!4265 (h!32228 (t!201437 rules!1750))))) b!2259590))

(assert (= (and b!2259144 ((_ is Concat!11041) (regex!4265 (h!32228 (t!201437 rules!1750))))) b!2259591))

(assert (= (and b!2259144 ((_ is Star!6613) (regex!4265 (h!32228 (t!201437 rules!1750))))) b!2259592))

(assert (= (and b!2259144 ((_ is Union!6613) (regex!4265 (h!32228 (t!201437 rules!1750))))) b!2259593))

(declare-fun b!2259595 () Bool)

(declare-fun e!1446745 () Bool)

(declare-fun tp!714414 () Bool)

(assert (=> b!2259595 (= e!1446745 (and tp_is_empty!10447 tp!714414))))

(assert (=> b!2259150 (= tp!714310 e!1446745)))

(assert (= (and b!2259150 ((_ is Cons!26826) (t!201436 (t!201436 otherP!12)))) b!2259595))

(declare-fun b!2259598 () Bool)

(declare-fun b_free!66673 () Bool)

(declare-fun b_next!67377 () Bool)

(assert (=> b!2259598 (= b_free!66673 (not b_next!67377))))

(declare-fun tp!714415 () Bool)

(declare-fun b_and!177473 () Bool)

(assert (=> b!2259598 (= tp!714415 b_and!177473)))

(declare-fun b_free!66675 () Bool)

(declare-fun b_next!67379 () Bool)

(assert (=> b!2259598 (= b_free!66675 (not b_next!67379))))

(declare-fun t!201516 () Bool)

(declare-fun tb!133909 () Bool)

(assert (=> (and b!2259598 (= (toChars!5866 (transformation!4265 (h!32228 (t!201437 (t!201437 rules!1750))))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456))))) t!201516) tb!133909))

(declare-fun result!163266 () Bool)

(assert (= result!163266 result!163174))

(assert (=> d!669186 t!201516))

(declare-fun t!201518 () Bool)

(declare-fun tb!133911 () Bool)

(assert (=> (and b!2259598 (= (toChars!5866 (transformation!4265 (h!32228 (t!201437 (t!201437 rules!1750))))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456))))) t!201518) tb!133911))

(declare-fun result!163268 () Bool)

(assert (= result!163268 result!163184))

(assert (=> b!2258846 t!201518))

(declare-fun t!201522 () Bool)

(declare-fun tb!133915 () Bool)

(assert (=> (and b!2259598 (= (toChars!5866 (transformation!4265 (h!32228 (t!201437 (t!201437 rules!1750))))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456)))))) t!201522) tb!133915))

(declare-fun result!163272 () Bool)

(assert (= result!163272 result!163242))

(assert (=> b!2259201 t!201522))

(declare-fun b_and!177477 () Bool)

(declare-fun tp!714417 () Bool)

(assert (=> b!2259598 (= tp!714417 (and (=> t!201516 result!163266) (=> t!201518 result!163268) (=> t!201522 result!163272) b_and!177477))))

(declare-fun e!1446748 () Bool)

(assert (=> b!2259598 (= e!1446748 (and tp!714415 tp!714417))))

(declare-fun b!2259597 () Bool)

(declare-fun tp!714416 () Bool)

(declare-fun e!1446749 () Bool)

(assert (=> b!2259597 (= e!1446749 (and tp!714416 (inv!36353 (tag!4755 (h!32228 (t!201437 (t!201437 rules!1750))))) (inv!36356 (transformation!4265 (h!32228 (t!201437 (t!201437 rules!1750))))) e!1446748))))

(declare-fun b!2259596 () Bool)

(declare-fun e!1446747 () Bool)

(declare-fun tp!714418 () Bool)

(assert (=> b!2259596 (= e!1446747 (and e!1446749 tp!714418))))

(assert (=> b!2259143 (= tp!714304 e!1446747)))

(assert (= b!2259597 b!2259598))

(assert (= b!2259596 b!2259597))

(assert (= (and b!2259143 ((_ is Cons!26827) (t!201437 (t!201437 rules!1750)))) b!2259596))

(declare-fun m!2689441 () Bool)

(assert (=> b!2259597 m!2689441))

(declare-fun m!2689443 () Bool)

(assert (=> b!2259597 m!2689443))

(declare-fun b!2259599 () Bool)

(declare-fun e!1446750 () Bool)

(assert (=> b!2259599 (= e!1446750 tp_is_empty!10447)))

(declare-fun b!2259602 () Bool)

(declare-fun tp!714419 () Bool)

(declare-fun tp!714421 () Bool)

(assert (=> b!2259602 (= e!1446750 (and tp!714419 tp!714421))))

(declare-fun b!2259600 () Bool)

(declare-fun tp!714422 () Bool)

(declare-fun tp!714423 () Bool)

(assert (=> b!2259600 (= e!1446750 (and tp!714422 tp!714423))))

(assert (=> b!2259118 (= tp!714271 e!1446750)))

(declare-fun b!2259601 () Bool)

(declare-fun tp!714420 () Bool)

(assert (=> b!2259601 (= e!1446750 tp!714420)))

(assert (= (and b!2259118 ((_ is ElementMatch!6613) (regOne!13739 (regex!4265 (h!32228 rules!1750))))) b!2259599))

(assert (= (and b!2259118 ((_ is Concat!11041) (regOne!13739 (regex!4265 (h!32228 rules!1750))))) b!2259600))

(assert (= (and b!2259118 ((_ is Star!6613) (regOne!13739 (regex!4265 (h!32228 rules!1750))))) b!2259601))

(assert (= (and b!2259118 ((_ is Union!6613) (regOne!13739 (regex!4265 (h!32228 rules!1750))))) b!2259602))

(declare-fun b!2259603 () Bool)

(declare-fun e!1446751 () Bool)

(assert (=> b!2259603 (= e!1446751 tp_is_empty!10447)))

(declare-fun b!2259606 () Bool)

(declare-fun tp!714424 () Bool)

(declare-fun tp!714426 () Bool)

(assert (=> b!2259606 (= e!1446751 (and tp!714424 tp!714426))))

(declare-fun b!2259604 () Bool)

(declare-fun tp!714427 () Bool)

(declare-fun tp!714428 () Bool)

(assert (=> b!2259604 (= e!1446751 (and tp!714427 tp!714428))))

(assert (=> b!2259118 (= tp!714273 e!1446751)))

(declare-fun b!2259605 () Bool)

(declare-fun tp!714425 () Bool)

(assert (=> b!2259605 (= e!1446751 tp!714425)))

(assert (= (and b!2259118 ((_ is ElementMatch!6613) (regTwo!13739 (regex!4265 (h!32228 rules!1750))))) b!2259603))

(assert (= (and b!2259118 ((_ is Concat!11041) (regTwo!13739 (regex!4265 (h!32228 rules!1750))))) b!2259604))

(assert (= (and b!2259118 ((_ is Star!6613) (regTwo!13739 (regex!4265 (h!32228 rules!1750))))) b!2259605))

(assert (= (and b!2259118 ((_ is Union!6613) (regTwo!13739 (regex!4265 (h!32228 rules!1750))))) b!2259606))

(declare-fun b!2259607 () Bool)

(declare-fun e!1446752 () Bool)

(assert (=> b!2259607 (= e!1446752 tp_is_empty!10447)))

(declare-fun b!2259610 () Bool)

(declare-fun tp!714429 () Bool)

(declare-fun tp!714431 () Bool)

(assert (=> b!2259610 (= e!1446752 (and tp!714429 tp!714431))))

(declare-fun b!2259608 () Bool)

(declare-fun tp!714432 () Bool)

(declare-fun tp!714433 () Bool)

(assert (=> b!2259608 (= e!1446752 (and tp!714432 tp!714433))))

(assert (=> b!2259116 (= tp!714274 e!1446752)))

(declare-fun b!2259609 () Bool)

(declare-fun tp!714430 () Bool)

(assert (=> b!2259609 (= e!1446752 tp!714430)))

(assert (= (and b!2259116 ((_ is ElementMatch!6613) (regOne!13738 (regex!4265 (h!32228 rules!1750))))) b!2259607))

(assert (= (and b!2259116 ((_ is Concat!11041) (regOne!13738 (regex!4265 (h!32228 rules!1750))))) b!2259608))

(assert (= (and b!2259116 ((_ is Star!6613) (regOne!13738 (regex!4265 (h!32228 rules!1750))))) b!2259609))

(assert (= (and b!2259116 ((_ is Union!6613) (regOne!13738 (regex!4265 (h!32228 rules!1750))))) b!2259610))

(declare-fun b!2259611 () Bool)

(declare-fun e!1446753 () Bool)

(assert (=> b!2259611 (= e!1446753 tp_is_empty!10447)))

(declare-fun b!2259614 () Bool)

(declare-fun tp!714434 () Bool)

(declare-fun tp!714436 () Bool)

(assert (=> b!2259614 (= e!1446753 (and tp!714434 tp!714436))))

(declare-fun b!2259612 () Bool)

(declare-fun tp!714437 () Bool)

(declare-fun tp!714438 () Bool)

(assert (=> b!2259612 (= e!1446753 (and tp!714437 tp!714438))))

(assert (=> b!2259116 (= tp!714275 e!1446753)))

(declare-fun b!2259613 () Bool)

(declare-fun tp!714435 () Bool)

(assert (=> b!2259613 (= e!1446753 tp!714435)))

(assert (= (and b!2259116 ((_ is ElementMatch!6613) (regTwo!13738 (regex!4265 (h!32228 rules!1750))))) b!2259611))

(assert (= (and b!2259116 ((_ is Concat!11041) (regTwo!13738 (regex!4265 (h!32228 rules!1750))))) b!2259612))

(assert (= (and b!2259116 ((_ is Star!6613) (regTwo!13738 (regex!4265 (h!32228 rules!1750))))) b!2259613))

(assert (= (and b!2259116 ((_ is Union!6613) (regTwo!13738 (regex!4265 (h!32228 rules!1750))))) b!2259614))

(declare-fun b!2259615 () Bool)

(declare-fun e!1446754 () Bool)

(assert (=> b!2259615 (= e!1446754 tp_is_empty!10447)))

(declare-fun b!2259618 () Bool)

(declare-fun tp!714439 () Bool)

(declare-fun tp!714441 () Bool)

(assert (=> b!2259618 (= e!1446754 (and tp!714439 tp!714441))))

(declare-fun b!2259616 () Bool)

(declare-fun tp!714442 () Bool)

(declare-fun tp!714443 () Bool)

(assert (=> b!2259616 (= e!1446754 (and tp!714442 tp!714443))))

(assert (=> b!2259149 (= tp!714305 e!1446754)))

(declare-fun b!2259617 () Bool)

(declare-fun tp!714440 () Bool)

(assert (=> b!2259617 (= e!1446754 tp!714440)))

(assert (= (and b!2259149 ((_ is ElementMatch!6613) (regOne!13739 (regex!4265 r!2363)))) b!2259615))

(assert (= (and b!2259149 ((_ is Concat!11041) (regOne!13739 (regex!4265 r!2363)))) b!2259616))

(assert (= (and b!2259149 ((_ is Star!6613) (regOne!13739 (regex!4265 r!2363)))) b!2259617))

(assert (= (and b!2259149 ((_ is Union!6613) (regOne!13739 (regex!4265 r!2363)))) b!2259618))

(declare-fun b!2259619 () Bool)

(declare-fun e!1446755 () Bool)

(assert (=> b!2259619 (= e!1446755 tp_is_empty!10447)))

(declare-fun b!2259622 () Bool)

(declare-fun tp!714444 () Bool)

(declare-fun tp!714446 () Bool)

(assert (=> b!2259622 (= e!1446755 (and tp!714444 tp!714446))))

(declare-fun b!2259620 () Bool)

(declare-fun tp!714447 () Bool)

(declare-fun tp!714448 () Bool)

(assert (=> b!2259620 (= e!1446755 (and tp!714447 tp!714448))))

(assert (=> b!2259149 (= tp!714307 e!1446755)))

(declare-fun b!2259621 () Bool)

(declare-fun tp!714445 () Bool)

(assert (=> b!2259621 (= e!1446755 tp!714445)))

(assert (= (and b!2259149 ((_ is ElementMatch!6613) (regTwo!13739 (regex!4265 r!2363)))) b!2259619))

(assert (= (and b!2259149 ((_ is Concat!11041) (regTwo!13739 (regex!4265 r!2363)))) b!2259620))

(assert (= (and b!2259149 ((_ is Star!6613) (regTwo!13739 (regex!4265 r!2363)))) b!2259621))

(assert (= (and b!2259149 ((_ is Union!6613) (regTwo!13739 (regex!4265 r!2363)))) b!2259622))

(declare-fun b!2259623 () Bool)

(declare-fun e!1446756 () Bool)

(assert (=> b!2259623 (= e!1446756 tp_is_empty!10447)))

(declare-fun b!2259626 () Bool)

(declare-fun tp!714449 () Bool)

(declare-fun tp!714451 () Bool)

(assert (=> b!2259626 (= e!1446756 (and tp!714449 tp!714451))))

(declare-fun b!2259624 () Bool)

(declare-fun tp!714452 () Bool)

(declare-fun tp!714453 () Bool)

(assert (=> b!2259624 (= e!1446756 (and tp!714452 tp!714453))))

(assert (=> b!2259117 (= tp!714272 e!1446756)))

(declare-fun b!2259625 () Bool)

(declare-fun tp!714450 () Bool)

(assert (=> b!2259625 (= e!1446756 tp!714450)))

(assert (= (and b!2259117 ((_ is ElementMatch!6613) (reg!6942 (regex!4265 (h!32228 rules!1750))))) b!2259623))

(assert (= (and b!2259117 ((_ is Concat!11041) (reg!6942 (regex!4265 (h!32228 rules!1750))))) b!2259624))

(assert (= (and b!2259117 ((_ is Star!6613) (reg!6942 (regex!4265 (h!32228 rules!1750))))) b!2259625))

(assert (= (and b!2259117 ((_ is Union!6613) (reg!6942 (regex!4265 (h!32228 rules!1750))))) b!2259626))

(declare-fun b_lambda!72113 () Bool)

(assert (= b_lambda!72105 (or (and b!2259133 b_free!66663) (and b!2259574 b_free!66671 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 (t!201438 tokens!456)))))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))))) (and b!2258714 b_free!66647 (= (toChars!5866 (transformation!4265 r!2363)) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))))) (and b!2258732 b_free!66643 (= (toChars!5866 (transformation!4265 otherR!12)) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))))) (and b!2259145 b_free!66667 (= (toChars!5866 (transformation!4265 (h!32228 (t!201437 rules!1750)))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))))) (and b!2259598 b_free!66675 (= (toChars!5866 (transformation!4265 (h!32228 (t!201437 (t!201437 rules!1750))))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))))) (and b!2258710 b_free!66651 (= (toChars!5866 (transformation!4265 (h!32228 rules!1750))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))))) (and b!2258722 b_free!66639 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))))) b_lambda!72113)))

(declare-fun b_lambda!72115 () Bool)

(assert (= b_lambda!72109 (or d!669154 b_lambda!72115)))

(declare-fun bs!455383 () Bool)

(declare-fun d!669480 () Bool)

(assert (= bs!455383 (and d!669480 d!669154)))

(assert (=> bs!455383 (= (dynLambda!11639 lambda!85279 (h!32228 rules!1750)) (ruleValid!1357 thiss!16613 (h!32228 rules!1750)))))

(assert (=> bs!455383 m!2688671))

(assert (=> b!2259498 d!669480))

(declare-fun b_lambda!72117 () Bool)

(assert (= b_lambda!72093 (or (and b!2258722 b_free!66639 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 tokens!456)))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))))) (and b!2258710 b_free!66651 (= (toChars!5866 (transformation!4265 (h!32228 rules!1750))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))))) (and b!2259133 b_free!66663 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 tokens!456))))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))))) (and b!2258714 b_free!66647 (= (toChars!5866 (transformation!4265 r!2363)) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))))) (and b!2258732 b_free!66643 (= (toChars!5866 (transformation!4265 otherR!12)) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))))) (and b!2259598 b_free!66675 (= (toChars!5866 (transformation!4265 (h!32228 (t!201437 (t!201437 rules!1750))))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))))) (and b!2259574 b_free!66671 (= (toChars!5866 (transformation!4265 (rule!6575 (h!32229 (t!201438 (t!201438 tokens!456)))))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))))) (and b!2259145 b_free!66667 (= (toChars!5866 (transformation!4265 (h!32228 (t!201437 rules!1750)))) (toChars!5866 (transformation!4265 (rule!6575 (head!4842 tokens!456)))))) b_lambda!72117)))

(check-sat (not d!669392) (not b_next!67375) (not b_next!67347) (not tb!133887) (not b!2259341) (not b!2259608) (not b!2259572) (not b!2259511) (not b!2259521) (not d!669314) (not b!2259477) b_and!177457 (not b!2259562) (not b!2259525) (not b!2259265) (not b!2259491) (not d!669360) (not b!2259624) (not b!2259191) (not d!669308) (not d!669422) (not b!2259565) (not bm!135771) (not d!669382) (not b!2259178) (not b_lambda!72113) (not b!2259262) (not d!669302) (not b!2259593) b_and!177397 b_and!177461 (not b!2259621) (not d!669436) (not b!2259596) (not d!669454) (not d!669434) (not b!2259546) (not d!669292) (not d!669340) (not b_next!67377) tp_is_empty!10447 (not b_next!67355) (not b!2259620) (not b!2259260) (not b!2259543) b_and!177393 (not b!2259610) (not b!2259514) (not b!2259616) (not d!669426) (not b!2259276) b_and!177467 b_and!177473 b_and!177449 (not d!669334) (not d!669444) (not b!2259537) (not b!2259359) (not b!2259199) (not d!669296) (not d!669344) (not b!2259515) (not d!669356) (not bs!455383) (not b!2259613) (not b!2259354) (not b!2259156) (not b!2259591) (not b!2259584) (not b!2259552) (not b!2259343) (not b!2259505) (not b!2259269) b_and!177471 (not b!2259548) (not b!2259602) (not b!2259297) (not b!2259604) (not b!2258835) (not b!2259550) (not b!2259526) b_and!177459 (not bm!135780) (not b!2259462) (not b!2259517) (not b!2259589) (not b!2259557) (not b!2259190) (not bm!135766) (not b!2259167) b_and!177469 (not b!2259585) (not b!2259268) (not b!2259579) (not b!2259592) (not b!2259278) (not b_next!67341) (not b!2259553) (not b!2259542) b_and!177405 (not b!2259465) (not b!2259196) (not d!669396) (not b!2259558) (not b!2259618) (not b!2259569) (not b!2259547) (not d!669350) (not bm!135783) b_and!177401 (not b!2259595) (not b!2259469) (not b!2259586) b_and!177477 (not b!2259597) (not b!2259270) (not b!2259605) (not b!2259349) (not b!2259360) (not d!669374) (not b!2259333) (not b!2259509) (not d!669306) (not d!669402) (not b!2259165) (not b!2259507) (not d!669390) b_and!177465 (not b!2259522) (not b!2259403) (not b!2259536) (not b!2259622) (not b!2258848) (not b!2259179) (not b!2259506) (not b_lambda!72117) (not b!2259578) (not b!2259361) (not b_lambda!72103) (not b!2259571) (not b!2259282) (not bm!135769) (not b!2259518) (not b!2259275) (not b_lambda!72115) (not b!2259203) (not d!669372) (not d!669332) (not b!2259510) (not b!2259570) (not d!669304) (not b!2259549) (not b!2259267) (not b!2259601) (not d!669312) (not b!2259292) (not b!2259356) (not d!669404) (not b_next!67343) (not d!669300) (not b!2259580) (not b_next!67369) (not b!2259554) (not b!2259519) (not b!2259538) (not b!2259583) (not d!669298) (not d!669336) (not b!2259259) (not b_next!67367) (not b!2259258) (not b_next!67349) (not b!2259466) b_and!177453 (not b_next!67353) (not b!2259527) (not b_next!67365) (not b!2259566) b_and!177463 (not b!2259298) (not b!2259502) (not b!2259473) (not d!669274) (not d!669380) (not b_next!67371) (not b!2259157) (not b!2259625) (not b!2259201) (not b_next!67373) (not b!2259564) (not d!669282) (not b!2259617) (not d!669354) (not b_next!67379) (not d!669460) (not b!2259544) (not b!2259344) (not b!2259272) (not b!2259158) (not b!2259600) (not b!2259560) (not d!669432) (not d!669442) (not d!669430) (not b!2259609) (not b!2259202) (not b!2259573) (not b!2259626) (not b!2259499) (not b!2259606) (not b!2259523) (not b!2259568) (not b!2259561) (not b!2259556) (not bm!135767) (not bm!135770) (not b!2259358) (not b_next!67351) (not d!669440) (not b_next!67345) (not d!669368) (not b!2259614) (not b!2259280) (not b!2259513) (not b!2259612))
(check-sat b_and!177457 b_and!177393 b_and!177471 b_and!177459 b_and!177469 b_and!177401 b_and!177477 b_and!177465 (not b_next!67367) (not b_next!67375) (not b_next!67347) b_and!177397 b_and!177461 (not b_next!67355) (not b_next!67377) b_and!177467 b_and!177473 b_and!177449 (not b_next!67341) b_and!177405 (not b_next!67343) (not b_next!67369) (not b_next!67349) b_and!177453 (not b_next!67353) (not b_next!67365) b_and!177463 (not b_next!67371) (not b_next!67379) (not b_next!67373) (not b_next!67351) (not b_next!67345))
