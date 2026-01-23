; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536888 () Bool)

(assert start!536888)

(declare-fun b!5093744 () Bool)

(declare-fun b_free!133303 () Bool)

(declare-fun b_next!134093 () Bool)

(assert (=> b!5093744 (= b_free!133303 (not b_next!134093))))

(declare-fun tp!1420080 () Bool)

(declare-fun b_and!350187 () Bool)

(assert (=> b!5093744 (= tp!1420080 b_and!350187)))

(declare-fun b_free!133305 () Bool)

(declare-fun b_next!134095 () Bool)

(assert (=> b!5093744 (= b_free!133305 (not b_next!134095))))

(declare-fun tp!1420081 () Bool)

(declare-fun b_and!350189 () Bool)

(assert (=> b!5093744 (= tp!1420081 b_and!350189)))

(declare-fun b!5093738 () Bool)

(declare-fun res!2167719 () Bool)

(declare-fun e!3176688 () Bool)

(assert (=> b!5093738 (=> (not res!2167719) (not e!3176688))))

(declare-datatypes ((List!58701 0))(
  ( (Nil!58577) (Cons!58577 (h!65025 (_ BitVec 16)) (t!371656 List!58701)) )
))
(declare-datatypes ((TokenValue!8808 0))(
  ( (FloatLiteralValue!17616 (text!62101 List!58701)) (TokenValueExt!8807 (__x!34905 Int)) (Broken!44040 (value!272363 List!58701)) (Object!8931) (End!8808) (Def!8808) (Underscore!8808) (Match!8808) (Else!8808) (Error!8808) (Case!8808) (If!8808) (Extends!8808) (Abstract!8808) (Class!8808) (Val!8808) (DelimiterValue!17616 (del!8868 List!58701)) (KeywordValue!8814 (value!272364 List!58701)) (CommentValue!17616 (value!272365 List!58701)) (WhitespaceValue!17616 (value!272366 List!58701)) (IndentationValue!8808 (value!272367 List!58701)) (String!66961) (Int32!8808) (Broken!44041 (value!272368 List!58701)) (Boolean!8809) (Unit!149618) (OperatorValue!8811 (op!8868 List!58701)) (IdentifierValue!17616 (value!272369 List!58701)) (IdentifierValue!17617 (value!272370 List!58701)) (WhitespaceValue!17617 (value!272371 List!58701)) (True!17616) (False!17616) (Broken!44042 (value!272372 List!58701)) (Broken!44043 (value!272373 List!58701)) (True!17617) (RightBrace!8808) (RightBracket!8808) (Colon!8808) (Null!8808) (Comma!8808) (LeftBracket!8808) (False!17617) (LeftBrace!8808) (ImaginaryLiteralValue!8808 (text!62102 List!58701)) (StringLiteralValue!26424 (value!272374 List!58701)) (EOFValue!8808 (value!272375 List!58701)) (IdentValue!8808 (value!272376 List!58701)) (DelimiterValue!17617 (value!272377 List!58701)) (DedentValue!8808 (value!272378 List!58701)) (NewLineValue!8808 (value!272379 List!58701)) (IntegerValue!26424 (value!272380 (_ BitVec 32)) (text!62103 List!58701)) (IntegerValue!26425 (value!272381 Int) (text!62104 List!58701)) (Times!8808) (Or!8808) (Equal!8808) (Minus!8808) (Broken!44044 (value!272382 List!58701)) (And!8808) (Div!8808) (LessEqual!8808) (Mod!8808) (Concat!22777) (Not!8808) (Plus!8808) (SpaceValue!8808 (value!272383 List!58701)) (IntegerValue!26426 (value!272384 Int) (text!62105 List!58701)) (StringLiteralValue!26425 (text!62106 List!58701)) (FloatLiteralValue!17617 (text!62107 List!58701)) (BytesLiteralValue!8808 (value!272385 List!58701)) (CommentValue!17617 (value!272386 List!58701)) (StringLiteralValue!26426 (value!272387 List!58701)) (ErrorTokenValue!8808 (msg!8869 List!58701)) )
))
(declare-datatypes ((C!28196 0))(
  ( (C!28197 (val!23750 Int)) )
))
(declare-datatypes ((List!58702 0))(
  ( (Nil!58578) (Cons!58578 (h!65026 C!28196) (t!371657 List!58702)) )
))
(declare-datatypes ((IArray!31393 0))(
  ( (IArray!31394 (innerList!15754 List!58702)) )
))
(declare-datatypes ((Conc!15666 0))(
  ( (Node!15666 (left!42987 Conc!15666) (right!43317 Conc!15666) (csize!31562 Int) (cheight!15877 Int)) (Leaf!26004 (xs!19048 IArray!31393) (csize!31563 Int)) (Empty!15666) )
))
(declare-datatypes ((BalanceConc!30450 0))(
  ( (BalanceConc!30451 (c!875418 Conc!15666)) )
))
(declare-datatypes ((TokenValueInjection!16924 0))(
  ( (TokenValueInjection!16925 (toValue!11517 Int) (toChars!11376 Int)) )
))
(declare-datatypes ((Regex!13969 0))(
  ( (ElementMatch!13969 (c!875419 C!28196)) (Concat!22778 (regOne!28450 Regex!13969) (regTwo!28450 Regex!13969)) (EmptyExpr!13969) (Star!13969 (reg!14298 Regex!13969)) (EmptyLang!13969) (Union!13969 (regOne!28451 Regex!13969) (regTwo!28451 Regex!13969)) )
))
(declare-datatypes ((String!66962 0))(
  ( (String!66963 (value!272388 String)) )
))
(declare-datatypes ((Rule!16788 0))(
  ( (Rule!16789 (regex!8494 Regex!13969) (tag!9358 String!66962) (isSeparator!8494 Bool) (transformation!8494 TokenValueInjection!16924)) )
))
(declare-datatypes ((List!58703 0))(
  ( (Nil!58579) (Cons!58579 (h!65027 Rule!16788) (t!371658 List!58703)) )
))
(declare-fun rulesArg!145 () List!58703)

(declare-fun isEmpty!31704 (List!58703) Bool)

(assert (=> b!5093738 (= res!2167719 (not (isEmpty!31704 rulesArg!145)))))

(declare-fun b!5093739 () Bool)

(declare-fun e!3176683 () Bool)

(assert (=> b!5093739 (= e!3176688 (not e!3176683))))

(declare-fun res!2167720 () Bool)

(assert (=> b!5093739 (=> res!2167720 e!3176683)))

(get-info :version)

(assert (=> b!5093739 (= res!2167720 (or (and ((_ is Cons!58579) rulesArg!145) ((_ is Nil!58579) (t!371658 rulesArg!145))) (not ((_ is Cons!58579) rulesArg!145))))))

(declare-fun input!1210 () List!58702)

(declare-fun isPrefix!5390 (List!58702 List!58702) Bool)

(assert (=> b!5093739 (isPrefix!5390 input!1210 input!1210)))

(declare-datatypes ((Unit!149619 0))(
  ( (Unit!149620) )
))
(declare-fun lt!2092800 () Unit!149619)

(declare-fun lemmaIsPrefixRefl!3649 (List!58702 List!58702) Unit!149619)

(assert (=> b!5093739 (= lt!2092800 (lemmaIsPrefixRefl!3649 input!1210 input!1210))))

(declare-fun b!5093740 () Bool)

(declare-fun e!3176687 () Bool)

(declare-fun e!3176684 () Bool)

(declare-fun tp!1420083 () Bool)

(declare-fun inv!78077 (String!66962) Bool)

(declare-fun inv!78079 (TokenValueInjection!16924) Bool)

(assert (=> b!5093740 (= e!3176684 (and tp!1420083 (inv!78077 (tag!9358 (h!65027 rulesArg!145))) (inv!78079 (transformation!8494 (h!65027 rulesArg!145))) e!3176687))))

(declare-fun b!5093742 () Bool)

(declare-fun e!3176682 () Bool)

(declare-fun tp!1420082 () Bool)

(assert (=> b!5093742 (= e!3176682 (and e!3176684 tp!1420082))))

(declare-fun b!5093743 () Bool)

(declare-fun res!2167718 () Bool)

(assert (=> b!5093743 (=> (not res!2167718) (not e!3176688))))

(declare-datatypes ((LexerInterface!8086 0))(
  ( (LexerInterfaceExt!8083 (__x!34906 Int)) (Lexer!8084) )
))
(declare-fun thiss!14775 () LexerInterface!8086)

(declare-fun rulesValidInductive!3319 (LexerInterface!8086 List!58703) Bool)

(assert (=> b!5093743 (= res!2167718 (rulesValidInductive!3319 thiss!14775 rulesArg!145))))

(assert (=> b!5093744 (= e!3176687 (and tp!1420080 tp!1420081))))

(declare-fun b!5093745 () Bool)

(declare-fun e!3176685 () Bool)

(declare-fun tp_is_empty!37203 () Bool)

(declare-fun tp!1420079 () Bool)

(assert (=> b!5093745 (= e!3176685 (and tp_is_empty!37203 tp!1420079))))

(declare-fun b!5093741 () Bool)

(assert (=> b!5093741 (= e!3176683 (rulesValidInductive!3319 thiss!14775 (t!371658 rulesArg!145)))))

(declare-datatypes ((Token!15428 0))(
  ( (Token!15429 (value!272389 TokenValue!8808) (rule!11760 Rule!16788) (size!39255 Int) (originalCharacters!8745 List!58702)) )
))
(declare-datatypes ((tuple2!63302 0))(
  ( (tuple2!63303 (_1!34954 Token!15428) (_2!34954 List!58702)) )
))
(declare-datatypes ((Option!14623 0))(
  ( (None!14622) (Some!14622 (v!50635 tuple2!63302)) )
))
(declare-fun lt!2092799 () Option!14623)

(declare-fun maxPrefixOneRuleZipper!310 (LexerInterface!8086 Rule!16788 List!58702) Option!14623)

(assert (=> b!5093741 (= lt!2092799 (maxPrefixOneRuleZipper!310 thiss!14775 (h!65027 rulesArg!145) input!1210))))

(declare-fun res!2167721 () Bool)

(assert (=> start!536888 (=> (not res!2167721) (not e!3176688))))

(assert (=> start!536888 (= res!2167721 ((_ is Lexer!8084) thiss!14775))))

(assert (=> start!536888 e!3176688))

(assert (=> start!536888 true))

(assert (=> start!536888 e!3176682))

(assert (=> start!536888 e!3176685))

(assert (= (and start!536888 res!2167721) b!5093743))

(assert (= (and b!5093743 res!2167718) b!5093738))

(assert (= (and b!5093738 res!2167719) b!5093739))

(assert (= (and b!5093739 (not res!2167720)) b!5093741))

(assert (= b!5093740 b!5093744))

(assert (= b!5093742 b!5093740))

(assert (= (and start!536888 ((_ is Cons!58579) rulesArg!145)) b!5093742))

(assert (= (and start!536888 ((_ is Cons!58578) input!1210)) b!5093745))

(declare-fun m!6151738 () Bool)

(assert (=> b!5093740 m!6151738))

(declare-fun m!6151740 () Bool)

(assert (=> b!5093740 m!6151740))

(declare-fun m!6151742 () Bool)

(assert (=> b!5093743 m!6151742))

(declare-fun m!6151744 () Bool)

(assert (=> b!5093739 m!6151744))

(declare-fun m!6151746 () Bool)

(assert (=> b!5093739 m!6151746))

(declare-fun m!6151748 () Bool)

(assert (=> b!5093738 m!6151748))

(declare-fun m!6151750 () Bool)

(assert (=> b!5093741 m!6151750))

(declare-fun m!6151752 () Bool)

(assert (=> b!5093741 m!6151752))

(check-sat (not b!5093743) (not b!5093740) (not b!5093742) (not b_next!134095) b_and!350187 b_and!350189 (not b_next!134093) (not b!5093741) tp_is_empty!37203 (not b!5093745) (not b!5093739) (not b!5093738))
(check-sat b_and!350189 b_and!350187 (not b_next!134093) (not b_next!134095))
(get-model)

(declare-fun d!1648722 () Bool)

(assert (=> d!1648722 (= (inv!78077 (tag!9358 (h!65027 rulesArg!145))) (= (mod (str.len (value!272388 (tag!9358 (h!65027 rulesArg!145)))) 2) 0))))

(assert (=> b!5093740 d!1648722))

(declare-fun d!1648724 () Bool)

(declare-fun res!2167730 () Bool)

(declare-fun e!3176691 () Bool)

(assert (=> d!1648724 (=> (not res!2167730) (not e!3176691))))

(declare-fun semiInverseModEq!3782 (Int Int) Bool)

(assert (=> d!1648724 (= res!2167730 (semiInverseModEq!3782 (toChars!11376 (transformation!8494 (h!65027 rulesArg!145))) (toValue!11517 (transformation!8494 (h!65027 rulesArg!145)))))))

(assert (=> d!1648724 (= (inv!78079 (transformation!8494 (h!65027 rulesArg!145))) e!3176691)))

(declare-fun b!5093748 () Bool)

(declare-fun equivClasses!3597 (Int Int) Bool)

(assert (=> b!5093748 (= e!3176691 (equivClasses!3597 (toChars!11376 (transformation!8494 (h!65027 rulesArg!145))) (toValue!11517 (transformation!8494 (h!65027 rulesArg!145)))))))

(assert (= (and d!1648724 res!2167730) b!5093748))

(declare-fun m!6151754 () Bool)

(assert (=> d!1648724 m!6151754))

(declare-fun m!6151756 () Bool)

(assert (=> b!5093748 m!6151756))

(assert (=> b!5093740 d!1648724))

(declare-fun d!1648730 () Bool)

(assert (=> d!1648730 true))

(declare-fun lt!2092811 () Bool)

(declare-fun lambda!249831 () Int)

(declare-fun forall!13469 (List!58703 Int) Bool)

(assert (=> d!1648730 (= lt!2092811 (forall!13469 (t!371658 rulesArg!145) lambda!249831))))

(declare-fun e!3176712 () Bool)

(assert (=> d!1648730 (= lt!2092811 e!3176712)))

(declare-fun res!2167754 () Bool)

(assert (=> d!1648730 (=> res!2167754 e!3176712)))

(assert (=> d!1648730 (= res!2167754 (not ((_ is Cons!58579) (t!371658 rulesArg!145))))))

(assert (=> d!1648730 (= (rulesValidInductive!3319 thiss!14775 (t!371658 rulesArg!145)) lt!2092811)))

(declare-fun b!5093772 () Bool)

(declare-fun e!3176713 () Bool)

(assert (=> b!5093772 (= e!3176712 e!3176713)))

(declare-fun res!2167755 () Bool)

(assert (=> b!5093772 (=> (not res!2167755) (not e!3176713))))

(declare-fun ruleValid!3895 (LexerInterface!8086 Rule!16788) Bool)

(assert (=> b!5093772 (= res!2167755 (ruleValid!3895 thiss!14775 (h!65027 (t!371658 rulesArg!145))))))

(declare-fun b!5093773 () Bool)

(assert (=> b!5093773 (= e!3176713 (rulesValidInductive!3319 thiss!14775 (t!371658 (t!371658 rulesArg!145))))))

(assert (= (and d!1648730 (not res!2167754)) b!5093772))

(assert (= (and b!5093772 res!2167755) b!5093773))

(declare-fun m!6151772 () Bool)

(assert (=> d!1648730 m!6151772))

(declare-fun m!6151774 () Bool)

(assert (=> b!5093772 m!6151774))

(declare-fun m!6151776 () Bool)

(assert (=> b!5093773 m!6151776))

(assert (=> b!5093741 d!1648730))

(declare-fun lt!2092840 () Option!14623)

(declare-fun d!1648740 () Bool)

(declare-fun maxPrefixOneRule!3695 (LexerInterface!8086 Rule!16788 List!58702) Option!14623)

(assert (=> d!1648740 (= lt!2092840 (maxPrefixOneRule!3695 thiss!14775 (h!65027 rulesArg!145) input!1210))))

(declare-fun e!3176724 () Option!14623)

(assert (=> d!1648740 (= lt!2092840 e!3176724)))

(declare-fun c!875426 () Bool)

(declare-datatypes ((tuple2!63304 0))(
  ( (tuple2!63305 (_1!34955 List!58702) (_2!34955 List!58702)) )
))
(declare-fun lt!2092841 () tuple2!63304)

(declare-fun isEmpty!31705 (List!58702) Bool)

(assert (=> d!1648740 (= c!875426 (isEmpty!31705 (_1!34955 lt!2092841)))))

(declare-fun findLongestMatchWithZipper!101 (Regex!13969 List!58702) tuple2!63304)

(assert (=> d!1648740 (= lt!2092841 (findLongestMatchWithZipper!101 (regex!8494 (h!65027 rulesArg!145)) input!1210))))

(assert (=> d!1648740 (ruleValid!3895 thiss!14775 (h!65027 rulesArg!145))))

(assert (=> d!1648740 (= (maxPrefixOneRuleZipper!310 thiss!14775 (h!65027 rulesArg!145) input!1210) lt!2092840)))

(declare-fun b!5093792 () Bool)

(assert (=> b!5093792 (= e!3176724 None!14622)))

(declare-fun b!5093793 () Bool)

(declare-fun apply!14284 (TokenValueInjection!16924 BalanceConc!30450) TokenValue!8808)

(declare-fun seqFromList!6102 (List!58702) BalanceConc!30450)

(declare-fun size!39257 (List!58702) Int)

(assert (=> b!5093793 (= e!3176724 (Some!14622 (tuple2!63303 (Token!15429 (apply!14284 (transformation!8494 (h!65027 rulesArg!145)) (seqFromList!6102 (_1!34955 lt!2092841))) (h!65027 rulesArg!145) (size!39257 (_1!34955 lt!2092841)) (_1!34955 lt!2092841)) (_2!34955 lt!2092841))))))

(declare-fun lt!2092838 () Unit!149619)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1962 (Regex!13969 List!58702) Unit!149619)

(assert (=> b!5093793 (= lt!2092838 (longestMatchIsAcceptedByMatchOrIsEmpty!1962 (regex!8494 (h!65027 rulesArg!145)) input!1210))))

(declare-fun res!2167762 () Bool)

(declare-fun findLongestMatchInner!2009 (Regex!13969 List!58702 Int List!58702 List!58702 Int) tuple2!63304)

(assert (=> b!5093793 (= res!2167762 (isEmpty!31705 (_1!34955 (findLongestMatchInner!2009 (regex!8494 (h!65027 rulesArg!145)) Nil!58578 (size!39257 Nil!58578) input!1210 input!1210 (size!39257 input!1210)))))))

(declare-fun e!3176725 () Bool)

(assert (=> b!5093793 (=> res!2167762 e!3176725)))

(assert (=> b!5093793 e!3176725))

(declare-fun lt!2092842 () Unit!149619)

(assert (=> b!5093793 (= lt!2092842 lt!2092838)))

(declare-fun lt!2092837 () Unit!149619)

(declare-fun lemmaInv!1402 (TokenValueInjection!16924) Unit!149619)

(assert (=> b!5093793 (= lt!2092837 (lemmaInv!1402 (transformation!8494 (h!65027 rulesArg!145))))))

(declare-fun lt!2092839 () Unit!149619)

(declare-fun lemmaSemiInverse!2635 (TokenValueInjection!16924 BalanceConc!30450) Unit!149619)

(assert (=> b!5093793 (= lt!2092839 (lemmaSemiInverse!2635 (transformation!8494 (h!65027 rulesArg!145)) (seqFromList!6102 (_1!34955 lt!2092841))))))

(declare-fun b!5093794 () Bool)

(declare-fun matchR!6784 (Regex!13969 List!58702) Bool)

(assert (=> b!5093794 (= e!3176725 (matchR!6784 (regex!8494 (h!65027 rulesArg!145)) (_1!34955 (findLongestMatchInner!2009 (regex!8494 (h!65027 rulesArg!145)) Nil!58578 (size!39257 Nil!58578) input!1210 input!1210 (size!39257 input!1210)))))))

(assert (= (and d!1648740 c!875426) b!5093792))

(assert (= (and d!1648740 (not c!875426)) b!5093793))

(assert (= (and b!5093793 (not res!2167762)) b!5093794))

(declare-fun m!6151784 () Bool)

(assert (=> d!1648740 m!6151784))

(declare-fun m!6151786 () Bool)

(assert (=> d!1648740 m!6151786))

(declare-fun m!6151788 () Bool)

(assert (=> d!1648740 m!6151788))

(declare-fun m!6151790 () Bool)

(assert (=> d!1648740 m!6151790))

(declare-fun m!6151792 () Bool)

(assert (=> b!5093793 m!6151792))

(declare-fun m!6151794 () Bool)

(assert (=> b!5093793 m!6151794))

(declare-fun m!6151796 () Bool)

(assert (=> b!5093793 m!6151796))

(declare-fun m!6151798 () Bool)

(assert (=> b!5093793 m!6151798))

(declare-fun m!6151800 () Bool)

(assert (=> b!5093793 m!6151800))

(assert (=> b!5093793 m!6151792))

(declare-fun m!6151802 () Bool)

(assert (=> b!5093793 m!6151802))

(declare-fun m!6151804 () Bool)

(assert (=> b!5093793 m!6151804))

(assert (=> b!5093793 m!6151794))

(declare-fun m!6151806 () Bool)

(assert (=> b!5093793 m!6151806))

(assert (=> b!5093793 m!6151802))

(declare-fun m!6151808 () Bool)

(assert (=> b!5093793 m!6151808))

(assert (=> b!5093793 m!6151794))

(declare-fun m!6151810 () Bool)

(assert (=> b!5093793 m!6151810))

(assert (=> b!5093794 m!6151792))

(assert (=> b!5093794 m!6151802))

(assert (=> b!5093794 m!6151792))

(assert (=> b!5093794 m!6151802))

(assert (=> b!5093794 m!6151804))

(declare-fun m!6151812 () Bool)

(assert (=> b!5093794 m!6151812))

(assert (=> b!5093741 d!1648740))

(declare-fun bs!1191280 () Bool)

(declare-fun d!1648744 () Bool)

(assert (= bs!1191280 (and d!1648744 d!1648730)))

(declare-fun lambda!249835 () Int)

(assert (=> bs!1191280 (= lambda!249835 lambda!249831)))

(assert (=> d!1648744 true))

(declare-fun lt!2092843 () Bool)

(assert (=> d!1648744 (= lt!2092843 (forall!13469 rulesArg!145 lambda!249835))))

(declare-fun e!3176726 () Bool)

(assert (=> d!1648744 (= lt!2092843 e!3176726)))

(declare-fun res!2167763 () Bool)

(assert (=> d!1648744 (=> res!2167763 e!3176726)))

(assert (=> d!1648744 (= res!2167763 (not ((_ is Cons!58579) rulesArg!145)))))

(assert (=> d!1648744 (= (rulesValidInductive!3319 thiss!14775 rulesArg!145) lt!2092843)))

(declare-fun b!5093795 () Bool)

(declare-fun e!3176727 () Bool)

(assert (=> b!5093795 (= e!3176726 e!3176727)))

(declare-fun res!2167764 () Bool)

(assert (=> b!5093795 (=> (not res!2167764) (not e!3176727))))

(assert (=> b!5093795 (= res!2167764 (ruleValid!3895 thiss!14775 (h!65027 rulesArg!145)))))

(declare-fun b!5093796 () Bool)

(assert (=> b!5093796 (= e!3176727 (rulesValidInductive!3319 thiss!14775 (t!371658 rulesArg!145)))))

(assert (= (and d!1648744 (not res!2167763)) b!5093795))

(assert (= (and b!5093795 res!2167764) b!5093796))

(declare-fun m!6151814 () Bool)

(assert (=> d!1648744 m!6151814))

(assert (=> b!5093795 m!6151790))

(assert (=> b!5093796 m!6151750))

(assert (=> b!5093743 d!1648744))

(declare-fun d!1648746 () Bool)

(assert (=> d!1648746 (= (isEmpty!31704 rulesArg!145) ((_ is Nil!58579) rulesArg!145))))

(assert (=> b!5093738 d!1648746))

(declare-fun b!5093817 () Bool)

(declare-fun res!2167777 () Bool)

(declare-fun e!3176744 () Bool)

(assert (=> b!5093817 (=> (not res!2167777) (not e!3176744))))

(declare-fun head!10813 (List!58702) C!28196)

(assert (=> b!5093817 (= res!2167777 (= (head!10813 input!1210) (head!10813 input!1210)))))

(declare-fun b!5093816 () Bool)

(declare-fun e!3176746 () Bool)

(assert (=> b!5093816 (= e!3176746 e!3176744)))

(declare-fun res!2167778 () Bool)

(assert (=> b!5093816 (=> (not res!2167778) (not e!3176744))))

(assert (=> b!5093816 (= res!2167778 (not ((_ is Nil!58578) input!1210)))))

(declare-fun b!5093819 () Bool)

(declare-fun e!3176745 () Bool)

(assert (=> b!5093819 (= e!3176745 (>= (size!39257 input!1210) (size!39257 input!1210)))))

(declare-fun b!5093818 () Bool)

(declare-fun tail!9968 (List!58702) List!58702)

(assert (=> b!5093818 (= e!3176744 (isPrefix!5390 (tail!9968 input!1210) (tail!9968 input!1210)))))

(declare-fun d!1648748 () Bool)

(assert (=> d!1648748 e!3176745))

(declare-fun res!2167776 () Bool)

(assert (=> d!1648748 (=> res!2167776 e!3176745)))

(declare-fun lt!2092853 () Bool)

(assert (=> d!1648748 (= res!2167776 (not lt!2092853))))

(assert (=> d!1648748 (= lt!2092853 e!3176746)))

(declare-fun res!2167779 () Bool)

(assert (=> d!1648748 (=> res!2167779 e!3176746)))

(assert (=> d!1648748 (= res!2167779 ((_ is Nil!58578) input!1210))))

(assert (=> d!1648748 (= (isPrefix!5390 input!1210 input!1210) lt!2092853)))

(assert (= (and d!1648748 (not res!2167779)) b!5093816))

(assert (= (and b!5093816 res!2167778) b!5093817))

(assert (= (and b!5093817 res!2167777) b!5093818))

(assert (= (and d!1648748 (not res!2167776)) b!5093819))

(declare-fun m!6151846 () Bool)

(assert (=> b!5093817 m!6151846))

(assert (=> b!5093817 m!6151846))

(assert (=> b!5093819 m!6151802))

(assert (=> b!5093819 m!6151802))

(declare-fun m!6151848 () Bool)

(assert (=> b!5093818 m!6151848))

(assert (=> b!5093818 m!6151848))

(assert (=> b!5093818 m!6151848))

(assert (=> b!5093818 m!6151848))

(declare-fun m!6151850 () Bool)

(assert (=> b!5093818 m!6151850))

(assert (=> b!5093739 d!1648748))

(declare-fun d!1648752 () Bool)

(assert (=> d!1648752 (isPrefix!5390 input!1210 input!1210)))

(declare-fun lt!2092856 () Unit!149619)

(declare-fun choose!37300 (List!58702 List!58702) Unit!149619)

(assert (=> d!1648752 (= lt!2092856 (choose!37300 input!1210 input!1210))))

(assert (=> d!1648752 (= (lemmaIsPrefixRefl!3649 input!1210 input!1210) lt!2092856)))

(declare-fun bs!1191282 () Bool)

(assert (= bs!1191282 d!1648752))

(assert (=> bs!1191282 m!6151744))

(declare-fun m!6151856 () Bool)

(assert (=> bs!1191282 m!6151856))

(assert (=> b!5093739 d!1648752))

(declare-fun b!5093839 () Bool)

(declare-fun e!3176757 () Bool)

(declare-fun tp!1420108 () Bool)

(assert (=> b!5093839 (= e!3176757 (and tp_is_empty!37203 tp!1420108))))

(assert (=> b!5093745 (= tp!1420079 e!3176757)))

(assert (= (and b!5093745 ((_ is Cons!58578) (t!371657 input!1210))) b!5093839))

(declare-fun b!5093861 () Bool)

(declare-fun e!3176764 () Bool)

(declare-fun tp!1420131 () Bool)

(assert (=> b!5093861 (= e!3176764 tp!1420131)))

(declare-fun b!5093860 () Bool)

(declare-fun tp!1420128 () Bool)

(declare-fun tp!1420130 () Bool)

(assert (=> b!5093860 (= e!3176764 (and tp!1420128 tp!1420130))))

(declare-fun b!5093859 () Bool)

(assert (=> b!5093859 (= e!3176764 tp_is_empty!37203)))

(assert (=> b!5093740 (= tp!1420083 e!3176764)))

(declare-fun b!5093862 () Bool)

(declare-fun tp!1420129 () Bool)

(declare-fun tp!1420127 () Bool)

(assert (=> b!5093862 (= e!3176764 (and tp!1420129 tp!1420127))))

(assert (= (and b!5093740 ((_ is ElementMatch!13969) (regex!8494 (h!65027 rulesArg!145)))) b!5093859))

(assert (= (and b!5093740 ((_ is Concat!22778) (regex!8494 (h!65027 rulesArg!145)))) b!5093860))

(assert (= (and b!5093740 ((_ is Star!13969) (regex!8494 (h!65027 rulesArg!145)))) b!5093861))

(assert (= (and b!5093740 ((_ is Union!13969) (regex!8494 (h!65027 rulesArg!145)))) b!5093862))

(declare-fun b!5093873 () Bool)

(declare-fun b_free!133311 () Bool)

(declare-fun b_next!134101 () Bool)

(assert (=> b!5093873 (= b_free!133311 (not b_next!134101))))

(declare-fun tp!1420141 () Bool)

(declare-fun b_and!350195 () Bool)

(assert (=> b!5093873 (= tp!1420141 b_and!350195)))

(declare-fun b_free!133313 () Bool)

(declare-fun b_next!134103 () Bool)

(assert (=> b!5093873 (= b_free!133313 (not b_next!134103))))

(declare-fun tp!1420143 () Bool)

(declare-fun b_and!350197 () Bool)

(assert (=> b!5093873 (= tp!1420143 b_and!350197)))

(declare-fun e!3176773 () Bool)

(assert (=> b!5093873 (= e!3176773 (and tp!1420141 tp!1420143))))

(declare-fun e!3176776 () Bool)

(declare-fun tp!1420140 () Bool)

(declare-fun b!5093872 () Bool)

(assert (=> b!5093872 (= e!3176776 (and tp!1420140 (inv!78077 (tag!9358 (h!65027 (t!371658 rulesArg!145)))) (inv!78079 (transformation!8494 (h!65027 (t!371658 rulesArg!145)))) e!3176773))))

(declare-fun b!5093871 () Bool)

(declare-fun e!3176775 () Bool)

(declare-fun tp!1420142 () Bool)

(assert (=> b!5093871 (= e!3176775 (and e!3176776 tp!1420142))))

(assert (=> b!5093742 (= tp!1420082 e!3176775)))

(assert (= b!5093872 b!5093873))

(assert (= b!5093871 b!5093872))

(assert (= (and b!5093742 ((_ is Cons!58579) (t!371658 rulesArg!145))) b!5093871))

(declare-fun m!6151858 () Bool)

(assert (=> b!5093872 m!6151858))

(declare-fun m!6151860 () Bool)

(assert (=> b!5093872 m!6151860))

(check-sat (not b!5093860) (not d!1648752) (not b!5093817) (not b!5093839) (not b_next!134095) (not b!5093796) b_and!350187 (not b!5093862) (not b_next!134093) (not d!1648724) (not d!1648740) (not b!5093872) (not b!5093818) (not b!5093794) (not b_next!134103) (not b!5093795) (not b!5093748) (not b!5093871) (not d!1648744) b_and!350189 (not b!5093861) (not b!5093819) (not b!5093773) (not b!5093772) b_and!350197 (not b!5093793) (not d!1648730) (not b_next!134101) b_and!350195 tp_is_empty!37203)
(check-sat (not b_next!134103) (not b_next!134095) b_and!350187 b_and!350189 (not b_next!134093) b_and!350197 (not b_next!134101) b_and!350195)
