; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!226236 () Bool)

(assert start!226236)

(declare-fun b!2300763 () Bool)

(declare-fun b_free!69405 () Bool)

(declare-fun b_next!70109 () Bool)

(assert (=> b!2300763 (= b_free!69405 (not b_next!70109))))

(declare-fun tp!729875 () Bool)

(declare-fun b_and!183209 () Bool)

(assert (=> b!2300763 (= tp!729875 b_and!183209)))

(declare-fun b_free!69407 () Bool)

(declare-fun b_next!70111 () Bool)

(assert (=> b!2300763 (= b_free!69407 (not b_next!70111))))

(declare-fun tp!729873 () Bool)

(declare-fun b_and!183211 () Bool)

(assert (=> b!2300763 (= tp!729873 b_and!183211)))

(declare-fun b!2300749 () Bool)

(declare-fun b_free!69409 () Bool)

(declare-fun b_next!70113 () Bool)

(assert (=> b!2300749 (= b_free!69409 (not b_next!70113))))

(declare-fun tp!729883 () Bool)

(declare-fun b_and!183213 () Bool)

(assert (=> b!2300749 (= tp!729883 b_and!183213)))

(declare-fun b_free!69411 () Bool)

(declare-fun b_next!70115 () Bool)

(assert (=> b!2300749 (= b_free!69411 (not b_next!70115))))

(declare-fun tp!729879 () Bool)

(declare-fun b_and!183215 () Bool)

(assert (=> b!2300749 (= tp!729879 b_and!183215)))

(declare-fun b!2300759 () Bool)

(declare-fun b_free!69413 () Bool)

(declare-fun b_next!70117 () Bool)

(assert (=> b!2300759 (= b_free!69413 (not b_next!70117))))

(declare-fun tp!729872 () Bool)

(declare-fun b_and!183217 () Bool)

(assert (=> b!2300759 (= tp!729872 b_and!183217)))

(declare-fun b_free!69415 () Bool)

(declare-fun b_next!70119 () Bool)

(assert (=> b!2300759 (= b_free!69415 (not b_next!70119))))

(declare-fun tp!729877 () Bool)

(declare-fun b_and!183219 () Bool)

(assert (=> b!2300759 (= tp!729877 b_and!183219)))

(declare-fun b!2300764 () Bool)

(declare-fun b_free!69417 () Bool)

(declare-fun b_next!70121 () Bool)

(assert (=> b!2300764 (= b_free!69417 (not b_next!70121))))

(declare-fun tp!729871 () Bool)

(declare-fun b_and!183221 () Bool)

(assert (=> b!2300764 (= tp!729871 b_and!183221)))

(declare-fun b_free!69419 () Bool)

(declare-fun b_next!70123 () Bool)

(assert (=> b!2300764 (= b_free!69419 (not b_next!70123))))

(declare-fun tp!729868 () Bool)

(declare-fun b_and!183223 () Bool)

(assert (=> b!2300764 (= tp!729868 b_and!183223)))

(declare-fun b!2300739 () Bool)

(declare-fun e!1474360 () Bool)

(declare-datatypes ((List!27479 0))(
  ( (Nil!27385) (Cons!27385 (h!32786 (_ BitVec 16)) (t!205809 List!27479)) )
))
(declare-datatypes ((TokenValue!4551 0))(
  ( (FloatLiteralValue!9102 (text!32302 List!27479)) (TokenValueExt!4550 (__x!18162 Int)) (Broken!22755 (value!138880 List!27479)) (Object!4644) (End!4551) (Def!4551) (Underscore!4551) (Match!4551) (Else!4551) (Error!4551) (Case!4551) (If!4551) (Extends!4551) (Abstract!4551) (Class!4551) (Val!4551) (DelimiterValue!9102 (del!4611 List!27479)) (KeywordValue!4557 (value!138881 List!27479)) (CommentValue!9102 (value!138882 List!27479)) (WhitespaceValue!9102 (value!138883 List!27479)) (IndentationValue!4551 (value!138884 List!27479)) (String!29858) (Int32!4551) (Broken!22756 (value!138885 List!27479)) (Boolean!4552) (Unit!40289) (OperatorValue!4554 (op!4611 List!27479)) (IdentifierValue!9102 (value!138886 List!27479)) (IdentifierValue!9103 (value!138887 List!27479)) (WhitespaceValue!9103 (value!138888 List!27479)) (True!9102) (False!9102) (Broken!22757 (value!138889 List!27479)) (Broken!22758 (value!138890 List!27479)) (True!9103) (RightBrace!4551) (RightBracket!4551) (Colon!4551) (Null!4551) (Comma!4551) (LeftBracket!4551) (False!9103) (LeftBrace!4551) (ImaginaryLiteralValue!4551 (text!32303 List!27479)) (StringLiteralValue!13653 (value!138891 List!27479)) (EOFValue!4551 (value!138892 List!27479)) (IdentValue!4551 (value!138893 List!27479)) (DelimiterValue!9103 (value!138894 List!27479)) (DedentValue!4551 (value!138895 List!27479)) (NewLineValue!4551 (value!138896 List!27479)) (IntegerValue!13653 (value!138897 (_ BitVec 32)) (text!32304 List!27479)) (IntegerValue!13654 (value!138898 Int) (text!32305 List!27479)) (Times!4551) (Or!4551) (Equal!4551) (Minus!4551) (Broken!22759 (value!138899 List!27479)) (And!4551) (Div!4551) (LessEqual!4551) (Mod!4551) (Concat!11288) (Not!4551) (Plus!4551) (SpaceValue!4551 (value!138900 List!27479)) (IntegerValue!13655 (value!138901 Int) (text!32306 List!27479)) (StringLiteralValue!13654 (text!32307 List!27479)) (FloatLiteralValue!9103 (text!32308 List!27479)) (BytesLiteralValue!4551 (value!138902 List!27479)) (CommentValue!9103 (value!138903 List!27479)) (StringLiteralValue!13655 (value!138904 List!27479)) (ErrorTokenValue!4551 (msg!4612 List!27479)) )
))
(declare-datatypes ((C!13620 0))(
  ( (C!13621 (val!7858 Int)) )
))
(declare-datatypes ((List!27480 0))(
  ( (Nil!27386) (Cons!27386 (h!32787 C!13620) (t!205810 List!27480)) )
))
(declare-datatypes ((IArray!17857 0))(
  ( (IArray!17858 (innerList!8986 List!27480)) )
))
(declare-datatypes ((Conc!8926 0))(
  ( (Node!8926 (left!20757 Conc!8926) (right!21087 Conc!8926) (csize!18082 Int) (cheight!9137 Int)) (Leaf!13106 (xs!11868 IArray!17857) (csize!18083 Int)) (Empty!8926) )
))
(declare-datatypes ((BalanceConc!17580 0))(
  ( (BalanceConc!17581 (c!364798 Conc!8926)) )
))
(declare-datatypes ((Regex!6737 0))(
  ( (ElementMatch!6737 (c!364799 C!13620)) (Concat!11289 (regOne!13986 Regex!6737) (regTwo!13986 Regex!6737)) (EmptyExpr!6737) (Star!6737 (reg!7066 Regex!6737)) (EmptyLang!6737) (Union!6737 (regOne!13987 Regex!6737) (regTwo!13987 Regex!6737)) )
))
(declare-datatypes ((String!29859 0))(
  ( (String!29860 (value!138905 String)) )
))
(declare-datatypes ((TokenValueInjection!8642 0))(
  ( (TokenValueInjection!8643 (toValue!6199 Int) (toChars!6058 Int)) )
))
(declare-datatypes ((Rule!8578 0))(
  ( (Rule!8579 (regex!4389 Regex!6737) (tag!4879 String!29859) (isSeparator!4389 Bool) (transformation!4389 TokenValueInjection!8642)) )
))
(declare-fun r!2363 () Rule!8578)

(declare-fun e!1474352 () Bool)

(declare-fun tp!729878 () Bool)

(declare-fun inv!37013 (String!29859) Bool)

(declare-fun inv!37016 (TokenValueInjection!8642) Bool)

(assert (=> b!2300739 (= e!1474360 (and tp!729878 (inv!37013 (tag!4879 r!2363)) (inv!37016 (transformation!4389 r!2363)) e!1474352))))

(declare-fun e!1474371 () Bool)

(declare-datatypes ((Token!8256 0))(
  ( (Token!8257 (value!138906 TokenValue!4551) (rule!6735 Rule!8578) (size!21594 Int) (originalCharacters!5159 List!27480)) )
))
(declare-datatypes ((List!27481 0))(
  ( (Nil!27387) (Cons!27387 (h!32788 Token!8256) (t!205811 List!27481)) )
))
(declare-fun tokens!456 () List!27481)

(declare-fun b!2300740 () Bool)

(declare-fun e!1474349 () Bool)

(declare-fun tp!729874 () Bool)

(declare-fun inv!21 (TokenValue!4551) Bool)

(assert (=> b!2300740 (= e!1474371 (and (inv!21 (value!138906 (h!32788 tokens!456))) e!1474349 tp!729874))))

(declare-fun tp!729870 () Bool)

(declare-fun b!2300741 () Bool)

(declare-fun e!1474363 () Bool)

(declare-fun inv!37017 (Token!8256) Bool)

(assert (=> b!2300741 (= e!1474363 (and (inv!37017 (h!32788 tokens!456)) e!1474371 tp!729870))))

(declare-fun b!2300742 () Bool)

(declare-fun res!983581 () Bool)

(declare-fun e!1474347 () Bool)

(assert (=> b!2300742 (=> (not res!983581) (not e!1474347))))

(declare-datatypes ((List!27482 0))(
  ( (Nil!27388) (Cons!27388 (h!32789 Rule!8578) (t!205812 List!27482)) )
))
(declare-fun rules!1750 () List!27482)

(declare-fun otherR!12 () Rule!8578)

(declare-fun contains!4775 (List!27482 Rule!8578) Bool)

(assert (=> b!2300742 (= res!983581 (contains!4775 rules!1750 otherR!12))))

(declare-fun b!2300743 () Bool)

(declare-fun e!1474353 () Bool)

(declare-fun tp!729866 () Bool)

(declare-fun e!1474350 () Bool)

(assert (=> b!2300743 (= e!1474353 (and tp!729866 (inv!37013 (tag!4879 (h!32789 rules!1750))) (inv!37016 (transformation!4389 (h!32789 rules!1750))) e!1474350))))

(declare-fun b!2300744 () Bool)

(declare-fun res!983584 () Bool)

(declare-fun e!1474369 () Bool)

(assert (=> b!2300744 (=> res!983584 e!1474369)))

(declare-fun lt!853479 () List!27480)

(declare-fun input!1722 () List!27480)

(assert (=> b!2300744 (= res!983584 (not (= lt!853479 input!1722)))))

(declare-fun b!2300746 () Bool)

(declare-fun e!1474344 () Bool)

(declare-fun tp_is_empty!10695 () Bool)

(declare-fun tp!729880 () Bool)

(assert (=> b!2300746 (= e!1474344 (and tp_is_empty!10695 tp!729880))))

(declare-fun b!2300747 () Bool)

(declare-fun e!1474362 () Bool)

(assert (=> b!2300747 (= e!1474347 e!1474362)))

(declare-fun res!983579 () Bool)

(assert (=> b!2300747 (=> (not res!983579) (not e!1474362))))

(declare-fun suffix!886 () List!27480)

(declare-datatypes ((IArray!17859 0))(
  ( (IArray!17860 (innerList!8987 List!27481)) )
))
(declare-datatypes ((Conc!8927 0))(
  ( (Node!8927 (left!20758 Conc!8927) (right!21088 Conc!8927) (csize!18084 Int) (cheight!9138 Int)) (Leaf!13107 (xs!11869 IArray!17859) (csize!18085 Int)) (Empty!8927) )
))
(declare-datatypes ((BalanceConc!17582 0))(
  ( (BalanceConc!17583 (c!364800 Conc!8927)) )
))
(declare-datatypes ((tuple2!27266 0))(
  ( (tuple2!27267 (_1!16143 BalanceConc!17582) (_2!16143 BalanceConc!17580)) )
))
(declare-fun lt!853476 () tuple2!27266)

(declare-datatypes ((tuple2!27268 0))(
  ( (tuple2!27269 (_1!16144 List!27481) (_2!16144 List!27480)) )
))
(declare-fun list!10776 (BalanceConc!17582) List!27481)

(declare-fun list!10777 (BalanceConc!17580) List!27480)

(assert (=> b!2300747 (= res!983579 (= (tuple2!27269 (list!10776 (_1!16143 lt!853476)) (list!10777 (_2!16143 lt!853476))) (tuple2!27269 tokens!456 suffix!886)))))

(declare-datatypes ((LexerInterface!3986 0))(
  ( (LexerInterfaceExt!3983 (__x!18163 Int)) (Lexer!3984) )
))
(declare-fun thiss!16613 () LexerInterface!3986)

(declare-fun lex!1825 (LexerInterface!3986 List!27482 BalanceConc!17580) tuple2!27266)

(declare-fun seqFromList!3093 (List!27480) BalanceConc!17580)

(assert (=> b!2300747 (= lt!853476 (lex!1825 thiss!16613 rules!1750 (seqFromList!3093 input!1722)))))

(declare-fun b!2300748 () Bool)

(declare-fun e!1474342 () Bool)

(assert (=> b!2300748 (= e!1474362 e!1474342)))

(declare-fun res!983580 () Bool)

(assert (=> b!2300748 (=> (not res!983580) (not e!1474342))))

(declare-fun e!1474346 () Bool)

(assert (=> b!2300748 (= res!983580 e!1474346)))

(declare-fun res!983586 () Bool)

(assert (=> b!2300748 (=> res!983586 e!1474346)))

(declare-fun lt!853478 () Bool)

(assert (=> b!2300748 (= res!983586 lt!853478)))

(declare-fun isEmpty!15629 (List!27481) Bool)

(assert (=> b!2300748 (= lt!853478 (isEmpty!15629 tokens!456))))

(assert (=> b!2300749 (= e!1474350 (and tp!729883 tp!729879))))

(declare-fun b!2300750 () Bool)

(declare-fun e!1474355 () Bool)

(declare-fun tp!729869 () Bool)

(assert (=> b!2300750 (= e!1474355 (and tp_is_empty!10695 tp!729869))))

(declare-fun b!2300751 () Bool)

(declare-fun res!983578 () Bool)

(assert (=> b!2300751 (=> (not res!983578) (not e!1474342))))

(declare-fun e!1474366 () Bool)

(assert (=> b!2300751 (= res!983578 e!1474366)))

(declare-fun res!983577 () Bool)

(assert (=> b!2300751 (=> res!983577 e!1474366)))

(assert (=> b!2300751 (= res!983577 lt!853478)))

(declare-fun lt!853480 () List!27480)

(declare-fun b!2300752 () Bool)

(declare-fun lt!853469 () List!27480)

(declare-fun ++!6703 (List!27480 List!27480) List!27480)

(assert (=> b!2300752 (= e!1474369 (= (++!6703 lt!853480 lt!853469) input!1722))))

(declare-fun b!2300753 () Bool)

(declare-fun e!1474354 () Bool)

(declare-fun tp!729867 () Bool)

(assert (=> b!2300753 (= e!1474354 (and e!1474353 tp!729867))))

(declare-fun b!2300754 () Bool)

(declare-fun e!1474361 () Bool)

(declare-fun e!1474365 () Bool)

(assert (=> b!2300754 (= e!1474361 e!1474365)))

(declare-fun res!983576 () Bool)

(assert (=> b!2300754 (=> res!983576 e!1474365)))

(declare-fun lt!853470 () Int)

(declare-fun lt!853471 () Int)

(assert (=> b!2300754 (= res!983576 (> lt!853470 lt!853471))))

(declare-fun getIndex!402 (List!27482 Rule!8578) Int)

(assert (=> b!2300754 (= lt!853471 (getIndex!402 rules!1750 otherR!12))))

(assert (=> b!2300754 (= lt!853470 (getIndex!402 rules!1750 r!2363))))

(declare-fun ruleValid!1479 (LexerInterface!3986 Rule!8578) Bool)

(assert (=> b!2300754 (ruleValid!1479 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!40290 0))(
  ( (Unit!40291) )
))
(declare-fun lt!853477 () Unit!40290)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!884 (LexerInterface!3986 Rule!8578 List!27482) Unit!40290)

(assert (=> b!2300754 (= lt!853477 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!884 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2300755 () Bool)

(declare-fun res!983588 () Bool)

(assert (=> b!2300755 (=> (not res!983588) (not e!1474342))))

(declare-fun otherP!12 () List!27480)

(declare-fun isPrefix!2379 (List!27480 List!27480) Bool)

(assert (=> b!2300755 (= res!983588 (isPrefix!2379 otherP!12 input!1722))))

(declare-fun b!2300756 () Bool)

(declare-fun e!1474357 () Bool)

(assert (=> b!2300756 (= e!1474357 e!1474369)))

(declare-fun res!983589 () Bool)

(assert (=> b!2300756 (=> res!983589 e!1474369)))

(assert (=> b!2300756 (= res!983589 (not (isPrefix!2379 lt!853480 input!1722)))))

(declare-fun getSuffix!1158 (List!27480 List!27480) List!27480)

(assert (=> b!2300756 (= lt!853469 (getSuffix!1158 input!1722 lt!853480))))

(assert (=> b!2300756 (isPrefix!2379 lt!853480 lt!853479)))

(declare-datatypes ((tuple2!27270 0))(
  ( (tuple2!27271 (_1!16145 Token!8256) (_2!16145 List!27480)) )
))
(declare-fun lt!853468 () tuple2!27270)

(assert (=> b!2300756 (= lt!853479 (++!6703 lt!853480 (_2!16145 lt!853468)))))

(declare-fun lt!853475 () Unit!40290)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1572 (List!27480 List!27480) Unit!40290)

(assert (=> b!2300756 (= lt!853475 (lemmaConcatTwoListThenFirstIsPrefix!1572 lt!853480 (_2!16145 lt!853468)))))

(declare-fun charsOf!2777 (Token!8256) BalanceConc!17580)

(assert (=> b!2300756 (= lt!853480 (list!10777 (charsOf!2777 (h!32788 tokens!456))))))

(declare-datatypes ((Option!5385 0))(
  ( (None!5384) (Some!5384 (v!30478 tuple2!27270)) )
))
(declare-fun get!8255 (Option!5385) tuple2!27270)

(declare-fun maxPrefix!2242 (LexerInterface!3986 List!27482 List!27480) Option!5385)

(assert (=> b!2300756 (= lt!853468 (get!8255 (maxPrefix!2242 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2300757 () Bool)

(declare-fun e!1474368 () Unit!40290)

(declare-fun Unit!40292 () Unit!40290)

(assert (=> b!2300757 (= e!1474368 Unit!40292)))

(declare-fun lt!853472 () Unit!40290)

(declare-fun lemmaSameIndexThenSameElement!182 (List!27482 Rule!8578 Rule!8578) Unit!40290)

(assert (=> b!2300757 (= lt!853472 (lemmaSameIndexThenSameElement!182 rules!1750 r!2363 otherR!12))))

(assert (=> b!2300757 false))

(declare-fun b!2300758 () Bool)

(assert (=> b!2300758 (= e!1474342 (not e!1474361))))

(declare-fun res!983575 () Bool)

(assert (=> b!2300758 (=> res!983575 e!1474361)))

(declare-fun e!1474358 () Bool)

(assert (=> b!2300758 (= res!983575 e!1474358)))

(declare-fun res!983572 () Bool)

(assert (=> b!2300758 (=> (not res!983572) (not e!1474358))))

(assert (=> b!2300758 (= res!983572 (not lt!853478))))

(assert (=> b!2300758 (ruleValid!1479 thiss!16613 r!2363)))

(declare-fun lt!853473 () Unit!40290)

(assert (=> b!2300758 (= lt!853473 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!884 thiss!16613 r!2363 rules!1750))))

(assert (=> b!2300759 (= e!1474352 (and tp!729872 tp!729877))))

(declare-fun b!2300760 () Bool)

(declare-fun size!21595 (BalanceConc!17580) Int)

(declare-fun head!5030 (List!27481) Token!8256)

(declare-fun size!21596 (List!27480) Int)

(assert (=> b!2300760 (= e!1474346 (<= (size!21595 (charsOf!2777 (head!5030 tokens!456))) (size!21596 otherP!12)))))

(declare-fun res!983573 () Bool)

(assert (=> start!226236 (=> (not res!983573) (not e!1474347))))

(get-info :version)

(assert (=> start!226236 (= res!983573 ((_ is Lexer!3984) thiss!16613))))

(assert (=> start!226236 e!1474347))

(assert (=> start!226236 true))

(assert (=> start!226236 e!1474355))

(declare-fun e!1474364 () Bool)

(assert (=> start!226236 e!1474364))

(assert (=> start!226236 e!1474344))

(declare-fun e!1474343 () Bool)

(assert (=> start!226236 e!1474343))

(assert (=> start!226236 e!1474354))

(assert (=> start!226236 e!1474360))

(assert (=> start!226236 e!1474363))

(declare-fun b!2300745 () Bool)

(declare-fun tp!729882 () Bool)

(assert (=> b!2300745 (= e!1474343 (and tp_is_empty!10695 tp!729882))))

(declare-fun b!2300761 () Bool)

(declare-fun e!1474348 () Bool)

(declare-fun tp!729881 () Bool)

(assert (=> b!2300761 (= e!1474349 (and tp!729881 (inv!37013 (tag!4879 (rule!6735 (h!32788 tokens!456)))) (inv!37016 (transformation!4389 (rule!6735 (h!32788 tokens!456)))) e!1474348))))

(declare-fun b!2300762 () Bool)

(declare-fun res!983574 () Bool)

(assert (=> b!2300762 (=> (not res!983574) (not e!1474342))))

(assert (=> b!2300762 (= res!983574 (not (= r!2363 otherR!12)))))

(assert (=> b!2300763 (= e!1474348 (and tp!729875 tp!729873))))

(declare-fun e!1474367 () Bool)

(assert (=> b!2300764 (= e!1474367 (and tp!729871 tp!729868))))

(declare-fun b!2300765 () Bool)

(assert (=> b!2300765 (= e!1474365 e!1474357)))

(declare-fun res!983583 () Bool)

(assert (=> b!2300765 (=> res!983583 e!1474357)))

(assert (=> b!2300765 (= res!983583 ((_ is Nil!27387) tokens!456))))

(declare-fun lt!853474 () Unit!40290)

(assert (=> b!2300765 (= lt!853474 e!1474368)))

(declare-fun c!364797 () Bool)

(assert (=> b!2300765 (= c!364797 (= lt!853470 lt!853471))))

(declare-fun b!2300766 () Bool)

(assert (=> b!2300766 (= e!1474366 (= (rule!6735 (head!5030 tokens!456)) r!2363))))

(declare-fun b!2300767 () Bool)

(declare-fun res!983587 () Bool)

(assert (=> b!2300767 (=> (not res!983587) (not e!1474347))))

(assert (=> b!2300767 (= res!983587 (contains!4775 rules!1750 r!2363))))

(declare-fun b!2300768 () Bool)

(declare-fun res!983582 () Bool)

(assert (=> b!2300768 (=> (not res!983582) (not e!1474347))))

(declare-fun isEmpty!15630 (List!27482) Bool)

(assert (=> b!2300768 (= res!983582 (not (isEmpty!15630 rules!1750)))))

(declare-fun b!2300769 () Bool)

(declare-fun res!983585 () Bool)

(assert (=> b!2300769 (=> (not res!983585) (not e!1474347))))

(declare-fun rulesInvariant!3488 (LexerInterface!3986 List!27482) Bool)

(assert (=> b!2300769 (= res!983585 (rulesInvariant!3488 thiss!16613 rules!1750))))

(declare-fun b!2300770 () Bool)

(declare-fun tp!729876 () Bool)

(assert (=> b!2300770 (= e!1474364 (and tp!729876 (inv!37013 (tag!4879 otherR!12)) (inv!37016 (transformation!4389 otherR!12)) e!1474367))))

(declare-fun b!2300771 () Bool)

(declare-fun Unit!40293 () Unit!40290)

(assert (=> b!2300771 (= e!1474368 Unit!40293)))

(declare-fun b!2300772 () Bool)

(declare-fun matchR!2994 (Regex!6737 List!27480) Bool)

(assert (=> b!2300772 (= e!1474358 (not (matchR!2994 (regex!4389 r!2363) (list!10777 (charsOf!2777 (head!5030 tokens!456))))))))

(assert (= (and start!226236 res!983573) b!2300768))

(assert (= (and b!2300768 res!983582) b!2300769))

(assert (= (and b!2300769 res!983585) b!2300767))

(assert (= (and b!2300767 res!983587) b!2300742))

(assert (= (and b!2300742 res!983581) b!2300747))

(assert (= (and b!2300747 res!983579) b!2300748))

(assert (= (and b!2300748 (not res!983586)) b!2300760))

(assert (= (and b!2300748 res!983580) b!2300751))

(assert (= (and b!2300751 (not res!983577)) b!2300766))

(assert (= (and b!2300751 res!983578) b!2300755))

(assert (= (and b!2300755 res!983588) b!2300762))

(assert (= (and b!2300762 res!983574) b!2300758))

(assert (= (and b!2300758 res!983572) b!2300772))

(assert (= (and b!2300758 (not res!983575)) b!2300754))

(assert (= (and b!2300754 (not res!983576)) b!2300765))

(assert (= (and b!2300765 c!364797) b!2300757))

(assert (= (and b!2300765 (not c!364797)) b!2300771))

(assert (= (and b!2300765 (not res!983583)) b!2300756))

(assert (= (and b!2300756 (not res!983589)) b!2300744))

(assert (= (and b!2300744 (not res!983584)) b!2300752))

(assert (= (and start!226236 ((_ is Cons!27386) input!1722)) b!2300750))

(assert (= b!2300770 b!2300764))

(assert (= start!226236 b!2300770))

(assert (= (and start!226236 ((_ is Cons!27386) suffix!886)) b!2300746))

(assert (= (and start!226236 ((_ is Cons!27386) otherP!12)) b!2300745))

(assert (= b!2300743 b!2300749))

(assert (= b!2300753 b!2300743))

(assert (= (and start!226236 ((_ is Cons!27388) rules!1750)) b!2300753))

(assert (= b!2300739 b!2300759))

(assert (= start!226236 b!2300739))

(assert (= b!2300761 b!2300763))

(assert (= b!2300740 b!2300761))

(assert (= b!2300741 b!2300740))

(assert (= (and start!226236 ((_ is Cons!27387) tokens!456)) b!2300741))

(declare-fun m!2728109 () Bool)

(assert (=> b!2300761 m!2728109))

(declare-fun m!2728111 () Bool)

(assert (=> b!2300761 m!2728111))

(declare-fun m!2728113 () Bool)

(assert (=> b!2300740 m!2728113))

(declare-fun m!2728115 () Bool)

(assert (=> b!2300743 m!2728115))

(declare-fun m!2728117 () Bool)

(assert (=> b!2300743 m!2728117))

(declare-fun m!2728119 () Bool)

(assert (=> b!2300766 m!2728119))

(declare-fun m!2728121 () Bool)

(assert (=> b!2300755 m!2728121))

(declare-fun m!2728123 () Bool)

(assert (=> b!2300769 m!2728123))

(assert (=> b!2300760 m!2728119))

(assert (=> b!2300760 m!2728119))

(declare-fun m!2728125 () Bool)

(assert (=> b!2300760 m!2728125))

(assert (=> b!2300760 m!2728125))

(declare-fun m!2728127 () Bool)

(assert (=> b!2300760 m!2728127))

(declare-fun m!2728129 () Bool)

(assert (=> b!2300760 m!2728129))

(declare-fun m!2728131 () Bool)

(assert (=> b!2300748 m!2728131))

(declare-fun m!2728133 () Bool)

(assert (=> b!2300757 m!2728133))

(declare-fun m!2728135 () Bool)

(assert (=> b!2300756 m!2728135))

(declare-fun m!2728137 () Bool)

(assert (=> b!2300756 m!2728137))

(declare-fun m!2728139 () Bool)

(assert (=> b!2300756 m!2728139))

(declare-fun m!2728141 () Bool)

(assert (=> b!2300756 m!2728141))

(declare-fun m!2728143 () Bool)

(assert (=> b!2300756 m!2728143))

(assert (=> b!2300756 m!2728141))

(declare-fun m!2728145 () Bool)

(assert (=> b!2300756 m!2728145))

(assert (=> b!2300756 m!2728139))

(declare-fun m!2728147 () Bool)

(assert (=> b!2300756 m!2728147))

(declare-fun m!2728149 () Bool)

(assert (=> b!2300756 m!2728149))

(declare-fun m!2728151 () Bool)

(assert (=> b!2300756 m!2728151))

(declare-fun m!2728153 () Bool)

(assert (=> b!2300741 m!2728153))

(declare-fun m!2728155 () Bool)

(assert (=> b!2300758 m!2728155))

(declare-fun m!2728157 () Bool)

(assert (=> b!2300758 m!2728157))

(declare-fun m!2728159 () Bool)

(assert (=> b!2300767 m!2728159))

(declare-fun m!2728161 () Bool)

(assert (=> b!2300739 m!2728161))

(declare-fun m!2728163 () Bool)

(assert (=> b!2300739 m!2728163))

(assert (=> b!2300772 m!2728119))

(assert (=> b!2300772 m!2728119))

(assert (=> b!2300772 m!2728125))

(assert (=> b!2300772 m!2728125))

(declare-fun m!2728165 () Bool)

(assert (=> b!2300772 m!2728165))

(assert (=> b!2300772 m!2728165))

(declare-fun m!2728167 () Bool)

(assert (=> b!2300772 m!2728167))

(declare-fun m!2728169 () Bool)

(assert (=> b!2300754 m!2728169))

(declare-fun m!2728171 () Bool)

(assert (=> b!2300754 m!2728171))

(declare-fun m!2728173 () Bool)

(assert (=> b!2300754 m!2728173))

(declare-fun m!2728175 () Bool)

(assert (=> b!2300754 m!2728175))

(declare-fun m!2728177 () Bool)

(assert (=> b!2300752 m!2728177))

(declare-fun m!2728179 () Bool)

(assert (=> b!2300742 m!2728179))

(declare-fun m!2728181 () Bool)

(assert (=> b!2300768 m!2728181))

(declare-fun m!2728183 () Bool)

(assert (=> b!2300747 m!2728183))

(declare-fun m!2728185 () Bool)

(assert (=> b!2300747 m!2728185))

(declare-fun m!2728187 () Bool)

(assert (=> b!2300747 m!2728187))

(assert (=> b!2300747 m!2728187))

(declare-fun m!2728189 () Bool)

(assert (=> b!2300747 m!2728189))

(declare-fun m!2728191 () Bool)

(assert (=> b!2300770 m!2728191))

(declare-fun m!2728193 () Bool)

(assert (=> b!2300770 m!2728193))

(check-sat (not b!2300740) (not b!2300758) (not b_next!70111) (not b!2300772) (not b!2300767) (not b!2300755) (not b_next!70117) (not b!2300739) b_and!183209 b_and!183213 b_and!183221 b_and!183219 (not b!2300750) b_and!183217 (not b!2300760) (not b!2300745) (not b!2300752) (not b!2300770) (not b_next!70119) (not b!2300761) b_and!183215 (not b!2300748) (not b!2300747) (not b_next!70109) (not b!2300766) (not b!2300769) b_and!183211 (not b!2300754) b_and!183223 (not b!2300746) (not b_next!70115) (not b!2300757) (not b!2300756) (not b_next!70123) (not b!2300753) (not b!2300743) (not b!2300741) tp_is_empty!10695 (not b_next!70113) (not b!2300768) (not b!2300742) (not b_next!70121))
(check-sat (not b_next!70111) b_and!183217 (not b_next!70119) b_and!183215 (not b_next!70109) (not b_next!70117) b_and!183211 (not b_next!70123) (not b_next!70113) b_and!183209 (not b_next!70121) b_and!183213 b_and!183221 b_and!183219 b_and!183223 (not b_next!70115))
(get-model)

(declare-fun d!680628 () Bool)

(assert (=> d!680628 (= (inv!37013 (tag!4879 (rule!6735 (h!32788 tokens!456)))) (= (mod (str.len (value!138905 (tag!4879 (rule!6735 (h!32788 tokens!456))))) 2) 0))))

(assert (=> b!2300761 d!680628))

(declare-fun d!680632 () Bool)

(declare-fun res!983608 () Bool)

(declare-fun e!1474377 () Bool)

(assert (=> d!680632 (=> (not res!983608) (not e!1474377))))

(declare-fun semiInverseModEq!1782 (Int Int) Bool)

(assert (=> d!680632 (= res!983608 (semiInverseModEq!1782 (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))) (toValue!6199 (transformation!4389 (rule!6735 (h!32788 tokens!456))))))))

(assert (=> d!680632 (= (inv!37016 (transformation!4389 (rule!6735 (h!32788 tokens!456)))) e!1474377)))

(declare-fun b!2300778 () Bool)

(declare-fun equivClasses!1701 (Int Int) Bool)

(assert (=> b!2300778 (= e!1474377 (equivClasses!1701 (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))) (toValue!6199 (transformation!4389 (rule!6735 (h!32788 tokens!456))))))))

(assert (= (and d!680632 res!983608) b!2300778))

(declare-fun m!2728199 () Bool)

(assert (=> d!680632 m!2728199))

(declare-fun m!2728201 () Bool)

(assert (=> b!2300778 m!2728201))

(assert (=> b!2300761 d!680632))

(declare-fun d!680636 () Bool)

(declare-fun lt!853485 () Int)

(assert (=> d!680636 (= lt!853485 (size!21596 (list!10777 (charsOf!2777 (head!5030 tokens!456)))))))

(declare-fun size!21597 (Conc!8926) Int)

(assert (=> d!680636 (= lt!853485 (size!21597 (c!364798 (charsOf!2777 (head!5030 tokens!456)))))))

(assert (=> d!680636 (= (size!21595 (charsOf!2777 (head!5030 tokens!456))) lt!853485)))

(declare-fun bs!457686 () Bool)

(assert (= bs!457686 d!680636))

(assert (=> bs!457686 m!2728125))

(assert (=> bs!457686 m!2728165))

(assert (=> bs!457686 m!2728165))

(declare-fun m!2728203 () Bool)

(assert (=> bs!457686 m!2728203))

(declare-fun m!2728205 () Bool)

(assert (=> bs!457686 m!2728205))

(assert (=> b!2300760 d!680636))

(declare-fun d!680638 () Bool)

(declare-fun lt!853488 () BalanceConc!17580)

(assert (=> d!680638 (= (list!10777 lt!853488) (originalCharacters!5159 (head!5030 tokens!456)))))

(declare-fun dynLambda!11909 (Int TokenValue!4551) BalanceConc!17580)

(assert (=> d!680638 (= lt!853488 (dynLambda!11909 (toChars!6058 (transformation!4389 (rule!6735 (head!5030 tokens!456)))) (value!138906 (head!5030 tokens!456))))))

(assert (=> d!680638 (= (charsOf!2777 (head!5030 tokens!456)) lt!853488)))

(declare-fun b_lambda!73273 () Bool)

(assert (=> (not b_lambda!73273) (not d!680638)))

(declare-fun t!205814 () Bool)

(declare-fun tb!137551 () Bool)

(assert (=> (and b!2300763 (= (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))) (toChars!6058 (transformation!4389 (rule!6735 (head!5030 tokens!456))))) t!205814) tb!137551))

(declare-fun b!2300811 () Bool)

(declare-fun e!1474394 () Bool)

(declare-fun tp!729886 () Bool)

(declare-fun inv!37020 (Conc!8926) Bool)

(assert (=> b!2300811 (= e!1474394 (and (inv!37020 (c!364798 (dynLambda!11909 (toChars!6058 (transformation!4389 (rule!6735 (head!5030 tokens!456)))) (value!138906 (head!5030 tokens!456))))) tp!729886))))

(declare-fun result!167666 () Bool)

(declare-fun inv!37021 (BalanceConc!17580) Bool)

(assert (=> tb!137551 (= result!167666 (and (inv!37021 (dynLambda!11909 (toChars!6058 (transformation!4389 (rule!6735 (head!5030 tokens!456)))) (value!138906 (head!5030 tokens!456)))) e!1474394))))

(assert (= tb!137551 b!2300811))

(declare-fun m!2728207 () Bool)

(assert (=> b!2300811 m!2728207))

(declare-fun m!2728209 () Bool)

(assert (=> tb!137551 m!2728209))

(assert (=> d!680638 t!205814))

(declare-fun b_and!183225 () Bool)

(assert (= b_and!183211 (and (=> t!205814 result!167666) b_and!183225)))

(declare-fun tb!137553 () Bool)

(declare-fun t!205816 () Bool)

(assert (=> (and b!2300749 (= (toChars!6058 (transformation!4389 (h!32789 rules!1750))) (toChars!6058 (transformation!4389 (rule!6735 (head!5030 tokens!456))))) t!205816) tb!137553))

(declare-fun result!167670 () Bool)

(assert (= result!167670 result!167666))

(assert (=> d!680638 t!205816))

(declare-fun b_and!183227 () Bool)

(assert (= b_and!183215 (and (=> t!205816 result!167670) b_and!183227)))

(declare-fun tb!137555 () Bool)

(declare-fun t!205818 () Bool)

(assert (=> (and b!2300759 (= (toChars!6058 (transformation!4389 r!2363)) (toChars!6058 (transformation!4389 (rule!6735 (head!5030 tokens!456))))) t!205818) tb!137555))

(declare-fun result!167672 () Bool)

(assert (= result!167672 result!167666))

(assert (=> d!680638 t!205818))

(declare-fun b_and!183229 () Bool)

(assert (= b_and!183219 (and (=> t!205818 result!167672) b_and!183229)))

(declare-fun tb!137557 () Bool)

(declare-fun t!205820 () Bool)

(assert (=> (and b!2300764 (= (toChars!6058 (transformation!4389 otherR!12)) (toChars!6058 (transformation!4389 (rule!6735 (head!5030 tokens!456))))) t!205820) tb!137557))

(declare-fun result!167674 () Bool)

(assert (= result!167674 result!167666))

(assert (=> d!680638 t!205820))

(declare-fun b_and!183231 () Bool)

(assert (= b_and!183223 (and (=> t!205820 result!167674) b_and!183231)))

(declare-fun m!2728211 () Bool)

(assert (=> d!680638 m!2728211))

(declare-fun m!2728213 () Bool)

(assert (=> d!680638 m!2728213))

(assert (=> b!2300760 d!680638))

(declare-fun d!680640 () Bool)

(assert (=> d!680640 (= (head!5030 tokens!456) (h!32788 tokens!456))))

(assert (=> b!2300760 d!680640))

(declare-fun d!680644 () Bool)

(declare-fun lt!853495 () Int)

(assert (=> d!680644 (>= lt!853495 0)))

(declare-fun e!1474407 () Int)

(assert (=> d!680644 (= lt!853495 e!1474407)))

(declare-fun c!364812 () Bool)

(assert (=> d!680644 (= c!364812 ((_ is Nil!27386) otherP!12))))

(assert (=> d!680644 (= (size!21596 otherP!12) lt!853495)))

(declare-fun b!2300835 () Bool)

(assert (=> b!2300835 (= e!1474407 0)))

(declare-fun b!2300836 () Bool)

(assert (=> b!2300836 (= e!1474407 (+ 1 (size!21596 (t!205810 otherP!12))))))

(assert (= (and d!680644 c!364812) b!2300835))

(assert (= (and d!680644 (not c!364812)) b!2300836))

(declare-fun m!2728241 () Bool)

(assert (=> b!2300836 m!2728241))

(assert (=> b!2300760 d!680644))

(declare-fun d!680652 () Bool)

(assert (=> d!680652 (= (inv!37013 (tag!4879 r!2363)) (= (mod (str.len (value!138905 (tag!4879 r!2363))) 2) 0))))

(assert (=> b!2300739 d!680652))

(declare-fun d!680656 () Bool)

(declare-fun res!983633 () Bool)

(declare-fun e!1474408 () Bool)

(assert (=> d!680656 (=> (not res!983633) (not e!1474408))))

(assert (=> d!680656 (= res!983633 (semiInverseModEq!1782 (toChars!6058 (transformation!4389 r!2363)) (toValue!6199 (transformation!4389 r!2363))))))

(assert (=> d!680656 (= (inv!37016 (transformation!4389 r!2363)) e!1474408)))

(declare-fun b!2300837 () Bool)

(assert (=> b!2300837 (= e!1474408 (equivClasses!1701 (toChars!6058 (transformation!4389 r!2363)) (toValue!6199 (transformation!4389 r!2363))))))

(assert (= (and d!680656 res!983633) b!2300837))

(declare-fun m!2728243 () Bool)

(assert (=> d!680656 m!2728243))

(declare-fun m!2728245 () Bool)

(assert (=> b!2300837 m!2728245))

(assert (=> b!2300739 d!680656))

(declare-fun d!680658 () Bool)

(assert (=> d!680658 (= (inv!37013 (tag!4879 otherR!12)) (= (mod (str.len (value!138905 (tag!4879 otherR!12))) 2) 0))))

(assert (=> b!2300770 d!680658))

(declare-fun d!680660 () Bool)

(declare-fun res!983634 () Bool)

(declare-fun e!1474409 () Bool)

(assert (=> d!680660 (=> (not res!983634) (not e!1474409))))

(assert (=> d!680660 (= res!983634 (semiInverseModEq!1782 (toChars!6058 (transformation!4389 otherR!12)) (toValue!6199 (transformation!4389 otherR!12))))))

(assert (=> d!680660 (= (inv!37016 (transformation!4389 otherR!12)) e!1474409)))

(declare-fun b!2300838 () Bool)

(assert (=> b!2300838 (= e!1474409 (equivClasses!1701 (toChars!6058 (transformation!4389 otherR!12)) (toValue!6199 (transformation!4389 otherR!12))))))

(assert (= (and d!680660 res!983634) b!2300838))

(declare-fun m!2728247 () Bool)

(assert (=> d!680660 m!2728247))

(declare-fun m!2728249 () Bool)

(assert (=> b!2300838 m!2728249))

(assert (=> b!2300770 d!680660))

(declare-fun d!680662 () Bool)

(assert (=> d!680662 (= (isEmpty!15629 tokens!456) ((_ is Nil!27387) tokens!456))))

(assert (=> b!2300748 d!680662))

(declare-fun d!680664 () Bool)

(declare-fun lt!853504 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3686 (List!27482) (InoxSet Rule!8578))

(assert (=> d!680664 (= lt!853504 (select (content!3686 rules!1750) otherR!12))))

(declare-fun e!1474423 () Bool)

(assert (=> d!680664 (= lt!853504 e!1474423)))

(declare-fun res!983649 () Bool)

(assert (=> d!680664 (=> (not res!983649) (not e!1474423))))

(assert (=> d!680664 (= res!983649 ((_ is Cons!27388) rules!1750))))

(assert (=> d!680664 (= (contains!4775 rules!1750 otherR!12) lt!853504)))

(declare-fun b!2300852 () Bool)

(declare-fun e!1474424 () Bool)

(assert (=> b!2300852 (= e!1474423 e!1474424)))

(declare-fun res!983648 () Bool)

(assert (=> b!2300852 (=> res!983648 e!1474424)))

(assert (=> b!2300852 (= res!983648 (= (h!32789 rules!1750) otherR!12))))

(declare-fun b!2300853 () Bool)

(assert (=> b!2300853 (= e!1474424 (contains!4775 (t!205812 rules!1750) otherR!12))))

(assert (= (and d!680664 res!983649) b!2300852))

(assert (= (and b!2300852 (not res!983648)) b!2300853))

(declare-fun m!2728263 () Bool)

(assert (=> d!680664 m!2728263))

(declare-fun m!2728265 () Bool)

(assert (=> d!680664 m!2728265))

(declare-fun m!2728267 () Bool)

(assert (=> b!2300853 m!2728267))

(assert (=> b!2300742 d!680664))

(declare-fun b!2300894 () Bool)

(declare-fun res!983673 () Bool)

(declare-fun e!1474447 () Bool)

(assert (=> b!2300894 (=> (not res!983673) (not e!1474447))))

(declare-fun lt!853516 () List!27480)

(assert (=> b!2300894 (= res!983673 (= (size!21596 lt!853516) (+ (size!21596 lt!853480) (size!21596 lt!853469))))))

(declare-fun b!2300893 () Bool)

(declare-fun e!1474448 () List!27480)

(assert (=> b!2300893 (= e!1474448 (Cons!27386 (h!32787 lt!853480) (++!6703 (t!205810 lt!853480) lt!853469)))))

(declare-fun d!680676 () Bool)

(assert (=> d!680676 e!1474447))

(declare-fun res!983672 () Bool)

(assert (=> d!680676 (=> (not res!983672) (not e!1474447))))

(declare-fun content!3687 (List!27480) (InoxSet C!13620))

(assert (=> d!680676 (= res!983672 (= (content!3687 lt!853516) ((_ map or) (content!3687 lt!853480) (content!3687 lt!853469))))))

(assert (=> d!680676 (= lt!853516 e!1474448)))

(declare-fun c!364821 () Bool)

(assert (=> d!680676 (= c!364821 ((_ is Nil!27386) lt!853480))))

(assert (=> d!680676 (= (++!6703 lt!853480 lt!853469) lt!853516)))

(declare-fun b!2300895 () Bool)

(assert (=> b!2300895 (= e!1474447 (or (not (= lt!853469 Nil!27386)) (= lt!853516 lt!853480)))))

(declare-fun b!2300892 () Bool)

(assert (=> b!2300892 (= e!1474448 lt!853469)))

(assert (= (and d!680676 c!364821) b!2300892))

(assert (= (and d!680676 (not c!364821)) b!2300893))

(assert (= (and d!680676 res!983672) b!2300894))

(assert (= (and b!2300894 res!983673) b!2300895))

(declare-fun m!2728301 () Bool)

(assert (=> b!2300894 m!2728301))

(declare-fun m!2728303 () Bool)

(assert (=> b!2300894 m!2728303))

(declare-fun m!2728305 () Bool)

(assert (=> b!2300894 m!2728305))

(declare-fun m!2728307 () Bool)

(assert (=> b!2300893 m!2728307))

(declare-fun m!2728309 () Bool)

(assert (=> d!680676 m!2728309))

(declare-fun m!2728311 () Bool)

(assert (=> d!680676 m!2728311))

(declare-fun m!2728313 () Bool)

(assert (=> d!680676 m!2728313))

(assert (=> b!2300752 d!680676))

(declare-fun d!680686 () Bool)

(declare-fun res!983682 () Bool)

(declare-fun e!1474455 () Bool)

(assert (=> d!680686 (=> (not res!983682) (not e!1474455))))

(declare-fun isEmpty!15634 (List!27480) Bool)

(assert (=> d!680686 (= res!983682 (not (isEmpty!15634 (originalCharacters!5159 (h!32788 tokens!456)))))))

(assert (=> d!680686 (= (inv!37017 (h!32788 tokens!456)) e!1474455)))

(declare-fun b!2300905 () Bool)

(declare-fun res!983683 () Bool)

(assert (=> b!2300905 (=> (not res!983683) (not e!1474455))))

(assert (=> b!2300905 (= res!983683 (= (originalCharacters!5159 (h!32788 tokens!456)) (list!10777 (dynLambda!11909 (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))) (value!138906 (h!32788 tokens!456))))))))

(declare-fun b!2300906 () Bool)

(assert (=> b!2300906 (= e!1474455 (= (size!21594 (h!32788 tokens!456)) (size!21596 (originalCharacters!5159 (h!32788 tokens!456)))))))

(assert (= (and d!680686 res!983682) b!2300905))

(assert (= (and b!2300905 res!983683) b!2300906))

(declare-fun b_lambda!73279 () Bool)

(assert (=> (not b_lambda!73279) (not b!2300905)))

(declare-fun t!205838 () Bool)

(declare-fun tb!137575 () Bool)

(assert (=> (and b!2300763 (= (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456))))) t!205838) tb!137575))

(declare-fun b!2300907 () Bool)

(declare-fun e!1474456 () Bool)

(declare-fun tp!729891 () Bool)

(assert (=> b!2300907 (= e!1474456 (and (inv!37020 (c!364798 (dynLambda!11909 (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))) (value!138906 (h!32788 tokens!456))))) tp!729891))))

(declare-fun result!167694 () Bool)

(assert (=> tb!137575 (= result!167694 (and (inv!37021 (dynLambda!11909 (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))) (value!138906 (h!32788 tokens!456)))) e!1474456))))

(assert (= tb!137575 b!2300907))

(declare-fun m!2728335 () Bool)

(assert (=> b!2300907 m!2728335))

(declare-fun m!2728337 () Bool)

(assert (=> tb!137575 m!2728337))

(assert (=> b!2300905 t!205838))

(declare-fun b_and!183249 () Bool)

(assert (= b_and!183225 (and (=> t!205838 result!167694) b_and!183249)))

(declare-fun tb!137577 () Bool)

(declare-fun t!205840 () Bool)

(assert (=> (and b!2300749 (= (toChars!6058 (transformation!4389 (h!32789 rules!1750))) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456))))) t!205840) tb!137577))

(declare-fun result!167696 () Bool)

(assert (= result!167696 result!167694))

(assert (=> b!2300905 t!205840))

(declare-fun b_and!183251 () Bool)

(assert (= b_and!183227 (and (=> t!205840 result!167696) b_and!183251)))

(declare-fun t!205842 () Bool)

(declare-fun tb!137579 () Bool)

(assert (=> (and b!2300759 (= (toChars!6058 (transformation!4389 r!2363)) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456))))) t!205842) tb!137579))

(declare-fun result!167698 () Bool)

(assert (= result!167698 result!167694))

(assert (=> b!2300905 t!205842))

(declare-fun b_and!183253 () Bool)

(assert (= b_and!183229 (and (=> t!205842 result!167698) b_and!183253)))

(declare-fun t!205844 () Bool)

(declare-fun tb!137581 () Bool)

(assert (=> (and b!2300764 (= (toChars!6058 (transformation!4389 otherR!12)) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456))))) t!205844) tb!137581))

(declare-fun result!167700 () Bool)

(assert (= result!167700 result!167694))

(assert (=> b!2300905 t!205844))

(declare-fun b_and!183255 () Bool)

(assert (= b_and!183231 (and (=> t!205844 result!167700) b_and!183255)))

(declare-fun m!2728339 () Bool)

(assert (=> d!680686 m!2728339))

(declare-fun m!2728341 () Bool)

(assert (=> b!2300905 m!2728341))

(assert (=> b!2300905 m!2728341))

(declare-fun m!2728343 () Bool)

(assert (=> b!2300905 m!2728343))

(declare-fun m!2728345 () Bool)

(assert (=> b!2300906 m!2728345))

(assert (=> b!2300741 d!680686))

(declare-fun b!2300918 () Bool)

(declare-fun e!1474464 () Bool)

(declare-fun inv!17 (TokenValue!4551) Bool)

(assert (=> b!2300918 (= e!1474464 (inv!17 (value!138906 (h!32788 tokens!456))))))

(declare-fun b!2300919 () Bool)

(declare-fun e!1474465 () Bool)

(assert (=> b!2300919 (= e!1474465 e!1474464)))

(declare-fun c!364827 () Bool)

(assert (=> b!2300919 (= c!364827 ((_ is IntegerValue!13654) (value!138906 (h!32788 tokens!456))))))

(declare-fun b!2300920 () Bool)

(declare-fun res!983686 () Bool)

(declare-fun e!1474463 () Bool)

(assert (=> b!2300920 (=> res!983686 e!1474463)))

(assert (=> b!2300920 (= res!983686 (not ((_ is IntegerValue!13655) (value!138906 (h!32788 tokens!456)))))))

(assert (=> b!2300920 (= e!1474464 e!1474463)))

(declare-fun b!2300921 () Bool)

(declare-fun inv!16 (TokenValue!4551) Bool)

(assert (=> b!2300921 (= e!1474465 (inv!16 (value!138906 (h!32788 tokens!456))))))

(declare-fun b!2300922 () Bool)

(declare-fun inv!15 (TokenValue!4551) Bool)

(assert (=> b!2300922 (= e!1474463 (inv!15 (value!138906 (h!32788 tokens!456))))))

(declare-fun d!680696 () Bool)

(declare-fun c!364826 () Bool)

(assert (=> d!680696 (= c!364826 ((_ is IntegerValue!13653) (value!138906 (h!32788 tokens!456))))))

(assert (=> d!680696 (= (inv!21 (value!138906 (h!32788 tokens!456))) e!1474465)))

(assert (= (and d!680696 c!364826) b!2300921))

(assert (= (and d!680696 (not c!364826)) b!2300919))

(assert (= (and b!2300919 c!364827) b!2300918))

(assert (= (and b!2300919 (not c!364827)) b!2300920))

(assert (= (and b!2300920 (not res!983686)) b!2300922))

(declare-fun m!2728347 () Bool)

(assert (=> b!2300918 m!2728347))

(declare-fun m!2728349 () Bool)

(assert (=> b!2300921 m!2728349))

(declare-fun m!2728351 () Bool)

(assert (=> b!2300922 m!2728351))

(assert (=> b!2300740 d!680696))

(declare-fun bm!137042 () Bool)

(declare-fun call!137047 () Bool)

(assert (=> bm!137042 (= call!137047 (isEmpty!15634 (list!10777 (charsOf!2777 (head!5030 tokens!456)))))))

(declare-fun b!2300978 () Bool)

(declare-fun res!983724 () Bool)

(declare-fun e!1474489 () Bool)

(assert (=> b!2300978 (=> res!983724 e!1474489)))

(declare-fun tail!3323 (List!27480) List!27480)

(assert (=> b!2300978 (= res!983724 (not (isEmpty!15634 (tail!3323 (list!10777 (charsOf!2777 (head!5030 tokens!456)))))))))

(declare-fun b!2300979 () Bool)

(declare-fun e!1474490 () Bool)

(declare-fun derivativeStep!1540 (Regex!6737 C!13620) Regex!6737)

(declare-fun head!5032 (List!27480) C!13620)

(assert (=> b!2300979 (= e!1474490 (matchR!2994 (derivativeStep!1540 (regex!4389 r!2363) (head!5032 (list!10777 (charsOf!2777 (head!5030 tokens!456))))) (tail!3323 (list!10777 (charsOf!2777 (head!5030 tokens!456))))))))

(declare-fun b!2300980 () Bool)

(declare-fun res!983727 () Bool)

(declare-fun e!1474494 () Bool)

(assert (=> b!2300980 (=> res!983727 e!1474494)))

(declare-fun e!1474495 () Bool)

(assert (=> b!2300980 (= res!983727 e!1474495)))

(declare-fun res!983728 () Bool)

(assert (=> b!2300980 (=> (not res!983728) (not e!1474495))))

(declare-fun lt!853539 () Bool)

(assert (=> b!2300980 (= res!983728 lt!853539)))

(declare-fun b!2300981 () Bool)

(assert (=> b!2300981 (= e!1474495 (= (head!5032 (list!10777 (charsOf!2777 (head!5030 tokens!456)))) (c!364799 (regex!4389 r!2363))))))

(declare-fun b!2300983 () Bool)

(declare-fun res!983730 () Bool)

(assert (=> b!2300983 (=> (not res!983730) (not e!1474495))))

(assert (=> b!2300983 (= res!983730 (isEmpty!15634 (tail!3323 (list!10777 (charsOf!2777 (head!5030 tokens!456))))))))

(declare-fun b!2300984 () Bool)

(declare-fun nullable!1880 (Regex!6737) Bool)

(assert (=> b!2300984 (= e!1474490 (nullable!1880 (regex!4389 r!2363)))))

(declare-fun b!2300985 () Bool)

(declare-fun res!983729 () Bool)

(assert (=> b!2300985 (=> (not res!983729) (not e!1474495))))

(assert (=> b!2300985 (= res!983729 (not call!137047))))

(declare-fun b!2300986 () Bool)

(declare-fun e!1474493 () Bool)

(assert (=> b!2300986 (= e!1474494 e!1474493)))

(declare-fun res!983726 () Bool)

(assert (=> b!2300986 (=> (not res!983726) (not e!1474493))))

(assert (=> b!2300986 (= res!983726 (not lt!853539))))

(declare-fun b!2300987 () Bool)

(declare-fun e!1474492 () Bool)

(declare-fun e!1474491 () Bool)

(assert (=> b!2300987 (= e!1474492 e!1474491)))

(declare-fun c!364839 () Bool)

(assert (=> b!2300987 (= c!364839 ((_ is EmptyLang!6737) (regex!4389 r!2363)))))

(declare-fun d!680698 () Bool)

(assert (=> d!680698 e!1474492))

(declare-fun c!364838 () Bool)

(assert (=> d!680698 (= c!364838 ((_ is EmptyExpr!6737) (regex!4389 r!2363)))))

(assert (=> d!680698 (= lt!853539 e!1474490)))

(declare-fun c!364837 () Bool)

(assert (=> d!680698 (= c!364837 (isEmpty!15634 (list!10777 (charsOf!2777 (head!5030 tokens!456)))))))

(declare-fun validRegex!2542 (Regex!6737) Bool)

(assert (=> d!680698 (validRegex!2542 (regex!4389 r!2363))))

(assert (=> d!680698 (= (matchR!2994 (regex!4389 r!2363) (list!10777 (charsOf!2777 (head!5030 tokens!456)))) lt!853539)))

(declare-fun b!2300982 () Bool)

(declare-fun res!983731 () Bool)

(assert (=> b!2300982 (=> res!983731 e!1474494)))

(assert (=> b!2300982 (= res!983731 (not ((_ is ElementMatch!6737) (regex!4389 r!2363))))))

(assert (=> b!2300982 (= e!1474491 e!1474494)))

(declare-fun b!2300988 () Bool)

(assert (=> b!2300988 (= e!1474491 (not lt!853539))))

(declare-fun b!2300989 () Bool)

(assert (=> b!2300989 (= e!1474492 (= lt!853539 call!137047))))

(declare-fun b!2300990 () Bool)

(assert (=> b!2300990 (= e!1474493 e!1474489)))

(declare-fun res!983725 () Bool)

(assert (=> b!2300990 (=> res!983725 e!1474489)))

(assert (=> b!2300990 (= res!983725 call!137047)))

(declare-fun b!2300991 () Bool)

(assert (=> b!2300991 (= e!1474489 (not (= (head!5032 (list!10777 (charsOf!2777 (head!5030 tokens!456)))) (c!364799 (regex!4389 r!2363)))))))

(assert (= (and d!680698 c!364837) b!2300984))

(assert (= (and d!680698 (not c!364837)) b!2300979))

(assert (= (and d!680698 c!364838) b!2300989))

(assert (= (and d!680698 (not c!364838)) b!2300987))

(assert (= (and b!2300987 c!364839) b!2300988))

(assert (= (and b!2300987 (not c!364839)) b!2300982))

(assert (= (and b!2300982 (not res!983731)) b!2300980))

(assert (= (and b!2300980 res!983728) b!2300985))

(assert (= (and b!2300985 res!983729) b!2300983))

(assert (= (and b!2300983 res!983730) b!2300981))

(assert (= (and b!2300980 (not res!983727)) b!2300986))

(assert (= (and b!2300986 res!983726) b!2300990))

(assert (= (and b!2300990 (not res!983725)) b!2300978))

(assert (= (and b!2300978 (not res!983724)) b!2300991))

(assert (= (or b!2300989 b!2300985 b!2300990) bm!137042))

(assert (=> b!2300981 m!2728165))

(declare-fun m!2728389 () Bool)

(assert (=> b!2300981 m!2728389))

(assert (=> b!2300991 m!2728165))

(assert (=> b!2300991 m!2728389))

(assert (=> bm!137042 m!2728165))

(declare-fun m!2728391 () Bool)

(assert (=> bm!137042 m!2728391))

(assert (=> d!680698 m!2728165))

(assert (=> d!680698 m!2728391))

(declare-fun m!2728393 () Bool)

(assert (=> d!680698 m!2728393))

(assert (=> b!2300983 m!2728165))

(declare-fun m!2728395 () Bool)

(assert (=> b!2300983 m!2728395))

(assert (=> b!2300983 m!2728395))

(declare-fun m!2728397 () Bool)

(assert (=> b!2300983 m!2728397))

(assert (=> b!2300979 m!2728165))

(assert (=> b!2300979 m!2728389))

(assert (=> b!2300979 m!2728389))

(declare-fun m!2728399 () Bool)

(assert (=> b!2300979 m!2728399))

(assert (=> b!2300979 m!2728165))

(assert (=> b!2300979 m!2728395))

(assert (=> b!2300979 m!2728399))

(assert (=> b!2300979 m!2728395))

(declare-fun m!2728401 () Bool)

(assert (=> b!2300979 m!2728401))

(declare-fun m!2728403 () Bool)

(assert (=> b!2300984 m!2728403))

(assert (=> b!2300978 m!2728165))

(assert (=> b!2300978 m!2728395))

(assert (=> b!2300978 m!2728395))

(assert (=> b!2300978 m!2728397))

(assert (=> b!2300772 d!680698))

(declare-fun d!680706 () Bool)

(declare-fun list!10780 (Conc!8926) List!27480)

(assert (=> d!680706 (= (list!10777 (charsOf!2777 (head!5030 tokens!456))) (list!10780 (c!364798 (charsOf!2777 (head!5030 tokens!456)))))))

(declare-fun bs!457693 () Bool)

(assert (= bs!457693 d!680706))

(declare-fun m!2728405 () Bool)

(assert (=> bs!457693 m!2728405))

(assert (=> b!2300772 d!680706))

(assert (=> b!2300772 d!680638))

(assert (=> b!2300772 d!680640))

(assert (=> b!2300766 d!680640))

(declare-fun b!2301002 () Bool)

(declare-fun e!1474504 () Bool)

(assert (=> b!2301002 (= e!1474504 (isPrefix!2379 (tail!3323 otherP!12) (tail!3323 input!1722)))))

(declare-fun d!680708 () Bool)

(declare-fun e!1474503 () Bool)

(assert (=> d!680708 e!1474503))

(declare-fun res!983741 () Bool)

(assert (=> d!680708 (=> res!983741 e!1474503)))

(declare-fun lt!853542 () Bool)

(assert (=> d!680708 (= res!983741 (not lt!853542))))

(declare-fun e!1474502 () Bool)

(assert (=> d!680708 (= lt!853542 e!1474502)))

(declare-fun res!983742 () Bool)

(assert (=> d!680708 (=> res!983742 e!1474502)))

(assert (=> d!680708 (= res!983742 ((_ is Nil!27386) otherP!12))))

(assert (=> d!680708 (= (isPrefix!2379 otherP!12 input!1722) lt!853542)))

(declare-fun b!2301001 () Bool)

(declare-fun res!983740 () Bool)

(assert (=> b!2301001 (=> (not res!983740) (not e!1474504))))

(assert (=> b!2301001 (= res!983740 (= (head!5032 otherP!12) (head!5032 input!1722)))))

(declare-fun b!2301003 () Bool)

(assert (=> b!2301003 (= e!1474503 (>= (size!21596 input!1722) (size!21596 otherP!12)))))

(declare-fun b!2301000 () Bool)

(assert (=> b!2301000 (= e!1474502 e!1474504)))

(declare-fun res!983743 () Bool)

(assert (=> b!2301000 (=> (not res!983743) (not e!1474504))))

(assert (=> b!2301000 (= res!983743 (not ((_ is Nil!27386) input!1722)))))

(assert (= (and d!680708 (not res!983742)) b!2301000))

(assert (= (and b!2301000 res!983743) b!2301001))

(assert (= (and b!2301001 res!983740) b!2301002))

(assert (= (and d!680708 (not res!983741)) b!2301003))

(declare-fun m!2728407 () Bool)

(assert (=> b!2301002 m!2728407))

(declare-fun m!2728409 () Bool)

(assert (=> b!2301002 m!2728409))

(assert (=> b!2301002 m!2728407))

(assert (=> b!2301002 m!2728409))

(declare-fun m!2728411 () Bool)

(assert (=> b!2301002 m!2728411))

(declare-fun m!2728413 () Bool)

(assert (=> b!2301001 m!2728413))

(declare-fun m!2728415 () Bool)

(assert (=> b!2301001 m!2728415))

(declare-fun m!2728417 () Bool)

(assert (=> b!2301003 m!2728417))

(assert (=> b!2301003 m!2728129))

(assert (=> b!2300755 d!680708))

(declare-fun b!2301015 () Bool)

(declare-fun e!1474510 () Int)

(assert (=> b!2301015 (= e!1474510 (- 1))))

(declare-fun b!2301014 () Bool)

(assert (=> b!2301014 (= e!1474510 (+ 1 (getIndex!402 (t!205812 rules!1750) otherR!12)))))

(declare-fun b!2301013 () Bool)

(declare-fun e!1474511 () Int)

(assert (=> b!2301013 (= e!1474511 e!1474510)))

(declare-fun c!364844 () Bool)

(assert (=> b!2301013 (= c!364844 (and ((_ is Cons!27388) rules!1750) (not (= (h!32789 rules!1750) otherR!12))))))

(declare-fun b!2301012 () Bool)

(assert (=> b!2301012 (= e!1474511 0)))

(declare-fun d!680710 () Bool)

(declare-fun lt!853545 () Int)

(assert (=> d!680710 (>= lt!853545 0)))

(assert (=> d!680710 (= lt!853545 e!1474511)))

(declare-fun c!364845 () Bool)

(assert (=> d!680710 (= c!364845 (and ((_ is Cons!27388) rules!1750) (= (h!32789 rules!1750) otherR!12)))))

(assert (=> d!680710 (contains!4775 rules!1750 otherR!12)))

(assert (=> d!680710 (= (getIndex!402 rules!1750 otherR!12) lt!853545)))

(assert (= (and d!680710 c!364845) b!2301012))

(assert (= (and d!680710 (not c!364845)) b!2301013))

(assert (= (and b!2301013 c!364844) b!2301014))

(assert (= (and b!2301013 (not c!364844)) b!2301015))

(declare-fun m!2728419 () Bool)

(assert (=> b!2301014 m!2728419))

(assert (=> d!680710 m!2728179))

(assert (=> b!2300754 d!680710))

(declare-fun b!2301019 () Bool)

(declare-fun e!1474512 () Int)

(assert (=> b!2301019 (= e!1474512 (- 1))))

(declare-fun b!2301018 () Bool)

(assert (=> b!2301018 (= e!1474512 (+ 1 (getIndex!402 (t!205812 rules!1750) r!2363)))))

(declare-fun b!2301017 () Bool)

(declare-fun e!1474513 () Int)

(assert (=> b!2301017 (= e!1474513 e!1474512)))

(declare-fun c!364846 () Bool)

(assert (=> b!2301017 (= c!364846 (and ((_ is Cons!27388) rules!1750) (not (= (h!32789 rules!1750) r!2363))))))

(declare-fun b!2301016 () Bool)

(assert (=> b!2301016 (= e!1474513 0)))

(declare-fun d!680712 () Bool)

(declare-fun lt!853546 () Int)

(assert (=> d!680712 (>= lt!853546 0)))

(assert (=> d!680712 (= lt!853546 e!1474513)))

(declare-fun c!364847 () Bool)

(assert (=> d!680712 (= c!364847 (and ((_ is Cons!27388) rules!1750) (= (h!32789 rules!1750) r!2363)))))

(assert (=> d!680712 (contains!4775 rules!1750 r!2363)))

(assert (=> d!680712 (= (getIndex!402 rules!1750 r!2363) lt!853546)))

(assert (= (and d!680712 c!364847) b!2301016))

(assert (= (and d!680712 (not c!364847)) b!2301017))

(assert (= (and b!2301017 c!364846) b!2301018))

(assert (= (and b!2301017 (not c!364846)) b!2301019))

(declare-fun m!2728421 () Bool)

(assert (=> b!2301018 m!2728421))

(assert (=> d!680712 m!2728159))

(assert (=> b!2300754 d!680712))

(declare-fun d!680714 () Bool)

(declare-fun res!983748 () Bool)

(declare-fun e!1474516 () Bool)

(assert (=> d!680714 (=> (not res!983748) (not e!1474516))))

(assert (=> d!680714 (= res!983748 (validRegex!2542 (regex!4389 otherR!12)))))

(assert (=> d!680714 (= (ruleValid!1479 thiss!16613 otherR!12) e!1474516)))

(declare-fun b!2301024 () Bool)

(declare-fun res!983749 () Bool)

(assert (=> b!2301024 (=> (not res!983749) (not e!1474516))))

(assert (=> b!2301024 (= res!983749 (not (nullable!1880 (regex!4389 otherR!12))))))

(declare-fun b!2301025 () Bool)

(assert (=> b!2301025 (= e!1474516 (not (= (tag!4879 otherR!12) (String!29860 ""))))))

(assert (= (and d!680714 res!983748) b!2301024))

(assert (= (and b!2301024 res!983749) b!2301025))

(declare-fun m!2728423 () Bool)

(assert (=> d!680714 m!2728423))

(declare-fun m!2728425 () Bool)

(assert (=> b!2301024 m!2728425))

(assert (=> b!2300754 d!680714))

(declare-fun d!680716 () Bool)

(assert (=> d!680716 (ruleValid!1479 thiss!16613 otherR!12)))

(declare-fun lt!853549 () Unit!40290)

(declare-fun choose!13429 (LexerInterface!3986 Rule!8578 List!27482) Unit!40290)

(assert (=> d!680716 (= lt!853549 (choose!13429 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!680716 (contains!4775 rules!1750 otherR!12)))

(assert (=> d!680716 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!884 thiss!16613 otherR!12 rules!1750) lt!853549)))

(declare-fun bs!457694 () Bool)

(assert (= bs!457694 d!680716))

(assert (=> bs!457694 m!2728173))

(declare-fun m!2728427 () Bool)

(assert (=> bs!457694 m!2728427))

(assert (=> bs!457694 m!2728179))

(assert (=> b!2300754 d!680716))

(declare-fun d!680718 () Bool)

(assert (=> d!680718 (= (inv!37013 (tag!4879 (h!32789 rules!1750))) (= (mod (str.len (value!138905 (tag!4879 (h!32789 rules!1750)))) 2) 0))))

(assert (=> b!2300743 d!680718))

(declare-fun d!680720 () Bool)

(declare-fun res!983750 () Bool)

(declare-fun e!1474517 () Bool)

(assert (=> d!680720 (=> (not res!983750) (not e!1474517))))

(assert (=> d!680720 (= res!983750 (semiInverseModEq!1782 (toChars!6058 (transformation!4389 (h!32789 rules!1750))) (toValue!6199 (transformation!4389 (h!32789 rules!1750)))))))

(assert (=> d!680720 (= (inv!37016 (transformation!4389 (h!32789 rules!1750))) e!1474517)))

(declare-fun b!2301026 () Bool)

(assert (=> b!2301026 (= e!1474517 (equivClasses!1701 (toChars!6058 (transformation!4389 (h!32789 rules!1750))) (toValue!6199 (transformation!4389 (h!32789 rules!1750)))))))

(assert (= (and d!680720 res!983750) b!2301026))

(declare-fun m!2728429 () Bool)

(assert (=> d!680720 m!2728429))

(declare-fun m!2728431 () Bool)

(assert (=> b!2301026 m!2728431))

(assert (=> b!2300743 d!680720))

(declare-fun d!680722 () Bool)

(declare-fun res!983751 () Bool)

(declare-fun e!1474518 () Bool)

(assert (=> d!680722 (=> (not res!983751) (not e!1474518))))

(assert (=> d!680722 (= res!983751 (validRegex!2542 (regex!4389 r!2363)))))

(assert (=> d!680722 (= (ruleValid!1479 thiss!16613 r!2363) e!1474518)))

(declare-fun b!2301027 () Bool)

(declare-fun res!983752 () Bool)

(assert (=> b!2301027 (=> (not res!983752) (not e!1474518))))

(assert (=> b!2301027 (= res!983752 (not (nullable!1880 (regex!4389 r!2363))))))

(declare-fun b!2301028 () Bool)

(assert (=> b!2301028 (= e!1474518 (not (= (tag!4879 r!2363) (String!29860 ""))))))

(assert (= (and d!680722 res!983751) b!2301027))

(assert (= (and b!2301027 res!983752) b!2301028))

(assert (=> d!680722 m!2728393))

(assert (=> b!2301027 m!2728403))

(assert (=> b!2300758 d!680722))

(declare-fun d!680724 () Bool)

(assert (=> d!680724 (ruleValid!1479 thiss!16613 r!2363)))

(declare-fun lt!853550 () Unit!40290)

(assert (=> d!680724 (= lt!853550 (choose!13429 thiss!16613 r!2363 rules!1750))))

(assert (=> d!680724 (contains!4775 rules!1750 r!2363)))

(assert (=> d!680724 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!884 thiss!16613 r!2363 rules!1750) lt!853550)))

(declare-fun bs!457695 () Bool)

(assert (= bs!457695 d!680724))

(assert (=> bs!457695 m!2728155))

(declare-fun m!2728433 () Bool)

(assert (=> bs!457695 m!2728433))

(assert (=> bs!457695 m!2728159))

(assert (=> b!2300758 d!680724))

(declare-fun d!680726 () Bool)

(declare-fun res!983755 () Bool)

(declare-fun e!1474521 () Bool)

(assert (=> d!680726 (=> (not res!983755) (not e!1474521))))

(declare-fun rulesValid!1626 (LexerInterface!3986 List!27482) Bool)

(assert (=> d!680726 (= res!983755 (rulesValid!1626 thiss!16613 rules!1750))))

(assert (=> d!680726 (= (rulesInvariant!3488 thiss!16613 rules!1750) e!1474521)))

(declare-fun b!2301031 () Bool)

(declare-datatypes ((List!27484 0))(
  ( (Nil!27390) (Cons!27390 (h!32791 String!29859) (t!205862 List!27484)) )
))
(declare-fun noDuplicateTag!1624 (LexerInterface!3986 List!27482 List!27484) Bool)

(assert (=> b!2301031 (= e!1474521 (noDuplicateTag!1624 thiss!16613 rules!1750 Nil!27390))))

(assert (= (and d!680726 res!983755) b!2301031))

(declare-fun m!2728435 () Bool)

(assert (=> d!680726 m!2728435))

(declare-fun m!2728437 () Bool)

(assert (=> b!2301031 m!2728437))

(assert (=> b!2300769 d!680726))

(declare-fun d!680728 () Bool)

(assert (=> d!680728 (= (isEmpty!15630 rules!1750) ((_ is Nil!27388) rules!1750))))

(assert (=> b!2300768 d!680728))

(declare-fun d!680730 () Bool)

(declare-fun list!10781 (Conc!8927) List!27481)

(assert (=> d!680730 (= (list!10776 (_1!16143 lt!853476)) (list!10781 (c!364800 (_1!16143 lt!853476))))))

(declare-fun bs!457696 () Bool)

(assert (= bs!457696 d!680730))

(declare-fun m!2728439 () Bool)

(assert (=> bs!457696 m!2728439))

(assert (=> b!2300747 d!680730))

(declare-fun d!680732 () Bool)

(assert (=> d!680732 (= (list!10777 (_2!16143 lt!853476)) (list!10780 (c!364798 (_2!16143 lt!853476))))))

(declare-fun bs!457697 () Bool)

(assert (= bs!457697 d!680732))

(declare-fun m!2728441 () Bool)

(assert (=> bs!457697 m!2728441))

(assert (=> b!2300747 d!680732))

(declare-fun lt!853573 () tuple2!27266)

(declare-fun b!2301180 () Bool)

(declare-fun e!1474619 () Bool)

(declare-fun lexList!1126 (LexerInterface!3986 List!27482 List!27480) tuple2!27268)

(assert (=> b!2301180 (= e!1474619 (= (list!10777 (_2!16143 lt!853573)) (_2!16144 (lexList!1126 thiss!16613 rules!1750 (list!10777 (seqFromList!3093 input!1722))))))))

(declare-fun b!2301181 () Bool)

(declare-fun e!1474618 () Bool)

(assert (=> b!2301181 (= e!1474618 (= (_2!16143 lt!853573) (seqFromList!3093 input!1722)))))

(declare-fun b!2301182 () Bool)

(declare-fun e!1474617 () Bool)

(declare-fun isEmpty!15635 (BalanceConc!17582) Bool)

(assert (=> b!2301182 (= e!1474617 (not (isEmpty!15635 (_1!16143 lt!853573))))))

(declare-fun d!680734 () Bool)

(assert (=> d!680734 e!1474619))

(declare-fun res!983799 () Bool)

(assert (=> d!680734 (=> (not res!983799) (not e!1474619))))

(assert (=> d!680734 (= res!983799 e!1474618)))

(declare-fun c!364871 () Bool)

(declare-fun size!21600 (BalanceConc!17582) Int)

(assert (=> d!680734 (= c!364871 (> (size!21600 (_1!16143 lt!853573)) 0))))

(declare-fun lexTailRecV2!801 (LexerInterface!3986 List!27482 BalanceConc!17580 BalanceConc!17580 BalanceConc!17580 BalanceConc!17582) tuple2!27266)

(assert (=> d!680734 (= lt!853573 (lexTailRecV2!801 thiss!16613 rules!1750 (seqFromList!3093 input!1722) (BalanceConc!17581 Empty!8926) (seqFromList!3093 input!1722) (BalanceConc!17583 Empty!8927)))))

(assert (=> d!680734 (= (lex!1825 thiss!16613 rules!1750 (seqFromList!3093 input!1722)) lt!853573)))

(declare-fun b!2301183 () Bool)

(declare-fun res!983800 () Bool)

(assert (=> b!2301183 (=> (not res!983800) (not e!1474619))))

(assert (=> b!2301183 (= res!983800 (= (list!10776 (_1!16143 lt!853573)) (_1!16144 (lexList!1126 thiss!16613 rules!1750 (list!10777 (seqFromList!3093 input!1722))))))))

(declare-fun b!2301184 () Bool)

(assert (=> b!2301184 (= e!1474618 e!1474617)))

(declare-fun res!983801 () Bool)

(assert (=> b!2301184 (= res!983801 (< (size!21595 (_2!16143 lt!853573)) (size!21595 (seqFromList!3093 input!1722))))))

(assert (=> b!2301184 (=> (not res!983801) (not e!1474617))))

(assert (= (and d!680734 c!364871) b!2301184))

(assert (= (and d!680734 (not c!364871)) b!2301181))

(assert (= (and b!2301184 res!983801) b!2301182))

(assert (= (and d!680734 res!983799) b!2301183))

(assert (= (and b!2301183 res!983800) b!2301180))

(declare-fun m!2728537 () Bool)

(assert (=> b!2301180 m!2728537))

(assert (=> b!2301180 m!2728187))

(declare-fun m!2728539 () Bool)

(assert (=> b!2301180 m!2728539))

(assert (=> b!2301180 m!2728539))

(declare-fun m!2728541 () Bool)

(assert (=> b!2301180 m!2728541))

(declare-fun m!2728543 () Bool)

(assert (=> b!2301184 m!2728543))

(assert (=> b!2301184 m!2728187))

(declare-fun m!2728545 () Bool)

(assert (=> b!2301184 m!2728545))

(declare-fun m!2728547 () Bool)

(assert (=> b!2301183 m!2728547))

(assert (=> b!2301183 m!2728187))

(assert (=> b!2301183 m!2728539))

(assert (=> b!2301183 m!2728539))

(assert (=> b!2301183 m!2728541))

(declare-fun m!2728549 () Bool)

(assert (=> b!2301182 m!2728549))

(declare-fun m!2728551 () Bool)

(assert (=> d!680734 m!2728551))

(assert (=> d!680734 m!2728187))

(assert (=> d!680734 m!2728187))

(declare-fun m!2728553 () Bool)

(assert (=> d!680734 m!2728553))

(assert (=> b!2300747 d!680734))

(declare-fun d!680776 () Bool)

(declare-fun fromListB!1392 (List!27480) BalanceConc!17580)

(assert (=> d!680776 (= (seqFromList!3093 input!1722) (fromListB!1392 input!1722))))

(declare-fun bs!457702 () Bool)

(assert (= bs!457702 d!680776))

(declare-fun m!2728555 () Bool)

(assert (=> bs!457702 m!2728555))

(assert (=> b!2300747 d!680776))

(declare-fun d!680778 () Bool)

(assert (=> d!680778 (= r!2363 otherR!12)))

(declare-fun lt!853576 () Unit!40290)

(declare-fun choose!13430 (List!27482 Rule!8578 Rule!8578) Unit!40290)

(assert (=> d!680778 (= lt!853576 (choose!13430 rules!1750 r!2363 otherR!12))))

(assert (=> d!680778 (contains!4775 rules!1750 r!2363)))

(assert (=> d!680778 (= (lemmaSameIndexThenSameElement!182 rules!1750 r!2363 otherR!12) lt!853576)))

(declare-fun bs!457703 () Bool)

(assert (= bs!457703 d!680778))

(declare-fun m!2728557 () Bool)

(assert (=> bs!457703 m!2728557))

(assert (=> bs!457703 m!2728159))

(assert (=> b!2300757 d!680778))

(declare-fun b!2301187 () Bool)

(declare-fun res!983803 () Bool)

(declare-fun e!1474620 () Bool)

(assert (=> b!2301187 (=> (not res!983803) (not e!1474620))))

(declare-fun lt!853577 () List!27480)

(assert (=> b!2301187 (= res!983803 (= (size!21596 lt!853577) (+ (size!21596 lt!853480) (size!21596 (_2!16145 lt!853468)))))))

(declare-fun b!2301186 () Bool)

(declare-fun e!1474621 () List!27480)

(assert (=> b!2301186 (= e!1474621 (Cons!27386 (h!32787 lt!853480) (++!6703 (t!205810 lt!853480) (_2!16145 lt!853468))))))

(declare-fun d!680780 () Bool)

(assert (=> d!680780 e!1474620))

(declare-fun res!983802 () Bool)

(assert (=> d!680780 (=> (not res!983802) (not e!1474620))))

(assert (=> d!680780 (= res!983802 (= (content!3687 lt!853577) ((_ map or) (content!3687 lt!853480) (content!3687 (_2!16145 lt!853468)))))))

(assert (=> d!680780 (= lt!853577 e!1474621)))

(declare-fun c!364872 () Bool)

(assert (=> d!680780 (= c!364872 ((_ is Nil!27386) lt!853480))))

(assert (=> d!680780 (= (++!6703 lt!853480 (_2!16145 lt!853468)) lt!853577)))

(declare-fun b!2301188 () Bool)

(assert (=> b!2301188 (= e!1474620 (or (not (= (_2!16145 lt!853468) Nil!27386)) (= lt!853577 lt!853480)))))

(declare-fun b!2301185 () Bool)

(assert (=> b!2301185 (= e!1474621 (_2!16145 lt!853468))))

(assert (= (and d!680780 c!364872) b!2301185))

(assert (= (and d!680780 (not c!364872)) b!2301186))

(assert (= (and d!680780 res!983802) b!2301187))

(assert (= (and b!2301187 res!983803) b!2301188))

(declare-fun m!2728559 () Bool)

(assert (=> b!2301187 m!2728559))

(assert (=> b!2301187 m!2728303))

(declare-fun m!2728561 () Bool)

(assert (=> b!2301187 m!2728561))

(declare-fun m!2728563 () Bool)

(assert (=> b!2301186 m!2728563))

(declare-fun m!2728565 () Bool)

(assert (=> d!680780 m!2728565))

(assert (=> d!680780 m!2728311))

(declare-fun m!2728567 () Bool)

(assert (=> d!680780 m!2728567))

(assert (=> b!2300756 d!680780))

(declare-fun d!680782 () Bool)

(assert (=> d!680782 (= (list!10777 (charsOf!2777 (h!32788 tokens!456))) (list!10780 (c!364798 (charsOf!2777 (h!32788 tokens!456)))))))

(declare-fun bs!457704 () Bool)

(assert (= bs!457704 d!680782))

(declare-fun m!2728569 () Bool)

(assert (=> bs!457704 m!2728569))

(assert (=> b!2300756 d!680782))

(declare-fun b!2301191 () Bool)

(declare-fun e!1474624 () Bool)

(assert (=> b!2301191 (= e!1474624 (isPrefix!2379 (tail!3323 lt!853480) (tail!3323 lt!853479)))))

(declare-fun d!680784 () Bool)

(declare-fun e!1474623 () Bool)

(assert (=> d!680784 e!1474623))

(declare-fun res!983805 () Bool)

(assert (=> d!680784 (=> res!983805 e!1474623)))

(declare-fun lt!853578 () Bool)

(assert (=> d!680784 (= res!983805 (not lt!853578))))

(declare-fun e!1474622 () Bool)

(assert (=> d!680784 (= lt!853578 e!1474622)))

(declare-fun res!983806 () Bool)

(assert (=> d!680784 (=> res!983806 e!1474622)))

(assert (=> d!680784 (= res!983806 ((_ is Nil!27386) lt!853480))))

(assert (=> d!680784 (= (isPrefix!2379 lt!853480 lt!853479) lt!853578)))

(declare-fun b!2301190 () Bool)

(declare-fun res!983804 () Bool)

(assert (=> b!2301190 (=> (not res!983804) (not e!1474624))))

(assert (=> b!2301190 (= res!983804 (= (head!5032 lt!853480) (head!5032 lt!853479)))))

(declare-fun b!2301192 () Bool)

(assert (=> b!2301192 (= e!1474623 (>= (size!21596 lt!853479) (size!21596 lt!853480)))))

(declare-fun b!2301189 () Bool)

(assert (=> b!2301189 (= e!1474622 e!1474624)))

(declare-fun res!983807 () Bool)

(assert (=> b!2301189 (=> (not res!983807) (not e!1474624))))

(assert (=> b!2301189 (= res!983807 (not ((_ is Nil!27386) lt!853479)))))

(assert (= (and d!680784 (not res!983806)) b!2301189))

(assert (= (and b!2301189 res!983807) b!2301190))

(assert (= (and b!2301190 res!983804) b!2301191))

(assert (= (and d!680784 (not res!983805)) b!2301192))

(declare-fun m!2728571 () Bool)

(assert (=> b!2301191 m!2728571))

(declare-fun m!2728573 () Bool)

(assert (=> b!2301191 m!2728573))

(assert (=> b!2301191 m!2728571))

(assert (=> b!2301191 m!2728573))

(declare-fun m!2728575 () Bool)

(assert (=> b!2301191 m!2728575))

(declare-fun m!2728577 () Bool)

(assert (=> b!2301190 m!2728577))

(declare-fun m!2728579 () Bool)

(assert (=> b!2301190 m!2728579))

(declare-fun m!2728581 () Bool)

(assert (=> b!2301192 m!2728581))

(assert (=> b!2301192 m!2728303))

(assert (=> b!2300756 d!680784))

(declare-fun b!2301195 () Bool)

(declare-fun e!1474627 () Bool)

(assert (=> b!2301195 (= e!1474627 (isPrefix!2379 (tail!3323 lt!853480) (tail!3323 input!1722)))))

(declare-fun d!680786 () Bool)

(declare-fun e!1474626 () Bool)

(assert (=> d!680786 e!1474626))

(declare-fun res!983809 () Bool)

(assert (=> d!680786 (=> res!983809 e!1474626)))

(declare-fun lt!853579 () Bool)

(assert (=> d!680786 (= res!983809 (not lt!853579))))

(declare-fun e!1474625 () Bool)

(assert (=> d!680786 (= lt!853579 e!1474625)))

(declare-fun res!983810 () Bool)

(assert (=> d!680786 (=> res!983810 e!1474625)))

(assert (=> d!680786 (= res!983810 ((_ is Nil!27386) lt!853480))))

(assert (=> d!680786 (= (isPrefix!2379 lt!853480 input!1722) lt!853579)))

(declare-fun b!2301194 () Bool)

(declare-fun res!983808 () Bool)

(assert (=> b!2301194 (=> (not res!983808) (not e!1474627))))

(assert (=> b!2301194 (= res!983808 (= (head!5032 lt!853480) (head!5032 input!1722)))))

(declare-fun b!2301196 () Bool)

(assert (=> b!2301196 (= e!1474626 (>= (size!21596 input!1722) (size!21596 lt!853480)))))

(declare-fun b!2301193 () Bool)

(assert (=> b!2301193 (= e!1474625 e!1474627)))

(declare-fun res!983811 () Bool)

(assert (=> b!2301193 (=> (not res!983811) (not e!1474627))))

(assert (=> b!2301193 (= res!983811 (not ((_ is Nil!27386) input!1722)))))

(assert (= (and d!680786 (not res!983810)) b!2301193))

(assert (= (and b!2301193 res!983811) b!2301194))

(assert (= (and b!2301194 res!983808) b!2301195))

(assert (= (and d!680786 (not res!983809)) b!2301196))

(assert (=> b!2301195 m!2728571))

(assert (=> b!2301195 m!2728409))

(assert (=> b!2301195 m!2728571))

(assert (=> b!2301195 m!2728409))

(declare-fun m!2728583 () Bool)

(assert (=> b!2301195 m!2728583))

(assert (=> b!2301194 m!2728577))

(assert (=> b!2301194 m!2728415))

(assert (=> b!2301196 m!2728417))

(assert (=> b!2301196 m!2728303))

(assert (=> b!2300756 d!680786))

(declare-fun d!680788 () Bool)

(declare-fun lt!853582 () List!27480)

(assert (=> d!680788 (= (++!6703 lt!853480 lt!853582) input!1722)))

(declare-fun e!1474630 () List!27480)

(assert (=> d!680788 (= lt!853582 e!1474630)))

(declare-fun c!364875 () Bool)

(assert (=> d!680788 (= c!364875 ((_ is Cons!27386) lt!853480))))

(assert (=> d!680788 (>= (size!21596 input!1722) (size!21596 lt!853480))))

(assert (=> d!680788 (= (getSuffix!1158 input!1722 lt!853480) lt!853582)))

(declare-fun b!2301201 () Bool)

(assert (=> b!2301201 (= e!1474630 (getSuffix!1158 (tail!3323 input!1722) (t!205810 lt!853480)))))

(declare-fun b!2301202 () Bool)

(assert (=> b!2301202 (= e!1474630 input!1722)))

(assert (= (and d!680788 c!364875) b!2301201))

(assert (= (and d!680788 (not c!364875)) b!2301202))

(declare-fun m!2728585 () Bool)

(assert (=> d!680788 m!2728585))

(assert (=> d!680788 m!2728417))

(assert (=> d!680788 m!2728303))

(assert (=> b!2301201 m!2728409))

(assert (=> b!2301201 m!2728409))

(declare-fun m!2728587 () Bool)

(assert (=> b!2301201 m!2728587))

(assert (=> b!2300756 d!680788))

(declare-fun d!680790 () Bool)

(assert (=> d!680790 (= (get!8255 (maxPrefix!2242 thiss!16613 rules!1750 input!1722)) (v!30478 (maxPrefix!2242 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2300756 d!680790))

(declare-fun b!2301221 () Bool)

(declare-fun res!983826 () Bool)

(declare-fun e!1474637 () Bool)

(assert (=> b!2301221 (=> (not res!983826) (not e!1474637))))

(declare-fun lt!853597 () Option!5385)

(assert (=> b!2301221 (= res!983826 (= (list!10777 (charsOf!2777 (_1!16145 (get!8255 lt!853597)))) (originalCharacters!5159 (_1!16145 (get!8255 lt!853597)))))))

(declare-fun b!2301222 () Bool)

(declare-fun res!983830 () Bool)

(assert (=> b!2301222 (=> (not res!983830) (not e!1474637))))

(assert (=> b!2301222 (= res!983830 (= (++!6703 (list!10777 (charsOf!2777 (_1!16145 (get!8255 lt!853597)))) (_2!16145 (get!8255 lt!853597))) input!1722))))

(declare-fun d!680792 () Bool)

(declare-fun e!1474638 () Bool)

(assert (=> d!680792 e!1474638))

(declare-fun res!983831 () Bool)

(assert (=> d!680792 (=> res!983831 e!1474638)))

(declare-fun isEmpty!15636 (Option!5385) Bool)

(assert (=> d!680792 (= res!983831 (isEmpty!15636 lt!853597))))

(declare-fun e!1474639 () Option!5385)

(assert (=> d!680792 (= lt!853597 e!1474639)))

(declare-fun c!364878 () Bool)

(assert (=> d!680792 (= c!364878 (and ((_ is Cons!27388) rules!1750) ((_ is Nil!27388) (t!205812 rules!1750))))))

(declare-fun lt!853595 () Unit!40290)

(declare-fun lt!853594 () Unit!40290)

(assert (=> d!680792 (= lt!853595 lt!853594)))

(assert (=> d!680792 (isPrefix!2379 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1509 (List!27480 List!27480) Unit!40290)

(assert (=> d!680792 (= lt!853594 (lemmaIsPrefixRefl!1509 input!1722 input!1722))))

(declare-fun rulesValidInductive!1551 (LexerInterface!3986 List!27482) Bool)

(assert (=> d!680792 (rulesValidInductive!1551 thiss!16613 rules!1750)))

(assert (=> d!680792 (= (maxPrefix!2242 thiss!16613 rules!1750 input!1722) lt!853597)))

(declare-fun b!2301223 () Bool)

(declare-fun res!983832 () Bool)

(assert (=> b!2301223 (=> (not res!983832) (not e!1474637))))

(assert (=> b!2301223 (= res!983832 (< (size!21596 (_2!16145 (get!8255 lt!853597))) (size!21596 input!1722)))))

(declare-fun b!2301224 () Bool)

(declare-fun res!983828 () Bool)

(assert (=> b!2301224 (=> (not res!983828) (not e!1474637))))

(declare-fun apply!6651 (TokenValueInjection!8642 BalanceConc!17580) TokenValue!4551)

(assert (=> b!2301224 (= res!983828 (= (value!138906 (_1!16145 (get!8255 lt!853597))) (apply!6651 (transformation!4389 (rule!6735 (_1!16145 (get!8255 lt!853597)))) (seqFromList!3093 (originalCharacters!5159 (_1!16145 (get!8255 lt!853597)))))))))

(declare-fun b!2301225 () Bool)

(declare-fun res!983827 () Bool)

(assert (=> b!2301225 (=> (not res!983827) (not e!1474637))))

(assert (=> b!2301225 (= res!983827 (matchR!2994 (regex!4389 (rule!6735 (_1!16145 (get!8255 lt!853597)))) (list!10777 (charsOf!2777 (_1!16145 (get!8255 lt!853597))))))))

(declare-fun b!2301226 () Bool)

(declare-fun lt!853593 () Option!5385)

(declare-fun lt!853596 () Option!5385)

(assert (=> b!2301226 (= e!1474639 (ite (and ((_ is None!5384) lt!853593) ((_ is None!5384) lt!853596)) None!5384 (ite ((_ is None!5384) lt!853596) lt!853593 (ite ((_ is None!5384) lt!853593) lt!853596 (ite (>= (size!21594 (_1!16145 (v!30478 lt!853593))) (size!21594 (_1!16145 (v!30478 lt!853596)))) lt!853593 lt!853596)))))))

(declare-fun call!137050 () Option!5385)

(assert (=> b!2301226 (= lt!853593 call!137050)))

(assert (=> b!2301226 (= lt!853596 (maxPrefix!2242 thiss!16613 (t!205812 rules!1750) input!1722))))

(declare-fun bm!137045 () Bool)

(declare-fun maxPrefixOneRule!1412 (LexerInterface!3986 Rule!8578 List!27480) Option!5385)

(assert (=> bm!137045 (= call!137050 (maxPrefixOneRule!1412 thiss!16613 (h!32789 rules!1750) input!1722))))

(declare-fun b!2301227 () Bool)

(assert (=> b!2301227 (= e!1474637 (contains!4775 rules!1750 (rule!6735 (_1!16145 (get!8255 lt!853597)))))))

(declare-fun b!2301228 () Bool)

(assert (=> b!2301228 (= e!1474638 e!1474637)))

(declare-fun res!983829 () Bool)

(assert (=> b!2301228 (=> (not res!983829) (not e!1474637))))

(declare-fun isDefined!4242 (Option!5385) Bool)

(assert (=> b!2301228 (= res!983829 (isDefined!4242 lt!853597))))

(declare-fun b!2301229 () Bool)

(assert (=> b!2301229 (= e!1474639 call!137050)))

(assert (= (and d!680792 c!364878) b!2301229))

(assert (= (and d!680792 (not c!364878)) b!2301226))

(assert (= (or b!2301229 b!2301226) bm!137045))

(assert (= (and d!680792 (not res!983831)) b!2301228))

(assert (= (and b!2301228 res!983829) b!2301221))

(assert (= (and b!2301221 res!983826) b!2301223))

(assert (= (and b!2301223 res!983832) b!2301222))

(assert (= (and b!2301222 res!983830) b!2301224))

(assert (= (and b!2301224 res!983828) b!2301225))

(assert (= (and b!2301225 res!983827) b!2301227))

(declare-fun m!2728589 () Bool)

(assert (=> b!2301224 m!2728589))

(declare-fun m!2728591 () Bool)

(assert (=> b!2301224 m!2728591))

(assert (=> b!2301224 m!2728591))

(declare-fun m!2728593 () Bool)

(assert (=> b!2301224 m!2728593))

(declare-fun m!2728595 () Bool)

(assert (=> d!680792 m!2728595))

(declare-fun m!2728597 () Bool)

(assert (=> d!680792 m!2728597))

(declare-fun m!2728599 () Bool)

(assert (=> d!680792 m!2728599))

(declare-fun m!2728601 () Bool)

(assert (=> d!680792 m!2728601))

(declare-fun m!2728603 () Bool)

(assert (=> b!2301228 m!2728603))

(declare-fun m!2728605 () Bool)

(assert (=> b!2301226 m!2728605))

(assert (=> b!2301223 m!2728589))

(declare-fun m!2728607 () Bool)

(assert (=> b!2301223 m!2728607))

(assert (=> b!2301223 m!2728417))

(assert (=> b!2301221 m!2728589))

(declare-fun m!2728609 () Bool)

(assert (=> b!2301221 m!2728609))

(assert (=> b!2301221 m!2728609))

(declare-fun m!2728611 () Bool)

(assert (=> b!2301221 m!2728611))

(assert (=> b!2301222 m!2728589))

(assert (=> b!2301222 m!2728609))

(assert (=> b!2301222 m!2728609))

(assert (=> b!2301222 m!2728611))

(assert (=> b!2301222 m!2728611))

(declare-fun m!2728613 () Bool)

(assert (=> b!2301222 m!2728613))

(assert (=> b!2301227 m!2728589))

(declare-fun m!2728615 () Bool)

(assert (=> b!2301227 m!2728615))

(assert (=> b!2301225 m!2728589))

(assert (=> b!2301225 m!2728609))

(assert (=> b!2301225 m!2728609))

(assert (=> b!2301225 m!2728611))

(assert (=> b!2301225 m!2728611))

(declare-fun m!2728617 () Bool)

(assert (=> b!2301225 m!2728617))

(declare-fun m!2728619 () Bool)

(assert (=> bm!137045 m!2728619))

(assert (=> b!2300756 d!680792))

(declare-fun d!680794 () Bool)

(declare-fun lt!853598 () BalanceConc!17580)

(assert (=> d!680794 (= (list!10777 lt!853598) (originalCharacters!5159 (h!32788 tokens!456)))))

(assert (=> d!680794 (= lt!853598 (dynLambda!11909 (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))) (value!138906 (h!32788 tokens!456))))))

(assert (=> d!680794 (= (charsOf!2777 (h!32788 tokens!456)) lt!853598)))

(declare-fun b_lambda!73287 () Bool)

(assert (=> (not b_lambda!73287) (not d!680794)))

(assert (=> d!680794 t!205838))

(declare-fun b_and!183273 () Bool)

(assert (= b_and!183249 (and (=> t!205838 result!167694) b_and!183273)))

(assert (=> d!680794 t!205840))

(declare-fun b_and!183275 () Bool)

(assert (= b_and!183251 (and (=> t!205840 result!167696) b_and!183275)))

(assert (=> d!680794 t!205842))

(declare-fun b_and!183277 () Bool)

(assert (= b_and!183253 (and (=> t!205842 result!167698) b_and!183277)))

(assert (=> d!680794 t!205844))

(declare-fun b_and!183279 () Bool)

(assert (= b_and!183255 (and (=> t!205844 result!167700) b_and!183279)))

(declare-fun m!2728621 () Bool)

(assert (=> d!680794 m!2728621))

(assert (=> d!680794 m!2728341))

(assert (=> b!2300756 d!680794))

(declare-fun d!680796 () Bool)

(assert (=> d!680796 (isPrefix!2379 lt!853480 (++!6703 lt!853480 (_2!16145 lt!853468)))))

(declare-fun lt!853601 () Unit!40290)

(declare-fun choose!13431 (List!27480 List!27480) Unit!40290)

(assert (=> d!680796 (= lt!853601 (choose!13431 lt!853480 (_2!16145 lt!853468)))))

(assert (=> d!680796 (= (lemmaConcatTwoListThenFirstIsPrefix!1572 lt!853480 (_2!16145 lt!853468)) lt!853601)))

(declare-fun bs!457705 () Bool)

(assert (= bs!457705 d!680796))

(assert (=> bs!457705 m!2728145))

(assert (=> bs!457705 m!2728145))

(declare-fun m!2728623 () Bool)

(assert (=> bs!457705 m!2728623))

(declare-fun m!2728625 () Bool)

(assert (=> bs!457705 m!2728625))

(assert (=> b!2300756 d!680796))

(declare-fun d!680798 () Bool)

(declare-fun lt!853602 () Bool)

(assert (=> d!680798 (= lt!853602 (select (content!3686 rules!1750) r!2363))))

(declare-fun e!1474640 () Bool)

(assert (=> d!680798 (= lt!853602 e!1474640)))

(declare-fun res!983834 () Bool)

(assert (=> d!680798 (=> (not res!983834) (not e!1474640))))

(assert (=> d!680798 (= res!983834 ((_ is Cons!27388) rules!1750))))

(assert (=> d!680798 (= (contains!4775 rules!1750 r!2363) lt!853602)))

(declare-fun b!2301230 () Bool)

(declare-fun e!1474641 () Bool)

(assert (=> b!2301230 (= e!1474640 e!1474641)))

(declare-fun res!983833 () Bool)

(assert (=> b!2301230 (=> res!983833 e!1474641)))

(assert (=> b!2301230 (= res!983833 (= (h!32789 rules!1750) r!2363))))

(declare-fun b!2301231 () Bool)

(assert (=> b!2301231 (= e!1474641 (contains!4775 (t!205812 rules!1750) r!2363))))

(assert (= (and d!680798 res!983834) b!2301230))

(assert (= (and b!2301230 (not res!983833)) b!2301231))

(assert (=> d!680798 m!2728263))

(declare-fun m!2728627 () Bool)

(assert (=> d!680798 m!2728627))

(declare-fun m!2728629 () Bool)

(assert (=> b!2301231 m!2728629))

(assert (=> b!2300767 d!680798))

(declare-fun b!2301236 () Bool)

(declare-fun e!1474644 () Bool)

(declare-fun tp!729957 () Bool)

(assert (=> b!2301236 (= e!1474644 (and tp_is_empty!10695 tp!729957))))

(assert (=> b!2300750 (= tp!729869 e!1474644)))

(assert (= (and b!2300750 ((_ is Cons!27386) (t!205810 input!1722))) b!2301236))

(declare-fun b!2301250 () Bool)

(declare-fun e!1474647 () Bool)

(declare-fun tp!729968 () Bool)

(declare-fun tp!729971 () Bool)

(assert (=> b!2301250 (= e!1474647 (and tp!729968 tp!729971))))

(declare-fun b!2301247 () Bool)

(assert (=> b!2301247 (= e!1474647 tp_is_empty!10695)))

(declare-fun b!2301248 () Bool)

(declare-fun tp!729969 () Bool)

(declare-fun tp!729972 () Bool)

(assert (=> b!2301248 (= e!1474647 (and tp!729969 tp!729972))))

(assert (=> b!2300761 (= tp!729881 e!1474647)))

(declare-fun b!2301249 () Bool)

(declare-fun tp!729970 () Bool)

(assert (=> b!2301249 (= e!1474647 tp!729970)))

(assert (= (and b!2300761 ((_ is ElementMatch!6737) (regex!4389 (rule!6735 (h!32788 tokens!456))))) b!2301247))

(assert (= (and b!2300761 ((_ is Concat!11289) (regex!4389 (rule!6735 (h!32788 tokens!456))))) b!2301248))

(assert (= (and b!2300761 ((_ is Star!6737) (regex!4389 (rule!6735 (h!32788 tokens!456))))) b!2301249))

(assert (= (and b!2300761 ((_ is Union!6737) (regex!4389 (rule!6735 (h!32788 tokens!456))))) b!2301250))

(declare-fun b!2301254 () Bool)

(declare-fun e!1474648 () Bool)

(declare-fun tp!729973 () Bool)

(declare-fun tp!729976 () Bool)

(assert (=> b!2301254 (= e!1474648 (and tp!729973 tp!729976))))

(declare-fun b!2301251 () Bool)

(assert (=> b!2301251 (= e!1474648 tp_is_empty!10695)))

(declare-fun b!2301252 () Bool)

(declare-fun tp!729974 () Bool)

(declare-fun tp!729977 () Bool)

(assert (=> b!2301252 (= e!1474648 (and tp!729974 tp!729977))))

(assert (=> b!2300739 (= tp!729878 e!1474648)))

(declare-fun b!2301253 () Bool)

(declare-fun tp!729975 () Bool)

(assert (=> b!2301253 (= e!1474648 tp!729975)))

(assert (= (and b!2300739 ((_ is ElementMatch!6737) (regex!4389 r!2363))) b!2301251))

(assert (= (and b!2300739 ((_ is Concat!11289) (regex!4389 r!2363))) b!2301252))

(assert (= (and b!2300739 ((_ is Star!6737) (regex!4389 r!2363))) b!2301253))

(assert (= (and b!2300739 ((_ is Union!6737) (regex!4389 r!2363))) b!2301254))

(declare-fun b!2301258 () Bool)

(declare-fun e!1474649 () Bool)

(declare-fun tp!729978 () Bool)

(declare-fun tp!729981 () Bool)

(assert (=> b!2301258 (= e!1474649 (and tp!729978 tp!729981))))

(declare-fun b!2301255 () Bool)

(assert (=> b!2301255 (= e!1474649 tp_is_empty!10695)))

(declare-fun b!2301256 () Bool)

(declare-fun tp!729979 () Bool)

(declare-fun tp!729982 () Bool)

(assert (=> b!2301256 (= e!1474649 (and tp!729979 tp!729982))))

(assert (=> b!2300770 (= tp!729876 e!1474649)))

(declare-fun b!2301257 () Bool)

(declare-fun tp!729980 () Bool)

(assert (=> b!2301257 (= e!1474649 tp!729980)))

(assert (= (and b!2300770 ((_ is ElementMatch!6737) (regex!4389 otherR!12))) b!2301255))

(assert (= (and b!2300770 ((_ is Concat!11289) (regex!4389 otherR!12))) b!2301256))

(assert (= (and b!2300770 ((_ is Star!6737) (regex!4389 otherR!12))) b!2301257))

(assert (= (and b!2300770 ((_ is Union!6737) (regex!4389 otherR!12))) b!2301258))

(declare-fun b!2301269 () Bool)

(declare-fun b_free!69429 () Bool)

(declare-fun b_next!70133 () Bool)

(assert (=> b!2301269 (= b_free!69429 (not b_next!70133))))

(declare-fun tp!729994 () Bool)

(declare-fun b_and!183281 () Bool)

(assert (=> b!2301269 (= tp!729994 b_and!183281)))

(declare-fun b_free!69431 () Bool)

(declare-fun b_next!70135 () Bool)

(assert (=> b!2301269 (= b_free!69431 (not b_next!70135))))

(declare-fun tb!137591 () Bool)

(declare-fun t!205855 () Bool)

(assert (=> (and b!2301269 (= (toChars!6058 (transformation!4389 (h!32789 (t!205812 rules!1750)))) (toChars!6058 (transformation!4389 (rule!6735 (head!5030 tokens!456))))) t!205855) tb!137591))

(declare-fun result!167724 () Bool)

(assert (= result!167724 result!167666))

(assert (=> d!680638 t!205855))

(declare-fun tb!137593 () Bool)

(declare-fun t!205857 () Bool)

(assert (=> (and b!2301269 (= (toChars!6058 (transformation!4389 (h!32789 (t!205812 rules!1750)))) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456))))) t!205857) tb!137593))

(declare-fun result!167726 () Bool)

(assert (= result!167726 result!167694))

(assert (=> b!2300905 t!205857))

(assert (=> d!680794 t!205857))

(declare-fun b_and!183283 () Bool)

(declare-fun tp!729992 () Bool)

(assert (=> b!2301269 (= tp!729992 (and (=> t!205855 result!167724) (=> t!205857 result!167726) b_and!183283))))

(declare-fun e!1474661 () Bool)

(assert (=> b!2301269 (= e!1474661 (and tp!729994 tp!729992))))

(declare-fun e!1474658 () Bool)

(declare-fun b!2301268 () Bool)

(declare-fun tp!729991 () Bool)

(assert (=> b!2301268 (= e!1474658 (and tp!729991 (inv!37013 (tag!4879 (h!32789 (t!205812 rules!1750)))) (inv!37016 (transformation!4389 (h!32789 (t!205812 rules!1750)))) e!1474661))))

(declare-fun b!2301267 () Bool)

(declare-fun e!1474659 () Bool)

(declare-fun tp!729993 () Bool)

(assert (=> b!2301267 (= e!1474659 (and e!1474658 tp!729993))))

(assert (=> b!2300753 (= tp!729867 e!1474659)))

(assert (= b!2301268 b!2301269))

(assert (= b!2301267 b!2301268))

(assert (= (and b!2300753 ((_ is Cons!27388) (t!205812 rules!1750))) b!2301267))

(declare-fun m!2728631 () Bool)

(assert (=> b!2301268 m!2728631))

(declare-fun m!2728633 () Bool)

(assert (=> b!2301268 m!2728633))

(declare-fun b!2301283 () Bool)

(declare-fun b_free!69433 () Bool)

(declare-fun b_next!70137 () Bool)

(assert (=> b!2301283 (= b_free!69433 (not b_next!70137))))

(declare-fun tp!730009 () Bool)

(declare-fun b_and!183285 () Bool)

(assert (=> b!2301283 (= tp!730009 b_and!183285)))

(declare-fun b_free!69435 () Bool)

(declare-fun b_next!70139 () Bool)

(assert (=> b!2301283 (= b_free!69435 (not b_next!70139))))

(declare-fun t!205859 () Bool)

(declare-fun tb!137595 () Bool)

(assert (=> (and b!2301283 (= (toChars!6058 (transformation!4389 (rule!6735 (h!32788 (t!205811 tokens!456))))) (toChars!6058 (transformation!4389 (rule!6735 (head!5030 tokens!456))))) t!205859) tb!137595))

(declare-fun result!167730 () Bool)

(assert (= result!167730 result!167666))

(assert (=> d!680638 t!205859))

(declare-fun t!205861 () Bool)

(declare-fun tb!137597 () Bool)

(assert (=> (and b!2301283 (= (toChars!6058 (transformation!4389 (rule!6735 (h!32788 (t!205811 tokens!456))))) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456))))) t!205861) tb!137597))

(declare-fun result!167732 () Bool)

(assert (= result!167732 result!167694))

(assert (=> b!2300905 t!205861))

(assert (=> d!680794 t!205861))

(declare-fun b_and!183287 () Bool)

(declare-fun tp!730005 () Bool)

(assert (=> b!2301283 (= tp!730005 (and (=> t!205859 result!167730) (=> t!205861 result!167732) b_and!183287))))

(declare-fun e!1474679 () Bool)

(declare-fun e!1474677 () Bool)

(declare-fun b!2301281 () Bool)

(declare-fun tp!730006 () Bool)

(assert (=> b!2301281 (= e!1474677 (and (inv!21 (value!138906 (h!32788 (t!205811 tokens!456)))) e!1474679 tp!730006))))

(declare-fun e!1474675 () Bool)

(assert (=> b!2300741 (= tp!729870 e!1474675)))

(declare-fun e!1474678 () Bool)

(assert (=> b!2301283 (= e!1474678 (and tp!730009 tp!730005))))

(declare-fun b!2301282 () Bool)

(declare-fun tp!730007 () Bool)

(assert (=> b!2301282 (= e!1474679 (and tp!730007 (inv!37013 (tag!4879 (rule!6735 (h!32788 (t!205811 tokens!456))))) (inv!37016 (transformation!4389 (rule!6735 (h!32788 (t!205811 tokens!456))))) e!1474678))))

(declare-fun b!2301280 () Bool)

(declare-fun tp!730008 () Bool)

(assert (=> b!2301280 (= e!1474675 (and (inv!37017 (h!32788 (t!205811 tokens!456))) e!1474677 tp!730008))))

(assert (= b!2301282 b!2301283))

(assert (= b!2301281 b!2301282))

(assert (= b!2301280 b!2301281))

(assert (= (and b!2300741 ((_ is Cons!27387) (t!205811 tokens!456))) b!2301280))

(declare-fun m!2728635 () Bool)

(assert (=> b!2301281 m!2728635))

(declare-fun m!2728637 () Bool)

(assert (=> b!2301282 m!2728637))

(declare-fun m!2728639 () Bool)

(assert (=> b!2301282 m!2728639))

(declare-fun m!2728641 () Bool)

(assert (=> b!2301280 m!2728641))

(declare-fun b!2301284 () Bool)

(declare-fun e!1474680 () Bool)

(declare-fun tp!730010 () Bool)

(assert (=> b!2301284 (= e!1474680 (and tp_is_empty!10695 tp!730010))))

(assert (=> b!2300740 (= tp!729874 e!1474680)))

(assert (= (and b!2300740 ((_ is Cons!27386) (originalCharacters!5159 (h!32788 tokens!456)))) b!2301284))

(declare-fun b!2301285 () Bool)

(declare-fun e!1474681 () Bool)

(declare-fun tp!730011 () Bool)

(assert (=> b!2301285 (= e!1474681 (and tp_is_empty!10695 tp!730011))))

(assert (=> b!2300745 (= tp!729882 e!1474681)))

(assert (= (and b!2300745 ((_ is Cons!27386) (t!205810 otherP!12))) b!2301285))

(declare-fun b!2301289 () Bool)

(declare-fun e!1474682 () Bool)

(declare-fun tp!730012 () Bool)

(declare-fun tp!730015 () Bool)

(assert (=> b!2301289 (= e!1474682 (and tp!730012 tp!730015))))

(declare-fun b!2301286 () Bool)

(assert (=> b!2301286 (= e!1474682 tp_is_empty!10695)))

(declare-fun b!2301287 () Bool)

(declare-fun tp!730013 () Bool)

(declare-fun tp!730016 () Bool)

(assert (=> b!2301287 (= e!1474682 (and tp!730013 tp!730016))))

(assert (=> b!2300743 (= tp!729866 e!1474682)))

(declare-fun b!2301288 () Bool)

(declare-fun tp!730014 () Bool)

(assert (=> b!2301288 (= e!1474682 tp!730014)))

(assert (= (and b!2300743 ((_ is ElementMatch!6737) (regex!4389 (h!32789 rules!1750)))) b!2301286))

(assert (= (and b!2300743 ((_ is Concat!11289) (regex!4389 (h!32789 rules!1750)))) b!2301287))

(assert (= (and b!2300743 ((_ is Star!6737) (regex!4389 (h!32789 rules!1750)))) b!2301288))

(assert (= (and b!2300743 ((_ is Union!6737) (regex!4389 (h!32789 rules!1750)))) b!2301289))

(declare-fun b!2301290 () Bool)

(declare-fun e!1474683 () Bool)

(declare-fun tp!730017 () Bool)

(assert (=> b!2301290 (= e!1474683 (and tp_is_empty!10695 tp!730017))))

(assert (=> b!2300746 (= tp!729880 e!1474683)))

(assert (= (and b!2300746 ((_ is Cons!27386) (t!205810 suffix!886))) b!2301290))

(declare-fun b_lambda!73289 () Bool)

(assert (= b_lambda!73279 (or (and b!2300763 b_free!69407) (and b!2300759 b_free!69415 (= (toChars!6058 (transformation!4389 r!2363)) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))))) (and b!2300749 b_free!69411 (= (toChars!6058 (transformation!4389 (h!32789 rules!1750))) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))))) (and b!2301283 b_free!69435 (= (toChars!6058 (transformation!4389 (rule!6735 (h!32788 (t!205811 tokens!456))))) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))))) (and b!2301269 b_free!69431 (= (toChars!6058 (transformation!4389 (h!32789 (t!205812 rules!1750)))) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))))) (and b!2300764 b_free!69419 (= (toChars!6058 (transformation!4389 otherR!12)) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))))) b_lambda!73289)))

(declare-fun b_lambda!73291 () Bool)

(assert (= b_lambda!73287 (or (and b!2300763 b_free!69407) (and b!2300759 b_free!69415 (= (toChars!6058 (transformation!4389 r!2363)) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))))) (and b!2300749 b_free!69411 (= (toChars!6058 (transformation!4389 (h!32789 rules!1750))) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))))) (and b!2301283 b_free!69435 (= (toChars!6058 (transformation!4389 (rule!6735 (h!32788 (t!205811 tokens!456))))) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))))) (and b!2301269 b_free!69431 (= (toChars!6058 (transformation!4389 (h!32789 (t!205812 rules!1750)))) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))))) (and b!2300764 b_free!69419 (= (toChars!6058 (transformation!4389 otherR!12)) (toChars!6058 (transformation!4389 (rule!6735 (h!32788 tokens!456)))))) b_lambda!73291)))

(check-sat (not b!2301257) (not b!2301014) (not bm!137042) (not b!2301258) (not d!680714) (not d!680776) (not b!2301236) (not b!2301187) (not b!2300894) (not d!680656) (not d!680782) (not b!2301254) b_and!183283 (not d!680794) b_and!183273 (not d!680716) (not b!2301024) (not b!2301287) (not d!680732) (not b_next!70111) (not b_next!70139) b_and!183275 (not b!2301026) (not d!680660) (not b_next!70133) (not d!680710) (not d!680734) (not b_lambda!73273) b_and!183221 (not d!680676) (not b!2301182) (not b!2301201) b_and!183217 (not b!2301289) (not b!2301268) (not tb!137551) (not d!680726) (not b!2301003) (not b!2301288) (not b!2300853) (not b!2301221) (not b!2301252) (not b!2301281) (not b!2300983) (not b!2301184) (not d!680778) (not d!680796) (not b!2301190) (not b!2301226) (not b_next!70119) (not b!2301224) (not b!2301225) (not b!2300979) b_and!183277 (not b!2301282) (not d!680706) (not b!2301250) (not d!680712) (not b!2301196) (not d!680686) (not d!680720) (not b!2300906) (not b!2301194) (not b!2301223) (not b!2301248) (not b_next!70109) b_and!183287 (not b!2300811) (not d!680632) (not d!680722) (not b!2301018) (not b!2301027) (not b!2300918) (not b!2300836) (not d!680798) (not b!2301256) (not b!2301001) (not b!2300907) (not b!2301183) (not b!2301180) (not b!2300922) (not b!2301186) (not b_next!70117) (not d!680724) b_and!183281 b_and!183285 (not d!680788) (not b!2301231) (not b!2301284) (not b!2301031) (not b!2300978) (not d!680636) (not b!2301195) (not b_next!70115) (not b!2301285) (not b!2301191) (not b!2301249) (not b!2300981) (not d!680780) (not b!2300921) b_and!183279 (not d!680664) (not b_next!70123) (not b_next!70135) (not b!2301280) (not b!2300837) (not d!680638) (not tb!137575) (not b!2301002) (not b!2301253) (not b!2301290) (not b!2300838) (not b!2300905) (not b_lambda!73291) (not d!680698) tp_is_empty!10695 (not b_next!70113) (not d!680792) (not b!2301192) (not b!2301222) (not b!2300893) b_and!183209 (not bm!137045) (not b!2300991) (not b_next!70121) b_and!183213 (not b!2301227) (not b!2301267) (not d!680730) (not b_lambda!73289) (not b_next!70137) (not b!2300984) (not b!2300778) (not b!2301228))
(check-sat b_and!183275 (not b_next!70133) b_and!183221 b_and!183217 (not b_next!70119) b_and!183277 (not b_next!70117) (not b_next!70115) (not b_next!70113) b_and!183209 (not b_next!70121) b_and!183213 (not b_next!70137) b_and!183273 b_and!183283 (not b_next!70111) (not b_next!70139) (not b_next!70109) b_and!183287 b_and!183281 b_and!183285 b_and!183279 (not b_next!70123) (not b_next!70135))
