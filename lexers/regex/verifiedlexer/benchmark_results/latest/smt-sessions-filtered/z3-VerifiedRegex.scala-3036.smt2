; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181566 () Bool)

(assert start!181566)

(declare-fun b!1829642 () Bool)

(declare-fun b_free!51087 () Bool)

(declare-fun b_next!51791 () Bool)

(assert (=> b!1829642 (= b_free!51087 (not b_next!51791))))

(declare-fun tp!517587 () Bool)

(declare-fun b_and!142317 () Bool)

(assert (=> b!1829642 (= tp!517587 b_and!142317)))

(declare-fun b_free!51089 () Bool)

(declare-fun b_next!51793 () Bool)

(assert (=> b!1829642 (= b_free!51089 (not b_next!51793))))

(declare-fun tp!517583 () Bool)

(declare-fun b_and!142319 () Bool)

(assert (=> b!1829642 (= tp!517583 b_and!142319)))

(declare-fun b!1829651 () Bool)

(declare-fun b_free!51091 () Bool)

(declare-fun b_next!51795 () Bool)

(assert (=> b!1829651 (= b_free!51091 (not b_next!51795))))

(declare-fun tp!517588 () Bool)

(declare-fun b_and!142321 () Bool)

(assert (=> b!1829651 (= tp!517588 b_and!142321)))

(declare-fun b_free!51093 () Bool)

(declare-fun b_next!51797 () Bool)

(assert (=> b!1829651 (= b_free!51093 (not b_next!51797))))

(declare-fun tp!517582 () Bool)

(declare-fun b_and!142323 () Bool)

(assert (=> b!1829651 (= tp!517582 b_and!142323)))

(declare-fun b!1829647 () Bool)

(declare-fun b_free!51095 () Bool)

(declare-fun b_next!51799 () Bool)

(assert (=> b!1829647 (= b_free!51095 (not b_next!51799))))

(declare-fun tp!517586 () Bool)

(declare-fun b_and!142325 () Bool)

(assert (=> b!1829647 (= tp!517586 b_and!142325)))

(declare-fun b_free!51097 () Bool)

(declare-fun b_next!51801 () Bool)

(assert (=> b!1829647 (= b_free!51097 (not b_next!51801))))

(declare-fun tp!517580 () Bool)

(declare-fun b_and!142327 () Bool)

(assert (=> b!1829647 (= tp!517580 b_and!142327)))

(declare-fun b!1829635 () Bool)

(declare-fun e!1169452 () Bool)

(declare-fun e!1169453 () Bool)

(assert (=> b!1829635 (= e!1169452 e!1169453)))

(declare-fun res!822805 () Bool)

(assert (=> b!1829635 (=> (not res!822805) (not e!1169453))))

(declare-datatypes ((List!20179 0))(
  ( (Nil!20109) (Cons!20109 (h!25510 (_ BitVec 16)) (t!170544 List!20179)) )
))
(declare-datatypes ((TokenValue!3723 0))(
  ( (FloatLiteralValue!7446 (text!26506 List!20179)) (TokenValueExt!3722 (__x!12748 Int)) (Broken!18615 (value!113181 List!20179)) (Object!3792) (End!3723) (Def!3723) (Underscore!3723) (Match!3723) (Else!3723) (Error!3723) (Case!3723) (If!3723) (Extends!3723) (Abstract!3723) (Class!3723) (Val!3723) (DelimiterValue!7446 (del!3783 List!20179)) (KeywordValue!3729 (value!113182 List!20179)) (CommentValue!7446 (value!113183 List!20179)) (WhitespaceValue!7446 (value!113184 List!20179)) (IndentationValue!3723 (value!113185 List!20179)) (String!22946) (Int32!3723) (Broken!18616 (value!113186 List!20179)) (Boolean!3724) (Unit!34778) (OperatorValue!3726 (op!3783 List!20179)) (IdentifierValue!7446 (value!113187 List!20179)) (IdentifierValue!7447 (value!113188 List!20179)) (WhitespaceValue!7447 (value!113189 List!20179)) (True!7446) (False!7446) (Broken!18617 (value!113190 List!20179)) (Broken!18618 (value!113191 List!20179)) (True!7447) (RightBrace!3723) (RightBracket!3723) (Colon!3723) (Null!3723) (Comma!3723) (LeftBracket!3723) (False!7447) (LeftBrace!3723) (ImaginaryLiteralValue!3723 (text!26507 List!20179)) (StringLiteralValue!11169 (value!113192 List!20179)) (EOFValue!3723 (value!113193 List!20179)) (IdentValue!3723 (value!113194 List!20179)) (DelimiterValue!7447 (value!113195 List!20179)) (DedentValue!3723 (value!113196 List!20179)) (NewLineValue!3723 (value!113197 List!20179)) (IntegerValue!11169 (value!113198 (_ BitVec 32)) (text!26508 List!20179)) (IntegerValue!11170 (value!113199 Int) (text!26509 List!20179)) (Times!3723) (Or!3723) (Equal!3723) (Minus!3723) (Broken!18619 (value!113200 List!20179)) (And!3723) (Div!3723) (LessEqual!3723) (Mod!3723) (Concat!8684) (Not!3723) (Plus!3723) (SpaceValue!3723 (value!113201 List!20179)) (IntegerValue!11171 (value!113202 Int) (text!26510 List!20179)) (StringLiteralValue!11170 (text!26511 List!20179)) (FloatLiteralValue!7447 (text!26512 List!20179)) (BytesLiteralValue!3723 (value!113203 List!20179)) (CommentValue!7447 (value!113204 List!20179)) (StringLiteralValue!11171 (value!113205 List!20179)) (ErrorTokenValue!3723 (msg!3784 List!20179)) )
))
(declare-datatypes ((C!10096 0))(
  ( (C!10097 (val!5644 Int)) )
))
(declare-datatypes ((List!20180 0))(
  ( (Nil!20110) (Cons!20110 (h!25511 C!10096) (t!170545 List!20180)) )
))
(declare-datatypes ((IArray!13335 0))(
  ( (IArray!13336 (innerList!6725 List!20180)) )
))
(declare-datatypes ((Conc!6665 0))(
  ( (Node!6665 (left!16079 Conc!6665) (right!16409 Conc!6665) (csize!13560 Int) (cheight!6876 Int)) (Leaf!9702 (xs!9541 IArray!13335) (csize!13561 Int)) (Empty!6665) )
))
(declare-datatypes ((BalanceConc!13274 0))(
  ( (BalanceConc!13275 (c!298384 Conc!6665)) )
))
(declare-datatypes ((TokenValueInjection!7106 0))(
  ( (TokenValueInjection!7107 (toValue!5176 Int) (toChars!5035 Int)) )
))
(declare-datatypes ((String!22947 0))(
  ( (String!22948 (value!113206 String)) )
))
(declare-datatypes ((Regex!4961 0))(
  ( (ElementMatch!4961 (c!298385 C!10096)) (Concat!8685 (regOne!10434 Regex!4961) (regTwo!10434 Regex!4961)) (EmptyExpr!4961) (Star!4961 (reg!5290 Regex!4961)) (EmptyLang!4961) (Union!4961 (regOne!10435 Regex!4961) (regTwo!10435 Regex!4961)) )
))
(declare-datatypes ((Rule!7066 0))(
  ( (Rule!7067 (regex!3633 Regex!4961) (tag!4047 String!22947) (isSeparator!3633 Bool) (transformation!3633 TokenValueInjection!7106)) )
))
(declare-datatypes ((Token!6820 0))(
  ( (Token!6821 (value!113207 TokenValue!3723) (rule!5801 Rule!7066) (size!15947 Int) (originalCharacters!4441 List!20180)) )
))
(declare-datatypes ((tuple2!19582 0))(
  ( (tuple2!19583 (_1!11193 Token!6820) (_2!11193 List!20180)) )
))
(declare-datatypes ((Option!4213 0))(
  ( (None!4212) (Some!4212 (v!25783 tuple2!19582)) )
))
(declare-fun lt!710467 () Option!4213)

(declare-datatypes ((LexerInterface!3262 0))(
  ( (LexerInterfaceExt!3259 (__x!12749 Int)) (Lexer!3260) )
))
(declare-fun thiss!28068 () LexerInterface!3262)

(declare-datatypes ((List!20181 0))(
  ( (Nil!20111) (Cons!20111 (h!25512 Rule!7066) (t!170546 List!20181)) )
))
(declare-fun rules!4538 () List!20181)

(declare-fun input!3612 () List!20180)

(declare-fun maxPrefix!1810 (LexerInterface!3262 List!20181 List!20180) Option!4213)

(assert (=> b!1829635 (= res!822805 (= (maxPrefix!1810 thiss!28068 rules!4538 input!3612) lt!710467))))

(declare-fun token!556 () Token!6820)

(declare-fun suffix!1667 () List!20180)

(assert (=> b!1829635 (= lt!710467 (Some!4212 (tuple2!19583 token!556 suffix!1667)))))

(declare-fun b!1829636 () Bool)

(declare-fun e!1169451 () Bool)

(declare-fun lt!710476 () Regex!4961)

(declare-datatypes ((List!20182 0))(
  ( (Nil!20112) (Cons!20112 (h!25513 Regex!4961) (t!170547 List!20182)) )
))
(declare-fun lt!710477 () List!20182)

(declare-fun generalisedUnion!476 (List!20182) Regex!4961)

(assert (=> b!1829636 (= e!1169451 (= lt!710476 (generalisedUnion!476 lt!710477)))))

(declare-fun b!1829637 () Bool)

(declare-fun e!1169454 () Bool)

(declare-fun e!1169455 () Bool)

(assert (=> b!1829637 (= e!1169454 e!1169455)))

(declare-fun res!822813 () Bool)

(assert (=> b!1829637 (=> res!822813 e!1169455)))

(declare-fun lt!710468 () Option!4213)

(assert (=> b!1829637 (= res!822813 (not (= lt!710468 lt!710467)))))

(declare-fun lt!710478 () TokenValue!3723)

(declare-fun lt!710473 () Int)

(declare-fun lt!710474 () List!20180)

(declare-fun rule!559 () Rule!7066)

(assert (=> b!1829637 (= lt!710468 (Some!4212 (tuple2!19583 (Token!6821 lt!710478 rule!559 lt!710473 lt!710474) suffix!1667)))))

(declare-fun maxPrefixOneRule!1171 (LexerInterface!3262 Rule!7066 List!20180) Option!4213)

(assert (=> b!1829637 (= lt!710468 (maxPrefixOneRule!1171 thiss!28068 rule!559 input!3612))))

(declare-fun size!15948 (List!20180) Int)

(assert (=> b!1829637 (= lt!710473 (size!15948 lt!710474))))

(declare-fun apply!5421 (TokenValueInjection!7106 BalanceConc!13274) TokenValue!3723)

(declare-fun seqFromList!2590 (List!20180) BalanceConc!13274)

(assert (=> b!1829637 (= lt!710478 (apply!5421 (transformation!3633 rule!559) (seqFromList!2590 lt!710474)))))

(declare-datatypes ((Unit!34779 0))(
  ( (Unit!34780) )
))
(declare-fun lt!710469 () Unit!34779)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!541 (LexerInterface!3262 List!20181 List!20180 List!20180 List!20180 Rule!7066) Unit!34779)

(assert (=> b!1829637 (= lt!710469 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!541 thiss!28068 rules!4538 lt!710474 input!3612 suffix!1667 rule!559))))

(declare-fun b!1829638 () Bool)

(declare-fun e!1169460 () Bool)

(declare-fun tp_is_empty!8157 () Bool)

(declare-fun tp!517589 () Bool)

(assert (=> b!1829638 (= e!1169460 (and tp_is_empty!8157 tp!517589))))

(declare-fun b!1829639 () Bool)

(declare-fun e!1169457 () Bool)

(declare-fun tp!517584 () Bool)

(assert (=> b!1829639 (= e!1169457 (and tp_is_empty!8157 tp!517584))))

(declare-fun e!1169465 () Bool)

(declare-fun tp!517592 () Bool)

(declare-fun e!1169464 () Bool)

(declare-fun b!1829640 () Bool)

(declare-fun inv!21 (TokenValue!3723) Bool)

(assert (=> b!1829640 (= e!1169465 (and (inv!21 (value!113207 token!556)) e!1169464 tp!517592))))

(declare-fun b!1829641 () Bool)

(declare-fun e!1169448 () Bool)

(assert (=> b!1829641 (= e!1169448 (not e!1169454))))

(declare-fun res!822808 () Bool)

(assert (=> b!1829641 (=> res!822808 e!1169454)))

(declare-fun matchR!2424 (Regex!4961 List!20180) Bool)

(assert (=> b!1829641 (= res!822808 (not (matchR!2424 (regex!3633 rule!559) lt!710474)))))

(declare-fun ruleValid!1123 (LexerInterface!3262 Rule!7066) Bool)

(assert (=> b!1829641 (ruleValid!1123 thiss!28068 rule!559)))

(declare-fun lt!710475 () Unit!34779)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!642 (LexerInterface!3262 Rule!7066 List!20181) Unit!34779)

(assert (=> b!1829641 (= lt!710475 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!642 thiss!28068 rule!559 rules!4538))))

(declare-fun e!1169458 () Bool)

(assert (=> b!1829642 (= e!1169458 (and tp!517587 tp!517583))))

(declare-fun b!1829643 () Bool)

(assert (=> b!1829643 (= e!1169453 e!1169448)))

(declare-fun res!822811 () Bool)

(assert (=> b!1829643 (=> (not res!822811) (not e!1169448))))

(declare-fun ++!5457 (List!20180 List!20180) List!20180)

(assert (=> b!1829643 (= res!822811 (= input!3612 (++!5457 lt!710474 suffix!1667)))))

(declare-fun list!8173 (BalanceConc!13274) List!20180)

(declare-fun charsOf!2276 (Token!6820) BalanceConc!13274)

(assert (=> b!1829643 (= lt!710474 (list!8173 (charsOf!2276 token!556)))))

(declare-fun b!1829644 () Bool)

(declare-fun res!822812 () Bool)

(assert (=> b!1829644 (=> (not res!822812) (not e!1169452))))

(declare-fun contains!3704 (List!20181 Rule!7066) Bool)

(assert (=> b!1829644 (= res!822812 (contains!3704 rules!4538 rule!559))))

(declare-fun b!1829645 () Bool)

(declare-fun e!1169462 () Bool)

(declare-fun e!1169459 () Bool)

(declare-fun tp!517591 () Bool)

(assert (=> b!1829645 (= e!1169462 (and e!1169459 tp!517591))))

(declare-fun b!1829646 () Bool)

(declare-fun res!822803 () Bool)

(assert (=> b!1829646 (=> (not res!822803) (not e!1169452))))

(declare-fun isEmpty!12699 (List!20181) Bool)

(assert (=> b!1829646 (= res!822803 (not (isEmpty!12699 rules!4538)))))

(declare-fun e!1169463 () Bool)

(declare-fun tp!517590 () Bool)

(declare-fun e!1169450 () Bool)

(declare-fun b!1829648 () Bool)

(declare-fun inv!26168 (String!22947) Bool)

(declare-fun inv!26171 (TokenValueInjection!7106) Bool)

(assert (=> b!1829648 (= e!1169450 (and tp!517590 (inv!26168 (tag!4047 rule!559)) (inv!26171 (transformation!3633 rule!559)) e!1169463))))

(declare-fun b!1829649 () Bool)

(declare-fun res!822814 () Bool)

(assert (=> b!1829649 (=> (not res!822814) (not e!1169453))))

(assert (=> b!1829649 (= res!822814 (= (rule!5801 token!556) rule!559))))

(declare-fun tp!517585 () Bool)

(declare-fun b!1829650 () Bool)

(assert (=> b!1829650 (= e!1169464 (and tp!517585 (inv!26168 (tag!4047 (rule!5801 token!556))) (inv!26171 (transformation!3633 (rule!5801 token!556))) e!1169458))))

(assert (=> b!1829651 (= e!1169463 (and tp!517588 tp!517582))))

(declare-fun b!1829652 () Bool)

(declare-fun res!822804 () Bool)

(assert (=> b!1829652 (=> res!822804 e!1169451)))

(declare-fun lambda!71834 () Int)

(declare-fun forall!4329 (List!20182 Int) Bool)

(assert (=> b!1829652 (= res!822804 (not (forall!4329 lt!710477 lambda!71834)))))

(declare-fun b!1829653 () Bool)

(declare-fun e!1169466 () Bool)

(assert (=> b!1829653 (= e!1169455 e!1169466)))

(declare-fun res!822806 () Bool)

(assert (=> b!1829653 (=> res!822806 e!1169466)))

(declare-fun lt!710471 () List!20182)

(assert (=> b!1829653 (= res!822806 (not (= lt!710476 (generalisedUnion!476 lt!710471))))))

(declare-fun rulesRegex!953 (LexerInterface!3262 List!20181) Regex!4961)

(assert (=> b!1829653 (= lt!710476 (rulesRegex!953 thiss!28068 rules!4538))))

(declare-fun lambda!71833 () Int)

(declare-fun map!4168 (List!20181 Int) List!20182)

(assert (=> b!1829653 (= lt!710471 (map!4168 rules!4538 lambda!71833))))

(declare-fun lt!710472 () Unit!34779)

(declare-fun lemma!521 (List!20180 Rule!7066 List!20181 List!20180 LexerInterface!3262 Token!6820 List!20181) Unit!34779)

(assert (=> b!1829653 (= lt!710472 (lemma!521 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1829654 () Bool)

(declare-fun res!822807 () Bool)

(assert (=> b!1829654 (=> (not res!822807) (not e!1169452))))

(declare-fun rulesInvariant!2931 (LexerInterface!3262 List!20181) Bool)

(assert (=> b!1829654 (= res!822807 (rulesInvariant!2931 thiss!28068 rules!4538))))

(declare-fun e!1169468 () Bool)

(assert (=> b!1829647 (= e!1169468 (and tp!517586 tp!517580))))

(declare-fun res!822809 () Bool)

(assert (=> start!181566 (=> (not res!822809) (not e!1169452))))

(get-info :version)

(assert (=> start!181566 (= res!822809 ((_ is Lexer!3260) thiss!28068))))

(assert (=> start!181566 e!1169452))

(assert (=> start!181566 e!1169460))

(assert (=> start!181566 true))

(assert (=> start!181566 e!1169462))

(declare-fun inv!26172 (Token!6820) Bool)

(assert (=> start!181566 (and (inv!26172 token!556) e!1169465)))

(assert (=> start!181566 e!1169450))

(assert (=> start!181566 e!1169457))

(declare-fun b!1829655 () Bool)

(declare-fun tp!517581 () Bool)

(assert (=> b!1829655 (= e!1169459 (and tp!517581 (inv!26168 (tag!4047 (h!25512 rules!4538))) (inv!26171 (transformation!3633 (h!25512 rules!4538))) e!1169468))))

(declare-fun b!1829656 () Bool)

(assert (=> b!1829656 (= e!1169466 e!1169451)))

(declare-fun res!822810 () Bool)

(assert (=> b!1829656 (=> res!822810 e!1169451)))

(declare-fun contains!3705 (List!20182 Regex!4961) Bool)

(assert (=> b!1829656 (= res!822810 (not (contains!3705 lt!710477 (regex!3633 rule!559))))))

(assert (=> b!1829656 (= lt!710477 (map!4168 rules!4538 lambda!71833))))

(declare-fun lt!710470 () Unit!34779)

(declare-fun lemma!522 (List!20180 Rule!7066 List!20181 List!20180 LexerInterface!3262 Token!6820 List!20181) Unit!34779)

(assert (=> b!1829656 (= lt!710470 (lemma!522 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (= (and start!181566 res!822809) b!1829646))

(assert (= (and b!1829646 res!822803) b!1829654))

(assert (= (and b!1829654 res!822807) b!1829644))

(assert (= (and b!1829644 res!822812) b!1829635))

(assert (= (and b!1829635 res!822805) b!1829649))

(assert (= (and b!1829649 res!822814) b!1829643))

(assert (= (and b!1829643 res!822811) b!1829641))

(assert (= (and b!1829641 (not res!822808)) b!1829637))

(assert (= (and b!1829637 (not res!822813)) b!1829653))

(assert (= (and b!1829653 (not res!822806)) b!1829656))

(assert (= (and b!1829656 (not res!822810)) b!1829652))

(assert (= (and b!1829652 (not res!822804)) b!1829636))

(assert (= (and start!181566 ((_ is Cons!20110) suffix!1667)) b!1829638))

(assert (= b!1829655 b!1829647))

(assert (= b!1829645 b!1829655))

(assert (= (and start!181566 ((_ is Cons!20111) rules!4538)) b!1829645))

(assert (= b!1829650 b!1829642))

(assert (= b!1829640 b!1829650))

(assert (= start!181566 b!1829640))

(assert (= b!1829648 b!1829651))

(assert (= start!181566 b!1829648))

(assert (= (and start!181566 ((_ is Cons!20110) input!3612)) b!1829639))

(declare-fun m!2257407 () Bool)

(assert (=> b!1829653 m!2257407))

(declare-fun m!2257409 () Bool)

(assert (=> b!1829653 m!2257409))

(declare-fun m!2257411 () Bool)

(assert (=> b!1829653 m!2257411))

(declare-fun m!2257413 () Bool)

(assert (=> b!1829653 m!2257413))

(declare-fun m!2257415 () Bool)

(assert (=> b!1829648 m!2257415))

(declare-fun m!2257417 () Bool)

(assert (=> b!1829648 m!2257417))

(declare-fun m!2257419 () Bool)

(assert (=> b!1829635 m!2257419))

(declare-fun m!2257421 () Bool)

(assert (=> b!1829656 m!2257421))

(assert (=> b!1829656 m!2257411))

(declare-fun m!2257423 () Bool)

(assert (=> b!1829656 m!2257423))

(declare-fun m!2257425 () Bool)

(assert (=> b!1829643 m!2257425))

(declare-fun m!2257427 () Bool)

(assert (=> b!1829643 m!2257427))

(assert (=> b!1829643 m!2257427))

(declare-fun m!2257429 () Bool)

(assert (=> b!1829643 m!2257429))

(declare-fun m!2257431 () Bool)

(assert (=> b!1829636 m!2257431))

(declare-fun m!2257433 () Bool)

(assert (=> b!1829655 m!2257433))

(declare-fun m!2257435 () Bool)

(assert (=> b!1829655 m!2257435))

(declare-fun m!2257437 () Bool)

(assert (=> b!1829640 m!2257437))

(declare-fun m!2257439 () Bool)

(assert (=> start!181566 m!2257439))

(declare-fun m!2257441 () Bool)

(assert (=> b!1829644 m!2257441))

(declare-fun m!2257443 () Bool)

(assert (=> b!1829652 m!2257443))

(declare-fun m!2257445 () Bool)

(assert (=> b!1829637 m!2257445))

(declare-fun m!2257447 () Bool)

(assert (=> b!1829637 m!2257447))

(declare-fun m!2257449 () Bool)

(assert (=> b!1829637 m!2257449))

(assert (=> b!1829637 m!2257447))

(declare-fun m!2257451 () Bool)

(assert (=> b!1829637 m!2257451))

(declare-fun m!2257453 () Bool)

(assert (=> b!1829637 m!2257453))

(declare-fun m!2257455 () Bool)

(assert (=> b!1829650 m!2257455))

(declare-fun m!2257457 () Bool)

(assert (=> b!1829650 m!2257457))

(declare-fun m!2257459 () Bool)

(assert (=> b!1829646 m!2257459))

(declare-fun m!2257461 () Bool)

(assert (=> b!1829654 m!2257461))

(declare-fun m!2257463 () Bool)

(assert (=> b!1829641 m!2257463))

(declare-fun m!2257465 () Bool)

(assert (=> b!1829641 m!2257465))

(declare-fun m!2257467 () Bool)

(assert (=> b!1829641 m!2257467))

(check-sat (not b_next!51793) (not b!1829636) (not b_next!51801) (not b!1829639) b_and!142319 (not b!1829648) (not b!1829650) (not b!1829645) (not b!1829637) (not b!1829655) (not b_next!51797) (not b_next!51799) (not b!1829656) (not b!1829654) (not b_next!51791) (not b!1829653) b_and!142327 (not b!1829644) (not b!1829646) (not b!1829643) (not b!1829635) b_and!142321 (not start!181566) (not b!1829652) (not b!1829640) (not b_next!51795) b_and!142325 tp_is_empty!8157 (not b!1829641) (not b!1829638) b_and!142317 b_and!142323)
(check-sat (not b_next!51793) (not b_next!51801) b_and!142319 b_and!142321 (not b_next!51795) (not b_next!51797) b_and!142325 (not b_next!51799) (not b_next!51791) b_and!142327 b_and!142317 b_and!142323)
