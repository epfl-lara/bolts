; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!227536 () Bool)

(assert start!227536)

(declare-fun b!2309634 () Bool)

(declare-fun b_free!69949 () Bool)

(declare-fun b_next!70653 () Bool)

(assert (=> b!2309634 (= b_free!69949 (not b_next!70653))))

(declare-fun tp!732812 () Bool)

(declare-fun b_and!184729 () Bool)

(assert (=> b!2309634 (= tp!732812 b_and!184729)))

(declare-fun b_free!69951 () Bool)

(declare-fun b_next!70655 () Bool)

(assert (=> b!2309634 (= b_free!69951 (not b_next!70655))))

(declare-fun tp!732813 () Bool)

(declare-fun b_and!184731 () Bool)

(assert (=> b!2309634 (= tp!732813 b_and!184731)))

(declare-fun b!2309639 () Bool)

(declare-fun b_free!69953 () Bool)

(declare-fun b_next!70657 () Bool)

(assert (=> b!2309639 (= b_free!69953 (not b_next!70657))))

(declare-fun tp!732808 () Bool)

(declare-fun b_and!184733 () Bool)

(assert (=> b!2309639 (= tp!732808 b_and!184733)))

(declare-fun b_free!69955 () Bool)

(declare-fun b_next!70659 () Bool)

(assert (=> b!2309639 (= b_free!69955 (not b_next!70659))))

(declare-fun tp!732814 () Bool)

(declare-fun b_and!184735 () Bool)

(assert (=> b!2309639 (= tp!732814 b_and!184735)))

(declare-fun b!2309613 () Bool)

(declare-fun b_free!69957 () Bool)

(declare-fun b_next!70661 () Bool)

(assert (=> b!2309613 (= b_free!69957 (not b_next!70661))))

(declare-fun tp!732822 () Bool)

(declare-fun b_and!184737 () Bool)

(assert (=> b!2309613 (= tp!732822 b_and!184737)))

(declare-fun b_free!69959 () Bool)

(declare-fun b_next!70663 () Bool)

(assert (=> b!2309613 (= b_free!69959 (not b_next!70663))))

(declare-fun tp!732818 () Bool)

(declare-fun b_and!184739 () Bool)

(assert (=> b!2309613 (= tp!732818 b_and!184739)))

(declare-fun b!2309640 () Bool)

(declare-fun b_free!69961 () Bool)

(declare-fun b_next!70665 () Bool)

(assert (=> b!2309640 (= b_free!69961 (not b_next!70665))))

(declare-fun tp!732809 () Bool)

(declare-fun b_and!184741 () Bool)

(assert (=> b!2309640 (= tp!732809 b_and!184741)))

(declare-fun b_free!69963 () Bool)

(declare-fun b_next!70667 () Bool)

(assert (=> b!2309640 (= b_free!69963 (not b_next!70667))))

(declare-fun tp!732824 () Bool)

(declare-fun b_and!184743 () Bool)

(assert (=> b!2309640 (= tp!732824 b_and!184743)))

(declare-fun b!2309606 () Bool)

(declare-fun e!1480292 () Bool)

(declare-fun e!1480290 () Bool)

(assert (=> b!2309606 (= e!1480292 e!1480290)))

(declare-fun c!366100 () Bool)

(declare-fun lt!856868 () Int)

(declare-fun lt!856870 () Int)

(assert (=> b!2309606 (= c!366100 (< lt!856868 lt!856870))))

(declare-fun b!2309607 () Bool)

(declare-fun call!137316 () Bool)

(assert (=> b!2309607 (= e!1480290 (not call!137316))))

(declare-fun b!2309608 () Bool)

(declare-datatypes ((Unit!40423 0))(
  ( (Unit!40424) )
))
(declare-fun e!1480306 () Unit!40423)

(declare-fun Unit!40425 () Unit!40423)

(assert (=> b!2309608 (= e!1480306 Unit!40425)))

(declare-fun b!2309609 () Bool)

(declare-fun res!987547 () Bool)

(declare-fun e!1480283 () Bool)

(assert (=> b!2309609 (=> (not res!987547) (not e!1480283))))

(declare-datatypes ((List!27590 0))(
  ( (Nil!27496) (Cons!27496 (h!32897 (_ BitVec 16)) (t!206924 List!27590)) )
))
(declare-datatypes ((TokenValue!4575 0))(
  ( (FloatLiteralValue!9150 (text!32470 List!27590)) (TokenValueExt!4574 (__x!18210 Int)) (Broken!22875 (value!139564 List!27590)) (Object!4668) (End!4575) (Def!4575) (Underscore!4575) (Match!4575) (Else!4575) (Error!4575) (Case!4575) (If!4575) (Extends!4575) (Abstract!4575) (Class!4575) (Val!4575) (DelimiterValue!9150 (del!4635 List!27590)) (KeywordValue!4581 (value!139565 List!27590)) (CommentValue!9150 (value!139566 List!27590)) (WhitespaceValue!9150 (value!139567 List!27590)) (IndentationValue!4575 (value!139568 List!27590)) (String!29978) (Int32!4575) (Broken!22876 (value!139569 List!27590)) (Boolean!4576) (Unit!40426) (OperatorValue!4578 (op!4635 List!27590)) (IdentifierValue!9150 (value!139570 List!27590)) (IdentifierValue!9151 (value!139571 List!27590)) (WhitespaceValue!9151 (value!139572 List!27590)) (True!9150) (False!9150) (Broken!22877 (value!139573 List!27590)) (Broken!22878 (value!139574 List!27590)) (True!9151) (RightBrace!4575) (RightBracket!4575) (Colon!4575) (Null!4575) (Comma!4575) (LeftBracket!4575) (False!9151) (LeftBrace!4575) (ImaginaryLiteralValue!4575 (text!32471 List!27590)) (StringLiteralValue!13725 (value!139575 List!27590)) (EOFValue!4575 (value!139576 List!27590)) (IdentValue!4575 (value!139577 List!27590)) (DelimiterValue!9151 (value!139578 List!27590)) (DedentValue!4575 (value!139579 List!27590)) (NewLineValue!4575 (value!139580 List!27590)) (IntegerValue!13725 (value!139581 (_ BitVec 32)) (text!32472 List!27590)) (IntegerValue!13726 (value!139582 Int) (text!32473 List!27590)) (Times!4575) (Or!4575) (Equal!4575) (Minus!4575) (Broken!22879 (value!139583 List!27590)) (And!4575) (Div!4575) (LessEqual!4575) (Mod!4575) (Concat!11336) (Not!4575) (Plus!4575) (SpaceValue!4575 (value!139584 List!27590)) (IntegerValue!13727 (value!139585 Int) (text!32474 List!27590)) (StringLiteralValue!13726 (text!32475 List!27590)) (FloatLiteralValue!9151 (text!32476 List!27590)) (BytesLiteralValue!4575 (value!139586 List!27590)) (CommentValue!9151 (value!139587 List!27590)) (StringLiteralValue!13727 (value!139588 List!27590)) (ErrorTokenValue!4575 (msg!4636 List!27590)) )
))
(declare-datatypes ((C!13668 0))(
  ( (C!13669 (val!7882 Int)) )
))
(declare-datatypes ((List!27591 0))(
  ( (Nil!27497) (Cons!27497 (h!32898 C!13668) (t!206925 List!27591)) )
))
(declare-datatypes ((IArray!17953 0))(
  ( (IArray!17954 (innerList!9034 List!27591)) )
))
(declare-datatypes ((Conc!8974 0))(
  ( (Node!8974 (left!20829 Conc!8974) (right!21159 Conc!8974) (csize!18178 Int) (cheight!9185 Int)) (Leaf!13166 (xs!11916 IArray!17953) (csize!18179 Int)) (Empty!8974) )
))
(declare-datatypes ((BalanceConc!17676 0))(
  ( (BalanceConc!17677 (c!366102 Conc!8974)) )
))
(declare-datatypes ((String!29979 0))(
  ( (String!29980 (value!139589 String)) )
))
(declare-datatypes ((Regex!6761 0))(
  ( (ElementMatch!6761 (c!366103 C!13668)) (Concat!11337 (regOne!14034 Regex!6761) (regTwo!14034 Regex!6761)) (EmptyExpr!6761) (Star!6761 (reg!7090 Regex!6761)) (EmptyLang!6761) (Union!6761 (regOne!14035 Regex!6761) (regTwo!14035 Regex!6761)) )
))
(declare-datatypes ((TokenValueInjection!8690 0))(
  ( (TokenValueInjection!8691 (toValue!6231 Int) (toChars!6090 Int)) )
))
(declare-datatypes ((Rule!8626 0))(
  ( (Rule!8627 (regex!4413 Regex!6761) (tag!4903 String!29979) (isSeparator!4413 Bool) (transformation!4413 TokenValueInjection!8690)) )
))
(declare-datatypes ((List!27592 0))(
  ( (Nil!27498) (Cons!27498 (h!32899 Rule!8626) (t!206926 List!27592)) )
))
(declare-fun rules!1750 () List!27592)

(declare-fun r!2363 () Rule!8626)

(declare-fun contains!4803 (List!27592 Rule!8626) Bool)

(assert (=> b!2309609 (= res!987547 (contains!4803 rules!1750 r!2363))))

(declare-fun b!2309610 () Bool)

(declare-fun Unit!40427 () Unit!40423)

(assert (=> b!2309610 (= e!1480306 Unit!40427)))

(declare-fun otherR!12 () Rule!8626)

(declare-fun lt!856874 () Unit!40423)

(declare-fun lemmaSameIndexThenSameElement!206 (List!27592 Rule!8626 Rule!8626) Unit!40423)

(assert (=> b!2309610 (= lt!856874 (lemmaSameIndexThenSameElement!206 rules!1750 r!2363 otherR!12))))

(assert (=> b!2309610 false))

(declare-fun b!2309611 () Bool)

(declare-fun e!1480287 () Bool)

(declare-datatypes ((Token!8304 0))(
  ( (Token!8305 (value!139590 TokenValue!4575) (rule!6767 Rule!8626) (size!21708 Int) (originalCharacters!5183 List!27591)) )
))
(declare-datatypes ((List!27593 0))(
  ( (Nil!27499) (Cons!27499 (h!32900 Token!8304) (t!206927 List!27593)) )
))
(declare-fun tokens!456 () List!27593)

(declare-fun head!5070 (List!27593) Token!8304)

(assert (=> b!2309611 (= e!1480287 (= (rule!6767 (head!5070 tokens!456)) r!2363))))

(declare-fun e!1480298 () Bool)

(declare-fun tp!732825 () Bool)

(declare-fun b!2309612 () Bool)

(declare-fun e!1480294 () Bool)

(declare-fun inv!37141 (String!29979) Bool)

(declare-fun inv!37144 (TokenValueInjection!8690) Bool)

(assert (=> b!2309612 (= e!1480298 (and tp!732825 (inv!37141 (tag!4903 (rule!6767 (h!32900 tokens!456)))) (inv!37144 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) e!1480294))))

(declare-fun bm!137311 () Bool)

(declare-fun otherP!12 () List!27591)

(declare-fun matchR!3018 (Regex!6761 List!27591) Bool)

(assert (=> bm!137311 (= call!137316 (matchR!3018 (regex!4413 otherR!12) otherP!12))))

(assert (=> b!2309613 (= e!1480294 (and tp!732822 tp!732818))))

(declare-fun b!2309614 () Bool)

(declare-fun res!987532 () Bool)

(assert (=> b!2309614 (=> (not res!987532) (not e!1480283))))

(assert (=> b!2309614 (= res!987532 (contains!4803 rules!1750 otherR!12))))

(declare-fun e!1480296 () Bool)

(declare-fun tp!732817 () Bool)

(declare-fun e!1480291 () Bool)

(declare-fun b!2309616 () Bool)

(declare-fun inv!37145 (Token!8304) Bool)

(assert (=> b!2309616 (= e!1480291 (and (inv!37145 (h!32900 tokens!456)) e!1480296 tp!732817))))

(declare-fun b!2309617 () Bool)

(declare-fun e!1480305 () Bool)

(declare-fun list!10864 (BalanceConc!17676) List!27591)

(declare-fun charsOf!2801 (Token!8304) BalanceConc!17676)

(assert (=> b!2309617 (= e!1480305 (not (matchR!3018 (regex!4413 r!2363) (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))

(declare-fun b!2309618 () Bool)

(declare-fun e!1480286 () Bool)

(declare-fun e!1480311 () Bool)

(assert (=> b!2309618 (= e!1480286 e!1480311)))

(declare-fun res!987536 () Bool)

(assert (=> b!2309618 (=> (not res!987536) (not e!1480311))))

(declare-fun e!1480300 () Bool)

(assert (=> b!2309618 (= res!987536 e!1480300)))

(declare-fun res!987531 () Bool)

(assert (=> b!2309618 (=> res!987531 e!1480300)))

(declare-fun lt!856869 () Bool)

(assert (=> b!2309618 (= res!987531 lt!856869)))

(declare-fun isEmpty!15729 (List!27593) Bool)

(assert (=> b!2309618 (= lt!856869 (isEmpty!15729 tokens!456))))

(declare-fun b!2309619 () Bool)

(declare-fun e!1480307 () Bool)

(declare-fun tp_is_empty!10743 () Bool)

(declare-fun tp!732821 () Bool)

(assert (=> b!2309619 (= e!1480307 (and tp_is_empty!10743 tp!732821))))

(declare-fun b!2309620 () Bool)

(declare-fun e!1480313 () Bool)

(declare-fun lt!856877 () Int)

(declare-fun size!21709 (BalanceConc!17676) Int)

(assert (=> b!2309620 (= e!1480313 (<= lt!856877 (size!21709 (charsOf!2801 (head!5070 tokens!456)))))))

(declare-fun e!1480293 () Bool)

(declare-fun e!1480297 () Bool)

(declare-fun b!2309621 () Bool)

(declare-fun tp!732819 () Bool)

(assert (=> b!2309621 (= e!1480293 (and tp!732819 (inv!37141 (tag!4903 (h!32899 rules!1750))) (inv!37144 (transformation!4413 (h!32899 rules!1750))) e!1480297))))

(declare-fun b!2309622 () Bool)

(declare-fun res!987543 () Bool)

(assert (=> b!2309622 (=> (not res!987543) (not e!1480311))))

(assert (=> b!2309622 (= res!987543 (not (= r!2363 otherR!12)))))

(declare-fun b!2309623 () Bool)

(declare-fun e!1480314 () Bool)

(assert (=> b!2309623 (= e!1480314 e!1480292)))

(declare-fun res!987548 () Bool)

(assert (=> b!2309623 (=> res!987548 e!1480292)))

(declare-fun lt!856866 () List!27591)

(declare-fun size!21710 (List!27591) Int)

(assert (=> b!2309623 (= res!987548 (> lt!856877 (size!21710 lt!856866)))))

(assert (=> b!2309623 (= lt!856877 (size!21710 otherP!12))))

(declare-datatypes ((tuple2!27434 0))(
  ( (tuple2!27435 (_1!16227 Token!8304) (_2!16227 List!27591)) )
))
(declare-fun lt!856871 () tuple2!27434)

(declare-fun lt!856867 () List!27591)

(assert (=> b!2309623 (= (_2!16227 lt!856871) lt!856867)))

(declare-fun lt!856873 () Unit!40423)

(declare-fun input!1722 () List!27591)

(declare-fun lemmaSamePrefixThenSameSuffix!1084 (List!27591 List!27591 List!27591 List!27591 List!27591) Unit!40423)

(assert (=> b!2309623 (= lt!856873 (lemmaSamePrefixThenSameSuffix!1084 lt!856866 (_2!16227 lt!856871) lt!856866 lt!856867 input!1722))))

(declare-fun getSuffix!1182 (List!27591 List!27591) List!27591)

(assert (=> b!2309623 (= lt!856867 (getSuffix!1182 input!1722 lt!856866))))

(declare-fun isPrefix!2403 (List!27591 List!27591) Bool)

(declare-fun ++!6735 (List!27591 List!27591) List!27591)

(assert (=> b!2309623 (isPrefix!2403 lt!856866 (++!6735 lt!856866 (_2!16227 lt!856871)))))

(declare-fun lt!856875 () Unit!40423)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1596 (List!27591 List!27591) Unit!40423)

(assert (=> b!2309623 (= lt!856875 (lemmaConcatTwoListThenFirstIsPrefix!1596 lt!856866 (_2!16227 lt!856871)))))

(assert (=> b!2309623 (= lt!856866 (list!10864 (charsOf!2801 (h!32900 tokens!456))))))

(declare-datatypes ((LexerInterface!4010 0))(
  ( (LexerInterfaceExt!4007 (__x!18211 Int)) (Lexer!4008) )
))
(declare-fun thiss!16613 () LexerInterface!4010)

(declare-datatypes ((Option!5413 0))(
  ( (None!5412) (Some!5412 (v!30522 tuple2!27434)) )
))
(declare-fun get!8291 (Option!5413) tuple2!27434)

(declare-fun maxPrefix!2266 (LexerInterface!4010 List!27592 List!27591) Option!5413)

(assert (=> b!2309623 (= lt!856871 (get!8291 (maxPrefix!2266 thiss!16613 rules!1750 input!1722)))))

(declare-fun tp!732823 () Bool)

(declare-fun b!2309624 () Bool)

(declare-fun inv!21 (TokenValue!4575) Bool)

(assert (=> b!2309624 (= e!1480296 (and (inv!21 (value!139590 (h!32900 tokens!456))) e!1480298 tp!732823))))

(declare-fun b!2309625 () Bool)

(declare-fun e!1480310 () Bool)

(declare-fun e!1480304 () Bool)

(assert (=> b!2309625 (= e!1480310 e!1480304)))

(declare-fun res!987538 () Bool)

(assert (=> b!2309625 (=> res!987538 e!1480304)))

(assert (=> b!2309625 (= res!987538 (> lt!856870 lt!856868))))

(declare-fun getIndex!426 (List!27592 Rule!8626) Int)

(assert (=> b!2309625 (= lt!856868 (getIndex!426 rules!1750 otherR!12))))

(assert (=> b!2309625 (= lt!856870 (getIndex!426 rules!1750 r!2363))))

(declare-fun ruleValid!1503 (LexerInterface!4010 Rule!8626) Bool)

(assert (=> b!2309625 (ruleValid!1503 thiss!16613 otherR!12)))

(declare-fun lt!856878 () Unit!40423)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!908 (LexerInterface!4010 Rule!8626 List!27592) Unit!40423)

(assert (=> b!2309625 (= lt!856878 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!908 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2309626 () Bool)

(assert (=> b!2309626 (= e!1480311 (not e!1480310))))

(declare-fun res!987535 () Bool)

(assert (=> b!2309626 (=> res!987535 e!1480310)))

(assert (=> b!2309626 (= res!987535 e!1480305)))

(declare-fun res!987541 () Bool)

(assert (=> b!2309626 (=> (not res!987541) (not e!1480305))))

(assert (=> b!2309626 (= res!987541 (not lt!856869))))

(assert (=> b!2309626 (ruleValid!1503 thiss!16613 r!2363)))

(declare-fun lt!856872 () Unit!40423)

(assert (=> b!2309626 (= lt!856872 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!908 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2309627 () Bool)

(declare-fun e!1480301 () Bool)

(assert (=> b!2309627 (= e!1480290 e!1480301)))

(declare-fun res!987540 () Bool)

(declare-fun size!21711 (List!27593) Int)

(assert (=> b!2309627 (= res!987540 (> (size!21711 tokens!456) 0))))

(assert (=> b!2309627 (=> (not res!987540) (not e!1480313))))

(declare-fun res!987544 () Bool)

(assert (=> b!2309627 (= res!987544 e!1480313)))

(assert (=> b!2309627 (=> res!987544 e!1480301)))

(declare-fun b!2309628 () Bool)

(declare-fun e!1480303 () Bool)

(declare-fun tp!732815 () Bool)

(assert (=> b!2309628 (= e!1480303 (and tp_is_empty!10743 tp!732815))))

(declare-fun b!2309629 () Bool)

(declare-fun res!987545 () Bool)

(assert (=> b!2309629 (=> (not res!987545) (not e!1480283))))

(declare-fun isEmpty!15730 (List!27592) Bool)

(assert (=> b!2309629 (= res!987545 (not (isEmpty!15730 rules!1750)))))

(declare-fun b!2309630 () Bool)

(declare-fun e!1480308 () Bool)

(declare-fun tp!732810 () Bool)

(assert (=> b!2309630 (= e!1480308 (and tp_is_empty!10743 tp!732810))))

(declare-fun e!1480315 () Bool)

(declare-fun e!1480312 () Bool)

(declare-fun tp!732820 () Bool)

(declare-fun b!2309631 () Bool)

(assert (=> b!2309631 (= e!1480315 (and tp!732820 (inv!37141 (tag!4903 r!2363)) (inv!37144 (transformation!4413 r!2363)) e!1480312))))

(declare-fun b!2309632 () Bool)

(assert (=> b!2309632 (= e!1480300 (<= (size!21709 (charsOf!2801 (head!5070 tokens!456))) (size!21710 otherP!12)))))

(declare-fun b!2309633 () Bool)

(declare-fun e!1480284 () Bool)

(declare-fun tp!732816 () Bool)

(assert (=> b!2309633 (= e!1480284 (and e!1480293 tp!732816))))

(declare-fun res!987533 () Bool)

(assert (=> start!227536 (=> (not res!987533) (not e!1480283))))

(get-info :version)

(assert (=> start!227536 (= res!987533 ((_ is Lexer!4008) thiss!16613))))

(assert (=> start!227536 e!1480283))

(assert (=> start!227536 true))

(assert (=> start!227536 e!1480303))

(declare-fun e!1480299 () Bool)

(assert (=> start!227536 e!1480299))

(assert (=> start!227536 e!1480308))

(assert (=> start!227536 e!1480307))

(assert (=> start!227536 e!1480284))

(assert (=> start!227536 e!1480315))

(assert (=> start!227536 e!1480291))

(declare-fun b!2309615 () Bool)

(assert (=> b!2309615 (= e!1480301 (not call!137316))))

(declare-fun e!1480295 () Bool)

(assert (=> b!2309634 (= e!1480295 (and tp!732812 tp!732813))))

(declare-fun b!2309635 () Bool)

(assert (=> b!2309635 (= e!1480283 e!1480286)))

(declare-fun res!987549 () Bool)

(assert (=> b!2309635 (=> (not res!987549) (not e!1480286))))

(declare-datatypes ((IArray!17955 0))(
  ( (IArray!17956 (innerList!9035 List!27593)) )
))
(declare-datatypes ((Conc!8975 0))(
  ( (Node!8975 (left!20830 Conc!8975) (right!21160 Conc!8975) (csize!18180 Int) (cheight!9186 Int)) (Leaf!13167 (xs!11917 IArray!17955) (csize!18181 Int)) (Empty!8975) )
))
(declare-datatypes ((BalanceConc!17678 0))(
  ( (BalanceConc!17679 (c!366104 Conc!8975)) )
))
(declare-datatypes ((tuple2!27436 0))(
  ( (tuple2!27437 (_1!16228 BalanceConc!17678) (_2!16228 BalanceConc!17676)) )
))
(declare-fun lt!856865 () tuple2!27436)

(declare-fun suffix!886 () List!27591)

(declare-datatypes ((tuple2!27438 0))(
  ( (tuple2!27439 (_1!16229 List!27593) (_2!16229 List!27591)) )
))
(declare-fun list!10865 (BalanceConc!17678) List!27593)

(assert (=> b!2309635 (= res!987549 (= (tuple2!27439 (list!10865 (_1!16228 lt!856865)) (list!10864 (_2!16228 lt!856865))) (tuple2!27439 tokens!456 suffix!886)))))

(declare-fun lex!1849 (LexerInterface!4010 List!27592 BalanceConc!17676) tuple2!27436)

(declare-fun seqFromList!3117 (List!27591) BalanceConc!17676)

(assert (=> b!2309635 (= lt!856865 (lex!1849 thiss!16613 rules!1750 (seqFromList!3117 input!1722)))))

(declare-fun b!2309636 () Bool)

(declare-fun res!987537 () Bool)

(assert (=> b!2309636 (=> (not res!987537) (not e!1480311))))

(assert (=> b!2309636 (= res!987537 e!1480287)))

(declare-fun res!987539 () Bool)

(assert (=> b!2309636 (=> res!987539 e!1480287)))

(assert (=> b!2309636 (= res!987539 lt!856869)))

(declare-fun tp!732811 () Bool)

(declare-fun b!2309637 () Bool)

(assert (=> b!2309637 (= e!1480299 (and tp!732811 (inv!37141 (tag!4903 otherR!12)) (inv!37144 (transformation!4413 otherR!12)) e!1480295))))

(declare-fun b!2309638 () Bool)

(declare-fun res!987534 () Bool)

(assert (=> b!2309638 (=> (not res!987534) (not e!1480283))))

(declare-fun rulesInvariant!3512 (LexerInterface!4010 List!27592) Bool)

(assert (=> b!2309638 (= res!987534 (rulesInvariant!3512 thiss!16613 rules!1750))))

(assert (=> b!2309639 (= e!1480297 (and tp!732808 tp!732814))))

(assert (=> b!2309640 (= e!1480312 (and tp!732809 tp!732824))))

(declare-fun b!2309641 () Bool)

(assert (=> b!2309641 (= e!1480304 e!1480314)))

(declare-fun res!987542 () Bool)

(assert (=> b!2309641 (=> res!987542 e!1480314)))

(assert (=> b!2309641 (= res!987542 ((_ is Nil!27499) tokens!456))))

(declare-fun lt!856876 () Unit!40423)

(assert (=> b!2309641 (= lt!856876 e!1480306)))

(declare-fun c!366101 () Bool)

(assert (=> b!2309641 (= c!366101 (= lt!856870 lt!856868))))

(declare-fun b!2309642 () Bool)

(declare-fun res!987546 () Bool)

(assert (=> b!2309642 (=> (not res!987546) (not e!1480311))))

(assert (=> b!2309642 (= res!987546 (isPrefix!2403 otherP!12 input!1722))))

(assert (= (and start!227536 res!987533) b!2309629))

(assert (= (and b!2309629 res!987545) b!2309638))

(assert (= (and b!2309638 res!987534) b!2309609))

(assert (= (and b!2309609 res!987547) b!2309614))

(assert (= (and b!2309614 res!987532) b!2309635))

(assert (= (and b!2309635 res!987549) b!2309618))

(assert (= (and b!2309618 (not res!987531)) b!2309632))

(assert (= (and b!2309618 res!987536) b!2309636))

(assert (= (and b!2309636 (not res!987539)) b!2309611))

(assert (= (and b!2309636 res!987537) b!2309642))

(assert (= (and b!2309642 res!987546) b!2309622))

(assert (= (and b!2309622 res!987543) b!2309626))

(assert (= (and b!2309626 res!987541) b!2309617))

(assert (= (and b!2309626 (not res!987535)) b!2309625))

(assert (= (and b!2309625 (not res!987538)) b!2309641))

(assert (= (and b!2309641 c!366101) b!2309610))

(assert (= (and b!2309641 (not c!366101)) b!2309608))

(assert (= (and b!2309641 (not res!987542)) b!2309623))

(assert (= (and b!2309623 (not res!987548)) b!2309606))

(assert (= (and b!2309606 c!366100) b!2309607))

(assert (= (and b!2309606 (not c!366100)) b!2309627))

(assert (= (and b!2309627 res!987540) b!2309620))

(assert (= (and b!2309627 (not res!987544)) b!2309615))

(assert (= (or b!2309607 b!2309615) bm!137311))

(assert (= (and start!227536 ((_ is Cons!27497) input!1722)) b!2309628))

(assert (= b!2309637 b!2309634))

(assert (= start!227536 b!2309637))

(assert (= (and start!227536 ((_ is Cons!27497) suffix!886)) b!2309630))

(assert (= (and start!227536 ((_ is Cons!27497) otherP!12)) b!2309619))

(assert (= b!2309621 b!2309639))

(assert (= b!2309633 b!2309621))

(assert (= (and start!227536 ((_ is Cons!27498) rules!1750)) b!2309633))

(assert (= b!2309631 b!2309640))

(assert (= start!227536 b!2309631))

(assert (= b!2309612 b!2309613))

(assert (= b!2309624 b!2309612))

(assert (= b!2309616 b!2309624))

(assert (= (and start!227536 ((_ is Cons!27499) tokens!456)) b!2309616))

(declare-fun m!2736857 () Bool)

(assert (=> b!2309612 m!2736857))

(declare-fun m!2736859 () Bool)

(assert (=> b!2309612 m!2736859))

(declare-fun m!2736861 () Bool)

(assert (=> b!2309627 m!2736861))

(declare-fun m!2736863 () Bool)

(assert (=> b!2309626 m!2736863))

(declare-fun m!2736865 () Bool)

(assert (=> b!2309626 m!2736865))

(declare-fun m!2736867 () Bool)

(assert (=> b!2309623 m!2736867))

(declare-fun m!2736869 () Bool)

(assert (=> b!2309623 m!2736869))

(declare-fun m!2736871 () Bool)

(assert (=> b!2309623 m!2736871))

(declare-fun m!2736873 () Bool)

(assert (=> b!2309623 m!2736873))

(declare-fun m!2736875 () Bool)

(assert (=> b!2309623 m!2736875))

(declare-fun m!2736877 () Bool)

(assert (=> b!2309623 m!2736877))

(declare-fun m!2736879 () Bool)

(assert (=> b!2309623 m!2736879))

(assert (=> b!2309623 m!2736873))

(declare-fun m!2736881 () Bool)

(assert (=> b!2309623 m!2736881))

(assert (=> b!2309623 m!2736869))

(declare-fun m!2736883 () Bool)

(assert (=> b!2309623 m!2736883))

(declare-fun m!2736885 () Bool)

(assert (=> b!2309623 m!2736885))

(assert (=> b!2309623 m!2736877))

(declare-fun m!2736887 () Bool)

(assert (=> b!2309623 m!2736887))

(declare-fun m!2736889 () Bool)

(assert (=> b!2309637 m!2736889))

(declare-fun m!2736891 () Bool)

(assert (=> b!2309637 m!2736891))

(declare-fun m!2736893 () Bool)

(assert (=> b!2309624 m!2736893))

(declare-fun m!2736895 () Bool)

(assert (=> b!2309635 m!2736895))

(declare-fun m!2736897 () Bool)

(assert (=> b!2309635 m!2736897))

(declare-fun m!2736899 () Bool)

(assert (=> b!2309635 m!2736899))

(assert (=> b!2309635 m!2736899))

(declare-fun m!2736901 () Bool)

(assert (=> b!2309635 m!2736901))

(declare-fun m!2736903 () Bool)

(assert (=> b!2309642 m!2736903))

(declare-fun m!2736905 () Bool)

(assert (=> b!2309611 m!2736905))

(declare-fun m!2736907 () Bool)

(assert (=> bm!137311 m!2736907))

(declare-fun m!2736909 () Bool)

(assert (=> b!2309631 m!2736909))

(declare-fun m!2736911 () Bool)

(assert (=> b!2309631 m!2736911))

(declare-fun m!2736913 () Bool)

(assert (=> b!2309614 m!2736913))

(declare-fun m!2736915 () Bool)

(assert (=> b!2309618 m!2736915))

(assert (=> b!2309620 m!2736905))

(assert (=> b!2309620 m!2736905))

(declare-fun m!2736917 () Bool)

(assert (=> b!2309620 m!2736917))

(assert (=> b!2309620 m!2736917))

(declare-fun m!2736919 () Bool)

(assert (=> b!2309620 m!2736919))

(declare-fun m!2736921 () Bool)

(assert (=> b!2309621 m!2736921))

(declare-fun m!2736923 () Bool)

(assert (=> b!2309621 m!2736923))

(declare-fun m!2736925 () Bool)

(assert (=> b!2309625 m!2736925))

(declare-fun m!2736927 () Bool)

(assert (=> b!2309625 m!2736927))

(declare-fun m!2736929 () Bool)

(assert (=> b!2309625 m!2736929))

(declare-fun m!2736931 () Bool)

(assert (=> b!2309625 m!2736931))

(declare-fun m!2736933 () Bool)

(assert (=> b!2309638 m!2736933))

(assert (=> b!2309632 m!2736905))

(assert (=> b!2309632 m!2736905))

(assert (=> b!2309632 m!2736917))

(assert (=> b!2309632 m!2736917))

(assert (=> b!2309632 m!2736919))

(assert (=> b!2309632 m!2736885))

(declare-fun m!2736935 () Bool)

(assert (=> b!2309609 m!2736935))

(declare-fun m!2736937 () Bool)

(assert (=> b!2309629 m!2736937))

(declare-fun m!2736939 () Bool)

(assert (=> b!2309616 m!2736939))

(assert (=> b!2309617 m!2736905))

(assert (=> b!2309617 m!2736905))

(assert (=> b!2309617 m!2736917))

(assert (=> b!2309617 m!2736917))

(declare-fun m!2736941 () Bool)

(assert (=> b!2309617 m!2736941))

(assert (=> b!2309617 m!2736941))

(declare-fun m!2736943 () Bool)

(assert (=> b!2309617 m!2736943))

(declare-fun m!2736945 () Bool)

(assert (=> b!2309610 m!2736945))

(check-sat (not b!2309638) (not b!2309616) (not b!2309624) (not b!2309627) (not b_next!70661) (not b!2309614) (not b_next!70659) (not b!2309620) (not b!2309635) (not bm!137311) b_and!184735 (not b_next!70657) (not b_next!70665) (not b_next!70667) (not b!2309619) (not b!2309623) (not b!2309621) (not b!2309629) (not b!2309625) (not b!2309632) (not b_next!70663) (not b!2309609) b_and!184743 b_and!184729 (not b!2309617) (not b!2309618) (not b!2309611) (not b_next!70653) (not b!2309631) (not b!2309642) tp_is_empty!10743 (not b!2309628) (not b!2309637) (not b!2309630) (not b!2309610) b_and!184733 b_and!184739 b_and!184731 (not b!2309633) (not b!2309612) b_and!184741 (not b_next!70655) b_and!184737 (not b!2309626))
(check-sat (not b_next!70663) (not b_next!70661) b_and!184743 b_and!184729 (not b_next!70659) (not b_next!70653) b_and!184733 b_and!184735 (not b_next!70657) b_and!184737 (not b_next!70665) (not b_next!70667) b_and!184739 b_and!184731 b_and!184741 (not b_next!70655))
(get-model)

(declare-fun d!683162 () Bool)

(declare-fun list!10868 (Conc!8975) List!27593)

(assert (=> d!683162 (= (list!10865 (_1!16228 lt!856865)) (list!10868 (c!366104 (_1!16228 lt!856865))))))

(declare-fun bs!458151 () Bool)

(assert (= bs!458151 d!683162))

(declare-fun m!2736991 () Bool)

(assert (=> bs!458151 m!2736991))

(assert (=> b!2309635 d!683162))

(declare-fun d!683166 () Bool)

(declare-fun list!10869 (Conc!8974) List!27591)

(assert (=> d!683166 (= (list!10864 (_2!16228 lt!856865)) (list!10869 (c!366102 (_2!16228 lt!856865))))))

(declare-fun bs!458153 () Bool)

(assert (= bs!458153 d!683166))

(declare-fun m!2737003 () Bool)

(assert (=> bs!458153 m!2737003))

(assert (=> b!2309635 d!683166))

(declare-fun b!2309867 () Bool)

(declare-fun e!1480443 () Bool)

(declare-fun lt!856948 () tuple2!27436)

(assert (=> b!2309867 (= e!1480443 (= (_2!16228 lt!856948) (seqFromList!3117 input!1722)))))

(declare-fun b!2309868 () Bool)

(declare-fun res!987688 () Bool)

(declare-fun e!1480442 () Bool)

(assert (=> b!2309868 (=> (not res!987688) (not e!1480442))))

(declare-fun lexList!1142 (LexerInterface!4010 List!27592 List!27591) tuple2!27438)

(assert (=> b!2309868 (= res!987688 (= (list!10865 (_1!16228 lt!856948)) (_1!16229 (lexList!1142 thiss!16613 rules!1750 (list!10864 (seqFromList!3117 input!1722))))))))

(declare-fun d!683172 () Bool)

(assert (=> d!683172 e!1480442))

(declare-fun res!987687 () Bool)

(assert (=> d!683172 (=> (not res!987687) (not e!1480442))))

(assert (=> d!683172 (= res!987687 e!1480443)))

(declare-fun c!366152 () Bool)

(declare-fun size!21714 (BalanceConc!17678) Int)

(assert (=> d!683172 (= c!366152 (> (size!21714 (_1!16228 lt!856948)) 0))))

(declare-fun lexTailRecV2!817 (LexerInterface!4010 List!27592 BalanceConc!17676 BalanceConc!17676 BalanceConc!17676 BalanceConc!17678) tuple2!27436)

(assert (=> d!683172 (= lt!856948 (lexTailRecV2!817 thiss!16613 rules!1750 (seqFromList!3117 input!1722) (BalanceConc!17677 Empty!8974) (seqFromList!3117 input!1722) (BalanceConc!17679 Empty!8975)))))

(assert (=> d!683172 (= (lex!1849 thiss!16613 rules!1750 (seqFromList!3117 input!1722)) lt!856948)))

(declare-fun b!2309869 () Bool)

(declare-fun e!1480444 () Bool)

(declare-fun isEmpty!15733 (BalanceConc!17678) Bool)

(assert (=> b!2309869 (= e!1480444 (not (isEmpty!15733 (_1!16228 lt!856948))))))

(declare-fun b!2309870 () Bool)

(assert (=> b!2309870 (= e!1480443 e!1480444)))

(declare-fun res!987689 () Bool)

(assert (=> b!2309870 (= res!987689 (< (size!21709 (_2!16228 lt!856948)) (size!21709 (seqFromList!3117 input!1722))))))

(assert (=> b!2309870 (=> (not res!987689) (not e!1480444))))

(declare-fun b!2309871 () Bool)

(assert (=> b!2309871 (= e!1480442 (= (list!10864 (_2!16228 lt!856948)) (_2!16229 (lexList!1142 thiss!16613 rules!1750 (list!10864 (seqFromList!3117 input!1722))))))))

(assert (= (and d!683172 c!366152) b!2309870))

(assert (= (and d!683172 (not c!366152)) b!2309867))

(assert (= (and b!2309870 res!987689) b!2309869))

(assert (= (and d!683172 res!987687) b!2309868))

(assert (= (and b!2309868 res!987688) b!2309871))

(declare-fun m!2737163 () Bool)

(assert (=> d!683172 m!2737163))

(assert (=> d!683172 m!2736899))

(assert (=> d!683172 m!2736899))

(declare-fun m!2737165 () Bool)

(assert (=> d!683172 m!2737165))

(declare-fun m!2737167 () Bool)

(assert (=> b!2309871 m!2737167))

(assert (=> b!2309871 m!2736899))

(declare-fun m!2737169 () Bool)

(assert (=> b!2309871 m!2737169))

(assert (=> b!2309871 m!2737169))

(declare-fun m!2737171 () Bool)

(assert (=> b!2309871 m!2737171))

(declare-fun m!2737173 () Bool)

(assert (=> b!2309868 m!2737173))

(assert (=> b!2309868 m!2736899))

(assert (=> b!2309868 m!2737169))

(assert (=> b!2309868 m!2737169))

(assert (=> b!2309868 m!2737171))

(declare-fun m!2737175 () Bool)

(assert (=> b!2309870 m!2737175))

(assert (=> b!2309870 m!2736899))

(declare-fun m!2737177 () Bool)

(assert (=> b!2309870 m!2737177))

(declare-fun m!2737179 () Bool)

(assert (=> b!2309869 m!2737179))

(assert (=> b!2309635 d!683172))

(declare-fun d!683232 () Bool)

(declare-fun fromListB!1408 (List!27591) BalanceConc!17676)

(assert (=> d!683232 (= (seqFromList!3117 input!1722) (fromListB!1408 input!1722))))

(declare-fun bs!458161 () Bool)

(assert (= bs!458161 d!683232))

(declare-fun m!2737185 () Bool)

(assert (=> bs!458161 m!2737185))

(assert (=> b!2309635 d!683232))

(declare-fun d!683234 () Bool)

(declare-fun lt!856951 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3717 (List!27592) (InoxSet Rule!8626))

(assert (=> d!683234 (= lt!856951 (select (content!3717 rules!1750) otherR!12))))

(declare-fun e!1480491 () Bool)

(assert (=> d!683234 (= lt!856951 e!1480491)))

(declare-fun res!987695 () Bool)

(assert (=> d!683234 (=> (not res!987695) (not e!1480491))))

(assert (=> d!683234 (= res!987695 ((_ is Cons!27498) rules!1750))))

(assert (=> d!683234 (= (contains!4803 rules!1750 otherR!12) lt!856951)))

(declare-fun b!2309935 () Bool)

(declare-fun e!1480492 () Bool)

(assert (=> b!2309935 (= e!1480491 e!1480492)))

(declare-fun res!987694 () Bool)

(assert (=> b!2309935 (=> res!987694 e!1480492)))

(assert (=> b!2309935 (= res!987694 (= (h!32899 rules!1750) otherR!12))))

(declare-fun b!2309936 () Bool)

(assert (=> b!2309936 (= e!1480492 (contains!4803 (t!206926 rules!1750) otherR!12))))

(assert (= (and d!683234 res!987695) b!2309935))

(assert (= (and b!2309935 (not res!987694)) b!2309936))

(declare-fun m!2737195 () Bool)

(assert (=> d!683234 m!2737195))

(declare-fun m!2737197 () Bool)

(assert (=> d!683234 m!2737197))

(declare-fun m!2737199 () Bool)

(assert (=> b!2309936 m!2737199))

(assert (=> b!2309614 d!683234))

(declare-fun d!683236 () Bool)

(assert (=> d!683236 (= (inv!37141 (tag!4903 otherR!12)) (= (mod (str.len (value!139589 (tag!4903 otherR!12))) 2) 0))))

(assert (=> b!2309637 d!683236))

(declare-fun d!683238 () Bool)

(declare-fun res!987698 () Bool)

(declare-fun e!1480495 () Bool)

(assert (=> d!683238 (=> (not res!987698) (not e!1480495))))

(declare-fun semiInverseModEq!1798 (Int Int) Bool)

(assert (=> d!683238 (= res!987698 (semiInverseModEq!1798 (toChars!6090 (transformation!4413 otherR!12)) (toValue!6231 (transformation!4413 otherR!12))))))

(assert (=> d!683238 (= (inv!37144 (transformation!4413 otherR!12)) e!1480495)))

(declare-fun b!2309939 () Bool)

(declare-fun equivClasses!1717 (Int Int) Bool)

(assert (=> b!2309939 (= e!1480495 (equivClasses!1717 (toChars!6090 (transformation!4413 otherR!12)) (toValue!6231 (transformation!4413 otherR!12))))))

(assert (= (and d!683238 res!987698) b!2309939))

(declare-fun m!2737201 () Bool)

(assert (=> d!683238 m!2737201))

(declare-fun m!2737203 () Bool)

(assert (=> b!2309939 m!2737203))

(assert (=> b!2309637 d!683238))

(declare-fun d!683240 () Bool)

(declare-fun res!987703 () Bool)

(declare-fun e!1480498 () Bool)

(assert (=> d!683240 (=> (not res!987703) (not e!1480498))))

(declare-fun isEmpty!15734 (List!27591) Bool)

(assert (=> d!683240 (= res!987703 (not (isEmpty!15734 (originalCharacters!5183 (h!32900 tokens!456)))))))

(assert (=> d!683240 (= (inv!37145 (h!32900 tokens!456)) e!1480498)))

(declare-fun b!2309944 () Bool)

(declare-fun res!987704 () Bool)

(assert (=> b!2309944 (=> (not res!987704) (not e!1480498))))

(declare-fun dynLambda!11961 (Int TokenValue!4575) BalanceConc!17676)

(assert (=> b!2309944 (= res!987704 (= (originalCharacters!5183 (h!32900 tokens!456)) (list!10864 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456))))))))

(declare-fun b!2309945 () Bool)

(assert (=> b!2309945 (= e!1480498 (= (size!21708 (h!32900 tokens!456)) (size!21710 (originalCharacters!5183 (h!32900 tokens!456)))))))

(assert (= (and d!683240 res!987703) b!2309944))

(assert (= (and b!2309944 res!987704) b!2309945))

(declare-fun b_lambda!73643 () Bool)

(assert (=> (not b_lambda!73643) (not b!2309944)))

(declare-fun tb!138567 () Bool)

(declare-fun t!206953 () Bool)

(assert (=> (and b!2309634 (= (toChars!6090 (transformation!4413 otherR!12)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) t!206953) tb!138567))

(declare-fun b!2309950 () Bool)

(declare-fun e!1480501 () Bool)

(declare-fun tp!732895 () Bool)

(declare-fun inv!37148 (Conc!8974) Bool)

(assert (=> b!2309950 (= e!1480501 (and (inv!37148 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456))))) tp!732895))))

(declare-fun result!168880 () Bool)

(declare-fun inv!37149 (BalanceConc!17676) Bool)

(assert (=> tb!138567 (= result!168880 (and (inv!37149 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456)))) e!1480501))))

(assert (= tb!138567 b!2309950))

(declare-fun m!2737205 () Bool)

(assert (=> b!2309950 m!2737205))

(declare-fun m!2737207 () Bool)

(assert (=> tb!138567 m!2737207))

(assert (=> b!2309944 t!206953))

(declare-fun b_and!184777 () Bool)

(assert (= b_and!184731 (and (=> t!206953 result!168880) b_and!184777)))

(declare-fun tb!138569 () Bool)

(declare-fun t!206955 () Bool)

(assert (=> (and b!2309639 (= (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) t!206955) tb!138569))

(declare-fun result!168884 () Bool)

(assert (= result!168884 result!168880))

(assert (=> b!2309944 t!206955))

(declare-fun b_and!184779 () Bool)

(assert (= b_and!184735 (and (=> t!206955 result!168884) b_and!184779)))

(declare-fun t!206957 () Bool)

(declare-fun tb!138571 () Bool)

(assert (=> (and b!2309613 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) t!206957) tb!138571))

(declare-fun result!168886 () Bool)

(assert (= result!168886 result!168880))

(assert (=> b!2309944 t!206957))

(declare-fun b_and!184781 () Bool)

(assert (= b_and!184739 (and (=> t!206957 result!168886) b_and!184781)))

(declare-fun tb!138573 () Bool)

(declare-fun t!206959 () Bool)

(assert (=> (and b!2309640 (= (toChars!6090 (transformation!4413 r!2363)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) t!206959) tb!138573))

(declare-fun result!168888 () Bool)

(assert (= result!168888 result!168880))

(assert (=> b!2309944 t!206959))

(declare-fun b_and!184783 () Bool)

(assert (= b_and!184743 (and (=> t!206959 result!168888) b_and!184783)))

(declare-fun m!2737209 () Bool)

(assert (=> d!683240 m!2737209))

(declare-fun m!2737211 () Bool)

(assert (=> b!2309944 m!2737211))

(assert (=> b!2309944 m!2737211))

(declare-fun m!2737213 () Bool)

(assert (=> b!2309944 m!2737213))

(declare-fun m!2737215 () Bool)

(assert (=> b!2309945 m!2737215))

(assert (=> b!2309616 d!683240))

(declare-fun b!2309979 () Bool)

(declare-fun res!987723 () Bool)

(declare-fun e!1480516 () Bool)

(assert (=> b!2309979 (=> res!987723 e!1480516)))

(assert (=> b!2309979 (= res!987723 (not ((_ is ElementMatch!6761) (regex!4413 r!2363))))))

(declare-fun e!1480520 () Bool)

(assert (=> b!2309979 (= e!1480520 e!1480516)))

(declare-fun b!2309980 () Bool)

(declare-fun e!1480519 () Bool)

(declare-fun head!5072 (List!27591) C!13668)

(assert (=> b!2309980 (= e!1480519 (not (= (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456)))) (c!366103 (regex!4413 r!2363)))))))

(declare-fun b!2309981 () Bool)

(declare-fun lt!856954 () Bool)

(assert (=> b!2309981 (= e!1480520 (not lt!856954))))

(declare-fun b!2309982 () Bool)

(declare-fun res!987728 () Bool)

(declare-fun e!1480517 () Bool)

(assert (=> b!2309982 (=> (not res!987728) (not e!1480517))))

(declare-fun tail!3339 (List!27591) List!27591)

(assert (=> b!2309982 (= res!987728 (isEmpty!15734 (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))

(declare-fun b!2309983 () Bool)

(declare-fun e!1480521 () Bool)

(assert (=> b!2309983 (= e!1480521 e!1480520)))

(declare-fun c!366160 () Bool)

(assert (=> b!2309983 (= c!366160 ((_ is EmptyLang!6761) (regex!4413 r!2363)))))

(declare-fun b!2309984 () Bool)

(declare-fun e!1480518 () Bool)

(declare-fun derivativeStep!1556 (Regex!6761 C!13668) Regex!6761)

(assert (=> b!2309984 (= e!1480518 (matchR!3018 (derivativeStep!1556 (regex!4413 r!2363) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456))))) (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))

(declare-fun b!2309985 () Bool)

(declare-fun nullable!1896 (Regex!6761) Bool)

(assert (=> b!2309985 (= e!1480518 (nullable!1896 (regex!4413 r!2363)))))

(declare-fun b!2309986 () Bool)

(declare-fun res!987726 () Bool)

(assert (=> b!2309986 (=> res!987726 e!1480519)))

(assert (=> b!2309986 (= res!987726 (not (isEmpty!15734 (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))))

(declare-fun bm!137321 () Bool)

(declare-fun call!137326 () Bool)

(assert (=> bm!137321 (= call!137326 (isEmpty!15734 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))

(declare-fun b!2309988 () Bool)

(declare-fun res!987724 () Bool)

(assert (=> b!2309988 (=> (not res!987724) (not e!1480517))))

(assert (=> b!2309988 (= res!987724 (not call!137326))))

(declare-fun b!2309989 () Bool)

(assert (=> b!2309989 (= e!1480521 (= lt!856954 call!137326))))

(declare-fun b!2309990 () Bool)

(assert (=> b!2309990 (= e!1480517 (= (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456)))) (c!366103 (regex!4413 r!2363))))))

(declare-fun d!683242 () Bool)

(assert (=> d!683242 e!1480521))

(declare-fun c!366159 () Bool)

(assert (=> d!683242 (= c!366159 ((_ is EmptyExpr!6761) (regex!4413 r!2363)))))

(assert (=> d!683242 (= lt!856954 e!1480518)))

(declare-fun c!366161 () Bool)

(assert (=> d!683242 (= c!366161 (isEmpty!15734 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))

(declare-fun validRegex!2558 (Regex!6761) Bool)

(assert (=> d!683242 (validRegex!2558 (regex!4413 r!2363))))

(assert (=> d!683242 (= (matchR!3018 (regex!4413 r!2363) (list!10864 (charsOf!2801 (head!5070 tokens!456)))) lt!856954)))

(declare-fun b!2309987 () Bool)

(declare-fun e!1480522 () Bool)

(assert (=> b!2309987 (= e!1480516 e!1480522)))

(declare-fun res!987727 () Bool)

(assert (=> b!2309987 (=> (not res!987727) (not e!1480522))))

(assert (=> b!2309987 (= res!987727 (not lt!856954))))

(declare-fun b!2309991 () Bool)

(declare-fun res!987725 () Bool)

(assert (=> b!2309991 (=> res!987725 e!1480516)))

(assert (=> b!2309991 (= res!987725 e!1480517)))

(declare-fun res!987721 () Bool)

(assert (=> b!2309991 (=> (not res!987721) (not e!1480517))))

(assert (=> b!2309991 (= res!987721 lt!856954)))

(declare-fun b!2309992 () Bool)

(assert (=> b!2309992 (= e!1480522 e!1480519)))

(declare-fun res!987722 () Bool)

(assert (=> b!2309992 (=> res!987722 e!1480519)))

(assert (=> b!2309992 (= res!987722 call!137326)))

(assert (= (and d!683242 c!366161) b!2309985))

(assert (= (and d!683242 (not c!366161)) b!2309984))

(assert (= (and d!683242 c!366159) b!2309989))

(assert (= (and d!683242 (not c!366159)) b!2309983))

(assert (= (and b!2309983 c!366160) b!2309981))

(assert (= (and b!2309983 (not c!366160)) b!2309979))

(assert (= (and b!2309979 (not res!987723)) b!2309991))

(assert (= (and b!2309991 res!987721) b!2309988))

(assert (= (and b!2309988 res!987724) b!2309982))

(assert (= (and b!2309982 res!987728) b!2309990))

(assert (= (and b!2309991 (not res!987725)) b!2309987))

(assert (= (and b!2309987 res!987727) b!2309992))

(assert (= (and b!2309992 (not res!987722)) b!2309986))

(assert (= (and b!2309986 (not res!987726)) b!2309980))

(assert (= (or b!2309989 b!2309988 b!2309992) bm!137321))

(assert (=> b!2309990 m!2736941))

(declare-fun m!2737217 () Bool)

(assert (=> b!2309990 m!2737217))

(assert (=> b!2309982 m!2736941))

(declare-fun m!2737219 () Bool)

(assert (=> b!2309982 m!2737219))

(assert (=> b!2309982 m!2737219))

(declare-fun m!2737221 () Bool)

(assert (=> b!2309982 m!2737221))

(declare-fun m!2737223 () Bool)

(assert (=> b!2309985 m!2737223))

(assert (=> b!2309980 m!2736941))

(assert (=> b!2309980 m!2737217))

(assert (=> d!683242 m!2736941))

(declare-fun m!2737225 () Bool)

(assert (=> d!683242 m!2737225))

(declare-fun m!2737227 () Bool)

(assert (=> d!683242 m!2737227))

(assert (=> b!2309984 m!2736941))

(assert (=> b!2309984 m!2737217))

(assert (=> b!2309984 m!2737217))

(declare-fun m!2737229 () Bool)

(assert (=> b!2309984 m!2737229))

(assert (=> b!2309984 m!2736941))

(assert (=> b!2309984 m!2737219))

(assert (=> b!2309984 m!2737229))

(assert (=> b!2309984 m!2737219))

(declare-fun m!2737231 () Bool)

(assert (=> b!2309984 m!2737231))

(assert (=> b!2309986 m!2736941))

(assert (=> b!2309986 m!2737219))

(assert (=> b!2309986 m!2737219))

(assert (=> b!2309986 m!2737221))

(assert (=> bm!137321 m!2736941))

(assert (=> bm!137321 m!2737225))

(assert (=> b!2309617 d!683242))

(declare-fun d!683244 () Bool)

(assert (=> d!683244 (= (list!10864 (charsOf!2801 (head!5070 tokens!456))) (list!10869 (c!366102 (charsOf!2801 (head!5070 tokens!456)))))))

(declare-fun bs!458162 () Bool)

(assert (= bs!458162 d!683244))

(declare-fun m!2737233 () Bool)

(assert (=> bs!458162 m!2737233))

(assert (=> b!2309617 d!683244))

(declare-fun d!683246 () Bool)

(declare-fun lt!856957 () BalanceConc!17676)

(assert (=> d!683246 (= (list!10864 lt!856957) (originalCharacters!5183 (head!5070 tokens!456)))))

(assert (=> d!683246 (= lt!856957 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456))))))

(assert (=> d!683246 (= (charsOf!2801 (head!5070 tokens!456)) lt!856957)))

(declare-fun b_lambda!73645 () Bool)

(assert (=> (not b_lambda!73645) (not d!683246)))

(declare-fun t!206961 () Bool)

(declare-fun tb!138575 () Bool)

(assert (=> (and b!2309634 (= (toChars!6090 (transformation!4413 otherR!12)) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456))))) t!206961) tb!138575))

(declare-fun b!2309993 () Bool)

(declare-fun e!1480523 () Bool)

(declare-fun tp!732896 () Bool)

(assert (=> b!2309993 (= e!1480523 (and (inv!37148 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456))))) tp!732896))))

(declare-fun result!168890 () Bool)

(assert (=> tb!138575 (= result!168890 (and (inv!37149 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456)))) e!1480523))))

(assert (= tb!138575 b!2309993))

(declare-fun m!2737235 () Bool)

(assert (=> b!2309993 m!2737235))

(declare-fun m!2737237 () Bool)

(assert (=> tb!138575 m!2737237))

(assert (=> d!683246 t!206961))

(declare-fun b_and!184785 () Bool)

(assert (= b_and!184777 (and (=> t!206961 result!168890) b_and!184785)))

(declare-fun tb!138577 () Bool)

(declare-fun t!206963 () Bool)

(assert (=> (and b!2309639 (= (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456))))) t!206963) tb!138577))

(declare-fun result!168892 () Bool)

(assert (= result!168892 result!168890))

(assert (=> d!683246 t!206963))

(declare-fun b_and!184787 () Bool)

(assert (= b_and!184779 (and (=> t!206963 result!168892) b_and!184787)))

(declare-fun t!206965 () Bool)

(declare-fun tb!138579 () Bool)

(assert (=> (and b!2309613 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456))))) t!206965) tb!138579))

(declare-fun result!168894 () Bool)

(assert (= result!168894 result!168890))

(assert (=> d!683246 t!206965))

(declare-fun b_and!184789 () Bool)

(assert (= b_and!184781 (and (=> t!206965 result!168894) b_and!184789)))

(declare-fun t!206967 () Bool)

(declare-fun tb!138581 () Bool)

(assert (=> (and b!2309640 (= (toChars!6090 (transformation!4413 r!2363)) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456))))) t!206967) tb!138581))

(declare-fun result!168896 () Bool)

(assert (= result!168896 result!168890))

(assert (=> d!683246 t!206967))

(declare-fun b_and!184791 () Bool)

(assert (= b_and!184783 (and (=> t!206967 result!168896) b_and!184791)))

(declare-fun m!2737239 () Bool)

(assert (=> d!683246 m!2737239))

(declare-fun m!2737241 () Bool)

(assert (=> d!683246 m!2737241))

(assert (=> b!2309617 d!683246))

(declare-fun d!683248 () Bool)

(assert (=> d!683248 (= (head!5070 tokens!456) (h!32900 tokens!456))))

(assert (=> b!2309617 d!683248))

(declare-fun d!683250 () Bool)

(declare-fun res!987731 () Bool)

(declare-fun e!1480526 () Bool)

(assert (=> d!683250 (=> (not res!987731) (not e!1480526))))

(declare-fun rulesValid!1641 (LexerInterface!4010 List!27592) Bool)

(assert (=> d!683250 (= res!987731 (rulesValid!1641 thiss!16613 rules!1750))))

(assert (=> d!683250 (= (rulesInvariant!3512 thiss!16613 rules!1750) e!1480526)))

(declare-fun b!2309996 () Bool)

(declare-datatypes ((List!27595 0))(
  ( (Nil!27501) (Cons!27501 (h!32902 String!29979) (t!206977 List!27595)) )
))
(declare-fun noDuplicateTag!1639 (LexerInterface!4010 List!27592 List!27595) Bool)

(assert (=> b!2309996 (= e!1480526 (noDuplicateTag!1639 thiss!16613 rules!1750 Nil!27501))))

(assert (= (and d!683250 res!987731) b!2309996))

(declare-fun m!2737243 () Bool)

(assert (=> d!683250 m!2737243))

(declare-fun m!2737245 () Bool)

(assert (=> b!2309996 m!2737245))

(assert (=> b!2309638 d!683250))

(declare-fun d!683252 () Bool)

(assert (=> d!683252 (= (isEmpty!15730 rules!1750) ((_ is Nil!27498) rules!1750))))

(assert (=> b!2309629 d!683252))

(declare-fun d!683254 () Bool)

(declare-fun lt!856958 () Bool)

(assert (=> d!683254 (= lt!856958 (select (content!3717 rules!1750) r!2363))))

(declare-fun e!1480527 () Bool)

(assert (=> d!683254 (= lt!856958 e!1480527)))

(declare-fun res!987733 () Bool)

(assert (=> d!683254 (=> (not res!987733) (not e!1480527))))

(assert (=> d!683254 (= res!987733 ((_ is Cons!27498) rules!1750))))

(assert (=> d!683254 (= (contains!4803 rules!1750 r!2363) lt!856958)))

(declare-fun b!2309997 () Bool)

(declare-fun e!1480528 () Bool)

(assert (=> b!2309997 (= e!1480527 e!1480528)))

(declare-fun res!987732 () Bool)

(assert (=> b!2309997 (=> res!987732 e!1480528)))

(assert (=> b!2309997 (= res!987732 (= (h!32899 rules!1750) r!2363))))

(declare-fun b!2309998 () Bool)

(assert (=> b!2309998 (= e!1480528 (contains!4803 (t!206926 rules!1750) r!2363))))

(assert (= (and d!683254 res!987733) b!2309997))

(assert (= (and b!2309997 (not res!987732)) b!2309998))

(assert (=> d!683254 m!2737195))

(declare-fun m!2737247 () Bool)

(assert (=> d!683254 m!2737247))

(declare-fun m!2737249 () Bool)

(assert (=> b!2309998 m!2737249))

(assert (=> b!2309609 d!683254))

(declare-fun d!683256 () Bool)

(assert (=> d!683256 (= r!2363 otherR!12)))

(declare-fun lt!856961 () Unit!40423)

(declare-fun choose!13508 (List!27592 Rule!8626 Rule!8626) Unit!40423)

(assert (=> d!683256 (= lt!856961 (choose!13508 rules!1750 r!2363 otherR!12))))

(assert (=> d!683256 (contains!4803 rules!1750 r!2363)))

(assert (=> d!683256 (= (lemmaSameIndexThenSameElement!206 rules!1750 r!2363 otherR!12) lt!856961)))

(declare-fun bs!458163 () Bool)

(assert (= bs!458163 d!683256))

(declare-fun m!2737251 () Bool)

(assert (=> bs!458163 m!2737251))

(assert (=> bs!458163 m!2736935))

(assert (=> b!2309610 d!683256))

(declare-fun d!683258 () Bool)

(assert (=> d!683258 (= (inv!37141 (tag!4903 r!2363)) (= (mod (str.len (value!139589 (tag!4903 r!2363))) 2) 0))))

(assert (=> b!2309631 d!683258))

(declare-fun d!683260 () Bool)

(declare-fun res!987734 () Bool)

(declare-fun e!1480529 () Bool)

(assert (=> d!683260 (=> (not res!987734) (not e!1480529))))

(assert (=> d!683260 (= res!987734 (semiInverseModEq!1798 (toChars!6090 (transformation!4413 r!2363)) (toValue!6231 (transformation!4413 r!2363))))))

(assert (=> d!683260 (= (inv!37144 (transformation!4413 r!2363)) e!1480529)))

(declare-fun b!2309999 () Bool)

(assert (=> b!2309999 (= e!1480529 (equivClasses!1717 (toChars!6090 (transformation!4413 r!2363)) (toValue!6231 (transformation!4413 r!2363))))))

(assert (= (and d!683260 res!987734) b!2309999))

(declare-fun m!2737253 () Bool)

(assert (=> d!683260 m!2737253))

(declare-fun m!2737255 () Bool)

(assert (=> b!2309999 m!2737255))

(assert (=> b!2309631 d!683260))

(assert (=> b!2309611 d!683248))

(declare-fun d!683262 () Bool)

(assert (=> d!683262 (= (inv!37141 (tag!4903 (rule!6767 (h!32900 tokens!456)))) (= (mod (str.len (value!139589 (tag!4903 (rule!6767 (h!32900 tokens!456))))) 2) 0))))

(assert (=> b!2309612 d!683262))

(declare-fun d!683264 () Bool)

(declare-fun res!987735 () Bool)

(declare-fun e!1480530 () Bool)

(assert (=> d!683264 (=> (not res!987735) (not e!1480530))))

(assert (=> d!683264 (= res!987735 (semiInverseModEq!1798 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456))))))))

(assert (=> d!683264 (= (inv!37144 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) e!1480530)))

(declare-fun b!2310000 () Bool)

(assert (=> b!2310000 (= e!1480530 (equivClasses!1717 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456))))))))

(assert (= (and d!683264 res!987735) b!2310000))

(declare-fun m!2737257 () Bool)

(assert (=> d!683264 m!2737257))

(declare-fun m!2737259 () Bool)

(assert (=> b!2310000 m!2737259))

(assert (=> b!2309612 d!683264))

(declare-fun d!683266 () Bool)

(declare-fun lt!856964 () Int)

(assert (=> d!683266 (= lt!856964 (size!21710 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))

(declare-fun size!21715 (Conc!8974) Int)

(assert (=> d!683266 (= lt!856964 (size!21715 (c!366102 (charsOf!2801 (head!5070 tokens!456)))))))

(assert (=> d!683266 (= (size!21709 (charsOf!2801 (head!5070 tokens!456))) lt!856964)))

(declare-fun bs!458164 () Bool)

(assert (= bs!458164 d!683266))

(assert (=> bs!458164 m!2736917))

(assert (=> bs!458164 m!2736941))

(assert (=> bs!458164 m!2736941))

(declare-fun m!2737261 () Bool)

(assert (=> bs!458164 m!2737261))

(declare-fun m!2737263 () Bool)

(assert (=> bs!458164 m!2737263))

(assert (=> b!2309632 d!683266))

(assert (=> b!2309632 d!683246))

(assert (=> b!2309632 d!683248))

(declare-fun d!683268 () Bool)

(declare-fun lt!856967 () Int)

(assert (=> d!683268 (>= lt!856967 0)))

(declare-fun e!1480533 () Int)

(assert (=> d!683268 (= lt!856967 e!1480533)))

(declare-fun c!366164 () Bool)

(assert (=> d!683268 (= c!366164 ((_ is Nil!27497) otherP!12))))

(assert (=> d!683268 (= (size!21710 otherP!12) lt!856967)))

(declare-fun b!2310005 () Bool)

(assert (=> b!2310005 (= e!1480533 0)))

(declare-fun b!2310006 () Bool)

(assert (=> b!2310006 (= e!1480533 (+ 1 (size!21710 (t!206925 otherP!12))))))

(assert (= (and d!683268 c!366164) b!2310005))

(assert (= (and d!683268 (not c!366164)) b!2310006))

(declare-fun m!2737265 () Bool)

(assert (=> b!2310006 m!2737265))

(assert (=> b!2309632 d!683268))

(declare-fun b!2310007 () Bool)

(declare-fun res!987738 () Bool)

(declare-fun e!1480534 () Bool)

(assert (=> b!2310007 (=> res!987738 e!1480534)))

(assert (=> b!2310007 (= res!987738 (not ((_ is ElementMatch!6761) (regex!4413 otherR!12))))))

(declare-fun e!1480538 () Bool)

(assert (=> b!2310007 (= e!1480538 e!1480534)))

(declare-fun b!2310008 () Bool)

(declare-fun e!1480537 () Bool)

(assert (=> b!2310008 (= e!1480537 (not (= (head!5072 otherP!12) (c!366103 (regex!4413 otherR!12)))))))

(declare-fun b!2310009 () Bool)

(declare-fun lt!856968 () Bool)

(assert (=> b!2310009 (= e!1480538 (not lt!856968))))

(declare-fun b!2310010 () Bool)

(declare-fun res!987743 () Bool)

(declare-fun e!1480535 () Bool)

(assert (=> b!2310010 (=> (not res!987743) (not e!1480535))))

(assert (=> b!2310010 (= res!987743 (isEmpty!15734 (tail!3339 otherP!12)))))

(declare-fun b!2310011 () Bool)

(declare-fun e!1480539 () Bool)

(assert (=> b!2310011 (= e!1480539 e!1480538)))

(declare-fun c!366166 () Bool)

(assert (=> b!2310011 (= c!366166 ((_ is EmptyLang!6761) (regex!4413 otherR!12)))))

(declare-fun b!2310012 () Bool)

(declare-fun e!1480536 () Bool)

(assert (=> b!2310012 (= e!1480536 (matchR!3018 (derivativeStep!1556 (regex!4413 otherR!12) (head!5072 otherP!12)) (tail!3339 otherP!12)))))

(declare-fun b!2310013 () Bool)

(assert (=> b!2310013 (= e!1480536 (nullable!1896 (regex!4413 otherR!12)))))

(declare-fun b!2310014 () Bool)

(declare-fun res!987741 () Bool)

(assert (=> b!2310014 (=> res!987741 e!1480537)))

(assert (=> b!2310014 (= res!987741 (not (isEmpty!15734 (tail!3339 otherP!12))))))

(declare-fun bm!137322 () Bool)

(declare-fun call!137327 () Bool)

(assert (=> bm!137322 (= call!137327 (isEmpty!15734 otherP!12))))

(declare-fun b!2310016 () Bool)

(declare-fun res!987739 () Bool)

(assert (=> b!2310016 (=> (not res!987739) (not e!1480535))))

(assert (=> b!2310016 (= res!987739 (not call!137327))))

(declare-fun b!2310017 () Bool)

(assert (=> b!2310017 (= e!1480539 (= lt!856968 call!137327))))

(declare-fun b!2310018 () Bool)

(assert (=> b!2310018 (= e!1480535 (= (head!5072 otherP!12) (c!366103 (regex!4413 otherR!12))))))

(declare-fun d!683270 () Bool)

(assert (=> d!683270 e!1480539))

(declare-fun c!366165 () Bool)

(assert (=> d!683270 (= c!366165 ((_ is EmptyExpr!6761) (regex!4413 otherR!12)))))

(assert (=> d!683270 (= lt!856968 e!1480536)))

(declare-fun c!366167 () Bool)

(assert (=> d!683270 (= c!366167 (isEmpty!15734 otherP!12))))

(assert (=> d!683270 (validRegex!2558 (regex!4413 otherR!12))))

(assert (=> d!683270 (= (matchR!3018 (regex!4413 otherR!12) otherP!12) lt!856968)))

(declare-fun b!2310015 () Bool)

(declare-fun e!1480540 () Bool)

(assert (=> b!2310015 (= e!1480534 e!1480540)))

(declare-fun res!987742 () Bool)

(assert (=> b!2310015 (=> (not res!987742) (not e!1480540))))

(assert (=> b!2310015 (= res!987742 (not lt!856968))))

(declare-fun b!2310019 () Bool)

(declare-fun res!987740 () Bool)

(assert (=> b!2310019 (=> res!987740 e!1480534)))

(assert (=> b!2310019 (= res!987740 e!1480535)))

(declare-fun res!987736 () Bool)

(assert (=> b!2310019 (=> (not res!987736) (not e!1480535))))

(assert (=> b!2310019 (= res!987736 lt!856968)))

(declare-fun b!2310020 () Bool)

(assert (=> b!2310020 (= e!1480540 e!1480537)))

(declare-fun res!987737 () Bool)

(assert (=> b!2310020 (=> res!987737 e!1480537)))

(assert (=> b!2310020 (= res!987737 call!137327)))

(assert (= (and d!683270 c!366167) b!2310013))

(assert (= (and d!683270 (not c!366167)) b!2310012))

(assert (= (and d!683270 c!366165) b!2310017))

(assert (= (and d!683270 (not c!366165)) b!2310011))

(assert (= (and b!2310011 c!366166) b!2310009))

(assert (= (and b!2310011 (not c!366166)) b!2310007))

(assert (= (and b!2310007 (not res!987738)) b!2310019))

(assert (= (and b!2310019 res!987736) b!2310016))

(assert (= (and b!2310016 res!987739) b!2310010))

(assert (= (and b!2310010 res!987743) b!2310018))

(assert (= (and b!2310019 (not res!987740)) b!2310015))

(assert (= (and b!2310015 res!987742) b!2310020))

(assert (= (and b!2310020 (not res!987737)) b!2310014))

(assert (= (and b!2310014 (not res!987741)) b!2310008))

(assert (= (or b!2310017 b!2310016 b!2310020) bm!137322))

(declare-fun m!2737267 () Bool)

(assert (=> b!2310018 m!2737267))

(declare-fun m!2737269 () Bool)

(assert (=> b!2310010 m!2737269))

(assert (=> b!2310010 m!2737269))

(declare-fun m!2737271 () Bool)

(assert (=> b!2310010 m!2737271))

(declare-fun m!2737273 () Bool)

(assert (=> b!2310013 m!2737273))

(assert (=> b!2310008 m!2737267))

(declare-fun m!2737275 () Bool)

(assert (=> d!683270 m!2737275))

(declare-fun m!2737277 () Bool)

(assert (=> d!683270 m!2737277))

(assert (=> b!2310012 m!2737267))

(assert (=> b!2310012 m!2737267))

(declare-fun m!2737279 () Bool)

(assert (=> b!2310012 m!2737279))

(assert (=> b!2310012 m!2737269))

(assert (=> b!2310012 m!2737279))

(assert (=> b!2310012 m!2737269))

(declare-fun m!2737281 () Bool)

(assert (=> b!2310012 m!2737281))

(assert (=> b!2310014 m!2737269))

(assert (=> b!2310014 m!2737269))

(assert (=> b!2310014 m!2737271))

(assert (=> bm!137322 m!2737275))

(assert (=> bm!137311 d!683270))

(declare-fun b!2310031 () Bool)

(declare-fun e!1480547 () Bool)

(declare-fun inv!17 (TokenValue!4575) Bool)

(assert (=> b!2310031 (= e!1480547 (inv!17 (value!139590 (h!32900 tokens!456))))))

(declare-fun b!2310032 () Bool)

(declare-fun res!987746 () Bool)

(declare-fun e!1480549 () Bool)

(assert (=> b!2310032 (=> res!987746 e!1480549)))

(assert (=> b!2310032 (= res!987746 (not ((_ is IntegerValue!13727) (value!139590 (h!32900 tokens!456)))))))

(assert (=> b!2310032 (= e!1480547 e!1480549)))

(declare-fun b!2310033 () Bool)

(declare-fun inv!15 (TokenValue!4575) Bool)

(assert (=> b!2310033 (= e!1480549 (inv!15 (value!139590 (h!32900 tokens!456))))))

(declare-fun b!2310034 () Bool)

(declare-fun e!1480548 () Bool)

(declare-fun inv!16 (TokenValue!4575) Bool)

(assert (=> b!2310034 (= e!1480548 (inv!16 (value!139590 (h!32900 tokens!456))))))

(declare-fun b!2310035 () Bool)

(assert (=> b!2310035 (= e!1480548 e!1480547)))

(declare-fun c!366172 () Bool)

(assert (=> b!2310035 (= c!366172 ((_ is IntegerValue!13726) (value!139590 (h!32900 tokens!456))))))

(declare-fun d!683272 () Bool)

(declare-fun c!366173 () Bool)

(assert (=> d!683272 (= c!366173 ((_ is IntegerValue!13725) (value!139590 (h!32900 tokens!456))))))

(assert (=> d!683272 (= (inv!21 (value!139590 (h!32900 tokens!456))) e!1480548)))

(assert (= (and d!683272 c!366173) b!2310034))

(assert (= (and d!683272 (not c!366173)) b!2310035))

(assert (= (and b!2310035 c!366172) b!2310031))

(assert (= (and b!2310035 (not c!366172)) b!2310032))

(assert (= (and b!2310032 (not res!987746)) b!2310033))

(declare-fun m!2737283 () Bool)

(assert (=> b!2310031 m!2737283))

(declare-fun m!2737285 () Bool)

(assert (=> b!2310033 m!2737285))

(declare-fun m!2737287 () Bool)

(assert (=> b!2310034 m!2737287))

(assert (=> b!2309624 d!683272))

(declare-fun d!683274 () Bool)

(declare-fun lt!856971 () Int)

(assert (=> d!683274 (>= lt!856971 0)))

(declare-fun e!1480556 () Int)

(assert (=> d!683274 (= lt!856971 e!1480556)))

(declare-fun c!366178 () Bool)

(assert (=> d!683274 (= c!366178 (and ((_ is Cons!27498) rules!1750) (= (h!32899 rules!1750) otherR!12)))))

(assert (=> d!683274 (contains!4803 rules!1750 otherR!12)))

(assert (=> d!683274 (= (getIndex!426 rules!1750 otherR!12) lt!856971)))

(declare-fun b!2310046 () Bool)

(declare-fun e!1480555 () Int)

(assert (=> b!2310046 (= e!1480555 (+ 1 (getIndex!426 (t!206926 rules!1750) otherR!12)))))

(declare-fun b!2310047 () Bool)

(assert (=> b!2310047 (= e!1480555 (- 1))))

(declare-fun b!2310045 () Bool)

(assert (=> b!2310045 (= e!1480556 e!1480555)))

(declare-fun c!366179 () Bool)

(assert (=> b!2310045 (= c!366179 (and ((_ is Cons!27498) rules!1750) (not (= (h!32899 rules!1750) otherR!12))))))

(declare-fun b!2310044 () Bool)

(assert (=> b!2310044 (= e!1480556 0)))

(assert (= (and d!683274 c!366178) b!2310044))

(assert (= (and d!683274 (not c!366178)) b!2310045))

(assert (= (and b!2310045 c!366179) b!2310046))

(assert (= (and b!2310045 (not c!366179)) b!2310047))

(assert (=> d!683274 m!2736913))

(declare-fun m!2737289 () Bool)

(assert (=> b!2310046 m!2737289))

(assert (=> b!2309625 d!683274))

(declare-fun d!683276 () Bool)

(declare-fun lt!856972 () Int)

(assert (=> d!683276 (>= lt!856972 0)))

(declare-fun e!1480558 () Int)

(assert (=> d!683276 (= lt!856972 e!1480558)))

(declare-fun c!366180 () Bool)

(assert (=> d!683276 (= c!366180 (and ((_ is Cons!27498) rules!1750) (= (h!32899 rules!1750) r!2363)))))

(assert (=> d!683276 (contains!4803 rules!1750 r!2363)))

(assert (=> d!683276 (= (getIndex!426 rules!1750 r!2363) lt!856972)))

(declare-fun b!2310050 () Bool)

(declare-fun e!1480557 () Int)

(assert (=> b!2310050 (= e!1480557 (+ 1 (getIndex!426 (t!206926 rules!1750) r!2363)))))

(declare-fun b!2310051 () Bool)

(assert (=> b!2310051 (= e!1480557 (- 1))))

(declare-fun b!2310049 () Bool)

(assert (=> b!2310049 (= e!1480558 e!1480557)))

(declare-fun c!366181 () Bool)

(assert (=> b!2310049 (= c!366181 (and ((_ is Cons!27498) rules!1750) (not (= (h!32899 rules!1750) r!2363))))))

(declare-fun b!2310048 () Bool)

(assert (=> b!2310048 (= e!1480558 0)))

(assert (= (and d!683276 c!366180) b!2310048))

(assert (= (and d!683276 (not c!366180)) b!2310049))

(assert (= (and b!2310049 c!366181) b!2310050))

(assert (= (and b!2310049 (not c!366181)) b!2310051))

(assert (=> d!683276 m!2736935))

(declare-fun m!2737291 () Bool)

(assert (=> b!2310050 m!2737291))

(assert (=> b!2309625 d!683276))

(declare-fun d!683278 () Bool)

(declare-fun res!987751 () Bool)

(declare-fun e!1480561 () Bool)

(assert (=> d!683278 (=> (not res!987751) (not e!1480561))))

(assert (=> d!683278 (= res!987751 (validRegex!2558 (regex!4413 otherR!12)))))

(assert (=> d!683278 (= (ruleValid!1503 thiss!16613 otherR!12) e!1480561)))

(declare-fun b!2310056 () Bool)

(declare-fun res!987752 () Bool)

(assert (=> b!2310056 (=> (not res!987752) (not e!1480561))))

(assert (=> b!2310056 (= res!987752 (not (nullable!1896 (regex!4413 otherR!12))))))

(declare-fun b!2310057 () Bool)

(assert (=> b!2310057 (= e!1480561 (not (= (tag!4903 otherR!12) (String!29980 ""))))))

(assert (= (and d!683278 res!987751) b!2310056))

(assert (= (and b!2310056 res!987752) b!2310057))

(assert (=> d!683278 m!2737277))

(assert (=> b!2310056 m!2737273))

(assert (=> b!2309625 d!683278))

(declare-fun d!683280 () Bool)

(assert (=> d!683280 (ruleValid!1503 thiss!16613 otherR!12)))

(declare-fun lt!856975 () Unit!40423)

(declare-fun choose!13509 (LexerInterface!4010 Rule!8626 List!27592) Unit!40423)

(assert (=> d!683280 (= lt!856975 (choose!13509 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!683280 (contains!4803 rules!1750 otherR!12)))

(assert (=> d!683280 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!908 thiss!16613 otherR!12 rules!1750) lt!856975)))

(declare-fun bs!458165 () Bool)

(assert (= bs!458165 d!683280))

(assert (=> bs!458165 m!2736929))

(declare-fun m!2737293 () Bool)

(assert (=> bs!458165 m!2737293))

(assert (=> bs!458165 m!2736913))

(assert (=> b!2309625 d!683280))

(declare-fun d!683282 () Bool)

(declare-fun res!987753 () Bool)

(declare-fun e!1480562 () Bool)

(assert (=> d!683282 (=> (not res!987753) (not e!1480562))))

(assert (=> d!683282 (= res!987753 (validRegex!2558 (regex!4413 r!2363)))))

(assert (=> d!683282 (= (ruleValid!1503 thiss!16613 r!2363) e!1480562)))

(declare-fun b!2310058 () Bool)

(declare-fun res!987754 () Bool)

(assert (=> b!2310058 (=> (not res!987754) (not e!1480562))))

(assert (=> b!2310058 (= res!987754 (not (nullable!1896 (regex!4413 r!2363))))))

(declare-fun b!2310059 () Bool)

(assert (=> b!2310059 (= e!1480562 (not (= (tag!4903 r!2363) (String!29980 ""))))))

(assert (= (and d!683282 res!987753) b!2310058))

(assert (= (and b!2310058 res!987754) b!2310059))

(assert (=> d!683282 m!2737227))

(assert (=> b!2310058 m!2737223))

(assert (=> b!2309626 d!683282))

(declare-fun d!683284 () Bool)

(assert (=> d!683284 (ruleValid!1503 thiss!16613 r!2363)))

(declare-fun lt!856976 () Unit!40423)

(assert (=> d!683284 (= lt!856976 (choose!13509 thiss!16613 r!2363 rules!1750))))

(assert (=> d!683284 (contains!4803 rules!1750 r!2363)))

(assert (=> d!683284 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!908 thiss!16613 r!2363 rules!1750) lt!856976)))

(declare-fun bs!458166 () Bool)

(assert (= bs!458166 d!683284))

(assert (=> bs!458166 m!2736863))

(declare-fun m!2737295 () Bool)

(assert (=> bs!458166 m!2737295))

(assert (=> bs!458166 m!2736935))

(assert (=> b!2309626 d!683284))

(declare-fun d!683286 () Bool)

(declare-fun lt!856979 () Int)

(assert (=> d!683286 (>= lt!856979 0)))

(declare-fun e!1480565 () Int)

(assert (=> d!683286 (= lt!856979 e!1480565)))

(declare-fun c!366184 () Bool)

(assert (=> d!683286 (= c!366184 ((_ is Nil!27499) tokens!456))))

(assert (=> d!683286 (= (size!21711 tokens!456) lt!856979)))

(declare-fun b!2310064 () Bool)

(assert (=> b!2310064 (= e!1480565 0)))

(declare-fun b!2310065 () Bool)

(assert (=> b!2310065 (= e!1480565 (+ 1 (size!21711 (t!206927 tokens!456))))))

(assert (= (and d!683286 c!366184) b!2310064))

(assert (= (and d!683286 (not c!366184)) b!2310065))

(declare-fun m!2737297 () Bool)

(assert (=> b!2310065 m!2737297))

(assert (=> b!2309627 d!683286))

(declare-fun d!683288 () Bool)

(assert (=> d!683288 (= (isEmpty!15729 tokens!456) ((_ is Nil!27499) tokens!456))))

(assert (=> b!2309618 d!683288))

(assert (=> b!2309620 d!683266))

(assert (=> b!2309620 d!683246))

(assert (=> b!2309620 d!683248))

(declare-fun d!683290 () Bool)

(assert (=> d!683290 (= (inv!37141 (tag!4903 (h!32899 rules!1750))) (= (mod (str.len (value!139589 (tag!4903 (h!32899 rules!1750)))) 2) 0))))

(assert (=> b!2309621 d!683290))

(declare-fun d!683292 () Bool)

(declare-fun res!987755 () Bool)

(declare-fun e!1480566 () Bool)

(assert (=> d!683292 (=> (not res!987755) (not e!1480566))))

(assert (=> d!683292 (= res!987755 (semiInverseModEq!1798 (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toValue!6231 (transformation!4413 (h!32899 rules!1750)))))))

(assert (=> d!683292 (= (inv!37144 (transformation!4413 (h!32899 rules!1750))) e!1480566)))

(declare-fun b!2310066 () Bool)

(assert (=> b!2310066 (= e!1480566 (equivClasses!1717 (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toValue!6231 (transformation!4413 (h!32899 rules!1750)))))))

(assert (= (and d!683292 res!987755) b!2310066))

(declare-fun m!2737299 () Bool)

(assert (=> d!683292 m!2737299))

(declare-fun m!2737301 () Bool)

(assert (=> b!2310066 m!2737301))

(assert (=> b!2309621 d!683292))

(declare-fun b!2310076 () Bool)

(declare-fun res!987767 () Bool)

(declare-fun e!1480575 () Bool)

(assert (=> b!2310076 (=> (not res!987767) (not e!1480575))))

(assert (=> b!2310076 (= res!987767 (= (head!5072 otherP!12) (head!5072 input!1722)))))

(declare-fun b!2310078 () Bool)

(declare-fun e!1480574 () Bool)

(assert (=> b!2310078 (= e!1480574 (>= (size!21710 input!1722) (size!21710 otherP!12)))))

(declare-fun b!2310077 () Bool)

(assert (=> b!2310077 (= e!1480575 (isPrefix!2403 (tail!3339 otherP!12) (tail!3339 input!1722)))))

(declare-fun b!2310075 () Bool)

(declare-fun e!1480573 () Bool)

(assert (=> b!2310075 (= e!1480573 e!1480575)))

(declare-fun res!987766 () Bool)

(assert (=> b!2310075 (=> (not res!987766) (not e!1480575))))

(assert (=> b!2310075 (= res!987766 (not ((_ is Nil!27497) input!1722)))))

(declare-fun d!683294 () Bool)

(assert (=> d!683294 e!1480574))

(declare-fun res!987765 () Bool)

(assert (=> d!683294 (=> res!987765 e!1480574)))

(declare-fun lt!856982 () Bool)

(assert (=> d!683294 (= res!987765 (not lt!856982))))

(assert (=> d!683294 (= lt!856982 e!1480573)))

(declare-fun res!987764 () Bool)

(assert (=> d!683294 (=> res!987764 e!1480573)))

(assert (=> d!683294 (= res!987764 ((_ is Nil!27497) otherP!12))))

(assert (=> d!683294 (= (isPrefix!2403 otherP!12 input!1722) lt!856982)))

(assert (= (and d!683294 (not res!987764)) b!2310075))

(assert (= (and b!2310075 res!987766) b!2310076))

(assert (= (and b!2310076 res!987767) b!2310077))

(assert (= (and d!683294 (not res!987765)) b!2310078))

(assert (=> b!2310076 m!2737267))

(declare-fun m!2737303 () Bool)

(assert (=> b!2310076 m!2737303))

(declare-fun m!2737305 () Bool)

(assert (=> b!2310078 m!2737305))

(assert (=> b!2310078 m!2736885))

(assert (=> b!2310077 m!2737269))

(declare-fun m!2737307 () Bool)

(assert (=> b!2310077 m!2737307))

(assert (=> b!2310077 m!2737269))

(assert (=> b!2310077 m!2737307))

(declare-fun m!2737309 () Bool)

(assert (=> b!2310077 m!2737309))

(assert (=> b!2309642 d!683294))

(declare-fun d!683296 () Bool)

(assert (=> d!683296 (isPrefix!2403 lt!856866 (++!6735 lt!856866 (_2!16227 lt!856871)))))

(declare-fun lt!856985 () Unit!40423)

(declare-fun choose!13510 (List!27591 List!27591) Unit!40423)

(assert (=> d!683296 (= lt!856985 (choose!13510 lt!856866 (_2!16227 lt!856871)))))

(assert (=> d!683296 (= (lemmaConcatTwoListThenFirstIsPrefix!1596 lt!856866 (_2!16227 lt!856871)) lt!856985)))

(declare-fun bs!458167 () Bool)

(assert (= bs!458167 d!683296))

(assert (=> bs!458167 m!2736873))

(assert (=> bs!458167 m!2736873))

(assert (=> bs!458167 m!2736881))

(declare-fun m!2737311 () Bool)

(assert (=> bs!458167 m!2737311))

(assert (=> b!2309623 d!683296))

(declare-fun d!683298 () Bool)

(declare-fun lt!856986 () Int)

(assert (=> d!683298 (>= lt!856986 0)))

(declare-fun e!1480576 () Int)

(assert (=> d!683298 (= lt!856986 e!1480576)))

(declare-fun c!366185 () Bool)

(assert (=> d!683298 (= c!366185 ((_ is Nil!27497) lt!856866))))

(assert (=> d!683298 (= (size!21710 lt!856866) lt!856986)))

(declare-fun b!2310079 () Bool)

(assert (=> b!2310079 (= e!1480576 0)))

(declare-fun b!2310080 () Bool)

(assert (=> b!2310080 (= e!1480576 (+ 1 (size!21710 (t!206925 lt!856866))))))

(assert (= (and d!683298 c!366185) b!2310079))

(assert (= (and d!683298 (not c!366185)) b!2310080))

(declare-fun m!2737313 () Bool)

(assert (=> b!2310080 m!2737313))

(assert (=> b!2309623 d!683298))

(declare-fun b!2310082 () Bool)

(declare-fun res!987771 () Bool)

(declare-fun e!1480579 () Bool)

(assert (=> b!2310082 (=> (not res!987771) (not e!1480579))))

(assert (=> b!2310082 (= res!987771 (= (head!5072 lt!856866) (head!5072 (++!6735 lt!856866 (_2!16227 lt!856871)))))))

(declare-fun b!2310084 () Bool)

(declare-fun e!1480578 () Bool)

(assert (=> b!2310084 (= e!1480578 (>= (size!21710 (++!6735 lt!856866 (_2!16227 lt!856871))) (size!21710 lt!856866)))))

(declare-fun b!2310083 () Bool)

(assert (=> b!2310083 (= e!1480579 (isPrefix!2403 (tail!3339 lt!856866) (tail!3339 (++!6735 lt!856866 (_2!16227 lt!856871)))))))

(declare-fun b!2310081 () Bool)

(declare-fun e!1480577 () Bool)

(assert (=> b!2310081 (= e!1480577 e!1480579)))

(declare-fun res!987770 () Bool)

(assert (=> b!2310081 (=> (not res!987770) (not e!1480579))))

(assert (=> b!2310081 (= res!987770 (not ((_ is Nil!27497) (++!6735 lt!856866 (_2!16227 lt!856871)))))))

(declare-fun d!683300 () Bool)

(assert (=> d!683300 e!1480578))

(declare-fun res!987769 () Bool)

(assert (=> d!683300 (=> res!987769 e!1480578)))

(declare-fun lt!856987 () Bool)

(assert (=> d!683300 (= res!987769 (not lt!856987))))

(assert (=> d!683300 (= lt!856987 e!1480577)))

(declare-fun res!987768 () Bool)

(assert (=> d!683300 (=> res!987768 e!1480577)))

(assert (=> d!683300 (= res!987768 ((_ is Nil!27497) lt!856866))))

(assert (=> d!683300 (= (isPrefix!2403 lt!856866 (++!6735 lt!856866 (_2!16227 lt!856871))) lt!856987)))

(assert (= (and d!683300 (not res!987768)) b!2310081))

(assert (= (and b!2310081 res!987770) b!2310082))

(assert (= (and b!2310082 res!987771) b!2310083))

(assert (= (and d!683300 (not res!987769)) b!2310084))

(declare-fun m!2737315 () Bool)

(assert (=> b!2310082 m!2737315))

(assert (=> b!2310082 m!2736873))

(declare-fun m!2737317 () Bool)

(assert (=> b!2310082 m!2737317))

(assert (=> b!2310084 m!2736873))

(declare-fun m!2737319 () Bool)

(assert (=> b!2310084 m!2737319))

(assert (=> b!2310084 m!2736871))

(declare-fun m!2737321 () Bool)

(assert (=> b!2310083 m!2737321))

(assert (=> b!2310083 m!2736873))

(declare-fun m!2737323 () Bool)

(assert (=> b!2310083 m!2737323))

(assert (=> b!2310083 m!2737321))

(assert (=> b!2310083 m!2737323))

(declare-fun m!2737325 () Bool)

(assert (=> b!2310083 m!2737325))

(assert (=> b!2309623 d!683300))

(declare-fun d!683302 () Bool)

(declare-fun lt!856990 () List!27591)

(assert (=> d!683302 (= (++!6735 lt!856866 lt!856990) input!1722)))

(declare-fun e!1480582 () List!27591)

(assert (=> d!683302 (= lt!856990 e!1480582)))

(declare-fun c!366188 () Bool)

(assert (=> d!683302 (= c!366188 ((_ is Cons!27497) lt!856866))))

(assert (=> d!683302 (>= (size!21710 input!1722) (size!21710 lt!856866))))

(assert (=> d!683302 (= (getSuffix!1182 input!1722 lt!856866) lt!856990)))

(declare-fun b!2310089 () Bool)

(assert (=> b!2310089 (= e!1480582 (getSuffix!1182 (tail!3339 input!1722) (t!206925 lt!856866)))))

(declare-fun b!2310090 () Bool)

(assert (=> b!2310090 (= e!1480582 input!1722)))

(assert (= (and d!683302 c!366188) b!2310089))

(assert (= (and d!683302 (not c!366188)) b!2310090))

(declare-fun m!2737327 () Bool)

(assert (=> d!683302 m!2737327))

(assert (=> d!683302 m!2737305))

(assert (=> d!683302 m!2736871))

(assert (=> b!2310089 m!2737307))

(assert (=> b!2310089 m!2737307))

(declare-fun m!2737329 () Bool)

(assert (=> b!2310089 m!2737329))

(assert (=> b!2309623 d!683302))

(assert (=> b!2309623 d!683268))

(declare-fun b!2310099 () Bool)

(declare-fun e!1480588 () List!27591)

(assert (=> b!2310099 (= e!1480588 (_2!16227 lt!856871))))

(declare-fun b!2310100 () Bool)

(assert (=> b!2310100 (= e!1480588 (Cons!27497 (h!32898 lt!856866) (++!6735 (t!206925 lt!856866) (_2!16227 lt!856871))))))

(declare-fun b!2310101 () Bool)

(declare-fun res!987776 () Bool)

(declare-fun e!1480587 () Bool)

(assert (=> b!2310101 (=> (not res!987776) (not e!1480587))))

(declare-fun lt!856993 () List!27591)

(assert (=> b!2310101 (= res!987776 (= (size!21710 lt!856993) (+ (size!21710 lt!856866) (size!21710 (_2!16227 lt!856871)))))))

(declare-fun d!683304 () Bool)

(assert (=> d!683304 e!1480587))

(declare-fun res!987777 () Bool)

(assert (=> d!683304 (=> (not res!987777) (not e!1480587))))

(declare-fun content!3719 (List!27591) (InoxSet C!13668))

(assert (=> d!683304 (= res!987777 (= (content!3719 lt!856993) ((_ map or) (content!3719 lt!856866) (content!3719 (_2!16227 lt!856871)))))))

(assert (=> d!683304 (= lt!856993 e!1480588)))

(declare-fun c!366191 () Bool)

(assert (=> d!683304 (= c!366191 ((_ is Nil!27497) lt!856866))))

(assert (=> d!683304 (= (++!6735 lt!856866 (_2!16227 lt!856871)) lt!856993)))

(declare-fun b!2310102 () Bool)

(assert (=> b!2310102 (= e!1480587 (or (not (= (_2!16227 lt!856871) Nil!27497)) (= lt!856993 lt!856866)))))

(assert (= (and d!683304 c!366191) b!2310099))

(assert (= (and d!683304 (not c!366191)) b!2310100))

(assert (= (and d!683304 res!987777) b!2310101))

(assert (= (and b!2310101 res!987776) b!2310102))

(declare-fun m!2737331 () Bool)

(assert (=> b!2310100 m!2737331))

(declare-fun m!2737333 () Bool)

(assert (=> b!2310101 m!2737333))

(assert (=> b!2310101 m!2736871))

(declare-fun m!2737335 () Bool)

(assert (=> b!2310101 m!2737335))

(declare-fun m!2737337 () Bool)

(assert (=> d!683304 m!2737337))

(declare-fun m!2737339 () Bool)

(assert (=> d!683304 m!2737339))

(declare-fun m!2737341 () Bool)

(assert (=> d!683304 m!2737341))

(assert (=> b!2309623 d!683304))

(declare-fun d!683306 () Bool)

(assert (=> d!683306 (= (list!10864 (charsOf!2801 (h!32900 tokens!456))) (list!10869 (c!366102 (charsOf!2801 (h!32900 tokens!456)))))))

(declare-fun bs!458168 () Bool)

(assert (= bs!458168 d!683306))

(declare-fun m!2737343 () Bool)

(assert (=> bs!458168 m!2737343))

(assert (=> b!2309623 d!683306))

(declare-fun d!683308 () Bool)

(assert (=> d!683308 (= (_2!16227 lt!856871) lt!856867)))

(declare-fun lt!856996 () Unit!40423)

(declare-fun choose!13511 (List!27591 List!27591 List!27591 List!27591 List!27591) Unit!40423)

(assert (=> d!683308 (= lt!856996 (choose!13511 lt!856866 (_2!16227 lt!856871) lt!856866 lt!856867 input!1722))))

(assert (=> d!683308 (isPrefix!2403 lt!856866 input!1722)))

(assert (=> d!683308 (= (lemmaSamePrefixThenSameSuffix!1084 lt!856866 (_2!16227 lt!856871) lt!856866 lt!856867 input!1722) lt!856996)))

(declare-fun bs!458169 () Bool)

(assert (= bs!458169 d!683308))

(declare-fun m!2737345 () Bool)

(assert (=> bs!458169 m!2737345))

(declare-fun m!2737347 () Bool)

(assert (=> bs!458169 m!2737347))

(assert (=> b!2309623 d!683308))

(declare-fun d!683310 () Bool)

(declare-fun lt!856997 () BalanceConc!17676)

(assert (=> d!683310 (= (list!10864 lt!856997) (originalCharacters!5183 (h!32900 tokens!456)))))

(assert (=> d!683310 (= lt!856997 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456))))))

(assert (=> d!683310 (= (charsOf!2801 (h!32900 tokens!456)) lt!856997)))

(declare-fun b_lambda!73647 () Bool)

(assert (=> (not b_lambda!73647) (not d!683310)))

(assert (=> d!683310 t!206953))

(declare-fun b_and!184793 () Bool)

(assert (= b_and!184785 (and (=> t!206953 result!168880) b_and!184793)))

(assert (=> d!683310 t!206955))

(declare-fun b_and!184795 () Bool)

(assert (= b_and!184787 (and (=> t!206955 result!168884) b_and!184795)))

(assert (=> d!683310 t!206957))

(declare-fun b_and!184797 () Bool)

(assert (= b_and!184789 (and (=> t!206957 result!168886) b_and!184797)))

(assert (=> d!683310 t!206959))

(declare-fun b_and!184799 () Bool)

(assert (= b_and!184791 (and (=> t!206959 result!168888) b_and!184799)))

(declare-fun m!2737349 () Bool)

(assert (=> d!683310 m!2737349))

(assert (=> d!683310 m!2737211))

(assert (=> b!2309623 d!683310))

(declare-fun d!683312 () Bool)

(assert (=> d!683312 (= (get!8291 (maxPrefix!2266 thiss!16613 rules!1750 input!1722)) (v!30522 (maxPrefix!2266 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2309623 d!683312))

(declare-fun b!2310121 () Bool)

(declare-fun e!1480595 () Bool)

(declare-fun e!1480597 () Bool)

(assert (=> b!2310121 (= e!1480595 e!1480597)))

(declare-fun res!987794 () Bool)

(assert (=> b!2310121 (=> (not res!987794) (not e!1480597))))

(declare-fun lt!857012 () Option!5413)

(declare-fun isDefined!4258 (Option!5413) Bool)

(assert (=> b!2310121 (= res!987794 (isDefined!4258 lt!857012))))

(declare-fun b!2310122 () Bool)

(declare-fun e!1480596 () Option!5413)

(declare-fun call!137330 () Option!5413)

(assert (=> b!2310122 (= e!1480596 call!137330)))

(declare-fun b!2310123 () Bool)

(declare-fun res!987793 () Bool)

(assert (=> b!2310123 (=> (not res!987793) (not e!1480597))))

(declare-fun apply!6675 (TokenValueInjection!8690 BalanceConc!17676) TokenValue!4575)

(assert (=> b!2310123 (= res!987793 (= (value!139590 (_1!16227 (get!8291 lt!857012))) (apply!6675 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))) (seqFromList!3117 (originalCharacters!5183 (_1!16227 (get!8291 lt!857012)))))))))

(declare-fun b!2310124 () Bool)

(declare-fun res!987798 () Bool)

(assert (=> b!2310124 (=> (not res!987798) (not e!1480597))))

(assert (=> b!2310124 (= res!987798 (< (size!21710 (_2!16227 (get!8291 lt!857012))) (size!21710 input!1722)))))

(declare-fun b!2310125 () Bool)

(declare-fun res!987795 () Bool)

(assert (=> b!2310125 (=> (not res!987795) (not e!1480597))))

(assert (=> b!2310125 (= res!987795 (= (++!6735 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012)))) (_2!16227 (get!8291 lt!857012))) input!1722))))

(declare-fun d!683314 () Bool)

(assert (=> d!683314 e!1480595))

(declare-fun res!987796 () Bool)

(assert (=> d!683314 (=> res!987796 e!1480595)))

(declare-fun isEmpty!15736 (Option!5413) Bool)

(assert (=> d!683314 (= res!987796 (isEmpty!15736 lt!857012))))

(assert (=> d!683314 (= lt!857012 e!1480596)))

(declare-fun c!366194 () Bool)

(assert (=> d!683314 (= c!366194 (and ((_ is Cons!27498) rules!1750) ((_ is Nil!27498) (t!206926 rules!1750))))))

(declare-fun lt!857011 () Unit!40423)

(declare-fun lt!857009 () Unit!40423)

(assert (=> d!683314 (= lt!857011 lt!857009)))

(assert (=> d!683314 (isPrefix!2403 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1529 (List!27591 List!27591) Unit!40423)

(assert (=> d!683314 (= lt!857009 (lemmaIsPrefixRefl!1529 input!1722 input!1722))))

(declare-fun rulesValidInductive!1567 (LexerInterface!4010 List!27592) Bool)

(assert (=> d!683314 (rulesValidInductive!1567 thiss!16613 rules!1750)))

(assert (=> d!683314 (= (maxPrefix!2266 thiss!16613 rules!1750 input!1722) lt!857012)))

(declare-fun b!2310126 () Bool)

(declare-fun lt!857008 () Option!5413)

(declare-fun lt!857010 () Option!5413)

(assert (=> b!2310126 (= e!1480596 (ite (and ((_ is None!5412) lt!857008) ((_ is None!5412) lt!857010)) None!5412 (ite ((_ is None!5412) lt!857010) lt!857008 (ite ((_ is None!5412) lt!857008) lt!857010 (ite (>= (size!21708 (_1!16227 (v!30522 lt!857008))) (size!21708 (_1!16227 (v!30522 lt!857010)))) lt!857008 lt!857010)))))))

(assert (=> b!2310126 (= lt!857008 call!137330)))

(assert (=> b!2310126 (= lt!857010 (maxPrefix!2266 thiss!16613 (t!206926 rules!1750) input!1722))))

(declare-fun b!2310127 () Bool)

(declare-fun res!987797 () Bool)

(assert (=> b!2310127 (=> (not res!987797) (not e!1480597))))

(assert (=> b!2310127 (= res!987797 (matchR!3018 (regex!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))) (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))))))

(declare-fun b!2310128 () Bool)

(assert (=> b!2310128 (= e!1480597 (contains!4803 rules!1750 (rule!6767 (_1!16227 (get!8291 lt!857012)))))))

(declare-fun b!2310129 () Bool)

(declare-fun res!987792 () Bool)

(assert (=> b!2310129 (=> (not res!987792) (not e!1480597))))

(assert (=> b!2310129 (= res!987792 (= (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012)))) (originalCharacters!5183 (_1!16227 (get!8291 lt!857012)))))))

(declare-fun bm!137325 () Bool)

(declare-fun maxPrefixOneRule!1436 (LexerInterface!4010 Rule!8626 List!27591) Option!5413)

(assert (=> bm!137325 (= call!137330 (maxPrefixOneRule!1436 thiss!16613 (h!32899 rules!1750) input!1722))))

(assert (= (and d!683314 c!366194) b!2310122))

(assert (= (and d!683314 (not c!366194)) b!2310126))

(assert (= (or b!2310122 b!2310126) bm!137325))

(assert (= (and d!683314 (not res!987796)) b!2310121))

(assert (= (and b!2310121 res!987794) b!2310129))

(assert (= (and b!2310129 res!987792) b!2310124))

(assert (= (and b!2310124 res!987798) b!2310125))

(assert (= (and b!2310125 res!987795) b!2310123))

(assert (= (and b!2310123 res!987793) b!2310127))

(assert (= (and b!2310127 res!987797) b!2310128))

(declare-fun m!2737351 () Bool)

(assert (=> b!2310127 m!2737351))

(declare-fun m!2737353 () Bool)

(assert (=> b!2310127 m!2737353))

(assert (=> b!2310127 m!2737353))

(declare-fun m!2737355 () Bool)

(assert (=> b!2310127 m!2737355))

(assert (=> b!2310127 m!2737355))

(declare-fun m!2737357 () Bool)

(assert (=> b!2310127 m!2737357))

(assert (=> b!2310129 m!2737351))

(assert (=> b!2310129 m!2737353))

(assert (=> b!2310129 m!2737353))

(assert (=> b!2310129 m!2737355))

(declare-fun m!2737359 () Bool)

(assert (=> b!2310126 m!2737359))

(assert (=> b!2310124 m!2737351))

(declare-fun m!2737361 () Bool)

(assert (=> b!2310124 m!2737361))

(assert (=> b!2310124 m!2737305))

(declare-fun m!2737363 () Bool)

(assert (=> d!683314 m!2737363))

(declare-fun m!2737365 () Bool)

(assert (=> d!683314 m!2737365))

(declare-fun m!2737367 () Bool)

(assert (=> d!683314 m!2737367))

(declare-fun m!2737369 () Bool)

(assert (=> d!683314 m!2737369))

(assert (=> b!2310125 m!2737351))

(assert (=> b!2310125 m!2737353))

(assert (=> b!2310125 m!2737353))

(assert (=> b!2310125 m!2737355))

(assert (=> b!2310125 m!2737355))

(declare-fun m!2737371 () Bool)

(assert (=> b!2310125 m!2737371))

(assert (=> b!2310123 m!2737351))

(declare-fun m!2737373 () Bool)

(assert (=> b!2310123 m!2737373))

(assert (=> b!2310123 m!2737373))

(declare-fun m!2737375 () Bool)

(assert (=> b!2310123 m!2737375))

(declare-fun m!2737377 () Bool)

(assert (=> bm!137325 m!2737377))

(assert (=> b!2310128 m!2737351))

(declare-fun m!2737379 () Bool)

(assert (=> b!2310128 m!2737379))

(declare-fun m!2737381 () Bool)

(assert (=> b!2310121 m!2737381))

(assert (=> b!2309623 d!683314))

(declare-fun b!2310134 () Bool)

(declare-fun e!1480600 () Bool)

(declare-fun tp!732899 () Bool)

(assert (=> b!2310134 (= e!1480600 (and tp_is_empty!10743 tp!732899))))

(assert (=> b!2309624 (= tp!732823 e!1480600)))

(assert (= (and b!2309624 ((_ is Cons!27497) (originalCharacters!5183 (h!32900 tokens!456)))) b!2310134))

(declare-fun b!2310148 () Bool)

(declare-fun e!1480603 () Bool)

(declare-fun tp!732913 () Bool)

(declare-fun tp!732914 () Bool)

(assert (=> b!2310148 (= e!1480603 (and tp!732913 tp!732914))))

(declare-fun b!2310145 () Bool)

(assert (=> b!2310145 (= e!1480603 tp_is_empty!10743)))

(assert (=> b!2309637 (= tp!732811 e!1480603)))

(declare-fun b!2310146 () Bool)

(declare-fun tp!732910 () Bool)

(declare-fun tp!732912 () Bool)

(assert (=> b!2310146 (= e!1480603 (and tp!732910 tp!732912))))

(declare-fun b!2310147 () Bool)

(declare-fun tp!732911 () Bool)

(assert (=> b!2310147 (= e!1480603 tp!732911)))

(assert (= (and b!2309637 ((_ is ElementMatch!6761) (regex!4413 otherR!12))) b!2310145))

(assert (= (and b!2309637 ((_ is Concat!11337) (regex!4413 otherR!12))) b!2310146))

(assert (= (and b!2309637 ((_ is Star!6761) (regex!4413 otherR!12))) b!2310147))

(assert (= (and b!2309637 ((_ is Union!6761) (regex!4413 otherR!12))) b!2310148))

(declare-fun b!2310162 () Bool)

(declare-fun b_free!69973 () Bool)

(declare-fun b_next!70677 () Bool)

(assert (=> b!2310162 (= b_free!69973 (not b_next!70677))))

(declare-fun tp!732927 () Bool)

(declare-fun b_and!184801 () Bool)

(assert (=> b!2310162 (= tp!732927 b_and!184801)))

(declare-fun b_free!69975 () Bool)

(declare-fun b_next!70679 () Bool)

(assert (=> b!2310162 (= b_free!69975 (not b_next!70679))))

(declare-fun t!206969 () Bool)

(declare-fun tb!138583 () Bool)

(assert (=> (and b!2310162 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) t!206969) tb!138583))

(declare-fun result!168904 () Bool)

(assert (= result!168904 result!168880))

(assert (=> b!2309944 t!206969))

(declare-fun t!206971 () Bool)

(declare-fun tb!138585 () Bool)

(assert (=> (and b!2310162 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456))))) t!206971) tb!138585))

(declare-fun result!168906 () Bool)

(assert (= result!168906 result!168890))

(assert (=> d!683246 t!206971))

(assert (=> d!683310 t!206969))

(declare-fun tp!732928 () Bool)

(declare-fun b_and!184803 () Bool)

(assert (=> b!2310162 (= tp!732928 (and (=> t!206969 result!168904) (=> t!206971 result!168906) b_and!184803))))

(declare-fun e!1480621 () Bool)

(assert (=> b!2310162 (= e!1480621 (and tp!732927 tp!732928))))

(declare-fun e!1480619 () Bool)

(assert (=> b!2309616 (= tp!732817 e!1480619)))

(declare-fun tp!732929 () Bool)

(declare-fun e!1480617 () Bool)

(declare-fun b!2310160 () Bool)

(declare-fun e!1480616 () Bool)

(assert (=> b!2310160 (= e!1480617 (and (inv!21 (value!139590 (h!32900 (t!206927 tokens!456)))) e!1480616 tp!732929))))

(declare-fun tp!732925 () Bool)

(declare-fun b!2310161 () Bool)

(assert (=> b!2310161 (= e!1480616 (and tp!732925 (inv!37141 (tag!4903 (rule!6767 (h!32900 (t!206927 tokens!456))))) (inv!37144 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) e!1480621))))

(declare-fun b!2310159 () Bool)

(declare-fun tp!732926 () Bool)

(assert (=> b!2310159 (= e!1480619 (and (inv!37145 (h!32900 (t!206927 tokens!456))) e!1480617 tp!732926))))

(assert (= b!2310161 b!2310162))

(assert (= b!2310160 b!2310161))

(assert (= b!2310159 b!2310160))

(assert (= (and b!2309616 ((_ is Cons!27499) (t!206927 tokens!456))) b!2310159))

(declare-fun m!2737383 () Bool)

(assert (=> b!2310160 m!2737383))

(declare-fun m!2737385 () Bool)

(assert (=> b!2310161 m!2737385))

(declare-fun m!2737387 () Bool)

(assert (=> b!2310161 m!2737387))

(declare-fun m!2737389 () Bool)

(assert (=> b!2310159 m!2737389))

(declare-fun b!2310163 () Bool)

(declare-fun e!1480622 () Bool)

(declare-fun tp!732930 () Bool)

(assert (=> b!2310163 (= e!1480622 (and tp_is_empty!10743 tp!732930))))

(assert (=> b!2309628 (= tp!732815 e!1480622)))

(assert (= (and b!2309628 ((_ is Cons!27497) (t!206925 input!1722))) b!2310163))

(declare-fun b!2310164 () Bool)

(declare-fun e!1480623 () Bool)

(declare-fun tp!732931 () Bool)

(assert (=> b!2310164 (= e!1480623 (and tp_is_empty!10743 tp!732931))))

(assert (=> b!2309619 (= tp!732821 e!1480623)))

(assert (= (and b!2309619 ((_ is Cons!27497) (t!206925 otherP!12))) b!2310164))

(declare-fun b!2310165 () Bool)

(declare-fun e!1480624 () Bool)

(declare-fun tp!732932 () Bool)

(assert (=> b!2310165 (= e!1480624 (and tp_is_empty!10743 tp!732932))))

(assert (=> b!2309630 (= tp!732810 e!1480624)))

(assert (= (and b!2309630 ((_ is Cons!27497) (t!206925 suffix!886))) b!2310165))

(declare-fun b!2310169 () Bool)

(declare-fun e!1480625 () Bool)

(declare-fun tp!732936 () Bool)

(declare-fun tp!732937 () Bool)

(assert (=> b!2310169 (= e!1480625 (and tp!732936 tp!732937))))

(declare-fun b!2310166 () Bool)

(assert (=> b!2310166 (= e!1480625 tp_is_empty!10743)))

(assert (=> b!2309631 (= tp!732820 e!1480625)))

(declare-fun b!2310167 () Bool)

(declare-fun tp!732933 () Bool)

(declare-fun tp!732935 () Bool)

(assert (=> b!2310167 (= e!1480625 (and tp!732933 tp!732935))))

(declare-fun b!2310168 () Bool)

(declare-fun tp!732934 () Bool)

(assert (=> b!2310168 (= e!1480625 tp!732934)))

(assert (= (and b!2309631 ((_ is ElementMatch!6761) (regex!4413 r!2363))) b!2310166))

(assert (= (and b!2309631 ((_ is Concat!11337) (regex!4413 r!2363))) b!2310167))

(assert (= (and b!2309631 ((_ is Star!6761) (regex!4413 r!2363))) b!2310168))

(assert (= (and b!2309631 ((_ is Union!6761) (regex!4413 r!2363))) b!2310169))

(declare-fun b!2310173 () Bool)

(declare-fun e!1480626 () Bool)

(declare-fun tp!732941 () Bool)

(declare-fun tp!732942 () Bool)

(assert (=> b!2310173 (= e!1480626 (and tp!732941 tp!732942))))

(declare-fun b!2310170 () Bool)

(assert (=> b!2310170 (= e!1480626 tp_is_empty!10743)))

(assert (=> b!2309621 (= tp!732819 e!1480626)))

(declare-fun b!2310171 () Bool)

(declare-fun tp!732938 () Bool)

(declare-fun tp!732940 () Bool)

(assert (=> b!2310171 (= e!1480626 (and tp!732938 tp!732940))))

(declare-fun b!2310172 () Bool)

(declare-fun tp!732939 () Bool)

(assert (=> b!2310172 (= e!1480626 tp!732939)))

(assert (= (and b!2309621 ((_ is ElementMatch!6761) (regex!4413 (h!32899 rules!1750)))) b!2310170))

(assert (= (and b!2309621 ((_ is Concat!11337) (regex!4413 (h!32899 rules!1750)))) b!2310171))

(assert (= (and b!2309621 ((_ is Star!6761) (regex!4413 (h!32899 rules!1750)))) b!2310172))

(assert (= (and b!2309621 ((_ is Union!6761) (regex!4413 (h!32899 rules!1750)))) b!2310173))

(declare-fun b!2310177 () Bool)

(declare-fun e!1480627 () Bool)

(declare-fun tp!732946 () Bool)

(declare-fun tp!732947 () Bool)

(assert (=> b!2310177 (= e!1480627 (and tp!732946 tp!732947))))

(declare-fun b!2310174 () Bool)

(assert (=> b!2310174 (= e!1480627 tp_is_empty!10743)))

(assert (=> b!2309612 (= tp!732825 e!1480627)))

(declare-fun b!2310175 () Bool)

(declare-fun tp!732943 () Bool)

(declare-fun tp!732945 () Bool)

(assert (=> b!2310175 (= e!1480627 (and tp!732943 tp!732945))))

(declare-fun b!2310176 () Bool)

(declare-fun tp!732944 () Bool)

(assert (=> b!2310176 (= e!1480627 tp!732944)))

(assert (= (and b!2309612 ((_ is ElementMatch!6761) (regex!4413 (rule!6767 (h!32900 tokens!456))))) b!2310174))

(assert (= (and b!2309612 ((_ is Concat!11337) (regex!4413 (rule!6767 (h!32900 tokens!456))))) b!2310175))

(assert (= (and b!2309612 ((_ is Star!6761) (regex!4413 (rule!6767 (h!32900 tokens!456))))) b!2310176))

(assert (= (and b!2309612 ((_ is Union!6761) (regex!4413 (rule!6767 (h!32900 tokens!456))))) b!2310177))

(declare-fun b!2310188 () Bool)

(declare-fun b_free!69977 () Bool)

(declare-fun b_next!70681 () Bool)

(assert (=> b!2310188 (= b_free!69977 (not b_next!70681))))

(declare-fun tp!732956 () Bool)

(declare-fun b_and!184805 () Bool)

(assert (=> b!2310188 (= tp!732956 b_and!184805)))

(declare-fun b_free!69979 () Bool)

(declare-fun b_next!70683 () Bool)

(assert (=> b!2310188 (= b_free!69979 (not b_next!70683))))

(declare-fun tb!138587 () Bool)

(declare-fun t!206973 () Bool)

(assert (=> (and b!2310188 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 rules!1750)))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) t!206973) tb!138587))

(declare-fun result!168910 () Bool)

(assert (= result!168910 result!168880))

(assert (=> b!2309944 t!206973))

(declare-fun t!206975 () Bool)

(declare-fun tb!138589 () Bool)

(assert (=> (and b!2310188 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 rules!1750)))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456))))) t!206975) tb!138589))

(declare-fun result!168912 () Bool)

(assert (= result!168912 result!168890))

(assert (=> d!683246 t!206975))

(assert (=> d!683310 t!206973))

(declare-fun tp!732959 () Bool)

(declare-fun b_and!184807 () Bool)

(assert (=> b!2310188 (= tp!732959 (and (=> t!206973 result!168910) (=> t!206975 result!168912) b_and!184807))))

(declare-fun e!1480637 () Bool)

(assert (=> b!2310188 (= e!1480637 (and tp!732956 tp!732959))))

(declare-fun b!2310187 () Bool)

(declare-fun tp!732957 () Bool)

(declare-fun e!1480638 () Bool)

(assert (=> b!2310187 (= e!1480638 (and tp!732957 (inv!37141 (tag!4903 (h!32899 (t!206926 rules!1750)))) (inv!37144 (transformation!4413 (h!32899 (t!206926 rules!1750)))) e!1480637))))

(declare-fun b!2310186 () Bool)

(declare-fun e!1480636 () Bool)

(declare-fun tp!732958 () Bool)

(assert (=> b!2310186 (= e!1480636 (and e!1480638 tp!732958))))

(assert (=> b!2309633 (= tp!732816 e!1480636)))

(assert (= b!2310187 b!2310188))

(assert (= b!2310186 b!2310187))

(assert (= (and b!2309633 ((_ is Cons!27498) (t!206926 rules!1750))) b!2310186))

(declare-fun m!2737391 () Bool)

(assert (=> b!2310187 m!2737391))

(declare-fun m!2737393 () Bool)

(assert (=> b!2310187 m!2737393))

(declare-fun b_lambda!73649 () Bool)

(assert (= b_lambda!73643 (or (and b!2309613 b_free!69959) (and b!2309634 b_free!69951 (= (toChars!6090 (transformation!4413 otherR!12)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) (and b!2309639 b_free!69955 (= (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) (and b!2310162 b_free!69975 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) (and b!2310188 b_free!69979 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 rules!1750)))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) (and b!2309640 b_free!69963 (= (toChars!6090 (transformation!4413 r!2363)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) b_lambda!73649)))

(declare-fun b_lambda!73651 () Bool)

(assert (= b_lambda!73647 (or (and b!2309613 b_free!69959) (and b!2309634 b_free!69951 (= (toChars!6090 (transformation!4413 otherR!12)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) (and b!2309639 b_free!69955 (= (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) (and b!2310162 b_free!69975 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) (and b!2310188 b_free!69979 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 rules!1750)))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) (and b!2309640 b_free!69963 (= (toChars!6090 (transformation!4413 r!2363)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) b_lambda!73651)))

(check-sat (not b_lambda!73645) (not d!683254) (not b_next!70665) (not b_next!70667) (not b!2310175) (not b!2310006) (not b!2310164) (not b!2310168) (not b!2310034) (not d!683270) (not d!683280) (not b!2310080) (not d!683250) (not d!683314) (not b!2310078) b_and!184797 (not b!2310124) (not d!683266) (not b!2309984) (not d!683166) (not b!2310056) (not b!2310172) (not b!2309982) (not b!2310186) (not bm!137322) (not b!2310171) (not b_next!70663) (not b!2310169) (not b!2309996) (not b!2310065) b_and!184807 b_and!184805 (not b!2310176) (not b!2310146) (not d!683296) (not bm!137321) (not b!2309945) (not bm!137325) (not d!683172) (not b!2310148) (not d!683162) (not b_next!70681) (not b!2310125) (not b!2310077) (not b!2310187) (not d!683276) (not b!2310101) (not b!2310008) (not b!2310128) (not b!2310163) (not b_next!70661) (not b!2310129) (not b!2310084) b_and!184729 (not b!2310050) (not b!2310013) (not b!2309950) (not b!2309868) (not b_next!70659) (not b!2310018) (not b!2310160) (not b!2310123) (not b!2310058) (not d!683264) (not b!2310161) (not b!2309986) (not b_next!70677) (not b_next!70653) (not b!2309998) (not b!2309936) b_and!184795 (not d!683274) (not d!683304) (not b!2310012) b_and!184801 (not d!683242) (not b!2310126) b_and!184803 (not b!2310046) (not b!2310014) (not d!683302) (not b!2309990) (not b!2310083) (not b!2309999) (not b_next!70683) (not d!683232) (not d!683244) (not d!683308) (not d!683292) (not b!2310121) (not tb!138567) (not b!2309939) (not d!683240) tp_is_empty!10743 (not b!2310165) (not b!2310031) (not b!2310000) (not b!2310089) (not d!683310) (not b!2310147) (not d!683260) (not b!2310082) (not b!2309870) (not b!2309985) (not b!2310066) (not b_lambda!73651) b_and!184733 (not b!2309944) (not d!683306) (not b!2310010) (not b!2309869) (not d!683246) (not d!683278) b_and!184741 (not d!683282) (not b!2310159) (not b!2310033) (not tb!138575) (not b_next!70655) (not b!2310177) b_and!184799 (not b!2310134) (not b!2309871) (not b!2310076) (not b_lambda!73649) (not b!2309980) (not b!2310127) (not b!2310173) (not b!2310167) (not d!683234) (not b!2310100) (not b_next!70657) b_and!184793 (not b!2309993) (not b_next!70679) (not d!683238) b_and!184737 (not d!683284) (not d!683256))
(check-sat b_and!184797 b_and!184805 (not b_next!70681) (not b_next!70661) b_and!184729 (not b_next!70659) (not b_next!70677) (not b_next!70653) b_and!184795 (not b_next!70683) b_and!184733 b_and!184799 (not b_next!70665) (not b_next!70667) (not b_next!70663) b_and!184807 b_and!184801 b_and!184803 b_and!184741 (not b_next!70655) (not b_next!70657) b_and!184793 (not b_next!70679) b_and!184737)
(get-model)

(declare-fun d!683318 () Bool)

(assert (=> d!683318 true))

(declare-fun order!15323 () Int)

(declare-fun order!15321 () Int)

(declare-fun lambda!86038 () Int)

(declare-fun dynLambda!11962 (Int Int) Int)

(declare-fun dynLambda!11963 (Int Int) Int)

(assert (=> d!683318 (< (dynLambda!11962 order!15321 (toValue!6231 (transformation!4413 (h!32899 rules!1750)))) (dynLambda!11963 order!15323 lambda!86038))))

(declare-fun Forall2!721 (Int) Bool)

(assert (=> d!683318 (= (equivClasses!1717 (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toValue!6231 (transformation!4413 (h!32899 rules!1750)))) (Forall2!721 lambda!86038))))

(declare-fun bs!458170 () Bool)

(assert (= bs!458170 d!683318))

(declare-fun m!2737395 () Bool)

(assert (=> bs!458170 m!2737395))

(assert (=> b!2310066 d!683318))

(declare-fun d!683320 () Bool)

(assert (=> d!683320 (= (inv!37141 (tag!4903 (h!32899 (t!206926 rules!1750)))) (= (mod (str.len (value!139589 (tag!4903 (h!32899 (t!206926 rules!1750))))) 2) 0))))

(assert (=> b!2310187 d!683320))

(declare-fun d!683322 () Bool)

(declare-fun res!987810 () Bool)

(declare-fun e!1480642 () Bool)

(assert (=> d!683322 (=> (not res!987810) (not e!1480642))))

(assert (=> d!683322 (= res!987810 (semiInverseModEq!1798 (toChars!6090 (transformation!4413 (h!32899 (t!206926 rules!1750)))) (toValue!6231 (transformation!4413 (h!32899 (t!206926 rules!1750))))))))

(assert (=> d!683322 (= (inv!37144 (transformation!4413 (h!32899 (t!206926 rules!1750)))) e!1480642)))

(declare-fun b!2310193 () Bool)

(assert (=> b!2310193 (= e!1480642 (equivClasses!1717 (toChars!6090 (transformation!4413 (h!32899 (t!206926 rules!1750)))) (toValue!6231 (transformation!4413 (h!32899 (t!206926 rules!1750))))))))

(assert (= (and d!683322 res!987810) b!2310193))

(declare-fun m!2737397 () Bool)

(assert (=> d!683322 m!2737397))

(declare-fun m!2737399 () Bool)

(assert (=> b!2310193 m!2737399))

(assert (=> b!2310187 d!683322))

(declare-fun d!683324 () Bool)

(declare-fun nullableFct!464 (Regex!6761) Bool)

(assert (=> d!683324 (= (nullable!1896 (regex!4413 r!2363)) (nullableFct!464 (regex!4413 r!2363)))))

(declare-fun bs!458171 () Bool)

(assert (= bs!458171 d!683324))

(declare-fun m!2737401 () Bool)

(assert (=> bs!458171 m!2737401))

(assert (=> b!2309985 d!683324))

(declare-fun b!2310203 () Bool)

(declare-fun e!1480647 () List!27591)

(declare-fun e!1480648 () List!27591)

(assert (=> b!2310203 (= e!1480647 e!1480648)))

(declare-fun c!366200 () Bool)

(assert (=> b!2310203 (= c!366200 ((_ is Leaf!13166) (c!366102 (_2!16228 lt!856865))))))

(declare-fun b!2310202 () Bool)

(assert (=> b!2310202 (= e!1480647 Nil!27497)))

(declare-fun b!2310204 () Bool)

(declare-fun list!10870 (IArray!17953) List!27591)

(assert (=> b!2310204 (= e!1480648 (list!10870 (xs!11916 (c!366102 (_2!16228 lt!856865)))))))

(declare-fun d!683326 () Bool)

(declare-fun c!366199 () Bool)

(assert (=> d!683326 (= c!366199 ((_ is Empty!8974) (c!366102 (_2!16228 lt!856865))))))

(assert (=> d!683326 (= (list!10869 (c!366102 (_2!16228 lt!856865))) e!1480647)))

(declare-fun b!2310205 () Bool)

(assert (=> b!2310205 (= e!1480648 (++!6735 (list!10869 (left!20829 (c!366102 (_2!16228 lt!856865)))) (list!10869 (right!21159 (c!366102 (_2!16228 lt!856865))))))))

(assert (= (and d!683326 c!366199) b!2310202))

(assert (= (and d!683326 (not c!366199)) b!2310203))

(assert (= (and b!2310203 c!366200) b!2310204))

(assert (= (and b!2310203 (not c!366200)) b!2310205))

(declare-fun m!2737403 () Bool)

(assert (=> b!2310204 m!2737403))

(declare-fun m!2737405 () Bool)

(assert (=> b!2310205 m!2737405))

(declare-fun m!2737407 () Bool)

(assert (=> b!2310205 m!2737407))

(assert (=> b!2310205 m!2737405))

(assert (=> b!2310205 m!2737407))

(declare-fun m!2737409 () Bool)

(assert (=> b!2310205 m!2737409))

(assert (=> d!683166 d!683326))

(declare-fun bs!458172 () Bool)

(declare-fun d!683328 () Bool)

(assert (= bs!458172 (and d!683328 d!683318)))

(declare-fun lambda!86039 () Int)

(assert (=> bs!458172 (= (= (toValue!6231 (transformation!4413 otherR!12)) (toValue!6231 (transformation!4413 (h!32899 rules!1750)))) (= lambda!86039 lambda!86038))))

(assert (=> d!683328 true))

(assert (=> d!683328 (< (dynLambda!11962 order!15321 (toValue!6231 (transformation!4413 otherR!12))) (dynLambda!11963 order!15323 lambda!86039))))

(assert (=> d!683328 (= (equivClasses!1717 (toChars!6090 (transformation!4413 otherR!12)) (toValue!6231 (transformation!4413 otherR!12))) (Forall2!721 lambda!86039))))

(declare-fun bs!458173 () Bool)

(assert (= bs!458173 d!683328))

(declare-fun m!2737411 () Bool)

(assert (=> bs!458173 m!2737411))

(assert (=> b!2309939 d!683328))

(declare-fun d!683330 () Bool)

(declare-fun res!987815 () Bool)

(declare-fun e!1480653 () Bool)

(assert (=> d!683330 (=> res!987815 e!1480653)))

(assert (=> d!683330 (= res!987815 ((_ is Nil!27498) rules!1750))))

(assert (=> d!683330 (= (noDuplicateTag!1639 thiss!16613 rules!1750 Nil!27501) e!1480653)))

(declare-fun b!2310210 () Bool)

(declare-fun e!1480654 () Bool)

(assert (=> b!2310210 (= e!1480653 e!1480654)))

(declare-fun res!987816 () Bool)

(assert (=> b!2310210 (=> (not res!987816) (not e!1480654))))

(declare-fun contains!4804 (List!27595 String!29979) Bool)

(assert (=> b!2310210 (= res!987816 (not (contains!4804 Nil!27501 (tag!4903 (h!32899 rules!1750)))))))

(declare-fun b!2310211 () Bool)

(assert (=> b!2310211 (= e!1480654 (noDuplicateTag!1639 thiss!16613 (t!206926 rules!1750) (Cons!27501 (tag!4903 (h!32899 rules!1750)) Nil!27501)))))

(assert (= (and d!683330 (not res!987815)) b!2310210))

(assert (= (and b!2310210 res!987816) b!2310211))

(declare-fun m!2737413 () Bool)

(assert (=> b!2310210 m!2737413))

(declare-fun m!2737415 () Bool)

(assert (=> b!2310211 m!2737415))

(assert (=> b!2309996 d!683330))

(declare-fun d!683332 () Bool)

(assert (=> d!683332 (= (head!5072 otherP!12) (h!32898 otherP!12))))

(assert (=> b!2310018 d!683332))

(declare-fun bs!458174 () Bool)

(declare-fun d!683334 () Bool)

(assert (= bs!458174 (and d!683334 d!683318)))

(declare-fun lambda!86040 () Int)

(assert (=> bs!458174 (= (= (toValue!6231 (transformation!4413 r!2363)) (toValue!6231 (transformation!4413 (h!32899 rules!1750)))) (= lambda!86040 lambda!86038))))

(declare-fun bs!458175 () Bool)

(assert (= bs!458175 (and d!683334 d!683328)))

(assert (=> bs!458175 (= (= (toValue!6231 (transformation!4413 r!2363)) (toValue!6231 (transformation!4413 otherR!12))) (= lambda!86040 lambda!86039))))

(assert (=> d!683334 true))

(assert (=> d!683334 (< (dynLambda!11962 order!15321 (toValue!6231 (transformation!4413 r!2363))) (dynLambda!11963 order!15323 lambda!86040))))

(assert (=> d!683334 (= (equivClasses!1717 (toChars!6090 (transformation!4413 r!2363)) (toValue!6231 (transformation!4413 r!2363))) (Forall2!721 lambda!86040))))

(declare-fun bs!458176 () Bool)

(assert (= bs!458176 d!683334))

(declare-fun m!2737417 () Bool)

(assert (=> bs!458176 m!2737417))

(assert (=> b!2309999 d!683334))

(declare-fun b!2310212 () Bool)

(declare-fun e!1480655 () Bool)

(declare-fun e!1480657 () Bool)

(assert (=> b!2310212 (= e!1480655 e!1480657)))

(declare-fun res!987819 () Bool)

(assert (=> b!2310212 (=> (not res!987819) (not e!1480657))))

(declare-fun lt!857019 () Option!5413)

(assert (=> b!2310212 (= res!987819 (isDefined!4258 lt!857019))))

(declare-fun b!2310213 () Bool)

(declare-fun e!1480656 () Option!5413)

(declare-fun call!137331 () Option!5413)

(assert (=> b!2310213 (= e!1480656 call!137331)))

(declare-fun b!2310214 () Bool)

(declare-fun res!987818 () Bool)

(assert (=> b!2310214 (=> (not res!987818) (not e!1480657))))

(assert (=> b!2310214 (= res!987818 (= (value!139590 (_1!16227 (get!8291 lt!857019))) (apply!6675 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857019)))) (seqFromList!3117 (originalCharacters!5183 (_1!16227 (get!8291 lt!857019)))))))))

(declare-fun b!2310215 () Bool)

(declare-fun res!987823 () Bool)

(assert (=> b!2310215 (=> (not res!987823) (not e!1480657))))

(assert (=> b!2310215 (= res!987823 (< (size!21710 (_2!16227 (get!8291 lt!857019))) (size!21710 input!1722)))))

(declare-fun b!2310216 () Bool)

(declare-fun res!987820 () Bool)

(assert (=> b!2310216 (=> (not res!987820) (not e!1480657))))

(assert (=> b!2310216 (= res!987820 (= (++!6735 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857019)))) (_2!16227 (get!8291 lt!857019))) input!1722))))

(declare-fun d!683336 () Bool)

(assert (=> d!683336 e!1480655))

(declare-fun res!987821 () Bool)

(assert (=> d!683336 (=> res!987821 e!1480655)))

(assert (=> d!683336 (= res!987821 (isEmpty!15736 lt!857019))))

(assert (=> d!683336 (= lt!857019 e!1480656)))

(declare-fun c!366201 () Bool)

(assert (=> d!683336 (= c!366201 (and ((_ is Cons!27498) (t!206926 rules!1750)) ((_ is Nil!27498) (t!206926 (t!206926 rules!1750)))))))

(declare-fun lt!857018 () Unit!40423)

(declare-fun lt!857016 () Unit!40423)

(assert (=> d!683336 (= lt!857018 lt!857016)))

(assert (=> d!683336 (isPrefix!2403 input!1722 input!1722)))

(assert (=> d!683336 (= lt!857016 (lemmaIsPrefixRefl!1529 input!1722 input!1722))))

(assert (=> d!683336 (rulesValidInductive!1567 thiss!16613 (t!206926 rules!1750))))

(assert (=> d!683336 (= (maxPrefix!2266 thiss!16613 (t!206926 rules!1750) input!1722) lt!857019)))

(declare-fun b!2310217 () Bool)

(declare-fun lt!857015 () Option!5413)

(declare-fun lt!857017 () Option!5413)

(assert (=> b!2310217 (= e!1480656 (ite (and ((_ is None!5412) lt!857015) ((_ is None!5412) lt!857017)) None!5412 (ite ((_ is None!5412) lt!857017) lt!857015 (ite ((_ is None!5412) lt!857015) lt!857017 (ite (>= (size!21708 (_1!16227 (v!30522 lt!857015))) (size!21708 (_1!16227 (v!30522 lt!857017)))) lt!857015 lt!857017)))))))

(assert (=> b!2310217 (= lt!857015 call!137331)))

(assert (=> b!2310217 (= lt!857017 (maxPrefix!2266 thiss!16613 (t!206926 (t!206926 rules!1750)) input!1722))))

(declare-fun b!2310218 () Bool)

(declare-fun res!987822 () Bool)

(assert (=> b!2310218 (=> (not res!987822) (not e!1480657))))

(assert (=> b!2310218 (= res!987822 (matchR!3018 (regex!4413 (rule!6767 (_1!16227 (get!8291 lt!857019)))) (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857019))))))))

(declare-fun b!2310219 () Bool)

(assert (=> b!2310219 (= e!1480657 (contains!4803 (t!206926 rules!1750) (rule!6767 (_1!16227 (get!8291 lt!857019)))))))

(declare-fun b!2310220 () Bool)

(declare-fun res!987817 () Bool)

(assert (=> b!2310220 (=> (not res!987817) (not e!1480657))))

(assert (=> b!2310220 (= res!987817 (= (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857019)))) (originalCharacters!5183 (_1!16227 (get!8291 lt!857019)))))))

(declare-fun bm!137326 () Bool)

(assert (=> bm!137326 (= call!137331 (maxPrefixOneRule!1436 thiss!16613 (h!32899 (t!206926 rules!1750)) input!1722))))

(assert (= (and d!683336 c!366201) b!2310213))

(assert (= (and d!683336 (not c!366201)) b!2310217))

(assert (= (or b!2310213 b!2310217) bm!137326))

(assert (= (and d!683336 (not res!987821)) b!2310212))

(assert (= (and b!2310212 res!987819) b!2310220))

(assert (= (and b!2310220 res!987817) b!2310215))

(assert (= (and b!2310215 res!987823) b!2310216))

(assert (= (and b!2310216 res!987820) b!2310214))

(assert (= (and b!2310214 res!987818) b!2310218))

(assert (= (and b!2310218 res!987822) b!2310219))

(declare-fun m!2737419 () Bool)

(assert (=> b!2310218 m!2737419))

(declare-fun m!2737421 () Bool)

(assert (=> b!2310218 m!2737421))

(assert (=> b!2310218 m!2737421))

(declare-fun m!2737423 () Bool)

(assert (=> b!2310218 m!2737423))

(assert (=> b!2310218 m!2737423))

(declare-fun m!2737425 () Bool)

(assert (=> b!2310218 m!2737425))

(assert (=> b!2310220 m!2737419))

(assert (=> b!2310220 m!2737421))

(assert (=> b!2310220 m!2737421))

(assert (=> b!2310220 m!2737423))

(declare-fun m!2737427 () Bool)

(assert (=> b!2310217 m!2737427))

(assert (=> b!2310215 m!2737419))

(declare-fun m!2737429 () Bool)

(assert (=> b!2310215 m!2737429))

(assert (=> b!2310215 m!2737305))

(declare-fun m!2737431 () Bool)

(assert (=> d!683336 m!2737431))

(assert (=> d!683336 m!2737365))

(assert (=> d!683336 m!2737367))

(declare-fun m!2737433 () Bool)

(assert (=> d!683336 m!2737433))

(assert (=> b!2310216 m!2737419))

(assert (=> b!2310216 m!2737421))

(assert (=> b!2310216 m!2737421))

(assert (=> b!2310216 m!2737423))

(assert (=> b!2310216 m!2737423))

(declare-fun m!2737435 () Bool)

(assert (=> b!2310216 m!2737435))

(assert (=> b!2310214 m!2737419))

(declare-fun m!2737437 () Bool)

(assert (=> b!2310214 m!2737437))

(assert (=> b!2310214 m!2737437))

(declare-fun m!2737439 () Bool)

(assert (=> b!2310214 m!2737439))

(declare-fun m!2737441 () Bool)

(assert (=> bm!137326 m!2737441))

(assert (=> b!2310219 m!2737419))

(declare-fun m!2737443 () Bool)

(assert (=> b!2310219 m!2737443))

(declare-fun m!2737445 () Bool)

(assert (=> b!2310212 m!2737445))

(assert (=> b!2310126 d!683336))

(declare-fun d!683338 () Bool)

(assert (=> d!683338 true))

(declare-fun lt!857022 () Bool)

(assert (=> d!683338 (= lt!857022 (rulesValidInductive!1567 thiss!16613 rules!1750))))

(declare-fun lambda!86043 () Int)

(declare-fun forall!5508 (List!27592 Int) Bool)

(assert (=> d!683338 (= lt!857022 (forall!5508 rules!1750 lambda!86043))))

(assert (=> d!683338 (= (rulesValid!1641 thiss!16613 rules!1750) lt!857022)))

(declare-fun bs!458177 () Bool)

(assert (= bs!458177 d!683338))

(assert (=> bs!458177 m!2737369))

(declare-fun m!2737447 () Bool)

(assert (=> bs!458177 m!2737447))

(assert (=> d!683250 d!683338))

(declare-fun bm!137333 () Bool)

(declare-fun call!137340 () Bool)

(declare-fun call!137338 () Bool)

(assert (=> bm!137333 (= call!137340 call!137338)))

(declare-fun b!2310241 () Bool)

(declare-fun e!1480677 () Bool)

(declare-fun e!1480676 () Bool)

(assert (=> b!2310241 (= e!1480677 e!1480676)))

(declare-fun res!987835 () Bool)

(assert (=> b!2310241 (=> (not res!987835) (not e!1480676))))

(assert (=> b!2310241 (= res!987835 call!137340)))

(declare-fun bm!137334 () Bool)

(declare-fun call!137339 () Bool)

(declare-fun c!366206 () Bool)

(assert (=> bm!137334 (= call!137339 (validRegex!2558 (ite c!366206 (regOne!14035 (regex!4413 otherR!12)) (regTwo!14034 (regex!4413 otherR!12)))))))

(declare-fun bm!137335 () Bool)

(declare-fun c!366207 () Bool)

(assert (=> bm!137335 (= call!137338 (validRegex!2558 (ite c!366207 (reg!7090 (regex!4413 otherR!12)) (ite c!366206 (regTwo!14035 (regex!4413 otherR!12)) (regOne!14034 (regex!4413 otherR!12))))))))

(declare-fun b!2310242 () Bool)

(declare-fun e!1480675 () Bool)

(assert (=> b!2310242 (= e!1480675 call!137338)))

(declare-fun b!2310243 () Bool)

(declare-fun e!1480678 () Bool)

(assert (=> b!2310243 (= e!1480678 call!137340)))

(declare-fun d!683340 () Bool)

(declare-fun res!987836 () Bool)

(declare-fun e!1480674 () Bool)

(assert (=> d!683340 (=> res!987836 e!1480674)))

(assert (=> d!683340 (= res!987836 ((_ is ElementMatch!6761) (regex!4413 otherR!12)))))

(assert (=> d!683340 (= (validRegex!2558 (regex!4413 otherR!12)) e!1480674)))

(declare-fun b!2310244 () Bool)

(declare-fun res!987834 () Bool)

(assert (=> b!2310244 (=> res!987834 e!1480677)))

(assert (=> b!2310244 (= res!987834 (not ((_ is Concat!11337) (regex!4413 otherR!12))))))

(declare-fun e!1480672 () Bool)

(assert (=> b!2310244 (= e!1480672 e!1480677)))

(declare-fun b!2310245 () Bool)

(declare-fun res!987837 () Bool)

(assert (=> b!2310245 (=> (not res!987837) (not e!1480678))))

(assert (=> b!2310245 (= res!987837 call!137339)))

(assert (=> b!2310245 (= e!1480672 e!1480678)))

(declare-fun b!2310246 () Bool)

(declare-fun e!1480673 () Bool)

(assert (=> b!2310246 (= e!1480673 e!1480675)))

(declare-fun res!987838 () Bool)

(assert (=> b!2310246 (= res!987838 (not (nullable!1896 (reg!7090 (regex!4413 otherR!12)))))))

(assert (=> b!2310246 (=> (not res!987838) (not e!1480675))))

(declare-fun b!2310247 () Bool)

(assert (=> b!2310247 (= e!1480676 call!137339)))

(declare-fun b!2310248 () Bool)

(assert (=> b!2310248 (= e!1480673 e!1480672)))

(assert (=> b!2310248 (= c!366206 ((_ is Union!6761) (regex!4413 otherR!12)))))

(declare-fun b!2310249 () Bool)

(assert (=> b!2310249 (= e!1480674 e!1480673)))

(assert (=> b!2310249 (= c!366207 ((_ is Star!6761) (regex!4413 otherR!12)))))

(assert (= (and d!683340 (not res!987836)) b!2310249))

(assert (= (and b!2310249 c!366207) b!2310246))

(assert (= (and b!2310249 (not c!366207)) b!2310248))

(assert (= (and b!2310246 res!987838) b!2310242))

(assert (= (and b!2310248 c!366206) b!2310245))

(assert (= (and b!2310248 (not c!366206)) b!2310244))

(assert (= (and b!2310245 res!987837) b!2310243))

(assert (= (and b!2310244 (not res!987834)) b!2310241))

(assert (= (and b!2310241 res!987835) b!2310247))

(assert (= (or b!2310245 b!2310247) bm!137334))

(assert (= (or b!2310243 b!2310241) bm!137333))

(assert (= (or b!2310242 bm!137333) bm!137335))

(declare-fun m!2737449 () Bool)

(assert (=> bm!137334 m!2737449))

(declare-fun m!2737451 () Bool)

(assert (=> bm!137335 m!2737451))

(declare-fun m!2737453 () Bool)

(assert (=> b!2310246 m!2737453))

(assert (=> d!683278 d!683340))

(assert (=> d!683280 d!683278))

(declare-fun d!683342 () Bool)

(assert (=> d!683342 (ruleValid!1503 thiss!16613 otherR!12)))

(assert (=> d!683342 true))

(declare-fun _$65!1194 () Unit!40423)

(assert (=> d!683342 (= (choose!13509 thiss!16613 otherR!12 rules!1750) _$65!1194)))

(declare-fun bs!458178 () Bool)

(assert (= bs!458178 d!683342))

(assert (=> bs!458178 m!2736929))

(assert (=> d!683280 d!683342))

(assert (=> d!683280 d!683234))

(declare-fun d!683344 () Bool)

(declare-fun lt!857023 () Int)

(assert (=> d!683344 (>= lt!857023 0)))

(declare-fun e!1480679 () Int)

(assert (=> d!683344 (= lt!857023 e!1480679)))

(declare-fun c!366208 () Bool)

(assert (=> d!683344 (= c!366208 ((_ is Nil!27497) (++!6735 lt!856866 (_2!16227 lt!856871))))))

(assert (=> d!683344 (= (size!21710 (++!6735 lt!856866 (_2!16227 lt!856871))) lt!857023)))

(declare-fun b!2310250 () Bool)

(assert (=> b!2310250 (= e!1480679 0)))

(declare-fun b!2310251 () Bool)

(assert (=> b!2310251 (= e!1480679 (+ 1 (size!21710 (t!206925 (++!6735 lt!856866 (_2!16227 lt!856871))))))))

(assert (= (and d!683344 c!366208) b!2310250))

(assert (= (and d!683344 (not c!366208)) b!2310251))

(declare-fun m!2737455 () Bool)

(assert (=> b!2310251 m!2737455))

(assert (=> b!2310084 d!683344))

(assert (=> b!2310084 d!683298))

(declare-fun d!683346 () Bool)

(assert (=> d!683346 (= (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456)))) (h!32898 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))

(assert (=> b!2309990 d!683346))

(assert (=> d!683284 d!683282))

(declare-fun d!683348 () Bool)

(assert (=> d!683348 (ruleValid!1503 thiss!16613 r!2363)))

(assert (=> d!683348 true))

(declare-fun _$65!1195 () Unit!40423)

(assert (=> d!683348 (= (choose!13509 thiss!16613 r!2363 rules!1750) _$65!1195)))

(declare-fun bs!458179 () Bool)

(assert (= bs!458179 d!683348))

(assert (=> bs!458179 m!2736863))

(assert (=> d!683284 d!683348))

(assert (=> d!683284 d!683254))

(declare-fun d!683350 () Bool)

(assert (=> d!683350 true))

(declare-fun lambda!86049 () Int)

(declare-fun order!15325 () Int)

(declare-fun order!15327 () Int)

(declare-fun dynLambda!11964 (Int Int) Int)

(declare-fun dynLambda!11965 (Int Int) Int)

(assert (=> d!683350 (< (dynLambda!11964 order!15325 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) (dynLambda!11965 order!15327 lambda!86049))))

(assert (=> d!683350 true))

(assert (=> d!683350 (< (dynLambda!11962 order!15321 (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) (dynLambda!11965 order!15327 lambda!86049))))

(declare-fun Forall!1104 (Int) Bool)

(assert (=> d!683350 (= (semiInverseModEq!1798 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) (Forall!1104 lambda!86049))))

(declare-fun bs!458181 () Bool)

(assert (= bs!458181 d!683350))

(declare-fun m!2737459 () Bool)

(assert (=> bs!458181 m!2737459))

(assert (=> d!683264 d!683350))

(declare-fun b!2310263 () Bool)

(declare-fun e!1480683 () List!27591)

(declare-fun e!1480684 () List!27591)

(assert (=> b!2310263 (= e!1480683 e!1480684)))

(declare-fun c!366210 () Bool)

(assert (=> b!2310263 (= c!366210 ((_ is Leaf!13166) (c!366102 (charsOf!2801 (head!5070 tokens!456)))))))

(declare-fun b!2310262 () Bool)

(assert (=> b!2310262 (= e!1480683 Nil!27497)))

(declare-fun b!2310264 () Bool)

(assert (=> b!2310264 (= e!1480684 (list!10870 (xs!11916 (c!366102 (charsOf!2801 (head!5070 tokens!456))))))))

(declare-fun d!683356 () Bool)

(declare-fun c!366209 () Bool)

(assert (=> d!683356 (= c!366209 ((_ is Empty!8974) (c!366102 (charsOf!2801 (head!5070 tokens!456)))))))

(assert (=> d!683356 (= (list!10869 (c!366102 (charsOf!2801 (head!5070 tokens!456)))) e!1480683)))

(declare-fun b!2310265 () Bool)

(assert (=> b!2310265 (= e!1480684 (++!6735 (list!10869 (left!20829 (c!366102 (charsOf!2801 (head!5070 tokens!456))))) (list!10869 (right!21159 (c!366102 (charsOf!2801 (head!5070 tokens!456)))))))))

(assert (= (and d!683356 c!366209) b!2310262))

(assert (= (and d!683356 (not c!366209)) b!2310263))

(assert (= (and b!2310263 c!366210) b!2310264))

(assert (= (and b!2310263 (not c!366210)) b!2310265))

(declare-fun m!2737463 () Bool)

(assert (=> b!2310264 m!2737463))

(declare-fun m!2737465 () Bool)

(assert (=> b!2310265 m!2737465))

(declare-fun m!2737467 () Bool)

(assert (=> b!2310265 m!2737467))

(assert (=> b!2310265 m!2737465))

(assert (=> b!2310265 m!2737467))

(declare-fun m!2737469 () Bool)

(assert (=> b!2310265 m!2737469))

(assert (=> d!683244 d!683356))

(declare-fun d!683360 () Bool)

(assert (=> d!683360 (= (isEmpty!15734 (originalCharacters!5183 (h!32900 tokens!456))) ((_ is Nil!27497) (originalCharacters!5183 (h!32900 tokens!456))))))

(assert (=> d!683240 d!683360))

(declare-fun d!683362 () Bool)

(declare-fun lt!857026 () Int)

(assert (=> d!683362 (>= lt!857026 0)))

(declare-fun e!1480685 () Int)

(assert (=> d!683362 (= lt!857026 e!1480685)))

(declare-fun c!366211 () Bool)

(assert (=> d!683362 (= c!366211 ((_ is Nil!27497) (_2!16227 (get!8291 lt!857012))))))

(assert (=> d!683362 (= (size!21710 (_2!16227 (get!8291 lt!857012))) lt!857026)))

(declare-fun b!2310266 () Bool)

(assert (=> b!2310266 (= e!1480685 0)))

(declare-fun b!2310267 () Bool)

(assert (=> b!2310267 (= e!1480685 (+ 1 (size!21710 (t!206925 (_2!16227 (get!8291 lt!857012))))))))

(assert (= (and d!683362 c!366211) b!2310266))

(assert (= (and d!683362 (not c!366211)) b!2310267))

(declare-fun m!2737471 () Bool)

(assert (=> b!2310267 m!2737471))

(assert (=> b!2310124 d!683362))

(declare-fun d!683364 () Bool)

(assert (=> d!683364 (= (get!8291 lt!857012) (v!30522 lt!857012))))

(assert (=> b!2310124 d!683364))

(declare-fun d!683366 () Bool)

(declare-fun lt!857027 () Int)

(assert (=> d!683366 (>= lt!857027 0)))

(declare-fun e!1480686 () Int)

(assert (=> d!683366 (= lt!857027 e!1480686)))

(declare-fun c!366212 () Bool)

(assert (=> d!683366 (= c!366212 ((_ is Nil!27497) input!1722))))

(assert (=> d!683366 (= (size!21710 input!1722) lt!857027)))

(declare-fun b!2310268 () Bool)

(assert (=> b!2310268 (= e!1480686 0)))

(declare-fun b!2310269 () Bool)

(assert (=> b!2310269 (= e!1480686 (+ 1 (size!21710 (t!206925 input!1722))))))

(assert (= (and d!683366 c!366212) b!2310268))

(assert (= (and d!683366 (not c!366212)) b!2310269))

(declare-fun m!2737473 () Bool)

(assert (=> b!2310269 m!2737473))

(assert (=> b!2310124 d!683366))

(declare-fun b!2310271 () Bool)

(declare-fun res!987846 () Bool)

(declare-fun e!1480689 () Bool)

(assert (=> b!2310271 (=> (not res!987846) (not e!1480689))))

(assert (=> b!2310271 (= res!987846 (= (head!5072 (tail!3339 otherP!12)) (head!5072 (tail!3339 input!1722))))))

(declare-fun b!2310273 () Bool)

(declare-fun e!1480688 () Bool)

(assert (=> b!2310273 (= e!1480688 (>= (size!21710 (tail!3339 input!1722)) (size!21710 (tail!3339 otherP!12))))))

(declare-fun b!2310272 () Bool)

(assert (=> b!2310272 (= e!1480689 (isPrefix!2403 (tail!3339 (tail!3339 otherP!12)) (tail!3339 (tail!3339 input!1722))))))

(declare-fun b!2310270 () Bool)

(declare-fun e!1480687 () Bool)

(assert (=> b!2310270 (= e!1480687 e!1480689)))

(declare-fun res!987845 () Bool)

(assert (=> b!2310270 (=> (not res!987845) (not e!1480689))))

(assert (=> b!2310270 (= res!987845 (not ((_ is Nil!27497) (tail!3339 input!1722))))))

(declare-fun d!683370 () Bool)

(assert (=> d!683370 e!1480688))

(declare-fun res!987844 () Bool)

(assert (=> d!683370 (=> res!987844 e!1480688)))

(declare-fun lt!857028 () Bool)

(assert (=> d!683370 (= res!987844 (not lt!857028))))

(assert (=> d!683370 (= lt!857028 e!1480687)))

(declare-fun res!987843 () Bool)

(assert (=> d!683370 (=> res!987843 e!1480687)))

(assert (=> d!683370 (= res!987843 ((_ is Nil!27497) (tail!3339 otherP!12)))))

(assert (=> d!683370 (= (isPrefix!2403 (tail!3339 otherP!12) (tail!3339 input!1722)) lt!857028)))

(assert (= (and d!683370 (not res!987843)) b!2310270))

(assert (= (and b!2310270 res!987845) b!2310271))

(assert (= (and b!2310271 res!987846) b!2310272))

(assert (= (and d!683370 (not res!987844)) b!2310273))

(assert (=> b!2310271 m!2737269))

(declare-fun m!2737475 () Bool)

(assert (=> b!2310271 m!2737475))

(assert (=> b!2310271 m!2737307))

(declare-fun m!2737477 () Bool)

(assert (=> b!2310271 m!2737477))

(assert (=> b!2310273 m!2737307))

(declare-fun m!2737479 () Bool)

(assert (=> b!2310273 m!2737479))

(assert (=> b!2310273 m!2737269))

(declare-fun m!2737481 () Bool)

(assert (=> b!2310273 m!2737481))

(assert (=> b!2310272 m!2737269))

(declare-fun m!2737483 () Bool)

(assert (=> b!2310272 m!2737483))

(assert (=> b!2310272 m!2737307))

(declare-fun m!2737485 () Bool)

(assert (=> b!2310272 m!2737485))

(assert (=> b!2310272 m!2737483))

(assert (=> b!2310272 m!2737485))

(declare-fun m!2737487 () Bool)

(assert (=> b!2310272 m!2737487))

(assert (=> b!2310077 d!683370))

(declare-fun d!683374 () Bool)

(assert (=> d!683374 (= (tail!3339 otherP!12) (t!206925 otherP!12))))

(assert (=> b!2310077 d!683374))

(declare-fun d!683376 () Bool)

(assert (=> d!683376 (= (tail!3339 input!1722) (t!206925 input!1722))))

(assert (=> b!2310077 d!683376))

(declare-fun d!683378 () Bool)

(assert (=> d!683378 (= (head!5072 lt!856866) (h!32898 lt!856866))))

(assert (=> b!2310082 d!683378))

(declare-fun d!683380 () Bool)

(assert (=> d!683380 (= (head!5072 (++!6735 lt!856866 (_2!16227 lt!856871))) (h!32898 (++!6735 lt!856866 (_2!16227 lt!856871))))))

(assert (=> b!2310082 d!683380))

(declare-fun d!683384 () Bool)

(assert (=> d!683384 (= (isEmpty!15734 (list!10864 (charsOf!2801 (head!5070 tokens!456)))) ((_ is Nil!27497) (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))

(assert (=> d!683242 d!683384))

(declare-fun bm!137336 () Bool)

(declare-fun call!137343 () Bool)

(declare-fun call!137341 () Bool)

(assert (=> bm!137336 (= call!137343 call!137341)))

(declare-fun b!2310280 () Bool)

(declare-fun e!1480698 () Bool)

(declare-fun e!1480697 () Bool)

(assert (=> b!2310280 (= e!1480698 e!1480697)))

(declare-fun res!987850 () Bool)

(assert (=> b!2310280 (=> (not res!987850) (not e!1480697))))

(assert (=> b!2310280 (= res!987850 call!137343)))

(declare-fun bm!137337 () Bool)

(declare-fun call!137342 () Bool)

(declare-fun c!366215 () Bool)

(assert (=> bm!137337 (= call!137342 (validRegex!2558 (ite c!366215 (regOne!14035 (regex!4413 r!2363)) (regTwo!14034 (regex!4413 r!2363)))))))

(declare-fun bm!137338 () Bool)

(declare-fun c!366216 () Bool)

(assert (=> bm!137338 (= call!137341 (validRegex!2558 (ite c!366216 (reg!7090 (regex!4413 r!2363)) (ite c!366215 (regTwo!14035 (regex!4413 r!2363)) (regOne!14034 (regex!4413 r!2363))))))))

(declare-fun b!2310281 () Bool)

(declare-fun e!1480696 () Bool)

(assert (=> b!2310281 (= e!1480696 call!137341)))

(declare-fun b!2310282 () Bool)

(declare-fun e!1480699 () Bool)

(assert (=> b!2310282 (= e!1480699 call!137343)))

(declare-fun d!683386 () Bool)

(declare-fun res!987851 () Bool)

(declare-fun e!1480695 () Bool)

(assert (=> d!683386 (=> res!987851 e!1480695)))

(assert (=> d!683386 (= res!987851 ((_ is ElementMatch!6761) (regex!4413 r!2363)))))

(assert (=> d!683386 (= (validRegex!2558 (regex!4413 r!2363)) e!1480695)))

(declare-fun b!2310283 () Bool)

(declare-fun res!987849 () Bool)

(assert (=> b!2310283 (=> res!987849 e!1480698)))

(assert (=> b!2310283 (= res!987849 (not ((_ is Concat!11337) (regex!4413 r!2363))))))

(declare-fun e!1480693 () Bool)

(assert (=> b!2310283 (= e!1480693 e!1480698)))

(declare-fun b!2310284 () Bool)

(declare-fun res!987852 () Bool)

(assert (=> b!2310284 (=> (not res!987852) (not e!1480699))))

(assert (=> b!2310284 (= res!987852 call!137342)))

(assert (=> b!2310284 (= e!1480693 e!1480699)))

(declare-fun b!2310285 () Bool)

(declare-fun e!1480694 () Bool)

(assert (=> b!2310285 (= e!1480694 e!1480696)))

(declare-fun res!987853 () Bool)

(assert (=> b!2310285 (= res!987853 (not (nullable!1896 (reg!7090 (regex!4413 r!2363)))))))

(assert (=> b!2310285 (=> (not res!987853) (not e!1480696))))

(declare-fun b!2310286 () Bool)

(assert (=> b!2310286 (= e!1480697 call!137342)))

(declare-fun b!2310287 () Bool)

(assert (=> b!2310287 (= e!1480694 e!1480693)))

(assert (=> b!2310287 (= c!366215 ((_ is Union!6761) (regex!4413 r!2363)))))

(declare-fun b!2310288 () Bool)

(assert (=> b!2310288 (= e!1480695 e!1480694)))

(assert (=> b!2310288 (= c!366216 ((_ is Star!6761) (regex!4413 r!2363)))))

(assert (= (and d!683386 (not res!987851)) b!2310288))

(assert (= (and b!2310288 c!366216) b!2310285))

(assert (= (and b!2310288 (not c!366216)) b!2310287))

(assert (= (and b!2310285 res!987853) b!2310281))

(assert (= (and b!2310287 c!366215) b!2310284))

(assert (= (and b!2310287 (not c!366215)) b!2310283))

(assert (= (and b!2310284 res!987852) b!2310282))

(assert (= (and b!2310283 (not res!987849)) b!2310280))

(assert (= (and b!2310280 res!987850) b!2310286))

(assert (= (or b!2310284 b!2310286) bm!137337))

(assert (= (or b!2310282 b!2310280) bm!137336))

(assert (= (or b!2310281 bm!137336) bm!137338))

(declare-fun m!2737499 () Bool)

(assert (=> bm!137337 m!2737499))

(declare-fun m!2737501 () Bool)

(assert (=> bm!137338 m!2737501))

(declare-fun m!2737503 () Bool)

(assert (=> b!2310285 m!2737503))

(assert (=> d!683242 d!683386))

(declare-fun d!683390 () Bool)

(declare-fun lt!857031 () Int)

(assert (=> d!683390 (>= lt!857031 0)))

(declare-fun e!1480700 () Int)

(assert (=> d!683390 (= lt!857031 e!1480700)))

(declare-fun c!366217 () Bool)

(assert (=> d!683390 (= c!366217 ((_ is Nil!27497) (originalCharacters!5183 (h!32900 tokens!456))))))

(assert (=> d!683390 (= (size!21710 (originalCharacters!5183 (h!32900 tokens!456))) lt!857031)))

(declare-fun b!2310289 () Bool)

(assert (=> b!2310289 (= e!1480700 0)))

(declare-fun b!2310290 () Bool)

(assert (=> b!2310290 (= e!1480700 (+ 1 (size!21710 (t!206925 (originalCharacters!5183 (h!32900 tokens!456))))))))

(assert (= (and d!683390 c!366217) b!2310289))

(assert (= (and d!683390 (not c!366217)) b!2310290))

(declare-fun m!2737505 () Bool)

(assert (=> b!2310290 m!2737505))

(assert (=> b!2309945 d!683390))

(assert (=> bm!137321 d!683384))

(declare-fun d!683392 () Bool)

(declare-fun lt!857032 () Int)

(assert (=> d!683392 (>= lt!857032 0)))

(declare-fun e!1480701 () Int)

(assert (=> d!683392 (= lt!857032 e!1480701)))

(declare-fun c!366218 () Bool)

(assert (=> d!683392 (= c!366218 ((_ is Nil!27497) (t!206925 lt!856866)))))

(assert (=> d!683392 (= (size!21710 (t!206925 lt!856866)) lt!857032)))

(declare-fun b!2310291 () Bool)

(assert (=> b!2310291 (= e!1480701 0)))

(declare-fun b!2310292 () Bool)

(assert (=> b!2310292 (= e!1480701 (+ 1 (size!21710 (t!206925 (t!206925 lt!856866)))))))

(assert (= (and d!683392 c!366218) b!2310291))

(assert (= (and d!683392 (not c!366218)) b!2310292))

(declare-fun m!2737507 () Bool)

(assert (=> b!2310292 m!2737507))

(assert (=> b!2310080 d!683392))

(declare-fun d!683394 () Bool)

(assert (=> d!683394 (= (list!10864 lt!856957) (list!10869 (c!366102 lt!856957)))))

(declare-fun bs!458184 () Bool)

(assert (= bs!458184 d!683394))

(declare-fun m!2737509 () Bool)

(assert (=> bs!458184 m!2737509))

(assert (=> d!683246 d!683394))

(declare-fun d!683396 () Bool)

(declare-fun lt!857033 () Int)

(assert (=> d!683396 (>= lt!857033 0)))

(declare-fun e!1480703 () Int)

(assert (=> d!683396 (= lt!857033 e!1480703)))

(declare-fun c!366219 () Bool)

(assert (=> d!683396 (= c!366219 (and ((_ is Cons!27498) (t!206926 rules!1750)) (= (h!32899 (t!206926 rules!1750)) otherR!12)))))

(assert (=> d!683396 (contains!4803 (t!206926 rules!1750) otherR!12)))

(assert (=> d!683396 (= (getIndex!426 (t!206926 rules!1750) otherR!12) lt!857033)))

(declare-fun b!2310295 () Bool)

(declare-fun e!1480702 () Int)

(assert (=> b!2310295 (= e!1480702 (+ 1 (getIndex!426 (t!206926 (t!206926 rules!1750)) otherR!12)))))

(declare-fun b!2310296 () Bool)

(assert (=> b!2310296 (= e!1480702 (- 1))))

(declare-fun b!2310294 () Bool)

(assert (=> b!2310294 (= e!1480703 e!1480702)))

(declare-fun c!366220 () Bool)

(assert (=> b!2310294 (= c!366220 (and ((_ is Cons!27498) (t!206926 rules!1750)) (not (= (h!32899 (t!206926 rules!1750)) otherR!12))))))

(declare-fun b!2310293 () Bool)

(assert (=> b!2310293 (= e!1480703 0)))

(assert (= (and d!683396 c!366219) b!2310293))

(assert (= (and d!683396 (not c!366219)) b!2310294))

(assert (= (and b!2310294 c!366220) b!2310295))

(assert (= (and b!2310294 (not c!366220)) b!2310296))

(assert (=> d!683396 m!2737199))

(declare-fun m!2737511 () Bool)

(assert (=> b!2310295 m!2737511))

(assert (=> b!2310046 d!683396))

(declare-fun d!683398 () Bool)

(declare-fun isBalanced!2695 (Conc!8974) Bool)

(assert (=> d!683398 (= (inv!37149 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456)))) (isBalanced!2695 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456))))))))

(declare-fun bs!458185 () Bool)

(assert (= bs!458185 d!683398))

(declare-fun m!2737513 () Bool)

(assert (=> bs!458185 m!2737513))

(assert (=> tb!138567 d!683398))

(declare-fun d!683400 () Bool)

(declare-fun c!366224 () Bool)

(assert (=> d!683400 (= c!366224 ((_ is Nil!27498) rules!1750))))

(declare-fun e!1480709 () (InoxSet Rule!8626))

(assert (=> d!683400 (= (content!3717 rules!1750) e!1480709)))

(declare-fun b!2310304 () Bool)

(assert (=> b!2310304 (= e!1480709 ((as const (Array Rule!8626 Bool)) false))))

(declare-fun b!2310305 () Bool)

(assert (=> b!2310305 (= e!1480709 ((_ map or) (store ((as const (Array Rule!8626 Bool)) false) (h!32899 rules!1750) true) (content!3717 (t!206926 rules!1750))))))

(assert (= (and d!683400 c!366224) b!2310304))

(assert (= (and d!683400 (not c!366224)) b!2310305))

(declare-fun m!2737521 () Bool)

(assert (=> b!2310305 m!2737521))

(declare-fun m!2737523 () Bool)

(assert (=> b!2310305 m!2737523))

(assert (=> d!683254 d!683400))

(declare-fun d!683404 () Bool)

(assert (=> d!683404 (= (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012)))) (list!10869 (c!366102 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))))))

(declare-fun bs!458186 () Bool)

(assert (= bs!458186 d!683404))

(declare-fun m!2737525 () Bool)

(assert (=> bs!458186 m!2737525))

(assert (=> b!2310129 d!683404))

(declare-fun d!683406 () Bool)

(declare-fun lt!857037 () BalanceConc!17676)

(assert (=> d!683406 (= (list!10864 lt!857037) (originalCharacters!5183 (_1!16227 (get!8291 lt!857012))))))

(assert (=> d!683406 (= lt!857037 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012))))) (value!139590 (_1!16227 (get!8291 lt!857012)))))))

(assert (=> d!683406 (= (charsOf!2801 (_1!16227 (get!8291 lt!857012))) lt!857037)))

(declare-fun b_lambda!73653 () Bool)

(assert (=> (not b_lambda!73653) (not d!683406)))

(declare-fun tb!138591 () Bool)

(declare-fun t!206980 () Bool)

(assert (=> (and b!2310162 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (toChars!6090 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!206980) tb!138591))

(declare-fun b!2310306 () Bool)

(declare-fun e!1480710 () Bool)

(declare-fun tp!732960 () Bool)

(assert (=> b!2310306 (= e!1480710 (and (inv!37148 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012))))) (value!139590 (_1!16227 (get!8291 lt!857012)))))) tp!732960))))

(declare-fun result!168914 () Bool)

(assert (=> tb!138591 (= result!168914 (and (inv!37149 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012))))) (value!139590 (_1!16227 (get!8291 lt!857012))))) e!1480710))))

(assert (= tb!138591 b!2310306))

(declare-fun m!2737531 () Bool)

(assert (=> b!2310306 m!2737531))

(declare-fun m!2737533 () Bool)

(assert (=> tb!138591 m!2737533))

(assert (=> d!683406 t!206980))

(declare-fun b_and!184809 () Bool)

(assert (= b_and!184803 (and (=> t!206980 result!168914) b_and!184809)))

(declare-fun tb!138593 () Bool)

(declare-fun t!206982 () Bool)

(assert (=> (and b!2309639 (= (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toChars!6090 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!206982) tb!138593))

(declare-fun result!168916 () Bool)

(assert (= result!168916 result!168914))

(assert (=> d!683406 t!206982))

(declare-fun b_and!184811 () Bool)

(assert (= b_and!184795 (and (=> t!206982 result!168916) b_and!184811)))

(declare-fun t!206984 () Bool)

(declare-fun tb!138595 () Bool)

(assert (=> (and b!2309640 (= (toChars!6090 (transformation!4413 r!2363)) (toChars!6090 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!206984) tb!138595))

(declare-fun result!168918 () Bool)

(assert (= result!168918 result!168914))

(assert (=> d!683406 t!206984))

(declare-fun b_and!184813 () Bool)

(assert (= b_and!184799 (and (=> t!206984 result!168918) b_and!184813)))

(declare-fun t!206986 () Bool)

(declare-fun tb!138597 () Bool)

(assert (=> (and b!2309634 (= (toChars!6090 (transformation!4413 otherR!12)) (toChars!6090 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!206986) tb!138597))

(declare-fun result!168920 () Bool)

(assert (= result!168920 result!168914))

(assert (=> d!683406 t!206986))

(declare-fun b_and!184815 () Bool)

(assert (= b_and!184793 (and (=> t!206986 result!168920) b_and!184815)))

(declare-fun t!206988 () Bool)

(declare-fun tb!138599 () Bool)

(assert (=> (and b!2309613 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toChars!6090 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!206988) tb!138599))

(declare-fun result!168922 () Bool)

(assert (= result!168922 result!168914))

(assert (=> d!683406 t!206988))

(declare-fun b_and!184817 () Bool)

(assert (= b_and!184797 (and (=> t!206988 result!168922) b_and!184817)))

(declare-fun t!206990 () Bool)

(declare-fun tb!138601 () Bool)

(assert (=> (and b!2310188 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 rules!1750)))) (toChars!6090 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!206990) tb!138601))

(declare-fun result!168924 () Bool)

(assert (= result!168924 result!168914))

(assert (=> d!683406 t!206990))

(declare-fun b_and!184819 () Bool)

(assert (= b_and!184807 (and (=> t!206990 result!168924) b_and!184819)))

(declare-fun m!2737535 () Bool)

(assert (=> d!683406 m!2737535))

(declare-fun m!2737537 () Bool)

(assert (=> d!683406 m!2737537))

(assert (=> b!2310129 d!683406))

(assert (=> b!2310129 d!683364))

(declare-fun bs!458189 () Bool)

(declare-fun d!683412 () Bool)

(assert (= bs!458189 (and d!683412 d!683318)))

(declare-fun lambda!86050 () Int)

(assert (=> bs!458189 (= (= (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toValue!6231 (transformation!4413 (h!32899 rules!1750)))) (= lambda!86050 lambda!86038))))

(declare-fun bs!458190 () Bool)

(assert (= bs!458190 (and d!683412 d!683328)))

(assert (=> bs!458190 (= (= (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toValue!6231 (transformation!4413 otherR!12))) (= lambda!86050 lambda!86039))))

(declare-fun bs!458191 () Bool)

(assert (= bs!458191 (and d!683412 d!683334)))

(assert (=> bs!458191 (= (= (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toValue!6231 (transformation!4413 r!2363))) (= lambda!86050 lambda!86040))))

(assert (=> d!683412 true))

(assert (=> d!683412 (< (dynLambda!11962 order!15321 (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) (dynLambda!11963 order!15323 lambda!86050))))

(assert (=> d!683412 (= (equivClasses!1717 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) (Forall2!721 lambda!86050))))

(declare-fun bs!458192 () Bool)

(assert (= bs!458192 d!683412))

(declare-fun m!2737539 () Bool)

(assert (=> bs!458192 m!2737539))

(assert (=> b!2310000 d!683412))

(declare-fun d!683414 () Bool)

(declare-fun lt!857038 () Int)

(assert (=> d!683414 (>= lt!857038 0)))

(declare-fun e!1480711 () Int)

(assert (=> d!683414 (= lt!857038 e!1480711)))

(declare-fun c!366225 () Bool)

(assert (=> d!683414 (= c!366225 ((_ is Nil!27499) (t!206927 tokens!456)))))

(assert (=> d!683414 (= (size!21711 (t!206927 tokens!456)) lt!857038)))

(declare-fun b!2310307 () Bool)

(assert (=> b!2310307 (= e!1480711 0)))

(declare-fun b!2310308 () Bool)

(assert (=> b!2310308 (= e!1480711 (+ 1 (size!21711 (t!206927 (t!206927 tokens!456)))))))

(assert (= (and d!683414 c!366225) b!2310307))

(assert (= (and d!683414 (not c!366225)) b!2310308))

(declare-fun m!2737541 () Bool)

(assert (=> b!2310308 m!2737541))

(assert (=> b!2310065 d!683414))

(declare-fun d!683416 () Bool)

(assert (=> d!683416 (= (isEmpty!15734 otherP!12) ((_ is Nil!27497) otherP!12))))

(assert (=> d!683270 d!683416))

(assert (=> d!683270 d!683340))

(declare-fun b!2310309 () Bool)

(declare-fun res!987859 () Bool)

(declare-fun e!1480712 () Bool)

(assert (=> b!2310309 (=> res!987859 e!1480712)))

(assert (=> b!2310309 (= res!987859 (not ((_ is ElementMatch!6761) (regex!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))))))

(declare-fun e!1480716 () Bool)

(assert (=> b!2310309 (= e!1480716 e!1480712)))

(declare-fun b!2310310 () Bool)

(declare-fun e!1480715 () Bool)

(assert (=> b!2310310 (= e!1480715 (not (= (head!5072 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))) (c!366103 (regex!4413 (rule!6767 (_1!16227 (get!8291 lt!857012))))))))))

(declare-fun b!2310311 () Bool)

(declare-fun lt!857039 () Bool)

(assert (=> b!2310311 (= e!1480716 (not lt!857039))))

(declare-fun b!2310312 () Bool)

(declare-fun res!987864 () Bool)

(declare-fun e!1480713 () Bool)

(assert (=> b!2310312 (=> (not res!987864) (not e!1480713))))

(assert (=> b!2310312 (= res!987864 (isEmpty!15734 (tail!3339 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012)))))))))

(declare-fun b!2310313 () Bool)

(declare-fun e!1480717 () Bool)

(assert (=> b!2310313 (= e!1480717 e!1480716)))

(declare-fun c!366227 () Bool)

(assert (=> b!2310313 (= c!366227 ((_ is EmptyLang!6761) (regex!4413 (rule!6767 (_1!16227 (get!8291 lt!857012))))))))

(declare-fun b!2310314 () Bool)

(declare-fun e!1480714 () Bool)

(assert (=> b!2310314 (= e!1480714 (matchR!3018 (derivativeStep!1556 (regex!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))) (head!5072 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012)))))) (tail!3339 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012)))))))))

(declare-fun b!2310315 () Bool)

(assert (=> b!2310315 (= e!1480714 (nullable!1896 (regex!4413 (rule!6767 (_1!16227 (get!8291 lt!857012))))))))

(declare-fun b!2310316 () Bool)

(declare-fun res!987862 () Bool)

(assert (=> b!2310316 (=> res!987862 e!1480715)))

(assert (=> b!2310316 (= res!987862 (not (isEmpty!15734 (tail!3339 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))))))))

(declare-fun bm!137339 () Bool)

(declare-fun call!137344 () Bool)

(assert (=> bm!137339 (= call!137344 (isEmpty!15734 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))))))

(declare-fun b!2310318 () Bool)

(declare-fun res!987860 () Bool)

(assert (=> b!2310318 (=> (not res!987860) (not e!1480713))))

(assert (=> b!2310318 (= res!987860 (not call!137344))))

(declare-fun b!2310319 () Bool)

(assert (=> b!2310319 (= e!1480717 (= lt!857039 call!137344))))

(declare-fun b!2310320 () Bool)

(assert (=> b!2310320 (= e!1480713 (= (head!5072 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))) (c!366103 (regex!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))))))

(declare-fun d!683418 () Bool)

(assert (=> d!683418 e!1480717))

(declare-fun c!366226 () Bool)

(assert (=> d!683418 (= c!366226 ((_ is EmptyExpr!6761) (regex!4413 (rule!6767 (_1!16227 (get!8291 lt!857012))))))))

(assert (=> d!683418 (= lt!857039 e!1480714)))

(declare-fun c!366228 () Bool)

(assert (=> d!683418 (= c!366228 (isEmpty!15734 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))))))

(assert (=> d!683418 (validRegex!2558 (regex!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))))

(assert (=> d!683418 (= (matchR!3018 (regex!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))) (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))) lt!857039)))

(declare-fun b!2310317 () Bool)

(declare-fun e!1480718 () Bool)

(assert (=> b!2310317 (= e!1480712 e!1480718)))

(declare-fun res!987863 () Bool)

(assert (=> b!2310317 (=> (not res!987863) (not e!1480718))))

(assert (=> b!2310317 (= res!987863 (not lt!857039))))

(declare-fun b!2310321 () Bool)

(declare-fun res!987861 () Bool)

(assert (=> b!2310321 (=> res!987861 e!1480712)))

(assert (=> b!2310321 (= res!987861 e!1480713)))

(declare-fun res!987857 () Bool)

(assert (=> b!2310321 (=> (not res!987857) (not e!1480713))))

(assert (=> b!2310321 (= res!987857 lt!857039)))

(declare-fun b!2310322 () Bool)

(assert (=> b!2310322 (= e!1480718 e!1480715)))

(declare-fun res!987858 () Bool)

(assert (=> b!2310322 (=> res!987858 e!1480715)))

(assert (=> b!2310322 (= res!987858 call!137344)))

(assert (= (and d!683418 c!366228) b!2310315))

(assert (= (and d!683418 (not c!366228)) b!2310314))

(assert (= (and d!683418 c!366226) b!2310319))

(assert (= (and d!683418 (not c!366226)) b!2310313))

(assert (= (and b!2310313 c!366227) b!2310311))

(assert (= (and b!2310313 (not c!366227)) b!2310309))

(assert (= (and b!2310309 (not res!987859)) b!2310321))

(assert (= (and b!2310321 res!987857) b!2310318))

(assert (= (and b!2310318 res!987860) b!2310312))

(assert (= (and b!2310312 res!987864) b!2310320))

(assert (= (and b!2310321 (not res!987861)) b!2310317))

(assert (= (and b!2310317 res!987863) b!2310322))

(assert (= (and b!2310322 (not res!987858)) b!2310316))

(assert (= (and b!2310316 (not res!987862)) b!2310310))

(assert (= (or b!2310319 b!2310318 b!2310322) bm!137339))

(assert (=> b!2310320 m!2737355))

(declare-fun m!2737543 () Bool)

(assert (=> b!2310320 m!2737543))

(assert (=> b!2310312 m!2737355))

(declare-fun m!2737545 () Bool)

(assert (=> b!2310312 m!2737545))

(assert (=> b!2310312 m!2737545))

(declare-fun m!2737547 () Bool)

(assert (=> b!2310312 m!2737547))

(declare-fun m!2737549 () Bool)

(assert (=> b!2310315 m!2737549))

(assert (=> b!2310310 m!2737355))

(assert (=> b!2310310 m!2737543))

(assert (=> d!683418 m!2737355))

(declare-fun m!2737551 () Bool)

(assert (=> d!683418 m!2737551))

(declare-fun m!2737553 () Bool)

(assert (=> d!683418 m!2737553))

(assert (=> b!2310314 m!2737355))

(assert (=> b!2310314 m!2737543))

(assert (=> b!2310314 m!2737543))

(declare-fun m!2737555 () Bool)

(assert (=> b!2310314 m!2737555))

(assert (=> b!2310314 m!2737355))

(assert (=> b!2310314 m!2737545))

(assert (=> b!2310314 m!2737555))

(assert (=> b!2310314 m!2737545))

(declare-fun m!2737557 () Bool)

(assert (=> b!2310314 m!2737557))

(assert (=> b!2310316 m!2737355))

(assert (=> b!2310316 m!2737545))

(assert (=> b!2310316 m!2737545))

(assert (=> b!2310316 m!2737547))

(assert (=> bm!137339 m!2737355))

(assert (=> bm!137339 m!2737551))

(assert (=> b!2310127 d!683418))

(assert (=> b!2310127 d!683364))

(assert (=> b!2310127 d!683404))

(assert (=> b!2310127 d!683406))

(declare-fun b!2310324 () Bool)

(declare-fun e!1480719 () List!27591)

(declare-fun e!1480720 () List!27591)

(assert (=> b!2310324 (= e!1480719 e!1480720)))

(declare-fun c!366230 () Bool)

(assert (=> b!2310324 (= c!366230 ((_ is Leaf!13166) (c!366102 (charsOf!2801 (h!32900 tokens!456)))))))

(declare-fun b!2310323 () Bool)

(assert (=> b!2310323 (= e!1480719 Nil!27497)))

(declare-fun b!2310325 () Bool)

(assert (=> b!2310325 (= e!1480720 (list!10870 (xs!11916 (c!366102 (charsOf!2801 (h!32900 tokens!456))))))))

(declare-fun d!683420 () Bool)

(declare-fun c!366229 () Bool)

(assert (=> d!683420 (= c!366229 ((_ is Empty!8974) (c!366102 (charsOf!2801 (h!32900 tokens!456)))))))

(assert (=> d!683420 (= (list!10869 (c!366102 (charsOf!2801 (h!32900 tokens!456)))) e!1480719)))

(declare-fun b!2310326 () Bool)

(assert (=> b!2310326 (= e!1480720 (++!6735 (list!10869 (left!20829 (c!366102 (charsOf!2801 (h!32900 tokens!456))))) (list!10869 (right!21159 (c!366102 (charsOf!2801 (h!32900 tokens!456)))))))))

(assert (= (and d!683420 c!366229) b!2310323))

(assert (= (and d!683420 (not c!366229)) b!2310324))

(assert (= (and b!2310324 c!366230) b!2310325))

(assert (= (and b!2310324 (not c!366230)) b!2310326))

(declare-fun m!2737559 () Bool)

(assert (=> b!2310325 m!2737559))

(declare-fun m!2737561 () Bool)

(assert (=> b!2310326 m!2737561))

(declare-fun m!2737563 () Bool)

(assert (=> b!2310326 m!2737563))

(assert (=> b!2310326 m!2737561))

(assert (=> b!2310326 m!2737563))

(declare-fun m!2737565 () Bool)

(assert (=> b!2310326 m!2737565))

(assert (=> d!683306 d!683420))

(declare-fun d!683422 () Bool)

(assert (=> d!683422 (= (inv!37141 (tag!4903 (rule!6767 (h!32900 (t!206927 tokens!456))))) (= (mod (str.len (value!139589 (tag!4903 (rule!6767 (h!32900 (t!206927 tokens!456)))))) 2) 0))))

(assert (=> b!2310161 d!683422))

(declare-fun d!683424 () Bool)

(declare-fun res!987865 () Bool)

(declare-fun e!1480721 () Bool)

(assert (=> d!683424 (=> (not res!987865) (not e!1480721))))

(assert (=> d!683424 (= res!987865 (semiInverseModEq!1798 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (toValue!6231 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))))))

(assert (=> d!683424 (= (inv!37144 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) e!1480721)))

(declare-fun b!2310327 () Bool)

(assert (=> b!2310327 (= e!1480721 (equivClasses!1717 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (toValue!6231 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))))))

(assert (= (and d!683424 res!987865) b!2310327))

(declare-fun m!2737567 () Bool)

(assert (=> d!683424 m!2737567))

(declare-fun m!2737569 () Bool)

(assert (=> b!2310327 m!2737569))

(assert (=> b!2310161 d!683424))

(declare-fun d!683426 () Bool)

(declare-fun lt!857040 () List!27591)

(assert (=> d!683426 (= (++!6735 (t!206925 lt!856866) lt!857040) (tail!3339 input!1722))))

(declare-fun e!1480722 () List!27591)

(assert (=> d!683426 (= lt!857040 e!1480722)))

(declare-fun c!366231 () Bool)

(assert (=> d!683426 (= c!366231 ((_ is Cons!27497) (t!206925 lt!856866)))))

(assert (=> d!683426 (>= (size!21710 (tail!3339 input!1722)) (size!21710 (t!206925 lt!856866)))))

(assert (=> d!683426 (= (getSuffix!1182 (tail!3339 input!1722) (t!206925 lt!856866)) lt!857040)))

(declare-fun b!2310328 () Bool)

(assert (=> b!2310328 (= e!1480722 (getSuffix!1182 (tail!3339 (tail!3339 input!1722)) (t!206925 (t!206925 lt!856866))))))

(declare-fun b!2310329 () Bool)

(assert (=> b!2310329 (= e!1480722 (tail!3339 input!1722))))

(assert (= (and d!683426 c!366231) b!2310328))

(assert (= (and d!683426 (not c!366231)) b!2310329))

(declare-fun m!2737571 () Bool)

(assert (=> d!683426 m!2737571))

(assert (=> d!683426 m!2737307))

(assert (=> d!683426 m!2737479))

(assert (=> d!683426 m!2737313))

(assert (=> b!2310328 m!2737307))

(assert (=> b!2310328 m!2737485))

(assert (=> b!2310328 m!2737485))

(declare-fun m!2737573 () Bool)

(assert (=> b!2310328 m!2737573))

(assert (=> b!2310089 d!683426))

(assert (=> b!2310089 d!683376))

(assert (=> d!683296 d!683300))

(assert (=> d!683296 d!683304))

(declare-fun d!683428 () Bool)

(assert (=> d!683428 (isPrefix!2403 lt!856866 (++!6735 lt!856866 (_2!16227 lt!856871)))))

(assert (=> d!683428 true))

(declare-fun _$46!1356 () Unit!40423)

(assert (=> d!683428 (= (choose!13510 lt!856866 (_2!16227 lt!856871)) _$46!1356)))

(declare-fun bs!458193 () Bool)

(assert (= bs!458193 d!683428))

(assert (=> bs!458193 m!2736873))

(assert (=> bs!458193 m!2736873))

(assert (=> bs!458193 m!2736881))

(assert (=> d!683296 d!683428))

(assert (=> bm!137322 d!683416))

(declare-fun d!683430 () Bool)

(declare-fun lt!857041 () Int)

(assert (=> d!683430 (= lt!857041 (size!21710 (list!10864 (_2!16228 lt!856948))))))

(assert (=> d!683430 (= lt!857041 (size!21715 (c!366102 (_2!16228 lt!856948))))))

(assert (=> d!683430 (= (size!21709 (_2!16228 lt!856948)) lt!857041)))

(declare-fun bs!458194 () Bool)

(assert (= bs!458194 d!683430))

(assert (=> bs!458194 m!2737167))

(assert (=> bs!458194 m!2737167))

(declare-fun m!2737575 () Bool)

(assert (=> bs!458194 m!2737575))

(declare-fun m!2737577 () Bool)

(assert (=> bs!458194 m!2737577))

(assert (=> b!2309870 d!683430))

(declare-fun d!683432 () Bool)

(declare-fun lt!857042 () Int)

(assert (=> d!683432 (= lt!857042 (size!21710 (list!10864 (seqFromList!3117 input!1722))))))

(assert (=> d!683432 (= lt!857042 (size!21715 (c!366102 (seqFromList!3117 input!1722))))))

(assert (=> d!683432 (= (size!21709 (seqFromList!3117 input!1722)) lt!857042)))

(declare-fun bs!458195 () Bool)

(assert (= bs!458195 d!683432))

(assert (=> bs!458195 m!2736899))

(assert (=> bs!458195 m!2737169))

(assert (=> bs!458195 m!2737169))

(declare-fun m!2737579 () Bool)

(assert (=> bs!458195 m!2737579))

(declare-fun m!2737581 () Bool)

(assert (=> bs!458195 m!2737581))

(assert (=> b!2309870 d!683432))

(declare-fun d!683434 () Bool)

(declare-fun res!987866 () Bool)

(declare-fun e!1480723 () Bool)

(assert (=> d!683434 (=> (not res!987866) (not e!1480723))))

(assert (=> d!683434 (= res!987866 (not (isEmpty!15734 (originalCharacters!5183 (h!32900 (t!206927 tokens!456))))))))

(assert (=> d!683434 (= (inv!37145 (h!32900 (t!206927 tokens!456))) e!1480723)))

(declare-fun b!2310330 () Bool)

(declare-fun res!987867 () Bool)

(assert (=> b!2310330 (=> (not res!987867) (not e!1480723))))

(assert (=> b!2310330 (= res!987867 (= (originalCharacters!5183 (h!32900 (t!206927 tokens!456))) (list!10864 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (value!139590 (h!32900 (t!206927 tokens!456)))))))))

(declare-fun b!2310331 () Bool)

(assert (=> b!2310331 (= e!1480723 (= (size!21708 (h!32900 (t!206927 tokens!456))) (size!21710 (originalCharacters!5183 (h!32900 (t!206927 tokens!456))))))))

(assert (= (and d!683434 res!987866) b!2310330))

(assert (= (and b!2310330 res!987867) b!2310331))

(declare-fun b_lambda!73655 () Bool)

(assert (=> (not b_lambda!73655) (not b!2310330)))

(declare-fun tb!138603 () Bool)

(declare-fun t!206992 () Bool)

(assert (=> (and b!2309634 (= (toChars!6090 (transformation!4413 otherR!12)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) t!206992) tb!138603))

(declare-fun b!2310332 () Bool)

(declare-fun e!1480724 () Bool)

(declare-fun tp!732961 () Bool)

(assert (=> b!2310332 (= e!1480724 (and (inv!37148 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (value!139590 (h!32900 (t!206927 tokens!456)))))) tp!732961))))

(declare-fun result!168926 () Bool)

(assert (=> tb!138603 (= result!168926 (and (inv!37149 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (value!139590 (h!32900 (t!206927 tokens!456))))) e!1480724))))

(assert (= tb!138603 b!2310332))

(declare-fun m!2737583 () Bool)

(assert (=> b!2310332 m!2737583))

(declare-fun m!2737585 () Bool)

(assert (=> tb!138603 m!2737585))

(assert (=> b!2310330 t!206992))

(declare-fun b_and!184821 () Bool)

(assert (= b_and!184815 (and (=> t!206992 result!168926) b_and!184821)))

(declare-fun t!206994 () Bool)

(declare-fun tb!138605 () Bool)

(assert (=> (and b!2309639 (= (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) t!206994) tb!138605))

(declare-fun result!168928 () Bool)

(assert (= result!168928 result!168926))

(assert (=> b!2310330 t!206994))

(declare-fun b_and!184823 () Bool)

(assert (= b_and!184811 (and (=> t!206994 result!168928) b_and!184823)))

(declare-fun t!206996 () Bool)

(declare-fun tb!138607 () Bool)

(assert (=> (and b!2309640 (= (toChars!6090 (transformation!4413 r!2363)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) t!206996) tb!138607))

(declare-fun result!168930 () Bool)

(assert (= result!168930 result!168926))

(assert (=> b!2310330 t!206996))

(declare-fun b_and!184825 () Bool)

(assert (= b_and!184813 (and (=> t!206996 result!168930) b_and!184825)))

(declare-fun t!206998 () Bool)

(declare-fun tb!138609 () Bool)

(assert (=> (and b!2309613 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) t!206998) tb!138609))

(declare-fun result!168932 () Bool)

(assert (= result!168932 result!168926))

(assert (=> b!2310330 t!206998))

(declare-fun b_and!184827 () Bool)

(assert (= b_and!184817 (and (=> t!206998 result!168932) b_and!184827)))

(declare-fun t!207000 () Bool)

(declare-fun tb!138611 () Bool)

(assert (=> (and b!2310162 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) t!207000) tb!138611))

(declare-fun result!168934 () Bool)

(assert (= result!168934 result!168926))

(assert (=> b!2310330 t!207000))

(declare-fun b_and!184829 () Bool)

(assert (= b_and!184809 (and (=> t!207000 result!168934) b_and!184829)))

(declare-fun tb!138613 () Bool)

(declare-fun t!207002 () Bool)

(assert (=> (and b!2310188 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 rules!1750)))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) t!207002) tb!138613))

(declare-fun result!168936 () Bool)

(assert (= result!168936 result!168926))

(assert (=> b!2310330 t!207002))

(declare-fun b_and!184831 () Bool)

(assert (= b_and!184819 (and (=> t!207002 result!168936) b_and!184831)))

(declare-fun m!2737587 () Bool)

(assert (=> d!683434 m!2737587))

(declare-fun m!2737589 () Bool)

(assert (=> b!2310330 m!2737589))

(assert (=> b!2310330 m!2737589))

(declare-fun m!2737591 () Bool)

(assert (=> b!2310330 m!2737591))

(declare-fun m!2737593 () Bool)

(assert (=> b!2310331 m!2737593))

(assert (=> b!2310159 d!683434))

(declare-fun d!683436 () Bool)

(declare-fun lt!857043 () Bool)

(assert (=> d!683436 (= lt!857043 (select (content!3717 (t!206926 rules!1750)) otherR!12))))

(declare-fun e!1480725 () Bool)

(assert (=> d!683436 (= lt!857043 e!1480725)))

(declare-fun res!987869 () Bool)

(assert (=> d!683436 (=> (not res!987869) (not e!1480725))))

(assert (=> d!683436 (= res!987869 ((_ is Cons!27498) (t!206926 rules!1750)))))

(assert (=> d!683436 (= (contains!4803 (t!206926 rules!1750) otherR!12) lt!857043)))

(declare-fun b!2310333 () Bool)

(declare-fun e!1480726 () Bool)

(assert (=> b!2310333 (= e!1480725 e!1480726)))

(declare-fun res!987868 () Bool)

(assert (=> b!2310333 (=> res!987868 e!1480726)))

(assert (=> b!2310333 (= res!987868 (= (h!32899 (t!206926 rules!1750)) otherR!12))))

(declare-fun b!2310334 () Bool)

(assert (=> b!2310334 (= e!1480726 (contains!4803 (t!206926 (t!206926 rules!1750)) otherR!12))))

(assert (= (and d!683436 res!987869) b!2310333))

(assert (= (and b!2310333 (not res!987868)) b!2310334))

(assert (=> d!683436 m!2737523))

(declare-fun m!2737595 () Bool)

(assert (=> d!683436 m!2737595))

(declare-fun m!2737597 () Bool)

(assert (=> b!2310334 m!2737597))

(assert (=> b!2309936 d!683436))

(declare-fun d!683438 () Bool)

(declare-fun lt!857044 () Int)

(assert (=> d!683438 (>= lt!857044 0)))

(declare-fun e!1480727 () Int)

(assert (=> d!683438 (= lt!857044 e!1480727)))

(declare-fun c!366232 () Bool)

(assert (=> d!683438 (= c!366232 ((_ is Nil!27497) (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))

(assert (=> d!683438 (= (size!21710 (list!10864 (charsOf!2801 (head!5070 tokens!456)))) lt!857044)))

(declare-fun b!2310335 () Bool)

(assert (=> b!2310335 (= e!1480727 0)))

(declare-fun b!2310336 () Bool)

(assert (=> b!2310336 (= e!1480727 (+ 1 (size!21710 (t!206925 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))))

(assert (= (and d!683438 c!366232) b!2310335))

(assert (= (and d!683438 (not c!366232)) b!2310336))

(declare-fun m!2737599 () Bool)

(assert (=> b!2310336 m!2737599))

(assert (=> d!683266 d!683438))

(assert (=> d!683266 d!683244))

(declare-fun d!683440 () Bool)

(declare-fun lt!857047 () Int)

(assert (=> d!683440 (= lt!857047 (size!21710 (list!10869 (c!366102 (charsOf!2801 (head!5070 tokens!456))))))))

(assert (=> d!683440 (= lt!857047 (ite ((_ is Empty!8974) (c!366102 (charsOf!2801 (head!5070 tokens!456)))) 0 (ite ((_ is Leaf!13166) (c!366102 (charsOf!2801 (head!5070 tokens!456)))) (csize!18179 (c!366102 (charsOf!2801 (head!5070 tokens!456)))) (csize!18178 (c!366102 (charsOf!2801 (head!5070 tokens!456)))))))))

(assert (=> d!683440 (= (size!21715 (c!366102 (charsOf!2801 (head!5070 tokens!456)))) lt!857047)))

(declare-fun bs!458196 () Bool)

(assert (= bs!458196 d!683440))

(assert (=> bs!458196 m!2737233))

(assert (=> bs!458196 m!2737233))

(declare-fun m!2737601 () Bool)

(assert (=> bs!458196 m!2737601))

(assert (=> d!683266 d!683440))

(declare-fun d!683442 () Bool)

(declare-fun lt!857048 () Int)

(assert (=> d!683442 (>= lt!857048 0)))

(declare-fun e!1480728 () Int)

(assert (=> d!683442 (= lt!857048 e!1480728)))

(declare-fun c!366233 () Bool)

(assert (=> d!683442 (= c!366233 ((_ is Nil!27497) lt!856993))))

(assert (=> d!683442 (= (size!21710 lt!856993) lt!857048)))

(declare-fun b!2310337 () Bool)

(assert (=> b!2310337 (= e!1480728 0)))

(declare-fun b!2310338 () Bool)

(assert (=> b!2310338 (= e!1480728 (+ 1 (size!21710 (t!206925 lt!856993))))))

(assert (= (and d!683442 c!366233) b!2310337))

(assert (= (and d!683442 (not c!366233)) b!2310338))

(declare-fun m!2737603 () Bool)

(assert (=> b!2310338 m!2737603))

(assert (=> b!2310101 d!683442))

(assert (=> b!2310101 d!683298))

(declare-fun d!683444 () Bool)

(declare-fun lt!857049 () Int)

(assert (=> d!683444 (>= lt!857049 0)))

(declare-fun e!1480729 () Int)

(assert (=> d!683444 (= lt!857049 e!1480729)))

(declare-fun c!366234 () Bool)

(assert (=> d!683444 (= c!366234 ((_ is Nil!27497) (_2!16227 lt!856871)))))

(assert (=> d!683444 (= (size!21710 (_2!16227 lt!856871)) lt!857049)))

(declare-fun b!2310339 () Bool)

(assert (=> b!2310339 (= e!1480729 0)))

(declare-fun b!2310340 () Bool)

(assert (=> b!2310340 (= e!1480729 (+ 1 (size!21710 (t!206925 (_2!16227 lt!856871)))))))

(assert (= (and d!683444 c!366234) b!2310339))

(assert (= (and d!683444 (not c!366234)) b!2310340))

(declare-fun m!2737605 () Bool)

(assert (=> b!2310340 m!2737605))

(assert (=> b!2310101 d!683444))

(declare-fun d!683446 () Bool)

(assert (=> d!683446 (= (nullable!1896 (regex!4413 otherR!12)) (nullableFct!464 (regex!4413 otherR!12)))))

(declare-fun bs!458197 () Bool)

(assert (= bs!458197 d!683446))

(declare-fun m!2737607 () Bool)

(assert (=> bs!458197 m!2737607))

(assert (=> b!2310013 d!683446))

(declare-fun d!683448 () Bool)

(assert (=> d!683448 (= (list!10865 (_1!16228 lt!856948)) (list!10868 (c!366104 (_1!16228 lt!856948))))))

(declare-fun bs!458198 () Bool)

(assert (= bs!458198 d!683448))

(declare-fun m!2737609 () Bool)

(assert (=> bs!458198 m!2737609))

(assert (=> b!2309868 d!683448))

(declare-fun b!2310395 () Bool)

(declare-fun e!1480761 () Bool)

(declare-fun lt!857073 () tuple2!27438)

(assert (=> b!2310395 (= e!1480761 (= (_2!16229 lt!857073) (list!10864 (seqFromList!3117 input!1722))))))

(declare-fun b!2310396 () Bool)

(declare-fun e!1480759 () Bool)

(assert (=> b!2310396 (= e!1480761 e!1480759)))

(declare-fun res!987879 () Bool)

(assert (=> b!2310396 (= res!987879 (< (size!21710 (_2!16229 lt!857073)) (size!21710 (list!10864 (seqFromList!3117 input!1722)))))))

(assert (=> b!2310396 (=> (not res!987879) (not e!1480759))))

(declare-fun b!2310397 () Bool)

(declare-fun e!1480760 () tuple2!27438)

(declare-fun lt!857071 () Option!5413)

(declare-fun lt!857072 () tuple2!27438)

(assert (=> b!2310397 (= e!1480760 (tuple2!27439 (Cons!27499 (_1!16227 (v!30522 lt!857071)) (_1!16229 lt!857072)) (_2!16229 lt!857072)))))

(assert (=> b!2310397 (= lt!857072 (lexList!1142 thiss!16613 rules!1750 (_2!16227 (v!30522 lt!857071))))))

(declare-fun d!683450 () Bool)

(assert (=> d!683450 e!1480761))

(declare-fun c!366256 () Bool)

(assert (=> d!683450 (= c!366256 (> (size!21711 (_1!16229 lt!857073)) 0))))

(assert (=> d!683450 (= lt!857073 e!1480760)))

(declare-fun c!366255 () Bool)

(assert (=> d!683450 (= c!366255 ((_ is Some!5412) lt!857071))))

(assert (=> d!683450 (= lt!857071 (maxPrefix!2266 thiss!16613 rules!1750 (list!10864 (seqFromList!3117 input!1722))))))

(assert (=> d!683450 (= (lexList!1142 thiss!16613 rules!1750 (list!10864 (seqFromList!3117 input!1722))) lt!857073)))

(declare-fun b!2310398 () Bool)

(assert (=> b!2310398 (= e!1480759 (not (isEmpty!15729 (_1!16229 lt!857073))))))

(declare-fun b!2310399 () Bool)

(assert (=> b!2310399 (= e!1480760 (tuple2!27439 Nil!27499 (list!10864 (seqFromList!3117 input!1722))))))

(assert (= (and d!683450 c!366255) b!2310397))

(assert (= (and d!683450 (not c!366255)) b!2310399))

(assert (= (and d!683450 c!366256) b!2310396))

(assert (= (and d!683450 (not c!366256)) b!2310395))

(assert (= (and b!2310396 res!987879) b!2310398))

(declare-fun m!2737681 () Bool)

(assert (=> b!2310396 m!2737681))

(assert (=> b!2310396 m!2737169))

(assert (=> b!2310396 m!2737579))

(declare-fun m!2737685 () Bool)

(assert (=> b!2310397 m!2737685))

(declare-fun m!2737687 () Bool)

(assert (=> d!683450 m!2737687))

(assert (=> d!683450 m!2737169))

(declare-fun m!2737689 () Bool)

(assert (=> d!683450 m!2737689))

(declare-fun m!2737691 () Bool)

(assert (=> b!2310398 m!2737691))

(assert (=> b!2309868 d!683450))

(declare-fun d!683486 () Bool)

(assert (=> d!683486 (= (list!10864 (seqFromList!3117 input!1722)) (list!10869 (c!366102 (seqFromList!3117 input!1722))))))

(declare-fun bs!458204 () Bool)

(assert (= bs!458204 d!683486))

(declare-fun m!2737693 () Bool)

(assert (=> bs!458204 m!2737693))

(assert (=> b!2309868 d!683486))

(declare-fun d!683488 () Bool)

(declare-fun charsToInt!0 (List!27590) (_ BitVec 32))

(assert (=> d!683488 (= (inv!16 (value!139590 (h!32900 tokens!456))) (= (charsToInt!0 (text!32472 (value!139590 (h!32900 tokens!456)))) (value!139581 (value!139590 (h!32900 tokens!456)))))))

(declare-fun bs!458205 () Bool)

(assert (= bs!458205 d!683488))

(declare-fun m!2737697 () Bool)

(assert (=> bs!458205 m!2737697))

(assert (=> b!2310034 d!683488))

(declare-fun d!683496 () Bool)

(assert (=> d!683496 (= (list!10864 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456)))) (list!10869 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456))))))))

(declare-fun bs!458206 () Bool)

(assert (= bs!458206 d!683496))

(declare-fun m!2737699 () Bool)

(assert (=> bs!458206 m!2737699))

(assert (=> b!2309944 d!683496))

(declare-fun d!683498 () Bool)

(declare-fun lt!857075 () Int)

(assert (=> d!683498 (>= lt!857075 0)))

(declare-fun e!1480766 () Int)

(assert (=> d!683498 (= lt!857075 e!1480766)))

(declare-fun c!366259 () Bool)

(assert (=> d!683498 (= c!366259 (and ((_ is Cons!27498) (t!206926 rules!1750)) (= (h!32899 (t!206926 rules!1750)) r!2363)))))

(assert (=> d!683498 (contains!4803 (t!206926 rules!1750) r!2363)))

(assert (=> d!683498 (= (getIndex!426 (t!206926 rules!1750) r!2363) lt!857075)))

(declare-fun b!2310407 () Bool)

(declare-fun e!1480765 () Int)

(assert (=> b!2310407 (= e!1480765 (+ 1 (getIndex!426 (t!206926 (t!206926 rules!1750)) r!2363)))))

(declare-fun b!2310408 () Bool)

(assert (=> b!2310408 (= e!1480765 (- 1))))

(declare-fun b!2310406 () Bool)

(assert (=> b!2310406 (= e!1480766 e!1480765)))

(declare-fun c!366260 () Bool)

(assert (=> b!2310406 (= c!366260 (and ((_ is Cons!27498) (t!206926 rules!1750)) (not (= (h!32899 (t!206926 rules!1750)) r!2363))))))

(declare-fun b!2310405 () Bool)

(assert (=> b!2310405 (= e!1480766 0)))

(assert (= (and d!683498 c!366259) b!2310405))

(assert (= (and d!683498 (not c!366259)) b!2310406))

(assert (= (and b!2310406 c!366260) b!2310407))

(assert (= (and b!2310406 (not c!366260)) b!2310408))

(assert (=> d!683498 m!2737249))

(declare-fun m!2737703 () Bool)

(assert (=> b!2310407 m!2737703))

(assert (=> b!2310050 d!683498))

(declare-fun d!683502 () Bool)

(assert (=> d!683502 (= (isDefined!4258 lt!857012) (not (isEmpty!15736 lt!857012)))))

(declare-fun bs!458209 () Bool)

(assert (= bs!458209 d!683502))

(assert (=> bs!458209 m!2737363))

(assert (=> b!2310121 d!683502))

(declare-fun d!683504 () Bool)

(assert (=> d!683504 (= r!2363 otherR!12)))

(assert (=> d!683504 true))

(declare-fun _$42!232 () Unit!40423)

(assert (=> d!683504 (= (choose!13508 rules!1750 r!2363 otherR!12) _$42!232)))

(assert (=> d!683256 d!683504))

(assert (=> d!683256 d!683254))

(declare-fun d!683506 () Bool)

(assert (=> d!683506 (= (isEmpty!15734 (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456))))) ((_ is Nil!27497) (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))

(assert (=> b!2309986 d!683506))

(declare-fun d!683508 () Bool)

(assert (=> d!683508 (= (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456)))) (t!206925 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))

(assert (=> b!2309986 d!683508))

(assert (=> d!683274 d!683234))

(declare-fun b!2310409 () Bool)

(declare-fun res!987883 () Bool)

(declare-fun e!1480767 () Bool)

(assert (=> b!2310409 (=> res!987883 e!1480767)))

(assert (=> b!2310409 (= res!987883 (not ((_ is ElementMatch!6761) (derivativeStep!1556 (regex!4413 r!2363) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))))

(declare-fun e!1480771 () Bool)

(assert (=> b!2310409 (= e!1480771 e!1480767)))

(declare-fun b!2310410 () Bool)

(declare-fun e!1480770 () Bool)

(assert (=> b!2310410 (= e!1480770 (not (= (head!5072 (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456))))) (c!366103 (derivativeStep!1556 (regex!4413 r!2363) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))))))

(declare-fun b!2310411 () Bool)

(declare-fun lt!857076 () Bool)

(assert (=> b!2310411 (= e!1480771 (not lt!857076))))

(declare-fun b!2310412 () Bool)

(declare-fun res!987888 () Bool)

(declare-fun e!1480768 () Bool)

(assert (=> b!2310412 (=> (not res!987888) (not e!1480768))))

(assert (=> b!2310412 (= res!987888 (isEmpty!15734 (tail!3339 (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))))

(declare-fun b!2310413 () Bool)

(declare-fun e!1480772 () Bool)

(assert (=> b!2310413 (= e!1480772 e!1480771)))

(declare-fun c!366262 () Bool)

(assert (=> b!2310413 (= c!366262 ((_ is EmptyLang!6761) (derivativeStep!1556 (regex!4413 r!2363) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))))

(declare-fun b!2310414 () Bool)

(declare-fun e!1480769 () Bool)

(assert (=> b!2310414 (= e!1480769 (matchR!3018 (derivativeStep!1556 (derivativeStep!1556 (regex!4413 r!2363) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456))))) (head!5072 (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))) (tail!3339 (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))))

(declare-fun b!2310415 () Bool)

(assert (=> b!2310415 (= e!1480769 (nullable!1896 (derivativeStep!1556 (regex!4413 r!2363) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))))

(declare-fun b!2310416 () Bool)

(declare-fun res!987886 () Bool)

(assert (=> b!2310416 (=> res!987886 e!1480770)))

(assert (=> b!2310416 (= res!987886 (not (isEmpty!15734 (tail!3339 (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))))

(declare-fun bm!137340 () Bool)

(declare-fun call!137345 () Bool)

(assert (=> bm!137340 (= call!137345 (isEmpty!15734 (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))

(declare-fun b!2310418 () Bool)

(declare-fun res!987884 () Bool)

(assert (=> b!2310418 (=> (not res!987884) (not e!1480768))))

(assert (=> b!2310418 (= res!987884 (not call!137345))))

(declare-fun b!2310419 () Bool)

(assert (=> b!2310419 (= e!1480772 (= lt!857076 call!137345))))

(declare-fun b!2310420 () Bool)

(assert (=> b!2310420 (= e!1480768 (= (head!5072 (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456))))) (c!366103 (derivativeStep!1556 (regex!4413 r!2363) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))))

(declare-fun d!683510 () Bool)

(assert (=> d!683510 e!1480772))

(declare-fun c!366261 () Bool)

(assert (=> d!683510 (= c!366261 ((_ is EmptyExpr!6761) (derivativeStep!1556 (regex!4413 r!2363) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456)))))))))

(assert (=> d!683510 (= lt!857076 e!1480769)))

(declare-fun c!366263 () Bool)

(assert (=> d!683510 (= c!366263 (isEmpty!15734 (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))

(assert (=> d!683510 (validRegex!2558 (derivativeStep!1556 (regex!4413 r!2363) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))

(assert (=> d!683510 (= (matchR!3018 (derivativeStep!1556 (regex!4413 r!2363) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456))))) (tail!3339 (list!10864 (charsOf!2801 (head!5070 tokens!456))))) lt!857076)))

(declare-fun b!2310417 () Bool)

(declare-fun e!1480773 () Bool)

(assert (=> b!2310417 (= e!1480767 e!1480773)))

(declare-fun res!987887 () Bool)

(assert (=> b!2310417 (=> (not res!987887) (not e!1480773))))

(assert (=> b!2310417 (= res!987887 (not lt!857076))))

(declare-fun b!2310421 () Bool)

(declare-fun res!987885 () Bool)

(assert (=> b!2310421 (=> res!987885 e!1480767)))

(assert (=> b!2310421 (= res!987885 e!1480768)))

(declare-fun res!987881 () Bool)

(assert (=> b!2310421 (=> (not res!987881) (not e!1480768))))

(assert (=> b!2310421 (= res!987881 lt!857076)))

(declare-fun b!2310422 () Bool)

(assert (=> b!2310422 (= e!1480773 e!1480770)))

(declare-fun res!987882 () Bool)

(assert (=> b!2310422 (=> res!987882 e!1480770)))

(assert (=> b!2310422 (= res!987882 call!137345)))

(assert (= (and d!683510 c!366263) b!2310415))

(assert (= (and d!683510 (not c!366263)) b!2310414))

(assert (= (and d!683510 c!366261) b!2310419))

(assert (= (and d!683510 (not c!366261)) b!2310413))

(assert (= (and b!2310413 c!366262) b!2310411))

(assert (= (and b!2310413 (not c!366262)) b!2310409))

(assert (= (and b!2310409 (not res!987883)) b!2310421))

(assert (= (and b!2310421 res!987881) b!2310418))

(assert (= (and b!2310418 res!987884) b!2310412))

(assert (= (and b!2310412 res!987888) b!2310420))

(assert (= (and b!2310421 (not res!987885)) b!2310417))

(assert (= (and b!2310417 res!987887) b!2310422))

(assert (= (and b!2310422 (not res!987882)) b!2310416))

(assert (= (and b!2310416 (not res!987886)) b!2310410))

(assert (= (or b!2310419 b!2310418 b!2310422) bm!137340))

(assert (=> b!2310420 m!2737219))

(declare-fun m!2737705 () Bool)

(assert (=> b!2310420 m!2737705))

(assert (=> b!2310412 m!2737219))

(declare-fun m!2737707 () Bool)

(assert (=> b!2310412 m!2737707))

(assert (=> b!2310412 m!2737707))

(declare-fun m!2737709 () Bool)

(assert (=> b!2310412 m!2737709))

(assert (=> b!2310415 m!2737229))

(declare-fun m!2737711 () Bool)

(assert (=> b!2310415 m!2737711))

(assert (=> b!2310410 m!2737219))

(assert (=> b!2310410 m!2737705))

(assert (=> d!683510 m!2737219))

(assert (=> d!683510 m!2737221))

(assert (=> d!683510 m!2737229))

(declare-fun m!2737713 () Bool)

(assert (=> d!683510 m!2737713))

(assert (=> b!2310414 m!2737219))

(assert (=> b!2310414 m!2737705))

(assert (=> b!2310414 m!2737229))

(assert (=> b!2310414 m!2737705))

(declare-fun m!2737715 () Bool)

(assert (=> b!2310414 m!2737715))

(assert (=> b!2310414 m!2737219))

(assert (=> b!2310414 m!2737707))

(assert (=> b!2310414 m!2737715))

(assert (=> b!2310414 m!2737707))

(declare-fun m!2737717 () Bool)

(assert (=> b!2310414 m!2737717))

(assert (=> b!2310416 m!2737219))

(assert (=> b!2310416 m!2737707))

(assert (=> b!2310416 m!2737707))

(assert (=> b!2310416 m!2737709))

(assert (=> bm!137340 m!2737219))

(assert (=> bm!137340 m!2737221))

(assert (=> b!2309984 d!683510))

(declare-fun b!2310489 () Bool)

(declare-fun e!1480818 () Regex!6761)

(declare-fun call!137363 () Regex!6761)

(assert (=> b!2310489 (= e!1480818 (Union!6761 (Concat!11337 call!137363 (regTwo!14034 (regex!4413 r!2363))) EmptyLang!6761))))

(declare-fun bm!137358 () Bool)

(declare-fun call!137366 () Regex!6761)

(assert (=> bm!137358 (= call!137363 call!137366)))

(declare-fun d!683512 () Bool)

(declare-fun lt!857081 () Regex!6761)

(assert (=> d!683512 (validRegex!2558 lt!857081)))

(declare-fun e!1480817 () Regex!6761)

(assert (=> d!683512 (= lt!857081 e!1480817)))

(declare-fun c!366289 () Bool)

(assert (=> d!683512 (= c!366289 (or ((_ is EmptyExpr!6761) (regex!4413 r!2363)) ((_ is EmptyLang!6761) (regex!4413 r!2363))))))

(assert (=> d!683512 (validRegex!2558 (regex!4413 r!2363))))

(assert (=> d!683512 (= (derivativeStep!1556 (regex!4413 r!2363) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456))))) lt!857081)))

(declare-fun b!2310490 () Bool)

(declare-fun call!137365 () Regex!6761)

(assert (=> b!2310490 (= e!1480818 (Union!6761 (Concat!11337 call!137363 (regTwo!14034 (regex!4413 r!2363))) call!137365))))

(declare-fun bm!137359 () Bool)

(declare-fun call!137364 () Regex!6761)

(assert (=> bm!137359 (= call!137366 call!137364)))

(declare-fun b!2310491 () Bool)

(declare-fun c!366288 () Bool)

(assert (=> b!2310491 (= c!366288 (nullable!1896 (regOne!14034 (regex!4413 r!2363))))))

(declare-fun e!1480820 () Regex!6761)

(assert (=> b!2310491 (= e!1480820 e!1480818)))

(declare-fun bm!137360 () Bool)

(declare-fun c!366287 () Bool)

(assert (=> bm!137360 (= call!137365 (derivativeStep!1556 (ite c!366287 (regTwo!14035 (regex!4413 r!2363)) (regTwo!14034 (regex!4413 r!2363))) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))

(declare-fun b!2310492 () Bool)

(assert (=> b!2310492 (= e!1480817 EmptyLang!6761)))

(declare-fun b!2310493 () Bool)

(assert (=> b!2310493 (= c!366287 ((_ is Union!6761) (regex!4413 r!2363)))))

(declare-fun e!1480821 () Regex!6761)

(declare-fun e!1480819 () Regex!6761)

(assert (=> b!2310493 (= e!1480821 e!1480819)))

(declare-fun b!2310494 () Bool)

(assert (=> b!2310494 (= e!1480820 (Concat!11337 call!137366 (regex!4413 r!2363)))))

(declare-fun b!2310495 () Bool)

(assert (=> b!2310495 (= e!1480819 (Union!6761 call!137364 call!137365))))

(declare-fun b!2310496 () Bool)

(assert (=> b!2310496 (= e!1480817 e!1480821)))

(declare-fun c!366291 () Bool)

(assert (=> b!2310496 (= c!366291 ((_ is ElementMatch!6761) (regex!4413 r!2363)))))

(declare-fun b!2310497 () Bool)

(assert (=> b!2310497 (= e!1480821 (ite (= (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456)))) (c!366103 (regex!4413 r!2363))) EmptyExpr!6761 EmptyLang!6761))))

(declare-fun b!2310498 () Bool)

(assert (=> b!2310498 (= e!1480819 e!1480820)))

(declare-fun c!366290 () Bool)

(assert (=> b!2310498 (= c!366290 ((_ is Star!6761) (regex!4413 r!2363)))))

(declare-fun bm!137361 () Bool)

(assert (=> bm!137361 (= call!137364 (derivativeStep!1556 (ite c!366287 (regOne!14035 (regex!4413 r!2363)) (ite c!366290 (reg!7090 (regex!4413 r!2363)) (regOne!14034 (regex!4413 r!2363)))) (head!5072 (list!10864 (charsOf!2801 (head!5070 tokens!456))))))))

(assert (= (and d!683512 c!366289) b!2310492))

(assert (= (and d!683512 (not c!366289)) b!2310496))

(assert (= (and b!2310496 c!366291) b!2310497))

(assert (= (and b!2310496 (not c!366291)) b!2310493))

(assert (= (and b!2310493 c!366287) b!2310495))

(assert (= (and b!2310493 (not c!366287)) b!2310498))

(assert (= (and b!2310498 c!366290) b!2310494))

(assert (= (and b!2310498 (not c!366290)) b!2310491))

(assert (= (and b!2310491 c!366288) b!2310490))

(assert (= (and b!2310491 (not c!366288)) b!2310489))

(assert (= (or b!2310490 b!2310489) bm!137358))

(assert (= (or b!2310494 bm!137358) bm!137359))

(assert (= (or b!2310495 bm!137359) bm!137361))

(assert (= (or b!2310495 b!2310490) bm!137360))

(declare-fun m!2737739 () Bool)

(assert (=> d!683512 m!2737739))

(assert (=> d!683512 m!2737227))

(declare-fun m!2737741 () Bool)

(assert (=> b!2310491 m!2737741))

(assert (=> bm!137360 m!2737217))

(declare-fun m!2737743 () Bool)

(assert (=> bm!137360 m!2737743))

(assert (=> bm!137361 m!2737217))

(declare-fun m!2737745 () Bool)

(assert (=> bm!137361 m!2737745))

(assert (=> b!2309984 d!683512))

(assert (=> b!2309984 d!683346))

(assert (=> b!2309984 d!683508))

(assert (=> d!683282 d!683386))

(declare-fun b!2310499 () Bool)

(declare-fun e!1480823 () List!27591)

(assert (=> b!2310499 (= e!1480823 lt!856990)))

(declare-fun b!2310500 () Bool)

(assert (=> b!2310500 (= e!1480823 (Cons!27497 (h!32898 lt!856866) (++!6735 (t!206925 lt!856866) lt!856990)))))

(declare-fun b!2310501 () Bool)

(declare-fun res!987909 () Bool)

(declare-fun e!1480822 () Bool)

(assert (=> b!2310501 (=> (not res!987909) (not e!1480822))))

(declare-fun lt!857082 () List!27591)

(assert (=> b!2310501 (= res!987909 (= (size!21710 lt!857082) (+ (size!21710 lt!856866) (size!21710 lt!856990))))))

(declare-fun d!683526 () Bool)

(assert (=> d!683526 e!1480822))

(declare-fun res!987910 () Bool)

(assert (=> d!683526 (=> (not res!987910) (not e!1480822))))

(assert (=> d!683526 (= res!987910 (= (content!3719 lt!857082) ((_ map or) (content!3719 lt!856866) (content!3719 lt!856990))))))

(assert (=> d!683526 (= lt!857082 e!1480823)))

(declare-fun c!366292 () Bool)

(assert (=> d!683526 (= c!366292 ((_ is Nil!27497) lt!856866))))

(assert (=> d!683526 (= (++!6735 lt!856866 lt!856990) lt!857082)))

(declare-fun b!2310502 () Bool)

(assert (=> b!2310502 (= e!1480822 (or (not (= lt!856990 Nil!27497)) (= lt!857082 lt!856866)))))

(assert (= (and d!683526 c!366292) b!2310499))

(assert (= (and d!683526 (not c!366292)) b!2310500))

(assert (= (and d!683526 res!987910) b!2310501))

(assert (= (and b!2310501 res!987909) b!2310502))

(declare-fun m!2737747 () Bool)

(assert (=> b!2310500 m!2737747))

(declare-fun m!2737749 () Bool)

(assert (=> b!2310501 m!2737749))

(assert (=> b!2310501 m!2736871))

(declare-fun m!2737751 () Bool)

(assert (=> b!2310501 m!2737751))

(declare-fun m!2737753 () Bool)

(assert (=> d!683526 m!2737753))

(assert (=> d!683526 m!2737339))

(declare-fun m!2737755 () Bool)

(assert (=> d!683526 m!2737755))

(assert (=> d!683302 d!683526))

(assert (=> d!683302 d!683366))

(assert (=> d!683302 d!683298))

(declare-fun bs!458211 () Bool)

(declare-fun d!683528 () Bool)

(assert (= bs!458211 (and d!683528 d!683350)))

(declare-fun lambda!86055 () Int)

(assert (=> bs!458211 (= (and (= (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) (= (toValue!6231 (transformation!4413 (h!32899 rules!1750))) (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) (= lambda!86055 lambda!86049))))

(assert (=> d!683528 true))

(assert (=> d!683528 (< (dynLambda!11964 order!15325 (toChars!6090 (transformation!4413 (h!32899 rules!1750)))) (dynLambda!11965 order!15327 lambda!86055))))

(assert (=> d!683528 true))

(assert (=> d!683528 (< (dynLambda!11962 order!15321 (toValue!6231 (transformation!4413 (h!32899 rules!1750)))) (dynLambda!11965 order!15327 lambda!86055))))

(assert (=> d!683528 (= (semiInverseModEq!1798 (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toValue!6231 (transformation!4413 (h!32899 rules!1750)))) (Forall!1104 lambda!86055))))

(declare-fun bs!458212 () Bool)

(assert (= bs!458212 d!683528))

(declare-fun m!2737757 () Bool)

(assert (=> bs!458212 m!2737757))

(assert (=> d!683292 d!683528))

(assert (=> d!683234 d!683400))

(assert (=> b!2309982 d!683506))

(assert (=> b!2309982 d!683508))

(declare-fun d!683530 () Bool)

(assert (=> d!683530 (= (isEmpty!15736 lt!857012) (not ((_ is Some!5412) lt!857012)))))

(assert (=> d!683314 d!683530))

(declare-fun b!2310510 () Bool)

(declare-fun res!987920 () Bool)

(declare-fun e!1480832 () Bool)

(assert (=> b!2310510 (=> (not res!987920) (not e!1480832))))

(assert (=> b!2310510 (= res!987920 (= (head!5072 input!1722) (head!5072 input!1722)))))

(declare-fun b!2310512 () Bool)

(declare-fun e!1480830 () Bool)

(assert (=> b!2310512 (= e!1480830 (>= (size!21710 input!1722) (size!21710 input!1722)))))

(declare-fun b!2310511 () Bool)

(assert (=> b!2310511 (= e!1480832 (isPrefix!2403 (tail!3339 input!1722) (tail!3339 input!1722)))))

(declare-fun b!2310509 () Bool)

(declare-fun e!1480828 () Bool)

(assert (=> b!2310509 (= e!1480828 e!1480832)))

(declare-fun res!987919 () Bool)

(assert (=> b!2310509 (=> (not res!987919) (not e!1480832))))

(assert (=> b!2310509 (= res!987919 (not ((_ is Nil!27497) input!1722)))))

(declare-fun d!683532 () Bool)

(assert (=> d!683532 e!1480830))

(declare-fun res!987918 () Bool)

(assert (=> d!683532 (=> res!987918 e!1480830)))

(declare-fun lt!857083 () Bool)

(assert (=> d!683532 (= res!987918 (not lt!857083))))

(assert (=> d!683532 (= lt!857083 e!1480828)))

(declare-fun res!987916 () Bool)

(assert (=> d!683532 (=> res!987916 e!1480828)))

(assert (=> d!683532 (= res!987916 ((_ is Nil!27497) input!1722))))

(assert (=> d!683532 (= (isPrefix!2403 input!1722 input!1722) lt!857083)))

(assert (= (and d!683532 (not res!987916)) b!2310509))

(assert (= (and b!2310509 res!987919) b!2310510))

(assert (= (and b!2310510 res!987920) b!2310511))

(assert (= (and d!683532 (not res!987918)) b!2310512))

(assert (=> b!2310510 m!2737303))

(assert (=> b!2310510 m!2737303))

(assert (=> b!2310512 m!2737305))

(assert (=> b!2310512 m!2737305))

(assert (=> b!2310511 m!2737307))

(assert (=> b!2310511 m!2737307))

(assert (=> b!2310511 m!2737307))

(assert (=> b!2310511 m!2737307))

(declare-fun m!2737763 () Bool)

(assert (=> b!2310511 m!2737763))

(assert (=> d!683314 d!683532))

(declare-fun d!683536 () Bool)

(assert (=> d!683536 (isPrefix!2403 input!1722 input!1722)))

(declare-fun lt!857086 () Unit!40423)

(declare-fun choose!13512 (List!27591 List!27591) Unit!40423)

(assert (=> d!683536 (= lt!857086 (choose!13512 input!1722 input!1722))))

(assert (=> d!683536 (= (lemmaIsPrefixRefl!1529 input!1722 input!1722) lt!857086)))

(declare-fun bs!458213 () Bool)

(assert (= bs!458213 d!683536))

(assert (=> bs!458213 m!2737365))

(declare-fun m!2737777 () Bool)

(assert (=> bs!458213 m!2737777))

(assert (=> d!683314 d!683536))

(declare-fun bs!458216 () Bool)

(declare-fun d!683540 () Bool)

(assert (= bs!458216 (and d!683540 d!683338)))

(declare-fun lambda!86058 () Int)

(assert (=> bs!458216 (= lambda!86058 lambda!86043)))

(assert (=> d!683540 true))

(declare-fun lt!857092 () Bool)

(assert (=> d!683540 (= lt!857092 (forall!5508 rules!1750 lambda!86058))))

(declare-fun e!1480839 () Bool)

(assert (=> d!683540 (= lt!857092 e!1480839)))

(declare-fun res!987927 () Bool)

(assert (=> d!683540 (=> res!987927 e!1480839)))

(assert (=> d!683540 (= res!987927 (not ((_ is Cons!27498) rules!1750)))))

(assert (=> d!683540 (= (rulesValidInductive!1567 thiss!16613 rules!1750) lt!857092)))

(declare-fun b!2310520 () Bool)

(declare-fun e!1480840 () Bool)

(assert (=> b!2310520 (= e!1480839 e!1480840)))

(declare-fun res!987928 () Bool)

(assert (=> b!2310520 (=> (not res!987928) (not e!1480840))))

(assert (=> b!2310520 (= res!987928 (ruleValid!1503 thiss!16613 (h!32899 rules!1750)))))

(declare-fun b!2310521 () Bool)

(assert (=> b!2310521 (= e!1480840 (rulesValidInductive!1567 thiss!16613 (t!206926 rules!1750)))))

(assert (= (and d!683540 (not res!987927)) b!2310520))

(assert (= (and b!2310520 res!987928) b!2310521))

(declare-fun m!2737785 () Bool)

(assert (=> d!683540 m!2737785))

(declare-fun m!2737787 () Bool)

(assert (=> b!2310520 m!2737787))

(assert (=> b!2310521 m!2737433))

(assert (=> d!683314 d!683540))

(declare-fun bs!458219 () Bool)

(declare-fun d!683556 () Bool)

(assert (= bs!458219 (and d!683556 d!683350)))

(declare-fun lambda!86059 () Int)

(assert (=> bs!458219 (= (and (= (toChars!6090 (transformation!4413 otherR!12)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) (= (toValue!6231 (transformation!4413 otherR!12)) (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) (= lambda!86059 lambda!86049))))

(declare-fun bs!458220 () Bool)

(assert (= bs!458220 (and d!683556 d!683528)))

(assert (=> bs!458220 (= (and (= (toChars!6090 (transformation!4413 otherR!12)) (toChars!6090 (transformation!4413 (h!32899 rules!1750)))) (= (toValue!6231 (transformation!4413 otherR!12)) (toValue!6231 (transformation!4413 (h!32899 rules!1750))))) (= lambda!86059 lambda!86055))))

(assert (=> d!683556 true))

(assert (=> d!683556 (< (dynLambda!11964 order!15325 (toChars!6090 (transformation!4413 otherR!12))) (dynLambda!11965 order!15327 lambda!86059))))

(assert (=> d!683556 true))

(assert (=> d!683556 (< (dynLambda!11962 order!15321 (toValue!6231 (transformation!4413 otherR!12))) (dynLambda!11965 order!15327 lambda!86059))))

(assert (=> d!683556 (= (semiInverseModEq!1798 (toChars!6090 (transformation!4413 otherR!12)) (toValue!6231 (transformation!4413 otherR!12))) (Forall!1104 lambda!86059))))

(declare-fun bs!458221 () Bool)

(assert (= bs!458221 d!683556))

(declare-fun m!2737793 () Bool)

(assert (=> bs!458221 m!2737793))

(assert (=> d!683238 d!683556))

(assert (=> b!2310078 d!683366))

(assert (=> b!2310078 d!683268))

(declare-fun d!683564 () Bool)

(declare-fun c!366296 () Bool)

(assert (=> d!683564 (= c!366296 ((_ is Node!8974) (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456))))))))

(declare-fun e!1480848 () Bool)

(assert (=> d!683564 (= (inv!37148 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456))))) e!1480848)))

(declare-fun b!2310532 () Bool)

(declare-fun inv!37152 (Conc!8974) Bool)

(assert (=> b!2310532 (= e!1480848 (inv!37152 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456))))))))

(declare-fun b!2310533 () Bool)

(declare-fun e!1480849 () Bool)

(assert (=> b!2310533 (= e!1480848 e!1480849)))

(declare-fun res!987933 () Bool)

(assert (=> b!2310533 (= res!987933 (not ((_ is Leaf!13166) (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456)))))))))

(assert (=> b!2310533 (=> res!987933 e!1480849)))

(declare-fun b!2310534 () Bool)

(declare-fun inv!37153 (Conc!8974) Bool)

(assert (=> b!2310534 (= e!1480849 (inv!37153 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456))))))))

(assert (= (and d!683564 c!366296) b!2310532))

(assert (= (and d!683564 (not c!366296)) b!2310533))

(assert (= (and b!2310533 (not res!987933)) b!2310534))

(declare-fun m!2737795 () Bool)

(assert (=> b!2310532 m!2737795))

(declare-fun m!2737797 () Bool)

(assert (=> b!2310534 m!2737797))

(assert (=> b!2309950 d!683564))

(declare-fun b!2310537 () Bool)

(declare-fun e!1480851 () List!27591)

(assert (=> b!2310537 (= e!1480851 (_2!16227 (get!8291 lt!857012)))))

(declare-fun b!2310538 () Bool)

(assert (=> b!2310538 (= e!1480851 (Cons!27497 (h!32898 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))) (++!6735 (t!206925 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))) (_2!16227 (get!8291 lt!857012)))))))

(declare-fun b!2310539 () Bool)

(declare-fun res!987934 () Bool)

(declare-fun e!1480850 () Bool)

(assert (=> b!2310539 (=> (not res!987934) (not e!1480850))))

(declare-fun lt!857094 () List!27591)

(assert (=> b!2310539 (= res!987934 (= (size!21710 lt!857094) (+ (size!21710 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))) (size!21710 (_2!16227 (get!8291 lt!857012))))))))

(declare-fun d!683566 () Bool)

(assert (=> d!683566 e!1480850))

(declare-fun res!987935 () Bool)

(assert (=> d!683566 (=> (not res!987935) (not e!1480850))))

(assert (=> d!683566 (= res!987935 (= (content!3719 lt!857094) ((_ map or) (content!3719 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))) (content!3719 (_2!16227 (get!8291 lt!857012))))))))

(assert (=> d!683566 (= lt!857094 e!1480851)))

(declare-fun c!366297 () Bool)

(assert (=> d!683566 (= c!366297 ((_ is Nil!27497) (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012))))))))

(assert (=> d!683566 (= (++!6735 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012)))) (_2!16227 (get!8291 lt!857012))) lt!857094)))

(declare-fun b!2310540 () Bool)

(assert (=> b!2310540 (= e!1480850 (or (not (= (_2!16227 (get!8291 lt!857012)) Nil!27497)) (= lt!857094 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857012)))))))))

(assert (= (and d!683566 c!366297) b!2310537))

(assert (= (and d!683566 (not c!366297)) b!2310538))

(assert (= (and d!683566 res!987935) b!2310539))

(assert (= (and b!2310539 res!987934) b!2310540))

(declare-fun m!2737801 () Bool)

(assert (=> b!2310538 m!2737801))

(declare-fun m!2737803 () Bool)

(assert (=> b!2310539 m!2737803))

(assert (=> b!2310539 m!2737355))

(declare-fun m!2737805 () Bool)

(assert (=> b!2310539 m!2737805))

(assert (=> b!2310539 m!2737361))

(declare-fun m!2737807 () Bool)

(assert (=> d!683566 m!2737807))

(assert (=> d!683566 m!2737355))

(declare-fun m!2737809 () Bool)

(assert (=> d!683566 m!2737809))

(declare-fun m!2737811 () Bool)

(assert (=> d!683566 m!2737811))

(assert (=> b!2310125 d!683566))

(assert (=> b!2310125 d!683404))

(assert (=> b!2310125 d!683406))

(assert (=> b!2310125 d!683364))

(declare-fun b!2310542 () Bool)

(declare-fun res!987939 () Bool)

(declare-fun e!1480854 () Bool)

(assert (=> b!2310542 (=> (not res!987939) (not e!1480854))))

(assert (=> b!2310542 (= res!987939 (= (head!5072 (tail!3339 lt!856866)) (head!5072 (tail!3339 (++!6735 lt!856866 (_2!16227 lt!856871))))))))

(declare-fun b!2310544 () Bool)

(declare-fun e!1480853 () Bool)

(assert (=> b!2310544 (= e!1480853 (>= (size!21710 (tail!3339 (++!6735 lt!856866 (_2!16227 lt!856871)))) (size!21710 (tail!3339 lt!856866))))))

(declare-fun b!2310543 () Bool)

(assert (=> b!2310543 (= e!1480854 (isPrefix!2403 (tail!3339 (tail!3339 lt!856866)) (tail!3339 (tail!3339 (++!6735 lt!856866 (_2!16227 lt!856871))))))))

(declare-fun b!2310541 () Bool)

(declare-fun e!1480852 () Bool)

(assert (=> b!2310541 (= e!1480852 e!1480854)))

(declare-fun res!987938 () Bool)

(assert (=> b!2310541 (=> (not res!987938) (not e!1480854))))

(assert (=> b!2310541 (= res!987938 (not ((_ is Nil!27497) (tail!3339 (++!6735 lt!856866 (_2!16227 lt!856871))))))))

(declare-fun d!683570 () Bool)

(assert (=> d!683570 e!1480853))

(declare-fun res!987937 () Bool)

(assert (=> d!683570 (=> res!987937 e!1480853)))

(declare-fun lt!857095 () Bool)

(assert (=> d!683570 (= res!987937 (not lt!857095))))

(assert (=> d!683570 (= lt!857095 e!1480852)))

(declare-fun res!987936 () Bool)

(assert (=> d!683570 (=> res!987936 e!1480852)))

(assert (=> d!683570 (= res!987936 ((_ is Nil!27497) (tail!3339 lt!856866)))))

(assert (=> d!683570 (= (isPrefix!2403 (tail!3339 lt!856866) (tail!3339 (++!6735 lt!856866 (_2!16227 lt!856871)))) lt!857095)))

(assert (= (and d!683570 (not res!987936)) b!2310541))

(assert (= (and b!2310541 res!987938) b!2310542))

(assert (= (and b!2310542 res!987939) b!2310543))

(assert (= (and d!683570 (not res!987937)) b!2310544))

(assert (=> b!2310542 m!2737321))

(declare-fun m!2737813 () Bool)

(assert (=> b!2310542 m!2737813))

(assert (=> b!2310542 m!2737323))

(declare-fun m!2737817 () Bool)

(assert (=> b!2310542 m!2737817))

(assert (=> b!2310544 m!2737323))

(declare-fun m!2737819 () Bool)

(assert (=> b!2310544 m!2737819))

(assert (=> b!2310544 m!2737321))

(declare-fun m!2737821 () Bool)

(assert (=> b!2310544 m!2737821))

(assert (=> b!2310543 m!2737321))

(declare-fun m!2737823 () Bool)

(assert (=> b!2310543 m!2737823))

(assert (=> b!2310543 m!2737323))

(declare-fun m!2737825 () Bool)

(assert (=> b!2310543 m!2737825))

(assert (=> b!2310543 m!2737823))

(assert (=> b!2310543 m!2737825))

(declare-fun m!2737827 () Bool)

(assert (=> b!2310543 m!2737827))

(assert (=> b!2310083 d!683570))

(declare-fun d!683576 () Bool)

(assert (=> d!683576 (= (tail!3339 lt!856866) (t!206925 lt!856866))))

(assert (=> b!2310083 d!683576))

(declare-fun d!683578 () Bool)

(assert (=> d!683578 (= (tail!3339 (++!6735 lt!856866 (_2!16227 lt!856871))) (t!206925 (++!6735 lt!856866 (_2!16227 lt!856871))))))

(assert (=> b!2310083 d!683578))

(declare-fun d!683580 () Bool)

(declare-fun lt!857096 () Int)

(assert (=> d!683580 (>= lt!857096 0)))

(declare-fun e!1480857 () Int)

(assert (=> d!683580 (= lt!857096 e!1480857)))

(declare-fun c!366300 () Bool)

(assert (=> d!683580 (= c!366300 ((_ is Nil!27497) (t!206925 otherP!12)))))

(assert (=> d!683580 (= (size!21710 (t!206925 otherP!12)) lt!857096)))

(declare-fun b!2310549 () Bool)

(assert (=> b!2310549 (= e!1480857 0)))

(declare-fun b!2310550 () Bool)

(assert (=> b!2310550 (= e!1480857 (+ 1 (size!21710 (t!206925 (t!206925 otherP!12)))))))

(assert (= (and d!683580 c!366300) b!2310549))

(assert (= (and d!683580 (not c!366300)) b!2310550))

(declare-fun m!2737835 () Bool)

(assert (=> b!2310550 m!2737835))

(assert (=> b!2310006 d!683580))

(assert (=> b!2310076 d!683332))

(declare-fun d!683582 () Bool)

(assert (=> d!683582 (= (head!5072 input!1722) (h!32898 input!1722))))

(assert (=> b!2310076 d!683582))

(assert (=> b!2310056 d!683446))

(assert (=> b!2310123 d!683364))

(declare-fun d!683584 () Bool)

(declare-fun dynLambda!11971 (Int BalanceConc!17676) TokenValue!4575)

(assert (=> d!683584 (= (apply!6675 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))) (seqFromList!3117 (originalCharacters!5183 (_1!16227 (get!8291 lt!857012))))) (dynLambda!11971 (toValue!6231 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012))))) (seqFromList!3117 (originalCharacters!5183 (_1!16227 (get!8291 lt!857012))))))))

(declare-fun b_lambda!73663 () Bool)

(assert (=> (not b_lambda!73663) (not d!683584)))

(declare-fun t!207032 () Bool)

(declare-fun tb!138641 () Bool)

(assert (=> (and b!2310162 (= (toValue!6231 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (toValue!6231 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!207032) tb!138641))

(declare-fun result!168964 () Bool)

(assert (=> tb!138641 (= result!168964 (inv!21 (dynLambda!11971 (toValue!6231 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012))))) (seqFromList!3117 (originalCharacters!5183 (_1!16227 (get!8291 lt!857012)))))))))

(declare-fun m!2737841 () Bool)

(assert (=> tb!138641 m!2737841))

(assert (=> d!683584 t!207032))

(declare-fun b_and!184859 () Bool)

(assert (= b_and!184801 (and (=> t!207032 result!168964) b_and!184859)))

(declare-fun t!207036 () Bool)

(declare-fun tb!138645 () Bool)

(assert (=> (and b!2309640 (= (toValue!6231 (transformation!4413 r!2363)) (toValue!6231 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!207036) tb!138645))

(declare-fun result!168972 () Bool)

(assert (= result!168972 result!168964))

(assert (=> d!683584 t!207036))

(declare-fun b_and!184863 () Bool)

(assert (= b_and!184741 (and (=> t!207036 result!168972) b_and!184863)))

(declare-fun t!207040 () Bool)

(declare-fun tb!138649 () Bool)

(assert (=> (and b!2310188 (= (toValue!6231 (transformation!4413 (h!32899 (t!206926 rules!1750)))) (toValue!6231 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!207040) tb!138649))

(declare-fun result!168974 () Bool)

(assert (= result!168974 result!168964))

(assert (=> d!683584 t!207040))

(declare-fun b_and!184865 () Bool)

(assert (= b_and!184805 (and (=> t!207040 result!168974) b_and!184865)))

(declare-fun t!207042 () Bool)

(declare-fun tb!138651 () Bool)

(assert (=> (and b!2309613 (= (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toValue!6231 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!207042) tb!138651))

(declare-fun result!168978 () Bool)

(assert (= result!168978 result!168964))

(assert (=> d!683584 t!207042))

(declare-fun b_and!184869 () Bool)

(assert (= b_and!184737 (and (=> t!207042 result!168978) b_and!184869)))

(declare-fun tb!138655 () Bool)

(declare-fun t!207046 () Bool)

(assert (=> (and b!2309639 (= (toValue!6231 (transformation!4413 (h!32899 rules!1750))) (toValue!6231 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!207046) tb!138655))

(declare-fun result!168982 () Bool)

(assert (= result!168982 result!168964))

(assert (=> d!683584 t!207046))

(declare-fun b_and!184873 () Bool)

(assert (= b_and!184733 (and (=> t!207046 result!168982) b_and!184873)))

(declare-fun tb!138659 () Bool)

(declare-fun t!207050 () Bool)

(assert (=> (and b!2309634 (= (toValue!6231 (transformation!4413 otherR!12)) (toValue!6231 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!207050) tb!138659))

(declare-fun result!168986 () Bool)

(assert (= result!168986 result!168964))

(assert (=> d!683584 t!207050))

(declare-fun b_and!184877 () Bool)

(assert (= b_and!184729 (and (=> t!207050 result!168986) b_and!184877)))

(assert (=> d!683584 m!2737373))

(declare-fun m!2737843 () Bool)

(assert (=> d!683584 m!2737843))

(assert (=> b!2310123 d!683584))

(declare-fun d!683588 () Bool)

(assert (=> d!683588 (= (seqFromList!3117 (originalCharacters!5183 (_1!16227 (get!8291 lt!857012)))) (fromListB!1408 (originalCharacters!5183 (_1!16227 (get!8291 lt!857012)))))))

(declare-fun bs!458226 () Bool)

(assert (= bs!458226 d!683588))

(declare-fun m!2737847 () Bool)

(assert (=> bs!458226 m!2737847))

(assert (=> b!2310123 d!683588))

(assert (=> b!2310058 d!683324))

(declare-fun d!683592 () Bool)

(assert (=> d!683592 (= (inv!37149 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456)))) (isBalanced!2695 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456))))))))

(declare-fun bs!458228 () Bool)

(assert (= bs!458228 d!683592))

(declare-fun m!2737851 () Bool)

(assert (=> bs!458228 m!2737851))

(assert (=> tb!138575 d!683592))

(declare-fun d!683600 () Bool)

(declare-fun c!366307 () Bool)

(assert (=> d!683600 (= c!366307 ((_ is Nil!27497) lt!856993))))

(declare-fun e!1480870 () (InoxSet C!13668))

(assert (=> d!683600 (= (content!3719 lt!856993) e!1480870)))

(declare-fun b!2310567 () Bool)

(assert (=> b!2310567 (= e!1480870 ((as const (Array C!13668 Bool)) false))))

(declare-fun b!2310568 () Bool)

(assert (=> b!2310568 (= e!1480870 ((_ map or) (store ((as const (Array C!13668 Bool)) false) (h!32898 lt!856993) true) (content!3719 (t!206925 lt!856993))))))

(assert (= (and d!683600 c!366307) b!2310567))

(assert (= (and d!683600 (not c!366307)) b!2310568))

(declare-fun m!2737853 () Bool)

(assert (=> b!2310568 m!2737853))

(declare-fun m!2737855 () Bool)

(assert (=> b!2310568 m!2737855))

(assert (=> d!683304 d!683600))

(declare-fun d!683602 () Bool)

(declare-fun c!366308 () Bool)

(assert (=> d!683602 (= c!366308 ((_ is Nil!27497) lt!856866))))

(declare-fun e!1480871 () (InoxSet C!13668))

(assert (=> d!683602 (= (content!3719 lt!856866) e!1480871)))

(declare-fun b!2310569 () Bool)

(assert (=> b!2310569 (= e!1480871 ((as const (Array C!13668 Bool)) false))))

(declare-fun b!2310570 () Bool)

(assert (=> b!2310570 (= e!1480871 ((_ map or) (store ((as const (Array C!13668 Bool)) false) (h!32898 lt!856866) true) (content!3719 (t!206925 lt!856866))))))

(assert (= (and d!683602 c!366308) b!2310569))

(assert (= (and d!683602 (not c!366308)) b!2310570))

(declare-fun m!2737857 () Bool)

(assert (=> b!2310570 m!2737857))

(declare-fun m!2737859 () Bool)

(assert (=> b!2310570 m!2737859))

(assert (=> d!683304 d!683602))

(declare-fun d!683604 () Bool)

(declare-fun c!366309 () Bool)

(assert (=> d!683604 (= c!366309 ((_ is Nil!27497) (_2!16227 lt!856871)))))

(declare-fun e!1480872 () (InoxSet C!13668))

(assert (=> d!683604 (= (content!3719 (_2!16227 lt!856871)) e!1480872)))

(declare-fun b!2310571 () Bool)

(assert (=> b!2310571 (= e!1480872 ((as const (Array C!13668 Bool)) false))))

(declare-fun b!2310572 () Bool)

(assert (=> b!2310572 (= e!1480872 ((_ map or) (store ((as const (Array C!13668 Bool)) false) (h!32898 (_2!16227 lt!856871)) true) (content!3719 (t!206925 (_2!16227 lt!856871)))))))

(assert (= (and d!683604 c!366309) b!2310571))

(assert (= (and d!683604 (not c!366309)) b!2310572))

(declare-fun m!2737861 () Bool)

(assert (=> b!2310572 m!2737861))

(declare-fun m!2737863 () Bool)

(assert (=> b!2310572 m!2737863))

(assert (=> d!683304 d!683604))

(declare-fun d!683606 () Bool)

(declare-fun charsToBigInt!0 (List!27590 Int) Int)

(assert (=> d!683606 (= (inv!15 (value!139590 (h!32900 tokens!456))) (= (charsToBigInt!0 (text!32474 (value!139590 (h!32900 tokens!456))) 0) (value!139585 (value!139590 (h!32900 tokens!456)))))))

(declare-fun bs!458230 () Bool)

(assert (= bs!458230 d!683606))

(declare-fun m!2737875 () Bool)

(assert (=> bs!458230 m!2737875))

(assert (=> b!2310033 d!683606))

(declare-fun b!2310742 () Bool)

(declare-fun e!1480966 () Bool)

(declare-datatypes ((tuple2!27440 0))(
  ( (tuple2!27441 (_1!16230 List!27591) (_2!16230 List!27591)) )
))
(declare-fun findLongestMatchInner!740 (Regex!6761 List!27591 Int List!27591 List!27591 Int) tuple2!27440)

(assert (=> b!2310742 (= e!1480966 (matchR!3018 (regex!4413 (h!32899 rules!1750)) (_1!16230 (findLongestMatchInner!740 (regex!4413 (h!32899 rules!1750)) Nil!27497 (size!21710 Nil!27497) input!1722 input!1722 (size!21710 input!1722)))))))

(declare-fun b!2310743 () Bool)

(declare-fun e!1480968 () Bool)

(declare-fun e!1480969 () Bool)

(assert (=> b!2310743 (= e!1480968 e!1480969)))

(declare-fun res!988020 () Bool)

(assert (=> b!2310743 (=> (not res!988020) (not e!1480969))))

(declare-fun lt!857143 () Option!5413)

(assert (=> b!2310743 (= res!988020 (matchR!3018 (regex!4413 (h!32899 rules!1750)) (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857143))))))))

(declare-fun b!2310744 () Bool)

(declare-fun e!1480967 () Option!5413)

(declare-fun lt!857142 () tuple2!27440)

(assert (=> b!2310744 (= e!1480967 (Some!5412 (tuple2!27435 (Token!8305 (apply!6675 (transformation!4413 (h!32899 rules!1750)) (seqFromList!3117 (_1!16230 lt!857142))) (h!32899 rules!1750) (size!21709 (seqFromList!3117 (_1!16230 lt!857142))) (_1!16230 lt!857142)) (_2!16230 lt!857142))))))

(declare-fun lt!857141 () Unit!40423)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!713 (Regex!6761 List!27591) Unit!40423)

(assert (=> b!2310744 (= lt!857141 (longestMatchIsAcceptedByMatchOrIsEmpty!713 (regex!4413 (h!32899 rules!1750)) input!1722))))

(declare-fun res!988017 () Bool)

(assert (=> b!2310744 (= res!988017 (isEmpty!15734 (_1!16230 (findLongestMatchInner!740 (regex!4413 (h!32899 rules!1750)) Nil!27497 (size!21710 Nil!27497) input!1722 input!1722 (size!21710 input!1722)))))))

(assert (=> b!2310744 (=> res!988017 e!1480966)))

(assert (=> b!2310744 e!1480966))

(declare-fun lt!857139 () Unit!40423)

(assert (=> b!2310744 (= lt!857139 lt!857141)))

(declare-fun lt!857140 () Unit!40423)

(declare-fun lemmaSemiInverse!1091 (TokenValueInjection!8690 BalanceConc!17676) Unit!40423)

(assert (=> b!2310744 (= lt!857140 (lemmaSemiInverse!1091 (transformation!4413 (h!32899 rules!1750)) (seqFromList!3117 (_1!16230 lt!857142))))))

(declare-fun b!2310745 () Bool)

(declare-fun res!988021 () Bool)

(assert (=> b!2310745 (=> (not res!988021) (not e!1480969))))

(assert (=> b!2310745 (= res!988021 (< (size!21710 (_2!16227 (get!8291 lt!857143))) (size!21710 input!1722)))))

(declare-fun b!2310746 () Bool)

(assert (=> b!2310746 (= e!1480969 (= (size!21708 (_1!16227 (get!8291 lt!857143))) (size!21710 (originalCharacters!5183 (_1!16227 (get!8291 lt!857143))))))))

(declare-fun b!2310747 () Bool)

(assert (=> b!2310747 (= e!1480967 None!5412)))

(declare-fun b!2310748 () Bool)

(declare-fun res!988015 () Bool)

(assert (=> b!2310748 (=> (not res!988015) (not e!1480969))))

(assert (=> b!2310748 (= res!988015 (= (rule!6767 (_1!16227 (get!8291 lt!857143))) (h!32899 rules!1750)))))

(declare-fun d!683614 () Bool)

(assert (=> d!683614 e!1480968))

(declare-fun res!988019 () Bool)

(assert (=> d!683614 (=> res!988019 e!1480968)))

(assert (=> d!683614 (= res!988019 (isEmpty!15736 lt!857143))))

(assert (=> d!683614 (= lt!857143 e!1480967)))

(declare-fun c!366357 () Bool)

(assert (=> d!683614 (= c!366357 (isEmpty!15734 (_1!16230 lt!857142)))))

(declare-fun findLongestMatch!669 (Regex!6761 List!27591) tuple2!27440)

(assert (=> d!683614 (= lt!857142 (findLongestMatch!669 (regex!4413 (h!32899 rules!1750)) input!1722))))

(assert (=> d!683614 (ruleValid!1503 thiss!16613 (h!32899 rules!1750))))

(assert (=> d!683614 (= (maxPrefixOneRule!1436 thiss!16613 (h!32899 rules!1750) input!1722) lt!857143)))

(declare-fun b!2310749 () Bool)

(declare-fun res!988016 () Bool)

(assert (=> b!2310749 (=> (not res!988016) (not e!1480969))))

(assert (=> b!2310749 (= res!988016 (= (value!139590 (_1!16227 (get!8291 lt!857143))) (apply!6675 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857143)))) (seqFromList!3117 (originalCharacters!5183 (_1!16227 (get!8291 lt!857143)))))))))

(declare-fun b!2310750 () Bool)

(declare-fun res!988018 () Bool)

(assert (=> b!2310750 (=> (not res!988018) (not e!1480969))))

(assert (=> b!2310750 (= res!988018 (= (++!6735 (list!10864 (charsOf!2801 (_1!16227 (get!8291 lt!857143)))) (_2!16227 (get!8291 lt!857143))) input!1722))))

(assert (= (and d!683614 c!366357) b!2310747))

(assert (= (and d!683614 (not c!366357)) b!2310744))

(assert (= (and b!2310744 (not res!988017)) b!2310742))

(assert (= (and d!683614 (not res!988019)) b!2310743))

(assert (= (and b!2310743 res!988020) b!2310750))

(assert (= (and b!2310750 res!988018) b!2310745))

(assert (= (and b!2310745 res!988021) b!2310748))

(assert (= (and b!2310748 res!988015) b!2310749))

(assert (= (and b!2310749 res!988016) b!2310746))

(declare-fun m!2738059 () Bool)

(assert (=> d!683614 m!2738059))

(declare-fun m!2738061 () Bool)

(assert (=> d!683614 m!2738061))

(declare-fun m!2738063 () Bool)

(assert (=> d!683614 m!2738063))

(assert (=> d!683614 m!2737787))

(declare-fun m!2738065 () Bool)

(assert (=> b!2310750 m!2738065))

(declare-fun m!2738067 () Bool)

(assert (=> b!2310750 m!2738067))

(assert (=> b!2310750 m!2738067))

(declare-fun m!2738069 () Bool)

(assert (=> b!2310750 m!2738069))

(assert (=> b!2310750 m!2738069))

(declare-fun m!2738071 () Bool)

(assert (=> b!2310750 m!2738071))

(assert (=> b!2310746 m!2738065))

(declare-fun m!2738073 () Bool)

(assert (=> b!2310746 m!2738073))

(declare-fun m!2738075 () Bool)

(assert (=> b!2310744 m!2738075))

(declare-fun m!2738077 () Bool)

(assert (=> b!2310744 m!2738077))

(declare-fun m!2738079 () Bool)

(assert (=> b!2310744 m!2738079))

(assert (=> b!2310744 m!2738075))

(assert (=> b!2310744 m!2737305))

(declare-fun m!2738081 () Bool)

(assert (=> b!2310744 m!2738081))

(assert (=> b!2310744 m!2738077))

(declare-fun m!2738083 () Bool)

(assert (=> b!2310744 m!2738083))

(assert (=> b!2310744 m!2738077))

(declare-fun m!2738085 () Bool)

(assert (=> b!2310744 m!2738085))

(assert (=> b!2310744 m!2737305))

(declare-fun m!2738087 () Bool)

(assert (=> b!2310744 m!2738087))

(declare-fun m!2738089 () Bool)

(assert (=> b!2310744 m!2738089))

(assert (=> b!2310744 m!2738077))

(assert (=> b!2310748 m!2738065))

(assert (=> b!2310743 m!2738065))

(assert (=> b!2310743 m!2738067))

(assert (=> b!2310743 m!2738067))

(assert (=> b!2310743 m!2738069))

(assert (=> b!2310743 m!2738069))

(declare-fun m!2738091 () Bool)

(assert (=> b!2310743 m!2738091))

(assert (=> b!2310749 m!2738065))

(declare-fun m!2738093 () Bool)

(assert (=> b!2310749 m!2738093))

(assert (=> b!2310749 m!2738093))

(declare-fun m!2738095 () Bool)

(assert (=> b!2310749 m!2738095))

(assert (=> b!2310742 m!2738075))

(assert (=> b!2310742 m!2737305))

(assert (=> b!2310742 m!2738075))

(assert (=> b!2310742 m!2737305))

(assert (=> b!2310742 m!2738081))

(declare-fun m!2738097 () Bool)

(assert (=> b!2310742 m!2738097))

(assert (=> b!2310745 m!2738065))

(declare-fun m!2738099 () Bool)

(assert (=> b!2310745 m!2738099))

(assert (=> b!2310745 m!2737305))

(assert (=> bm!137325 d!683614))

(declare-fun d!683686 () Bool)

(assert (=> d!683686 (= (isEmpty!15734 (tail!3339 otherP!12)) ((_ is Nil!27497) (tail!3339 otherP!12)))))

(assert (=> b!2310010 d!683686))

(assert (=> b!2310010 d!683374))

(declare-fun d!683688 () Bool)

(declare-fun charsToBigInt!1 (List!27590) Int)

(assert (=> d!683688 (= (inv!17 (value!139590 (h!32900 tokens!456))) (= (charsToBigInt!1 (text!32473 (value!139590 (h!32900 tokens!456)))) (value!139582 (value!139590 (h!32900 tokens!456)))))))

(declare-fun bs!458243 () Bool)

(assert (= bs!458243 d!683688))

(declare-fun m!2738101 () Bool)

(assert (=> bs!458243 m!2738101))

(assert (=> b!2310031 d!683688))

(declare-fun d!683690 () Bool)

(declare-fun lt!857144 () Bool)

(assert (=> d!683690 (= lt!857144 (select (content!3717 rules!1750) (rule!6767 (_1!16227 (get!8291 lt!857012)))))))

(declare-fun e!1480970 () Bool)

(assert (=> d!683690 (= lt!857144 e!1480970)))

(declare-fun res!988023 () Bool)

(assert (=> d!683690 (=> (not res!988023) (not e!1480970))))

(assert (=> d!683690 (= res!988023 ((_ is Cons!27498) rules!1750))))

(assert (=> d!683690 (= (contains!4803 rules!1750 (rule!6767 (_1!16227 (get!8291 lt!857012)))) lt!857144)))

(declare-fun b!2310751 () Bool)

(declare-fun e!1480971 () Bool)

(assert (=> b!2310751 (= e!1480970 e!1480971)))

(declare-fun res!988022 () Bool)

(assert (=> b!2310751 (=> res!988022 e!1480971)))

(assert (=> b!2310751 (= res!988022 (= (h!32899 rules!1750) (rule!6767 (_1!16227 (get!8291 lt!857012)))))))

(declare-fun b!2310752 () Bool)

(assert (=> b!2310752 (= e!1480971 (contains!4803 (t!206926 rules!1750) (rule!6767 (_1!16227 (get!8291 lt!857012)))))))

(assert (= (and d!683690 res!988023) b!2310751))

(assert (= (and b!2310751 (not res!988022)) b!2310752))

(assert (=> d!683690 m!2737195))

(declare-fun m!2738103 () Bool)

(assert (=> d!683690 m!2738103))

(declare-fun m!2738105 () Bool)

(assert (=> b!2310752 m!2738105))

(assert (=> b!2310128 d!683690))

(assert (=> b!2310128 d!683364))

(assert (=> b!2310008 d!683332))

(declare-fun d!683692 () Bool)

(assert (=> d!683692 (= (list!10864 lt!856997) (list!10869 (c!366102 lt!856997)))))

(declare-fun bs!458244 () Bool)

(assert (= bs!458244 d!683692))

(declare-fun m!2738107 () Bool)

(assert (=> bs!458244 m!2738107))

(assert (=> d!683310 d!683692))

(declare-fun b!2310761 () Bool)

(declare-fun e!1480976 () List!27593)

(assert (=> b!2310761 (= e!1480976 Nil!27499)))

(declare-fun b!2310762 () Bool)

(declare-fun e!1480977 () List!27593)

(assert (=> b!2310762 (= e!1480976 e!1480977)))

(declare-fun c!366363 () Bool)

(assert (=> b!2310762 (= c!366363 ((_ is Leaf!13167) (c!366104 (_1!16228 lt!856865))))))

(declare-fun b!2310763 () Bool)

(declare-fun list!10873 (IArray!17955) List!27593)

(assert (=> b!2310763 (= e!1480977 (list!10873 (xs!11917 (c!366104 (_1!16228 lt!856865)))))))

(declare-fun d!683694 () Bool)

(declare-fun c!366362 () Bool)

(assert (=> d!683694 (= c!366362 ((_ is Empty!8975) (c!366104 (_1!16228 lt!856865))))))

(assert (=> d!683694 (= (list!10868 (c!366104 (_1!16228 lt!856865))) e!1480976)))

(declare-fun b!2310764 () Bool)

(declare-fun ++!6737 (List!27593 List!27593) List!27593)

(assert (=> b!2310764 (= e!1480977 (++!6737 (list!10868 (left!20830 (c!366104 (_1!16228 lt!856865)))) (list!10868 (right!21160 (c!366104 (_1!16228 lt!856865))))))))

(assert (= (and d!683694 c!366362) b!2310761))

(assert (= (and d!683694 (not c!366362)) b!2310762))

(assert (= (and b!2310762 c!366363) b!2310763))

(assert (= (and b!2310762 (not c!366363)) b!2310764))

(declare-fun m!2738109 () Bool)

(assert (=> b!2310763 m!2738109))

(declare-fun m!2738111 () Bool)

(assert (=> b!2310764 m!2738111))

(declare-fun m!2738113 () Bool)

(assert (=> b!2310764 m!2738113))

(assert (=> b!2310764 m!2738111))

(assert (=> b!2310764 m!2738113))

(declare-fun m!2738115 () Bool)

(assert (=> b!2310764 m!2738115))

(assert (=> d!683162 d!683694))

(declare-fun d!683696 () Bool)

(declare-fun c!366364 () Bool)

(assert (=> d!683696 (= c!366364 ((_ is Node!8974) (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456))))))))

(declare-fun e!1480978 () Bool)

(assert (=> d!683696 (= (inv!37148 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456))))) e!1480978)))

(declare-fun b!2310765 () Bool)

(assert (=> b!2310765 (= e!1480978 (inv!37152 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456))))))))

(declare-fun b!2310766 () Bool)

(declare-fun e!1480979 () Bool)

(assert (=> b!2310766 (= e!1480978 e!1480979)))

(declare-fun res!988024 () Bool)

(assert (=> b!2310766 (= res!988024 (not ((_ is Leaf!13166) (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456)))))))))

(assert (=> b!2310766 (=> res!988024 e!1480979)))

(declare-fun b!2310767 () Bool)

(assert (=> b!2310767 (= e!1480979 (inv!37153 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456))))))))

(assert (= (and d!683696 c!366364) b!2310765))

(assert (= (and d!683696 (not c!366364)) b!2310766))

(assert (= (and b!2310766 (not res!988024)) b!2310767))

(declare-fun m!2738117 () Bool)

(assert (=> b!2310765 m!2738117))

(declare-fun m!2738119 () Bool)

(assert (=> b!2310767 m!2738119))

(assert (=> b!2309993 d!683696))

(declare-fun b!2310768 () Bool)

(declare-fun e!1480980 () Bool)

(assert (=> b!2310768 (= e!1480980 (inv!17 (value!139590 (h!32900 (t!206927 tokens!456)))))))

(declare-fun b!2310769 () Bool)

(declare-fun res!988025 () Bool)

(declare-fun e!1480982 () Bool)

(assert (=> b!2310769 (=> res!988025 e!1480982)))

(assert (=> b!2310769 (= res!988025 (not ((_ is IntegerValue!13727) (value!139590 (h!32900 (t!206927 tokens!456))))))))

(assert (=> b!2310769 (= e!1480980 e!1480982)))

(declare-fun b!2310770 () Bool)

(assert (=> b!2310770 (= e!1480982 (inv!15 (value!139590 (h!32900 (t!206927 tokens!456)))))))

(declare-fun b!2310771 () Bool)

(declare-fun e!1480981 () Bool)

(assert (=> b!2310771 (= e!1480981 (inv!16 (value!139590 (h!32900 (t!206927 tokens!456)))))))

(declare-fun b!2310772 () Bool)

(assert (=> b!2310772 (= e!1480981 e!1480980)))

(declare-fun c!366365 () Bool)

(assert (=> b!2310772 (= c!366365 ((_ is IntegerValue!13726) (value!139590 (h!32900 (t!206927 tokens!456)))))))

(declare-fun d!683698 () Bool)

(declare-fun c!366366 () Bool)

(assert (=> d!683698 (= c!366366 ((_ is IntegerValue!13725) (value!139590 (h!32900 (t!206927 tokens!456)))))))

(assert (=> d!683698 (= (inv!21 (value!139590 (h!32900 (t!206927 tokens!456)))) e!1480981)))

(assert (= (and d!683698 c!366366) b!2310771))

(assert (= (and d!683698 (not c!366366)) b!2310772))

(assert (= (and b!2310772 c!366365) b!2310768))

(assert (= (and b!2310772 (not c!366365)) b!2310769))

(assert (= (and b!2310769 (not res!988025)) b!2310770))

(declare-fun m!2738121 () Bool)

(assert (=> b!2310768 m!2738121))

(declare-fun m!2738123 () Bool)

(assert (=> b!2310770 m!2738123))

(declare-fun m!2738125 () Bool)

(assert (=> b!2310771 m!2738125))

(assert (=> b!2310160 d!683698))

(declare-fun d!683700 () Bool)

(assert (=> d!683700 (= (list!10864 (_2!16228 lt!856948)) (list!10869 (c!366102 (_2!16228 lt!856948))))))

(declare-fun bs!458245 () Bool)

(assert (= bs!458245 d!683700))

(declare-fun m!2738127 () Bool)

(assert (=> bs!458245 m!2738127))

(assert (=> b!2309871 d!683700))

(assert (=> b!2309871 d!683450))

(assert (=> b!2309871 d!683486))

(declare-fun d!683702 () Bool)

(declare-fun lt!857145 () Bool)

(assert (=> d!683702 (= lt!857145 (select (content!3717 (t!206926 rules!1750)) r!2363))))

(declare-fun e!1480983 () Bool)

(assert (=> d!683702 (= lt!857145 e!1480983)))

(declare-fun res!988027 () Bool)

(assert (=> d!683702 (=> (not res!988027) (not e!1480983))))

(assert (=> d!683702 (= res!988027 ((_ is Cons!27498) (t!206926 rules!1750)))))

(assert (=> d!683702 (= (contains!4803 (t!206926 rules!1750) r!2363) lt!857145)))

(declare-fun b!2310773 () Bool)

(declare-fun e!1480984 () Bool)

(assert (=> b!2310773 (= e!1480983 e!1480984)))

(declare-fun res!988026 () Bool)

(assert (=> b!2310773 (=> res!988026 e!1480984)))

(assert (=> b!2310773 (= res!988026 (= (h!32899 (t!206926 rules!1750)) r!2363))))

(declare-fun b!2310774 () Bool)

(assert (=> b!2310774 (= e!1480984 (contains!4803 (t!206926 (t!206926 rules!1750)) r!2363))))

(assert (= (and d!683702 res!988027) b!2310773))

(assert (= (and b!2310773 (not res!988026)) b!2310774))

(assert (=> d!683702 m!2737523))

(declare-fun m!2738129 () Bool)

(assert (=> d!683702 m!2738129))

(declare-fun m!2738131 () Bool)

(assert (=> b!2310774 m!2738131))

(assert (=> b!2309998 d!683702))

(assert (=> b!2309980 d!683346))

(declare-fun bs!458246 () Bool)

(declare-fun d!683704 () Bool)

(assert (= bs!458246 (and d!683704 d!683350)))

(declare-fun lambda!86068 () Int)

(assert (=> bs!458246 (= (and (= (toChars!6090 (transformation!4413 r!2363)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) (= (toValue!6231 (transformation!4413 r!2363)) (toValue!6231 (transformation!4413 (rule!6767 (h!32900 tokens!456)))))) (= lambda!86068 lambda!86049))))

(declare-fun bs!458247 () Bool)

(assert (= bs!458247 (and d!683704 d!683528)))

(assert (=> bs!458247 (= (and (= (toChars!6090 (transformation!4413 r!2363)) (toChars!6090 (transformation!4413 (h!32899 rules!1750)))) (= (toValue!6231 (transformation!4413 r!2363)) (toValue!6231 (transformation!4413 (h!32899 rules!1750))))) (= lambda!86068 lambda!86055))))

(declare-fun bs!458248 () Bool)

(assert (= bs!458248 (and d!683704 d!683556)))

(assert (=> bs!458248 (= (and (= (toChars!6090 (transformation!4413 r!2363)) (toChars!6090 (transformation!4413 otherR!12))) (= (toValue!6231 (transformation!4413 r!2363)) (toValue!6231 (transformation!4413 otherR!12)))) (= lambda!86068 lambda!86059))))

(assert (=> d!683704 true))

(assert (=> d!683704 (< (dynLambda!11964 order!15325 (toChars!6090 (transformation!4413 r!2363))) (dynLambda!11965 order!15327 lambda!86068))))

(assert (=> d!683704 true))

(assert (=> d!683704 (< (dynLambda!11962 order!15321 (toValue!6231 (transformation!4413 r!2363))) (dynLambda!11965 order!15327 lambda!86068))))

(assert (=> d!683704 (= (semiInverseModEq!1798 (toChars!6090 (transformation!4413 r!2363)) (toValue!6231 (transformation!4413 r!2363))) (Forall!1104 lambda!86068))))

(declare-fun bs!458249 () Bool)

(assert (= bs!458249 d!683704))

(declare-fun m!2738133 () Bool)

(assert (=> bs!458249 m!2738133))

(assert (=> d!683260 d!683704))

(declare-fun d!683706 () Bool)

(declare-fun lt!857148 () Int)

(assert (=> d!683706 (= lt!857148 (size!21711 (list!10865 (_1!16228 lt!856948))))))

(declare-fun size!21716 (Conc!8975) Int)

(assert (=> d!683706 (= lt!857148 (size!21716 (c!366104 (_1!16228 lt!856948))))))

(assert (=> d!683706 (= (size!21714 (_1!16228 lt!856948)) lt!857148)))

(declare-fun bs!458250 () Bool)

(assert (= bs!458250 d!683706))

(assert (=> bs!458250 m!2737173))

(assert (=> bs!458250 m!2737173))

(declare-fun m!2738135 () Bool)

(assert (=> bs!458250 m!2738135))

(declare-fun m!2738137 () Bool)

(assert (=> bs!458250 m!2738137))

(assert (=> d!683172 d!683706))

(declare-fun b!2310810 () Bool)

(declare-datatypes ((tuple2!27442 0))(
  ( (tuple2!27443 (_1!16231 Token!8304) (_2!16231 BalanceConc!17676)) )
))
(declare-datatypes ((Option!5414 0))(
  ( (None!5413) (Some!5413 (v!30525 tuple2!27442)) )
))
(declare-fun lt!857344 () Option!5414)

(declare-fun lt!857347 () tuple2!27436)

(declare-fun lexRec!554 (LexerInterface!4010 List!27592 BalanceConc!17676) tuple2!27436)

(assert (=> b!2310810 (= lt!857347 (lexRec!554 thiss!16613 rules!1750 (_2!16231 (v!30525 lt!857344))))))

(declare-fun e!1481008 () tuple2!27436)

(declare-fun prepend!1024 (BalanceConc!17678 Token!8304) BalanceConc!17678)

(assert (=> b!2310810 (= e!1481008 (tuple2!27437 (prepend!1024 (_1!16228 lt!857347) (_1!16231 (v!30525 lt!857344))) (_2!16228 lt!857347)))))

(declare-fun b!2310811 () Bool)

(declare-fun lt!857322 () BalanceConc!17676)

(declare-fun e!1481007 () tuple2!27436)

(declare-fun lt!857324 () Option!5414)

(declare-fun append!717 (BalanceConc!17678 Token!8304) BalanceConc!17678)

(assert (=> b!2310811 (= e!1481007 (lexTailRecV2!817 thiss!16613 rules!1750 (seqFromList!3117 input!1722) lt!857322 (_2!16231 (v!30525 lt!857324)) (append!717 (BalanceConc!17679 Empty!8975) (_1!16231 (v!30525 lt!857324)))))))

(declare-fun lt!857335 () tuple2!27436)

(assert (=> b!2310811 (= lt!857335 (lexRec!554 thiss!16613 rules!1750 (_2!16231 (v!30525 lt!857324))))))

(declare-fun lt!857341 () List!27591)

(assert (=> b!2310811 (= lt!857341 (list!10864 (BalanceConc!17677 Empty!8974)))))

(declare-fun lt!857321 () List!27591)

(assert (=> b!2310811 (= lt!857321 (list!10864 (charsOf!2801 (_1!16231 (v!30525 lt!857324)))))))

(declare-fun lt!857329 () List!27591)

(assert (=> b!2310811 (= lt!857329 (list!10864 (_2!16231 (v!30525 lt!857324))))))

(declare-fun lt!857342 () Unit!40423)

(declare-fun lemmaConcatAssociativity!1420 (List!27591 List!27591 List!27591) Unit!40423)

(assert (=> b!2310811 (= lt!857342 (lemmaConcatAssociativity!1420 lt!857341 lt!857321 lt!857329))))

(assert (=> b!2310811 (= (++!6735 (++!6735 lt!857341 lt!857321) lt!857329) (++!6735 lt!857341 (++!6735 lt!857321 lt!857329)))))

(declare-fun lt!857349 () Unit!40423)

(assert (=> b!2310811 (= lt!857349 lt!857342)))

(declare-fun maxPrefixZipperSequence!889 (LexerInterface!4010 List!27592 BalanceConc!17676) Option!5414)

(assert (=> b!2310811 (= lt!857344 (maxPrefixZipperSequence!889 thiss!16613 rules!1750 (seqFromList!3117 input!1722)))))

(declare-fun c!366383 () Bool)

(assert (=> b!2310811 (= c!366383 ((_ is Some!5413) lt!857344))))

(assert (=> b!2310811 (= (lexRec!554 thiss!16613 rules!1750 (seqFromList!3117 input!1722)) e!1481008)))

(declare-fun lt!857331 () Unit!40423)

(declare-fun Unit!40428 () Unit!40423)

(assert (=> b!2310811 (= lt!857331 Unit!40428)))

(declare-fun lt!857340 () List!27593)

(assert (=> b!2310811 (= lt!857340 (list!10865 (BalanceConc!17679 Empty!8975)))))

(declare-fun lt!857337 () List!27593)

(assert (=> b!2310811 (= lt!857337 (Cons!27499 (_1!16231 (v!30525 lt!857324)) Nil!27499))))

(declare-fun lt!857332 () List!27593)

(assert (=> b!2310811 (= lt!857332 (list!10865 (_1!16228 lt!857335)))))

(declare-fun lt!857330 () Unit!40423)

(declare-fun lemmaConcatAssociativity!1421 (List!27593 List!27593 List!27593) Unit!40423)

(assert (=> b!2310811 (= lt!857330 (lemmaConcatAssociativity!1421 lt!857340 lt!857337 lt!857332))))

(assert (=> b!2310811 (= (++!6737 (++!6737 lt!857340 lt!857337) lt!857332) (++!6737 lt!857340 (++!6737 lt!857337 lt!857332)))))

(declare-fun lt!857323 () Unit!40423)

(assert (=> b!2310811 (= lt!857323 lt!857330)))

(declare-fun lt!857320 () List!27591)

(assert (=> b!2310811 (= lt!857320 (++!6735 (list!10864 (BalanceConc!17677 Empty!8974)) (list!10864 (charsOf!2801 (_1!16231 (v!30525 lt!857324))))))))

(declare-fun lt!857352 () List!27591)

(assert (=> b!2310811 (= lt!857352 (list!10864 (_2!16231 (v!30525 lt!857324))))))

(declare-fun lt!857346 () List!27593)

(assert (=> b!2310811 (= lt!857346 (list!10865 (append!717 (BalanceConc!17679 Empty!8975) (_1!16231 (v!30525 lt!857324)))))))

(declare-fun lt!857351 () Unit!40423)

(declare-fun lemmaLexThenLexPrefix!368 (LexerInterface!4010 List!27592 List!27591 List!27591 List!27593 List!27593 List!27591) Unit!40423)

(assert (=> b!2310811 (= lt!857351 (lemmaLexThenLexPrefix!368 thiss!16613 rules!1750 lt!857320 lt!857352 lt!857346 (list!10865 (_1!16228 lt!857335)) (list!10864 (_2!16228 lt!857335))))))

(assert (=> b!2310811 (= (lexList!1142 thiss!16613 rules!1750 lt!857320) (tuple2!27439 lt!857346 Nil!27497))))

(declare-fun lt!857348 () Unit!40423)

(assert (=> b!2310811 (= lt!857348 lt!857351)))

(declare-fun lt!857350 () BalanceConc!17676)

(declare-fun ++!6738 (BalanceConc!17676 BalanceConc!17676) BalanceConc!17676)

(assert (=> b!2310811 (= lt!857350 (++!6738 (BalanceConc!17677 Empty!8974) (charsOf!2801 (_1!16231 (v!30525 lt!857324)))))))

(declare-fun lt!857319 () Option!5414)

(assert (=> b!2310811 (= lt!857319 (maxPrefixZipperSequence!889 thiss!16613 rules!1750 lt!857350))))

(declare-fun c!366382 () Bool)

(assert (=> b!2310811 (= c!366382 ((_ is Some!5413) lt!857319))))

(declare-fun e!1481006 () tuple2!27436)

(assert (=> b!2310811 (= (lexRec!554 thiss!16613 rules!1750 (++!6738 (BalanceConc!17677 Empty!8974) (charsOf!2801 (_1!16231 (v!30525 lt!857324))))) e!1481006)))

(declare-fun lt!857336 () Unit!40423)

(declare-fun Unit!40429 () Unit!40423)

(assert (=> b!2310811 (= lt!857336 Unit!40429)))

(assert (=> b!2310811 (= lt!857322 (++!6738 (BalanceConc!17677 Empty!8974) (charsOf!2801 (_1!16231 (v!30525 lt!857324)))))))

(declare-fun lt!857328 () List!27591)

(assert (=> b!2310811 (= lt!857328 (list!10864 lt!857322))))

(declare-fun lt!857345 () List!27591)

(assert (=> b!2310811 (= lt!857345 (list!10864 (_2!16231 (v!30525 lt!857324))))))

(declare-fun lt!857326 () Unit!40423)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!484 (List!27591 List!27591) Unit!40423)

(assert (=> b!2310811 (= lt!857326 (lemmaConcatTwoListThenFSndIsSuffix!484 lt!857328 lt!857345))))

(declare-fun isSuffix!790 (List!27591 List!27591) Bool)

(assert (=> b!2310811 (isSuffix!790 lt!857345 (++!6735 lt!857328 lt!857345))))

(declare-fun lt!857327 () Unit!40423)

(assert (=> b!2310811 (= lt!857327 lt!857326)))

(declare-fun b!2310812 () Bool)

(assert (=> b!2310812 (= e!1481008 (tuple2!27437 (BalanceConc!17679 Empty!8975) (seqFromList!3117 input!1722)))))

(declare-fun b!2310813 () Bool)

(assert (=> b!2310813 (= e!1481006 (tuple2!27437 (BalanceConc!17679 Empty!8975) lt!857350))))

(declare-fun lt!857339 () tuple2!27436)

(declare-fun b!2310814 () Bool)

(assert (=> b!2310814 (= lt!857339 (lexRec!554 thiss!16613 rules!1750 (_2!16231 (v!30525 lt!857319))))))

(assert (=> b!2310814 (= e!1481006 (tuple2!27437 (prepend!1024 (_1!16228 lt!857339) (_1!16231 (v!30525 lt!857319))) (_2!16228 lt!857339)))))

(declare-fun b!2310815 () Bool)

(assert (=> b!2310815 (= e!1481007 (tuple2!27437 (BalanceConc!17679 Empty!8975) (seqFromList!3117 input!1722)))))

(declare-fun lt!857338 () tuple2!27436)

(declare-fun b!2310816 () Bool)

(declare-fun e!1481005 () Bool)

(assert (=> b!2310816 (= e!1481005 (= (list!10864 (_2!16228 lt!857338)) (list!10864 (_2!16228 (lexRec!554 thiss!16613 rules!1750 (seqFromList!3117 input!1722))))))))

(declare-fun d!683708 () Bool)

(assert (=> d!683708 e!1481005))

(declare-fun res!988033 () Bool)

(assert (=> d!683708 (=> (not res!988033) (not e!1481005))))

(assert (=> d!683708 (= res!988033 (= (list!10865 (_1!16228 lt!857338)) (list!10865 (_1!16228 (lexRec!554 thiss!16613 rules!1750 (seqFromList!3117 input!1722))))))))

(assert (=> d!683708 (= lt!857338 e!1481007)))

(declare-fun c!366384 () Bool)

(assert (=> d!683708 (= c!366384 ((_ is Some!5413) lt!857324))))

(declare-fun maxPrefixZipperSequenceV2!424 (LexerInterface!4010 List!27592 BalanceConc!17676 BalanceConc!17676) Option!5414)

(assert (=> d!683708 (= lt!857324 (maxPrefixZipperSequenceV2!424 thiss!16613 rules!1750 (seqFromList!3117 input!1722) (seqFromList!3117 input!1722)))))

(declare-fun lt!857334 () Unit!40423)

(declare-fun lt!857343 () Unit!40423)

(assert (=> d!683708 (= lt!857334 lt!857343)))

(declare-fun lt!857333 () List!27591)

(declare-fun lt!857325 () List!27591)

(assert (=> d!683708 (isSuffix!790 lt!857333 (++!6735 lt!857325 lt!857333))))

(assert (=> d!683708 (= lt!857343 (lemmaConcatTwoListThenFSndIsSuffix!484 lt!857325 lt!857333))))

(assert (=> d!683708 (= lt!857333 (list!10864 (seqFromList!3117 input!1722)))))

(assert (=> d!683708 (= lt!857325 (list!10864 (BalanceConc!17677 Empty!8974)))))

(assert (=> d!683708 (= (lexTailRecV2!817 thiss!16613 rules!1750 (seqFromList!3117 input!1722) (BalanceConc!17677 Empty!8974) (seqFromList!3117 input!1722) (BalanceConc!17679 Empty!8975)) lt!857338)))

(assert (= (and d!683708 c!366384) b!2310811))

(assert (= (and d!683708 (not c!366384)) b!2310815))

(assert (= (and b!2310811 c!366383) b!2310810))

(assert (= (and b!2310811 (not c!366383)) b!2310812))

(assert (= (and b!2310811 c!366382) b!2310814))

(assert (= (and b!2310811 (not c!366382)) b!2310813))

(assert (= (and d!683708 res!988033) b!2310816))

(declare-fun m!2738231 () Bool)

(assert (=> b!2310814 m!2738231))

(declare-fun m!2738233 () Bool)

(assert (=> b!2310814 m!2738233))

(declare-fun m!2738235 () Bool)

(assert (=> b!2310816 m!2738235))

(assert (=> b!2310816 m!2736899))

(declare-fun m!2738237 () Bool)

(assert (=> b!2310816 m!2738237))

(declare-fun m!2738239 () Bool)

(assert (=> b!2310816 m!2738239))

(declare-fun m!2738241 () Bool)

(assert (=> d!683708 m!2738241))

(declare-fun m!2738243 () Bool)

(assert (=> d!683708 m!2738243))

(assert (=> d!683708 m!2736899))

(assert (=> d!683708 m!2736899))

(declare-fun m!2738245 () Bool)

(assert (=> d!683708 m!2738245))

(declare-fun m!2738247 () Bool)

(assert (=> d!683708 m!2738247))

(declare-fun m!2738249 () Bool)

(assert (=> d!683708 m!2738249))

(assert (=> d!683708 m!2738249))

(declare-fun m!2738251 () Bool)

(assert (=> d!683708 m!2738251))

(declare-fun m!2738253 () Bool)

(assert (=> d!683708 m!2738253))

(assert (=> d!683708 m!2736899))

(assert (=> d!683708 m!2738237))

(assert (=> d!683708 m!2736899))

(assert (=> d!683708 m!2737169))

(declare-fun m!2738255 () Bool)

(assert (=> b!2310810 m!2738255))

(declare-fun m!2738257 () Bool)

(assert (=> b!2310810 m!2738257))

(declare-fun m!2738259 () Bool)

(assert (=> b!2310811 m!2738259))

(declare-fun m!2738261 () Bool)

(assert (=> b!2310811 m!2738261))

(declare-fun m!2738263 () Bool)

(assert (=> b!2310811 m!2738263))

(declare-fun m!2738265 () Bool)

(assert (=> b!2310811 m!2738265))

(declare-fun m!2738267 () Bool)

(assert (=> b!2310811 m!2738267))

(declare-fun m!2738269 () Bool)

(assert (=> b!2310811 m!2738269))

(assert (=> b!2310811 m!2736899))

(declare-fun m!2738271 () Bool)

(assert (=> b!2310811 m!2738271))

(declare-fun m!2738273 () Bool)

(assert (=> b!2310811 m!2738273))

(declare-fun m!2738275 () Bool)

(assert (=> b!2310811 m!2738275))

(declare-fun m!2738277 () Bool)

(assert (=> b!2310811 m!2738277))

(declare-fun m!2738279 () Bool)

(assert (=> b!2310811 m!2738279))

(declare-fun m!2738281 () Bool)

(assert (=> b!2310811 m!2738281))

(declare-fun m!2738283 () Bool)

(assert (=> b!2310811 m!2738283))

(assert (=> b!2310811 m!2738271))

(declare-fun m!2738285 () Bool)

(assert (=> b!2310811 m!2738285))

(assert (=> b!2310811 m!2738267))

(assert (=> b!2310811 m!2736899))

(assert (=> b!2310811 m!2738237))

(declare-fun m!2738287 () Bool)

(assert (=> b!2310811 m!2738287))

(declare-fun m!2738289 () Bool)

(assert (=> b!2310811 m!2738289))

(assert (=> b!2310811 m!2738279))

(assert (=> b!2310811 m!2738271))

(declare-fun m!2738291 () Bool)

(assert (=> b!2310811 m!2738291))

(declare-fun m!2738293 () Bool)

(assert (=> b!2310811 m!2738293))

(assert (=> b!2310811 m!2736899))

(declare-fun m!2738295 () Bool)

(assert (=> b!2310811 m!2738295))

(declare-fun m!2738297 () Bool)

(assert (=> b!2310811 m!2738297))

(declare-fun m!2738299 () Bool)

(assert (=> b!2310811 m!2738299))

(assert (=> b!2310811 m!2738261))

(declare-fun m!2738301 () Bool)

(assert (=> b!2310811 m!2738301))

(declare-fun m!2738303 () Bool)

(assert (=> b!2310811 m!2738303))

(assert (=> b!2310811 m!2738299))

(declare-fun m!2738305 () Bool)

(assert (=> b!2310811 m!2738305))

(assert (=> b!2310811 m!2738297))

(assert (=> b!2310811 m!2738243))

(declare-fun m!2738307 () Bool)

(assert (=> b!2310811 m!2738307))

(declare-fun m!2738309 () Bool)

(assert (=> b!2310811 m!2738309))

(assert (=> b!2310811 m!2738243))

(declare-fun m!2738311 () Bool)

(assert (=> b!2310811 m!2738311))

(declare-fun m!2738313 () Bool)

(assert (=> b!2310811 m!2738313))

(assert (=> b!2310811 m!2738297))

(assert (=> b!2310811 m!2738311))

(assert (=> b!2310811 m!2738277))

(assert (=> b!2310811 m!2738293))

(declare-fun m!2738315 () Bool)

(assert (=> b!2310811 m!2738315))

(assert (=> b!2310811 m!2738283))

(declare-fun m!2738317 () Bool)

(assert (=> b!2310811 m!2738317))

(assert (=> b!2310811 m!2738289))

(declare-fun m!2738319 () Bool)

(assert (=> b!2310811 m!2738319))

(assert (=> d!683172 d!683708))

(declare-fun d!683714 () Bool)

(declare-fun e!1481011 () Bool)

(assert (=> d!683714 e!1481011))

(declare-fun res!988036 () Bool)

(assert (=> d!683714 (=> (not res!988036) (not e!1481011))))

(declare-fun lt!857355 () BalanceConc!17676)

(assert (=> d!683714 (= res!988036 (= (list!10864 lt!857355) input!1722))))

(declare-fun fromList!552 (List!27591) Conc!8974)

(assert (=> d!683714 (= lt!857355 (BalanceConc!17677 (fromList!552 input!1722)))))

(assert (=> d!683714 (= (fromListB!1408 input!1722) lt!857355)))

(declare-fun b!2310819 () Bool)

(assert (=> b!2310819 (= e!1481011 (isBalanced!2695 (fromList!552 input!1722)))))

(assert (= (and d!683714 res!988036) b!2310819))

(declare-fun m!2738321 () Bool)

(assert (=> d!683714 m!2738321))

(declare-fun m!2738323 () Bool)

(assert (=> d!683714 m!2738323))

(assert (=> b!2310819 m!2738323))

(assert (=> b!2310819 m!2738323))

(declare-fun m!2738325 () Bool)

(assert (=> b!2310819 m!2738325))

(assert (=> d!683232 d!683714))

(assert (=> d!683276 d!683254))

(assert (=> b!2310014 d!683686))

(assert (=> b!2310014 d!683374))

(declare-fun d!683716 () Bool)

(declare-fun lt!857358 () Bool)

(assert (=> d!683716 (= lt!857358 (isEmpty!15729 (list!10865 (_1!16228 lt!856948))))))

(declare-fun isEmpty!15738 (Conc!8975) Bool)

(assert (=> d!683716 (= lt!857358 (isEmpty!15738 (c!366104 (_1!16228 lt!856948))))))

(assert (=> d!683716 (= (isEmpty!15733 (_1!16228 lt!856948)) lt!857358)))

(declare-fun bs!458253 () Bool)

(assert (= bs!458253 d!683716))

(assert (=> bs!458253 m!2737173))

(assert (=> bs!458253 m!2737173))

(declare-fun m!2738327 () Bool)

(assert (=> bs!458253 m!2738327))

(declare-fun m!2738329 () Bool)

(assert (=> bs!458253 m!2738329))

(assert (=> b!2309869 d!683716))

(declare-fun d!683718 () Bool)

(assert (=> d!683718 (= (_2!16227 lt!856871) lt!856867)))

(assert (=> d!683718 true))

(declare-fun _$63!847 () Unit!40423)

(assert (=> d!683718 (= (choose!13511 lt!856866 (_2!16227 lt!856871) lt!856866 lt!856867 input!1722) _$63!847)))

(assert (=> d!683308 d!683718))

(declare-fun b!2310821 () Bool)

(declare-fun res!988040 () Bool)

(declare-fun e!1481014 () Bool)

(assert (=> b!2310821 (=> (not res!988040) (not e!1481014))))

(assert (=> b!2310821 (= res!988040 (= (head!5072 lt!856866) (head!5072 input!1722)))))

(declare-fun b!2310823 () Bool)

(declare-fun e!1481013 () Bool)

(assert (=> b!2310823 (= e!1481013 (>= (size!21710 input!1722) (size!21710 lt!856866)))))

(declare-fun b!2310822 () Bool)

(assert (=> b!2310822 (= e!1481014 (isPrefix!2403 (tail!3339 lt!856866) (tail!3339 input!1722)))))

(declare-fun b!2310820 () Bool)

(declare-fun e!1481012 () Bool)

(assert (=> b!2310820 (= e!1481012 e!1481014)))

(declare-fun res!988039 () Bool)

(assert (=> b!2310820 (=> (not res!988039) (not e!1481014))))

(assert (=> b!2310820 (= res!988039 (not ((_ is Nil!27497) input!1722)))))

(declare-fun d!683720 () Bool)

(assert (=> d!683720 e!1481013))

(declare-fun res!988038 () Bool)

(assert (=> d!683720 (=> res!988038 e!1481013)))

(declare-fun lt!857359 () Bool)

(assert (=> d!683720 (= res!988038 (not lt!857359))))

(assert (=> d!683720 (= lt!857359 e!1481012)))

(declare-fun res!988037 () Bool)

(assert (=> d!683720 (=> res!988037 e!1481012)))

(assert (=> d!683720 (= res!988037 ((_ is Nil!27497) lt!856866))))

(assert (=> d!683720 (= (isPrefix!2403 lt!856866 input!1722) lt!857359)))

(assert (= (and d!683720 (not res!988037)) b!2310820))

(assert (= (and b!2310820 res!988039) b!2310821))

(assert (= (and b!2310821 res!988040) b!2310822))

(assert (= (and d!683720 (not res!988038)) b!2310823))

(assert (=> b!2310821 m!2737315))

(assert (=> b!2310821 m!2737303))

(assert (=> b!2310823 m!2737305))

(assert (=> b!2310823 m!2736871))

(assert (=> b!2310822 m!2737321))

(assert (=> b!2310822 m!2737307))

(assert (=> b!2310822 m!2737321))

(assert (=> b!2310822 m!2737307))

(declare-fun m!2738331 () Bool)

(assert (=> b!2310822 m!2738331))

(assert (=> d!683308 d!683720))

(declare-fun b!2310824 () Bool)

(declare-fun res!988043 () Bool)

(declare-fun e!1481015 () Bool)

(assert (=> b!2310824 (=> res!988043 e!1481015)))

(assert (=> b!2310824 (= res!988043 (not ((_ is ElementMatch!6761) (derivativeStep!1556 (regex!4413 otherR!12) (head!5072 otherP!12)))))))

(declare-fun e!1481019 () Bool)

(assert (=> b!2310824 (= e!1481019 e!1481015)))

(declare-fun b!2310825 () Bool)

(declare-fun e!1481018 () Bool)

(assert (=> b!2310825 (= e!1481018 (not (= (head!5072 (tail!3339 otherP!12)) (c!366103 (derivativeStep!1556 (regex!4413 otherR!12) (head!5072 otherP!12))))))))

(declare-fun b!2310826 () Bool)

(declare-fun lt!857360 () Bool)

(assert (=> b!2310826 (= e!1481019 (not lt!857360))))

(declare-fun b!2310827 () Bool)

(declare-fun res!988048 () Bool)

(declare-fun e!1481016 () Bool)

(assert (=> b!2310827 (=> (not res!988048) (not e!1481016))))

(assert (=> b!2310827 (= res!988048 (isEmpty!15734 (tail!3339 (tail!3339 otherP!12))))))

(declare-fun b!2310828 () Bool)

(declare-fun e!1481020 () Bool)

(assert (=> b!2310828 (= e!1481020 e!1481019)))

(declare-fun c!366387 () Bool)

(assert (=> b!2310828 (= c!366387 ((_ is EmptyLang!6761) (derivativeStep!1556 (regex!4413 otherR!12) (head!5072 otherP!12))))))

(declare-fun b!2310829 () Bool)

(declare-fun e!1481017 () Bool)

(assert (=> b!2310829 (= e!1481017 (matchR!3018 (derivativeStep!1556 (derivativeStep!1556 (regex!4413 otherR!12) (head!5072 otherP!12)) (head!5072 (tail!3339 otherP!12))) (tail!3339 (tail!3339 otherP!12))))))

(declare-fun b!2310830 () Bool)

(assert (=> b!2310830 (= e!1481017 (nullable!1896 (derivativeStep!1556 (regex!4413 otherR!12) (head!5072 otherP!12))))))

(declare-fun b!2310831 () Bool)

(declare-fun res!988046 () Bool)

(assert (=> b!2310831 (=> res!988046 e!1481018)))

(assert (=> b!2310831 (= res!988046 (not (isEmpty!15734 (tail!3339 (tail!3339 otherP!12)))))))

(declare-fun bm!137385 () Bool)

(declare-fun call!137390 () Bool)

(assert (=> bm!137385 (= call!137390 (isEmpty!15734 (tail!3339 otherP!12)))))

(declare-fun b!2310833 () Bool)

(declare-fun res!988044 () Bool)

(assert (=> b!2310833 (=> (not res!988044) (not e!1481016))))

(assert (=> b!2310833 (= res!988044 (not call!137390))))

(declare-fun b!2310834 () Bool)

(assert (=> b!2310834 (= e!1481020 (= lt!857360 call!137390))))

(declare-fun b!2310835 () Bool)

(assert (=> b!2310835 (= e!1481016 (= (head!5072 (tail!3339 otherP!12)) (c!366103 (derivativeStep!1556 (regex!4413 otherR!12) (head!5072 otherP!12)))))))

(declare-fun d!683722 () Bool)

(assert (=> d!683722 e!1481020))

(declare-fun c!366386 () Bool)

(assert (=> d!683722 (= c!366386 ((_ is EmptyExpr!6761) (derivativeStep!1556 (regex!4413 otherR!12) (head!5072 otherP!12))))))

(assert (=> d!683722 (= lt!857360 e!1481017)))

(declare-fun c!366388 () Bool)

(assert (=> d!683722 (= c!366388 (isEmpty!15734 (tail!3339 otherP!12)))))

(assert (=> d!683722 (validRegex!2558 (derivativeStep!1556 (regex!4413 otherR!12) (head!5072 otherP!12)))))

(assert (=> d!683722 (= (matchR!3018 (derivativeStep!1556 (regex!4413 otherR!12) (head!5072 otherP!12)) (tail!3339 otherP!12)) lt!857360)))

(declare-fun b!2310832 () Bool)

(declare-fun e!1481021 () Bool)

(assert (=> b!2310832 (= e!1481015 e!1481021)))

(declare-fun res!988047 () Bool)

(assert (=> b!2310832 (=> (not res!988047) (not e!1481021))))

(assert (=> b!2310832 (= res!988047 (not lt!857360))))

(declare-fun b!2310836 () Bool)

(declare-fun res!988045 () Bool)

(assert (=> b!2310836 (=> res!988045 e!1481015)))

(assert (=> b!2310836 (= res!988045 e!1481016)))

(declare-fun res!988041 () Bool)

(assert (=> b!2310836 (=> (not res!988041) (not e!1481016))))

(assert (=> b!2310836 (= res!988041 lt!857360)))

(declare-fun b!2310837 () Bool)

(assert (=> b!2310837 (= e!1481021 e!1481018)))

(declare-fun res!988042 () Bool)

(assert (=> b!2310837 (=> res!988042 e!1481018)))

(assert (=> b!2310837 (= res!988042 call!137390)))

(assert (= (and d!683722 c!366388) b!2310830))

(assert (= (and d!683722 (not c!366388)) b!2310829))

(assert (= (and d!683722 c!366386) b!2310834))

(assert (= (and d!683722 (not c!366386)) b!2310828))

(assert (= (and b!2310828 c!366387) b!2310826))

(assert (= (and b!2310828 (not c!366387)) b!2310824))

(assert (= (and b!2310824 (not res!988043)) b!2310836))

(assert (= (and b!2310836 res!988041) b!2310833))

(assert (= (and b!2310833 res!988044) b!2310827))

(assert (= (and b!2310827 res!988048) b!2310835))

(assert (= (and b!2310836 (not res!988045)) b!2310832))

(assert (= (and b!2310832 res!988047) b!2310837))

(assert (= (and b!2310837 (not res!988042)) b!2310831))

(assert (= (and b!2310831 (not res!988046)) b!2310825))

(assert (= (or b!2310834 b!2310833 b!2310837) bm!137385))

(assert (=> b!2310835 m!2737269))

(assert (=> b!2310835 m!2737475))

(assert (=> b!2310827 m!2737269))

(assert (=> b!2310827 m!2737483))

(assert (=> b!2310827 m!2737483))

(declare-fun m!2738333 () Bool)

(assert (=> b!2310827 m!2738333))

(assert (=> b!2310830 m!2737279))

(declare-fun m!2738335 () Bool)

(assert (=> b!2310830 m!2738335))

(assert (=> b!2310825 m!2737269))

(assert (=> b!2310825 m!2737475))

(assert (=> d!683722 m!2737269))

(assert (=> d!683722 m!2737271))

(assert (=> d!683722 m!2737279))

(declare-fun m!2738337 () Bool)

(assert (=> d!683722 m!2738337))

(assert (=> b!2310829 m!2737269))

(assert (=> b!2310829 m!2737475))

(assert (=> b!2310829 m!2737279))

(assert (=> b!2310829 m!2737475))

(declare-fun m!2738339 () Bool)

(assert (=> b!2310829 m!2738339))

(assert (=> b!2310829 m!2737269))

(assert (=> b!2310829 m!2737483))

(assert (=> b!2310829 m!2738339))

(assert (=> b!2310829 m!2737483))

(declare-fun m!2738341 () Bool)

(assert (=> b!2310829 m!2738341))

(assert (=> b!2310831 m!2737269))

(assert (=> b!2310831 m!2737483))

(assert (=> b!2310831 m!2737483))

(assert (=> b!2310831 m!2738333))

(assert (=> bm!137385 m!2737269))

(assert (=> bm!137385 m!2737271))

(assert (=> b!2310012 d!683722))

(declare-fun b!2310838 () Bool)

(declare-fun e!1481023 () Regex!6761)

(declare-fun call!137391 () Regex!6761)

(assert (=> b!2310838 (= e!1481023 (Union!6761 (Concat!11337 call!137391 (regTwo!14034 (regex!4413 otherR!12))) EmptyLang!6761))))

(declare-fun bm!137386 () Bool)

(declare-fun call!137394 () Regex!6761)

(assert (=> bm!137386 (= call!137391 call!137394)))

(declare-fun d!683724 () Bool)

(declare-fun lt!857361 () Regex!6761)

(assert (=> d!683724 (validRegex!2558 lt!857361)))

(declare-fun e!1481022 () Regex!6761)

(assert (=> d!683724 (= lt!857361 e!1481022)))

(declare-fun c!366391 () Bool)

(assert (=> d!683724 (= c!366391 (or ((_ is EmptyExpr!6761) (regex!4413 otherR!12)) ((_ is EmptyLang!6761) (regex!4413 otherR!12))))))

(assert (=> d!683724 (validRegex!2558 (regex!4413 otherR!12))))

(assert (=> d!683724 (= (derivativeStep!1556 (regex!4413 otherR!12) (head!5072 otherP!12)) lt!857361)))

(declare-fun b!2310839 () Bool)

(declare-fun call!137393 () Regex!6761)

(assert (=> b!2310839 (= e!1481023 (Union!6761 (Concat!11337 call!137391 (regTwo!14034 (regex!4413 otherR!12))) call!137393))))

(declare-fun bm!137387 () Bool)

(declare-fun call!137392 () Regex!6761)

(assert (=> bm!137387 (= call!137394 call!137392)))

(declare-fun b!2310840 () Bool)

(declare-fun c!366390 () Bool)

(assert (=> b!2310840 (= c!366390 (nullable!1896 (regOne!14034 (regex!4413 otherR!12))))))

(declare-fun e!1481025 () Regex!6761)

(assert (=> b!2310840 (= e!1481025 e!1481023)))

(declare-fun bm!137388 () Bool)

(declare-fun c!366389 () Bool)

(assert (=> bm!137388 (= call!137393 (derivativeStep!1556 (ite c!366389 (regTwo!14035 (regex!4413 otherR!12)) (regTwo!14034 (regex!4413 otherR!12))) (head!5072 otherP!12)))))

(declare-fun b!2310841 () Bool)

(assert (=> b!2310841 (= e!1481022 EmptyLang!6761)))

(declare-fun b!2310842 () Bool)

(assert (=> b!2310842 (= c!366389 ((_ is Union!6761) (regex!4413 otherR!12)))))

(declare-fun e!1481026 () Regex!6761)

(declare-fun e!1481024 () Regex!6761)

(assert (=> b!2310842 (= e!1481026 e!1481024)))

(declare-fun b!2310843 () Bool)

(assert (=> b!2310843 (= e!1481025 (Concat!11337 call!137394 (regex!4413 otherR!12)))))

(declare-fun b!2310844 () Bool)

(assert (=> b!2310844 (= e!1481024 (Union!6761 call!137392 call!137393))))

(declare-fun b!2310845 () Bool)

(assert (=> b!2310845 (= e!1481022 e!1481026)))

(declare-fun c!366393 () Bool)

(assert (=> b!2310845 (= c!366393 ((_ is ElementMatch!6761) (regex!4413 otherR!12)))))

(declare-fun b!2310846 () Bool)

(assert (=> b!2310846 (= e!1481026 (ite (= (head!5072 otherP!12) (c!366103 (regex!4413 otherR!12))) EmptyExpr!6761 EmptyLang!6761))))

(declare-fun b!2310847 () Bool)

(assert (=> b!2310847 (= e!1481024 e!1481025)))

(declare-fun c!366392 () Bool)

(assert (=> b!2310847 (= c!366392 ((_ is Star!6761) (regex!4413 otherR!12)))))

(declare-fun bm!137389 () Bool)

(assert (=> bm!137389 (= call!137392 (derivativeStep!1556 (ite c!366389 (regOne!14035 (regex!4413 otherR!12)) (ite c!366392 (reg!7090 (regex!4413 otherR!12)) (regOne!14034 (regex!4413 otherR!12)))) (head!5072 otherP!12)))))

(assert (= (and d!683724 c!366391) b!2310841))

(assert (= (and d!683724 (not c!366391)) b!2310845))

(assert (= (and b!2310845 c!366393) b!2310846))

(assert (= (and b!2310845 (not c!366393)) b!2310842))

(assert (= (and b!2310842 c!366389) b!2310844))

(assert (= (and b!2310842 (not c!366389)) b!2310847))

(assert (= (and b!2310847 c!366392) b!2310843))

(assert (= (and b!2310847 (not c!366392)) b!2310840))

(assert (= (and b!2310840 c!366390) b!2310839))

(assert (= (and b!2310840 (not c!366390)) b!2310838))

(assert (= (or b!2310839 b!2310838) bm!137386))

(assert (= (or b!2310843 bm!137386) bm!137387))

(assert (= (or b!2310844 bm!137387) bm!137389))

(assert (= (or b!2310844 b!2310839) bm!137388))

(declare-fun m!2738343 () Bool)

(assert (=> d!683724 m!2738343))

(assert (=> d!683724 m!2737277))

(declare-fun m!2738345 () Bool)

(assert (=> b!2310840 m!2738345))

(assert (=> bm!137388 m!2737267))

(declare-fun m!2738347 () Bool)

(assert (=> bm!137388 m!2738347))

(assert (=> bm!137389 m!2737267))

(declare-fun m!2738349 () Bool)

(assert (=> bm!137389 m!2738349))

(assert (=> b!2310012 d!683724))

(assert (=> b!2310012 d!683332))

(assert (=> b!2310012 d!683374))

(declare-fun b!2310848 () Bool)

(declare-fun e!1481028 () List!27591)

(assert (=> b!2310848 (= e!1481028 (_2!16227 lt!856871))))

(declare-fun b!2310849 () Bool)

(assert (=> b!2310849 (= e!1481028 (Cons!27497 (h!32898 (t!206925 lt!856866)) (++!6735 (t!206925 (t!206925 lt!856866)) (_2!16227 lt!856871))))))

(declare-fun b!2310850 () Bool)

(declare-fun res!988049 () Bool)

(declare-fun e!1481027 () Bool)

(assert (=> b!2310850 (=> (not res!988049) (not e!1481027))))

(declare-fun lt!857362 () List!27591)

(assert (=> b!2310850 (= res!988049 (= (size!21710 lt!857362) (+ (size!21710 (t!206925 lt!856866)) (size!21710 (_2!16227 lt!856871)))))))

(declare-fun d!683726 () Bool)

(assert (=> d!683726 e!1481027))

(declare-fun res!988050 () Bool)

(assert (=> d!683726 (=> (not res!988050) (not e!1481027))))

(assert (=> d!683726 (= res!988050 (= (content!3719 lt!857362) ((_ map or) (content!3719 (t!206925 lt!856866)) (content!3719 (_2!16227 lt!856871)))))))

(assert (=> d!683726 (= lt!857362 e!1481028)))

(declare-fun c!366394 () Bool)

(assert (=> d!683726 (= c!366394 ((_ is Nil!27497) (t!206925 lt!856866)))))

(assert (=> d!683726 (= (++!6735 (t!206925 lt!856866) (_2!16227 lt!856871)) lt!857362)))

(declare-fun b!2310851 () Bool)

(assert (=> b!2310851 (= e!1481027 (or (not (= (_2!16227 lt!856871) Nil!27497)) (= lt!857362 (t!206925 lt!856866))))))

(assert (= (and d!683726 c!366394) b!2310848))

(assert (= (and d!683726 (not c!366394)) b!2310849))

(assert (= (and d!683726 res!988050) b!2310850))

(assert (= (and b!2310850 res!988049) b!2310851))

(declare-fun m!2738351 () Bool)

(assert (=> b!2310849 m!2738351))

(declare-fun m!2738353 () Bool)

(assert (=> b!2310850 m!2738353))

(assert (=> b!2310850 m!2737313))

(assert (=> b!2310850 m!2737335))

(declare-fun m!2738355 () Bool)

(assert (=> d!683726 m!2738355))

(assert (=> d!683726 m!2737859))

(assert (=> d!683726 m!2737341))

(assert (=> b!2310100 d!683726))

(declare-fun b!2310855 () Bool)

(declare-fun e!1481029 () Bool)

(declare-fun tp!732967 () Bool)

(declare-fun tp!732968 () Bool)

(assert (=> b!2310855 (= e!1481029 (and tp!732967 tp!732968))))

(declare-fun b!2310852 () Bool)

(assert (=> b!2310852 (= e!1481029 tp_is_empty!10743)))

(assert (=> b!2310187 (= tp!732957 e!1481029)))

(declare-fun b!2310853 () Bool)

(declare-fun tp!732964 () Bool)

(declare-fun tp!732966 () Bool)

(assert (=> b!2310853 (= e!1481029 (and tp!732964 tp!732966))))

(declare-fun b!2310854 () Bool)

(declare-fun tp!732965 () Bool)

(assert (=> b!2310854 (= e!1481029 tp!732965)))

(assert (= (and b!2310187 ((_ is ElementMatch!6761) (regex!4413 (h!32899 (t!206926 rules!1750))))) b!2310852))

(assert (= (and b!2310187 ((_ is Concat!11337) (regex!4413 (h!32899 (t!206926 rules!1750))))) b!2310853))

(assert (= (and b!2310187 ((_ is Star!6761) (regex!4413 (h!32899 (t!206926 rules!1750))))) b!2310854))

(assert (= (and b!2310187 ((_ is Union!6761) (regex!4413 (h!32899 (t!206926 rules!1750))))) b!2310855))

(declare-fun b!2310858 () Bool)

(declare-fun b_free!69981 () Bool)

(declare-fun b_next!70685 () Bool)

(assert (=> b!2310858 (= b_free!69981 (not b_next!70685))))

(declare-fun t!207056 () Bool)

(declare-fun tb!138663 () Bool)

(assert (=> (and b!2310858 (= (toValue!6231 (transformation!4413 (h!32899 (t!206926 (t!206926 rules!1750))))) (toValue!6231 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!207056) tb!138663))

(declare-fun result!168990 () Bool)

(assert (= result!168990 result!168964))

(assert (=> d!683584 t!207056))

(declare-fun b_and!184881 () Bool)

(declare-fun tp!732969 () Bool)

(assert (=> b!2310858 (= tp!732969 (and (=> t!207056 result!168990) b_and!184881))))

(declare-fun b_free!69983 () Bool)

(declare-fun b_next!70687 () Bool)

(assert (=> b!2310858 (= b_free!69983 (not b_next!70687))))

(declare-fun t!207058 () Bool)

(declare-fun tb!138665 () Bool)

(assert (=> (and b!2310858 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 (t!206926 rules!1750))))) (toChars!6090 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!207058) tb!138665))

(declare-fun result!168992 () Bool)

(assert (= result!168992 result!168914))

(assert (=> d!683406 t!207058))

(declare-fun t!207060 () Bool)

(declare-fun tb!138667 () Bool)

(assert (=> (and b!2310858 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 (t!206926 rules!1750))))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) t!207060) tb!138667))

(declare-fun result!168994 () Bool)

(assert (= result!168994 result!168880))

(assert (=> d!683310 t!207060))

(assert (=> b!2309944 t!207060))

(declare-fun tb!138669 () Bool)

(declare-fun t!207062 () Bool)

(assert (=> (and b!2310858 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 (t!206926 rules!1750))))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456))))) t!207062) tb!138669))

(declare-fun result!168996 () Bool)

(assert (= result!168996 result!168890))

(assert (=> d!683246 t!207062))

(declare-fun t!207064 () Bool)

(declare-fun tb!138671 () Bool)

(assert (=> (and b!2310858 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 (t!206926 rules!1750))))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) t!207064) tb!138671))

(declare-fun result!168998 () Bool)

(assert (= result!168998 result!168926))

(assert (=> b!2310330 t!207064))

(declare-fun b_and!184883 () Bool)

(declare-fun tp!732972 () Bool)

(assert (=> b!2310858 (= tp!732972 (and (=> t!207064 result!168998) (=> t!207062 result!168996) (=> t!207058 result!168992) (=> t!207060 result!168994) b_and!184883))))

(declare-fun e!1481031 () Bool)

(assert (=> b!2310858 (= e!1481031 (and tp!732969 tp!732972))))

(declare-fun e!1481032 () Bool)

(declare-fun tp!732970 () Bool)

(declare-fun b!2310857 () Bool)

(assert (=> b!2310857 (= e!1481032 (and tp!732970 (inv!37141 (tag!4903 (h!32899 (t!206926 (t!206926 rules!1750))))) (inv!37144 (transformation!4413 (h!32899 (t!206926 (t!206926 rules!1750))))) e!1481031))))

(declare-fun b!2310856 () Bool)

(declare-fun e!1481030 () Bool)

(declare-fun tp!732971 () Bool)

(assert (=> b!2310856 (= e!1481030 (and e!1481032 tp!732971))))

(assert (=> b!2310186 (= tp!732958 e!1481030)))

(assert (= b!2310857 b!2310858))

(assert (= b!2310856 b!2310857))

(assert (= (and b!2310186 ((_ is Cons!27498) (t!206926 (t!206926 rules!1750)))) b!2310856))

(declare-fun m!2738357 () Bool)

(assert (=> b!2310857 m!2738357))

(declare-fun m!2738359 () Bool)

(assert (=> b!2310857 m!2738359))

(declare-fun b!2310859 () Bool)

(declare-fun e!1481034 () Bool)

(declare-fun tp!732973 () Bool)

(assert (=> b!2310859 (= e!1481034 (and tp_is_empty!10743 tp!732973))))

(assert (=> b!2310165 (= tp!732932 e!1481034)))

(assert (= (and b!2310165 ((_ is Cons!27497) (t!206925 (t!206925 suffix!886)))) b!2310859))

(declare-fun b!2310863 () Bool)

(declare-fun e!1481035 () Bool)

(declare-fun tp!732977 () Bool)

(declare-fun tp!732978 () Bool)

(assert (=> b!2310863 (= e!1481035 (and tp!732977 tp!732978))))

(declare-fun b!2310860 () Bool)

(assert (=> b!2310860 (= e!1481035 tp_is_empty!10743)))

(assert (=> b!2310169 (= tp!732936 e!1481035)))

(declare-fun b!2310861 () Bool)

(declare-fun tp!732974 () Bool)

(declare-fun tp!732976 () Bool)

(assert (=> b!2310861 (= e!1481035 (and tp!732974 tp!732976))))

(declare-fun b!2310862 () Bool)

(declare-fun tp!732975 () Bool)

(assert (=> b!2310862 (= e!1481035 tp!732975)))

(assert (= (and b!2310169 ((_ is ElementMatch!6761) (regOne!14035 (regex!4413 r!2363)))) b!2310860))

(assert (= (and b!2310169 ((_ is Concat!11337) (regOne!14035 (regex!4413 r!2363)))) b!2310861))

(assert (= (and b!2310169 ((_ is Star!6761) (regOne!14035 (regex!4413 r!2363)))) b!2310862))

(assert (= (and b!2310169 ((_ is Union!6761) (regOne!14035 (regex!4413 r!2363)))) b!2310863))

(declare-fun b!2310867 () Bool)

(declare-fun e!1481036 () Bool)

(declare-fun tp!732982 () Bool)

(declare-fun tp!732983 () Bool)

(assert (=> b!2310867 (= e!1481036 (and tp!732982 tp!732983))))

(declare-fun b!2310864 () Bool)

(assert (=> b!2310864 (= e!1481036 tp_is_empty!10743)))

(assert (=> b!2310169 (= tp!732937 e!1481036)))

(declare-fun b!2310865 () Bool)

(declare-fun tp!732979 () Bool)

(declare-fun tp!732981 () Bool)

(assert (=> b!2310865 (= e!1481036 (and tp!732979 tp!732981))))

(declare-fun b!2310866 () Bool)

(declare-fun tp!732980 () Bool)

(assert (=> b!2310866 (= e!1481036 tp!732980)))

(assert (= (and b!2310169 ((_ is ElementMatch!6761) (regTwo!14035 (regex!4413 r!2363)))) b!2310864))

(assert (= (and b!2310169 ((_ is Concat!11337) (regTwo!14035 (regex!4413 r!2363)))) b!2310865))

(assert (= (and b!2310169 ((_ is Star!6761) (regTwo!14035 (regex!4413 r!2363)))) b!2310866))

(assert (= (and b!2310169 ((_ is Union!6761) (regTwo!14035 (regex!4413 r!2363)))) b!2310867))

(declare-fun b!2310871 () Bool)

(declare-fun e!1481037 () Bool)

(declare-fun tp!732987 () Bool)

(declare-fun tp!732988 () Bool)

(assert (=> b!2310871 (= e!1481037 (and tp!732987 tp!732988))))

(declare-fun b!2310868 () Bool)

(assert (=> b!2310868 (= e!1481037 tp_is_empty!10743)))

(assert (=> b!2310177 (= tp!732946 e!1481037)))

(declare-fun b!2310869 () Bool)

(declare-fun tp!732984 () Bool)

(declare-fun tp!732986 () Bool)

(assert (=> b!2310869 (= e!1481037 (and tp!732984 tp!732986))))

(declare-fun b!2310870 () Bool)

(declare-fun tp!732985 () Bool)

(assert (=> b!2310870 (= e!1481037 tp!732985)))

(assert (= (and b!2310177 ((_ is ElementMatch!6761) (regOne!14035 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310868))

(assert (= (and b!2310177 ((_ is Concat!11337) (regOne!14035 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310869))

(assert (= (and b!2310177 ((_ is Star!6761) (regOne!14035 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310870))

(assert (= (and b!2310177 ((_ is Union!6761) (regOne!14035 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310871))

(declare-fun b!2310875 () Bool)

(declare-fun e!1481038 () Bool)

(declare-fun tp!732992 () Bool)

(declare-fun tp!732993 () Bool)

(assert (=> b!2310875 (= e!1481038 (and tp!732992 tp!732993))))

(declare-fun b!2310872 () Bool)

(assert (=> b!2310872 (= e!1481038 tp_is_empty!10743)))

(assert (=> b!2310177 (= tp!732947 e!1481038)))

(declare-fun b!2310873 () Bool)

(declare-fun tp!732989 () Bool)

(declare-fun tp!732991 () Bool)

(assert (=> b!2310873 (= e!1481038 (and tp!732989 tp!732991))))

(declare-fun b!2310874 () Bool)

(declare-fun tp!732990 () Bool)

(assert (=> b!2310874 (= e!1481038 tp!732990)))

(assert (= (and b!2310177 ((_ is ElementMatch!6761) (regTwo!14035 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310872))

(assert (= (and b!2310177 ((_ is Concat!11337) (regTwo!14035 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310873))

(assert (= (and b!2310177 ((_ is Star!6761) (regTwo!14035 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310874))

(assert (= (and b!2310177 ((_ is Union!6761) (regTwo!14035 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310875))

(declare-fun e!1481044 () Bool)

(declare-fun tp!733001 () Bool)

(declare-fun tp!733000 () Bool)

(declare-fun b!2310884 () Bool)

(assert (=> b!2310884 (= e!1481044 (and (inv!37148 (left!20829 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456)))))) tp!733000 (inv!37148 (right!21159 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456)))))) tp!733001))))

(declare-fun b!2310886 () Bool)

(declare-fun e!1481043 () Bool)

(declare-fun tp!733002 () Bool)

(assert (=> b!2310886 (= e!1481043 tp!733002)))

(declare-fun b!2310885 () Bool)

(declare-fun inv!37155 (IArray!17953) Bool)

(assert (=> b!2310885 (= e!1481044 (and (inv!37155 (xs!11916 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456)))))) e!1481043))))

(assert (=> b!2309950 (= tp!732895 (and (inv!37148 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456))))) e!1481044))))

(assert (= (and b!2309950 ((_ is Node!8974) (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456)))))) b!2310884))

(assert (= b!2310885 b!2310886))

(assert (= (and b!2309950 ((_ is Leaf!13166) (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (value!139590 (h!32900 tokens!456)))))) b!2310885))

(declare-fun m!2738361 () Bool)

(assert (=> b!2310884 m!2738361))

(declare-fun m!2738363 () Bool)

(assert (=> b!2310884 m!2738363))

(declare-fun m!2738365 () Bool)

(assert (=> b!2310885 m!2738365))

(assert (=> b!2309950 m!2737205))

(declare-fun b!2310890 () Bool)

(declare-fun e!1481045 () Bool)

(declare-fun tp!733006 () Bool)

(declare-fun tp!733007 () Bool)

(assert (=> b!2310890 (= e!1481045 (and tp!733006 tp!733007))))

(declare-fun b!2310887 () Bool)

(assert (=> b!2310887 (= e!1481045 tp_is_empty!10743)))

(assert (=> b!2310168 (= tp!732934 e!1481045)))

(declare-fun b!2310888 () Bool)

(declare-fun tp!733003 () Bool)

(declare-fun tp!733005 () Bool)

(assert (=> b!2310888 (= e!1481045 (and tp!733003 tp!733005))))

(declare-fun b!2310889 () Bool)

(declare-fun tp!733004 () Bool)

(assert (=> b!2310889 (= e!1481045 tp!733004)))

(assert (= (and b!2310168 ((_ is ElementMatch!6761) (reg!7090 (regex!4413 r!2363)))) b!2310887))

(assert (= (and b!2310168 ((_ is Concat!11337) (reg!7090 (regex!4413 r!2363)))) b!2310888))

(assert (= (and b!2310168 ((_ is Star!6761) (reg!7090 (regex!4413 r!2363)))) b!2310889))

(assert (= (and b!2310168 ((_ is Union!6761) (reg!7090 (regex!4413 r!2363)))) b!2310890))

(declare-fun b!2310894 () Bool)

(declare-fun e!1481046 () Bool)

(declare-fun tp!733011 () Bool)

(declare-fun tp!733012 () Bool)

(assert (=> b!2310894 (= e!1481046 (and tp!733011 tp!733012))))

(declare-fun b!2310891 () Bool)

(assert (=> b!2310891 (= e!1481046 tp_is_empty!10743)))

(assert (=> b!2310167 (= tp!732933 e!1481046)))

(declare-fun b!2310892 () Bool)

(declare-fun tp!733008 () Bool)

(declare-fun tp!733010 () Bool)

(assert (=> b!2310892 (= e!1481046 (and tp!733008 tp!733010))))

(declare-fun b!2310893 () Bool)

(declare-fun tp!733009 () Bool)

(assert (=> b!2310893 (= e!1481046 tp!733009)))

(assert (= (and b!2310167 ((_ is ElementMatch!6761) (regOne!14034 (regex!4413 r!2363)))) b!2310891))

(assert (= (and b!2310167 ((_ is Concat!11337) (regOne!14034 (regex!4413 r!2363)))) b!2310892))

(assert (= (and b!2310167 ((_ is Star!6761) (regOne!14034 (regex!4413 r!2363)))) b!2310893))

(assert (= (and b!2310167 ((_ is Union!6761) (regOne!14034 (regex!4413 r!2363)))) b!2310894))

(declare-fun b!2310898 () Bool)

(declare-fun e!1481047 () Bool)

(declare-fun tp!733016 () Bool)

(declare-fun tp!733017 () Bool)

(assert (=> b!2310898 (= e!1481047 (and tp!733016 tp!733017))))

(declare-fun b!2310895 () Bool)

(assert (=> b!2310895 (= e!1481047 tp_is_empty!10743)))

(assert (=> b!2310167 (= tp!732935 e!1481047)))

(declare-fun b!2310896 () Bool)

(declare-fun tp!733013 () Bool)

(declare-fun tp!733015 () Bool)

(assert (=> b!2310896 (= e!1481047 (and tp!733013 tp!733015))))

(declare-fun b!2310897 () Bool)

(declare-fun tp!733014 () Bool)

(assert (=> b!2310897 (= e!1481047 tp!733014)))

(assert (= (and b!2310167 ((_ is ElementMatch!6761) (regTwo!14034 (regex!4413 r!2363)))) b!2310895))

(assert (= (and b!2310167 ((_ is Concat!11337) (regTwo!14034 (regex!4413 r!2363)))) b!2310896))

(assert (= (and b!2310167 ((_ is Star!6761) (regTwo!14034 (regex!4413 r!2363)))) b!2310897))

(assert (= (and b!2310167 ((_ is Union!6761) (regTwo!14034 (regex!4413 r!2363)))) b!2310898))

(declare-fun b!2310902 () Bool)

(declare-fun e!1481048 () Bool)

(declare-fun tp!733021 () Bool)

(declare-fun tp!733022 () Bool)

(assert (=> b!2310902 (= e!1481048 (and tp!733021 tp!733022))))

(declare-fun b!2310899 () Bool)

(assert (=> b!2310899 (= e!1481048 tp_is_empty!10743)))

(assert (=> b!2310176 (= tp!732944 e!1481048)))

(declare-fun b!2310900 () Bool)

(declare-fun tp!733018 () Bool)

(declare-fun tp!733020 () Bool)

(assert (=> b!2310900 (= e!1481048 (and tp!733018 tp!733020))))

(declare-fun b!2310901 () Bool)

(declare-fun tp!733019 () Bool)

(assert (=> b!2310901 (= e!1481048 tp!733019)))

(assert (= (and b!2310176 ((_ is ElementMatch!6761) (reg!7090 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310899))

(assert (= (and b!2310176 ((_ is Concat!11337) (reg!7090 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310900))

(assert (= (and b!2310176 ((_ is Star!6761) (reg!7090 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310901))

(assert (= (and b!2310176 ((_ is Union!6761) (reg!7090 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310902))

(declare-fun b!2310906 () Bool)

(declare-fun e!1481049 () Bool)

(declare-fun tp!733026 () Bool)

(declare-fun tp!733027 () Bool)

(assert (=> b!2310906 (= e!1481049 (and tp!733026 tp!733027))))

(declare-fun b!2310903 () Bool)

(assert (=> b!2310903 (= e!1481049 tp_is_empty!10743)))

(assert (=> b!2310175 (= tp!732943 e!1481049)))

(declare-fun b!2310904 () Bool)

(declare-fun tp!733023 () Bool)

(declare-fun tp!733025 () Bool)

(assert (=> b!2310904 (= e!1481049 (and tp!733023 tp!733025))))

(declare-fun b!2310905 () Bool)

(declare-fun tp!733024 () Bool)

(assert (=> b!2310905 (= e!1481049 tp!733024)))

(assert (= (and b!2310175 ((_ is ElementMatch!6761) (regOne!14034 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310903))

(assert (= (and b!2310175 ((_ is Concat!11337) (regOne!14034 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310904))

(assert (= (and b!2310175 ((_ is Star!6761) (regOne!14034 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310905))

(assert (= (and b!2310175 ((_ is Union!6761) (regOne!14034 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310906))

(declare-fun b!2310910 () Bool)

(declare-fun e!1481050 () Bool)

(declare-fun tp!733031 () Bool)

(declare-fun tp!733032 () Bool)

(assert (=> b!2310910 (= e!1481050 (and tp!733031 tp!733032))))

(declare-fun b!2310907 () Bool)

(assert (=> b!2310907 (= e!1481050 tp_is_empty!10743)))

(assert (=> b!2310175 (= tp!732945 e!1481050)))

(declare-fun b!2310908 () Bool)

(declare-fun tp!733028 () Bool)

(declare-fun tp!733030 () Bool)

(assert (=> b!2310908 (= e!1481050 (and tp!733028 tp!733030))))

(declare-fun b!2310909 () Bool)

(declare-fun tp!733029 () Bool)

(assert (=> b!2310909 (= e!1481050 tp!733029)))

(assert (= (and b!2310175 ((_ is ElementMatch!6761) (regTwo!14034 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310907))

(assert (= (and b!2310175 ((_ is Concat!11337) (regTwo!14034 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310908))

(assert (= (and b!2310175 ((_ is Star!6761) (regTwo!14034 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310909))

(assert (= (and b!2310175 ((_ is Union!6761) (regTwo!14034 (regex!4413 (rule!6767 (h!32900 tokens!456)))))) b!2310910))

(declare-fun b!2310911 () Bool)

(declare-fun e!1481051 () Bool)

(declare-fun tp!733033 () Bool)

(assert (=> b!2310911 (= e!1481051 (and tp_is_empty!10743 tp!733033))))

(assert (=> b!2310163 (= tp!732930 e!1481051)))

(assert (= (and b!2310163 ((_ is Cons!27497) (t!206925 (t!206925 input!1722)))) b!2310911))

(declare-fun b!2310915 () Bool)

(declare-fun e!1481052 () Bool)

(declare-fun tp!733037 () Bool)

(declare-fun tp!733038 () Bool)

(assert (=> b!2310915 (= e!1481052 (and tp!733037 tp!733038))))

(declare-fun b!2310912 () Bool)

(assert (=> b!2310912 (= e!1481052 tp_is_empty!10743)))

(assert (=> b!2310148 (= tp!732913 e!1481052)))

(declare-fun b!2310913 () Bool)

(declare-fun tp!733034 () Bool)

(declare-fun tp!733036 () Bool)

(assert (=> b!2310913 (= e!1481052 (and tp!733034 tp!733036))))

(declare-fun b!2310914 () Bool)

(declare-fun tp!733035 () Bool)

(assert (=> b!2310914 (= e!1481052 tp!733035)))

(assert (= (and b!2310148 ((_ is ElementMatch!6761) (regOne!14035 (regex!4413 otherR!12)))) b!2310912))

(assert (= (and b!2310148 ((_ is Concat!11337) (regOne!14035 (regex!4413 otherR!12)))) b!2310913))

(assert (= (and b!2310148 ((_ is Star!6761) (regOne!14035 (regex!4413 otherR!12)))) b!2310914))

(assert (= (and b!2310148 ((_ is Union!6761) (regOne!14035 (regex!4413 otherR!12)))) b!2310915))

(declare-fun b!2310919 () Bool)

(declare-fun e!1481053 () Bool)

(declare-fun tp!733042 () Bool)

(declare-fun tp!733043 () Bool)

(assert (=> b!2310919 (= e!1481053 (and tp!733042 tp!733043))))

(declare-fun b!2310916 () Bool)

(assert (=> b!2310916 (= e!1481053 tp_is_empty!10743)))

(assert (=> b!2310148 (= tp!732914 e!1481053)))

(declare-fun b!2310917 () Bool)

(declare-fun tp!733039 () Bool)

(declare-fun tp!733041 () Bool)

(assert (=> b!2310917 (= e!1481053 (and tp!733039 tp!733041))))

(declare-fun b!2310918 () Bool)

(declare-fun tp!733040 () Bool)

(assert (=> b!2310918 (= e!1481053 tp!733040)))

(assert (= (and b!2310148 ((_ is ElementMatch!6761) (regTwo!14035 (regex!4413 otherR!12)))) b!2310916))

(assert (= (and b!2310148 ((_ is Concat!11337) (regTwo!14035 (regex!4413 otherR!12)))) b!2310917))

(assert (= (and b!2310148 ((_ is Star!6761) (regTwo!14035 (regex!4413 otherR!12)))) b!2310918))

(assert (= (and b!2310148 ((_ is Union!6761) (regTwo!14035 (regex!4413 otherR!12)))) b!2310919))

(declare-fun b!2310923 () Bool)

(declare-fun e!1481054 () Bool)

(declare-fun tp!733047 () Bool)

(declare-fun tp!733048 () Bool)

(assert (=> b!2310923 (= e!1481054 (and tp!733047 tp!733048))))

(declare-fun b!2310920 () Bool)

(assert (=> b!2310920 (= e!1481054 tp_is_empty!10743)))

(assert (=> b!2310147 (= tp!732911 e!1481054)))

(declare-fun b!2310921 () Bool)

(declare-fun tp!733044 () Bool)

(declare-fun tp!733046 () Bool)

(assert (=> b!2310921 (= e!1481054 (and tp!733044 tp!733046))))

(declare-fun b!2310922 () Bool)

(declare-fun tp!733045 () Bool)

(assert (=> b!2310922 (= e!1481054 tp!733045)))

(assert (= (and b!2310147 ((_ is ElementMatch!6761) (reg!7090 (regex!4413 otherR!12)))) b!2310920))

(assert (= (and b!2310147 ((_ is Concat!11337) (reg!7090 (regex!4413 otherR!12)))) b!2310921))

(assert (= (and b!2310147 ((_ is Star!6761) (reg!7090 (regex!4413 otherR!12)))) b!2310922))

(assert (= (and b!2310147 ((_ is Union!6761) (reg!7090 (regex!4413 otherR!12)))) b!2310923))

(declare-fun b!2310927 () Bool)

(declare-fun e!1481055 () Bool)

(declare-fun tp!733052 () Bool)

(declare-fun tp!733053 () Bool)

(assert (=> b!2310927 (= e!1481055 (and tp!733052 tp!733053))))

(declare-fun b!2310924 () Bool)

(assert (=> b!2310924 (= e!1481055 tp_is_empty!10743)))

(assert (=> b!2310146 (= tp!732910 e!1481055)))

(declare-fun b!2310925 () Bool)

(declare-fun tp!733049 () Bool)

(declare-fun tp!733051 () Bool)

(assert (=> b!2310925 (= e!1481055 (and tp!733049 tp!733051))))

(declare-fun b!2310926 () Bool)

(declare-fun tp!733050 () Bool)

(assert (=> b!2310926 (= e!1481055 tp!733050)))

(assert (= (and b!2310146 ((_ is ElementMatch!6761) (regOne!14034 (regex!4413 otherR!12)))) b!2310924))

(assert (= (and b!2310146 ((_ is Concat!11337) (regOne!14034 (regex!4413 otherR!12)))) b!2310925))

(assert (= (and b!2310146 ((_ is Star!6761) (regOne!14034 (regex!4413 otherR!12)))) b!2310926))

(assert (= (and b!2310146 ((_ is Union!6761) (regOne!14034 (regex!4413 otherR!12)))) b!2310927))

(declare-fun b!2310931 () Bool)

(declare-fun e!1481056 () Bool)

(declare-fun tp!733057 () Bool)

(declare-fun tp!733058 () Bool)

(assert (=> b!2310931 (= e!1481056 (and tp!733057 tp!733058))))

(declare-fun b!2310928 () Bool)

(assert (=> b!2310928 (= e!1481056 tp_is_empty!10743)))

(assert (=> b!2310146 (= tp!732912 e!1481056)))

(declare-fun b!2310929 () Bool)

(declare-fun tp!733054 () Bool)

(declare-fun tp!733056 () Bool)

(assert (=> b!2310929 (= e!1481056 (and tp!733054 tp!733056))))

(declare-fun b!2310930 () Bool)

(declare-fun tp!733055 () Bool)

(assert (=> b!2310930 (= e!1481056 tp!733055)))

(assert (= (and b!2310146 ((_ is ElementMatch!6761) (regTwo!14034 (regex!4413 otherR!12)))) b!2310928))

(assert (= (and b!2310146 ((_ is Concat!11337) (regTwo!14034 (regex!4413 otherR!12)))) b!2310929))

(assert (= (and b!2310146 ((_ is Star!6761) (regTwo!14034 (regex!4413 otherR!12)))) b!2310930))

(assert (= (and b!2310146 ((_ is Union!6761) (regTwo!14034 (regex!4413 otherR!12)))) b!2310931))

(declare-fun e!1481058 () Bool)

(declare-fun tp!733059 () Bool)

(declare-fun tp!733060 () Bool)

(declare-fun b!2310932 () Bool)

(assert (=> b!2310932 (= e!1481058 (and (inv!37148 (left!20829 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456)))))) tp!733059 (inv!37148 (right!21159 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456)))))) tp!733060))))

(declare-fun b!2310934 () Bool)

(declare-fun e!1481057 () Bool)

(declare-fun tp!733061 () Bool)

(assert (=> b!2310934 (= e!1481057 tp!733061)))

(declare-fun b!2310933 () Bool)

(assert (=> b!2310933 (= e!1481058 (and (inv!37155 (xs!11916 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456)))))) e!1481057))))

(assert (=> b!2309993 (= tp!732896 (and (inv!37148 (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456))))) e!1481058))))

(assert (= (and b!2309993 ((_ is Node!8974) (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456)))))) b!2310932))

(assert (= b!2310933 b!2310934))

(assert (= (and b!2309993 ((_ is Leaf!13166) (c!366102 (dynLambda!11961 (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))) (value!139590 (head!5070 tokens!456)))))) b!2310933))

(declare-fun m!2738367 () Bool)

(assert (=> b!2310932 m!2738367))

(declare-fun m!2738369 () Bool)

(assert (=> b!2310932 m!2738369))

(declare-fun m!2738371 () Bool)

(assert (=> b!2310933 m!2738371))

(assert (=> b!2309993 m!2737235))

(declare-fun b!2310938 () Bool)

(declare-fun e!1481059 () Bool)

(declare-fun tp!733065 () Bool)

(declare-fun tp!733066 () Bool)

(assert (=> b!2310938 (= e!1481059 (and tp!733065 tp!733066))))

(declare-fun b!2310935 () Bool)

(assert (=> b!2310935 (= e!1481059 tp_is_empty!10743)))

(assert (=> b!2310161 (= tp!732925 e!1481059)))

(declare-fun b!2310936 () Bool)

(declare-fun tp!733062 () Bool)

(declare-fun tp!733064 () Bool)

(assert (=> b!2310936 (= e!1481059 (and tp!733062 tp!733064))))

(declare-fun b!2310937 () Bool)

(declare-fun tp!733063 () Bool)

(assert (=> b!2310937 (= e!1481059 tp!733063)))

(assert (= (and b!2310161 ((_ is ElementMatch!6761) (regex!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) b!2310935))

(assert (= (and b!2310161 ((_ is Concat!11337) (regex!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) b!2310936))

(assert (= (and b!2310161 ((_ is Star!6761) (regex!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) b!2310937))

(assert (= (and b!2310161 ((_ is Union!6761) (regex!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) b!2310938))

(declare-fun b!2310942 () Bool)

(declare-fun e!1481060 () Bool)

(declare-fun tp!733070 () Bool)

(declare-fun tp!733071 () Bool)

(assert (=> b!2310942 (= e!1481060 (and tp!733070 tp!733071))))

(declare-fun b!2310939 () Bool)

(assert (=> b!2310939 (= e!1481060 tp_is_empty!10743)))

(assert (=> b!2310173 (= tp!732941 e!1481060)))

(declare-fun b!2310940 () Bool)

(declare-fun tp!733067 () Bool)

(declare-fun tp!733069 () Bool)

(assert (=> b!2310940 (= e!1481060 (and tp!733067 tp!733069))))

(declare-fun b!2310941 () Bool)

(declare-fun tp!733068 () Bool)

(assert (=> b!2310941 (= e!1481060 tp!733068)))

(assert (= (and b!2310173 ((_ is ElementMatch!6761) (regOne!14035 (regex!4413 (h!32899 rules!1750))))) b!2310939))

(assert (= (and b!2310173 ((_ is Concat!11337) (regOne!14035 (regex!4413 (h!32899 rules!1750))))) b!2310940))

(assert (= (and b!2310173 ((_ is Star!6761) (regOne!14035 (regex!4413 (h!32899 rules!1750))))) b!2310941))

(assert (= (and b!2310173 ((_ is Union!6761) (regOne!14035 (regex!4413 (h!32899 rules!1750))))) b!2310942))

(declare-fun b!2310946 () Bool)

(declare-fun e!1481061 () Bool)

(declare-fun tp!733075 () Bool)

(declare-fun tp!733076 () Bool)

(assert (=> b!2310946 (= e!1481061 (and tp!733075 tp!733076))))

(declare-fun b!2310943 () Bool)

(assert (=> b!2310943 (= e!1481061 tp_is_empty!10743)))

(assert (=> b!2310173 (= tp!732942 e!1481061)))

(declare-fun b!2310944 () Bool)

(declare-fun tp!733072 () Bool)

(declare-fun tp!733074 () Bool)

(assert (=> b!2310944 (= e!1481061 (and tp!733072 tp!733074))))

(declare-fun b!2310945 () Bool)

(declare-fun tp!733073 () Bool)

(assert (=> b!2310945 (= e!1481061 tp!733073)))

(assert (= (and b!2310173 ((_ is ElementMatch!6761) (regTwo!14035 (regex!4413 (h!32899 rules!1750))))) b!2310943))

(assert (= (and b!2310173 ((_ is Concat!11337) (regTwo!14035 (regex!4413 (h!32899 rules!1750))))) b!2310944))

(assert (= (and b!2310173 ((_ is Star!6761) (regTwo!14035 (regex!4413 (h!32899 rules!1750))))) b!2310945))

(assert (= (and b!2310173 ((_ is Union!6761) (regTwo!14035 (regex!4413 (h!32899 rules!1750))))) b!2310946))

(declare-fun b!2310947 () Bool)

(declare-fun e!1481062 () Bool)

(declare-fun tp!733077 () Bool)

(assert (=> b!2310947 (= e!1481062 (and tp_is_empty!10743 tp!733077))))

(assert (=> b!2310160 (= tp!732929 e!1481062)))

(assert (= (and b!2310160 ((_ is Cons!27497) (originalCharacters!5183 (h!32900 (t!206927 tokens!456))))) b!2310947))

(declare-fun b!2310948 () Bool)

(declare-fun e!1481063 () Bool)

(declare-fun tp!733078 () Bool)

(assert (=> b!2310948 (= e!1481063 (and tp_is_empty!10743 tp!733078))))

(assert (=> b!2310134 (= tp!732899 e!1481063)))

(assert (= (and b!2310134 ((_ is Cons!27497) (t!206925 (originalCharacters!5183 (h!32900 tokens!456))))) b!2310948))

(declare-fun b!2310952 () Bool)

(declare-fun e!1481064 () Bool)

(declare-fun tp!733082 () Bool)

(declare-fun tp!733083 () Bool)

(assert (=> b!2310952 (= e!1481064 (and tp!733082 tp!733083))))

(declare-fun b!2310949 () Bool)

(assert (=> b!2310949 (= e!1481064 tp_is_empty!10743)))

(assert (=> b!2310172 (= tp!732939 e!1481064)))

(declare-fun b!2310950 () Bool)

(declare-fun tp!733079 () Bool)

(declare-fun tp!733081 () Bool)

(assert (=> b!2310950 (= e!1481064 (and tp!733079 tp!733081))))

(declare-fun b!2310951 () Bool)

(declare-fun tp!733080 () Bool)

(assert (=> b!2310951 (= e!1481064 tp!733080)))

(assert (= (and b!2310172 ((_ is ElementMatch!6761) (reg!7090 (regex!4413 (h!32899 rules!1750))))) b!2310949))

(assert (= (and b!2310172 ((_ is Concat!11337) (reg!7090 (regex!4413 (h!32899 rules!1750))))) b!2310950))

(assert (= (and b!2310172 ((_ is Star!6761) (reg!7090 (regex!4413 (h!32899 rules!1750))))) b!2310951))

(assert (= (and b!2310172 ((_ is Union!6761) (reg!7090 (regex!4413 (h!32899 rules!1750))))) b!2310952))

(declare-fun b!2310956 () Bool)

(declare-fun b_free!69985 () Bool)

(declare-fun b_next!70689 () Bool)

(assert (=> b!2310956 (= b_free!69985 (not b_next!70689))))

(declare-fun t!207066 () Bool)

(declare-fun tb!138673 () Bool)

(assert (=> (and b!2310956 (= (toValue!6231 (transformation!4413 (rule!6767 (h!32900 (t!206927 (t!206927 tokens!456)))))) (toValue!6231 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!207066) tb!138673))

(declare-fun result!169002 () Bool)

(assert (= result!169002 result!168964))

(assert (=> d!683584 t!207066))

(declare-fun tp!733086 () Bool)

(declare-fun b_and!184885 () Bool)

(assert (=> b!2310956 (= tp!733086 (and (=> t!207066 result!169002) b_and!184885))))

(declare-fun b_free!69987 () Bool)

(declare-fun b_next!70691 () Bool)

(assert (=> b!2310956 (= b_free!69987 (not b_next!70691))))

(declare-fun t!207068 () Bool)

(declare-fun tb!138675 () Bool)

(assert (=> (and b!2310956 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 (t!206927 tokens!456)))))) (toChars!6090 (transformation!4413 (rule!6767 (_1!16227 (get!8291 lt!857012)))))) t!207068) tb!138675))

(declare-fun result!169004 () Bool)

(assert (= result!169004 result!168914))

(assert (=> d!683406 t!207068))

(declare-fun t!207070 () Bool)

(declare-fun tb!138677 () Bool)

(assert (=> (and b!2310956 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 (t!206927 tokens!456)))))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456))))) t!207070) tb!138677))

(declare-fun result!169006 () Bool)

(assert (= result!169006 result!168880))

(assert (=> d!683310 t!207070))

(assert (=> b!2309944 t!207070))

(declare-fun t!207072 () Bool)

(declare-fun tb!138679 () Bool)

(assert (=> (and b!2310956 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 (t!206927 tokens!456)))))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456))))) t!207072) tb!138679))

(declare-fun result!169008 () Bool)

(assert (= result!169008 result!168890))

(assert (=> d!683246 t!207072))

(declare-fun t!207074 () Bool)

(declare-fun tb!138681 () Bool)

(assert (=> (and b!2310956 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 (t!206927 tokens!456)))))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456)))))) t!207074) tb!138681))

(declare-fun result!169010 () Bool)

(assert (= result!169010 result!168926))

(assert (=> b!2310330 t!207074))

(declare-fun b_and!184887 () Bool)

(declare-fun tp!733087 () Bool)

(assert (=> b!2310956 (= tp!733087 (and (=> t!207068 result!169004) (=> t!207072 result!169008) (=> t!207070 result!169006) (=> t!207074 result!169010) b_and!184887))))

(declare-fun e!1481070 () Bool)

(assert (=> b!2310956 (= e!1481070 (and tp!733086 tp!733087))))

(declare-fun e!1481068 () Bool)

(assert (=> b!2310159 (= tp!732926 e!1481068)))

(declare-fun e!1481065 () Bool)

(declare-fun tp!733088 () Bool)

(declare-fun b!2310954 () Bool)

(declare-fun e!1481066 () Bool)

(assert (=> b!2310954 (= e!1481066 (and (inv!21 (value!139590 (h!32900 (t!206927 (t!206927 tokens!456))))) e!1481065 tp!733088))))

(declare-fun b!2310955 () Bool)

(declare-fun tp!733084 () Bool)

(assert (=> b!2310955 (= e!1481065 (and tp!733084 (inv!37141 (tag!4903 (rule!6767 (h!32900 (t!206927 (t!206927 tokens!456)))))) (inv!37144 (transformation!4413 (rule!6767 (h!32900 (t!206927 (t!206927 tokens!456)))))) e!1481070))))

(declare-fun b!2310953 () Bool)

(declare-fun tp!733085 () Bool)

(assert (=> b!2310953 (= e!1481068 (and (inv!37145 (h!32900 (t!206927 (t!206927 tokens!456)))) e!1481066 tp!733085))))

(assert (= b!2310955 b!2310956))

(assert (= b!2310954 b!2310955))

(assert (= b!2310953 b!2310954))

(assert (= (and b!2310159 ((_ is Cons!27499) (t!206927 (t!206927 tokens!456)))) b!2310953))

(declare-fun m!2738373 () Bool)

(assert (=> b!2310954 m!2738373))

(declare-fun m!2738375 () Bool)

(assert (=> b!2310955 m!2738375))

(declare-fun m!2738377 () Bool)

(assert (=> b!2310955 m!2738377))

(declare-fun m!2738379 () Bool)

(assert (=> b!2310953 m!2738379))

(declare-fun b!2310960 () Bool)

(declare-fun e!1481071 () Bool)

(declare-fun tp!733092 () Bool)

(declare-fun tp!733093 () Bool)

(assert (=> b!2310960 (= e!1481071 (and tp!733092 tp!733093))))

(declare-fun b!2310957 () Bool)

(assert (=> b!2310957 (= e!1481071 tp_is_empty!10743)))

(assert (=> b!2310171 (= tp!732938 e!1481071)))

(declare-fun b!2310958 () Bool)

(declare-fun tp!733089 () Bool)

(declare-fun tp!733091 () Bool)

(assert (=> b!2310958 (= e!1481071 (and tp!733089 tp!733091))))

(declare-fun b!2310959 () Bool)

(declare-fun tp!733090 () Bool)

(assert (=> b!2310959 (= e!1481071 tp!733090)))

(assert (= (and b!2310171 ((_ is ElementMatch!6761) (regOne!14034 (regex!4413 (h!32899 rules!1750))))) b!2310957))

(assert (= (and b!2310171 ((_ is Concat!11337) (regOne!14034 (regex!4413 (h!32899 rules!1750))))) b!2310958))

(assert (= (and b!2310171 ((_ is Star!6761) (regOne!14034 (regex!4413 (h!32899 rules!1750))))) b!2310959))

(assert (= (and b!2310171 ((_ is Union!6761) (regOne!14034 (regex!4413 (h!32899 rules!1750))))) b!2310960))

(declare-fun b!2310964 () Bool)

(declare-fun e!1481072 () Bool)

(declare-fun tp!733097 () Bool)

(declare-fun tp!733098 () Bool)

(assert (=> b!2310964 (= e!1481072 (and tp!733097 tp!733098))))

(declare-fun b!2310961 () Bool)

(assert (=> b!2310961 (= e!1481072 tp_is_empty!10743)))

(assert (=> b!2310171 (= tp!732940 e!1481072)))

(declare-fun b!2310962 () Bool)

(declare-fun tp!733094 () Bool)

(declare-fun tp!733096 () Bool)

(assert (=> b!2310962 (= e!1481072 (and tp!733094 tp!733096))))

(declare-fun b!2310963 () Bool)

(declare-fun tp!733095 () Bool)

(assert (=> b!2310963 (= e!1481072 tp!733095)))

(assert (= (and b!2310171 ((_ is ElementMatch!6761) (regTwo!14034 (regex!4413 (h!32899 rules!1750))))) b!2310961))

(assert (= (and b!2310171 ((_ is Concat!11337) (regTwo!14034 (regex!4413 (h!32899 rules!1750))))) b!2310962))

(assert (= (and b!2310171 ((_ is Star!6761) (regTwo!14034 (regex!4413 (h!32899 rules!1750))))) b!2310963))

(assert (= (and b!2310171 ((_ is Union!6761) (regTwo!14034 (regex!4413 (h!32899 rules!1750))))) b!2310964))

(declare-fun b!2310965 () Bool)

(declare-fun e!1481073 () Bool)

(declare-fun tp!733099 () Bool)

(assert (=> b!2310965 (= e!1481073 (and tp_is_empty!10743 tp!733099))))

(assert (=> b!2310164 (= tp!732931 e!1481073)))

(assert (= (and b!2310164 ((_ is Cons!27497) (t!206925 (t!206925 otherP!12)))) b!2310965))

(declare-fun b_lambda!73665 () Bool)

(assert (= b_lambda!73655 (or (and b!2309613 b_free!69959 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))))) (and b!2310188 b_free!69979 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 rules!1750)))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))))) (and b!2310956 b_free!69987 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 (t!206927 tokens!456)))))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))))) (and b!2310162 b_free!69975) (and b!2309639 b_free!69955 (= (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))))) (and b!2310858 b_free!69983 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 (t!206926 rules!1750))))) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))))) (and b!2309634 b_free!69951 (= (toChars!6090 (transformation!4413 otherR!12)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))))) (and b!2309640 b_free!69963 (= (toChars!6090 (transformation!4413 r!2363)) (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))))) b_lambda!73665)))

(declare-fun b_lambda!73667 () Bool)

(assert (= b_lambda!73645 (or (and b!2309613 b_free!69959 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 tokens!456)))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))))) (and b!2310162 b_free!69975 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 tokens!456))))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))))) (and b!2309634 b_free!69951 (= (toChars!6090 (transformation!4413 otherR!12)) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))))) (and b!2310956 b_free!69987 (= (toChars!6090 (transformation!4413 (rule!6767 (h!32900 (t!206927 (t!206927 tokens!456)))))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))))) (and b!2309639 b_free!69955 (= (toChars!6090 (transformation!4413 (h!32899 rules!1750))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))))) (and b!2309640 b_free!69963 (= (toChars!6090 (transformation!4413 r!2363)) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))))) (and b!2310188 b_free!69979 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 rules!1750)))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))))) (and b!2310858 b_free!69983 (= (toChars!6090 (transformation!4413 (h!32899 (t!206926 (t!206926 rules!1750))))) (toChars!6090 (transformation!4413 (rule!6767 (head!5070 tokens!456)))))) b_lambda!73667)))

(check-sat (not b_next!70665) (not d!683540) (not b!2310415) (not b!2310771) (not b!2310212) (not b!2310336) (not b!2310539) b_and!184887 b_and!184821 (not b_next!70667) (not b!2310908) (not d!683488) (not b!2310819) (not b!2310320) b_and!184829 (not b!2310544) (not d!683406) (not b!2310744) (not tb!138641) b_and!184865 (not d!683398) (not b!2310934) (not b!2310219) (not b!2310210) (not d!683404) (not b!2310856) (not tb!138603) (not b!2310414) (not b!2310867) (not b!2310827) b_and!184859 (not b!2310750) (not b!2310965) (not d!683512) (not b!2310767) (not b!2310308) (not b!2310511) (not b!2310512) (not d!683426) (not b!2310305) (not b!2310857) (not bm!137361) (not b!2310929) (not b!2310945) (not d!683448) (not b!2310854) b_and!184883 (not d!683692) (not bm!137385) (not b!2310273) (not b!2310218) (not b!2310774) (not d!683318) (not d!683434) (not b!2310338) (not bm!137388) (not d!683334) (not b!2310926) (not b!2310940) (not b!2310898) (not b!2310538) (not b!2310534) (not b!2310814) (not b_lambda!73667) (not bm!137340) (not b!2310906) (not d!683498) (not b!2310822) (not b!2310765) (not b!2310568) (not b!2310810) (not bm!137334) b_and!184869 (not b!2310211) (not b!2310894) (not bm!137337) (not b!2310220) (not b!2310831) (not b!2310931) (not d!683592) (not b!2310295) (not b!2310958) (not b!2310743) (not b!2310922) (not b_next!70663) (not b!2310271) (not b!2310768) (not b!2310340) (not d!683714) (not b!2310951) (not d!683588) (not d!683566) (not b!2310946) (not d!683690) (not b!2310532) (not b!2310874) (not b!2310312) (not b!2310272) (not b!2310963) (not d!683716) (not b!2310925) (not b!2310901) (not d!683450) (not b!2310921) (not b!2310327) (not b!2310264) b_and!184881 b_and!184825 (not b!2310204) (not b!2310326) (not d!683614) (not b!2310902) (not b!2310216) (not b!2310292) (not b!2310510) (not b!2310217) (not b_next!70681) (not b_lambda!73653) (not b!2310859) (not b!2310745) (not d!683706) (not b!2310316) (not d!683430) (not b!2310911) (not b!2310889) (not b!2310500) (not b_next!70661) (not b!2310821) (not b!2310892) (not bm!137338) (not bm!137339) (not b!2310265) (not d!683350) (not d!683322) (not b!2310942) (not d!683348) (not b!2310328) (not d!683412) (not b!2310955) (not b_lambda!73665) (not b!2310830) (not b!2310331) (not d!683526) (not d!683708) (not b!2310917) (not b!2310897) (not b!2310962) (not b!2310900) (not b!2310893) (not d!683556) (not b!2310944) (not b!2310950) (not b_next!70685) (not b!2310869) b_and!184827 (not bm!137360) (not b!2310888) (not b!2310959) (not b_next!70687) (not b!2309950) (not d!683418) (not b!2310752) (not b!2310952) (not b!2310855) (not b!2310835) (not b!2310862) (not b!2310885) (not b_next!70659) (not b!2310861) (not b!2310932) (not d!683486) (not d!683722) (not b!2310905) (not d!683502) (not bm!137389) (not b!2310938) (not b!2310865) (not b!2310407) (not d!683528) (not b_next!70677) (not b_next!70653) (not b!2310325) (not d!683440) (not b!2310543) (not b!2310306) b_and!184877 (not b!2310193) (not b!2310315) (not d!683536) (not b!2310330) (not b!2310749) (not b!2310914) (not bm!137326) (not b!2310936) (not b!2310937) (not b!2310913) (not b!2310811) (not bm!137335) (not d!683702) (not b!2310918) (not b!2310746) (not b!2310850) (not b!2310412) (not b!2310960) (not b!2310742) (not b!2310866) (not d!683724) (not b!2310285) (not b!2310870) (not b!2310521) (not b!2310853) (not b!2310823) (not b!2310904) (not b_next!70683) (not b!2310570) (not d!683704) (not b!2310909) (not b!2310954) (not b!2310873) (not b!2310770) (not b!2310871) (not d!683328) (not b!2310948) (not b!2310310) (not b!2310953) (not b!2310763) (not d!683496) (not b!2310884) b_and!184823 (not b!2310501) (not b!2310896) (not b!2310964) (not b!2310396) (not d!683336) (not d!683396) (not b!2310941) (not d!683342) tp_is_empty!10743 (not b!2310334) (not b!2310927) (not b!2310267) (not b!2310825) (not b!2310205) (not b!2310550) (not tb!138591) (not b!2310764) b_and!184885 (not b!2310214) (not b!2310246) (not b!2310416) (not b_lambda!73651) (not b!2310863) (not b!2310923) (not d!683688) (not b!2310933) (not b!2310572) (not d!683436) (not b!2310886) (not b_lambda!73663) b_and!184863 (not b!2310890) (not b_next!70691) (not d!683428) (not d!683700) (not b!2310397) (not b!2310251) (not b!2310332) (not b!2310840) (not b!2310215) (not b!2310930) (not b!2310915) (not b!2310849) (not d!683606) (not b!2310748) (not b!2310520) (not b_next!70655) (not d!683510) (not b_next!70689) (not d!683338) b_and!184831 (not b!2310269) (not b_lambda!73649) (not d!683432) (not b!2310829) (not d!683424) (not b!2310314) (not d!683446) (not b!2310420) (not b_next!70657) (not d!683324) (not b!2310398) (not b!2309993) (not b!2310910) (not b!2310542) (not d!683394) (not b!2310290) (not b_next!70679) (not b!2310410) b_and!184873 (not d!683726) (not b!2310491) (not b!2310875) (not b!2310919) (not b!2310947) (not b!2310816))
(check-sat b_and!184865 b_and!184859 b_and!184883 b_and!184869 (not b_next!70663) (not b_next!70681) (not b_next!70661) (not b_next!70687) (not b_next!70659) (not b_next!70677) (not b_next!70683) b_and!184823 b_and!184885 b_and!184863 (not b_next!70657) (not b_next!70665) (not b_next!70667) b_and!184887 b_and!184821 b_and!184829 b_and!184881 b_and!184825 (not b_next!70685) b_and!184827 (not b_next!70653) b_and!184877 (not b_next!70691) (not b_next!70655) (not b_next!70689) b_and!184831 (not b_next!70679) b_and!184873)
