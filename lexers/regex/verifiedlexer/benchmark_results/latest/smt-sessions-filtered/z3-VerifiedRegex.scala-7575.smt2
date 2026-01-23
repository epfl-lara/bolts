; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399822 () Bool)

(assert start!399822)

(declare-fun b!4189526 () Bool)

(declare-fun b_free!121935 () Bool)

(declare-fun b_next!122639 () Bool)

(assert (=> b!4189526 (= b_free!121935 (not b_next!122639))))

(declare-fun tp!1280209 () Bool)

(declare-fun b_and!328217 () Bool)

(assert (=> b!4189526 (= tp!1280209 b_and!328217)))

(declare-fun b_free!121937 () Bool)

(declare-fun b_next!122641 () Bool)

(assert (=> b!4189526 (= b_free!121937 (not b_next!122641))))

(declare-fun tp!1280199 () Bool)

(declare-fun b_and!328219 () Bool)

(assert (=> b!4189526 (= tp!1280199 b_and!328219)))

(declare-fun b!4189528 () Bool)

(declare-fun b_free!121939 () Bool)

(declare-fun b_next!122643 () Bool)

(assert (=> b!4189528 (= b_free!121939 (not b_next!122643))))

(declare-fun tp!1280210 () Bool)

(declare-fun b_and!328221 () Bool)

(assert (=> b!4189528 (= tp!1280210 b_and!328221)))

(declare-fun b_free!121941 () Bool)

(declare-fun b_next!122645 () Bool)

(assert (=> b!4189528 (= b_free!121941 (not b_next!122645))))

(declare-fun tp!1280204 () Bool)

(declare-fun b_and!328223 () Bool)

(assert (=> b!4189528 (= tp!1280204 b_and!328223)))

(declare-fun b!4189521 () Bool)

(declare-fun b_free!121943 () Bool)

(declare-fun b_next!122647 () Bool)

(assert (=> b!4189521 (= b_free!121943 (not b_next!122647))))

(declare-fun tp!1280202 () Bool)

(declare-fun b_and!328225 () Bool)

(assert (=> b!4189521 (= tp!1280202 b_and!328225)))

(declare-fun b_free!121945 () Bool)

(declare-fun b_next!122649 () Bool)

(assert (=> b!4189521 (= b_free!121945 (not b_next!122649))))

(declare-fun tp!1280200 () Bool)

(declare-fun b_and!328227 () Bool)

(assert (=> b!4189521 (= tp!1280200 b_and!328227)))

(declare-fun b!4189502 () Bool)

(declare-fun res!1719023 () Bool)

(declare-fun e!2600760 () Bool)

(assert (=> b!4189502 (=> res!1719023 e!2600760)))

(declare-datatypes ((C!25332 0))(
  ( (C!25333 (val!14828 Int)) )
))
(declare-datatypes ((List!46129 0))(
  ( (Nil!46005) (Cons!46005 (h!51425 C!25332) (t!345868 List!46129)) )
))
(declare-fun lt!1492151 () List!46129)

(declare-fun input!3342 () List!46129)

(declare-fun isPrefix!4523 (List!46129 List!46129) Bool)

(assert (=> b!4189502 (= res!1719023 (not (isPrefix!4523 lt!1492151 input!3342)))))

(declare-fun b!4189503 () Bool)

(declare-fun res!1719033 () Bool)

(declare-fun e!2600762 () Bool)

(assert (=> b!4189503 (=> (not res!1719033) (not e!2600762))))

(declare-datatypes ((LexerInterface!7259 0))(
  ( (LexerInterfaceExt!7256 (__x!28013 Int)) (Lexer!7257) )
))
(declare-fun thiss!25986 () LexerInterface!7259)

(declare-datatypes ((List!46130 0))(
  ( (Nil!46006) (Cons!46006 (h!51426 (_ BitVec 16)) (t!345869 List!46130)) )
))
(declare-datatypes ((TokenValue!7896 0))(
  ( (FloatLiteralValue!15792 (text!55717 List!46130)) (TokenValueExt!7895 (__x!28014 Int)) (Broken!39480 (value!238987 List!46130)) (Object!8019) (End!7896) (Def!7896) (Underscore!7896) (Match!7896) (Else!7896) (Error!7896) (Case!7896) (If!7896) (Extends!7896) (Abstract!7896) (Class!7896) (Val!7896) (DelimiterValue!15792 (del!7956 List!46130)) (KeywordValue!7902 (value!238988 List!46130)) (CommentValue!15792 (value!238989 List!46130)) (WhitespaceValue!15792 (value!238990 List!46130)) (IndentationValue!7896 (value!238991 List!46130)) (String!53345) (Int32!7896) (Broken!39481 (value!238992 List!46130)) (Boolean!7897) (Unit!65088) (OperatorValue!7899 (op!7956 List!46130)) (IdentifierValue!15792 (value!238993 List!46130)) (IdentifierValue!15793 (value!238994 List!46130)) (WhitespaceValue!15793 (value!238995 List!46130)) (True!15792) (False!15792) (Broken!39482 (value!238996 List!46130)) (Broken!39483 (value!238997 List!46130)) (True!15793) (RightBrace!7896) (RightBracket!7896) (Colon!7896) (Null!7896) (Comma!7896) (LeftBracket!7896) (False!15793) (LeftBrace!7896) (ImaginaryLiteralValue!7896 (text!55718 List!46130)) (StringLiteralValue!23688 (value!238998 List!46130)) (EOFValue!7896 (value!238999 List!46130)) (IdentValue!7896 (value!239000 List!46130)) (DelimiterValue!15793 (value!239001 List!46130)) (DedentValue!7896 (value!239002 List!46130)) (NewLineValue!7896 (value!239003 List!46130)) (IntegerValue!23688 (value!239004 (_ BitVec 32)) (text!55719 List!46130)) (IntegerValue!23689 (value!239005 Int) (text!55720 List!46130)) (Times!7896) (Or!7896) (Equal!7896) (Minus!7896) (Broken!39484 (value!239006 List!46130)) (And!7896) (Div!7896) (LessEqual!7896) (Mod!7896) (Concat!20467) (Not!7896) (Plus!7896) (SpaceValue!7896 (value!239007 List!46130)) (IntegerValue!23690 (value!239008 Int) (text!55721 List!46130)) (StringLiteralValue!23689 (text!55722 List!46130)) (FloatLiteralValue!15793 (text!55723 List!46130)) (BytesLiteralValue!7896 (value!239009 List!46130)) (CommentValue!15793 (value!239010 List!46130)) (StringLiteralValue!23690 (value!239011 List!46130)) (ErrorTokenValue!7896 (msg!7957 List!46130)) )
))
(declare-datatypes ((IArray!27759 0))(
  ( (IArray!27760 (innerList!13937 List!46129)) )
))
(declare-datatypes ((Conc!13877 0))(
  ( (Node!13877 (left!34272 Conc!13877) (right!34602 Conc!13877) (csize!27984 Int) (cheight!14088 Int)) (Leaf!21453 (xs!17183 IArray!27759) (csize!27985 Int)) (Empty!13877) )
))
(declare-datatypes ((BalanceConc!27348 0))(
  ( (BalanceConc!27349 (c!714958 Conc!13877)) )
))
(declare-datatypes ((Regex!12571 0))(
  ( (ElementMatch!12571 (c!714959 C!25332)) (Concat!20468 (regOne!25654 Regex!12571) (regTwo!25654 Regex!12571)) (EmptyExpr!12571) (Star!12571 (reg!12900 Regex!12571)) (EmptyLang!12571) (Union!12571 (regOne!25655 Regex!12571) (regTwo!25655 Regex!12571)) )
))
(declare-datatypes ((String!53346 0))(
  ( (String!53347 (value!239012 String)) )
))
(declare-datatypes ((TokenValueInjection!15220 0))(
  ( (TokenValueInjection!15221 (toValue!10362 Int) (toChars!10221 Int)) )
))
(declare-datatypes ((Rule!15132 0))(
  ( (Rule!15133 (regex!7666 Regex!12571) (tag!8530 String!53346) (isSeparator!7666 Bool) (transformation!7666 TokenValueInjection!15220)) )
))
(declare-datatypes ((List!46131 0))(
  ( (Nil!46007) (Cons!46007 (h!51427 Rule!15132) (t!345870 List!46131)) )
))
(declare-fun rules!3843 () List!46131)

(declare-fun rulesInvariant!6472 (LexerInterface!7259 List!46131) Bool)

(assert (=> b!4189503 (= res!1719033 (rulesInvariant!6472 thiss!25986 rules!3843))))

(declare-fun b!4189504 () Bool)

(declare-fun res!1719017 () Bool)

(assert (=> b!4189504 (=> res!1719017 e!2600760)))

(declare-fun lt!1492158 () BalanceConc!27348)

(declare-fun lt!1492152 () Int)

(declare-fun size!33793 (BalanceConc!27348) Int)

(assert (=> b!4189504 (= res!1719017 (>= (size!33793 lt!1492158) lt!1492152))))

(declare-fun b!4189505 () Bool)

(declare-fun res!1719034 () Bool)

(assert (=> b!4189505 (=> (not res!1719034) (not e!2600762))))

(declare-fun rBis!167 () Rule!15132)

(declare-fun contains!9475 (List!46131 Rule!15132) Bool)

(assert (=> b!4189505 (= res!1719034 (contains!9475 rules!3843 rBis!167))))

(declare-fun b!4189506 () Bool)

(declare-fun res!1719032 () Bool)

(assert (=> b!4189506 (=> res!1719032 e!2600760)))

(declare-fun lt!1492161 () List!46129)

(assert (=> b!4189506 (= res!1719032 (not (= lt!1492161 input!3342)))))

(declare-fun b!4189507 () Bool)

(declare-fun res!1719021 () Bool)

(assert (=> b!4189507 (=> (not res!1719021) (not e!2600762))))

(declare-fun r!4142 () Rule!15132)

(declare-fun p!2959 () List!46129)

(declare-fun matchR!6310 (Regex!12571 List!46129) Bool)

(assert (=> b!4189507 (= res!1719021 (matchR!6310 (regex!7666 r!4142) p!2959))))

(declare-fun b!4189508 () Bool)

(declare-fun res!1719025 () Bool)

(assert (=> b!4189508 (=> (not res!1719025) (not e!2600762))))

(declare-fun validRegex!5688 (Regex!12571) Bool)

(assert (=> b!4189508 (= res!1719025 (validRegex!5688 (regex!7666 r!4142)))))

(declare-fun b!4189509 () Bool)

(declare-fun e!2600765 () Bool)

(declare-fun e!2600763 () Bool)

(declare-fun tp!1280207 () Bool)

(assert (=> b!4189509 (= e!2600765 (and e!2600763 tp!1280207))))

(declare-fun b!4189510 () Bool)

(declare-fun e!2600776 () Bool)

(declare-fun tp_is_empty!22105 () Bool)

(declare-fun tp!1280208 () Bool)

(assert (=> b!4189510 (= e!2600776 (and tp_is_empty!22105 tp!1280208))))

(declare-fun b!4189511 () Bool)

(declare-fun e!2600769 () Bool)

(declare-fun e!2600759 () Bool)

(assert (=> b!4189511 (= e!2600769 e!2600759)))

(declare-fun res!1719026 () Bool)

(assert (=> b!4189511 (=> res!1719026 e!2600759)))

(declare-fun lt!1492153 () Int)

(assert (=> b!4189511 (= res!1719026 (<= lt!1492152 lt!1492153))))

(declare-fun pBis!107 () List!46129)

(declare-fun size!33794 (List!46129) Int)

(assert (=> b!4189511 (= lt!1492152 (size!33794 pBis!107))))

(declare-fun res!1719029 () Bool)

(assert (=> start!399822 (=> (not res!1719029) (not e!2600762))))

(get-info :version)

(assert (=> start!399822 (= res!1719029 ((_ is Lexer!7257) thiss!25986))))

(assert (=> start!399822 e!2600762))

(assert (=> start!399822 true))

(declare-fun e!2600771 () Bool)

(assert (=> start!399822 e!2600771))

(declare-fun e!2600770 () Bool)

(assert (=> start!399822 e!2600770))

(assert (=> start!399822 e!2600765))

(declare-fun e!2600775 () Bool)

(assert (=> start!399822 e!2600775))

(declare-fun e!2600768 () Bool)

(assert (=> start!399822 e!2600768))

(assert (=> start!399822 e!2600776))

(declare-fun b!4189512 () Bool)

(declare-fun res!1719028 () Bool)

(assert (=> b!4189512 (=> (not res!1719028) (not e!2600762))))

(assert (=> b!4189512 (= res!1719028 (contains!9475 rules!3843 r!4142))))

(declare-fun b!4189513 () Bool)

(declare-fun res!1719022 () Bool)

(assert (=> b!4189513 (=> res!1719022 e!2600759)))

(declare-datatypes ((Token!14046 0))(
  ( (Token!14047 (value!239013 TokenValue!7896) (rule!10746 Rule!15132) (size!33795 Int) (originalCharacters!8054 List!46129)) )
))
(declare-datatypes ((tuple2!43806 0))(
  ( (tuple2!43807 (_1!25037 Token!14046) (_2!25037 List!46129)) )
))
(declare-datatypes ((Option!9860 0))(
  ( (None!9859) (Some!9859 (v!40687 tuple2!43806)) )
))
(declare-fun lt!1492157 () Option!9860)

(declare-fun maxPrefix!4307 (LexerInterface!7259 List!46131 List!46129) Option!9860)

(assert (=> b!4189513 (= res!1719022 (not (= (maxPrefix!4307 thiss!25986 rules!3843 input!3342) lt!1492157)))))

(declare-fun b!4189514 () Bool)

(assert (=> b!4189514 (= e!2600760 true)))

(declare-fun lt!1492150 () Int)

(assert (=> b!4189514 (= lt!1492150 (size!33794 lt!1492151))))

(declare-fun b!4189515 () Bool)

(declare-fun res!1719027 () Bool)

(assert (=> b!4189515 (=> (not res!1719027) (not e!2600762))))

(declare-fun ruleValid!3384 (LexerInterface!7259 Rule!15132) Bool)

(assert (=> b!4189515 (= res!1719027 (ruleValid!3384 thiss!25986 r!4142))))

(declare-fun b!4189516 () Bool)

(declare-fun tp!1280205 () Bool)

(assert (=> b!4189516 (= e!2600768 (and tp_is_empty!22105 tp!1280205))))

(declare-fun b!4189517 () Bool)

(declare-fun tp!1280206 () Bool)

(assert (=> b!4189517 (= e!2600775 (and tp_is_empty!22105 tp!1280206))))

(declare-fun b!4189518 () Bool)

(declare-fun res!1719031 () Bool)

(assert (=> b!4189518 (=> (not res!1719031) (not e!2600762))))

(assert (=> b!4189518 (= res!1719031 (isPrefix!4523 p!2959 input!3342))))

(declare-fun b!4189519 () Bool)

(declare-fun res!1719030 () Bool)

(assert (=> b!4189519 (=> (not res!1719030) (not e!2600762))))

(declare-fun isEmpty!27234 (List!46131) Bool)

(assert (=> b!4189519 (= res!1719030 (not (isEmpty!27234 rules!3843)))))

(declare-fun b!4189520 () Bool)

(declare-fun e!2600767 () Bool)

(declare-fun tp!1280201 () Bool)

(declare-fun inv!60553 (String!53346) Bool)

(declare-fun inv!60555 (TokenValueInjection!15220) Bool)

(assert (=> b!4189520 (= e!2600770 (and tp!1280201 (inv!60553 (tag!8530 r!4142)) (inv!60555 (transformation!7666 r!4142)) e!2600767))))

(assert (=> b!4189521 (= e!2600767 (and tp!1280202 tp!1280200))))

(declare-fun b!4189522 () Bool)

(declare-fun e!2600764 () Bool)

(assert (=> b!4189522 (= e!2600764 e!2600760)))

(declare-fun res!1719016 () Bool)

(assert (=> b!4189522 (=> res!1719016 e!2600760)))

(assert (=> b!4189522 (= res!1719016 (= lt!1492151 pBis!107))))

(assert (=> b!4189522 (isPrefix!4523 lt!1492151 lt!1492161)))

(declare-fun lt!1492148 () tuple2!43806)

(declare-fun ++!11738 (List!46129 List!46129) List!46129)

(assert (=> b!4189522 (= lt!1492161 (++!11738 lt!1492151 (_2!25037 lt!1492148)))))

(declare-datatypes ((Unit!65089 0))(
  ( (Unit!65090) )
))
(declare-fun lt!1492159 () Unit!65089)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3020 (List!46129 List!46129) Unit!65089)

(assert (=> b!4189522 (= lt!1492159 (lemmaConcatTwoListThenFirstIsPrefix!3020 lt!1492151 (_2!25037 lt!1492148)))))

(declare-fun list!16622 (BalanceConc!27348) List!46129)

(assert (=> b!4189522 (= lt!1492151 (list!16622 lt!1492158))))

(declare-fun charsOf!5101 (Token!14046) BalanceConc!27348)

(assert (=> b!4189522 (= lt!1492158 (charsOf!5101 (_1!25037 lt!1492148)))))

(declare-fun lt!1492155 () Option!9860)

(declare-fun get!14958 (Option!9860) tuple2!43806)

(assert (=> b!4189522 (= lt!1492148 (get!14958 lt!1492155))))

(declare-fun b!4189523 () Bool)

(assert (=> b!4189523 (= e!2600762 (not e!2600769))))

(declare-fun res!1719024 () Bool)

(assert (=> b!4189523 (=> res!1719024 e!2600769)))

(declare-fun maxPrefixOneRule!3268 (LexerInterface!7259 Rule!15132 List!46129) Option!9860)

(assert (=> b!4189523 (= res!1719024 (not (= (maxPrefixOneRule!3268 thiss!25986 r!4142 input!3342) lt!1492157)))))

(declare-fun lt!1492160 () TokenValue!7896)

(declare-fun getSuffix!2816 (List!46129 List!46129) List!46129)

(assert (=> b!4189523 (= lt!1492157 (Some!9859 (tuple2!43807 (Token!14047 lt!1492160 r!4142 lt!1492153 p!2959) (getSuffix!2816 input!3342 p!2959))))))

(assert (=> b!4189523 (= lt!1492153 (size!33794 p!2959))))

(declare-fun lt!1492147 () BalanceConc!27348)

(declare-fun apply!10631 (TokenValueInjection!15220 BalanceConc!27348) TokenValue!7896)

(assert (=> b!4189523 (= lt!1492160 (apply!10631 (transformation!7666 r!4142) lt!1492147))))

(assert (=> b!4189523 (isPrefix!4523 input!3342 input!3342)))

(declare-fun lt!1492162 () Unit!65089)

(declare-fun lemmaIsPrefixRefl!2952 (List!46129 List!46129) Unit!65089)

(assert (=> b!4189523 (= lt!1492162 (lemmaIsPrefixRefl!2952 input!3342 input!3342))))

(declare-fun lt!1492154 () Unit!65089)

(declare-fun lemmaSemiInverse!2432 (TokenValueInjection!15220 BalanceConc!27348) Unit!65089)

(assert (=> b!4189523 (= lt!1492154 (lemmaSemiInverse!2432 (transformation!7666 r!4142) lt!1492147))))

(declare-fun seqFromList!5691 (List!46129) BalanceConc!27348)

(assert (=> b!4189523 (= lt!1492147 (seqFromList!5691 p!2959))))

(declare-fun b!4189524 () Bool)

(assert (=> b!4189524 (= e!2600759 e!2600764)))

(declare-fun res!1719020 () Bool)

(assert (=> b!4189524 (=> res!1719020 e!2600764)))

(declare-fun isEmpty!27235 (Option!9860) Bool)

(assert (=> b!4189524 (= res!1719020 (isEmpty!27235 lt!1492155))))

(assert (=> b!4189524 (= lt!1492155 (maxPrefixOneRule!3268 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1492156 () Unit!65089)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2390 (LexerInterface!7259 Rule!15132 List!46131) Unit!65089)

(assert (=> b!4189524 (= lt!1492156 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2390 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4189524 (<= lt!1492152 (size!33794 input!3342))))

(declare-fun lt!1492149 () Unit!65089)

(declare-fun lemmaIsPrefixThenSmallerEqSize!553 (List!46129 List!46129) Unit!65089)

(assert (=> b!4189524 (= lt!1492149 (lemmaIsPrefixThenSmallerEqSize!553 pBis!107 input!3342))))

(declare-fun b!4189525 () Bool)

(declare-fun res!1719018 () Bool)

(assert (=> b!4189525 (=> res!1719018 e!2600759)))

(assert (=> b!4189525 (= res!1719018 (not (ruleValid!3384 thiss!25986 rBis!167)))))

(declare-fun e!2600761 () Bool)

(assert (=> b!4189526 (= e!2600761 (and tp!1280209 tp!1280199))))

(declare-fun b!4189527 () Bool)

(declare-fun res!1719019 () Bool)

(assert (=> b!4189527 (=> (not res!1719019) (not e!2600762))))

(assert (=> b!4189527 (= res!1719019 (isPrefix!4523 pBis!107 input!3342))))

(declare-fun e!2600774 () Bool)

(assert (=> b!4189528 (= e!2600774 (and tp!1280210 tp!1280204))))

(declare-fun b!4189529 () Bool)

(declare-fun tp!1280198 () Bool)

(assert (=> b!4189529 (= e!2600771 (and tp!1280198 (inv!60553 (tag!8530 rBis!167)) (inv!60555 (transformation!7666 rBis!167)) e!2600761))))

(declare-fun tp!1280203 () Bool)

(declare-fun b!4189530 () Bool)

(assert (=> b!4189530 (= e!2600763 (and tp!1280203 (inv!60553 (tag!8530 (h!51427 rules!3843))) (inv!60555 (transformation!7666 (h!51427 rules!3843))) e!2600774))))

(assert (= (and start!399822 res!1719029) b!4189518))

(assert (= (and b!4189518 res!1719031) b!4189527))

(assert (= (and b!4189527 res!1719019) b!4189519))

(assert (= (and b!4189519 res!1719030) b!4189503))

(assert (= (and b!4189503 res!1719033) b!4189512))

(assert (= (and b!4189512 res!1719028) b!4189505))

(assert (= (and b!4189505 res!1719034) b!4189508))

(assert (= (and b!4189508 res!1719025) b!4189507))

(assert (= (and b!4189507 res!1719021) b!4189515))

(assert (= (and b!4189515 res!1719027) b!4189523))

(assert (= (and b!4189523 (not res!1719024)) b!4189511))

(assert (= (and b!4189511 (not res!1719026)) b!4189525))

(assert (= (and b!4189525 (not res!1719018)) b!4189513))

(assert (= (and b!4189513 (not res!1719022)) b!4189524))

(assert (= (and b!4189524 (not res!1719020)) b!4189522))

(assert (= (and b!4189522 (not res!1719016)) b!4189504))

(assert (= (and b!4189504 (not res!1719017)) b!4189502))

(assert (= (and b!4189502 (not res!1719023)) b!4189506))

(assert (= (and b!4189506 (not res!1719032)) b!4189514))

(assert (= b!4189529 b!4189526))

(assert (= start!399822 b!4189529))

(assert (= b!4189520 b!4189521))

(assert (= start!399822 b!4189520))

(assert (= b!4189530 b!4189528))

(assert (= b!4189509 b!4189530))

(assert (= (and start!399822 ((_ is Cons!46007) rules!3843)) b!4189509))

(assert (= (and start!399822 ((_ is Cons!46005) input!3342)) b!4189517))

(assert (= (and start!399822 ((_ is Cons!46005) pBis!107)) b!4189516))

(assert (= (and start!399822 ((_ is Cons!46005) p!2959)) b!4189510))

(declare-fun m!4778355 () Bool)

(assert (=> b!4189523 m!4778355))

(declare-fun m!4778357 () Bool)

(assert (=> b!4189523 m!4778357))

(declare-fun m!4778359 () Bool)

(assert (=> b!4189523 m!4778359))

(declare-fun m!4778361 () Bool)

(assert (=> b!4189523 m!4778361))

(declare-fun m!4778363 () Bool)

(assert (=> b!4189523 m!4778363))

(declare-fun m!4778365 () Bool)

(assert (=> b!4189523 m!4778365))

(declare-fun m!4778367 () Bool)

(assert (=> b!4189523 m!4778367))

(declare-fun m!4778369 () Bool)

(assert (=> b!4189523 m!4778369))

(declare-fun m!4778371 () Bool)

(assert (=> b!4189513 m!4778371))

(declare-fun m!4778373 () Bool)

(assert (=> b!4189504 m!4778373))

(declare-fun m!4778375 () Bool)

(assert (=> b!4189520 m!4778375))

(declare-fun m!4778377 () Bool)

(assert (=> b!4189520 m!4778377))

(declare-fun m!4778379 () Bool)

(assert (=> b!4189529 m!4778379))

(declare-fun m!4778381 () Bool)

(assert (=> b!4189529 m!4778381))

(declare-fun m!4778383 () Bool)

(assert (=> b!4189530 m!4778383))

(declare-fun m!4778385 () Bool)

(assert (=> b!4189530 m!4778385))

(declare-fun m!4778387 () Bool)

(assert (=> b!4189522 m!4778387))

(declare-fun m!4778389 () Bool)

(assert (=> b!4189522 m!4778389))

(declare-fun m!4778391 () Bool)

(assert (=> b!4189522 m!4778391))

(declare-fun m!4778393 () Bool)

(assert (=> b!4189522 m!4778393))

(declare-fun m!4778395 () Bool)

(assert (=> b!4189522 m!4778395))

(declare-fun m!4778397 () Bool)

(assert (=> b!4189522 m!4778397))

(declare-fun m!4778399 () Bool)

(assert (=> b!4189525 m!4778399))

(declare-fun m!4778401 () Bool)

(assert (=> b!4189518 m!4778401))

(declare-fun m!4778403 () Bool)

(assert (=> b!4189507 m!4778403))

(declare-fun m!4778405 () Bool)

(assert (=> b!4189524 m!4778405))

(declare-fun m!4778407 () Bool)

(assert (=> b!4189524 m!4778407))

(declare-fun m!4778409 () Bool)

(assert (=> b!4189524 m!4778409))

(declare-fun m!4778411 () Bool)

(assert (=> b!4189524 m!4778411))

(declare-fun m!4778413 () Bool)

(assert (=> b!4189524 m!4778413))

(declare-fun m!4778415 () Bool)

(assert (=> b!4189519 m!4778415))

(declare-fun m!4778417 () Bool)

(assert (=> b!4189514 m!4778417))

(declare-fun m!4778419 () Bool)

(assert (=> b!4189505 m!4778419))

(declare-fun m!4778421 () Bool)

(assert (=> b!4189515 m!4778421))

(declare-fun m!4778423 () Bool)

(assert (=> b!4189511 m!4778423))

(declare-fun m!4778425 () Bool)

(assert (=> b!4189502 m!4778425))

(declare-fun m!4778427 () Bool)

(assert (=> b!4189512 m!4778427))

(declare-fun m!4778429 () Bool)

(assert (=> b!4189503 m!4778429))

(declare-fun m!4778431 () Bool)

(assert (=> b!4189508 m!4778431))

(declare-fun m!4778433 () Bool)

(assert (=> b!4189527 m!4778433))

(check-sat (not b!4189519) (not b!4189518) tp_is_empty!22105 (not b!4189525) b_and!328221 (not b!4189509) b_and!328223 (not b!4189502) (not b!4189529) (not b!4189516) b_and!328225 (not b!4189508) (not b!4189530) (not b!4189504) (not b!4189511) (not b!4189515) (not b!4189503) (not b!4189512) (not b_next!122645) (not b!4189513) (not b_next!122639) b_and!328217 (not b!4189522) (not b!4189517) (not b!4189507) (not b!4189505) (not b_next!122649) (not b!4189524) (not b!4189520) (not b!4189514) (not b_next!122647) b_and!328227 (not b!4189523) (not b!4189527) (not b_next!122641) b_and!328219 (not b_next!122643) (not b!4189510))
(check-sat b_and!328221 (not b_next!122645) b_and!328223 b_and!328225 (not b_next!122649) (not b_next!122647) b_and!328227 (not b_next!122643) (not b_next!122639) b_and!328217 (not b_next!122641) b_and!328219)
