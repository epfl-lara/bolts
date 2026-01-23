; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180366 () Bool)

(assert start!180366)

(declare-fun b!1821703 () Bool)

(declare-fun b_free!50631 () Bool)

(declare-fun b_next!51335 () Bool)

(assert (=> b!1821703 (= b_free!50631 (not b_next!51335))))

(declare-fun tp!515119 () Bool)

(declare-fun b_and!141317 () Bool)

(assert (=> b!1821703 (= tp!515119 b_and!141317)))

(declare-fun b_free!50633 () Bool)

(declare-fun b_next!51337 () Bool)

(assert (=> b!1821703 (= b_free!50633 (not b_next!51337))))

(declare-fun tp!515115 () Bool)

(declare-fun b_and!141319 () Bool)

(assert (=> b!1821703 (= tp!515115 b_and!141319)))

(declare-fun b!1821692 () Bool)

(declare-fun b_free!50635 () Bool)

(declare-fun b_next!51339 () Bool)

(assert (=> b!1821692 (= b_free!50635 (not b_next!51339))))

(declare-fun tp!515117 () Bool)

(declare-fun b_and!141321 () Bool)

(assert (=> b!1821692 (= tp!515117 b_and!141321)))

(declare-fun b_free!50637 () Bool)

(declare-fun b_next!51341 () Bool)

(assert (=> b!1821692 (= b_free!50637 (not b_next!51341))))

(declare-fun tp!515114 () Bool)

(declare-fun b_and!141323 () Bool)

(assert (=> b!1821692 (= tp!515114 b_and!141323)))

(declare-fun b!1821710 () Bool)

(declare-fun b_free!50639 () Bool)

(declare-fun b_next!51343 () Bool)

(assert (=> b!1821710 (= b_free!50639 (not b_next!51343))))

(declare-fun tp!515116 () Bool)

(declare-fun b_and!141325 () Bool)

(assert (=> b!1821710 (= tp!515116 b_and!141325)))

(declare-fun b_free!50641 () Bool)

(declare-fun b_next!51345 () Bool)

(assert (=> b!1821710 (= b_free!50641 (not b_next!51345))))

(declare-fun tp!515120 () Bool)

(declare-fun b_and!141327 () Bool)

(assert (=> b!1821710 (= tp!515120 b_and!141327)))

(declare-fun b!1821693 () Bool)

(assert (=> b!1821693 true))

(declare-fun b!1821691 () Bool)

(declare-fun tp!515122 () Bool)

(declare-fun e!1164295 () Bool)

(declare-datatypes ((List!20052 0))(
  ( (Nil!19982) (Cons!19982 (h!25383 (_ BitVec 16)) (t!169929 List!20052)) )
))
(declare-datatypes ((TokenValue!3693 0))(
  ( (FloatLiteralValue!7386 (text!26296 List!20052)) (TokenValueExt!3692 (__x!12688 Int)) (Broken!18465 (value!112326 List!20052)) (Object!3762) (End!3693) (Def!3693) (Underscore!3693) (Match!3693) (Else!3693) (Error!3693) (Case!3693) (If!3693) (Extends!3693) (Abstract!3693) (Class!3693) (Val!3693) (DelimiterValue!7386 (del!3753 List!20052)) (KeywordValue!3699 (value!112327 List!20052)) (CommentValue!7386 (value!112328 List!20052)) (WhitespaceValue!7386 (value!112329 List!20052)) (IndentationValue!3693 (value!112330 List!20052)) (String!22796) (Int32!3693) (Broken!18466 (value!112331 List!20052)) (Boolean!3694) (Unit!34652) (OperatorValue!3696 (op!3753 List!20052)) (IdentifierValue!7386 (value!112332 List!20052)) (IdentifierValue!7387 (value!112333 List!20052)) (WhitespaceValue!7387 (value!112334 List!20052)) (True!7386) (False!7386) (Broken!18467 (value!112335 List!20052)) (Broken!18468 (value!112336 List!20052)) (True!7387) (RightBrace!3693) (RightBracket!3693) (Colon!3693) (Null!3693) (Comma!3693) (LeftBracket!3693) (False!7387) (LeftBrace!3693) (ImaginaryLiteralValue!3693 (text!26297 List!20052)) (StringLiteralValue!11079 (value!112337 List!20052)) (EOFValue!3693 (value!112338 List!20052)) (IdentValue!3693 (value!112339 List!20052)) (DelimiterValue!7387 (value!112340 List!20052)) (DedentValue!3693 (value!112341 List!20052)) (NewLineValue!3693 (value!112342 List!20052)) (IntegerValue!11079 (value!112343 (_ BitVec 32)) (text!26298 List!20052)) (IntegerValue!11080 (value!112344 Int) (text!26299 List!20052)) (Times!3693) (Or!3693) (Equal!3693) (Minus!3693) (Broken!18469 (value!112345 List!20052)) (And!3693) (Div!3693) (LessEqual!3693) (Mod!3693) (Concat!8624) (Not!3693) (Plus!3693) (SpaceValue!3693 (value!112346 List!20052)) (IntegerValue!11081 (value!112347 Int) (text!26300 List!20052)) (StringLiteralValue!11080 (text!26301 List!20052)) (FloatLiteralValue!7387 (text!26302 List!20052)) (BytesLiteralValue!3693 (value!112348 List!20052)) (CommentValue!7387 (value!112349 List!20052)) (StringLiteralValue!11081 (value!112350 List!20052)) (ErrorTokenValue!3693 (msg!3754 List!20052)) )
))
(declare-datatypes ((C!10036 0))(
  ( (C!10037 (val!5614 Int)) )
))
(declare-datatypes ((List!20053 0))(
  ( (Nil!19983) (Cons!19983 (h!25384 C!10036) (t!169930 List!20053)) )
))
(declare-datatypes ((IArray!13275 0))(
  ( (IArray!13276 (innerList!6695 List!20053)) )
))
(declare-datatypes ((Conc!6635 0))(
  ( (Node!6635 (left!16002 Conc!6635) (right!16332 Conc!6635) (csize!13500 Int) (cheight!6846 Int)) (Leaf!9657 (xs!9511 IArray!13275) (csize!13501 Int)) (Empty!6635) )
))
(declare-datatypes ((BalanceConc!13214 0))(
  ( (BalanceConc!13215 (c!297204 Conc!6635)) )
))
(declare-datatypes ((TokenValueInjection!7046 0))(
  ( (TokenValueInjection!7047 (toValue!5138 Int) (toChars!4997 Int)) )
))
(declare-datatypes ((Regex!4931 0))(
  ( (ElementMatch!4931 (c!297205 C!10036)) (Concat!8625 (regOne!10374 Regex!4931) (regTwo!10374 Regex!4931)) (EmptyExpr!4931) (Star!4931 (reg!5260 Regex!4931)) (EmptyLang!4931) (Union!4931 (regOne!10375 Regex!4931) (regTwo!10375 Regex!4931)) )
))
(declare-datatypes ((String!22797 0))(
  ( (String!22798 (value!112351 String)) )
))
(declare-datatypes ((Rule!7006 0))(
  ( (Rule!7007 (regex!3603 Regex!4931) (tag!4017 String!22797) (isSeparator!3603 Bool) (transformation!3603 TokenValueInjection!7046)) )
))
(declare-fun rule!559 () Rule!7006)

(declare-fun e!1164301 () Bool)

(declare-fun inv!26011 (String!22797) Bool)

(declare-fun inv!26014 (TokenValueInjection!7046) Bool)

(assert (=> b!1821691 (= e!1164295 (and tp!515122 (inv!26011 (tag!4017 rule!559)) (inv!26014 (transformation!3603 rule!559)) e!1164301))))

(assert (=> b!1821692 (= e!1164301 (and tp!515117 tp!515114))))

(declare-fun b!1821694 () Bool)

(declare-fun e!1164292 () Bool)

(declare-fun e!1164299 () Bool)

(assert (=> b!1821694 (= e!1164292 e!1164299)))

(declare-fun res!819249 () Bool)

(assert (=> b!1821694 (=> (not res!819249) (not e!1164299))))

(declare-datatypes ((LexerInterface!3232 0))(
  ( (LexerInterfaceExt!3229 (__x!12689 Int)) (Lexer!3230) )
))
(declare-fun thiss!28068 () LexerInterface!3232)

(declare-datatypes ((Token!6760 0))(
  ( (Token!6761 (value!112352 TokenValue!3693) (rule!5733 Rule!7006) (size!15849 Int) (originalCharacters!4411 List!20053)) )
))
(declare-datatypes ((tuple2!19490 0))(
  ( (tuple2!19491 (_1!11147 Token!6760) (_2!11147 List!20053)) )
))
(declare-datatypes ((Option!4183 0))(
  ( (None!4182) (Some!4182 (v!25723 tuple2!19490)) )
))
(declare-fun lt!707868 () Option!4183)

(declare-datatypes ((List!20054 0))(
  ( (Nil!19984) (Cons!19984 (h!25385 Rule!7006) (t!169931 List!20054)) )
))
(declare-fun rules!4538 () List!20054)

(declare-fun input!3612 () List!20053)

(declare-fun maxPrefix!1780 (LexerInterface!3232 List!20054 List!20053) Option!4183)

(assert (=> b!1821694 (= res!819249 (= (maxPrefix!1780 thiss!28068 rules!4538 input!3612) lt!707868))))

(declare-fun token!556 () Token!6760)

(declare-fun suffix!1667 () List!20053)

(assert (=> b!1821694 (= lt!707868 (Some!4182 (tuple2!19491 token!556 suffix!1667)))))

(declare-fun b!1821695 () Bool)

(declare-fun e!1164307 () Bool)

(declare-fun e!1164300 () Bool)

(declare-fun tp!515110 () Bool)

(assert (=> b!1821695 (= e!1164307 (and e!1164300 tp!515110))))

(declare-fun b!1821696 () Bool)

(declare-fun e!1164296 () Bool)

(declare-fun e!1164304 () Bool)

(assert (=> b!1821696 (= e!1164296 (not e!1164304))))

(declare-fun res!819260 () Bool)

(assert (=> b!1821696 (=> res!819260 e!1164304)))

(declare-fun lt!707870 () List!20053)

(declare-fun matchR!2396 (Regex!4931 List!20053) Bool)

(assert (=> b!1821696 (= res!819260 (not (matchR!2396 (regex!3603 rule!559) lt!707870)))))

(declare-fun ruleValid!1095 (LexerInterface!3232 Rule!7006) Bool)

(assert (=> b!1821696 (ruleValid!1095 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34653 0))(
  ( (Unit!34654) )
))
(declare-fun lt!707877 () Unit!34653)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!616 (LexerInterface!3232 Rule!7006 List!20054) Unit!34653)

(assert (=> b!1821696 (= lt!707877 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!616 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1821697 () Bool)

(declare-fun e!1164305 () Bool)

(declare-fun tp_is_empty!8097 () Bool)

(declare-fun tp!515121 () Bool)

(assert (=> b!1821697 (= e!1164305 (and tp_is_empty!8097 tp!515121))))

(declare-fun b!1821698 () Bool)

(declare-fun e!1164303 () Bool)

(declare-fun tp!515111 () Bool)

(assert (=> b!1821698 (= e!1164300 (and tp!515111 (inv!26011 (tag!4017 (h!25385 rules!4538))) (inv!26014 (transformation!3603 (h!25385 rules!4538))) e!1164303))))

(declare-fun b!1821699 () Bool)

(declare-fun e!1164291 () Bool)

(assert (=> b!1821699 (= e!1164291 true)))

(declare-datatypes ((List!20055 0))(
  ( (Nil!19985) (Cons!19985 (h!25386 Regex!4931) (t!169932 List!20055)) )
))
(declare-fun lt!707874 () List!20055)

(declare-fun lambda!71366 () Int)

(declare-fun exists!633 (List!20055 Int) Bool)

(assert (=> b!1821699 (exists!633 lt!707874 lambda!71366)))

(declare-fun lt!707875 () Unit!34653)

(declare-fun lemmaContainsThenExists!43 (List!20055 Regex!4931 Int) Unit!34653)

(assert (=> b!1821699 (= lt!707875 (lemmaContainsThenExists!43 lt!707874 (regex!3603 rule!559) lambda!71366))))

(declare-fun b!1821700 () Bool)

(declare-fun res!819253 () Bool)

(assert (=> b!1821700 (=> (not res!819253) (not e!1164292))))

(declare-fun rulesInvariant!2901 (LexerInterface!3232 List!20054) Bool)

(assert (=> b!1821700 (= res!819253 (rulesInvariant!2901 thiss!28068 rules!4538))))

(declare-fun b!1821701 () Bool)

(assert (=> b!1821701 (= e!1164299 e!1164296)))

(declare-fun res!819254 () Bool)

(assert (=> b!1821701 (=> (not res!819254) (not e!1164296))))

(declare-fun ++!5427 (List!20053 List!20053) List!20053)

(assert (=> b!1821701 (= res!819254 (= input!3612 (++!5427 lt!707870 suffix!1667)))))

(declare-fun list!8119 (BalanceConc!13214) List!20053)

(declare-fun charsOf!2246 (Token!6760) BalanceConc!13214)

(assert (=> b!1821701 (= lt!707870 (list!8119 (charsOf!2246 token!556)))))

(declare-fun e!1164309 () Bool)

(declare-fun e!1164302 () Bool)

(declare-fun tp!515118 () Bool)

(declare-fun b!1821702 () Bool)

(declare-fun inv!21 (TokenValue!3693) Bool)

(assert (=> b!1821702 (= e!1164302 (and (inv!21 (value!112352 token!556)) e!1164309 tp!515118))))

(assert (=> b!1821703 (= e!1164303 (and tp!515119 tp!515115))))

(declare-fun res!819250 () Bool)

(assert (=> start!180366 (=> (not res!819250) (not e!1164292))))

(get-info :version)

(assert (=> start!180366 (= res!819250 ((_ is Lexer!3230) thiss!28068))))

(assert (=> start!180366 e!1164292))

(assert (=> start!180366 e!1164305))

(assert (=> start!180366 true))

(assert (=> start!180366 e!1164307))

(declare-fun inv!26015 (Token!6760) Bool)

(assert (=> start!180366 (and (inv!26015 token!556) e!1164302)))

(assert (=> start!180366 e!1164295))

(declare-fun e!1164306 () Bool)

(assert (=> start!180366 e!1164306))

(declare-fun e!1164308 () Bool)

(assert (=> b!1821693 (= e!1164308 e!1164291)))

(declare-fun res!819251 () Bool)

(assert (=> b!1821693 (=> res!819251 e!1164291)))

(declare-fun validRegex!2001 (Regex!4931) Bool)

(assert (=> b!1821693 (= res!819251 (not (validRegex!2001 (regex!3603 rule!559))))))

(declare-fun lt!707867 () Regex!4931)

(assert (=> b!1821693 (= (matchR!2396 lt!707867 lt!707870) (exists!633 lt!707874 lambda!71366))))

(declare-fun lt!707872 () Unit!34653)

(declare-fun matchRGenUnionSpec!218 (Regex!4931 List!20055 List!20053) Unit!34653)

(assert (=> b!1821693 (= lt!707872 (matchRGenUnionSpec!218 lt!707867 lt!707874 lt!707870))))

(declare-fun b!1821704 () Bool)

(declare-fun res!819252 () Bool)

(assert (=> b!1821704 (=> (not res!819252) (not e!1164292))))

(declare-fun isEmpty!12617 (List!20054) Bool)

(assert (=> b!1821704 (= res!819252 (not (isEmpty!12617 rules!4538)))))

(declare-fun b!1821705 () Bool)

(declare-fun e!1164290 () Bool)

(declare-fun e!1164310 () Bool)

(assert (=> b!1821705 (= e!1164290 e!1164310)))

(declare-fun res!819257 () Bool)

(assert (=> b!1821705 (=> res!819257 e!1164310)))

(declare-fun lt!707873 () List!20055)

(declare-fun generalisedUnion!458 (List!20055) Regex!4931)

(assert (=> b!1821705 (= res!819257 (not (= lt!707867 (generalisedUnion!458 lt!707873))))))

(declare-fun rulesRegex!935 (LexerInterface!3232 List!20054) Regex!4931)

(assert (=> b!1821705 (= lt!707867 (rulesRegex!935 thiss!28068 rules!4538))))

(declare-fun lambda!71365 () Int)

(declare-fun map!4135 (List!20054 Int) List!20055)

(assert (=> b!1821705 (= lt!707873 (map!4135 rules!4538 lambda!71365))))

(declare-fun lt!707869 () Unit!34653)

(declare-fun lemma!475 (List!20053 Rule!7006 List!20054 List!20053 LexerInterface!3232 Token!6760 List!20054) Unit!34653)

(assert (=> b!1821705 (= lt!707869 (lemma!475 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1821706 () Bool)

(declare-fun tp!515112 () Bool)

(declare-fun e!1164289 () Bool)

(assert (=> b!1821706 (= e!1164309 (and tp!515112 (inv!26011 (tag!4017 (rule!5733 token!556))) (inv!26014 (transformation!3603 (rule!5733 token!556))) e!1164289))))

(declare-fun b!1821707 () Bool)

(assert (=> b!1821707 (= e!1164304 e!1164290)))

(declare-fun res!819259 () Bool)

(assert (=> b!1821707 (=> res!819259 e!1164290)))

(declare-fun lt!707876 () Option!4183)

(assert (=> b!1821707 (= res!819259 (not (= lt!707876 lt!707868)))))

(declare-fun lt!707871 () TokenValue!3693)

(declare-fun lt!707878 () Int)

(assert (=> b!1821707 (= lt!707876 (Some!4182 (tuple2!19491 (Token!6761 lt!707871 rule!559 lt!707878 lt!707870) suffix!1667)))))

(declare-fun maxPrefixOneRule!1145 (LexerInterface!3232 Rule!7006 List!20053) Option!4183)

(assert (=> b!1821707 (= lt!707876 (maxPrefixOneRule!1145 thiss!28068 rule!559 input!3612))))

(declare-fun size!15850 (List!20053) Int)

(assert (=> b!1821707 (= lt!707878 (size!15850 lt!707870))))

(declare-fun apply!5395 (TokenValueInjection!7046 BalanceConc!13214) TokenValue!3693)

(declare-fun seqFromList!2564 (List!20053) BalanceConc!13214)

(assert (=> b!1821707 (= lt!707871 (apply!5395 (transformation!3603 rule!559) (seqFromList!2564 lt!707870)))))

(declare-fun lt!707879 () Unit!34653)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!521 (LexerInterface!3232 List!20054 List!20053 List!20053 List!20053 Rule!7006) Unit!34653)

(assert (=> b!1821707 (= lt!707879 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!521 thiss!28068 rules!4538 lt!707870 input!3612 suffix!1667 rule!559))))

(declare-fun b!1821708 () Bool)

(declare-fun tp!515113 () Bool)

(assert (=> b!1821708 (= e!1164306 (and tp_is_empty!8097 tp!515113))))

(declare-fun b!1821709 () Bool)

(assert (=> b!1821709 (= e!1164310 e!1164308)))

(declare-fun res!819258 () Bool)

(assert (=> b!1821709 (=> res!819258 e!1164308)))

(declare-fun contains!3654 (List!20055 Regex!4931) Bool)

(assert (=> b!1821709 (= res!819258 (not (contains!3654 lt!707874 (regex!3603 rule!559))))))

(assert (=> b!1821709 (= lt!707874 (map!4135 rules!4538 lambda!71365))))

(declare-fun lt!707880 () Unit!34653)

(declare-fun lemma!476 (List!20053 Rule!7006 List!20054 List!20053 LexerInterface!3232 Token!6760 List!20054) Unit!34653)

(assert (=> b!1821709 (= lt!707880 (lemma!476 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (=> b!1821710 (= e!1164289 (and tp!515116 tp!515120))))

(declare-fun b!1821711 () Bool)

(declare-fun res!819255 () Bool)

(assert (=> b!1821711 (=> (not res!819255) (not e!1164292))))

(declare-fun contains!3655 (List!20054 Rule!7006) Bool)

(assert (=> b!1821711 (= res!819255 (contains!3655 rules!4538 rule!559))))

(declare-fun b!1821712 () Bool)

(declare-fun res!819256 () Bool)

(assert (=> b!1821712 (=> (not res!819256) (not e!1164299))))

(assert (=> b!1821712 (= res!819256 (= (rule!5733 token!556) rule!559))))

(assert (= (and start!180366 res!819250) b!1821704))

(assert (= (and b!1821704 res!819252) b!1821700))

(assert (= (and b!1821700 res!819253) b!1821711))

(assert (= (and b!1821711 res!819255) b!1821694))

(assert (= (and b!1821694 res!819249) b!1821712))

(assert (= (and b!1821712 res!819256) b!1821701))

(assert (= (and b!1821701 res!819254) b!1821696))

(assert (= (and b!1821696 (not res!819260)) b!1821707))

(assert (= (and b!1821707 (not res!819259)) b!1821705))

(assert (= (and b!1821705 (not res!819257)) b!1821709))

(assert (= (and b!1821709 (not res!819258)) b!1821693))

(assert (= (and b!1821693 (not res!819251)) b!1821699))

(assert (= (and start!180366 ((_ is Cons!19983) suffix!1667)) b!1821697))

(assert (= b!1821698 b!1821703))

(assert (= b!1821695 b!1821698))

(assert (= (and start!180366 ((_ is Cons!19984) rules!4538)) b!1821695))

(assert (= b!1821706 b!1821710))

(assert (= b!1821702 b!1821706))

(assert (= start!180366 b!1821702))

(assert (= b!1821691 b!1821692))

(assert (= start!180366 b!1821691))

(assert (= (and start!180366 ((_ is Cons!19983) input!3612)) b!1821708))

(declare-fun m!2250481 () Bool)

(assert (=> b!1821696 m!2250481))

(declare-fun m!2250483 () Bool)

(assert (=> b!1821696 m!2250483))

(declare-fun m!2250485 () Bool)

(assert (=> b!1821696 m!2250485))

(declare-fun m!2250487 () Bool)

(assert (=> b!1821705 m!2250487))

(declare-fun m!2250489 () Bool)

(assert (=> b!1821705 m!2250489))

(declare-fun m!2250491 () Bool)

(assert (=> b!1821705 m!2250491))

(declare-fun m!2250493 () Bool)

(assert (=> b!1821705 m!2250493))

(declare-fun m!2250495 () Bool)

(assert (=> b!1821694 m!2250495))

(declare-fun m!2250497 () Bool)

(assert (=> b!1821706 m!2250497))

(declare-fun m!2250499 () Bool)

(assert (=> b!1821706 m!2250499))

(declare-fun m!2250501 () Bool)

(assert (=> b!1821709 m!2250501))

(assert (=> b!1821709 m!2250491))

(declare-fun m!2250503 () Bool)

(assert (=> b!1821709 m!2250503))

(declare-fun m!2250505 () Bool)

(assert (=> b!1821698 m!2250505))

(declare-fun m!2250507 () Bool)

(assert (=> b!1821698 m!2250507))

(declare-fun m!2250509 () Bool)

(assert (=> b!1821701 m!2250509))

(declare-fun m!2250511 () Bool)

(assert (=> b!1821701 m!2250511))

(assert (=> b!1821701 m!2250511))

(declare-fun m!2250513 () Bool)

(assert (=> b!1821701 m!2250513))

(declare-fun m!2250515 () Bool)

(assert (=> b!1821699 m!2250515))

(declare-fun m!2250517 () Bool)

(assert (=> b!1821699 m!2250517))

(declare-fun m!2250519 () Bool)

(assert (=> b!1821707 m!2250519))

(declare-fun m!2250521 () Bool)

(assert (=> b!1821707 m!2250521))

(declare-fun m!2250523 () Bool)

(assert (=> b!1821707 m!2250523))

(declare-fun m!2250525 () Bool)

(assert (=> b!1821707 m!2250525))

(declare-fun m!2250527 () Bool)

(assert (=> b!1821707 m!2250527))

(assert (=> b!1821707 m!2250521))

(declare-fun m!2250529 () Bool)

(assert (=> b!1821711 m!2250529))

(declare-fun m!2250531 () Bool)

(assert (=> start!180366 m!2250531))

(declare-fun m!2250533 () Bool)

(assert (=> b!1821693 m!2250533))

(declare-fun m!2250535 () Bool)

(assert (=> b!1821693 m!2250535))

(assert (=> b!1821693 m!2250515))

(declare-fun m!2250537 () Bool)

(assert (=> b!1821693 m!2250537))

(declare-fun m!2250539 () Bool)

(assert (=> b!1821700 m!2250539))

(declare-fun m!2250541 () Bool)

(assert (=> b!1821704 m!2250541))

(declare-fun m!2250543 () Bool)

(assert (=> b!1821702 m!2250543))

(declare-fun m!2250545 () Bool)

(assert (=> b!1821691 m!2250545))

(declare-fun m!2250547 () Bool)

(assert (=> b!1821691 m!2250547))

(check-sat (not b!1821691) b_and!141323 (not b!1821702) (not b!1821698) (not b!1821709) (not b_next!51343) (not b_next!51337) (not b!1821706) (not b_next!51339) (not b!1821693) (not b!1821700) (not b!1821708) (not b!1821707) (not b!1821711) (not b_next!51335) (not b!1821697) b_and!141321 (not b!1821696) b_and!141319 (not b!1821694) (not b_next!51345) tp_is_empty!8097 b_and!141317 (not b!1821699) (not b!1821705) (not b!1821704) b_and!141327 (not b!1821701) (not start!180366) b_and!141325 (not b_next!51341) (not b!1821695))
(check-sat (not b_next!51335) b_and!141321 b_and!141323 b_and!141319 (not b_next!51343) (not b_next!51337) (not b_next!51345) b_and!141317 (not b_next!51339) b_and!141327 b_and!141325 (not b_next!51341))
