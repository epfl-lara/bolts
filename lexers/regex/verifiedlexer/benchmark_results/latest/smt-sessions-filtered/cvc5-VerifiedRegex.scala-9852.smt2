; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!515770 () Bool)

(assert start!515770)

(declare-fun b!4913048 () Bool)

(declare-fun e!3070841 () Bool)

(declare-datatypes ((C!26890 0))(
  ( (C!26891 (val!22779 Int)) )
))
(declare-datatypes ((List!56744 0))(
  ( (Nil!56620) (Cons!56620 (h!63068 C!26890) (t!367150 List!56744)) )
))
(declare-datatypes ((IArray!29739 0))(
  ( (IArray!29740 (innerList!14927 List!56744)) )
))
(declare-datatypes ((Conc!14839 0))(
  ( (Node!14839 (left!41273 Conc!14839) (right!41603 Conc!14839) (csize!29908 Int) (cheight!15050 Int)) (Leaf!24692 (xs!18155 IArray!29739) (csize!29909 Int)) (Empty!14839) )
))
(declare-datatypes ((BalanceConc!29108 0))(
  ( (BalanceConc!29109 (c!835085 Conc!14839)) )
))
(declare-datatypes ((tuple2!61026 0))(
  ( (tuple2!61027 (_1!33816 BalanceConc!29108) (_2!33816 BalanceConc!29108)) )
))
(declare-fun lt!2017153 () tuple2!61026)

(declare-datatypes ((tuple2!61028 0))(
  ( (tuple2!61029 (_1!33817 List!56744) (_2!33817 List!56744)) )
))
(declare-fun lt!2017154 () tuple2!61028)

(declare-fun list!17884 (BalanceConc!29108) List!56744)

(assert (=> b!4913048 (= e!3070841 (not (= (tuple2!61029 (list!17884 (_1!33816 lt!2017153)) (list!17884 (_2!33816 lt!2017153))) lt!2017154)))))

(declare-datatypes ((Regex!13346 0))(
  ( (ElementMatch!13346 (c!835086 C!26890)) (Concat!21919 (regOne!27204 Regex!13346) (regTwo!27204 Regex!13346)) (EmptyExpr!13346) (Star!13346 (reg!13675 Regex!13346)) (EmptyLang!13346) (Union!13346 (regOne!27205 Regex!13346) (regTwo!27205 Regex!13346)) )
))
(declare-datatypes ((List!56745 0))(
  ( (Nil!56621) (Cons!56621 (h!63069 Regex!13346) (t!367151 List!56745)) )
))
(declare-datatypes ((Context!5976 0))(
  ( (Context!5977 (exprs!3488 List!56745)) )
))
(declare-fun lt!2017158 () (Set Context!5976))

(declare-fun input!6475 () BalanceConc!29108)

(declare-fun findLongestMatchZipperFast!9 ((Set Context!5976) BalanceConc!29108) tuple2!61026)

(assert (=> b!4913048 (= lt!2017153 (findLongestMatchZipperFast!9 lt!2017158 input!6475))))

(declare-fun lt!2017152 () List!56744)

(declare-fun sizeTr!355 (List!56744 Int) Int)

(declare-fun size!37384 (List!56744) Int)

(assert (=> b!4913048 (= (sizeTr!355 lt!2017152 0) (size!37384 lt!2017152))))

(declare-datatypes ((Unit!146900 0))(
  ( (Unit!146901) )
))
(declare-fun lt!2017156 () Unit!146900)

(declare-fun lemmaSizeTrEqualsSize!354 (List!56744 Int) Unit!146900)

(assert (=> b!4913048 (= lt!2017156 (lemmaSizeTrEqualsSize!354 lt!2017152 0))))

(declare-fun lt!2017155 () tuple2!61028)

(assert (=> b!4913048 (= lt!2017155 lt!2017154)))

(declare-fun r!15208 () Regex!13346)

(declare-fun findLongestMatch!1691 (Regex!13346 List!56744) tuple2!61028)

(assert (=> b!4913048 (= lt!2017154 (findLongestMatch!1691 r!15208 lt!2017152))))

(declare-fun findLongestMatchZipper!16 ((Set Context!5976) List!56744) tuple2!61028)

(assert (=> b!4913048 (= lt!2017155 (findLongestMatchZipper!16 lt!2017158 lt!2017152))))

(declare-fun lt!2017157 () Unit!146900)

(declare-fun longestMatchSameAsRegex!15 (Regex!13346 (Set Context!5976) List!56744) Unit!146900)

(assert (=> b!4913048 (= lt!2017157 (longestMatchSameAsRegex!15 r!15208 lt!2017158 lt!2017152))))

(assert (=> b!4913048 (= lt!2017152 (list!17884 input!6475))))

(declare-fun focus!344 (Regex!13346) (Set Context!5976))

(assert (=> b!4913048 (= lt!2017158 (focus!344 r!15208))))

(declare-fun res!2098677 () Bool)

(assert (=> start!515770 (=> (not res!2098677) (not e!3070841))))

(declare-fun validRegex!5935 (Regex!13346) Bool)

(assert (=> start!515770 (= res!2098677 (validRegex!5935 r!15208))))

(assert (=> start!515770 e!3070841))

(declare-fun e!3070843 () Bool)

(assert (=> start!515770 e!3070843))

(declare-fun e!3070842 () Bool)

(declare-fun inv!73251 (BalanceConc!29108) Bool)

(assert (=> start!515770 (and (inv!73251 input!6475) e!3070842)))

(declare-fun b!4913049 () Bool)

(declare-fun tp!1381538 () Bool)

(declare-fun tp!1381539 () Bool)

(assert (=> b!4913049 (= e!3070843 (and tp!1381538 tp!1381539))))

(declare-fun b!4913050 () Bool)

(declare-fun tp_is_empty!35893 () Bool)

(assert (=> b!4913050 (= e!3070843 tp_is_empty!35893)))

(declare-fun b!4913051 () Bool)

(declare-fun tp!1381541 () Bool)

(declare-fun tp!1381542 () Bool)

(assert (=> b!4913051 (= e!3070843 (and tp!1381541 tp!1381542))))

(declare-fun b!4913052 () Bool)

(declare-fun tp!1381540 () Bool)

(declare-fun inv!73252 (Conc!14839) Bool)

(assert (=> b!4913052 (= e!3070842 (and (inv!73252 (c!835085 input!6475)) tp!1381540))))

(declare-fun b!4913053 () Bool)

(declare-fun tp!1381543 () Bool)

(assert (=> b!4913053 (= e!3070843 tp!1381543)))

(assert (= (and start!515770 res!2098677) b!4913048))

(assert (= (and start!515770 (is-ElementMatch!13346 r!15208)) b!4913050))

(assert (= (and start!515770 (is-Concat!21919 r!15208)) b!4913049))

(assert (= (and start!515770 (is-Star!13346 r!15208)) b!4913053))

(assert (= (and start!515770 (is-Union!13346 r!15208)) b!4913051))

(assert (= start!515770 b!4913052))

(declare-fun m!5922834 () Bool)

(assert (=> b!4913048 m!5922834))

(declare-fun m!5922836 () Bool)

(assert (=> b!4913048 m!5922836))

(declare-fun m!5922838 () Bool)

(assert (=> b!4913048 m!5922838))

(declare-fun m!5922840 () Bool)

(assert (=> b!4913048 m!5922840))

(declare-fun m!5922842 () Bool)

(assert (=> b!4913048 m!5922842))

(declare-fun m!5922844 () Bool)

(assert (=> b!4913048 m!5922844))

(declare-fun m!5922846 () Bool)

(assert (=> b!4913048 m!5922846))

(declare-fun m!5922848 () Bool)

(assert (=> b!4913048 m!5922848))

(declare-fun m!5922850 () Bool)

(assert (=> b!4913048 m!5922850))

(declare-fun m!5922852 () Bool)

(assert (=> b!4913048 m!5922852))

(declare-fun m!5922854 () Bool)

(assert (=> b!4913048 m!5922854))

(declare-fun m!5922856 () Bool)

(assert (=> start!515770 m!5922856))

(declare-fun m!5922858 () Bool)

(assert (=> start!515770 m!5922858))

(declare-fun m!5922860 () Bool)

(assert (=> b!4913052 m!5922860))

(push 1)

(assert (not b!4913049))

(assert (not b!4913052))

(assert (not b!4913053))

(assert (not b!4913048))

(assert tp_is_empty!35893)

(assert (not start!515770))

(assert (not b!4913051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1578685 () Bool)

(declare-fun lt!2017182 () Int)

(assert (=> d!1578685 (>= lt!2017182 0)))

(declare-fun e!3070855 () Int)

(assert (=> d!1578685 (= lt!2017182 e!3070855)))

(declare-fun c!835091 () Bool)

(assert (=> d!1578685 (= c!835091 (is-Nil!56620 lt!2017152))))

(assert (=> d!1578685 (= (size!37384 lt!2017152) lt!2017182)))

(declare-fun b!4913076 () Bool)

(assert (=> b!4913076 (= e!3070855 0)))

(declare-fun b!4913077 () Bool)

(assert (=> b!4913077 (= e!3070855 (+ 1 (size!37384 (t!367150 lt!2017152))))))

(assert (= (and d!1578685 c!835091) b!4913076))

(assert (= (and d!1578685 (not c!835091)) b!4913077))

(declare-fun m!5922890 () Bool)

(assert (=> b!4913077 m!5922890))

(assert (=> b!4913048 d!1578685))

(declare-fun d!1578689 () Bool)

(declare-fun e!3070885 () Bool)

(assert (=> d!1578689 e!3070885))

(declare-fun res!2098701 () Bool)

(assert (=> d!1578689 (=> (not res!2098701) (not e!3070885))))

(declare-fun lt!2017204 () tuple2!61026)

(assert (=> d!1578689 (= res!2098701 (= (tuple2!61029 (list!17884 (_1!33816 lt!2017204)) (list!17884 (_2!33816 lt!2017204))) (findLongestMatchZipper!16 lt!2017158 (list!17884 input!6475))))))

(declare-fun lt!2017203 () Int)

(declare-fun splitAt!224 (BalanceConc!29108 Int) tuple2!61026)

(assert (=> d!1578689 (= lt!2017204 (splitAt!224 input!6475 lt!2017203))))

(declare-fun lt!2017201 () Unit!146900)

(declare-fun lt!2017202 () Unit!146900)

(assert (=> d!1578689 (= lt!2017201 lt!2017202)))

(declare-fun lt!2017200 () List!56744)

(declare-fun lt!2017199 () List!56744)

(declare-fun lt!2017205 () List!56744)

(declare-fun lt!2017206 () List!56744)

(assert (=> d!1578689 (and (= lt!2017199 lt!2017205) (= lt!2017200 lt!2017206))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!635 (List!56744 List!56744 List!56744 List!56744) Unit!146900)

(assert (=> d!1578689 (= lt!2017202 (lemmaConcatSameAndSameSizesThenSameLists!635 lt!2017199 lt!2017200 lt!2017205 lt!2017206))))

(declare-fun findLongestMatchInnerZipper!32 ((Set Context!5976) List!56744 Int List!56744 List!56744 Int) tuple2!61028)

(declare-fun size!37386 (BalanceConc!29108) Int)

(assert (=> d!1578689 (= lt!2017206 (_2!33817 (findLongestMatchInnerZipper!32 lt!2017158 Nil!56620 0 (list!17884 input!6475) (list!17884 input!6475) (size!37386 input!6475))))))

(assert (=> d!1578689 (= lt!2017205 (_1!33817 (findLongestMatchInnerZipper!32 lt!2017158 Nil!56620 0 (list!17884 input!6475) (list!17884 input!6475) (size!37386 input!6475))))))

(assert (=> d!1578689 (= lt!2017200 (list!17884 (_2!33816 (splitAt!224 input!6475 lt!2017203))))))

(assert (=> d!1578689 (= lt!2017199 (list!17884 (_1!33816 (splitAt!224 input!6475 lt!2017203))))))

(declare-fun findLongestMatchInnerZipperFast!58 ((Set Context!5976) List!56744 Int List!56744 BalanceConc!29108 Int) Int)

(assert (=> d!1578689 (= lt!2017203 (findLongestMatchInnerZipperFast!58 lt!2017158 Nil!56620 0 (list!17884 input!6475) input!6475 (size!37386 input!6475)))))

(assert (=> d!1578689 (= (findLongestMatchZipperFast!9 lt!2017158 input!6475) lt!2017204)))

(declare-fun b!4913116 () Bool)

(declare-fun ++!12286 (List!56744 List!56744) List!56744)

(assert (=> b!4913116 (= e!3070885 (= (++!12286 (list!17884 (_1!33816 lt!2017204)) (list!17884 (_2!33816 lt!2017204))) (list!17884 input!6475)))))

(assert (= (and d!1578689 res!2098701) b!4913116))

(declare-fun m!5922904 () Bool)

(assert (=> d!1578689 m!5922904))

(declare-fun m!5922906 () Bool)

(assert (=> d!1578689 m!5922906))

(assert (=> d!1578689 m!5922846))

(assert (=> d!1578689 m!5922846))

(assert (=> d!1578689 m!5922904))

(declare-fun m!5922908 () Bool)

(assert (=> d!1578689 m!5922908))

(assert (=> d!1578689 m!5922846))

(declare-fun m!5922910 () Bool)

(assert (=> d!1578689 m!5922910))

(declare-fun m!5922912 () Bool)

(assert (=> d!1578689 m!5922912))

(declare-fun m!5922914 () Bool)

(assert (=> d!1578689 m!5922914))

(declare-fun m!5922916 () Bool)

(assert (=> d!1578689 m!5922916))

(assert (=> d!1578689 m!5922846))

(assert (=> d!1578689 m!5922846))

(assert (=> d!1578689 m!5922904))

(declare-fun m!5922918 () Bool)

(assert (=> d!1578689 m!5922918))

(declare-fun m!5922920 () Bool)

(assert (=> d!1578689 m!5922920))

(declare-fun m!5922922 () Bool)

(assert (=> d!1578689 m!5922922))

(assert (=> b!4913116 m!5922920))

(assert (=> b!4913116 m!5922916))

(assert (=> b!4913116 m!5922920))

(assert (=> b!4913116 m!5922916))

(declare-fun m!5922924 () Bool)

(assert (=> b!4913116 m!5922924))

(assert (=> b!4913116 m!5922846))

(assert (=> b!4913048 d!1578689))

(declare-fun d!1578697 () Bool)

(declare-fun list!17886 (Conc!14839) List!56744)

(assert (=> d!1578697 (= (list!17884 input!6475) (list!17886 (c!835085 input!6475)))))

(declare-fun bs!1177602 () Bool)

(assert (= bs!1177602 d!1578697))

(declare-fun m!5922926 () Bool)

(assert (=> bs!1177602 m!5922926))

(assert (=> b!4913048 d!1578697))

(declare-fun d!1578699 () Bool)

(declare-fun lt!2017223 () tuple2!61028)

(assert (=> d!1578699 (= (++!12286 (_1!33817 lt!2017223) (_2!33817 lt!2017223)) lt!2017152)))

(declare-fun findLongestMatchInner!1824 (Regex!13346 List!56744 Int List!56744 List!56744 Int) tuple2!61028)

(assert (=> d!1578699 (= lt!2017223 (findLongestMatchInner!1824 r!15208 Nil!56620 0 lt!2017152 lt!2017152 (sizeTr!355 lt!2017152 0)))))

(declare-fun lt!2017225 () Unit!146900)

(declare-fun lt!2017226 () Unit!146900)

(assert (=> d!1578699 (= lt!2017225 lt!2017226)))

(declare-fun lt!2017228 () List!56744)

(declare-fun lt!2017224 () Int)

(assert (=> d!1578699 (= (sizeTr!355 lt!2017228 lt!2017224) (+ (size!37384 lt!2017228) lt!2017224))))

(assert (=> d!1578699 (= lt!2017226 (lemmaSizeTrEqualsSize!354 lt!2017228 lt!2017224))))

(assert (=> d!1578699 (= lt!2017224 0)))

(assert (=> d!1578699 (= lt!2017228 Nil!56620)))

(declare-fun lt!2017230 () Unit!146900)

(declare-fun lt!2017227 () Unit!146900)

(assert (=> d!1578699 (= lt!2017230 lt!2017227)))

(declare-fun lt!2017229 () Int)

(assert (=> d!1578699 (= (sizeTr!355 lt!2017152 lt!2017229) (+ (size!37384 lt!2017152) lt!2017229))))

(assert (=> d!1578699 (= lt!2017227 (lemmaSizeTrEqualsSize!354 lt!2017152 lt!2017229))))

(assert (=> d!1578699 (= lt!2017229 0)))

(assert (=> d!1578699 (validRegex!5935 r!15208)))

(assert (=> d!1578699 (= (findLongestMatch!1691 r!15208 lt!2017152) lt!2017223)))

(declare-fun bs!1177603 () Bool)

(assert (= bs!1177603 d!1578699))

(assert (=> bs!1177603 m!5922852))

(assert (=> bs!1177603 m!5922838))

(assert (=> bs!1177603 m!5922856))

(declare-fun m!5922928 () Bool)

(assert (=> bs!1177603 m!5922928))

(declare-fun m!5922930 () Bool)

(assert (=> bs!1177603 m!5922930))

(declare-fun m!5922932 () Bool)

(assert (=> bs!1177603 m!5922932))

(declare-fun m!5922934 () Bool)

(assert (=> bs!1177603 m!5922934))

(declare-fun m!5922936 () Bool)

(assert (=> bs!1177603 m!5922936))

(assert (=> bs!1177603 m!5922838))

(declare-fun m!5922938 () Bool)

(assert (=> bs!1177603 m!5922938))

(declare-fun m!5922940 () Bool)

(assert (=> bs!1177603 m!5922940))

(assert (=> b!4913048 d!1578699))

(declare-fun d!1578701 () Bool)

(assert (=> d!1578701 (= (list!17884 (_2!33816 lt!2017153)) (list!17886 (c!835085 (_2!33816 lt!2017153))))))

(declare-fun bs!1177604 () Bool)

(assert (= bs!1177604 d!1578701))

(declare-fun m!5922942 () Bool)

(assert (=> bs!1177604 m!5922942))

(assert (=> b!4913048 d!1578701))

(declare-fun d!1578703 () Bool)

(declare-fun c!835103 () Bool)

(assert (=> d!1578703 (= c!835103 (is-Nil!56620 lt!2017152))))

(declare-fun e!3070888 () Int)

(assert (=> d!1578703 (= (sizeTr!355 lt!2017152 0) e!3070888)))

(declare-fun b!4913121 () Bool)

(assert (=> b!4913121 (= e!3070888 0)))

(declare-fun b!4913122 () Bool)

(assert (=> b!4913122 (= e!3070888 (sizeTr!355 (t!367150 lt!2017152) (+ 0 1)))))

(assert (= (and d!1578703 c!835103) b!4913121))

(assert (= (and d!1578703 (not c!835103)) b!4913122))

(declare-fun m!5922944 () Bool)

(assert (=> b!4913122 m!5922944))

(assert (=> b!4913048 d!1578703))

(declare-fun d!1578705 () Bool)

(declare-fun lt!2017239 () tuple2!61028)

(assert (=> d!1578705 (= (++!12286 (_1!33817 lt!2017239) (_2!33817 lt!2017239)) lt!2017152)))

(assert (=> d!1578705 (= lt!2017239 (findLongestMatchInnerZipper!32 lt!2017158 Nil!56620 0 lt!2017152 lt!2017152 (sizeTr!355 lt!2017152 0)))))

(declare-fun lt!2017240 () Unit!146900)

(declare-fun lt!2017242 () Unit!146900)

(assert (=> d!1578705 (= lt!2017240 lt!2017242)))

(declare-fun lt!2017241 () Int)

(assert (=> d!1578705 (= (sizeTr!355 lt!2017152 lt!2017241) (+ (size!37384 lt!2017152) lt!2017241))))

(assert (=> d!1578705 (= lt!2017242 (lemmaSizeTrEqualsSize!354 lt!2017152 lt!2017241))))

(assert (=> d!1578705 (= lt!2017241 0)))

(assert (=> d!1578705 (= (findLongestMatchZipper!16 lt!2017158 lt!2017152) lt!2017239)))

(declare-fun bs!1177605 () Bool)

(assert (= bs!1177605 d!1578705))

(declare-fun m!5922946 () Bool)

(assert (=> bs!1177605 m!5922946))

(declare-fun m!5922948 () Bool)

(assert (=> bs!1177605 m!5922948))

(assert (=> bs!1177605 m!5922852))

(declare-fun m!5922950 () Bool)

(assert (=> bs!1177605 m!5922950))

(assert (=> bs!1177605 m!5922838))

(assert (=> bs!1177605 m!5922838))

(declare-fun m!5922952 () Bool)

(assert (=> bs!1177605 m!5922952))

(assert (=> b!4913048 d!1578705))

(declare-fun d!1578707 () Bool)

(assert (=> d!1578707 (= (findLongestMatchZipper!16 lt!2017158 lt!2017152) (findLongestMatch!1691 r!15208 lt!2017152))))

(declare-fun lt!2017261 () Unit!146900)

(declare-fun choose!35952 (Regex!13346 (Set Context!5976) List!56744) Unit!146900)

(assert (=> d!1578707 (= lt!2017261 (choose!35952 r!15208 lt!2017158 lt!2017152))))

(assert (=> d!1578707 (validRegex!5935 r!15208)))

(assert (=> d!1578707 (= (longestMatchSameAsRegex!15 r!15208 lt!2017158 lt!2017152) lt!2017261)))

(declare-fun bs!1177606 () Bool)

(assert (= bs!1177606 d!1578707))

(assert (=> bs!1177606 m!5922844))

(assert (=> bs!1177606 m!5922840))

(declare-fun m!5922954 () Bool)

(assert (=> bs!1177606 m!5922954))

(assert (=> bs!1177606 m!5922856))

(assert (=> b!4913048 d!1578707))

(declare-fun d!1578709 () Bool)

(assert (=> d!1578709 (= (list!17884 (_1!33816 lt!2017153)) (list!17886 (c!835085 (_1!33816 lt!2017153))))))

(declare-fun bs!1177607 () Bool)

(assert (= bs!1177607 d!1578709))

(declare-fun m!5922956 () Bool)

(assert (=> bs!1177607 m!5922956))

(assert (=> b!4913048 d!1578709))

(declare-fun d!1578711 () Bool)

(declare-fun e!3070894 () Bool)

(assert (=> d!1578711 e!3070894))

(declare-fun res!2098708 () Bool)

(assert (=> d!1578711 (=> (not res!2098708) (not e!3070894))))

(assert (=> d!1578711 (= res!2098708 (validRegex!5935 r!15208))))

(assert (=> d!1578711 (= (focus!344 r!15208) (set.insert (Context!5977 (Cons!56621 r!15208 Nil!56621)) (as set.empty (Set Context!5976))))))

(declare-fun b!4913128 () Bool)

(declare-datatypes ((List!56748 0))(
  ( (Nil!56624) (Cons!56624 (h!63072 Context!5976) (t!367154 List!56748)) )
))
(declare-fun unfocusZipper!250 (List!56748) Regex!13346)

(declare-fun toList!7936 ((Set Context!5976)) List!56748)

(assert (=> b!4913128 (= e!3070894 (= (unfocusZipper!250 (toList!7936 (set.insert (Context!5977 (Cons!56621 r!15208 Nil!56621)) (as set.empty (Set Context!5976))))) r!15208))))

(assert (= (and d!1578711 res!2098708) b!4913128))

(assert (=> d!1578711 m!5922856))

(declare-fun m!5922980 () Bool)

(assert (=> d!1578711 m!5922980))

(assert (=> b!4913128 m!5922980))

(assert (=> b!4913128 m!5922980))

(declare-fun m!5922982 () Bool)

(assert (=> b!4913128 m!5922982))

(assert (=> b!4913128 m!5922982))

(declare-fun m!5922984 () Bool)

(assert (=> b!4913128 m!5922984))

(assert (=> b!4913048 d!1578711))

(declare-fun d!1578715 () Bool)

(assert (=> d!1578715 (= (sizeTr!355 lt!2017152 0) (+ (size!37384 lt!2017152) 0))))

(declare-fun lt!2017272 () Unit!146900)

(declare-fun choose!35953 (List!56744 Int) Unit!146900)

(assert (=> d!1578715 (= lt!2017272 (choose!35953 lt!2017152 0))))

(assert (=> d!1578715 (= (lemmaSizeTrEqualsSize!354 lt!2017152 0) lt!2017272)))

(declare-fun bs!1177608 () Bool)

(assert (= bs!1177608 d!1578715))

(assert (=> bs!1177608 m!5922838))

(assert (=> bs!1177608 m!5922852))

(declare-fun m!5922986 () Bool)

(assert (=> bs!1177608 m!5922986))

(assert (=> b!4913048 d!1578715))

(declare-fun d!1578717 () Bool)

(declare-fun c!835109 () Bool)

(assert (=> d!1578717 (= c!835109 (is-Node!14839 (c!835085 input!6475)))))

(declare-fun e!3070902 () Bool)

(assert (=> d!1578717 (= (inv!73252 (c!835085 input!6475)) e!3070902)))

(declare-fun b!4913141 () Bool)

(declare-fun inv!73255 (Conc!14839) Bool)

(assert (=> b!4913141 (= e!3070902 (inv!73255 (c!835085 input!6475)))))

(declare-fun b!4913142 () Bool)

(declare-fun e!3070903 () Bool)

(assert (=> b!4913142 (= e!3070902 e!3070903)))

(declare-fun res!2098711 () Bool)

(assert (=> b!4913142 (= res!2098711 (not (is-Leaf!24692 (c!835085 input!6475))))))

(assert (=> b!4913142 (=> res!2098711 e!3070903)))

(declare-fun b!4913143 () Bool)

(declare-fun inv!73256 (Conc!14839) Bool)

(assert (=> b!4913143 (= e!3070903 (inv!73256 (c!835085 input!6475)))))

(assert (= (and d!1578717 c!835109) b!4913141))

(assert (= (and d!1578717 (not c!835109)) b!4913142))

(assert (= (and b!4913142 (not res!2098711)) b!4913143))

(declare-fun m!5922992 () Bool)

(assert (=> b!4913141 m!5922992))

(declare-fun m!5922994 () Bool)

(assert (=> b!4913143 m!5922994))

(assert (=> b!4913052 d!1578717))

(declare-fun bm!341223 () Bool)

(declare-fun call!341228 () Bool)

(declare-fun call!341229 () Bool)

(assert (=> bm!341223 (= call!341228 call!341229)))

(declare-fun b!4913162 () Bool)

(declare-fun e!3070919 () Bool)

(declare-fun e!3070923 () Bool)

(assert (=> b!4913162 (= e!3070919 e!3070923)))

(declare-fun res!2098722 () Bool)

(assert (=> b!4913162 (=> (not res!2098722) (not e!3070923))))

(assert (=> b!4913162 (= res!2098722 call!341228)))

(declare-fun b!4913163 () Bool)

(declare-fun call!341230 () Bool)

(assert (=> b!4913163 (= e!3070923 call!341230)))

(declare-fun b!4913164 () Bool)

(declare-fun e!3070924 () Bool)

(declare-fun e!3070918 () Bool)

(assert (=> b!4913164 (= e!3070924 e!3070918)))

(declare-fun res!2098723 () Bool)

(declare-fun nullable!4601 (Regex!13346) Bool)

(assert (=> b!4913164 (= res!2098723 (not (nullable!4601 (reg!13675 r!15208))))))

(assert (=> b!4913164 (=> (not res!2098723) (not e!3070918))))

(declare-fun b!4913165 () Bool)

(declare-fun res!2098726 () Bool)

(declare-fun e!3070922 () Bool)

(assert (=> b!4913165 (=> (not res!2098726) (not e!3070922))))

(assert (=> b!4913165 (= res!2098726 call!341230)))

(declare-fun e!3070920 () Bool)

(assert (=> b!4913165 (= e!3070920 e!3070922)))

(declare-fun bm!341224 () Bool)

(declare-fun c!835115 () Bool)

(declare-fun c!835114 () Bool)

(assert (=> bm!341224 (= call!341229 (validRegex!5935 (ite c!835115 (reg!13675 r!15208) (ite c!835114 (regTwo!27205 r!15208) (regOne!27204 r!15208)))))))

(declare-fun d!1578723 () Bool)

(declare-fun res!2098725 () Bool)

(declare-fun e!3070921 () Bool)

(assert (=> d!1578723 (=> res!2098725 e!3070921)))

(assert (=> d!1578723 (= res!2098725 (is-ElementMatch!13346 r!15208))))

(assert (=> d!1578723 (= (validRegex!5935 r!15208) e!3070921)))

(declare-fun b!4913166 () Bool)

(assert (=> b!4913166 (= e!3070921 e!3070924)))

(assert (=> b!4913166 (= c!835115 (is-Star!13346 r!15208))))

(declare-fun b!4913167 () Bool)

(declare-fun res!2098724 () Bool)

(assert (=> b!4913167 (=> res!2098724 e!3070919)))

(assert (=> b!4913167 (= res!2098724 (not (is-Concat!21919 r!15208)))))

(assert (=> b!4913167 (= e!3070920 e!3070919)))

(declare-fun b!4913168 () Bool)

(assert (=> b!4913168 (= e!3070918 call!341229)))

(declare-fun b!4913169 () Bool)

(assert (=> b!4913169 (= e!3070924 e!3070920)))

(assert (=> b!4913169 (= c!835114 (is-Union!13346 r!15208))))

(declare-fun b!4913170 () Bool)

(assert (=> b!4913170 (= e!3070922 call!341228)))

(declare-fun bm!341225 () Bool)

(assert (=> bm!341225 (= call!341230 (validRegex!5935 (ite c!835114 (regOne!27205 r!15208) (regTwo!27204 r!15208))))))

(assert (= (and d!1578723 (not res!2098725)) b!4913166))

(assert (= (and b!4913166 c!835115) b!4913164))

(assert (= (and b!4913166 (not c!835115)) b!4913169))

(assert (= (and b!4913164 res!2098723) b!4913168))

(assert (= (and b!4913169 c!835114) b!4913165))

(assert (= (and b!4913169 (not c!835114)) b!4913167))

(assert (= (and b!4913165 res!2098726) b!4913170))

(assert (= (and b!4913167 (not res!2098724)) b!4913162))

(assert (= (and b!4913162 res!2098722) b!4913163))

(assert (= (or b!4913170 b!4913162) bm!341223))

(assert (= (or b!4913165 b!4913163) bm!341225))

(assert (= (or b!4913168 bm!341223) bm!341224))

(declare-fun m!5922996 () Bool)

(assert (=> b!4913164 m!5922996))

(declare-fun m!5922998 () Bool)

(assert (=> bm!341224 m!5922998))

(declare-fun m!5923000 () Bool)

(assert (=> bm!341225 m!5923000))

(assert (=> start!515770 d!1578723))

(declare-fun d!1578725 () Bool)

(declare-fun isBalanced!4058 (Conc!14839) Bool)

(assert (=> d!1578725 (= (inv!73251 input!6475) (isBalanced!4058 (c!835085 input!6475)))))

(declare-fun bs!1177610 () Bool)

(assert (= bs!1177610 d!1578725))

(declare-fun m!5923002 () Bool)

(assert (=> bs!1177610 m!5923002))

(assert (=> start!515770 d!1578725))

(declare-fun e!3070927 () Bool)

(assert (=> b!4913049 (= tp!1381538 e!3070927)))

(declare-fun b!4913182 () Bool)

(declare-fun tp!1381574 () Bool)

(declare-fun tp!1381576 () Bool)

(assert (=> b!4913182 (= e!3070927 (and tp!1381574 tp!1381576))))

(declare-fun b!4913183 () Bool)

(declare-fun tp!1381572 () Bool)

(assert (=> b!4913183 (= e!3070927 tp!1381572)))

(declare-fun b!4913181 () Bool)

(assert (=> b!4913181 (= e!3070927 tp_is_empty!35893)))

(declare-fun b!4913184 () Bool)

(declare-fun tp!1381575 () Bool)

(declare-fun tp!1381573 () Bool)

(assert (=> b!4913184 (= e!3070927 (and tp!1381575 tp!1381573))))

(assert (= (and b!4913049 (is-ElementMatch!13346 (regOne!27204 r!15208))) b!4913181))

(assert (= (and b!4913049 (is-Concat!21919 (regOne!27204 r!15208))) b!4913182))

(assert (= (and b!4913049 (is-Star!13346 (regOne!27204 r!15208))) b!4913183))

(assert (= (and b!4913049 (is-Union!13346 (regOne!27204 r!15208))) b!4913184))

(declare-fun e!3070928 () Bool)

(assert (=> b!4913049 (= tp!1381539 e!3070928)))

(declare-fun b!4913186 () Bool)

(declare-fun tp!1381579 () Bool)

(declare-fun tp!1381581 () Bool)

(assert (=> b!4913186 (= e!3070928 (and tp!1381579 tp!1381581))))

(declare-fun b!4913187 () Bool)

(declare-fun tp!1381577 () Bool)

(assert (=> b!4913187 (= e!3070928 tp!1381577)))

(declare-fun b!4913185 () Bool)

(assert (=> b!4913185 (= e!3070928 tp_is_empty!35893)))

(declare-fun b!4913188 () Bool)

(declare-fun tp!1381580 () Bool)

(declare-fun tp!1381578 () Bool)

(assert (=> b!4913188 (= e!3070928 (and tp!1381580 tp!1381578))))

(assert (= (and b!4913049 (is-ElementMatch!13346 (regTwo!27204 r!15208))) b!4913185))

(assert (= (and b!4913049 (is-Concat!21919 (regTwo!27204 r!15208))) b!4913186))

(assert (= (and b!4913049 (is-Star!13346 (regTwo!27204 r!15208))) b!4913187))

(assert (= (and b!4913049 (is-Union!13346 (regTwo!27204 r!15208))) b!4913188))

(declare-fun e!3070929 () Bool)

(assert (=> b!4913053 (= tp!1381543 e!3070929)))

(declare-fun b!4913190 () Bool)

(declare-fun tp!1381584 () Bool)

(declare-fun tp!1381586 () Bool)

(assert (=> b!4913190 (= e!3070929 (and tp!1381584 tp!1381586))))

(declare-fun b!4913191 () Bool)

(declare-fun tp!1381582 () Bool)

(assert (=> b!4913191 (= e!3070929 tp!1381582)))

(declare-fun b!4913189 () Bool)

(assert (=> b!4913189 (= e!3070929 tp_is_empty!35893)))

(declare-fun b!4913192 () Bool)

(declare-fun tp!1381585 () Bool)

(declare-fun tp!1381583 () Bool)

(assert (=> b!4913192 (= e!3070929 (and tp!1381585 tp!1381583))))

(assert (= (and b!4913053 (is-ElementMatch!13346 (reg!13675 r!15208))) b!4913189))

(assert (= (and b!4913053 (is-Concat!21919 (reg!13675 r!15208))) b!4913190))

(assert (= (and b!4913053 (is-Star!13346 (reg!13675 r!15208))) b!4913191))

(assert (= (and b!4913053 (is-Union!13346 (reg!13675 r!15208))) b!4913192))

(declare-fun e!3070934 () Bool)

(declare-fun b!4913201 () Bool)

(declare-fun tp!1381595 () Bool)

(declare-fun tp!1381594 () Bool)

(assert (=> b!4913201 (= e!3070934 (and (inv!73252 (left!41273 (c!835085 input!6475))) tp!1381594 (inv!73252 (right!41603 (c!835085 input!6475))) tp!1381595))))

(declare-fun b!4913203 () Bool)

(declare-fun e!3070935 () Bool)

(declare-fun tp!1381593 () Bool)

(assert (=> b!4913203 (= e!3070935 tp!1381593)))

(declare-fun b!4913202 () Bool)

(declare-fun inv!73257 (IArray!29739) Bool)

(assert (=> b!4913202 (= e!3070934 (and (inv!73257 (xs!18155 (c!835085 input!6475))) e!3070935))))

(assert (=> b!4913052 (= tp!1381540 (and (inv!73252 (c!835085 input!6475)) e!3070934))))

(assert (= (and b!4913052 (is-Node!14839 (c!835085 input!6475))) b!4913201))

(assert (= b!4913202 b!4913203))

(assert (= (and b!4913052 (is-Leaf!24692 (c!835085 input!6475))) b!4913202))

(declare-fun m!5923004 () Bool)

(assert (=> b!4913201 m!5923004))

(declare-fun m!5923006 () Bool)

(assert (=> b!4913201 m!5923006))

(declare-fun m!5923008 () Bool)

(assert (=> b!4913202 m!5923008))

(assert (=> b!4913052 m!5922860))

(declare-fun e!3070936 () Bool)

(assert (=> b!4913051 (= tp!1381541 e!3070936)))

(declare-fun b!4913205 () Bool)

(declare-fun tp!1381598 () Bool)

(declare-fun tp!1381600 () Bool)

(assert (=> b!4913205 (= e!3070936 (and tp!1381598 tp!1381600))))

(declare-fun b!4913206 () Bool)

(declare-fun tp!1381596 () Bool)

(assert (=> b!4913206 (= e!3070936 tp!1381596)))

(declare-fun b!4913204 () Bool)

(assert (=> b!4913204 (= e!3070936 tp_is_empty!35893)))

(declare-fun b!4913207 () Bool)

(declare-fun tp!1381599 () Bool)

(declare-fun tp!1381597 () Bool)

(assert (=> b!4913207 (= e!3070936 (and tp!1381599 tp!1381597))))

(assert (= (and b!4913051 (is-ElementMatch!13346 (regOne!27205 r!15208))) b!4913204))

(assert (= (and b!4913051 (is-Concat!21919 (regOne!27205 r!15208))) b!4913205))

(assert (= (and b!4913051 (is-Star!13346 (regOne!27205 r!15208))) b!4913206))

(assert (= (and b!4913051 (is-Union!13346 (regOne!27205 r!15208))) b!4913207))

(declare-fun e!3070937 () Bool)

(assert (=> b!4913051 (= tp!1381542 e!3070937)))

(declare-fun b!4913209 () Bool)

(declare-fun tp!1381603 () Bool)

(declare-fun tp!1381605 () Bool)

(assert (=> b!4913209 (= e!3070937 (and tp!1381603 tp!1381605))))

(declare-fun b!4913210 () Bool)

(declare-fun tp!1381601 () Bool)

(assert (=> b!4913210 (= e!3070937 tp!1381601)))

(declare-fun b!4913208 () Bool)

(assert (=> b!4913208 (= e!3070937 tp_is_empty!35893)))

(declare-fun b!4913211 () Bool)

(declare-fun tp!1381604 () Bool)

(declare-fun tp!1381602 () Bool)

(assert (=> b!4913211 (= e!3070937 (and tp!1381604 tp!1381602))))

(assert (= (and b!4913051 (is-ElementMatch!13346 (regTwo!27205 r!15208))) b!4913208))

(assert (= (and b!4913051 (is-Concat!21919 (regTwo!27205 r!15208))) b!4913209))

(assert (= (and b!4913051 (is-Star!13346 (regTwo!27205 r!15208))) b!4913210))

(assert (= (and b!4913051 (is-Union!13346 (regTwo!27205 r!15208))) b!4913211))

(push 1)

(assert (not d!1578689))

(assert (not b!4913192))

(assert (not d!1578699))

(assert (not b!4913190))

(assert (not b!4913164))

(assert (not b!4913187))

(assert (not b!4913052))

(assert (not d!1578697))

(assert (not b!4913188))

(assert (not b!4913202))

(assert (not b!4913206))

(assert (not b!4913183))

(assert (not b!4913203))

(assert (not d!1578709))

(assert (not d!1578701))

(assert (not b!4913141))

(assert (not b!4913182))

(assert (not bm!341225))

(assert (not b!4913122))

(assert (not b!4913143))

(assert (not b!4913201))

(assert (not d!1578705))

(assert (not b!4913184))

(assert (not b!4913207))

(assert (not b!4913209))

(assert (not d!1578707))

(assert (not b!4913205))

(assert (not bm!341224))

(assert (not d!1578711))

(assert (not b!4913210))

(assert (not b!4913077))

(assert (not b!4913186))

(assert (not b!4913116))

(assert (not b!4913128))

(assert (not b!4913211))

(assert tp_is_empty!35893)

(assert (not b!4913191))

(assert (not d!1578715))

(assert (not d!1578725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

