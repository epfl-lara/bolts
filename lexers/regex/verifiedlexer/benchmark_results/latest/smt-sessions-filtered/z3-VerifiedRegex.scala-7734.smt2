; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406502 () Bool)

(assert start!406502)

(declare-fun b!4246423 () Bool)

(declare-fun b_free!126067 () Bool)

(declare-fun b_next!126771 () Bool)

(assert (=> b!4246423 (= b_free!126067 (not b_next!126771))))

(declare-fun tp!1302542 () Bool)

(declare-fun b_and!336413 () Bool)

(assert (=> b!4246423 (= tp!1302542 b_and!336413)))

(declare-fun b_free!126069 () Bool)

(declare-fun b_next!126773 () Bool)

(assert (=> b!4246423 (= b_free!126069 (not b_next!126773))))

(declare-fun tp!1302538 () Bool)

(declare-fun b_and!336415 () Bool)

(assert (=> b!4246423 (= tp!1302538 b_and!336415)))

(declare-fun b!4246416 () Bool)

(declare-fun b_free!126071 () Bool)

(declare-fun b_next!126775 () Bool)

(assert (=> b!4246416 (= b_free!126071 (not b_next!126775))))

(declare-fun tp!1302541 () Bool)

(declare-fun b_and!336417 () Bool)

(assert (=> b!4246416 (= tp!1302541 b_and!336417)))

(declare-fun b_free!126073 () Bool)

(declare-fun b_next!126777 () Bool)

(assert (=> b!4246416 (= b_free!126073 (not b_next!126777))))

(declare-fun tp!1302537 () Bool)

(declare-fun b_and!336419 () Bool)

(assert (=> b!4246416 (= tp!1302537 b_and!336419)))

(declare-fun e!2637387 () Bool)

(assert (=> b!4246416 (= e!2637387 (and tp!1302541 tp!1302537))))

(declare-fun b!4246417 () Bool)

(declare-fun e!2637376 () Bool)

(declare-fun tp_is_empty!22705 () Bool)

(declare-fun tp!1302544 () Bool)

(assert (=> b!4246417 (= e!2637376 (and tp_is_empty!22705 tp!1302544))))

(declare-fun b!4246418 () Bool)

(declare-fun res!1745732 () Bool)

(declare-fun e!2637392 () Bool)

(assert (=> b!4246418 (=> (not res!1745732) (not e!2637392))))

(declare-datatypes ((List!47127 0))(
  ( (Nil!47003) (Cons!47003 (h!52423 (_ BitVec 16)) (t!351744 List!47127)) )
))
(declare-datatypes ((TokenValue!8182 0))(
  ( (FloatLiteralValue!16364 (text!57719 List!47127)) (TokenValueExt!8181 (__x!28587 Int)) (Broken!40910 (value!247142 List!47127)) (Object!8305) (End!8182) (Def!8182) (Underscore!8182) (Match!8182) (Else!8182) (Error!8182) (Case!8182) (If!8182) (Extends!8182) (Abstract!8182) (Class!8182) (Val!8182) (DelimiterValue!16364 (del!8242 List!47127)) (KeywordValue!8188 (value!247143 List!47127)) (CommentValue!16364 (value!247144 List!47127)) (WhitespaceValue!16364 (value!247145 List!47127)) (IndentationValue!8182 (value!247146 List!47127)) (String!54839) (Int32!8182) (Broken!40911 (value!247147 List!47127)) (Boolean!8183) (Unit!66024) (OperatorValue!8185 (op!8242 List!47127)) (IdentifierValue!16364 (value!247148 List!47127)) (IdentifierValue!16365 (value!247149 List!47127)) (WhitespaceValue!16365 (value!247150 List!47127)) (True!16364) (False!16364) (Broken!40912 (value!247151 List!47127)) (Broken!40913 (value!247152 List!47127)) (True!16365) (RightBrace!8182) (RightBracket!8182) (Colon!8182) (Null!8182) (Comma!8182) (LeftBracket!8182) (False!16365) (LeftBrace!8182) (ImaginaryLiteralValue!8182 (text!57720 List!47127)) (StringLiteralValue!24546 (value!247153 List!47127)) (EOFValue!8182 (value!247154 List!47127)) (IdentValue!8182 (value!247155 List!47127)) (DelimiterValue!16365 (value!247156 List!47127)) (DedentValue!8182 (value!247157 List!47127)) (NewLineValue!8182 (value!247158 List!47127)) (IntegerValue!24546 (value!247159 (_ BitVec 32)) (text!57721 List!47127)) (IntegerValue!24547 (value!247160 Int) (text!57722 List!47127)) (Times!8182) (Or!8182) (Equal!8182) (Minus!8182) (Broken!40914 (value!247161 List!47127)) (And!8182) (Div!8182) (LessEqual!8182) (Mod!8182) (Concat!21039) (Not!8182) (Plus!8182) (SpaceValue!8182 (value!247162 List!47127)) (IntegerValue!24548 (value!247163 Int) (text!57723 List!47127)) (StringLiteralValue!24547 (text!57724 List!47127)) (FloatLiteralValue!16365 (text!57725 List!47127)) (BytesLiteralValue!8182 (value!247164 List!47127)) (CommentValue!16365 (value!247165 List!47127)) (StringLiteralValue!24548 (value!247166 List!47127)) (ErrorTokenValue!8182 (msg!8243 List!47127)) )
))
(declare-datatypes ((C!25912 0))(
  ( (C!25913 (val!15146 Int)) )
))
(declare-datatypes ((List!47128 0))(
  ( (Nil!47004) (Cons!47004 (h!52424 C!25912) (t!351745 List!47128)) )
))
(declare-datatypes ((IArray!28331 0))(
  ( (IArray!28332 (innerList!14223 List!47128)) )
))
(declare-datatypes ((Conc!14163 0))(
  ( (Node!14163 (left!34893 Conc!14163) (right!35223 Conc!14163) (csize!28556 Int) (cheight!14374 Int)) (Leaf!21898 (xs!17469 IArray!28331) (csize!28557 Int)) (Empty!14163) )
))
(declare-datatypes ((BalanceConc!27920 0))(
  ( (BalanceConc!27921 (c!721256 Conc!14163)) )
))
(declare-datatypes ((TokenValueInjection!15792 0))(
  ( (TokenValueInjection!15793 (toValue!10716 Int) (toChars!10575 Int)) )
))
(declare-datatypes ((String!54840 0))(
  ( (String!54841 (value!247167 String)) )
))
(declare-datatypes ((Regex!12857 0))(
  ( (ElementMatch!12857 (c!721257 C!25912)) (Concat!21040 (regOne!26226 Regex!12857) (regTwo!26226 Regex!12857)) (EmptyExpr!12857) (Star!12857 (reg!13186 Regex!12857)) (EmptyLang!12857) (Union!12857 (regOne!26227 Regex!12857) (regTwo!26227 Regex!12857)) )
))
(declare-datatypes ((Rule!15704 0))(
  ( (Rule!15705 (regex!7952 Regex!12857) (tag!8816 String!54840) (isSeparator!7952 Bool) (transformation!7952 TokenValueInjection!15792)) )
))
(declare-datatypes ((List!47129 0))(
  ( (Nil!47005) (Cons!47005 (h!52425 Rule!15704) (t!351746 List!47129)) )
))
(declare-fun rules!2971 () List!47129)

(declare-fun isEmpty!27804 (List!47129) Bool)

(assert (=> b!4246418 (= res!1745732 (not (isEmpty!27804 rules!2971)))))

(declare-fun tp!1302546 () Bool)

(declare-fun e!2637380 () Bool)

(declare-fun e!2637388 () Bool)

(declare-datatypes ((Token!14530 0))(
  ( (Token!14531 (value!247168 TokenValue!8182) (rule!11082 Rule!15704) (size!34422 Int) (originalCharacters!8296 List!47128)) )
))
(declare-datatypes ((List!47130 0))(
  ( (Nil!47006) (Cons!47006 (h!52426 Token!14530) (t!351747 List!47130)) )
))
(declare-fun tokens!592 () List!47130)

(declare-fun b!4246419 () Bool)

(declare-fun inv!21 (TokenValue!8182) Bool)

(assert (=> b!4246419 (= e!2637380 (and (inv!21 (value!247168 (h!52426 tokens!592))) e!2637388 tp!1302546))))

(declare-fun e!2637389 () Bool)

(declare-fun b!4246420 () Bool)

(declare-fun tp!1302535 () Bool)

(declare-fun inv!61768 (Token!14530) Bool)

(assert (=> b!4246420 (= e!2637389 (and (inv!61768 (h!52426 tokens!592)) e!2637380 tp!1302535))))

(declare-fun b!4246421 () Bool)

(declare-fun res!1745733 () Bool)

(declare-fun e!2637378 () Bool)

(assert (=> b!4246421 (=> (not res!1745733) (not e!2637378))))

(declare-fun lt!1507616 () List!47128)

(declare-datatypes ((tuple2!44566 0))(
  ( (tuple2!44567 (_1!25417 Token!14530) (_2!25417 List!47128)) )
))
(declare-datatypes ((Option!10086 0))(
  ( (None!10085) (Some!10085 (v!41039 tuple2!44566)) )
))
(declare-fun lt!1507617 () Option!10086)

(declare-fun lt!1507618 () List!47128)

(declare-fun lt!1507615 () Option!10086)

(assert (=> b!4246421 (= res!1745733 (and (= (_1!25417 (v!41039 lt!1507617)) (_1!25417 (v!41039 lt!1507615))) (= lt!1507618 lt!1507616)))))

(declare-fun b!4246422 () Bool)

(declare-fun e!2637379 () Bool)

(declare-fun tp!1302545 () Bool)

(assert (=> b!4246422 (= e!2637379 (and tp_is_empty!22705 tp!1302545))))

(declare-fun e!2637377 () Bool)

(assert (=> b!4246423 (= e!2637377 (and tp!1302542 tp!1302538))))

(declare-fun b!4246424 () Bool)

(declare-fun tp!1302540 () Bool)

(declare-fun inv!61765 (String!54840) Bool)

(declare-fun inv!61769 (TokenValueInjection!15792) Bool)

(assert (=> b!4246424 (= e!2637388 (and tp!1302540 (inv!61765 (tag!8816 (rule!11082 (h!52426 tokens!592)))) (inv!61769 (transformation!7952 (rule!11082 (h!52426 tokens!592)))) e!2637387))))

(declare-fun b!4246425 () Bool)

(declare-fun e!2637381 () Bool)

(assert (=> b!4246425 (= e!2637392 e!2637381)))

(declare-fun res!1745728 () Bool)

(assert (=> b!4246425 (=> (not res!1745728) (not e!2637381))))

(get-info :version)

(assert (=> b!4246425 (= res!1745728 (and ((_ is Some!10085) lt!1507617) ((_ is Some!10085) lt!1507615)))))

(declare-datatypes ((LexerInterface!7547 0))(
  ( (LexerInterfaceExt!7544 (__x!28588 Int)) (Lexer!7545) )
))
(declare-fun thiss!21641 () LexerInterface!7547)

(declare-fun shorterInput!62 () List!47128)

(declare-fun maxPrefix!4503 (LexerInterface!7547 List!47129 List!47128) Option!10086)

(assert (=> b!4246425 (= lt!1507615 (maxPrefix!4503 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun longerInput!62 () List!47128)

(assert (=> b!4246425 (= lt!1507617 (maxPrefix!4503 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4246426 () Bool)

(declare-fun e!2637382 () Bool)

(declare-fun e!2637385 () Bool)

(declare-fun tp!1302543 () Bool)

(assert (=> b!4246426 (= e!2637382 (and e!2637385 tp!1302543))))

(declare-fun b!4246427 () Bool)

(declare-fun res!1745736 () Bool)

(assert (=> b!4246427 (=> (not res!1745736) (not e!2637392))))

(declare-fun suffix!1284 () List!47128)

(declare-datatypes ((tuple2!44568 0))(
  ( (tuple2!44569 (_1!25418 List!47130) (_2!25418 List!47128)) )
))
(declare-fun lexList!2053 (LexerInterface!7547 List!47129 List!47128) tuple2!44568)

(assert (=> b!4246427 (= res!1745736 (= (lexList!2053 thiss!21641 rules!2971 longerInput!62) (tuple2!44569 tokens!592 suffix!1284)))))

(declare-fun b!4246428 () Bool)

(declare-fun res!1745737 () Bool)

(assert (=> b!4246428 (=> (not res!1745737) (not e!2637392))))

(declare-fun size!34423 (List!47128) Int)

(assert (=> b!4246428 (= res!1745737 (> (size!34423 longerInput!62) (size!34423 shorterInput!62)))))

(declare-fun b!4246429 () Bool)

(declare-fun e!2637391 () Bool)

(declare-fun tp!1302539 () Bool)

(assert (=> b!4246429 (= e!2637391 (and tp_is_empty!22705 tp!1302539))))

(declare-fun b!4246430 () Bool)

(declare-fun e!2637383 () Bool)

(assert (=> b!4246430 (= e!2637383 e!2637378)))

(declare-fun res!1745729 () Bool)

(assert (=> b!4246430 (=> (not res!1745729) (not e!2637378))))

(declare-fun ++!11965 (List!47128 List!47128) List!47128)

(assert (=> b!4246430 (= res!1745729 (= (++!11965 lt!1507616 (_2!25417 (v!41039 lt!1507615))) shorterInput!62))))

(declare-fun list!16936 (BalanceConc!27920) List!47128)

(declare-fun charsOf!5296 (Token!14530) BalanceConc!27920)

(assert (=> b!4246430 (= lt!1507616 (list!16936 (charsOf!5296 (_1!25417 (v!41039 lt!1507615)))))))

(declare-fun b!4246431 () Bool)

(declare-fun res!1745735 () Bool)

(assert (=> b!4246431 (=> (not res!1745735) (not e!2637392))))

(declare-fun isEmpty!27805 (List!47128) Bool)

(assert (=> b!4246431 (= res!1745735 (not (isEmpty!27805 longerInput!62)))))

(declare-fun res!1745734 () Bool)

(assert (=> start!406502 (=> (not res!1745734) (not e!2637392))))

(assert (=> start!406502 (= res!1745734 ((_ is Lexer!7545) thiss!21641))))

(assert (=> start!406502 e!2637392))

(assert (=> start!406502 true))

(assert (=> start!406502 e!2637376))

(assert (=> start!406502 e!2637391))

(assert (=> start!406502 e!2637389))

(assert (=> start!406502 e!2637382))

(assert (=> start!406502 e!2637379))

(declare-fun b!4246432 () Bool)

(declare-fun res!1745731 () Bool)

(assert (=> b!4246432 (=> (not res!1745731) (not e!2637378))))

(assert (=> b!4246432 (= res!1745731 (> (size!34423 (_2!25417 (v!41039 lt!1507617))) (size!34423 (_2!25417 (v!41039 lt!1507615)))))))

(declare-fun b!4246433 () Bool)

(assert (=> b!4246433 (= e!2637381 e!2637383)))

(declare-fun res!1745738 () Bool)

(assert (=> b!4246433 (=> (not res!1745738) (not e!2637383))))

(assert (=> b!4246433 (= res!1745738 (= (++!11965 lt!1507618 (_2!25417 (v!41039 lt!1507617))) longerInput!62))))

(assert (=> b!4246433 (= lt!1507618 (list!16936 (charsOf!5296 (_1!25417 (v!41039 lt!1507617)))))))

(declare-fun tp!1302536 () Bool)

(declare-fun b!4246434 () Bool)

(assert (=> b!4246434 (= e!2637385 (and tp!1302536 (inv!61765 (tag!8816 (h!52425 rules!2971))) (inv!61769 (transformation!7952 (h!52425 rules!2971))) e!2637377))))

(declare-fun b!4246435 () Bool)

(assert (=> b!4246435 (= e!2637378 (= tokens!592 Nil!47006))))

(declare-fun b!4246436 () Bool)

(declare-fun res!1745730 () Bool)

(assert (=> b!4246436 (=> (not res!1745730) (not e!2637392))))

(declare-fun rulesInvariant!6658 (LexerInterface!7547 List!47129) Bool)

(assert (=> b!4246436 (= res!1745730 (rulesInvariant!6658 thiss!21641 rules!2971))))

(assert (= (and start!406502 res!1745734) b!4246418))

(assert (= (and b!4246418 res!1745732) b!4246436))

(assert (= (and b!4246436 res!1745730) b!4246431))

(assert (= (and b!4246431 res!1745735) b!4246428))

(assert (= (and b!4246428 res!1745737) b!4246427))

(assert (= (and b!4246427 res!1745736) b!4246425))

(assert (= (and b!4246425 res!1745728) b!4246433))

(assert (= (and b!4246433 res!1745738) b!4246430))

(assert (= (and b!4246430 res!1745729) b!4246421))

(assert (= (and b!4246421 res!1745733) b!4246432))

(assert (= (and b!4246432 res!1745731) b!4246435))

(assert (= (and start!406502 ((_ is Cons!47004) suffix!1284)) b!4246417))

(assert (= (and start!406502 ((_ is Cons!47004) longerInput!62)) b!4246429))

(assert (= b!4246424 b!4246416))

(assert (= b!4246419 b!4246424))

(assert (= b!4246420 b!4246419))

(assert (= (and start!406502 ((_ is Cons!47006) tokens!592)) b!4246420))

(assert (= b!4246434 b!4246423))

(assert (= b!4246426 b!4246434))

(assert (= (and start!406502 ((_ is Cons!47005) rules!2971)) b!4246426))

(assert (= (and start!406502 ((_ is Cons!47004) shorterInput!62)) b!4246422))

(declare-fun m!4831319 () Bool)

(assert (=> b!4246427 m!4831319))

(declare-fun m!4831321 () Bool)

(assert (=> b!4246419 m!4831321))

(declare-fun m!4831323 () Bool)

(assert (=> b!4246433 m!4831323))

(declare-fun m!4831325 () Bool)

(assert (=> b!4246433 m!4831325))

(assert (=> b!4246433 m!4831325))

(declare-fun m!4831327 () Bool)

(assert (=> b!4246433 m!4831327))

(declare-fun m!4831329 () Bool)

(assert (=> b!4246428 m!4831329))

(declare-fun m!4831331 () Bool)

(assert (=> b!4246428 m!4831331))

(declare-fun m!4831333 () Bool)

(assert (=> b!4246425 m!4831333))

(declare-fun m!4831335 () Bool)

(assert (=> b!4246425 m!4831335))

(declare-fun m!4831337 () Bool)

(assert (=> b!4246430 m!4831337))

(declare-fun m!4831339 () Bool)

(assert (=> b!4246430 m!4831339))

(assert (=> b!4246430 m!4831339))

(declare-fun m!4831341 () Bool)

(assert (=> b!4246430 m!4831341))

(declare-fun m!4831343 () Bool)

(assert (=> b!4246431 m!4831343))

(declare-fun m!4831345 () Bool)

(assert (=> b!4246432 m!4831345))

(declare-fun m!4831347 () Bool)

(assert (=> b!4246432 m!4831347))

(declare-fun m!4831349 () Bool)

(assert (=> b!4246418 m!4831349))

(declare-fun m!4831351 () Bool)

(assert (=> b!4246434 m!4831351))

(declare-fun m!4831353 () Bool)

(assert (=> b!4246434 m!4831353))

(declare-fun m!4831355 () Bool)

(assert (=> b!4246424 m!4831355))

(declare-fun m!4831357 () Bool)

(assert (=> b!4246424 m!4831357))

(declare-fun m!4831359 () Bool)

(assert (=> b!4246420 m!4831359))

(declare-fun m!4831361 () Bool)

(assert (=> b!4246436 m!4831361))

(check-sat (not b!4246427) (not b_next!126773) (not b!4246433) (not b_next!126771) (not b!4246419) (not b!4246429) (not b_next!126777) (not b!4246425) b_and!336413 (not b!4246430) tp_is_empty!22705 (not b!4246417) (not b!4246424) (not b!4246432) (not b!4246420) b_and!336417 (not b!4246428) (not b!4246431) (not b!4246434) (not b_next!126775) b_and!336415 (not b!4246422) (not b!4246426) b_and!336419 (not b!4246436) (not b!4246418))
(check-sat b_and!336413 b_and!336417 (not b_next!126773) (not b_next!126771) (not b_next!126775) b_and!336415 b_and!336419 (not b_next!126777))
(get-model)

(declare-fun d!1248959 () Bool)

(declare-fun lt!1507623 () Int)

(assert (=> d!1248959 (>= lt!1507623 0)))

(declare-fun e!2637397 () Int)

(assert (=> d!1248959 (= lt!1507623 e!2637397)))

(declare-fun c!721262 () Bool)

(assert (=> d!1248959 (= c!721262 ((_ is Nil!47004) longerInput!62))))

(assert (=> d!1248959 (= (size!34423 longerInput!62) lt!1507623)))

(declare-fun b!4246445 () Bool)

(assert (=> b!4246445 (= e!2637397 0)))

(declare-fun b!4246446 () Bool)

(assert (=> b!4246446 (= e!2637397 (+ 1 (size!34423 (t!351745 longerInput!62))))))

(assert (= (and d!1248959 c!721262) b!4246445))

(assert (= (and d!1248959 (not c!721262)) b!4246446))

(declare-fun m!4831363 () Bool)

(assert (=> b!4246446 m!4831363))

(assert (=> b!4246428 d!1248959))

(declare-fun d!1248963 () Bool)

(declare-fun lt!1507625 () Int)

(assert (=> d!1248963 (>= lt!1507625 0)))

(declare-fun e!2637399 () Int)

(assert (=> d!1248963 (= lt!1507625 e!2637399)))

(declare-fun c!721264 () Bool)

(assert (=> d!1248963 (= c!721264 ((_ is Nil!47004) shorterInput!62))))

(assert (=> d!1248963 (= (size!34423 shorterInput!62) lt!1507625)))

(declare-fun b!4246449 () Bool)

(assert (=> b!4246449 (= e!2637399 0)))

(declare-fun b!4246450 () Bool)

(assert (=> b!4246450 (= e!2637399 (+ 1 (size!34423 (t!351745 shorterInput!62))))))

(assert (= (and d!1248963 c!721264) b!4246449))

(assert (= (and d!1248963 (not c!721264)) b!4246450))

(declare-fun m!4831365 () Bool)

(assert (=> b!4246450 m!4831365))

(assert (=> b!4246428 d!1248963))

(declare-fun d!1248965 () Bool)

(assert (=> d!1248965 (= (isEmpty!27804 rules!2971) ((_ is Nil!47005) rules!2971))))

(assert (=> b!4246418 d!1248965))

(declare-fun b!4246473 () Bool)

(declare-fun res!1745751 () Bool)

(declare-fun e!2637412 () Bool)

(assert (=> b!4246473 (=> res!1745751 e!2637412)))

(assert (=> b!4246473 (= res!1745751 (not ((_ is IntegerValue!24548) (value!247168 (h!52426 tokens!592)))))))

(declare-fun e!2637413 () Bool)

(assert (=> b!4246473 (= e!2637413 e!2637412)))

(declare-fun b!4246474 () Bool)

(declare-fun e!2637414 () Bool)

(declare-fun inv!16 (TokenValue!8182) Bool)

(assert (=> b!4246474 (= e!2637414 (inv!16 (value!247168 (h!52426 tokens!592))))))

(declare-fun b!4246475 () Bool)

(declare-fun inv!15 (TokenValue!8182) Bool)

(assert (=> b!4246475 (= e!2637412 (inv!15 (value!247168 (h!52426 tokens!592))))))

(declare-fun b!4246476 () Bool)

(declare-fun inv!17 (TokenValue!8182) Bool)

(assert (=> b!4246476 (= e!2637413 (inv!17 (value!247168 (h!52426 tokens!592))))))

(declare-fun b!4246477 () Bool)

(assert (=> b!4246477 (= e!2637414 e!2637413)))

(declare-fun c!721270 () Bool)

(assert (=> b!4246477 (= c!721270 ((_ is IntegerValue!24547) (value!247168 (h!52426 tokens!592))))))

(declare-fun d!1248971 () Bool)

(declare-fun c!721271 () Bool)

(assert (=> d!1248971 (= c!721271 ((_ is IntegerValue!24546) (value!247168 (h!52426 tokens!592))))))

(assert (=> d!1248971 (= (inv!21 (value!247168 (h!52426 tokens!592))) e!2637414)))

(assert (= (and d!1248971 c!721271) b!4246474))

(assert (= (and d!1248971 (not c!721271)) b!4246477))

(assert (= (and b!4246477 c!721270) b!4246476))

(assert (= (and b!4246477 (not c!721270)) b!4246473))

(assert (= (and b!4246473 (not res!1745751)) b!4246475))

(declare-fun m!4831375 () Bool)

(assert (=> b!4246474 m!4831375))

(declare-fun m!4831377 () Bool)

(assert (=> b!4246475 m!4831377))

(declare-fun m!4831379 () Bool)

(assert (=> b!4246476 m!4831379))

(assert (=> b!4246419 d!1248971))

(declare-fun e!2637426 () Bool)

(declare-fun lt!1507632 () List!47128)

(declare-fun b!4246502 () Bool)

(assert (=> b!4246502 (= e!2637426 (or (not (= (_2!25417 (v!41039 lt!1507615)) Nil!47004)) (= lt!1507632 lt!1507616)))))

(declare-fun b!4246501 () Bool)

(declare-fun res!1745762 () Bool)

(assert (=> b!4246501 (=> (not res!1745762) (not e!2637426))))

(assert (=> b!4246501 (= res!1745762 (= (size!34423 lt!1507632) (+ (size!34423 lt!1507616) (size!34423 (_2!25417 (v!41039 lt!1507615))))))))

(declare-fun b!4246500 () Bool)

(declare-fun e!2637427 () List!47128)

(assert (=> b!4246500 (= e!2637427 (Cons!47004 (h!52424 lt!1507616) (++!11965 (t!351745 lt!1507616) (_2!25417 (v!41039 lt!1507615)))))))

(declare-fun b!4246499 () Bool)

(assert (=> b!4246499 (= e!2637427 (_2!25417 (v!41039 lt!1507615)))))

(declare-fun d!1248973 () Bool)

(assert (=> d!1248973 e!2637426))

(declare-fun res!1745763 () Bool)

(assert (=> d!1248973 (=> (not res!1745763) (not e!2637426))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7390 (List!47128) (InoxSet C!25912))

(assert (=> d!1248973 (= res!1745763 (= (content!7390 lt!1507632) ((_ map or) (content!7390 lt!1507616) (content!7390 (_2!25417 (v!41039 lt!1507615))))))))

(assert (=> d!1248973 (= lt!1507632 e!2637427)))

(declare-fun c!721277 () Bool)

(assert (=> d!1248973 (= c!721277 ((_ is Nil!47004) lt!1507616))))

(assert (=> d!1248973 (= (++!11965 lt!1507616 (_2!25417 (v!41039 lt!1507615))) lt!1507632)))

(assert (= (and d!1248973 c!721277) b!4246499))

(assert (= (and d!1248973 (not c!721277)) b!4246500))

(assert (= (and d!1248973 res!1745763) b!4246501))

(assert (= (and b!4246501 res!1745762) b!4246502))

(declare-fun m!4831403 () Bool)

(assert (=> b!4246501 m!4831403))

(declare-fun m!4831405 () Bool)

(assert (=> b!4246501 m!4831405))

(assert (=> b!4246501 m!4831347))

(declare-fun m!4831407 () Bool)

(assert (=> b!4246500 m!4831407))

(declare-fun m!4831409 () Bool)

(assert (=> d!1248973 m!4831409))

(declare-fun m!4831411 () Bool)

(assert (=> d!1248973 m!4831411))

(declare-fun m!4831413 () Bool)

(assert (=> d!1248973 m!4831413))

(assert (=> b!4246430 d!1248973))

(declare-fun d!1248981 () Bool)

(declare-fun list!16938 (Conc!14163) List!47128)

(assert (=> d!1248981 (= (list!16936 (charsOf!5296 (_1!25417 (v!41039 lt!1507615)))) (list!16938 (c!721256 (charsOf!5296 (_1!25417 (v!41039 lt!1507615))))))))

(declare-fun bs!598511 () Bool)

(assert (= bs!598511 d!1248981))

(declare-fun m!4831423 () Bool)

(assert (=> bs!598511 m!4831423))

(assert (=> b!4246430 d!1248981))

(declare-fun d!1248985 () Bool)

(declare-fun lt!1507640 () BalanceConc!27920)

(assert (=> d!1248985 (= (list!16936 lt!1507640) (originalCharacters!8296 (_1!25417 (v!41039 lt!1507615))))))

(declare-fun dynLambda!20148 (Int TokenValue!8182) BalanceConc!27920)

(assert (=> d!1248985 (= lt!1507640 (dynLambda!20148 (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507615))))) (value!247168 (_1!25417 (v!41039 lt!1507615)))))))

(assert (=> d!1248985 (= (charsOf!5296 (_1!25417 (v!41039 lt!1507615))) lt!1507640)))

(declare-fun b_lambda!125079 () Bool)

(assert (=> (not b_lambda!125079) (not d!1248985)))

(declare-fun tb!255811 () Bool)

(declare-fun t!351757 () Bool)

(assert (=> (and b!4246423 (= (toChars!10575 (transformation!7952 (h!52425 rules!2971))) (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507615)))))) t!351757) tb!255811))

(declare-fun b!4246515 () Bool)

(declare-fun e!2637436 () Bool)

(declare-fun tp!1302553 () Bool)

(declare-fun inv!61772 (Conc!14163) Bool)

(assert (=> b!4246515 (= e!2637436 (and (inv!61772 (c!721256 (dynLambda!20148 (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507615))))) (value!247168 (_1!25417 (v!41039 lt!1507615)))))) tp!1302553))))

(declare-fun result!311958 () Bool)

(declare-fun inv!61773 (BalanceConc!27920) Bool)

(assert (=> tb!255811 (= result!311958 (and (inv!61773 (dynLambda!20148 (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507615))))) (value!247168 (_1!25417 (v!41039 lt!1507615))))) e!2637436))))

(assert (= tb!255811 b!4246515))

(declare-fun m!4831433 () Bool)

(assert (=> b!4246515 m!4831433))

(declare-fun m!4831435 () Bool)

(assert (=> tb!255811 m!4831435))

(assert (=> d!1248985 t!351757))

(declare-fun b_and!336429 () Bool)

(assert (= b_and!336415 (and (=> t!351757 result!311958) b_and!336429)))

(declare-fun t!351759 () Bool)

(declare-fun tb!255813 () Bool)

(assert (=> (and b!4246416 (= (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592)))) (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507615)))))) t!351759) tb!255813))

(declare-fun result!311962 () Bool)

(assert (= result!311962 result!311958))

(assert (=> d!1248985 t!351759))

(declare-fun b_and!336431 () Bool)

(assert (= b_and!336419 (and (=> t!351759 result!311962) b_and!336431)))

(declare-fun m!4831437 () Bool)

(assert (=> d!1248985 m!4831437))

(declare-fun m!4831439 () Bool)

(assert (=> d!1248985 m!4831439))

(assert (=> b!4246430 d!1248985))

(declare-fun d!1248995 () Bool)

(declare-fun res!1745769 () Bool)

(declare-fun e!2637439 () Bool)

(assert (=> d!1248995 (=> (not res!1745769) (not e!2637439))))

(declare-fun rulesValid!3088 (LexerInterface!7547 List!47129) Bool)

(assert (=> d!1248995 (= res!1745769 (rulesValid!3088 thiss!21641 rules!2971))))

(assert (=> d!1248995 (= (rulesInvariant!6658 thiss!21641 rules!2971) e!2637439)))

(declare-fun b!4246518 () Bool)

(declare-datatypes ((List!47131 0))(
  ( (Nil!47007) (Cons!47007 (h!52427 String!54840) (t!351796 List!47131)) )
))
(declare-fun noDuplicateTag!3249 (LexerInterface!7547 List!47129 List!47131) Bool)

(assert (=> b!4246518 (= e!2637439 (noDuplicateTag!3249 thiss!21641 rules!2971 Nil!47007))))

(assert (= (and d!1248995 res!1745769) b!4246518))

(declare-fun m!4831441 () Bool)

(assert (=> d!1248995 m!4831441))

(declare-fun m!4831443 () Bool)

(assert (=> b!4246518 m!4831443))

(assert (=> b!4246436 d!1248995))

(declare-fun b!4246544 () Bool)

(declare-fun e!2637456 () tuple2!44568)

(declare-fun lt!1507656 () Option!10086)

(declare-fun lt!1507657 () tuple2!44568)

(assert (=> b!4246544 (= e!2637456 (tuple2!44569 (Cons!47006 (_1!25417 (v!41039 lt!1507656)) (_1!25418 lt!1507657)) (_2!25418 lt!1507657)))))

(assert (=> b!4246544 (= lt!1507657 (lexList!2053 thiss!21641 rules!2971 (_2!25417 (v!41039 lt!1507656))))))

(declare-fun b!4246545 () Bool)

(assert (=> b!4246545 (= e!2637456 (tuple2!44569 Nil!47006 longerInput!62))))

(declare-fun b!4246546 () Bool)

(declare-fun e!2637455 () Bool)

(declare-fun lt!1507658 () tuple2!44568)

(declare-fun isEmpty!27808 (List!47130) Bool)

(assert (=> b!4246546 (= e!2637455 (not (isEmpty!27808 (_1!25418 lt!1507658))))))

(declare-fun b!4246547 () Bool)

(declare-fun e!2637457 () Bool)

(assert (=> b!4246547 (= e!2637457 e!2637455)))

(declare-fun res!1745775 () Bool)

(assert (=> b!4246547 (= res!1745775 (< (size!34423 (_2!25418 lt!1507658)) (size!34423 longerInput!62)))))

(assert (=> b!4246547 (=> (not res!1745775) (not e!2637455))))

(declare-fun b!4246548 () Bool)

(assert (=> b!4246548 (= e!2637457 (= (_2!25418 lt!1507658) longerInput!62))))

(declare-fun d!1248997 () Bool)

(assert (=> d!1248997 e!2637457))

(declare-fun c!721291 () Bool)

(declare-fun size!34425 (List!47130) Int)

(assert (=> d!1248997 (= c!721291 (> (size!34425 (_1!25418 lt!1507658)) 0))))

(assert (=> d!1248997 (= lt!1507658 e!2637456)))

(declare-fun c!721290 () Bool)

(assert (=> d!1248997 (= c!721290 ((_ is Some!10085) lt!1507656))))

(assert (=> d!1248997 (= lt!1507656 (maxPrefix!4503 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1248997 (= (lexList!2053 thiss!21641 rules!2971 longerInput!62) lt!1507658)))

(assert (= (and d!1248997 c!721290) b!4246544))

(assert (= (and d!1248997 (not c!721290)) b!4246545))

(assert (= (and d!1248997 c!721291) b!4246547))

(assert (= (and d!1248997 (not c!721291)) b!4246548))

(assert (= (and b!4246547 res!1745775) b!4246546))

(declare-fun m!4831453 () Bool)

(assert (=> b!4246544 m!4831453))

(declare-fun m!4831455 () Bool)

(assert (=> b!4246546 m!4831455))

(declare-fun m!4831457 () Bool)

(assert (=> b!4246547 m!4831457))

(assert (=> b!4246547 m!4831329))

(declare-fun m!4831459 () Bool)

(assert (=> d!1248997 m!4831459))

(assert (=> d!1248997 m!4831335))

(assert (=> b!4246427 d!1248997))

(declare-fun d!1249001 () Bool)

(assert (=> d!1249001 (= (inv!61765 (tag!8816 (h!52425 rules!2971))) (= (mod (str.len (value!247167 (tag!8816 (h!52425 rules!2971)))) 2) 0))))

(assert (=> b!4246434 d!1249001))

(declare-fun d!1249003 () Bool)

(declare-fun res!1745792 () Bool)

(declare-fun e!2637466 () Bool)

(assert (=> d!1249003 (=> (not res!1745792) (not e!2637466))))

(declare-fun semiInverseModEq!3467 (Int Int) Bool)

(assert (=> d!1249003 (= res!1745792 (semiInverseModEq!3467 (toChars!10575 (transformation!7952 (h!52425 rules!2971))) (toValue!10716 (transformation!7952 (h!52425 rules!2971)))))))

(assert (=> d!1249003 (= (inv!61769 (transformation!7952 (h!52425 rules!2971))) e!2637466)))

(declare-fun b!4246569 () Bool)

(declare-fun equivClasses!3366 (Int Int) Bool)

(assert (=> b!4246569 (= e!2637466 (equivClasses!3366 (toChars!10575 (transformation!7952 (h!52425 rules!2971))) (toValue!10716 (transformation!7952 (h!52425 rules!2971)))))))

(assert (= (and d!1249003 res!1745792) b!4246569))

(declare-fun m!4831461 () Bool)

(assert (=> d!1249003 m!4831461))

(declare-fun m!4831463 () Bool)

(assert (=> b!4246569 m!4831463))

(assert (=> b!4246434 d!1249003))

(declare-fun d!1249005 () Bool)

(assert (=> d!1249005 (= (inv!61765 (tag!8816 (rule!11082 (h!52426 tokens!592)))) (= (mod (str.len (value!247167 (tag!8816 (rule!11082 (h!52426 tokens!592))))) 2) 0))))

(assert (=> b!4246424 d!1249005))

(declare-fun d!1249007 () Bool)

(declare-fun res!1745793 () Bool)

(declare-fun e!2637467 () Bool)

(assert (=> d!1249007 (=> (not res!1745793) (not e!2637467))))

(assert (=> d!1249007 (= res!1745793 (semiInverseModEq!3467 (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592)))) (toValue!10716 (transformation!7952 (rule!11082 (h!52426 tokens!592))))))))

(assert (=> d!1249007 (= (inv!61769 (transformation!7952 (rule!11082 (h!52426 tokens!592)))) e!2637467)))

(declare-fun b!4246570 () Bool)

(assert (=> b!4246570 (= e!2637467 (equivClasses!3366 (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592)))) (toValue!10716 (transformation!7952 (rule!11082 (h!52426 tokens!592))))))))

(assert (= (and d!1249007 res!1745793) b!4246570))

(declare-fun m!4831465 () Bool)

(assert (=> d!1249007 m!4831465))

(declare-fun m!4831467 () Bool)

(assert (=> b!4246570 m!4831467))

(assert (=> b!4246424 d!1249007))

(declare-fun b!4246682 () Bool)

(declare-fun res!1745837 () Bool)

(declare-fun e!2637536 () Bool)

(assert (=> b!4246682 (=> (not res!1745837) (not e!2637536))))

(declare-fun lt!1507691 () Option!10086)

(declare-fun get!15272 (Option!10086) tuple2!44566)

(declare-fun apply!10766 (TokenValueInjection!15792 BalanceConc!27920) TokenValue!8182)

(declare-fun seqFromList!5826 (List!47128) BalanceConc!27920)

(assert (=> b!4246682 (= res!1745837 (= (value!247168 (_1!25417 (get!15272 lt!1507691))) (apply!10766 (transformation!7952 (rule!11082 (_1!25417 (get!15272 lt!1507691)))) (seqFromList!5826 (originalCharacters!8296 (_1!25417 (get!15272 lt!1507691)))))))))

(declare-fun b!4246683 () Bool)

(declare-fun res!1745835 () Bool)

(assert (=> b!4246683 (=> (not res!1745835) (not e!2637536))))

(declare-fun matchR!6461 (Regex!12857 List!47128) Bool)

(assert (=> b!4246683 (= res!1745835 (matchR!6461 (regex!7952 (rule!11082 (_1!25417 (get!15272 lt!1507691)))) (list!16936 (charsOf!5296 (_1!25417 (get!15272 lt!1507691))))))))

(declare-fun b!4246684 () Bool)

(declare-fun e!2637537 () Option!10086)

(declare-fun lt!1507693 () Option!10086)

(declare-fun lt!1507692 () Option!10086)

(assert (=> b!4246684 (= e!2637537 (ite (and ((_ is None!10085) lt!1507693) ((_ is None!10085) lt!1507692)) None!10085 (ite ((_ is None!10085) lt!1507692) lt!1507693 (ite ((_ is None!10085) lt!1507693) lt!1507692 (ite (>= (size!34422 (_1!25417 (v!41039 lt!1507693))) (size!34422 (_1!25417 (v!41039 lt!1507692)))) lt!1507693 lt!1507692)))))))

(declare-fun call!293911 () Option!10086)

(assert (=> b!4246684 (= lt!1507693 call!293911)))

(assert (=> b!4246684 (= lt!1507692 (maxPrefix!4503 thiss!21641 (t!351746 rules!2971) shorterInput!62))))

(declare-fun b!4246685 () Bool)

(declare-fun res!1745832 () Bool)

(assert (=> b!4246685 (=> (not res!1745832) (not e!2637536))))

(assert (=> b!4246685 (= res!1745832 (= (list!16936 (charsOf!5296 (_1!25417 (get!15272 lt!1507691)))) (originalCharacters!8296 (_1!25417 (get!15272 lt!1507691)))))))

(declare-fun b!4246686 () Bool)

(declare-fun res!1745833 () Bool)

(assert (=> b!4246686 (=> (not res!1745833) (not e!2637536))))

(assert (=> b!4246686 (= res!1745833 (= (++!11965 (list!16936 (charsOf!5296 (_1!25417 (get!15272 lt!1507691)))) (_2!25417 (get!15272 lt!1507691))) shorterInput!62))))

(declare-fun d!1249009 () Bool)

(declare-fun e!2637538 () Bool)

(assert (=> d!1249009 e!2637538))

(declare-fun res!1745834 () Bool)

(assert (=> d!1249009 (=> res!1745834 e!2637538)))

(declare-fun isEmpty!27809 (Option!10086) Bool)

(assert (=> d!1249009 (= res!1745834 (isEmpty!27809 lt!1507691))))

(assert (=> d!1249009 (= lt!1507691 e!2637537)))

(declare-fun c!721305 () Bool)

(assert (=> d!1249009 (= c!721305 (and ((_ is Cons!47005) rules!2971) ((_ is Nil!47005) (t!351746 rules!2971))))))

(declare-datatypes ((Unit!66027 0))(
  ( (Unit!66028) )
))
(declare-fun lt!1507694 () Unit!66027)

(declare-fun lt!1507695 () Unit!66027)

(assert (=> d!1249009 (= lt!1507694 lt!1507695)))

(declare-fun isPrefix!4739 (List!47128 List!47128) Bool)

(assert (=> d!1249009 (isPrefix!4739 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3136 (List!47128 List!47128) Unit!66027)

(assert (=> d!1249009 (= lt!1507695 (lemmaIsPrefixRefl!3136 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!2990 (LexerInterface!7547 List!47129) Bool)

(assert (=> d!1249009 (rulesValidInductive!2990 thiss!21641 rules!2971)))

(assert (=> d!1249009 (= (maxPrefix!4503 thiss!21641 rules!2971 shorterInput!62) lt!1507691)))

(declare-fun b!4246687 () Bool)

(declare-fun contains!9747 (List!47129 Rule!15704) Bool)

(assert (=> b!4246687 (= e!2637536 (contains!9747 rules!2971 (rule!11082 (_1!25417 (get!15272 lt!1507691)))))))

(declare-fun b!4246688 () Bool)

(declare-fun res!1745836 () Bool)

(assert (=> b!4246688 (=> (not res!1745836) (not e!2637536))))

(assert (=> b!4246688 (= res!1745836 (< (size!34423 (_2!25417 (get!15272 lt!1507691))) (size!34423 shorterInput!62)))))

(declare-fun b!4246689 () Bool)

(assert (=> b!4246689 (= e!2637538 e!2637536)))

(declare-fun res!1745831 () Bool)

(assert (=> b!4246689 (=> (not res!1745831) (not e!2637536))))

(declare-fun isDefined!7454 (Option!10086) Bool)

(assert (=> b!4246689 (= res!1745831 (isDefined!7454 lt!1507691))))

(declare-fun b!4246690 () Bool)

(assert (=> b!4246690 (= e!2637537 call!293911)))

(declare-fun bm!293906 () Bool)

(declare-fun maxPrefixOneRule!3464 (LexerInterface!7547 Rule!15704 List!47128) Option!10086)

(assert (=> bm!293906 (= call!293911 (maxPrefixOneRule!3464 thiss!21641 (h!52425 rules!2971) shorterInput!62))))

(assert (= (and d!1249009 c!721305) b!4246690))

(assert (= (and d!1249009 (not c!721305)) b!4246684))

(assert (= (or b!4246690 b!4246684) bm!293906))

(assert (= (and d!1249009 (not res!1745834)) b!4246689))

(assert (= (and b!4246689 res!1745831) b!4246685))

(assert (= (and b!4246685 res!1745832) b!4246688))

(assert (= (and b!4246688 res!1745836) b!4246686))

(assert (= (and b!4246686 res!1745833) b!4246682))

(assert (= (and b!4246682 res!1745837) b!4246683))

(assert (= (and b!4246683 res!1745835) b!4246687))

(declare-fun m!4831579 () Bool)

(assert (=> b!4246684 m!4831579))

(declare-fun m!4831581 () Bool)

(assert (=> b!4246682 m!4831581))

(declare-fun m!4831583 () Bool)

(assert (=> b!4246682 m!4831583))

(assert (=> b!4246682 m!4831583))

(declare-fun m!4831585 () Bool)

(assert (=> b!4246682 m!4831585))

(assert (=> b!4246683 m!4831581))

(declare-fun m!4831587 () Bool)

(assert (=> b!4246683 m!4831587))

(assert (=> b!4246683 m!4831587))

(declare-fun m!4831589 () Bool)

(assert (=> b!4246683 m!4831589))

(assert (=> b!4246683 m!4831589))

(declare-fun m!4831591 () Bool)

(assert (=> b!4246683 m!4831591))

(assert (=> b!4246687 m!4831581))

(declare-fun m!4831593 () Bool)

(assert (=> b!4246687 m!4831593))

(declare-fun m!4831595 () Bool)

(assert (=> bm!293906 m!4831595))

(assert (=> b!4246685 m!4831581))

(assert (=> b!4246685 m!4831587))

(assert (=> b!4246685 m!4831587))

(assert (=> b!4246685 m!4831589))

(assert (=> b!4246686 m!4831581))

(assert (=> b!4246686 m!4831587))

(assert (=> b!4246686 m!4831587))

(assert (=> b!4246686 m!4831589))

(assert (=> b!4246686 m!4831589))

(declare-fun m!4831597 () Bool)

(assert (=> b!4246686 m!4831597))

(declare-fun m!4831599 () Bool)

(assert (=> d!1249009 m!4831599))

(declare-fun m!4831601 () Bool)

(assert (=> d!1249009 m!4831601))

(declare-fun m!4831603 () Bool)

(assert (=> d!1249009 m!4831603))

(declare-fun m!4831605 () Bool)

(assert (=> d!1249009 m!4831605))

(assert (=> b!4246688 m!4831581))

(declare-fun m!4831607 () Bool)

(assert (=> b!4246688 m!4831607))

(assert (=> b!4246688 m!4831331))

(declare-fun m!4831609 () Bool)

(assert (=> b!4246689 m!4831609))

(assert (=> b!4246425 d!1249009))

(declare-fun b!4246691 () Bool)

(declare-fun res!1745844 () Bool)

(declare-fun e!2637539 () Bool)

(assert (=> b!4246691 (=> (not res!1745844) (not e!2637539))))

(declare-fun lt!1507696 () Option!10086)

(assert (=> b!4246691 (= res!1745844 (= (value!247168 (_1!25417 (get!15272 lt!1507696))) (apply!10766 (transformation!7952 (rule!11082 (_1!25417 (get!15272 lt!1507696)))) (seqFromList!5826 (originalCharacters!8296 (_1!25417 (get!15272 lt!1507696)))))))))

(declare-fun b!4246692 () Bool)

(declare-fun res!1745842 () Bool)

(assert (=> b!4246692 (=> (not res!1745842) (not e!2637539))))

(assert (=> b!4246692 (= res!1745842 (matchR!6461 (regex!7952 (rule!11082 (_1!25417 (get!15272 lt!1507696)))) (list!16936 (charsOf!5296 (_1!25417 (get!15272 lt!1507696))))))))

(declare-fun b!4246693 () Bool)

(declare-fun e!2637540 () Option!10086)

(declare-fun lt!1507698 () Option!10086)

(declare-fun lt!1507697 () Option!10086)

(assert (=> b!4246693 (= e!2637540 (ite (and ((_ is None!10085) lt!1507698) ((_ is None!10085) lt!1507697)) None!10085 (ite ((_ is None!10085) lt!1507697) lt!1507698 (ite ((_ is None!10085) lt!1507698) lt!1507697 (ite (>= (size!34422 (_1!25417 (v!41039 lt!1507698))) (size!34422 (_1!25417 (v!41039 lt!1507697)))) lt!1507698 lt!1507697)))))))

(declare-fun call!293912 () Option!10086)

(assert (=> b!4246693 (= lt!1507698 call!293912)))

(assert (=> b!4246693 (= lt!1507697 (maxPrefix!4503 thiss!21641 (t!351746 rules!2971) longerInput!62))))

(declare-fun b!4246694 () Bool)

(declare-fun res!1745839 () Bool)

(assert (=> b!4246694 (=> (not res!1745839) (not e!2637539))))

(assert (=> b!4246694 (= res!1745839 (= (list!16936 (charsOf!5296 (_1!25417 (get!15272 lt!1507696)))) (originalCharacters!8296 (_1!25417 (get!15272 lt!1507696)))))))

(declare-fun b!4246695 () Bool)

(declare-fun res!1745840 () Bool)

(assert (=> b!4246695 (=> (not res!1745840) (not e!2637539))))

(assert (=> b!4246695 (= res!1745840 (= (++!11965 (list!16936 (charsOf!5296 (_1!25417 (get!15272 lt!1507696)))) (_2!25417 (get!15272 lt!1507696))) longerInput!62))))

(declare-fun d!1249031 () Bool)

(declare-fun e!2637541 () Bool)

(assert (=> d!1249031 e!2637541))

(declare-fun res!1745841 () Bool)

(assert (=> d!1249031 (=> res!1745841 e!2637541)))

(assert (=> d!1249031 (= res!1745841 (isEmpty!27809 lt!1507696))))

(assert (=> d!1249031 (= lt!1507696 e!2637540)))

(declare-fun c!721306 () Bool)

(assert (=> d!1249031 (= c!721306 (and ((_ is Cons!47005) rules!2971) ((_ is Nil!47005) (t!351746 rules!2971))))))

(declare-fun lt!1507699 () Unit!66027)

(declare-fun lt!1507700 () Unit!66027)

(assert (=> d!1249031 (= lt!1507699 lt!1507700)))

(assert (=> d!1249031 (isPrefix!4739 longerInput!62 longerInput!62)))

(assert (=> d!1249031 (= lt!1507700 (lemmaIsPrefixRefl!3136 longerInput!62 longerInput!62))))

(assert (=> d!1249031 (rulesValidInductive!2990 thiss!21641 rules!2971)))

(assert (=> d!1249031 (= (maxPrefix!4503 thiss!21641 rules!2971 longerInput!62) lt!1507696)))

(declare-fun b!4246696 () Bool)

(assert (=> b!4246696 (= e!2637539 (contains!9747 rules!2971 (rule!11082 (_1!25417 (get!15272 lt!1507696)))))))

(declare-fun b!4246697 () Bool)

(declare-fun res!1745843 () Bool)

(assert (=> b!4246697 (=> (not res!1745843) (not e!2637539))))

(assert (=> b!4246697 (= res!1745843 (< (size!34423 (_2!25417 (get!15272 lt!1507696))) (size!34423 longerInput!62)))))

(declare-fun b!4246698 () Bool)

(assert (=> b!4246698 (= e!2637541 e!2637539)))

(declare-fun res!1745838 () Bool)

(assert (=> b!4246698 (=> (not res!1745838) (not e!2637539))))

(assert (=> b!4246698 (= res!1745838 (isDefined!7454 lt!1507696))))

(declare-fun b!4246699 () Bool)

(assert (=> b!4246699 (= e!2637540 call!293912)))

(declare-fun bm!293907 () Bool)

(assert (=> bm!293907 (= call!293912 (maxPrefixOneRule!3464 thiss!21641 (h!52425 rules!2971) longerInput!62))))

(assert (= (and d!1249031 c!721306) b!4246699))

(assert (= (and d!1249031 (not c!721306)) b!4246693))

(assert (= (or b!4246699 b!4246693) bm!293907))

(assert (= (and d!1249031 (not res!1745841)) b!4246698))

(assert (= (and b!4246698 res!1745838) b!4246694))

(assert (= (and b!4246694 res!1745839) b!4246697))

(assert (= (and b!4246697 res!1745843) b!4246695))

(assert (= (and b!4246695 res!1745840) b!4246691))

(assert (= (and b!4246691 res!1745844) b!4246692))

(assert (= (and b!4246692 res!1745842) b!4246696))

(declare-fun m!4831611 () Bool)

(assert (=> b!4246693 m!4831611))

(declare-fun m!4831613 () Bool)

(assert (=> b!4246691 m!4831613))

(declare-fun m!4831615 () Bool)

(assert (=> b!4246691 m!4831615))

(assert (=> b!4246691 m!4831615))

(declare-fun m!4831617 () Bool)

(assert (=> b!4246691 m!4831617))

(assert (=> b!4246692 m!4831613))

(declare-fun m!4831619 () Bool)

(assert (=> b!4246692 m!4831619))

(assert (=> b!4246692 m!4831619))

(declare-fun m!4831621 () Bool)

(assert (=> b!4246692 m!4831621))

(assert (=> b!4246692 m!4831621))

(declare-fun m!4831623 () Bool)

(assert (=> b!4246692 m!4831623))

(assert (=> b!4246696 m!4831613))

(declare-fun m!4831625 () Bool)

(assert (=> b!4246696 m!4831625))

(declare-fun m!4831627 () Bool)

(assert (=> bm!293907 m!4831627))

(assert (=> b!4246694 m!4831613))

(assert (=> b!4246694 m!4831619))

(assert (=> b!4246694 m!4831619))

(assert (=> b!4246694 m!4831621))

(assert (=> b!4246695 m!4831613))

(assert (=> b!4246695 m!4831619))

(assert (=> b!4246695 m!4831619))

(assert (=> b!4246695 m!4831621))

(assert (=> b!4246695 m!4831621))

(declare-fun m!4831629 () Bool)

(assert (=> b!4246695 m!4831629))

(declare-fun m!4831631 () Bool)

(assert (=> d!1249031 m!4831631))

(declare-fun m!4831633 () Bool)

(assert (=> d!1249031 m!4831633))

(declare-fun m!4831635 () Bool)

(assert (=> d!1249031 m!4831635))

(assert (=> d!1249031 m!4831605))

(assert (=> b!4246697 m!4831613))

(declare-fun m!4831637 () Bool)

(assert (=> b!4246697 m!4831637))

(assert (=> b!4246697 m!4831329))

(declare-fun m!4831639 () Bool)

(assert (=> b!4246698 m!4831639))

(assert (=> b!4246425 d!1249031))

(declare-fun d!1249033 () Bool)

(assert (=> d!1249033 (= (isEmpty!27805 longerInput!62) ((_ is Nil!47004) longerInput!62))))

(assert (=> b!4246431 d!1249033))

(declare-fun d!1249035 () Bool)

(declare-fun res!1745849 () Bool)

(declare-fun e!2637544 () Bool)

(assert (=> d!1249035 (=> (not res!1745849) (not e!2637544))))

(assert (=> d!1249035 (= res!1745849 (not (isEmpty!27805 (originalCharacters!8296 (h!52426 tokens!592)))))))

(assert (=> d!1249035 (= (inv!61768 (h!52426 tokens!592)) e!2637544)))

(declare-fun b!4246704 () Bool)

(declare-fun res!1745850 () Bool)

(assert (=> b!4246704 (=> (not res!1745850) (not e!2637544))))

(assert (=> b!4246704 (= res!1745850 (= (originalCharacters!8296 (h!52426 tokens!592)) (list!16936 (dynLambda!20148 (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592)))) (value!247168 (h!52426 tokens!592))))))))

(declare-fun b!4246705 () Bool)

(assert (=> b!4246705 (= e!2637544 (= (size!34422 (h!52426 tokens!592)) (size!34423 (originalCharacters!8296 (h!52426 tokens!592)))))))

(assert (= (and d!1249035 res!1745849) b!4246704))

(assert (= (and b!4246704 res!1745850) b!4246705))

(declare-fun b_lambda!125085 () Bool)

(assert (=> (not b_lambda!125085) (not b!4246704)))

(declare-fun t!351777 () Bool)

(declare-fun tb!255831 () Bool)

(assert (=> (and b!4246423 (= (toChars!10575 (transformation!7952 (h!52425 rules!2971))) (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592))))) t!351777) tb!255831))

(declare-fun b!4246706 () Bool)

(declare-fun e!2637545 () Bool)

(declare-fun tp!1302608 () Bool)

(assert (=> b!4246706 (= e!2637545 (and (inv!61772 (c!721256 (dynLambda!20148 (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592)))) (value!247168 (h!52426 tokens!592))))) tp!1302608))))

(declare-fun result!311988 () Bool)

(assert (=> tb!255831 (= result!311988 (and (inv!61773 (dynLambda!20148 (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592)))) (value!247168 (h!52426 tokens!592)))) e!2637545))))

(assert (= tb!255831 b!4246706))

(declare-fun m!4831641 () Bool)

(assert (=> b!4246706 m!4831641))

(declare-fun m!4831643 () Bool)

(assert (=> tb!255831 m!4831643))

(assert (=> b!4246704 t!351777))

(declare-fun b_and!336445 () Bool)

(assert (= b_and!336429 (and (=> t!351777 result!311988) b_and!336445)))

(declare-fun t!351779 () Bool)

(declare-fun tb!255833 () Bool)

(assert (=> (and b!4246416 (= (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592)))) (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592))))) t!351779) tb!255833))

(declare-fun result!311990 () Bool)

(assert (= result!311990 result!311988))

(assert (=> b!4246704 t!351779))

(declare-fun b_and!336447 () Bool)

(assert (= b_and!336431 (and (=> t!351779 result!311990) b_and!336447)))

(declare-fun m!4831645 () Bool)

(assert (=> d!1249035 m!4831645))

(declare-fun m!4831647 () Bool)

(assert (=> b!4246704 m!4831647))

(assert (=> b!4246704 m!4831647))

(declare-fun m!4831649 () Bool)

(assert (=> b!4246704 m!4831649))

(declare-fun m!4831651 () Bool)

(assert (=> b!4246705 m!4831651))

(assert (=> b!4246420 d!1249035))

(declare-fun d!1249037 () Bool)

(declare-fun lt!1507701 () Int)

(assert (=> d!1249037 (>= lt!1507701 0)))

(declare-fun e!2637546 () Int)

(assert (=> d!1249037 (= lt!1507701 e!2637546)))

(declare-fun c!721307 () Bool)

(assert (=> d!1249037 (= c!721307 ((_ is Nil!47004) (_2!25417 (v!41039 lt!1507617))))))

(assert (=> d!1249037 (= (size!34423 (_2!25417 (v!41039 lt!1507617))) lt!1507701)))

(declare-fun b!4246707 () Bool)

(assert (=> b!4246707 (= e!2637546 0)))

(declare-fun b!4246708 () Bool)

(assert (=> b!4246708 (= e!2637546 (+ 1 (size!34423 (t!351745 (_2!25417 (v!41039 lt!1507617))))))))

(assert (= (and d!1249037 c!721307) b!4246707))

(assert (= (and d!1249037 (not c!721307)) b!4246708))

(declare-fun m!4831653 () Bool)

(assert (=> b!4246708 m!4831653))

(assert (=> b!4246432 d!1249037))

(declare-fun d!1249039 () Bool)

(declare-fun lt!1507702 () Int)

(assert (=> d!1249039 (>= lt!1507702 0)))

(declare-fun e!2637547 () Int)

(assert (=> d!1249039 (= lt!1507702 e!2637547)))

(declare-fun c!721308 () Bool)

(assert (=> d!1249039 (= c!721308 ((_ is Nil!47004) (_2!25417 (v!41039 lt!1507615))))))

(assert (=> d!1249039 (= (size!34423 (_2!25417 (v!41039 lt!1507615))) lt!1507702)))

(declare-fun b!4246709 () Bool)

(assert (=> b!4246709 (= e!2637547 0)))

(declare-fun b!4246710 () Bool)

(assert (=> b!4246710 (= e!2637547 (+ 1 (size!34423 (t!351745 (_2!25417 (v!41039 lt!1507615))))))))

(assert (= (and d!1249039 c!721308) b!4246709))

(assert (= (and d!1249039 (not c!721308)) b!4246710))

(declare-fun m!4831655 () Bool)

(assert (=> b!4246710 m!4831655))

(assert (=> b!4246432 d!1249039))

(declare-fun lt!1507703 () List!47128)

(declare-fun b!4246714 () Bool)

(declare-fun e!2637548 () Bool)

(assert (=> b!4246714 (= e!2637548 (or (not (= (_2!25417 (v!41039 lt!1507617)) Nil!47004)) (= lt!1507703 lt!1507618)))))

(declare-fun b!4246713 () Bool)

(declare-fun res!1745851 () Bool)

(assert (=> b!4246713 (=> (not res!1745851) (not e!2637548))))

(assert (=> b!4246713 (= res!1745851 (= (size!34423 lt!1507703) (+ (size!34423 lt!1507618) (size!34423 (_2!25417 (v!41039 lt!1507617))))))))

(declare-fun b!4246712 () Bool)

(declare-fun e!2637549 () List!47128)

(assert (=> b!4246712 (= e!2637549 (Cons!47004 (h!52424 lt!1507618) (++!11965 (t!351745 lt!1507618) (_2!25417 (v!41039 lt!1507617)))))))

(declare-fun b!4246711 () Bool)

(assert (=> b!4246711 (= e!2637549 (_2!25417 (v!41039 lt!1507617)))))

(declare-fun d!1249041 () Bool)

(assert (=> d!1249041 e!2637548))

(declare-fun res!1745852 () Bool)

(assert (=> d!1249041 (=> (not res!1745852) (not e!2637548))))

(assert (=> d!1249041 (= res!1745852 (= (content!7390 lt!1507703) ((_ map or) (content!7390 lt!1507618) (content!7390 (_2!25417 (v!41039 lt!1507617))))))))

(assert (=> d!1249041 (= lt!1507703 e!2637549)))

(declare-fun c!721309 () Bool)

(assert (=> d!1249041 (= c!721309 ((_ is Nil!47004) lt!1507618))))

(assert (=> d!1249041 (= (++!11965 lt!1507618 (_2!25417 (v!41039 lt!1507617))) lt!1507703)))

(assert (= (and d!1249041 c!721309) b!4246711))

(assert (= (and d!1249041 (not c!721309)) b!4246712))

(assert (= (and d!1249041 res!1745852) b!4246713))

(assert (= (and b!4246713 res!1745851) b!4246714))

(declare-fun m!4831657 () Bool)

(assert (=> b!4246713 m!4831657))

(declare-fun m!4831659 () Bool)

(assert (=> b!4246713 m!4831659))

(assert (=> b!4246713 m!4831345))

(declare-fun m!4831661 () Bool)

(assert (=> b!4246712 m!4831661))

(declare-fun m!4831663 () Bool)

(assert (=> d!1249041 m!4831663))

(declare-fun m!4831665 () Bool)

(assert (=> d!1249041 m!4831665))

(declare-fun m!4831667 () Bool)

(assert (=> d!1249041 m!4831667))

(assert (=> b!4246433 d!1249041))

(declare-fun d!1249043 () Bool)

(assert (=> d!1249043 (= (list!16936 (charsOf!5296 (_1!25417 (v!41039 lt!1507617)))) (list!16938 (c!721256 (charsOf!5296 (_1!25417 (v!41039 lt!1507617))))))))

(declare-fun bs!598513 () Bool)

(assert (= bs!598513 d!1249043))

(declare-fun m!4831669 () Bool)

(assert (=> bs!598513 m!4831669))

(assert (=> b!4246433 d!1249043))

(declare-fun d!1249045 () Bool)

(declare-fun lt!1507704 () BalanceConc!27920)

(assert (=> d!1249045 (= (list!16936 lt!1507704) (originalCharacters!8296 (_1!25417 (v!41039 lt!1507617))))))

(assert (=> d!1249045 (= lt!1507704 (dynLambda!20148 (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507617))))) (value!247168 (_1!25417 (v!41039 lt!1507617)))))))

(assert (=> d!1249045 (= (charsOf!5296 (_1!25417 (v!41039 lt!1507617))) lt!1507704)))

(declare-fun b_lambda!125087 () Bool)

(assert (=> (not b_lambda!125087) (not d!1249045)))

(declare-fun tb!255835 () Bool)

(declare-fun t!351781 () Bool)

(assert (=> (and b!4246423 (= (toChars!10575 (transformation!7952 (h!52425 rules!2971))) (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507617)))))) t!351781) tb!255835))

(declare-fun b!4246715 () Bool)

(declare-fun e!2637550 () Bool)

(declare-fun tp!1302609 () Bool)

(assert (=> b!4246715 (= e!2637550 (and (inv!61772 (c!721256 (dynLambda!20148 (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507617))))) (value!247168 (_1!25417 (v!41039 lt!1507617)))))) tp!1302609))))

(declare-fun result!311992 () Bool)

(assert (=> tb!255835 (= result!311992 (and (inv!61773 (dynLambda!20148 (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507617))))) (value!247168 (_1!25417 (v!41039 lt!1507617))))) e!2637550))))

(assert (= tb!255835 b!4246715))

(declare-fun m!4831671 () Bool)

(assert (=> b!4246715 m!4831671))

(declare-fun m!4831673 () Bool)

(assert (=> tb!255835 m!4831673))

(assert (=> d!1249045 t!351781))

(declare-fun b_and!336449 () Bool)

(assert (= b_and!336445 (and (=> t!351781 result!311992) b_and!336449)))

(declare-fun tb!255837 () Bool)

(declare-fun t!351783 () Bool)

(assert (=> (and b!4246416 (= (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592)))) (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507617)))))) t!351783) tb!255837))

(declare-fun result!311994 () Bool)

(assert (= result!311994 result!311992))

(assert (=> d!1249045 t!351783))

(declare-fun b_and!336451 () Bool)

(assert (= b_and!336447 (and (=> t!351783 result!311994) b_and!336451)))

(declare-fun m!4831675 () Bool)

(assert (=> d!1249045 m!4831675))

(declare-fun m!4831677 () Bool)

(assert (=> d!1249045 m!4831677))

(assert (=> b!4246433 d!1249045))

(declare-fun b!4246720 () Bool)

(declare-fun e!2637553 () Bool)

(declare-fun tp!1302612 () Bool)

(assert (=> b!4246720 (= e!2637553 (and tp_is_empty!22705 tp!1302612))))

(assert (=> b!4246429 (= tp!1302539 e!2637553)))

(assert (= (and b!4246429 ((_ is Cons!47004) (t!351745 longerInput!62))) b!4246720))

(declare-fun e!2637556 () Bool)

(assert (=> b!4246434 (= tp!1302536 e!2637556)))

(declare-fun b!4246731 () Bool)

(assert (=> b!4246731 (= e!2637556 tp_is_empty!22705)))

(declare-fun b!4246732 () Bool)

(declare-fun tp!1302627 () Bool)

(declare-fun tp!1302625 () Bool)

(assert (=> b!4246732 (= e!2637556 (and tp!1302627 tp!1302625))))

(declare-fun b!4246734 () Bool)

(declare-fun tp!1302626 () Bool)

(declare-fun tp!1302624 () Bool)

(assert (=> b!4246734 (= e!2637556 (and tp!1302626 tp!1302624))))

(declare-fun b!4246733 () Bool)

(declare-fun tp!1302623 () Bool)

(assert (=> b!4246733 (= e!2637556 tp!1302623)))

(assert (= (and b!4246434 ((_ is ElementMatch!12857) (regex!7952 (h!52425 rules!2971)))) b!4246731))

(assert (= (and b!4246434 ((_ is Concat!21040) (regex!7952 (h!52425 rules!2971)))) b!4246732))

(assert (= (and b!4246434 ((_ is Star!12857) (regex!7952 (h!52425 rules!2971)))) b!4246733))

(assert (= (and b!4246434 ((_ is Union!12857) (regex!7952 (h!52425 rules!2971)))) b!4246734))

(declare-fun b!4246735 () Bool)

(declare-fun e!2637557 () Bool)

(declare-fun tp!1302628 () Bool)

(assert (=> b!4246735 (= e!2637557 (and tp_is_empty!22705 tp!1302628))))

(assert (=> b!4246419 (= tp!1302546 e!2637557)))

(assert (= (and b!4246419 ((_ is Cons!47004) (originalCharacters!8296 (h!52426 tokens!592)))) b!4246735))

(declare-fun e!2637558 () Bool)

(assert (=> b!4246424 (= tp!1302540 e!2637558)))

(declare-fun b!4246736 () Bool)

(assert (=> b!4246736 (= e!2637558 tp_is_empty!22705)))

(declare-fun b!4246737 () Bool)

(declare-fun tp!1302633 () Bool)

(declare-fun tp!1302631 () Bool)

(assert (=> b!4246737 (= e!2637558 (and tp!1302633 tp!1302631))))

(declare-fun b!4246739 () Bool)

(declare-fun tp!1302632 () Bool)

(declare-fun tp!1302630 () Bool)

(assert (=> b!4246739 (= e!2637558 (and tp!1302632 tp!1302630))))

(declare-fun b!4246738 () Bool)

(declare-fun tp!1302629 () Bool)

(assert (=> b!4246738 (= e!2637558 tp!1302629)))

(assert (= (and b!4246424 ((_ is ElementMatch!12857) (regex!7952 (rule!11082 (h!52426 tokens!592))))) b!4246736))

(assert (= (and b!4246424 ((_ is Concat!21040) (regex!7952 (rule!11082 (h!52426 tokens!592))))) b!4246737))

(assert (= (and b!4246424 ((_ is Star!12857) (regex!7952 (rule!11082 (h!52426 tokens!592))))) b!4246738))

(assert (= (and b!4246424 ((_ is Union!12857) (regex!7952 (rule!11082 (h!52426 tokens!592))))) b!4246739))

(declare-fun b!4246753 () Bool)

(declare-fun b_free!126083 () Bool)

(declare-fun b_next!126787 () Bool)

(assert (=> b!4246753 (= b_free!126083 (not b_next!126787))))

(declare-fun tp!1302647 () Bool)

(declare-fun b_and!336453 () Bool)

(assert (=> b!4246753 (= tp!1302647 b_and!336453)))

(declare-fun b_free!126085 () Bool)

(declare-fun b_next!126789 () Bool)

(assert (=> b!4246753 (= b_free!126085 (not b_next!126789))))

(declare-fun t!351785 () Bool)

(declare-fun tb!255839 () Bool)

(assert (=> (and b!4246753 (= (toChars!10575 (transformation!7952 (rule!11082 (h!52426 (t!351747 tokens!592))))) (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507615)))))) t!351785) tb!255839))

(declare-fun result!312002 () Bool)

(assert (= result!312002 result!311958))

(assert (=> d!1248985 t!351785))

(declare-fun t!351787 () Bool)

(declare-fun tb!255841 () Bool)

(assert (=> (and b!4246753 (= (toChars!10575 (transformation!7952 (rule!11082 (h!52426 (t!351747 tokens!592))))) (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592))))) t!351787) tb!255841))

(declare-fun result!312004 () Bool)

(assert (= result!312004 result!311988))

(assert (=> b!4246704 t!351787))

(declare-fun tb!255843 () Bool)

(declare-fun t!351789 () Bool)

(assert (=> (and b!4246753 (= (toChars!10575 (transformation!7952 (rule!11082 (h!52426 (t!351747 tokens!592))))) (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507617)))))) t!351789) tb!255843))

(declare-fun result!312006 () Bool)

(assert (= result!312006 result!311992))

(assert (=> d!1249045 t!351789))

(declare-fun b_and!336455 () Bool)

(declare-fun tp!1302646 () Bool)

(assert (=> b!4246753 (= tp!1302646 (and (=> t!351785 result!312002) (=> t!351787 result!312004) (=> t!351789 result!312006) b_and!336455))))

(declare-fun tp!1302644 () Bool)

(declare-fun e!2637575 () Bool)

(declare-fun e!2637572 () Bool)

(declare-fun b!4246750 () Bool)

(assert (=> b!4246750 (= e!2637575 (and (inv!61768 (h!52426 (t!351747 tokens!592))) e!2637572 tp!1302644))))

(declare-fun b!4246751 () Bool)

(declare-fun e!2637576 () Bool)

(declare-fun tp!1302645 () Bool)

(assert (=> b!4246751 (= e!2637572 (and (inv!21 (value!247168 (h!52426 (t!351747 tokens!592)))) e!2637576 tp!1302645))))

(declare-fun e!2637573 () Bool)

(assert (=> b!4246753 (= e!2637573 (and tp!1302647 tp!1302646))))

(assert (=> b!4246420 (= tp!1302535 e!2637575)))

(declare-fun tp!1302648 () Bool)

(declare-fun b!4246752 () Bool)

(assert (=> b!4246752 (= e!2637576 (and tp!1302648 (inv!61765 (tag!8816 (rule!11082 (h!52426 (t!351747 tokens!592))))) (inv!61769 (transformation!7952 (rule!11082 (h!52426 (t!351747 tokens!592))))) e!2637573))))

(assert (= b!4246752 b!4246753))

(assert (= b!4246751 b!4246752))

(assert (= b!4246750 b!4246751))

(assert (= (and b!4246420 ((_ is Cons!47006) (t!351747 tokens!592))) b!4246750))

(declare-fun m!4831679 () Bool)

(assert (=> b!4246750 m!4831679))

(declare-fun m!4831681 () Bool)

(assert (=> b!4246751 m!4831681))

(declare-fun m!4831683 () Bool)

(assert (=> b!4246752 m!4831683))

(declare-fun m!4831685 () Bool)

(assert (=> b!4246752 m!4831685))

(declare-fun b!4246764 () Bool)

(declare-fun b_free!126087 () Bool)

(declare-fun b_next!126791 () Bool)

(assert (=> b!4246764 (= b_free!126087 (not b_next!126791))))

(declare-fun tp!1302659 () Bool)

(declare-fun b_and!336457 () Bool)

(assert (=> b!4246764 (= tp!1302659 b_and!336457)))

(declare-fun b_free!126089 () Bool)

(declare-fun b_next!126793 () Bool)

(assert (=> b!4246764 (= b_free!126089 (not b_next!126793))))

(declare-fun t!351791 () Bool)

(declare-fun tb!255845 () Bool)

(assert (=> (and b!4246764 (= (toChars!10575 (transformation!7952 (h!52425 (t!351746 rules!2971)))) (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507615)))))) t!351791) tb!255845))

(declare-fun result!312010 () Bool)

(assert (= result!312010 result!311958))

(assert (=> d!1248985 t!351791))

(declare-fun tb!255847 () Bool)

(declare-fun t!351793 () Bool)

(assert (=> (and b!4246764 (= (toChars!10575 (transformation!7952 (h!52425 (t!351746 rules!2971)))) (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592))))) t!351793) tb!255847))

(declare-fun result!312012 () Bool)

(assert (= result!312012 result!311988))

(assert (=> b!4246704 t!351793))

(declare-fun t!351795 () Bool)

(declare-fun tb!255849 () Bool)

(assert (=> (and b!4246764 (= (toChars!10575 (transformation!7952 (h!52425 (t!351746 rules!2971)))) (toChars!10575 (transformation!7952 (rule!11082 (_1!25417 (v!41039 lt!1507617)))))) t!351795) tb!255849))

(declare-fun result!312014 () Bool)

(assert (= result!312014 result!311992))

(assert (=> d!1249045 t!351795))

(declare-fun b_and!336459 () Bool)

(declare-fun tp!1302657 () Bool)

(assert (=> b!4246764 (= tp!1302657 (and (=> t!351791 result!312010) (=> t!351793 result!312012) (=> t!351795 result!312014) b_and!336459))))

(declare-fun e!2637585 () Bool)

(assert (=> b!4246764 (= e!2637585 (and tp!1302659 tp!1302657))))

(declare-fun tp!1302658 () Bool)

(declare-fun b!4246763 () Bool)

(declare-fun e!2637587 () Bool)

(assert (=> b!4246763 (= e!2637587 (and tp!1302658 (inv!61765 (tag!8816 (h!52425 (t!351746 rules!2971)))) (inv!61769 (transformation!7952 (h!52425 (t!351746 rules!2971)))) e!2637585))))

(declare-fun b!4246762 () Bool)

(declare-fun e!2637588 () Bool)

(declare-fun tp!1302660 () Bool)

(assert (=> b!4246762 (= e!2637588 (and e!2637587 tp!1302660))))

(assert (=> b!4246426 (= tp!1302543 e!2637588)))

(assert (= b!4246763 b!4246764))

(assert (= b!4246762 b!4246763))

(assert (= (and b!4246426 ((_ is Cons!47005) (t!351746 rules!2971))) b!4246762))

(declare-fun m!4831687 () Bool)

(assert (=> b!4246763 m!4831687))

(declare-fun m!4831689 () Bool)

(assert (=> b!4246763 m!4831689))

(declare-fun b!4246765 () Bool)

(declare-fun e!2637589 () Bool)

(declare-fun tp!1302661 () Bool)

(assert (=> b!4246765 (= e!2637589 (and tp_is_empty!22705 tp!1302661))))

(assert (=> b!4246417 (= tp!1302544 e!2637589)))

(assert (= (and b!4246417 ((_ is Cons!47004) (t!351745 suffix!1284))) b!4246765))

(declare-fun b!4246766 () Bool)

(declare-fun e!2637590 () Bool)

(declare-fun tp!1302662 () Bool)

(assert (=> b!4246766 (= e!2637590 (and tp_is_empty!22705 tp!1302662))))

(assert (=> b!4246422 (= tp!1302545 e!2637590)))

(assert (= (and b!4246422 ((_ is Cons!47004) (t!351745 shorterInput!62))) b!4246766))

(declare-fun b_lambda!125089 () Bool)

(assert (= b_lambda!125085 (or (and b!4246423 b_free!126069 (= (toChars!10575 (transformation!7952 (h!52425 rules!2971))) (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592)))))) (and b!4246416 b_free!126073) (and b!4246753 b_free!126085 (= (toChars!10575 (transformation!7952 (rule!11082 (h!52426 (t!351747 tokens!592))))) (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592)))))) (and b!4246764 b_free!126089 (= (toChars!10575 (transformation!7952 (h!52425 (t!351746 rules!2971)))) (toChars!10575 (transformation!7952 (rule!11082 (h!52426 tokens!592)))))) b_lambda!125089)))

(check-sat (not b!4246696) (not b!4246686) (not b_next!126775) (not b!4246732) b_and!336455 (not b!4246475) (not b!4246762) b_and!336457 b_and!336413 (not b!4246689) (not b!4246706) (not b!4246694) tp_is_empty!22705 (not b!4246476) (not b_lambda!125079) (not b!4246515) (not b!4246695) (not b!4246705) (not b!4246450) (not d!1249043) (not b!4246715) (not b!4246704) (not tb!255831) (not b!4246733) (not b!4246710) (not d!1249035) (not b!4246682) (not b!4246697) b_and!336417 (not b!4246546) (not b!4246712) (not d!1249009) (not b_next!126773) (not d!1249045) b_and!336451 (not b!4246738) (not b!4246766) (not b!4246693) (not b_lambda!125087) (not b!4246765) (not b!4246737) (not b_next!126771) (not d!1248981) (not b!4246720) (not b!4246683) b_and!336449 (not b!4246750) (not b!4246691) (not d!1249041) (not b!4246739) (not d!1248997) (not b!4246734) (not b_lambda!125089) (not b!4246763) (not b!4246688) (not d!1249007) b_and!336459 (not b_next!126793) (not b!4246713) (not b!4246518) (not b_next!126789) (not d!1249003) (not b!4246692) (not b_next!126787) (not tb!255811) (not d!1248985) (not b!4246446) b_and!336453 (not d!1248973) (not b!4246570) (not b!4246544) (not d!1248995) (not b!4246752) (not b!4246708) (not b!4246501) (not b!4246685) (not bm!293907) (not b!4246474) (not b!4246698) (not b!4246569) (not b!4246684) (not tb!255835) (not b_next!126791) (not b!4246735) (not b!4246751) (not b_next!126777) (not b!4246500) (not d!1249031) (not bm!293906) (not b!4246547) (not b!4246687))
(check-sat b_and!336417 (not b_next!126771) b_and!336449 b_and!336459 (not b_next!126793) (not b_next!126775) (not b_next!126789) b_and!336455 b_and!336413 b_and!336457 (not b_next!126773) b_and!336451 (not b_next!126787) b_and!336453 (not b_next!126791) (not b_next!126777))
