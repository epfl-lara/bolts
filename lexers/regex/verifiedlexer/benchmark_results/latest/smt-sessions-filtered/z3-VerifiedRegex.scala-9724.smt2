; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!508556 () Bool)

(assert start!508556)

(declare-fun b!4864935 () Bool)

(declare-fun b_free!130603 () Bool)

(declare-fun b_next!131393 () Bool)

(assert (=> b!4864935 (= b_free!130603 (not b_next!131393))))

(declare-fun tp!1368925 () Bool)

(declare-fun b_and!342583 () Bool)

(assert (=> b!4864935 (= tp!1368925 b_and!342583)))

(declare-fun b_free!130605 () Bool)

(declare-fun b_next!131395 () Bool)

(assert (=> b!4864935 (= b_free!130605 (not b_next!131395))))

(declare-fun tp!1368923 () Bool)

(declare-fun b_and!342585 () Bool)

(assert (=> b!4864935 (= tp!1368923 b_and!342585)))

(declare-fun b!4864929 () Bool)

(declare-fun res!2076811 () Bool)

(declare-fun e!3041601 () Bool)

(assert (=> b!4864929 (=> (not res!2076811) (not e!3041601))))

(declare-datatypes ((C!26404 0))(
  ( (C!26405 (val!22524 Int)) )
))
(declare-datatypes ((List!56045 0))(
  ( (Nil!55921) (Cons!55921 (h!62369 C!26404) (t!363801 List!56045)) )
))
(declare-datatypes ((IArray!29193 0))(
  ( (IArray!29194 (innerList!14654 List!56045)) )
))
(declare-datatypes ((Conc!14566 0))(
  ( (Node!14566 (left!40616 Conc!14566) (right!40946 Conc!14566) (csize!29362 Int) (cheight!14777 Int)) (Leaf!24291 (xs!17872 IArray!29193) (csize!29363 Int)) (Empty!14566) )
))
(declare-datatypes ((BalanceConc!28574 0))(
  ( (BalanceConc!28575 (c!827401 Conc!14566)) )
))
(declare-fun input!661 () BalanceConc!28574)

(declare-fun totalInput!332 () BalanceConc!28574)

(declare-fun isSuffix!1057 (List!56045 List!56045) Bool)

(declare-fun list!17472 (BalanceConc!28574) List!56045)

(assert (=> b!4864929 (= res!2076811 (isSuffix!1057 (list!17472 input!661) (list!17472 totalInput!332)))))

(declare-fun b!4864930 () Bool)

(declare-fun e!3041597 () Bool)

(declare-fun tp!1368924 () Bool)

(declare-fun inv!71822 (Conc!14566) Bool)

(assert (=> b!4864930 (= e!3041597 (and (inv!71822 (c!827401 input!661)) tp!1368924))))

(declare-fun b!4864931 () Bool)

(declare-fun e!3041595 () Bool)

(declare-fun e!3041600 () Bool)

(declare-fun tp!1368926 () Bool)

(assert (=> b!4864931 (= e!3041595 (and e!3041600 tp!1368926))))

(declare-fun res!2076810 () Bool)

(assert (=> start!508556 (=> (not res!2076810) (not e!3041601))))

(declare-datatypes ((LexerInterface!7620 0))(
  ( (LexerInterfaceExt!7617 (__x!33969 Int)) (Lexer!7618) )
))
(declare-fun thiss!11777 () LexerInterface!7620)

(get-info :version)

(assert (=> start!508556 (= res!2076810 ((_ is Lexer!7618) thiss!11777))))

(assert (=> start!508556 e!3041601))

(assert (=> start!508556 true))

(assert (=> start!508556 e!3041595))

(declare-fun inv!71823 (BalanceConc!28574) Bool)

(assert (=> start!508556 (and (inv!71823 input!661) e!3041597)))

(declare-fun e!3041596 () Bool)

(assert (=> start!508556 (and (inv!71823 totalInput!332) e!3041596)))

(declare-fun b!4864932 () Bool)

(declare-fun size!36846 (BalanceConc!28574) Int)

(assert (=> b!4864932 (= e!3041601 (< (size!36846 input!661) 0))))

(declare-fun b!4864933 () Bool)

(declare-fun res!2076809 () Bool)

(assert (=> b!4864933 (=> (not res!2076809) (not e!3041601))))

(declare-datatypes ((List!56046 0))(
  ( (Nil!55922) (Cons!55922 (h!62370 (_ BitVec 16)) (t!363802 List!56046)) )
))
(declare-datatypes ((TokenValue!8338 0))(
  ( (FloatLiteralValue!16676 (text!58811 List!56046)) (TokenValueExt!8337 (__x!33970 Int)) (Broken!41690 (value!257915 List!56046)) (Object!8461) (End!8338) (Def!8338) (Underscore!8338) (Match!8338) (Else!8338) (Error!8338) (Case!8338) (If!8338) (Extends!8338) (Abstract!8338) (Class!8338) (Val!8338) (DelimiterValue!16676 (del!8398 List!56046)) (KeywordValue!8344 (value!257916 List!56046)) (CommentValue!16676 (value!257917 List!56046)) (WhitespaceValue!16676 (value!257918 List!56046)) (IndentationValue!8338 (value!257919 List!56046)) (String!63107) (Int32!8338) (Broken!41691 (value!257920 List!56046)) (Boolean!8339) (Unit!145933) (OperatorValue!8341 (op!8398 List!56046)) (IdentifierValue!16676 (value!257921 List!56046)) (IdentifierValue!16677 (value!257922 List!56046)) (WhitespaceValue!16677 (value!257923 List!56046)) (True!16676) (False!16676) (Broken!41692 (value!257924 List!56046)) (Broken!41693 (value!257925 List!56046)) (True!16677) (RightBrace!8338) (RightBracket!8338) (Colon!8338) (Null!8338) (Comma!8338) (LeftBracket!8338) (False!16677) (LeftBrace!8338) (ImaginaryLiteralValue!8338 (text!58812 List!56046)) (StringLiteralValue!25014 (value!257926 List!56046)) (EOFValue!8338 (value!257927 List!56046)) (IdentValue!8338 (value!257928 List!56046)) (DelimiterValue!16677 (value!257929 List!56046)) (DedentValue!8338 (value!257930 List!56046)) (NewLineValue!8338 (value!257931 List!56046)) (IntegerValue!25014 (value!257932 (_ BitVec 32)) (text!58813 List!56046)) (IntegerValue!25015 (value!257933 Int) (text!58814 List!56046)) (Times!8338) (Or!8338) (Equal!8338) (Minus!8338) (Broken!41694 (value!257934 List!56046)) (And!8338) (Div!8338) (LessEqual!8338) (Mod!8338) (Concat!21441) (Not!8338) (Plus!8338) (SpaceValue!8338 (value!257935 List!56046)) (IntegerValue!25016 (value!257936 Int) (text!58815 List!56046)) (StringLiteralValue!25015 (text!58816 List!56046)) (FloatLiteralValue!16677 (text!58817 List!56046)) (BytesLiteralValue!8338 (value!257937 List!56046)) (CommentValue!16677 (value!257938 List!56046)) (StringLiteralValue!25016 (value!257939 List!56046)) (ErrorTokenValue!8338 (msg!8399 List!56046)) )
))
(declare-datatypes ((TokenValueInjection!15984 0))(
  ( (TokenValueInjection!15985 (toValue!10887 Int) (toChars!10746 Int)) )
))
(declare-datatypes ((String!63108 0))(
  ( (String!63109 (value!257940 String)) )
))
(declare-datatypes ((Regex!13103 0))(
  ( (ElementMatch!13103 (c!827402 C!26404)) (Concat!21442 (regOne!26718 Regex!13103) (regTwo!26718 Regex!13103)) (EmptyExpr!13103) (Star!13103 (reg!13432 Regex!13103)) (EmptyLang!13103) (Union!13103 (regOne!26719 Regex!13103) (regTwo!26719 Regex!13103)) )
))
(declare-datatypes ((Rule!15856 0))(
  ( (Rule!15857 (regex!8028 Regex!13103) (tag!8892 String!63108) (isSeparator!8028 Bool) (transformation!8028 TokenValueInjection!15984)) )
))
(declare-datatypes ((List!56047 0))(
  ( (Nil!55923) (Cons!55923 (h!62371 Rule!15856) (t!363803 List!56047)) )
))
(declare-fun rules!1248 () List!56047)

(declare-fun rulesInvariant!6718 (LexerInterface!7620 List!56047) Bool)

(assert (=> b!4864933 (= res!2076809 (rulesInvariant!6718 thiss!11777 rules!1248))))

(declare-fun b!4864934 () Bool)

(declare-fun res!2076808 () Bool)

(assert (=> b!4864934 (=> (not res!2076808) (not e!3041601))))

(declare-fun isEmpty!29909 (List!56047) Bool)

(assert (=> b!4864934 (= res!2076808 (not (isEmpty!29909 rules!1248)))))

(declare-fun e!3041599 () Bool)

(assert (=> b!4864935 (= e!3041599 (and tp!1368925 tp!1368923))))

(declare-fun b!4864936 () Bool)

(declare-fun tp!1368927 () Bool)

(assert (=> b!4864936 (= e!3041596 (and (inv!71822 (c!827401 totalInput!332)) tp!1368927))))

(declare-fun b!4864937 () Bool)

(declare-fun tp!1368922 () Bool)

(declare-fun inv!71818 (String!63108) Bool)

(declare-fun inv!71824 (TokenValueInjection!15984) Bool)

(assert (=> b!4864937 (= e!3041600 (and tp!1368922 (inv!71818 (tag!8892 (h!62371 rules!1248))) (inv!71824 (transformation!8028 (h!62371 rules!1248))) e!3041599))))

(assert (= (and start!508556 res!2076810) b!4864934))

(assert (= (and b!4864934 res!2076808) b!4864933))

(assert (= (and b!4864933 res!2076809) b!4864929))

(assert (= (and b!4864929 res!2076811) b!4864932))

(assert (= b!4864937 b!4864935))

(assert (= b!4864931 b!4864937))

(assert (= (and start!508556 ((_ is Cons!55923) rules!1248)) b!4864931))

(assert (= start!508556 b!4864930))

(assert (= start!508556 b!4864936))

(declare-fun m!5863372 () Bool)

(assert (=> start!508556 m!5863372))

(declare-fun m!5863374 () Bool)

(assert (=> start!508556 m!5863374))

(declare-fun m!5863376 () Bool)

(assert (=> b!4864934 m!5863376))

(declare-fun m!5863378 () Bool)

(assert (=> b!4864930 m!5863378))

(declare-fun m!5863380 () Bool)

(assert (=> b!4864932 m!5863380))

(declare-fun m!5863382 () Bool)

(assert (=> b!4864937 m!5863382))

(declare-fun m!5863384 () Bool)

(assert (=> b!4864937 m!5863384))

(declare-fun m!5863386 () Bool)

(assert (=> b!4864933 m!5863386))

(declare-fun m!5863388 () Bool)

(assert (=> b!4864929 m!5863388))

(declare-fun m!5863390 () Bool)

(assert (=> b!4864929 m!5863390))

(assert (=> b!4864929 m!5863388))

(assert (=> b!4864929 m!5863390))

(declare-fun m!5863392 () Bool)

(assert (=> b!4864929 m!5863392))

(declare-fun m!5863394 () Bool)

(assert (=> b!4864936 m!5863394))

(check-sat (not b_next!131395) (not b!4864937) (not b!4864930) (not b!4864929) (not b_next!131393) b_and!342583 (not b!4864934) (not b!4864931) (not b!4864936) (not start!508556) (not b!4864932) (not b!4864933) b_and!342585)
(check-sat b_and!342585 b_and!342583 (not b_next!131393) (not b_next!131395))
(get-model)

(declare-fun d!1561615 () Bool)

(declare-fun lt!1993653 () Int)

(declare-fun size!36847 (List!56045) Int)

(assert (=> d!1561615 (= lt!1993653 (size!36847 (list!17472 input!661)))))

(declare-fun size!36848 (Conc!14566) Int)

(assert (=> d!1561615 (= lt!1993653 (size!36848 (c!827401 input!661)))))

(assert (=> d!1561615 (= (size!36846 input!661) lt!1993653)))

(declare-fun bs!1174201 () Bool)

(assert (= bs!1174201 d!1561615))

(assert (=> bs!1174201 m!5863388))

(assert (=> bs!1174201 m!5863388))

(declare-fun m!5863396 () Bool)

(assert (=> bs!1174201 m!5863396))

(declare-fun m!5863398 () Bool)

(assert (=> bs!1174201 m!5863398))

(assert (=> b!4864932 d!1561615))

(declare-fun d!1561619 () Bool)

(declare-fun res!2076817 () Bool)

(declare-fun e!3041607 () Bool)

(assert (=> d!1561619 (=> (not res!2076817) (not e!3041607))))

(declare-fun rulesValid!3117 (LexerInterface!7620 List!56047) Bool)

(assert (=> d!1561619 (= res!2076817 (rulesValid!3117 thiss!11777 rules!1248))))

(assert (=> d!1561619 (= (rulesInvariant!6718 thiss!11777 rules!1248) e!3041607)))

(declare-fun b!4864943 () Bool)

(declare-datatypes ((List!56048 0))(
  ( (Nil!55924) (Cons!55924 (h!62372 String!63108) (t!363804 List!56048)) )
))
(declare-fun noDuplicateTag!3278 (LexerInterface!7620 List!56047 List!56048) Bool)

(assert (=> b!4864943 (= e!3041607 (noDuplicateTag!3278 thiss!11777 rules!1248 Nil!55924))))

(assert (= (and d!1561619 res!2076817) b!4864943))

(declare-fun m!5863410 () Bool)

(assert (=> d!1561619 m!5863410))

(declare-fun m!5863412 () Bool)

(assert (=> b!4864943 m!5863412))

(assert (=> b!4864933 d!1561619))

(declare-fun d!1561627 () Bool)

(declare-fun c!827408 () Bool)

(assert (=> d!1561627 (= c!827408 ((_ is Node!14566) (c!827401 totalInput!332)))))

(declare-fun e!3041618 () Bool)

(assert (=> d!1561627 (= (inv!71822 (c!827401 totalInput!332)) e!3041618)))

(declare-fun b!4864959 () Bool)

(declare-fun inv!71825 (Conc!14566) Bool)

(assert (=> b!4864959 (= e!3041618 (inv!71825 (c!827401 totalInput!332)))))

(declare-fun b!4864960 () Bool)

(declare-fun e!3041619 () Bool)

(assert (=> b!4864960 (= e!3041618 e!3041619)))

(declare-fun res!2076823 () Bool)

(assert (=> b!4864960 (= res!2076823 (not ((_ is Leaf!24291) (c!827401 totalInput!332))))))

(assert (=> b!4864960 (=> res!2076823 e!3041619)))

(declare-fun b!4864961 () Bool)

(declare-fun inv!71827 (Conc!14566) Bool)

(assert (=> b!4864961 (= e!3041619 (inv!71827 (c!827401 totalInput!332)))))

(assert (= (and d!1561627 c!827408) b!4864959))

(assert (= (and d!1561627 (not c!827408)) b!4864960))

(assert (= (and b!4864960 (not res!2076823)) b!4864961))

(declare-fun m!5863418 () Bool)

(assert (=> b!4864959 m!5863418))

(declare-fun m!5863420 () Bool)

(assert (=> b!4864961 m!5863420))

(assert (=> b!4864936 d!1561627))

(declare-fun d!1561631 () Bool)

(assert (=> d!1561631 (= (inv!71818 (tag!8892 (h!62371 rules!1248))) (= (mod (str.len (value!257940 (tag!8892 (h!62371 rules!1248)))) 2) 0))))

(assert (=> b!4864937 d!1561631))

(declare-fun d!1561635 () Bool)

(declare-fun res!2076830 () Bool)

(declare-fun e!3041627 () Bool)

(assert (=> d!1561635 (=> (not res!2076830) (not e!3041627))))

(declare-fun semiInverseModEq!3541 (Int Int) Bool)

(assert (=> d!1561635 (= res!2076830 (semiInverseModEq!3541 (toChars!10746 (transformation!8028 (h!62371 rules!1248))) (toValue!10887 (transformation!8028 (h!62371 rules!1248)))))))

(assert (=> d!1561635 (= (inv!71824 (transformation!8028 (h!62371 rules!1248))) e!3041627)))

(declare-fun b!4864970 () Bool)

(declare-fun equivClasses!3420 (Int Int) Bool)

(assert (=> b!4864970 (= e!3041627 (equivClasses!3420 (toChars!10746 (transformation!8028 (h!62371 rules!1248))) (toValue!10887 (transformation!8028 (h!62371 rules!1248)))))))

(assert (= (and d!1561635 res!2076830) b!4864970))

(declare-fun m!5863430 () Bool)

(assert (=> d!1561635 m!5863430))

(declare-fun m!5863432 () Bool)

(assert (=> b!4864970 m!5863432))

(assert (=> b!4864937 d!1561635))

(declare-fun d!1561641 () Bool)

(declare-fun c!827410 () Bool)

(assert (=> d!1561641 (= c!827410 ((_ is Node!14566) (c!827401 input!661)))))

(declare-fun e!3041628 () Bool)

(assert (=> d!1561641 (= (inv!71822 (c!827401 input!661)) e!3041628)))

(declare-fun b!4864971 () Bool)

(assert (=> b!4864971 (= e!3041628 (inv!71825 (c!827401 input!661)))))

(declare-fun b!4864972 () Bool)

(declare-fun e!3041629 () Bool)

(assert (=> b!4864972 (= e!3041628 e!3041629)))

(declare-fun res!2076831 () Bool)

(assert (=> b!4864972 (= res!2076831 (not ((_ is Leaf!24291) (c!827401 input!661))))))

(assert (=> b!4864972 (=> res!2076831 e!3041629)))

(declare-fun b!4864973 () Bool)

(assert (=> b!4864973 (= e!3041629 (inv!71827 (c!827401 input!661)))))

(assert (= (and d!1561641 c!827410) b!4864971))

(assert (= (and d!1561641 (not c!827410)) b!4864972))

(assert (= (and b!4864972 (not res!2076831)) b!4864973))

(declare-fun m!5863434 () Bool)

(assert (=> b!4864971 m!5863434))

(declare-fun m!5863436 () Bool)

(assert (=> b!4864973 m!5863436))

(assert (=> b!4864930 d!1561641))

(declare-fun d!1561643 () Bool)

(declare-fun isBalanced!3949 (Conc!14566) Bool)

(assert (=> d!1561643 (= (inv!71823 input!661) (isBalanced!3949 (c!827401 input!661)))))

(declare-fun bs!1174204 () Bool)

(assert (= bs!1174204 d!1561643))

(declare-fun m!5863438 () Bool)

(assert (=> bs!1174204 m!5863438))

(assert (=> start!508556 d!1561643))

(declare-fun d!1561647 () Bool)

(assert (=> d!1561647 (= (inv!71823 totalInput!332) (isBalanced!3949 (c!827401 totalInput!332)))))

(declare-fun bs!1174205 () Bool)

(assert (= bs!1174205 d!1561647))

(declare-fun m!5863440 () Bool)

(assert (=> bs!1174205 m!5863440))

(assert (=> start!508556 d!1561647))

(declare-fun d!1561649 () Bool)

(declare-fun e!3041632 () Bool)

(assert (=> d!1561649 e!3041632))

(declare-fun res!2076834 () Bool)

(assert (=> d!1561649 (=> res!2076834 e!3041632)))

(declare-fun lt!1993662 () Bool)

(assert (=> d!1561649 (= res!2076834 (not lt!1993662))))

(declare-fun drop!2198 (List!56045 Int) List!56045)

(assert (=> d!1561649 (= lt!1993662 (= (list!17472 input!661) (drop!2198 (list!17472 totalInput!332) (- (size!36847 (list!17472 totalInput!332)) (size!36847 (list!17472 input!661))))))))

(assert (=> d!1561649 (= (isSuffix!1057 (list!17472 input!661) (list!17472 totalInput!332)) lt!1993662)))

(declare-fun b!4864976 () Bool)

(assert (=> b!4864976 (= e!3041632 (>= (size!36847 (list!17472 totalInput!332)) (size!36847 (list!17472 input!661))))))

(assert (= (and d!1561649 (not res!2076834)) b!4864976))

(assert (=> d!1561649 m!5863390))

(declare-fun m!5863448 () Bool)

(assert (=> d!1561649 m!5863448))

(assert (=> d!1561649 m!5863388))

(assert (=> d!1561649 m!5863396))

(assert (=> d!1561649 m!5863390))

(declare-fun m!5863450 () Bool)

(assert (=> d!1561649 m!5863450))

(assert (=> b!4864976 m!5863390))

(assert (=> b!4864976 m!5863448))

(assert (=> b!4864976 m!5863388))

(assert (=> b!4864976 m!5863396))

(assert (=> b!4864929 d!1561649))

(declare-fun d!1561657 () Bool)

(declare-fun list!17474 (Conc!14566) List!56045)

(assert (=> d!1561657 (= (list!17472 input!661) (list!17474 (c!827401 input!661)))))

(declare-fun bs!1174209 () Bool)

(assert (= bs!1174209 d!1561657))

(declare-fun m!5863452 () Bool)

(assert (=> bs!1174209 m!5863452))

(assert (=> b!4864929 d!1561657))

(declare-fun d!1561659 () Bool)

(assert (=> d!1561659 (= (list!17472 totalInput!332) (list!17474 (c!827401 totalInput!332)))))

(declare-fun bs!1174210 () Bool)

(assert (= bs!1174210 d!1561659))

(declare-fun m!5863454 () Bool)

(assert (=> bs!1174210 m!5863454))

(assert (=> b!4864929 d!1561659))

(declare-fun d!1561661 () Bool)

(assert (=> d!1561661 (= (isEmpty!29909 rules!1248) ((_ is Nil!55923) rules!1248))))

(assert (=> b!4864934 d!1561661))

(declare-fun b!4865005 () Bool)

(declare-fun b_free!130607 () Bool)

(declare-fun b_next!131397 () Bool)

(assert (=> b!4865005 (= b_free!130607 (not b_next!131397))))

(declare-fun tp!1368947 () Bool)

(declare-fun b_and!342587 () Bool)

(assert (=> b!4865005 (= tp!1368947 b_and!342587)))

(declare-fun b_free!130609 () Bool)

(declare-fun b_next!131399 () Bool)

(assert (=> b!4865005 (= b_free!130609 (not b_next!131399))))

(declare-fun tp!1368945 () Bool)

(declare-fun b_and!342589 () Bool)

(assert (=> b!4865005 (= tp!1368945 b_and!342589)))

(declare-fun e!3041650 () Bool)

(assert (=> b!4865005 (= e!3041650 (and tp!1368947 tp!1368945))))

(declare-fun tp!1368948 () Bool)

(declare-fun e!3041651 () Bool)

(declare-fun b!4865004 () Bool)

(assert (=> b!4865004 (= e!3041651 (and tp!1368948 (inv!71818 (tag!8892 (h!62371 (t!363803 rules!1248)))) (inv!71824 (transformation!8028 (h!62371 (t!363803 rules!1248)))) e!3041650))))

(declare-fun b!4865001 () Bool)

(declare-fun e!3041652 () Bool)

(declare-fun tp!1368946 () Bool)

(assert (=> b!4865001 (= e!3041652 (and e!3041651 tp!1368946))))

(assert (=> b!4864931 (= tp!1368926 e!3041652)))

(assert (= b!4865004 b!4865005))

(assert (= b!4865001 b!4865004))

(assert (= (and b!4864931 ((_ is Cons!55923) (t!363803 rules!1248))) b!4865001))

(declare-fun m!5863466 () Bool)

(assert (=> b!4865004 m!5863466))

(declare-fun m!5863468 () Bool)

(assert (=> b!4865004 m!5863468))

(declare-fun tp!1368973 () Bool)

(declare-fun b!4865031 () Bool)

(declare-fun tp!1368975 () Bool)

(declare-fun e!3041666 () Bool)

(assert (=> b!4865031 (= e!3041666 (and (inv!71822 (left!40616 (c!827401 totalInput!332))) tp!1368975 (inv!71822 (right!40946 (c!827401 totalInput!332))) tp!1368973))))

(declare-fun b!4865033 () Bool)

(declare-fun e!3041665 () Bool)

(declare-fun tp!1368974 () Bool)

(assert (=> b!4865033 (= e!3041665 tp!1368974)))

(declare-fun b!4865032 () Bool)

(declare-fun inv!71830 (IArray!29193) Bool)

(assert (=> b!4865032 (= e!3041666 (and (inv!71830 (xs!17872 (c!827401 totalInput!332))) e!3041665))))

(assert (=> b!4864936 (= tp!1368927 (and (inv!71822 (c!827401 totalInput!332)) e!3041666))))

(assert (= (and b!4864936 ((_ is Node!14566) (c!827401 totalInput!332))) b!4865031))

(assert (= b!4865032 b!4865033))

(assert (= (and b!4864936 ((_ is Leaf!24291) (c!827401 totalInput!332))) b!4865032))

(declare-fun m!5863476 () Bool)

(assert (=> b!4865031 m!5863476))

(declare-fun m!5863478 () Bool)

(assert (=> b!4865031 m!5863478))

(declare-fun m!5863480 () Bool)

(assert (=> b!4865032 m!5863480))

(assert (=> b!4864936 m!5863394))

(declare-fun e!3041675 () Bool)

(assert (=> b!4864937 (= tp!1368922 e!3041675)))

(declare-fun b!4865051 () Bool)

(declare-fun tp!1368998 () Bool)

(declare-fun tp!1368994 () Bool)

(assert (=> b!4865051 (= e!3041675 (and tp!1368998 tp!1368994))))

(declare-fun b!4865048 () Bool)

(declare-fun tp_is_empty!35655 () Bool)

(assert (=> b!4865048 (= e!3041675 tp_is_empty!35655)))

(declare-fun b!4865050 () Bool)

(declare-fun tp!1368997 () Bool)

(assert (=> b!4865050 (= e!3041675 tp!1368997)))

(declare-fun b!4865049 () Bool)

(declare-fun tp!1368996 () Bool)

(declare-fun tp!1368995 () Bool)

(assert (=> b!4865049 (= e!3041675 (and tp!1368996 tp!1368995))))

(assert (= (and b!4864937 ((_ is ElementMatch!13103) (regex!8028 (h!62371 rules!1248)))) b!4865048))

(assert (= (and b!4864937 ((_ is Concat!21442) (regex!8028 (h!62371 rules!1248)))) b!4865049))

(assert (= (and b!4864937 ((_ is Star!13103) (regex!8028 (h!62371 rules!1248)))) b!4865050))

(assert (= (and b!4864937 ((_ is Union!13103) (regex!8028 (h!62371 rules!1248)))) b!4865051))

(declare-fun e!3041681 () Bool)

(declare-fun tp!1369003 () Bool)

(declare-fun b!4865055 () Bool)

(declare-fun tp!1369005 () Bool)

(assert (=> b!4865055 (= e!3041681 (and (inv!71822 (left!40616 (c!827401 input!661))) tp!1369005 (inv!71822 (right!40946 (c!827401 input!661))) tp!1369003))))

(declare-fun b!4865057 () Bool)

(declare-fun e!3041680 () Bool)

(declare-fun tp!1369004 () Bool)

(assert (=> b!4865057 (= e!3041680 tp!1369004)))

(declare-fun b!4865056 () Bool)

(assert (=> b!4865056 (= e!3041681 (and (inv!71830 (xs!17872 (c!827401 input!661))) e!3041680))))

(assert (=> b!4864930 (= tp!1368924 (and (inv!71822 (c!827401 input!661)) e!3041681))))

(assert (= (and b!4864930 ((_ is Node!14566) (c!827401 input!661))) b!4865055))

(assert (= b!4865056 b!4865057))

(assert (= (and b!4864930 ((_ is Leaf!24291) (c!827401 input!661))) b!4865056))

(declare-fun m!5863484 () Bool)

(assert (=> b!4865055 m!5863484))

(declare-fun m!5863488 () Bool)

(assert (=> b!4865055 m!5863488))

(declare-fun m!5863490 () Bool)

(assert (=> b!4865056 m!5863490))

(assert (=> b!4864930 m!5863378))

(check-sat (not b_next!131395) (not d!1561643) (not d!1561647) (not b!4864973) b_and!342589 (not d!1561649) b_and!342585 (not b_next!131393) (not b!4864976) (not b!4865031) (not b!4864930) (not b!4864936) (not d!1561659) (not b!4864959) (not b!4865001) (not b!4865004) tp_is_empty!35655 (not b_next!131399) (not b!4864943) (not b!4865050) (not d!1561619) (not d!1561657) (not b!4864971) (not b!4864961) (not b!4865055) (not b!4865049) (not b!4864970) (not b!4865051) (not b!4865057) (not d!1561615) (not b!4865032) b_and!342583 b_and!342587 (not b_next!131397) (not b!4865033) (not d!1561635) (not b!4865056))
(check-sat (not b_next!131395) b_and!342589 (not b_next!131399) b_and!342585 (not b_next!131393) b_and!342583 b_and!342587 (not b_next!131397))
(get-model)

(declare-fun b!4865082 () Bool)

(declare-fun res!2076867 () Bool)

(declare-fun e!3041690 () Bool)

(assert (=> b!4865082 (=> (not res!2076867) (not e!3041690))))

(declare-fun height!1923 (Conc!14566) Int)

(assert (=> b!4865082 (= res!2076867 (<= (- (height!1923 (left!40616 (c!827401 totalInput!332))) (height!1923 (right!40946 (c!827401 totalInput!332)))) 1))))

(declare-fun b!4865083 () Bool)

(declare-fun e!3041691 () Bool)

(assert (=> b!4865083 (= e!3041691 e!3041690)))

(declare-fun res!2076869 () Bool)

(assert (=> b!4865083 (=> (not res!2076869) (not e!3041690))))

(assert (=> b!4865083 (= res!2076869 (<= (- 1) (- (height!1923 (left!40616 (c!827401 totalInput!332))) (height!1923 (right!40946 (c!827401 totalInput!332))))))))

(declare-fun b!4865084 () Bool)

(declare-fun res!2076866 () Bool)

(assert (=> b!4865084 (=> (not res!2076866) (not e!3041690))))

(declare-fun isEmpty!29911 (Conc!14566) Bool)

(assert (=> b!4865084 (= res!2076866 (not (isEmpty!29911 (left!40616 (c!827401 totalInput!332)))))))

(declare-fun b!4865085 () Bool)

(declare-fun res!2076870 () Bool)

(assert (=> b!4865085 (=> (not res!2076870) (not e!3041690))))

(assert (=> b!4865085 (= res!2076870 (isBalanced!3949 (right!40946 (c!827401 totalInput!332))))))

(declare-fun b!4865086 () Bool)

(declare-fun res!2076871 () Bool)

(assert (=> b!4865086 (=> (not res!2076871) (not e!3041690))))

(assert (=> b!4865086 (= res!2076871 (isBalanced!3949 (left!40616 (c!827401 totalInput!332))))))

(declare-fun b!4865087 () Bool)

(assert (=> b!4865087 (= e!3041690 (not (isEmpty!29911 (right!40946 (c!827401 totalInput!332)))))))

(declare-fun d!1561663 () Bool)

(declare-fun res!2076868 () Bool)

(assert (=> d!1561663 (=> res!2076868 e!3041691)))

(assert (=> d!1561663 (= res!2076868 (not ((_ is Node!14566) (c!827401 totalInput!332))))))

(assert (=> d!1561663 (= (isBalanced!3949 (c!827401 totalInput!332)) e!3041691)))

(assert (= (and d!1561663 (not res!2076868)) b!4865083))

(assert (= (and b!4865083 res!2076869) b!4865082))

(assert (= (and b!4865082 res!2076867) b!4865086))

(assert (= (and b!4865086 res!2076871) b!4865085))

(assert (= (and b!4865085 res!2076870) b!4865084))

(assert (= (and b!4865084 res!2076866) b!4865087))

(declare-fun m!5863492 () Bool)

(assert (=> b!4865083 m!5863492))

(declare-fun m!5863494 () Bool)

(assert (=> b!4865083 m!5863494))

(declare-fun m!5863496 () Bool)

(assert (=> b!4865087 m!5863496))

(declare-fun m!5863498 () Bool)

(assert (=> b!4865085 m!5863498))

(declare-fun m!5863500 () Bool)

(assert (=> b!4865084 m!5863500))

(declare-fun m!5863502 () Bool)

(assert (=> b!4865086 m!5863502))

(assert (=> b!4865082 m!5863492))

(assert (=> b!4865082 m!5863494))

(assert (=> d!1561647 d!1561663))

(declare-fun d!1561667 () Bool)

(declare-fun res!2076893 () Bool)

(declare-fun e!3041702 () Bool)

(assert (=> d!1561667 (=> (not res!2076893) (not e!3041702))))

(assert (=> d!1561667 (= res!2076893 (= (csize!29362 (c!827401 totalInput!332)) (+ (size!36848 (left!40616 (c!827401 totalInput!332))) (size!36848 (right!40946 (c!827401 totalInput!332))))))))

(assert (=> d!1561667 (= (inv!71825 (c!827401 totalInput!332)) e!3041702)))

(declare-fun b!4865111 () Bool)

(declare-fun res!2076894 () Bool)

(assert (=> b!4865111 (=> (not res!2076894) (not e!3041702))))

(assert (=> b!4865111 (= res!2076894 (and (not (= (left!40616 (c!827401 totalInput!332)) Empty!14566)) (not (= (right!40946 (c!827401 totalInput!332)) Empty!14566))))))

(declare-fun b!4865112 () Bool)

(declare-fun res!2076895 () Bool)

(assert (=> b!4865112 (=> (not res!2076895) (not e!3041702))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4865112 (= res!2076895 (= (cheight!14777 (c!827401 totalInput!332)) (+ (max!0 (height!1923 (left!40616 (c!827401 totalInput!332))) (height!1923 (right!40946 (c!827401 totalInput!332)))) 1)))))

(declare-fun b!4865113 () Bool)

(assert (=> b!4865113 (= e!3041702 (<= 0 (cheight!14777 (c!827401 totalInput!332))))))

(assert (= (and d!1561667 res!2076893) b!4865111))

(assert (= (and b!4865111 res!2076894) b!4865112))

(assert (= (and b!4865112 res!2076895) b!4865113))

(declare-fun m!5863532 () Bool)

(assert (=> d!1561667 m!5863532))

(declare-fun m!5863534 () Bool)

(assert (=> d!1561667 m!5863534))

(assert (=> b!4865112 m!5863492))

(assert (=> b!4865112 m!5863494))

(assert (=> b!4865112 m!5863492))

(assert (=> b!4865112 m!5863494))

(declare-fun m!5863536 () Bool)

(assert (=> b!4865112 m!5863536))

(assert (=> b!4864959 d!1561667))

(declare-fun d!1561679 () Bool)

(assert (=> d!1561679 true))

(declare-fun lt!1993667 () Bool)

(declare-fun rulesValidInductive!3016 (LexerInterface!7620 List!56047) Bool)

(assert (=> d!1561679 (= lt!1993667 (rulesValidInductive!3016 thiss!11777 rules!1248))))

(declare-fun lambda!243373 () Int)

(declare-fun forall!13045 (List!56047 Int) Bool)

(assert (=> d!1561679 (= lt!1993667 (forall!13045 rules!1248 lambda!243373))))

(assert (=> d!1561679 (= (rulesValid!3117 thiss!11777 rules!1248) lt!1993667)))

(declare-fun bs!1174213 () Bool)

(assert (= bs!1174213 d!1561679))

(declare-fun m!5863576 () Bool)

(assert (=> bs!1174213 m!5863576))

(declare-fun m!5863578 () Bool)

(assert (=> bs!1174213 m!5863578))

(assert (=> d!1561619 d!1561679))

(assert (=> b!4864936 d!1561627))

(declare-fun d!1561695 () Bool)

(declare-fun lt!1993674 () Int)

(assert (=> d!1561695 (>= lt!1993674 0)))

(declare-fun e!3041745 () Int)

(assert (=> d!1561695 (= lt!1993674 e!3041745)))

(declare-fun c!827436 () Bool)

(assert (=> d!1561695 (= c!827436 ((_ is Nil!55921) (list!17472 totalInput!332)))))

(assert (=> d!1561695 (= (size!36847 (list!17472 totalInput!332)) lt!1993674)))

(declare-fun b!4865196 () Bool)

(assert (=> b!4865196 (= e!3041745 0)))

(declare-fun b!4865197 () Bool)

(assert (=> b!4865197 (= e!3041745 (+ 1 (size!36847 (t!363801 (list!17472 totalInput!332)))))))

(assert (= (and d!1561695 c!827436) b!4865196))

(assert (= (and d!1561695 (not c!827436)) b!4865197))

(declare-fun m!5863590 () Bool)

(assert (=> b!4865197 m!5863590))

(assert (=> b!4864976 d!1561695))

(declare-fun d!1561701 () Bool)

(declare-fun lt!1993676 () Int)

(assert (=> d!1561701 (>= lt!1993676 0)))

(declare-fun e!3041747 () Int)

(assert (=> d!1561701 (= lt!1993676 e!3041747)))

(declare-fun c!827438 () Bool)

(assert (=> d!1561701 (= c!827438 ((_ is Nil!55921) (list!17472 input!661)))))

(assert (=> d!1561701 (= (size!36847 (list!17472 input!661)) lt!1993676)))

(declare-fun b!4865200 () Bool)

(assert (=> b!4865200 (= e!3041747 0)))

(declare-fun b!4865201 () Bool)

(assert (=> b!4865201 (= e!3041747 (+ 1 (size!36847 (t!363801 (list!17472 input!661)))))))

(assert (= (and d!1561701 c!827438) b!4865200))

(assert (= (and d!1561701 (not c!827438)) b!4865201))

(declare-fun m!5863594 () Bool)

(assert (=> b!4865201 m!5863594))

(assert (=> b!4864976 d!1561701))

(declare-fun d!1561707 () Bool)

(declare-fun res!2076931 () Bool)

(declare-fun e!3041751 () Bool)

(assert (=> d!1561707 (=> (not res!2076931) (not e!3041751))))

(declare-fun list!17476 (IArray!29193) List!56045)

(assert (=> d!1561707 (= res!2076931 (<= (size!36847 (list!17476 (xs!17872 (c!827401 input!661)))) 512))))

(assert (=> d!1561707 (= (inv!71827 (c!827401 input!661)) e!3041751)))

(declare-fun b!4865207 () Bool)

(declare-fun res!2076932 () Bool)

(assert (=> b!4865207 (=> (not res!2076932) (not e!3041751))))

(assert (=> b!4865207 (= res!2076932 (= (csize!29363 (c!827401 input!661)) (size!36847 (list!17476 (xs!17872 (c!827401 input!661))))))))

(declare-fun b!4865208 () Bool)

(assert (=> b!4865208 (= e!3041751 (and (> (csize!29363 (c!827401 input!661)) 0) (<= (csize!29363 (c!827401 input!661)) 512)))))

(assert (= (and d!1561707 res!2076931) b!4865207))

(assert (= (and b!4865207 res!2076932) b!4865208))

(declare-fun m!5863600 () Bool)

(assert (=> d!1561707 m!5863600))

(assert (=> d!1561707 m!5863600))

(declare-fun m!5863602 () Bool)

(assert (=> d!1561707 m!5863602))

(assert (=> b!4865207 m!5863600))

(assert (=> b!4865207 m!5863600))

(assert (=> b!4865207 m!5863602))

(assert (=> b!4864973 d!1561707))

(declare-fun b!4865239 () Bool)

(declare-fun e!3041766 () List!56045)

(declare-fun e!3041768 () List!56045)

(assert (=> b!4865239 (= e!3041766 e!3041768)))

(declare-fun c!827450 () Bool)

(assert (=> b!4865239 (= c!827450 (<= (- (size!36847 (list!17472 totalInput!332)) (size!36847 (list!17472 input!661))) 0))))

(declare-fun b!4865240 () Bool)

(assert (=> b!4865240 (= e!3041768 (drop!2198 (t!363801 (list!17472 totalInput!332)) (- (- (size!36847 (list!17472 totalInput!332)) (size!36847 (list!17472 input!661))) 1)))))

(declare-fun b!4865241 () Bool)

(declare-fun e!3041769 () Int)

(assert (=> b!4865241 (= e!3041769 0)))

(declare-fun b!4865242 () Bool)

(assert (=> b!4865242 (= e!3041768 (list!17472 totalInput!332))))

(declare-fun b!4865243 () Bool)

(declare-fun e!3041770 () Int)

(assert (=> b!4865243 (= e!3041770 e!3041769)))

(declare-fun call!337904 () Int)

(declare-fun c!827452 () Bool)

(assert (=> b!4865243 (= c!827452 (>= (- (size!36847 (list!17472 totalInput!332)) (size!36847 (list!17472 input!661))) call!337904))))

(declare-fun b!4865244 () Bool)

(assert (=> b!4865244 (= e!3041769 (- call!337904 (- (size!36847 (list!17472 totalInput!332)) (size!36847 (list!17472 input!661)))))))

(declare-fun b!4865245 () Bool)

(declare-fun e!3041767 () Bool)

(declare-fun lt!1993685 () List!56045)

(assert (=> b!4865245 (= e!3041767 (= (size!36847 lt!1993685) e!3041770))))

(declare-fun c!827451 () Bool)

(assert (=> b!4865245 (= c!827451 (<= (- (size!36847 (list!17472 totalInput!332)) (size!36847 (list!17472 input!661))) 0))))

(declare-fun d!1561711 () Bool)

(assert (=> d!1561711 e!3041767))

(declare-fun res!2076937 () Bool)

(assert (=> d!1561711 (=> (not res!2076937) (not e!3041767))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9965 (List!56045) (InoxSet C!26404))

(assert (=> d!1561711 (= res!2076937 (= ((_ map implies) (content!9965 lt!1993685) (content!9965 (list!17472 totalInput!332))) ((as const (InoxSet C!26404)) true)))))

(assert (=> d!1561711 (= lt!1993685 e!3041766)))

(declare-fun c!827449 () Bool)

(assert (=> d!1561711 (= c!827449 ((_ is Nil!55921) (list!17472 totalInput!332)))))

(assert (=> d!1561711 (= (drop!2198 (list!17472 totalInput!332) (- (size!36847 (list!17472 totalInput!332)) (size!36847 (list!17472 input!661)))) lt!1993685)))

(declare-fun b!4865246 () Bool)

(assert (=> b!4865246 (= e!3041766 Nil!55921)))

(declare-fun b!4865247 () Bool)

(assert (=> b!4865247 (= e!3041770 call!337904)))

(declare-fun bm!337899 () Bool)

(assert (=> bm!337899 (= call!337904 (size!36847 (list!17472 totalInput!332)))))

(assert (= (and d!1561711 c!827449) b!4865246))

(assert (= (and d!1561711 (not c!827449)) b!4865239))

(assert (= (and b!4865239 c!827450) b!4865242))

(assert (= (and b!4865239 (not c!827450)) b!4865240))

(assert (= (and d!1561711 res!2076937) b!4865245))

(assert (= (and b!4865245 c!827451) b!4865247))

(assert (= (and b!4865245 (not c!827451)) b!4865243))

(assert (= (and b!4865243 c!827452) b!4865241))

(assert (= (and b!4865243 (not c!827452)) b!4865244))

(assert (= (or b!4865247 b!4865243 b!4865244) bm!337899))

(declare-fun m!5863628 () Bool)

(assert (=> b!4865240 m!5863628))

(declare-fun m!5863630 () Bool)

(assert (=> b!4865245 m!5863630))

(declare-fun m!5863632 () Bool)

(assert (=> d!1561711 m!5863632))

(assert (=> d!1561711 m!5863390))

(declare-fun m!5863634 () Bool)

(assert (=> d!1561711 m!5863634))

(assert (=> bm!337899 m!5863390))

(assert (=> bm!337899 m!5863448))

(assert (=> d!1561649 d!1561711))

(assert (=> d!1561649 d!1561695))

(assert (=> d!1561649 d!1561701))

(declare-fun d!1561725 () Bool)

(declare-fun res!2076938 () Bool)

(declare-fun e!3041774 () Bool)

(assert (=> d!1561725 (=> (not res!2076938) (not e!3041774))))

(assert (=> d!1561725 (= res!2076938 (= (csize!29362 (c!827401 input!661)) (+ (size!36848 (left!40616 (c!827401 input!661))) (size!36848 (right!40946 (c!827401 input!661))))))))

(assert (=> d!1561725 (= (inv!71825 (c!827401 input!661)) e!3041774)))

(declare-fun b!4865256 () Bool)

(declare-fun res!2076939 () Bool)

(assert (=> b!4865256 (=> (not res!2076939) (not e!3041774))))

(assert (=> b!4865256 (= res!2076939 (and (not (= (left!40616 (c!827401 input!661)) Empty!14566)) (not (= (right!40946 (c!827401 input!661)) Empty!14566))))))

(declare-fun b!4865257 () Bool)

(declare-fun res!2076940 () Bool)

(assert (=> b!4865257 (=> (not res!2076940) (not e!3041774))))

(assert (=> b!4865257 (= res!2076940 (= (cheight!14777 (c!827401 input!661)) (+ (max!0 (height!1923 (left!40616 (c!827401 input!661))) (height!1923 (right!40946 (c!827401 input!661)))) 1)))))

(declare-fun b!4865258 () Bool)

(assert (=> b!4865258 (= e!3041774 (<= 0 (cheight!14777 (c!827401 input!661))))))

(assert (= (and d!1561725 res!2076938) b!4865256))

(assert (= (and b!4865256 res!2076939) b!4865257))

(assert (= (and b!4865257 res!2076940) b!4865258))

(declare-fun m!5863636 () Bool)

(assert (=> d!1561725 m!5863636))

(declare-fun m!5863638 () Bool)

(assert (=> d!1561725 m!5863638))

(declare-fun m!5863640 () Bool)

(assert (=> b!4865257 m!5863640))

(declare-fun m!5863642 () Bool)

(assert (=> b!4865257 m!5863642))

(assert (=> b!4865257 m!5863640))

(assert (=> b!4865257 m!5863642))

(declare-fun m!5863644 () Bool)

(assert (=> b!4865257 m!5863644))

(assert (=> b!4864971 d!1561725))

(declare-fun b!4865264 () Bool)

(declare-fun res!2076942 () Bool)

(declare-fun e!3041778 () Bool)

(assert (=> b!4865264 (=> (not res!2076942) (not e!3041778))))

(assert (=> b!4865264 (= res!2076942 (<= (- (height!1923 (left!40616 (c!827401 input!661))) (height!1923 (right!40946 (c!827401 input!661)))) 1))))

(declare-fun b!4865265 () Bool)

(declare-fun e!3041779 () Bool)

(assert (=> b!4865265 (= e!3041779 e!3041778)))

(declare-fun res!2076944 () Bool)

(assert (=> b!4865265 (=> (not res!2076944) (not e!3041778))))

(assert (=> b!4865265 (= res!2076944 (<= (- 1) (- (height!1923 (left!40616 (c!827401 input!661))) (height!1923 (right!40946 (c!827401 input!661))))))))

(declare-fun b!4865266 () Bool)

(declare-fun res!2076941 () Bool)

(assert (=> b!4865266 (=> (not res!2076941) (not e!3041778))))

(assert (=> b!4865266 (= res!2076941 (not (isEmpty!29911 (left!40616 (c!827401 input!661)))))))

(declare-fun b!4865267 () Bool)

(declare-fun res!2076945 () Bool)

(assert (=> b!4865267 (=> (not res!2076945) (not e!3041778))))

(assert (=> b!4865267 (= res!2076945 (isBalanced!3949 (right!40946 (c!827401 input!661))))))

(declare-fun b!4865268 () Bool)

(declare-fun res!2076946 () Bool)

(assert (=> b!4865268 (=> (not res!2076946) (not e!3041778))))

(assert (=> b!4865268 (= res!2076946 (isBalanced!3949 (left!40616 (c!827401 input!661))))))

(declare-fun b!4865269 () Bool)

(assert (=> b!4865269 (= e!3041778 (not (isEmpty!29911 (right!40946 (c!827401 input!661)))))))

(declare-fun d!1561727 () Bool)

(declare-fun res!2076943 () Bool)

(assert (=> d!1561727 (=> res!2076943 e!3041779)))

(assert (=> d!1561727 (= res!2076943 (not ((_ is Node!14566) (c!827401 input!661))))))

(assert (=> d!1561727 (= (isBalanced!3949 (c!827401 input!661)) e!3041779)))

(assert (= (and d!1561727 (not res!2076943)) b!4865265))

(assert (= (and b!4865265 res!2076944) b!4865264))

(assert (= (and b!4865264 res!2076942) b!4865268))

(assert (= (and b!4865268 res!2076946) b!4865267))

(assert (= (and b!4865267 res!2076945) b!4865266))

(assert (= (and b!4865266 res!2076941) b!4865269))

(assert (=> b!4865265 m!5863640))

(assert (=> b!4865265 m!5863642))

(declare-fun m!5863646 () Bool)

(assert (=> b!4865269 m!5863646))

(declare-fun m!5863648 () Bool)

(assert (=> b!4865267 m!5863648))

(declare-fun m!5863650 () Bool)

(assert (=> b!4865266 m!5863650))

(declare-fun m!5863652 () Bool)

(assert (=> b!4865268 m!5863652))

(assert (=> b!4865264 m!5863640))

(assert (=> b!4865264 m!5863642))

(assert (=> d!1561643 d!1561727))

(declare-fun d!1561729 () Bool)

(assert (=> d!1561729 (= (inv!71830 (xs!17872 (c!827401 input!661))) (<= (size!36847 (innerList!14654 (xs!17872 (c!827401 input!661)))) 2147483647))))

(declare-fun bs!1174218 () Bool)

(assert (= bs!1174218 d!1561729))

(declare-fun m!5863666 () Bool)

(assert (=> bs!1174218 m!5863666))

(assert (=> b!4865056 d!1561729))

(declare-fun d!1561731 () Bool)

(declare-fun c!827455 () Bool)

(assert (=> d!1561731 (= c!827455 ((_ is Node!14566) (left!40616 (c!827401 input!661))))))

(declare-fun e!3041791 () Bool)

(assert (=> d!1561731 (= (inv!71822 (left!40616 (c!827401 input!661))) e!3041791)))

(declare-fun b!4865288 () Bool)

(assert (=> b!4865288 (= e!3041791 (inv!71825 (left!40616 (c!827401 input!661))))))

(declare-fun b!4865289 () Bool)

(declare-fun e!3041792 () Bool)

(assert (=> b!4865289 (= e!3041791 e!3041792)))

(declare-fun res!2076947 () Bool)

(assert (=> b!4865289 (= res!2076947 (not ((_ is Leaf!24291) (left!40616 (c!827401 input!661)))))))

(assert (=> b!4865289 (=> res!2076947 e!3041792)))

(declare-fun b!4865290 () Bool)

(assert (=> b!4865290 (= e!3041792 (inv!71827 (left!40616 (c!827401 input!661))))))

(assert (= (and d!1561731 c!827455) b!4865288))

(assert (= (and d!1561731 (not c!827455)) b!4865289))

(assert (= (and b!4865289 (not res!2076947)) b!4865290))

(declare-fun m!5863672 () Bool)

(assert (=> b!4865288 m!5863672))

(declare-fun m!5863674 () Bool)

(assert (=> b!4865290 m!5863674))

(assert (=> b!4865055 d!1561731))

(declare-fun d!1561733 () Bool)

(declare-fun c!827456 () Bool)

(assert (=> d!1561733 (= c!827456 ((_ is Node!14566) (right!40946 (c!827401 input!661))))))

(declare-fun e!3041794 () Bool)

(assert (=> d!1561733 (= (inv!71822 (right!40946 (c!827401 input!661))) e!3041794)))

(declare-fun b!4865295 () Bool)

(assert (=> b!4865295 (= e!3041794 (inv!71825 (right!40946 (c!827401 input!661))))))

(declare-fun b!4865296 () Bool)

(declare-fun e!3041795 () Bool)

(assert (=> b!4865296 (= e!3041794 e!3041795)))

(declare-fun res!2076948 () Bool)

(assert (=> b!4865296 (= res!2076948 (not ((_ is Leaf!24291) (right!40946 (c!827401 input!661)))))))

(assert (=> b!4865296 (=> res!2076948 e!3041795)))

(declare-fun b!4865297 () Bool)

(assert (=> b!4865297 (= e!3041795 (inv!71827 (right!40946 (c!827401 input!661))))))

(assert (= (and d!1561733 c!827456) b!4865295))

(assert (= (and d!1561733 (not c!827456)) b!4865296))

(assert (= (and b!4865296 (not res!2076948)) b!4865297))

(declare-fun m!5863676 () Bool)

(assert (=> b!4865295 m!5863676))

(declare-fun m!5863678 () Bool)

(assert (=> b!4865297 m!5863678))

(assert (=> b!4865055 d!1561733))

(declare-fun d!1561735 () Bool)

(assert (=> d!1561735 true))

(declare-fun lambda!243382 () Int)

(declare-fun order!25189 () Int)

(declare-fun order!25187 () Int)

(declare-fun dynLambda!22435 (Int Int) Int)

(declare-fun dynLambda!22436 (Int Int) Int)

(assert (=> d!1561735 (< (dynLambda!22435 order!25187 (toChars!10746 (transformation!8028 (h!62371 rules!1248)))) (dynLambda!22436 order!25189 lambda!243382))))

(assert (=> d!1561735 true))

(declare-fun order!25191 () Int)

(declare-fun dynLambda!22437 (Int Int) Int)

(assert (=> d!1561735 (< (dynLambda!22437 order!25191 (toValue!10887 (transformation!8028 (h!62371 rules!1248)))) (dynLambda!22436 order!25189 lambda!243382))))

(declare-fun Forall!1670 (Int) Bool)

(assert (=> d!1561735 (= (semiInverseModEq!3541 (toChars!10746 (transformation!8028 (h!62371 rules!1248))) (toValue!10887 (transformation!8028 (h!62371 rules!1248)))) (Forall!1670 lambda!243382))))

(declare-fun bs!1174219 () Bool)

(assert (= bs!1174219 d!1561735))

(declare-fun m!5863692 () Bool)

(assert (=> bs!1174219 m!5863692))

(assert (=> d!1561635 d!1561735))

(declare-fun d!1561737 () Bool)

(assert (=> d!1561737 (= (inv!71830 (xs!17872 (c!827401 totalInput!332))) (<= (size!36847 (innerList!14654 (xs!17872 (c!827401 totalInput!332)))) 2147483647))))

(declare-fun bs!1174220 () Bool)

(assert (= bs!1174220 d!1561737))

(declare-fun m!5863694 () Bool)

(assert (=> bs!1174220 m!5863694))

(assert (=> b!4865032 d!1561737))

(declare-fun b!4865327 () Bool)

(declare-fun e!3041807 () List!56045)

(declare-fun ++!12177 (List!56045 List!56045) List!56045)

(assert (=> b!4865327 (= e!3041807 (++!12177 (list!17474 (left!40616 (c!827401 input!661))) (list!17474 (right!40946 (c!827401 input!661)))))))

(declare-fun d!1561739 () Bool)

(declare-fun c!827461 () Bool)

(assert (=> d!1561739 (= c!827461 ((_ is Empty!14566) (c!827401 input!661)))))

(declare-fun e!3041806 () List!56045)

(assert (=> d!1561739 (= (list!17474 (c!827401 input!661)) e!3041806)))

(declare-fun b!4865324 () Bool)

(assert (=> b!4865324 (= e!3041806 Nil!55921)))

(declare-fun b!4865325 () Bool)

(assert (=> b!4865325 (= e!3041806 e!3041807)))

(declare-fun c!827462 () Bool)

(assert (=> b!4865325 (= c!827462 ((_ is Leaf!24291) (c!827401 input!661)))))

(declare-fun b!4865326 () Bool)

(assert (=> b!4865326 (= e!3041807 (list!17476 (xs!17872 (c!827401 input!661))))))

(assert (= (and d!1561739 c!827461) b!4865324))

(assert (= (and d!1561739 (not c!827461)) b!4865325))

(assert (= (and b!4865325 c!827462) b!4865326))

(assert (= (and b!4865325 (not c!827462)) b!4865327))

(declare-fun m!5863696 () Bool)

(assert (=> b!4865327 m!5863696))

(declare-fun m!5863698 () Bool)

(assert (=> b!4865327 m!5863698))

(assert (=> b!4865327 m!5863696))

(assert (=> b!4865327 m!5863698))

(declare-fun m!5863700 () Bool)

(assert (=> b!4865327 m!5863700))

(assert (=> b!4865326 m!5863600))

(assert (=> d!1561657 d!1561739))

(declare-fun d!1561741 () Bool)

(assert (=> d!1561741 (= (inv!71818 (tag!8892 (h!62371 (t!363803 rules!1248)))) (= (mod (str.len (value!257940 (tag!8892 (h!62371 (t!363803 rules!1248))))) 2) 0))))

(assert (=> b!4865004 d!1561741))

(declare-fun d!1561743 () Bool)

(declare-fun res!2076949 () Bool)

(declare-fun e!3041808 () Bool)

(assert (=> d!1561743 (=> (not res!2076949) (not e!3041808))))

(assert (=> d!1561743 (= res!2076949 (semiInverseModEq!3541 (toChars!10746 (transformation!8028 (h!62371 (t!363803 rules!1248)))) (toValue!10887 (transformation!8028 (h!62371 (t!363803 rules!1248))))))))

(assert (=> d!1561743 (= (inv!71824 (transformation!8028 (h!62371 (t!363803 rules!1248)))) e!3041808)))

(declare-fun b!4865328 () Bool)

(assert (=> b!4865328 (= e!3041808 (equivClasses!3420 (toChars!10746 (transformation!8028 (h!62371 (t!363803 rules!1248)))) (toValue!10887 (transformation!8028 (h!62371 (t!363803 rules!1248))))))))

(assert (= (and d!1561743 res!2076949) b!4865328))

(declare-fun m!5863702 () Bool)

(assert (=> d!1561743 m!5863702))

(declare-fun m!5863704 () Bool)

(assert (=> b!4865328 m!5863704))

(assert (=> b!4865004 d!1561743))

(assert (=> d!1561615 d!1561701))

(assert (=> d!1561615 d!1561657))

(declare-fun d!1561745 () Bool)

(declare-fun lt!1993688 () Int)

(assert (=> d!1561745 (= lt!1993688 (size!36847 (list!17474 (c!827401 input!661))))))

(assert (=> d!1561745 (= lt!1993688 (ite ((_ is Empty!14566) (c!827401 input!661)) 0 (ite ((_ is Leaf!24291) (c!827401 input!661)) (csize!29363 (c!827401 input!661)) (csize!29362 (c!827401 input!661)))))))

(assert (=> d!1561745 (= (size!36848 (c!827401 input!661)) lt!1993688)))

(declare-fun bs!1174221 () Bool)

(assert (= bs!1174221 d!1561745))

(assert (=> bs!1174221 m!5863452))

(assert (=> bs!1174221 m!5863452))

(declare-fun m!5863706 () Bool)

(assert (=> bs!1174221 m!5863706))

(assert (=> d!1561615 d!1561745))

(declare-fun d!1561747 () Bool)

(declare-fun c!827463 () Bool)

(assert (=> d!1561747 (= c!827463 ((_ is Node!14566) (left!40616 (c!827401 totalInput!332))))))

(declare-fun e!3041809 () Bool)

(assert (=> d!1561747 (= (inv!71822 (left!40616 (c!827401 totalInput!332))) e!3041809)))

(declare-fun b!4865329 () Bool)

(assert (=> b!4865329 (= e!3041809 (inv!71825 (left!40616 (c!827401 totalInput!332))))))

(declare-fun b!4865330 () Bool)

(declare-fun e!3041810 () Bool)

(assert (=> b!4865330 (= e!3041809 e!3041810)))

(declare-fun res!2076950 () Bool)

(assert (=> b!4865330 (= res!2076950 (not ((_ is Leaf!24291) (left!40616 (c!827401 totalInput!332)))))))

(assert (=> b!4865330 (=> res!2076950 e!3041810)))

(declare-fun b!4865331 () Bool)

(assert (=> b!4865331 (= e!3041810 (inv!71827 (left!40616 (c!827401 totalInput!332))))))

(assert (= (and d!1561747 c!827463) b!4865329))

(assert (= (and d!1561747 (not c!827463)) b!4865330))

(assert (= (and b!4865330 (not res!2076950)) b!4865331))

(declare-fun m!5863708 () Bool)

(assert (=> b!4865329 m!5863708))

(declare-fun m!5863710 () Bool)

(assert (=> b!4865331 m!5863710))

(assert (=> b!4865031 d!1561747))

(declare-fun d!1561749 () Bool)

(declare-fun c!827464 () Bool)

(assert (=> d!1561749 (= c!827464 ((_ is Node!14566) (right!40946 (c!827401 totalInput!332))))))

(declare-fun e!3041811 () Bool)

(assert (=> d!1561749 (= (inv!71822 (right!40946 (c!827401 totalInput!332))) e!3041811)))

(declare-fun b!4865332 () Bool)

(assert (=> b!4865332 (= e!3041811 (inv!71825 (right!40946 (c!827401 totalInput!332))))))

(declare-fun b!4865333 () Bool)

(declare-fun e!3041812 () Bool)

(assert (=> b!4865333 (= e!3041811 e!3041812)))

(declare-fun res!2076951 () Bool)

(assert (=> b!4865333 (= res!2076951 (not ((_ is Leaf!24291) (right!40946 (c!827401 totalInput!332)))))))

(assert (=> b!4865333 (=> res!2076951 e!3041812)))

(declare-fun b!4865334 () Bool)

(assert (=> b!4865334 (= e!3041812 (inv!71827 (right!40946 (c!827401 totalInput!332))))))

(assert (= (and d!1561749 c!827464) b!4865332))

(assert (= (and d!1561749 (not c!827464)) b!4865333))

(assert (= (and b!4865333 (not res!2076951)) b!4865334))

(declare-fun m!5863712 () Bool)

(assert (=> b!4865332 m!5863712))

(declare-fun m!5863714 () Bool)

(assert (=> b!4865334 m!5863714))

(assert (=> b!4865031 d!1561749))

(assert (=> b!4864930 d!1561641))

(declare-fun d!1561751 () Bool)

(declare-fun res!2076956 () Bool)

(declare-fun e!3041817 () Bool)

(assert (=> d!1561751 (=> res!2076956 e!3041817)))

(assert (=> d!1561751 (= res!2076956 ((_ is Nil!55923) rules!1248))))

(assert (=> d!1561751 (= (noDuplicateTag!3278 thiss!11777 rules!1248 Nil!55924) e!3041817)))

(declare-fun b!4865339 () Bool)

(declare-fun e!3041818 () Bool)

(assert (=> b!4865339 (= e!3041817 e!3041818)))

(declare-fun res!2076957 () Bool)

(assert (=> b!4865339 (=> (not res!2076957) (not e!3041818))))

(declare-fun contains!19388 (List!56048 String!63108) Bool)

(assert (=> b!4865339 (= res!2076957 (not (contains!19388 Nil!55924 (tag!8892 (h!62371 rules!1248)))))))

(declare-fun b!4865340 () Bool)

(assert (=> b!4865340 (= e!3041818 (noDuplicateTag!3278 thiss!11777 (t!363803 rules!1248) (Cons!55924 (tag!8892 (h!62371 rules!1248)) Nil!55924)))))

(assert (= (and d!1561751 (not res!2076956)) b!4865339))

(assert (= (and b!4865339 res!2076957) b!4865340))

(declare-fun m!5863716 () Bool)

(assert (=> b!4865339 m!5863716))

(declare-fun m!5863718 () Bool)

(assert (=> b!4865340 m!5863718))

(assert (=> b!4864943 d!1561751))

(declare-fun b!4865344 () Bool)

(declare-fun e!3041820 () List!56045)

(assert (=> b!4865344 (= e!3041820 (++!12177 (list!17474 (left!40616 (c!827401 totalInput!332))) (list!17474 (right!40946 (c!827401 totalInput!332)))))))

(declare-fun d!1561753 () Bool)

(declare-fun c!827465 () Bool)

(assert (=> d!1561753 (= c!827465 ((_ is Empty!14566) (c!827401 totalInput!332)))))

(declare-fun e!3041819 () List!56045)

(assert (=> d!1561753 (= (list!17474 (c!827401 totalInput!332)) e!3041819)))

(declare-fun b!4865341 () Bool)

(assert (=> b!4865341 (= e!3041819 Nil!55921)))

(declare-fun b!4865342 () Bool)

(assert (=> b!4865342 (= e!3041819 e!3041820)))

(declare-fun c!827466 () Bool)

(assert (=> b!4865342 (= c!827466 ((_ is Leaf!24291) (c!827401 totalInput!332)))))

(declare-fun b!4865343 () Bool)

(assert (=> b!4865343 (= e!3041820 (list!17476 (xs!17872 (c!827401 totalInput!332))))))

(assert (= (and d!1561753 c!827465) b!4865341))

(assert (= (and d!1561753 (not c!827465)) b!4865342))

(assert (= (and b!4865342 c!827466) b!4865343))

(assert (= (and b!4865342 (not c!827466)) b!4865344))

(declare-fun m!5863720 () Bool)

(assert (=> b!4865344 m!5863720))

(declare-fun m!5863722 () Bool)

(assert (=> b!4865344 m!5863722))

(assert (=> b!4865344 m!5863720))

(assert (=> b!4865344 m!5863722))

(declare-fun m!5863724 () Bool)

(assert (=> b!4865344 m!5863724))

(declare-fun m!5863726 () Bool)

(assert (=> b!4865343 m!5863726))

(assert (=> d!1561659 d!1561753))

(declare-fun d!1561755 () Bool)

(declare-fun res!2076958 () Bool)

(declare-fun e!3041821 () Bool)

(assert (=> d!1561755 (=> (not res!2076958) (not e!3041821))))

(assert (=> d!1561755 (= res!2076958 (<= (size!36847 (list!17476 (xs!17872 (c!827401 totalInput!332)))) 512))))

(assert (=> d!1561755 (= (inv!71827 (c!827401 totalInput!332)) e!3041821)))

(declare-fun b!4865345 () Bool)

(declare-fun res!2076959 () Bool)

(assert (=> b!4865345 (=> (not res!2076959) (not e!3041821))))

(assert (=> b!4865345 (= res!2076959 (= (csize!29363 (c!827401 totalInput!332)) (size!36847 (list!17476 (xs!17872 (c!827401 totalInput!332))))))))

(declare-fun b!4865346 () Bool)

(assert (=> b!4865346 (= e!3041821 (and (> (csize!29363 (c!827401 totalInput!332)) 0) (<= (csize!29363 (c!827401 totalInput!332)) 512)))))

(assert (= (and d!1561755 res!2076958) b!4865345))

(assert (= (and b!4865345 res!2076959) b!4865346))

(assert (=> d!1561755 m!5863726))

(assert (=> d!1561755 m!5863726))

(declare-fun m!5863728 () Bool)

(assert (=> d!1561755 m!5863728))

(assert (=> b!4865345 m!5863726))

(assert (=> b!4865345 m!5863726))

(assert (=> b!4865345 m!5863728))

(assert (=> b!4864961 d!1561755))

(declare-fun d!1561757 () Bool)

(assert (=> d!1561757 true))

(declare-fun lambda!243385 () Int)

(declare-fun order!25193 () Int)

(declare-fun dynLambda!22440 (Int Int) Int)

(assert (=> d!1561757 (< (dynLambda!22437 order!25191 (toValue!10887 (transformation!8028 (h!62371 rules!1248)))) (dynLambda!22440 order!25193 lambda!243385))))

(declare-fun Forall2!1251 (Int) Bool)

(assert (=> d!1561757 (= (equivClasses!3420 (toChars!10746 (transformation!8028 (h!62371 rules!1248))) (toValue!10887 (transformation!8028 (h!62371 rules!1248)))) (Forall2!1251 lambda!243385))))

(declare-fun bs!1174222 () Bool)

(assert (= bs!1174222 d!1561757))

(declare-fun m!5863730 () Bool)

(assert (=> bs!1174222 m!5863730))

(assert (=> b!4864970 d!1561757))

(declare-fun e!3041824 () Bool)

(assert (=> b!4865050 (= tp!1368997 e!3041824)))

(declare-fun b!4865354 () Bool)

(declare-fun tp!1369060 () Bool)

(declare-fun tp!1369056 () Bool)

(assert (=> b!4865354 (= e!3041824 (and tp!1369060 tp!1369056))))

(declare-fun b!4865351 () Bool)

(assert (=> b!4865351 (= e!3041824 tp_is_empty!35655)))

(declare-fun b!4865353 () Bool)

(declare-fun tp!1369059 () Bool)

(assert (=> b!4865353 (= e!3041824 tp!1369059)))

(declare-fun b!4865352 () Bool)

(declare-fun tp!1369058 () Bool)

(declare-fun tp!1369057 () Bool)

(assert (=> b!4865352 (= e!3041824 (and tp!1369058 tp!1369057))))

(assert (= (and b!4865050 ((_ is ElementMatch!13103) (reg!13432 (regex!8028 (h!62371 rules!1248))))) b!4865351))

(assert (= (and b!4865050 ((_ is Concat!21442) (reg!13432 (regex!8028 (h!62371 rules!1248))))) b!4865352))

(assert (= (and b!4865050 ((_ is Star!13103) (reg!13432 (regex!8028 (h!62371 rules!1248))))) b!4865353))

(assert (= (and b!4865050 ((_ is Union!13103) (reg!13432 (regex!8028 (h!62371 rules!1248))))) b!4865354))

(declare-fun e!3041825 () Bool)

(assert (=> b!4865004 (= tp!1368948 e!3041825)))

(declare-fun b!4865358 () Bool)

(declare-fun tp!1369065 () Bool)

(declare-fun tp!1369061 () Bool)

(assert (=> b!4865358 (= e!3041825 (and tp!1369065 tp!1369061))))

(declare-fun b!4865355 () Bool)

(assert (=> b!4865355 (= e!3041825 tp_is_empty!35655)))

(declare-fun b!4865357 () Bool)

(declare-fun tp!1369064 () Bool)

(assert (=> b!4865357 (= e!3041825 tp!1369064)))

(declare-fun b!4865356 () Bool)

(declare-fun tp!1369063 () Bool)

(declare-fun tp!1369062 () Bool)

(assert (=> b!4865356 (= e!3041825 (and tp!1369063 tp!1369062))))

(assert (= (and b!4865004 ((_ is ElementMatch!13103) (regex!8028 (h!62371 (t!363803 rules!1248))))) b!4865355))

(assert (= (and b!4865004 ((_ is Concat!21442) (regex!8028 (h!62371 (t!363803 rules!1248))))) b!4865356))

(assert (= (and b!4865004 ((_ is Star!13103) (regex!8028 (h!62371 (t!363803 rules!1248))))) b!4865357))

(assert (= (and b!4865004 ((_ is Union!13103) (regex!8028 (h!62371 (t!363803 rules!1248))))) b!4865358))

(declare-fun e!3041826 () Bool)

(assert (=> b!4865051 (= tp!1368998 e!3041826)))

(declare-fun b!4865362 () Bool)

(declare-fun tp!1369070 () Bool)

(declare-fun tp!1369066 () Bool)

(assert (=> b!4865362 (= e!3041826 (and tp!1369070 tp!1369066))))

(declare-fun b!4865359 () Bool)

(assert (=> b!4865359 (= e!3041826 tp_is_empty!35655)))

(declare-fun b!4865361 () Bool)

(declare-fun tp!1369069 () Bool)

(assert (=> b!4865361 (= e!3041826 tp!1369069)))

(declare-fun b!4865360 () Bool)

(declare-fun tp!1369068 () Bool)

(declare-fun tp!1369067 () Bool)

(assert (=> b!4865360 (= e!3041826 (and tp!1369068 tp!1369067))))

(assert (= (and b!4865051 ((_ is ElementMatch!13103) (regOne!26719 (regex!8028 (h!62371 rules!1248))))) b!4865359))

(assert (= (and b!4865051 ((_ is Concat!21442) (regOne!26719 (regex!8028 (h!62371 rules!1248))))) b!4865360))

(assert (= (and b!4865051 ((_ is Star!13103) (regOne!26719 (regex!8028 (h!62371 rules!1248))))) b!4865361))

(assert (= (and b!4865051 ((_ is Union!13103) (regOne!26719 (regex!8028 (h!62371 rules!1248))))) b!4865362))

(declare-fun e!3041827 () Bool)

(assert (=> b!4865051 (= tp!1368994 e!3041827)))

(declare-fun b!4865366 () Bool)

(declare-fun tp!1369075 () Bool)

(declare-fun tp!1369071 () Bool)

(assert (=> b!4865366 (= e!3041827 (and tp!1369075 tp!1369071))))

(declare-fun b!4865363 () Bool)

(assert (=> b!4865363 (= e!3041827 tp_is_empty!35655)))

(declare-fun b!4865365 () Bool)

(declare-fun tp!1369074 () Bool)

(assert (=> b!4865365 (= e!3041827 tp!1369074)))

(declare-fun b!4865364 () Bool)

(declare-fun tp!1369073 () Bool)

(declare-fun tp!1369072 () Bool)

(assert (=> b!4865364 (= e!3041827 (and tp!1369073 tp!1369072))))

(assert (= (and b!4865051 ((_ is ElementMatch!13103) (regTwo!26719 (regex!8028 (h!62371 rules!1248))))) b!4865363))

(assert (= (and b!4865051 ((_ is Concat!21442) (regTwo!26719 (regex!8028 (h!62371 rules!1248))))) b!4865364))

(assert (= (and b!4865051 ((_ is Star!13103) (regTwo!26719 (regex!8028 (h!62371 rules!1248))))) b!4865365))

(assert (= (and b!4865051 ((_ is Union!13103) (regTwo!26719 (regex!8028 (h!62371 rules!1248))))) b!4865366))

(declare-fun e!3041829 () Bool)

(declare-fun tp!1369076 () Bool)

(declare-fun b!4865367 () Bool)

(declare-fun tp!1369078 () Bool)

(assert (=> b!4865367 (= e!3041829 (and (inv!71822 (left!40616 (left!40616 (c!827401 totalInput!332)))) tp!1369078 (inv!71822 (right!40946 (left!40616 (c!827401 totalInput!332)))) tp!1369076))))

(declare-fun b!4865369 () Bool)

(declare-fun e!3041828 () Bool)

(declare-fun tp!1369077 () Bool)

(assert (=> b!4865369 (= e!3041828 tp!1369077)))

(declare-fun b!4865368 () Bool)

(assert (=> b!4865368 (= e!3041829 (and (inv!71830 (xs!17872 (left!40616 (c!827401 totalInput!332)))) e!3041828))))

(assert (=> b!4865031 (= tp!1368975 (and (inv!71822 (left!40616 (c!827401 totalInput!332))) e!3041829))))

(assert (= (and b!4865031 ((_ is Node!14566) (left!40616 (c!827401 totalInput!332)))) b!4865367))

(assert (= b!4865368 b!4865369))

(assert (= (and b!4865031 ((_ is Leaf!24291) (left!40616 (c!827401 totalInput!332)))) b!4865368))

(declare-fun m!5863732 () Bool)

(assert (=> b!4865367 m!5863732))

(declare-fun m!5863734 () Bool)

(assert (=> b!4865367 m!5863734))

(declare-fun m!5863736 () Bool)

(assert (=> b!4865368 m!5863736))

(assert (=> b!4865031 m!5863476))

(declare-fun tp!1369081 () Bool)

(declare-fun e!3041831 () Bool)

(declare-fun tp!1369079 () Bool)

(declare-fun b!4865370 () Bool)

(assert (=> b!4865370 (= e!3041831 (and (inv!71822 (left!40616 (right!40946 (c!827401 totalInput!332)))) tp!1369081 (inv!71822 (right!40946 (right!40946 (c!827401 totalInput!332)))) tp!1369079))))

(declare-fun b!4865372 () Bool)

(declare-fun e!3041830 () Bool)

(declare-fun tp!1369080 () Bool)

(assert (=> b!4865372 (= e!3041830 tp!1369080)))

(declare-fun b!4865371 () Bool)

(assert (=> b!4865371 (= e!3041831 (and (inv!71830 (xs!17872 (right!40946 (c!827401 totalInput!332)))) e!3041830))))

(assert (=> b!4865031 (= tp!1368973 (and (inv!71822 (right!40946 (c!827401 totalInput!332))) e!3041831))))

(assert (= (and b!4865031 ((_ is Node!14566) (right!40946 (c!827401 totalInput!332)))) b!4865370))

(assert (= b!4865371 b!4865372))

(assert (= (and b!4865031 ((_ is Leaf!24291) (right!40946 (c!827401 totalInput!332)))) b!4865371))

(declare-fun m!5863738 () Bool)

(assert (=> b!4865370 m!5863738))

(declare-fun m!5863740 () Bool)

(assert (=> b!4865370 m!5863740))

(declare-fun m!5863742 () Bool)

(assert (=> b!4865371 m!5863742))

(assert (=> b!4865031 m!5863478))

(declare-fun e!3041832 () Bool)

(assert (=> b!4865049 (= tp!1368996 e!3041832)))

(declare-fun b!4865376 () Bool)

(declare-fun tp!1369086 () Bool)

(declare-fun tp!1369082 () Bool)

(assert (=> b!4865376 (= e!3041832 (and tp!1369086 tp!1369082))))

(declare-fun b!4865373 () Bool)

(assert (=> b!4865373 (= e!3041832 tp_is_empty!35655)))

(declare-fun b!4865375 () Bool)

(declare-fun tp!1369085 () Bool)

(assert (=> b!4865375 (= e!3041832 tp!1369085)))

(declare-fun b!4865374 () Bool)

(declare-fun tp!1369084 () Bool)

(declare-fun tp!1369083 () Bool)

(assert (=> b!4865374 (= e!3041832 (and tp!1369084 tp!1369083))))

(assert (= (and b!4865049 ((_ is ElementMatch!13103) (regOne!26718 (regex!8028 (h!62371 rules!1248))))) b!4865373))

(assert (= (and b!4865049 ((_ is Concat!21442) (regOne!26718 (regex!8028 (h!62371 rules!1248))))) b!4865374))

(assert (= (and b!4865049 ((_ is Star!13103) (regOne!26718 (regex!8028 (h!62371 rules!1248))))) b!4865375))

(assert (= (and b!4865049 ((_ is Union!13103) (regOne!26718 (regex!8028 (h!62371 rules!1248))))) b!4865376))

(declare-fun e!3041833 () Bool)

(assert (=> b!4865049 (= tp!1368995 e!3041833)))

(declare-fun b!4865380 () Bool)

(declare-fun tp!1369091 () Bool)

(declare-fun tp!1369087 () Bool)

(assert (=> b!4865380 (= e!3041833 (and tp!1369091 tp!1369087))))

(declare-fun b!4865377 () Bool)

(assert (=> b!4865377 (= e!3041833 tp_is_empty!35655)))

(declare-fun b!4865379 () Bool)

(declare-fun tp!1369090 () Bool)

(assert (=> b!4865379 (= e!3041833 tp!1369090)))

(declare-fun b!4865378 () Bool)

(declare-fun tp!1369089 () Bool)

(declare-fun tp!1369088 () Bool)

(assert (=> b!4865378 (= e!3041833 (and tp!1369089 tp!1369088))))

(assert (= (and b!4865049 ((_ is ElementMatch!13103) (regTwo!26718 (regex!8028 (h!62371 rules!1248))))) b!4865377))

(assert (= (and b!4865049 ((_ is Concat!21442) (regTwo!26718 (regex!8028 (h!62371 rules!1248))))) b!4865378))

(assert (= (and b!4865049 ((_ is Star!13103) (regTwo!26718 (regex!8028 (h!62371 rules!1248))))) b!4865379))

(assert (= (and b!4865049 ((_ is Union!13103) (regTwo!26718 (regex!8028 (h!62371 rules!1248))))) b!4865380))

(declare-fun b!4865385 () Bool)

(declare-fun e!3041836 () Bool)

(declare-fun tp!1369094 () Bool)

(assert (=> b!4865385 (= e!3041836 (and tp_is_empty!35655 tp!1369094))))

(assert (=> b!4865057 (= tp!1369004 e!3041836)))

(assert (= (and b!4865057 ((_ is Cons!55921) (innerList!14654 (xs!17872 (c!827401 input!661))))) b!4865385))

(declare-fun b!4865386 () Bool)

(declare-fun e!3041837 () Bool)

(declare-fun tp!1369095 () Bool)

(assert (=> b!4865386 (= e!3041837 (and tp_is_empty!35655 tp!1369095))))

(assert (=> b!4865033 (= tp!1368974 e!3041837)))

(assert (= (and b!4865033 ((_ is Cons!55921) (innerList!14654 (xs!17872 (c!827401 totalInput!332))))) b!4865386))

(declare-fun tp!1369096 () Bool)

(declare-fun b!4865387 () Bool)

(declare-fun e!3041839 () Bool)

(declare-fun tp!1369098 () Bool)

(assert (=> b!4865387 (= e!3041839 (and (inv!71822 (left!40616 (left!40616 (c!827401 input!661)))) tp!1369098 (inv!71822 (right!40946 (left!40616 (c!827401 input!661)))) tp!1369096))))

(declare-fun b!4865389 () Bool)

(declare-fun e!3041838 () Bool)

(declare-fun tp!1369097 () Bool)

(assert (=> b!4865389 (= e!3041838 tp!1369097)))

(declare-fun b!4865388 () Bool)

(assert (=> b!4865388 (= e!3041839 (and (inv!71830 (xs!17872 (left!40616 (c!827401 input!661)))) e!3041838))))

(assert (=> b!4865055 (= tp!1369005 (and (inv!71822 (left!40616 (c!827401 input!661))) e!3041839))))

(assert (= (and b!4865055 ((_ is Node!14566) (left!40616 (c!827401 input!661)))) b!4865387))

(assert (= b!4865388 b!4865389))

(assert (= (and b!4865055 ((_ is Leaf!24291) (left!40616 (c!827401 input!661)))) b!4865388))

(declare-fun m!5863744 () Bool)

(assert (=> b!4865387 m!5863744))

(declare-fun m!5863746 () Bool)

(assert (=> b!4865387 m!5863746))

(declare-fun m!5863748 () Bool)

(assert (=> b!4865388 m!5863748))

(assert (=> b!4865055 m!5863484))

(declare-fun tp!1369099 () Bool)

(declare-fun tp!1369101 () Bool)

(declare-fun e!3041841 () Bool)

(declare-fun b!4865390 () Bool)

(assert (=> b!4865390 (= e!3041841 (and (inv!71822 (left!40616 (right!40946 (c!827401 input!661)))) tp!1369101 (inv!71822 (right!40946 (right!40946 (c!827401 input!661)))) tp!1369099))))

(declare-fun b!4865392 () Bool)

(declare-fun e!3041840 () Bool)

(declare-fun tp!1369100 () Bool)

(assert (=> b!4865392 (= e!3041840 tp!1369100)))

(declare-fun b!4865391 () Bool)

(assert (=> b!4865391 (= e!3041841 (and (inv!71830 (xs!17872 (right!40946 (c!827401 input!661)))) e!3041840))))

(assert (=> b!4865055 (= tp!1369003 (and (inv!71822 (right!40946 (c!827401 input!661))) e!3041841))))

(assert (= (and b!4865055 ((_ is Node!14566) (right!40946 (c!827401 input!661)))) b!4865390))

(assert (= b!4865391 b!4865392))

(assert (= (and b!4865055 ((_ is Leaf!24291) (right!40946 (c!827401 input!661)))) b!4865391))

(declare-fun m!5863750 () Bool)

(assert (=> b!4865390 m!5863750))

(declare-fun m!5863752 () Bool)

(assert (=> b!4865390 m!5863752))

(declare-fun m!5863754 () Bool)

(assert (=> b!4865391 m!5863754))

(assert (=> b!4865055 m!5863488))

(declare-fun b!4865395 () Bool)

(declare-fun b_free!130619 () Bool)

(declare-fun b_next!131409 () Bool)

(assert (=> b!4865395 (= b_free!130619 (not b_next!131409))))

(declare-fun tp!1369104 () Bool)

(declare-fun b_and!342599 () Bool)

(assert (=> b!4865395 (= tp!1369104 b_and!342599)))

(declare-fun b_free!130621 () Bool)

(declare-fun b_next!131411 () Bool)

(assert (=> b!4865395 (= b_free!130621 (not b_next!131411))))

(declare-fun tp!1369102 () Bool)

(declare-fun b_and!342601 () Bool)

(assert (=> b!4865395 (= tp!1369102 b_and!342601)))

(declare-fun e!3041842 () Bool)

(assert (=> b!4865395 (= e!3041842 (and tp!1369104 tp!1369102))))

(declare-fun b!4865394 () Bool)

(declare-fun tp!1369105 () Bool)

(declare-fun e!3041843 () Bool)

(assert (=> b!4865394 (= e!3041843 (and tp!1369105 (inv!71818 (tag!8892 (h!62371 (t!363803 (t!363803 rules!1248))))) (inv!71824 (transformation!8028 (h!62371 (t!363803 (t!363803 rules!1248))))) e!3041842))))

(declare-fun b!4865393 () Bool)

(declare-fun e!3041844 () Bool)

(declare-fun tp!1369103 () Bool)

(assert (=> b!4865393 (= e!3041844 (and e!3041843 tp!1369103))))

(assert (=> b!4865001 (= tp!1368946 e!3041844)))

(assert (= b!4865394 b!4865395))

(assert (= b!4865393 b!4865394))

(assert (= (and b!4865001 ((_ is Cons!55923) (t!363803 (t!363803 rules!1248)))) b!4865393))

(declare-fun m!5863756 () Bool)

(assert (=> b!4865394 m!5863756))

(declare-fun m!5863758 () Bool)

(assert (=> b!4865394 m!5863758))

(check-sat (not b!4865371) (not b!4865339) (not b!4865334) (not d!1561725) (not b_next!131395) (not b!4865356) (not b!4865083) (not b!4865357) (not b!4865365) (not b!4865390) (not b!4865031) (not b!4865372) (not b!4865112) (not b!4865386) (not b!4865389) (not b!4865392) (not b!4865288) (not b!4865369) (not b!4865085) (not b!4865082) (not b!4865265) (not b!4865394) (not b!4865268) (not d!1561711) (not b!4865374) (not d!1561735) (not d!1561667) (not b!4865367) (not b!4865326) (not b!4865332) (not b!4865264) (not d!1561757) (not b!4865387) (not b!4865240) (not b!4865343) b_and!342589 (not b!4865295) (not b!4865331) (not b!4865201) (not b!4865370) (not b_next!131399) (not b!4865207) (not b!4865362) (not d!1561743) tp_is_empty!35655 (not b!4865379) (not b!4865245) (not b!4865086) (not d!1561745) (not b!4865366) (not b!4865385) (not b!4865297) b_and!342585 (not b!4865380) (not d!1561679) (not b_next!131393) (not bm!337899) (not b!4865328) (not b!4865388) (not d!1561707) (not b!4865360) (not b!4865055) b_and!342601 (not b!4865340) (not d!1561737) (not b_next!131409) b_and!342599 (not b!4865364) (not b!4865267) (not b!4865358) (not b!4865269) (not b!4865266) (not b!4865353) (not b!4865393) (not b!4865087) (not b_next!131411) (not b!4865376) (not b!4865327) (not b!4865368) (not b!4865344) (not b!4865375) b_and!342583 b_and!342587 (not b!4865361) (not b_next!131397) (not d!1561729) (not b!4865354) (not b!4865329) (not b!4865257) (not d!1561755) (not b!4865290) (not b!4865197) (not b!4865352) (not b!4865378) (not b!4865345) (not b!4865391) (not b!4865084))
(check-sat (not b_next!131395) b_and!342589 (not b_next!131399) b_and!342585 (not b_next!131393) b_and!342601 (not b_next!131411) (not b_next!131409) b_and!342599 b_and!342583 b_and!342587 (not b_next!131397))
