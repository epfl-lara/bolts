; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!240590 () Bool)

(assert start!240590)

(declare-fun b!2466972 () Bool)

(declare-fun b_free!71061 () Bool)

(declare-fun b_next!71765 () Bool)

(assert (=> b!2466972 (= b_free!71061 (not b_next!71765))))

(declare-fun tp!787057 () Bool)

(declare-fun b_and!186597 () Bool)

(assert (=> b!2466972 (= tp!787057 b_and!186597)))

(declare-fun b_free!71063 () Bool)

(declare-fun b_next!71767 () Bool)

(assert (=> b!2466972 (= b_free!71063 (not b_next!71767))))

(declare-fun tp!787060 () Bool)

(declare-fun b_and!186599 () Bool)

(assert (=> b!2466972 (= tp!787060 b_and!186599)))

(declare-fun b!2466968 () Bool)

(declare-fun b_free!71065 () Bool)

(declare-fun b_next!71769 () Bool)

(assert (=> b!2466968 (= b_free!71065 (not b_next!71769))))

(declare-fun tp!787058 () Bool)

(declare-fun b_and!186601 () Bool)

(assert (=> b!2466968 (= tp!787058 b_and!186601)))

(declare-fun b_free!71067 () Bool)

(declare-fun b_next!71771 () Bool)

(assert (=> b!2466968 (= b_free!71067 (not b_next!71771))))

(declare-fun tp!787063 () Bool)

(declare-fun b_and!186603 () Bool)

(assert (=> b!2466968 (= tp!787063 b_and!186603)))

(declare-fun b!2466966 () Bool)

(declare-fun b_free!71069 () Bool)

(declare-fun b_next!71773 () Bool)

(assert (=> b!2466966 (= b_free!71069 (not b_next!71773))))

(declare-fun tp!787055 () Bool)

(declare-fun b_and!186605 () Bool)

(assert (=> b!2466966 (= tp!787055 b_and!186605)))

(declare-fun b_free!71071 () Bool)

(declare-fun b_next!71775 () Bool)

(assert (=> b!2466966 (= b_free!71071 (not b_next!71775))))

(declare-fun tp!787061 () Bool)

(declare-fun b_and!186607 () Bool)

(assert (=> b!2466966 (= tp!787061 b_and!186607)))

(declare-fun b!2466962 () Bool)

(declare-fun b_free!71073 () Bool)

(declare-fun b_next!71777 () Bool)

(assert (=> b!2466962 (= b_free!71073 (not b_next!71777))))

(declare-fun tp!787062 () Bool)

(declare-fun b_and!186609 () Bool)

(assert (=> b!2466962 (= tp!787062 b_and!186609)))

(declare-fun b_free!71075 () Bool)

(declare-fun b_next!71779 () Bool)

(assert (=> b!2466962 (= b_free!71075 (not b_next!71779))))

(declare-fun tp!787053 () Bool)

(declare-fun b_and!186611 () Bool)

(assert (=> b!2466962 (= tp!787053 b_and!186611)))

(declare-fun b!2466955 () Bool)

(declare-datatypes ((List!28839 0))(
  ( (Nil!28739) (Cons!28739 (h!34140 (_ BitVec 16)) (t!209502 List!28839)) )
))
(declare-datatypes ((TokenValue!4659 0))(
  ( (FloatLiteralValue!9318 (text!33058 List!28839)) (TokenValueExt!4658 (__x!18573 Int)) (Broken!23295 (value!142860 List!28839)) (Object!4758) (End!4659) (Def!4659) (Underscore!4659) (Match!4659) (Else!4659) (Error!4659) (Case!4659) (If!4659) (Extends!4659) (Abstract!4659) (Class!4659) (Val!4659) (DelimiterValue!9318 (del!4719 List!28839)) (KeywordValue!4665 (value!142861 List!28839)) (CommentValue!9318 (value!142862 List!28839)) (WhitespaceValue!9318 (value!142863 List!28839)) (IndentationValue!4659 (value!142864 List!28839)) (String!31590) (Int32!4659) (Broken!23296 (value!142865 List!28839)) (Boolean!4660) (Unit!42077) (OperatorValue!4662 (op!4719 List!28839)) (IdentifierValue!9318 (value!142866 List!28839)) (IdentifierValue!9319 (value!142867 List!28839)) (WhitespaceValue!9319 (value!142868 List!28839)) (True!9318) (False!9318) (Broken!23297 (value!142869 List!28839)) (Broken!23298 (value!142870 List!28839)) (True!9319) (RightBrace!4659) (RightBracket!4659) (Colon!4659) (Null!4659) (Comma!4659) (LeftBracket!4659) (False!9319) (LeftBrace!4659) (ImaginaryLiteralValue!4659 (text!33059 List!28839)) (StringLiteralValue!13977 (value!142871 List!28839)) (EOFValue!4659 (value!142872 List!28839)) (IdentValue!4659 (value!142873 List!28839)) (DelimiterValue!9319 (value!142874 List!28839)) (DedentValue!4659 (value!142875 List!28839)) (NewLineValue!4659 (value!142876 List!28839)) (IntegerValue!13977 (value!142877 (_ BitVec 32)) (text!33060 List!28839)) (IntegerValue!13978 (value!142878 Int) (text!33061 List!28839)) (Times!4659) (Or!4659) (Equal!4659) (Minus!4659) (Broken!23299 (value!142879 List!28839)) (And!4659) (Div!4659) (LessEqual!4659) (Mod!4659) (Concat!11920) (Not!4659) (Plus!4659) (SpaceValue!4659 (value!142880 List!28839)) (IntegerValue!13979 (value!142881 Int) (text!33062 List!28839)) (StringLiteralValue!13978 (text!33063 List!28839)) (FloatLiteralValue!9319 (text!33064 List!28839)) (BytesLiteralValue!4659 (value!142882 List!28839)) (CommentValue!9319 (value!142883 List!28839)) (StringLiteralValue!13979 (value!142884 List!28839)) (ErrorTokenValue!4659 (msg!4720 List!28839)) )
))
(declare-datatypes ((C!14680 0))(
  ( (C!14681 (val!8600 Int)) )
))
(declare-datatypes ((List!28840 0))(
  ( (Nil!28740) (Cons!28740 (h!34141 C!14680) (t!209503 List!28840)) )
))
(declare-datatypes ((IArray!18375 0))(
  ( (IArray!18376 (innerList!9245 List!28840)) )
))
(declare-datatypes ((Conc!9185 0))(
  ( (Node!9185 (left!22064 Conc!9185) (right!22394 Conc!9185) (csize!18600 Int) (cheight!9396 Int)) (Leaf!13729 (xs!12165 IArray!18375) (csize!18601 Int)) (Empty!9185) )
))
(declare-datatypes ((BalanceConc!17984 0))(
  ( (BalanceConc!17985 (c!393318 Conc!9185)) )
))
(declare-datatypes ((String!31591 0))(
  ( (String!31592 (value!142885 String)) )
))
(declare-datatypes ((Regex!7261 0))(
  ( (ElementMatch!7261 (c!393319 C!14680)) (Concat!11921 (regOne!15034 Regex!7261) (regTwo!15034 Regex!7261)) (EmptyExpr!7261) (Star!7261 (reg!7590 Regex!7261)) (EmptyLang!7261) (Union!7261 (regOne!15035 Regex!7261) (regTwo!15035 Regex!7261)) )
))
(declare-datatypes ((TokenValueInjection!8818 0))(
  ( (TokenValueInjection!8819 (toValue!6333 Int) (toChars!6192 Int)) )
))
(declare-datatypes ((Rule!8746 0))(
  ( (Rule!8747 (regex!4473 Regex!7261) (tag!4963 String!31591) (isSeparator!4473 Bool) (transformation!4473 TokenValueInjection!8818)) )
))
(declare-datatypes ((Token!8416 0))(
  ( (Token!8417 (value!142886 TokenValue!4659) (rule!6831 Rule!8746) (size!22367 Int) (originalCharacters!5239 List!28840)) )
))
(declare-datatypes ((List!28841 0))(
  ( (Nil!28741) (Cons!28741 (h!34142 Token!8416) (t!209504 List!28841)) )
))
(declare-fun l!6611 () List!28841)

(declare-fun e!1564666 () Bool)

(declare-fun e!1564663 () Bool)

(declare-fun tp!787050 () Bool)

(declare-fun inv!38829 (Token!8416) Bool)

(assert (=> b!2466955 (= e!1564663 (and (inv!38829 (h!34142 l!6611)) e!1564666 tp!787050))))

(declare-fun b!2466956 () Bool)

(declare-fun e!1564657 () Bool)

(declare-fun e!1564652 () Bool)

(declare-fun tp!787048 () Bool)

(assert (=> b!2466956 (= e!1564657 (and e!1564652 tp!787048))))

(declare-fun b!2466957 () Bool)

(declare-fun res!1044860 () Bool)

(declare-fun e!1564651 () Bool)

(assert (=> b!2466957 (=> (not res!1044860) (not e!1564651))))

(declare-datatypes ((LexerInterface!4070 0))(
  ( (LexerInterfaceExt!4067 (__x!18574 Int)) (Lexer!4068) )
))
(declare-fun thiss!27932 () LexerInterface!4070)

(declare-datatypes ((List!28842 0))(
  ( (Nil!28742) (Cons!28742 (h!34143 Rule!8746) (t!209505 List!28842)) )
))
(declare-fun rules!4472 () List!28842)

(declare-fun rulesProduceEachTokenIndividuallyList!1386 (LexerInterface!4070 List!28842 List!28841) Bool)

(assert (=> b!2466957 (= res!1044860 (rulesProduceEachTokenIndividuallyList!1386 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2466958 () Bool)

(declare-fun res!1044848 () Bool)

(assert (=> b!2466958 (=> (not res!1044848) (not e!1564651))))

(declare-fun t2!67 () Token!8416)

(declare-fun i!1803 () Int)

(declare-fun apply!6761 (List!28841 Int) Token!8416)

(assert (=> b!2466958 (= res!1044848 (= (apply!6761 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2466959 () Bool)

(declare-fun res!1044857 () Bool)

(assert (=> b!2466959 (=> (not res!1044857) (not e!1564651))))

(declare-fun t1!67 () Token!8416)

(assert (=> b!2466959 (= res!1044857 (= (apply!6761 l!6611 i!1803) t1!67))))

(declare-fun e!1564653 () Bool)

(declare-fun b!2466960 () Bool)

(declare-fun tp!787047 () Bool)

(declare-fun inv!21 (TokenValue!4659) Bool)

(assert (=> b!2466960 (= e!1564666 (and (inv!21 (value!142886 (h!34142 l!6611))) e!1564653 tp!787047))))

(declare-fun b!2466961 () Bool)

(declare-fun res!1044853 () Bool)

(assert (=> b!2466961 (=> (not res!1044853) (not e!1564651))))

(assert (=> b!2466961 (= res!1044853 (not (= i!1803 0)))))

(declare-fun e!1564668 () Bool)

(assert (=> b!2466962 (= e!1564668 (and tp!787062 tp!787053))))

(declare-fun b!2466963 () Bool)

(declare-fun e!1564650 () Bool)

(declare-fun e!1564664 () Bool)

(declare-fun tp!787049 () Bool)

(assert (=> b!2466963 (= e!1564650 (and (inv!21 (value!142886 t1!67)) e!1564664 tp!787049))))

(declare-fun b!2466964 () Bool)

(declare-fun res!1044858 () Bool)

(declare-fun e!1564655 () Bool)

(assert (=> b!2466964 (=> (not res!1044858) (not e!1564655))))

(assert (=> b!2466964 (= res!1044858 (>= (- i!1803 1) 0))))

(declare-fun b!2466965 () Bool)

(declare-fun e!1564662 () Bool)

(assert (=> b!2466965 (= e!1564655 e!1564662)))

(declare-fun res!1044856 () Bool)

(assert (=> b!2466965 (=> (not res!1044856) (not e!1564662))))

(declare-fun lt!882392 () Int)

(declare-fun lt!882390 () List!28841)

(declare-fun size!22368 (List!28841) Int)

(assert (=> b!2466965 (= res!1044856 (< lt!882392 (size!22368 lt!882390)))))

(assert (=> b!2466965 (= lt!882392 (+ 1 (- i!1803 1)))))

(declare-fun e!1564671 () Bool)

(assert (=> b!2466966 (= e!1564671 (and tp!787055 tp!787061))))

(declare-fun b!2466967 () Bool)

(declare-fun res!1044855 () Bool)

(assert (=> b!2466967 (=> (not res!1044855) (not e!1564651))))

(assert (=> b!2466967 (= res!1044855 (< (+ 1 i!1803) (size!22368 l!6611)))))

(declare-fun e!1564654 () Bool)

(assert (=> b!2466968 (= e!1564654 (and tp!787058 tp!787063))))

(declare-fun b!2466969 () Bool)

(assert (=> b!2466969 (= e!1564662 false)))

(declare-fun lt!882391 () Token!8416)

(assert (=> b!2466969 (= lt!882391 (apply!6761 lt!882390 lt!882392))))

(declare-fun tp!787059 () Bool)

(declare-fun e!1564670 () Bool)

(declare-fun b!2466970 () Bool)

(declare-fun e!1564669 () Bool)

(assert (=> b!2466970 (= e!1564670 (and (inv!21 (value!142886 t2!67)) e!1564669 tp!787059))))

(declare-fun b!2466971 () Bool)

(declare-fun res!1044850 () Bool)

(assert (=> b!2466971 (=> (not res!1044850) (not e!1564651))))

(declare-fun rulesInvariant!3570 (LexerInterface!4070 List!28842) Bool)

(assert (=> b!2466971 (= res!1044850 (rulesInvariant!3570 thiss!27932 rules!4472))))

(declare-fun e!1564672 () Bool)

(assert (=> b!2466972 (= e!1564672 (and tp!787057 tp!787060))))

(declare-fun b!2466973 () Bool)

(declare-fun tp!787051 () Bool)

(declare-fun inv!38826 (String!31591) Bool)

(declare-fun inv!38830 (TokenValueInjection!8818) Bool)

(assert (=> b!2466973 (= e!1564669 (and tp!787051 (inv!38826 (tag!4963 (rule!6831 t2!67))) (inv!38830 (transformation!4473 (rule!6831 t2!67))) e!1564654))))

(declare-fun b!2466974 () Bool)

(declare-fun res!1044861 () Bool)

(assert (=> b!2466974 (=> (not res!1044861) (not e!1564662))))

(assert (=> b!2466974 (= res!1044861 (= (apply!6761 lt!882390 (- i!1803 1)) t1!67))))

(declare-fun b!2466975 () Bool)

(declare-fun res!1044847 () Bool)

(assert (=> b!2466975 (=> (not res!1044847) (not e!1564651))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!609 (LexerInterface!4070 List!28841 List!28842) Bool)

(assert (=> b!2466975 (= res!1044847 (tokensListTwoByTwoPredicateSeparableList!609 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2466976 () Bool)

(declare-fun res!1044854 () Bool)

(assert (=> b!2466976 (=> (not res!1044854) (not e!1564655))))

(assert (=> b!2466976 (= res!1044854 (tokensListTwoByTwoPredicateSeparableList!609 thiss!27932 lt!882390 rules!4472))))

(declare-fun b!2466977 () Bool)

(declare-fun res!1044851 () Bool)

(assert (=> b!2466977 (=> (not res!1044851) (not e!1564651))))

(assert (=> b!2466977 (= res!1044851 (>= i!1803 0))))

(declare-fun b!2466978 () Bool)

(declare-fun res!1044849 () Bool)

(assert (=> b!2466978 (=> (not res!1044849) (not e!1564651))))

(declare-fun isEmpty!16703 (List!28842) Bool)

(assert (=> b!2466978 (= res!1044849 (not (isEmpty!16703 rules!4472)))))

(declare-fun res!1044852 () Bool)

(assert (=> start!240590 (=> (not res!1044852) (not e!1564651))))

(get-info :version)

(assert (=> start!240590 (= res!1044852 ((_ is Lexer!4068) thiss!27932))))

(assert (=> start!240590 e!1564651))

(assert (=> start!240590 true))

(assert (=> start!240590 e!1564657))

(assert (=> start!240590 (and (inv!38829 t2!67) e!1564670)))

(assert (=> start!240590 e!1564663))

(assert (=> start!240590 (and (inv!38829 t1!67) e!1564650)))

(declare-fun tp!787056 () Bool)

(declare-fun b!2466979 () Bool)

(assert (=> b!2466979 (= e!1564664 (and tp!787056 (inv!38826 (tag!4963 (rule!6831 t1!67))) (inv!38830 (transformation!4473 (rule!6831 t1!67))) e!1564671))))

(declare-fun b!2466980 () Bool)

(assert (=> b!2466980 (= e!1564651 e!1564655)))

(declare-fun res!1044859 () Bool)

(assert (=> b!2466980 (=> (not res!1044859) (not e!1564655))))

(assert (=> b!2466980 (= res!1044859 (rulesProduceEachTokenIndividuallyList!1386 thiss!27932 rules!4472 lt!882390))))

(declare-fun tail!3906 (List!28841) List!28841)

(assert (=> b!2466980 (= lt!882390 (tail!3906 l!6611))))

(declare-fun b!2466981 () Bool)

(declare-fun tp!787052 () Bool)

(assert (=> b!2466981 (= e!1564653 (and tp!787052 (inv!38826 (tag!4963 (rule!6831 (h!34142 l!6611)))) (inv!38830 (transformation!4473 (rule!6831 (h!34142 l!6611)))) e!1564668))))

(declare-fun b!2466982 () Bool)

(declare-fun tp!787054 () Bool)

(assert (=> b!2466982 (= e!1564652 (and tp!787054 (inv!38826 (tag!4963 (h!34143 rules!4472))) (inv!38830 (transformation!4473 (h!34143 rules!4472))) e!1564672))))

(assert (= (and start!240590 res!1044852) b!2466978))

(assert (= (and b!2466978 res!1044849) b!2466971))

(assert (= (and b!2466971 res!1044850) b!2466957))

(assert (= (and b!2466957 res!1044860) b!2466975))

(assert (= (and b!2466975 res!1044847) b!2466977))

(assert (= (and b!2466977 res!1044851) b!2466967))

(assert (= (and b!2466967 res!1044855) b!2466959))

(assert (= (and b!2466959 res!1044857) b!2466958))

(assert (= (and b!2466958 res!1044848) b!2466961))

(assert (= (and b!2466961 res!1044853) b!2466980))

(assert (= (and b!2466980 res!1044859) b!2466976))

(assert (= (and b!2466976 res!1044854) b!2466964))

(assert (= (and b!2466964 res!1044858) b!2466965))

(assert (= (and b!2466965 res!1044856) b!2466974))

(assert (= (and b!2466974 res!1044861) b!2466969))

(assert (= b!2466982 b!2466972))

(assert (= b!2466956 b!2466982))

(assert (= (and start!240590 ((_ is Cons!28742) rules!4472)) b!2466956))

(assert (= b!2466973 b!2466968))

(assert (= b!2466970 b!2466973))

(assert (= start!240590 b!2466970))

(assert (= b!2466981 b!2466962))

(assert (= b!2466960 b!2466981))

(assert (= b!2466955 b!2466960))

(assert (= (and start!240590 ((_ is Cons!28741) l!6611)) b!2466955))

(assert (= b!2466979 b!2466966))

(assert (= b!2466963 b!2466979))

(assert (= start!240590 b!2466963))

(declare-fun m!2836245 () Bool)

(assert (=> b!2466960 m!2836245))

(declare-fun m!2836247 () Bool)

(assert (=> b!2466969 m!2836247))

(declare-fun m!2836249 () Bool)

(assert (=> b!2466974 m!2836249))

(declare-fun m!2836251 () Bool)

(assert (=> b!2466959 m!2836251))

(declare-fun m!2836253 () Bool)

(assert (=> b!2466975 m!2836253))

(declare-fun m!2836255 () Bool)

(assert (=> b!2466971 m!2836255))

(declare-fun m!2836257 () Bool)

(assert (=> b!2466973 m!2836257))

(declare-fun m!2836259 () Bool)

(assert (=> b!2466973 m!2836259))

(declare-fun m!2836261 () Bool)

(assert (=> b!2466970 m!2836261))

(declare-fun m!2836263 () Bool)

(assert (=> b!2466955 m!2836263))

(declare-fun m!2836265 () Bool)

(assert (=> b!2466957 m!2836265))

(declare-fun m!2836267 () Bool)

(assert (=> b!2466963 m!2836267))

(declare-fun m!2836269 () Bool)

(assert (=> b!2466982 m!2836269))

(declare-fun m!2836271 () Bool)

(assert (=> b!2466982 m!2836271))

(declare-fun m!2836273 () Bool)

(assert (=> b!2466967 m!2836273))

(declare-fun m!2836275 () Bool)

(assert (=> b!2466978 m!2836275))

(declare-fun m!2836277 () Bool)

(assert (=> b!2466976 m!2836277))

(declare-fun m!2836279 () Bool)

(assert (=> b!2466958 m!2836279))

(declare-fun m!2836281 () Bool)

(assert (=> b!2466981 m!2836281))

(declare-fun m!2836283 () Bool)

(assert (=> b!2466981 m!2836283))

(declare-fun m!2836285 () Bool)

(assert (=> b!2466965 m!2836285))

(declare-fun m!2836287 () Bool)

(assert (=> b!2466980 m!2836287))

(declare-fun m!2836289 () Bool)

(assert (=> b!2466980 m!2836289))

(declare-fun m!2836291 () Bool)

(assert (=> b!2466979 m!2836291))

(declare-fun m!2836293 () Bool)

(assert (=> b!2466979 m!2836293))

(declare-fun m!2836295 () Bool)

(assert (=> start!240590 m!2836295))

(declare-fun m!2836297 () Bool)

(assert (=> start!240590 m!2836297))

(check-sat (not b!2466973) (not b!2466982) (not b!2466976) b_and!186605 (not b!2466974) (not b!2466955) (not b_next!71775) (not b!2466978) b_and!186599 (not b!2466975) (not b_next!71769) b_and!186601 (not b!2466957) (not b!2466959) (not b!2466958) b_and!186607 (not b!2466981) (not b!2466969) (not b_next!71779) (not b!2466979) (not b!2466956) (not b!2466970) (not b!2466967) (not b!2466963) (not b_next!71777) b_and!186609 (not start!240590) b_and!186597 (not b!2466980) (not b_next!71765) (not b!2466960) b_and!186611 (not b!2466965) (not b_next!71773) (not b_next!71771) b_and!186603 (not b!2466971) (not b_next!71767))
(check-sat b_and!186607 (not b_next!71779) b_and!186605 (not b_next!71777) b_and!186609 (not b_next!71775) b_and!186611 b_and!186599 (not b_next!71769) b_and!186601 (not b_next!71767) b_and!186597 (not b_next!71765) (not b_next!71773) (not b_next!71771) b_and!186603)
