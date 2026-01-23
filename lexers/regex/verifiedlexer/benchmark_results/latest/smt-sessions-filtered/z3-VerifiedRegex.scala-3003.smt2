; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179706 () Bool)

(assert start!179706)

(declare-fun b!1816345 () Bool)

(declare-fun b_free!50143 () Bool)

(declare-fun b_next!50847 () Bool)

(assert (=> b!1816345 (= b_free!50143 (not b_next!50847))))

(declare-fun tp!513017 () Bool)

(declare-fun b_and!140589 () Bool)

(assert (=> b!1816345 (= tp!513017 b_and!140589)))

(declare-fun b_free!50145 () Bool)

(declare-fun b_next!50849 () Bool)

(assert (=> b!1816345 (= b_free!50145 (not b_next!50849))))

(declare-fun tp!513024 () Bool)

(declare-fun b_and!140591 () Bool)

(assert (=> b!1816345 (= tp!513024 b_and!140591)))

(declare-fun b!1816349 () Bool)

(declare-fun b_free!50147 () Bool)

(declare-fun b_next!50851 () Bool)

(assert (=> b!1816349 (= b_free!50147 (not b_next!50851))))

(declare-fun tp!513018 () Bool)

(declare-fun b_and!140593 () Bool)

(assert (=> b!1816349 (= tp!513018 b_and!140593)))

(declare-fun b_free!50149 () Bool)

(declare-fun b_next!50853 () Bool)

(assert (=> b!1816349 (= b_free!50149 (not b_next!50853))))

(declare-fun tp!513019 () Bool)

(declare-fun b_and!140595 () Bool)

(assert (=> b!1816349 (= tp!513019 b_and!140595)))

(declare-fun b!1816353 () Bool)

(declare-fun b_free!50151 () Bool)

(declare-fun b_next!50855 () Bool)

(assert (=> b!1816353 (= b_free!50151 (not b_next!50855))))

(declare-fun tp!513023 () Bool)

(declare-fun b_and!140597 () Bool)

(assert (=> b!1816353 (= tp!513023 b_and!140597)))

(declare-fun b_free!50153 () Bool)

(declare-fun b_next!50857 () Bool)

(assert (=> b!1816353 (= b_free!50153 (not b_next!50857))))

(declare-fun tp!513021 () Bool)

(declare-fun b_and!140599 () Bool)

(assert (=> b!1816353 (= tp!513021 b_and!140599)))

(declare-fun res!816641 () Bool)

(declare-fun e!1160455 () Bool)

(assert (=> start!179706 (=> (not res!816641) (not e!1160455))))

(declare-datatypes ((LexerInterface!3196 0))(
  ( (LexerInterfaceExt!3193 (__x!12616 Int)) (Lexer!3194) )
))
(declare-fun thiss!28068 () LexerInterface!3196)

(get-info :version)

(assert (=> start!179706 (= res!816641 ((_ is Lexer!3194) thiss!28068))))

(assert (=> start!179706 e!1160455))

(declare-fun e!1160450 () Bool)

(assert (=> start!179706 e!1160450))

(assert (=> start!179706 true))

(declare-fun e!1160458 () Bool)

(assert (=> start!179706 e!1160458))

(declare-datatypes ((List!19907 0))(
  ( (Nil!19837) (Cons!19837 (h!25238 (_ BitVec 16)) (t!169576 List!19907)) )
))
(declare-datatypes ((TokenValue!3657 0))(
  ( (FloatLiteralValue!7314 (text!26044 List!19907)) (TokenValueExt!3656 (__x!12617 Int)) (Broken!18285 (value!111300 List!19907)) (Object!3726) (End!3657) (Def!3657) (Underscore!3657) (Match!3657) (Else!3657) (Error!3657) (Case!3657) (If!3657) (Extends!3657) (Abstract!3657) (Class!3657) (Val!3657) (DelimiterValue!7314 (del!3717 List!19907)) (KeywordValue!3663 (value!111301 List!19907)) (CommentValue!7314 (value!111302 List!19907)) (WhitespaceValue!7314 (value!111303 List!19907)) (IndentationValue!3657 (value!111304 List!19907)) (String!22616) (Int32!3657) (Broken!18286 (value!111305 List!19907)) (Boolean!3658) (Unit!34528) (OperatorValue!3660 (op!3717 List!19907)) (IdentifierValue!7314 (value!111306 List!19907)) (IdentifierValue!7315 (value!111307 List!19907)) (WhitespaceValue!7315 (value!111308 List!19907)) (True!7314) (False!7314) (Broken!18287 (value!111309 List!19907)) (Broken!18288 (value!111310 List!19907)) (True!7315) (RightBrace!3657) (RightBracket!3657) (Colon!3657) (Null!3657) (Comma!3657) (LeftBracket!3657) (False!7315) (LeftBrace!3657) (ImaginaryLiteralValue!3657 (text!26045 List!19907)) (StringLiteralValue!10971 (value!111311 List!19907)) (EOFValue!3657 (value!111312 List!19907)) (IdentValue!3657 (value!111313 List!19907)) (DelimiterValue!7315 (value!111314 List!19907)) (DedentValue!3657 (value!111315 List!19907)) (NewLineValue!3657 (value!111316 List!19907)) (IntegerValue!10971 (value!111317 (_ BitVec 32)) (text!26046 List!19907)) (IntegerValue!10972 (value!111318 Int) (text!26047 List!19907)) (Times!3657) (Or!3657) (Equal!3657) (Minus!3657) (Broken!18289 (value!111319 List!19907)) (And!3657) (Div!3657) (LessEqual!3657) (Mod!3657) (Concat!8552) (Not!3657) (Plus!3657) (SpaceValue!3657 (value!111320 List!19907)) (IntegerValue!10973 (value!111321 Int) (text!26048 List!19907)) (StringLiteralValue!10972 (text!26049 List!19907)) (FloatLiteralValue!7315 (text!26050 List!19907)) (BytesLiteralValue!3657 (value!111322 List!19907)) (CommentValue!7315 (value!111323 List!19907)) (StringLiteralValue!10973 (value!111324 List!19907)) (ErrorTokenValue!3657 (msg!3718 List!19907)) )
))
(declare-datatypes ((C!9964 0))(
  ( (C!9965 (val!5578 Int)) )
))
(declare-datatypes ((List!19908 0))(
  ( (Nil!19838) (Cons!19838 (h!25239 C!9964) (t!169577 List!19908)) )
))
(declare-datatypes ((IArray!13203 0))(
  ( (IArray!13204 (innerList!6659 List!19908)) )
))
(declare-datatypes ((Conc!6599 0))(
  ( (Node!6599 (left!15916 Conc!6599) (right!16246 Conc!6599) (csize!13428 Int) (cheight!6810 Int)) (Leaf!9603 (xs!9475 IArray!13203) (csize!13429 Int)) (Empty!6599) )
))
(declare-datatypes ((BalanceConc!13142 0))(
  ( (BalanceConc!13143 (c!296620 Conc!6599)) )
))
(declare-datatypes ((Regex!4895 0))(
  ( (ElementMatch!4895 (c!296621 C!9964)) (Concat!8553 (regOne!10302 Regex!4895) (regTwo!10302 Regex!4895)) (EmptyExpr!4895) (Star!4895 (reg!5224 Regex!4895)) (EmptyLang!4895) (Union!4895 (regOne!10303 Regex!4895) (regTwo!10303 Regex!4895)) )
))
(declare-datatypes ((String!22617 0))(
  ( (String!22618 (value!111325 String)) )
))
(declare-datatypes ((TokenValueInjection!6974 0))(
  ( (TokenValueInjection!6975 (toValue!5102 Int) (toChars!4961 Int)) )
))
(declare-datatypes ((Rule!6934 0))(
  ( (Rule!6935 (regex!3567 Regex!4895) (tag!3981 String!22617) (isSeparator!3567 Bool) (transformation!3567 TokenValueInjection!6974)) )
))
(declare-datatypes ((Token!6688 0))(
  ( (Token!6689 (value!111326 TokenValue!3657) (rule!5675 Rule!6934) (size!15754 Int) (originalCharacters!4375 List!19908)) )
))
(declare-fun token!556 () Token!6688)

(declare-fun e!1160457 () Bool)

(declare-fun inv!25860 (Token!6688) Bool)

(assert (=> start!179706 (and (inv!25860 token!556) e!1160457)))

(declare-fun e!1160451 () Bool)

(assert (=> start!179706 e!1160451))

(declare-fun e!1160449 () Bool)

(assert (=> start!179706 e!1160449))

(declare-fun b!1816344 () Bool)

(declare-fun res!816644 () Bool)

(assert (=> b!1816344 (=> (not res!816644) (not e!1160455))))

(declare-datatypes ((List!19909 0))(
  ( (Nil!19839) (Cons!19839 (h!25240 Rule!6934) (t!169578 List!19909)) )
))
(declare-fun rules!4538 () List!19909)

(declare-fun rulesInvariant!2865 (LexerInterface!3196 List!19909) Bool)

(assert (=> b!1816344 (= res!816644 (rulesInvariant!2865 thiss!28068 rules!4538))))

(declare-fun e!1160448 () Bool)

(assert (=> b!1816345 (= e!1160448 (and tp!513017 tp!513024))))

(declare-fun b!1816346 () Bool)

(declare-fun res!816642 () Bool)

(assert (=> b!1816346 (=> (not res!816642) (not e!1160455))))

(declare-fun suffix!1667 () List!19908)

(declare-fun input!3612 () List!19908)

(declare-datatypes ((tuple2!19394 0))(
  ( (tuple2!19395 (_1!11099 Token!6688) (_2!11099 List!19908)) )
))
(declare-datatypes ((Option!4147 0))(
  ( (None!4146) (Some!4146 (v!25671 tuple2!19394)) )
))
(declare-fun maxPrefix!1744 (LexerInterface!3196 List!19909 List!19908) Option!4147)

(assert (=> b!1816346 (= res!816642 (= (maxPrefix!1744 thiss!28068 rules!4538 input!3612) (Some!4146 (tuple2!19395 token!556 suffix!1667))))))

(declare-fun b!1816347 () Bool)

(declare-fun tp!513020 () Bool)

(declare-fun e!1160447 () Bool)

(declare-fun inv!21 (TokenValue!3657) Bool)

(assert (=> b!1816347 (= e!1160457 (and (inv!21 (value!111326 token!556)) e!1160447 tp!513020))))

(declare-fun tp!513025 () Bool)

(declare-fun rule!559 () Rule!6934)

(declare-fun b!1816348 () Bool)

(declare-fun inv!25857 (String!22617) Bool)

(declare-fun inv!25861 (TokenValueInjection!6974) Bool)

(assert (=> b!1816348 (= e!1160451 (and tp!513025 (inv!25857 (tag!3981 rule!559)) (inv!25861 (transformation!3567 rule!559)) e!1160448))))

(declare-fun e!1160445 () Bool)

(assert (=> b!1816349 (= e!1160445 (and tp!513018 tp!513019))))

(declare-fun b!1816350 () Bool)

(declare-fun tp_is_empty!8025 () Bool)

(declare-fun tp!513026 () Bool)

(assert (=> b!1816350 (= e!1160449 (and tp_is_empty!8025 tp!513026))))

(declare-fun b!1816351 () Bool)

(declare-fun res!816643 () Bool)

(assert (=> b!1816351 (=> (not res!816643) (not e!1160455))))

(declare-fun ++!5391 (List!19908 List!19908) List!19908)

(declare-fun list!8069 (BalanceConc!13142) List!19908)

(declare-fun charsOf!2210 (Token!6688) BalanceConc!13142)

(assert (=> b!1816351 (= res!816643 (= input!3612 (++!5391 (list!8069 (charsOf!2210 token!556)) suffix!1667)))))

(declare-fun b!1816352 () Bool)

(declare-fun e!1160454 () Bool)

(declare-fun tp!513027 () Bool)

(assert (=> b!1816352 (= e!1160458 (and e!1160454 tp!513027))))

(declare-fun e!1160446 () Bool)

(assert (=> b!1816353 (= e!1160446 (and tp!513023 tp!513021))))

(declare-fun b!1816354 () Bool)

(declare-fun res!816638 () Bool)

(assert (=> b!1816354 (=> (not res!816638) (not e!1160455))))

(declare-fun contains!3603 (List!19909 Rule!6934) Bool)

(assert (=> b!1816354 (= res!816638 (contains!3603 rules!4538 rule!559))))

(declare-fun b!1816355 () Bool)

(declare-fun tp!513016 () Bool)

(assert (=> b!1816355 (= e!1160447 (and tp!513016 (inv!25857 (tag!3981 (rule!5675 token!556))) (inv!25861 (transformation!3567 (rule!5675 token!556))) e!1160445))))

(declare-fun b!1816356 () Bool)

(declare-fun tp!513028 () Bool)

(assert (=> b!1816356 (= e!1160454 (and tp!513028 (inv!25857 (tag!3981 (h!25240 rules!4538))) (inv!25861 (transformation!3567 (h!25240 rules!4538))) e!1160446))))

(declare-fun b!1816357 () Bool)

(declare-fun tp!513022 () Bool)

(assert (=> b!1816357 (= e!1160450 (and tp_is_empty!8025 tp!513022))))

(declare-fun b!1816358 () Bool)

(declare-fun res!816640 () Bool)

(assert (=> b!1816358 (=> (not res!816640) (not e!1160455))))

(assert (=> b!1816358 (= res!816640 (= (rule!5675 token!556) rule!559))))

(declare-fun b!1816359 () Bool)

(declare-fun res!816639 () Bool)

(assert (=> b!1816359 (=> (not res!816639) (not e!1160455))))

(declare-fun isEmpty!12547 (List!19909) Bool)

(assert (=> b!1816359 (= res!816639 (not (isEmpty!12547 rules!4538)))))

(declare-fun b!1816360 () Bool)

(assert (=> b!1816360 (= e!1160455 false)))

(declare-fun lt!705994 () Bool)

(declare-fun rulesValidInductive!1218 (LexerInterface!3196 List!19909) Bool)

(assert (=> b!1816360 (= lt!705994 (rulesValidInductive!1218 thiss!28068 rules!4538))))

(assert (= (and start!179706 res!816641) b!1816359))

(assert (= (and b!1816359 res!816639) b!1816344))

(assert (= (and b!1816344 res!816644) b!1816354))

(assert (= (and b!1816354 res!816638) b!1816346))

(assert (= (and b!1816346 res!816642) b!1816358))

(assert (= (and b!1816358 res!816640) b!1816351))

(assert (= (and b!1816351 res!816643) b!1816360))

(assert (= (and start!179706 ((_ is Cons!19838) suffix!1667)) b!1816357))

(assert (= b!1816356 b!1816353))

(assert (= b!1816352 b!1816356))

(assert (= (and start!179706 ((_ is Cons!19839) rules!4538)) b!1816352))

(assert (= b!1816355 b!1816349))

(assert (= b!1816347 b!1816355))

(assert (= start!179706 b!1816347))

(assert (= b!1816348 b!1816345))

(assert (= start!179706 b!1816348))

(assert (= (and start!179706 ((_ is Cons!19838) input!3612)) b!1816350))

(declare-fun m!2245953 () Bool)

(assert (=> b!1816346 m!2245953))

(declare-fun m!2245955 () Bool)

(assert (=> b!1816356 m!2245955))

(declare-fun m!2245957 () Bool)

(assert (=> b!1816356 m!2245957))

(declare-fun m!2245959 () Bool)

(assert (=> b!1816347 m!2245959))

(declare-fun m!2245961 () Bool)

(assert (=> b!1816351 m!2245961))

(assert (=> b!1816351 m!2245961))

(declare-fun m!2245963 () Bool)

(assert (=> b!1816351 m!2245963))

(assert (=> b!1816351 m!2245963))

(declare-fun m!2245965 () Bool)

(assert (=> b!1816351 m!2245965))

(declare-fun m!2245967 () Bool)

(assert (=> b!1816348 m!2245967))

(declare-fun m!2245969 () Bool)

(assert (=> b!1816348 m!2245969))

(declare-fun m!2245971 () Bool)

(assert (=> b!1816359 m!2245971))

(declare-fun m!2245973 () Bool)

(assert (=> start!179706 m!2245973))

(declare-fun m!2245975 () Bool)

(assert (=> b!1816354 m!2245975))

(declare-fun m!2245977 () Bool)

(assert (=> b!1816344 m!2245977))

(declare-fun m!2245979 () Bool)

(assert (=> b!1816355 m!2245979))

(declare-fun m!2245981 () Bool)

(assert (=> b!1816355 m!2245981))

(declare-fun m!2245983 () Bool)

(assert (=> b!1816360 m!2245983))

(check-sat b_and!140591 (not b_next!50849) (not b!1816356) (not b!1816344) (not b_next!50857) b_and!140599 (not b!1816351) b_and!140597 (not b_next!50847) (not b_next!50855) (not b!1816348) (not b_next!50851) (not start!179706) b_and!140593 (not b!1816346) (not b!1816354) (not b!1816347) tp_is_empty!8025 (not b!1816360) b_and!140595 b_and!140589 (not b!1816355) (not b_next!50853) (not b!1816352) (not b!1816357) (not b!1816350) (not b!1816359))
(check-sat b_and!140591 (not b_next!50849) (not b_next!50857) b_and!140599 b_and!140597 (not b_next!50853) (not b_next!50847) (not b_next!50855) (not b_next!50851) b_and!140593 b_and!140595 b_and!140589)
