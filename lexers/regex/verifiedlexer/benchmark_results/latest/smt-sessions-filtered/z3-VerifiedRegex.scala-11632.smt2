; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!648790 () Bool)

(assert start!648790)

(declare-fun b!6647663 () Bool)

(assert (=> b!6647663 true))

(assert (=> b!6647663 true))

(declare-fun lambda!371929 () Int)

(declare-fun lambda!371928 () Int)

(assert (=> b!6647663 (not (= lambda!371929 lambda!371928))))

(assert (=> b!6647663 true))

(assert (=> b!6647663 true))

(declare-fun b!6647671 () Bool)

(assert (=> b!6647671 true))

(declare-fun bs!1711147 () Bool)

(declare-fun b!6647623 () Bool)

(assert (= bs!1711147 (and b!6647623 b!6647663)))

(declare-datatypes ((C!33292 0))(
  ( (C!33293 (val!26348 Int)) )
))
(declare-datatypes ((Regex!16511 0))(
  ( (ElementMatch!16511 (c!1226759 C!33292)) (Concat!25356 (regOne!33534 Regex!16511) (regTwo!33534 Regex!16511)) (EmptyExpr!16511) (Star!16511 (reg!16840 Regex!16511)) (EmptyLang!16511) (Union!16511 (regOne!33535 Regex!16511) (regTwo!33535 Regex!16511)) )
))
(declare-fun r!7292 () Regex!16511)

(declare-fun lambda!371931 () Int)

(declare-fun lt!2423021 () Regex!16511)

(assert (=> bs!1711147 (= (and (= (regOne!33534 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2423021 (regTwo!33534 r!7292))) (= lambda!371931 lambda!371928))))

(assert (=> bs!1711147 (not (= lambda!371931 lambda!371929))))

(assert (=> b!6647623 true))

(assert (=> b!6647623 true))

(assert (=> b!6647623 true))

(declare-fun lambda!371932 () Int)

(assert (=> bs!1711147 (not (= lambda!371932 lambda!371928))))

(assert (=> bs!1711147 (= (and (= (regOne!33534 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2423021 (regTwo!33534 r!7292))) (= lambda!371932 lambda!371929))))

(assert (=> b!6647623 (not (= lambda!371932 lambda!371931))))

(assert (=> b!6647623 true))

(assert (=> b!6647623 true))

(assert (=> b!6647623 true))

(declare-fun lambda!371933 () Int)

(declare-fun lt!2422859 () Regex!16511)

(assert (=> bs!1711147 (= (and (= (regTwo!33534 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422859 (regTwo!33534 r!7292))) (= lambda!371933 lambda!371928))))

(assert (=> bs!1711147 (not (= lambda!371933 lambda!371929))))

(assert (=> b!6647623 (= (and (= (regTwo!33534 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422859 lt!2423021)) (= lambda!371933 lambda!371931))))

(assert (=> b!6647623 (not (= lambda!371933 lambda!371932))))

(assert (=> b!6647623 true))

(assert (=> b!6647623 true))

(assert (=> b!6647623 true))

(declare-fun lambda!371934 () Int)

(assert (=> bs!1711147 (not (= lambda!371934 lambda!371928))))

(assert (=> b!6647623 (not (= lambda!371934 lambda!371933))))

(assert (=> bs!1711147 (= (and (= (regTwo!33534 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422859 (regTwo!33534 r!7292))) (= lambda!371934 lambda!371929))))

(assert (=> b!6647623 (= (and (= (regTwo!33534 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422859 lt!2423021)) (= lambda!371934 lambda!371932))))

(assert (=> b!6647623 (not (= lambda!371934 lambda!371931))))

(assert (=> b!6647623 true))

(assert (=> b!6647623 true))

(assert (=> b!6647623 true))

(declare-fun bs!1711148 () Bool)

(declare-fun b!6647624 () Bool)

(assert (= bs!1711148 (and b!6647624 b!6647623)))

(declare-fun lambda!371935 () Int)

(assert (=> bs!1711148 (not (= lambda!371935 lambda!371934))))

(declare-fun bs!1711149 () Bool)

(assert (= bs!1711149 (and b!6647624 b!6647663)))

(declare-fun lt!2422957 () Regex!16511)

(assert (=> bs!1711149 (= (and (= (regOne!33534 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422957 (regTwo!33534 r!7292))) (= lambda!371935 lambda!371928))))

(assert (=> bs!1711148 (= (and (= (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422957 lt!2422859)) (= lambda!371935 lambda!371933))))

(assert (=> bs!1711149 (not (= lambda!371935 lambda!371929))))

(assert (=> bs!1711148 (not (= lambda!371935 lambda!371932))))

(assert (=> bs!1711148 (= (= lt!2422957 lt!2423021) (= lambda!371935 lambda!371931))))

(assert (=> b!6647624 true))

(assert (=> b!6647624 true))

(assert (=> b!6647624 true))

(declare-fun lambda!371936 () Int)

(assert (=> b!6647624 (not (= lambda!371936 lambda!371935))))

(assert (=> bs!1711148 (= (and (= (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422957 lt!2422859)) (= lambda!371936 lambda!371934))))

(assert (=> bs!1711149 (not (= lambda!371936 lambda!371928))))

(assert (=> bs!1711148 (not (= lambda!371936 lambda!371933))))

(assert (=> bs!1711149 (= (and (= (regOne!33534 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422957 (regTwo!33534 r!7292))) (= lambda!371936 lambda!371929))))

(assert (=> bs!1711148 (= (= lt!2422957 lt!2423021) (= lambda!371936 lambda!371932))))

(assert (=> bs!1711148 (not (= lambda!371936 lambda!371931))))

(assert (=> b!6647624 true))

(assert (=> b!6647624 true))

(assert (=> b!6647624 true))

(declare-fun lt!2422956 () Regex!16511)

(declare-fun lambda!371937 () Int)

(assert (=> b!6647624 (= (and (= (regTwo!33534 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422956 lt!2422957)) (= lambda!371937 lambda!371935))))

(assert (=> bs!1711148 (not (= lambda!371937 lambda!371934))))

(assert (=> bs!1711149 (= (and (= (regTwo!33534 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422956 (regTwo!33534 r!7292))) (= lambda!371937 lambda!371928))))

(assert (=> bs!1711148 (= (= lt!2422956 lt!2422859) (= lambda!371937 lambda!371933))))

(assert (=> b!6647624 (not (= lambda!371937 lambda!371936))))

(assert (=> bs!1711149 (not (= lambda!371937 lambda!371929))))

(assert (=> bs!1711148 (not (= lambda!371937 lambda!371932))))

(assert (=> bs!1711148 (= (and (= (regTwo!33534 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422956 lt!2423021)) (= lambda!371937 lambda!371931))))

(assert (=> b!6647624 true))

(assert (=> b!6647624 true))

(assert (=> b!6647624 true))

(declare-fun lambda!371938 () Int)

(assert (=> b!6647624 (not (= lambda!371938 lambda!371935))))

(assert (=> bs!1711148 (= (= lt!2422956 lt!2422859) (= lambda!371938 lambda!371934))))

(assert (=> b!6647624 (not (= lambda!371938 lambda!371937))))

(assert (=> bs!1711149 (not (= lambda!371938 lambda!371928))))

(assert (=> bs!1711148 (not (= lambda!371938 lambda!371933))))

(assert (=> b!6647624 (= (and (= (regTwo!33534 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422956 lt!2422957)) (= lambda!371938 lambda!371936))))

(assert (=> bs!1711149 (= (and (= (regTwo!33534 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422956 (regTwo!33534 r!7292))) (= lambda!371938 lambda!371929))))

(assert (=> bs!1711148 (= (and (= (regTwo!33534 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422956 lt!2423021)) (= lambda!371938 lambda!371932))))

(assert (=> bs!1711148 (not (= lambda!371938 lambda!371931))))

(assert (=> b!6647624 true))

(assert (=> b!6647624 true))

(assert (=> b!6647624 true))

(declare-fun bs!1711150 () Bool)

(declare-fun b!6647651 () Bool)

(assert (= bs!1711150 (and b!6647651 b!6647624)))

(declare-fun lt!2422860 () Regex!16511)

(declare-fun lambda!371939 () Int)

(assert (=> bs!1711150 (= (and (= lt!2422860 (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422957)) (= lambda!371939 lambda!371935))))

(declare-fun bs!1711151 () Bool)

(assert (= bs!1711151 (and b!6647651 b!6647623)))

(assert (=> bs!1711151 (not (= lambda!371939 lambda!371934))))

(assert (=> bs!1711150 (= (and (= lt!2422860 (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422956)) (= lambda!371939 lambda!371937))))

(declare-fun bs!1711152 () Bool)

(assert (= bs!1711152 (and b!6647651 b!6647663)))

(assert (=> bs!1711152 (= (= lt!2422860 (regOne!33534 r!7292)) (= lambda!371939 lambda!371928))))

(assert (=> bs!1711151 (= (and (= lt!2422860 (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422859)) (= lambda!371939 lambda!371933))))

(assert (=> bs!1711152 (not (= lambda!371939 lambda!371929))))

(assert (=> bs!1711151 (not (= lambda!371939 lambda!371932))))

(assert (=> bs!1711151 (= (and (= lt!2422860 (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2423021)) (= lambda!371939 lambda!371931))))

(assert (=> bs!1711150 (not (= lambda!371939 lambda!371936))))

(assert (=> bs!1711150 (not (= lambda!371939 lambda!371938))))

(assert (=> b!6647651 true))

(assert (=> b!6647651 true))

(assert (=> b!6647651 true))

(declare-fun lambda!371940 () Int)

(assert (=> bs!1711150 (not (= lambda!371940 lambda!371935))))

(assert (=> bs!1711151 (= (and (= lt!2422860 (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422859)) (= lambda!371940 lambda!371934))))

(assert (=> bs!1711150 (not (= lambda!371940 lambda!371937))))

(assert (=> bs!1711152 (not (= lambda!371940 lambda!371928))))

(assert (=> bs!1711151 (not (= lambda!371940 lambda!371933))))

(assert (=> bs!1711152 (= (= lt!2422860 (regOne!33534 r!7292)) (= lambda!371940 lambda!371929))))

(assert (=> bs!1711151 (= (and (= lt!2422860 (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2423021)) (= lambda!371940 lambda!371932))))

(assert (=> bs!1711151 (not (= lambda!371940 lambda!371931))))

(assert (=> b!6647651 (not (= lambda!371940 lambda!371939))))

(assert (=> bs!1711150 (= (and (= lt!2422860 (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422957)) (= lambda!371940 lambda!371936))))

(assert (=> bs!1711150 (= (and (= lt!2422860 (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422956)) (= lambda!371940 lambda!371938))))

(assert (=> b!6647651 true))

(assert (=> b!6647651 true))

(assert (=> b!6647651 true))

(declare-fun bs!1711153 () Bool)

(declare-fun b!6647652 () Bool)

(assert (= bs!1711153 (and b!6647652 b!6647624)))

(declare-datatypes ((List!65832 0))(
  ( (Nil!65708) (Cons!65708 (h!72156 C!33292) (t!379501 List!65832)) )
))
(declare-datatypes ((tuple2!66980 0))(
  ( (tuple2!66981 (_1!36793 List!65832) (_2!36793 List!65832)) )
))
(declare-fun lt!2423042 () tuple2!66980)

(declare-fun s!2326 () List!65832)

(declare-fun lambda!371941 () Int)

(assert (=> bs!1711153 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422957)) (= lambda!371941 lambda!371935))))

(declare-fun bs!1711154 () Bool)

(assert (= bs!1711154 (and b!6647652 b!6647623)))

(assert (=> bs!1711154 (not (= lambda!371941 lambda!371934))))

(assert (=> bs!1711153 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422956)) (= lambda!371941 lambda!371937))))

(declare-fun bs!1711155 () Bool)

(assert (= bs!1711155 (and b!6647652 b!6647663)))

(assert (=> bs!1711155 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371941 lambda!371928))))

(declare-fun bs!1711156 () Bool)

(assert (= bs!1711156 (and b!6647652 b!6647651)))

(assert (=> bs!1711156 (not (= lambda!371941 lambda!371940))))

(assert (=> bs!1711154 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422859)) (= lambda!371941 lambda!371933))))

(assert (=> bs!1711155 (not (= lambda!371941 lambda!371929))))

(assert (=> bs!1711154 (not (= lambda!371941 lambda!371932))))

(assert (=> bs!1711154 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2423021)) (= lambda!371941 lambda!371931))))

(assert (=> bs!1711156 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422860) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371941 lambda!371939))))

(assert (=> bs!1711153 (not (= lambda!371941 lambda!371936))))

(assert (=> bs!1711153 (not (= lambda!371941 lambda!371938))))

(assert (=> b!6647652 true))

(assert (=> b!6647652 true))

(assert (=> b!6647652 true))

(declare-fun lambda!371942 () Int)

(assert (=> bs!1711154 (not (= lambda!371942 lambda!371934))))

(assert (=> bs!1711153 (not (= lambda!371942 lambda!371937))))

(assert (=> bs!1711155 (not (= lambda!371942 lambda!371928))))

(assert (=> bs!1711156 (not (= lambda!371942 lambda!371940))))

(assert (=> bs!1711154 (not (= lambda!371942 lambda!371933))))

(assert (=> bs!1711155 (not (= lambda!371942 lambda!371929))))

(assert (=> bs!1711154 (not (= lambda!371942 lambda!371932))))

(assert (=> bs!1711154 (not (= lambda!371942 lambda!371931))))

(assert (=> bs!1711156 (not (= lambda!371942 lambda!371939))))

(assert (=> b!6647652 (not (= lambda!371942 lambda!371941))))

(assert (=> bs!1711153 (not (= lambda!371942 lambda!371935))))

(assert (=> bs!1711153 (not (= lambda!371942 lambda!371936))))

(assert (=> bs!1711153 (not (= lambda!371942 lambda!371938))))

(assert (=> b!6647652 true))

(assert (=> b!6647652 true))

(assert (=> b!6647652 true))

(declare-fun lambda!371943 () Int)

(assert (=> bs!1711154 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422859)) (= lambda!371943 lambda!371934))))

(assert (=> bs!1711153 (not (= lambda!371943 lambda!371937))))

(assert (=> bs!1711155 (not (= lambda!371943 lambda!371928))))

(assert (=> bs!1711156 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422860) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371943 lambda!371940))))

(assert (=> bs!1711154 (not (= lambda!371943 lambda!371933))))

(assert (=> bs!1711155 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371943 lambda!371929))))

(assert (=> bs!1711154 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2423021)) (= lambda!371943 lambda!371932))))

(assert (=> bs!1711154 (not (= lambda!371943 lambda!371931))))

(assert (=> b!6647652 (not (= lambda!371943 lambda!371941))))

(assert (=> bs!1711153 (not (= lambda!371943 lambda!371935))))

(assert (=> bs!1711153 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422957)) (= lambda!371943 lambda!371936))))

(assert (=> bs!1711153 (= (and (= (_1!36793 lt!2423042) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422956)) (= lambda!371943 lambda!371938))))

(assert (=> bs!1711156 (not (= lambda!371943 lambda!371939))))

(assert (=> b!6647652 (not (= lambda!371943 lambda!371942))))

(assert (=> b!6647652 true))

(assert (=> b!6647652 true))

(assert (=> b!6647652 true))

(declare-fun b!6647657 () Bool)

(assert (=> b!6647657 true))

(declare-fun bs!1711157 () Bool)

(assert (= bs!1711157 (and b!6647657 b!6647652)))

(declare-fun lambda!371946 () Int)

(declare-fun lambda!371944 () Int)

(assert (=> bs!1711157 (= lambda!371946 lambda!371944)))

(declare-fun bs!1711158 () Bool)

(assert (= bs!1711158 (and b!6647657 b!6647623)))

(declare-fun lambda!371947 () Int)

(assert (=> bs!1711158 (not (= lambda!371947 lambda!371934))))

(assert (=> bs!1711157 (not (= lambda!371947 lambda!371943))))

(declare-fun bs!1711159 () Bool)

(assert (= bs!1711159 (and b!6647657 b!6647624)))

(declare-fun lt!2422944 () Regex!16511)

(assert (=> bs!1711159 (= (and (= lt!2422944 (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422956)) (= lambda!371947 lambda!371937))))

(declare-fun bs!1711160 () Bool)

(assert (= bs!1711160 (and b!6647657 b!6647663)))

(assert (=> bs!1711160 (= (= lt!2422944 (regOne!33534 r!7292)) (= lambda!371947 lambda!371928))))

(declare-fun bs!1711161 () Bool)

(assert (= bs!1711161 (and b!6647657 b!6647651)))

(assert (=> bs!1711161 (not (= lambda!371947 lambda!371940))))

(assert (=> bs!1711158 (= (and (= lt!2422944 (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422859)) (= lambda!371947 lambda!371933))))

(assert (=> bs!1711160 (not (= lambda!371947 lambda!371929))))

(assert (=> bs!1711158 (not (= lambda!371947 lambda!371932))))

(assert (=> bs!1711158 (= (and (= lt!2422944 (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2423021)) (= lambda!371947 lambda!371931))))

(assert (=> bs!1711157 (= (and (= s!2326 (_1!36793 lt!2423042)) (= lt!2422944 (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371947 lambda!371941))))

(assert (=> bs!1711159 (= (and (= lt!2422944 (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422957)) (= lambda!371947 lambda!371935))))

(assert (=> bs!1711159 (not (= lambda!371947 lambda!371936))))

(assert (=> bs!1711159 (not (= lambda!371947 lambda!371938))))

(assert (=> bs!1711161 (= (= lt!2422944 lt!2422860) (= lambda!371947 lambda!371939))))

(assert (=> bs!1711157 (not (= lambda!371947 lambda!371942))))

(assert (=> b!6647657 true))

(assert (=> b!6647657 true))

(assert (=> b!6647657 true))

(declare-fun lambda!371948 () Int)

(assert (=> bs!1711158 (= (and (= lt!2422944 (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422859)) (= lambda!371948 lambda!371934))))

(assert (=> bs!1711157 (= (and (= s!2326 (_1!36793 lt!2423042)) (= lt!2422944 (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371948 lambda!371943))))

(assert (=> bs!1711159 (not (= lambda!371948 lambda!371937))))

(assert (=> bs!1711160 (not (= lambda!371948 lambda!371928))))

(assert (=> bs!1711161 (= (= lt!2422944 lt!2422860) (= lambda!371948 lambda!371940))))

(assert (=> bs!1711158 (not (= lambda!371948 lambda!371933))))

(assert (=> bs!1711160 (= (= lt!2422944 (regOne!33534 r!7292)) (= lambda!371948 lambda!371929))))

(assert (=> bs!1711158 (= (and (= lt!2422944 (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2423021)) (= lambda!371948 lambda!371932))))

(assert (=> bs!1711158 (not (= lambda!371948 lambda!371931))))

(assert (=> bs!1711157 (not (= lambda!371948 lambda!371941))))

(assert (=> bs!1711159 (not (= lambda!371948 lambda!371935))))

(assert (=> bs!1711159 (= (and (= lt!2422944 (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422957)) (= lambda!371948 lambda!371936))))

(assert (=> b!6647657 (not (= lambda!371948 lambda!371947))))

(assert (=> bs!1711159 (= (and (= lt!2422944 (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422956)) (= lambda!371948 lambda!371938))))

(assert (=> bs!1711161 (not (= lambda!371948 lambda!371939))))

(assert (=> bs!1711157 (not (= lambda!371948 lambda!371942))))

(assert (=> b!6647657 true))

(assert (=> b!6647657 true))

(assert (=> b!6647657 true))

(declare-fun lambda!371949 () Int)

(assert (=> bs!1711158 (not (= lambda!371949 lambda!371934))))

(assert (=> bs!1711157 (not (= lambda!371949 lambda!371943))))

(declare-fun lt!2423008 () tuple2!66980)

(assert (=> bs!1711159 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422956)) (= lambda!371949 lambda!371937))))

(assert (=> bs!1711160 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371949 lambda!371928))))

(assert (=> bs!1711158 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422859)) (= lambda!371949 lambda!371933))))

(assert (=> bs!1711160 (not (= lambda!371949 lambda!371929))))

(assert (=> bs!1711158 (not (= lambda!371949 lambda!371932))))

(assert (=> bs!1711158 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2423021)) (= lambda!371949 lambda!371931))))

(assert (=> bs!1711157 (= (= (_1!36793 lt!2423008) (_1!36793 lt!2423042)) (= lambda!371949 lambda!371941))))

(assert (=> bs!1711159 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422957)) (= lambda!371949 lambda!371935))))

(assert (=> bs!1711161 (not (= lambda!371949 lambda!371940))))

(assert (=> b!6647657 (not (= lambda!371949 lambda!371948))))

(assert (=> bs!1711159 (not (= lambda!371949 lambda!371936))))

(assert (=> b!6647657 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422944) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371949 lambda!371947))))

(assert (=> bs!1711159 (not (= lambda!371949 lambda!371938))))

(assert (=> bs!1711161 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422860) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371949 lambda!371939))))

(assert (=> bs!1711157 (not (= lambda!371949 lambda!371942))))

(assert (=> b!6647657 true))

(assert (=> b!6647657 true))

(assert (=> b!6647657 true))

(declare-fun lambda!371950 () Int)

(assert (=> bs!1711158 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422859)) (= lambda!371950 lambda!371934))))

(assert (=> bs!1711157 (= (= (_1!36793 lt!2423008) (_1!36793 lt!2423042)) (= lambda!371950 lambda!371943))))

(assert (=> b!6647657 (not (= lambda!371950 lambda!371949))))

(assert (=> bs!1711159 (not (= lambda!371950 lambda!371937))))

(assert (=> bs!1711160 (not (= lambda!371950 lambda!371928))))

(assert (=> bs!1711158 (not (= lambda!371950 lambda!371933))))

(assert (=> bs!1711160 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371950 lambda!371929))))

(assert (=> bs!1711158 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2423021)) (= lambda!371950 lambda!371932))))

(assert (=> bs!1711158 (not (= lambda!371950 lambda!371931))))

(assert (=> bs!1711157 (not (= lambda!371950 lambda!371941))))

(assert (=> bs!1711159 (not (= lambda!371950 lambda!371935))))

(assert (=> bs!1711161 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422860) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371950 lambda!371940))))

(assert (=> b!6647657 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422944) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371950 lambda!371948))))

(assert (=> bs!1711159 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422957)) (= lambda!371950 lambda!371936))))

(assert (=> b!6647657 (not (= lambda!371950 lambda!371947))))

(assert (=> bs!1711159 (= (and (= (_1!36793 lt!2423008) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422956)) (= lambda!371950 lambda!371938))))

(assert (=> bs!1711161 (not (= lambda!371950 lambda!371939))))

(assert (=> bs!1711157 (not (= lambda!371950 lambda!371942))))

(assert (=> b!6647657 true))

(assert (=> b!6647657 true))

(assert (=> b!6647657 true))

(declare-fun lambda!371951 () Int)

(assert (=> bs!1711158 (not (= lambda!371951 lambda!371934))))

(assert (=> bs!1711157 (not (= lambda!371951 lambda!371943))))

(assert (=> b!6647657 (not (= lambda!371951 lambda!371949))))

(assert (=> bs!1711159 (not (= lambda!371951 lambda!371937))))

(assert (=> bs!1711160 (not (= lambda!371951 lambda!371928))))

(assert (=> bs!1711158 (not (= lambda!371951 lambda!371933))))

(assert (=> b!6647657 (not (= lambda!371951 lambda!371950))))

(assert (=> bs!1711160 (not (= lambda!371951 lambda!371929))))

(assert (=> bs!1711158 (not (= lambda!371951 lambda!371932))))

(assert (=> bs!1711158 (not (= lambda!371951 lambda!371931))))

(assert (=> bs!1711157 (not (= lambda!371951 lambda!371941))))

(assert (=> bs!1711159 (not (= lambda!371951 lambda!371935))))

(assert (=> bs!1711161 (not (= lambda!371951 lambda!371940))))

(assert (=> b!6647657 (not (= lambda!371951 lambda!371948))))

(assert (=> bs!1711159 (not (= lambda!371951 lambda!371936))))

(assert (=> b!6647657 (not (= lambda!371951 lambda!371947))))

(assert (=> bs!1711159 (not (= lambda!371951 lambda!371938))))

(assert (=> bs!1711161 (not (= lambda!371951 lambda!371939))))

(assert (=> bs!1711157 (= (= (_1!36793 lt!2423008) (_1!36793 lt!2423042)) (= lambda!371951 lambda!371942))))

(assert (=> b!6647657 true))

(assert (=> b!6647657 true))

(assert (=> b!6647657 true))

(declare-fun bs!1711162 () Bool)

(declare-fun b!6647636 () Bool)

(assert (= bs!1711162 (and b!6647636 b!6647623)))

(declare-fun lambda!371952 () Int)

(assert (=> bs!1711162 (not (= lambda!371952 lambda!371934))))

(declare-fun bs!1711163 () Bool)

(assert (= bs!1711163 (and b!6647636 b!6647652)))

(assert (=> bs!1711163 (not (= lambda!371952 lambda!371943))))

(declare-fun bs!1711164 () Bool)

(assert (= bs!1711164 (and b!6647636 b!6647657)))

(assert (=> bs!1711164 (= (= Nil!65708 (_1!36793 lt!2423008)) (= lambda!371952 lambda!371949))))

(declare-fun bs!1711165 () Bool)

(assert (= bs!1711165 (and b!6647636 b!6647624)))

(assert (=> bs!1711165 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422956)) (= lambda!371952 lambda!371937))))

(declare-fun bs!1711166 () Bool)

(assert (= bs!1711166 (and b!6647636 b!6647663)))

(assert (=> bs!1711166 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371952 lambda!371928))))

(assert (=> bs!1711162 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422859)) (= lambda!371952 lambda!371933))))

(assert (=> bs!1711164 (not (= lambda!371952 lambda!371951))))

(assert (=> bs!1711164 (not (= lambda!371952 lambda!371950))))

(assert (=> bs!1711166 (not (= lambda!371952 lambda!371929))))

(assert (=> bs!1711162 (not (= lambda!371952 lambda!371932))))

(assert (=> bs!1711162 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2423021)) (= lambda!371952 lambda!371931))))

(assert (=> bs!1711163 (= (= Nil!65708 (_1!36793 lt!2423042)) (= lambda!371952 lambda!371941))))

(assert (=> bs!1711165 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422957)) (= lambda!371952 lambda!371935))))

(declare-fun bs!1711167 () Bool)

(assert (= bs!1711167 (and b!6647636 b!6647651)))

(assert (=> bs!1711167 (not (= lambda!371952 lambda!371940))))

(assert (=> bs!1711164 (not (= lambda!371952 lambda!371948))))

(assert (=> bs!1711165 (not (= lambda!371952 lambda!371936))))

(assert (=> bs!1711164 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422944) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371952 lambda!371947))))

(assert (=> bs!1711165 (not (= lambda!371952 lambda!371938))))

(assert (=> bs!1711167 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422860) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371952 lambda!371939))))

(assert (=> bs!1711163 (not (= lambda!371952 lambda!371942))))

(assert (=> b!6647636 true))

(assert (=> b!6647636 true))

(declare-fun lambda!371953 () Int)

(assert (=> bs!1711162 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422859)) (= lambda!371953 lambda!371934))))

(assert (=> bs!1711163 (= (= Nil!65708 (_1!36793 lt!2423042)) (= lambda!371953 lambda!371943))))

(assert (=> bs!1711164 (not (= lambda!371953 lambda!371949))))

(assert (=> bs!1711165 (not (= lambda!371953 lambda!371937))))

(assert (=> bs!1711166 (not (= lambda!371953 lambda!371928))))

(assert (=> bs!1711162 (not (= lambda!371953 lambda!371933))))

(assert (=> bs!1711164 (not (= lambda!371953 lambda!371951))))

(assert (=> bs!1711164 (= (= Nil!65708 (_1!36793 lt!2423008)) (= lambda!371953 lambda!371950))))

(assert (=> bs!1711166 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371953 lambda!371929))))

(assert (=> bs!1711162 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2423021)) (= lambda!371953 lambda!371932))))

(assert (=> bs!1711162 (not (= lambda!371953 lambda!371931))))

(assert (=> bs!1711163 (not (= lambda!371953 lambda!371941))))

(assert (=> bs!1711165 (not (= lambda!371953 lambda!371935))))

(assert (=> b!6647636 (not (= lambda!371953 lambda!371952))))

(assert (=> bs!1711167 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422860) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371953 lambda!371940))))

(assert (=> bs!1711164 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422944) (= lt!2422860 (regTwo!33534 r!7292))) (= lambda!371953 lambda!371948))))

(assert (=> bs!1711165 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422957)) (= lambda!371953 lambda!371936))))

(assert (=> bs!1711164 (not (= lambda!371953 lambda!371947))))

(assert (=> bs!1711165 (= (and (= Nil!65708 s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= lt!2422860 lt!2422956)) (= lambda!371953 lambda!371938))))

(assert (=> bs!1711167 (not (= lambda!371953 lambda!371939))))

(assert (=> bs!1711163 (not (= lambda!371953 lambda!371942))))

(assert (=> b!6647636 true))

(assert (=> b!6647636 true))

(declare-fun lambda!371954 () Int)

(assert (=> bs!1711162 (not (= lambda!371954 lambda!371934))))

(assert (=> bs!1711163 (not (= lambda!371954 lambda!371943))))

(assert (=> bs!1711164 (not (= lambda!371954 lambda!371949))))

(assert (=> bs!1711165 (not (= lambda!371954 lambda!371937))))

(assert (=> bs!1711166 (not (= lambda!371954 lambda!371928))))

(assert (=> bs!1711162 (not (= lambda!371954 lambda!371933))))

(assert (=> bs!1711164 (= (= Nil!65708 (_1!36793 lt!2423008)) (= lambda!371954 lambda!371951))))

(assert (=> bs!1711164 (not (= lambda!371954 lambda!371950))))

(assert (=> bs!1711166 (not (= lambda!371954 lambda!371929))))

(assert (=> bs!1711162 (not (= lambda!371954 lambda!371931))))

(assert (=> bs!1711163 (not (= lambda!371954 lambda!371941))))

(assert (=> bs!1711165 (not (= lambda!371954 lambda!371935))))

(assert (=> b!6647636 (not (= lambda!371954 lambda!371952))))

(assert (=> bs!1711167 (not (= lambda!371954 lambda!371940))))

(assert (=> bs!1711164 (not (= lambda!371954 lambda!371948))))

(assert (=> bs!1711165 (not (= lambda!371954 lambda!371936))))

(assert (=> bs!1711164 (not (= lambda!371954 lambda!371947))))

(assert (=> bs!1711165 (not (= lambda!371954 lambda!371938))))

(assert (=> b!6647636 (not (= lambda!371954 lambda!371953))))

(assert (=> bs!1711162 (not (= lambda!371954 lambda!371932))))

(assert (=> bs!1711167 (not (= lambda!371954 lambda!371939))))

(assert (=> bs!1711163 (= (= Nil!65708 (_1!36793 lt!2423042)) (= lambda!371954 lambda!371942))))

(assert (=> b!6647636 true))

(assert (=> b!6647636 true))

(declare-fun c!1226755 () Bool)

(declare-datatypes ((Unit!159453 0))(
  ( (Unit!159454) )
))
(declare-fun call!586419 () Unit!159453)

(declare-fun c!1226752 () Bool)

(declare-fun c!1226748 () Bool)

(declare-fun bm!586277 () Bool)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2580 (Regex!16511 Regex!16511 List!65832) Unit!159453)

(assert (=> bm!586277 (= call!586419 (lemmaFindConcatSeparationEquivalentToExists!2580 (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) s!2326))))

(declare-fun b!6647622 () Bool)

(declare-fun e!4019743 () Bool)

(assert (=> b!6647622 e!4019743))

(declare-fun res!2723916 () Bool)

(assert (=> b!6647622 (=> (not res!2723916) (not e!4019743))))

(declare-fun call!586317 () Bool)

(declare-fun call!586309 () Bool)

(assert (=> b!6647622 (= res!2723916 (= call!586317 call!586309))))

(declare-fun lt!2422906 () Unit!159453)

(declare-fun call!586456 () Unit!159453)

(assert (=> b!6647622 (= lt!2422906 call!586456)))

(declare-fun call!586361 () Bool)

(declare-fun call!586404 () Bool)

(assert (=> b!6647622 (= call!586361 call!586404)))

(declare-fun lt!2422875 () Unit!159453)

(declare-fun call!586452 () Unit!159453)

(assert (=> b!6647622 (= lt!2422875 call!586452)))

(declare-fun call!586360 () Bool)

(assert (=> b!6647622 (not call!586360)))

(declare-fun lt!2422974 () Unit!159453)

(declare-fun call!586466 () Unit!159453)

(assert (=> b!6647622 (= lt!2422974 call!586466)))

(declare-fun e!4019728 () Unit!159453)

(declare-fun Unit!159455 () Unit!159453)

(assert (=> b!6647622 (= e!4019728 Unit!159455)))

(declare-fun bm!586278 () Bool)

(declare-fun call!586377 () Bool)

(declare-fun call!586368 () Bool)

(assert (=> bm!586278 (= call!586377 call!586368)))

(declare-fun bm!586279 () Bool)

(declare-fun call!586450 () Bool)

(declare-fun call!586331 () Bool)

(assert (=> bm!586279 (= call!586450 call!586331)))

(declare-fun e!4019740 () Unit!159453)

(declare-fun Unit!159456 () Unit!159453)

(assert (=> b!6647623 (= e!4019740 Unit!159456)))

(declare-datatypes ((List!65833 0))(
  ( (Nil!65709) (Cons!65709 (h!72157 Regex!16511) (t!379502 List!65833)) )
))
(declare-fun lt!2422962 () List!65833)

(declare-datatypes ((Context!11790 0))(
  ( (Context!11791 (exprs!6395 List!65833)) )
))
(declare-datatypes ((List!65834 0))(
  ( (Nil!65710) (Cons!65710 (h!72158 Context!11790) (t!379503 List!65834)) )
))
(declare-fun zl!343 () List!65834)

(assert (=> b!6647623 (= lt!2422962 (Cons!65709 (regTwo!33534 (regOne!33534 r!7292)) (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun lt!2422947 () Context!11790)

(assert (=> b!6647623 (= lt!2422947 (Context!11791 lt!2422962))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2422934 () (InoxSet Context!11790))

(declare-fun call!586352 () (InoxSet Context!11790))

(assert (=> b!6647623 (= lt!2422934 call!586352)))

(declare-fun lt!2422933 () (InoxSet Context!11790))

(declare-fun call!586476 () (InoxSet Context!11790))

(assert (=> b!6647623 (= lt!2422933 call!586476)))

(declare-fun lt!2422852 () Unit!159453)

(declare-fun call!586342 () Unit!159453)

(assert (=> b!6647623 (= lt!2422852 call!586342)))

(declare-fun lt!2423001 () Bool)

(declare-fun call!586472 () Bool)

(assert (=> b!6647623 (= lt!2423001 call!586472)))

(declare-fun res!2723901 () Bool)

(assert (=> b!6647623 (= res!2723901 lt!2423001)))

(declare-fun e!4019734 () Bool)

(assert (=> b!6647623 (=> res!2723901 e!4019734)))

(declare-fun call!586409 () Bool)

(assert (=> b!6647623 (= call!586409 e!4019734)))

(declare-fun lt!2422863 () List!65833)

(assert (=> b!6647623 (= lt!2422863 (Cons!65709 (regOne!33534 (regOne!33534 r!7292)) lt!2422962))))

(declare-fun lt!2422951 () Context!11790)

(assert (=> b!6647623 (= lt!2422951 (Context!11791 lt!2422863))))

(declare-fun lt!2422982 () (InoxSet Context!11790))

(assert (=> b!6647623 (= lt!2422982 (store ((as const (Array Context!11790 Bool)) false) lt!2422951 true))))

(declare-fun lt!2423036 () (InoxSet Context!11790))

(assert (=> b!6647623 (= lt!2423036 (store ((as const (Array Context!11790 Bool)) false) lt!2422947 true))))

(declare-fun lt!2422927 () (InoxSet Context!11790))

(declare-fun call!586378 () (InoxSet Context!11790))

(assert (=> b!6647623 (= lt!2422927 call!586378)))

(declare-fun lt!2422911 () Unit!159453)

(declare-fun call!586431 () Unit!159453)

(assert (=> b!6647623 (= lt!2422911 call!586431)))

(declare-fun call!586369 () (InoxSet Context!11790))

(assert (=> b!6647623 (= call!586369 call!586378)))

(declare-fun lt!2422876 () (InoxSet Context!11790))

(declare-fun call!586386 () (InoxSet Context!11790))

(assert (=> b!6647623 (= lt!2422876 call!586386)))

(declare-fun lt!2423015 () Unit!159453)

(declare-fun call!586318 () Unit!159453)

(assert (=> b!6647623 (= lt!2423015 call!586318)))

(declare-fun call!586486 () (InoxSet Context!11790))

(assert (=> b!6647623 (= call!586486 call!586386)))

(declare-fun lt!2422881 () Unit!159453)

(declare-fun call!586379 () Unit!159453)

(assert (=> b!6647623 (= lt!2422881 call!586379)))

(declare-fun res!2723915 () Bool)

(assert (=> b!6647623 (= res!2723915 lt!2423001)))

(declare-fun e!4019716 () Bool)

(assert (=> b!6647623 (=> res!2723915 e!4019716)))

(declare-fun call!586457 () Bool)

(assert (=> b!6647623 (= call!586457 e!4019716)))

(declare-fun lt!2422925 () Regex!16511)

(declare-fun call!586359 () Regex!16511)

(assert (=> b!6647623 (= lt!2422925 call!586359)))

(declare-fun lt!2422917 () Unit!159453)

(declare-fun call!586382 () Unit!159453)

(assert (=> b!6647623 (= lt!2422917 call!586382)))

(declare-fun lt!2422912 () Bool)

(declare-fun call!586434 () Bool)

(assert (=> b!6647623 (= lt!2422912 call!586434)))

(declare-fun call!586288 () Bool)

(assert (=> b!6647623 (= lt!2422912 call!586288)))

(declare-fun call!586467 () Regex!16511)

(assert (=> b!6647623 (= lt!2423021 call!586467)))

(declare-fun lt!2423022 () Unit!159453)

(declare-fun call!586443 () Unit!159453)

(assert (=> b!6647623 (= lt!2423022 call!586443)))

(declare-fun lt!2422924 () Bool)

(assert (=> b!6647623 (= lt!2422924 call!586450)))

(declare-fun call!586316 () Bool)

(assert (=> b!6647623 (= lt!2422924 call!586316)))

(declare-fun lt!2422913 () Unit!159453)

(declare-fun call!586301 () Unit!159453)

(assert (=> b!6647623 (= lt!2422913 call!586301)))

(declare-fun call!586448 () Bool)

(assert (=> b!6647623 (= lt!2422912 call!586448)))

(declare-fun lt!2422858 () Unit!159453)

(declare-fun call!586415 () Unit!159453)

(assert (=> b!6647623 (= lt!2422858 call!586415)))

(declare-fun call!586314 () Bool)

(declare-fun call!586462 () Bool)

(assert (=> b!6647623 (= call!586314 call!586462)))

(declare-fun lt!2422967 () Unit!159453)

(declare-fun call!586284 () Unit!159453)

(assert (=> b!6647623 (= lt!2422967 call!586284)))

(declare-fun call!586372 () Bool)

(declare-fun call!586399 () Bool)

(assert (=> b!6647623 (= call!586372 call!586399)))

(declare-fun lt!2423007 () Unit!159453)

(declare-fun call!586304 () Unit!159453)

(assert (=> b!6647623 (= lt!2423007 call!586304)))

(declare-fun call!586354 () Bool)

(assert (=> b!6647623 (= lt!2422924 call!586354)))

(declare-fun call!586413 () Regex!16511)

(assert (=> b!6647623 (= lt!2422859 call!586413)))

(declare-fun lt!2422971 () Unit!159453)

(assert (=> b!6647623 (= lt!2422971 call!586419)))

(declare-fun call!586485 () Bool)

(declare-fun call!586296 () Bool)

(assert (=> b!6647623 (= call!586485 call!586296)))

(declare-fun lt!2422901 () Unit!159453)

(declare-fun call!586441 () Unit!159453)

(assert (=> b!6647623 (= lt!2422901 call!586441)))

(declare-fun call!586374 () Bool)

(declare-fun call!586473 () Bool)

(assert (=> b!6647623 (= call!586374 call!586473)))

(declare-fun lt!2422910 () Unit!159453)

(declare-fun call!586350 () Unit!159453)

(assert (=> b!6647623 (= lt!2422910 call!586350)))

(declare-fun res!2723918 () Bool)

(declare-fun call!586401 () Bool)

(declare-fun call!586396 () Bool)

(assert (=> b!6647623 (= res!2723918 (= call!586401 call!586396))))

(declare-fun e!4019724 () Bool)

(assert (=> b!6647623 (=> (not res!2723918) (not e!4019724))))

(assert (=> b!6647623 e!4019724))

(declare-fun lt!2422970 () List!65833)

(declare-fun c!1226758 () Bool)

(declare-fun c!1226754 () Bool)

(declare-fun call!586293 () Regex!16511)

(declare-fun bm!586280 () Bool)

(declare-fun generalisedConcat!2108 (List!65833) Regex!16511)

(assert (=> bm!586280 (= call!586293 (generalisedConcat!2108 (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343)))))))))

(declare-fun e!4019720 () Bool)

(assert (=> b!6647624 e!4019720))

(declare-fun res!2723900 () Bool)

(assert (=> b!6647624 (=> (not res!2723900) (not e!4019720))))

(declare-fun call!586438 () Bool)

(declare-fun call!586482 () Bool)

(assert (=> b!6647624 (= res!2723900 (= call!586438 call!586482))))

(declare-fun lt!2423032 () Unit!159453)

(declare-fun call!586286 () Unit!159453)

(assert (=> b!6647624 (= lt!2423032 call!586286)))

(declare-fun call!586290 () Bool)

(assert (=> b!6647624 (= call!586368 call!586290)))

(declare-fun lt!2422867 () Unit!159453)

(declare-fun call!586432 () Unit!159453)

(assert (=> b!6647624 (= lt!2422867 call!586432)))

(declare-fun call!586332 () Bool)

(declare-fun call!586439 () Bool)

(assert (=> b!6647624 (= call!586332 call!586439)))

(declare-fun lt!2422870 () Unit!159453)

(declare-fun call!586477 () Unit!159453)

(assert (=> b!6647624 (= lt!2422870 call!586477)))

(declare-fun call!586313 () Regex!16511)

(assert (=> b!6647624 (= lt!2422956 call!586313)))

(declare-fun call!586305 () Bool)

(declare-fun call!586458 () Bool)

(assert (=> b!6647624 (= call!586305 call!586458)))

(declare-fun lt!2422987 () Unit!159453)

(declare-fun call!586460 () Unit!159453)

(assert (=> b!6647624 (= lt!2422987 call!586460)))

(declare-fun call!586323 () Bool)

(declare-fun call!586429 () Bool)

(assert (=> b!6647624 (= call!586323 call!586429)))

(declare-fun lt!2422961 () Unit!159453)

(declare-fun call!586388 () Unit!159453)

(assert (=> b!6647624 (= lt!2422961 call!586388)))

(declare-fun call!586289 () Bool)

(declare-fun call!586430 () Bool)

(assert (=> b!6647624 (= call!586289 call!586430)))

(declare-fun lt!2422940 () Unit!159453)

(declare-fun call!586334 () Unit!159453)

(assert (=> b!6647624 (= lt!2422940 call!586334)))

(assert (=> b!6647624 (= lt!2422957 call!586359)))

(declare-fun lt!2423005 () Bool)

(declare-fun call!586435 () Bool)

(assert (=> b!6647624 (= lt!2423005 call!586435)))

(declare-fun lt!2422953 () Unit!159453)

(declare-fun call!586291 () Unit!159453)

(assert (=> b!6647624 (= lt!2422953 call!586291)))

(declare-fun call!586321 () Bool)

(assert (=> b!6647624 (= lt!2423005 call!586321)))

(declare-fun call!586453 () Bool)

(assert (=> b!6647624 (= lt!2423005 call!586453)))

(declare-fun lt!2423018 () Unit!159453)

(declare-fun call!586340 () Unit!159453)

(assert (=> b!6647624 (= lt!2423018 call!586340)))

(declare-fun lt!2422880 () Regex!16511)

(assert (=> b!6647624 (= lt!2422880 call!586467)))

(declare-fun call!586428 () (InoxSet Context!11790))

(declare-fun call!586357 () (InoxSet Context!11790))

(assert (=> b!6647624 (= call!586428 call!586357)))

(declare-fun lt!2423047 () Unit!159453)

(declare-fun call!586348 () Unit!159453)

(assert (=> b!6647624 (= lt!2423047 call!586348)))

(declare-fun lt!2422918 () (InoxSet Context!11790))

(assert (=> b!6647624 (= lt!2422918 call!586357)))

(declare-fun lt!2422958 () (InoxSet Context!11790))

(declare-fun lt!2422903 () Context!11790)

(assert (=> b!6647624 (= lt!2422958 (store ((as const (Array Context!11790 Bool)) false) lt!2422903 true))))

(declare-fun lt!2422990 () List!65833)

(assert (=> b!6647624 (= lt!2422903 (Context!11791 lt!2422990))))

(declare-fun lt!2422965 () List!65833)

(assert (=> b!6647624 (= lt!2422990 (Cons!65709 (regOne!33534 (regOne!33534 r!7292)) lt!2422965))))

(declare-fun lt!2422999 () (InoxSet Context!11790))

(declare-fun call!586425 () (InoxSet Context!11790))

(assert (=> b!6647624 (= lt!2422999 call!586425)))

(assert (=> b!6647624 (= lt!2422965 (Cons!65709 (regTwo!33534 (regOne!33534 r!7292)) (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun e!4019746 () Unit!159453)

(declare-fun Unit!159457 () Unit!159453)

(assert (=> b!6647624 (= e!4019746 Unit!159457)))

(declare-fun b!6647625 () Bool)

(declare-fun call!586468 () Bool)

(assert (=> b!6647625 (= e!4019734 call!586468)))

(declare-fun bm!586281 () Bool)

(declare-fun call!586395 () Unit!159453)

(assert (=> bm!586281 (= call!586395 call!586291)))

(declare-fun z!1189 () (InoxSet Context!11790))

(declare-fun lt!2423006 () (InoxSet Context!11790))

(declare-fun bm!586282 () Bool)

(declare-fun lt!2422854 () List!65832)

(declare-fun lt!2422923 () (InoxSet Context!11790))

(declare-fun call!586324 () Bool)

(declare-fun lt!2422855 () (InoxSet Context!11790))

(declare-fun c!1226756 () Bool)

(declare-fun c!1226751 () Bool)

(declare-fun matchZipper!2523 ((InoxSet Context!11790) List!65832) Bool)

(assert (=> bm!586282 (= call!586324 (matchZipper!2523 (ite c!1226758 lt!2422855 (ite c!1226748 lt!2422876 (ite (and c!1226756 c!1226752) (ite c!1226751 z!1189 lt!2422923) lt!2423006))) (ite (or c!1226758 c!1226748) (t!379501 s!2326) (ite (and c!1226756 c!1226752) (ite c!1226751 s!2326 lt!2422854) (t!379501 s!2326)))))))

(declare-fun call!586315 () Regex!16511)

(declare-fun bm!586283 () Bool)

(declare-fun lt!2422857 () List!65833)

(assert (=> bm!586283 (= call!586315 (generalisedConcat!2108 (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990))))))

(declare-fun bm!586284 () Bool)

(declare-fun call!586402 () Bool)

(assert (=> bm!586284 (= call!586402 call!586323)))

(declare-fun bm!586285 () Bool)

(declare-datatypes ((Option!16402 0))(
  ( (None!16401) (Some!16401 (v!52596 tuple2!66980)) )
))
(declare-fun call!586394 () Option!16402)

(declare-fun call!586408 () Option!16402)

(assert (=> bm!586285 (= call!586394 call!586408)))

(declare-fun b!6647626 () Bool)

(declare-fun res!2723898 () Bool)

(declare-fun e!4019708 () Bool)

(assert (=> b!6647626 (=> res!2723898 e!4019708)))

(declare-fun isEmpty!38016 (List!65834) Bool)

(assert (=> b!6647626 (= res!2723898 (not (isEmpty!38016 (t!379503 zl!343))))))

(declare-fun b!6647627 () Bool)

(declare-fun e!4019709 () Bool)

(declare-fun tp!1830570 () Bool)

(declare-fun tp!1830573 () Bool)

(assert (=> b!6647627 (= e!4019709 (and tp!1830570 tp!1830573))))

(declare-fun bm!586286 () Bool)

(declare-fun Exists!3581 (Int) Bool)

(assert (=> bm!586286 (= call!586473 (Exists!3581 (ite c!1226748 lambda!371934 (ite c!1226755 lambda!371935 (ite c!1226752 lambda!371940 lambda!371947)))))))

(declare-fun b!6647628 () Bool)

(declare-fun e!4019725 () Bool)

(declare-fun call!586300 () Bool)

(assert (=> b!6647628 (= e!4019725 call!586300)))

(declare-fun bm!586287 () Bool)

(declare-fun call!586353 () Bool)

(assert (=> bm!586287 (= call!586353 call!586458)))

(declare-fun lambda!371930 () Int)

(declare-fun lt!2423043 () Context!11790)

(declare-fun lt!2423016 () (InoxSet Context!11790))

(declare-fun bm!586288 () Bool)

(declare-fun lt!2422873 () Context!11790)

(declare-fun call!586417 () Unit!159453)

(declare-fun lemmaFlatMapOnSingletonSet!1542 ((InoxSet Context!11790) Context!11790 Int) Unit!159453)

(assert (=> bm!586288 (= call!586417 (lemmaFlatMapOnSingletonSet!1542 (ite c!1226758 lt!2423016 (ite c!1226748 lt!2423036 lt!2422923)) (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422947 lt!2422873)) (ite c!1226758 lambda!371930 (ite c!1226748 lambda!371930 lambda!371930))))))

(declare-fun bm!586289 () Bool)

(declare-fun call!586287 () Bool)

(declare-fun call!586384 () Bool)

(assert (=> bm!586289 (= call!586287 call!586384)))

(declare-fun b!6647629 () Bool)

(declare-fun e!4019710 () Unit!159453)

(declare-fun Unit!159458 () Unit!159453)

(assert (=> b!6647629 (= e!4019710 Unit!159458)))

(declare-fun lt!2422885 () Unit!159453)

(declare-fun call!586420 () Unit!159453)

(assert (=> b!6647629 (= lt!2422885 call!586420)))

(declare-fun res!2723920 () Bool)

(assert (=> b!6647629 (= res!2723920 call!586300)))

(declare-fun e!4019715 () Bool)

(assert (=> b!6647629 (=> res!2723920 e!4019715)))

(declare-fun call!586416 () Bool)

(assert (=> b!6647629 (= call!586416 e!4019715)))

(declare-fun b!6647630 () Bool)

(declare-fun call!586444 () Bool)

(assert (=> b!6647630 (= e!4019716 call!586444)))

(declare-fun bm!586290 () Bool)

(assert (=> bm!586290 (= call!586429 (Exists!3581 (ite c!1226755 lambda!371936 (ite c!1226752 lambda!371939 lambda!371948))))))

(declare-fun bm!586291 () Bool)

(declare-fun call!586392 () Bool)

(declare-fun call!586446 () Bool)

(assert (=> bm!586291 (= call!586392 call!586446)))

(declare-fun b!6647631 () Bool)

(declare-fun e!4019719 () Bool)

(assert (=> b!6647631 (= e!4019719 false)))

(declare-fun bm!586292 () Bool)

(declare-fun call!586336 () Unit!159453)

(declare-fun c!1226757 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!678 (Regex!16511 List!65832) Unit!159453)

(assert (=> bm!586292 (= call!586336 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!678 (reg!16840 (regOne!33534 r!7292)) (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))))))

(declare-fun b!6647632 () Bool)

(declare-fun e!4019745 () Unit!159453)

(declare-fun Unit!159459 () Unit!159453)

(assert (=> b!6647632 (= e!4019745 Unit!159459)))

(declare-fun lt!2423000 () (InoxSet Context!11790))

(declare-fun lt!2422862 () Unit!159453)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1342 ((InoxSet Context!11790) (InoxSet Context!11790) List!65832) Unit!159453)

(assert (=> b!6647632 (= lt!2422862 (lemmaZipperConcatMatchesSameAsBothZippers!1342 lt!2422855 lt!2423000 (t!379501 s!2326)))))

(declare-fun res!2723906 () Bool)

(declare-fun lt!2422878 () Bool)

(assert (=> b!6647632 (= res!2723906 lt!2422878)))

(declare-fun e!4019730 () Bool)

(assert (=> b!6647632 (=> res!2723906 e!4019730)))

(assert (=> b!6647632 (= call!586409 e!4019730)))

(declare-fun bm!586293 () Bool)

(declare-fun call!586366 () Regex!16511)

(assert (=> bm!586293 (= call!586366 call!586313)))

(declare-fun res!2723903 () Bool)

(declare-fun e!4019727 () Bool)

(assert (=> start!648790 (=> (not res!2723903) (not e!4019727))))

(declare-fun validRegex!8247 (Regex!16511) Bool)

(assert (=> start!648790 (= res!2723903 (validRegex!8247 r!7292))))

(assert (=> start!648790 e!4019727))

(assert (=> start!648790 e!4019709))

(declare-fun condSetEmpty!45441 () Bool)

(assert (=> start!648790 (= condSetEmpty!45441 (= z!1189 ((as const (Array Context!11790 Bool)) false)))))

(declare-fun setRes!45441 () Bool)

(assert (=> start!648790 setRes!45441))

(declare-fun e!4019742 () Bool)

(assert (=> start!648790 e!4019742))

(declare-fun e!4019739 () Bool)

(assert (=> start!648790 e!4019739))

(declare-fun bm!586294 () Bool)

(declare-fun lemmaEmptyZipperMatchesNothing!104 ((InoxSet Context!11790) List!65832) Unit!159453)

(assert (=> bm!586294 (= call!586466 (lemmaEmptyZipperMatchesNothing!104 lt!2423006 (t!379501 s!2326)))))

(declare-fun lt!2422848 () tuple2!66980)

(declare-fun lt!2422981 () Context!11790)

(declare-fun lt!2423023 () Context!11790)

(declare-fun lt!2422942 () (InoxSet Context!11790))

(declare-fun bm!586295 () Bool)

(declare-fun call!586306 () Unit!159453)

(declare-fun lt!2423014 () Regex!16511)

(declare-fun lt!2422975 () (InoxSet Context!11790))

(declare-fun lt!2423045 () Context!11790)

(declare-fun lt!2422998 () Regex!16511)

(declare-fun lt!2422908 () (InoxSet Context!11790))

(declare-fun lt!2422888 () Regex!16511)

(declare-fun lt!2422946 () (InoxSet Context!11790))

(declare-fun lt!2422849 () (InoxSet Context!11790))

(declare-fun lt!2422950 () Regex!16511)

(declare-fun lt!2423019 () Regex!16511)

(declare-fun theoremZipperRegexEquiv!907 ((InoxSet Context!11790) List!65834 Regex!16511 List!65832) Unit!159453)

(assert (=> bm!586295 (= call!586306 (theoremZipperRegexEquiv!907 (ite c!1226754 lt!2422946 (ite c!1226758 lt!2422908 (ite c!1226748 lt!2423036 (ite c!1226755 lt!2422958 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422975 lt!2422923) lt!2422849) lt!2422942))))) (ite c!1226754 (Cons!65710 lt!2423045 Nil!65710) (ite c!1226758 (Cons!65710 lt!2422981 Nil!65710) (ite c!1226748 (Cons!65710 lt!2422947 Nil!65710) (ite c!1226755 (Cons!65710 lt!2422903 Nil!65710) (ite c!1226756 (ite c!1226752 (ite c!1226751 (Cons!65710 lt!2423045 Nil!65710) (Cons!65710 lt!2422873 Nil!65710)) (Cons!65710 lt!2423023 Nil!65710)) (Cons!65710 lt!2423045 Nil!65710)))))) (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2422950) (reg!16840 (regOne!33534 r!7292))) lt!2423019))))) (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422854) (_1!36793 lt!2422848)) s!2326)))))))

(declare-fun bm!586296 () Bool)

(assert (=> bm!586296 (= call!586296 (Exists!3581 (ite c!1226748 lambda!371933 (ite c!1226755 lambda!371935 (ite c!1226752 lambda!371941 (ite c!1226757 lambda!371950 lambda!371953))))))))

(declare-fun bm!586297 () Bool)

(declare-fun call!586389 () Option!16402)

(assert (=> bm!586297 (= call!586408 call!586389)))

(declare-fun lt!2422864 () tuple2!66980)

(declare-fun lt!2422929 () Regex!16511)

(declare-fun lt!2422960 () (InoxSet Context!11790))

(declare-fun bm!586298 () Bool)

(declare-fun call!586479 () Unit!159453)

(declare-fun lt!2422905 () Regex!16511)

(assert (=> bm!586298 (= call!586479 (theoremZipperRegexEquiv!907 (ite c!1226758 lt!2423016 (ite c!1226748 lt!2422982 (ite c!1226752 lt!2422849 (ite c!1226757 lt!2422923 lt!2422960)))) (ite c!1226758 (Cons!65710 lt!2423043 Nil!65710) (ite c!1226748 (Cons!65710 lt!2422951 Nil!65710) (ite c!1226752 (Cons!65710 lt!2423023 Nil!65710) (ite c!1226757 (Cons!65710 lt!2422873 Nil!65710) (Cons!65710 lt!2423045 Nil!65710))))) (ite c!1226758 lt!2422929 (ite c!1226748 lt!2422925 (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422950 lt!2422905)))) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226752 (_1!36793 lt!2422864) (ite c!1226757 (_2!36793 lt!2422848) s!2326)))))))

(declare-fun call!586433 () Bool)

(declare-fun lt!2422952 () Regex!16511)

(declare-fun lt!2422853 () Regex!16511)

(declare-fun bm!586299 () Bool)

(declare-fun matchRSpec!3612 (Regex!16511 List!65832) Bool)

(assert (=> bm!586299 (= call!586433 (matchRSpec!3612 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))))))

(declare-fun call!586308 () Option!16402)

(declare-fun bm!586300 () Bool)

(declare-fun lt!2423026 () Option!16402)

(declare-fun lt!2423040 () Option!16402)

(declare-fun isDefined!13105 (Option!16402) Bool)

(assert (=> bm!586300 (= call!586485 (isDefined!13105 (ite c!1226748 call!586308 (ite c!1226755 call!586408 (ite c!1226752 lt!2423026 lt!2423040)))))))

(declare-fun bm!586301 () Bool)

(assert (=> bm!586301 (= call!586354 call!586433)))

(declare-fun b!6647633 () Bool)

(declare-fun res!2723925 () Bool)

(assert (=> b!6647633 (=> res!2723925 e!4019708)))

(get-info :version)

(assert (=> b!6647633 (= res!2723925 (or ((_ is EmptyExpr!16511) r!7292) ((_ is EmptyLang!16511) r!7292) ((_ is ElementMatch!16511) r!7292) ((_ is Union!16511) r!7292) (not ((_ is Concat!25356) r!7292))))))

(declare-fun call!586412 () Unit!159453)

(declare-fun lt!2422896 () tuple2!66980)

(declare-fun bm!586302 () Bool)

(declare-fun lemmaStarApp!158 (Regex!16511 List!65832 List!65832) Unit!159453)

(assert (=> bm!586302 (= call!586412 (lemmaStarApp!158 (reg!16840 (regOne!33534 r!7292)) (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422896))))))

(declare-fun b!6647634 () Bool)

(declare-fun e!4019744 () Bool)

(declare-fun lt!2422921 () Bool)

(assert (=> b!6647634 (= e!4019744 lt!2422921)))

(declare-fun bm!586303 () Bool)

(declare-fun call!586449 () Unit!159453)

(assert (=> bm!586303 (= call!586449 call!586477)))

(declare-fun b!6647635 () Bool)

(declare-fun e!4019723 () Bool)

(assert (=> b!6647635 e!4019723))

(declare-fun res!2723905 () Bool)

(assert (=> b!6647635 (=> (not res!2723905) (not e!4019723))))

(assert (=> b!6647635 (= res!2723905 (= call!586361 call!586446))))

(declare-fun lt!2422893 () Unit!159453)

(declare-fun call!586447 () Unit!159453)

(assert (=> b!6647635 (= lt!2422893 call!586447)))

(assert (=> b!6647635 (= lt!2423019 call!586366)))

(declare-fun call!586343 () Bool)

(declare-fun call!586393 () Bool)

(assert (=> b!6647635 (= call!586343 call!586393)))

(declare-fun lt!2422985 () Unit!159453)

(assert (=> b!6647635 (= lt!2422985 call!586379)))

(declare-fun call!586367 () (InoxSet Context!11790))

(declare-fun call!586295 () (InoxSet Context!11790))

(assert (=> b!6647635 (= call!586367 call!586295)))

(declare-fun lt!2422948 () Unit!159453)

(declare-fun call!586338 () Unit!159453)

(assert (=> b!6647635 (= lt!2422948 call!586338)))

(assert (=> b!6647635 (= lt!2422942 (store ((as const (Array Context!11790 Bool)) false) lt!2423045 true))))

(declare-fun call!586480 () Bool)

(assert (=> b!6647635 (= call!586480 call!586309)))

(declare-fun lt!2422943 () Unit!159453)

(assert (=> b!6647635 (= lt!2422943 call!586456)))

(assert (=> b!6647635 (= call!586317 call!586404)))

(declare-fun lt!2422886 () Unit!159453)

(assert (=> b!6647635 (= lt!2422886 call!586452)))

(assert (=> b!6647635 (not call!586360)))

(declare-fun lt!2422954 () Unit!159453)

(assert (=> b!6647635 (= lt!2422954 call!586466)))

(declare-fun Unit!159460 () Unit!159453)

(assert (=> b!6647635 (= e!4019728 Unit!159460)))

(assert (=> b!6647636 e!4019719))

(declare-fun res!2723922 () Bool)

(assert (=> b!6647636 (=> (not res!2723922) (not e!4019719))))

(declare-fun call!586371 () Bool)

(assert (=> b!6647636 (= res!2723922 call!586371)))

(declare-fun lt!2423041 () Unit!159453)

(declare-fun call!586390 () Unit!159453)

(assert (=> b!6647636 (= lt!2423041 call!586390)))

(declare-fun call!586427 () Bool)

(declare-fun call!586297 () Bool)

(assert (=> b!6647636 (= call!586427 call!586297)))

(declare-fun lt!2423003 () Unit!159453)

(declare-fun call!586329 () Unit!159453)

(assert (=> b!6647636 (= lt!2423003 call!586329)))

(declare-fun call!586423 () Bool)

(assert (=> b!6647636 (= call!586423 call!586287)))

(declare-fun lt!2422861 () Unit!159453)

(declare-fun call!586362 () Unit!159453)

(assert (=> b!6647636 (= lt!2422861 call!586362)))

(declare-fun call!586285 () Bool)

(declare-fun call!586475 () Bool)

(assert (=> b!6647636 (= call!586285 call!586475)))

(declare-fun lt!2422939 () Unit!159453)

(declare-fun call!586358 () Unit!159453)

(assert (=> b!6647636 (= lt!2422939 call!586358)))

(declare-fun call!586484 () Bool)

(declare-fun call!586380 () Bool)

(assert (=> b!6647636 (= call!586484 call!586380)))

(declare-fun lt!2422907 () Unit!159453)

(declare-fun call!586463 () Unit!159453)

(assert (=> b!6647636 (= lt!2422907 call!586463)))

(declare-fun call!586398 () Bool)

(declare-fun call!586461 () Bool)

(assert (=> b!6647636 (= call!586398 call!586461)))

(declare-fun lt!2422996 () Unit!159453)

(declare-fun call!586303 () Unit!159453)

(assert (=> b!6647636 (= lt!2422996 call!586303)))

(declare-fun call!586455 () Regex!16511)

(assert (=> b!6647636 (= lt!2422905 call!586455)))

(declare-fun call!586292 () (InoxSet Context!11790))

(declare-fun call!586355 () (InoxSet Context!11790))

(assert (=> b!6647636 (= call!586292 call!586355)))

(declare-fun lt!2422964 () Unit!159453)

(declare-fun call!586454 () Unit!159453)

(assert (=> b!6647636 (= lt!2422964 call!586454)))

(assert (=> b!6647636 (= lt!2422960 (store ((as const (Array Context!11790 Bool)) false) lt!2423045 true))))

(declare-fun e!4019726 () Unit!159453)

(declare-fun Unit!159461 () Unit!159453)

(assert (=> b!6647636 (= e!4019726 Unit!159461)))

(declare-fun b!6647637 () Bool)

(declare-fun e!4019711 () Unit!159453)

(declare-fun e!4019737 () Unit!159453)

(assert (=> b!6647637 (= e!4019711 e!4019737)))

(assert (=> b!6647637 (= c!1226758 ((_ is Union!16511) (regOne!33534 r!7292)))))

(declare-fun b!6647638 () Bool)

(declare-fun e!4019713 () Bool)

(declare-fun tp!1830572 () Bool)

(assert (=> b!6647638 (= e!4019713 tp!1830572)))

(declare-fun bm!586304 () Bool)

(declare-fun call!586418 () Unit!159453)

(assert (=> bm!586304 (= call!586418 call!586388)))

(declare-fun bm!586305 () Bool)

(declare-fun call!586294 () Bool)

(assert (=> bm!586305 (= call!586294 call!586290)))

(declare-fun bm!586306 () Bool)

(declare-fun call!586437 () Bool)

(assert (=> bm!586306 (= call!586437 call!586429)))

(declare-fun bm!586307 () Bool)

(assert (=> bm!586307 (= call!586462 (Exists!3581 (ite c!1226748 lambda!371931 (ite c!1226755 lambda!371937 (ite c!1226752 lambda!371942 (ite c!1226757 lambda!371949 lambda!371954))))))))

(declare-fun bm!586308 () Bool)

(declare-fun call!586421 () Bool)

(declare-fun call!586337 () Bool)

(assert (=> bm!586308 (= call!586421 call!586337)))

(declare-fun bm!586309 () Bool)

(declare-fun call!586481 () Unit!159453)

(assert (=> bm!586309 (= call!586454 call!586481)))

(declare-fun bm!586310 () Bool)

(assert (=> bm!586310 (= call!586305 call!586396)))

(declare-fun bm!586311 () Bool)

(declare-fun call!586442 () Bool)

(declare-fun call!586282 () Bool)

(assert (=> bm!586311 (= call!586442 call!586282)))

(declare-fun bm!586312 () Bool)

(declare-fun call!586487 () Bool)

(assert (=> bm!586312 (= call!586487 call!586343)))

(declare-fun bm!586313 () Bool)

(assert (=> bm!586313 (= call!586396 call!586421)))

(declare-fun b!6647639 () Bool)

(declare-fun e!4019738 () Unit!159453)

(declare-fun Unit!159462 () Unit!159453)

(assert (=> b!6647639 (= e!4019738 Unit!159462)))

(declare-fun b!6647640 () Bool)

(declare-fun Unit!159463 () Unit!159453)

(assert (=> b!6647640 (= e!4019710 Unit!159463)))

(declare-fun bm!586314 () Bool)

(declare-fun call!586451 () Bool)

(assert (=> bm!586314 (= call!586451 call!586442)))

(declare-fun bm!586315 () Bool)

(declare-fun lt!2422851 () List!65832)

(declare-fun lt!2422898 () List!65833)

(declare-fun call!586335 () Bool)

(assert (=> bm!586315 (= call!586335 (matchZipper!2523 (ite c!1226758 lt!2423000 (ite c!1226748 lt!2422982 (ite c!1226756 (ite c!1226752 lt!2422849 (ite c!1226757 (store ((as const (Array Context!11790 Bool)) false) (Context!11791 lt!2422898) true) lt!2422960)) lt!2423000))) (ite c!1226758 (t!379501 s!2326) (ite c!1226748 s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2422864) (ite c!1226757 lt!2422851 s!2326)) (t!379501 s!2326))))))))

(declare-fun bm!586316 () Bool)

(assert (=> bm!586316 (= call!586447 call!586340)))

(declare-fun setElem!45441 () Context!11790)

(declare-fun setNonEmpty!45441 () Bool)

(declare-fun tp!1830569 () Bool)

(declare-fun inv!84524 (Context!11790) Bool)

(assert (=> setNonEmpty!45441 (= setRes!45441 (and tp!1830569 (inv!84524 setElem!45441) e!4019713))))

(declare-fun setRest!45441 () (InoxSet Context!11790))

(assert (=> setNonEmpty!45441 (= z!1189 ((_ map or) (store ((as const (Array Context!11790 Bool)) false) setElem!45441 true) setRest!45441))))

(declare-fun bm!586317 () Bool)

(declare-fun call!586328 () Bool)

(assert (=> bm!586317 (= call!586448 call!586328)))

(declare-fun bm!586318 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2118 (Regex!16511 Regex!16511 List!65832) Unit!159453)

(assert (=> bm!586318 (= call!586441 (lemmaExistCutMatchRandMatchRSpecEquivalent!2118 (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)))))))

(declare-fun bm!586319 () Bool)

(declare-fun call!586459 () Bool)

(declare-fun call!586471 () Bool)

(assert (=> bm!586319 (= call!586459 call!586471)))

(declare-fun bm!586320 () Bool)

(declare-fun call!586365 () (InoxSet Context!11790))

(declare-fun derivationStepZipperDown!1759 (Regex!16511 Context!11790 C!33292) (InoxSet Context!11790))

(assert (=> bm!586320 (= call!586365 (derivationStepZipperDown!1759 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))) (ite (or c!1226758 c!1226748) lt!2423045 (ite c!1226755 (Context!11791 lt!2422965) lt!2422873)) (h!72156 s!2326)))))

(declare-fun bm!586321 () Bool)

(declare-fun call!586345 () Unit!159453)

(declare-fun call!586311 () Unit!159453)

(assert (=> bm!586321 (= call!586345 call!586311)))

(declare-fun bm!586322 () Bool)

(declare-fun call!586383 () Bool)

(declare-fun call!586302 () Bool)

(assert (=> bm!586322 (= call!586383 call!586302)))

(declare-fun bm!586323 () Bool)

(declare-fun matchR!8694 (Regex!16511 List!65832) Bool)

(assert (=> bm!586323 (= call!586337 (matchR!8694 (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422859)) (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422950 lt!2422944))))) (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2422854 (_1!36793 lt!2423008))))))))

(declare-fun bm!586324 () Bool)

(assert (=> bm!586324 (= call!586313 call!586413)))

(declare-fun bm!586325 () Bool)

(assert (=> bm!586325 (= call!586288 call!586335)))

(declare-fun b!6647641 () Bool)

(declare-fun res!2723896 () Bool)

(assert (=> b!6647641 (=> res!2723896 e!4019708)))

(declare-fun generalisedUnion!2355 (List!65833) Regex!16511)

(declare-fun unfocusZipperList!1932 (List!65834) List!65833)

(assert (=> b!6647641 (= res!2723896 (not (= r!7292 (generalisedUnion!2355 (unfocusZipperList!1932 zl!343)))))))

(declare-fun b!6647642 () Bool)

(assert (=> b!6647642 (= e!4019727 (not e!4019708))))

(declare-fun res!2723923 () Bool)

(assert (=> b!6647642 (=> res!2723923 e!4019708)))

(assert (=> b!6647642 (= res!2723923 (not ((_ is Cons!65710) zl!343)))))

(declare-fun lt!2423024 () Bool)

(declare-fun lt!2423038 () Bool)

(assert (=> b!6647642 (= lt!2423024 lt!2423038)))

(assert (=> b!6647642 (= lt!2423038 (matchRSpec!3612 r!7292 s!2326))))

(assert (=> b!6647642 (= lt!2423024 (matchR!8694 r!7292 s!2326))))

(declare-fun lt!2423039 () Unit!159453)

(declare-fun mainMatchTheorem!3612 (Regex!16511 List!65832) Unit!159453)

(assert (=> b!6647642 (= lt!2423039 (mainMatchTheorem!3612 r!7292 s!2326))))

(declare-fun bm!586326 () Bool)

(assert (=> bm!586326 (= call!586358 call!586449)))

(declare-fun bm!586327 () Bool)

(declare-fun call!586403 () Bool)

(assert (=> bm!586327 (= call!586403 call!586399)))

(declare-fun setIsEmpty!45441 () Bool)

(assert (=> setIsEmpty!45441 setRes!45441))

(declare-fun bm!586328 () Bool)

(declare-fun call!586375 () Bool)

(assert (=> bm!586328 (= call!586401 call!586375)))

(declare-fun bm!586329 () Bool)

(declare-fun call!586346 () (InoxSet Context!11790))

(assert (=> bm!586329 (= call!586378 call!586346)))

(declare-fun bm!586330 () Bool)

(assert (=> bm!586330 (= call!586334 call!586419)))

(declare-fun call!586283 () Unit!159453)

(declare-fun bm!586331 () Bool)

(assert (=> bm!586331 (= call!586283 (mainMatchTheorem!3612 (ite c!1226758 lt!2422929 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226757 lt!2422944 lt!2422860) (regOne!33534 r!7292))))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226757 (_1!36793 lt!2423008) Nil!65708) s!2326))))))

(declare-fun bm!586332 () Bool)

(declare-fun call!586373 () Bool)

(assert (=> bm!586332 (= call!586373 call!586482)))

(declare-fun b!6647643 () Bool)

(declare-fun res!2723911 () Bool)

(assert (=> b!6647643 (=> (not res!2723911) (not e!4019727))))

(declare-fun unfocusZipper!2253 (List!65834) Regex!16511)

(assert (=> b!6647643 (= res!2723911 (= r!7292 (unfocusZipper!2253 zl!343)))))

(declare-fun bm!586333 () Bool)

(assert (=> bm!586333 (= call!586453 call!586450)))

(declare-fun b!6647644 () Bool)

(declare-fun e!4019717 () Bool)

(assert (=> b!6647644 (= e!4019717 lt!2422921)))

(declare-fun call!586469 () (InoxSet Context!11790))

(declare-fun lt!2422945 () (InoxSet Context!11790))

(declare-fun bm!586334 () Bool)

(declare-fun flatMap!2016 ((InoxSet Context!11790) Int) (InoxSet Context!11790))

(assert (=> bm!586334 (= call!586469 (flatMap!2016 (ite c!1226758 lt!2423016 lt!2422945) (ite c!1226758 lambda!371930 lambda!371930)))))

(declare-fun bm!586335 () Bool)

(declare-fun call!586405 () Bool)

(assert (=> bm!586335 (= call!586405 call!586453)))

(declare-fun bm!586336 () Bool)

(assert (=> bm!586336 (= call!586292 call!586367)))

(declare-fun b!6647645 () Bool)

(declare-fun e!4019722 () Bool)

(assert (=> b!6647645 e!4019722))

(declare-fun res!2723924 () Bool)

(assert (=> b!6647645 (=> (not res!2723924) (not e!4019722))))

(declare-fun lt!2423012 () Bool)

(assert (=> b!6647645 (= res!2723924 (= lt!2423012 call!586433))))

(declare-fun lt!2423009 () Unit!159453)

(declare-fun call!586356 () Unit!159453)

(assert (=> b!6647645 (= lt!2423009 call!586356)))

(declare-fun lt!2423027 () Bool)

(declare-fun lt!2422877 () Regex!16511)

(assert (=> b!6647645 (= lt!2423027 (matchRSpec!3612 lt!2422877 s!2326))))

(declare-fun lt!2423017 () Unit!159453)

(assert (=> b!6647645 (= lt!2423017 (mainMatchTheorem!3612 lt!2422877 s!2326))))

(assert (=> b!6647645 (= lt!2423012 lt!2423027)))

(declare-fun call!586478 () Bool)

(assert (=> b!6647645 (= lt!2423027 call!586478)))

(assert (=> b!6647645 (= lt!2423012 call!586331)))

(assert (=> b!6647645 (= lt!2422877 (Union!16511 (Concat!25356 (regOne!33535 (regOne!33534 r!7292)) (regTwo!33534 r!7292)) (Concat!25356 (regTwo!33535 (regOne!33534 r!7292)) (regTwo!33534 r!7292))))))

(assert (=> b!6647645 (= lt!2422952 (Concat!25356 (regOne!33534 r!7292) (regTwo!33534 r!7292)))))

(declare-fun lt!2422937 () Unit!159453)

(declare-fun lemmaConcatDistributesInUnion!58 (Regex!16511 Regex!16511 Regex!16511 List!65832) Unit!159453)

(assert (=> b!6647645 (= lt!2422937 (lemmaConcatDistributesInUnion!58 (regOne!33535 (regOne!33534 r!7292)) (regTwo!33535 (regOne!33534 r!7292)) (regTwo!33534 r!7292) s!2326))))

(declare-fun lt!2422871 () Bool)

(declare-fun call!586422 () Bool)

(assert (=> b!6647645 (= lt!2422871 call!586422)))

(declare-fun lt!2422936 () Unit!159453)

(assert (=> b!6647645 (= lt!2422936 call!586283)))

(declare-fun lt!2422884 () Bool)

(assert (=> b!6647645 (= lt!2422884 call!586328)))

(declare-fun lt!2422865 () Unit!159453)

(assert (=> b!6647645 (= lt!2422865 call!586311)))

(assert (=> b!6647645 (= lt!2422871 call!586472)))

(assert (=> b!6647645 (= lt!2422871 call!586375)))

(declare-fun lt!2422980 () Unit!159453)

(assert (=> b!6647645 (= lt!2422980 call!586479)))

(declare-fun call!586488 () Regex!16511)

(assert (=> b!6647645 (= lt!2422929 call!586488)))

(assert (=> b!6647645 (= lt!2422884 call!586457)))

(assert (=> b!6647645 (= lt!2422884 call!586421)))

(declare-fun lt!2422892 () Unit!159453)

(declare-fun call!586299 () Unit!159453)

(assert (=> b!6647645 (= lt!2422892 call!586299)))

(assert (=> b!6647645 (= lt!2422888 call!586315)))

(declare-fun lt!2422869 () Unit!159453)

(assert (=> b!6647645 (= lt!2422869 e!4019710)))

(declare-fun c!1226753 () Bool)

(declare-fun nullable!6504 (Regex!16511) Bool)

(assert (=> b!6647645 (= c!1226753 (nullable!6504 (regTwo!33535 (regOne!33534 r!7292))))))

(assert (=> b!6647645 (= call!586469 call!586346)))

(declare-fun lt!2422949 () Unit!159453)

(assert (=> b!6647645 (= lt!2422949 call!586417)))

(declare-fun lt!2423037 () (InoxSet Context!11790))

(assert (=> b!6647645 (= lt!2423037 call!586346)))

(declare-fun lt!2422994 () Unit!159453)

(assert (=> b!6647645 (= lt!2422994 e!4019745)))

(declare-fun c!1226750 () Bool)

(declare-fun call!586440 () Bool)

(assert (=> b!6647645 (= c!1226750 call!586440)))

(declare-fun call!586397 () (InoxSet Context!11790))

(declare-fun call!586322 () (InoxSet Context!11790))

(assert (=> b!6647645 (= call!586397 call!586322)))

(declare-fun lt!2422846 () Unit!159453)

(assert (=> b!6647645 (= lt!2422846 call!586481)))

(declare-fun lt!2422931 () (InoxSet Context!11790))

(assert (=> b!6647645 (= lt!2422931 call!586322)))

(assert (=> b!6647645 (= lt!2423016 (store ((as const (Array Context!11790 Bool)) false) lt!2423043 true))))

(assert (=> b!6647645 (= lt!2423043 (Context!11791 lt!2422970))))

(assert (=> b!6647645 (= lt!2422970 (Cons!65709 (regTwo!33535 (regOne!33534 r!7292)) (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(assert (=> b!6647645 (= lt!2422908 (store ((as const (Array Context!11790 Bool)) false) lt!2422981 true))))

(assert (=> b!6647645 (= lt!2422981 (Context!11791 lt!2422857))))

(assert (=> b!6647645 (= lt!2422857 (Cons!65709 (regOne!33535 (regOne!33534 r!7292)) (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun lt!2422928 () (InoxSet Context!11790))

(assert (=> b!6647645 (= (matchZipper!2523 ((_ map or) lt!2422855 lt!2422928) (t!379501 s!2326)) e!4019725)))

(declare-fun res!2723919 () Bool)

(assert (=> b!6647645 (=> res!2723919 e!4019725)))

(assert (=> b!6647645 (= res!2723919 lt!2422878)))

(assert (=> b!6647645 (= lt!2422878 call!586324)))

(declare-fun lt!2422919 () Unit!159453)

(assert (=> b!6647645 (= lt!2422919 call!586342)))

(assert (=> b!6647645 (= lt!2422928 call!586352)))

(assert (=> b!6647645 (= lt!2422855 call!586365)))

(declare-fun Unit!159464 () Unit!159453)

(assert (=> b!6647645 (= e!4019737 Unit!159464)))

(declare-fun bm!586337 () Bool)

(declare-fun call!586406 () Bool)

(declare-fun call!586325 () Bool)

(assert (=> bm!586337 (= call!586406 call!586325)))

(declare-fun bm!586338 () Bool)

(declare-fun call!586319 () Bool)

(assert (=> bm!586338 (= call!586319 call!586392)))

(declare-fun bm!586339 () Bool)

(assert (=> bm!586339 (= call!586360 call!586282)))

(declare-fun bm!586340 () Bool)

(declare-fun call!586464 () Unit!159453)

(assert (=> bm!586340 (= call!586464 call!586334)))

(declare-fun bm!586341 () Bool)

(assert (=> bm!586341 (= call!586367 call!586428)))

(declare-fun bm!586342 () Bool)

(assert (=> bm!586342 (= call!586362 call!586418)))

(declare-fun lt!2423004 () Regex!16511)

(declare-fun c!1226747 () Bool)

(declare-fun bm!586343 () Bool)

(assert (=> bm!586343 (= call!586375 (matchR!8694 (ite c!1226758 lt!2422929 (ite c!1226748 (Concat!25356 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) lt!2422859) (ite c!1226755 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422956)) (ite c!1226756 lt!2423004 (ite c!1226747 lt!2423019 (regOne!33534 r!7292)))))) s!2326))))

(declare-fun lt!2422986 () List!65833)

(declare-fun call!586410 () Unit!159453)

(declare-fun bm!586344 () Bool)

(declare-fun lt!2423031 () List!65833)

(declare-fun lemmaConcatPreservesForall!424 (List!65833 List!65833 Int) Unit!159453)

(assert (=> bm!586344 (= call!586410 (lemmaConcatPreservesForall!424 lt!2423031 lt!2422986 (ite c!1226752 lambda!371944 lambda!371946)))))

(declare-fun bm!586345 () Bool)

(assert (=> bm!586345 (= call!586428 call!586486)))

(declare-fun bm!586346 () Bool)

(assert (=> bm!586346 (= call!586368 call!586372)))

(declare-fun bm!586347 () Bool)

(declare-fun call!586333 () Unit!159453)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!232 (Context!11790 Context!11790 List!65832 List!65832) Unit!159453)

(assert (=> bm!586347 (= call!586333 (lemmaConcatenateContextMatchesConcatOfStrings!232 lt!2423023 lt!2422873 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)) (ite c!1226752 lt!2422854 (_2!36793 lt!2422848))))))

(declare-fun call!586385 () Unit!159453)

(declare-fun bm!586348 () Bool)

(declare-fun lemmaConcatAssociativity!2954 (List!65832 List!65832 List!65832) Unit!159453)

(assert (=> bm!586348 (= call!586385 (lemmaConcatAssociativity!2954 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008))))))

(declare-fun b!6647646 () Bool)

(declare-fun res!2723921 () Bool)

(declare-fun e!4019732 () Bool)

(assert (=> b!6647646 (=> res!2723921 e!4019732)))

(declare-fun isEmpty!38017 (List!65833) Bool)

(assert (=> b!6647646 (= res!2723921 (isEmpty!38017 (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun bm!586349 () Bool)

(assert (=> bm!586349 (= call!586284 (lemmaExistCutMatchRandMatchRSpecEquivalent!2118 (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008))))))

(declare-fun bm!586350 () Bool)

(assert (=> bm!586350 (= call!586420 (lemmaZipperConcatMatchesSameAsBothZippers!1342 (ite c!1226758 lt!2422928 (ite c!1226748 lt!2422934 lt!2423006)) (ite c!1226758 lt!2423000 (ite c!1226748 lt!2422876 lt!2423000)) (t!379501 s!2326)))))

(declare-fun bm!586351 () Bool)

(declare-fun call!586483 () Bool)

(assert (=> bm!586351 (= call!586398 call!586483)))

(declare-fun bm!586352 () Bool)

(declare-fun call!586349 () Unit!159453)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!372 (Regex!16511 Regex!16511 List!65832 List!65832) Unit!159453)

(assert (=> bm!586352 (= call!586349 (lemmaTwoRegexMatchThenConcatMatchesConcatString!372 (reg!16840 (regOne!33534 r!7292)) lt!2422950 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)) (ite c!1226752 lt!2422854 (_2!36793 lt!2422848))))))

(declare-fun bm!586353 () Bool)

(declare-fun call!586370 () Bool)

(assert (=> bm!586353 (= call!586461 call!586370)))

(declare-fun bm!586354 () Bool)

(assert (=> bm!586354 (= call!586435 call!586354)))

(declare-fun bm!586355 () Bool)

(declare-fun call!586400 () Bool)

(assert (=> bm!586355 (= call!586400 call!586302)))

(declare-fun b!6647647 () Bool)

(assert (=> b!6647647 (= e!4019722 (= lt!2423024 call!586459))))

(declare-fun b!6647648 () Bool)

(declare-fun res!2723904 () Bool)

(declare-fun e!4019707 () Bool)

(assert (=> b!6647648 (=> res!2723904 e!4019707)))

(declare-fun regexDepth!374 (Regex!16511) Int)

(assert (=> b!6647648 (= res!2723904 (< (regexDepth!374 r!7292) (regexDepth!374 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343)))))))))

(declare-fun bm!586356 () Bool)

(assert (=> bm!586356 (= call!586476 call!586365)))

(declare-fun bm!586357 () Bool)

(assert (=> bm!586357 (= call!586321 call!586468)))

(declare-fun b!6647649 () Bool)

(declare-fun e!4019721 () Bool)

(assert (=> b!6647649 (= e!4019721 (or (not lt!2423024) lt!2423038))))

(declare-fun b!6647650 () Bool)

(declare-fun lt!2422930 () Bool)

(assert (=> b!6647650 (not lt!2422930)))

(declare-fun lt!2423028 () Unit!159453)

(declare-fun e!4019729 () Unit!159453)

(assert (=> b!6647650 (= lt!2423028 e!4019729)))

(declare-fun c!1226746 () Bool)

(assert (=> b!6647650 (= c!1226746 lt!2422930)))

(assert (=> b!6647650 (= lt!2422930 call!586383)))

(declare-fun e!4019735 () Unit!159453)

(declare-fun Unit!159465 () Unit!159453)

(assert (=> b!6647650 (= e!4019735 Unit!159465)))

(declare-fun bm!586358 () Bool)

(declare-fun call!586474 () Unit!159453)

(declare-fun call!586376 () Unit!159453)

(assert (=> bm!586358 (= call!586474 call!586376)))

(declare-fun bm!586359 () Bool)

(assert (=> bm!586359 (= call!586370 call!586393)))

(declare-fun bm!586360 () Bool)

(assert (=> bm!586360 (= call!586458 call!586448)))

(declare-fun bm!586361 () Bool)

(assert (=> bm!586361 (= call!586477 call!586415)))

(assert (=> b!6647651 call!586383))

(declare-fun lt!2422909 () Unit!159453)

(declare-fun e!4019741 () Unit!159453)

(assert (=> b!6647651 (= lt!2422909 e!4019741)))

(declare-fun isEmpty!38018 (List!65832) Bool)

(assert (=> b!6647651 (= c!1226751 (isEmpty!38018 (_1!36793 lt!2423042)))))

(declare-fun call!586470 () tuple2!66980)

(assert (=> b!6647651 (= lt!2423042 call!586470)))

(assert (=> b!6647651 (= call!586294 call!586402)))

(declare-fun lt!2422897 () Unit!159453)

(declare-fun call!586330 () Unit!159453)

(assert (=> b!6647651 (= lt!2422897 call!586330)))

(declare-fun call!586363 () Bool)

(assert (=> b!6647651 (= call!586363 call!586437)))

(assert (=> b!6647651 (= lt!2423026 call!586394)))

(declare-fun lt!2422868 () Unit!159453)

(assert (=> b!6647651 (= lt!2422868 call!586464)))

(declare-fun Unit!159466 () Unit!159453)

(assert (=> b!6647651 (= e!4019735 Unit!159466)))

(declare-fun bm!586362 () Bool)

(assert (=> bm!586362 (= call!586481 (lemmaFlatMapOnSingletonSet!1542 (ite c!1226758 lt!2422908 (ite c!1226752 lt!2422975 lt!2422960)) (ite c!1226758 lt!2422981 lt!2423045) (ite c!1226758 lambda!371930 (ite c!1226752 lambda!371930 lambda!371930))))))

(declare-fun bm!586363 () Bool)

(assert (=> bm!586363 (= call!586290 call!586374)))

(declare-fun bm!586364 () Bool)

(assert (=> bm!586364 (= call!586467 call!586315)))

(declare-fun Unit!159467 () Unit!159453)

(assert (=> b!6647652 (= e!4019741 Unit!159467)))

(declare-fun lt!2422856 () Unit!159453)

(assert (=> b!6647652 (= lt!2422856 call!586345)))

(declare-fun call!586310 () Bool)

(assert (=> b!6647652 (= call!586310 call!586406)))

(declare-fun lt!2422991 () Unit!159453)

(assert (=> b!6647652 (= lt!2422991 call!586449)))

(declare-fun lt!2422959 () Option!16402)

(declare-fun call!586339 () Option!16402)

(assert (=> b!6647652 (= lt!2422959 call!586339)))

(declare-fun call!586414 () Bool)

(declare-fun call!586407 () Bool)

(assert (=> b!6647652 (= call!586414 call!586407)))

(declare-fun lt!2422879 () Unit!159453)

(assert (=> b!6647652 (= lt!2422879 call!586336)))

(declare-fun call!586341 () Bool)

(assert (=> b!6647652 (= call!586384 call!586341)))

(declare-fun lt!2422978 () Unit!159453)

(assert (=> b!6647652 (= lt!2422978 call!586418)))

(assert (=> b!6647652 (= call!586377 call!586403)))

(declare-fun call!586381 () tuple2!66980)

(assert (=> b!6647652 (= lt!2422864 call!586381)))

(declare-fun lt!2422932 () Unit!159453)

(assert (=> b!6647652 (= lt!2422932 call!586385)))

(declare-fun lt!2423034 () List!65832)

(declare-fun call!586327 () List!65832)

(assert (=> b!6647652 (= lt!2423034 call!586327)))

(declare-fun call!586312 () List!65832)

(assert (=> b!6647652 (= lt!2422854 call!586312)))

(declare-fun lt!2422902 () List!65832)

(declare-fun call!586307 () List!65832)

(assert (=> b!6647652 (= lt!2422902 call!586307)))

(declare-fun lt!2422900 () List!65832)

(declare-fun call!586426 () List!65832)

(assert (=> b!6647652 (= lt!2422900 call!586426)))

(assert (=> b!6647652 (= lt!2422902 lt!2422900)))

(declare-fun lt!2422883 () Unit!159453)

(assert (=> b!6647652 (= lt!2422883 call!586412)))

(assert (=> b!6647652 call!586405))

(declare-fun lt!2422941 () Unit!159453)

(declare-fun call!586347 () Unit!159453)

(assert (=> b!6647652 (= lt!2422941 call!586347)))

(declare-fun call!586391 () Bool)

(assert (=> b!6647652 call!586391))

(declare-fun lt!2423035 () Unit!159453)

(declare-fun call!586320 () Unit!159453)

(assert (=> b!6647652 (= lt!2423035 call!586320)))

(declare-fun call!586364 () Bool)

(assert (=> b!6647652 (= call!586364 call!586370)))

(declare-fun lt!2423046 () Unit!159453)

(assert (=> b!6647652 (= lt!2423046 call!586474)))

(assert (=> b!6647652 call!586451))

(declare-fun lt!2422926 () Unit!159453)

(assert (=> b!6647652 (= lt!2422926 call!586333)))

(declare-fun lt!2422966 () Unit!159453)

(declare-fun call!586298 () Unit!159453)

(assert (=> b!6647652 (= lt!2422966 call!586298)))

(assert (=> b!6647652 call!586487))

(declare-fun lt!2422993 () Unit!159453)

(assert (=> b!6647652 (= lt!2422993 call!586349)))

(declare-fun res!2723913 () Bool)

(declare-fun call!586326 () Bool)

(assert (=> b!6647652 (= res!2723913 call!586326)))

(assert (=> b!6647652 (=> (not res!2723913) (not e!4019717))))

(assert (=> b!6647652 e!4019717))

(declare-fun lt!2422938 () Unit!159453)

(assert (=> b!6647652 (= lt!2422938 call!586410)))

(assert (=> b!6647652 call!586319))

(declare-fun b!6647653 () Bool)

(declare-fun Unit!159468 () Unit!159453)

(assert (=> b!6647653 (= e!4019745 Unit!159468)))

(declare-fun bm!586365 () Bool)

(declare-fun findConcatSeparation!2816 (Regex!16511 Regex!16511 List!65832 List!65832 List!65832) Option!16402)

(assert (=> bm!586365 (= call!586308 (findConcatSeparation!2816 (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422956 lt!2422860)) Nil!65708 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008))) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))))))

(declare-fun call!586445 () List!65833)

(declare-fun bm!586366 () Bool)

(assert (=> bm!586366 (= call!586416 (matchZipper!2523 (ite c!1226758 ((_ map or) lt!2422928 lt!2423000) (ite c!1226748 lt!2422933 (ite c!1226755 lt!2422958 (ite c!1226756 (ite c!1226752 (store ((as const (Array Context!11790 Bool)) false) (Context!11791 call!586445) true) lt!2422923) ((_ map or) lt!2423006 lt!2423000))))) (ite (or c!1226758 c!1226748) (t!379501 s!2326) (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 lt!2422900 (_2!36793 lt!2422848)) (t!379501 s!2326))))))))

(declare-fun b!6647654 () Bool)

(declare-fun tp!1830567 () Bool)

(declare-fun tp!1830564 () Bool)

(assert (=> b!6647654 (= e!4019709 (and tp!1830567 tp!1830564))))

(declare-fun b!6647655 () Bool)

(assert (=> b!6647655 (= e!4019723 (= lt!2423024 call!586400))))

(declare-fun bm!586367 () Bool)

(assert (=> bm!586367 (= call!586430 call!586296)))

(declare-fun b!6647656 () Bool)

(declare-fun Unit!159469 () Unit!159453)

(assert (=> b!6647656 (= e!4019741 Unit!159469)))

(assert (=> b!6647656 (= lt!2422975 (store ((as const (Array Context!11790 Bool)) false) lt!2423045 true))))

(declare-fun lt!2423010 () Unit!159453)

(assert (=> b!6647656 (= lt!2423010 call!586454)))

(assert (=> b!6647656 (= call!586292 call!586355)))

(assert (=> b!6647656 (= lt!2422998 call!586455)))

(declare-fun lt!2422995 () Unit!159453)

(assert (=> b!6647656 (= lt!2422995 call!586474)))

(declare-fun res!2723902 () Bool)

(assert (=> b!6647656 (= res!2723902 (= call!586326 call!586319))))

(declare-fun e!4019714 () Bool)

(assert (=> b!6647656 (=> (not res!2723902) (not e!4019714))))

(assert (=> b!6647656 e!4019714))

(declare-fun e!4019733 () Bool)

(assert (=> b!6647657 e!4019733))

(declare-fun res!2723907 () Bool)

(assert (=> b!6647657 (=> (not res!2723907) (not e!4019733))))

(assert (=> b!6647657 (= res!2723907 call!586398)))

(declare-fun lt!2422904 () Unit!159453)

(assert (=> b!6647657 (= lt!2422904 call!586390)))

(declare-fun lt!2422891 () List!65832)

(assert (=> b!6647657 (matchR!8694 lt!2422860 lt!2422891)))

(declare-fun lt!2423011 () Unit!159453)

(assert (=> b!6647657 (= lt!2423011 call!586412)))

(declare-fun lt!2422988 () List!65832)

(declare-fun call!586387 () List!65832)

(assert (=> b!6647657 (= lt!2422988 call!586387)))

(assert (=> b!6647657 (= lt!2422988 call!586312)))

(declare-fun lt!2422992 () List!65832)

(declare-fun ++!14664 (List!65832 List!65832) List!65832)

(assert (=> b!6647657 (= lt!2422992 (++!14664 (_2!36793 lt!2422896) (_2!36793 lt!2423008)))))

(assert (=> b!6647657 (= lt!2422891 call!586426)))

(declare-fun lt!2423002 () Unit!159453)

(assert (=> b!6647657 (= lt!2423002 call!586385)))

(assert (=> b!6647657 (= lt!2422896 call!586470)))

(assert (=> b!6647657 (= call!586427 call!586423)))

(declare-fun lt!2422973 () Unit!159453)

(assert (=> b!6647657 (= lt!2422973 call!586329)))

(assert (=> b!6647657 (= call!586294 call!586287)))

(declare-fun lt!2422968 () Unit!159453)

(assert (=> b!6647657 (= lt!2422968 call!586330)))

(assert (=> b!6647657 (= call!586285 call!586297)))

(declare-fun lt!2422889 () Option!16402)

(assert (=> b!6647657 (= lt!2422889 call!586339)))

(declare-fun lt!2422895 () Unit!159453)

(assert (=> b!6647657 (= lt!2422895 call!586358)))

(assert (=> b!6647657 (= call!586391 call!586422)))

(declare-fun lt!2422916 () Unit!159453)

(assert (=> b!6647657 (= lt!2422916 call!586463)))

(declare-fun get!22848 (Option!16402) tuple2!66980)

(assert (=> b!6647657 (= lt!2423008 (get!22848 lt!2423040))))

(assert (=> b!6647657 (= call!586402 call!586437)))

(declare-fun lt!2422997 () Unit!159453)

(assert (=> b!6647657 (= lt!2422997 call!586362)))

(assert (=> b!6647657 (= call!586363 call!586475)))

(declare-fun call!586436 () Option!16402)

(assert (=> b!6647657 (= lt!2423040 call!586436)))

(declare-fun lt!2423020 () Unit!159453)

(assert (=> b!6647657 (= lt!2423020 call!586464)))

(assert (=> b!6647657 call!586380))

(declare-fun lt!2422845 () Unit!159453)

(assert (=> b!6647657 (= lt!2422845 call!586345)))

(assert (=> b!6647657 (matchR!8694 lt!2422853 s!2326)))

(assert (=> b!6647657 (= lt!2422853 (Concat!25356 lt!2422944 (regTwo!33534 r!7292)))))

(assert (=> b!6647657 (= lt!2422944 (Concat!25356 (reg!16840 (regOne!33534 r!7292)) lt!2422860))))

(declare-fun lt!2422983 () Unit!159453)

(assert (=> b!6647657 (= lt!2422983 call!586286)))

(assert (=> b!6647657 e!4019744))

(declare-fun res!2723910 () Bool)

(assert (=> b!6647657 (=> (not res!2723910) (not e!4019744))))

(assert (=> b!6647657 (= res!2723910 call!586371)))

(declare-fun lt!2422984 () Unit!159453)

(assert (=> b!6647657 (= lt!2422984 call!586349)))

(assert (=> b!6647657 (= call!586484 call!586487)))

(declare-fun lt!2422866 () Unit!159453)

(assert (=> b!6647657 (= lt!2422866 call!586303)))

(assert (=> b!6647657 (= call!586364 call!586392)))

(declare-fun lt!2422976 () Unit!159453)

(assert (=> b!6647657 (= lt!2422976 call!586376)))

(assert (=> b!6647657 call!586461))

(assert (=> b!6647657 (= lt!2422851 call!586327)))

(assert (=> b!6647657 (= lt!2422898 call!586445)))

(declare-fun lt!2422963 () Unit!159453)

(assert (=> b!6647657 (= lt!2422963 call!586410)))

(declare-fun lt!2422874 () Unit!159453)

(assert (=> b!6647657 (= lt!2422874 call!586333)))

(assert (=> b!6647657 (= lt!2422848 call!586381)))

(assert (=> b!6647657 call!586414))

(declare-fun lt!2422847 () Option!16402)

(declare-fun findConcatSeparationZippers!216 ((InoxSet Context!11790) (InoxSet Context!11790) List!65832 List!65832 List!65832) Option!16402)

(assert (=> b!6647657 (= lt!2422847 (findConcatSeparationZippers!216 lt!2422849 lt!2422923 Nil!65708 s!2326 s!2326))))

(declare-fun lt!2422890 () Unit!159453)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!216 ((InoxSet Context!11790) Context!11790 List!65832) Unit!159453)

(assert (=> b!6647657 (= lt!2422890 (lemmaConcatZipperMatchesStringThenFindConcatDefined!216 lt!2422849 lt!2422873 s!2326))))

(declare-fun lambda!371945 () Int)

(declare-fun map!15015 ((InoxSet Context!11790) Int) (InoxSet Context!11790))

(assert (=> b!6647657 (= (map!15015 lt!2422849 lambda!371945) (store ((as const (Array Context!11790 Bool)) false) (Context!11791 call!586445) true))))

(declare-fun lt!2422882 () Unit!159453)

(assert (=> b!6647657 (= lt!2422882 call!586298)))

(declare-fun lt!2422969 () Unit!159453)

(declare-fun lemmaMapOnSingletonSet!234 ((InoxSet Context!11790) Context!11790 Int) Unit!159453)

(assert (=> b!6647657 (= lt!2422969 (lemmaMapOnSingletonSet!234 lt!2422849 lt!2423023 lambda!371945))))

(declare-fun Unit!159470 () Unit!159453)

(assert (=> b!6647657 (= e!4019726 Unit!159470)))

(declare-fun bm!586368 () Bool)

(assert (=> bm!586368 (= call!586415 (lemmaFindConcatSeparationEquivalentToExists!2580 (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)))))))

(declare-fun b!6647658 () Bool)

(assert (=> b!6647658 (= e!4019740 e!4019746)))

(assert (=> b!6647658 (= c!1226755 ((_ is Concat!25356) (regOne!33534 r!7292)))))

(declare-fun b!6647659 () Bool)

(declare-fun tp_is_empty!42275 () Bool)

(assert (=> b!6647659 (= e!4019709 tp_is_empty!42275)))

(declare-fun bm!586369 () Bool)

(assert (=> bm!586369 (= call!586285 (isDefined!13105 (ite c!1226757 lt!2422889 call!586436)))))

(declare-fun bm!586370 () Bool)

(assert (=> bm!586370 (= call!586482 call!586401)))

(declare-fun bm!586371 () Bool)

(assert (=> bm!586371 (= call!586307 (++!14664 (ite c!1226752 lt!2423034 (ite c!1226757 (_1!36793 lt!2422896) Nil!65708)) (ite c!1226752 (_2!36793 lt!2423042) (ite c!1226757 lt!2422992 s!2326))))))

(declare-fun b!6647660 () Bool)

(declare-fun e!4019712 () Bool)

(assert (=> b!6647660 (= c!1226748 e!4019712)))

(declare-fun res!2723909 () Bool)

(assert (=> b!6647660 (=> (not res!2723909) (not e!4019712))))

(assert (=> b!6647660 (= res!2723909 ((_ is Concat!25356) (regOne!33534 r!7292)))))

(assert (=> b!6647660 (= e!4019737 e!4019740)))

(declare-fun call!586351 () Option!16402)

(declare-fun bm!586372 () Bool)

(assert (=> bm!586372 (= call!586314 (isDefined!13105 (ite c!1226748 call!586389 (ite c!1226755 call!586351 (ite c!1226752 lt!2422959 lt!2422847)))))))

(declare-fun bm!586373 () Bool)

(assert (=> bm!586373 (= call!586427 call!586377)))

(declare-fun bm!586374 () Bool)

(assert (=> bm!586374 (= call!586328 (matchRSpec!3612 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))) s!2326))))

(declare-fun bm!586375 () Bool)

(assert (=> bm!586375 (= call!586376 call!586447)))

(declare-fun bm!586376 () Bool)

(assert (=> bm!586376 (= call!586298 (lemmaConcatPreservesForall!424 lt!2423031 lt!2422986 (ite c!1226752 lambda!371944 lambda!371946)))))

(declare-fun bm!586377 () Bool)

(assert (=> bm!586377 (= call!586338 call!586431)))

(declare-fun bm!586378 () Bool)

(assert (=> bm!586378 (= call!586300 (matchZipper!2523 (ite c!1226758 lt!2422928 (ite c!1226748 lt!2423036 z!1189)) (ite c!1226758 (t!379501 s!2326) s!2326)))))

(declare-fun b!6647661 () Bool)

(declare-fun res!2723912 () Bool)

(assert (=> b!6647661 (=> res!2723912 e!4019708)))

(assert (=> b!6647661 (= res!2723912 (not (= r!7292 (generalisedConcat!2108 (exprs!6395 (h!72158 zl!343))))))))

(declare-fun bm!586379 () Bool)

(assert (=> bm!586379 (= call!586440 (nullable!6504 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))))))

(declare-fun bm!586380 () Bool)

(assert (=> bm!586380 (= call!586414 call!586332)))

(declare-fun bm!586381 () Bool)

(assert (=> bm!586381 (= call!586444 call!586324)))

(declare-fun bm!586382 () Bool)

(assert (=> bm!586382 (= call!586470 (get!22848 (ite c!1226752 lt!2423026 lt!2422889)))))

(declare-fun bm!586383 () Bool)

(assert (=> bm!586383 (= call!586480 call!586434)))

(declare-fun bm!586384 () Bool)

(assert (=> bm!586384 (= call!586289 call!586485)))

(declare-fun bm!586385 () Bool)

(assert (=> bm!586385 (= call!586330 call!586432)))

(declare-fun bm!586386 () Bool)

(assert (=> bm!586386 (= call!586340 call!586443)))

(declare-fun bm!586387 () Bool)

(assert (=> bm!586387 (= call!586357 call!586386)))

(declare-fun b!6647662 () Bool)

(assert (=> b!6647662 (= e!4019743 (= lt!2423024 call!586400))))

(declare-fun bm!586388 () Bool)

(assert (=> bm!586388 (= call!586304 call!586283)))

(assert (=> b!6647663 (= e!4019708 e!4019732)))

(declare-fun res!2723897 () Bool)

(assert (=> b!6647663 (=> res!2723897 e!4019732)))

(declare-fun lt!2422979 () Bool)

(assert (=> b!6647663 (= res!2723897 (or (not (= lt!2423024 lt!2422979)) ((_ is Nil!65708) s!2326)))))

(assert (=> b!6647663 (= (Exists!3581 lambda!371928) (Exists!3581 lambda!371929))))

(declare-fun lt!2423033 () Unit!159453)

(assert (=> b!6647663 (= lt!2423033 (lemmaExistCutMatchRandMatchRSpecEquivalent!2118 (regOne!33534 r!7292) (regTwo!33534 r!7292) s!2326))))

(assert (=> b!6647663 (= lt!2422979 (Exists!3581 lambda!371928))))

(assert (=> b!6647663 (= lt!2422979 (isDefined!13105 (findConcatSeparation!2816 (regOne!33534 r!7292) (regTwo!33534 r!7292) Nil!65708 s!2326 s!2326)))))

(declare-fun lt!2422899 () Unit!159453)

(assert (=> b!6647663 (= lt!2422899 (lemmaFindConcatSeparationEquivalentToExists!2580 (regOne!33534 r!7292) (regTwo!33534 r!7292) s!2326))))

(declare-fun bm!586389 () Bool)

(assert (=> bm!586389 (= call!586371 call!586310)))

(declare-fun bm!586390 () Bool)

(declare-fun call!586424 () Bool)

(assert (=> bm!586390 (= call!586424 call!586316)))

(declare-fun bm!586391 () Bool)

(assert (=> bm!586391 (= call!586286 call!586350)))

(declare-fun bm!586392 () Bool)

(assert (=> bm!586392 (= call!586347 (lemmaTwoRegexMatchThenConcatMatchesConcatString!372 lt!2422860 (regTwo!33534 r!7292) (ite c!1226752 (_2!36793 lt!2422864) (ite c!1226757 lt!2422891 Nil!65708)) (ite c!1226752 (_2!36793 lt!2423042) (ite c!1226757 (_2!36793 lt!2423008) s!2326))))))

(declare-fun bm!586393 () Bool)

(assert (=> bm!586393 (= call!586468 call!586416)))

(declare-fun bm!586394 () Bool)

(assert (=> bm!586394 (= call!586434 call!586478)))

(declare-fun bm!586395 () Bool)

(assert (=> bm!586395 (= call!586320 call!586382)))

(declare-fun b!6647664 () Bool)

(assert (=> b!6647664 (= e!4019714 call!586451)))

(declare-fun bm!586396 () Bool)

(assert (=> bm!586396 (= call!586301 call!586356)))

(declare-fun bm!586397 () Bool)

(assert (=> bm!586397 (= call!586422 (matchRSpec!3612 (ite c!1226758 lt!2422929 lt!2422944) (ite c!1226758 s!2326 (_1!36793 lt!2423008))))))

(declare-fun bm!586398 () Bool)

(assert (=> bm!586398 (= call!586310 call!586480)))

(declare-fun bm!586399 () Bool)

(assert (=> bm!586399 (= call!586327 (++!14664 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)) (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422848))))))

(declare-fun bm!586400 () Bool)

(assert (=> bm!586400 (= call!586312 (++!14664 (ite c!1226752 (_2!36793 lt!2422864) lt!2422891) (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008))))))

(declare-fun bm!586401 () Bool)

(assert (=> bm!586401 (= call!586443 call!586299)))

(declare-fun bm!586402 () Bool)

(assert (=> bm!586402 (= call!586379 call!586420)))

(declare-fun bm!586403 () Bool)

(assert (=> bm!586403 (= call!586311 (mainMatchTheorem!3612 (ite c!1226758 lt!2422888 (ite c!1226752 lt!2422860 lt!2422853)) (ite c!1226758 s!2326 (ite c!1226752 (_1!36793 lt!2423042) s!2326))))))

(declare-fun bm!586404 () Bool)

(assert (=> bm!586404 (= call!586361 call!586373)))

(declare-fun bm!586405 () Bool)

(assert (=> bm!586405 (= call!586355 call!586357)))

(declare-fun bm!586406 () Bool)

(declare-fun call!586344 () Unit!159453)

(assert (=> bm!586406 (= call!586456 call!586344)))

(declare-fun bm!586407 () Bool)

(assert (=> bm!586407 (= call!586390 call!586347)))

(declare-fun bm!586408 () Bool)

(assert (=> bm!586408 (= call!586431 (lemmaFlatMapOnSingletonSet!1542 (ite c!1226748 lt!2422982 (ite c!1226756 lt!2422849 lt!2422942)) (ite c!1226748 lt!2422951 (ite c!1226756 lt!2423023 lt!2423045)) (ite c!1226748 lambda!371930 (ite c!1226756 lambda!371930 lambda!371930))))))

(declare-fun bm!586409 () Bool)

(assert (=> bm!586409 (= call!586381 (get!22848 (ite c!1226752 lt!2422959 lt!2422847)))))

(declare-fun bm!586410 () Bool)

(assert (=> bm!586410 (= call!586329 call!586336)))

(declare-fun b!6647665 () Bool)

(declare-fun e!4019718 () Unit!159453)

(declare-fun Unit!159471 () Unit!159453)

(assert (=> b!6647665 (= e!4019718 Unit!159471)))

(assert (=> b!6647665 (= lt!2422860 (regOne!33534 r!7292))))

(assert (=> b!6647665 (= lt!2422986 (Cons!65709 lt!2422860 (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun lt!2422955 () Context!11790)

(assert (=> b!6647665 (= lt!2422955 (Context!11791 (Cons!65709 (reg!16840 (regOne!33534 r!7292)) lt!2422986)))))

(assert (=> b!6647665 (= lt!2422945 (store ((as const (Array Context!11790 Bool)) false) lt!2422955 true))))

(declare-fun lt!2423025 () (InoxSet Context!11790))

(assert (=> b!6647665 (= lt!2423025 call!586295)))

(declare-fun lt!2422914 () Unit!159453)

(assert (=> b!6647665 (= lt!2422914 call!586348)))

(assert (=> b!6647665 (= call!586469 call!586295)))

(assert (=> b!6647665 (= lt!2422873 (Context!11791 lt!2422986))))

(declare-fun lt!2422935 () (InoxSet Context!11790))

(assert (=> b!6647665 (= lt!2422935 call!586425)))

(assert (=> b!6647665 (= lt!2422950 (Concat!25356 lt!2422860 (regTwo!33534 r!7292)))))

(assert (=> b!6647665 (= lt!2423004 (Concat!25356 (reg!16840 (regOne!33534 r!7292)) lt!2422950))))

(assert (=> b!6647665 (= lt!2423031 (Cons!65709 (reg!16840 (regOne!33534 r!7292)) Nil!65709))))

(assert (=> b!6647665 (= lt!2423023 (Context!11791 lt!2423031))))

(assert (=> b!6647665 (= lt!2422849 (store ((as const (Array Context!11790 Bool)) false) lt!2423023 true))))

(assert (=> b!6647665 (= lt!2422923 (store ((as const (Array Context!11790 Bool)) false) lt!2422873 true))))

(declare-fun lt!2423030 () (InoxSet Context!11790))

(declare-fun derivationStepZipperUp!1685 (Context!11790 C!33292) (InoxSet Context!11790))

(assert (=> b!6647665 (= lt!2423030 (derivationStepZipperUp!1685 lt!2423023 (h!72156 s!2326)))))

(declare-fun lt!2423013 () (InoxSet Context!11790))

(assert (=> b!6647665 (= lt!2423013 call!586378)))

(declare-fun lt!2422915 () Unit!159453)

(assert (=> b!6647665 (= lt!2422915 call!586338)))

(assert (=> b!6647665 (= call!586369 (derivationStepZipperUp!1685 lt!2423023 (h!72156 s!2326)))))

(declare-fun lt!2422887 () Unit!159453)

(assert (=> b!6647665 (= lt!2422887 call!586318)))

(assert (=> b!6647665 (= call!586397 call!586378)))

(declare-fun lt!2422977 () Unit!159453)

(assert (=> b!6647665 (= lt!2422977 call!586344)))

(assert (=> b!6647665 (= lt!2422921 call!586373)))

(declare-fun res!2723914 () Bool)

(assert (=> b!6647665 (= res!2723914 (= lt!2422921 call!586353))))

(assert (=> b!6647665 (=> (not res!2723914) (not e!4019721))))

(assert (=> b!6647665 e!4019721))

(assert (=> b!6647665 (= c!1226752 lt!2423024)))

(declare-fun lt!2422989 () Unit!159453)

(assert (=> b!6647665 (= lt!2422989 e!4019735)))

(assert (=> b!6647665 (= lt!2423024 call!586302)))

(declare-fun bm!586411 () Bool)

(assert (=> bm!586411 (= call!586389 (findConcatSeparation!2816 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292))))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422957 (ite (or c!1226752 c!1226757) (regTwo!33534 r!7292) lt!2422860))) Nil!65708 (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708) (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)))))

(declare-fun bm!586412 () Bool)

(assert (=> bm!586412 (= call!586364 (matchR!8694 (reg!16840 (regOne!33534 r!7292)) (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))))))

(declare-fun b!6647666 () Bool)

(assert (=> b!6647666 (= e!4019733 false)))

(declare-fun bm!586413 () Bool)

(assert (=> bm!586413 (= call!586374 (Exists!3581 (ite c!1226748 lambda!371933 (ite c!1226755 lambda!371938 (ite c!1226752 lambda!371939 lambda!371949)))))))

(declare-fun bm!586414 () Bool)

(assert (=> bm!586414 (= call!586438 (matchR!8694 (ite c!1226755 (Concat!25356 (regOne!33534 r!7292) lt!2422956) (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2423004) (ite c!1226757 lt!2422950 lt!2422905)) (ite c!1226747 (regOne!33534 r!7292) (regTwo!33534 r!7292)))) (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422900) (ite c!1226757 lt!2422988 s!2326)) s!2326))))))

(declare-fun bm!586415 () Bool)

(assert (=> bm!586415 (= call!586309 call!586325)))

(declare-fun bm!586416 () Bool)

(assert (=> bm!586416 (= call!586452 call!586395)))

(declare-fun bm!586417 () Bool)

(assert (=> bm!586417 (= call!586346 (derivationStepZipperUp!1685 (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422951 lt!2422873)) (h!72156 s!2326)))))

(declare-fun e!4019736 () Bool)

(declare-fun b!6647667 () Bool)

(declare-fun tp!1830566 () Bool)

(assert (=> b!6647667 (= e!4019742 (and (inv!84524 (h!72158 zl!343)) e!4019736 tp!1830566))))

(declare-fun bm!586418 () Bool)

(assert (=> bm!586418 (= call!586297 call!586341)))

(declare-fun bm!586419 () Bool)

(assert (=> bm!586419 (= call!586475 call!586403)))

(declare-fun bm!586420 () Bool)

(assert (=> bm!586420 (= call!586302 call!586424)))

(declare-fun b!6647668 () Bool)

(assert (=> b!6647668 (= e!4019720 (= lt!2423024 call!586424))))

(declare-fun bm!586421 () Bool)

(assert (=> bm!586421 (= call!586331 (matchR!8694 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422950 lt!2422860))))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2423034 (ite c!1226757 (_2!36793 lt!2422848) Nil!65708)))))))

(declare-fun bm!586422 () Bool)

(assert (=> bm!586422 (= call!586323 call!586473)))

(declare-fun bm!586423 () Bool)

(assert (=> bm!586423 (= call!586316 call!586300)))

(declare-fun bm!586424 () Bool)

(assert (=> bm!586424 (= call!586384 call!586430)))

(declare-fun bm!586425 () Bool)

(assert (=> bm!586425 (= call!586391 call!586305)))

(declare-fun bm!586426 () Bool)

(assert (=> bm!586426 (= call!586436 call!586394)))

(declare-fun bm!586427 () Bool)

(assert (=> bm!586427 (= call!586343 call!586321)))

(declare-fun bm!586428 () Bool)

(assert (=> bm!586428 (= call!586423 call!586407)))

(declare-fun b!6647669 () Bool)

(assert (=> b!6647669 (= e!4019712 call!586440)))

(declare-fun b!6647670 () Bool)

(declare-fun Unit!159472 () Unit!159453)

(assert (=> b!6647670 (= e!4019711 Unit!159472)))

(assert (=> b!6647670 (= lt!2422946 (store ((as const (Array Context!11790 Bool)) false) lt!2423045 true))))

(assert (=> b!6647670 (= lt!2423014 call!586293)))

(declare-fun lt!2422894 () Unit!159453)

(assert (=> b!6647670 (= lt!2422894 call!586306)))

(assert (=> b!6647670 (= call!586337 call!586471)))

(declare-fun bm!586429 () Bool)

(assert (=> bm!586429 (= call!586388 call!586441)))

(declare-fun bm!586430 () Bool)

(assert (=> bm!586430 (= call!586386 call!586322)))

(declare-fun bm!586431 () Bool)

(assert (=> bm!586431 (= call!586282 call!586444)))

(declare-fun bm!586432 () Bool)

(assert (=> bm!586432 (= call!586488 call!586293)))

(declare-fun bm!586433 () Bool)

(assert (=> bm!586433 (= call!586332 call!586314)))

(declare-fun bm!586434 () Bool)

(assert (=> bm!586434 (= call!586486 (flatMap!2016 (ite c!1226748 lt!2423036 (ite c!1226755 lt!2422958 (ite c!1226756 (ite c!1226752 lt!2422975 lt!2422960) lt!2422942))) (ite c!1226748 lambda!371930 (ite c!1226755 lambda!371930 (ite c!1226756 (ite c!1226752 lambda!371930 lambda!371930) lambda!371930)))))))

(declare-fun bm!586435 () Bool)

(assert (=> bm!586435 (= call!586382 call!586479)))

(declare-fun bm!586436 () Bool)

(assert (=> bm!586436 (= call!586295 (derivationStepZipperUp!1685 (ite c!1226756 lt!2422955 lt!2423045) (h!72156 s!2326)))))

(declare-fun bm!586437 () Bool)

(assert (=> bm!586437 (= call!586303 call!586320)))

(assert (=> b!6647671 (= e!4019732 e!4019707)))

(declare-fun res!2723908 () Bool)

(assert (=> b!6647671 (=> res!2723908 e!4019707)))

(declare-fun lt!2423029 () (InoxSet Context!11790))

(declare-fun derivationStepZipper!2477 ((InoxSet Context!11790) C!33292) (InoxSet Context!11790))

(assert (=> b!6647671 (= res!2723908 (not (= lt!2423000 (derivationStepZipper!2477 lt!2423029 (h!72156 s!2326)))))))

(assert (=> b!6647671 (= (flatMap!2016 lt!2423029 lambda!371930) (derivationStepZipperUp!1685 lt!2423045 (h!72156 s!2326)))))

(declare-fun lt!2422972 () Unit!159453)

(assert (=> b!6647671 (= lt!2422972 (lemmaFlatMapOnSingletonSet!1542 lt!2423029 lt!2423045 lambda!371930))))

(assert (=> b!6647671 (= lt!2423029 (store ((as const (Array Context!11790 Bool)) false) lt!2423045 true))))

(declare-fun lt!2422850 () Unit!159453)

(assert (=> b!6647671 (= lt!2422850 e!4019711)))

(assert (=> b!6647671 (= c!1226754 (and ((_ is ElementMatch!16511) (regOne!33534 r!7292)) (= (c!1226759 (regOne!33534 r!7292)) (h!72156 s!2326))))))

(declare-fun lt!2422872 () Unit!159453)

(assert (=> b!6647671 (= lt!2422872 e!4019738)))

(declare-fun c!1226749 () Bool)

(assert (=> b!6647671 (= c!1226749 (nullable!6504 (h!72157 (exprs!6395 (h!72158 zl!343)))))))

(assert (=> b!6647671 (= (flatMap!2016 z!1189 lambda!371930) (derivationStepZipperUp!1685 (h!72158 zl!343) (h!72156 s!2326)))))

(declare-fun lt!2422920 () Unit!159453)

(assert (=> b!6647671 (= lt!2422920 (lemmaFlatMapOnSingletonSet!1542 z!1189 (h!72158 zl!343) lambda!371930))))

(assert (=> b!6647671 (= lt!2423000 (derivationStepZipperUp!1685 lt!2423045 (h!72156 s!2326)))))

(assert (=> b!6647671 (= lt!2423006 (derivationStepZipperDown!1759 (h!72157 (exprs!6395 (h!72158 zl!343))) lt!2423045 (h!72156 s!2326)))))

(assert (=> b!6647671 (= lt!2423045 (Context!11791 (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun lt!2422922 () (InoxSet Context!11790))

(assert (=> b!6647671 (= lt!2422922 (derivationStepZipperUp!1685 (Context!11791 (Cons!65709 (h!72157 (exprs!6395 (h!72158 zl!343))) (t!379502 (exprs!6395 (h!72158 zl!343))))) (h!72156 s!2326)))))

(declare-fun bm!586438 () Bool)

(assert (=> bm!586438 (= call!586326 call!586483)))

(declare-fun b!6647672 () Bool)

(assert (=> b!6647672 (= e!4019718 e!4019728)))

(assert (=> b!6647672 (= c!1226747 ((_ is EmptyExpr!16511) (regOne!33534 r!7292)))))

(declare-fun bm!586439 () Bool)

(assert (=> bm!586439 (= call!586339 call!586351)))

(declare-fun b!6647673 () Bool)

(declare-fun Unit!159473 () Unit!159453)

(assert (=> b!6647673 (= e!4019738 Unit!159473)))

(declare-fun lt!2423044 () Unit!159453)

(assert (=> b!6647673 (= lt!2423044 (lemmaZipperConcatMatchesSameAsBothZippers!1342 lt!2423006 lt!2423000 (t!379501 s!2326)))))

(declare-fun res!2723899 () Bool)

(assert (=> b!6647673 (= res!2723899 (matchZipper!2523 lt!2423006 (t!379501 s!2326)))))

(declare-fun e!4019731 () Bool)

(assert (=> b!6647673 (=> res!2723899 e!4019731)))

(assert (=> b!6647673 (= (matchZipper!2523 ((_ map or) lt!2423006 lt!2423000) (t!379501 s!2326)) e!4019731)))

(declare-fun bm!586440 () Bool)

(assert (=> bm!586440 (= call!586457 (matchZipper!2523 (ite c!1226758 lt!2422908 ((_ map or) lt!2422934 lt!2422876)) (ite c!1226758 s!2326 (t!379501 s!2326))))))

(declare-fun bm!586441 () Bool)

(assert (=> bm!586441 (= call!586380 call!586406)))

(declare-fun bm!586442 () Bool)

(assert (=> bm!586442 (= call!586404 call!586353)))

(declare-fun bm!586443 () Bool)

(assert (=> bm!586443 (= call!586432 call!586284)))

(declare-fun bm!586444 () Bool)

(assert (=> bm!586444 (= call!586455 call!586366)))

(declare-fun bm!586445 () Bool)

(assert (=> bm!586445 (= call!586439 call!586462)))

(declare-fun b!6647674 () Bool)

(declare-fun tp!1830565 () Bool)

(assert (=> b!6647674 (= e!4019736 tp!1830565)))

(declare-fun bm!586446 () Bool)

(assert (=> bm!586446 (= call!586387 call!586307)))

(declare-fun bm!586447 () Bool)

(assert (=> bm!586447 (= call!586344 call!586460)))

(declare-fun bm!586448 () Bool)

(declare-fun call!586411 () Bool)

(assert (=> bm!586448 (= call!586317 call!586411)))

(declare-fun bm!586449 () Bool)

(assert (=> bm!586449 (= call!586460 call!586301)))

(declare-fun bm!586450 () Bool)

(assert (=> bm!586450 (= call!586369 (flatMap!2016 (ite c!1226748 lt!2422982 lt!2422849) (ite c!1226748 lambda!371930 lambda!371930)))))

(declare-fun bm!586451 () Bool)

(assert (=> bm!586451 (= call!586325 call!586435)))

(declare-fun bm!586452 () Bool)

(assert (=> bm!586452 (= call!586352 (derivationStepZipperDown!1759 (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (ite c!1226758 lt!2423045 lt!2422947) (h!72156 s!2326)))))

(declare-fun b!6647675 () Bool)

(assert (=> b!6647675 (= e!4019730 call!586335)))

(declare-fun b!6647676 () Bool)

(declare-fun res!2723917 () Bool)

(assert (=> b!6647676 (=> res!2723917 e!4019708)))

(assert (=> b!6647676 (= res!2723917 (not ((_ is Cons!65709) (exprs!6395 (h!72158 zl!343)))))))

(declare-fun bm!586453 () Bool)

(assert (=> bm!586453 (= call!586399 (Exists!3581 (ite c!1226748 lambda!371932 (ite c!1226752 lambda!371943 (ite c!1226757 lambda!371947 lambda!371952)))))))

(declare-fun bm!586454 () Bool)

(assert (=> bm!586454 (= call!586471 (matchZipper!2523 (ite c!1226754 lt!2422946 (ite (or c!1226758 c!1226748) z!1189 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422975 z!1189) lt!2422849) lt!2422942))) (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 s!2326 (_1!36793 lt!2422848)) s!2326)))))))

(declare-fun bm!586455 () Bool)

(assert (=> bm!586455 (= call!586413 call!586488)))

(declare-fun bm!586456 () Bool)

(assert (=> bm!586456 (= call!586322 (derivationStepZipperUp!1685 (ite c!1226758 lt!2422981 (ite c!1226748 lt!2422947 (ite c!1226755 lt!2422903 lt!2423045))) (h!72156 s!2326)))))

(declare-fun bm!586457 () Bool)

(declare-fun call!586465 () Bool)

(assert (=> bm!586457 (= call!586465 call!586459)))

(declare-fun b!6647677 () Bool)

(declare-fun Unit!159474 () Unit!159453)

(assert (=> b!6647677 (= e!4019729 Unit!159474)))

(declare-fun b!6647678 () Bool)

(declare-fun tp!1830568 () Bool)

(assert (=> b!6647678 (= e!4019739 (and tp_is_empty!42275 tp!1830568))))

(declare-fun bm!586458 () Bool)

(assert (=> bm!586458 (= call!586472 (matchZipper!2523 (ite c!1226758 lt!2423016 lt!2422934) (ite c!1226758 s!2326 (t!379501 s!2326))))))

(declare-fun b!6647679 () Bool)

(declare-fun tp!1830571 () Bool)

(assert (=> b!6647679 (= e!4019709 tp!1830571)))

(declare-fun bm!586459 () Bool)

(declare-fun lemmaConcatAssociative!148 (Regex!16511 Regex!16511 Regex!16511 List!65832) Unit!159453)

(assert (=> bm!586459 (= call!586350 (lemmaConcatAssociative!148 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))) (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) lt!2422860) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422956 (regTwo!33534 r!7292))) s!2326))))

(declare-fun bm!586460 () Bool)

(assert (=> bm!586460 (= call!586407 (Exists!3581 (ite c!1226752 lambda!371941 (ite c!1226757 lambda!371951 lambda!371952))))))

(declare-fun bm!586461 () Bool)

(assert (=> bm!586461 (= call!586483 call!586411)))

(declare-fun bm!586462 () Bool)

(assert (=> bm!586462 (= call!586341 call!586439)))

(declare-fun bm!586463 () Bool)

(assert (=> bm!586463 (= call!586426 (++!14664 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)) (ite c!1226752 lt!2422854 (_2!36793 lt!2422896))))))

(declare-fun bm!586464 () Bool)

(assert (=> bm!586464 (= call!586463 call!586395)))

(declare-fun bm!586465 () Bool)

(assert (=> bm!586465 (= call!586425 call!586476)))

(declare-fun bm!586466 () Bool)

(assert (=> bm!586466 (= call!586291 call!586304)))

(declare-fun b!6647680 () Bool)

(assert (=> b!6647680 (= e!4019707 (inv!84524 lt!2423045))))

(declare-fun bm!586467 () Bool)

(assert (=> bm!586467 (= call!586446 call!586465)))

(declare-fun b!6647681 () Bool)

(declare-fun res!2723895 () Bool)

(assert (=> b!6647681 (=> (not res!2723895) (not e!4019727))))

(declare-fun toList!10295 ((InoxSet Context!11790)) List!65834)

(assert (=> b!6647681 (= res!2723895 (= (toList!10295 z!1189) zl!343))))

(declare-fun b!6647682 () Bool)

(assert (=> b!6647682 (= c!1226756 ((_ is Star!16511) (regOne!33534 r!7292)))))

(assert (=> b!6647682 (= e!4019746 e!4019718)))

(declare-fun bm!586468 () Bool)

(assert (=> bm!586468 (= call!586318 call!586417)))

(declare-fun b!6647683 () Bool)

(assert (=> b!6647683 (= e!4019715 call!586335)))

(declare-fun b!6647684 () Bool)

(assert (=> b!6647684 (= e!4019729 e!4019726)))

(assert (=> b!6647684 (= c!1226757 call!586442)))

(declare-fun bm!586469 () Bool)

(assert (=> bm!586469 (= call!586356 (mainMatchTheorem!3612 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regTwo!33534 r!7292))))) s!2326))))

(declare-fun bm!586470 () Bool)

(assert (=> bm!586470 (= call!586411 call!586438)))

(declare-fun bm!586471 () Bool)

(assert (=> bm!586471 (= call!586363 call!586289)))

(declare-fun bm!586472 () Bool)

(assert (=> bm!586472 (= call!586348 (lemmaFlatMapOnSingletonSet!1542 (ite c!1226755 lt!2422958 lt!2422945) (ite c!1226755 lt!2422903 lt!2422955) (ite c!1226755 lambda!371930 lambda!371930)))))

(declare-fun bm!586473 () Bool)

(assert (=> bm!586473 (= call!586397 (flatMap!2016 (ite c!1226758 lt!2422908 lt!2422923) (ite c!1226758 lambda!371930 lambda!371930)))))

(declare-fun bm!586474 () Bool)

(assert (=> bm!586474 (= call!586372 (Exists!3581 (ite c!1226748 lambda!371931 (ite c!1226755 lambda!371937 (ite c!1226752 lambda!371941 (ite c!1226757 lambda!371949 lambda!371952))))))))

(declare-fun bm!586475 () Bool)

(assert (=> bm!586475 (= call!586299 call!586306)))

(declare-fun bm!586476 () Bool)

(assert (=> bm!586476 (= call!586393 call!586288)))

(declare-fun bm!586477 () Bool)

(assert (=> bm!586477 (= call!586359 (generalisedConcat!2108 (ite c!1226748 lt!2422863 lt!2422965)))))

(declare-fun bm!586478 () Bool)

(assert (=> bm!586478 (= call!586409 (matchZipper!2523 (ite c!1226758 ((_ map or) lt!2422855 lt!2423000) ((_ map or) lt!2422934 lt!2422933)) (t!379501 s!2326)))))

(declare-fun bm!586479 () Bool)

(assert (=> bm!586479 (= call!586342 (lemmaZipperConcatMatchesSameAsBothZippers!1342 (ite c!1226758 lt!2422855 lt!2422934) (ite c!1226758 lt!2422928 lt!2422933) (t!379501 s!2326)))))

(declare-fun bm!586480 () Bool)

(assert (=> bm!586480 (= call!586484 call!586405)))

(declare-fun bm!586481 () Bool)

(assert (=> bm!586481 (= call!586351 call!586308)))

(declare-fun bm!586482 () Bool)

(declare-fun ++!14665 (List!65833 List!65833) List!65833)

(assert (=> bm!586482 (= call!586445 (++!14665 lt!2423031 lt!2422986))))

(declare-fun b!6647685 () Bool)

(assert (=> b!6647685 (= e!4019724 (= lt!2423024 call!586465))))

(declare-fun bm!586483 () Bool)

(assert (=> bm!586483 (= call!586478 (matchR!8694 (ite c!1226758 lt!2422877 (ite c!1226748 lt!2422925 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2423004 lt!2422950)) (regTwo!33534 r!7292)))) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 lt!2422851 call!586387)) s!2326))))))

(declare-fun b!6647686 () Bool)

(assert (=> b!6647686 (= e!4019731 (matchZipper!2523 lt!2423000 (t!379501 s!2326)))))

(assert (= (and start!648790 res!2723903) b!6647681))

(assert (= (and b!6647681 res!2723895) b!6647643))

(assert (= (and b!6647643 res!2723911) b!6647642))

(assert (= (and b!6647642 (not res!2723923)) b!6647626))

(assert (= (and b!6647626 (not res!2723898)) b!6647661))

(assert (= (and b!6647661 (not res!2723912)) b!6647676))

(assert (= (and b!6647676 (not res!2723917)) b!6647641))

(assert (= (and b!6647641 (not res!2723896)) b!6647633))

(assert (= (and b!6647633 (not res!2723925)) b!6647663))

(assert (= (and b!6647663 (not res!2723897)) b!6647646))

(assert (= (and b!6647646 (not res!2723921)) b!6647671))

(assert (= (and b!6647671 c!1226749) b!6647673))

(assert (= (and b!6647671 (not c!1226749)) b!6647639))

(assert (= (and b!6647673 (not res!2723899)) b!6647686))

(assert (= (and b!6647671 c!1226754) b!6647670))

(assert (= (and b!6647671 (not c!1226754)) b!6647637))

(assert (= (and b!6647637 c!1226758) b!6647645))

(assert (= (and b!6647637 (not c!1226758)) b!6647660))

(assert (= (and b!6647645 (not res!2723919)) b!6647628))

(assert (= (and b!6647645 c!1226750) b!6647632))

(assert (= (and b!6647645 (not c!1226750)) b!6647653))

(assert (= (and b!6647632 (not res!2723906)) b!6647675))

(assert (= (and b!6647645 c!1226753) b!6647629))

(assert (= (and b!6647645 (not c!1226753)) b!6647640))

(assert (= (and b!6647629 (not res!2723920)) b!6647683))

(assert (= (and b!6647645 res!2723924) b!6647647))

(assert (= (and b!6647660 res!2723909) b!6647669))

(assert (= (and b!6647660 c!1226748) b!6647623))

(assert (= (and b!6647660 (not c!1226748)) b!6647658))

(assert (= (and b!6647623 (not res!2723901)) b!6647625))

(assert (= (and b!6647623 (not res!2723915)) b!6647630))

(assert (= (and b!6647623 res!2723918) b!6647685))

(assert (= (and b!6647658 c!1226755) b!6647624))

(assert (= (and b!6647658 (not c!1226755)) b!6647682))

(assert (= (and b!6647624 res!2723900) b!6647668))

(assert (= (and b!6647682 c!1226756) b!6647665))

(assert (= (and b!6647682 (not c!1226756)) b!6647672))

(assert (= (and b!6647665 res!2723914) b!6647649))

(assert (= (and b!6647665 c!1226752) b!6647651))

(assert (= (and b!6647665 (not c!1226752)) b!6647650))

(assert (= (and b!6647651 c!1226751) b!6647656))

(assert (= (and b!6647651 (not c!1226751)) b!6647652))

(assert (= (and b!6647656 res!2723902) b!6647664))

(assert (= (and b!6647652 res!2723913) b!6647644))

(assert (= (or b!6647656 b!6647652) bm!586438))

(assert (= (or b!6647656 b!6647652) bm!586358))

(assert (= (or b!6647656 b!6647652) bm!586338))

(assert (= (or b!6647664 b!6647652) bm!586314))

(assert (= (and b!6647650 c!1226746) b!6647684))

(assert (= (and b!6647650 (not c!1226746)) b!6647677))

(assert (= (and b!6647684 c!1226757) b!6647657))

(assert (= (and b!6647684 (not c!1226757)) b!6647636))

(assert (= (and b!6647657 res!2723910) b!6647634))

(assert (= (and b!6647657 res!2723907) b!6647666))

(assert (= (and b!6647636 res!2723922) b!6647631))

(assert (= (or b!6647657 b!6647636) bm!586410))

(assert (= (or b!6647657 b!6647636) bm!586342))

(assert (= (or b!6647657 b!6647636) bm!586428))

(assert (= (or b!6647657 b!6647636) bm!586419))

(assert (= (or b!6647657 b!6647636) bm!586351))

(assert (= (or b!6647657 b!6647636) bm!586289))

(assert (= (or b!6647657 b!6647636) bm!586480))

(assert (= (or b!6647657 b!6647636) bm!586437))

(assert (= (or b!6647657 b!6647636) bm!586407))

(assert (= (or b!6647657 b!6647636) bm!586326))

(assert (= (or b!6647657 b!6647636) bm!586373))

(assert (= (or b!6647657 b!6647636) bm!586418))

(assert (= (or b!6647657 b!6647636) bm!586353))

(assert (= (or b!6647657 b!6647636) bm!586446))

(assert (= (or b!6647657 b!6647636) bm!586441))

(assert (= (or b!6647657 b!6647636) bm!586464))

(assert (= (or b!6647657 b!6647636) bm!586426))

(assert (= (or b!6647657 b!6647636) bm!586369))

(assert (= (or b!6647657 b!6647636) bm!586389))

(assert (= (or b!6647652 b!6647657) bm!586409))

(assert (= (or b!6647652 b!6647657) bm!586399))

(assert (= (or bm!586438 bm!586351) bm!586461))

(assert (= (or b!6647651 b!6647657) bm!586382))

(assert (= (or b!6647651 b!6647650) bm!586322))

(assert (= (or b!6647651 b!6647657) bm!586305))

(assert (= (or b!6647652 b!6647657) bm!586321))

(assert (= (or b!6647651 b!6647657) bm!586284))

(assert (= (or b!6647652 bm!586353) bm!586359))

(assert (= (or b!6647651 b!6647657) bm!586471))

(assert (= (or b!6647652 bm!586419) bm!586327))

(assert (= (or b!6647652 bm!586437) bm!586395))

(assert (= (or b!6647652 bm!586326) bm!586303))

(assert (= (or b!6647651 b!6647657) bm!586306))

(assert (= (or b!6647652 bm!586480) bm!586335))

(assert (= (or b!6647651 b!6647657) bm!586385))

(assert (= (or b!6647652 bm!586446) bm!586371))

(assert (= (or b!6647652 b!6647657) bm!586482))

(assert (= (or b!6647651 bm!586426) bm!586285))

(assert (= (or b!6647652 b!6647657) bm!586302))

(assert (= (or b!6647656 b!6647636) bm!586444))

(assert (= (or b!6647652 bm!586373) bm!586278))

(assert (= (or b!6647652 bm!586342) bm!586304))

(assert (= (or bm!586338 b!6647657) bm!586291))

(assert (= (or b!6647652 b!6647657) bm!586412))

(assert (= (or b!6647652 bm!586410) bm!586292))

(assert (= (or b!6647652 b!6647657) bm!586376))

(assert (= (or bm!586314 b!6647684) bm!586311))

(assert (= (or bm!586358 b!6647657) bm!586375))

(assert (= (or b!6647652 bm!586441) bm!586337))

(assert (= (or b!6647651 b!6647657) bm!586340))

(assert (= (or b!6647652 bm!586428) bm!586460))

(assert (= (or b!6647656 b!6647636) bm!586405))

(assert (= (or b!6647652 b!6647657) bm!586344))

(assert (= (or b!6647652 bm!586289) bm!586424))

(assert (= (or b!6647652 b!6647657) bm!586425))

(assert (= (or b!6647656 b!6647636) bm!586309))

(assert (= (or b!6647652 bm!586407) bm!586392))

(assert (= (or b!6647652 b!6647657) bm!586347))

(assert (= (or b!6647652 b!6647657) bm!586463))

(assert (= (or b!6647652 b!6647657) bm!586439))

(assert (= (or b!6647652 b!6647657) bm!586352))

(assert (= (or b!6647652 b!6647657) bm!586400))

(assert (= (or b!6647656 b!6647636) bm!586336))

(assert (= (or b!6647652 b!6647657) bm!586380))

(assert (= (or b!6647652 bm!586418) bm!586462))

(assert (= (or b!6647652 b!6647657) bm!586348))

(assert (= (or b!6647652 bm!586389) bm!586398))

(assert (= (or b!6647652 b!6647657) bm!586312))

(assert (= (and b!6647672 c!1226747) b!6647635))

(assert (= (and b!6647672 (not c!1226747)) b!6647622))

(assert (= (and b!6647635 res!2723905) b!6647655))

(assert (= (and b!6647622 res!2723916) b!6647662))

(assert (= (or b!6647635 b!6647622) bm!586448))

(assert (= (or b!6647635 b!6647622) bm!586416))

(assert (= (or b!6647635 b!6647622) bm!586415))

(assert (= (or b!6647655 b!6647662) bm!586355))

(assert (= (or b!6647635 b!6647622) bm!586404))

(assert (= (or b!6647635 b!6647622) bm!586442))

(assert (= (or b!6647635 b!6647622) bm!586339))

(assert (= (or b!6647635 b!6647622) bm!586294))

(assert (= (or b!6647635 b!6647622) bm!586406))

(assert (= (or bm!586461 bm!586448) bm!586470))

(assert (= (or bm!586375 b!6647635) bm!586316))

(assert (= (or bm!586336 b!6647635) bm!586341))

(assert (= (or b!6647665 bm!586406) bm!586447))

(assert (= (or bm!586359 b!6647635) bm!586476))

(assert (= (or bm!586444 b!6647635) bm!586293))

(assert (= (or b!6647665 bm!586404) bm!586332))

(assert (= (or bm!586312 b!6647635) bm!586427))

(assert (= (or b!6647665 b!6647635) bm!586436))

(assert (= (or bm!586322 b!6647665 bm!586355) bm!586420))

(assert (= (or b!6647665 b!6647635) bm!586377))

(assert (= (or bm!586398 b!6647635) bm!586383))

(assert (= (or bm!586464 bm!586416) bm!586281))

(assert (= (or b!6647665 bm!586442) bm!586287))

(assert (= (or bm!586311 bm!586339) bm!586431))

(assert (= (or bm!586291 b!6647635) bm!586467))

(assert (= (or bm!586337 bm!586415) bm!586451))

(assert (= (or b!6647624 bm!586427) bm!586357))

(assert (= (or b!6647624 bm!586341) bm!586345))

(assert (= (or b!6647624 bm!586281) bm!586466))

(assert (= (or b!6647624 bm!586332) bm!586370))

(assert (= (or b!6647624 bm!586405) bm!586387))

(assert (= (or b!6647624 bm!586278) bm!586346))

(assert (= (or b!6647624 bm!586425) bm!586310))

(assert (= (or b!6647624 bm!586285) bm!586297))

(assert (= (or b!6647624 bm!586451) bm!586354))

(assert (= (or b!6647624 b!6647657) bm!586391))

(assert (= (or b!6647624 bm!586439) bm!586481))

(assert (= (or b!6647624 bm!586424) bm!586367))

(assert (= (or b!6647624 bm!586316) bm!586386))

(assert (= (or b!6647624 bm!586306) bm!586290))

(assert (= (or b!6647624 b!6647665) bm!586465))

(assert (= (or b!6647624 bm!586335) bm!586333))

(assert (= (or b!6647624 bm!586385) bm!586443))

(assert (= (or b!6647624 bm!586462) bm!586445))

(assert (= (or b!6647624 bm!586293) bm!586324))

(assert (= (or b!6647624 b!6647665) bm!586472))

(assert (= (or b!6647624 bm!586470) bm!586414))

(assert (= (or b!6647624 bm!586287) bm!586360))

(assert (= (or b!6647624 bm!586304) bm!586429))

(assert (= (or b!6647624 bm!586340) bm!586330))

(assert (= (or b!6647624 bm!586447) bm!586449))

(assert (= (or b!6647624 bm!586303) bm!586361))

(assert (= (or b!6647624 bm!586305) bm!586363))

(assert (= (or b!6647624 bm!586284) bm!586422))

(assert (= (or b!6647668 bm!586420) bm!586390))

(assert (= (or b!6647624 bm!586471) bm!586384))

(assert (= (or b!6647624 bm!586380) bm!586433))

(assert (= (or b!6647623 bm!586443) bm!586349))

(assert (= (or b!6647685 bm!586467) bm!586457))

(assert (= (or b!6647623 bm!586363) bm!586413))

(assert (= (or b!6647623 bm!586367) bm!586296))

(assert (= (or b!6647623 bm!586481) bm!586365))

(assert (= (or b!6647623 bm!586346) bm!586474))

(assert (= (or b!6647623 bm!586449) bm!586396))

(assert (= (or b!6647623 bm!586391) bm!586459))

(assert (= (or b!6647623 bm!586383) bm!586394))

(assert (= (or b!6647623 bm!586360) bm!586317))

(assert (= (or b!6647623 bm!586466) bm!586388))

(assert (= (or b!6647623 bm!586476) bm!586325))

(assert (= (or b!6647623 bm!586386) bm!586401))

(assert (= (or b!6647623 bm!586327) bm!586453))

(assert (= (or b!6647623 bm!586354) bm!586301))

(assert (= (or b!6647625 bm!586357) bm!586393))

(assert (= (or b!6647623 bm!586377) bm!586408))

(assert (= (or b!6647623 bm!586310) bm!586313))

(assert (= (or b!6647623 b!6647665) bm!586468))

(assert (= (or b!6647623 bm!586387) bm!586430))

(assert (= (or b!6647623 bm!586361) bm!586368))

(assert (= (or b!6647623 bm!586324) bm!586455))

(assert (= (or b!6647623 bm!586345) bm!586434))

(assert (= (or b!6647623 bm!586330) bm!586277))

(assert (= (or b!6647623 b!6647624) bm!586477))

(assert (= (or b!6647623 bm!586422) bm!586286))

(assert (= (or b!6647623 bm!586297) bm!586411))

(assert (= (or b!6647623 bm!586333) bm!586279))

(assert (= (or b!6647623 bm!586429) bm!586318))

(assert (= (or b!6647623 b!6647624) bm!586364))

(assert (= (or b!6647623 b!6647665) bm!586329))

(assert (= (or b!6647623 bm!586370) bm!586328))

(assert (= (or b!6647623 bm!586465) bm!586356))

(assert (= (or b!6647623 bm!586445) bm!586307))

(assert (= (or b!6647623 bm!586395) bm!586435))

(assert (= (or b!6647623 b!6647635) bm!586402))

(assert (= (or b!6647623 b!6647665) bm!586450))

(assert (= (or b!6647630 bm!586431) bm!586381))

(assert (= (or b!6647623 bm!586390) bm!586423))

(assert (= (or b!6647623 bm!586384) bm!586300))

(assert (= (or b!6647623 bm!586433) bm!586372))

(assert (= (or b!6647645 bm!586396) bm!586469))

(assert (= (or b!6647645 b!6647623) bm!586452))

(assert (= (or b!6647645 b!6647623) bm!586479))

(assert (= (or b!6647645 bm!586356) bm!586320))

(assert (= (or b!6647645 bm!586401) bm!586475))

(assert (= (or b!6647675 b!6647683 bm!586325) bm!586315))

(assert (= (or b!6647645 bm!586388) bm!586331))

(assert (= (or b!6647645 b!6647623) bm!586440))

(assert (= (or b!6647645 bm!586329) bm!586417))

(assert (= (or b!6647645 bm!586321) bm!586403))

(assert (= (or b!6647645 bm!586301) bm!586299))

(assert (= (or b!6647645 bm!586468) bm!586288))

(assert (= (or b!6647645 bm!586455) bm!586432))

(assert (= (or b!6647645 bm!586381) bm!586282))

(assert (= (or b!6647645 bm!586430) bm!586456))

(assert (= (or b!6647629 bm!586393) bm!586366))

(assert (= (or b!6647647 bm!586457) bm!586319))

(assert (= (or b!6647629 bm!586402) bm!586350))

(assert (= (or b!6647645 bm!586394) bm!586483))

(assert (= (or b!6647645 bm!586279) bm!586421))

(assert (= (or b!6647628 b!6647629 bm!586423) bm!586378))

(assert (= (or b!6647645 bm!586313) bm!586308))

(assert (= (or b!6647645 b!6647669) bm!586379))

(assert (= (or b!6647632 b!6647623) bm!586478))

(assert (= (or b!6647645 b!6647623) bm!586458))

(assert (= (or b!6647645 bm!586435) bm!586298))

(assert (= (or b!6647645 bm!586364) bm!586283))

(assert (= (or b!6647645 bm!586328) bm!586343))

(assert (= (or b!6647645 b!6647657) bm!586397))

(assert (= (or b!6647645 b!6647665) bm!586334))

(assert (= (or b!6647645 bm!586309) bm!586362))

(assert (= (or b!6647645 b!6647665) bm!586473))

(assert (= (or b!6647645 bm!586317) bm!586374))

(assert (= (or b!6647670 bm!586308) bm!586323))

(assert (= (or b!6647670 bm!586432) bm!586280))

(assert (= (or b!6647670 bm!586475) bm!586295))

(assert (= (or b!6647670 bm!586319) bm!586454))

(assert (= (and b!6647671 (not res!2723908)) b!6647648))

(assert (= (and b!6647648 (not res!2723904)) b!6647680))

(assert (= (and start!648790 ((_ is ElementMatch!16511) r!7292)) b!6647659))

(assert (= (and start!648790 ((_ is Concat!25356) r!7292)) b!6647627))

(assert (= (and start!648790 ((_ is Star!16511) r!7292)) b!6647679))

(assert (= (and start!648790 ((_ is Union!16511) r!7292)) b!6647654))

(assert (= (and start!648790 condSetEmpty!45441) setIsEmpty!45441))

(assert (= (and start!648790 (not condSetEmpty!45441)) setNonEmpty!45441))

(assert (= setNonEmpty!45441 b!6647638))

(assert (= b!6647667 b!6647674))

(assert (= (and start!648790 ((_ is Cons!65710) zl!343)) b!6647667))

(assert (= (and start!648790 ((_ is Cons!65708) s!2326)) b!6647678))

(declare-fun m!7413210 () Bool)

(assert (=> bm!586400 m!7413210))

(declare-fun m!7413212 () Bool)

(assert (=> b!6647667 m!7413212))

(declare-fun m!7413214 () Bool)

(assert (=> bm!586365 m!7413214))

(declare-fun m!7413216 () Bool)

(assert (=> b!6647670 m!7413216))

(declare-fun m!7413218 () Bool)

(assert (=> bm!586378 m!7413218))

(declare-fun m!7413220 () Bool)

(assert (=> bm!586282 m!7413220))

(assert (=> b!6647656 m!7413216))

(declare-fun m!7413222 () Bool)

(assert (=> bm!586296 m!7413222))

(declare-fun m!7413224 () Bool)

(assert (=> bm!586362 m!7413224))

(declare-fun m!7413226 () Bool)

(assert (=> bm!586440 m!7413226))

(declare-fun m!7413228 () Bool)

(assert (=> b!6647643 m!7413228))

(declare-fun m!7413230 () Bool)

(assert (=> bm!586469 m!7413230))

(declare-fun m!7413232 () Bool)

(assert (=> bm!586348 m!7413232))

(declare-fun m!7413234 () Bool)

(assert (=> bm!586417 m!7413234))

(declare-fun m!7413236 () Bool)

(assert (=> bm!586379 m!7413236))

(declare-fun m!7413238 () Bool)

(assert (=> bm!586434 m!7413238))

(declare-fun m!7413240 () Bool)

(assert (=> bm!586290 m!7413240))

(declare-fun m!7413242 () Bool)

(assert (=> bm!586479 m!7413242))

(declare-fun m!7413244 () Bool)

(assert (=> b!6647624 m!7413244))

(declare-fun m!7413246 () Bool)

(assert (=> b!6647681 m!7413246))

(declare-fun m!7413248 () Bool)

(assert (=> bm!586294 m!7413248))

(declare-fun m!7413250 () Bool)

(assert (=> bm!586478 m!7413250))

(declare-fun m!7413252 () Bool)

(assert (=> b!6647646 m!7413252))

(declare-fun m!7413254 () Bool)

(assert (=> bm!586459 m!7413254))

(declare-fun m!7413256 () Bool)

(assert (=> b!6647626 m!7413256))

(declare-fun m!7413258 () Bool)

(assert (=> bm!586453 m!7413258))

(declare-fun m!7413260 () Bool)

(assert (=> bm!586436 m!7413260))

(declare-fun m!7413262 () Bool)

(assert (=> bm!586369 m!7413262))

(declare-fun m!7413264 () Bool)

(assert (=> bm!586323 m!7413264))

(declare-fun m!7413266 () Bool)

(assert (=> bm!586315 m!7413266))

(declare-fun m!7413268 () Bool)

(assert (=> bm!586315 m!7413268))

(declare-fun m!7413270 () Bool)

(assert (=> bm!586292 m!7413270))

(declare-fun m!7413272 () Bool)

(assert (=> start!648790 m!7413272))

(declare-fun m!7413274 () Bool)

(assert (=> bm!586299 m!7413274))

(declare-fun m!7413276 () Bool)

(assert (=> setNonEmpty!45441 m!7413276))

(declare-fun m!7413278 () Bool)

(assert (=> bm!586372 m!7413278))

(declare-fun m!7413280 () Bool)

(assert (=> bm!586408 m!7413280))

(assert (=> b!6647636 m!7413216))

(declare-fun m!7413282 () Bool)

(assert (=> bm!586421 m!7413282))

(declare-fun m!7413284 () Bool)

(assert (=> bm!586320 m!7413284))

(declare-fun m!7413286 () Bool)

(assert (=> bm!586463 m!7413286))

(declare-fun m!7413288 () Bool)

(assert (=> bm!586399 m!7413288))

(declare-fun m!7413290 () Bool)

(assert (=> bm!586368 m!7413290))

(declare-fun m!7413292 () Bool)

(assert (=> bm!586283 m!7413292))

(declare-fun m!7413294 () Bool)

(assert (=> bm!586307 m!7413294))

(declare-fun m!7413296 () Bool)

(assert (=> b!6647663 m!7413296))

(declare-fun m!7413298 () Bool)

(assert (=> b!6647663 m!7413298))

(declare-fun m!7413300 () Bool)

(assert (=> b!6647663 m!7413300))

(declare-fun m!7413302 () Bool)

(assert (=> b!6647663 m!7413302))

(declare-fun m!7413304 () Bool)

(assert (=> b!6647663 m!7413304))

(assert (=> b!6647663 m!7413296))

(assert (=> b!6647663 m!7413302))

(declare-fun m!7413306 () Bool)

(assert (=> b!6647663 m!7413306))

(declare-fun m!7413308 () Bool)

(assert (=> bm!586334 m!7413308))

(declare-fun m!7413310 () Bool)

(assert (=> b!6647657 m!7413310))

(declare-fun m!7413312 () Bool)

(assert (=> b!6647657 m!7413312))

(declare-fun m!7413314 () Bool)

(assert (=> b!6647657 m!7413314))

(declare-fun m!7413316 () Bool)

(assert (=> b!6647657 m!7413316))

(declare-fun m!7413318 () Bool)

(assert (=> b!6647657 m!7413318))

(declare-fun m!7413320 () Bool)

(assert (=> b!6647657 m!7413320))

(declare-fun m!7413322 () Bool)

(assert (=> b!6647657 m!7413322))

(declare-fun m!7413324 () Bool)

(assert (=> b!6647657 m!7413324))

(declare-fun m!7413326 () Bool)

(assert (=> b!6647657 m!7413326))

(declare-fun m!7413328 () Bool)

(assert (=> b!6647623 m!7413328))

(declare-fun m!7413330 () Bool)

(assert (=> b!6647623 m!7413330))

(declare-fun m!7413332 () Bool)

(assert (=> bm!586483 m!7413332))

(declare-fun m!7413334 () Bool)

(assert (=> bm!586286 m!7413334))

(declare-fun m!7413336 () Bool)

(assert (=> bm!586414 m!7413336))

(declare-fun m!7413338 () Bool)

(assert (=> bm!586382 m!7413338))

(declare-fun m!7413340 () Bool)

(assert (=> bm!586477 m!7413340))

(declare-fun m!7413342 () Bool)

(assert (=> bm!586454 m!7413342))

(declare-fun m!7413344 () Bool)

(assert (=> bm!586458 m!7413344))

(declare-fun m!7413346 () Bool)

(assert (=> bm!586374 m!7413346))

(declare-fun m!7413348 () Bool)

(assert (=> bm!586343 m!7413348))

(declare-fun m!7413350 () Bool)

(assert (=> bm!586277 m!7413350))

(declare-fun m!7413352 () Bool)

(assert (=> bm!586412 m!7413352))

(declare-fun m!7413354 () Bool)

(assert (=> bm!586397 m!7413354))

(declare-fun m!7413356 () Bool)

(assert (=> bm!586409 m!7413356))

(declare-fun m!7413358 () Bool)

(assert (=> bm!586482 m!7413358))

(declare-fun m!7413360 () Bool)

(assert (=> b!6647648 m!7413360))

(declare-fun m!7413362 () Bool)

(assert (=> b!6647648 m!7413362))

(assert (=> b!6647648 m!7413362))

(declare-fun m!7413364 () Bool)

(assert (=> b!6647648 m!7413364))

(declare-fun m!7413366 () Bool)

(assert (=> bm!586280 m!7413366))

(declare-fun m!7413368 () Bool)

(assert (=> bm!586411 m!7413368))

(declare-fun m!7413370 () Bool)

(assert (=> bm!586352 m!7413370))

(declare-fun m!7413372 () Bool)

(assert (=> b!6647641 m!7413372))

(assert (=> b!6647641 m!7413372))

(declare-fun m!7413374 () Bool)

(assert (=> b!6647641 m!7413374))

(declare-fun m!7413376 () Bool)

(assert (=> bm!586298 m!7413376))

(declare-fun m!7413378 () Bool)

(assert (=> b!6647642 m!7413378))

(declare-fun m!7413380 () Bool)

(assert (=> b!6647642 m!7413380))

(declare-fun m!7413382 () Bool)

(assert (=> b!6647642 m!7413382))

(declare-fun m!7413384 () Bool)

(assert (=> b!6647680 m!7413384))

(declare-fun m!7413386 () Bool)

(assert (=> bm!586349 m!7413386))

(assert (=> bm!586366 m!7413312))

(declare-fun m!7413388 () Bool)

(assert (=> bm!586366 m!7413388))

(declare-fun m!7413390 () Bool)

(assert (=> bm!586344 m!7413390))

(declare-fun m!7413392 () Bool)

(assert (=> b!6647651 m!7413392))

(declare-fun m!7413394 () Bool)

(assert (=> bm!586474 m!7413394))

(declare-fun m!7413396 () Bool)

(assert (=> bm!586452 m!7413396))

(declare-fun m!7413398 () Bool)

(assert (=> bm!586403 m!7413398))

(declare-fun m!7413400 () Bool)

(assert (=> bm!586371 m!7413400))

(declare-fun m!7413402 () Bool)

(assert (=> bm!586473 m!7413402))

(declare-fun m!7413404 () Bool)

(assert (=> bm!586347 m!7413404))

(declare-fun m!7413406 () Bool)

(assert (=> bm!586302 m!7413406))

(declare-fun m!7413408 () Bool)

(assert (=> b!6647665 m!7413408))

(declare-fun m!7413410 () Bool)

(assert (=> b!6647665 m!7413410))

(declare-fun m!7413412 () Bool)

(assert (=> b!6647665 m!7413412))

(declare-fun m!7413414 () Bool)

(assert (=> b!6647665 m!7413414))

(assert (=> b!6647635 m!7413216))

(declare-fun m!7413416 () Bool)

(assert (=> bm!586413 m!7413416))

(declare-fun m!7413418 () Bool)

(assert (=> b!6647632 m!7413418))

(declare-fun m!7413420 () Bool)

(assert (=> b!6647671 m!7413420))

(declare-fun m!7413422 () Bool)

(assert (=> b!6647671 m!7413422))

(declare-fun m!7413424 () Bool)

(assert (=> b!6647671 m!7413424))

(declare-fun m!7413426 () Bool)

(assert (=> b!6647671 m!7413426))

(assert (=> b!6647671 m!7413216))

(declare-fun m!7413428 () Bool)

(assert (=> b!6647671 m!7413428))

(declare-fun m!7413430 () Bool)

(assert (=> b!6647671 m!7413430))

(declare-fun m!7413432 () Bool)

(assert (=> b!6647671 m!7413432))

(declare-fun m!7413434 () Bool)

(assert (=> b!6647671 m!7413434))

(declare-fun m!7413436 () Bool)

(assert (=> b!6647671 m!7413436))

(declare-fun m!7413438 () Bool)

(assert (=> b!6647671 m!7413438))

(declare-fun m!7413440 () Bool)

(assert (=> b!6647673 m!7413440))

(declare-fun m!7413442 () Bool)

(assert (=> b!6647673 m!7413442))

(declare-fun m!7413444 () Bool)

(assert (=> b!6647673 m!7413444))

(declare-fun m!7413446 () Bool)

(assert (=> b!6647645 m!7413446))

(declare-fun m!7413448 () Bool)

(assert (=> b!6647645 m!7413448))

(declare-fun m!7413450 () Bool)

(assert (=> b!6647645 m!7413450))

(declare-fun m!7413452 () Bool)

(assert (=> b!6647645 m!7413452))

(declare-fun m!7413454 () Bool)

(assert (=> b!6647645 m!7413454))

(declare-fun m!7413456 () Bool)

(assert (=> b!6647645 m!7413456))

(declare-fun m!7413458 () Bool)

(assert (=> b!6647645 m!7413458))

(declare-fun m!7413460 () Bool)

(assert (=> bm!586295 m!7413460))

(declare-fun m!7413462 () Bool)

(assert (=> bm!586456 m!7413462))

(declare-fun m!7413464 () Bool)

(assert (=> bm!586392 m!7413464))

(declare-fun m!7413466 () Bool)

(assert (=> bm!586472 m!7413466))

(declare-fun m!7413468 () Bool)

(assert (=> b!6647686 m!7413468))

(declare-fun m!7413470 () Bool)

(assert (=> bm!586450 m!7413470))

(declare-fun m!7413472 () Bool)

(assert (=> bm!586331 m!7413472))

(declare-fun m!7413474 () Bool)

(assert (=> b!6647661 m!7413474))

(declare-fun m!7413476 () Bool)

(assert (=> bm!586350 m!7413476))

(assert (=> bm!586376 m!7413390))

(declare-fun m!7413478 () Bool)

(assert (=> bm!586460 m!7413478))

(declare-fun m!7413480 () Bool)

(assert (=> bm!586288 m!7413480))

(declare-fun m!7413482 () Bool)

(assert (=> bm!586300 m!7413482))

(declare-fun m!7413484 () Bool)

(assert (=> bm!586318 m!7413484))

(check-sat (not bm!586483) (not b!6647646) (not b!6647686) (not bm!586277) (not bm!586472) (not b!6647648) (not bm!586295) (not bm!586478) (not bm!586323) (not b!6647654) (not bm!586348) (not bm!586409) (not bm!586307) (not bm!586469) (not b!6647667) (not bm!586463) (not bm!586378) (not bm!586344) (not bm!586454) (not b!6647638) tp_is_empty!42275 (not bm!586397) (not bm!586453) (not bm!586458) (not bm!586343) (not bm!586452) (not bm!586482) (not bm!586417) (not bm!586379) (not bm!586315) (not bm!586366) (not bm!586320) (not bm!586479) (not bm!586450) (not b!6647657) (not bm!586331) (not bm!586368) (not b!6647681) (not bm!586374) (not bm!586294) (not bm!586282) (not b!6647680) (not b!6647678) (not bm!586347) (not bm!586460) (not b!6647674) (not bm!586372) (not b!6647665) (not b!6647645) (not bm!586408) (not bm!586296) (not bm!586413) (not bm!586280) (not bm!586288) (not bm!586411) (not b!6647642) (not bm!586362) (not bm!586459) (not bm!586286) (not bm!586371) (not bm!586477) (not bm!586421) (not bm!586440) (not bm!586436) (not bm!586369) (not b!6647641) (not start!648790) (not b!6647661) (not setNonEmpty!45441) (not bm!586412) (not bm!586473) (not bm!586318) (not bm!586352) (not b!6647679) (not bm!586283) (not b!6647626) (not bm!586392) (not bm!586299) (not bm!586399) (not b!6647627) (not bm!586300) (not bm!586302) (not b!6647651) (not bm!586414) (not bm!586400) (not bm!586290) (not bm!586298) (not bm!586349) (not bm!586376) (not b!6647643) (not bm!586474) (not bm!586350) (not b!6647671) (not bm!586292) (not bm!586365) (not b!6647673) (not bm!586456) (not bm!586382) (not b!6647663) (not bm!586403) (not b!6647632) (not bm!586434) (not bm!586334))
(check-sat)
(get-model)

(declare-fun e!4019751 () List!65832)

(declare-fun b!6647705 () Bool)

(assert (=> b!6647705 (= e!4019751 (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422848)))))

(declare-fun b!6647706 () Bool)

(assert (=> b!6647706 (= e!4019751 (Cons!65708 (h!72156 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))) (++!14664 (t!379501 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))) (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422848)))))))

(declare-fun b!6647707 () Bool)

(declare-fun res!2723931 () Bool)

(declare-fun e!4019752 () Bool)

(assert (=> b!6647707 (=> (not res!2723931) (not e!4019752))))

(declare-fun lt!2423050 () List!65832)

(declare-fun size!40565 (List!65832) Int)

(assert (=> b!6647707 (= res!2723931 (= (size!40565 lt!2423050) (+ (size!40565 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))) (size!40565 (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422848))))))))

(declare-fun b!6647708 () Bool)

(assert (=> b!6647708 (= e!4019752 (or (not (= (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422848)) Nil!65708)) (= lt!2423050 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)))))))

(declare-fun d!2083519 () Bool)

(assert (=> d!2083519 e!4019752))

(declare-fun res!2723932 () Bool)

(assert (=> d!2083519 (=> (not res!2723932) (not e!4019752))))

(declare-fun content!12703 (List!65832) (InoxSet C!33292))

(assert (=> d!2083519 (= res!2723932 (= (content!12703 lt!2423050) ((_ map or) (content!12703 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))) (content!12703 (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422848))))))))

(assert (=> d!2083519 (= lt!2423050 e!4019751)))

(declare-fun c!1226762 () Bool)

(assert (=> d!2083519 (= c!1226762 ((_ is Nil!65708) (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))))))

(assert (=> d!2083519 (= (++!14664 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)) (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422848))) lt!2423050)))

(assert (= (and d!2083519 c!1226762) b!6647705))

(assert (= (and d!2083519 (not c!1226762)) b!6647706))

(assert (= (and d!2083519 res!2723932) b!6647707))

(assert (= (and b!6647707 res!2723931) b!6647708))

(declare-fun m!7413486 () Bool)

(assert (=> b!6647706 m!7413486))

(declare-fun m!7413488 () Bool)

(assert (=> b!6647707 m!7413488))

(declare-fun m!7413490 () Bool)

(assert (=> b!6647707 m!7413490))

(declare-fun m!7413492 () Bool)

(assert (=> b!6647707 m!7413492))

(declare-fun m!7413494 () Bool)

(assert (=> d!2083519 m!7413494))

(declare-fun m!7413496 () Bool)

(assert (=> d!2083519 m!7413496))

(declare-fun m!7413498 () Bool)

(assert (=> d!2083519 m!7413498))

(assert (=> bm!586399 d!2083519))

(declare-fun bs!1711168 () Bool)

(declare-fun d!2083521 () Bool)

(assert (= bs!1711168 (and d!2083521 b!6647652)))

(declare-fun lambda!371957 () Int)

(assert (=> bs!1711168 (= lambda!371957 lambda!371944)))

(declare-fun bs!1711169 () Bool)

(assert (= bs!1711169 (and d!2083521 b!6647657)))

(assert (=> bs!1711169 (= lambda!371957 lambda!371946)))

(declare-fun forall!15706 (List!65833 Int) Bool)

(assert (=> d!2083521 (= (inv!84524 (h!72158 zl!343)) (forall!15706 (exprs!6395 (h!72158 zl!343)) lambda!371957))))

(declare-fun bs!1711170 () Bool)

(assert (= bs!1711170 d!2083521))

(declare-fun m!7413500 () Bool)

(assert (=> bs!1711170 m!7413500))

(assert (=> b!6647667 d!2083521))

(declare-fun b!6647737 () Bool)

(declare-fun res!2723953 () Bool)

(declare-fun e!4019767 () Bool)

(assert (=> b!6647737 (=> res!2723953 e!4019767)))

(declare-fun tail!12548 (List!65832) List!65832)

(assert (=> b!6647737 (= res!2723953 (not (isEmpty!38018 (tail!12548 (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 lt!2422851 call!586387)) s!2326))))))))

(declare-fun b!6647738 () Bool)

(declare-fun e!4019768 () Bool)

(declare-fun lt!2423053 () Bool)

(declare-fun call!586491 () Bool)

(assert (=> b!6647738 (= e!4019768 (= lt!2423053 call!586491))))

(declare-fun b!6647740 () Bool)

(declare-fun e!4019769 () Bool)

(assert (=> b!6647740 (= e!4019768 e!4019769)))

(declare-fun c!1226769 () Bool)

(assert (=> b!6647740 (= c!1226769 ((_ is EmptyLang!16511) (ite c!1226758 lt!2422877 (ite c!1226748 lt!2422925 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2423004 lt!2422950)) (regTwo!33534 r!7292))))))))

(declare-fun e!4019772 () Bool)

(declare-fun b!6647741 () Bool)

(assert (=> b!6647741 (= e!4019772 (nullable!6504 (ite c!1226758 lt!2422877 (ite c!1226748 lt!2422925 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2423004 lt!2422950)) (regTwo!33534 r!7292))))))))

(declare-fun b!6647742 () Bool)

(declare-fun res!2723950 () Bool)

(declare-fun e!4019773 () Bool)

(assert (=> b!6647742 (=> res!2723950 e!4019773)))

(declare-fun e!4019770 () Bool)

(assert (=> b!6647742 (= res!2723950 e!4019770)))

(declare-fun res!2723955 () Bool)

(assert (=> b!6647742 (=> (not res!2723955) (not e!4019770))))

(assert (=> b!6647742 (= res!2723955 lt!2423053)))

(declare-fun b!6647743 () Bool)

(declare-fun head!13463 (List!65832) C!33292)

(assert (=> b!6647743 (= e!4019767 (not (= (head!13463 (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 lt!2422851 call!586387)) s!2326))) (c!1226759 (ite c!1226758 lt!2422877 (ite c!1226748 lt!2422925 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2423004 lt!2422950)) (regTwo!33534 r!7292))))))))))

(declare-fun b!6647744 () Bool)

(declare-fun e!4019771 () Bool)

(assert (=> b!6647744 (= e!4019773 e!4019771)))

(declare-fun res!2723956 () Bool)

(assert (=> b!6647744 (=> (not res!2723956) (not e!4019771))))

(assert (=> b!6647744 (= res!2723956 (not lt!2423053))))

(declare-fun b!6647745 () Bool)

(assert (=> b!6647745 (= e!4019770 (= (head!13463 (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 lt!2422851 call!586387)) s!2326))) (c!1226759 (ite c!1226758 lt!2422877 (ite c!1226748 lt!2422925 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2423004 lt!2422950)) (regTwo!33534 r!7292)))))))))

(declare-fun bm!586486 () Bool)

(assert (=> bm!586486 (= call!586491 (isEmpty!38018 (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 lt!2422851 call!586387)) s!2326))))))

(declare-fun b!6647746 () Bool)

(assert (=> b!6647746 (= e!4019769 (not lt!2423053))))

(declare-fun b!6647747 () Bool)

(declare-fun res!2723952 () Bool)

(assert (=> b!6647747 (=> (not res!2723952) (not e!4019770))))

(assert (=> b!6647747 (= res!2723952 (not call!586491))))

(declare-fun b!6647748 () Bool)

(declare-fun res!2723949 () Bool)

(assert (=> b!6647748 (=> res!2723949 e!4019773)))

(assert (=> b!6647748 (= res!2723949 (not ((_ is ElementMatch!16511) (ite c!1226758 lt!2422877 (ite c!1226748 lt!2422925 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2423004 lt!2422950)) (regTwo!33534 r!7292)))))))))

(assert (=> b!6647748 (= e!4019769 e!4019773)))

(declare-fun b!6647749 () Bool)

(declare-fun res!2723954 () Bool)

(assert (=> b!6647749 (=> (not res!2723954) (not e!4019770))))

(assert (=> b!6647749 (= res!2723954 (isEmpty!38018 (tail!12548 (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 lt!2422851 call!586387)) s!2326)))))))

(declare-fun b!6647750 () Bool)

(declare-fun derivativeStep!5190 (Regex!16511 C!33292) Regex!16511)

(assert (=> b!6647750 (= e!4019772 (matchR!8694 (derivativeStep!5190 (ite c!1226758 lt!2422877 (ite c!1226748 lt!2422925 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2423004 lt!2422950)) (regTwo!33534 r!7292)))) (head!13463 (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 lt!2422851 call!586387)) s!2326)))) (tail!12548 (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 lt!2422851 call!586387)) s!2326)))))))

(declare-fun d!2083523 () Bool)

(assert (=> d!2083523 e!4019768))

(declare-fun c!1226771 () Bool)

(assert (=> d!2083523 (= c!1226771 ((_ is EmptyExpr!16511) (ite c!1226758 lt!2422877 (ite c!1226748 lt!2422925 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2423004 lt!2422950)) (regTwo!33534 r!7292))))))))

(assert (=> d!2083523 (= lt!2423053 e!4019772)))

(declare-fun c!1226770 () Bool)

(assert (=> d!2083523 (= c!1226770 (isEmpty!38018 (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 lt!2422851 call!586387)) s!2326))))))

(assert (=> d!2083523 (validRegex!8247 (ite c!1226758 lt!2422877 (ite c!1226748 lt!2422925 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2423004 lt!2422950)) (regTwo!33534 r!7292)))))))

(assert (=> d!2083523 (= (matchR!8694 (ite c!1226758 lt!2422877 (ite c!1226748 lt!2422925 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2423004 lt!2422950)) (regTwo!33534 r!7292)))) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 lt!2422851 call!586387)) s!2326))) lt!2423053)))

(declare-fun b!6647739 () Bool)

(assert (=> b!6647739 (= e!4019771 e!4019767)))

(declare-fun res!2723951 () Bool)

(assert (=> b!6647739 (=> res!2723951 e!4019767)))

(assert (=> b!6647739 (= res!2723951 call!586491)))

(assert (= (and d!2083523 c!1226770) b!6647741))

(assert (= (and d!2083523 (not c!1226770)) b!6647750))

(assert (= (and d!2083523 c!1226771) b!6647738))

(assert (= (and d!2083523 (not c!1226771)) b!6647740))

(assert (= (and b!6647740 c!1226769) b!6647746))

(assert (= (and b!6647740 (not c!1226769)) b!6647748))

(assert (= (and b!6647748 (not res!2723949)) b!6647742))

(assert (= (and b!6647742 res!2723955) b!6647747))

(assert (= (and b!6647747 res!2723952) b!6647749))

(assert (= (and b!6647749 res!2723954) b!6647745))

(assert (= (and b!6647742 (not res!2723950)) b!6647744))

(assert (= (and b!6647744 res!2723956) b!6647739))

(assert (= (and b!6647739 (not res!2723951)) b!6647737))

(assert (= (and b!6647737 (not res!2723953)) b!6647743))

(assert (= (or b!6647738 b!6647739 b!6647747) bm!586486))

(declare-fun m!7413502 () Bool)

(assert (=> b!6647750 m!7413502))

(assert (=> b!6647750 m!7413502))

(declare-fun m!7413504 () Bool)

(assert (=> b!6647750 m!7413504))

(declare-fun m!7413506 () Bool)

(assert (=> b!6647750 m!7413506))

(assert (=> b!6647750 m!7413504))

(assert (=> b!6647750 m!7413506))

(declare-fun m!7413508 () Bool)

(assert (=> b!6647750 m!7413508))

(assert (=> b!6647749 m!7413506))

(assert (=> b!6647749 m!7413506))

(declare-fun m!7413510 () Bool)

(assert (=> b!6647749 m!7413510))

(assert (=> b!6647737 m!7413506))

(assert (=> b!6647737 m!7413506))

(assert (=> b!6647737 m!7413510))

(declare-fun m!7413512 () Bool)

(assert (=> b!6647741 m!7413512))

(assert (=> b!6647745 m!7413502))

(declare-fun m!7413514 () Bool)

(assert (=> bm!586486 m!7413514))

(assert (=> d!2083523 m!7413514))

(declare-fun m!7413516 () Bool)

(assert (=> d!2083523 m!7413516))

(assert (=> b!6647743 m!7413502))

(assert (=> bm!586483 d!2083523))

(declare-fun b!6647773 () Bool)

(declare-fun e!4019791 () (InoxSet Context!11790))

(declare-fun call!586504 () (InoxSet Context!11790))

(declare-fun call!586509 () (InoxSet Context!11790))

(assert (=> b!6647773 (= e!4019791 ((_ map or) call!586504 call!586509))))

(declare-fun b!6647774 () Bool)

(declare-fun e!4019790 () (InoxSet Context!11790))

(assert (=> b!6647774 (= e!4019790 ((as const (Array Context!11790 Bool)) false))))

(declare-fun bm!586499 () Bool)

(declare-fun call!586506 () (InoxSet Context!11790))

(assert (=> bm!586499 (= call!586509 call!586506)))

(declare-fun b!6647775 () Bool)

(declare-fun c!1226784 () Bool)

(assert (=> b!6647775 (= c!1226784 ((_ is Star!16511) (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))))))

(declare-fun e!4019787 () (InoxSet Context!11790))

(assert (=> b!6647775 (= e!4019787 e!4019790)))

(declare-fun bm!586500 () Bool)

(declare-fun call!586505 () (InoxSet Context!11790))

(assert (=> bm!586500 (= call!586505 call!586509)))

(declare-fun b!6647776 () Bool)

(declare-fun e!4019786 () (InoxSet Context!11790))

(assert (=> b!6647776 (= e!4019786 ((_ map or) call!586506 call!586504))))

(declare-fun bm!586501 () Bool)

(declare-fun call!586508 () List!65833)

(declare-fun call!586507 () List!65833)

(assert (=> bm!586501 (= call!586508 call!586507)))

(declare-fun c!1226782 () Bool)

(declare-fun d!2083525 () Bool)

(assert (=> d!2083525 (= c!1226782 (and ((_ is ElementMatch!16511) (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))) (= (c!1226759 (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))) (h!72156 s!2326))))))

(declare-fun e!4019789 () (InoxSet Context!11790))

(assert (=> d!2083525 (= (derivationStepZipperDown!1759 (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (ite c!1226758 lt!2423045 lt!2422947) (h!72156 s!2326)) e!4019789)))

(declare-fun bm!586502 () Bool)

(declare-fun c!1226783 () Bool)

(declare-fun c!1226785 () Bool)

(declare-fun $colon$colon!2347 (List!65833 Regex!16511) List!65833)

(assert (=> bm!586502 (= call!586507 ($colon$colon!2347 (exprs!6395 (ite c!1226758 lt!2423045 lt!2422947)) (ite (or c!1226785 c!1226783) (regTwo!33534 (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))) (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))))))))

(declare-fun c!1226786 () Bool)

(declare-fun bm!586503 () Bool)

(assert (=> bm!586503 (= call!586506 (derivationStepZipperDown!1759 (ite c!1226786 (regOne!33535 (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))) (ite c!1226785 (regTwo!33534 (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))) (ite c!1226783 (regOne!33534 (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))) (reg!16840 (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))))))) (ite (or c!1226786 c!1226785) (ite c!1226758 lt!2423045 lt!2422947) (Context!11791 call!586508)) (h!72156 s!2326)))))

(declare-fun b!6647777 () Bool)

(assert (=> b!6647777 (= e!4019791 e!4019787)))

(assert (=> b!6647777 (= c!1226783 ((_ is Concat!25356) (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))))))

(declare-fun bm!586504 () Bool)

(assert (=> bm!586504 (= call!586504 (derivationStepZipperDown!1759 (ite c!1226786 (regTwo!33535 (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))) (regOne!33534 (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))))) (ite c!1226786 (ite c!1226758 lt!2423045 lt!2422947) (Context!11791 call!586507)) (h!72156 s!2326)))))

(declare-fun b!6647778 () Bool)

(declare-fun e!4019788 () Bool)

(assert (=> b!6647778 (= c!1226785 e!4019788)))

(declare-fun res!2723959 () Bool)

(assert (=> b!6647778 (=> (not res!2723959) (not e!4019788))))

(assert (=> b!6647778 (= res!2723959 ((_ is Concat!25356) (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))))))

(assert (=> b!6647778 (= e!4019786 e!4019791)))

(declare-fun b!6647779 () Bool)

(assert (=> b!6647779 (= e!4019788 (nullable!6504 (regOne!33534 (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))))))))

(declare-fun b!6647780 () Bool)

(assert (=> b!6647780 (= e!4019789 (store ((as const (Array Context!11790 Bool)) false) (ite c!1226758 lt!2423045 lt!2422947) true))))

(declare-fun b!6647781 () Bool)

(assert (=> b!6647781 (= e!4019787 call!586505)))

(declare-fun b!6647782 () Bool)

(assert (=> b!6647782 (= e!4019789 e!4019786)))

(assert (=> b!6647782 (= c!1226786 ((_ is Union!16511) (ite c!1226758 (regTwo!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))))))

(declare-fun b!6647783 () Bool)

(assert (=> b!6647783 (= e!4019790 call!586505)))

(assert (= (and d!2083525 c!1226782) b!6647780))

(assert (= (and d!2083525 (not c!1226782)) b!6647782))

(assert (= (and b!6647782 c!1226786) b!6647776))

(assert (= (and b!6647782 (not c!1226786)) b!6647778))

(assert (= (and b!6647778 res!2723959) b!6647779))

(assert (= (and b!6647778 c!1226785) b!6647773))

(assert (= (and b!6647778 (not c!1226785)) b!6647777))

(assert (= (and b!6647777 c!1226783) b!6647781))

(assert (= (and b!6647777 (not c!1226783)) b!6647775))

(assert (= (and b!6647775 c!1226784) b!6647783))

(assert (= (and b!6647775 (not c!1226784)) b!6647774))

(assert (= (or b!6647781 b!6647783) bm!586501))

(assert (= (or b!6647781 b!6647783) bm!586500))

(assert (= (or b!6647773 bm!586501) bm!586502))

(assert (= (or b!6647773 bm!586500) bm!586499))

(assert (= (or b!6647776 b!6647773) bm!586504))

(assert (= (or b!6647776 bm!586499) bm!586503))

(declare-fun m!7413518 () Bool)

(assert (=> bm!586504 m!7413518))

(declare-fun m!7413520 () Bool)

(assert (=> bm!586503 m!7413520))

(declare-fun m!7413522 () Bool)

(assert (=> b!6647780 m!7413522))

(declare-fun m!7413524 () Bool)

(assert (=> bm!586502 m!7413524))

(declare-fun m!7413526 () Bool)

(assert (=> b!6647779 m!7413526))

(assert (=> bm!586452 d!2083525))

(declare-fun d!2083527 () Bool)

(declare-fun lt!2423056 () Regex!16511)

(assert (=> d!2083527 (validRegex!8247 lt!2423056)))

(assert (=> d!2083527 (= lt!2423056 (generalisedUnion!2355 (unfocusZipperList!1932 zl!343)))))

(assert (=> d!2083527 (= (unfocusZipper!2253 zl!343) lt!2423056)))

(declare-fun bs!1711171 () Bool)

(assert (= bs!1711171 d!2083527))

(declare-fun m!7413528 () Bool)

(assert (=> bs!1711171 m!7413528))

(assert (=> bs!1711171 m!7413372))

(assert (=> bs!1711171 m!7413372))

(assert (=> bs!1711171 m!7413374))

(assert (=> b!6647643 d!2083527))

(declare-fun d!2083529 () Bool)

(assert (=> d!2083529 (matchR!8694 (Star!16511 (reg!16840 (regOne!33534 r!7292))) (++!14664 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422896))))))

(declare-fun lt!2423059 () Unit!159453)

(declare-fun choose!49676 (Regex!16511 List!65832 List!65832) Unit!159453)

(assert (=> d!2083529 (= lt!2423059 (choose!49676 (reg!16840 (regOne!33534 r!7292)) (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422896))))))

(assert (=> d!2083529 (validRegex!8247 (Star!16511 (reg!16840 (regOne!33534 r!7292))))))

(assert (=> d!2083529 (= (lemmaStarApp!158 (reg!16840 (regOne!33534 r!7292)) (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422896))) lt!2423059)))

(declare-fun bs!1711172 () Bool)

(assert (= bs!1711172 d!2083529))

(declare-fun m!7413530 () Bool)

(assert (=> bs!1711172 m!7413530))

(assert (=> bs!1711172 m!7413530))

(declare-fun m!7413532 () Bool)

(assert (=> bs!1711172 m!7413532))

(declare-fun m!7413534 () Bool)

(assert (=> bs!1711172 m!7413534))

(declare-fun m!7413536 () Bool)

(assert (=> bs!1711172 m!7413536))

(assert (=> bm!586302 d!2083529))

(declare-fun d!2083531 () Bool)

(declare-fun e!4019794 () Bool)

(assert (=> d!2083531 (= (matchZipper!2523 ((_ map or) (ite c!1226758 lt!2422928 (ite c!1226748 lt!2422934 lt!2423006)) (ite c!1226758 lt!2423000 (ite c!1226748 lt!2422876 lt!2423000))) (t!379501 s!2326)) e!4019794)))

(declare-fun res!2723962 () Bool)

(assert (=> d!2083531 (=> res!2723962 e!4019794)))

(assert (=> d!2083531 (= res!2723962 (matchZipper!2523 (ite c!1226758 lt!2422928 (ite c!1226748 lt!2422934 lt!2423006)) (t!379501 s!2326)))))

(declare-fun lt!2423062 () Unit!159453)

(declare-fun choose!49677 ((InoxSet Context!11790) (InoxSet Context!11790) List!65832) Unit!159453)

(assert (=> d!2083531 (= lt!2423062 (choose!49677 (ite c!1226758 lt!2422928 (ite c!1226748 lt!2422934 lt!2423006)) (ite c!1226758 lt!2423000 (ite c!1226748 lt!2422876 lt!2423000)) (t!379501 s!2326)))))

(assert (=> d!2083531 (= (lemmaZipperConcatMatchesSameAsBothZippers!1342 (ite c!1226758 lt!2422928 (ite c!1226748 lt!2422934 lt!2423006)) (ite c!1226758 lt!2423000 (ite c!1226748 lt!2422876 lt!2423000)) (t!379501 s!2326)) lt!2423062)))

(declare-fun b!6647786 () Bool)

(assert (=> b!6647786 (= e!4019794 (matchZipper!2523 (ite c!1226758 lt!2423000 (ite c!1226748 lt!2422876 lt!2423000)) (t!379501 s!2326)))))

(assert (= (and d!2083531 (not res!2723962)) b!6647786))

(declare-fun m!7413538 () Bool)

(assert (=> d!2083531 m!7413538))

(declare-fun m!7413540 () Bool)

(assert (=> d!2083531 m!7413540))

(declare-fun m!7413542 () Bool)

(assert (=> d!2083531 m!7413542))

(declare-fun m!7413544 () Bool)

(assert (=> b!6647786 m!7413544))

(assert (=> bm!586350 d!2083531))

(declare-fun b!6647787 () Bool)

(declare-fun res!2723967 () Bool)

(declare-fun e!4019795 () Bool)

(assert (=> b!6647787 (=> res!2723967 e!4019795)))

(assert (=> b!6647787 (= res!2723967 (not (isEmpty!38018 (tail!12548 (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422900) (ite c!1226757 lt!2422988 s!2326)) s!2326))))))))

(declare-fun b!6647788 () Bool)

(declare-fun e!4019796 () Bool)

(declare-fun lt!2423063 () Bool)

(declare-fun call!586510 () Bool)

(assert (=> b!6647788 (= e!4019796 (= lt!2423063 call!586510))))

(declare-fun b!6647790 () Bool)

(declare-fun e!4019797 () Bool)

(assert (=> b!6647790 (= e!4019796 e!4019797)))

(declare-fun c!1226787 () Bool)

(assert (=> b!6647790 (= c!1226787 ((_ is EmptyLang!16511) (ite c!1226755 (Concat!25356 (regOne!33534 r!7292) lt!2422956) (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2423004) (ite c!1226757 lt!2422950 lt!2422905)) (ite c!1226747 (regOne!33534 r!7292) (regTwo!33534 r!7292))))))))

(declare-fun e!4019800 () Bool)

(declare-fun b!6647791 () Bool)

(assert (=> b!6647791 (= e!4019800 (nullable!6504 (ite c!1226755 (Concat!25356 (regOne!33534 r!7292) lt!2422956) (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2423004) (ite c!1226757 lt!2422950 lt!2422905)) (ite c!1226747 (regOne!33534 r!7292) (regTwo!33534 r!7292))))))))

(declare-fun b!6647792 () Bool)

(declare-fun res!2723964 () Bool)

(declare-fun e!4019801 () Bool)

(assert (=> b!6647792 (=> res!2723964 e!4019801)))

(declare-fun e!4019798 () Bool)

(assert (=> b!6647792 (= res!2723964 e!4019798)))

(declare-fun res!2723969 () Bool)

(assert (=> b!6647792 (=> (not res!2723969) (not e!4019798))))

(assert (=> b!6647792 (= res!2723969 lt!2423063)))

(declare-fun b!6647793 () Bool)

(assert (=> b!6647793 (= e!4019795 (not (= (head!13463 (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422900) (ite c!1226757 lt!2422988 s!2326)) s!2326))) (c!1226759 (ite c!1226755 (Concat!25356 (regOne!33534 r!7292) lt!2422956) (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2423004) (ite c!1226757 lt!2422950 lt!2422905)) (ite c!1226747 (regOne!33534 r!7292) (regTwo!33534 r!7292))))))))))

(declare-fun b!6647794 () Bool)

(declare-fun e!4019799 () Bool)

(assert (=> b!6647794 (= e!4019801 e!4019799)))

(declare-fun res!2723970 () Bool)

(assert (=> b!6647794 (=> (not res!2723970) (not e!4019799))))

(assert (=> b!6647794 (= res!2723970 (not lt!2423063))))

(declare-fun b!6647795 () Bool)

(assert (=> b!6647795 (= e!4019798 (= (head!13463 (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422900) (ite c!1226757 lt!2422988 s!2326)) s!2326))) (c!1226759 (ite c!1226755 (Concat!25356 (regOne!33534 r!7292) lt!2422956) (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2423004) (ite c!1226757 lt!2422950 lt!2422905)) (ite c!1226747 (regOne!33534 r!7292) (regTwo!33534 r!7292)))))))))

(declare-fun bm!586505 () Bool)

(assert (=> bm!586505 (= call!586510 (isEmpty!38018 (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422900) (ite c!1226757 lt!2422988 s!2326)) s!2326))))))

(declare-fun b!6647796 () Bool)

(assert (=> b!6647796 (= e!4019797 (not lt!2423063))))

(declare-fun b!6647797 () Bool)

(declare-fun res!2723966 () Bool)

(assert (=> b!6647797 (=> (not res!2723966) (not e!4019798))))

(assert (=> b!6647797 (= res!2723966 (not call!586510))))

(declare-fun b!6647798 () Bool)

(declare-fun res!2723963 () Bool)

(assert (=> b!6647798 (=> res!2723963 e!4019801)))

(assert (=> b!6647798 (= res!2723963 (not ((_ is ElementMatch!16511) (ite c!1226755 (Concat!25356 (regOne!33534 r!7292) lt!2422956) (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2423004) (ite c!1226757 lt!2422950 lt!2422905)) (ite c!1226747 (regOne!33534 r!7292) (regTwo!33534 r!7292)))))))))

(assert (=> b!6647798 (= e!4019797 e!4019801)))

(declare-fun b!6647799 () Bool)

(declare-fun res!2723968 () Bool)

(assert (=> b!6647799 (=> (not res!2723968) (not e!4019798))))

(assert (=> b!6647799 (= res!2723968 (isEmpty!38018 (tail!12548 (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422900) (ite c!1226757 lt!2422988 s!2326)) s!2326)))))))

(declare-fun b!6647800 () Bool)

(assert (=> b!6647800 (= e!4019800 (matchR!8694 (derivativeStep!5190 (ite c!1226755 (Concat!25356 (regOne!33534 r!7292) lt!2422956) (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2423004) (ite c!1226757 lt!2422950 lt!2422905)) (ite c!1226747 (regOne!33534 r!7292) (regTwo!33534 r!7292)))) (head!13463 (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422900) (ite c!1226757 lt!2422988 s!2326)) s!2326)))) (tail!12548 (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422900) (ite c!1226757 lt!2422988 s!2326)) s!2326)))))))

(declare-fun d!2083533 () Bool)

(assert (=> d!2083533 e!4019796))

(declare-fun c!1226789 () Bool)

(assert (=> d!2083533 (= c!1226789 ((_ is EmptyExpr!16511) (ite c!1226755 (Concat!25356 (regOne!33534 r!7292) lt!2422956) (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2423004) (ite c!1226757 lt!2422950 lt!2422905)) (ite c!1226747 (regOne!33534 r!7292) (regTwo!33534 r!7292))))))))

(assert (=> d!2083533 (= lt!2423063 e!4019800)))

(declare-fun c!1226788 () Bool)

(assert (=> d!2083533 (= c!1226788 (isEmpty!38018 (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422900) (ite c!1226757 lt!2422988 s!2326)) s!2326))))))

(assert (=> d!2083533 (validRegex!8247 (ite c!1226755 (Concat!25356 (regOne!33534 r!7292) lt!2422956) (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2423004) (ite c!1226757 lt!2422950 lt!2422905)) (ite c!1226747 (regOne!33534 r!7292) (regTwo!33534 r!7292)))))))

(assert (=> d!2083533 (= (matchR!8694 (ite c!1226755 (Concat!25356 (regOne!33534 r!7292) lt!2422956) (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2423004) (ite c!1226757 lt!2422950 lt!2422905)) (ite c!1226747 (regOne!33534 r!7292) (regTwo!33534 r!7292)))) (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422900) (ite c!1226757 lt!2422988 s!2326)) s!2326))) lt!2423063)))

(declare-fun b!6647789 () Bool)

(assert (=> b!6647789 (= e!4019799 e!4019795)))

(declare-fun res!2723965 () Bool)

(assert (=> b!6647789 (=> res!2723965 e!4019795)))

(assert (=> b!6647789 (= res!2723965 call!586510)))

(assert (= (and d!2083533 c!1226788) b!6647791))

(assert (= (and d!2083533 (not c!1226788)) b!6647800))

(assert (= (and d!2083533 c!1226789) b!6647788))

(assert (= (and d!2083533 (not c!1226789)) b!6647790))

(assert (= (and b!6647790 c!1226787) b!6647796))

(assert (= (and b!6647790 (not c!1226787)) b!6647798))

(assert (= (and b!6647798 (not res!2723963)) b!6647792))

(assert (= (and b!6647792 res!2723969) b!6647797))

(assert (= (and b!6647797 res!2723966) b!6647799))

(assert (= (and b!6647799 res!2723968) b!6647795))

(assert (= (and b!6647792 (not res!2723964)) b!6647794))

(assert (= (and b!6647794 res!2723970) b!6647789))

(assert (= (and b!6647789 (not res!2723965)) b!6647787))

(assert (= (and b!6647787 (not res!2723967)) b!6647793))

(assert (= (or b!6647788 b!6647789 b!6647797) bm!586505))

(declare-fun m!7413546 () Bool)

(assert (=> b!6647800 m!7413546))

(assert (=> b!6647800 m!7413546))

(declare-fun m!7413548 () Bool)

(assert (=> b!6647800 m!7413548))

(declare-fun m!7413550 () Bool)

(assert (=> b!6647800 m!7413550))

(assert (=> b!6647800 m!7413548))

(assert (=> b!6647800 m!7413550))

(declare-fun m!7413552 () Bool)

(assert (=> b!6647800 m!7413552))

(assert (=> b!6647799 m!7413550))

(assert (=> b!6647799 m!7413550))

(declare-fun m!7413554 () Bool)

(assert (=> b!6647799 m!7413554))

(assert (=> b!6647787 m!7413550))

(assert (=> b!6647787 m!7413550))

(assert (=> b!6647787 m!7413554))

(declare-fun m!7413556 () Bool)

(assert (=> b!6647791 m!7413556))

(assert (=> b!6647795 m!7413546))

(declare-fun m!7413558 () Bool)

(assert (=> bm!586505 m!7413558))

(assert (=> d!2083533 m!7413558))

(declare-fun m!7413560 () Bool)

(assert (=> d!2083533 m!7413560))

(assert (=> b!6647793 m!7413546))

(assert (=> bm!586414 d!2083533))

(declare-fun d!2083535 () Bool)

(declare-fun c!1226792 () Bool)

(assert (=> d!2083535 (= c!1226792 (isEmpty!38018 (ite c!1226758 (t!379501 s!2326) s!2326)))))

(declare-fun e!4019804 () Bool)

(assert (=> d!2083535 (= (matchZipper!2523 (ite c!1226758 lt!2422928 (ite c!1226748 lt!2423036 z!1189)) (ite c!1226758 (t!379501 s!2326) s!2326)) e!4019804)))

(declare-fun b!6647805 () Bool)

(declare-fun nullableZipper!2251 ((InoxSet Context!11790)) Bool)

(assert (=> b!6647805 (= e!4019804 (nullableZipper!2251 (ite c!1226758 lt!2422928 (ite c!1226748 lt!2423036 z!1189))))))

(declare-fun b!6647806 () Bool)

(assert (=> b!6647806 (= e!4019804 (matchZipper!2523 (derivationStepZipper!2477 (ite c!1226758 lt!2422928 (ite c!1226748 lt!2423036 z!1189)) (head!13463 (ite c!1226758 (t!379501 s!2326) s!2326))) (tail!12548 (ite c!1226758 (t!379501 s!2326) s!2326))))))

(assert (= (and d!2083535 c!1226792) b!6647805))

(assert (= (and d!2083535 (not c!1226792)) b!6647806))

(declare-fun m!7413562 () Bool)

(assert (=> d!2083535 m!7413562))

(declare-fun m!7413564 () Bool)

(assert (=> b!6647805 m!7413564))

(declare-fun m!7413566 () Bool)

(assert (=> b!6647806 m!7413566))

(assert (=> b!6647806 m!7413566))

(declare-fun m!7413568 () Bool)

(assert (=> b!6647806 m!7413568))

(declare-fun m!7413570 () Bool)

(assert (=> b!6647806 m!7413570))

(assert (=> b!6647806 m!7413568))

(assert (=> b!6647806 m!7413570))

(declare-fun m!7413572 () Bool)

(assert (=> b!6647806 m!7413572))

(assert (=> bm!586378 d!2083535))

(declare-fun bs!1711173 () Bool)

(declare-fun b!6647847 () Bool)

(assert (= bs!1711173 (and b!6647847 b!6647636)))

(declare-fun lambda!371962 () Int)

(assert (=> bs!1711173 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) Nil!65708) (= (reg!16840 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))) lt!2422860)) (= lambda!371962 lambda!371954))))

(declare-fun bs!1711174 () Bool)

(assert (= bs!1711174 (and b!6647847 b!6647623)))

(assert (=> bs!1711174 (not (= lambda!371962 lambda!371934))))

(declare-fun bs!1711175 () Bool)

(assert (= bs!1711175 (and b!6647847 b!6647652)))

(assert (=> bs!1711175 (not (= lambda!371962 lambda!371943))))

(declare-fun bs!1711176 () Bool)

(assert (= bs!1711176 (and b!6647847 b!6647657)))

(assert (=> bs!1711176 (not (= lambda!371962 lambda!371949))))

(declare-fun bs!1711177 () Bool)

(assert (= bs!1711177 (and b!6647847 b!6647624)))

(assert (=> bs!1711177 (not (= lambda!371962 lambda!371937))))

(declare-fun bs!1711178 () Bool)

(assert (= bs!1711178 (and b!6647847 b!6647663)))

(assert (=> bs!1711178 (not (= lambda!371962 lambda!371928))))

(assert (=> bs!1711174 (not (= lambda!371962 lambda!371933))))

(assert (=> bs!1711176 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) (_1!36793 lt!2423008)) (= (reg!16840 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))) lt!2422860)) (= lambda!371962 lambda!371951))))

(assert (=> bs!1711176 (not (= lambda!371962 lambda!371950))))

(assert (=> bs!1711178 (not (= lambda!371962 lambda!371929))))

(assert (=> bs!1711174 (not (= lambda!371962 lambda!371931))))

(assert (=> bs!1711175 (not (= lambda!371962 lambda!371941))))

(assert (=> bs!1711177 (not (= lambda!371962 lambda!371935))))

(assert (=> bs!1711173 (not (= lambda!371962 lambda!371952))))

(declare-fun bs!1711179 () Bool)

(assert (= bs!1711179 (and b!6647847 b!6647651)))

(assert (=> bs!1711179 (not (= lambda!371962 lambda!371940))))

(assert (=> bs!1711176 (not (= lambda!371962 lambda!371948))))

(assert (=> bs!1711177 (not (= lambda!371962 lambda!371936))))

(assert (=> bs!1711176 (not (= lambda!371962 lambda!371947))))

(assert (=> bs!1711177 (not (= lambda!371962 lambda!371938))))

(assert (=> bs!1711173 (not (= lambda!371962 lambda!371953))))

(assert (=> bs!1711174 (not (= lambda!371962 lambda!371932))))

(assert (=> bs!1711179 (not (= lambda!371962 lambda!371939))))

(assert (=> bs!1711175 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) (_1!36793 lt!2423042)) (= (reg!16840 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))) lt!2422860)) (= lambda!371962 lambda!371942))))

(assert (=> b!6647847 true))

(assert (=> b!6647847 true))

(declare-fun bs!1711180 () Bool)

(declare-fun b!6647844 () Bool)

(assert (= bs!1711180 (and b!6647844 b!6647636)))

(declare-fun lambda!371963 () Int)

(assert (=> bs!1711180 (not (= lambda!371963 lambda!371954))))

(declare-fun bs!1711181 () Bool)

(assert (= bs!1711181 (and b!6647844 b!6647623)))

(assert (=> bs!1711181 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) lt!2422859)) (= lambda!371963 lambda!371934))))

(declare-fun bs!1711182 () Bool)

(assert (= bs!1711182 (and b!6647844 b!6647652)))

(assert (=> bs!1711182 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) (_1!36793 lt!2423042)) (= (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) lt!2422860)) (= lambda!371963 lambda!371943))))

(declare-fun bs!1711183 () Bool)

(assert (= bs!1711183 (and b!6647844 b!6647657)))

(assert (=> bs!1711183 (not (= lambda!371963 lambda!371949))))

(declare-fun bs!1711184 () Bool)

(assert (= bs!1711184 (and b!6647844 b!6647624)))

(assert (=> bs!1711184 (not (= lambda!371963 lambda!371937))))

(declare-fun bs!1711185 () Bool)

(assert (= bs!1711185 (and b!6647844 b!6647663)))

(assert (=> bs!1711185 (not (= lambda!371963 lambda!371928))))

(assert (=> bs!1711181 (not (= lambda!371963 lambda!371933))))

(assert (=> bs!1711183 (not (= lambda!371963 lambda!371951))))

(declare-fun bs!1711186 () Bool)

(assert (= bs!1711186 (and b!6647844 b!6647847)))

(assert (=> bs!1711186 (not (= lambda!371963 lambda!371962))))

(assert (=> bs!1711183 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) (_1!36793 lt!2423008)) (= (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) lt!2422860)) (= lambda!371963 lambda!371950))))

(assert (=> bs!1711185 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (regOne!33534 r!7292)) (= (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (regTwo!33534 r!7292))) (= lambda!371963 lambda!371929))))

(assert (=> bs!1711181 (not (= lambda!371963 lambda!371931))))

(assert (=> bs!1711182 (not (= lambda!371963 lambda!371941))))

(assert (=> bs!1711184 (not (= lambda!371963 lambda!371935))))

(assert (=> bs!1711180 (not (= lambda!371963 lambda!371952))))

(declare-fun bs!1711187 () Bool)

(assert (= bs!1711187 (and b!6647844 b!6647651)))

(assert (=> bs!1711187 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) lt!2422860) (= (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (regTwo!33534 r!7292))) (= lambda!371963 lambda!371940))))

(assert (=> bs!1711183 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) lt!2422944) (= (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (regTwo!33534 r!7292))) (= lambda!371963 lambda!371948))))

(assert (=> bs!1711184 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) lt!2422957)) (= lambda!371963 lambda!371936))))

(assert (=> bs!1711183 (not (= lambda!371963 lambda!371947))))

(assert (=> bs!1711184 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) lt!2422956)) (= lambda!371963 lambda!371938))))

(assert (=> bs!1711180 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) Nil!65708) (= (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) lt!2422860)) (= lambda!371963 lambda!371953))))

(assert (=> bs!1711181 (= (and (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) lt!2423021)) (= lambda!371963 lambda!371932))))

(assert (=> bs!1711187 (not (= lambda!371963 lambda!371939))))

(assert (=> bs!1711182 (not (= lambda!371963 lambda!371942))))

(assert (=> b!6647844 true))

(assert (=> b!6647844 true))

(declare-fun b!6647839 () Bool)

(declare-fun c!1226802 () Bool)

(assert (=> b!6647839 (= c!1226802 ((_ is ElementMatch!16511) (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))))))

(declare-fun e!4019827 () Bool)

(declare-fun e!4019824 () Bool)

(assert (=> b!6647839 (= e!4019827 e!4019824)))

(declare-fun call!586516 () Bool)

(declare-fun bm!586510 () Bool)

(assert (=> bm!586510 (= call!586516 (isEmpty!38018 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))))))

(declare-fun b!6647840 () Bool)

(declare-fun c!1226804 () Bool)

(assert (=> b!6647840 (= c!1226804 ((_ is Union!16511) (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))))))

(declare-fun e!4019825 () Bool)

(assert (=> b!6647840 (= e!4019824 e!4019825)))

(declare-fun b!6647841 () Bool)

(declare-fun e!4019829 () Bool)

(assert (=> b!6647841 (= e!4019825 e!4019829)))

(declare-fun res!2723988 () Bool)

(assert (=> b!6647841 (= res!2723988 (matchRSpec!3612 (regOne!33535 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))))))

(assert (=> b!6647841 (=> res!2723988 e!4019829)))

(declare-fun b!6647842 () Bool)

(declare-fun e!4019826 () Bool)

(assert (=> b!6647842 (= e!4019826 call!586516)))

(declare-fun b!6647843 () Bool)

(assert (=> b!6647843 (= e!4019829 (matchRSpec!3612 (regTwo!33535 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))))))

(declare-fun e!4019823 () Bool)

(declare-fun call!586515 () Bool)

(assert (=> b!6647844 (= e!4019823 call!586515)))

(declare-fun b!6647845 () Bool)

(assert (=> b!6647845 (= e!4019825 e!4019823)))

(declare-fun c!1226801 () Bool)

(assert (=> b!6647845 (= c!1226801 ((_ is Star!16511) (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))))))

(declare-fun bm!586511 () Bool)

(assert (=> bm!586511 (= call!586515 (Exists!3581 (ite c!1226801 lambda!371962 lambda!371963)))))

(declare-fun b!6647846 () Bool)

(declare-fun res!2723989 () Bool)

(declare-fun e!4019828 () Bool)

(assert (=> b!6647846 (=> res!2723989 e!4019828)))

(assert (=> b!6647846 (= res!2723989 call!586516)))

(assert (=> b!6647846 (= e!4019823 e!4019828)))

(assert (=> b!6647847 (= e!4019828 call!586515)))

(declare-fun d!2083537 () Bool)

(declare-fun c!1226803 () Bool)

(assert (=> d!2083537 (= c!1226803 ((_ is EmptyExpr!16511) (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))))))

(assert (=> d!2083537 (= (matchRSpec!3612 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) e!4019826)))

(declare-fun b!6647848 () Bool)

(assert (=> b!6647848 (= e!4019826 e!4019827)))

(declare-fun res!2723987 () Bool)

(assert (=> b!6647848 (= res!2723987 (not ((_ is EmptyLang!16511) (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))))))

(assert (=> b!6647848 (=> (not res!2723987) (not e!4019827))))

(declare-fun b!6647849 () Bool)

(assert (=> b!6647849 (= e!4019824 (= (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326)) (Cons!65708 (c!1226759 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))) Nil!65708)))))

(assert (= (and d!2083537 c!1226803) b!6647842))

(assert (= (and d!2083537 (not c!1226803)) b!6647848))

(assert (= (and b!6647848 res!2723987) b!6647839))

(assert (= (and b!6647839 c!1226802) b!6647849))

(assert (= (and b!6647839 (not c!1226802)) b!6647840))

(assert (= (and b!6647840 c!1226804) b!6647841))

(assert (= (and b!6647840 (not c!1226804)) b!6647845))

(assert (= (and b!6647841 (not res!2723988)) b!6647843))

(assert (= (and b!6647845 c!1226801) b!6647846))

(assert (= (and b!6647845 (not c!1226801)) b!6647844))

(assert (= (and b!6647846 (not res!2723989)) b!6647847))

(assert (= (or b!6647847 b!6647844) bm!586511))

(assert (= (or b!6647842 b!6647846) bm!586510))

(declare-fun m!7413574 () Bool)

(assert (=> bm!586510 m!7413574))

(declare-fun m!7413576 () Bool)

(assert (=> b!6647841 m!7413576))

(declare-fun m!7413578 () Bool)

(assert (=> b!6647843 m!7413578))

(declare-fun m!7413580 () Bool)

(assert (=> bm!586511 m!7413580))

(assert (=> bm!586299 d!2083537))

(declare-fun bs!1711188 () Bool)

(declare-fun d!2083539 () Bool)

(assert (= bs!1711188 (and d!2083539 b!6647652)))

(declare-fun lambda!371966 () Int)

(assert (=> bs!1711188 (= lambda!371966 lambda!371944)))

(declare-fun bs!1711189 () Bool)

(assert (= bs!1711189 (and d!2083539 b!6647657)))

(assert (=> bs!1711189 (= lambda!371966 lambda!371946)))

(declare-fun bs!1711190 () Bool)

(assert (= bs!1711190 (and d!2083539 d!2083521)))

(assert (=> bs!1711190 (= lambda!371966 lambda!371957)))

(assert (=> d!2083539 (matchZipper!2523 (store ((as const (Array Context!11790 Bool)) false) (Context!11791 (++!14665 (exprs!6395 lt!2423023) (exprs!6395 lt!2422873))) true) (++!14664 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)) (ite c!1226752 lt!2422854 (_2!36793 lt!2422848))))))

(declare-fun lt!2423069 () Unit!159453)

(assert (=> d!2083539 (= lt!2423069 (lemmaConcatPreservesForall!424 (exprs!6395 lt!2423023) (exprs!6395 lt!2422873) lambda!371966))))

(declare-fun lt!2423068 () Unit!159453)

(declare-fun choose!49678 (Context!11790 Context!11790 List!65832 List!65832) Unit!159453)

(assert (=> d!2083539 (= lt!2423068 (choose!49678 lt!2423023 lt!2422873 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)) (ite c!1226752 lt!2422854 (_2!36793 lt!2422848))))))

(assert (=> d!2083539 (matchZipper!2523 (store ((as const (Array Context!11790 Bool)) false) lt!2423023 true) (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)))))

(assert (=> d!2083539 (= (lemmaConcatenateContextMatchesConcatOfStrings!232 lt!2423023 lt!2422873 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)) (ite c!1226752 lt!2422854 (_2!36793 lt!2422848))) lt!2423068)))

(declare-fun bs!1711191 () Bool)

(assert (= bs!1711191 d!2083539))

(declare-fun m!7413582 () Bool)

(assert (=> bs!1711191 m!7413582))

(declare-fun m!7413584 () Bool)

(assert (=> bs!1711191 m!7413584))

(declare-fun m!7413586 () Bool)

(assert (=> bs!1711191 m!7413586))

(declare-fun m!7413588 () Bool)

(assert (=> bs!1711191 m!7413588))

(declare-fun m!7413590 () Bool)

(assert (=> bs!1711191 m!7413590))

(assert (=> bs!1711191 m!7413410))

(declare-fun m!7413592 () Bool)

(assert (=> bs!1711191 m!7413592))

(assert (=> bs!1711191 m!7413586))

(assert (=> bs!1711191 m!7413582))

(declare-fun m!7413594 () Bool)

(assert (=> bs!1711191 m!7413594))

(assert (=> bs!1711191 m!7413410))

(assert (=> bm!586347 d!2083539))

(declare-fun d!2083541 () Bool)

(assert (=> d!2083541 (matchR!8694 (Concat!25356 lt!2422860 (regTwo!33534 r!7292)) (++!14664 (ite c!1226752 (_2!36793 lt!2422864) (ite c!1226757 lt!2422891 Nil!65708)) (ite c!1226752 (_2!36793 lt!2423042) (ite c!1226757 (_2!36793 lt!2423008) s!2326))))))

(declare-fun lt!2423072 () Unit!159453)

(declare-fun choose!49679 (Regex!16511 Regex!16511 List!65832 List!65832) Unit!159453)

(assert (=> d!2083541 (= lt!2423072 (choose!49679 lt!2422860 (regTwo!33534 r!7292) (ite c!1226752 (_2!36793 lt!2422864) (ite c!1226757 lt!2422891 Nil!65708)) (ite c!1226752 (_2!36793 lt!2423042) (ite c!1226757 (_2!36793 lt!2423008) s!2326))))))

(declare-fun e!4019832 () Bool)

(assert (=> d!2083541 e!4019832))

(declare-fun res!2723992 () Bool)

(assert (=> d!2083541 (=> (not res!2723992) (not e!4019832))))

(assert (=> d!2083541 (= res!2723992 (validRegex!8247 lt!2422860))))

(assert (=> d!2083541 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!372 lt!2422860 (regTwo!33534 r!7292) (ite c!1226752 (_2!36793 lt!2422864) (ite c!1226757 lt!2422891 Nil!65708)) (ite c!1226752 (_2!36793 lt!2423042) (ite c!1226757 (_2!36793 lt!2423008) s!2326))) lt!2423072)))

(declare-fun b!6647852 () Bool)

(assert (=> b!6647852 (= e!4019832 (validRegex!8247 (regTwo!33534 r!7292)))))

(assert (= (and d!2083541 res!2723992) b!6647852))

(declare-fun m!7413596 () Bool)

(assert (=> d!2083541 m!7413596))

(assert (=> d!2083541 m!7413596))

(declare-fun m!7413598 () Bool)

(assert (=> d!2083541 m!7413598))

(declare-fun m!7413600 () Bool)

(assert (=> d!2083541 m!7413600))

(declare-fun m!7413602 () Bool)

(assert (=> d!2083541 m!7413602))

(declare-fun m!7413604 () Bool)

(assert (=> b!6647852 m!7413604))

(assert (=> bm!586392 d!2083541))

(declare-fun b!6647871 () Bool)

(declare-fun e!4019846 () Option!16402)

(declare-fun e!4019844 () Option!16402)

(assert (=> b!6647871 (= e!4019846 e!4019844)))

(declare-fun c!1226810 () Bool)

(assert (=> b!6647871 (= c!1226810 ((_ is Nil!65708) (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)))))

(declare-fun b!6647872 () Bool)

(assert (=> b!6647872 (= e!4019846 (Some!16401 (tuple2!66981 Nil!65708 (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708))))))

(declare-fun b!6647873 () Bool)

(declare-fun res!2724005 () Bool)

(declare-fun e!4019845 () Bool)

(assert (=> b!6647873 (=> (not res!2724005) (not e!4019845))))

(declare-fun lt!2423079 () Option!16402)

(assert (=> b!6647873 (= res!2724005 (matchR!8694 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422957 (ite (or c!1226752 c!1226757) (regTwo!33534 r!7292) lt!2422860))) (_2!36793 (get!22848 lt!2423079))))))

(declare-fun b!6647874 () Bool)

(assert (=> b!6647874 (= e!4019844 None!16401)))

(declare-fun b!6647876 () Bool)

(declare-fun e!4019843 () Bool)

(assert (=> b!6647876 (= e!4019843 (not (isDefined!13105 lt!2423079)))))

(declare-fun b!6647877 () Bool)

(declare-fun e!4019847 () Bool)

(assert (=> b!6647877 (= e!4019847 (matchR!8694 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422957 (ite (or c!1226752 c!1226757) (regTwo!33534 r!7292) lt!2422860))) (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)))))

(declare-fun d!2083543 () Bool)

(assert (=> d!2083543 e!4019843))

(declare-fun res!2724007 () Bool)

(assert (=> d!2083543 (=> res!2724007 e!4019843)))

(assert (=> d!2083543 (= res!2724007 e!4019845)))

(declare-fun res!2724004 () Bool)

(assert (=> d!2083543 (=> (not res!2724004) (not e!4019845))))

(assert (=> d!2083543 (= res!2724004 (isDefined!13105 lt!2423079))))

(assert (=> d!2083543 (= lt!2423079 e!4019846)))

(declare-fun c!1226809 () Bool)

(assert (=> d!2083543 (= c!1226809 e!4019847)))

(declare-fun res!2724006 () Bool)

(assert (=> d!2083543 (=> (not res!2724006) (not e!4019847))))

(assert (=> d!2083543 (= res!2724006 (matchR!8694 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292))))) Nil!65708))))

(assert (=> d!2083543 (validRegex!8247 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292))))))))

(assert (=> d!2083543 (= (findConcatSeparation!2816 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292))))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422957 (ite (or c!1226752 c!1226757) (regTwo!33534 r!7292) lt!2422860))) Nil!65708 (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708) (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)) lt!2423079)))

(declare-fun b!6647875 () Bool)

(assert (=> b!6647875 (= e!4019845 (= (++!14664 (_1!36793 (get!22848 lt!2423079)) (_2!36793 (get!22848 lt!2423079))) (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)))))

(declare-fun b!6647878 () Bool)

(declare-fun res!2724003 () Bool)

(assert (=> b!6647878 (=> (not res!2724003) (not e!4019845))))

(assert (=> b!6647878 (= res!2724003 (matchR!8694 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292))))) (_1!36793 (get!22848 lt!2423079))))))

(declare-fun b!6647879 () Bool)

(declare-fun lt!2423080 () Unit!159453)

(declare-fun lt!2423081 () Unit!159453)

(assert (=> b!6647879 (= lt!2423080 lt!2423081)))

(assert (=> b!6647879 (= (++!14664 (++!14664 Nil!65708 (Cons!65708 (h!72156 (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)) Nil!65708)) (t!379501 (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708))) (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2649 (List!65832 C!33292 List!65832 List!65832) Unit!159453)

(assert (=> b!6647879 (= lt!2423081 (lemmaMoveElementToOtherListKeepsConcatEq!2649 Nil!65708 (h!72156 (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)) (t!379501 (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)) (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)))))

(assert (=> b!6647879 (= e!4019844 (findConcatSeparation!2816 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292))))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422957 (ite (or c!1226752 c!1226757) (regTwo!33534 r!7292) lt!2422860))) (++!14664 Nil!65708 (Cons!65708 (h!72156 (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)) Nil!65708)) (t!379501 (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)) (ite (or c!1226748 c!1226755 c!1226752 c!1226757) s!2326 Nil!65708)))))

(assert (= (and d!2083543 res!2724006) b!6647877))

(assert (= (and d!2083543 c!1226809) b!6647872))

(assert (= (and d!2083543 (not c!1226809)) b!6647871))

(assert (= (and b!6647871 c!1226810) b!6647874))

(assert (= (and b!6647871 (not c!1226810)) b!6647879))

(assert (= (and d!2083543 res!2724004) b!6647878))

(assert (= (and b!6647878 res!2724003) b!6647873))

(assert (= (and b!6647873 res!2724005) b!6647875))

(assert (= (and d!2083543 (not res!2724007)) b!6647876))

(declare-fun m!7413606 () Bool)

(assert (=> b!6647879 m!7413606))

(assert (=> b!6647879 m!7413606))

(declare-fun m!7413608 () Bool)

(assert (=> b!6647879 m!7413608))

(declare-fun m!7413610 () Bool)

(assert (=> b!6647879 m!7413610))

(assert (=> b!6647879 m!7413606))

(declare-fun m!7413612 () Bool)

(assert (=> b!6647879 m!7413612))

(declare-fun m!7413614 () Bool)

(assert (=> d!2083543 m!7413614))

(declare-fun m!7413616 () Bool)

(assert (=> d!2083543 m!7413616))

(declare-fun m!7413618 () Bool)

(assert (=> d!2083543 m!7413618))

(declare-fun m!7413620 () Bool)

(assert (=> b!6647873 m!7413620))

(declare-fun m!7413622 () Bool)

(assert (=> b!6647873 m!7413622))

(assert (=> b!6647875 m!7413620))

(declare-fun m!7413624 () Bool)

(assert (=> b!6647875 m!7413624))

(assert (=> b!6647878 m!7413620))

(declare-fun m!7413626 () Bool)

(assert (=> b!6647878 m!7413626))

(assert (=> b!6647876 m!7413614))

(declare-fun m!7413628 () Bool)

(assert (=> b!6647877 m!7413628))

(assert (=> bm!586411 d!2083543))

(declare-fun d!2083545 () Bool)

(declare-fun dynLambda!26178 (Int Context!11790) (InoxSet Context!11790))

(assert (=> d!2083545 (= (flatMap!2016 (ite c!1226758 lt!2422908 (ite c!1226752 lt!2422975 lt!2422960)) (ite c!1226758 lambda!371930 (ite c!1226752 lambda!371930 lambda!371930))) (dynLambda!26178 (ite c!1226758 lambda!371930 (ite c!1226752 lambda!371930 lambda!371930)) (ite c!1226758 lt!2422981 lt!2423045)))))

(declare-fun lt!2423084 () Unit!159453)

(declare-fun choose!49680 ((InoxSet Context!11790) Context!11790 Int) Unit!159453)

(assert (=> d!2083545 (= lt!2423084 (choose!49680 (ite c!1226758 lt!2422908 (ite c!1226752 lt!2422975 lt!2422960)) (ite c!1226758 lt!2422981 lt!2423045) (ite c!1226758 lambda!371930 (ite c!1226752 lambda!371930 lambda!371930))))))

(assert (=> d!2083545 (= (ite c!1226758 lt!2422908 (ite c!1226752 lt!2422975 lt!2422960)) (store ((as const (Array Context!11790 Bool)) false) (ite c!1226758 lt!2422981 lt!2423045) true))))

(assert (=> d!2083545 (= (lemmaFlatMapOnSingletonSet!1542 (ite c!1226758 lt!2422908 (ite c!1226752 lt!2422975 lt!2422960)) (ite c!1226758 lt!2422981 lt!2423045) (ite c!1226758 lambda!371930 (ite c!1226752 lambda!371930 lambda!371930))) lt!2423084)))

(declare-fun b_lambda!251093 () Bool)

(assert (=> (not b_lambda!251093) (not d!2083545)))

(declare-fun bs!1711192 () Bool)

(assert (= bs!1711192 d!2083545))

(declare-fun m!7413630 () Bool)

(assert (=> bs!1711192 m!7413630))

(declare-fun m!7413632 () Bool)

(assert (=> bs!1711192 m!7413632))

(declare-fun m!7413634 () Bool)

(assert (=> bs!1711192 m!7413634))

(declare-fun m!7413636 () Bool)

(assert (=> bs!1711192 m!7413636))

(assert (=> bm!586362 d!2083545))

(declare-fun bs!1711193 () Bool)

(declare-fun b!6647888 () Bool)

(assert (= bs!1711193 (and b!6647888 b!6647636)))

(declare-fun lambda!371967 () Int)

(assert (=> bs!1711193 (= (and (= s!2326 Nil!65708) (= (reg!16840 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))) lt!2422860)) (= lambda!371967 lambda!371954))))

(declare-fun bs!1711194 () Bool)

(assert (= bs!1711194 (and b!6647888 b!6647623)))

(assert (=> bs!1711194 (not (= lambda!371967 lambda!371934))))

(declare-fun bs!1711195 () Bool)

(assert (= bs!1711195 (and b!6647888 b!6647652)))

(assert (=> bs!1711195 (not (= lambda!371967 lambda!371943))))

(declare-fun bs!1711196 () Bool)

(assert (= bs!1711196 (and b!6647888 b!6647657)))

(assert (=> bs!1711196 (not (= lambda!371967 lambda!371949))))

(declare-fun bs!1711197 () Bool)

(assert (= bs!1711197 (and b!6647888 b!6647624)))

(assert (=> bs!1711197 (not (= lambda!371967 lambda!371937))))

(declare-fun bs!1711198 () Bool)

(assert (= bs!1711198 (and b!6647888 b!6647663)))

(assert (=> bs!1711198 (not (= lambda!371967 lambda!371928))))

(declare-fun bs!1711199 () Bool)

(assert (= bs!1711199 (and b!6647888 b!6647844)))

(assert (=> bs!1711199 (not (= lambda!371967 lambda!371963))))

(assert (=> bs!1711194 (not (= lambda!371967 lambda!371933))))

(assert (=> bs!1711196 (= (and (= s!2326 (_1!36793 lt!2423008)) (= (reg!16840 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))) lt!2422860)) (= lambda!371967 lambda!371951))))

(declare-fun bs!1711200 () Bool)

(assert (= bs!1711200 (and b!6647888 b!6647847)))

(assert (=> bs!1711200 (= (and (= s!2326 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (reg!16840 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (reg!16840 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))) (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= lambda!371967 lambda!371962))))

(assert (=> bs!1711196 (not (= lambda!371967 lambda!371950))))

(assert (=> bs!1711198 (not (= lambda!371967 lambda!371929))))

(assert (=> bs!1711194 (not (= lambda!371967 lambda!371931))))

(assert (=> bs!1711195 (not (= lambda!371967 lambda!371941))))

(assert (=> bs!1711197 (not (= lambda!371967 lambda!371935))))

(assert (=> bs!1711193 (not (= lambda!371967 lambda!371952))))

(declare-fun bs!1711201 () Bool)

(assert (= bs!1711201 (and b!6647888 b!6647651)))

(assert (=> bs!1711201 (not (= lambda!371967 lambda!371940))))

(assert (=> bs!1711196 (not (= lambda!371967 lambda!371948))))

(assert (=> bs!1711197 (not (= lambda!371967 lambda!371936))))

(assert (=> bs!1711196 (not (= lambda!371967 lambda!371947))))

(assert (=> bs!1711197 (not (= lambda!371967 lambda!371938))))

(assert (=> bs!1711193 (not (= lambda!371967 lambda!371953))))

(assert (=> bs!1711194 (not (= lambda!371967 lambda!371932))))

(assert (=> bs!1711201 (not (= lambda!371967 lambda!371939))))

(assert (=> bs!1711195 (= (and (= s!2326 (_1!36793 lt!2423042)) (= (reg!16840 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))) lt!2422860)) (= lambda!371967 lambda!371942))))

(assert (=> b!6647888 true))

(assert (=> b!6647888 true))

(declare-fun bs!1711202 () Bool)

(declare-fun b!6647885 () Bool)

(assert (= bs!1711202 (and b!6647885 b!6647636)))

(declare-fun lambda!371968 () Int)

(assert (=> bs!1711202 (not (= lambda!371968 lambda!371954))))

(declare-fun bs!1711203 () Bool)

(assert (= bs!1711203 (and b!6647885 b!6647888)))

(assert (=> bs!1711203 (not (= lambda!371968 lambda!371967))))

(declare-fun bs!1711204 () Bool)

(assert (= bs!1711204 (and b!6647885 b!6647623)))

(assert (=> bs!1711204 (= (and (= (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) lt!2422859)) (= lambda!371968 lambda!371934))))

(declare-fun bs!1711205 () Bool)

(assert (= bs!1711205 (and b!6647885 b!6647652)))

(assert (=> bs!1711205 (= (and (= s!2326 (_1!36793 lt!2423042)) (= (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) lt!2422860)) (= lambda!371968 lambda!371943))))

(declare-fun bs!1711206 () Bool)

(assert (= bs!1711206 (and b!6647885 b!6647657)))

(assert (=> bs!1711206 (not (= lambda!371968 lambda!371949))))

(declare-fun bs!1711207 () Bool)

(assert (= bs!1711207 (and b!6647885 b!6647624)))

(assert (=> bs!1711207 (not (= lambda!371968 lambda!371937))))

(declare-fun bs!1711208 () Bool)

(assert (= bs!1711208 (and b!6647885 b!6647663)))

(assert (=> bs!1711208 (not (= lambda!371968 lambda!371928))))

(declare-fun bs!1711209 () Bool)

(assert (= bs!1711209 (and b!6647885 b!6647844)))

(assert (=> bs!1711209 (= (and (= s!2326 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))))) (= lambda!371968 lambda!371963))))

(assert (=> bs!1711204 (not (= lambda!371968 lambda!371933))))

(assert (=> bs!1711206 (not (= lambda!371968 lambda!371951))))

(declare-fun bs!1711210 () Bool)

(assert (= bs!1711210 (and b!6647885 b!6647847)))

(assert (=> bs!1711210 (not (= lambda!371968 lambda!371962))))

(assert (=> bs!1711206 (= (and (= s!2326 (_1!36793 lt!2423008)) (= (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) lt!2422860)) (= lambda!371968 lambda!371950))))

(assert (=> bs!1711208 (= (and (= (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (regOne!33534 r!7292)) (= (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (regTwo!33534 r!7292))) (= lambda!371968 lambda!371929))))

(assert (=> bs!1711204 (not (= lambda!371968 lambda!371931))))

(assert (=> bs!1711205 (not (= lambda!371968 lambda!371941))))

(assert (=> bs!1711207 (not (= lambda!371968 lambda!371935))))

(assert (=> bs!1711202 (not (= lambda!371968 lambda!371952))))

(declare-fun bs!1711211 () Bool)

(assert (= bs!1711211 (and b!6647885 b!6647651)))

(assert (=> bs!1711211 (= (and (= (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) lt!2422860) (= (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (regTwo!33534 r!7292))) (= lambda!371968 lambda!371940))))

(assert (=> bs!1711206 (= (and (= (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) lt!2422944) (= (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (regTwo!33534 r!7292))) (= lambda!371968 lambda!371948))))

(assert (=> bs!1711207 (= (and (= (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) lt!2422957)) (= lambda!371968 lambda!371936))))

(assert (=> bs!1711206 (not (= lambda!371968 lambda!371947))))

(assert (=> bs!1711207 (= (and (= (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) lt!2422956)) (= lambda!371968 lambda!371938))))

(assert (=> bs!1711202 (= (and (= s!2326 Nil!65708) (= (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) lt!2422860)) (= lambda!371968 lambda!371953))))

(assert (=> bs!1711204 (= (and (= (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) lt!2423021)) (= lambda!371968 lambda!371932))))

(assert (=> bs!1711211 (not (= lambda!371968 lambda!371939))))

(assert (=> bs!1711205 (not (= lambda!371968 lambda!371942))))

(assert (=> b!6647885 true))

(assert (=> b!6647885 true))

(declare-fun c!1226812 () Bool)

(declare-fun b!6647880 () Bool)

(assert (=> b!6647880 (= c!1226812 ((_ is ElementMatch!16511) (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))))))

(declare-fun e!4019852 () Bool)

(declare-fun e!4019849 () Bool)

(assert (=> b!6647880 (= e!4019852 e!4019849)))

(declare-fun bm!586512 () Bool)

(declare-fun call!586518 () Bool)

(assert (=> bm!586512 (= call!586518 (isEmpty!38018 s!2326))))

(declare-fun b!6647881 () Bool)

(declare-fun c!1226814 () Bool)

(assert (=> b!6647881 (= c!1226814 ((_ is Union!16511) (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))))))

(declare-fun e!4019850 () Bool)

(assert (=> b!6647881 (= e!4019849 e!4019850)))

(declare-fun b!6647882 () Bool)

(declare-fun e!4019854 () Bool)

(assert (=> b!6647882 (= e!4019850 e!4019854)))

(declare-fun res!2724010 () Bool)

(assert (=> b!6647882 (= res!2724010 (matchRSpec!3612 (regOne!33535 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) s!2326))))

(assert (=> b!6647882 (=> res!2724010 e!4019854)))

(declare-fun b!6647883 () Bool)

(declare-fun e!4019851 () Bool)

(assert (=> b!6647883 (= e!4019851 call!586518)))

(declare-fun b!6647884 () Bool)

(assert (=> b!6647884 (= e!4019854 (matchRSpec!3612 (regTwo!33535 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) s!2326))))

(declare-fun e!4019848 () Bool)

(declare-fun call!586517 () Bool)

(assert (=> b!6647885 (= e!4019848 call!586517)))

(declare-fun b!6647886 () Bool)

(assert (=> b!6647886 (= e!4019850 e!4019848)))

(declare-fun c!1226811 () Bool)

(assert (=> b!6647886 (= c!1226811 ((_ is Star!16511) (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))))))

(declare-fun bm!586513 () Bool)

(assert (=> bm!586513 (= call!586517 (Exists!3581 (ite c!1226811 lambda!371967 lambda!371968)))))

(declare-fun b!6647887 () Bool)

(declare-fun res!2724011 () Bool)

(declare-fun e!4019853 () Bool)

(assert (=> b!6647887 (=> res!2724011 e!4019853)))

(assert (=> b!6647887 (= res!2724011 call!586518)))

(assert (=> b!6647887 (= e!4019848 e!4019853)))

(assert (=> b!6647888 (= e!4019853 call!586517)))

(declare-fun c!1226813 () Bool)

(declare-fun d!2083547 () Bool)

(assert (=> d!2083547 (= c!1226813 ((_ is EmptyExpr!16511) (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))))))

(assert (=> d!2083547 (= (matchRSpec!3612 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))) s!2326) e!4019851)))

(declare-fun b!6647889 () Bool)

(assert (=> b!6647889 (= e!4019851 e!4019852)))

(declare-fun res!2724009 () Bool)

(assert (=> b!6647889 (= res!2724009 (not ((_ is EmptyLang!16511) (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))))))

(assert (=> b!6647889 (=> (not res!2724009) (not e!4019852))))

(declare-fun b!6647890 () Bool)

(assert (=> b!6647890 (= e!4019849 (= s!2326 (Cons!65708 (c!1226759 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))) Nil!65708)))))

(assert (= (and d!2083547 c!1226813) b!6647883))

(assert (= (and d!2083547 (not c!1226813)) b!6647889))

(assert (= (and b!6647889 res!2724009) b!6647880))

(assert (= (and b!6647880 c!1226812) b!6647890))

(assert (= (and b!6647880 (not c!1226812)) b!6647881))

(assert (= (and b!6647881 c!1226814) b!6647882))

(assert (= (and b!6647881 (not c!1226814)) b!6647886))

(assert (= (and b!6647882 (not res!2724010)) b!6647884))

(assert (= (and b!6647886 c!1226811) b!6647887))

(assert (= (and b!6647886 (not c!1226811)) b!6647885))

(assert (= (and b!6647887 (not res!2724011)) b!6647888))

(assert (= (or b!6647888 b!6647885) bm!586513))

(assert (= (or b!6647883 b!6647887) bm!586512))

(declare-fun m!7413638 () Bool)

(assert (=> bm!586512 m!7413638))

(declare-fun m!7413640 () Bool)

(assert (=> b!6647882 m!7413640))

(declare-fun m!7413642 () Bool)

(assert (=> b!6647884 m!7413642))

(declare-fun m!7413644 () Bool)

(assert (=> bm!586513 m!7413644))

(assert (=> bm!586374 d!2083547))

(declare-fun d!2083549 () Bool)

(declare-fun choose!49681 (Int) Bool)

(assert (=> d!2083549 (= (Exists!3581 (ite c!1226752 lambda!371941 (ite c!1226757 lambda!371951 lambda!371952))) (choose!49681 (ite c!1226752 lambda!371941 (ite c!1226757 lambda!371951 lambda!371952))))))

(declare-fun bs!1711212 () Bool)

(assert (= bs!1711212 d!2083549))

(declare-fun m!7413646 () Bool)

(assert (=> bs!1711212 m!7413646))

(assert (=> bm!586460 d!2083549))

(declare-fun d!2083551 () Bool)

(assert (=> d!2083551 (not (matchZipper!2523 lt!2423006 (t!379501 s!2326)))))

(declare-fun lt!2423087 () Unit!159453)

(declare-fun choose!49682 ((InoxSet Context!11790) List!65832) Unit!159453)

(assert (=> d!2083551 (= lt!2423087 (choose!49682 lt!2423006 (t!379501 s!2326)))))

(assert (=> d!2083551 (= lt!2423006 ((as const (Array Context!11790 Bool)) false))))

(assert (=> d!2083551 (= (lemmaEmptyZipperMatchesNothing!104 lt!2423006 (t!379501 s!2326)) lt!2423087)))

(declare-fun bs!1711213 () Bool)

(assert (= bs!1711213 d!2083551))

(assert (=> bs!1711213 m!7413442))

(declare-fun m!7413648 () Bool)

(assert (=> bs!1711213 m!7413648))

(assert (=> bm!586294 d!2083551))

(declare-fun d!2083553 () Bool)

(assert (=> d!2083553 (= (matchR!8694 (Concat!25356 (Concat!25356 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))) (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) lt!2422860)) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422956 (regTwo!33534 r!7292)))) s!2326) (matchR!8694 (Concat!25356 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))) (Concat!25356 (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) lt!2422860) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422956 (regTwo!33534 r!7292))))) s!2326))))

(declare-fun lt!2423090 () Unit!159453)

(declare-fun choose!49683 (Regex!16511 Regex!16511 Regex!16511 List!65832) Unit!159453)

(assert (=> d!2083553 (= lt!2423090 (choose!49683 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))) (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) lt!2422860) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422956 (regTwo!33534 r!7292))) s!2326))))

(declare-fun e!4019857 () Bool)

(assert (=> d!2083553 e!4019857))

(declare-fun res!2724016 () Bool)

(assert (=> d!2083553 (=> (not res!2724016) (not e!4019857))))

(assert (=> d!2083553 (= res!2724016 (validRegex!8247 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))))

(assert (=> d!2083553 (= (lemmaConcatAssociative!148 (ite (or c!1226748 c!1226755) (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))) (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) lt!2422860) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422956 (regTwo!33534 r!7292))) s!2326) lt!2423090)))

(declare-fun b!6647895 () Bool)

(declare-fun res!2724017 () Bool)

(assert (=> b!6647895 (=> (not res!2724017) (not e!4019857))))

(assert (=> b!6647895 (= res!2724017 (validRegex!8247 (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) lt!2422860)))))

(declare-fun b!6647896 () Bool)

(assert (=> b!6647896 (= e!4019857 (validRegex!8247 (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422956 (regTwo!33534 r!7292)))))))

(assert (= (and d!2083553 res!2724016) b!6647895))

(assert (= (and b!6647895 res!2724017) b!6647896))

(declare-fun m!7413650 () Bool)

(assert (=> d!2083553 m!7413650))

(declare-fun m!7413652 () Bool)

(assert (=> d!2083553 m!7413652))

(declare-fun m!7413654 () Bool)

(assert (=> d!2083553 m!7413654))

(declare-fun m!7413656 () Bool)

(assert (=> d!2083553 m!7413656))

(declare-fun m!7413658 () Bool)

(assert (=> b!6647895 m!7413658))

(declare-fun m!7413660 () Bool)

(assert (=> b!6647896 m!7413660))

(assert (=> bm!586459 d!2083553))

(declare-fun bs!1711214 () Bool)

(declare-fun b!6647905 () Bool)

(assert (= bs!1711214 (and b!6647905 b!6647636)))

(declare-fun lambda!371969 () Int)

(assert (=> bs!1711214 (= (and (= s!2326 Nil!65708) (= (reg!16840 r!7292) (reg!16840 (regOne!33534 r!7292))) (= r!7292 lt!2422860)) (= lambda!371969 lambda!371954))))

(declare-fun bs!1711215 () Bool)

(assert (= bs!1711215 (and b!6647905 b!6647888)))

(assert (=> bs!1711215 (= (and (= (reg!16840 r!7292) (reg!16840 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= r!7292 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= lambda!371969 lambda!371967))))

(declare-fun bs!1711216 () Bool)

(assert (= bs!1711216 (and b!6647905 b!6647623)))

(assert (=> bs!1711216 (not (= lambda!371969 lambda!371934))))

(declare-fun bs!1711217 () Bool)

(assert (= bs!1711217 (and b!6647905 b!6647652)))

(assert (=> bs!1711217 (not (= lambda!371969 lambda!371943))))

(declare-fun bs!1711218 () Bool)

(assert (= bs!1711218 (and b!6647905 b!6647657)))

(assert (=> bs!1711218 (not (= lambda!371969 lambda!371949))))

(declare-fun bs!1711219 () Bool)

(assert (= bs!1711219 (and b!6647905 b!6647624)))

(assert (=> bs!1711219 (not (= lambda!371969 lambda!371937))))

(declare-fun bs!1711220 () Bool)

(assert (= bs!1711220 (and b!6647905 b!6647663)))

(assert (=> bs!1711220 (not (= lambda!371969 lambda!371928))))

(declare-fun bs!1711221 () Bool)

(assert (= bs!1711221 (and b!6647905 b!6647844)))

(assert (=> bs!1711221 (not (= lambda!371969 lambda!371963))))

(declare-fun bs!1711222 () Bool)

(assert (= bs!1711222 (and b!6647905 b!6647885)))

(assert (=> bs!1711222 (not (= lambda!371969 lambda!371968))))

(assert (=> bs!1711216 (not (= lambda!371969 lambda!371933))))

(assert (=> bs!1711218 (= (and (= s!2326 (_1!36793 lt!2423008)) (= (reg!16840 r!7292) (reg!16840 (regOne!33534 r!7292))) (= r!7292 lt!2422860)) (= lambda!371969 lambda!371951))))

(declare-fun bs!1711223 () Bool)

(assert (= bs!1711223 (and b!6647905 b!6647847)))

(assert (=> bs!1711223 (= (and (= s!2326 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (reg!16840 r!7292) (reg!16840 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= r!7292 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= lambda!371969 lambda!371962))))

(assert (=> bs!1711218 (not (= lambda!371969 lambda!371950))))

(assert (=> bs!1711220 (not (= lambda!371969 lambda!371929))))

(assert (=> bs!1711216 (not (= lambda!371969 lambda!371931))))

(assert (=> bs!1711217 (not (= lambda!371969 lambda!371941))))

(assert (=> bs!1711219 (not (= lambda!371969 lambda!371935))))

(assert (=> bs!1711214 (not (= lambda!371969 lambda!371952))))

(declare-fun bs!1711224 () Bool)

(assert (= bs!1711224 (and b!6647905 b!6647651)))

(assert (=> bs!1711224 (not (= lambda!371969 lambda!371940))))

(assert (=> bs!1711218 (not (= lambda!371969 lambda!371948))))

(assert (=> bs!1711219 (not (= lambda!371969 lambda!371936))))

(assert (=> bs!1711218 (not (= lambda!371969 lambda!371947))))

(assert (=> bs!1711219 (not (= lambda!371969 lambda!371938))))

(assert (=> bs!1711214 (not (= lambda!371969 lambda!371953))))

(assert (=> bs!1711216 (not (= lambda!371969 lambda!371932))))

(assert (=> bs!1711224 (not (= lambda!371969 lambda!371939))))

(assert (=> bs!1711217 (= (and (= s!2326 (_1!36793 lt!2423042)) (= (reg!16840 r!7292) (reg!16840 (regOne!33534 r!7292))) (= r!7292 lt!2422860)) (= lambda!371969 lambda!371942))))

(assert (=> b!6647905 true))

(assert (=> b!6647905 true))

(declare-fun bs!1711225 () Bool)

(declare-fun b!6647902 () Bool)

(assert (= bs!1711225 (and b!6647902 b!6647636)))

(declare-fun lambda!371970 () Int)

(assert (=> bs!1711225 (not (= lambda!371970 lambda!371954))))

(declare-fun bs!1711226 () Bool)

(assert (= bs!1711226 (and b!6647902 b!6647888)))

(assert (=> bs!1711226 (not (= lambda!371970 lambda!371967))))

(declare-fun bs!1711227 () Bool)

(assert (= bs!1711227 (and b!6647902 b!6647623)))

(assert (=> bs!1711227 (= (and (= (regOne!33534 r!7292) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422859)) (= lambda!371970 lambda!371934))))

(declare-fun bs!1711228 () Bool)

(assert (= bs!1711228 (and b!6647902 b!6647652)))

(assert (=> bs!1711228 (= (and (= s!2326 (_1!36793 lt!2423042)) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371970 lambda!371943))))

(declare-fun bs!1711229 () Bool)

(assert (= bs!1711229 (and b!6647902 b!6647657)))

(assert (=> bs!1711229 (not (= lambda!371970 lambda!371949))))

(declare-fun bs!1711230 () Bool)

(assert (= bs!1711230 (and b!6647902 b!6647624)))

(assert (=> bs!1711230 (not (= lambda!371970 lambda!371937))))

(declare-fun bs!1711231 () Bool)

(assert (= bs!1711231 (and b!6647902 b!6647663)))

(assert (=> bs!1711231 (not (= lambda!371970 lambda!371928))))

(declare-fun bs!1711232 () Bool)

(assert (= bs!1711232 (and b!6647902 b!6647844)))

(assert (=> bs!1711232 (= (and (= s!2326 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (regOne!33534 r!7292) (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= (regTwo!33534 r!7292) (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))))) (= lambda!371970 lambda!371963))))

(declare-fun bs!1711233 () Bool)

(assert (= bs!1711233 (and b!6647902 b!6647885)))

(assert (=> bs!1711233 (= (and (= (regOne!33534 r!7292) (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= (regTwo!33534 r!7292) (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))))) (= lambda!371970 lambda!371968))))

(assert (=> bs!1711227 (not (= lambda!371970 lambda!371933))))

(assert (=> bs!1711229 (not (= lambda!371970 lambda!371951))))

(declare-fun bs!1711234 () Bool)

(assert (= bs!1711234 (and b!6647902 b!6647847)))

(assert (=> bs!1711234 (not (= lambda!371970 lambda!371962))))

(assert (=> bs!1711229 (= (and (= s!2326 (_1!36793 lt!2423008)) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371970 lambda!371950))))

(assert (=> bs!1711231 (= lambda!371970 lambda!371929)))

(assert (=> bs!1711227 (not (= lambda!371970 lambda!371931))))

(assert (=> bs!1711228 (not (= lambda!371970 lambda!371941))))

(assert (=> bs!1711230 (not (= lambda!371970 lambda!371935))))

(assert (=> bs!1711225 (not (= lambda!371970 lambda!371952))))

(declare-fun bs!1711235 () Bool)

(assert (= bs!1711235 (and b!6647902 b!6647651)))

(assert (=> bs!1711235 (= (= (regOne!33534 r!7292) lt!2422860) (= lambda!371970 lambda!371940))))

(assert (=> bs!1711229 (= (= (regOne!33534 r!7292) lt!2422944) (= lambda!371970 lambda!371948))))

(assert (=> bs!1711230 (= (and (= (regOne!33534 r!7292) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422957)) (= lambda!371970 lambda!371936))))

(assert (=> bs!1711229 (not (= lambda!371970 lambda!371947))))

(assert (=> bs!1711230 (= (and (= (regOne!33534 r!7292) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422956)) (= lambda!371970 lambda!371938))))

(assert (=> bs!1711225 (= (and (= s!2326 Nil!65708) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371970 lambda!371953))))

(assert (=> bs!1711227 (= (and (= (regOne!33534 r!7292) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2423021)) (= lambda!371970 lambda!371932))))

(declare-fun bs!1711236 () Bool)

(assert (= bs!1711236 (and b!6647902 b!6647905)))

(assert (=> bs!1711236 (not (= lambda!371970 lambda!371969))))

(assert (=> bs!1711235 (not (= lambda!371970 lambda!371939))))

(assert (=> bs!1711228 (not (= lambda!371970 lambda!371942))))

(assert (=> b!6647902 true))

(assert (=> b!6647902 true))

(declare-fun b!6647897 () Bool)

(declare-fun c!1226816 () Bool)

(assert (=> b!6647897 (= c!1226816 ((_ is ElementMatch!16511) r!7292))))

(declare-fun e!4019862 () Bool)

(declare-fun e!4019859 () Bool)

(assert (=> b!6647897 (= e!4019862 e!4019859)))

(declare-fun bm!586514 () Bool)

(declare-fun call!586520 () Bool)

(assert (=> bm!586514 (= call!586520 (isEmpty!38018 s!2326))))

(declare-fun b!6647898 () Bool)

(declare-fun c!1226818 () Bool)

(assert (=> b!6647898 (= c!1226818 ((_ is Union!16511) r!7292))))

(declare-fun e!4019860 () Bool)

(assert (=> b!6647898 (= e!4019859 e!4019860)))

(declare-fun b!6647899 () Bool)

(declare-fun e!4019864 () Bool)

(assert (=> b!6647899 (= e!4019860 e!4019864)))

(declare-fun res!2724019 () Bool)

(assert (=> b!6647899 (= res!2724019 (matchRSpec!3612 (regOne!33535 r!7292) s!2326))))

(assert (=> b!6647899 (=> res!2724019 e!4019864)))

(declare-fun b!6647900 () Bool)

(declare-fun e!4019861 () Bool)

(assert (=> b!6647900 (= e!4019861 call!586520)))

(declare-fun b!6647901 () Bool)

(assert (=> b!6647901 (= e!4019864 (matchRSpec!3612 (regTwo!33535 r!7292) s!2326))))

(declare-fun e!4019858 () Bool)

(declare-fun call!586519 () Bool)

(assert (=> b!6647902 (= e!4019858 call!586519)))

(declare-fun b!6647903 () Bool)

(assert (=> b!6647903 (= e!4019860 e!4019858)))

(declare-fun c!1226815 () Bool)

(assert (=> b!6647903 (= c!1226815 ((_ is Star!16511) r!7292))))

(declare-fun bm!586515 () Bool)

(assert (=> bm!586515 (= call!586519 (Exists!3581 (ite c!1226815 lambda!371969 lambda!371970)))))

(declare-fun b!6647904 () Bool)

(declare-fun res!2724020 () Bool)

(declare-fun e!4019863 () Bool)

(assert (=> b!6647904 (=> res!2724020 e!4019863)))

(assert (=> b!6647904 (= res!2724020 call!586520)))

(assert (=> b!6647904 (= e!4019858 e!4019863)))

(assert (=> b!6647905 (= e!4019863 call!586519)))

(declare-fun d!2083555 () Bool)

(declare-fun c!1226817 () Bool)

(assert (=> d!2083555 (= c!1226817 ((_ is EmptyExpr!16511) r!7292))))

(assert (=> d!2083555 (= (matchRSpec!3612 r!7292 s!2326) e!4019861)))

(declare-fun b!6647906 () Bool)

(assert (=> b!6647906 (= e!4019861 e!4019862)))

(declare-fun res!2724018 () Bool)

(assert (=> b!6647906 (= res!2724018 (not ((_ is EmptyLang!16511) r!7292)))))

(assert (=> b!6647906 (=> (not res!2724018) (not e!4019862))))

(declare-fun b!6647907 () Bool)

(assert (=> b!6647907 (= e!4019859 (= s!2326 (Cons!65708 (c!1226759 r!7292) Nil!65708)))))

(assert (= (and d!2083555 c!1226817) b!6647900))

(assert (= (and d!2083555 (not c!1226817)) b!6647906))

(assert (= (and b!6647906 res!2724018) b!6647897))

(assert (= (and b!6647897 c!1226816) b!6647907))

(assert (= (and b!6647897 (not c!1226816)) b!6647898))

(assert (= (and b!6647898 c!1226818) b!6647899))

(assert (= (and b!6647898 (not c!1226818)) b!6647903))

(assert (= (and b!6647899 (not res!2724019)) b!6647901))

(assert (= (and b!6647903 c!1226815) b!6647904))

(assert (= (and b!6647903 (not c!1226815)) b!6647902))

(assert (= (and b!6647904 (not res!2724020)) b!6647905))

(assert (= (or b!6647905 b!6647902) bm!586515))

(assert (= (or b!6647900 b!6647904) bm!586514))

(assert (=> bm!586514 m!7413638))

(declare-fun m!7413662 () Bool)

(assert (=> b!6647899 m!7413662))

(declare-fun m!7413664 () Bool)

(assert (=> b!6647901 m!7413664))

(declare-fun m!7413666 () Bool)

(assert (=> bm!586515 m!7413666))

(assert (=> b!6647642 d!2083555))

(declare-fun b!6647908 () Bool)

(declare-fun res!2724025 () Bool)

(declare-fun e!4019865 () Bool)

(assert (=> b!6647908 (=> res!2724025 e!4019865)))

(assert (=> b!6647908 (= res!2724025 (not (isEmpty!38018 (tail!12548 s!2326))))))

(declare-fun b!6647909 () Bool)

(declare-fun e!4019866 () Bool)

(declare-fun lt!2423091 () Bool)

(declare-fun call!586521 () Bool)

(assert (=> b!6647909 (= e!4019866 (= lt!2423091 call!586521))))

(declare-fun b!6647911 () Bool)

(declare-fun e!4019867 () Bool)

(assert (=> b!6647911 (= e!4019866 e!4019867)))

(declare-fun c!1226819 () Bool)

(assert (=> b!6647911 (= c!1226819 ((_ is EmptyLang!16511) r!7292))))

(declare-fun b!6647912 () Bool)

(declare-fun e!4019870 () Bool)

(assert (=> b!6647912 (= e!4019870 (nullable!6504 r!7292))))

(declare-fun b!6647913 () Bool)

(declare-fun res!2724022 () Bool)

(declare-fun e!4019871 () Bool)

(assert (=> b!6647913 (=> res!2724022 e!4019871)))

(declare-fun e!4019868 () Bool)

(assert (=> b!6647913 (= res!2724022 e!4019868)))

(declare-fun res!2724027 () Bool)

(assert (=> b!6647913 (=> (not res!2724027) (not e!4019868))))

(assert (=> b!6647913 (= res!2724027 lt!2423091)))

(declare-fun b!6647914 () Bool)

(assert (=> b!6647914 (= e!4019865 (not (= (head!13463 s!2326) (c!1226759 r!7292))))))

(declare-fun b!6647915 () Bool)

(declare-fun e!4019869 () Bool)

(assert (=> b!6647915 (= e!4019871 e!4019869)))

(declare-fun res!2724028 () Bool)

(assert (=> b!6647915 (=> (not res!2724028) (not e!4019869))))

(assert (=> b!6647915 (= res!2724028 (not lt!2423091))))

(declare-fun b!6647916 () Bool)

(assert (=> b!6647916 (= e!4019868 (= (head!13463 s!2326) (c!1226759 r!7292)))))

(declare-fun bm!586516 () Bool)

(assert (=> bm!586516 (= call!586521 (isEmpty!38018 s!2326))))

(declare-fun b!6647917 () Bool)

(assert (=> b!6647917 (= e!4019867 (not lt!2423091))))

(declare-fun b!6647918 () Bool)

(declare-fun res!2724024 () Bool)

(assert (=> b!6647918 (=> (not res!2724024) (not e!4019868))))

(assert (=> b!6647918 (= res!2724024 (not call!586521))))

(declare-fun b!6647919 () Bool)

(declare-fun res!2724021 () Bool)

(assert (=> b!6647919 (=> res!2724021 e!4019871)))

(assert (=> b!6647919 (= res!2724021 (not ((_ is ElementMatch!16511) r!7292)))))

(assert (=> b!6647919 (= e!4019867 e!4019871)))

(declare-fun b!6647920 () Bool)

(declare-fun res!2724026 () Bool)

(assert (=> b!6647920 (=> (not res!2724026) (not e!4019868))))

(assert (=> b!6647920 (= res!2724026 (isEmpty!38018 (tail!12548 s!2326)))))

(declare-fun b!6647921 () Bool)

(assert (=> b!6647921 (= e!4019870 (matchR!8694 (derivativeStep!5190 r!7292 (head!13463 s!2326)) (tail!12548 s!2326)))))

(declare-fun d!2083557 () Bool)

(assert (=> d!2083557 e!4019866))

(declare-fun c!1226821 () Bool)

(assert (=> d!2083557 (= c!1226821 ((_ is EmptyExpr!16511) r!7292))))

(assert (=> d!2083557 (= lt!2423091 e!4019870)))

(declare-fun c!1226820 () Bool)

(assert (=> d!2083557 (= c!1226820 (isEmpty!38018 s!2326))))

(assert (=> d!2083557 (validRegex!8247 r!7292)))

(assert (=> d!2083557 (= (matchR!8694 r!7292 s!2326) lt!2423091)))

(declare-fun b!6647910 () Bool)

(assert (=> b!6647910 (= e!4019869 e!4019865)))

(declare-fun res!2724023 () Bool)

(assert (=> b!6647910 (=> res!2724023 e!4019865)))

(assert (=> b!6647910 (= res!2724023 call!586521)))

(assert (= (and d!2083557 c!1226820) b!6647912))

(assert (= (and d!2083557 (not c!1226820)) b!6647921))

(assert (= (and d!2083557 c!1226821) b!6647909))

(assert (= (and d!2083557 (not c!1226821)) b!6647911))

(assert (= (and b!6647911 c!1226819) b!6647917))

(assert (= (and b!6647911 (not c!1226819)) b!6647919))

(assert (= (and b!6647919 (not res!2724021)) b!6647913))

(assert (= (and b!6647913 res!2724027) b!6647918))

(assert (= (and b!6647918 res!2724024) b!6647920))

(assert (= (and b!6647920 res!2724026) b!6647916))

(assert (= (and b!6647913 (not res!2724022)) b!6647915))

(assert (= (and b!6647915 res!2724028) b!6647910))

(assert (= (and b!6647910 (not res!2724023)) b!6647908))

(assert (= (and b!6647908 (not res!2724025)) b!6647914))

(assert (= (or b!6647909 b!6647910 b!6647918) bm!586516))

(declare-fun m!7413668 () Bool)

(assert (=> b!6647921 m!7413668))

(assert (=> b!6647921 m!7413668))

(declare-fun m!7413670 () Bool)

(assert (=> b!6647921 m!7413670))

(declare-fun m!7413672 () Bool)

(assert (=> b!6647921 m!7413672))

(assert (=> b!6647921 m!7413670))

(assert (=> b!6647921 m!7413672))

(declare-fun m!7413674 () Bool)

(assert (=> b!6647921 m!7413674))

(assert (=> b!6647920 m!7413672))

(assert (=> b!6647920 m!7413672))

(declare-fun m!7413676 () Bool)

(assert (=> b!6647920 m!7413676))

(assert (=> b!6647908 m!7413672))

(assert (=> b!6647908 m!7413672))

(assert (=> b!6647908 m!7413676))

(declare-fun m!7413678 () Bool)

(assert (=> b!6647912 m!7413678))

(assert (=> b!6647916 m!7413668))

(assert (=> bm!586516 m!7413638))

(assert (=> d!2083557 m!7413638))

(assert (=> d!2083557 m!7413272))

(assert (=> b!6647914 m!7413668))

(assert (=> b!6647642 d!2083557))

(declare-fun d!2083561 () Bool)

(assert (=> d!2083561 (= (matchR!8694 r!7292 s!2326) (matchRSpec!3612 r!7292 s!2326))))

(declare-fun lt!2423094 () Unit!159453)

(declare-fun choose!49684 (Regex!16511 List!65832) Unit!159453)

(assert (=> d!2083561 (= lt!2423094 (choose!49684 r!7292 s!2326))))

(assert (=> d!2083561 (validRegex!8247 r!7292)))

(assert (=> d!2083561 (= (mainMatchTheorem!3612 r!7292 s!2326) lt!2423094)))

(declare-fun bs!1711237 () Bool)

(assert (= bs!1711237 d!2083561))

(assert (=> bs!1711237 m!7413380))

(assert (=> bs!1711237 m!7413378))

(declare-fun m!7413680 () Bool)

(assert (=> bs!1711237 m!7413680))

(assert (=> bs!1711237 m!7413272))

(assert (=> b!6647642 d!2083561))

(declare-fun d!2083563 () Bool)

(declare-fun c!1226822 () Bool)

(assert (=> d!2083563 (= c!1226822 (isEmpty!38018 (ite c!1226758 s!2326 (t!379501 s!2326))))))

(declare-fun e!4019872 () Bool)

(assert (=> d!2083563 (= (matchZipper!2523 (ite c!1226758 lt!2422908 ((_ map or) lt!2422934 lt!2422876)) (ite c!1226758 s!2326 (t!379501 s!2326))) e!4019872)))

(declare-fun b!6647922 () Bool)

(assert (=> b!6647922 (= e!4019872 (nullableZipper!2251 (ite c!1226758 lt!2422908 ((_ map or) lt!2422934 lt!2422876))))))

(declare-fun b!6647923 () Bool)

(assert (=> b!6647923 (= e!4019872 (matchZipper!2523 (derivationStepZipper!2477 (ite c!1226758 lt!2422908 ((_ map or) lt!2422934 lt!2422876)) (head!13463 (ite c!1226758 s!2326 (t!379501 s!2326)))) (tail!12548 (ite c!1226758 s!2326 (t!379501 s!2326)))))))

(assert (= (and d!2083563 c!1226822) b!6647922))

(assert (= (and d!2083563 (not c!1226822)) b!6647923))

(declare-fun m!7413682 () Bool)

(assert (=> d!2083563 m!7413682))

(declare-fun m!7413684 () Bool)

(assert (=> b!6647922 m!7413684))

(declare-fun m!7413686 () Bool)

(assert (=> b!6647923 m!7413686))

(assert (=> b!6647923 m!7413686))

(declare-fun m!7413688 () Bool)

(assert (=> b!6647923 m!7413688))

(declare-fun m!7413690 () Bool)

(assert (=> b!6647923 m!7413690))

(assert (=> b!6647923 m!7413688))

(assert (=> b!6647923 m!7413690))

(declare-fun m!7413692 () Bool)

(assert (=> b!6647923 m!7413692))

(assert (=> bm!586440 d!2083563))

(declare-fun b!6647924 () Bool)

(declare-fun res!2724033 () Bool)

(declare-fun e!4019873 () Bool)

(assert (=> b!6647924 (=> res!2724033 e!4019873)))

(assert (=> b!6647924 (= res!2724033 (not (isEmpty!38018 (tail!12548 (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2422854 (_1!36793 lt!2423008))))))))))

(declare-fun b!6647925 () Bool)

(declare-fun e!4019874 () Bool)

(declare-fun lt!2423097 () Bool)

(declare-fun call!586522 () Bool)

(assert (=> b!6647925 (= e!4019874 (= lt!2423097 call!586522))))

(declare-fun b!6647927 () Bool)

(declare-fun e!4019875 () Bool)

(assert (=> b!6647927 (= e!4019874 e!4019875)))

(declare-fun c!1226823 () Bool)

(assert (=> b!6647927 (= c!1226823 ((_ is EmptyLang!16511) (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422859)) (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422950 lt!2422944)))))))))

(declare-fun b!6647928 () Bool)

(declare-fun e!4019878 () Bool)

(assert (=> b!6647928 (= e!4019878 (nullable!6504 (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422859)) (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422950 lt!2422944)))))))))

(declare-fun b!6647929 () Bool)

(declare-fun res!2724030 () Bool)

(declare-fun e!4019879 () Bool)

(assert (=> b!6647929 (=> res!2724030 e!4019879)))

(declare-fun e!4019876 () Bool)

(assert (=> b!6647929 (= res!2724030 e!4019876)))

(declare-fun res!2724035 () Bool)

(assert (=> b!6647929 (=> (not res!2724035) (not e!4019876))))

(assert (=> b!6647929 (= res!2724035 lt!2423097)))

(declare-fun b!6647930 () Bool)

(assert (=> b!6647930 (= e!4019873 (not (= (head!13463 (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2422854 (_1!36793 lt!2423008))))) (c!1226759 (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422859)) (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422950 lt!2422944)))))))))))

(declare-fun b!6647931 () Bool)

(declare-fun e!4019877 () Bool)

(assert (=> b!6647931 (= e!4019879 e!4019877)))

(declare-fun res!2724036 () Bool)

(assert (=> b!6647931 (=> (not res!2724036) (not e!4019877))))

(assert (=> b!6647931 (= res!2724036 (not lt!2423097))))

(declare-fun b!6647932 () Bool)

(assert (=> b!6647932 (= e!4019876 (= (head!13463 (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2422854 (_1!36793 lt!2423008))))) (c!1226759 (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422859)) (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422950 lt!2422944))))))))))

(declare-fun bm!586517 () Bool)

(assert (=> bm!586517 (= call!586522 (isEmpty!38018 (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2422854 (_1!36793 lt!2423008))))))))

(declare-fun b!6647933 () Bool)

(assert (=> b!6647933 (= e!4019875 (not lt!2423097))))

(declare-fun b!6647934 () Bool)

(declare-fun res!2724032 () Bool)

(assert (=> b!6647934 (=> (not res!2724032) (not e!4019876))))

(assert (=> b!6647934 (= res!2724032 (not call!586522))))

(declare-fun b!6647935 () Bool)

(declare-fun res!2724029 () Bool)

(assert (=> b!6647935 (=> res!2724029 e!4019879)))

(assert (=> b!6647935 (= res!2724029 (not ((_ is ElementMatch!16511) (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422859)) (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422950 lt!2422944))))))))))

(assert (=> b!6647935 (= e!4019875 e!4019879)))

(declare-fun b!6647936 () Bool)

(declare-fun res!2724034 () Bool)

(assert (=> b!6647936 (=> (not res!2724034) (not e!4019876))))

(assert (=> b!6647936 (= res!2724034 (isEmpty!38018 (tail!12548 (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2422854 (_1!36793 lt!2423008)))))))))

(declare-fun b!6647937 () Bool)

(assert (=> b!6647937 (= e!4019878 (matchR!8694 (derivativeStep!5190 (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422859)) (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422950 lt!2422944))))) (head!13463 (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2422854 (_1!36793 lt!2423008)))))) (tail!12548 (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2422854 (_1!36793 lt!2423008)))))))))

(declare-fun d!2083565 () Bool)

(assert (=> d!2083565 e!4019874))

(declare-fun c!1226825 () Bool)

(assert (=> d!2083565 (= c!1226825 ((_ is EmptyExpr!16511) (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422859)) (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422950 lt!2422944)))))))))

(assert (=> d!2083565 (= lt!2423097 e!4019878)))

(declare-fun c!1226824 () Bool)

(assert (=> d!2083565 (= c!1226824 (isEmpty!38018 (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2422854 (_1!36793 lt!2423008))))))))

(assert (=> d!2083565 (validRegex!8247 (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422859)) (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422950 lt!2422944))))))))

(assert (=> d!2083565 (= (matchR!8694 (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422859)) (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422950 lt!2422944))))) (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2422854 (_1!36793 lt!2423008))))) lt!2423097)))

(declare-fun b!6647926 () Bool)

(assert (=> b!6647926 (= e!4019877 e!4019873)))

(declare-fun res!2724031 () Bool)

(assert (=> b!6647926 (=> res!2724031 e!4019873)))

(assert (=> b!6647926 (= res!2724031 call!586522)))

(assert (= (and d!2083565 c!1226824) b!6647928))

(assert (= (and d!2083565 (not c!1226824)) b!6647937))

(assert (= (and d!2083565 c!1226825) b!6647925))

(assert (= (and d!2083565 (not c!1226825)) b!6647927))

(assert (= (and b!6647927 c!1226823) b!6647933))

(assert (= (and b!6647927 (not c!1226823)) b!6647935))

(assert (= (and b!6647935 (not res!2724029)) b!6647929))

(assert (= (and b!6647929 res!2724035) b!6647934))

(assert (= (and b!6647934 res!2724032) b!6647936))

(assert (= (and b!6647936 res!2724034) b!6647932))

(assert (= (and b!6647929 (not res!2724030)) b!6647931))

(assert (= (and b!6647931 res!2724036) b!6647926))

(assert (= (and b!6647926 (not res!2724031)) b!6647924))

(assert (= (and b!6647924 (not res!2724033)) b!6647930))

(assert (= (or b!6647925 b!6647926 b!6647934) bm!586517))

(declare-fun m!7413694 () Bool)

(assert (=> b!6647937 m!7413694))

(assert (=> b!6647937 m!7413694))

(declare-fun m!7413696 () Bool)

(assert (=> b!6647937 m!7413696))

(declare-fun m!7413698 () Bool)

(assert (=> b!6647937 m!7413698))

(assert (=> b!6647937 m!7413696))

(assert (=> b!6647937 m!7413698))

(declare-fun m!7413700 () Bool)

(assert (=> b!6647937 m!7413700))

(assert (=> b!6647936 m!7413698))

(assert (=> b!6647936 m!7413698))

(declare-fun m!7413702 () Bool)

(assert (=> b!6647936 m!7413702))

(assert (=> b!6647924 m!7413698))

(assert (=> b!6647924 m!7413698))

(assert (=> b!6647924 m!7413702))

(declare-fun m!7413704 () Bool)

(assert (=> b!6647928 m!7413704))

(assert (=> b!6647932 m!7413694))

(declare-fun m!7413706 () Bool)

(assert (=> bm!586517 m!7413706))

(assert (=> d!2083565 m!7413706))

(declare-fun m!7413708 () Bool)

(assert (=> d!2083565 m!7413708))

(assert (=> b!6647930 m!7413694))

(assert (=> bm!586323 d!2083565))

(declare-fun d!2083567 () Bool)

(assert (=> d!2083567 (= (matchR!8694 (ite c!1226758 lt!2422888 (ite c!1226752 lt!2422860 lt!2422853)) (ite c!1226758 s!2326 (ite c!1226752 (_1!36793 lt!2423042) s!2326))) (matchRSpec!3612 (ite c!1226758 lt!2422888 (ite c!1226752 lt!2422860 lt!2422853)) (ite c!1226758 s!2326 (ite c!1226752 (_1!36793 lt!2423042) s!2326))))))

(declare-fun lt!2423099 () Unit!159453)

(assert (=> d!2083567 (= lt!2423099 (choose!49684 (ite c!1226758 lt!2422888 (ite c!1226752 lt!2422860 lt!2422853)) (ite c!1226758 s!2326 (ite c!1226752 (_1!36793 lt!2423042) s!2326))))))

(assert (=> d!2083567 (validRegex!8247 (ite c!1226758 lt!2422888 (ite c!1226752 lt!2422860 lt!2422853)))))

(assert (=> d!2083567 (= (mainMatchTheorem!3612 (ite c!1226758 lt!2422888 (ite c!1226752 lt!2422860 lt!2422853)) (ite c!1226758 s!2326 (ite c!1226752 (_1!36793 lt!2423042) s!2326))) lt!2423099)))

(declare-fun bs!1711239 () Bool)

(assert (= bs!1711239 d!2083567))

(declare-fun m!7413710 () Bool)

(assert (=> bs!1711239 m!7413710))

(declare-fun m!7413712 () Bool)

(assert (=> bs!1711239 m!7413712))

(declare-fun m!7413714 () Bool)

(assert (=> bs!1711239 m!7413714))

(declare-fun m!7413716 () Bool)

(assert (=> bs!1711239 m!7413716))

(assert (=> bm!586403 d!2083567))

(declare-fun bs!1711240 () Bool)

(declare-fun d!2083569 () Bool)

(assert (= bs!1711240 (and d!2083569 b!6647636)))

(declare-fun lambda!371973 () Int)

(assert (=> bs!1711240 (not (= lambda!371973 lambda!371954))))

(declare-fun bs!1711241 () Bool)

(assert (= bs!1711241 (and d!2083569 b!6647888)))

(assert (=> bs!1711241 (not (= lambda!371973 lambda!371967))))

(declare-fun bs!1711242 () Bool)

(assert (= bs!1711242 (and d!2083569 b!6647623)))

(assert (=> bs!1711242 (not (= lambda!371973 lambda!371934))))

(declare-fun bs!1711243 () Bool)

(assert (= bs!1711243 (and d!2083569 b!6647652)))

(assert (=> bs!1711243 (not (= lambda!371973 lambda!371943))))

(declare-fun bs!1711244 () Bool)

(assert (= bs!1711244 (and d!2083569 b!6647657)))

(assert (=> bs!1711244 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) (_1!36793 lt!2423008)) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) lt!2422860)) (= lambda!371973 lambda!371949))))

(declare-fun bs!1711245 () Bool)

(assert (= bs!1711245 (and d!2083569 b!6647624)))

(assert (=> bs!1711245 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) lt!2422956)) (= lambda!371973 lambda!371937))))

(declare-fun bs!1711246 () Bool)

(assert (= bs!1711246 (and d!2083569 b!6647663)))

(assert (=> bs!1711246 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) (regTwo!33534 r!7292))) (= lambda!371973 lambda!371928))))

(declare-fun bs!1711247 () Bool)

(assert (= bs!1711247 (and d!2083569 b!6647844)))

(assert (=> bs!1711247 (not (= lambda!371973 lambda!371963))))

(assert (=> bs!1711242 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) lt!2422859)) (= lambda!371973 lambda!371933))))

(assert (=> bs!1711244 (not (= lambda!371973 lambda!371951))))

(declare-fun bs!1711248 () Bool)

(assert (= bs!1711248 (and d!2083569 b!6647847)))

(assert (=> bs!1711248 (not (= lambda!371973 lambda!371962))))

(assert (=> bs!1711244 (not (= lambda!371973 lambda!371950))))

(assert (=> bs!1711246 (not (= lambda!371973 lambda!371929))))

(assert (=> bs!1711242 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) lt!2423021)) (= lambda!371973 lambda!371931))))

(assert (=> bs!1711243 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) (_1!36793 lt!2423042)) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) lt!2422860)) (= lambda!371973 lambda!371941))))

(assert (=> bs!1711245 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) lt!2422957)) (= lambda!371973 lambda!371935))))

(assert (=> bs!1711240 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) Nil!65708) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) lt!2422860)) (= lambda!371973 lambda!371952))))

(declare-fun bs!1711249 () Bool)

(assert (= bs!1711249 (and d!2083569 b!6647651)))

(assert (=> bs!1711249 (not (= lambda!371973 lambda!371940))))

(assert (=> bs!1711244 (not (= lambda!371973 lambda!371948))))

(declare-fun bs!1711250 () Bool)

(assert (= bs!1711250 (and d!2083569 b!6647885)))

(assert (=> bs!1711250 (not (= lambda!371973 lambda!371968))))

(declare-fun bs!1711251 () Bool)

(assert (= bs!1711251 (and d!2083569 b!6647902)))

(assert (=> bs!1711251 (not (= lambda!371973 lambda!371970))))

(assert (=> bs!1711245 (not (= lambda!371973 lambda!371936))))

(assert (=> bs!1711244 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) lt!2422944) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) (regTwo!33534 r!7292))) (= lambda!371973 lambda!371947))))

(assert (=> bs!1711245 (not (= lambda!371973 lambda!371938))))

(assert (=> bs!1711240 (not (= lambda!371973 lambda!371953))))

(assert (=> bs!1711242 (not (= lambda!371973 lambda!371932))))

(declare-fun bs!1711252 () Bool)

(assert (= bs!1711252 (and d!2083569 b!6647905)))

(assert (=> bs!1711252 (not (= lambda!371973 lambda!371969))))

(assert (=> bs!1711249 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) lt!2422860) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) (regTwo!33534 r!7292))) (= lambda!371973 lambda!371939))))

(assert (=> bs!1711243 (not (= lambda!371973 lambda!371942))))

(assert (=> d!2083569 true))

(assert (=> d!2083569 true))

(assert (=> d!2083569 true))

(assert (=> d!2083569 (= (isDefined!13105 (findConcatSeparation!2816 (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) Nil!65708 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))))) (Exists!3581 lambda!371973))))

(declare-fun lt!2423104 () Unit!159453)

(declare-fun choose!49685 (Regex!16511 Regex!16511 List!65832) Unit!159453)

(assert (=> d!2083569 (= lt!2423104 (choose!49685 (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)))))))

(assert (=> d!2083569 (validRegex!8247 (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))))

(assert (=> d!2083569 (= (lemmaFindConcatSeparationEquivalentToExists!2580 (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)))) lt!2423104)))

(declare-fun bs!1711253 () Bool)

(assert (= bs!1711253 d!2083569))

(declare-fun m!7413738 () Bool)

(assert (=> bs!1711253 m!7413738))

(declare-fun m!7413740 () Bool)

(assert (=> bs!1711253 m!7413740))

(declare-fun m!7413742 () Bool)

(assert (=> bs!1711253 m!7413742))

(declare-fun m!7413744 () Bool)

(assert (=> bs!1711253 m!7413744))

(assert (=> bs!1711253 m!7413744))

(declare-fun m!7413746 () Bool)

(assert (=> bs!1711253 m!7413746))

(assert (=> bm!586368 d!2083569))

(declare-fun c!1226829 () Bool)

(declare-fun d!2083575 () Bool)

(assert (=> d!2083575 (= c!1226829 (isEmpty!38018 (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 s!2326 (_1!36793 lt!2422848)) s!2326)))))))

(declare-fun e!4019888 () Bool)

(assert (=> d!2083575 (= (matchZipper!2523 (ite c!1226754 lt!2422946 (ite (or c!1226758 c!1226748) z!1189 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422975 z!1189) lt!2422849) lt!2422942))) (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 s!2326 (_1!36793 lt!2422848)) s!2326)))) e!4019888)))

(declare-fun b!6647954 () Bool)

(assert (=> b!6647954 (= e!4019888 (nullableZipper!2251 (ite c!1226754 lt!2422946 (ite (or c!1226758 c!1226748) z!1189 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422975 z!1189) lt!2422849) lt!2422942)))))))

(declare-fun b!6647955 () Bool)

(assert (=> b!6647955 (= e!4019888 (matchZipper!2523 (derivationStepZipper!2477 (ite c!1226754 lt!2422946 (ite (or c!1226758 c!1226748) z!1189 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422975 z!1189) lt!2422849) lt!2422942))) (head!13463 (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 s!2326 (_1!36793 lt!2422848)) s!2326))))) (tail!12548 (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226756 (ite c!1226752 s!2326 (_1!36793 lt!2422848)) s!2326))))))))

(assert (= (and d!2083575 c!1226829) b!6647954))

(assert (= (and d!2083575 (not c!1226829)) b!6647955))

(declare-fun m!7413748 () Bool)

(assert (=> d!2083575 m!7413748))

(declare-fun m!7413750 () Bool)

(assert (=> b!6647954 m!7413750))

(declare-fun m!7413752 () Bool)

(assert (=> b!6647955 m!7413752))

(assert (=> b!6647955 m!7413752))

(declare-fun m!7413754 () Bool)

(assert (=> b!6647955 m!7413754))

(declare-fun m!7413756 () Bool)

(assert (=> b!6647955 m!7413756))

(assert (=> b!6647955 m!7413754))

(assert (=> b!6647955 m!7413756))

(declare-fun m!7413758 () Bool)

(assert (=> b!6647955 m!7413758))

(assert (=> bm!586454 d!2083575))

(declare-fun d!2083577 () Bool)

(declare-fun e!4019891 () Bool)

(assert (=> d!2083577 e!4019891))

(declare-fun res!2724049 () Bool)

(assert (=> d!2083577 (=> (not res!2724049) (not e!4019891))))

(declare-fun lt!2423108 () List!65834)

(declare-fun noDuplicate!2311 (List!65834) Bool)

(assert (=> d!2083577 (= res!2724049 (noDuplicate!2311 lt!2423108))))

(declare-fun choose!49686 ((InoxSet Context!11790)) List!65834)

(assert (=> d!2083577 (= lt!2423108 (choose!49686 z!1189))))

(assert (=> d!2083577 (= (toList!10295 z!1189) lt!2423108)))

(declare-fun b!6647958 () Bool)

(declare-fun content!12704 (List!65834) (InoxSet Context!11790))

(assert (=> b!6647958 (= e!4019891 (= (content!12704 lt!2423108) z!1189))))

(assert (= (and d!2083577 res!2724049) b!6647958))

(declare-fun m!7413760 () Bool)

(assert (=> d!2083577 m!7413760))

(declare-fun m!7413762 () Bool)

(assert (=> d!2083577 m!7413762))

(declare-fun m!7413764 () Bool)

(assert (=> b!6647958 m!7413764))

(assert (=> b!6647681 d!2083577))

(declare-fun call!586525 () (InoxSet Context!11790))

(declare-fun bm!586520 () Bool)

(assert (=> bm!586520 (= call!586525 (derivationStepZipperDown!1759 (h!72157 (exprs!6395 (ite c!1226756 lt!2422955 lt!2423045))) (Context!11791 (t!379502 (exprs!6395 (ite c!1226756 lt!2422955 lt!2423045)))) (h!72156 s!2326)))))

(declare-fun b!6647969 () Bool)

(declare-fun e!4019899 () Bool)

(assert (=> b!6647969 (= e!4019899 (nullable!6504 (h!72157 (exprs!6395 (ite c!1226756 lt!2422955 lt!2423045)))))))

(declare-fun b!6647970 () Bool)

(declare-fun e!4019898 () (InoxSet Context!11790))

(declare-fun e!4019900 () (InoxSet Context!11790))

(assert (=> b!6647970 (= e!4019898 e!4019900)))

(declare-fun c!1226835 () Bool)

(assert (=> b!6647970 (= c!1226835 ((_ is Cons!65709) (exprs!6395 (ite c!1226756 lt!2422955 lt!2423045))))))

(declare-fun b!6647971 () Bool)

(assert (=> b!6647971 (= e!4019900 ((as const (Array Context!11790 Bool)) false))))

(declare-fun d!2083579 () Bool)

(declare-fun c!1226834 () Bool)

(assert (=> d!2083579 (= c!1226834 e!4019899)))

(declare-fun res!2724052 () Bool)

(assert (=> d!2083579 (=> (not res!2724052) (not e!4019899))))

(assert (=> d!2083579 (= res!2724052 ((_ is Cons!65709) (exprs!6395 (ite c!1226756 lt!2422955 lt!2423045))))))

(assert (=> d!2083579 (= (derivationStepZipperUp!1685 (ite c!1226756 lt!2422955 lt!2423045) (h!72156 s!2326)) e!4019898)))

(declare-fun b!6647972 () Bool)

(assert (=> b!6647972 (= e!4019900 call!586525)))

(declare-fun b!6647973 () Bool)

(assert (=> b!6647973 (= e!4019898 ((_ map or) call!586525 (derivationStepZipperUp!1685 (Context!11791 (t!379502 (exprs!6395 (ite c!1226756 lt!2422955 lt!2423045)))) (h!72156 s!2326))))))

(assert (= (and d!2083579 res!2724052) b!6647969))

(assert (= (and d!2083579 c!1226834) b!6647973))

(assert (= (and d!2083579 (not c!1226834)) b!6647970))

(assert (= (and b!6647970 c!1226835) b!6647972))

(assert (= (and b!6647970 (not c!1226835)) b!6647971))

(assert (= (or b!6647973 b!6647972) bm!586520))

(declare-fun m!7413766 () Bool)

(assert (=> bm!586520 m!7413766))

(declare-fun m!7413768 () Bool)

(assert (=> b!6647969 m!7413768))

(declare-fun m!7413770 () Bool)

(assert (=> b!6647973 m!7413770))

(assert (=> bm!586436 d!2083579))

(declare-fun d!2083581 () Bool)

(declare-fun c!1226836 () Bool)

(assert (=> d!2083581 (= c!1226836 (isEmpty!38018 (t!379501 s!2326)))))

(declare-fun e!4019901 () Bool)

(assert (=> d!2083581 (= (matchZipper!2523 lt!2423000 (t!379501 s!2326)) e!4019901)))

(declare-fun b!6647974 () Bool)

(assert (=> b!6647974 (= e!4019901 (nullableZipper!2251 lt!2423000))))

(declare-fun b!6647975 () Bool)

(assert (=> b!6647975 (= e!4019901 (matchZipper!2523 (derivationStepZipper!2477 lt!2423000 (head!13463 (t!379501 s!2326))) (tail!12548 (t!379501 s!2326))))))

(assert (= (and d!2083581 c!1226836) b!6647974))

(assert (= (and d!2083581 (not c!1226836)) b!6647975))

(declare-fun m!7413772 () Bool)

(assert (=> d!2083581 m!7413772))

(declare-fun m!7413774 () Bool)

(assert (=> b!6647974 m!7413774))

(declare-fun m!7413776 () Bool)

(assert (=> b!6647975 m!7413776))

(assert (=> b!6647975 m!7413776))

(declare-fun m!7413778 () Bool)

(assert (=> b!6647975 m!7413778))

(declare-fun m!7413780 () Bool)

(assert (=> b!6647975 m!7413780))

(assert (=> b!6647975 m!7413778))

(assert (=> b!6647975 m!7413780))

(declare-fun m!7413782 () Bool)

(assert (=> b!6647975 m!7413782))

(assert (=> b!6647686 d!2083581))

(declare-fun bs!1711254 () Bool)

(declare-fun d!2083583 () Bool)

(assert (= bs!1711254 (and d!2083583 b!6647652)))

(declare-fun lambda!371974 () Int)

(assert (=> bs!1711254 (= lambda!371974 lambda!371944)))

(declare-fun bs!1711255 () Bool)

(assert (= bs!1711255 (and d!2083583 b!6647657)))

(assert (=> bs!1711255 (= lambda!371974 lambda!371946)))

(declare-fun bs!1711256 () Bool)

(assert (= bs!1711256 (and d!2083583 d!2083521)))

(assert (=> bs!1711256 (= lambda!371974 lambda!371957)))

(declare-fun bs!1711257 () Bool)

(assert (= bs!1711257 (and d!2083583 d!2083539)))

(assert (=> bs!1711257 (= lambda!371974 lambda!371966)))

(assert (=> d!2083583 (= (inv!84524 setElem!45441) (forall!15706 (exprs!6395 setElem!45441) lambda!371974))))

(declare-fun bs!1711258 () Bool)

(assert (= bs!1711258 d!2083583))

(declare-fun m!7413784 () Bool)

(assert (=> bs!1711258 m!7413784))

(assert (=> setNonEmpty!45441 d!2083583))

(declare-fun bs!1711259 () Bool)

(declare-fun d!2083585 () Bool)

(assert (= bs!1711259 (and d!2083585 b!6647652)))

(declare-fun lambda!371979 () Int)

(assert (=> bs!1711259 (= lambda!371979 lambda!371944)))

(declare-fun bs!1711260 () Bool)

(assert (= bs!1711260 (and d!2083585 d!2083521)))

(assert (=> bs!1711260 (= lambda!371979 lambda!371957)))

(declare-fun bs!1711261 () Bool)

(assert (= bs!1711261 (and d!2083585 b!6647657)))

(assert (=> bs!1711261 (= lambda!371979 lambda!371946)))

(declare-fun bs!1711262 () Bool)

(assert (= bs!1711262 (and d!2083585 d!2083583)))

(assert (=> bs!1711262 (= lambda!371979 lambda!371974)))

(declare-fun bs!1711263 () Bool)

(assert (= bs!1711263 (and d!2083585 d!2083539)))

(assert (=> bs!1711263 (= lambda!371979 lambda!371966)))

(declare-fun b!6648000 () Bool)

(declare-fun e!4019918 () Bool)

(declare-fun lt!2423113 () Regex!16511)

(declare-fun isConcat!1407 (Regex!16511) Bool)

(assert (=> b!6648000 (= e!4019918 (isConcat!1407 lt!2423113))))

(declare-fun b!6648001 () Bool)

(declare-fun e!4019920 () Bool)

(assert (=> b!6648001 (= e!4019920 e!4019918)))

(declare-fun c!1226845 () Bool)

(declare-fun tail!12549 (List!65833) List!65833)

(assert (=> b!6648001 (= c!1226845 (isEmpty!38017 (tail!12549 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun b!6648003 () Bool)

(declare-fun e!4019921 () Regex!16511)

(assert (=> b!6648003 (= e!4019921 EmptyExpr!16511)))

(declare-fun b!6648004 () Bool)

(declare-fun isEmptyExpr!1884 (Regex!16511) Bool)

(assert (=> b!6648004 (= e!4019920 (isEmptyExpr!1884 lt!2423113))))

(declare-fun b!6648005 () Bool)

(declare-fun e!4019919 () Regex!16511)

(assert (=> b!6648005 (= e!4019919 e!4019921)))

(declare-fun c!1226848 () Bool)

(assert (=> b!6648005 (= c!1226848 ((_ is Cons!65709) (exprs!6395 (h!72158 zl!343))))))

(declare-fun b!6648006 () Bool)

(declare-fun e!4019916 () Bool)

(assert (=> b!6648006 (= e!4019916 e!4019920)))

(declare-fun c!1226847 () Bool)

(assert (=> b!6648006 (= c!1226847 (isEmpty!38017 (exprs!6395 (h!72158 zl!343))))))

(declare-fun b!6648007 () Bool)

(assert (=> b!6648007 (= e!4019919 (h!72157 (exprs!6395 (h!72158 zl!343))))))

(declare-fun b!6648008 () Bool)

(assert (=> b!6648008 (= e!4019921 (Concat!25356 (h!72157 (exprs!6395 (h!72158 zl!343))) (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))))))

(declare-fun b!6648009 () Bool)

(declare-fun head!13464 (List!65833) Regex!16511)

(assert (=> b!6648009 (= e!4019918 (= lt!2423113 (head!13464 (exprs!6395 (h!72158 zl!343)))))))

(assert (=> d!2083585 e!4019916))

(declare-fun res!2724062 () Bool)

(assert (=> d!2083585 (=> (not res!2724062) (not e!4019916))))

(assert (=> d!2083585 (= res!2724062 (validRegex!8247 lt!2423113))))

(assert (=> d!2083585 (= lt!2423113 e!4019919)))

(declare-fun c!1226846 () Bool)

(declare-fun e!4019917 () Bool)

(assert (=> d!2083585 (= c!1226846 e!4019917)))

(declare-fun res!2724061 () Bool)

(assert (=> d!2083585 (=> (not res!2724061) (not e!4019917))))

(assert (=> d!2083585 (= res!2724061 ((_ is Cons!65709) (exprs!6395 (h!72158 zl!343))))))

(assert (=> d!2083585 (forall!15706 (exprs!6395 (h!72158 zl!343)) lambda!371979)))

(assert (=> d!2083585 (= (generalisedConcat!2108 (exprs!6395 (h!72158 zl!343))) lt!2423113)))

(declare-fun b!6648002 () Bool)

(assert (=> b!6648002 (= e!4019917 (isEmpty!38017 (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(assert (= (and d!2083585 res!2724061) b!6648002))

(assert (= (and d!2083585 c!1226846) b!6648007))

(assert (= (and d!2083585 (not c!1226846)) b!6648005))

(assert (= (and b!6648005 c!1226848) b!6648008))

(assert (= (and b!6648005 (not c!1226848)) b!6648003))

(assert (= (and d!2083585 res!2724062) b!6648006))

(assert (= (and b!6648006 c!1226847) b!6648004))

(assert (= (and b!6648006 (not c!1226847)) b!6648001))

(assert (= (and b!6648001 c!1226845) b!6648009))

(assert (= (and b!6648001 (not c!1226845)) b!6648000))

(declare-fun m!7413786 () Bool)

(assert (=> b!6648006 m!7413786))

(assert (=> b!6648008 m!7413362))

(declare-fun m!7413788 () Bool)

(assert (=> b!6648001 m!7413788))

(assert (=> b!6648001 m!7413788))

(declare-fun m!7413790 () Bool)

(assert (=> b!6648001 m!7413790))

(declare-fun m!7413792 () Bool)

(assert (=> b!6648009 m!7413792))

(assert (=> b!6648002 m!7413252))

(declare-fun m!7413794 () Bool)

(assert (=> d!2083585 m!7413794))

(declare-fun m!7413796 () Bool)

(assert (=> d!2083585 m!7413796))

(declare-fun m!7413798 () Bool)

(assert (=> b!6648004 m!7413798))

(declare-fun m!7413800 () Bool)

(assert (=> b!6648000 m!7413800))

(assert (=> b!6647661 d!2083585))

(declare-fun b!6648010 () Bool)

(declare-fun e!4019925 () Option!16402)

(declare-fun e!4019923 () Option!16402)

(assert (=> b!6648010 (= e!4019925 e!4019923)))

(declare-fun c!1226850 () Bool)

(assert (=> b!6648010 (= c!1226850 ((_ is Nil!65708) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))))))

(declare-fun b!6648011 () Bool)

(assert (=> b!6648011 (= e!4019925 (Some!16401 (tuple2!66981 Nil!65708 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008))))))))

(declare-fun b!6648012 () Bool)

(declare-fun res!2724065 () Bool)

(declare-fun e!4019924 () Bool)

(assert (=> b!6648012 (=> (not res!2724065) (not e!4019924))))

(declare-fun lt!2423115 () Option!16402)

(assert (=> b!6648012 (= res!2724065 (matchR!8694 (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422956 lt!2422860)) (_2!36793 (get!22848 lt!2423115))))))

(declare-fun b!6648013 () Bool)

(assert (=> b!6648013 (= e!4019923 None!16401)))

(declare-fun b!6648015 () Bool)

(declare-fun e!4019922 () Bool)

(assert (=> b!6648015 (= e!4019922 (not (isDefined!13105 lt!2423115)))))

(declare-fun e!4019926 () Bool)

(declare-fun b!6648016 () Bool)

(assert (=> b!6648016 (= e!4019926 (matchR!8694 (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422956 lt!2422860)) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))))))

(declare-fun d!2083587 () Bool)

(assert (=> d!2083587 e!4019922))

(declare-fun res!2724067 () Bool)

(assert (=> d!2083587 (=> res!2724067 e!4019922)))

(assert (=> d!2083587 (= res!2724067 e!4019924)))

(declare-fun res!2724064 () Bool)

(assert (=> d!2083587 (=> (not res!2724064) (not e!4019924))))

(assert (=> d!2083587 (= res!2724064 (isDefined!13105 lt!2423115))))

(assert (=> d!2083587 (= lt!2423115 e!4019925)))

(declare-fun c!1226849 () Bool)

(assert (=> d!2083587 (= c!1226849 e!4019926)))

(declare-fun res!2724066 () Bool)

(assert (=> d!2083587 (=> (not res!2724066) (not e!4019926))))

(assert (=> d!2083587 (= res!2724066 (matchR!8694 (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))) Nil!65708))))

(assert (=> d!2083587 (validRegex!8247 (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))))

(assert (=> d!2083587 (= (findConcatSeparation!2816 (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422956 lt!2422860)) Nil!65708 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008))) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))) lt!2423115)))

(declare-fun b!6648014 () Bool)

(assert (=> b!6648014 (= e!4019924 (= (++!14664 (_1!36793 (get!22848 lt!2423115)) (_2!36793 (get!22848 lt!2423115))) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))))))

(declare-fun b!6648017 () Bool)

(declare-fun res!2724063 () Bool)

(assert (=> b!6648017 (=> (not res!2724063) (not e!4019924))))

(assert (=> b!6648017 (= res!2724063 (matchR!8694 (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))) (_1!36793 (get!22848 lt!2423115))))))

(declare-fun b!6648018 () Bool)

(declare-fun lt!2423116 () Unit!159453)

(declare-fun lt!2423117 () Unit!159453)

(assert (=> b!6648018 (= lt!2423116 lt!2423117)))

(assert (=> b!6648018 (= (++!14664 (++!14664 Nil!65708 (Cons!65708 (h!72156 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))) Nil!65708)) (t!379501 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008))))) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008))))))

(assert (=> b!6648018 (= lt!2423117 (lemmaMoveElementToOtherListKeepsConcatEq!2649 Nil!65708 (h!72156 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))) (t!379501 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))))))

(assert (=> b!6648018 (= e!4019923 (findConcatSeparation!2816 (ite (or c!1226748 c!1226755) (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422956 lt!2422860)) (++!14664 Nil!65708 (Cons!65708 (h!72156 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))) Nil!65708)) (t!379501 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (_1!36793 lt!2423008)))))))

(assert (= (and d!2083587 res!2724066) b!6648016))

(assert (= (and d!2083587 c!1226849) b!6648011))

(assert (= (and d!2083587 (not c!1226849)) b!6648010))

(assert (= (and b!6648010 c!1226850) b!6648013))

(assert (= (and b!6648010 (not c!1226850)) b!6648018))

(assert (= (and d!2083587 res!2724064) b!6648017))

(assert (= (and b!6648017 res!2724063) b!6648012))

(assert (= (and b!6648012 res!2724065) b!6648014))

(assert (= (and d!2083587 (not res!2724067)) b!6648015))

(declare-fun m!7413802 () Bool)

(assert (=> b!6648018 m!7413802))

(assert (=> b!6648018 m!7413802))

(declare-fun m!7413804 () Bool)

(assert (=> b!6648018 m!7413804))

(declare-fun m!7413806 () Bool)

(assert (=> b!6648018 m!7413806))

(assert (=> b!6648018 m!7413802))

(declare-fun m!7413808 () Bool)

(assert (=> b!6648018 m!7413808))

(declare-fun m!7413810 () Bool)

(assert (=> d!2083587 m!7413810))

(declare-fun m!7413812 () Bool)

(assert (=> d!2083587 m!7413812))

(declare-fun m!7413814 () Bool)

(assert (=> d!2083587 m!7413814))

(declare-fun m!7413816 () Bool)

(assert (=> b!6648012 m!7413816))

(declare-fun m!7413818 () Bool)

(assert (=> b!6648012 m!7413818))

(assert (=> b!6648014 m!7413816))

(declare-fun m!7413820 () Bool)

(assert (=> b!6648014 m!7413820))

(assert (=> b!6648017 m!7413816))

(declare-fun m!7413822 () Bool)

(assert (=> b!6648017 m!7413822))

(assert (=> b!6648015 m!7413810))

(declare-fun m!7413824 () Bool)

(assert (=> b!6648016 m!7413824))

(assert (=> bm!586365 d!2083587))

(declare-fun d!2083589 () Bool)

(declare-fun isEmpty!38019 (Option!16402) Bool)

(assert (=> d!2083589 (= (isDefined!13105 (ite c!1226748 call!586308 (ite c!1226755 call!586408 (ite c!1226752 lt!2423026 lt!2423040)))) (not (isEmpty!38019 (ite c!1226748 call!586308 (ite c!1226755 call!586408 (ite c!1226752 lt!2423026 lt!2423040))))))))

(declare-fun bs!1711269 () Bool)

(assert (= bs!1711269 d!2083589))

(declare-fun m!7413826 () Bool)

(assert (=> bs!1711269 m!7413826))

(assert (=> bm!586300 d!2083589))

(declare-fun d!2083591 () Bool)

(assert (=> d!2083591 (= (isEmpty!38016 (t!379503 zl!343)) ((_ is Nil!65710) (t!379503 zl!343)))))

(assert (=> b!6647626 d!2083591))

(declare-fun d!2083593 () Bool)

(assert (=> d!2083593 (= (++!14664 (++!14664 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422896))) (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008))) (++!14664 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)) (++!14664 (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008)))))))

(declare-fun lt!2423120 () Unit!159453)

(declare-fun choose!49690 (List!65832 List!65832 List!65832) Unit!159453)

(assert (=> d!2083593 (= lt!2423120 (choose!49690 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008))))))

(assert (=> d!2083593 (= (lemmaConcatAssociativity!2954 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2422864) (_2!36793 lt!2422896)) (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008))) lt!2423120)))

(declare-fun bs!1711272 () Bool)

(assert (= bs!1711272 d!2083593))

(assert (=> bs!1711272 m!7413530))

(declare-fun m!7413828 () Bool)

(assert (=> bs!1711272 m!7413828))

(declare-fun m!7413830 () Bool)

(assert (=> bs!1711272 m!7413830))

(declare-fun m!7413832 () Bool)

(assert (=> bs!1711272 m!7413832))

(assert (=> bs!1711272 m!7413530))

(assert (=> bs!1711272 m!7413830))

(declare-fun m!7413834 () Bool)

(assert (=> bs!1711272 m!7413834))

(assert (=> bm!586348 d!2083593))

(declare-fun b!6648019 () Bool)

(declare-fun res!2724072 () Bool)

(declare-fun e!4019927 () Bool)

(assert (=> b!6648019 (=> res!2724072 e!4019927)))

(assert (=> b!6648019 (= res!2724072 (not (isEmpty!38018 (tail!12548 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))))))))

(declare-fun b!6648020 () Bool)

(declare-fun e!4019928 () Bool)

(declare-fun lt!2423121 () Bool)

(declare-fun call!586526 () Bool)

(assert (=> b!6648020 (= e!4019928 (= lt!2423121 call!586526))))

(declare-fun b!6648022 () Bool)

(declare-fun e!4019929 () Bool)

(assert (=> b!6648022 (= e!4019928 e!4019929)))

(declare-fun c!1226851 () Bool)

(assert (=> b!6648022 (= c!1226851 ((_ is EmptyLang!16511) (reg!16840 (regOne!33534 r!7292))))))

(declare-fun b!6648023 () Bool)

(declare-fun e!4019932 () Bool)

(assert (=> b!6648023 (= e!4019932 (nullable!6504 (reg!16840 (regOne!33534 r!7292))))))

(declare-fun b!6648024 () Bool)

(declare-fun res!2724069 () Bool)

(declare-fun e!4019933 () Bool)

(assert (=> b!6648024 (=> res!2724069 e!4019933)))

(declare-fun e!4019930 () Bool)

(assert (=> b!6648024 (= res!2724069 e!4019930)))

(declare-fun res!2724074 () Bool)

(assert (=> b!6648024 (=> (not res!2724074) (not e!4019930))))

(assert (=> b!6648024 (= res!2724074 lt!2423121)))

(declare-fun b!6648025 () Bool)

(assert (=> b!6648025 (= e!4019927 (not (= (head!13463 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))) (c!1226759 (reg!16840 (regOne!33534 r!7292))))))))

(declare-fun b!6648026 () Bool)

(declare-fun e!4019931 () Bool)

(assert (=> b!6648026 (= e!4019933 e!4019931)))

(declare-fun res!2724075 () Bool)

(assert (=> b!6648026 (=> (not res!2724075) (not e!4019931))))

(assert (=> b!6648026 (= res!2724075 (not lt!2423121))))

(declare-fun b!6648027 () Bool)

(assert (=> b!6648027 (= e!4019930 (= (head!13463 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))) (c!1226759 (reg!16840 (regOne!33534 r!7292)))))))

(declare-fun bm!586521 () Bool)

(assert (=> bm!586521 (= call!586526 (isEmpty!38018 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))))))

(declare-fun b!6648028 () Bool)

(assert (=> b!6648028 (= e!4019929 (not lt!2423121))))

(declare-fun b!6648029 () Bool)

(declare-fun res!2724071 () Bool)

(assert (=> b!6648029 (=> (not res!2724071) (not e!4019930))))

(assert (=> b!6648029 (= res!2724071 (not call!586526))))

(declare-fun b!6648030 () Bool)

(declare-fun res!2724068 () Bool)

(assert (=> b!6648030 (=> res!2724068 e!4019933)))

(assert (=> b!6648030 (= res!2724068 (not ((_ is ElementMatch!16511) (reg!16840 (regOne!33534 r!7292)))))))

(assert (=> b!6648030 (= e!4019929 e!4019933)))

(declare-fun b!6648031 () Bool)

(declare-fun res!2724073 () Bool)

(assert (=> b!6648031 (=> (not res!2724073) (not e!4019930))))

(assert (=> b!6648031 (= res!2724073 (isEmpty!38018 (tail!12548 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)))))))

(declare-fun b!6648032 () Bool)

(assert (=> b!6648032 (= e!4019932 (matchR!8694 (derivativeStep!5190 (reg!16840 (regOne!33534 r!7292)) (head!13463 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)))) (tail!12548 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)))))))

(declare-fun d!2083595 () Bool)

(assert (=> d!2083595 e!4019928))

(declare-fun c!1226853 () Bool)

(assert (=> d!2083595 (= c!1226853 ((_ is EmptyExpr!16511) (reg!16840 (regOne!33534 r!7292))))))

(assert (=> d!2083595 (= lt!2423121 e!4019932)))

(declare-fun c!1226852 () Bool)

(assert (=> d!2083595 (= c!1226852 (isEmpty!38018 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))))))

(assert (=> d!2083595 (validRegex!8247 (reg!16840 (regOne!33534 r!7292)))))

(assert (=> d!2083595 (= (matchR!8694 (reg!16840 (regOne!33534 r!7292)) (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848))) lt!2423121)))

(declare-fun b!6648021 () Bool)

(assert (=> b!6648021 (= e!4019931 e!4019927)))

(declare-fun res!2724070 () Bool)

(assert (=> b!6648021 (=> res!2724070 e!4019927)))

(assert (=> b!6648021 (= res!2724070 call!586526)))

(assert (= (and d!2083595 c!1226852) b!6648023))

(assert (= (and d!2083595 (not c!1226852)) b!6648032))

(assert (= (and d!2083595 c!1226853) b!6648020))

(assert (= (and d!2083595 (not c!1226853)) b!6648022))

(assert (= (and b!6648022 c!1226851) b!6648028))

(assert (= (and b!6648022 (not c!1226851)) b!6648030))

(assert (= (and b!6648030 (not res!2724068)) b!6648024))

(assert (= (and b!6648024 res!2724074) b!6648029))

(assert (= (and b!6648029 res!2724071) b!6648031))

(assert (= (and b!6648031 res!2724073) b!6648027))

(assert (= (and b!6648024 (not res!2724069)) b!6648026))

(assert (= (and b!6648026 res!2724075) b!6648021))

(assert (= (and b!6648021 (not res!2724070)) b!6648019))

(assert (= (and b!6648019 (not res!2724072)) b!6648025))

(assert (= (or b!6648020 b!6648021 b!6648029) bm!586521))

(declare-fun m!7413836 () Bool)

(assert (=> b!6648032 m!7413836))

(assert (=> b!6648032 m!7413836))

(declare-fun m!7413838 () Bool)

(assert (=> b!6648032 m!7413838))

(declare-fun m!7413840 () Bool)

(assert (=> b!6648032 m!7413840))

(assert (=> b!6648032 m!7413838))

(assert (=> b!6648032 m!7413840))

(declare-fun m!7413842 () Bool)

(assert (=> b!6648032 m!7413842))

(assert (=> b!6648031 m!7413840))

(assert (=> b!6648031 m!7413840))

(declare-fun m!7413844 () Bool)

(assert (=> b!6648031 m!7413844))

(assert (=> b!6648019 m!7413840))

(assert (=> b!6648019 m!7413840))

(assert (=> b!6648019 m!7413844))

(declare-fun m!7413846 () Bool)

(assert (=> b!6648023 m!7413846))

(assert (=> b!6648027 m!7413836))

(declare-fun m!7413848 () Bool)

(assert (=> bm!586521 m!7413848))

(assert (=> d!2083595 m!7413848))

(declare-fun m!7413850 () Bool)

(assert (=> d!2083595 m!7413850))

(assert (=> b!6648025 m!7413836))

(assert (=> bm!586412 d!2083595))

(declare-fun d!2083597 () Bool)

(assert (=> d!2083597 (= (Exists!3581 (ite c!1226748 lambda!371933 (ite c!1226755 lambda!371935 (ite c!1226752 lambda!371941 (ite c!1226757 lambda!371950 lambda!371953))))) (choose!49681 (ite c!1226748 lambda!371933 (ite c!1226755 lambda!371935 (ite c!1226752 lambda!371941 (ite c!1226757 lambda!371950 lambda!371953))))))))

(declare-fun bs!1711273 () Bool)

(assert (= bs!1711273 d!2083597))

(declare-fun m!7413852 () Bool)

(assert (=> bs!1711273 m!7413852))

(assert (=> bm!586296 d!2083597))

(declare-fun d!2083599 () Bool)

(declare-fun c!1226854 () Bool)

(assert (=> d!2083599 (= c!1226854 (isEmpty!38018 (ite (or c!1226758 c!1226748) (t!379501 s!2326) (ite (and c!1226756 c!1226752) (ite c!1226751 s!2326 lt!2422854) (t!379501 s!2326)))))))

(declare-fun e!4019934 () Bool)

(assert (=> d!2083599 (= (matchZipper!2523 (ite c!1226758 lt!2422855 (ite c!1226748 lt!2422876 (ite (and c!1226756 c!1226752) (ite c!1226751 z!1189 lt!2422923) lt!2423006))) (ite (or c!1226758 c!1226748) (t!379501 s!2326) (ite (and c!1226756 c!1226752) (ite c!1226751 s!2326 lt!2422854) (t!379501 s!2326)))) e!4019934)))

(declare-fun b!6648033 () Bool)

(assert (=> b!6648033 (= e!4019934 (nullableZipper!2251 (ite c!1226758 lt!2422855 (ite c!1226748 lt!2422876 (ite (and c!1226756 c!1226752) (ite c!1226751 z!1189 lt!2422923) lt!2423006)))))))

(declare-fun b!6648034 () Bool)

(assert (=> b!6648034 (= e!4019934 (matchZipper!2523 (derivationStepZipper!2477 (ite c!1226758 lt!2422855 (ite c!1226748 lt!2422876 (ite (and c!1226756 c!1226752) (ite c!1226751 z!1189 lt!2422923) lt!2423006))) (head!13463 (ite (or c!1226758 c!1226748) (t!379501 s!2326) (ite (and c!1226756 c!1226752) (ite c!1226751 s!2326 lt!2422854) (t!379501 s!2326))))) (tail!12548 (ite (or c!1226758 c!1226748) (t!379501 s!2326) (ite (and c!1226756 c!1226752) (ite c!1226751 s!2326 lt!2422854) (t!379501 s!2326))))))))

(assert (= (and d!2083599 c!1226854) b!6648033))

(assert (= (and d!2083599 (not c!1226854)) b!6648034))

(declare-fun m!7413860 () Bool)

(assert (=> d!2083599 m!7413860))

(declare-fun m!7413862 () Bool)

(assert (=> b!6648033 m!7413862))

(declare-fun m!7413864 () Bool)

(assert (=> b!6648034 m!7413864))

(assert (=> b!6648034 m!7413864))

(declare-fun m!7413868 () Bool)

(assert (=> b!6648034 m!7413868))

(declare-fun m!7413872 () Bool)

(assert (=> b!6648034 m!7413872))

(assert (=> b!6648034 m!7413868))

(assert (=> b!6648034 m!7413872))

(declare-fun m!7413874 () Bool)

(assert (=> b!6648034 m!7413874))

(assert (=> bm!586282 d!2083599))

(declare-fun bs!1711275 () Bool)

(declare-fun d!2083603 () Bool)

(assert (= bs!1711275 (and d!2083603 b!6647652)))

(declare-fun lambda!371981 () Int)

(assert (=> bs!1711275 (= lambda!371981 lambda!371944)))

(declare-fun bs!1711276 () Bool)

(assert (= bs!1711276 (and d!2083603 d!2083521)))

(assert (=> bs!1711276 (= lambda!371981 lambda!371957)))

(declare-fun bs!1711277 () Bool)

(assert (= bs!1711277 (and d!2083603 b!6647657)))

(assert (=> bs!1711277 (= lambda!371981 lambda!371946)))

(declare-fun bs!1711278 () Bool)

(assert (= bs!1711278 (and d!2083603 d!2083583)))

(assert (=> bs!1711278 (= lambda!371981 lambda!371974)))

(declare-fun bs!1711279 () Bool)

(assert (= bs!1711279 (and d!2083603 d!2083585)))

(assert (=> bs!1711279 (= lambda!371981 lambda!371979)))

(declare-fun bs!1711280 () Bool)

(assert (= bs!1711280 (and d!2083603 d!2083539)))

(assert (=> bs!1711280 (= lambda!371981 lambda!371966)))

(declare-fun b!6648035 () Bool)

(declare-fun e!4019937 () Bool)

(declare-fun lt!2423122 () Regex!16511)

(assert (=> b!6648035 (= e!4019937 (isConcat!1407 lt!2423122))))

(declare-fun b!6648036 () Bool)

(declare-fun e!4019939 () Bool)

(assert (=> b!6648036 (= e!4019939 e!4019937)))

(declare-fun c!1226855 () Bool)

(assert (=> b!6648036 (= c!1226855 (isEmpty!38017 (tail!12549 (ite c!1226748 lt!2422863 lt!2422965))))))

(declare-fun b!6648038 () Bool)

(declare-fun e!4019940 () Regex!16511)

(assert (=> b!6648038 (= e!4019940 EmptyExpr!16511)))

(declare-fun b!6648039 () Bool)

(assert (=> b!6648039 (= e!4019939 (isEmptyExpr!1884 lt!2423122))))

(declare-fun b!6648040 () Bool)

(declare-fun e!4019938 () Regex!16511)

(assert (=> b!6648040 (= e!4019938 e!4019940)))

(declare-fun c!1226858 () Bool)

(assert (=> b!6648040 (= c!1226858 ((_ is Cons!65709) (ite c!1226748 lt!2422863 lt!2422965)))))

(declare-fun b!6648041 () Bool)

(declare-fun e!4019935 () Bool)

(assert (=> b!6648041 (= e!4019935 e!4019939)))

(declare-fun c!1226857 () Bool)

(assert (=> b!6648041 (= c!1226857 (isEmpty!38017 (ite c!1226748 lt!2422863 lt!2422965)))))

(declare-fun b!6648042 () Bool)

(assert (=> b!6648042 (= e!4019938 (h!72157 (ite c!1226748 lt!2422863 lt!2422965)))))

(declare-fun b!6648043 () Bool)

(assert (=> b!6648043 (= e!4019940 (Concat!25356 (h!72157 (ite c!1226748 lt!2422863 lt!2422965)) (generalisedConcat!2108 (t!379502 (ite c!1226748 lt!2422863 lt!2422965)))))))

(declare-fun b!6648044 () Bool)

(assert (=> b!6648044 (= e!4019937 (= lt!2423122 (head!13464 (ite c!1226748 lt!2422863 lt!2422965))))))

(assert (=> d!2083603 e!4019935))

(declare-fun res!2724077 () Bool)

(assert (=> d!2083603 (=> (not res!2724077) (not e!4019935))))

(assert (=> d!2083603 (= res!2724077 (validRegex!8247 lt!2423122))))

(assert (=> d!2083603 (= lt!2423122 e!4019938)))

(declare-fun c!1226856 () Bool)

(declare-fun e!4019936 () Bool)

(assert (=> d!2083603 (= c!1226856 e!4019936)))

(declare-fun res!2724076 () Bool)

(assert (=> d!2083603 (=> (not res!2724076) (not e!4019936))))

(assert (=> d!2083603 (= res!2724076 ((_ is Cons!65709) (ite c!1226748 lt!2422863 lt!2422965)))))

(assert (=> d!2083603 (forall!15706 (ite c!1226748 lt!2422863 lt!2422965) lambda!371981)))

(assert (=> d!2083603 (= (generalisedConcat!2108 (ite c!1226748 lt!2422863 lt!2422965)) lt!2423122)))

(declare-fun b!6648037 () Bool)

(assert (=> b!6648037 (= e!4019936 (isEmpty!38017 (t!379502 (ite c!1226748 lt!2422863 lt!2422965))))))

(assert (= (and d!2083603 res!2724076) b!6648037))

(assert (= (and d!2083603 c!1226856) b!6648042))

(assert (= (and d!2083603 (not c!1226856)) b!6648040))

(assert (= (and b!6648040 c!1226858) b!6648043))

(assert (= (and b!6648040 (not c!1226858)) b!6648038))

(assert (= (and d!2083603 res!2724077) b!6648041))

(assert (= (and b!6648041 c!1226857) b!6648039))

(assert (= (and b!6648041 (not c!1226857)) b!6648036))

(assert (= (and b!6648036 c!1226855) b!6648044))

(assert (= (and b!6648036 (not c!1226855)) b!6648035))

(declare-fun m!7413876 () Bool)

(assert (=> b!6648041 m!7413876))

(declare-fun m!7413878 () Bool)

(assert (=> b!6648043 m!7413878))

(declare-fun m!7413880 () Bool)

(assert (=> b!6648036 m!7413880))

(assert (=> b!6648036 m!7413880))

(declare-fun m!7413884 () Bool)

(assert (=> b!6648036 m!7413884))

(declare-fun m!7413886 () Bool)

(assert (=> b!6648044 m!7413886))

(declare-fun m!7413888 () Bool)

(assert (=> b!6648037 m!7413888))

(declare-fun m!7413890 () Bool)

(assert (=> d!2083603 m!7413890))

(declare-fun m!7413892 () Bool)

(assert (=> d!2083603 m!7413892))

(declare-fun m!7413894 () Bool)

(assert (=> b!6648039 m!7413894))

(declare-fun m!7413896 () Bool)

(assert (=> b!6648035 m!7413896))

(assert (=> bm!586477 d!2083603))

(declare-fun d!2083607 () Bool)

(assert (=> d!2083607 (= (matchR!8694 (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2422950) (reg!16840 (regOne!33534 r!7292))) lt!2423019))))) (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422854) (_1!36793 lt!2422848)) s!2326)))) (matchZipper!2523 (ite c!1226754 lt!2422946 (ite c!1226758 lt!2422908 (ite c!1226748 lt!2423036 (ite c!1226755 lt!2422958 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422975 lt!2422923) lt!2422849) lt!2422942))))) (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422854) (_1!36793 lt!2422848)) s!2326)))))))

(declare-fun lt!2423125 () Unit!159453)

(declare-fun choose!49692 ((InoxSet Context!11790) List!65834 Regex!16511 List!65832) Unit!159453)

(assert (=> d!2083607 (= lt!2423125 (choose!49692 (ite c!1226754 lt!2422946 (ite c!1226758 lt!2422908 (ite c!1226748 lt!2423036 (ite c!1226755 lt!2422958 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422975 lt!2422923) lt!2422849) lt!2422942))))) (ite c!1226754 (Cons!65710 lt!2423045 Nil!65710) (ite c!1226758 (Cons!65710 lt!2422981 Nil!65710) (ite c!1226748 (Cons!65710 lt!2422947 Nil!65710) (ite c!1226755 (Cons!65710 lt!2422903 Nil!65710) (ite c!1226756 (ite c!1226752 (ite c!1226751 (Cons!65710 lt!2423045 Nil!65710) (Cons!65710 lt!2422873 Nil!65710)) (Cons!65710 lt!2423023 Nil!65710)) (Cons!65710 lt!2423045 Nil!65710)))))) (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2422950) (reg!16840 (regOne!33534 r!7292))) lt!2423019))))) (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422854) (_1!36793 lt!2422848)) s!2326)))))))

(assert (=> d!2083607 (validRegex!8247 (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2422950) (reg!16840 (regOne!33534 r!7292))) lt!2423019))))))))

(assert (=> d!2083607 (= (theoremZipperRegexEquiv!907 (ite c!1226754 lt!2422946 (ite c!1226758 lt!2422908 (ite c!1226748 lt!2423036 (ite c!1226755 lt!2422958 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422975 lt!2422923) lt!2422849) lt!2422942))))) (ite c!1226754 (Cons!65710 lt!2423045 Nil!65710) (ite c!1226758 (Cons!65710 lt!2422981 Nil!65710) (ite c!1226748 (Cons!65710 lt!2422947 Nil!65710) (ite c!1226755 (Cons!65710 lt!2422903 Nil!65710) (ite c!1226756 (ite c!1226752 (ite c!1226751 (Cons!65710 lt!2423045 Nil!65710) (Cons!65710 lt!2422873 Nil!65710)) (Cons!65710 lt!2423023 Nil!65710)) (Cons!65710 lt!2423045 Nil!65710)))))) (ite c!1226754 lt!2423014 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 (ite c!1226751 lt!2422998 lt!2422950) (reg!16840 (regOne!33534 r!7292))) lt!2423019))))) (ite c!1226754 (t!379501 s!2326) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (ite c!1226751 s!2326 lt!2422854) (_1!36793 lt!2422848)) s!2326)))) lt!2423125)))

(declare-fun bs!1711282 () Bool)

(assert (= bs!1711282 d!2083607))

(declare-fun m!7413898 () Bool)

(assert (=> bs!1711282 m!7413898))

(declare-fun m!7413900 () Bool)

(assert (=> bs!1711282 m!7413900))

(declare-fun m!7413902 () Bool)

(assert (=> bs!1711282 m!7413902))

(declare-fun m!7413904 () Bool)

(assert (=> bs!1711282 m!7413904))

(assert (=> bm!586295 d!2083607))

(declare-fun b!6648045 () Bool)

(declare-fun res!2724082 () Bool)

(declare-fun e!4019941 () Bool)

(assert (=> b!6648045 (=> res!2724082 e!4019941)))

(assert (=> b!6648045 (= res!2724082 (not (isEmpty!38018 (tail!12548 s!2326))))))

(declare-fun b!6648046 () Bool)

(declare-fun e!4019942 () Bool)

(declare-fun lt!2423126 () Bool)

(declare-fun call!586527 () Bool)

(assert (=> b!6648046 (= e!4019942 (= lt!2423126 call!586527))))

(declare-fun b!6648048 () Bool)

(declare-fun e!4019943 () Bool)

(assert (=> b!6648048 (= e!4019942 e!4019943)))

(declare-fun c!1226859 () Bool)

(assert (=> b!6648048 (= c!1226859 ((_ is EmptyLang!16511) (ite c!1226758 lt!2422929 (ite c!1226748 (Concat!25356 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) lt!2422859) (ite c!1226755 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422956)) (ite c!1226756 lt!2423004 (ite c!1226747 lt!2423019 (regOne!33534 r!7292))))))))))

(declare-fun e!4019946 () Bool)

(declare-fun b!6648049 () Bool)

(assert (=> b!6648049 (= e!4019946 (nullable!6504 (ite c!1226758 lt!2422929 (ite c!1226748 (Concat!25356 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) lt!2422859) (ite c!1226755 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422956)) (ite c!1226756 lt!2423004 (ite c!1226747 lt!2423019 (regOne!33534 r!7292))))))))))

(declare-fun b!6648050 () Bool)

(declare-fun res!2724079 () Bool)

(declare-fun e!4019947 () Bool)

(assert (=> b!6648050 (=> res!2724079 e!4019947)))

(declare-fun e!4019944 () Bool)

(assert (=> b!6648050 (= res!2724079 e!4019944)))

(declare-fun res!2724084 () Bool)

(assert (=> b!6648050 (=> (not res!2724084) (not e!4019944))))

(assert (=> b!6648050 (= res!2724084 lt!2423126)))

(declare-fun b!6648051 () Bool)

(assert (=> b!6648051 (= e!4019941 (not (= (head!13463 s!2326) (c!1226759 (ite c!1226758 lt!2422929 (ite c!1226748 (Concat!25356 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) lt!2422859) (ite c!1226755 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422956)) (ite c!1226756 lt!2423004 (ite c!1226747 lt!2423019 (regOne!33534 r!7292))))))))))))

(declare-fun b!6648052 () Bool)

(declare-fun e!4019945 () Bool)

(assert (=> b!6648052 (= e!4019947 e!4019945)))

(declare-fun res!2724085 () Bool)

(assert (=> b!6648052 (=> (not res!2724085) (not e!4019945))))

(assert (=> b!6648052 (= res!2724085 (not lt!2423126))))

(declare-fun b!6648053 () Bool)

(assert (=> b!6648053 (= e!4019944 (= (head!13463 s!2326) (c!1226759 (ite c!1226758 lt!2422929 (ite c!1226748 (Concat!25356 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) lt!2422859) (ite c!1226755 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422956)) (ite c!1226756 lt!2423004 (ite c!1226747 lt!2423019 (regOne!33534 r!7292)))))))))))

(declare-fun bm!586522 () Bool)

(assert (=> bm!586522 (= call!586527 (isEmpty!38018 s!2326))))

(declare-fun b!6648054 () Bool)

(assert (=> b!6648054 (= e!4019943 (not lt!2423126))))

(declare-fun b!6648055 () Bool)

(declare-fun res!2724081 () Bool)

(assert (=> b!6648055 (=> (not res!2724081) (not e!4019944))))

(assert (=> b!6648055 (= res!2724081 (not call!586527))))

(declare-fun b!6648056 () Bool)

(declare-fun res!2724078 () Bool)

(assert (=> b!6648056 (=> res!2724078 e!4019947)))

(assert (=> b!6648056 (= res!2724078 (not ((_ is ElementMatch!16511) (ite c!1226758 lt!2422929 (ite c!1226748 (Concat!25356 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) lt!2422859) (ite c!1226755 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422956)) (ite c!1226756 lt!2423004 (ite c!1226747 lt!2423019 (regOne!33534 r!7292)))))))))))

(assert (=> b!6648056 (= e!4019943 e!4019947)))

(declare-fun b!6648057 () Bool)

(declare-fun res!2724083 () Bool)

(assert (=> b!6648057 (=> (not res!2724083) (not e!4019944))))

(assert (=> b!6648057 (= res!2724083 (isEmpty!38018 (tail!12548 s!2326)))))

(declare-fun b!6648058 () Bool)

(assert (=> b!6648058 (= e!4019946 (matchR!8694 (derivativeStep!5190 (ite c!1226758 lt!2422929 (ite c!1226748 (Concat!25356 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) lt!2422859) (ite c!1226755 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422956)) (ite c!1226756 lt!2423004 (ite c!1226747 lt!2423019 (regOne!33534 r!7292)))))) (head!13463 s!2326)) (tail!12548 s!2326)))))

(declare-fun d!2083609 () Bool)

(assert (=> d!2083609 e!4019942))

(declare-fun c!1226861 () Bool)

(assert (=> d!2083609 (= c!1226861 ((_ is EmptyExpr!16511) (ite c!1226758 lt!2422929 (ite c!1226748 (Concat!25356 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) lt!2422859) (ite c!1226755 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422956)) (ite c!1226756 lt!2423004 (ite c!1226747 lt!2423019 (regOne!33534 r!7292))))))))))

(assert (=> d!2083609 (= lt!2423126 e!4019946)))

(declare-fun c!1226860 () Bool)

(assert (=> d!2083609 (= c!1226860 (isEmpty!38018 s!2326))))

(assert (=> d!2083609 (validRegex!8247 (ite c!1226758 lt!2422929 (ite c!1226748 (Concat!25356 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) lt!2422859) (ite c!1226755 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422956)) (ite c!1226756 lt!2423004 (ite c!1226747 lt!2423019 (regOne!33534 r!7292)))))))))

(assert (=> d!2083609 (= (matchR!8694 (ite c!1226758 lt!2422929 (ite c!1226748 (Concat!25356 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) lt!2422859) (ite c!1226755 (Concat!25356 (regOne!33534 (regOne!33534 r!7292)) (Concat!25356 (regTwo!33534 (regOne!33534 r!7292)) lt!2422956)) (ite c!1226756 lt!2423004 (ite c!1226747 lt!2423019 (regOne!33534 r!7292)))))) s!2326) lt!2423126)))

(declare-fun b!6648047 () Bool)

(assert (=> b!6648047 (= e!4019945 e!4019941)))

(declare-fun res!2724080 () Bool)

(assert (=> b!6648047 (=> res!2724080 e!4019941)))

(assert (=> b!6648047 (= res!2724080 call!586527)))

(assert (= (and d!2083609 c!1226860) b!6648049))

(assert (= (and d!2083609 (not c!1226860)) b!6648058))

(assert (= (and d!2083609 c!1226861) b!6648046))

(assert (= (and d!2083609 (not c!1226861)) b!6648048))

(assert (= (and b!6648048 c!1226859) b!6648054))

(assert (= (and b!6648048 (not c!1226859)) b!6648056))

(assert (= (and b!6648056 (not res!2724078)) b!6648050))

(assert (= (and b!6648050 res!2724084) b!6648055))

(assert (= (and b!6648055 res!2724081) b!6648057))

(assert (= (and b!6648057 res!2724083) b!6648053))

(assert (= (and b!6648050 (not res!2724079)) b!6648052))

(assert (= (and b!6648052 res!2724085) b!6648047))

(assert (= (and b!6648047 (not res!2724080)) b!6648045))

(assert (= (and b!6648045 (not res!2724082)) b!6648051))

(assert (= (or b!6648046 b!6648047 b!6648055) bm!586522))

(assert (=> b!6648058 m!7413668))

(assert (=> b!6648058 m!7413668))

(declare-fun m!7413906 () Bool)

(assert (=> b!6648058 m!7413906))

(assert (=> b!6648058 m!7413672))

(assert (=> b!6648058 m!7413906))

(assert (=> b!6648058 m!7413672))

(declare-fun m!7413908 () Bool)

(assert (=> b!6648058 m!7413908))

(assert (=> b!6648057 m!7413672))

(assert (=> b!6648057 m!7413672))

(assert (=> b!6648057 m!7413676))

(assert (=> b!6648045 m!7413672))

(assert (=> b!6648045 m!7413672))

(assert (=> b!6648045 m!7413676))

(declare-fun m!7413910 () Bool)

(assert (=> b!6648049 m!7413910))

(assert (=> b!6648053 m!7413668))

(assert (=> bm!586522 m!7413638))

(assert (=> d!2083609 m!7413638))

(declare-fun m!7413912 () Bool)

(assert (=> d!2083609 m!7413912))

(assert (=> b!6648051 m!7413668))

(assert (=> bm!586343 d!2083609))

(declare-fun b!6648059 () Bool)

(declare-fun e!4019951 () Option!16402)

(declare-fun e!4019949 () Option!16402)

(assert (=> b!6648059 (= e!4019951 e!4019949)))

(declare-fun c!1226863 () Bool)

(assert (=> b!6648059 (= c!1226863 ((_ is Nil!65708) s!2326))))

(declare-fun b!6648060 () Bool)

(assert (=> b!6648060 (= e!4019951 (Some!16401 (tuple2!66981 Nil!65708 s!2326)))))

(declare-fun b!6648061 () Bool)

(declare-fun res!2724088 () Bool)

(declare-fun e!4019950 () Bool)

(assert (=> b!6648061 (=> (not res!2724088) (not e!4019950))))

(declare-fun lt!2423127 () Option!16402)

(assert (=> b!6648061 (= res!2724088 (matchR!8694 (regTwo!33534 r!7292) (_2!36793 (get!22848 lt!2423127))))))

(declare-fun b!6648062 () Bool)

(assert (=> b!6648062 (= e!4019949 None!16401)))

(declare-fun b!6648064 () Bool)

(declare-fun e!4019948 () Bool)

(assert (=> b!6648064 (= e!4019948 (not (isDefined!13105 lt!2423127)))))

(declare-fun b!6648065 () Bool)

(declare-fun e!4019952 () Bool)

(assert (=> b!6648065 (= e!4019952 (matchR!8694 (regTwo!33534 r!7292) s!2326))))

(declare-fun d!2083611 () Bool)

(assert (=> d!2083611 e!4019948))

(declare-fun res!2724090 () Bool)

(assert (=> d!2083611 (=> res!2724090 e!4019948)))

(assert (=> d!2083611 (= res!2724090 e!4019950)))

(declare-fun res!2724087 () Bool)

(assert (=> d!2083611 (=> (not res!2724087) (not e!4019950))))

(assert (=> d!2083611 (= res!2724087 (isDefined!13105 lt!2423127))))

(assert (=> d!2083611 (= lt!2423127 e!4019951)))

(declare-fun c!1226862 () Bool)

(assert (=> d!2083611 (= c!1226862 e!4019952)))

(declare-fun res!2724089 () Bool)

(assert (=> d!2083611 (=> (not res!2724089) (not e!4019952))))

(assert (=> d!2083611 (= res!2724089 (matchR!8694 (regOne!33534 r!7292) Nil!65708))))

(assert (=> d!2083611 (validRegex!8247 (regOne!33534 r!7292))))

(assert (=> d!2083611 (= (findConcatSeparation!2816 (regOne!33534 r!7292) (regTwo!33534 r!7292) Nil!65708 s!2326 s!2326) lt!2423127)))

(declare-fun b!6648063 () Bool)

(assert (=> b!6648063 (= e!4019950 (= (++!14664 (_1!36793 (get!22848 lt!2423127)) (_2!36793 (get!22848 lt!2423127))) s!2326))))

(declare-fun b!6648066 () Bool)

(declare-fun res!2724086 () Bool)

(assert (=> b!6648066 (=> (not res!2724086) (not e!4019950))))

(assert (=> b!6648066 (= res!2724086 (matchR!8694 (regOne!33534 r!7292) (_1!36793 (get!22848 lt!2423127))))))

(declare-fun b!6648067 () Bool)

(declare-fun lt!2423128 () Unit!159453)

(declare-fun lt!2423129 () Unit!159453)

(assert (=> b!6648067 (= lt!2423128 lt!2423129)))

(assert (=> b!6648067 (= (++!14664 (++!14664 Nil!65708 (Cons!65708 (h!72156 s!2326) Nil!65708)) (t!379501 s!2326)) s!2326)))

(assert (=> b!6648067 (= lt!2423129 (lemmaMoveElementToOtherListKeepsConcatEq!2649 Nil!65708 (h!72156 s!2326) (t!379501 s!2326) s!2326))))

(assert (=> b!6648067 (= e!4019949 (findConcatSeparation!2816 (regOne!33534 r!7292) (regTwo!33534 r!7292) (++!14664 Nil!65708 (Cons!65708 (h!72156 s!2326) Nil!65708)) (t!379501 s!2326) s!2326))))

(assert (= (and d!2083611 res!2724089) b!6648065))

(assert (= (and d!2083611 c!1226862) b!6648060))

(assert (= (and d!2083611 (not c!1226862)) b!6648059))

(assert (= (and b!6648059 c!1226863) b!6648062))

(assert (= (and b!6648059 (not c!1226863)) b!6648067))

(assert (= (and d!2083611 res!2724087) b!6648066))

(assert (= (and b!6648066 res!2724086) b!6648061))

(assert (= (and b!6648061 res!2724088) b!6648063))

(assert (= (and d!2083611 (not res!2724090)) b!6648064))

(declare-fun m!7413914 () Bool)

(assert (=> b!6648067 m!7413914))

(assert (=> b!6648067 m!7413914))

(declare-fun m!7413916 () Bool)

(assert (=> b!6648067 m!7413916))

(declare-fun m!7413918 () Bool)

(assert (=> b!6648067 m!7413918))

(assert (=> b!6648067 m!7413914))

(declare-fun m!7413920 () Bool)

(assert (=> b!6648067 m!7413920))

(declare-fun m!7413922 () Bool)

(assert (=> d!2083611 m!7413922))

(declare-fun m!7413924 () Bool)

(assert (=> d!2083611 m!7413924))

(declare-fun m!7413926 () Bool)

(assert (=> d!2083611 m!7413926))

(declare-fun m!7413928 () Bool)

(assert (=> b!6648061 m!7413928))

(declare-fun m!7413930 () Bool)

(assert (=> b!6648061 m!7413930))

(assert (=> b!6648063 m!7413928))

(declare-fun m!7413932 () Bool)

(assert (=> b!6648063 m!7413932))

(assert (=> b!6648066 m!7413928))

(declare-fun m!7413934 () Bool)

(assert (=> b!6648066 m!7413934))

(assert (=> b!6648064 m!7413922))

(declare-fun m!7413936 () Bool)

(assert (=> b!6648065 m!7413936))

(assert (=> b!6647663 d!2083611))

(declare-fun d!2083613 () Bool)

(assert (=> d!2083613 (= (Exists!3581 lambda!371928) (choose!49681 lambda!371928))))

(declare-fun bs!1711283 () Bool)

(assert (= bs!1711283 d!2083613))

(declare-fun m!7413938 () Bool)

(assert (=> bs!1711283 m!7413938))

(assert (=> b!6647663 d!2083613))

(declare-fun d!2083615 () Bool)

(assert (=> d!2083615 (= (Exists!3581 lambda!371929) (choose!49681 lambda!371929))))

(declare-fun bs!1711284 () Bool)

(assert (= bs!1711284 d!2083615))

(declare-fun m!7413940 () Bool)

(assert (=> bs!1711284 m!7413940))

(assert (=> b!6647663 d!2083615))

(declare-fun bs!1711285 () Bool)

(declare-fun d!2083617 () Bool)

(assert (= bs!1711285 (and d!2083617 b!6647636)))

(declare-fun lambda!371982 () Int)

(assert (=> bs!1711285 (not (= lambda!371982 lambda!371954))))

(declare-fun bs!1711286 () Bool)

(assert (= bs!1711286 (and d!2083617 d!2083569)))

(assert (=> bs!1711286 (= (and (= s!2326 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)))) (= (regOne!33534 r!7292) (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))) (= (regTwo!33534 r!7292) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)))) (= lambda!371982 lambda!371973))))

(declare-fun bs!1711287 () Bool)

(assert (= bs!1711287 (and d!2083617 b!6647888)))

(assert (=> bs!1711287 (not (= lambda!371982 lambda!371967))))

(declare-fun bs!1711288 () Bool)

(assert (= bs!1711288 (and d!2083617 b!6647623)))

(assert (=> bs!1711288 (not (= lambda!371982 lambda!371934))))

(declare-fun bs!1711289 () Bool)

(assert (= bs!1711289 (and d!2083617 b!6647652)))

(assert (=> bs!1711289 (not (= lambda!371982 lambda!371943))))

(declare-fun bs!1711290 () Bool)

(assert (= bs!1711290 (and d!2083617 b!6647657)))

(assert (=> bs!1711290 (= (and (= s!2326 (_1!36793 lt!2423008)) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371982 lambda!371949))))

(declare-fun bs!1711291 () Bool)

(assert (= bs!1711291 (and d!2083617 b!6647624)))

(assert (=> bs!1711291 (= (and (= (regOne!33534 r!7292) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422956)) (= lambda!371982 lambda!371937))))

(declare-fun bs!1711292 () Bool)

(assert (= bs!1711292 (and d!2083617 b!6647663)))

(assert (=> bs!1711292 (= lambda!371982 lambda!371928)))

(declare-fun bs!1711293 () Bool)

(assert (= bs!1711293 (and d!2083617 b!6647844)))

(assert (=> bs!1711293 (not (= lambda!371982 lambda!371963))))

(assert (=> bs!1711288 (= (and (= (regOne!33534 r!7292) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422859)) (= lambda!371982 lambda!371933))))

(assert (=> bs!1711290 (not (= lambda!371982 lambda!371951))))

(declare-fun bs!1711294 () Bool)

(assert (= bs!1711294 (and d!2083617 b!6647847)))

(assert (=> bs!1711294 (not (= lambda!371982 lambda!371962))))

(assert (=> bs!1711290 (not (= lambda!371982 lambda!371950))))

(assert (=> bs!1711292 (not (= lambda!371982 lambda!371929))))

(assert (=> bs!1711288 (= (and (= (regOne!33534 r!7292) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2423021)) (= lambda!371982 lambda!371931))))

(assert (=> bs!1711289 (= (and (= s!2326 (_1!36793 lt!2423042)) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371982 lambda!371941))))

(assert (=> bs!1711291 (= (and (= (regOne!33534 r!7292) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422957)) (= lambda!371982 lambda!371935))))

(assert (=> bs!1711285 (= (and (= s!2326 Nil!65708) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371982 lambda!371952))))

(declare-fun bs!1711295 () Bool)

(assert (= bs!1711295 (and d!2083617 b!6647651)))

(assert (=> bs!1711295 (not (= lambda!371982 lambda!371940))))

(assert (=> bs!1711290 (not (= lambda!371982 lambda!371948))))

(declare-fun bs!1711296 () Bool)

(assert (= bs!1711296 (and d!2083617 b!6647885)))

(assert (=> bs!1711296 (not (= lambda!371982 lambda!371968))))

(declare-fun bs!1711297 () Bool)

(assert (= bs!1711297 (and d!2083617 b!6647902)))

(assert (=> bs!1711297 (not (= lambda!371982 lambda!371970))))

(assert (=> bs!1711291 (not (= lambda!371982 lambda!371936))))

(assert (=> bs!1711290 (= (= (regOne!33534 r!7292) lt!2422944) (= lambda!371982 lambda!371947))))

(assert (=> bs!1711291 (not (= lambda!371982 lambda!371938))))

(assert (=> bs!1711285 (not (= lambda!371982 lambda!371953))))

(assert (=> bs!1711288 (not (= lambda!371982 lambda!371932))))

(declare-fun bs!1711298 () Bool)

(assert (= bs!1711298 (and d!2083617 b!6647905)))

(assert (=> bs!1711298 (not (= lambda!371982 lambda!371969))))

(assert (=> bs!1711295 (= (= (regOne!33534 r!7292) lt!2422860) (= lambda!371982 lambda!371939))))

(assert (=> bs!1711289 (not (= lambda!371982 lambda!371942))))

(assert (=> d!2083617 true))

(assert (=> d!2083617 true))

(assert (=> d!2083617 true))

(assert (=> d!2083617 (= (isDefined!13105 (findConcatSeparation!2816 (regOne!33534 r!7292) (regTwo!33534 r!7292) Nil!65708 s!2326 s!2326)) (Exists!3581 lambda!371982))))

(declare-fun lt!2423130 () Unit!159453)

(assert (=> d!2083617 (= lt!2423130 (choose!49685 (regOne!33534 r!7292) (regTwo!33534 r!7292) s!2326))))

(assert (=> d!2083617 (validRegex!8247 (regOne!33534 r!7292))))

(assert (=> d!2083617 (= (lemmaFindConcatSeparationEquivalentToExists!2580 (regOne!33534 r!7292) (regTwo!33534 r!7292) s!2326) lt!2423130)))

(declare-fun bs!1711299 () Bool)

(assert (= bs!1711299 d!2083617))

(assert (=> bs!1711299 m!7413926))

(declare-fun m!7413942 () Bool)

(assert (=> bs!1711299 m!7413942))

(declare-fun m!7413944 () Bool)

(assert (=> bs!1711299 m!7413944))

(assert (=> bs!1711299 m!7413302))

(assert (=> bs!1711299 m!7413302))

(assert (=> bs!1711299 m!7413304))

(assert (=> b!6647663 d!2083617))

(declare-fun bs!1711307 () Bool)

(declare-fun d!2083619 () Bool)

(assert (= bs!1711307 (and d!2083619 b!6647636)))

(declare-fun lambda!371992 () Int)

(assert (=> bs!1711307 (not (= lambda!371992 lambda!371954))))

(declare-fun bs!1711308 () Bool)

(assert (= bs!1711308 (and d!2083619 d!2083569)))

(assert (=> bs!1711308 (= (and (= s!2326 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)))) (= (regOne!33534 r!7292) (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))) (= (regTwo!33534 r!7292) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)))) (= lambda!371992 lambda!371973))))

(declare-fun bs!1711309 () Bool)

(assert (= bs!1711309 (and d!2083619 b!6647888)))

(assert (=> bs!1711309 (not (= lambda!371992 lambda!371967))))

(declare-fun bs!1711311 () Bool)

(assert (= bs!1711311 (and d!2083619 b!6647623)))

(assert (=> bs!1711311 (not (= lambda!371992 lambda!371934))))

(declare-fun bs!1711312 () Bool)

(assert (= bs!1711312 (and d!2083619 b!6647652)))

(assert (=> bs!1711312 (not (= lambda!371992 lambda!371943))))

(declare-fun bs!1711313 () Bool)

(assert (= bs!1711313 (and d!2083619 b!6647657)))

(assert (=> bs!1711313 (= (and (= s!2326 (_1!36793 lt!2423008)) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371992 lambda!371949))))

(declare-fun bs!1711314 () Bool)

(assert (= bs!1711314 (and d!2083619 b!6647624)))

(assert (=> bs!1711314 (= (and (= (regOne!33534 r!7292) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422956)) (= lambda!371992 lambda!371937))))

(declare-fun bs!1711315 () Bool)

(assert (= bs!1711315 (and d!2083619 b!6647663)))

(assert (=> bs!1711315 (= lambda!371992 lambda!371928)))

(declare-fun bs!1711316 () Bool)

(assert (= bs!1711316 (and d!2083619 b!6647844)))

(assert (=> bs!1711316 (not (= lambda!371992 lambda!371963))))

(assert (=> bs!1711311 (= (and (= (regOne!33534 r!7292) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422859)) (= lambda!371992 lambda!371933))))

(assert (=> bs!1711313 (not (= lambda!371992 lambda!371951))))

(declare-fun bs!1711317 () Bool)

(assert (= bs!1711317 (and d!2083619 b!6647847)))

(assert (=> bs!1711317 (not (= lambda!371992 lambda!371962))))

(assert (=> bs!1711313 (not (= lambda!371992 lambda!371950))))

(assert (=> bs!1711315 (not (= lambda!371992 lambda!371929))))

(assert (=> bs!1711311 (= (and (= (regOne!33534 r!7292) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2423021)) (= lambda!371992 lambda!371931))))

(assert (=> bs!1711312 (= (and (= s!2326 (_1!36793 lt!2423042)) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371992 lambda!371941))))

(assert (=> bs!1711314 (= (and (= (regOne!33534 r!7292) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422957)) (= lambda!371992 lambda!371935))))

(declare-fun bs!1711318 () Bool)

(assert (= bs!1711318 (and d!2083619 d!2083617)))

(assert (=> bs!1711318 (= lambda!371992 lambda!371982)))

(assert (=> bs!1711307 (= (and (= s!2326 Nil!65708) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371992 lambda!371952))))

(declare-fun bs!1711319 () Bool)

(assert (= bs!1711319 (and d!2083619 b!6647651)))

(assert (=> bs!1711319 (not (= lambda!371992 lambda!371940))))

(assert (=> bs!1711313 (not (= lambda!371992 lambda!371948))))

(declare-fun bs!1711320 () Bool)

(assert (= bs!1711320 (and d!2083619 b!6647885)))

(assert (=> bs!1711320 (not (= lambda!371992 lambda!371968))))

(declare-fun bs!1711321 () Bool)

(assert (= bs!1711321 (and d!2083619 b!6647902)))

(assert (=> bs!1711321 (not (= lambda!371992 lambda!371970))))

(assert (=> bs!1711314 (not (= lambda!371992 lambda!371936))))

(assert (=> bs!1711313 (= (= (regOne!33534 r!7292) lt!2422944) (= lambda!371992 lambda!371947))))

(assert (=> bs!1711314 (not (= lambda!371992 lambda!371938))))

(assert (=> bs!1711307 (not (= lambda!371992 lambda!371953))))

(assert (=> bs!1711311 (not (= lambda!371992 lambda!371932))))

(declare-fun bs!1711323 () Bool)

(assert (= bs!1711323 (and d!2083619 b!6647905)))

(assert (=> bs!1711323 (not (= lambda!371992 lambda!371969))))

(assert (=> bs!1711319 (= (= (regOne!33534 r!7292) lt!2422860) (= lambda!371992 lambda!371939))))

(assert (=> bs!1711312 (not (= lambda!371992 lambda!371942))))

(assert (=> d!2083619 true))

(assert (=> d!2083619 true))

(assert (=> d!2083619 true))

(declare-fun lambda!371994 () Int)

(assert (=> bs!1711307 (not (= lambda!371994 lambda!371954))))

(assert (=> bs!1711308 (not (= lambda!371994 lambda!371973))))

(assert (=> bs!1711309 (not (= lambda!371994 lambda!371967))))

(assert (=> bs!1711311 (= (and (= (regOne!33534 r!7292) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422859)) (= lambda!371994 lambda!371934))))

(assert (=> bs!1711312 (= (and (= s!2326 (_1!36793 lt!2423042)) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371994 lambda!371943))))

(assert (=> bs!1711313 (not (= lambda!371994 lambda!371949))))

(assert (=> bs!1711314 (not (= lambda!371994 lambda!371937))))

(assert (=> bs!1711315 (not (= lambda!371994 lambda!371928))))

(assert (=> bs!1711316 (= (and (= s!2326 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (regOne!33534 r!7292) (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= (regTwo!33534 r!7292) (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))))) (= lambda!371994 lambda!371963))))

(assert (=> bs!1711313 (not (= lambda!371994 lambda!371951))))

(assert (=> bs!1711317 (not (= lambda!371994 lambda!371962))))

(assert (=> bs!1711313 (= (and (= s!2326 (_1!36793 lt!2423008)) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371994 lambda!371950))))

(assert (=> bs!1711315 (= lambda!371994 lambda!371929)))

(assert (=> bs!1711311 (not (= lambda!371994 lambda!371931))))

(assert (=> bs!1711312 (not (= lambda!371994 lambda!371941))))

(assert (=> bs!1711314 (not (= lambda!371994 lambda!371935))))

(assert (=> bs!1711318 (not (= lambda!371994 lambda!371982))))

(assert (=> bs!1711307 (not (= lambda!371994 lambda!371952))))

(assert (=> bs!1711319 (= (= (regOne!33534 r!7292) lt!2422860) (= lambda!371994 lambda!371940))))

(assert (=> bs!1711313 (= (= (regOne!33534 r!7292) lt!2422944) (= lambda!371994 lambda!371948))))

(assert (=> bs!1711320 (= (and (= (regOne!33534 r!7292) (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= (regTwo!33534 r!7292) (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))))) (= lambda!371994 lambda!371968))))

(assert (=> bs!1711321 (= lambda!371994 lambda!371970)))

(assert (=> bs!1711311 (not (= lambda!371994 lambda!371933))))

(declare-fun bs!1711324 () Bool)

(assert (= bs!1711324 d!2083619))

(assert (=> bs!1711324 (not (= lambda!371994 lambda!371992))))

(assert (=> bs!1711314 (= (and (= (regOne!33534 r!7292) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422957)) (= lambda!371994 lambda!371936))))

(assert (=> bs!1711313 (not (= lambda!371994 lambda!371947))))

(assert (=> bs!1711314 (= (and (= (regOne!33534 r!7292) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422956)) (= lambda!371994 lambda!371938))))

(assert (=> bs!1711307 (= (and (= s!2326 Nil!65708) (= (regOne!33534 r!7292) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2422860)) (= lambda!371994 lambda!371953))))

(assert (=> bs!1711311 (= (and (= (regOne!33534 r!7292) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 r!7292) lt!2423021)) (= lambda!371994 lambda!371932))))

(assert (=> bs!1711323 (not (= lambda!371994 lambda!371969))))

(assert (=> bs!1711319 (not (= lambda!371994 lambda!371939))))

(assert (=> bs!1711312 (not (= lambda!371994 lambda!371942))))

(assert (=> d!2083619 true))

(assert (=> d!2083619 true))

(assert (=> d!2083619 true))

(assert (=> d!2083619 (= (Exists!3581 lambda!371992) (Exists!3581 lambda!371994))))

(declare-fun lt!2423136 () Unit!159453)

(declare-fun choose!49695 (Regex!16511 Regex!16511 List!65832) Unit!159453)

(assert (=> d!2083619 (= lt!2423136 (choose!49695 (regOne!33534 r!7292) (regTwo!33534 r!7292) s!2326))))

(assert (=> d!2083619 (validRegex!8247 (regOne!33534 r!7292))))

(assert (=> d!2083619 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2118 (regOne!33534 r!7292) (regTwo!33534 r!7292) s!2326) lt!2423136)))

(declare-fun m!7413946 () Bool)

(assert (=> bs!1711324 m!7413946))

(declare-fun m!7413948 () Bool)

(assert (=> bs!1711324 m!7413948))

(declare-fun m!7413950 () Bool)

(assert (=> bs!1711324 m!7413950))

(assert (=> bs!1711324 m!7413926))

(assert (=> b!6647663 d!2083619))

(declare-fun d!2083621 () Bool)

(assert (=> d!2083621 (= (isDefined!13105 (findConcatSeparation!2816 (regOne!33534 r!7292) (regTwo!33534 r!7292) Nil!65708 s!2326 s!2326)) (not (isEmpty!38019 (findConcatSeparation!2816 (regOne!33534 r!7292) (regTwo!33534 r!7292) Nil!65708 s!2326 s!2326))))))

(declare-fun bs!1711325 () Bool)

(assert (= bs!1711325 d!2083621))

(assert (=> bs!1711325 m!7413302))

(declare-fun m!7413956 () Bool)

(assert (=> bs!1711325 m!7413956))

(assert (=> b!6647663 d!2083621))

(declare-fun d!2083623 () Bool)

(assert (=> d!2083623 (= (flatMap!2016 (ite c!1226748 lt!2422982 (ite c!1226756 lt!2422849 lt!2422942)) (ite c!1226748 lambda!371930 (ite c!1226756 lambda!371930 lambda!371930))) (dynLambda!26178 (ite c!1226748 lambda!371930 (ite c!1226756 lambda!371930 lambda!371930)) (ite c!1226748 lt!2422951 (ite c!1226756 lt!2423023 lt!2423045))))))

(declare-fun lt!2423137 () Unit!159453)

(assert (=> d!2083623 (= lt!2423137 (choose!49680 (ite c!1226748 lt!2422982 (ite c!1226756 lt!2422849 lt!2422942)) (ite c!1226748 lt!2422951 (ite c!1226756 lt!2423023 lt!2423045)) (ite c!1226748 lambda!371930 (ite c!1226756 lambda!371930 lambda!371930))))))

(assert (=> d!2083623 (= (ite c!1226748 lt!2422982 (ite c!1226756 lt!2422849 lt!2422942)) (store ((as const (Array Context!11790 Bool)) false) (ite c!1226748 lt!2422951 (ite c!1226756 lt!2423023 lt!2423045)) true))))

(assert (=> d!2083623 (= (lemmaFlatMapOnSingletonSet!1542 (ite c!1226748 lt!2422982 (ite c!1226756 lt!2422849 lt!2422942)) (ite c!1226748 lt!2422951 (ite c!1226756 lt!2423023 lt!2423045)) (ite c!1226748 lambda!371930 (ite c!1226756 lambda!371930 lambda!371930))) lt!2423137)))

(declare-fun b_lambda!251095 () Bool)

(assert (=> (not b_lambda!251095) (not d!2083623)))

(declare-fun bs!1711326 () Bool)

(assert (= bs!1711326 d!2083623))

(declare-fun m!7413962 () Bool)

(assert (=> bs!1711326 m!7413962))

(declare-fun m!7413964 () Bool)

(assert (=> bs!1711326 m!7413964))

(declare-fun m!7413966 () Bool)

(assert (=> bs!1711326 m!7413966))

(declare-fun m!7413968 () Bool)

(assert (=> bs!1711326 m!7413968))

(assert (=> bm!586408 d!2083623))

(declare-fun b!6648084 () Bool)

(declare-fun e!4019961 () List!65832)

(assert (=> b!6648084 (= e!4019961 (ite c!1226752 (_2!36793 lt!2423042) (ite c!1226757 lt!2422992 s!2326)))))

(declare-fun b!6648085 () Bool)

(assert (=> b!6648085 (= e!4019961 (Cons!65708 (h!72156 (ite c!1226752 lt!2423034 (ite c!1226757 (_1!36793 lt!2422896) Nil!65708))) (++!14664 (t!379501 (ite c!1226752 lt!2423034 (ite c!1226757 (_1!36793 lt!2422896) Nil!65708))) (ite c!1226752 (_2!36793 lt!2423042) (ite c!1226757 lt!2422992 s!2326)))))))

(declare-fun b!6648086 () Bool)

(declare-fun res!2724107 () Bool)

(declare-fun e!4019962 () Bool)

(assert (=> b!6648086 (=> (not res!2724107) (not e!4019962))))

(declare-fun lt!2423139 () List!65832)

(assert (=> b!6648086 (= res!2724107 (= (size!40565 lt!2423139) (+ (size!40565 (ite c!1226752 lt!2423034 (ite c!1226757 (_1!36793 lt!2422896) Nil!65708))) (size!40565 (ite c!1226752 (_2!36793 lt!2423042) (ite c!1226757 lt!2422992 s!2326))))))))

(declare-fun b!6648087 () Bool)

(assert (=> b!6648087 (= e!4019962 (or (not (= (ite c!1226752 (_2!36793 lt!2423042) (ite c!1226757 lt!2422992 s!2326)) Nil!65708)) (= lt!2423139 (ite c!1226752 lt!2423034 (ite c!1226757 (_1!36793 lt!2422896) Nil!65708)))))))

(declare-fun d!2083627 () Bool)

(assert (=> d!2083627 e!4019962))

(declare-fun res!2724108 () Bool)

(assert (=> d!2083627 (=> (not res!2724108) (not e!4019962))))

(assert (=> d!2083627 (= res!2724108 (= (content!12703 lt!2423139) ((_ map or) (content!12703 (ite c!1226752 lt!2423034 (ite c!1226757 (_1!36793 lt!2422896) Nil!65708))) (content!12703 (ite c!1226752 (_2!36793 lt!2423042) (ite c!1226757 lt!2422992 s!2326))))))))

(assert (=> d!2083627 (= lt!2423139 e!4019961)))

(declare-fun c!1226864 () Bool)

(assert (=> d!2083627 (= c!1226864 ((_ is Nil!65708) (ite c!1226752 lt!2423034 (ite c!1226757 (_1!36793 lt!2422896) Nil!65708))))))

(assert (=> d!2083627 (= (++!14664 (ite c!1226752 lt!2423034 (ite c!1226757 (_1!36793 lt!2422896) Nil!65708)) (ite c!1226752 (_2!36793 lt!2423042) (ite c!1226757 lt!2422992 s!2326))) lt!2423139)))

(assert (= (and d!2083627 c!1226864) b!6648084))

(assert (= (and d!2083627 (not c!1226864)) b!6648085))

(assert (= (and d!2083627 res!2724108) b!6648086))

(assert (= (and b!6648086 res!2724107) b!6648087))

(declare-fun m!7413970 () Bool)

(assert (=> b!6648085 m!7413970))

(declare-fun m!7413972 () Bool)

(assert (=> b!6648086 m!7413972))

(declare-fun m!7413974 () Bool)

(assert (=> b!6648086 m!7413974))

(declare-fun m!7413976 () Bool)

(assert (=> b!6648086 m!7413976))

(declare-fun m!7413978 () Bool)

(assert (=> d!2083627 m!7413978))

(declare-fun m!7413980 () Bool)

(assert (=> d!2083627 m!7413980))

(declare-fun m!7413982 () Bool)

(assert (=> d!2083627 m!7413982))

(assert (=> bm!586371 d!2083627))

(declare-fun d!2083629 () Bool)

(assert (=> d!2083629 (= (flatMap!2016 (ite c!1226755 lt!2422958 lt!2422945) (ite c!1226755 lambda!371930 lambda!371930)) (dynLambda!26178 (ite c!1226755 lambda!371930 lambda!371930) (ite c!1226755 lt!2422903 lt!2422955)))))

(declare-fun lt!2423140 () Unit!159453)

(assert (=> d!2083629 (= lt!2423140 (choose!49680 (ite c!1226755 lt!2422958 lt!2422945) (ite c!1226755 lt!2422903 lt!2422955) (ite c!1226755 lambda!371930 lambda!371930)))))

(assert (=> d!2083629 (= (ite c!1226755 lt!2422958 lt!2422945) (store ((as const (Array Context!11790 Bool)) false) (ite c!1226755 lt!2422903 lt!2422955) true))))

(assert (=> d!2083629 (= (lemmaFlatMapOnSingletonSet!1542 (ite c!1226755 lt!2422958 lt!2422945) (ite c!1226755 lt!2422903 lt!2422955) (ite c!1226755 lambda!371930 lambda!371930)) lt!2423140)))

(declare-fun b_lambda!251097 () Bool)

(assert (=> (not b_lambda!251097) (not d!2083629)))

(declare-fun bs!1711327 () Bool)

(assert (= bs!1711327 d!2083629))

(declare-fun m!7413984 () Bool)

(assert (=> bs!1711327 m!7413984))

(declare-fun m!7413986 () Bool)

(assert (=> bs!1711327 m!7413986))

(declare-fun m!7413988 () Bool)

(assert (=> bs!1711327 m!7413988))

(declare-fun m!7413990 () Bool)

(assert (=> bs!1711327 m!7413990))

(assert (=> bm!586472 d!2083629))

(declare-fun bs!1711337 () Bool)

(declare-fun d!2083631 () Bool)

(assert (= bs!1711337 (and d!2083631 b!6647636)))

(declare-fun lambda!372001 () Int)

(assert (=> bs!1711337 (not (= lambda!372001 lambda!371954))))

(declare-fun bs!1711338 () Bool)

(assert (= bs!1711338 (and d!2083631 d!2083569)))

(assert (=> bs!1711338 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)))) (= (reg!16840 (regOne!33534 r!7292)) (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)))) (= lambda!372001 lambda!371973))))

(declare-fun bs!1711339 () Bool)

(assert (= bs!1711339 (and d!2083631 b!6647888)))

(assert (=> bs!1711339 (not (= lambda!372001 lambda!371967))))

(declare-fun bs!1711340 () Bool)

(assert (= bs!1711340 (and d!2083631 b!6647623)))

(assert (=> bs!1711340 (not (= lambda!372001 lambda!371934))))

(declare-fun bs!1711341 () Bool)

(assert (= bs!1711341 (and d!2083631 b!6647652)))

(assert (=> bs!1711341 (not (= lambda!372001 lambda!371943))))

(declare-fun bs!1711343 () Bool)

(assert (= bs!1711343 (and d!2083631 b!6647657)))

(assert (=> bs!1711343 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) (_1!36793 lt!2423008)) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) lt!2422860)) (= lambda!372001 lambda!371949))))

(declare-fun bs!1711344 () Bool)

(assert (= bs!1711344 (and d!2083631 b!6647624)))

(assert (=> bs!1711344 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) lt!2422956)) (= lambda!372001 lambda!371937))))

(declare-fun bs!1711345 () Bool)

(assert (= bs!1711345 (and d!2083631 b!6647663)))

(assert (=> bs!1711345 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) (regTwo!33534 r!7292))) (= lambda!372001 lambda!371928))))

(declare-fun bs!1711346 () Bool)

(assert (= bs!1711346 (and d!2083631 b!6647844)))

(assert (=> bs!1711346 (not (= lambda!372001 lambda!371963))))

(assert (=> bs!1711343 (not (= lambda!372001 lambda!371951))))

(declare-fun bs!1711347 () Bool)

(assert (= bs!1711347 (and d!2083631 b!6647847)))

(assert (=> bs!1711347 (not (= lambda!372001 lambda!371962))))

(assert (=> bs!1711343 (not (= lambda!372001 lambda!371950))))

(assert (=> bs!1711345 (not (= lambda!372001 lambda!371929))))

(assert (=> bs!1711340 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) lt!2423021)) (= lambda!372001 lambda!371931))))

(assert (=> bs!1711341 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) (_1!36793 lt!2423042)) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) lt!2422860)) (= lambda!372001 lambda!371941))))

(assert (=> bs!1711344 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292))) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) lt!2422957)) (= lambda!372001 lambda!371935))))

(declare-fun bs!1711348 () Bool)

(assert (= bs!1711348 (and d!2083631 d!2083617)))

(assert (=> bs!1711348 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) (regTwo!33534 r!7292))) (= lambda!372001 lambda!371982))))

(assert (=> bs!1711337 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) Nil!65708) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) lt!2422860)) (= lambda!372001 lambda!371952))))

(declare-fun bs!1711349 () Bool)

(assert (= bs!1711349 (and d!2083631 b!6647651)))

(assert (=> bs!1711349 (not (= lambda!372001 lambda!371940))))

(assert (=> bs!1711343 (not (= lambda!372001 lambda!371948))))

(declare-fun bs!1711350 () Bool)

(assert (= bs!1711350 (and d!2083631 b!6647885)))

(assert (=> bs!1711350 (not (= lambda!372001 lambda!371968))))

(declare-fun bs!1711351 () Bool)

(assert (= bs!1711351 (and d!2083631 b!6647902)))

(assert (=> bs!1711351 (not (= lambda!372001 lambda!371970))))

(declare-fun bs!1711352 () Bool)

(assert (= bs!1711352 (and d!2083631 d!2083619)))

(assert (=> bs!1711352 (not (= lambda!372001 lambda!371994))))

(assert (=> bs!1711340 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regTwo!33534 (regOne!33534 r!7292))) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) lt!2422859)) (= lambda!372001 lambda!371933))))

(assert (=> bs!1711352 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (regOne!33534 r!7292)) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) (regTwo!33534 r!7292))) (= lambda!372001 lambda!371992))))

(assert (=> bs!1711344 (not (= lambda!372001 lambda!371936))))

(assert (=> bs!1711343 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422944) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) (regTwo!33534 r!7292))) (= lambda!372001 lambda!371947))))

(assert (=> bs!1711344 (not (= lambda!372001 lambda!371938))))

(assert (=> bs!1711337 (not (= lambda!372001 lambda!371953))))

(assert (=> bs!1711340 (not (= lambda!372001 lambda!371932))))

(declare-fun bs!1711353 () Bool)

(assert (= bs!1711353 (and d!2083631 b!6647905)))

(assert (=> bs!1711353 (not (= lambda!372001 lambda!371969))))

(assert (=> bs!1711349 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) s!2326) (= (reg!16840 (regOne!33534 r!7292)) lt!2422860) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) (regTwo!33534 r!7292))) (= lambda!372001 lambda!371939))))

(assert (=> bs!1711341 (not (= lambda!372001 lambda!371942))))

(assert (=> d!2083631 true))

(assert (=> d!2083631 true))

(declare-fun lambda!372002 () Int)

(assert (=> bs!1711337 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) Nil!65708) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) lt!2422860)) (= lambda!372002 lambda!371954))))

(assert (=> bs!1711338 (not (= lambda!372002 lambda!371973))))

(assert (=> bs!1711339 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (reg!16840 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= lambda!372002 lambda!371967))))

(assert (=> bs!1711340 (not (= lambda!372002 lambda!371934))))

(assert (=> bs!1711341 (not (= lambda!372002 lambda!371943))))

(assert (=> bs!1711343 (not (= lambda!372002 lambda!371949))))

(assert (=> bs!1711344 (not (= lambda!372002 lambda!371937))))

(assert (=> bs!1711345 (not (= lambda!372002 lambda!371928))))

(assert (=> bs!1711346 (not (= lambda!372002 lambda!371963))))

(assert (=> bs!1711343 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) (_1!36793 lt!2423008)) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) lt!2422860)) (= lambda!372002 lambda!371951))))

(assert (=> bs!1711347 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (reg!16840 (regOne!33534 r!7292)) (reg!16840 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= lambda!372002 lambda!371962))))

(assert (=> bs!1711343 (not (= lambda!372002 lambda!371950))))

(assert (=> bs!1711345 (not (= lambda!372002 lambda!371929))))

(assert (=> bs!1711341 (not (= lambda!372002 lambda!371941))))

(assert (=> bs!1711344 (not (= lambda!372002 lambda!371935))))

(assert (=> bs!1711348 (not (= lambda!372002 lambda!371982))))

(assert (=> bs!1711337 (not (= lambda!372002 lambda!371952))))

(assert (=> bs!1711349 (not (= lambda!372002 lambda!371940))))

(assert (=> bs!1711343 (not (= lambda!372002 lambda!371948))))

(assert (=> bs!1711350 (not (= lambda!372002 lambda!371968))))

(assert (=> bs!1711351 (not (= lambda!372002 lambda!371970))))

(assert (=> bs!1711352 (not (= lambda!372002 lambda!371994))))

(assert (=> bs!1711340 (not (= lambda!372002 lambda!371933))))

(assert (=> bs!1711352 (not (= lambda!372002 lambda!371992))))

(assert (=> bs!1711344 (not (= lambda!372002 lambda!371936))))

(assert (=> bs!1711343 (not (= lambda!372002 lambda!371947))))

(assert (=> bs!1711344 (not (= lambda!372002 lambda!371938))))

(assert (=> bs!1711337 (not (= lambda!372002 lambda!371953))))

(assert (=> bs!1711340 (not (= lambda!372002 lambda!371932))))

(declare-fun bs!1711354 () Bool)

(assert (= bs!1711354 d!2083631))

(assert (=> bs!1711354 (not (= lambda!372002 lambda!372001))))

(assert (=> bs!1711340 (not (= lambda!372002 lambda!371931))))

(assert (=> bs!1711353 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) s!2326) (= (reg!16840 (regOne!33534 r!7292)) (reg!16840 r!7292)) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) r!7292)) (= lambda!372002 lambda!371969))))

(assert (=> bs!1711349 (not (= lambda!372002 lambda!371939))))

(assert (=> bs!1711341 (= (and (= (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)) (_1!36793 lt!2423042)) (= (Star!16511 (reg!16840 (regOne!33534 r!7292))) lt!2422860)) (= lambda!372002 lambda!371942))))

(assert (=> d!2083631 true))

(assert (=> d!2083631 true))

(assert (=> d!2083631 (= (Exists!3581 lambda!372001) (Exists!3581 lambda!372002))))

(declare-fun lt!2423143 () Unit!159453)

(declare-fun choose!49696 (Regex!16511 List!65832) Unit!159453)

(assert (=> d!2083631 (= lt!2423143 (choose!49696 (reg!16840 (regOne!33534 r!7292)) (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))))))

(assert (=> d!2083631 (validRegex!8247 (reg!16840 (regOne!33534 r!7292)))))

(assert (=> d!2083631 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!678 (reg!16840 (regOne!33534 r!7292)) (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) lt!2423143)))

(declare-fun m!7414000 () Bool)

(assert (=> bs!1711354 m!7414000))

(declare-fun m!7414002 () Bool)

(assert (=> bs!1711354 m!7414002))

(declare-fun m!7414004 () Bool)

(assert (=> bs!1711354 m!7414004))

(assert (=> bs!1711354 m!7413850))

(assert (=> bm!586292 d!2083631))

(declare-fun bs!1711355 () Bool)

(declare-fun d!2083635 () Bool)

(assert (= bs!1711355 (and d!2083635 b!6647636)))

(declare-fun lambda!372003 () Int)

(assert (=> bs!1711355 (not (= lambda!372003 lambda!371954))))

(declare-fun bs!1711356 () Bool)

(assert (= bs!1711356 (and d!2083635 d!2083569)))

(assert (=> bs!1711356 (= (and (= s!2326 (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)))) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)))) (= lambda!372003 lambda!371973))))

(declare-fun bs!1711357 () Bool)

(assert (= bs!1711357 (and d!2083635 b!6647888)))

(assert (=> bs!1711357 (not (= lambda!372003 lambda!371967))))

(declare-fun bs!1711358 () Bool)

(assert (= bs!1711358 (and d!2083635 b!6647623)))

(assert (=> bs!1711358 (not (= lambda!372003 lambda!371934))))

(declare-fun bs!1711359 () Bool)

(assert (= bs!1711359 (and d!2083635 b!6647652)))

(assert (=> bs!1711359 (not (= lambda!372003 lambda!371943))))

(declare-fun bs!1711360 () Bool)

(assert (= bs!1711360 (and d!2083635 b!6647657)))

(assert (=> bs!1711360 (= (and (= s!2326 (_1!36793 lt!2423008)) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) lt!2422860)) (= lambda!372003 lambda!371949))))

(declare-fun bs!1711361 () Bool)

(assert (= bs!1711361 (and d!2083635 b!6647624)))

(assert (=> bs!1711361 (= (and (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) lt!2422956)) (= lambda!372003 lambda!371937))))

(declare-fun bs!1711362 () Bool)

(assert (= bs!1711362 (and d!2083635 b!6647663)))

(assert (=> bs!1711362 (= (and (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) (regTwo!33534 r!7292))) (= lambda!372003 lambda!371928))))

(declare-fun bs!1711363 () Bool)

(assert (= bs!1711363 (and d!2083635 b!6647844)))

(assert (=> bs!1711363 (not (= lambda!372003 lambda!371963))))

(declare-fun bs!1711364 () Bool)

(assert (= bs!1711364 (and d!2083635 d!2083631)))

(assert (=> bs!1711364 (not (= lambda!372003 lambda!372002))))

(assert (=> bs!1711360 (not (= lambda!372003 lambda!371951))))

(declare-fun bs!1711365 () Bool)

(assert (= bs!1711365 (and d!2083635 b!6647847)))

(assert (=> bs!1711365 (not (= lambda!372003 lambda!371962))))

(assert (=> bs!1711360 (not (= lambda!372003 lambda!371950))))

(assert (=> bs!1711362 (not (= lambda!372003 lambda!371929))))

(assert (=> bs!1711359 (= (and (= s!2326 (_1!36793 lt!2423042)) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) lt!2422860)) (= lambda!372003 lambda!371941))))

(assert (=> bs!1711361 (= (and (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) lt!2422957)) (= lambda!372003 lambda!371935))))

(declare-fun bs!1711366 () Bool)

(assert (= bs!1711366 (and d!2083635 d!2083617)))

(assert (=> bs!1711366 (= (and (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) (regTwo!33534 r!7292))) (= lambda!372003 lambda!371982))))

(assert (=> bs!1711355 (= (and (= s!2326 Nil!65708) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) lt!2422860)) (= lambda!372003 lambda!371952))))

(declare-fun bs!1711367 () Bool)

(assert (= bs!1711367 (and d!2083635 b!6647651)))

(assert (=> bs!1711367 (not (= lambda!372003 lambda!371940))))

(assert (=> bs!1711360 (not (= lambda!372003 lambda!371948))))

(declare-fun bs!1711368 () Bool)

(assert (= bs!1711368 (and d!2083635 b!6647885)))

(assert (=> bs!1711368 (not (= lambda!372003 lambda!371968))))

(declare-fun bs!1711369 () Bool)

(assert (= bs!1711369 (and d!2083635 b!6647902)))

(assert (=> bs!1711369 (not (= lambda!372003 lambda!371970))))

(declare-fun bs!1711370 () Bool)

(assert (= bs!1711370 (and d!2083635 d!2083619)))

(assert (=> bs!1711370 (not (= lambda!372003 lambda!371994))))

(assert (=> bs!1711358 (= (and (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) lt!2422859)) (= lambda!372003 lambda!371933))))

(assert (=> bs!1711370 (= (and (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) (regTwo!33534 r!7292))) (= lambda!372003 lambda!371992))))

(assert (=> bs!1711361 (not (= lambda!372003 lambda!371936))))

(assert (=> bs!1711360 (= (and (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) lt!2422944) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) (regTwo!33534 r!7292))) (= lambda!372003 lambda!371947))))

(assert (=> bs!1711361 (not (= lambda!372003 lambda!371938))))

(assert (=> bs!1711355 (not (= lambda!372003 lambda!371953))))

(assert (=> bs!1711358 (not (= lambda!372003 lambda!371932))))

(assert (=> bs!1711364 (= (and (= s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) (Star!16511 (reg!16840 (regOne!33534 r!7292))))) (= lambda!372003 lambda!372001))))

(assert (=> bs!1711358 (= (and (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) lt!2423021)) (= lambda!372003 lambda!371931))))

(declare-fun bs!1711371 () Bool)

(assert (= bs!1711371 (and d!2083635 b!6647905)))

(assert (=> bs!1711371 (not (= lambda!372003 lambda!371969))))

(assert (=> bs!1711367 (= (and (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) lt!2422860) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) (regTwo!33534 r!7292))) (= lambda!372003 lambda!371939))))

(assert (=> bs!1711359 (not (= lambda!372003 lambda!371942))))

(assert (=> d!2083635 true))

(assert (=> d!2083635 true))

(assert (=> d!2083635 true))

(assert (=> d!2083635 (= (isDefined!13105 (findConcatSeparation!2816 (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) Nil!65708 s!2326 s!2326)) (Exists!3581 lambda!372003))))

(declare-fun lt!2423144 () Unit!159453)

(assert (=> d!2083635 (= lt!2423144 (choose!49685 (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) s!2326))))

(assert (=> d!2083635 (validRegex!8247 (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))))))

(assert (=> d!2083635 (= (lemmaFindConcatSeparationEquivalentToExists!2580 (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))) s!2326) lt!2423144)))

(declare-fun bs!1711372 () Bool)

(assert (= bs!1711372 d!2083635))

(declare-fun m!7414018 () Bool)

(assert (=> bs!1711372 m!7414018))

(declare-fun m!7414020 () Bool)

(assert (=> bs!1711372 m!7414020))

(declare-fun m!7414022 () Bool)

(assert (=> bs!1711372 m!7414022))

(declare-fun m!7414024 () Bool)

(assert (=> bs!1711372 m!7414024))

(assert (=> bs!1711372 m!7414024))

(declare-fun m!7414026 () Bool)

(assert (=> bs!1711372 m!7414026))

(assert (=> bm!586277 d!2083635))

(declare-fun b!6648104 () Bool)

(declare-fun res!2724123 () Bool)

(declare-fun e!4019970 () Bool)

(assert (=> b!6648104 (=> res!2724123 e!4019970)))

(assert (=> b!6648104 (= res!2724123 (not (isEmpty!38018 (tail!12548 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2423034 (ite c!1226757 (_2!36793 lt!2422848) Nil!65708)))))))))

(declare-fun b!6648105 () Bool)

(declare-fun e!4019971 () Bool)

(declare-fun lt!2423145 () Bool)

(declare-fun call!586528 () Bool)

(assert (=> b!6648105 (= e!4019971 (= lt!2423145 call!586528))))

(declare-fun b!6648107 () Bool)

(declare-fun e!4019972 () Bool)

(assert (=> b!6648107 (= e!4019971 e!4019972)))

(declare-fun c!1226868 () Bool)

(assert (=> b!6648107 (= c!1226868 ((_ is EmptyLang!16511) (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422950 lt!2422860)))))))))

(declare-fun e!4019975 () Bool)

(declare-fun b!6648108 () Bool)

(assert (=> b!6648108 (= e!4019975 (nullable!6504 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422950 lt!2422860)))))))))

(declare-fun b!6648109 () Bool)

(declare-fun res!2724120 () Bool)

(declare-fun e!4019976 () Bool)

(assert (=> b!6648109 (=> res!2724120 e!4019976)))

(declare-fun e!4019973 () Bool)

(assert (=> b!6648109 (= res!2724120 e!4019973)))

(declare-fun res!2724125 () Bool)

(assert (=> b!6648109 (=> (not res!2724125) (not e!4019973))))

(assert (=> b!6648109 (= res!2724125 lt!2423145)))

(declare-fun b!6648110 () Bool)

(assert (=> b!6648110 (= e!4019970 (not (= (head!13463 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2423034 (ite c!1226757 (_2!36793 lt!2422848) Nil!65708)))) (c!1226759 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422950 lt!2422860)))))))))))

(declare-fun b!6648111 () Bool)

(declare-fun e!4019974 () Bool)

(assert (=> b!6648111 (= e!4019976 e!4019974)))

(declare-fun res!2724126 () Bool)

(assert (=> b!6648111 (=> (not res!2724126) (not e!4019974))))

(assert (=> b!6648111 (= res!2724126 (not lt!2423145))))

(declare-fun b!6648112 () Bool)

(assert (=> b!6648112 (= e!4019973 (= (head!13463 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2423034 (ite c!1226757 (_2!36793 lt!2422848) Nil!65708)))) (c!1226759 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422950 lt!2422860))))))))))

(declare-fun bm!586523 () Bool)

(assert (=> bm!586523 (= call!586528 (isEmpty!38018 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2423034 (ite c!1226757 (_2!36793 lt!2422848) Nil!65708)))))))

(declare-fun b!6648113 () Bool)

(assert (=> b!6648113 (= e!4019972 (not lt!2423145))))

(declare-fun b!6648114 () Bool)

(declare-fun res!2724122 () Bool)

(assert (=> b!6648114 (=> (not res!2724122) (not e!4019973))))

(assert (=> b!6648114 (= res!2724122 (not call!586528))))

(declare-fun b!6648115 () Bool)

(declare-fun res!2724119 () Bool)

(assert (=> b!6648115 (=> res!2724119 e!4019976)))

(assert (=> b!6648115 (= res!2724119 (not ((_ is ElementMatch!16511) (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422950 lt!2422860))))))))))

(assert (=> b!6648115 (= e!4019972 e!4019976)))

(declare-fun b!6648116 () Bool)

(declare-fun res!2724124 () Bool)

(assert (=> b!6648116 (=> (not res!2724124) (not e!4019973))))

(assert (=> b!6648116 (= res!2724124 (isEmpty!38018 (tail!12548 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2423034 (ite c!1226757 (_2!36793 lt!2422848) Nil!65708))))))))

(declare-fun b!6648117 () Bool)

(assert (=> b!6648117 (= e!4019975 (matchR!8694 (derivativeStep!5190 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422950 lt!2422860))))) (head!13463 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2423034 (ite c!1226757 (_2!36793 lt!2422848) Nil!65708))))) (tail!12548 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2423034 (ite c!1226757 (_2!36793 lt!2422848) Nil!65708))))))))

(declare-fun d!2083639 () Bool)

(assert (=> d!2083639 e!4019971))

(declare-fun c!1226870 () Bool)

(assert (=> d!2083639 (= c!1226870 ((_ is EmptyExpr!16511) (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422950 lt!2422860)))))))))

(assert (=> d!2083639 (= lt!2423145 e!4019975)))

(declare-fun c!1226869 () Bool)

(assert (=> d!2083639 (= c!1226869 (isEmpty!38018 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2423034 (ite c!1226757 (_2!36793 lt!2422848) Nil!65708)))))))

(assert (=> d!2083639 (validRegex!8247 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422950 lt!2422860))))))))

(assert (=> d!2083639 (= (matchR!8694 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422950 lt!2422860))))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226752 lt!2423034 (ite c!1226757 (_2!36793 lt!2422848) Nil!65708)))) lt!2423145)))

(declare-fun b!6648106 () Bool)

(assert (=> b!6648106 (= e!4019974 e!4019970)))

(declare-fun res!2724121 () Bool)

(assert (=> b!6648106 (=> res!2724121 e!4019970)))

(assert (=> b!6648106 (= res!2724121 call!586528)))

(assert (= (and d!2083639 c!1226869) b!6648108))

(assert (= (and d!2083639 (not c!1226869)) b!6648117))

(assert (= (and d!2083639 c!1226870) b!6648105))

(assert (= (and d!2083639 (not c!1226870)) b!6648107))

(assert (= (and b!6648107 c!1226868) b!6648113))

(assert (= (and b!6648107 (not c!1226868)) b!6648115))

(assert (= (and b!6648115 (not res!2724119)) b!6648109))

(assert (= (and b!6648109 res!2724125) b!6648114))

(assert (= (and b!6648114 res!2724122) b!6648116))

(assert (= (and b!6648116 res!2724124) b!6648112))

(assert (= (and b!6648109 (not res!2724120)) b!6648111))

(assert (= (and b!6648111 res!2724126) b!6648106))

(assert (= (and b!6648106 (not res!2724121)) b!6648104))

(assert (= (and b!6648104 (not res!2724123)) b!6648110))

(assert (= (or b!6648105 b!6648106 b!6648114) bm!586523))

(declare-fun m!7414028 () Bool)

(assert (=> b!6648117 m!7414028))

(assert (=> b!6648117 m!7414028))

(declare-fun m!7414030 () Bool)

(assert (=> b!6648117 m!7414030))

(declare-fun m!7414032 () Bool)

(assert (=> b!6648117 m!7414032))

(assert (=> b!6648117 m!7414030))

(assert (=> b!6648117 m!7414032))

(declare-fun m!7414034 () Bool)

(assert (=> b!6648117 m!7414034))

(assert (=> b!6648116 m!7414032))

(assert (=> b!6648116 m!7414032))

(declare-fun m!7414036 () Bool)

(assert (=> b!6648116 m!7414036))

(assert (=> b!6648104 m!7414032))

(assert (=> b!6648104 m!7414032))

(assert (=> b!6648104 m!7414036))

(declare-fun m!7414038 () Bool)

(assert (=> b!6648108 m!7414038))

(assert (=> b!6648112 m!7414028))

(declare-fun m!7414040 () Bool)

(assert (=> bm!586523 m!7414040))

(assert (=> d!2083639 m!7414040))

(declare-fun m!7414042 () Bool)

(assert (=> d!2083639 m!7414042))

(assert (=> b!6648110 m!7414028))

(assert (=> bm!586421 d!2083639))

(declare-fun b!6648118 () Bool)

(declare-fun e!4019982 () (InoxSet Context!11790))

(declare-fun call!586529 () (InoxSet Context!11790))

(declare-fun call!586534 () (InoxSet Context!11790))

(assert (=> b!6648118 (= e!4019982 ((_ map or) call!586529 call!586534))))

(declare-fun b!6648119 () Bool)

(declare-fun e!4019981 () (InoxSet Context!11790))

(assert (=> b!6648119 (= e!4019981 ((as const (Array Context!11790 Bool)) false))))

(declare-fun bm!586524 () Bool)

(declare-fun call!586531 () (InoxSet Context!11790))

(assert (=> bm!586524 (= call!586534 call!586531)))

(declare-fun b!6648120 () Bool)

(declare-fun c!1226873 () Bool)

(assert (=> b!6648120 (= c!1226873 ((_ is Star!16511) (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))))))

(declare-fun e!4019978 () (InoxSet Context!11790))

(assert (=> b!6648120 (= e!4019978 e!4019981)))

(declare-fun bm!586525 () Bool)

(declare-fun call!586530 () (InoxSet Context!11790))

(assert (=> bm!586525 (= call!586530 call!586534)))

(declare-fun b!6648121 () Bool)

(declare-fun e!4019977 () (InoxSet Context!11790))

(assert (=> b!6648121 (= e!4019977 ((_ map or) call!586531 call!586529))))

(declare-fun bm!586526 () Bool)

(declare-fun call!586533 () List!65833)

(declare-fun call!586532 () List!65833)

(assert (=> bm!586526 (= call!586533 call!586532)))

(declare-fun c!1226871 () Bool)

(declare-fun d!2083641 () Bool)

(assert (=> d!2083641 (= c!1226871 (and ((_ is ElementMatch!16511) (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))) (= (c!1226759 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))) (h!72156 s!2326))))))

(declare-fun e!4019980 () (InoxSet Context!11790))

(assert (=> d!2083641 (= (derivationStepZipperDown!1759 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))) (ite (or c!1226758 c!1226748) lt!2423045 (ite c!1226755 (Context!11791 lt!2422965) lt!2422873)) (h!72156 s!2326)) e!4019980)))

(declare-fun c!1226872 () Bool)

(declare-fun bm!586527 () Bool)

(declare-fun c!1226874 () Bool)

(assert (=> bm!586527 (= call!586532 ($colon$colon!2347 (exprs!6395 (ite (or c!1226758 c!1226748) lt!2423045 (ite c!1226755 (Context!11791 lt!2422965) lt!2422873))) (ite (or c!1226874 c!1226872) (regTwo!33534 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))) (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))))))))

(declare-fun c!1226875 () Bool)

(declare-fun bm!586528 () Bool)

(assert (=> bm!586528 (= call!586531 (derivationStepZipperDown!1759 (ite c!1226875 (regOne!33535 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))) (ite c!1226874 (regTwo!33534 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))) (ite c!1226872 (regOne!33534 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))) (reg!16840 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))))))) (ite (or c!1226875 c!1226874) (ite (or c!1226758 c!1226748) lt!2423045 (ite c!1226755 (Context!11791 lt!2422965) lt!2422873)) (Context!11791 call!586533)) (h!72156 s!2326)))))

(declare-fun b!6648122 () Bool)

(assert (=> b!6648122 (= e!4019982 e!4019978)))

(assert (=> b!6648122 (= c!1226872 ((_ is Concat!25356) (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))))))

(declare-fun bm!586529 () Bool)

(assert (=> bm!586529 (= call!586529 (derivationStepZipperDown!1759 (ite c!1226875 (regTwo!33535 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))))) (ite c!1226875 (ite (or c!1226758 c!1226748) lt!2423045 (ite c!1226755 (Context!11791 lt!2422965) lt!2422873)) (Context!11791 call!586532)) (h!72156 s!2326)))))

(declare-fun b!6648123 () Bool)

(declare-fun e!4019979 () Bool)

(assert (=> b!6648123 (= c!1226874 e!4019979)))

(declare-fun res!2724127 () Bool)

(assert (=> b!6648123 (=> (not res!2724127) (not e!4019979))))

(assert (=> b!6648123 (= res!2724127 ((_ is Concat!25356) (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))))))

(assert (=> b!6648123 (= e!4019977 e!4019982)))

(declare-fun b!6648124 () Bool)

(assert (=> b!6648124 (= e!4019979 (nullable!6504 (regOne!33534 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))))))))

(declare-fun b!6648125 () Bool)

(assert (=> b!6648125 (= e!4019980 (store ((as const (Array Context!11790 Bool)) false) (ite (or c!1226758 c!1226748) lt!2423045 (ite c!1226755 (Context!11791 lt!2422965) lt!2422873)) true))))

(declare-fun b!6648126 () Bool)

(assert (=> b!6648126 (= e!4019978 call!586530)))

(declare-fun b!6648127 () Bool)

(assert (=> b!6648127 (= e!4019980 e!4019977)))

(assert (=> b!6648127 (= c!1226875 ((_ is Union!16511) (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292)))))))))

(declare-fun b!6648128 () Bool)

(assert (=> b!6648128 (= e!4019981 call!586530)))

(assert (= (and d!2083641 c!1226871) b!6648125))

(assert (= (and d!2083641 (not c!1226871)) b!6648127))

(assert (= (and b!6648127 c!1226875) b!6648121))

(assert (= (and b!6648127 (not c!1226875)) b!6648123))

(assert (= (and b!6648123 res!2724127) b!6648124))

(assert (= (and b!6648123 c!1226874) b!6648118))

(assert (= (and b!6648123 (not c!1226874)) b!6648122))

(assert (= (and b!6648122 c!1226872) b!6648126))

(assert (= (and b!6648122 (not c!1226872)) b!6648120))

(assert (= (and b!6648120 c!1226873) b!6648128))

(assert (= (and b!6648120 (not c!1226873)) b!6648119))

(assert (= (or b!6648126 b!6648128) bm!586526))

(assert (= (or b!6648126 b!6648128) bm!586525))

(assert (= (or b!6648118 bm!586526) bm!586527))

(assert (= (or b!6648118 bm!586525) bm!586524))

(assert (= (or b!6648121 b!6648118) bm!586529))

(assert (= (or b!6648121 bm!586524) bm!586528))

(declare-fun m!7414052 () Bool)

(assert (=> bm!586529 m!7414052))

(declare-fun m!7414054 () Bool)

(assert (=> bm!586528 m!7414054))

(declare-fun m!7414056 () Bool)

(assert (=> b!6648125 m!7414056))

(declare-fun m!7414058 () Bool)

(assert (=> bm!586527 m!7414058))

(declare-fun m!7414060 () Bool)

(assert (=> b!6648124 m!7414060))

(assert (=> bm!586320 d!2083641))

(declare-fun d!2083645 () Bool)

(assert (=> d!2083645 (= (get!22848 (ite c!1226752 lt!2423026 lt!2422889)) (v!52596 (ite c!1226752 lt!2423026 lt!2422889)))))

(assert (=> bm!586382 d!2083645))

(declare-fun b!6648129 () Bool)

(declare-fun e!4019983 () List!65832)

(assert (=> b!6648129 (= e!4019983 (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008)))))

(declare-fun b!6648130 () Bool)

(assert (=> b!6648130 (= e!4019983 (Cons!65708 (h!72156 (ite c!1226752 (_2!36793 lt!2422864) lt!2422891)) (++!14664 (t!379501 (ite c!1226752 (_2!36793 lt!2422864) lt!2422891)) (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008)))))))

(declare-fun b!6648131 () Bool)

(declare-fun res!2724128 () Bool)

(declare-fun e!4019984 () Bool)

(assert (=> b!6648131 (=> (not res!2724128) (not e!4019984))))

(declare-fun lt!2423149 () List!65832)

(assert (=> b!6648131 (= res!2724128 (= (size!40565 lt!2423149) (+ (size!40565 (ite c!1226752 (_2!36793 lt!2422864) lt!2422891)) (size!40565 (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008))))))))

(declare-fun b!6648132 () Bool)

(assert (=> b!6648132 (= e!4019984 (or (not (= (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008)) Nil!65708)) (= lt!2423149 (ite c!1226752 (_2!36793 lt!2422864) lt!2422891))))))

(declare-fun d!2083647 () Bool)

(assert (=> d!2083647 e!4019984))

(declare-fun res!2724129 () Bool)

(assert (=> d!2083647 (=> (not res!2724129) (not e!4019984))))

(assert (=> d!2083647 (= res!2724129 (= (content!12703 lt!2423149) ((_ map or) (content!12703 (ite c!1226752 (_2!36793 lt!2422864) lt!2422891)) (content!12703 (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008))))))))

(assert (=> d!2083647 (= lt!2423149 e!4019983)))

(declare-fun c!1226876 () Bool)

(assert (=> d!2083647 (= c!1226876 ((_ is Nil!65708) (ite c!1226752 (_2!36793 lt!2422864) lt!2422891)))))

(assert (=> d!2083647 (= (++!14664 (ite c!1226752 (_2!36793 lt!2422864) lt!2422891) (ite c!1226752 (_2!36793 lt!2423042) (_2!36793 lt!2423008))) lt!2423149)))

(assert (= (and d!2083647 c!1226876) b!6648129))

(assert (= (and d!2083647 (not c!1226876)) b!6648130))

(assert (= (and d!2083647 res!2724129) b!6648131))

(assert (= (and b!6648131 res!2724128) b!6648132))

(declare-fun m!7414062 () Bool)

(assert (=> b!6648130 m!7414062))

(declare-fun m!7414064 () Bool)

(assert (=> b!6648131 m!7414064))

(declare-fun m!7414066 () Bool)

(assert (=> b!6648131 m!7414066))

(declare-fun m!7414068 () Bool)

(assert (=> b!6648131 m!7414068))

(declare-fun m!7414070 () Bool)

(assert (=> d!2083647 m!7414070))

(declare-fun m!7414072 () Bool)

(assert (=> d!2083647 m!7414072))

(declare-fun m!7414074 () Bool)

(assert (=> d!2083647 m!7414074))

(assert (=> bm!586400 d!2083647))

(declare-fun d!2083649 () Bool)

(assert (=> d!2083649 (= (flatMap!2016 (ite c!1226758 lt!2423016 (ite c!1226748 lt!2423036 lt!2422923)) (ite c!1226758 lambda!371930 (ite c!1226748 lambda!371930 lambda!371930))) (dynLambda!26178 (ite c!1226758 lambda!371930 (ite c!1226748 lambda!371930 lambda!371930)) (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422947 lt!2422873))))))

(declare-fun lt!2423150 () Unit!159453)

(assert (=> d!2083649 (= lt!2423150 (choose!49680 (ite c!1226758 lt!2423016 (ite c!1226748 lt!2423036 lt!2422923)) (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422947 lt!2422873)) (ite c!1226758 lambda!371930 (ite c!1226748 lambda!371930 lambda!371930))))))

(assert (=> d!2083649 (= (ite c!1226758 lt!2423016 (ite c!1226748 lt!2423036 lt!2422923)) (store ((as const (Array Context!11790 Bool)) false) (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422947 lt!2422873)) true))))

(assert (=> d!2083649 (= (lemmaFlatMapOnSingletonSet!1542 (ite c!1226758 lt!2423016 (ite c!1226748 lt!2423036 lt!2422923)) (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422947 lt!2422873)) (ite c!1226758 lambda!371930 (ite c!1226748 lambda!371930 lambda!371930))) lt!2423150)))

(declare-fun b_lambda!251099 () Bool)

(assert (=> (not b_lambda!251099) (not d!2083649)))

(declare-fun bs!1711374 () Bool)

(assert (= bs!1711374 d!2083649))

(declare-fun m!7414076 () Bool)

(assert (=> bs!1711374 m!7414076))

(declare-fun m!7414078 () Bool)

(assert (=> bs!1711374 m!7414078))

(declare-fun m!7414080 () Bool)

(assert (=> bs!1711374 m!7414080))

(declare-fun m!7414082 () Bool)

(assert (=> bs!1711374 m!7414082))

(assert (=> bm!586288 d!2083649))

(declare-fun d!2083651 () Bool)

(declare-fun c!1226877 () Bool)

(assert (=> d!2083651 (= c!1226877 (isEmpty!38018 (ite (or c!1226758 c!1226748) (t!379501 s!2326) (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 lt!2422900 (_2!36793 lt!2422848)) (t!379501 s!2326))))))))

(declare-fun e!4019985 () Bool)

(assert (=> d!2083651 (= (matchZipper!2523 (ite c!1226758 ((_ map or) lt!2422928 lt!2423000) (ite c!1226748 lt!2422933 (ite c!1226755 lt!2422958 (ite c!1226756 (ite c!1226752 (store ((as const (Array Context!11790 Bool)) false) (Context!11791 call!586445) true) lt!2422923) ((_ map or) lt!2423006 lt!2423000))))) (ite (or c!1226758 c!1226748) (t!379501 s!2326) (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 lt!2422900 (_2!36793 lt!2422848)) (t!379501 s!2326))))) e!4019985)))

(declare-fun b!6648133 () Bool)

(assert (=> b!6648133 (= e!4019985 (nullableZipper!2251 (ite c!1226758 ((_ map or) lt!2422928 lt!2423000) (ite c!1226748 lt!2422933 (ite c!1226755 lt!2422958 (ite c!1226756 (ite c!1226752 (store ((as const (Array Context!11790 Bool)) false) (Context!11791 call!586445) true) lt!2422923) ((_ map or) lt!2423006 lt!2423000)))))))))

(declare-fun b!6648134 () Bool)

(assert (=> b!6648134 (= e!4019985 (matchZipper!2523 (derivationStepZipper!2477 (ite c!1226758 ((_ map or) lt!2422928 lt!2423000) (ite c!1226748 lt!2422933 (ite c!1226755 lt!2422958 (ite c!1226756 (ite c!1226752 (store ((as const (Array Context!11790 Bool)) false) (Context!11791 call!586445) true) lt!2422923) ((_ map or) lt!2423006 lt!2423000))))) (head!13463 (ite (or c!1226758 c!1226748) (t!379501 s!2326) (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 lt!2422900 (_2!36793 lt!2422848)) (t!379501 s!2326)))))) (tail!12548 (ite (or c!1226758 c!1226748) (t!379501 s!2326) (ite c!1226755 s!2326 (ite c!1226756 (ite c!1226752 lt!2422900 (_2!36793 lt!2422848)) (t!379501 s!2326)))))))))

(assert (= (and d!2083651 c!1226877) b!6648133))

(assert (= (and d!2083651 (not c!1226877)) b!6648134))

(declare-fun m!7414086 () Bool)

(assert (=> d!2083651 m!7414086))

(declare-fun m!7414090 () Bool)

(assert (=> b!6648133 m!7414090))

(declare-fun m!7414096 () Bool)

(assert (=> b!6648134 m!7414096))

(assert (=> b!6648134 m!7414096))

(declare-fun m!7414098 () Bool)

(assert (=> b!6648134 m!7414098))

(declare-fun m!7414100 () Bool)

(assert (=> b!6648134 m!7414100))

(assert (=> b!6648134 m!7414098))

(assert (=> b!6648134 m!7414100))

(declare-fun m!7414102 () Bool)

(assert (=> b!6648134 m!7414102))

(assert (=> bm!586366 d!2083651))

(declare-fun d!2083655 () Bool)

(declare-fun nullableFct!2426 (Regex!16511) Bool)

(assert (=> d!2083655 (= (nullable!6504 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))) (nullableFct!2426 (ite c!1226758 (regOne!33535 (regOne!33534 r!7292)) (regOne!33534 (regOne!33534 r!7292)))))))

(declare-fun bs!1711376 () Bool)

(assert (= bs!1711376 d!2083655))

(declare-fun m!7414104 () Bool)

(assert (=> bs!1711376 m!7414104))

(assert (=> bm!586379 d!2083655))

(declare-fun d!2083657 () Bool)

(assert (=> d!2083657 (matchR!8694 (Concat!25356 (reg!16840 (regOne!33534 r!7292)) lt!2422950) (++!14664 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)) (ite c!1226752 lt!2422854 (_2!36793 lt!2422848))))))

(declare-fun lt!2423154 () Unit!159453)

(assert (=> d!2083657 (= lt!2423154 (choose!49679 (reg!16840 (regOne!33534 r!7292)) lt!2422950 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)) (ite c!1226752 lt!2422854 (_2!36793 lt!2422848))))))

(declare-fun e!4019986 () Bool)

(assert (=> d!2083657 e!4019986))

(declare-fun res!2724130 () Bool)

(assert (=> d!2083657 (=> (not res!2724130) (not e!4019986))))

(assert (=> d!2083657 (= res!2724130 (validRegex!8247 (reg!16840 (regOne!33534 r!7292))))))

(assert (=> d!2083657 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!372 (reg!16840 (regOne!33534 r!7292)) lt!2422950 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422848)) (ite c!1226752 lt!2422854 (_2!36793 lt!2422848))) lt!2423154)))

(declare-fun b!6648135 () Bool)

(assert (=> b!6648135 (= e!4019986 (validRegex!8247 lt!2422950))))

(assert (= (and d!2083657 res!2724130) b!6648135))

(assert (=> d!2083657 m!7413582))

(assert (=> d!2083657 m!7413582))

(declare-fun m!7414106 () Bool)

(assert (=> d!2083657 m!7414106))

(declare-fun m!7414108 () Bool)

(assert (=> d!2083657 m!7414108))

(assert (=> d!2083657 m!7413850))

(declare-fun m!7414110 () Bool)

(assert (=> b!6648135 m!7414110))

(assert (=> bm!586352 d!2083657))

(declare-fun d!2083659 () Bool)

(declare-fun choose!49701 ((InoxSet Context!11790) Int) (InoxSet Context!11790))

(assert (=> d!2083659 (= (flatMap!2016 (ite c!1226748 lt!2422982 lt!2422849) (ite c!1226748 lambda!371930 lambda!371930)) (choose!49701 (ite c!1226748 lt!2422982 lt!2422849) (ite c!1226748 lambda!371930 lambda!371930)))))

(declare-fun bs!1711377 () Bool)

(assert (= bs!1711377 d!2083659))

(declare-fun m!7414112 () Bool)

(assert (=> bs!1711377 m!7414112))

(assert (=> bm!586450 d!2083659))

(declare-fun bs!1711378 () Bool)

(declare-fun b!6648144 () Bool)

(assert (= bs!1711378 (and b!6648144 b!6647636)))

(declare-fun lambda!372004 () Int)

(assert (=> bs!1711378 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) Nil!65708) (= (reg!16840 (ite c!1226758 lt!2422929 lt!2422944)) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226758 lt!2422929 lt!2422944) lt!2422860)) (= lambda!372004 lambda!371954))))

(declare-fun bs!1711379 () Bool)

(assert (= bs!1711379 (and b!6648144 d!2083569)))

(assert (=> bs!1711379 (not (= lambda!372004 lambda!371973))))

(declare-fun bs!1711380 () Bool)

(assert (= bs!1711380 (and b!6648144 b!6647888)))

(assert (=> bs!1711380 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (reg!16840 (ite c!1226758 lt!2422929 lt!2422944)) (reg!16840 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= (ite c!1226758 lt!2422929 lt!2422944) (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= lambda!372004 lambda!371967))))

(declare-fun bs!1711381 () Bool)

(assert (= bs!1711381 (and b!6648144 b!6647623)))

(assert (=> bs!1711381 (not (= lambda!372004 lambda!371934))))

(declare-fun bs!1711382 () Bool)

(assert (= bs!1711382 (and b!6648144 b!6647652)))

(assert (=> bs!1711382 (not (= lambda!372004 lambda!371943))))

(declare-fun bs!1711383 () Bool)

(assert (= bs!1711383 (and b!6648144 b!6647657)))

(assert (=> bs!1711383 (not (= lambda!372004 lambda!371949))))

(declare-fun bs!1711384 () Bool)

(assert (= bs!1711384 (and b!6648144 b!6647663)))

(assert (=> bs!1711384 (not (= lambda!372004 lambda!371928))))

(declare-fun bs!1711385 () Bool)

(assert (= bs!1711385 (and b!6648144 b!6647844)))

(assert (=> bs!1711385 (not (= lambda!372004 lambda!371963))))

(declare-fun bs!1711386 () Bool)

(assert (= bs!1711386 (and b!6648144 d!2083631)))

(assert (=> bs!1711386 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) (= (reg!16840 (ite c!1226758 lt!2422929 lt!2422944)) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226758 lt!2422929 lt!2422944) (Star!16511 (reg!16840 (regOne!33534 r!7292))))) (= lambda!372004 lambda!372002))))

(assert (=> bs!1711383 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) (_1!36793 lt!2423008)) (= (reg!16840 (ite c!1226758 lt!2422929 lt!2422944)) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226758 lt!2422929 lt!2422944) lt!2422860)) (= lambda!372004 lambda!371951))))

(declare-fun bs!1711387 () Bool)

(assert (= bs!1711387 (and b!6648144 b!6647847)))

(assert (=> bs!1711387 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (reg!16840 (ite c!1226758 lt!2422929 lt!2422944)) (reg!16840 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= (ite c!1226758 lt!2422929 lt!2422944) (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= lambda!372004 lambda!371962))))

(assert (=> bs!1711383 (not (= lambda!372004 lambda!371950))))

(assert (=> bs!1711384 (not (= lambda!372004 lambda!371929))))

(assert (=> bs!1711382 (not (= lambda!372004 lambda!371941))))

(declare-fun bs!1711388 () Bool)

(assert (= bs!1711388 (and b!6648144 b!6647624)))

(assert (=> bs!1711388 (not (= lambda!372004 lambda!371935))))

(declare-fun bs!1711389 () Bool)

(assert (= bs!1711389 (and b!6648144 d!2083635)))

(assert (=> bs!1711389 (not (= lambda!372004 lambda!372003))))

(assert (=> bs!1711388 (not (= lambda!372004 lambda!371937))))

(declare-fun bs!1711390 () Bool)

(assert (= bs!1711390 (and b!6648144 d!2083617)))

(assert (=> bs!1711390 (not (= lambda!372004 lambda!371982))))

(assert (=> bs!1711378 (not (= lambda!372004 lambda!371952))))

(declare-fun bs!1711391 () Bool)

(assert (= bs!1711391 (and b!6648144 b!6647651)))

(assert (=> bs!1711391 (not (= lambda!372004 lambda!371940))))

(assert (=> bs!1711383 (not (= lambda!372004 lambda!371948))))

(declare-fun bs!1711392 () Bool)

(assert (= bs!1711392 (and b!6648144 b!6647885)))

(assert (=> bs!1711392 (not (= lambda!372004 lambda!371968))))

(declare-fun bs!1711393 () Bool)

(assert (= bs!1711393 (and b!6648144 b!6647902)))

(assert (=> bs!1711393 (not (= lambda!372004 lambda!371970))))

(declare-fun bs!1711394 () Bool)

(assert (= bs!1711394 (and b!6648144 d!2083619)))

(assert (=> bs!1711394 (not (= lambda!372004 lambda!371994))))

(assert (=> bs!1711381 (not (= lambda!372004 lambda!371933))))

(assert (=> bs!1711394 (not (= lambda!372004 lambda!371992))))

(assert (=> bs!1711388 (not (= lambda!372004 lambda!371936))))

(assert (=> bs!1711383 (not (= lambda!372004 lambda!371947))))

(assert (=> bs!1711388 (not (= lambda!372004 lambda!371938))))

(assert (=> bs!1711378 (not (= lambda!372004 lambda!371953))))

(assert (=> bs!1711381 (not (= lambda!372004 lambda!371932))))

(assert (=> bs!1711386 (not (= lambda!372004 lambda!372001))))

(assert (=> bs!1711381 (not (= lambda!372004 lambda!371931))))

(declare-fun bs!1711395 () Bool)

(assert (= bs!1711395 (and b!6648144 b!6647905)))

(assert (=> bs!1711395 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (reg!16840 (ite c!1226758 lt!2422929 lt!2422944)) (reg!16840 r!7292)) (= (ite c!1226758 lt!2422929 lt!2422944) r!7292)) (= lambda!372004 lambda!371969))))

(assert (=> bs!1711391 (not (= lambda!372004 lambda!371939))))

(assert (=> bs!1711382 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) (_1!36793 lt!2423042)) (= (reg!16840 (ite c!1226758 lt!2422929 lt!2422944)) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226758 lt!2422929 lt!2422944) lt!2422860)) (= lambda!372004 lambda!371942))))

(assert (=> b!6648144 true))

(assert (=> b!6648144 true))

(declare-fun bs!1711396 () Bool)

(declare-fun b!6648141 () Bool)

(assert (= bs!1711396 (and b!6648141 b!6647636)))

(declare-fun lambda!372007 () Int)

(assert (=> bs!1711396 (not (= lambda!372007 lambda!371954))))

(declare-fun bs!1711397 () Bool)

(assert (= bs!1711397 (and b!6648141 d!2083569)))

(assert (=> bs!1711397 (not (= lambda!372007 lambda!371973))))

(declare-fun bs!1711398 () Bool)

(assert (= bs!1711398 (and b!6648141 b!6647888)))

(assert (=> bs!1711398 (not (= lambda!372007 lambda!371967))))

(declare-fun bs!1711399 () Bool)

(assert (= bs!1711399 (and b!6648141 b!6647623)))

(assert (=> bs!1711399 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) lt!2422859)) (= lambda!372007 lambda!371934))))

(declare-fun bs!1711400 () Bool)

(assert (= bs!1711400 (and b!6648141 b!6647652)))

(assert (=> bs!1711400 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) (_1!36793 lt!2423042)) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) lt!2422860)) (= lambda!372007 lambda!371943))))

(declare-fun bs!1711401 () Bool)

(assert (= bs!1711401 (and b!6648141 b!6647657)))

(assert (=> bs!1711401 (not (= lambda!372007 lambda!371949))))

(declare-fun bs!1711402 () Bool)

(assert (= bs!1711402 (and b!6648141 b!6647663)))

(assert (=> bs!1711402 (not (= lambda!372007 lambda!371928))))

(declare-fun bs!1711403 () Bool)

(assert (= bs!1711403 (and b!6648141 b!6647844)))

(assert (=> bs!1711403 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))))) (= lambda!372007 lambda!371963))))

(declare-fun bs!1711404 () Bool)

(assert (= bs!1711404 (and b!6648141 d!2083631)))

(assert (=> bs!1711404 (not (= lambda!372007 lambda!372002))))

(assert (=> bs!1711401 (not (= lambda!372007 lambda!371951))))

(assert (=> bs!1711401 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) (_1!36793 lt!2423008)) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) lt!2422860)) (= lambda!372007 lambda!371950))))

(assert (=> bs!1711402 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regOne!33534 r!7292)) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regTwo!33534 r!7292))) (= lambda!372007 lambda!371929))))

(assert (=> bs!1711400 (not (= lambda!372007 lambda!371941))))

(declare-fun bs!1711405 () Bool)

(assert (= bs!1711405 (and b!6648141 b!6647624)))

(assert (=> bs!1711405 (not (= lambda!372007 lambda!371935))))

(declare-fun bs!1711406 () Bool)

(assert (= bs!1711406 (and b!6648141 d!2083635)))

(assert (=> bs!1711406 (not (= lambda!372007 lambda!372003))))

(assert (=> bs!1711405 (not (= lambda!372007 lambda!371937))))

(declare-fun bs!1711407 () Bool)

(assert (= bs!1711407 (and b!6648141 d!2083617)))

(assert (=> bs!1711407 (not (= lambda!372007 lambda!371982))))

(assert (=> bs!1711396 (not (= lambda!372007 lambda!371952))))

(declare-fun bs!1711408 () Bool)

(assert (= bs!1711408 (and b!6648141 b!6647651)))

(assert (=> bs!1711408 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) lt!2422860) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regTwo!33534 r!7292))) (= lambda!372007 lambda!371940))))

(assert (=> bs!1711401 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) lt!2422944) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regTwo!33534 r!7292))) (= lambda!372007 lambda!371948))))

(declare-fun bs!1711409 () Bool)

(assert (= bs!1711409 (and b!6648141 b!6647885)))

(assert (=> bs!1711409 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))))) (= lambda!372007 lambda!371968))))

(declare-fun bs!1711410 () Bool)

(assert (= bs!1711410 (and b!6648141 b!6647902)))

(assert (=> bs!1711410 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regOne!33534 r!7292)) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regTwo!33534 r!7292))) (= lambda!372007 lambda!371970))))

(declare-fun bs!1711411 () Bool)

(assert (= bs!1711411 (and b!6648141 d!2083619)))

(assert (=> bs!1711411 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regOne!33534 r!7292)) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regTwo!33534 r!7292))) (= lambda!372007 lambda!371994))))

(assert (=> bs!1711399 (not (= lambda!372007 lambda!371933))))

(assert (=> bs!1711411 (not (= lambda!372007 lambda!371992))))

(assert (=> bs!1711405 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) lt!2422957)) (= lambda!372007 lambda!371936))))

(assert (=> bs!1711401 (not (= lambda!372007 lambda!371947))))

(assert (=> bs!1711405 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) lt!2422956)) (= lambda!372007 lambda!371938))))

(declare-fun bs!1711412 () Bool)

(assert (= bs!1711412 (and b!6648141 b!6647847)))

(assert (=> bs!1711412 (not (= lambda!372007 lambda!371962))))

(declare-fun bs!1711413 () Bool)

(assert (= bs!1711413 (and b!6648141 b!6648144)))

(assert (=> bs!1711413 (not (= lambda!372007 lambda!372004))))

(assert (=> bs!1711396 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) Nil!65708) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) lt!2422860)) (= lambda!372007 lambda!371953))))

(assert (=> bs!1711399 (= (and (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) s!2326) (= (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944)) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)) lt!2423021)) (= lambda!372007 lambda!371932))))

(assert (=> bs!1711404 (not (= lambda!372007 lambda!372001))))

(assert (=> bs!1711399 (not (= lambda!372007 lambda!371931))))

(declare-fun bs!1711414 () Bool)

(assert (= bs!1711414 (and b!6648141 b!6647905)))

(assert (=> bs!1711414 (not (= lambda!372007 lambda!371969))))

(assert (=> bs!1711408 (not (= lambda!372007 lambda!371939))))

(assert (=> bs!1711400 (not (= lambda!372007 lambda!371942))))

(assert (=> b!6648141 true))

(assert (=> b!6648141 true))

(declare-fun c!1226879 () Bool)

(declare-fun b!6648136 () Bool)

(assert (=> b!6648136 (= c!1226879 ((_ is ElementMatch!16511) (ite c!1226758 lt!2422929 lt!2422944)))))

(declare-fun e!4019991 () Bool)

(declare-fun e!4019988 () Bool)

(assert (=> b!6648136 (= e!4019991 e!4019988)))

(declare-fun call!586536 () Bool)

(declare-fun bm!586530 () Bool)

(assert (=> bm!586530 (= call!586536 (isEmpty!38018 (ite c!1226758 s!2326 (_1!36793 lt!2423008))))))

(declare-fun b!6648137 () Bool)

(declare-fun c!1226881 () Bool)

(assert (=> b!6648137 (= c!1226881 ((_ is Union!16511) (ite c!1226758 lt!2422929 lt!2422944)))))

(declare-fun e!4019989 () Bool)

(assert (=> b!6648137 (= e!4019988 e!4019989)))

(declare-fun b!6648138 () Bool)

(declare-fun e!4019993 () Bool)

(assert (=> b!6648138 (= e!4019989 e!4019993)))

(declare-fun res!2724132 () Bool)

(assert (=> b!6648138 (= res!2724132 (matchRSpec!3612 (regOne!33535 (ite c!1226758 lt!2422929 lt!2422944)) (ite c!1226758 s!2326 (_1!36793 lt!2423008))))))

(assert (=> b!6648138 (=> res!2724132 e!4019993)))

(declare-fun b!6648139 () Bool)

(declare-fun e!4019990 () Bool)

(assert (=> b!6648139 (= e!4019990 call!586536)))

(declare-fun b!6648140 () Bool)

(assert (=> b!6648140 (= e!4019993 (matchRSpec!3612 (regTwo!33535 (ite c!1226758 lt!2422929 lt!2422944)) (ite c!1226758 s!2326 (_1!36793 lt!2423008))))))

(declare-fun e!4019987 () Bool)

(declare-fun call!586535 () Bool)

(assert (=> b!6648141 (= e!4019987 call!586535)))

(declare-fun b!6648142 () Bool)

(assert (=> b!6648142 (= e!4019989 e!4019987)))

(declare-fun c!1226878 () Bool)

(assert (=> b!6648142 (= c!1226878 ((_ is Star!16511) (ite c!1226758 lt!2422929 lt!2422944)))))

(declare-fun bm!586531 () Bool)

(assert (=> bm!586531 (= call!586535 (Exists!3581 (ite c!1226878 lambda!372004 lambda!372007)))))

(declare-fun b!6648143 () Bool)

(declare-fun res!2724133 () Bool)

(declare-fun e!4019992 () Bool)

(assert (=> b!6648143 (=> res!2724133 e!4019992)))

(assert (=> b!6648143 (= res!2724133 call!586536)))

(assert (=> b!6648143 (= e!4019987 e!4019992)))

(assert (=> b!6648144 (= e!4019992 call!586535)))

(declare-fun d!2083661 () Bool)

(declare-fun c!1226880 () Bool)

(assert (=> d!2083661 (= c!1226880 ((_ is EmptyExpr!16511) (ite c!1226758 lt!2422929 lt!2422944)))))

(assert (=> d!2083661 (= (matchRSpec!3612 (ite c!1226758 lt!2422929 lt!2422944) (ite c!1226758 s!2326 (_1!36793 lt!2423008))) e!4019990)))

(declare-fun b!6648145 () Bool)

(assert (=> b!6648145 (= e!4019990 e!4019991)))

(declare-fun res!2724131 () Bool)

(assert (=> b!6648145 (= res!2724131 (not ((_ is EmptyLang!16511) (ite c!1226758 lt!2422929 lt!2422944))))))

(assert (=> b!6648145 (=> (not res!2724131) (not e!4019991))))

(declare-fun b!6648146 () Bool)

(assert (=> b!6648146 (= e!4019988 (= (ite c!1226758 s!2326 (_1!36793 lt!2423008)) (Cons!65708 (c!1226759 (ite c!1226758 lt!2422929 lt!2422944)) Nil!65708)))))

(assert (= (and d!2083661 c!1226880) b!6648139))

(assert (= (and d!2083661 (not c!1226880)) b!6648145))

(assert (= (and b!6648145 res!2724131) b!6648136))

(assert (= (and b!6648136 c!1226879) b!6648146))

(assert (= (and b!6648136 (not c!1226879)) b!6648137))

(assert (= (and b!6648137 c!1226881) b!6648138))

(assert (= (and b!6648137 (not c!1226881)) b!6648142))

(assert (= (and b!6648138 (not res!2724132)) b!6648140))

(assert (= (and b!6648142 c!1226878) b!6648143))

(assert (= (and b!6648142 (not c!1226878)) b!6648141))

(assert (= (and b!6648143 (not res!2724133)) b!6648144))

(assert (= (or b!6648144 b!6648141) bm!586531))

(assert (= (or b!6648139 b!6648143) bm!586530))

(declare-fun m!7414114 () Bool)

(assert (=> bm!586530 m!7414114))

(declare-fun m!7414116 () Bool)

(assert (=> b!6648138 m!7414116))

(declare-fun m!7414118 () Bool)

(assert (=> b!6648140 m!7414118))

(declare-fun m!7414120 () Bool)

(assert (=> bm!586531 m!7414120))

(assert (=> bm!586397 d!2083661))

(declare-fun b!6648199 () Bool)

(declare-fun e!4020023 () List!65833)

(assert (=> b!6648199 (= e!4020023 (Cons!65709 (h!72157 lt!2423031) (++!14665 (t!379502 lt!2423031) lt!2422986)))))

(declare-fun d!2083663 () Bool)

(declare-fun e!4020024 () Bool)

(assert (=> d!2083663 e!4020024))

(declare-fun res!2724157 () Bool)

(assert (=> d!2083663 (=> (not res!2724157) (not e!4020024))))

(declare-fun lt!2423157 () List!65833)

(declare-fun content!12707 (List!65833) (InoxSet Regex!16511))

(assert (=> d!2083663 (= res!2724157 (= (content!12707 lt!2423157) ((_ map or) (content!12707 lt!2423031) (content!12707 lt!2422986))))))

(assert (=> d!2083663 (= lt!2423157 e!4020023)))

(declare-fun c!1226896 () Bool)

(assert (=> d!2083663 (= c!1226896 ((_ is Nil!65709) lt!2423031))))

(assert (=> d!2083663 (= (++!14665 lt!2423031 lt!2422986) lt!2423157)))

(declare-fun b!6648201 () Bool)

(assert (=> b!6648201 (= e!4020024 (or (not (= lt!2422986 Nil!65709)) (= lt!2423157 lt!2423031)))))

(declare-fun b!6648200 () Bool)

(declare-fun res!2724158 () Bool)

(assert (=> b!6648200 (=> (not res!2724158) (not e!4020024))))

(declare-fun size!40567 (List!65833) Int)

(assert (=> b!6648200 (= res!2724158 (= (size!40567 lt!2423157) (+ (size!40567 lt!2423031) (size!40567 lt!2422986))))))

(declare-fun b!6648198 () Bool)

(assert (=> b!6648198 (= e!4020023 lt!2422986)))

(assert (= (and d!2083663 c!1226896) b!6648198))

(assert (= (and d!2083663 (not c!1226896)) b!6648199))

(assert (= (and d!2083663 res!2724157) b!6648200))

(assert (= (and b!6648200 res!2724158) b!6648201))

(declare-fun m!7414122 () Bool)

(assert (=> b!6648199 m!7414122))

(declare-fun m!7414124 () Bool)

(assert (=> d!2083663 m!7414124))

(declare-fun m!7414126 () Bool)

(assert (=> d!2083663 m!7414126))

(declare-fun m!7414128 () Bool)

(assert (=> d!2083663 m!7414128))

(declare-fun m!7414130 () Bool)

(assert (=> b!6648200 m!7414130))

(declare-fun m!7414132 () Bool)

(assert (=> b!6648200 m!7414132))

(declare-fun m!7414134 () Bool)

(assert (=> b!6648200 m!7414134))

(assert (=> bm!586482 d!2083663))

(declare-fun d!2083665 () Bool)

(assert (=> d!2083665 (forall!15706 (++!14665 lt!2423031 lt!2422986) (ite c!1226752 lambda!371944 lambda!371946))))

(declare-fun lt!2423160 () Unit!159453)

(declare-fun choose!49703 (List!65833 List!65833 Int) Unit!159453)

(assert (=> d!2083665 (= lt!2423160 (choose!49703 lt!2423031 lt!2422986 (ite c!1226752 lambda!371944 lambda!371946)))))

(assert (=> d!2083665 (forall!15706 lt!2423031 (ite c!1226752 lambda!371944 lambda!371946))))

(assert (=> d!2083665 (= (lemmaConcatPreservesForall!424 lt!2423031 lt!2422986 (ite c!1226752 lambda!371944 lambda!371946)) lt!2423160)))

(declare-fun bs!1711434 () Bool)

(assert (= bs!1711434 d!2083665))

(assert (=> bs!1711434 m!7413358))

(assert (=> bs!1711434 m!7413358))

(declare-fun m!7414136 () Bool)

(assert (=> bs!1711434 m!7414136))

(declare-fun m!7414138 () Bool)

(assert (=> bs!1711434 m!7414138))

(declare-fun m!7414140 () Bool)

(assert (=> bs!1711434 m!7414140))

(assert (=> bm!586376 d!2083665))

(declare-fun d!2083667 () Bool)

(assert (=> d!2083667 (= (matchR!8694 (ite c!1226758 lt!2422929 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226757 lt!2422944 lt!2422860) (regOne!33534 r!7292))))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226757 (_1!36793 lt!2423008) Nil!65708) s!2326))) (matchRSpec!3612 (ite c!1226758 lt!2422929 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226757 lt!2422944 lt!2422860) (regOne!33534 r!7292))))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226757 (_1!36793 lt!2423008) Nil!65708) s!2326))))))

(declare-fun lt!2423161 () Unit!159453)

(assert (=> d!2083667 (= lt!2423161 (choose!49684 (ite c!1226758 lt!2422929 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226757 lt!2422944 lt!2422860) (regOne!33534 r!7292))))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226757 (_1!36793 lt!2423008) Nil!65708) s!2326))))))

(assert (=> d!2083667 (validRegex!8247 (ite c!1226758 lt!2422929 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226757 lt!2422944 lt!2422860) (regOne!33534 r!7292))))))))

(assert (=> d!2083667 (= (mainMatchTheorem!3612 (ite c!1226758 lt!2422929 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226757 lt!2422944 lt!2422860) (regOne!33534 r!7292))))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226757 (_1!36793 lt!2423008) Nil!65708) s!2326))) lt!2423161)))

(declare-fun bs!1711436 () Bool)

(assert (= bs!1711436 d!2083667))

(declare-fun m!7414142 () Bool)

(assert (=> bs!1711436 m!7414142))

(declare-fun m!7414144 () Bool)

(assert (=> bs!1711436 m!7414144))

(declare-fun m!7414146 () Bool)

(assert (=> bs!1711436 m!7414146))

(declare-fun m!7414148 () Bool)

(assert (=> bs!1711436 m!7414148))

(assert (=> bm!586331 d!2083667))

(declare-fun d!2083669 () Bool)

(assert (=> d!2083669 (= (isEmpty!38017 (t!379502 (exprs!6395 (h!72158 zl!343)))) ((_ is Nil!65709) (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(assert (=> b!6647646 d!2083669))

(declare-fun b!6648224 () Bool)

(declare-fun e!4020044 () Bool)

(declare-fun call!586551 () Bool)

(assert (=> b!6648224 (= e!4020044 call!586551)))

(declare-fun b!6648225 () Bool)

(declare-fun e!4020047 () Bool)

(declare-fun e!4020046 () Bool)

(assert (=> b!6648225 (= e!4020047 e!4020046)))

(declare-fun res!2724174 () Bool)

(assert (=> b!6648225 (= res!2724174 (not (nullable!6504 (reg!16840 r!7292))))))

(assert (=> b!6648225 (=> (not res!2724174) (not e!4020046))))

(declare-fun b!6648226 () Bool)

(declare-fun call!586549 () Bool)

(assert (=> b!6648226 (= e!4020046 call!586549)))

(declare-fun bm!586545 () Bool)

(declare-fun call!586550 () Bool)

(declare-fun c!1226903 () Bool)

(assert (=> bm!586545 (= call!586550 (validRegex!8247 (ite c!1226903 (regOne!33535 r!7292) (regOne!33534 r!7292))))))

(declare-fun b!6648227 () Bool)

(declare-fun res!2724173 () Bool)

(assert (=> b!6648227 (=> (not res!2724173) (not e!4020044))))

(assert (=> b!6648227 (= res!2724173 call!586550)))

(declare-fun e!4020043 () Bool)

(assert (=> b!6648227 (= e!4020043 e!4020044)))

(declare-fun b!6648228 () Bool)

(declare-fun e!4020042 () Bool)

(declare-fun e!4020048 () Bool)

(assert (=> b!6648228 (= e!4020042 e!4020048)))

(declare-fun res!2724175 () Bool)

(assert (=> b!6648228 (=> (not res!2724175) (not e!4020048))))

(assert (=> b!6648228 (= res!2724175 call!586550)))

(declare-fun b!6648229 () Bool)

(declare-fun e!4020045 () Bool)

(assert (=> b!6648229 (= e!4020045 e!4020047)))

(declare-fun c!1226902 () Bool)

(assert (=> b!6648229 (= c!1226902 ((_ is Star!16511) r!7292))))

(declare-fun bm!586546 () Bool)

(assert (=> bm!586546 (= call!586551 call!586549)))

(declare-fun b!6648230 () Bool)

(assert (=> b!6648230 (= e!4020048 call!586551)))

(declare-fun bm!586544 () Bool)

(assert (=> bm!586544 (= call!586549 (validRegex!8247 (ite c!1226902 (reg!16840 r!7292) (ite c!1226903 (regTwo!33535 r!7292) (regTwo!33534 r!7292)))))))

(declare-fun d!2083671 () Bool)

(declare-fun res!2724171 () Bool)

(assert (=> d!2083671 (=> res!2724171 e!4020045)))

(assert (=> d!2083671 (= res!2724171 ((_ is ElementMatch!16511) r!7292))))

(assert (=> d!2083671 (= (validRegex!8247 r!7292) e!4020045)))

(declare-fun b!6648231 () Bool)

(declare-fun res!2724172 () Bool)

(assert (=> b!6648231 (=> res!2724172 e!4020042)))

(assert (=> b!6648231 (= res!2724172 (not ((_ is Concat!25356) r!7292)))))

(assert (=> b!6648231 (= e!4020043 e!4020042)))

(declare-fun b!6648232 () Bool)

(assert (=> b!6648232 (= e!4020047 e!4020043)))

(assert (=> b!6648232 (= c!1226903 ((_ is Union!16511) r!7292))))

(assert (= (and d!2083671 (not res!2724171)) b!6648229))

(assert (= (and b!6648229 c!1226902) b!6648225))

(assert (= (and b!6648229 (not c!1226902)) b!6648232))

(assert (= (and b!6648225 res!2724174) b!6648226))

(assert (= (and b!6648232 c!1226903) b!6648227))

(assert (= (and b!6648232 (not c!1226903)) b!6648231))

(assert (= (and b!6648227 res!2724173) b!6648224))

(assert (= (and b!6648231 (not res!2724172)) b!6648228))

(assert (= (and b!6648228 res!2724175) b!6648230))

(assert (= (or b!6648224 b!6648230) bm!586546))

(assert (= (or b!6648227 b!6648228) bm!586545))

(assert (= (or b!6648226 bm!586546) bm!586544))

(declare-fun m!7414172 () Bool)

(assert (=> b!6648225 m!7414172))

(declare-fun m!7414174 () Bool)

(assert (=> bm!586545 m!7414174))

(declare-fun m!7414176 () Bool)

(assert (=> bm!586544 m!7414176))

(assert (=> start!648790 d!2083671))

(declare-fun bs!1711439 () Bool)

(declare-fun d!2083679 () Bool)

(assert (= bs!1711439 (and d!2083679 b!6647652)))

(declare-fun lambda!372012 () Int)

(assert (=> bs!1711439 (= lambda!372012 lambda!371944)))

(declare-fun bs!1711440 () Bool)

(assert (= bs!1711440 (and d!2083679 d!2083603)))

(assert (=> bs!1711440 (= lambda!372012 lambda!371981)))

(declare-fun bs!1711441 () Bool)

(assert (= bs!1711441 (and d!2083679 d!2083521)))

(assert (=> bs!1711441 (= lambda!372012 lambda!371957)))

(declare-fun bs!1711442 () Bool)

(assert (= bs!1711442 (and d!2083679 b!6647657)))

(assert (=> bs!1711442 (= lambda!372012 lambda!371946)))

(declare-fun bs!1711443 () Bool)

(assert (= bs!1711443 (and d!2083679 d!2083583)))

(assert (=> bs!1711443 (= lambda!372012 lambda!371974)))

(declare-fun bs!1711444 () Bool)

(assert (= bs!1711444 (and d!2083679 d!2083585)))

(assert (=> bs!1711444 (= lambda!372012 lambda!371979)))

(declare-fun bs!1711445 () Bool)

(assert (= bs!1711445 (and d!2083679 d!2083539)))

(assert (=> bs!1711445 (= lambda!372012 lambda!371966)))

(declare-fun b!6648234 () Bool)

(declare-fun e!4020052 () Bool)

(declare-fun lt!2423165 () Regex!16511)

(assert (=> b!6648234 (= e!4020052 (isConcat!1407 lt!2423165))))

(declare-fun b!6648235 () Bool)

(declare-fun e!4020054 () Bool)

(assert (=> b!6648235 (= e!4020054 e!4020052)))

(declare-fun c!1226904 () Bool)

(assert (=> b!6648235 (= c!1226904 (isEmpty!38017 (tail!12549 (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990)))))))

(declare-fun b!6648237 () Bool)

(declare-fun e!4020055 () Regex!16511)

(assert (=> b!6648237 (= e!4020055 EmptyExpr!16511)))

(declare-fun b!6648238 () Bool)

(assert (=> b!6648238 (= e!4020054 (isEmptyExpr!1884 lt!2423165))))

(declare-fun b!6648239 () Bool)

(declare-fun e!4020053 () Regex!16511)

(assert (=> b!6648239 (= e!4020053 e!4020055)))

(declare-fun c!1226907 () Bool)

(assert (=> b!6648239 (= c!1226907 ((_ is Cons!65709) (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990))))))

(declare-fun b!6648240 () Bool)

(declare-fun e!4020050 () Bool)

(assert (=> b!6648240 (= e!4020050 e!4020054)))

(declare-fun c!1226906 () Bool)

(assert (=> b!6648240 (= c!1226906 (isEmpty!38017 (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990))))))

(declare-fun b!6648241 () Bool)

(assert (=> b!6648241 (= e!4020053 (h!72157 (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990))))))

(declare-fun b!6648242 () Bool)

(assert (=> b!6648242 (= e!4020055 (Concat!25356 (h!72157 (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990))) (generalisedConcat!2108 (t!379502 (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990))))))))

(declare-fun b!6648243 () Bool)

(assert (=> b!6648243 (= e!4020052 (= lt!2423165 (head!13464 (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990)))))))

(assert (=> d!2083679 e!4020050))

(declare-fun res!2724178 () Bool)

(assert (=> d!2083679 (=> (not res!2724178) (not e!4020050))))

(assert (=> d!2083679 (= res!2724178 (validRegex!8247 lt!2423165))))

(assert (=> d!2083679 (= lt!2423165 e!4020053)))

(declare-fun c!1226905 () Bool)

(declare-fun e!4020051 () Bool)

(assert (=> d!2083679 (= c!1226905 e!4020051)))

(declare-fun res!2724177 () Bool)

(assert (=> d!2083679 (=> (not res!2724177) (not e!4020051))))

(assert (=> d!2083679 (= res!2724177 ((_ is Cons!65709) (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990))))))

(assert (=> d!2083679 (forall!15706 (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990)) lambda!372012)))

(assert (=> d!2083679 (= (generalisedConcat!2108 (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990))) lt!2423165)))

(declare-fun b!6648236 () Bool)

(assert (=> b!6648236 (= e!4020051 (isEmpty!38017 (t!379502 (ite c!1226758 lt!2422857 (ite c!1226748 lt!2422962 lt!2422990)))))))

(assert (= (and d!2083679 res!2724177) b!6648236))

(assert (= (and d!2083679 c!1226905) b!6648241))

(assert (= (and d!2083679 (not c!1226905)) b!6648239))

(assert (= (and b!6648239 c!1226907) b!6648242))

(assert (= (and b!6648239 (not c!1226907)) b!6648237))

(assert (= (and d!2083679 res!2724178) b!6648240))

(assert (= (and b!6648240 c!1226906) b!6648238))

(assert (= (and b!6648240 (not c!1226906)) b!6648235))

(assert (= (and b!6648235 c!1226904) b!6648243))

(assert (= (and b!6648235 (not c!1226904)) b!6648234))

(declare-fun m!7414184 () Bool)

(assert (=> b!6648240 m!7414184))

(declare-fun m!7414186 () Bool)

(assert (=> b!6648242 m!7414186))

(declare-fun m!7414188 () Bool)

(assert (=> b!6648235 m!7414188))

(assert (=> b!6648235 m!7414188))

(declare-fun m!7414190 () Bool)

(assert (=> b!6648235 m!7414190))

(declare-fun m!7414192 () Bool)

(assert (=> b!6648243 m!7414192))

(declare-fun m!7414194 () Bool)

(assert (=> b!6648236 m!7414194))

(declare-fun m!7414196 () Bool)

(assert (=> d!2083679 m!7414196))

(declare-fun m!7414198 () Bool)

(assert (=> d!2083679 m!7414198))

(declare-fun m!7414200 () Bool)

(assert (=> b!6648238 m!7414200))

(declare-fun m!7414202 () Bool)

(assert (=> b!6648234 m!7414202))

(assert (=> bm!586283 d!2083679))

(declare-fun d!2083683 () Bool)

(declare-fun c!1226908 () Bool)

(assert (=> d!2083683 (= c!1226908 (isEmpty!38018 (t!379501 s!2326)))))

(declare-fun e!4020056 () Bool)

(assert (=> d!2083683 (= (matchZipper!2523 (ite c!1226758 ((_ map or) lt!2422855 lt!2423000) ((_ map or) lt!2422934 lt!2422933)) (t!379501 s!2326)) e!4020056)))

(declare-fun b!6648244 () Bool)

(assert (=> b!6648244 (= e!4020056 (nullableZipper!2251 (ite c!1226758 ((_ map or) lt!2422855 lt!2423000) ((_ map or) lt!2422934 lt!2422933))))))

(declare-fun b!6648245 () Bool)

(assert (=> b!6648245 (= e!4020056 (matchZipper!2523 (derivationStepZipper!2477 (ite c!1226758 ((_ map or) lt!2422855 lt!2423000) ((_ map or) lt!2422934 lt!2422933)) (head!13463 (t!379501 s!2326))) (tail!12548 (t!379501 s!2326))))))

(assert (= (and d!2083683 c!1226908) b!6648244))

(assert (= (and d!2083683 (not c!1226908)) b!6648245))

(assert (=> d!2083683 m!7413772))

(declare-fun m!7414204 () Bool)

(assert (=> b!6648244 m!7414204))

(assert (=> b!6648245 m!7413776))

(assert (=> b!6648245 m!7413776))

(declare-fun m!7414206 () Bool)

(assert (=> b!6648245 m!7414206))

(assert (=> b!6648245 m!7413780))

(assert (=> b!6648245 m!7414206))

(assert (=> b!6648245 m!7413780))

(declare-fun m!7414208 () Bool)

(assert (=> b!6648245 m!7414208))

(assert (=> bm!586478 d!2083683))

(declare-fun d!2083685 () Bool)

(assert (=> d!2083685 (= (isDefined!13105 (ite c!1226748 call!586389 (ite c!1226755 call!586351 (ite c!1226752 lt!2422959 lt!2422847)))) (not (isEmpty!38019 (ite c!1226748 call!586389 (ite c!1226755 call!586351 (ite c!1226752 lt!2422959 lt!2422847))))))))

(declare-fun bs!1711446 () Bool)

(assert (= bs!1711446 d!2083685))

(declare-fun m!7414210 () Bool)

(assert (=> bs!1711446 m!7414210))

(assert (=> bm!586372 d!2083685))

(assert (=> bm!586344 d!2083665))

(declare-fun d!2083687 () Bool)

(declare-fun c!1226912 () Bool)

(assert (=> d!2083687 (= c!1226912 (isEmpty!38018 (ite c!1226758 s!2326 (t!379501 s!2326))))))

(declare-fun e!4020062 () Bool)

(assert (=> d!2083687 (= (matchZipper!2523 (ite c!1226758 lt!2423016 lt!2422934) (ite c!1226758 s!2326 (t!379501 s!2326))) e!4020062)))

(declare-fun b!6648256 () Bool)

(assert (=> b!6648256 (= e!4020062 (nullableZipper!2251 (ite c!1226758 lt!2423016 lt!2422934)))))

(declare-fun b!6648257 () Bool)

(assert (=> b!6648257 (= e!4020062 (matchZipper!2523 (derivationStepZipper!2477 (ite c!1226758 lt!2423016 lt!2422934) (head!13463 (ite c!1226758 s!2326 (t!379501 s!2326)))) (tail!12548 (ite c!1226758 s!2326 (t!379501 s!2326)))))))

(assert (= (and d!2083687 c!1226912) b!6648256))

(assert (= (and d!2083687 (not c!1226912)) b!6648257))

(assert (=> d!2083687 m!7413682))

(declare-fun m!7414212 () Bool)

(assert (=> b!6648256 m!7414212))

(assert (=> b!6648257 m!7413686))

(assert (=> b!6648257 m!7413686))

(declare-fun m!7414214 () Bool)

(assert (=> b!6648257 m!7414214))

(assert (=> b!6648257 m!7413690))

(assert (=> b!6648257 m!7414214))

(assert (=> b!6648257 m!7413690))

(declare-fun m!7414216 () Bool)

(assert (=> b!6648257 m!7414216))

(assert (=> bm!586458 d!2083687))

(declare-fun d!2083689 () Bool)

(assert (=> d!2083689 (= (get!22848 (ite c!1226752 lt!2422959 lt!2422847)) (v!52596 (ite c!1226752 lt!2422959 lt!2422847)))))

(assert (=> bm!586409 d!2083689))

(declare-fun d!2083691 () Bool)

(declare-fun e!4020064 () Bool)

(assert (=> d!2083691 (= (matchZipper!2523 ((_ map or) lt!2422855 lt!2423000) (t!379501 s!2326)) e!4020064)))

(declare-fun res!2724181 () Bool)

(assert (=> d!2083691 (=> res!2724181 e!4020064)))

(assert (=> d!2083691 (= res!2724181 (matchZipper!2523 lt!2422855 (t!379501 s!2326)))))

(declare-fun lt!2423166 () Unit!159453)

(assert (=> d!2083691 (= lt!2423166 (choose!49677 lt!2422855 lt!2423000 (t!379501 s!2326)))))

(assert (=> d!2083691 (= (lemmaZipperConcatMatchesSameAsBothZippers!1342 lt!2422855 lt!2423000 (t!379501 s!2326)) lt!2423166)))

(declare-fun b!6648258 () Bool)

(assert (=> b!6648258 (= e!4020064 (matchZipper!2523 lt!2423000 (t!379501 s!2326)))))

(assert (= (and d!2083691 (not res!2724181)) b!6648258))

(declare-fun m!7414218 () Bool)

(assert (=> d!2083691 m!7414218))

(declare-fun m!7414220 () Bool)

(assert (=> d!2083691 m!7414220))

(declare-fun m!7414222 () Bool)

(assert (=> d!2083691 m!7414222))

(assert (=> b!6648258 m!7413468))

(assert (=> b!6647632 d!2083691))

(declare-fun bs!1711447 () Bool)

(declare-fun d!2083693 () Bool)

(assert (= bs!1711447 (and d!2083693 b!6647652)))

(declare-fun lambda!372013 () Int)

(assert (=> bs!1711447 (= lambda!372013 lambda!371944)))

(declare-fun bs!1711448 () Bool)

(assert (= bs!1711448 (and d!2083693 d!2083603)))

(assert (=> bs!1711448 (= lambda!372013 lambda!371981)))

(declare-fun bs!1711449 () Bool)

(assert (= bs!1711449 (and d!2083693 d!2083521)))

(assert (=> bs!1711449 (= lambda!372013 lambda!371957)))

(declare-fun bs!1711450 () Bool)

(assert (= bs!1711450 (and d!2083693 b!6647657)))

(assert (=> bs!1711450 (= lambda!372013 lambda!371946)))

(declare-fun bs!1711451 () Bool)

(assert (= bs!1711451 (and d!2083693 d!2083583)))

(assert (=> bs!1711451 (= lambda!372013 lambda!371974)))

(declare-fun bs!1711452 () Bool)

(assert (= bs!1711452 (and d!2083693 d!2083585)))

(assert (=> bs!1711452 (= lambda!372013 lambda!371979)))

(declare-fun bs!1711453 () Bool)

(assert (= bs!1711453 (and d!2083693 d!2083539)))

(assert (=> bs!1711453 (= lambda!372013 lambda!371966)))

(declare-fun bs!1711454 () Bool)

(assert (= bs!1711454 (and d!2083693 d!2083679)))

(assert (=> bs!1711454 (= lambda!372013 lambda!372012)))

(declare-fun b!6648259 () Bool)

(declare-fun e!4020067 () Bool)

(declare-fun lt!2423167 () Regex!16511)

(assert (=> b!6648259 (= e!4020067 (isConcat!1407 lt!2423167))))

(declare-fun b!6648260 () Bool)

(declare-fun e!4020069 () Bool)

(assert (=> b!6648260 (= e!4020069 e!4020067)))

(declare-fun c!1226914 () Bool)

(assert (=> b!6648260 (= c!1226914 (isEmpty!38017 (tail!12549 (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343))))))))))

(declare-fun b!6648262 () Bool)

(declare-fun e!4020070 () Regex!16511)

(assert (=> b!6648262 (= e!4020070 EmptyExpr!16511)))

(declare-fun b!6648263 () Bool)

(assert (=> b!6648263 (= e!4020069 (isEmptyExpr!1884 lt!2423167))))

(declare-fun b!6648264 () Bool)

(declare-fun e!4020068 () Regex!16511)

(assert (=> b!6648264 (= e!4020068 e!4020070)))

(declare-fun c!1226917 () Bool)

(assert (=> b!6648264 (= c!1226917 ((_ is Cons!65709) (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343)))))))))

(declare-fun b!6648265 () Bool)

(declare-fun e!4020065 () Bool)

(assert (=> b!6648265 (= e!4020065 e!4020069)))

(declare-fun c!1226916 () Bool)

(assert (=> b!6648265 (= c!1226916 (isEmpty!38017 (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343)))))))))

(declare-fun b!6648266 () Bool)

(assert (=> b!6648266 (= e!4020068 (h!72157 (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343)))))))))

(declare-fun b!6648267 () Bool)

(assert (=> b!6648267 (= e!4020070 (Concat!25356 (h!72157 (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343)))))) (generalisedConcat!2108 (t!379502 (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343)))))))))))

(declare-fun b!6648268 () Bool)

(assert (=> b!6648268 (= e!4020067 (= lt!2423167 (head!13464 (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343))))))))))

(assert (=> d!2083693 e!4020065))

(declare-fun res!2724183 () Bool)

(assert (=> d!2083693 (=> (not res!2724183) (not e!4020065))))

(assert (=> d!2083693 (= res!2724183 (validRegex!8247 lt!2423167))))

(assert (=> d!2083693 (= lt!2423167 e!4020068)))

(declare-fun c!1226915 () Bool)

(declare-fun e!4020066 () Bool)

(assert (=> d!2083693 (= c!1226915 e!4020066)))

(declare-fun res!2724182 () Bool)

(assert (=> d!2083693 (=> (not res!2724182) (not e!4020066))))

(assert (=> d!2083693 (= res!2724182 ((_ is Cons!65709) (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343)))))))))

(assert (=> d!2083693 (forall!15706 (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343))))) lambda!372013)))

(assert (=> d!2083693 (= (generalisedConcat!2108 (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343)))))) lt!2423167)))

(declare-fun b!6648261 () Bool)

(assert (=> b!6648261 (= e!4020066 (isEmpty!38017 (t!379502 (ite c!1226754 (t!379502 (exprs!6395 (h!72158 zl!343))) (ite c!1226758 lt!2422970 (t!379502 (exprs!6395 (h!72158 zl!343))))))))))

(assert (= (and d!2083693 res!2724182) b!6648261))

(assert (= (and d!2083693 c!1226915) b!6648266))

(assert (= (and d!2083693 (not c!1226915)) b!6648264))

(assert (= (and b!6648264 c!1226917) b!6648267))

(assert (= (and b!6648264 (not c!1226917)) b!6648262))

(assert (= (and d!2083693 res!2724183) b!6648265))

(assert (= (and b!6648265 c!1226916) b!6648263))

(assert (= (and b!6648265 (not c!1226916)) b!6648260))

(assert (= (and b!6648260 c!1226914) b!6648268))

(assert (= (and b!6648260 (not c!1226914)) b!6648259))

(declare-fun m!7414224 () Bool)

(assert (=> b!6648265 m!7414224))

(declare-fun m!7414226 () Bool)

(assert (=> b!6648267 m!7414226))

(declare-fun m!7414228 () Bool)

(assert (=> b!6648260 m!7414228))

(assert (=> b!6648260 m!7414228))

(declare-fun m!7414230 () Bool)

(assert (=> b!6648260 m!7414230))

(declare-fun m!7414232 () Bool)

(assert (=> b!6648268 m!7414232))

(declare-fun m!7414234 () Bool)

(assert (=> b!6648261 m!7414234))

(declare-fun m!7414236 () Bool)

(assert (=> d!2083693 m!7414236))

(declare-fun m!7414238 () Bool)

(assert (=> d!2083693 m!7414238))

(declare-fun m!7414240 () Bool)

(assert (=> b!6648263 m!7414240))

(declare-fun m!7414242 () Bool)

(assert (=> b!6648259 m!7414242))

(assert (=> bm!586280 d!2083693))

(declare-fun d!2083695 () Bool)

(assert (=> d!2083695 (= (flatMap!2016 (ite c!1226758 lt!2422908 lt!2422923) (ite c!1226758 lambda!371930 lambda!371930)) (choose!49701 (ite c!1226758 lt!2422908 lt!2422923) (ite c!1226758 lambda!371930 lambda!371930)))))

(declare-fun bs!1711455 () Bool)

(assert (= bs!1711455 d!2083695))

(declare-fun m!7414246 () Bool)

(assert (=> bs!1711455 m!7414246))

(assert (=> bm!586473 d!2083695))

(declare-fun d!2083697 () Bool)

(assert (=> d!2083697 (= (Exists!3581 (ite c!1226748 lambda!371931 (ite c!1226755 lambda!371937 (ite c!1226752 lambda!371942 (ite c!1226757 lambda!371949 lambda!371954))))) (choose!49681 (ite c!1226748 lambda!371931 (ite c!1226755 lambda!371937 (ite c!1226752 lambda!371942 (ite c!1226757 lambda!371949 lambda!371954))))))))

(declare-fun bs!1711456 () Bool)

(assert (= bs!1711456 d!2083697))

(declare-fun m!7414252 () Bool)

(assert (=> bs!1711456 m!7414252))

(assert (=> bm!586307 d!2083697))

(declare-fun bm!586550 () Bool)

(declare-fun call!586555 () (InoxSet Context!11790))

(assert (=> bm!586550 (= call!586555 (derivationStepZipperDown!1759 (h!72157 (exprs!6395 (ite c!1226758 lt!2422981 (ite c!1226748 lt!2422947 (ite c!1226755 lt!2422903 lt!2423045))))) (Context!11791 (t!379502 (exprs!6395 (ite c!1226758 lt!2422981 (ite c!1226748 lt!2422947 (ite c!1226755 lt!2422903 lt!2423045)))))) (h!72156 s!2326)))))

(declare-fun b!6648274 () Bool)

(declare-fun e!4020075 () Bool)

(assert (=> b!6648274 (= e!4020075 (nullable!6504 (h!72157 (exprs!6395 (ite c!1226758 lt!2422981 (ite c!1226748 lt!2422947 (ite c!1226755 lt!2422903 lt!2423045)))))))))

(declare-fun b!6648275 () Bool)

(declare-fun e!4020074 () (InoxSet Context!11790))

(declare-fun e!4020076 () (InoxSet Context!11790))

(assert (=> b!6648275 (= e!4020074 e!4020076)))

(declare-fun c!1226921 () Bool)

(assert (=> b!6648275 (= c!1226921 ((_ is Cons!65709) (exprs!6395 (ite c!1226758 lt!2422981 (ite c!1226748 lt!2422947 (ite c!1226755 lt!2422903 lt!2423045))))))))

(declare-fun b!6648276 () Bool)

(assert (=> b!6648276 (= e!4020076 ((as const (Array Context!11790 Bool)) false))))

(declare-fun d!2083701 () Bool)

(declare-fun c!1226920 () Bool)

(assert (=> d!2083701 (= c!1226920 e!4020075)))

(declare-fun res!2724185 () Bool)

(assert (=> d!2083701 (=> (not res!2724185) (not e!4020075))))

(assert (=> d!2083701 (= res!2724185 ((_ is Cons!65709) (exprs!6395 (ite c!1226758 lt!2422981 (ite c!1226748 lt!2422947 (ite c!1226755 lt!2422903 lt!2423045))))))))

(assert (=> d!2083701 (= (derivationStepZipperUp!1685 (ite c!1226758 lt!2422981 (ite c!1226748 lt!2422947 (ite c!1226755 lt!2422903 lt!2423045))) (h!72156 s!2326)) e!4020074)))

(declare-fun b!6648277 () Bool)

(assert (=> b!6648277 (= e!4020076 call!586555)))

(declare-fun b!6648278 () Bool)

(assert (=> b!6648278 (= e!4020074 ((_ map or) call!586555 (derivationStepZipperUp!1685 (Context!11791 (t!379502 (exprs!6395 (ite c!1226758 lt!2422981 (ite c!1226748 lt!2422947 (ite c!1226755 lt!2422903 lt!2423045)))))) (h!72156 s!2326))))))

(assert (= (and d!2083701 res!2724185) b!6648274))

(assert (= (and d!2083701 c!1226920) b!6648278))

(assert (= (and d!2083701 (not c!1226920)) b!6648275))

(assert (= (and b!6648275 c!1226921) b!6648277))

(assert (= (and b!6648275 (not c!1226921)) b!6648276))

(assert (= (or b!6648278 b!6648277) bm!586550))

(declare-fun m!7414256 () Bool)

(assert (=> bm!586550 m!7414256))

(declare-fun m!7414258 () Bool)

(assert (=> b!6648274 m!7414258))

(declare-fun m!7414260 () Bool)

(assert (=> b!6648278 m!7414260))

(assert (=> bm!586456 d!2083701))

(declare-fun d!2083705 () Bool)

(assert (=> d!2083705 (= (Exists!3581 (ite c!1226755 lambda!371936 (ite c!1226752 lambda!371939 lambda!371948))) (choose!49681 (ite c!1226755 lambda!371936 (ite c!1226752 lambda!371939 lambda!371948))))))

(declare-fun bs!1711458 () Bool)

(assert (= bs!1711458 d!2083705))

(declare-fun m!7414262 () Bool)

(assert (=> bs!1711458 m!7414262))

(assert (=> bm!586290 d!2083705))

(declare-fun d!2083707 () Bool)

(assert (=> d!2083707 (= (matchR!8694 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regTwo!33534 r!7292))))) s!2326) (matchRSpec!3612 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regTwo!33534 r!7292))))) s!2326))))

(declare-fun lt!2423168 () Unit!159453)

(assert (=> d!2083707 (= lt!2423168 (choose!49684 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regTwo!33534 r!7292))))) s!2326))))

(assert (=> d!2083707 (validRegex!8247 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regTwo!33534 r!7292))))))))

(assert (=> d!2083707 (= (mainMatchTheorem!3612 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regTwo!33534 r!7292))))) s!2326) lt!2423168)))

(declare-fun bs!1711460 () Bool)

(assert (= bs!1711460 d!2083707))

(declare-fun m!7414266 () Bool)

(assert (=> bs!1711460 m!7414266))

(declare-fun m!7414268 () Bool)

(assert (=> bs!1711460 m!7414268))

(declare-fun m!7414270 () Bool)

(assert (=> bs!1711460 m!7414270))

(declare-fun m!7414272 () Bool)

(assert (=> bs!1711460 m!7414272))

(assert (=> bm!586469 d!2083707))

(declare-fun d!2083711 () Bool)

(declare-fun c!1226922 () Bool)

(assert (=> d!2083711 (= c!1226922 (isEmpty!38018 (t!379501 s!2326)))))

(declare-fun e!4020077 () Bool)

(assert (=> d!2083711 (= (matchZipper!2523 ((_ map or) lt!2422855 lt!2422928) (t!379501 s!2326)) e!4020077)))

(declare-fun b!6648279 () Bool)

(assert (=> b!6648279 (= e!4020077 (nullableZipper!2251 ((_ map or) lt!2422855 lt!2422928)))))

(declare-fun b!6648280 () Bool)

(assert (=> b!6648280 (= e!4020077 (matchZipper!2523 (derivationStepZipper!2477 ((_ map or) lt!2422855 lt!2422928) (head!13463 (t!379501 s!2326))) (tail!12548 (t!379501 s!2326))))))

(assert (= (and d!2083711 c!1226922) b!6648279))

(assert (= (and d!2083711 (not c!1226922)) b!6648280))

(assert (=> d!2083711 m!7413772))

(declare-fun m!7414274 () Bool)

(assert (=> b!6648279 m!7414274))

(assert (=> b!6648280 m!7413776))

(assert (=> b!6648280 m!7413776))

(declare-fun m!7414276 () Bool)

(assert (=> b!6648280 m!7414276))

(assert (=> b!6648280 m!7413780))

(assert (=> b!6648280 m!7414276))

(assert (=> b!6648280 m!7413780))

(declare-fun m!7414278 () Bool)

(assert (=> b!6648280 m!7414278))

(assert (=> b!6647645 d!2083711))

(declare-fun d!2083713 () Bool)

(assert (=> d!2083713 (= (matchR!8694 lt!2422877 s!2326) (matchRSpec!3612 lt!2422877 s!2326))))

(declare-fun lt!2423169 () Unit!159453)

(assert (=> d!2083713 (= lt!2423169 (choose!49684 lt!2422877 s!2326))))

(assert (=> d!2083713 (validRegex!8247 lt!2422877)))

(assert (=> d!2083713 (= (mainMatchTheorem!3612 lt!2422877 s!2326) lt!2423169)))

(declare-fun bs!1711461 () Bool)

(assert (= bs!1711461 d!2083713))

(declare-fun m!7414280 () Bool)

(assert (=> bs!1711461 m!7414280))

(assert (=> bs!1711461 m!7413452))

(declare-fun m!7414282 () Bool)

(assert (=> bs!1711461 m!7414282))

(declare-fun m!7414284 () Bool)

(assert (=> bs!1711461 m!7414284))

(assert (=> b!6647645 d!2083713))

(declare-fun bs!1711465 () Bool)

(declare-fun b!6648289 () Bool)

(assert (= bs!1711465 (and b!6648289 b!6647636)))

(declare-fun lambda!372017 () Int)

(assert (=> bs!1711465 (= (and (= s!2326 Nil!65708) (= (reg!16840 lt!2422877) (reg!16840 (regOne!33534 r!7292))) (= lt!2422877 lt!2422860)) (= lambda!372017 lambda!371954))))

(declare-fun bs!1711466 () Bool)

(assert (= bs!1711466 (and b!6648289 d!2083569)))

(assert (=> bs!1711466 (not (= lambda!372017 lambda!371973))))

(declare-fun bs!1711467 () Bool)

(assert (= bs!1711467 (and b!6648289 b!6647888)))

(assert (=> bs!1711467 (= (and (= (reg!16840 lt!2422877) (reg!16840 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= lt!2422877 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= lambda!372017 lambda!371967))))

(declare-fun bs!1711468 () Bool)

(assert (= bs!1711468 (and b!6648289 b!6647652)))

(assert (=> bs!1711468 (not (= lambda!372017 lambda!371943))))

(declare-fun bs!1711469 () Bool)

(assert (= bs!1711469 (and b!6648289 b!6647657)))

(assert (=> bs!1711469 (not (= lambda!372017 lambda!371949))))

(declare-fun bs!1711470 () Bool)

(assert (= bs!1711470 (and b!6648289 b!6647663)))

(assert (=> bs!1711470 (not (= lambda!372017 lambda!371928))))

(declare-fun bs!1711471 () Bool)

(assert (= bs!1711471 (and b!6648289 b!6647844)))

(assert (=> bs!1711471 (not (= lambda!372017 lambda!371963))))

(declare-fun bs!1711472 () Bool)

(assert (= bs!1711472 (and b!6648289 d!2083631)))

(assert (=> bs!1711472 (= (and (= s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) (= (reg!16840 lt!2422877) (reg!16840 (regOne!33534 r!7292))) (= lt!2422877 (Star!16511 (reg!16840 (regOne!33534 r!7292))))) (= lambda!372017 lambda!372002))))

(assert (=> bs!1711469 (= (and (= s!2326 (_1!36793 lt!2423008)) (= (reg!16840 lt!2422877) (reg!16840 (regOne!33534 r!7292))) (= lt!2422877 lt!2422860)) (= lambda!372017 lambda!371951))))

(assert (=> bs!1711469 (not (= lambda!372017 lambda!371950))))

(assert (=> bs!1711470 (not (= lambda!372017 lambda!371929))))

(assert (=> bs!1711468 (not (= lambda!372017 lambda!371941))))

(declare-fun bs!1711473 () Bool)

(assert (= bs!1711473 (and b!6648289 b!6647624)))

(assert (=> bs!1711473 (not (= lambda!372017 lambda!371935))))

(declare-fun bs!1711474 () Bool)

(assert (= bs!1711474 (and b!6648289 b!6648141)))

(assert (=> bs!1711474 (not (= lambda!372017 lambda!372007))))

(declare-fun bs!1711475 () Bool)

(assert (= bs!1711475 (and b!6648289 b!6647623)))

(assert (=> bs!1711475 (not (= lambda!372017 lambda!371934))))

(declare-fun bs!1711476 () Bool)

(assert (= bs!1711476 (and b!6648289 d!2083635)))

(assert (=> bs!1711476 (not (= lambda!372017 lambda!372003))))

(assert (=> bs!1711473 (not (= lambda!372017 lambda!371937))))

(declare-fun bs!1711477 () Bool)

(assert (= bs!1711477 (and b!6648289 d!2083617)))

(assert (=> bs!1711477 (not (= lambda!372017 lambda!371982))))

(assert (=> bs!1711465 (not (= lambda!372017 lambda!371952))))

(declare-fun bs!1711478 () Bool)

(assert (= bs!1711478 (and b!6648289 b!6647651)))

(assert (=> bs!1711478 (not (= lambda!372017 lambda!371940))))

(assert (=> bs!1711469 (not (= lambda!372017 lambda!371948))))

(declare-fun bs!1711479 () Bool)

(assert (= bs!1711479 (and b!6648289 b!6647885)))

(assert (=> bs!1711479 (not (= lambda!372017 lambda!371968))))

(declare-fun bs!1711480 () Bool)

(assert (= bs!1711480 (and b!6648289 b!6647902)))

(assert (=> bs!1711480 (not (= lambda!372017 lambda!371970))))

(declare-fun bs!1711481 () Bool)

(assert (= bs!1711481 (and b!6648289 d!2083619)))

(assert (=> bs!1711481 (not (= lambda!372017 lambda!371994))))

(assert (=> bs!1711475 (not (= lambda!372017 lambda!371933))))

(assert (=> bs!1711481 (not (= lambda!372017 lambda!371992))))

(assert (=> bs!1711473 (not (= lambda!372017 lambda!371936))))

(assert (=> bs!1711469 (not (= lambda!372017 lambda!371947))))

(assert (=> bs!1711473 (not (= lambda!372017 lambda!371938))))

(declare-fun bs!1711482 () Bool)

(assert (= bs!1711482 (and b!6648289 b!6647847)))

(assert (=> bs!1711482 (= (and (= s!2326 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (reg!16840 lt!2422877) (reg!16840 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= lt!2422877 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= lambda!372017 lambda!371962))))

(declare-fun bs!1711483 () Bool)

(assert (= bs!1711483 (and b!6648289 b!6648144)))

(assert (=> bs!1711483 (= (and (= s!2326 (ite c!1226758 s!2326 (_1!36793 lt!2423008))) (= (reg!16840 lt!2422877) (reg!16840 (ite c!1226758 lt!2422929 lt!2422944))) (= lt!2422877 (ite c!1226758 lt!2422929 lt!2422944))) (= lambda!372017 lambda!372004))))

(assert (=> bs!1711465 (not (= lambda!372017 lambda!371953))))

(assert (=> bs!1711475 (not (= lambda!372017 lambda!371932))))

(assert (=> bs!1711472 (not (= lambda!372017 lambda!372001))))

(assert (=> bs!1711475 (not (= lambda!372017 lambda!371931))))

(declare-fun bs!1711484 () Bool)

(assert (= bs!1711484 (and b!6648289 b!6647905)))

(assert (=> bs!1711484 (= (and (= (reg!16840 lt!2422877) (reg!16840 r!7292)) (= lt!2422877 r!7292)) (= lambda!372017 lambda!371969))))

(assert (=> bs!1711478 (not (= lambda!372017 lambda!371939))))

(assert (=> bs!1711468 (= (and (= s!2326 (_1!36793 lt!2423042)) (= (reg!16840 lt!2422877) (reg!16840 (regOne!33534 r!7292))) (= lt!2422877 lt!2422860)) (= lambda!372017 lambda!371942))))

(assert (=> b!6648289 true))

(assert (=> b!6648289 true))

(declare-fun bs!1711485 () Bool)

(declare-fun b!6648286 () Bool)

(assert (= bs!1711485 (and b!6648286 b!6647636)))

(declare-fun lambda!372018 () Int)

(assert (=> bs!1711485 (not (= lambda!372018 lambda!371954))))

(declare-fun bs!1711486 () Bool)

(assert (= bs!1711486 (and b!6648286 d!2083569)))

(assert (=> bs!1711486 (not (= lambda!372018 lambda!371973))))

(declare-fun bs!1711487 () Bool)

(assert (= bs!1711487 (and b!6648286 b!6647888)))

(assert (=> bs!1711487 (not (= lambda!372018 lambda!371967))))

(declare-fun bs!1711488 () Bool)

(assert (= bs!1711488 (and b!6648286 b!6647652)))

(assert (=> bs!1711488 (= (and (= s!2326 (_1!36793 lt!2423042)) (= (regOne!33534 lt!2422877) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 lt!2422877) lt!2422860)) (= lambda!372018 lambda!371943))))

(declare-fun bs!1711489 () Bool)

(assert (= bs!1711489 (and b!6648286 b!6647657)))

(assert (=> bs!1711489 (not (= lambda!372018 lambda!371949))))

(declare-fun bs!1711490 () Bool)

(assert (= bs!1711490 (and b!6648286 b!6647663)))

(assert (=> bs!1711490 (not (= lambda!372018 lambda!371928))))

(declare-fun bs!1711491 () Bool)

(assert (= bs!1711491 (and b!6648286 b!6647844)))

(assert (=> bs!1711491 (= (and (= s!2326 (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (regOne!33534 lt!2422877) (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= (regTwo!33534 lt!2422877) (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))))) (= lambda!372018 lambda!371963))))

(declare-fun bs!1711492 () Bool)

(assert (= bs!1711492 (and b!6648286 d!2083631)))

(assert (=> bs!1711492 (not (= lambda!372018 lambda!372002))))

(assert (=> bs!1711489 (not (= lambda!372018 lambda!371951))))

(assert (=> bs!1711489 (= (and (= s!2326 (_1!36793 lt!2423008)) (= (regOne!33534 lt!2422877) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 lt!2422877) lt!2422860)) (= lambda!372018 lambda!371950))))

(assert (=> bs!1711490 (= (and (= (regOne!33534 lt!2422877) (regOne!33534 r!7292)) (= (regTwo!33534 lt!2422877) (regTwo!33534 r!7292))) (= lambda!372018 lambda!371929))))

(declare-fun bs!1711493 () Bool)

(assert (= bs!1711493 (and b!6648286 b!6648289)))

(assert (=> bs!1711493 (not (= lambda!372018 lambda!372017))))

(assert (=> bs!1711488 (not (= lambda!372018 lambda!371941))))

(declare-fun bs!1711494 () Bool)

(assert (= bs!1711494 (and b!6648286 b!6647624)))

(assert (=> bs!1711494 (not (= lambda!372018 lambda!371935))))

(declare-fun bs!1711495 () Bool)

(assert (= bs!1711495 (and b!6648286 b!6648141)))

(assert (=> bs!1711495 (= (and (= s!2326 (ite c!1226758 s!2326 (_1!36793 lt!2423008))) (= (regOne!33534 lt!2422877) (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944))) (= (regTwo!33534 lt!2422877) (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)))) (= lambda!372018 lambda!372007))))

(declare-fun bs!1711496 () Bool)

(assert (= bs!1711496 (and b!6648286 b!6647623)))

(assert (=> bs!1711496 (= (and (= (regOne!33534 lt!2422877) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 lt!2422877) lt!2422859)) (= lambda!372018 lambda!371934))))

(declare-fun bs!1711497 () Bool)

(assert (= bs!1711497 (and b!6648286 d!2083635)))

(assert (=> bs!1711497 (not (= lambda!372018 lambda!372003))))

(assert (=> bs!1711494 (not (= lambda!372018 lambda!371937))))

(declare-fun bs!1711498 () Bool)

(assert (= bs!1711498 (and b!6648286 d!2083617)))

(assert (=> bs!1711498 (not (= lambda!372018 lambda!371982))))

(assert (=> bs!1711485 (not (= lambda!372018 lambda!371952))))

(declare-fun bs!1711499 () Bool)

(assert (= bs!1711499 (and b!6648286 b!6647651)))

(assert (=> bs!1711499 (= (and (= (regOne!33534 lt!2422877) lt!2422860) (= (regTwo!33534 lt!2422877) (regTwo!33534 r!7292))) (= lambda!372018 lambda!371940))))

(assert (=> bs!1711489 (= (and (= (regOne!33534 lt!2422877) lt!2422944) (= (regTwo!33534 lt!2422877) (regTwo!33534 r!7292))) (= lambda!372018 lambda!371948))))

(declare-fun bs!1711500 () Bool)

(assert (= bs!1711500 (and b!6648286 b!6647885)))

(assert (=> bs!1711500 (= (and (= (regOne!33534 lt!2422877) (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= (regTwo!33534 lt!2422877) (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))))) (= lambda!372018 lambda!371968))))

(declare-fun bs!1711501 () Bool)

(assert (= bs!1711501 (and b!6648286 b!6647902)))

(assert (=> bs!1711501 (= (and (= (regOne!33534 lt!2422877) (regOne!33534 r!7292)) (= (regTwo!33534 lt!2422877) (regTwo!33534 r!7292))) (= lambda!372018 lambda!371970))))

(declare-fun bs!1711502 () Bool)

(assert (= bs!1711502 (and b!6648286 d!2083619)))

(assert (=> bs!1711502 (= (and (= (regOne!33534 lt!2422877) (regOne!33534 r!7292)) (= (regTwo!33534 lt!2422877) (regTwo!33534 r!7292))) (= lambda!372018 lambda!371994))))

(assert (=> bs!1711496 (not (= lambda!372018 lambda!371933))))

(assert (=> bs!1711502 (not (= lambda!372018 lambda!371992))))

(assert (=> bs!1711494 (= (and (= (regOne!33534 lt!2422877) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 lt!2422877) lt!2422957)) (= lambda!372018 lambda!371936))))

(assert (=> bs!1711489 (not (= lambda!372018 lambda!371947))))

(assert (=> bs!1711494 (= (and (= (regOne!33534 lt!2422877) (regTwo!33534 (regOne!33534 r!7292))) (= (regTwo!33534 lt!2422877) lt!2422956)) (= lambda!372018 lambda!371938))))

(declare-fun bs!1711503 () Bool)

(assert (= bs!1711503 (and b!6648286 b!6647847)))

(assert (=> bs!1711503 (not (= lambda!372018 lambda!371962))))

(declare-fun bs!1711504 () Bool)

(assert (= bs!1711504 (and b!6648286 b!6648144)))

(assert (=> bs!1711504 (not (= lambda!372018 lambda!372004))))

(assert (=> bs!1711485 (= (and (= s!2326 Nil!65708) (= (regOne!33534 lt!2422877) (reg!16840 (regOne!33534 r!7292))) (= (regTwo!33534 lt!2422877) lt!2422860)) (= lambda!372018 lambda!371953))))

(assert (=> bs!1711496 (= (and (= (regOne!33534 lt!2422877) (regOne!33534 (regOne!33534 r!7292))) (= (regTwo!33534 lt!2422877) lt!2423021)) (= lambda!372018 lambda!371932))))

(assert (=> bs!1711492 (not (= lambda!372018 lambda!372001))))

(assert (=> bs!1711496 (not (= lambda!372018 lambda!371931))))

(declare-fun bs!1711505 () Bool)

(assert (= bs!1711505 (and b!6648286 b!6647905)))

(assert (=> bs!1711505 (not (= lambda!372018 lambda!371969))))

(assert (=> bs!1711499 (not (= lambda!372018 lambda!371939))))

(assert (=> bs!1711488 (not (= lambda!372018 lambda!371942))))

(assert (=> b!6648286 true))

(assert (=> b!6648286 true))

(declare-fun b!6648281 () Bool)

(declare-fun c!1226924 () Bool)

(assert (=> b!6648281 (= c!1226924 ((_ is ElementMatch!16511) lt!2422877))))

(declare-fun e!4020082 () Bool)

(declare-fun e!4020079 () Bool)

(assert (=> b!6648281 (= e!4020082 e!4020079)))

(declare-fun bm!586551 () Bool)

(declare-fun call!586557 () Bool)

(assert (=> bm!586551 (= call!586557 (isEmpty!38018 s!2326))))

(declare-fun b!6648282 () Bool)

(declare-fun c!1226926 () Bool)

(assert (=> b!6648282 (= c!1226926 ((_ is Union!16511) lt!2422877))))

(declare-fun e!4020080 () Bool)

(assert (=> b!6648282 (= e!4020079 e!4020080)))

(declare-fun b!6648283 () Bool)

(declare-fun e!4020084 () Bool)

(assert (=> b!6648283 (= e!4020080 e!4020084)))

(declare-fun res!2724187 () Bool)

(assert (=> b!6648283 (= res!2724187 (matchRSpec!3612 (regOne!33535 lt!2422877) s!2326))))

(assert (=> b!6648283 (=> res!2724187 e!4020084)))

(declare-fun b!6648284 () Bool)

(declare-fun e!4020081 () Bool)

(assert (=> b!6648284 (= e!4020081 call!586557)))

(declare-fun b!6648285 () Bool)

(assert (=> b!6648285 (= e!4020084 (matchRSpec!3612 (regTwo!33535 lt!2422877) s!2326))))

(declare-fun e!4020078 () Bool)

(declare-fun call!586556 () Bool)

(assert (=> b!6648286 (= e!4020078 call!586556)))

(declare-fun b!6648287 () Bool)

(assert (=> b!6648287 (= e!4020080 e!4020078)))

(declare-fun c!1226923 () Bool)

(assert (=> b!6648287 (= c!1226923 ((_ is Star!16511) lt!2422877))))

(declare-fun bm!586552 () Bool)

(assert (=> bm!586552 (= call!586556 (Exists!3581 (ite c!1226923 lambda!372017 lambda!372018)))))

(declare-fun b!6648288 () Bool)

(declare-fun res!2724188 () Bool)

(declare-fun e!4020083 () Bool)

(assert (=> b!6648288 (=> res!2724188 e!4020083)))

(assert (=> b!6648288 (= res!2724188 call!586557)))

(assert (=> b!6648288 (= e!4020078 e!4020083)))

(assert (=> b!6648289 (= e!4020083 call!586556)))

(declare-fun d!2083715 () Bool)

(declare-fun c!1226925 () Bool)

(assert (=> d!2083715 (= c!1226925 ((_ is EmptyExpr!16511) lt!2422877))))

(assert (=> d!2083715 (= (matchRSpec!3612 lt!2422877 s!2326) e!4020081)))

(declare-fun b!6648290 () Bool)

(assert (=> b!6648290 (= e!4020081 e!4020082)))

(declare-fun res!2724186 () Bool)

(assert (=> b!6648290 (= res!2724186 (not ((_ is EmptyLang!16511) lt!2422877)))))

(assert (=> b!6648290 (=> (not res!2724186) (not e!4020082))))

(declare-fun b!6648291 () Bool)

(assert (=> b!6648291 (= e!4020079 (= s!2326 (Cons!65708 (c!1226759 lt!2422877) Nil!65708)))))

(assert (= (and d!2083715 c!1226925) b!6648284))

(assert (= (and d!2083715 (not c!1226925)) b!6648290))

(assert (= (and b!6648290 res!2724186) b!6648281))

(assert (= (and b!6648281 c!1226924) b!6648291))

(assert (= (and b!6648281 (not c!1226924)) b!6648282))

(assert (= (and b!6648282 c!1226926) b!6648283))

(assert (= (and b!6648282 (not c!1226926)) b!6648287))

(assert (= (and b!6648283 (not res!2724187)) b!6648285))

(assert (= (and b!6648287 c!1226923) b!6648288))

(assert (= (and b!6648287 (not c!1226923)) b!6648286))

(assert (= (and b!6648288 (not res!2724188)) b!6648289))

(assert (= (or b!6648289 b!6648286) bm!586552))

(assert (= (or b!6648284 b!6648288) bm!586551))

(assert (=> bm!586551 m!7413638))

(declare-fun m!7414288 () Bool)

(assert (=> b!6648283 m!7414288))

(declare-fun m!7414290 () Bool)

(assert (=> b!6648285 m!7414290))

(declare-fun m!7414292 () Bool)

(assert (=> bm!586552 m!7414292))

(assert (=> b!6647645 d!2083715))

(declare-fun d!2083721 () Bool)

(assert (=> d!2083721 (= (matchR!8694 (Concat!25356 (Union!16511 (regOne!33535 (regOne!33534 r!7292)) (regTwo!33535 (regOne!33534 r!7292))) (regTwo!33534 r!7292)) s!2326) (matchR!8694 (Union!16511 (Concat!25356 (regOne!33535 (regOne!33534 r!7292)) (regTwo!33534 r!7292)) (Concat!25356 (regTwo!33535 (regOne!33534 r!7292)) (regTwo!33534 r!7292))) s!2326))))

(declare-fun lt!2423175 () Unit!159453)

(declare-fun choose!49705 (Regex!16511 Regex!16511 Regex!16511 List!65832) Unit!159453)

(assert (=> d!2083721 (= lt!2423175 (choose!49705 (regOne!33535 (regOne!33534 r!7292)) (regTwo!33535 (regOne!33534 r!7292)) (regTwo!33534 r!7292) s!2326))))

(assert (=> d!2083721 (validRegex!8247 (regOne!33535 (regOne!33534 r!7292)))))

(assert (=> d!2083721 (= (lemmaConcatDistributesInUnion!58 (regOne!33535 (regOne!33534 r!7292)) (regTwo!33535 (regOne!33534 r!7292)) (regTwo!33534 r!7292) s!2326) lt!2423175)))

(declare-fun bs!1711506 () Bool)

(assert (= bs!1711506 d!2083721))

(declare-fun m!7414314 () Bool)

(assert (=> bs!1711506 m!7414314))

(declare-fun m!7414316 () Bool)

(assert (=> bs!1711506 m!7414316))

(declare-fun m!7414318 () Bool)

(assert (=> bs!1711506 m!7414318))

(declare-fun m!7414320 () Bool)

(assert (=> bs!1711506 m!7414320))

(assert (=> b!6647645 d!2083721))

(declare-fun d!2083727 () Bool)

(assert (=> d!2083727 (= (nullable!6504 (regTwo!33535 (regOne!33534 r!7292))) (nullableFct!2426 (regTwo!33535 (regOne!33534 r!7292))))))

(declare-fun bs!1711507 () Bool)

(assert (= bs!1711507 d!2083727))

(declare-fun m!7414322 () Bool)

(assert (=> bs!1711507 m!7414322))

(assert (=> b!6647645 d!2083727))

(declare-fun bs!1711509 () Bool)

(declare-fun d!2083729 () Bool)

(assert (= bs!1711509 (and d!2083729 b!6647636)))

(declare-fun lambda!372019 () Int)

(assert (=> bs!1711509 (not (= lambda!372019 lambda!371954))))

(declare-fun bs!1711510 () Bool)

(assert (= bs!1711510 (and d!2083729 d!2083569)))

(assert (=> bs!1711510 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)))) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)))) (= lambda!372019 lambda!371973))))

(declare-fun bs!1711511 () Bool)

(assert (= bs!1711511 (and d!2083729 b!6647888)))

(assert (=> bs!1711511 (not (= lambda!372019 lambda!371967))))

(declare-fun bs!1711512 () Bool)

(assert (= bs!1711512 (and d!2083729 b!6647652)))

(assert (=> bs!1711512 (not (= lambda!372019 lambda!371943))))

(declare-fun bs!1711513 () Bool)

(assert (= bs!1711513 (and d!2083729 b!6647657)))

(assert (=> bs!1711513 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) (_1!36793 lt!2423008)) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422860)) (= lambda!372019 lambda!371949))))

(declare-fun bs!1711514 () Bool)

(assert (= bs!1711514 (and d!2083729 b!6647663)))

(assert (=> bs!1711514 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 r!7292))) (= lambda!372019 lambda!371928))))

(declare-fun bs!1711516 () Bool)

(assert (= bs!1711516 (and d!2083729 b!6647844)))

(assert (=> bs!1711516 (not (= lambda!372019 lambda!371963))))

(declare-fun bs!1711517 () Bool)

(assert (= bs!1711517 (and d!2083729 d!2083631)))

(assert (=> bs!1711517 (not (= lambda!372019 lambda!372002))))

(assert (=> bs!1711513 (not (= lambda!372019 lambda!371951))))

(declare-fun bs!1711519 () Bool)

(assert (= bs!1711519 (and d!2083729 b!6648286)))

(assert (=> bs!1711519 (not (= lambda!372019 lambda!372018))))

(assert (=> bs!1711513 (not (= lambda!372019 lambda!371950))))

(assert (=> bs!1711514 (not (= lambda!372019 lambda!371929))))

(declare-fun bs!1711520 () Bool)

(assert (= bs!1711520 (and d!2083729 b!6648289)))

(assert (=> bs!1711520 (not (= lambda!372019 lambda!372017))))

(assert (=> bs!1711512 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) (_1!36793 lt!2423042)) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422860)) (= lambda!372019 lambda!371941))))

(declare-fun bs!1711521 () Bool)

(assert (= bs!1711521 (and d!2083729 b!6647624)))

(assert (=> bs!1711521 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422957)) (= lambda!372019 lambda!371935))))

(declare-fun bs!1711522 () Bool)

(assert (= bs!1711522 (and d!2083729 b!6648141)))

(assert (=> bs!1711522 (not (= lambda!372019 lambda!372007))))

(declare-fun bs!1711523 () Bool)

(assert (= bs!1711523 (and d!2083729 b!6647623)))

(assert (=> bs!1711523 (not (= lambda!372019 lambda!371934))))

(declare-fun bs!1711524 () Bool)

(assert (= bs!1711524 (and d!2083729 d!2083635)))

(assert (=> bs!1711524 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944)))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))))) (= lambda!372019 lambda!372003))))

(assert (=> bs!1711521 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422956)) (= lambda!372019 lambda!371937))))

(declare-fun bs!1711525 () Bool)

(assert (= bs!1711525 (and d!2083729 d!2083617)))

(assert (=> bs!1711525 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 r!7292))) (= lambda!372019 lambda!371982))))

(assert (=> bs!1711509 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) Nil!65708) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422860)) (= lambda!372019 lambda!371952))))

(declare-fun bs!1711526 () Bool)

(assert (= bs!1711526 (and d!2083729 b!6647651)))

(assert (=> bs!1711526 (not (= lambda!372019 lambda!371940))))

(assert (=> bs!1711513 (not (= lambda!372019 lambda!371948))))

(declare-fun bs!1711527 () Bool)

(assert (= bs!1711527 (and d!2083729 b!6647885)))

(assert (=> bs!1711527 (not (= lambda!372019 lambda!371968))))

(declare-fun bs!1711528 () Bool)

(assert (= bs!1711528 (and d!2083729 b!6647902)))

(assert (=> bs!1711528 (not (= lambda!372019 lambda!371970))))

(declare-fun bs!1711529 () Bool)

(assert (= bs!1711529 (and d!2083729 d!2083619)))

(assert (=> bs!1711529 (not (= lambda!372019 lambda!371994))))

(assert (=> bs!1711523 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422859)) (= lambda!372019 lambda!371933))))

(assert (=> bs!1711529 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 r!7292))) (= lambda!372019 lambda!371992))))

(assert (=> bs!1711521 (not (= lambda!372019 lambda!371936))))

(assert (=> bs!1711513 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) lt!2422944) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 r!7292))) (= lambda!372019 lambda!371947))))

(assert (=> bs!1711521 (not (= lambda!372019 lambda!371938))))

(declare-fun bs!1711530 () Bool)

(assert (= bs!1711530 (and d!2083729 b!6647847)))

(assert (=> bs!1711530 (not (= lambda!372019 lambda!371962))))

(declare-fun bs!1711531 () Bool)

(assert (= bs!1711531 (and d!2083729 b!6648144)))

(assert (=> bs!1711531 (not (= lambda!372019 lambda!372004))))

(assert (=> bs!1711509 (not (= lambda!372019 lambda!371953))))

(assert (=> bs!1711523 (not (= lambda!372019 lambda!371932))))

(assert (=> bs!1711517 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (Star!16511 (reg!16840 (regOne!33534 r!7292))))) (= lambda!372019 lambda!372001))))

(assert (=> bs!1711523 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2423021)) (= lambda!372019 lambda!371931))))

(declare-fun bs!1711532 () Bool)

(assert (= bs!1711532 (and d!2083729 b!6647905)))

(assert (=> bs!1711532 (not (= lambda!372019 lambda!371969))))

(assert (=> bs!1711526 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) lt!2422860) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 r!7292))) (= lambda!372019 lambda!371939))))

(assert (=> bs!1711512 (not (= lambda!372019 lambda!371942))))

(assert (=> d!2083729 true))

(assert (=> d!2083729 true))

(assert (=> d!2083729 true))

(declare-fun lambda!372020 () Int)

(assert (=> bs!1711509 (not (= lambda!372020 lambda!371954))))

(assert (=> bs!1711510 (not (= lambda!372020 lambda!371973))))

(assert (=> bs!1711511 (not (= lambda!372020 lambda!371967))))

(assert (=> bs!1711512 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) (_1!36793 lt!2423042)) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422860)) (= lambda!372020 lambda!371943))))

(assert (=> bs!1711514 (not (= lambda!372020 lambda!371928))))

(assert (=> bs!1711516 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))))) (= lambda!372020 lambda!371963))))

(assert (=> bs!1711517 (not (= lambda!372020 lambda!372002))))

(assert (=> bs!1711513 (not (= lambda!372020 lambda!371951))))

(assert (=> bs!1711519 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 lt!2422877)) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 lt!2422877))) (= lambda!372020 lambda!372018))))

(assert (=> bs!1711513 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) (_1!36793 lt!2423008)) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422860)) (= lambda!372020 lambda!371950))))

(assert (=> bs!1711514 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 r!7292))) (= lambda!372020 lambda!371929))))

(assert (=> bs!1711520 (not (= lambda!372020 lambda!372017))))

(assert (=> bs!1711512 (not (= lambda!372020 lambda!371941))))

(assert (=> bs!1711521 (not (= lambda!372020 lambda!371935))))

(assert (=> bs!1711522 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) (ite c!1226758 s!2326 (_1!36793 lt!2423008))) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)))) (= lambda!372020 lambda!372007))))

(assert (=> bs!1711523 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422859)) (= lambda!372020 lambda!371934))))

(declare-fun bs!1711533 () Bool)

(assert (= bs!1711533 d!2083729))

(assert (=> bs!1711533 (not (= lambda!372020 lambda!372019))))

(assert (=> bs!1711513 (not (= lambda!372020 lambda!371949))))

(assert (=> bs!1711524 (not (= lambda!372020 lambda!372003))))

(assert (=> bs!1711521 (not (= lambda!372020 lambda!371937))))

(assert (=> bs!1711525 (not (= lambda!372020 lambda!371982))))

(assert (=> bs!1711509 (not (= lambda!372020 lambda!371952))))

(assert (=> bs!1711526 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) lt!2422860) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 r!7292))) (= lambda!372020 lambda!371940))))

(assert (=> bs!1711513 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) lt!2422944) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 r!7292))) (= lambda!372020 lambda!371948))))

(assert (=> bs!1711527 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))))) (= lambda!372020 lambda!371968))))

(assert (=> bs!1711528 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 r!7292))) (= lambda!372020 lambda!371970))))

(assert (=> bs!1711529 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (regTwo!33534 r!7292))) (= lambda!372020 lambda!371994))))

(assert (=> bs!1711523 (not (= lambda!372020 lambda!371933))))

(assert (=> bs!1711529 (not (= lambda!372020 lambda!371992))))

(assert (=> bs!1711521 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422957)) (= lambda!372020 lambda!371936))))

(assert (=> bs!1711513 (not (= lambda!372020 lambda!371947))))

(assert (=> bs!1711521 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422956)) (= lambda!372020 lambda!371938))))

(assert (=> bs!1711530 (not (= lambda!372020 lambda!371962))))

(assert (=> bs!1711531 (not (= lambda!372020 lambda!372004))))

(assert (=> bs!1711509 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) Nil!65708) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2422860)) (= lambda!372020 lambda!371953))))

(assert (=> bs!1711523 (= (and (= (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708))) s!2326) (= (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) lt!2423021)) (= lambda!372020 lambda!371932))))

(assert (=> bs!1711517 (not (= lambda!372020 lambda!372001))))

(assert (=> bs!1711523 (not (= lambda!372020 lambda!371931))))

(assert (=> bs!1711532 (not (= lambda!372020 lambda!371969))))

(assert (=> bs!1711526 (not (= lambda!372020 lambda!371939))))

(assert (=> bs!1711512 (not (= lambda!372020 lambda!371942))))

(assert (=> d!2083729 true))

(assert (=> d!2083729 true))

(assert (=> d!2083729 true))

(assert (=> d!2083729 (= (Exists!3581 lambda!372019) (Exists!3581 lambda!372020))))

(declare-fun lt!2423178 () Unit!159453)

(assert (=> d!2083729 (= lt!2423178 (choose!49695 (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)))))))

(assert (=> d!2083729 (validRegex!8247 (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))))))

(assert (=> d!2083729 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2118 (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292)))))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)))) lt!2423178)))

(declare-fun m!7414340 () Bool)

(assert (=> bs!1711533 m!7414340))

(declare-fun m!7414342 () Bool)

(assert (=> bs!1711533 m!7414342))

(declare-fun m!7414344 () Bool)

(assert (=> bs!1711533 m!7414344))

(declare-fun m!7414346 () Bool)

(assert (=> bs!1711533 m!7414346))

(assert (=> bm!586318 d!2083729))

(declare-fun d!2083741 () Bool)

(assert (=> d!2083741 (= (flatMap!2016 (ite c!1226758 lt!2423016 lt!2422945) (ite c!1226758 lambda!371930 lambda!371930)) (choose!49701 (ite c!1226758 lt!2423016 lt!2422945) (ite c!1226758 lambda!371930 lambda!371930)))))

(declare-fun bs!1711534 () Bool)

(assert (= bs!1711534 d!2083741))

(declare-fun m!7414348 () Bool)

(assert (=> bs!1711534 m!7414348))

(assert (=> bm!586334 d!2083741))

(declare-fun bm!586557 () Bool)

(declare-fun call!586562 () (InoxSet Context!11790))

(assert (=> bm!586557 (= call!586562 (derivationStepZipperDown!1759 (h!72157 (exprs!6395 (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422951 lt!2422873)))) (Context!11791 (t!379502 (exprs!6395 (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422951 lt!2422873))))) (h!72156 s!2326)))))

(declare-fun e!4020113 () Bool)

(declare-fun b!6648342 () Bool)

(assert (=> b!6648342 (= e!4020113 (nullable!6504 (h!72157 (exprs!6395 (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422951 lt!2422873))))))))

(declare-fun b!6648343 () Bool)

(declare-fun e!4020112 () (InoxSet Context!11790))

(declare-fun e!4020114 () (InoxSet Context!11790))

(assert (=> b!6648343 (= e!4020112 e!4020114)))

(declare-fun c!1226939 () Bool)

(assert (=> b!6648343 (= c!1226939 ((_ is Cons!65709) (exprs!6395 (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422951 lt!2422873)))))))

(declare-fun b!6648344 () Bool)

(assert (=> b!6648344 (= e!4020114 ((as const (Array Context!11790 Bool)) false))))

(declare-fun d!2083743 () Bool)

(declare-fun c!1226938 () Bool)

(assert (=> d!2083743 (= c!1226938 e!4020113)))

(declare-fun res!2724217 () Bool)

(assert (=> d!2083743 (=> (not res!2724217) (not e!4020113))))

(assert (=> d!2083743 (= res!2724217 ((_ is Cons!65709) (exprs!6395 (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422951 lt!2422873)))))))

(assert (=> d!2083743 (= (derivationStepZipperUp!1685 (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422951 lt!2422873)) (h!72156 s!2326)) e!4020112)))

(declare-fun b!6648345 () Bool)

(assert (=> b!6648345 (= e!4020114 call!586562)))

(declare-fun b!6648346 () Bool)

(assert (=> b!6648346 (= e!4020112 ((_ map or) call!586562 (derivationStepZipperUp!1685 (Context!11791 (t!379502 (exprs!6395 (ite c!1226758 lt!2423043 (ite c!1226748 lt!2422951 lt!2422873))))) (h!72156 s!2326))))))

(assert (= (and d!2083743 res!2724217) b!6648342))

(assert (= (and d!2083743 c!1226938) b!6648346))

(assert (= (and d!2083743 (not c!1226938)) b!6648343))

(assert (= (and b!6648343 c!1226939) b!6648345))

(assert (= (and b!6648343 (not c!1226939)) b!6648344))

(assert (= (or b!6648346 b!6648345) bm!586557))

(declare-fun m!7414350 () Bool)

(assert (=> bm!586557 m!7414350))

(declare-fun m!7414352 () Bool)

(assert (=> b!6648342 m!7414352))

(declare-fun m!7414354 () Bool)

(assert (=> b!6648346 m!7414354))

(assert (=> bm!586417 d!2083743))

(declare-fun d!2083745 () Bool)

(assert (=> d!2083745 (= (flatMap!2016 (ite c!1226748 lt!2423036 (ite c!1226755 lt!2422958 (ite c!1226756 (ite c!1226752 lt!2422975 lt!2422960) lt!2422942))) (ite c!1226748 lambda!371930 (ite c!1226755 lambda!371930 (ite c!1226756 (ite c!1226752 lambda!371930 lambda!371930) lambda!371930)))) (choose!49701 (ite c!1226748 lt!2423036 (ite c!1226755 lt!2422958 (ite c!1226756 (ite c!1226752 lt!2422975 lt!2422960) lt!2422942))) (ite c!1226748 lambda!371930 (ite c!1226755 lambda!371930 (ite c!1226756 (ite c!1226752 lambda!371930 lambda!371930) lambda!371930)))))))

(declare-fun bs!1711535 () Bool)

(assert (= bs!1711535 d!2083745))

(declare-fun m!7414356 () Bool)

(assert (=> bs!1711535 m!7414356))

(assert (=> bm!586434 d!2083745))

(declare-fun d!2083747 () Bool)

(assert (=> d!2083747 (= (Exists!3581 (ite c!1226748 lambda!371934 (ite c!1226755 lambda!371935 (ite c!1226752 lambda!371940 lambda!371947)))) (choose!49681 (ite c!1226748 lambda!371934 (ite c!1226755 lambda!371935 (ite c!1226752 lambda!371940 lambda!371947)))))))

(declare-fun bs!1711536 () Bool)

(assert (= bs!1711536 d!2083747))

(declare-fun m!7414358 () Bool)

(assert (=> bs!1711536 m!7414358))

(assert (=> bm!586286 d!2083747))

(declare-fun bs!1711537 () Bool)

(declare-fun d!2083749 () Bool)

(assert (= bs!1711537 (and d!2083749 d!2083693)))

(declare-fun lambda!372021 () Int)

(assert (=> bs!1711537 (= lambda!372021 lambda!372013)))

(declare-fun bs!1711538 () Bool)

(assert (= bs!1711538 (and d!2083749 b!6647652)))

(assert (=> bs!1711538 (= lambda!372021 lambda!371944)))

(declare-fun bs!1711539 () Bool)

(assert (= bs!1711539 (and d!2083749 d!2083603)))

(assert (=> bs!1711539 (= lambda!372021 lambda!371981)))

(declare-fun bs!1711540 () Bool)

(assert (= bs!1711540 (and d!2083749 d!2083521)))

(assert (=> bs!1711540 (= lambda!372021 lambda!371957)))

(declare-fun bs!1711541 () Bool)

(assert (= bs!1711541 (and d!2083749 b!6647657)))

(assert (=> bs!1711541 (= lambda!372021 lambda!371946)))

(declare-fun bs!1711542 () Bool)

(assert (= bs!1711542 (and d!2083749 d!2083583)))

(assert (=> bs!1711542 (= lambda!372021 lambda!371974)))

(declare-fun bs!1711543 () Bool)

(assert (= bs!1711543 (and d!2083749 d!2083585)))

(assert (=> bs!1711543 (= lambda!372021 lambda!371979)))

(declare-fun bs!1711544 () Bool)

(assert (= bs!1711544 (and d!2083749 d!2083539)))

(assert (=> bs!1711544 (= lambda!372021 lambda!371966)))

(declare-fun bs!1711545 () Bool)

(assert (= bs!1711545 (and d!2083749 d!2083679)))

(assert (=> bs!1711545 (= lambda!372021 lambda!372012)))

(assert (=> d!2083749 (= (inv!84524 lt!2423045) (forall!15706 (exprs!6395 lt!2423045) lambda!372021))))

(declare-fun bs!1711546 () Bool)

(assert (= bs!1711546 d!2083749))

(declare-fun m!7414360 () Bool)

(assert (=> bs!1711546 m!7414360))

(assert (=> b!6647680 d!2083749))

(declare-fun bs!1711547 () Bool)

(declare-fun d!2083751 () Bool)

(assert (= bs!1711547 (and d!2083751 b!6647636)))

(declare-fun lambda!372022 () Int)

(assert (=> bs!1711547 (not (= lambda!372022 lambda!371954))))

(declare-fun bs!1711548 () Bool)

(assert (= bs!1711548 (and d!2083751 d!2083569)))

(assert (=> bs!1711548 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708)))) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (reg!16840 (regOne!33534 r!7292))))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 lt!2422860)))) (= lambda!372022 lambda!371973))))

(declare-fun bs!1711549 () Bool)

(assert (= bs!1711549 (and d!2083751 b!6647888)))

(assert (=> bs!1711549 (not (= lambda!372022 lambda!371967))))

(declare-fun bs!1711550 () Bool)

(assert (= bs!1711550 (and d!2083751 b!6647652)))

(assert (=> bs!1711550 (not (= lambda!372022 lambda!371943))))

(declare-fun bs!1711551 () Bool)

(assert (= bs!1711551 (and d!2083751 b!6647663)))

(assert (=> bs!1711551 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 r!7292))) (= lambda!372022 lambda!371928))))

(declare-fun bs!1711552 () Bool)

(assert (= bs!1711552 (and d!2083751 b!6647844)))

(assert (=> bs!1711552 (not (= lambda!372022 lambda!371963))))

(declare-fun bs!1711553 () Bool)

(assert (= bs!1711553 (and d!2083751 d!2083631)))

(assert (=> bs!1711553 (not (= lambda!372022 lambda!372002))))

(declare-fun bs!1711554 () Bool)

(assert (= bs!1711554 (and d!2083751 b!6647657)))

(assert (=> bs!1711554 (not (= lambda!372022 lambda!371951))))

(assert (=> bs!1711554 (not (= lambda!372022 lambda!371950))))

(assert (=> bs!1711551 (not (= lambda!372022 lambda!371929))))

(declare-fun bs!1711555 () Bool)

(assert (= bs!1711555 (and d!2083751 b!6648289)))

(assert (=> bs!1711555 (not (= lambda!372022 lambda!372017))))

(assert (=> bs!1711550 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) (_1!36793 lt!2423042)) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422860)) (= lambda!372022 lambda!371941))))

(declare-fun bs!1711556 () Bool)

(assert (= bs!1711556 (and d!2083751 b!6647624)))

(assert (=> bs!1711556 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422957)) (= lambda!372022 lambda!371935))))

(declare-fun bs!1711557 () Bool)

(assert (= bs!1711557 (and d!2083751 b!6648141)))

(assert (=> bs!1711557 (not (= lambda!372022 lambda!372007))))

(declare-fun bs!1711558 () Bool)

(assert (= bs!1711558 (and d!2083751 b!6647623)))

(assert (=> bs!1711558 (not (= lambda!372022 lambda!371934))))

(declare-fun bs!1711559 () Bool)

(assert (= bs!1711559 (and d!2083751 d!2083729)))

(assert (=> bs!1711559 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)))) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292))))))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))))) (= lambda!372022 lambda!372019))))

(assert (=> bs!1711554 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) (_1!36793 lt!2423008)) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422860)) (= lambda!372022 lambda!371949))))

(declare-fun bs!1711560 () Bool)

(assert (= bs!1711560 (and d!2083751 d!2083635)))

(assert (=> bs!1711560 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 lt!2422944)))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (regTwo!33534 r!7292))))) (= lambda!372022 lambda!372003))))

(assert (=> bs!1711556 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422956)) (= lambda!372022 lambda!371937))))

(declare-fun bs!1711561 () Bool)

(assert (= bs!1711561 (and d!2083751 d!2083617)))

(assert (=> bs!1711561 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 r!7292))) (= lambda!372022 lambda!371982))))

(assert (=> bs!1711547 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) Nil!65708) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422860)) (= lambda!372022 lambda!371952))))

(declare-fun bs!1711562 () Bool)

(assert (= bs!1711562 (and d!2083751 b!6647651)))

(assert (=> bs!1711562 (not (= lambda!372022 lambda!371940))))

(assert (=> bs!1711554 (not (= lambda!372022 lambda!371948))))

(declare-fun bs!1711563 () Bool)

(assert (= bs!1711563 (and d!2083751 b!6647885)))

(assert (=> bs!1711563 (not (= lambda!372022 lambda!371968))))

(declare-fun bs!1711564 () Bool)

(assert (= bs!1711564 (and d!2083751 b!6647902)))

(assert (=> bs!1711564 (not (= lambda!372022 lambda!371970))))

(declare-fun bs!1711565 () Bool)

(assert (= bs!1711565 (and d!2083751 d!2083619)))

(assert (=> bs!1711565 (not (= lambda!372022 lambda!371994))))

(assert (=> bs!1711558 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422859)) (= lambda!372022 lambda!371933))))

(assert (=> bs!1711565 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 r!7292))) (= lambda!372022 lambda!371992))))

(assert (=> bs!1711556 (not (= lambda!372022 lambda!371936))))

(assert (=> bs!1711554 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) lt!2422944) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 r!7292))) (= lambda!372022 lambda!371947))))

(assert (=> bs!1711556 (not (= lambda!372022 lambda!371938))))

(declare-fun bs!1711566 () Bool)

(assert (= bs!1711566 (and d!2083751 b!6648286)))

(assert (=> bs!1711566 (not (= lambda!372022 lambda!372018))))

(assert (=> bs!1711559 (not (= lambda!372022 lambda!372020))))

(declare-fun bs!1711567 () Bool)

(assert (= bs!1711567 (and d!2083751 b!6647847)))

(assert (=> bs!1711567 (not (= lambda!372022 lambda!371962))))

(declare-fun bs!1711568 () Bool)

(assert (= bs!1711568 (and d!2083751 b!6648144)))

(assert (=> bs!1711568 (not (= lambda!372022 lambda!372004))))

(assert (=> bs!1711547 (not (= lambda!372022 lambda!371953))))

(assert (=> bs!1711558 (not (= lambda!372022 lambda!371932))))

(assert (=> bs!1711553 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 (_1!36793 lt!2423008) Nil!65708))) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (Star!16511 (reg!16840 (regOne!33534 r!7292))))) (= lambda!372022 lambda!372001))))

(assert (=> bs!1711558 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2423021)) (= lambda!372022 lambda!371931))))

(declare-fun bs!1711569 () Bool)

(assert (= bs!1711569 (and d!2083751 b!6647905)))

(assert (=> bs!1711569 (not (= lambda!372022 lambda!371969))))

(assert (=> bs!1711562 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) lt!2422860) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 r!7292))) (= lambda!372022 lambda!371939))))

(assert (=> bs!1711550 (not (= lambda!372022 lambda!371942))))

(assert (=> d!2083751 true))

(assert (=> d!2083751 true))

(assert (=> d!2083751 true))

(declare-fun lambda!372023 () Int)

(assert (=> bs!1711547 (not (= lambda!372023 lambda!371954))))

(assert (=> bs!1711548 (not (= lambda!372023 lambda!371973))))

(assert (=> bs!1711549 (not (= lambda!372023 lambda!371967))))

(assert (=> bs!1711550 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) (_1!36793 lt!2423042)) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422860)) (= lambda!372023 lambda!371943))))

(declare-fun bs!1711570 () Bool)

(assert (= bs!1711570 d!2083751))

(assert (=> bs!1711570 (not (= lambda!372023 lambda!372022))))

(assert (=> bs!1711551 (not (= lambda!372023 lambda!371928))))

(assert (=> bs!1711552 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) (ite (or c!1226758 c!1226748 c!1226755) s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)) s!2326))) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292))))))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 (ite c!1226758 lt!2422952 (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422880 (ite c!1226756 (ite c!1226752 lt!2422860 (ite c!1226757 lt!2422853 lt!2422860)) (regTwo!33534 r!7292)))))))) (= lambda!372023 lambda!371963))))

(assert (=> bs!1711553 (not (= lambda!372023 lambda!372002))))

(assert (=> bs!1711554 (not (= lambda!372023 lambda!371951))))

(assert (=> bs!1711554 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) (_1!36793 lt!2423008)) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422860)) (= lambda!372023 lambda!371950))))

(assert (=> bs!1711551 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 r!7292))) (= lambda!372023 lambda!371929))))

(assert (=> bs!1711555 (not (= lambda!372023 lambda!372017))))

(assert (=> bs!1711550 (not (= lambda!372023 lambda!371941))))

(assert (=> bs!1711556 (not (= lambda!372023 lambda!371935))))

(assert (=> bs!1711557 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) (ite c!1226758 s!2326 (_1!36793 lt!2423008))) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 (ite c!1226758 lt!2422929 lt!2422944))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 (ite c!1226758 lt!2422929 lt!2422944)))) (= lambda!372023 lambda!372007))))

(assert (=> bs!1711558 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422859)) (= lambda!372023 lambda!371934))))

(assert (=> bs!1711559 (not (= lambda!372023 lambda!372019))))

(assert (=> bs!1711554 (not (= lambda!372023 lambda!371949))))

(assert (=> bs!1711560 (not (= lambda!372023 lambda!372003))))

(assert (=> bs!1711556 (not (= lambda!372023 lambda!371937))))

(assert (=> bs!1711561 (not (= lambda!372023 lambda!371982))))

(assert (=> bs!1711547 (not (= lambda!372023 lambda!371952))))

(assert (=> bs!1711562 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) lt!2422860) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 r!7292))) (= lambda!372023 lambda!371940))))

(assert (=> bs!1711554 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) lt!2422944) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 r!7292))) (= lambda!372023 lambda!371948))))

(assert (=> bs!1711563 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292))))))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 (ite c!1226758 lt!2422888 (ite c!1226748 lt!2422925 (ite c!1226755 lt!2422957 (ite c!1226756 lt!2423004 (regOne!33534 r!7292)))))))) (= lambda!372023 lambda!371968))))

(assert (=> bs!1711564 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 r!7292))) (= lambda!372023 lambda!371970))))

(assert (=> bs!1711565 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 r!7292)) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 r!7292))) (= lambda!372023 lambda!371994))))

(assert (=> bs!1711558 (not (= lambda!372023 lambda!371933))))

(assert (=> bs!1711565 (not (= lambda!372023 lambda!371992))))

(assert (=> bs!1711556 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422957)) (= lambda!372023 lambda!371936))))

(assert (=> bs!1711554 (not (= lambda!372023 lambda!371947))))

(assert (=> bs!1711556 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regTwo!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422956)) (= lambda!372023 lambda!371938))))

(assert (=> bs!1711566 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 lt!2422877)) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (regTwo!33534 lt!2422877))) (= lambda!372023 lambda!372018))))

(assert (=> bs!1711559 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) (ite (or c!1226748 c!1226755) s!2326 (ite c!1226752 (_1!36793 lt!2423042) (ite c!1226757 s!2326 Nil!65708)))) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (ite c!1226748 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226755 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422944 (reg!16840 (regOne!33534 r!7292))))))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (ite c!1226748 lt!2422859 (ite c!1226755 lt!2422957 (ite c!1226752 lt!2422860 (ite c!1226757 (regTwo!33534 r!7292) lt!2422860)))))) (= lambda!372023 lambda!372020))))

(assert (=> bs!1711567 (not (= lambda!372023 lambda!371962))))

(assert (=> bs!1711568 (not (= lambda!372023 lambda!372004))))

(assert (=> bs!1711547 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) Nil!65708) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (reg!16840 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2422860)) (= lambda!372023 lambda!371953))))

(assert (=> bs!1711558 (= (and (= (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008)) s!2326) (= (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (regOne!33534 (regOne!33534 r!7292))) (= (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) lt!2423021)) (= lambda!372023 lambda!371932))))

(assert (=> bs!1711553 (not (= lambda!372023 lambda!372001))))

(assert (=> bs!1711558 (not (= lambda!372023 lambda!371931))))

(assert (=> bs!1711569 (not (= lambda!372023 lambda!371969))))

(assert (=> bs!1711562 (not (= lambda!372023 lambda!371939))))

(assert (=> bs!1711550 (not (= lambda!372023 lambda!371942))))

(assert (=> d!2083751 true))

(assert (=> d!2083751 true))

(assert (=> d!2083751 true))

(assert (=> d!2083751 (= (Exists!3581 lambda!372022) (Exists!3581 lambda!372023))))

(declare-fun lt!2423185 () Unit!159453)

(assert (=> d!2083751 (= lt!2423185 (choose!49695 (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008))))))

(assert (=> d!2083751 (validRegex!8247 (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))))))

(assert (=> d!2083751 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2118 (ite c!1226748 (regOne!33534 (regOne!33534 r!7292)) (ite c!1226755 (regTwo!33534 (regOne!33534 r!7292)) (ite c!1226752 lt!2422860 (reg!16840 (regOne!33534 r!7292))))) (ite c!1226748 lt!2423021 (ite c!1226755 lt!2422956 (ite c!1226752 (regTwo!33534 r!7292) lt!2422860))) (ite (or c!1226748 c!1226755 c!1226752) s!2326 (_1!36793 lt!2423008))) lt!2423185)))

(declare-fun m!7414402 () Bool)

(assert (=> bs!1711570 m!7414402))

(declare-fun m!7414404 () Bool)

(assert (=> bs!1711570 m!7414404))

(declare-fun m!7414406 () Bool)

(assert (=> bs!1711570 m!7414406))

(declare-fun m!7414408 () Bool)

(assert (=> bs!1711570 m!7414408))

(assert (=> bm!586349 d!2083751))

(declare-fun c!1226948 () Bool)

(declare-fun d!2083763 () Bool)

(assert (=> d!2083763 (= c!1226948 (isEmpty!38018 (ite c!1226758 (t!379501 s!2326) (ite c!1226748 s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2422864) (ite c!1226757 lt!2422851 s!2326)) (t!379501 s!2326))))))))

(declare-fun e!4020133 () Bool)

(assert (=> d!2083763 (= (matchZipper!2523 (ite c!1226758 lt!2423000 (ite c!1226748 lt!2422982 (ite c!1226756 (ite c!1226752 lt!2422849 (ite c!1226757 (store ((as const (Array Context!11790 Bool)) false) (Context!11791 lt!2422898) true) lt!2422960)) lt!2423000))) (ite c!1226758 (t!379501 s!2326) (ite c!1226748 s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2422864) (ite c!1226757 lt!2422851 s!2326)) (t!379501 s!2326))))) e!4020133)))

(declare-fun b!6648379 () Bool)

(assert (=> b!6648379 (= e!4020133 (nullableZipper!2251 (ite c!1226758 lt!2423000 (ite c!1226748 lt!2422982 (ite c!1226756 (ite c!1226752 lt!2422849 (ite c!1226757 (store ((as const (Array Context!11790 Bool)) false) (Context!11791 lt!2422898) true) lt!2422960)) lt!2423000)))))))

(declare-fun b!6648380 () Bool)

(assert (=> b!6648380 (= e!4020133 (matchZipper!2523 (derivationStepZipper!2477 (ite c!1226758 lt!2423000 (ite c!1226748 lt!2422982 (ite c!1226756 (ite c!1226752 lt!2422849 (ite c!1226757 (store ((as const (Array Context!11790 Bool)) false) (Context!11791 lt!2422898) true) lt!2422960)) lt!2423000))) (head!13463 (ite c!1226758 (t!379501 s!2326) (ite c!1226748 s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2422864) (ite c!1226757 lt!2422851 s!2326)) (t!379501 s!2326)))))) (tail!12548 (ite c!1226758 (t!379501 s!2326) (ite c!1226748 s!2326 (ite c!1226756 (ite c!1226752 (_1!36793 lt!2422864) (ite c!1226757 lt!2422851 s!2326)) (t!379501 s!2326)))))))))

(assert (= (and d!2083763 c!1226948) b!6648379))

(assert (= (and d!2083763 (not c!1226948)) b!6648380))

(declare-fun m!7414410 () Bool)

(assert (=> d!2083763 m!7414410))

(declare-fun m!7414412 () Bool)

(assert (=> b!6648379 m!7414412))

(declare-fun m!7414414 () Bool)

(assert (=> b!6648380 m!7414414))

(assert (=> b!6648380 m!7414414))

(declare-fun m!7414416 () Bool)

(assert (=> b!6648380 m!7414416))

(declare-fun m!7414418 () Bool)

(assert (=> b!6648380 m!7414418))

(assert (=> b!6648380 m!7414416))

(assert (=> b!6648380 m!7414418))

(declare-fun m!7414420 () Bool)

(assert (=> b!6648380 m!7414420))

(assert (=> bm!586315 d!2083763))

(declare-fun d!2083765 () Bool)

(assert (=> d!2083765 (= (Exists!3581 (ite c!1226748 lambda!371933 (ite c!1226755 lambda!371938 (ite c!1226752 lambda!371939 lambda!371949)))) (choose!49681 (ite c!1226748 lambda!371933 (ite c!1226755 lambda!371938 (ite c!1226752 lambda!371939 lambda!371949)))))))

(declare-fun bs!1711576 () Bool)

(assert (= bs!1711576 d!2083765))

(declare-fun m!7414428 () Bool)

(assert (=> bs!1711576 m!7414428))

(assert (=> bm!586413 d!2083765))

(declare-fun e!4020138 () Bool)

(declare-fun d!2083769 () Bool)

(assert (=> d!2083769 (= (matchZipper!2523 ((_ map or) (ite c!1226758 lt!2422855 lt!2422934) (ite c!1226758 lt!2422928 lt!2422933)) (t!379501 s!2326)) e!4020138)))

(declare-fun res!2724236 () Bool)

(assert (=> d!2083769 (=> res!2724236 e!4020138)))

(assert (=> d!2083769 (= res!2724236 (matchZipper!2523 (ite c!1226758 lt!2422855 lt!2422934) (t!379501 s!2326)))))

(declare-fun lt!2423197 () Unit!159453)

(assert (=> d!2083769 (= lt!2423197 (choose!49677 (ite c!1226758 lt!2422855 lt!2422934) (ite c!1226758 lt!2422928 lt!2422933) (t!379501 s!2326)))))

(assert (=> d!2083769 (= (lemmaZipperConcatMatchesSameAsBothZippers!1342 (ite c!1226758 lt!2422855 lt!2422934) (ite c!1226758 lt!2422928 lt!2422933) (t!379501 s!2326)) lt!2423197)))

(declare-fun b!6648381 () Bool)

(assert (=> b!6648381 (= e!4020138 (matchZipper!2523 (ite c!1226758 lt!2422928 lt!2422933) (t!379501 s!2326)))))

(assert (= (and d!2083769 (not res!2724236)) b!6648381))

(declare-fun m!7414432 () Bool)

(assert (=> d!2083769 m!7414432))

(declare-fun m!7414434 () Bool)

(assert (=> d!2083769 m!7414434))

(declare-fun m!7414436 () Bool)

(assert (=> d!2083769 m!7414436))

(declare-fun m!7414438 () Bool)

(assert (=> b!6648381 m!7414438))

(assert (=> bm!586479 d!2083769))

(declare-fun d!2083771 () Bool)

(assert (=> d!2083771 (= (matchR!8694 (ite c!1226758 lt!2422929 (ite c!1226748 lt!2422925 (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422950 lt!2422905)))) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226752 (_1!36793 lt!2422864) (ite c!1226757 (_2!36793 lt!2422848) s!2326)))) (matchZipper!2523 (ite c!1226758 lt!2423016 (ite c!1226748 lt!2422982 (ite c!1226752 lt!2422849 (ite c!1226757 lt!2422923 lt!2422960)))) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226752 (_1!36793 lt!2422864) (ite c!1226757 (_2!36793 lt!2422848) s!2326)))))))

(declare-fun lt!2423198 () Unit!159453)

(assert (=> d!2083771 (= lt!2423198 (choose!49692 (ite c!1226758 lt!2423016 (ite c!1226748 lt!2422982 (ite c!1226752 lt!2422849 (ite c!1226757 lt!2422923 lt!2422960)))) (ite c!1226758 (Cons!65710 lt!2423043 Nil!65710) (ite c!1226748 (Cons!65710 lt!2422951 Nil!65710) (ite c!1226752 (Cons!65710 lt!2423023 Nil!65710) (ite c!1226757 (Cons!65710 lt!2422873 Nil!65710) (Cons!65710 lt!2423045 Nil!65710))))) (ite c!1226758 lt!2422929 (ite c!1226748 lt!2422925 (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422950 lt!2422905)))) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226752 (_1!36793 lt!2422864) (ite c!1226757 (_2!36793 lt!2422848) s!2326)))))))

(assert (=> d!2083771 (validRegex!8247 (ite c!1226758 lt!2422929 (ite c!1226748 lt!2422925 (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422950 lt!2422905)))))))

(assert (=> d!2083771 (= (theoremZipperRegexEquiv!907 (ite c!1226758 lt!2423016 (ite c!1226748 lt!2422982 (ite c!1226752 lt!2422849 (ite c!1226757 lt!2422923 lt!2422960)))) (ite c!1226758 (Cons!65710 lt!2423043 Nil!65710) (ite c!1226748 (Cons!65710 lt!2422951 Nil!65710) (ite c!1226752 (Cons!65710 lt!2423023 Nil!65710) (ite c!1226757 (Cons!65710 lt!2422873 Nil!65710) (Cons!65710 lt!2423045 Nil!65710))))) (ite c!1226758 lt!2422929 (ite c!1226748 lt!2422925 (ite c!1226752 (reg!16840 (regOne!33534 r!7292)) (ite c!1226757 lt!2422950 lt!2422905)))) (ite (or c!1226758 c!1226748) s!2326 (ite c!1226752 (_1!36793 lt!2422864) (ite c!1226757 (_2!36793 lt!2422848) s!2326)))) lt!2423198)))

(declare-fun bs!1711577 () Bool)

(assert (= bs!1711577 d!2083771))

(declare-fun m!7414440 () Bool)

(assert (=> bs!1711577 m!7414440))

(declare-fun m!7414442 () Bool)

(assert (=> bs!1711577 m!7414442))

(declare-fun m!7414444 () Bool)

(assert (=> bs!1711577 m!7414444))

(declare-fun m!7414446 () Bool)

(assert (=> bs!1711577 m!7414446))

(assert (=> bm!586298 d!2083771))

(declare-fun b!6648393 () Bool)

(declare-fun e!4020142 () List!65832)

(assert (=> b!6648393 (= e!4020142 (ite c!1226752 lt!2422854 (_2!36793 lt!2422896)))))

(declare-fun b!6648394 () Bool)

(assert (=> b!6648394 (= e!4020142 (Cons!65708 (h!72156 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896))) (++!14664 (t!379501 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896))) (ite c!1226752 lt!2422854 (_2!36793 lt!2422896)))))))

(declare-fun b!6648395 () Bool)

(declare-fun res!2724238 () Bool)

(declare-fun e!4020143 () Bool)

(assert (=> b!6648395 (=> (not res!2724238) (not e!4020143))))

(declare-fun lt!2423199 () List!65832)

(assert (=> b!6648395 (= res!2724238 (= (size!40565 lt!2423199) (+ (size!40565 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896))) (size!40565 (ite c!1226752 lt!2422854 (_2!36793 lt!2422896))))))))

(declare-fun b!6648396 () Bool)

(assert (=> b!6648396 (= e!4020143 (or (not (= (ite c!1226752 lt!2422854 (_2!36793 lt!2422896)) Nil!65708)) (= lt!2423199 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)))))))

(declare-fun d!2083773 () Bool)

(assert (=> d!2083773 e!4020143))

(declare-fun res!2724239 () Bool)

(assert (=> d!2083773 (=> (not res!2724239) (not e!4020143))))

(assert (=> d!2083773 (= res!2724239 (= (content!12703 lt!2423199) ((_ map or) (content!12703 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896))) (content!12703 (ite c!1226752 lt!2422854 (_2!36793 lt!2422896))))))))

(assert (=> d!2083773 (= lt!2423199 e!4020142)))

(declare-fun c!1226953 () Bool)

(assert (=> d!2083773 (= c!1226953 ((_ is Nil!65708) (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896))))))

(assert (=> d!2083773 (= (++!14664 (ite c!1226752 (_1!36793 lt!2422864) (_1!36793 lt!2422896)) (ite c!1226752 lt!2422854 (_2!36793 lt!2422896))) lt!2423199)))

(assert (= (and d!2083773 c!1226953) b!6648393))

(assert (= (and d!2083773 (not c!1226953)) b!6648394))

(assert (= (and d!2083773 res!2724239) b!6648395))

(assert (= (and b!6648395 res!2724238) b!6648396))

(declare-fun m!7414448 () Bool)

(assert (=> b!6648394 m!7414448))

(declare-fun m!7414450 () Bool)

(assert (=> b!6648395 m!7414450))

(declare-fun m!7414452 () Bool)

(assert (=> b!6648395 m!7414452))

(declare-fun m!7414454 () Bool)

(assert (=> b!6648395 m!7414454))

(declare-fun m!7414456 () Bool)

(assert (=> d!2083773 m!7414456))

(declare-fun m!7414458 () Bool)

(assert (=> d!2083773 m!7414458))

(declare-fun m!7414460 () Bool)

(assert (=> d!2083773 m!7414460))

(assert (=> bm!586463 d!2083773))

(declare-fun d!2083775 () Bool)

(assert (=> d!2083775 (= (isEmpty!38018 (_1!36793 lt!2423042)) ((_ is Nil!65708) (_1!36793 lt!2423042)))))

(assert (=> b!6647651 d!2083775))

(declare-fun bm!586560 () Bool)

(declare-fun call!586565 () (InoxSet Context!11790))

(assert (=> bm!586560 (= call!586565 (derivationStepZipperDown!1759 (h!72157 (exprs!6395 lt!2423023)) (Context!11791 (t!379502 (exprs!6395 lt!2423023))) (h!72156 s!2326)))))

(declare-fun b!6648397 () Bool)

(declare-fun e!4020145 () Bool)

(assert (=> b!6648397 (= e!4020145 (nullable!6504 (h!72157 (exprs!6395 lt!2423023))))))

(declare-fun b!6648398 () Bool)

(declare-fun e!4020144 () (InoxSet Context!11790))

(declare-fun e!4020146 () (InoxSet Context!11790))

(assert (=> b!6648398 (= e!4020144 e!4020146)))

(declare-fun c!1226955 () Bool)

(assert (=> b!6648398 (= c!1226955 ((_ is Cons!65709) (exprs!6395 lt!2423023)))))

(declare-fun b!6648399 () Bool)

(assert (=> b!6648399 (= e!4020146 ((as const (Array Context!11790 Bool)) false))))

(declare-fun d!2083777 () Bool)

(declare-fun c!1226954 () Bool)

(assert (=> d!2083777 (= c!1226954 e!4020145)))

(declare-fun res!2724240 () Bool)

(assert (=> d!2083777 (=> (not res!2724240) (not e!4020145))))

(assert (=> d!2083777 (= res!2724240 ((_ is Cons!65709) (exprs!6395 lt!2423023)))))

(assert (=> d!2083777 (= (derivationStepZipperUp!1685 lt!2423023 (h!72156 s!2326)) e!4020144)))

(declare-fun b!6648400 () Bool)

(assert (=> b!6648400 (= e!4020146 call!586565)))

(declare-fun b!6648401 () Bool)

(assert (=> b!6648401 (= e!4020144 ((_ map or) call!586565 (derivationStepZipperUp!1685 (Context!11791 (t!379502 (exprs!6395 lt!2423023))) (h!72156 s!2326))))))

(assert (= (and d!2083777 res!2724240) b!6648397))

(assert (= (and d!2083777 c!1226954) b!6648401))

(assert (= (and d!2083777 (not c!1226954)) b!6648398))

(assert (= (and b!6648398 c!1226955) b!6648400))

(assert (= (and b!6648398 (not c!1226955)) b!6648399))

(assert (= (or b!6648401 b!6648400) bm!586560))

(declare-fun m!7414462 () Bool)

(assert (=> bm!586560 m!7414462))

(declare-fun m!7414464 () Bool)

(assert (=> b!6648397 m!7414464))

(declare-fun m!7414466 () Bool)

(assert (=> b!6648401 m!7414466))

(assert (=> b!6647665 d!2083777))

(declare-fun d!2083779 () Bool)

(assert (=> d!2083779 (= (Exists!3581 (ite c!1226748 lambda!371931 (ite c!1226755 lambda!371937 (ite c!1226752 lambda!371941 (ite c!1226757 lambda!371949 lambda!371952))))) (choose!49681 (ite c!1226748 lambda!371931 (ite c!1226755 lambda!371937 (ite c!1226752 lambda!371941 (ite c!1226757 lambda!371949 lambda!371952))))))))

(declare-fun bs!1711589 () Bool)

(assert (= bs!1711589 d!2083779))

(declare-fun m!7414468 () Bool)

(assert (=> bs!1711589 m!7414468))

(assert (=> bm!586474 d!2083779))

(declare-fun d!2083781 () Bool)

(assert (=> d!2083781 (= (isDefined!13105 (ite c!1226757 lt!2422889 call!586436)) (not (isEmpty!38019 (ite c!1226757 lt!2422889 call!586436))))))

(declare-fun bs!1711590 () Bool)

(assert (= bs!1711590 d!2083781))

(declare-fun m!7414470 () Bool)

(assert (=> bs!1711590 m!7414470))

(assert (=> bm!586369 d!2083781))

(declare-fun bs!1711607 () Bool)

(declare-fun d!2083783 () Bool)

(assert (= bs!1711607 (and d!2083783 d!2083693)))

(declare-fun lambda!372029 () Int)

(assert (=> bs!1711607 (= lambda!372029 lambda!372013)))

(declare-fun bs!1711608 () Bool)

(assert (= bs!1711608 (and d!2083783 b!6647652)))

(assert (=> bs!1711608 (= lambda!372029 lambda!371944)))

(declare-fun bs!1711609 () Bool)

(assert (= bs!1711609 (and d!2083783 d!2083603)))

(assert (=> bs!1711609 (= lambda!372029 lambda!371981)))

(declare-fun bs!1711610 () Bool)

(assert (= bs!1711610 (and d!2083783 d!2083521)))

(assert (=> bs!1711610 (= lambda!372029 lambda!371957)))

(declare-fun bs!1711611 () Bool)

(assert (= bs!1711611 (and d!2083783 b!6647657)))

(assert (=> bs!1711611 (= lambda!372029 lambda!371946)))

(declare-fun bs!1711612 () Bool)

(assert (= bs!1711612 (and d!2083783 d!2083749)))

(assert (=> bs!1711612 (= lambda!372029 lambda!372021)))

(declare-fun bs!1711613 () Bool)

(assert (= bs!1711613 (and d!2083783 d!2083583)))

(assert (=> bs!1711613 (= lambda!372029 lambda!371974)))

(declare-fun bs!1711614 () Bool)

(assert (= bs!1711614 (and d!2083783 d!2083585)))

(assert (=> bs!1711614 (= lambda!372029 lambda!371979)))

(declare-fun bs!1711615 () Bool)

(assert (= bs!1711615 (and d!2083783 d!2083539)))

(assert (=> bs!1711615 (= lambda!372029 lambda!371966)))

(declare-fun bs!1711616 () Bool)

(assert (= bs!1711616 (and d!2083783 d!2083679)))

(assert (=> bs!1711616 (= lambda!372029 lambda!372012)))

(declare-fun e!4020174 () Bool)

(assert (=> d!2083783 e!4020174))

(declare-fun res!2724259 () Bool)

(assert (=> d!2083783 (=> (not res!2724259) (not e!4020174))))

(declare-fun lt!2423206 () Regex!16511)

(assert (=> d!2083783 (= res!2724259 (validRegex!8247 lt!2423206))))

(declare-fun e!4020168 () Regex!16511)

(assert (=> d!2083783 (= lt!2423206 e!4020168)))

(declare-fun c!1226971 () Bool)

(declare-fun e!4020166 () Bool)

(assert (=> d!2083783 (= c!1226971 e!4020166)))

(declare-fun res!2724255 () Bool)

(assert (=> d!2083783 (=> (not res!2724255) (not e!4020166))))

(assert (=> d!2083783 (= res!2724255 ((_ is Cons!65709) (unfocusZipperList!1932 zl!343)))))

(assert (=> d!2083783 (forall!15706 (unfocusZipperList!1932 zl!343) lambda!372029)))

(assert (=> d!2083783 (= (generalisedUnion!2355 (unfocusZipperList!1932 zl!343)) lt!2423206)))

(declare-fun b!6648436 () Bool)

(declare-fun e!4020171 () Regex!16511)

(assert (=> b!6648436 (= e!4020168 e!4020171)))

(declare-fun c!1226970 () Bool)

(assert (=> b!6648436 (= c!1226970 ((_ is Cons!65709) (unfocusZipperList!1932 zl!343)))))

(declare-fun b!6648437 () Bool)

(assert (=> b!6648437 (= e!4020171 EmptyLang!16511)))

(declare-fun b!6648438 () Bool)

(declare-fun e!4020173 () Bool)

(declare-fun e!4020167 () Bool)

(assert (=> b!6648438 (= e!4020173 e!4020167)))

(declare-fun c!1226967 () Bool)

(assert (=> b!6648438 (= c!1226967 (isEmpty!38017 (tail!12549 (unfocusZipperList!1932 zl!343))))))

(declare-fun b!6648439 () Bool)

(assert (=> b!6648439 (= e!4020167 (= lt!2423206 (head!13464 (unfocusZipperList!1932 zl!343))))))

(declare-fun b!6648440 () Bool)

(declare-fun isUnion!1323 (Regex!16511) Bool)

(assert (=> b!6648440 (= e!4020167 (isUnion!1323 lt!2423206))))

(declare-fun b!6648442 () Bool)

(assert (=> b!6648442 (= e!4020168 (h!72157 (unfocusZipperList!1932 zl!343)))))

(declare-fun b!6648444 () Bool)

(declare-fun isEmptyLang!1893 (Regex!16511) Bool)

(assert (=> b!6648444 (= e!4020173 (isEmptyLang!1893 lt!2423206))))

(declare-fun b!6648446 () Bool)

(assert (=> b!6648446 (= e!4020166 (isEmpty!38017 (t!379502 (unfocusZipperList!1932 zl!343))))))

(declare-fun b!6648448 () Bool)

(assert (=> b!6648448 (= e!4020171 (Union!16511 (h!72157 (unfocusZipperList!1932 zl!343)) (generalisedUnion!2355 (t!379502 (unfocusZipperList!1932 zl!343)))))))

(declare-fun b!6648450 () Bool)

(assert (=> b!6648450 (= e!4020174 e!4020173)))

(declare-fun c!1226969 () Bool)

(assert (=> b!6648450 (= c!1226969 (isEmpty!38017 (unfocusZipperList!1932 zl!343)))))

(assert (= (and d!2083783 res!2724255) b!6648446))

(assert (= (and d!2083783 c!1226971) b!6648442))

(assert (= (and d!2083783 (not c!1226971)) b!6648436))

(assert (= (and b!6648436 c!1226970) b!6648448))

(assert (= (and b!6648436 (not c!1226970)) b!6648437))

(assert (= (and d!2083783 res!2724259) b!6648450))

(assert (= (and b!6648450 c!1226969) b!6648444))

(assert (= (and b!6648450 (not c!1226969)) b!6648438))

(assert (= (and b!6648438 c!1226967) b!6648439))

(assert (= (and b!6648438 (not c!1226967)) b!6648440))

(declare-fun m!7414518 () Bool)

(assert (=> b!6648444 m!7414518))

(assert (=> b!6648439 m!7413372))

(declare-fun m!7414520 () Bool)

(assert (=> b!6648439 m!7414520))

(declare-fun m!7414522 () Bool)

(assert (=> b!6648448 m!7414522))

(declare-fun m!7414524 () Bool)

(assert (=> b!6648440 m!7414524))

(assert (=> b!6648438 m!7413372))

(declare-fun m!7414526 () Bool)

(assert (=> b!6648438 m!7414526))

(assert (=> b!6648438 m!7414526))

(declare-fun m!7414528 () Bool)

(assert (=> b!6648438 m!7414528))

(declare-fun m!7414530 () Bool)

(assert (=> b!6648446 m!7414530))

(declare-fun m!7414532 () Bool)

(assert (=> d!2083783 m!7414532))

(assert (=> d!2083783 m!7413372))

(declare-fun m!7414534 () Bool)

(assert (=> d!2083783 m!7414534))

(assert (=> b!6648450 m!7413372))

(declare-fun m!7414536 () Bool)

(assert (=> b!6648450 m!7414536))

(assert (=> b!6647641 d!2083783))

(declare-fun bs!1711617 () Bool)

(declare-fun d!2083795 () Bool)

(assert (= bs!1711617 (and d!2083795 d!2083693)))

(declare-fun lambda!372032 () Int)

(assert (=> bs!1711617 (= lambda!372032 lambda!372013)))

(declare-fun bs!1711618 () Bool)

(assert (= bs!1711618 (and d!2083795 b!6647652)))

(assert (=> bs!1711618 (= lambda!372032 lambda!371944)))

(declare-fun bs!1711619 () Bool)

(assert (= bs!1711619 (and d!2083795 d!2083603)))

(assert (=> bs!1711619 (= lambda!372032 lambda!371981)))

(declare-fun bs!1711620 () Bool)

(assert (= bs!1711620 (and d!2083795 d!2083521)))

(assert (=> bs!1711620 (= lambda!372032 lambda!371957)))

(declare-fun bs!1711621 () Bool)

(assert (= bs!1711621 (and d!2083795 b!6647657)))

(assert (=> bs!1711621 (= lambda!372032 lambda!371946)))

(declare-fun bs!1711622 () Bool)

(assert (= bs!1711622 (and d!2083795 d!2083749)))

(assert (=> bs!1711622 (= lambda!372032 lambda!372021)))

(declare-fun bs!1711623 () Bool)

(assert (= bs!1711623 (and d!2083795 d!2083583)))

(assert (=> bs!1711623 (= lambda!372032 lambda!371974)))

(declare-fun bs!1711624 () Bool)

(assert (= bs!1711624 (and d!2083795 d!2083585)))

(assert (=> bs!1711624 (= lambda!372032 lambda!371979)))

(declare-fun bs!1711625 () Bool)

(assert (= bs!1711625 (and d!2083795 d!2083539)))

(assert (=> bs!1711625 (= lambda!372032 lambda!371966)))

(declare-fun bs!1711626 () Bool)

(assert (= bs!1711626 (and d!2083795 d!2083679)))

(assert (=> bs!1711626 (= lambda!372032 lambda!372012)))

(declare-fun bs!1711627 () Bool)

(assert (= bs!1711627 (and d!2083795 d!2083783)))

(assert (=> bs!1711627 (= lambda!372032 lambda!372029)))

(declare-fun lt!2423211 () List!65833)

(assert (=> d!2083795 (forall!15706 lt!2423211 lambda!372032)))

(declare-fun e!4020179 () List!65833)

(assert (=> d!2083795 (= lt!2423211 e!4020179)))

(declare-fun c!1226975 () Bool)

(assert (=> d!2083795 (= c!1226975 ((_ is Cons!65710) zl!343))))

(assert (=> d!2083795 (= (unfocusZipperList!1932 zl!343) lt!2423211)))

(declare-fun b!6648459 () Bool)

(assert (=> b!6648459 (= e!4020179 (Cons!65709 (generalisedConcat!2108 (exprs!6395 (h!72158 zl!343))) (unfocusZipperList!1932 (t!379503 zl!343))))))

(declare-fun b!6648460 () Bool)

(assert (=> b!6648460 (= e!4020179 Nil!65709)))

(assert (= (and d!2083795 c!1226975) b!6648459))

(assert (= (and d!2083795 (not c!1226975)) b!6648460))

(declare-fun m!7414538 () Bool)

(assert (=> d!2083795 m!7414538))

(assert (=> b!6648459 m!7413474))

(declare-fun m!7414540 () Bool)

(assert (=> b!6648459 m!7414540))

(assert (=> b!6647641 d!2083795))

(declare-fun d!2083797 () Bool)

(declare-fun e!4020180 () Bool)

(assert (=> d!2083797 (= (matchZipper!2523 ((_ map or) lt!2423006 lt!2423000) (t!379501 s!2326)) e!4020180)))

(declare-fun res!2724260 () Bool)

(assert (=> d!2083797 (=> res!2724260 e!4020180)))

(assert (=> d!2083797 (= res!2724260 (matchZipper!2523 lt!2423006 (t!379501 s!2326)))))

(declare-fun lt!2423215 () Unit!159453)

(assert (=> d!2083797 (= lt!2423215 (choose!49677 lt!2423006 lt!2423000 (t!379501 s!2326)))))

(assert (=> d!2083797 (= (lemmaZipperConcatMatchesSameAsBothZippers!1342 lt!2423006 lt!2423000 (t!379501 s!2326)) lt!2423215)))

(declare-fun b!6648461 () Bool)

(assert (=> b!6648461 (= e!4020180 (matchZipper!2523 lt!2423000 (t!379501 s!2326)))))

(assert (= (and d!2083797 (not res!2724260)) b!6648461))

(assert (=> d!2083797 m!7413444))

(assert (=> d!2083797 m!7413442))

(declare-fun m!7414548 () Bool)

(assert (=> d!2083797 m!7414548))

(assert (=> b!6648461 m!7413468))

(assert (=> b!6647673 d!2083797))

(declare-fun d!2083799 () Bool)

(declare-fun c!1226976 () Bool)

(assert (=> d!2083799 (= c!1226976 (isEmpty!38018 (t!379501 s!2326)))))

(declare-fun e!4020181 () Bool)

(assert (=> d!2083799 (= (matchZipper!2523 lt!2423006 (t!379501 s!2326)) e!4020181)))

(declare-fun b!6648462 () Bool)

(assert (=> b!6648462 (= e!4020181 (nullableZipper!2251 lt!2423006))))

(declare-fun b!6648463 () Bool)

(assert (=> b!6648463 (= e!4020181 (matchZipper!2523 (derivationStepZipper!2477 lt!2423006 (head!13463 (t!379501 s!2326))) (tail!12548 (t!379501 s!2326))))))

(assert (= (and d!2083799 c!1226976) b!6648462))

(assert (= (and d!2083799 (not c!1226976)) b!6648463))

(assert (=> d!2083799 m!7413772))

(declare-fun m!7414554 () Bool)

(assert (=> b!6648462 m!7414554))

(assert (=> b!6648463 m!7413776))

(assert (=> b!6648463 m!7413776))

(declare-fun m!7414556 () Bool)

(assert (=> b!6648463 m!7414556))

(assert (=> b!6648463 m!7413780))

(assert (=> b!6648463 m!7414556))

(assert (=> b!6648463 m!7413780))

(declare-fun m!7414558 () Bool)

(assert (=> b!6648463 m!7414558))

(assert (=> b!6647673 d!2083799))

(declare-fun d!2083805 () Bool)

(declare-fun c!1226977 () Bool)

(assert (=> d!2083805 (= c!1226977 (isEmpty!38018 (t!379501 s!2326)))))

(declare-fun e!4020182 () Bool)

(assert (=> d!2083805 (= (matchZipper!2523 ((_ map or) lt!2423006 lt!2423000) (t!379501 s!2326)) e!4020182)))

(declare-fun b!6648464 () Bool)

(assert (=> b!6648464 (= e!4020182 (nullableZipper!2251 ((_ map or) lt!2423006 lt!2423000)))))

(declare-fun b!6648465 () Bool)

(assert (=> b!6648465 (= e!4020182 (matchZipper!2523 (derivationStepZipper!2477 ((_ map or) lt!2423006 lt!2423000) (head!13463 (t!379501 s!2326))) (tail!12548 (t!379501 s!2326))))))

(assert (= (and d!2083805 c!1226977) b!6648464))

(assert (= (and d!2083805 (not c!1226977)) b!6648465))

(assert (=> d!2083805 m!7413772))

(declare-fun m!7414560 () Bool)

(assert (=> b!6648464 m!7414560))

(assert (=> b!6648465 m!7413776))

(assert (=> b!6648465 m!7413776))

(declare-fun m!7414562 () Bool)

(assert (=> b!6648465 m!7414562))

(assert (=> b!6648465 m!7413780))

(assert (=> b!6648465 m!7414562))

(assert (=> b!6648465 m!7413780))

(declare-fun m!7414564 () Bool)

(assert (=> b!6648465 m!7414564))

(assert (=> b!6647673 d!2083805))

(declare-fun b!6648536 () Bool)

(declare-fun e!4020239 () Bool)

(declare-fun e!4020237 () Bool)

(assert (=> b!6648536 (= e!4020239 e!4020237)))

(declare-fun c!1227004 () Bool)

(assert (=> b!6648536 (= c!1227004 ((_ is Concat!25356) r!7292))))

(declare-fun b!6648537 () Bool)

(declare-fun e!4020235 () Bool)

(declare-fun lt!2423221 () Int)

(declare-fun call!586591 () Int)

(assert (=> b!6648537 (= e!4020235 (> lt!2423221 call!586591))))

(declare-fun b!6648538 () Bool)

(declare-fun e!4020234 () Bool)

(assert (=> b!6648538 (= e!4020234 (= lt!2423221 1))))

(declare-fun bm!586585 () Bool)

(declare-fun c!1227007 () Bool)

(assert (=> bm!586585 (= call!586591 (regexDepth!374 (ite c!1227007 (regTwo!33535 r!7292) (regTwo!33534 r!7292))))))

(declare-fun b!6648539 () Bool)

(declare-fun e!4020236 () Int)

(assert (=> b!6648539 (= e!4020236 1)))

(declare-fun d!2083807 () Bool)

(declare-fun e!4020231 () Bool)

(assert (=> d!2083807 e!4020231))

(declare-fun res!2724284 () Bool)

(assert (=> d!2083807 (=> (not res!2724284) (not e!4020231))))

(assert (=> d!2083807 (= res!2724284 (> lt!2423221 0))))

(declare-fun e!4020228 () Int)

(assert (=> d!2083807 (= lt!2423221 e!4020228)))

(declare-fun c!1227006 () Bool)

(assert (=> d!2083807 (= c!1227006 ((_ is ElementMatch!16511) r!7292))))

(assert (=> d!2083807 (= (regexDepth!374 r!7292) lt!2423221)))

(declare-fun b!6648540 () Bool)

(declare-fun e!4020230 () Int)

(declare-fun call!586593 () Int)

(assert (=> b!6648540 (= e!4020230 (+ 1 call!586593))))

(declare-fun b!6648541 () Bool)

(declare-fun e!4020229 () Int)

(assert (=> b!6648541 (= e!4020228 e!4020229)))

(declare-fun c!1227001 () Bool)

(assert (=> b!6648541 (= c!1227001 ((_ is Star!16511) r!7292))))

(declare-fun b!6648542 () Bool)

(assert (=> b!6648542 (= e!4020231 e!4020239)))

(assert (=> b!6648542 (= c!1227007 ((_ is Union!16511) r!7292))))

(declare-fun b!6648543 () Bool)

(declare-fun res!2724287 () Bool)

(declare-fun e!4020238 () Bool)

(assert (=> b!6648543 (=> (not res!2724287) (not e!4020238))))

(declare-fun call!586594 () Int)

(assert (=> b!6648543 (= res!2724287 (> lt!2423221 call!586594))))

(assert (=> b!6648543 (= e!4020237 e!4020238)))

(declare-fun b!6648544 () Bool)

(assert (=> b!6648544 (= e!4020228 1)))

(declare-fun b!6648545 () Bool)

(declare-fun c!1227005 () Bool)

(assert (=> b!6648545 (= c!1227005 ((_ is Union!16511) r!7292))))

(assert (=> b!6648545 (= e!4020229 e!4020230)))

(declare-fun b!6648546 () Bool)

(assert (=> b!6648546 (= e!4020238 (> lt!2423221 call!586591))))

(declare-fun b!6648547 () Bool)

(declare-fun c!1227003 () Bool)

(assert (=> b!6648547 (= c!1227003 ((_ is Star!16511) r!7292))))

(assert (=> b!6648547 (= e!4020237 e!4020234)))

(declare-fun bm!586586 () Bool)

(declare-fun call!586595 () Int)

(assert (=> bm!586586 (= call!586595 (regexDepth!374 (ite c!1227001 (reg!16840 r!7292) (ite c!1227005 (regOne!33535 r!7292) (regTwo!33534 r!7292)))))))

(declare-fun bm!586587 () Bool)

(declare-fun call!586596 () Int)

(declare-fun call!586590 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!586587 (= call!586593 (maxBigInt!0 (ite c!1227005 call!586596 call!586590) (ite c!1227005 call!586590 call!586596)))))

(declare-fun bm!586588 () Bool)

(assert (=> bm!586588 (= call!586596 call!586595)))

(declare-fun b!6648548 () Bool)

(assert (=> b!6648548 (= e!4020229 (+ 1 call!586595))))

(declare-fun b!6648549 () Bool)

(assert (=> b!6648549 (= e!4020239 e!4020235)))

(declare-fun res!2724283 () Bool)

(declare-fun call!586592 () Int)

(assert (=> b!6648549 (= res!2724283 (> lt!2423221 call!586592))))

(assert (=> b!6648549 (=> (not res!2724283) (not e!4020235))))

(declare-fun bm!586589 () Bool)

(assert (=> bm!586589 (= call!586594 call!586592)))

(declare-fun bm!586590 () Bool)

(assert (=> bm!586590 (= call!586592 (regexDepth!374 (ite c!1227007 (regOne!33535 r!7292) (ite c!1227004 (regOne!33534 r!7292) (reg!16840 r!7292)))))))

(declare-fun b!6648550 () Bool)

(assert (=> b!6648550 (= e!4020236 (+ 1 call!586593))))

(declare-fun b!6648551 () Bool)

(assert (=> b!6648551 (= e!4020234 (> lt!2423221 call!586594))))

(declare-fun bm!586591 () Bool)

(assert (=> bm!586591 (= call!586590 (regexDepth!374 (ite c!1227005 (regTwo!33535 r!7292) (regOne!33534 r!7292))))))

(declare-fun b!6648552 () Bool)

(assert (=> b!6648552 (= e!4020230 e!4020236)))

(declare-fun c!1227002 () Bool)

(assert (=> b!6648552 (= c!1227002 ((_ is Concat!25356) r!7292))))

(assert (= (and d!2083807 c!1227006) b!6648544))

(assert (= (and d!2083807 (not c!1227006)) b!6648541))

(assert (= (and b!6648541 c!1227001) b!6648548))

(assert (= (and b!6648541 (not c!1227001)) b!6648545))

(assert (= (and b!6648545 c!1227005) b!6648540))

(assert (= (and b!6648545 (not c!1227005)) b!6648552))

(assert (= (and b!6648552 c!1227002) b!6648550))

(assert (= (and b!6648552 (not c!1227002)) b!6648539))

(assert (= (or b!6648540 b!6648550) bm!586591))

(assert (= (or b!6648540 b!6648550) bm!586588))

(assert (= (or b!6648540 b!6648550) bm!586587))

(assert (= (or b!6648548 bm!586588) bm!586586))

(assert (= (and d!2083807 res!2724284) b!6648542))

(assert (= (and b!6648542 c!1227007) b!6648549))

(assert (= (and b!6648542 (not c!1227007)) b!6648536))

(assert (= (and b!6648549 res!2724283) b!6648537))

(assert (= (and b!6648536 c!1227004) b!6648543))

(assert (= (and b!6648536 (not c!1227004)) b!6648547))

(assert (= (and b!6648543 res!2724287) b!6648546))

(assert (= (and b!6648547 c!1227003) b!6648551))

(assert (= (and b!6648547 (not c!1227003)) b!6648538))

(assert (= (or b!6648543 b!6648551) bm!586589))

(assert (= (or b!6648537 b!6648546) bm!586585))

(assert (= (or b!6648549 bm!586589) bm!586590))

(declare-fun m!7414592 () Bool)

(assert (=> bm!586586 m!7414592))

(declare-fun m!7414594 () Bool)

(assert (=> bm!586587 m!7414594))

(declare-fun m!7414596 () Bool)

(assert (=> bm!586591 m!7414596))

(declare-fun m!7414598 () Bool)

(assert (=> bm!586590 m!7414598))

(declare-fun m!7414600 () Bool)

(assert (=> bm!586585 m!7414600))

(assert (=> b!6647648 d!2083807))

(declare-fun b!6648567 () Bool)

(declare-fun e!4020257 () Bool)

(declare-fun e!4020255 () Bool)

(assert (=> b!6648567 (= e!4020257 e!4020255)))

(declare-fun c!1227017 () Bool)

(assert (=> b!6648567 (= c!1227017 ((_ is Concat!25356) (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))))))

(declare-fun b!6648568 () Bool)

(declare-fun e!4020253 () Bool)

(declare-fun lt!2423222 () Int)

(declare-fun call!586598 () Int)

(assert (=> b!6648568 (= e!4020253 (> lt!2423222 call!586598))))

(declare-fun b!6648569 () Bool)

(declare-fun e!4020252 () Bool)

(assert (=> b!6648569 (= e!4020252 (= lt!2423222 1))))

(declare-fun bm!586592 () Bool)

(declare-fun c!1227020 () Bool)

(assert (=> bm!586592 (= call!586598 (regexDepth!374 (ite c!1227020 (regTwo!33535 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))) (regTwo!33534 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))))))))

(declare-fun b!6648570 () Bool)

(declare-fun e!4020254 () Int)

(assert (=> b!6648570 (= e!4020254 1)))

(declare-fun d!2083815 () Bool)

(declare-fun e!4020251 () Bool)

(assert (=> d!2083815 e!4020251))

(declare-fun res!2724291 () Bool)

(assert (=> d!2083815 (=> (not res!2724291) (not e!4020251))))

(assert (=> d!2083815 (= res!2724291 (> lt!2423222 0))))

(declare-fun e!4020248 () Int)

(assert (=> d!2083815 (= lt!2423222 e!4020248)))

(declare-fun c!1227019 () Bool)

(assert (=> d!2083815 (= c!1227019 ((_ is ElementMatch!16511) (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))))))

(assert (=> d!2083815 (= (regexDepth!374 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))) lt!2423222)))

(declare-fun b!6648571 () Bool)

(declare-fun e!4020250 () Int)

(declare-fun call!586600 () Int)

(assert (=> b!6648571 (= e!4020250 (+ 1 call!586600))))

(declare-fun b!6648572 () Bool)

(declare-fun e!4020249 () Int)

(assert (=> b!6648572 (= e!4020248 e!4020249)))

(declare-fun c!1227014 () Bool)

(assert (=> b!6648572 (= c!1227014 ((_ is Star!16511) (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))))))

(declare-fun b!6648573 () Bool)

(assert (=> b!6648573 (= e!4020251 e!4020257)))

(assert (=> b!6648573 (= c!1227020 ((_ is Union!16511) (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))))))

(declare-fun b!6648574 () Bool)

(declare-fun res!2724292 () Bool)

(declare-fun e!4020256 () Bool)

(assert (=> b!6648574 (=> (not res!2724292) (not e!4020256))))

(declare-fun call!586601 () Int)

(assert (=> b!6648574 (= res!2724292 (> lt!2423222 call!586601))))

(assert (=> b!6648574 (= e!4020255 e!4020256)))

(declare-fun b!6648575 () Bool)

(assert (=> b!6648575 (= e!4020248 1)))

(declare-fun b!6648576 () Bool)

(declare-fun c!1227018 () Bool)

(assert (=> b!6648576 (= c!1227018 ((_ is Union!16511) (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))))))

(assert (=> b!6648576 (= e!4020249 e!4020250)))

(declare-fun b!6648577 () Bool)

(assert (=> b!6648577 (= e!4020256 (> lt!2423222 call!586598))))

(declare-fun b!6648578 () Bool)

(declare-fun c!1227016 () Bool)

(assert (=> b!6648578 (= c!1227016 ((_ is Star!16511) (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))))))

(assert (=> b!6648578 (= e!4020255 e!4020252)))

(declare-fun call!586602 () Int)

(declare-fun bm!586593 () Bool)

(assert (=> bm!586593 (= call!586602 (regexDepth!374 (ite c!1227014 (reg!16840 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))) (ite c!1227018 (regOne!33535 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))) (regTwo!33534 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343)))))))))))

(declare-fun call!586597 () Int)

(declare-fun bm!586594 () Bool)

(declare-fun call!586603 () Int)

(assert (=> bm!586594 (= call!586600 (maxBigInt!0 (ite c!1227018 call!586603 call!586597) (ite c!1227018 call!586597 call!586603)))))

(declare-fun bm!586595 () Bool)

(assert (=> bm!586595 (= call!586603 call!586602)))

(declare-fun b!6648579 () Bool)

(assert (=> b!6648579 (= e!4020249 (+ 1 call!586602))))

(declare-fun b!6648580 () Bool)

(assert (=> b!6648580 (= e!4020257 e!4020253)))

(declare-fun res!2724290 () Bool)

(declare-fun call!586599 () Int)

(assert (=> b!6648580 (= res!2724290 (> lt!2423222 call!586599))))

(assert (=> b!6648580 (=> (not res!2724290) (not e!4020253))))

(declare-fun bm!586596 () Bool)

(assert (=> bm!586596 (= call!586601 call!586599)))

(declare-fun bm!586597 () Bool)

(assert (=> bm!586597 (= call!586599 (regexDepth!374 (ite c!1227020 (regOne!33535 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))) (ite c!1227017 (regOne!33534 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))) (reg!16840 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343)))))))))))

(declare-fun b!6648581 () Bool)

(assert (=> b!6648581 (= e!4020254 (+ 1 call!586600))))

(declare-fun b!6648582 () Bool)

(assert (=> b!6648582 (= e!4020252 (> lt!2423222 call!586601))))

(declare-fun bm!586598 () Bool)

(assert (=> bm!586598 (= call!586597 (regexDepth!374 (ite c!1227018 (regTwo!33535 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))) (regOne!33534 (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))))))))

(declare-fun b!6648583 () Bool)

(assert (=> b!6648583 (= e!4020250 e!4020254)))

(declare-fun c!1227015 () Bool)

(assert (=> b!6648583 (= c!1227015 ((_ is Concat!25356) (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343))))))))

(assert (= (and d!2083815 c!1227019) b!6648575))

(assert (= (and d!2083815 (not c!1227019)) b!6648572))

(assert (= (and b!6648572 c!1227014) b!6648579))

(assert (= (and b!6648572 (not c!1227014)) b!6648576))

(assert (= (and b!6648576 c!1227018) b!6648571))

(assert (= (and b!6648576 (not c!1227018)) b!6648583))

(assert (= (and b!6648583 c!1227015) b!6648581))

(assert (= (and b!6648583 (not c!1227015)) b!6648570))

(assert (= (or b!6648571 b!6648581) bm!586598))

(assert (= (or b!6648571 b!6648581) bm!586595))

(assert (= (or b!6648571 b!6648581) bm!586594))

(assert (= (or b!6648579 bm!586595) bm!586593))

(assert (= (and d!2083815 res!2724291) b!6648573))

(assert (= (and b!6648573 c!1227020) b!6648580))

(assert (= (and b!6648573 (not c!1227020)) b!6648567))

(assert (= (and b!6648580 res!2724290) b!6648568))

(assert (= (and b!6648567 c!1227017) b!6648574))

(assert (= (and b!6648567 (not c!1227017)) b!6648578))

(assert (= (and b!6648574 res!2724292) b!6648577))

(assert (= (and b!6648578 c!1227016) b!6648582))

(assert (= (and b!6648578 (not c!1227016)) b!6648569))

(assert (= (or b!6648574 b!6648582) bm!586596))

(assert (= (or b!6648568 b!6648577) bm!586592))

(assert (= (or b!6648580 bm!586596) bm!586597))

(declare-fun m!7414602 () Bool)

(assert (=> bm!586593 m!7414602))

(declare-fun m!7414604 () Bool)

(assert (=> bm!586594 m!7414604))

(declare-fun m!7414606 () Bool)

(assert (=> bm!586598 m!7414606))

(declare-fun m!7414608 () Bool)

(assert (=> bm!586597 m!7414608))

(declare-fun m!7414610 () Bool)

(assert (=> bm!586592 m!7414610))

(assert (=> b!6647648 d!2083815))

(declare-fun bs!1711630 () Bool)

(declare-fun d!2083817 () Bool)

(assert (= bs!1711630 (and d!2083817 d!2083693)))

(declare-fun lambda!372035 () Int)

(assert (=> bs!1711630 (= lambda!372035 lambda!372013)))

(declare-fun bs!1711631 () Bool)

(assert (= bs!1711631 (and d!2083817 b!6647652)))

(assert (=> bs!1711631 (= lambda!372035 lambda!371944)))

(declare-fun bs!1711632 () Bool)

(assert (= bs!1711632 (and d!2083817 d!2083603)))

(assert (=> bs!1711632 (= lambda!372035 lambda!371981)))

(declare-fun bs!1711633 () Bool)

(assert (= bs!1711633 (and d!2083817 d!2083521)))

(assert (=> bs!1711633 (= lambda!372035 lambda!371957)))

(declare-fun bs!1711634 () Bool)

(assert (= bs!1711634 (and d!2083817 d!2083795)))

(assert (=> bs!1711634 (= lambda!372035 lambda!372032)))

(declare-fun bs!1711635 () Bool)

(assert (= bs!1711635 (and d!2083817 b!6647657)))

(assert (=> bs!1711635 (= lambda!372035 lambda!371946)))

(declare-fun bs!1711637 () Bool)

(assert (= bs!1711637 (and d!2083817 d!2083749)))

(assert (=> bs!1711637 (= lambda!372035 lambda!372021)))

(declare-fun bs!1711639 () Bool)

(assert (= bs!1711639 (and d!2083817 d!2083583)))

(assert (=> bs!1711639 (= lambda!372035 lambda!371974)))

(declare-fun bs!1711641 () Bool)

(assert (= bs!1711641 (and d!2083817 d!2083585)))

(assert (=> bs!1711641 (= lambda!372035 lambda!371979)))

(declare-fun bs!1711643 () Bool)

(assert (= bs!1711643 (and d!2083817 d!2083539)))

(assert (=> bs!1711643 (= lambda!372035 lambda!371966)))

(declare-fun bs!1711644 () Bool)

(assert (= bs!1711644 (and d!2083817 d!2083679)))

(assert (=> bs!1711644 (= lambda!372035 lambda!372012)))

(declare-fun bs!1711645 () Bool)

(assert (= bs!1711645 (and d!2083817 d!2083783)))

(assert (=> bs!1711645 (= lambda!372035 lambda!372029)))

(declare-fun b!6648584 () Bool)

(declare-fun e!4020260 () Bool)

(declare-fun lt!2423223 () Regex!16511)

(assert (=> b!6648584 (= e!4020260 (isConcat!1407 lt!2423223))))

(declare-fun b!6648585 () Bool)

(declare-fun e!4020262 () Bool)

(assert (=> b!6648585 (= e!4020262 e!4020260)))

(declare-fun c!1227021 () Bool)

(assert (=> b!6648585 (= c!1227021 (isEmpty!38017 (tail!12549 (t!379502 (exprs!6395 (h!72158 zl!343))))))))

(declare-fun b!6648587 () Bool)

(declare-fun e!4020263 () Regex!16511)

(assert (=> b!6648587 (= e!4020263 EmptyExpr!16511)))

(declare-fun b!6648588 () Bool)

(assert (=> b!6648588 (= e!4020262 (isEmptyExpr!1884 lt!2423223))))

(declare-fun b!6648589 () Bool)

(declare-fun e!4020261 () Regex!16511)

(assert (=> b!6648589 (= e!4020261 e!4020263)))

(declare-fun c!1227024 () Bool)

(assert (=> b!6648589 (= c!1227024 ((_ is Cons!65709) (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun b!6648590 () Bool)

(declare-fun e!4020258 () Bool)

(assert (=> b!6648590 (= e!4020258 e!4020262)))

(declare-fun c!1227023 () Bool)

(assert (=> b!6648590 (= c!1227023 (isEmpty!38017 (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun b!6648591 () Bool)

(assert (=> b!6648591 (= e!4020261 (h!72157 (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun b!6648592 () Bool)

(assert (=> b!6648592 (= e!4020263 (Concat!25356 (h!72157 (t!379502 (exprs!6395 (h!72158 zl!343)))) (generalisedConcat!2108 (t!379502 (t!379502 (exprs!6395 (h!72158 zl!343)))))))))

(declare-fun b!6648593 () Bool)

(assert (=> b!6648593 (= e!4020260 (= lt!2423223 (head!13464 (t!379502 (exprs!6395 (h!72158 zl!343))))))))

(assert (=> d!2083817 e!4020258))

(declare-fun res!2724294 () Bool)

(assert (=> d!2083817 (=> (not res!2724294) (not e!4020258))))

(assert (=> d!2083817 (= res!2724294 (validRegex!8247 lt!2423223))))

(assert (=> d!2083817 (= lt!2423223 e!4020261)))

(declare-fun c!1227022 () Bool)

(declare-fun e!4020259 () Bool)

(assert (=> d!2083817 (= c!1227022 e!4020259)))

(declare-fun res!2724293 () Bool)

(assert (=> d!2083817 (=> (not res!2724293) (not e!4020259))))

(assert (=> d!2083817 (= res!2724293 ((_ is Cons!65709) (t!379502 (exprs!6395 (h!72158 zl!343)))))))

(assert (=> d!2083817 (forall!15706 (t!379502 (exprs!6395 (h!72158 zl!343))) lambda!372035)))

(assert (=> d!2083817 (= (generalisedConcat!2108 (t!379502 (exprs!6395 (h!72158 zl!343)))) lt!2423223)))

(declare-fun b!6648586 () Bool)

(assert (=> b!6648586 (= e!4020259 (isEmpty!38017 (t!379502 (t!379502 (exprs!6395 (h!72158 zl!343))))))))

(assert (= (and d!2083817 res!2724293) b!6648586))

(assert (= (and d!2083817 c!1227022) b!6648591))

(assert (= (and d!2083817 (not c!1227022)) b!6648589))

(assert (= (and b!6648589 c!1227024) b!6648592))

(assert (= (and b!6648589 (not c!1227024)) b!6648587))

(assert (= (and d!2083817 res!2724294) b!6648590))

(assert (= (and b!6648590 c!1227023) b!6648588))

(assert (= (and b!6648590 (not c!1227023)) b!6648585))

(assert (= (and b!6648585 c!1227021) b!6648593))

(assert (= (and b!6648585 (not c!1227021)) b!6648584))

(assert (=> b!6648590 m!7413252))

(declare-fun m!7414616 () Bool)

(assert (=> b!6648592 m!7414616))

(declare-fun m!7414618 () Bool)

(assert (=> b!6648585 m!7414618))

(assert (=> b!6648585 m!7414618))

(declare-fun m!7414622 () Bool)

(assert (=> b!6648585 m!7414622))

(declare-fun m!7414626 () Bool)

(assert (=> b!6648593 m!7414626))

(declare-fun m!7414628 () Bool)

(assert (=> b!6648586 m!7414628))

(declare-fun m!7414632 () Bool)

(assert (=> d!2083817 m!7414632))

(declare-fun m!7414637 () Bool)

(assert (=> d!2083817 m!7414637))

(declare-fun m!7414640 () Bool)

(assert (=> b!6648588 m!7414640))

(declare-fun m!7414644 () Bool)

(assert (=> b!6648584 m!7414644))

(assert (=> b!6647648 d!2083817))

(declare-fun b!6648604 () Bool)

(declare-fun e!4020270 () List!65832)

(assert (=> b!6648604 (= e!4020270 (_2!36793 lt!2423008))))

(declare-fun b!6648605 () Bool)

(assert (=> b!6648605 (= e!4020270 (Cons!65708 (h!72156 (_2!36793 lt!2422896)) (++!14664 (t!379501 (_2!36793 lt!2422896)) (_2!36793 lt!2423008))))))

(declare-fun b!6648606 () Bool)

(declare-fun res!2724297 () Bool)

(declare-fun e!4020271 () Bool)

(assert (=> b!6648606 (=> (not res!2724297) (not e!4020271))))

(declare-fun lt!2423225 () List!65832)

(assert (=> b!6648606 (= res!2724297 (= (size!40565 lt!2423225) (+ (size!40565 (_2!36793 lt!2422896)) (size!40565 (_2!36793 lt!2423008)))))))

(declare-fun b!6648607 () Bool)

(assert (=> b!6648607 (= e!4020271 (or (not (= (_2!36793 lt!2423008) Nil!65708)) (= lt!2423225 (_2!36793 lt!2422896))))))

(declare-fun d!2083819 () Bool)

(assert (=> d!2083819 e!4020271))

(declare-fun res!2724298 () Bool)

(assert (=> d!2083819 (=> (not res!2724298) (not e!4020271))))

(assert (=> d!2083819 (= res!2724298 (= (content!12703 lt!2423225) ((_ map or) (content!12703 (_2!36793 lt!2422896)) (content!12703 (_2!36793 lt!2423008)))))))

(assert (=> d!2083819 (= lt!2423225 e!4020270)))

(declare-fun c!1227029 () Bool)

(assert (=> d!2083819 (= c!1227029 ((_ is Nil!65708) (_2!36793 lt!2422896)))))

(assert (=> d!2083819 (= (++!14664 (_2!36793 lt!2422896) (_2!36793 lt!2423008)) lt!2423225)))

(assert (= (and d!2083819 c!1227029) b!6648604))

(assert (= (and d!2083819 (not c!1227029)) b!6648605))

(assert (= (and d!2083819 res!2724298) b!6648606))

(assert (= (and b!6648606 res!2724297) b!6648607))

(declare-fun m!7414646 () Bool)

(assert (=> b!6648605 m!7414646))

(declare-fun m!7414648 () Bool)

(assert (=> b!6648606 m!7414648))

(declare-fun m!7414650 () Bool)

(assert (=> b!6648606 m!7414650))

(declare-fun m!7414652 () Bool)

(assert (=> b!6648606 m!7414652))

(declare-fun m!7414654 () Bool)

(assert (=> d!2083819 m!7414654))

(declare-fun m!7414656 () Bool)

(assert (=> d!2083819 m!7414656))

(declare-fun m!7414658 () Bool)

(assert (=> d!2083819 m!7414658))

(assert (=> b!6647657 d!2083819))

(declare-fun b!6648608 () Bool)

(declare-fun res!2724303 () Bool)

(declare-fun e!4020272 () Bool)

(assert (=> b!6648608 (=> res!2724303 e!4020272)))

(assert (=> b!6648608 (= res!2724303 (not (isEmpty!38018 (tail!12548 lt!2422891))))))

(declare-fun b!6648609 () Bool)

(declare-fun e!4020273 () Bool)

(declare-fun lt!2423226 () Bool)

(declare-fun call!586604 () Bool)

(assert (=> b!6648609 (= e!4020273 (= lt!2423226 call!586604))))

(declare-fun b!6648611 () Bool)

(declare-fun e!4020274 () Bool)

(assert (=> b!6648611 (= e!4020273 e!4020274)))

(declare-fun c!1227030 () Bool)

(assert (=> b!6648611 (= c!1227030 ((_ is EmptyLang!16511) lt!2422860))))

(declare-fun b!6648612 () Bool)

(declare-fun e!4020277 () Bool)

(assert (=> b!6648612 (= e!4020277 (nullable!6504 lt!2422860))))

(declare-fun b!6648613 () Bool)

(declare-fun res!2724300 () Bool)

(declare-fun e!4020278 () Bool)

(assert (=> b!6648613 (=> res!2724300 e!4020278)))

(declare-fun e!4020275 () Bool)

(assert (=> b!6648613 (= res!2724300 e!4020275)))

(declare-fun res!2724305 () Bool)

(assert (=> b!6648613 (=> (not res!2724305) (not e!4020275))))

(assert (=> b!6648613 (= res!2724305 lt!2423226)))

(declare-fun b!6648614 () Bool)

(assert (=> b!6648614 (= e!4020272 (not (= (head!13463 lt!2422891) (c!1226759 lt!2422860))))))

(declare-fun b!6648615 () Bool)

(declare-fun e!4020276 () Bool)

(assert (=> b!6648615 (= e!4020278 e!4020276)))

(declare-fun res!2724306 () Bool)

(assert (=> b!6648615 (=> (not res!2724306) (not e!4020276))))

(assert (=> b!6648615 (= res!2724306 (not lt!2423226))))

(declare-fun b!6648616 () Bool)

(assert (=> b!6648616 (= e!4020275 (= (head!13463 lt!2422891) (c!1226759 lt!2422860)))))

(declare-fun bm!586599 () Bool)

(assert (=> bm!586599 (= call!586604 (isEmpty!38018 lt!2422891))))

(declare-fun b!6648617 () Bool)

(assert (=> b!6648617 (= e!4020274 (not lt!2423226))))

(declare-fun b!6648618 () Bool)

(declare-fun res!2724302 () Bool)

(assert (=> b!6648618 (=> (not res!2724302) (not e!4020275))))

(assert (=> b!6648618 (= res!2724302 (not call!586604))))

(declare-fun b!6648619 () Bool)

(declare-fun res!2724299 () Bool)

(assert (=> b!6648619 (=> res!2724299 e!4020278)))

(assert (=> b!6648619 (= res!2724299 (not ((_ is ElementMatch!16511) lt!2422860)))))

(assert (=> b!6648619 (= e!4020274 e!4020278)))

(declare-fun b!6648620 () Bool)

(declare-fun res!2724304 () Bool)

(assert (=> b!6648620 (=> (not res!2724304) (not e!4020275))))

(assert (=> b!6648620 (= res!2724304 (isEmpty!38018 (tail!12548 lt!2422891)))))

(declare-fun b!6648621 () Bool)

(assert (=> b!6648621 (= e!4020277 (matchR!8694 (derivativeStep!5190 lt!2422860 (head!13463 lt!2422891)) (tail!12548 lt!2422891)))))

(declare-fun d!2083823 () Bool)

(assert (=> d!2083823 e!4020273))

(declare-fun c!1227032 () Bool)

(assert (=> d!2083823 (= c!1227032 ((_ is EmptyExpr!16511) lt!2422860))))

(assert (=> d!2083823 (= lt!2423226 e!4020277)))

(declare-fun c!1227031 () Bool)

(assert (=> d!2083823 (= c!1227031 (isEmpty!38018 lt!2422891))))

(assert (=> d!2083823 (validRegex!8247 lt!2422860)))

(assert (=> d!2083823 (= (matchR!8694 lt!2422860 lt!2422891) lt!2423226)))

(declare-fun b!6648610 () Bool)

(assert (=> b!6648610 (= e!4020276 e!4020272)))

(declare-fun res!2724301 () Bool)

(assert (=> b!6648610 (=> res!2724301 e!4020272)))

(assert (=> b!6648610 (= res!2724301 call!586604)))

(assert (= (and d!2083823 c!1227031) b!6648612))

(assert (= (and d!2083823 (not c!1227031)) b!6648621))

(assert (= (and d!2083823 c!1227032) b!6648609))

(assert (= (and d!2083823 (not c!1227032)) b!6648611))

(assert (= (and b!6648611 c!1227030) b!6648617))

(assert (= (and b!6648611 (not c!1227030)) b!6648619))

(assert (= (and b!6648619 (not res!2724299)) b!6648613))

(assert (= (and b!6648613 res!2724305) b!6648618))

(assert (= (and b!6648618 res!2724302) b!6648620))

(assert (= (and b!6648620 res!2724304) b!6648616))

(assert (= (and b!6648613 (not res!2724300)) b!6648615))

(assert (= (and b!6648615 res!2724306) b!6648610))

(assert (= (and b!6648610 (not res!2724301)) b!6648608))

(assert (= (and b!6648608 (not res!2724303)) b!6648614))

(assert (= (or b!6648609 b!6648610 b!6648618) bm!586599))

(declare-fun m!7414660 () Bool)

(assert (=> b!6648621 m!7414660))

(assert (=> b!6648621 m!7414660))

(declare-fun m!7414662 () Bool)

(assert (=> b!6648621 m!7414662))

(declare-fun m!7414664 () Bool)

(assert (=> b!6648621 m!7414664))

(assert (=> b!6648621 m!7414662))

(assert (=> b!6648621 m!7414664))

(declare-fun m!7414666 () Bool)

(assert (=> b!6648621 m!7414666))

(assert (=> b!6648620 m!7414664))

(assert (=> b!6648620 m!7414664))

(declare-fun m!7414668 () Bool)

(assert (=> b!6648620 m!7414668))

(assert (=> b!6648608 m!7414664))

(assert (=> b!6648608 m!7414664))

(assert (=> b!6648608 m!7414668))

(declare-fun m!7414670 () Bool)

(assert (=> b!6648612 m!7414670))

(assert (=> b!6648616 m!7414660))

(declare-fun m!7414672 () Bool)

(assert (=> bm!586599 m!7414672))

(assert (=> d!2083823 m!7414672))

(assert (=> d!2083823 m!7413602))

(assert (=> b!6648614 m!7414660))

(assert (=> b!6647657 d!2083823))

(declare-fun d!2083825 () Bool)

(assert (=> d!2083825 (= (get!22848 lt!2423040) (v!52596 lt!2423040))))

(assert (=> b!6647657 d!2083825))

(declare-fun d!2083827 () Bool)

(assert (=> d!2083827 (isDefined!13105 (findConcatSeparationZippers!216 lt!2422849 (store ((as const (Array Context!11790 Bool)) false) lt!2422873 true) Nil!65708 s!2326 s!2326))))

(declare-fun lt!2423236 () Unit!159453)

(declare-fun choose!49711 ((InoxSet Context!11790) Context!11790 List!65832) Unit!159453)

(assert (=> d!2083827 (= lt!2423236 (choose!49711 lt!2422849 lt!2422873 s!2326))))

(declare-fun appendTo!208 ((InoxSet Context!11790) Context!11790) (InoxSet Context!11790))

(assert (=> d!2083827 (matchZipper!2523 (appendTo!208 lt!2422849 lt!2422873) s!2326)))

(assert (=> d!2083827 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!216 lt!2422849 lt!2422873 s!2326) lt!2423236)))

(declare-fun bs!1711647 () Bool)

(assert (= bs!1711647 d!2083827))

(declare-fun m!7414706 () Bool)

(assert (=> bs!1711647 m!7414706))

(declare-fun m!7414708 () Bool)

(assert (=> bs!1711647 m!7414708))

(declare-fun m!7414710 () Bool)

(assert (=> bs!1711647 m!7414710))

(assert (=> bs!1711647 m!7414710))

(declare-fun m!7414712 () Bool)

(assert (=> bs!1711647 m!7414712))

(declare-fun m!7414716 () Bool)

(assert (=> bs!1711647 m!7414716))

(assert (=> bs!1711647 m!7413412))

(assert (=> bs!1711647 m!7413412))

(assert (=> bs!1711647 m!7414706))

(assert (=> b!6647657 d!2083827))

(declare-fun b!6648644 () Bool)

(declare-fun res!2724323 () Bool)

(declare-fun e!4020292 () Bool)

(assert (=> b!6648644 (=> res!2724323 e!4020292)))

(assert (=> b!6648644 (= res!2724323 (not (isEmpty!38018 (tail!12548 s!2326))))))

(declare-fun b!6648645 () Bool)

(declare-fun e!4020293 () Bool)

(declare-fun lt!2423237 () Bool)

(declare-fun call!586607 () Bool)

(assert (=> b!6648645 (= e!4020293 (= lt!2423237 call!586607))))

(declare-fun b!6648647 () Bool)

(declare-fun e!4020294 () Bool)

(assert (=> b!6648647 (= e!4020293 e!4020294)))

(declare-fun c!1227038 () Bool)

(assert (=> b!6648647 (= c!1227038 ((_ is EmptyLang!16511) lt!2422853))))

(declare-fun b!6648648 () Bool)

(declare-fun e!4020297 () Bool)

(assert (=> b!6648648 (= e!4020297 (nullable!6504 lt!2422853))))

(declare-fun b!6648649 () Bool)

(declare-fun res!2724320 () Bool)

(declare-fun e!4020298 () Bool)

(assert (=> b!6648649 (=> res!2724320 e!4020298)))

(declare-fun e!4020295 () Bool)

(assert (=> b!6648649 (= res!2724320 e!4020295)))

(declare-fun res!2724325 () Bool)

(assert (=> b!6648649 (=> (not res!2724325) (not e!4020295))))

(assert (=> b!6648649 (= res!2724325 lt!2423237)))

(declare-fun b!6648650 () Bool)

(assert (=> b!6648650 (= e!4020292 (not (= (head!13463 s!2326) (c!1226759 lt!2422853))))))

(declare-fun b!6648651 () Bool)

(declare-fun e!4020296 () Bool)

(assert (=> b!6648651 (= e!4020298 e!4020296)))

(declare-fun res!2724326 () Bool)

(assert (=> b!6648651 (=> (not res!2724326) (not e!4020296))))

(assert (=> b!6648651 (= res!2724326 (not lt!2423237))))

(declare-fun b!6648652 () Bool)

(assert (=> b!6648652 (= e!4020295 (= (head!13463 s!2326) (c!1226759 lt!2422853)))))

(declare-fun bm!586602 () Bool)

(assert (=> bm!586602 (= call!586607 (isEmpty!38018 s!2326))))

(declare-fun b!6648653 () Bool)

(assert (=> b!6648653 (= e!4020294 (not lt!2423237))))

(declare-fun b!6648654 () Bool)

(declare-fun res!2724322 () Bool)

(assert (=> b!6648654 (=> (not res!2724322) (not e!4020295))))

(assert (=> b!6648654 (= res!2724322 (not call!586607))))

(declare-fun b!6648655 () Bool)

(declare-fun res!2724319 () Bool)

(assert (=> b!6648655 (=> res!2724319 e!4020298)))

(assert (=> b!6648655 (= res!2724319 (not ((_ is ElementMatch!16511) lt!2422853)))))

(assert (=> b!6648655 (= e!4020294 e!4020298)))

(declare-fun b!6648656 () Bool)

(declare-fun res!2724324 () Bool)

(assert (=> b!6648656 (=> (not res!2724324) (not e!4020295))))

(assert (=> b!6648656 (= res!2724324 (isEmpty!38018 (tail!12548 s!2326)))))

(declare-fun b!6648657 () Bool)

(assert (=> b!6648657 (= e!4020297 (matchR!8694 (derivativeStep!5190 lt!2422853 (head!13463 s!2326)) (tail!12548 s!2326)))))

(declare-fun d!2083835 () Bool)

(assert (=> d!2083835 e!4020293))

(declare-fun c!1227040 () Bool)

(assert (=> d!2083835 (= c!1227040 ((_ is EmptyExpr!16511) lt!2422853))))

(assert (=> d!2083835 (= lt!2423237 e!4020297)))

(declare-fun c!1227039 () Bool)

(assert (=> d!2083835 (= c!1227039 (isEmpty!38018 s!2326))))

(assert (=> d!2083835 (validRegex!8247 lt!2422853)))

(assert (=> d!2083835 (= (matchR!8694 lt!2422853 s!2326) lt!2423237)))

(declare-fun b!6648646 () Bool)

(assert (=> b!6648646 (= e!4020296 e!4020292)))

(declare-fun res!2724321 () Bool)

(assert (=> b!6648646 (=> res!2724321 e!4020292)))

(assert (=> b!6648646 (= res!2724321 call!586607)))

(assert (= (and d!2083835 c!1227039) b!6648648))

(assert (= (and d!2083835 (not c!1227039)) b!6648657))

(assert (= (and d!2083835 c!1227040) b!6648645))

(assert (= (and d!2083835 (not c!1227040)) b!6648647))

(assert (= (and b!6648647 c!1227038) b!6648653))

(assert (= (and b!6648647 (not c!1227038)) b!6648655))

(assert (= (and b!6648655 (not res!2724319)) b!6648649))

(assert (= (and b!6648649 res!2724325) b!6648654))

(assert (= (and b!6648654 res!2724322) b!6648656))

(assert (= (and b!6648656 res!2724324) b!6648652))

(assert (= (and b!6648649 (not res!2724320)) b!6648651))

(assert (= (and b!6648651 res!2724326) b!6648646))

(assert (= (and b!6648646 (not res!2724321)) b!6648644))

(assert (= (and b!6648644 (not res!2724323)) b!6648650))

(assert (= (or b!6648645 b!6648646 b!6648654) bm!586602))

(assert (=> b!6648657 m!7413668))

(assert (=> b!6648657 m!7413668))

(declare-fun m!7414732 () Bool)

(assert (=> b!6648657 m!7414732))

(assert (=> b!6648657 m!7413672))

(assert (=> b!6648657 m!7414732))

(assert (=> b!6648657 m!7413672))

(declare-fun m!7414734 () Bool)

(assert (=> b!6648657 m!7414734))

(assert (=> b!6648656 m!7413672))

(assert (=> b!6648656 m!7413672))

(assert (=> b!6648656 m!7413676))

(assert (=> b!6648644 m!7413672))

(assert (=> b!6648644 m!7413672))

(assert (=> b!6648644 m!7413676))

(declare-fun m!7414736 () Bool)

(assert (=> b!6648648 m!7414736))

(assert (=> b!6648652 m!7413668))

(assert (=> bm!586602 m!7413638))

(assert (=> d!2083835 m!7413638))

(declare-fun m!7414738 () Bool)

(assert (=> d!2083835 m!7414738))

(assert (=> b!6648650 m!7413668))

(assert (=> b!6647657 d!2083835))

(declare-fun d!2083843 () Bool)

(declare-fun dynLambda!26181 (Int Context!11790) Context!11790)

(assert (=> d!2083843 (= (map!15015 lt!2422849 lambda!371945) (store ((as const (Array Context!11790 Bool)) false) (dynLambda!26181 lambda!371945 lt!2423023) true))))

(declare-fun lt!2423245 () Unit!159453)

(declare-fun choose!49712 ((InoxSet Context!11790) Context!11790 Int) Unit!159453)

(assert (=> d!2083843 (= lt!2423245 (choose!49712 lt!2422849 lt!2423023 lambda!371945))))

(assert (=> d!2083843 (= lt!2422849 (store ((as const (Array Context!11790 Bool)) false) lt!2423023 true))))

(assert (=> d!2083843 (= (lemmaMapOnSingletonSet!234 lt!2422849 lt!2423023 lambda!371945) lt!2423245)))

(declare-fun b_lambda!251105 () Bool)

(assert (=> (not b_lambda!251105) (not d!2083843)))

(declare-fun bs!1711654 () Bool)

(assert (= bs!1711654 d!2083843))

(declare-fun m!7414758 () Bool)

(assert (=> bs!1711654 m!7414758))

(assert (=> bs!1711654 m!7413410))

(assert (=> bs!1711654 m!7413326))

(declare-fun m!7414760 () Bool)

(assert (=> bs!1711654 m!7414760))

(declare-fun m!7414762 () Bool)

(assert (=> bs!1711654 m!7414762))

(assert (=> bs!1711654 m!7414760))

(assert (=> b!6647657 d!2083843))

(declare-fun b!6648685 () Bool)

(declare-fun e!4020317 () Option!16402)

(assert (=> b!6648685 (= e!4020317 None!16401)))

(declare-fun b!6648686 () Bool)

(declare-fun e!4020316 () Bool)

(declare-fun lt!2423255 () Option!16402)

(assert (=> b!6648686 (= e!4020316 (= (++!14664 (_1!36793 (get!22848 lt!2423255)) (_2!36793 (get!22848 lt!2423255))) s!2326))))

(declare-fun b!6648687 () Bool)

(declare-fun res!2724342 () Bool)

(assert (=> b!6648687 (=> (not res!2724342) (not e!4020316))))

(assert (=> b!6648687 (= res!2724342 (matchZipper!2523 lt!2422923 (_2!36793 (get!22848 lt!2423255))))))

(declare-fun b!6648688 () Bool)

(declare-fun e!4020314 () Option!16402)

(assert (=> b!6648688 (= e!4020314 (Some!16401 (tuple2!66981 Nil!65708 s!2326)))))

(declare-fun b!6648689 () Bool)

(declare-fun res!2724345 () Bool)

(assert (=> b!6648689 (=> (not res!2724345) (not e!4020316))))

(assert (=> b!6648689 (= res!2724345 (matchZipper!2523 lt!2422849 (_1!36793 (get!22848 lt!2423255))))))

(declare-fun b!6648691 () Bool)

(declare-fun lt!2423256 () Unit!159453)

(declare-fun lt!2423257 () Unit!159453)

(assert (=> b!6648691 (= lt!2423256 lt!2423257)))

(assert (=> b!6648691 (= (++!14664 (++!14664 Nil!65708 (Cons!65708 (h!72156 s!2326) Nil!65708)) (t!379501 s!2326)) s!2326)))

(assert (=> b!6648691 (= lt!2423257 (lemmaMoveElementToOtherListKeepsConcatEq!2649 Nil!65708 (h!72156 s!2326) (t!379501 s!2326) s!2326))))

(assert (=> b!6648691 (= e!4020317 (findConcatSeparationZippers!216 lt!2422849 lt!2422923 (++!14664 Nil!65708 (Cons!65708 (h!72156 s!2326) Nil!65708)) (t!379501 s!2326) s!2326))))

(declare-fun b!6648692 () Bool)

(declare-fun e!4020315 () Bool)

(assert (=> b!6648692 (= e!4020315 (matchZipper!2523 lt!2422923 s!2326))))

(declare-fun b!6648693 () Bool)

(assert (=> b!6648693 (= e!4020314 e!4020317)))

(declare-fun c!1227048 () Bool)

(assert (=> b!6648693 (= c!1227048 ((_ is Nil!65708) s!2326))))

(declare-fun d!2083847 () Bool)

(declare-fun e!4020318 () Bool)

(assert (=> d!2083847 e!4020318))

(declare-fun res!2724344 () Bool)

(assert (=> d!2083847 (=> res!2724344 e!4020318)))

(assert (=> d!2083847 (= res!2724344 e!4020316)))

(declare-fun res!2724346 () Bool)

(assert (=> d!2083847 (=> (not res!2724346) (not e!4020316))))

(assert (=> d!2083847 (= res!2724346 (isDefined!13105 lt!2423255))))

(assert (=> d!2083847 (= lt!2423255 e!4020314)))

(declare-fun c!1227047 () Bool)

(assert (=> d!2083847 (= c!1227047 e!4020315)))

(declare-fun res!2724343 () Bool)

(assert (=> d!2083847 (=> (not res!2724343) (not e!4020315))))

(assert (=> d!2083847 (= res!2724343 (matchZipper!2523 lt!2422849 Nil!65708))))

(assert (=> d!2083847 (= (++!14664 Nil!65708 s!2326) s!2326)))

(assert (=> d!2083847 (= (findConcatSeparationZippers!216 lt!2422849 lt!2422923 Nil!65708 s!2326 s!2326) lt!2423255)))

(declare-fun b!6648690 () Bool)

(assert (=> b!6648690 (= e!4020318 (not (isDefined!13105 lt!2423255)))))

(assert (= (and d!2083847 res!2724343) b!6648692))

(assert (= (and d!2083847 c!1227047) b!6648688))

(assert (= (and d!2083847 (not c!1227047)) b!6648693))

(assert (= (and b!6648693 c!1227048) b!6648685))

(assert (= (and b!6648693 (not c!1227048)) b!6648691))

(assert (= (and d!2083847 res!2724346) b!6648689))

(assert (= (and b!6648689 res!2724345) b!6648687))

(assert (= (and b!6648687 res!2724342) b!6648686))

(assert (= (and d!2083847 (not res!2724344)) b!6648690))

(assert (=> b!6648691 m!7413914))

(assert (=> b!6648691 m!7413914))

(assert (=> b!6648691 m!7413916))

(assert (=> b!6648691 m!7413918))

(assert (=> b!6648691 m!7413914))

(declare-fun m!7414784 () Bool)

(assert (=> b!6648691 m!7414784))

(declare-fun m!7414786 () Bool)

(assert (=> d!2083847 m!7414786))

(declare-fun m!7414788 () Bool)

(assert (=> d!2083847 m!7414788))

(declare-fun m!7414790 () Bool)

(assert (=> d!2083847 m!7414790))

(declare-fun m!7414792 () Bool)

(assert (=> b!6648692 m!7414792))

(declare-fun m!7414794 () Bool)

(assert (=> b!6648689 m!7414794))

(declare-fun m!7414796 () Bool)

(assert (=> b!6648689 m!7414796))

(assert (=> b!6648686 m!7414794))

(declare-fun m!7414798 () Bool)

(assert (=> b!6648686 m!7414798))

(assert (=> b!6648690 m!7414786))

(assert (=> b!6648687 m!7414794))

(declare-fun m!7414800 () Bool)

(assert (=> b!6648687 m!7414800))

(assert (=> b!6647657 d!2083847))

(declare-fun d!2083859 () Bool)

(declare-fun choose!49713 ((InoxSet Context!11790) Int) (InoxSet Context!11790))

(assert (=> d!2083859 (= (map!15015 lt!2422849 lambda!371945) (choose!49713 lt!2422849 lambda!371945))))

(declare-fun bs!1711685 () Bool)

(assert (= bs!1711685 d!2083859))

(declare-fun m!7414802 () Bool)

(assert (=> bs!1711685 m!7414802))

(assert (=> b!6647657 d!2083859))

(declare-fun d!2083861 () Bool)

(assert (=> d!2083861 (= (flatMap!2016 lt!2423029 lambda!371930) (choose!49701 lt!2423029 lambda!371930))))

(declare-fun bs!1711686 () Bool)

(assert (= bs!1711686 d!2083861))

(declare-fun m!7414804 () Bool)

(assert (=> bs!1711686 m!7414804))

(assert (=> b!6647671 d!2083861))

(declare-fun d!2083863 () Bool)

(assert (=> d!2083863 (= (nullable!6504 (h!72157 (exprs!6395 (h!72158 zl!343)))) (nullableFct!2426 (h!72157 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun bs!1711687 () Bool)

(assert (= bs!1711687 d!2083863))

(declare-fun m!7414806 () Bool)

(assert (=> bs!1711687 m!7414806))

(assert (=> b!6647671 d!2083863))

(declare-fun bm!586603 () Bool)

(declare-fun call!586608 () (InoxSet Context!11790))

(assert (=> bm!586603 (= call!586608 (derivationStepZipperDown!1759 (h!72157 (exprs!6395 (Context!11791 (Cons!65709 (h!72157 (exprs!6395 (h!72158 zl!343))) (t!379502 (exprs!6395 (h!72158 zl!343))))))) (Context!11791 (t!379502 (exprs!6395 (Context!11791 (Cons!65709 (h!72157 (exprs!6395 (h!72158 zl!343))) (t!379502 (exprs!6395 (h!72158 zl!343)))))))) (h!72156 s!2326)))))

(declare-fun b!6648694 () Bool)

(declare-fun e!4020320 () Bool)

(assert (=> b!6648694 (= e!4020320 (nullable!6504 (h!72157 (exprs!6395 (Context!11791 (Cons!65709 (h!72157 (exprs!6395 (h!72158 zl!343))) (t!379502 (exprs!6395 (h!72158 zl!343)))))))))))

(declare-fun b!6648695 () Bool)

(declare-fun e!4020319 () (InoxSet Context!11790))

(declare-fun e!4020321 () (InoxSet Context!11790))

(assert (=> b!6648695 (= e!4020319 e!4020321)))

(declare-fun c!1227050 () Bool)

(assert (=> b!6648695 (= c!1227050 ((_ is Cons!65709) (exprs!6395 (Context!11791 (Cons!65709 (h!72157 (exprs!6395 (h!72158 zl!343))) (t!379502 (exprs!6395 (h!72158 zl!343))))))))))

(declare-fun b!6648696 () Bool)

(assert (=> b!6648696 (= e!4020321 ((as const (Array Context!11790 Bool)) false))))

(declare-fun d!2083865 () Bool)

(declare-fun c!1227049 () Bool)

(assert (=> d!2083865 (= c!1227049 e!4020320)))

(declare-fun res!2724347 () Bool)

(assert (=> d!2083865 (=> (not res!2724347) (not e!4020320))))

(assert (=> d!2083865 (= res!2724347 ((_ is Cons!65709) (exprs!6395 (Context!11791 (Cons!65709 (h!72157 (exprs!6395 (h!72158 zl!343))) (t!379502 (exprs!6395 (h!72158 zl!343))))))))))

(assert (=> d!2083865 (= (derivationStepZipperUp!1685 (Context!11791 (Cons!65709 (h!72157 (exprs!6395 (h!72158 zl!343))) (t!379502 (exprs!6395 (h!72158 zl!343))))) (h!72156 s!2326)) e!4020319)))

(declare-fun b!6648697 () Bool)

(assert (=> b!6648697 (= e!4020321 call!586608)))

(declare-fun b!6648698 () Bool)

(assert (=> b!6648698 (= e!4020319 ((_ map or) call!586608 (derivationStepZipperUp!1685 (Context!11791 (t!379502 (exprs!6395 (Context!11791 (Cons!65709 (h!72157 (exprs!6395 (h!72158 zl!343))) (t!379502 (exprs!6395 (h!72158 zl!343)))))))) (h!72156 s!2326))))))

(assert (= (and d!2083865 res!2724347) b!6648694))

(assert (= (and d!2083865 c!1227049) b!6648698))

(assert (= (and d!2083865 (not c!1227049)) b!6648695))

(assert (= (and b!6648695 c!1227050) b!6648697))

(assert (= (and b!6648695 (not c!1227050)) b!6648696))

(assert (= (or b!6648698 b!6648697) bm!586603))

(declare-fun m!7414808 () Bool)

(assert (=> bm!586603 m!7414808))

(declare-fun m!7414810 () Bool)

(assert (=> b!6648694 m!7414810))

(declare-fun m!7414812 () Bool)

(assert (=> b!6648698 m!7414812))

(assert (=> b!6647671 d!2083865))

(declare-fun bm!586604 () Bool)

(declare-fun call!586609 () (InoxSet Context!11790))

(assert (=> bm!586604 (= call!586609 (derivationStepZipperDown!1759 (h!72157 (exprs!6395 (h!72158 zl!343))) (Context!11791 (t!379502 (exprs!6395 (h!72158 zl!343)))) (h!72156 s!2326)))))

(declare-fun b!6648699 () Bool)

(declare-fun e!4020323 () Bool)

(assert (=> b!6648699 (= e!4020323 (nullable!6504 (h!72157 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun b!6648700 () Bool)

(declare-fun e!4020322 () (InoxSet Context!11790))

(declare-fun e!4020324 () (InoxSet Context!11790))

(assert (=> b!6648700 (= e!4020322 e!4020324)))

(declare-fun c!1227052 () Bool)

(assert (=> b!6648700 (= c!1227052 ((_ is Cons!65709) (exprs!6395 (h!72158 zl!343))))))

(declare-fun b!6648701 () Bool)

(assert (=> b!6648701 (= e!4020324 ((as const (Array Context!11790 Bool)) false))))

(declare-fun d!2083867 () Bool)

(declare-fun c!1227051 () Bool)

(assert (=> d!2083867 (= c!1227051 e!4020323)))

(declare-fun res!2724348 () Bool)

(assert (=> d!2083867 (=> (not res!2724348) (not e!4020323))))

(assert (=> d!2083867 (= res!2724348 ((_ is Cons!65709) (exprs!6395 (h!72158 zl!343))))))

(assert (=> d!2083867 (= (derivationStepZipperUp!1685 (h!72158 zl!343) (h!72156 s!2326)) e!4020322)))

(declare-fun b!6648702 () Bool)

(assert (=> b!6648702 (= e!4020324 call!586609)))

(declare-fun b!6648703 () Bool)

(assert (=> b!6648703 (= e!4020322 ((_ map or) call!586609 (derivationStepZipperUp!1685 (Context!11791 (t!379502 (exprs!6395 (h!72158 zl!343)))) (h!72156 s!2326))))))

(assert (= (and d!2083867 res!2724348) b!6648699))

(assert (= (and d!2083867 c!1227051) b!6648703))

(assert (= (and d!2083867 (not c!1227051)) b!6648700))

(assert (= (and b!6648700 c!1227052) b!6648702))

(assert (= (and b!6648700 (not c!1227052)) b!6648701))

(assert (= (or b!6648703 b!6648702) bm!586604))

(declare-fun m!7414814 () Bool)

(assert (=> bm!586604 m!7414814))

(assert (=> b!6648699 m!7413430))

(declare-fun m!7414816 () Bool)

(assert (=> b!6648703 m!7414816))

(assert (=> b!6647671 d!2083867))

(declare-fun bm!586605 () Bool)

(declare-fun call!586610 () (InoxSet Context!11790))

(assert (=> bm!586605 (= call!586610 (derivationStepZipperDown!1759 (h!72157 (exprs!6395 lt!2423045)) (Context!11791 (t!379502 (exprs!6395 lt!2423045))) (h!72156 s!2326)))))

(declare-fun b!6648704 () Bool)

(declare-fun e!4020326 () Bool)

(assert (=> b!6648704 (= e!4020326 (nullable!6504 (h!72157 (exprs!6395 lt!2423045))))))

(declare-fun b!6648705 () Bool)

(declare-fun e!4020325 () (InoxSet Context!11790))

(declare-fun e!4020327 () (InoxSet Context!11790))

(assert (=> b!6648705 (= e!4020325 e!4020327)))

(declare-fun c!1227054 () Bool)

(assert (=> b!6648705 (= c!1227054 ((_ is Cons!65709) (exprs!6395 lt!2423045)))))

(declare-fun b!6648706 () Bool)

(assert (=> b!6648706 (= e!4020327 ((as const (Array Context!11790 Bool)) false))))

(declare-fun d!2083869 () Bool)

(declare-fun c!1227053 () Bool)

(assert (=> d!2083869 (= c!1227053 e!4020326)))

(declare-fun res!2724349 () Bool)

(assert (=> d!2083869 (=> (not res!2724349) (not e!4020326))))

(assert (=> d!2083869 (= res!2724349 ((_ is Cons!65709) (exprs!6395 lt!2423045)))))

(assert (=> d!2083869 (= (derivationStepZipperUp!1685 lt!2423045 (h!72156 s!2326)) e!4020325)))

(declare-fun b!6648707 () Bool)

(assert (=> b!6648707 (= e!4020327 call!586610)))

(declare-fun b!6648708 () Bool)

(assert (=> b!6648708 (= e!4020325 ((_ map or) call!586610 (derivationStepZipperUp!1685 (Context!11791 (t!379502 (exprs!6395 lt!2423045))) (h!72156 s!2326))))))

(assert (= (and d!2083869 res!2724349) b!6648704))

(assert (= (and d!2083869 c!1227053) b!6648708))

(assert (= (and d!2083869 (not c!1227053)) b!6648705))

(assert (= (and b!6648705 c!1227054) b!6648707))

(assert (= (and b!6648705 (not c!1227054)) b!6648706))

(assert (= (or b!6648708 b!6648707) bm!586605))

(declare-fun m!7414818 () Bool)

(assert (=> bm!586605 m!7414818))

(declare-fun m!7414820 () Bool)

(assert (=> b!6648704 m!7414820))

(declare-fun m!7414822 () Bool)

(assert (=> b!6648708 m!7414822))

(assert (=> b!6647671 d!2083869))

(declare-fun bs!1711688 () Bool)

(declare-fun d!2083871 () Bool)

(assert (= bs!1711688 (and d!2083871 b!6647671)))

(declare-fun lambda!372042 () Int)

(assert (=> bs!1711688 (= lambda!372042 lambda!371930)))

(assert (=> d!2083871 true))

(assert (=> d!2083871 (= (derivationStepZipper!2477 lt!2423029 (h!72156 s!2326)) (flatMap!2016 lt!2423029 lambda!372042))))

(declare-fun bs!1711689 () Bool)

(assert (= bs!1711689 d!2083871))

(declare-fun m!7414824 () Bool)

(assert (=> bs!1711689 m!7414824))

(assert (=> b!6647671 d!2083871))

(declare-fun b!6648711 () Bool)

(declare-fun e!4020333 () (InoxSet Context!11790))

(declare-fun call!586611 () (InoxSet Context!11790))

(declare-fun call!586616 () (InoxSet Context!11790))

(assert (=> b!6648711 (= e!4020333 ((_ map or) call!586611 call!586616))))

(declare-fun b!6648712 () Bool)

(declare-fun e!4020332 () (InoxSet Context!11790))

(assert (=> b!6648712 (= e!4020332 ((as const (Array Context!11790 Bool)) false))))

(declare-fun bm!586606 () Bool)

(declare-fun call!586613 () (InoxSet Context!11790))

(assert (=> bm!586606 (= call!586616 call!586613)))

(declare-fun b!6648713 () Bool)

(declare-fun c!1227059 () Bool)

(assert (=> b!6648713 (= c!1227059 ((_ is Star!16511) (h!72157 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun e!4020329 () (InoxSet Context!11790))

(assert (=> b!6648713 (= e!4020329 e!4020332)))

(declare-fun bm!586607 () Bool)

(declare-fun call!586612 () (InoxSet Context!11790))

(assert (=> bm!586607 (= call!586612 call!586616)))

(declare-fun b!6648714 () Bool)

(declare-fun e!4020328 () (InoxSet Context!11790))

(assert (=> b!6648714 (= e!4020328 ((_ map or) call!586613 call!586611))))

(declare-fun bm!586608 () Bool)

(declare-fun call!586615 () List!65833)

(declare-fun call!586614 () List!65833)

(assert (=> bm!586608 (= call!586615 call!586614)))

(declare-fun d!2083873 () Bool)

(declare-fun c!1227057 () Bool)

(assert (=> d!2083873 (= c!1227057 (and ((_ is ElementMatch!16511) (h!72157 (exprs!6395 (h!72158 zl!343)))) (= (c!1226759 (h!72157 (exprs!6395 (h!72158 zl!343)))) (h!72156 s!2326))))))

(declare-fun e!4020331 () (InoxSet Context!11790))

(assert (=> d!2083873 (= (derivationStepZipperDown!1759 (h!72157 (exprs!6395 (h!72158 zl!343))) lt!2423045 (h!72156 s!2326)) e!4020331)))

(declare-fun c!1227058 () Bool)

(declare-fun bm!586609 () Bool)

(declare-fun c!1227060 () Bool)

(assert (=> bm!586609 (= call!586614 ($colon$colon!2347 (exprs!6395 lt!2423045) (ite (or c!1227060 c!1227058) (regTwo!33534 (h!72157 (exprs!6395 (h!72158 zl!343)))) (h!72157 (exprs!6395 (h!72158 zl!343))))))))

(declare-fun bm!586610 () Bool)

(declare-fun c!1227061 () Bool)

(assert (=> bm!586610 (= call!586613 (derivationStepZipperDown!1759 (ite c!1227061 (regOne!33535 (h!72157 (exprs!6395 (h!72158 zl!343)))) (ite c!1227060 (regTwo!33534 (h!72157 (exprs!6395 (h!72158 zl!343)))) (ite c!1227058 (regOne!33534 (h!72157 (exprs!6395 (h!72158 zl!343)))) (reg!16840 (h!72157 (exprs!6395 (h!72158 zl!343))))))) (ite (or c!1227061 c!1227060) lt!2423045 (Context!11791 call!586615)) (h!72156 s!2326)))))

(declare-fun b!6648715 () Bool)

(assert (=> b!6648715 (= e!4020333 e!4020329)))

(assert (=> b!6648715 (= c!1227058 ((_ is Concat!25356) (h!72157 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun bm!586611 () Bool)

(assert (=> bm!586611 (= call!586611 (derivationStepZipperDown!1759 (ite c!1227061 (regTwo!33535 (h!72157 (exprs!6395 (h!72158 zl!343)))) (regOne!33534 (h!72157 (exprs!6395 (h!72158 zl!343))))) (ite c!1227061 lt!2423045 (Context!11791 call!586614)) (h!72156 s!2326)))))

(declare-fun b!6648716 () Bool)

(declare-fun e!4020330 () Bool)

(assert (=> b!6648716 (= c!1227060 e!4020330)))

(declare-fun res!2724350 () Bool)

(assert (=> b!6648716 (=> (not res!2724350) (not e!4020330))))

(assert (=> b!6648716 (= res!2724350 ((_ is Concat!25356) (h!72157 (exprs!6395 (h!72158 zl!343)))))))

(assert (=> b!6648716 (= e!4020328 e!4020333)))

(declare-fun b!6648717 () Bool)

(assert (=> b!6648717 (= e!4020330 (nullable!6504 (regOne!33534 (h!72157 (exprs!6395 (h!72158 zl!343))))))))

(declare-fun b!6648718 () Bool)

(assert (=> b!6648718 (= e!4020331 (store ((as const (Array Context!11790 Bool)) false) lt!2423045 true))))

(declare-fun b!6648719 () Bool)

(assert (=> b!6648719 (= e!4020329 call!586612)))

(declare-fun b!6648720 () Bool)

(assert (=> b!6648720 (= e!4020331 e!4020328)))

(assert (=> b!6648720 (= c!1227061 ((_ is Union!16511) (h!72157 (exprs!6395 (h!72158 zl!343)))))))

(declare-fun b!6648721 () Bool)

(assert (=> b!6648721 (= e!4020332 call!586612)))

(assert (= (and d!2083873 c!1227057) b!6648718))

(assert (= (and d!2083873 (not c!1227057)) b!6648720))

(assert (= (and b!6648720 c!1227061) b!6648714))

(assert (= (and b!6648720 (not c!1227061)) b!6648716))

(assert (= (and b!6648716 res!2724350) b!6648717))

(assert (= (and b!6648716 c!1227060) b!6648711))

(assert (= (and b!6648716 (not c!1227060)) b!6648715))

(assert (= (and b!6648715 c!1227058) b!6648719))

(assert (= (and b!6648715 (not c!1227058)) b!6648713))

(assert (= (and b!6648713 c!1227059) b!6648721))

(assert (= (and b!6648713 (not c!1227059)) b!6648712))

(assert (= (or b!6648719 b!6648721) bm!586608))

(assert (= (or b!6648719 b!6648721) bm!586607))

(assert (= (or b!6648711 bm!586608) bm!586609))

(assert (= (or b!6648711 bm!586607) bm!586606))

(assert (= (or b!6648714 b!6648711) bm!586611))

(assert (= (or b!6648714 bm!586606) bm!586610))

(declare-fun m!7414836 () Bool)

(assert (=> bm!586611 m!7414836))

(declare-fun m!7414838 () Bool)

(assert (=> bm!586610 m!7414838))

(assert (=> b!6648718 m!7413216))

(declare-fun m!7414840 () Bool)

(assert (=> bm!586609 m!7414840))

(declare-fun m!7414842 () Bool)

(assert (=> b!6648717 m!7414842))

(assert (=> b!6647671 d!2083873))

(declare-fun d!2083877 () Bool)

(assert (=> d!2083877 (= (flatMap!2016 z!1189 lambda!371930) (choose!49701 z!1189 lambda!371930))))

(declare-fun bs!1711691 () Bool)

(assert (= bs!1711691 d!2083877))

(declare-fun m!7414848 () Bool)

(assert (=> bs!1711691 m!7414848))

(assert (=> b!6647671 d!2083877))

(declare-fun d!2083879 () Bool)

(assert (=> d!2083879 (= (flatMap!2016 z!1189 lambda!371930) (dynLambda!26178 lambda!371930 (h!72158 zl!343)))))

(declare-fun lt!2423263 () Unit!159453)

(assert (=> d!2083879 (= lt!2423263 (choose!49680 z!1189 (h!72158 zl!343) lambda!371930))))

(assert (=> d!2083879 (= z!1189 (store ((as const (Array Context!11790 Bool)) false) (h!72158 zl!343) true))))

(assert (=> d!2083879 (= (lemmaFlatMapOnSingletonSet!1542 z!1189 (h!72158 zl!343) lambda!371930) lt!2423263)))

(declare-fun b_lambda!251109 () Bool)

(assert (=> (not b_lambda!251109) (not d!2083879)))

(declare-fun bs!1711692 () Bool)

(assert (= bs!1711692 d!2083879))

(assert (=> bs!1711692 m!7413422))

(declare-fun m!7414860 () Bool)

(assert (=> bs!1711692 m!7414860))

(declare-fun m!7414862 () Bool)

(assert (=> bs!1711692 m!7414862))

(declare-fun m!7414864 () Bool)

(assert (=> bs!1711692 m!7414864))

(assert (=> b!6647671 d!2083879))

(declare-fun d!2083883 () Bool)

(assert (=> d!2083883 (= (flatMap!2016 lt!2423029 lambda!371930) (dynLambda!26178 lambda!371930 lt!2423045))))

(declare-fun lt!2423264 () Unit!159453)

(assert (=> d!2083883 (= lt!2423264 (choose!49680 lt!2423029 lt!2423045 lambda!371930))))

(assert (=> d!2083883 (= lt!2423029 (store ((as const (Array Context!11790 Bool)) false) lt!2423045 true))))

(assert (=> d!2083883 (= (lemmaFlatMapOnSingletonSet!1542 lt!2423029 lt!2423045 lambda!371930) lt!2423264)))

(declare-fun b_lambda!251111 () Bool)

(assert (=> (not b_lambda!251111) (not d!2083883)))

(declare-fun bs!1711693 () Bool)

(assert (= bs!1711693 d!2083883))

(assert (=> bs!1711693 m!7413436))

(declare-fun m!7414866 () Bool)

(assert (=> bs!1711693 m!7414866))

(declare-fun m!7414868 () Bool)

(assert (=> bs!1711693 m!7414868))

(assert (=> bs!1711693 m!7413216))

(assert (=> b!6647671 d!2083883))

(declare-fun d!2083885 () Bool)

(assert (=> d!2083885 (= (Exists!3581 (ite c!1226748 lambda!371932 (ite c!1226752 lambda!371943 (ite c!1226757 lambda!371947 lambda!371952)))) (choose!49681 (ite c!1226748 lambda!371932 (ite c!1226752 lambda!371943 (ite c!1226757 lambda!371947 lambda!371952)))))))

(declare-fun bs!1711694 () Bool)

(assert (= bs!1711694 d!2083885))

(declare-fun m!7414870 () Bool)

(assert (=> bs!1711694 m!7414870))

(assert (=> bm!586453 d!2083885))

(declare-fun b!6648736 () Bool)

(declare-fun e!4020338 () Bool)

(assert (=> b!6648736 (= e!4020338 tp_is_empty!42275)))

(declare-fun b!6648738 () Bool)

(declare-fun tp!1830587 () Bool)

(assert (=> b!6648738 (= e!4020338 tp!1830587)))

(declare-fun b!6648739 () Bool)

(declare-fun tp!1830585 () Bool)

(declare-fun tp!1830588 () Bool)

(assert (=> b!6648739 (= e!4020338 (and tp!1830585 tp!1830588))))

(assert (=> b!6647654 (= tp!1830567 e!4020338)))

(declare-fun b!6648737 () Bool)

(declare-fun tp!1830584 () Bool)

(declare-fun tp!1830586 () Bool)

(assert (=> b!6648737 (= e!4020338 (and tp!1830584 tp!1830586))))

(assert (= (and b!6647654 ((_ is ElementMatch!16511) (regOne!33535 r!7292))) b!6648736))

(assert (= (and b!6647654 ((_ is Concat!25356) (regOne!33535 r!7292))) b!6648737))

(assert (= (and b!6647654 ((_ is Star!16511) (regOne!33535 r!7292))) b!6648738))

(assert (= (and b!6647654 ((_ is Union!16511) (regOne!33535 r!7292))) b!6648739))

(declare-fun b!6648740 () Bool)

(declare-fun e!4020339 () Bool)

(assert (=> b!6648740 (= e!4020339 tp_is_empty!42275)))

(declare-fun b!6648742 () Bool)

(declare-fun tp!1830592 () Bool)

(assert (=> b!6648742 (= e!4020339 tp!1830592)))

(declare-fun b!6648743 () Bool)

(declare-fun tp!1830590 () Bool)

(declare-fun tp!1830593 () Bool)

(assert (=> b!6648743 (= e!4020339 (and tp!1830590 tp!1830593))))

(assert (=> b!6647654 (= tp!1830564 e!4020339)))

(declare-fun b!6648741 () Bool)

(declare-fun tp!1830589 () Bool)

(declare-fun tp!1830591 () Bool)

(assert (=> b!6648741 (= e!4020339 (and tp!1830589 tp!1830591))))

(assert (= (and b!6647654 ((_ is ElementMatch!16511) (regTwo!33535 r!7292))) b!6648740))

(assert (= (and b!6647654 ((_ is Concat!25356) (regTwo!33535 r!7292))) b!6648741))

(assert (= (and b!6647654 ((_ is Star!16511) (regTwo!33535 r!7292))) b!6648742))

(assert (= (and b!6647654 ((_ is Union!16511) (regTwo!33535 r!7292))) b!6648743))

(declare-fun b!6648751 () Bool)

(declare-fun e!4020345 () Bool)

(declare-fun tp!1830598 () Bool)

(assert (=> b!6648751 (= e!4020345 tp!1830598)))

(declare-fun b!6648750 () Bool)

(declare-fun e!4020344 () Bool)

(declare-fun tp!1830599 () Bool)

(assert (=> b!6648750 (= e!4020344 (and (inv!84524 (h!72158 (t!379503 zl!343))) e!4020345 tp!1830599))))

(assert (=> b!6647667 (= tp!1830566 e!4020344)))

(assert (= b!6648750 b!6648751))

(assert (= (and b!6647667 ((_ is Cons!65710) (t!379503 zl!343))) b!6648750))

(declare-fun m!7414872 () Bool)

(assert (=> b!6648750 m!7414872))

(declare-fun b!6648752 () Bool)

(declare-fun e!4020346 () Bool)

(assert (=> b!6648752 (= e!4020346 tp_is_empty!42275)))

(declare-fun b!6648754 () Bool)

(declare-fun tp!1830603 () Bool)

(assert (=> b!6648754 (= e!4020346 tp!1830603)))

(declare-fun b!6648755 () Bool)

(declare-fun tp!1830601 () Bool)

(declare-fun tp!1830604 () Bool)

(assert (=> b!6648755 (= e!4020346 (and tp!1830601 tp!1830604))))

(assert (=> b!6647679 (= tp!1830571 e!4020346)))

(declare-fun b!6648753 () Bool)

(declare-fun tp!1830600 () Bool)

(declare-fun tp!1830602 () Bool)

(assert (=> b!6648753 (= e!4020346 (and tp!1830600 tp!1830602))))

(assert (= (and b!6647679 ((_ is ElementMatch!16511) (reg!16840 r!7292))) b!6648752))

(assert (= (and b!6647679 ((_ is Concat!25356) (reg!16840 r!7292))) b!6648753))

(assert (= (and b!6647679 ((_ is Star!16511) (reg!16840 r!7292))) b!6648754))

(assert (= (and b!6647679 ((_ is Union!16511) (reg!16840 r!7292))) b!6648755))

(declare-fun b!6648760 () Bool)

(declare-fun e!4020349 () Bool)

(declare-fun tp!1830609 () Bool)

(declare-fun tp!1830610 () Bool)

(assert (=> b!6648760 (= e!4020349 (and tp!1830609 tp!1830610))))

(assert (=> b!6647638 (= tp!1830572 e!4020349)))

(assert (= (and b!6647638 ((_ is Cons!65709) (exprs!6395 setElem!45441))) b!6648760))

(declare-fun condSetEmpty!45444 () Bool)

(assert (=> setNonEmpty!45441 (= condSetEmpty!45444 (= setRest!45441 ((as const (Array Context!11790 Bool)) false)))))

(declare-fun setRes!45444 () Bool)

(assert (=> setNonEmpty!45441 (= tp!1830569 setRes!45444)))

(declare-fun setIsEmpty!45444 () Bool)

(assert (=> setIsEmpty!45444 setRes!45444))

(declare-fun setNonEmpty!45444 () Bool)

(declare-fun e!4020352 () Bool)

(declare-fun setElem!45444 () Context!11790)

(declare-fun tp!1830616 () Bool)

(assert (=> setNonEmpty!45444 (= setRes!45444 (and tp!1830616 (inv!84524 setElem!45444) e!4020352))))

(declare-fun setRest!45444 () (InoxSet Context!11790))

(assert (=> setNonEmpty!45444 (= setRest!45441 ((_ map or) (store ((as const (Array Context!11790 Bool)) false) setElem!45444 true) setRest!45444))))

(declare-fun b!6648765 () Bool)

(declare-fun tp!1830615 () Bool)

(assert (=> b!6648765 (= e!4020352 tp!1830615)))

(assert (= (and setNonEmpty!45441 condSetEmpty!45444) setIsEmpty!45444))

(assert (= (and setNonEmpty!45441 (not condSetEmpty!45444)) setNonEmpty!45444))

(assert (= setNonEmpty!45444 b!6648765))

(declare-fun m!7414874 () Bool)

(assert (=> setNonEmpty!45444 m!7414874))

(declare-fun b!6648766 () Bool)

(declare-fun e!4020353 () Bool)

(declare-fun tp!1830617 () Bool)

(declare-fun tp!1830618 () Bool)

(assert (=> b!6648766 (= e!4020353 (and tp!1830617 tp!1830618))))

(assert (=> b!6647674 (= tp!1830565 e!4020353)))

(assert (= (and b!6647674 ((_ is Cons!65709) (exprs!6395 (h!72158 zl!343)))) b!6648766))

(declare-fun b!6648771 () Bool)

(declare-fun e!4020356 () Bool)

(declare-fun tp!1830621 () Bool)

(assert (=> b!6648771 (= e!4020356 (and tp_is_empty!42275 tp!1830621))))

(assert (=> b!6647678 (= tp!1830568 e!4020356)))

(assert (= (and b!6647678 ((_ is Cons!65708) (t!379501 s!2326))) b!6648771))

(declare-fun b!6648772 () Bool)

(declare-fun e!4020357 () Bool)

(assert (=> b!6648772 (= e!4020357 tp_is_empty!42275)))

(declare-fun b!6648774 () Bool)

(declare-fun tp!1830625 () Bool)

(assert (=> b!6648774 (= e!4020357 tp!1830625)))

(declare-fun b!6648775 () Bool)

(declare-fun tp!1830623 () Bool)

(declare-fun tp!1830626 () Bool)

(assert (=> b!6648775 (= e!4020357 (and tp!1830623 tp!1830626))))

(assert (=> b!6647627 (= tp!1830570 e!4020357)))

(declare-fun b!6648773 () Bool)

(declare-fun tp!1830622 () Bool)

(declare-fun tp!1830624 () Bool)

(assert (=> b!6648773 (= e!4020357 (and tp!1830622 tp!1830624))))

(assert (= (and b!6647627 ((_ is ElementMatch!16511) (regOne!33534 r!7292))) b!6648772))

(assert (= (and b!6647627 ((_ is Concat!25356) (regOne!33534 r!7292))) b!6648773))

(assert (= (and b!6647627 ((_ is Star!16511) (regOne!33534 r!7292))) b!6648774))

(assert (= (and b!6647627 ((_ is Union!16511) (regOne!33534 r!7292))) b!6648775))

(declare-fun b!6648776 () Bool)

(declare-fun e!4020358 () Bool)

(assert (=> b!6648776 (= e!4020358 tp_is_empty!42275)))

(declare-fun b!6648778 () Bool)

(declare-fun tp!1830630 () Bool)

(assert (=> b!6648778 (= e!4020358 tp!1830630)))

(declare-fun b!6648779 () Bool)

(declare-fun tp!1830628 () Bool)

(declare-fun tp!1830631 () Bool)

(assert (=> b!6648779 (= e!4020358 (and tp!1830628 tp!1830631))))

(assert (=> b!6647627 (= tp!1830573 e!4020358)))

(declare-fun b!6648777 () Bool)

(declare-fun tp!1830627 () Bool)

(declare-fun tp!1830629 () Bool)

(assert (=> b!6648777 (= e!4020358 (and tp!1830627 tp!1830629))))

(assert (= (and b!6647627 ((_ is ElementMatch!16511) (regTwo!33534 r!7292))) b!6648776))

(assert (= (and b!6647627 ((_ is Concat!25356) (regTwo!33534 r!7292))) b!6648777))

(assert (= (and b!6647627 ((_ is Star!16511) (regTwo!33534 r!7292))) b!6648778))

(assert (= (and b!6647627 ((_ is Union!16511) (regTwo!33534 r!7292))) b!6648779))

(declare-fun b_lambda!251113 () Bool)

(assert (= b_lambda!251109 (or b!6647671 b_lambda!251113)))

(declare-fun bs!1711695 () Bool)

(declare-fun d!2083887 () Bool)

(assert (= bs!1711695 (and d!2083887 b!6647671)))

(assert (=> bs!1711695 (= (dynLambda!26178 lambda!371930 (h!72158 zl!343)) (derivationStepZipperUp!1685 (h!72158 zl!343) (h!72156 s!2326)))))

(assert (=> bs!1711695 m!7413424))

(assert (=> d!2083879 d!2083887))

(declare-fun b_lambda!251115 () Bool)

(assert (= b_lambda!251111 (or b!6647671 b_lambda!251115)))

(declare-fun bs!1711696 () Bool)

(declare-fun d!2083889 () Bool)

(assert (= bs!1711696 (and d!2083889 b!6647671)))

(assert (=> bs!1711696 (= (dynLambda!26178 lambda!371930 lt!2423045) (derivationStepZipperUp!1685 lt!2423045 (h!72156 s!2326)))))

(assert (=> bs!1711696 m!7413434))

(assert (=> d!2083883 d!2083889))

(declare-fun b_lambda!251117 () Bool)

(assert (= b_lambda!251105 (or b!6647657 b_lambda!251117)))

(declare-fun bs!1711697 () Bool)

(declare-fun d!2083891 () Bool)

(assert (= bs!1711697 (and d!2083891 b!6647657)))

(declare-fun lt!2423265 () Unit!159453)

(assert (=> bs!1711697 (= lt!2423265 (lemmaConcatPreservesForall!424 (exprs!6395 lt!2423023) lt!2422986 lambda!371946))))

(assert (=> bs!1711697 (= (dynLambda!26181 lambda!371945 lt!2423023) (Context!11791 (++!14665 (exprs!6395 lt!2423023) lt!2422986)))))

(declare-fun m!7414876 () Bool)

(assert (=> bs!1711697 m!7414876))

(declare-fun m!7414878 () Bool)

(assert (=> bs!1711697 m!7414878))

(assert (=> d!2083843 d!2083891))

(check-sat (not d!2083539) (not b!6648450) (not d!2083593) (not d!2083685) (not b!6648751) (not b!6648039) (not b!6647924) (not b!6647901) (not b!6648017) (not b!6648086) (not b!6648268) (not d!2083667) (not d!2083535) (not b!6648140) (not d!2083773) (not b!6647958) (not b!6648259) (not b!6648689) (not b!6648065) (not d!2083663) (not bm!586520) (not bm!586511) (not d!2083745) (not b!6648605) (not b!6647795) (not d!2083527) (not d!2083581) (not bm!586523) tp_is_empty!42275 (not b!6648755) (not d!2083655) (not b!6647884) (not b!6648110) (not d!2083863) (not b!6648463) (not b!6648135) (not b!6648738) (not d!2083765) (not b!6648588) (not bm!586586) (not d!2083771) (not b!6648279) (not b!6647920) (not bm!586603) (not b!6647706) (not b!6648698) (not b!6647974) (not d!2083589) (not d!2083565) (not b!6647843) (not b!6648742) (not b!6648234) (not b!6648444) (not b!6648717) (not d!2083615) (not d!2083805) (not d!2083635) (not setNonEmpty!45444) (not d!2083823) (not d!2083687) (not b!6648033) (not b!6648018) (not d!2083859) (not d!2083609) (not b!6648771) (not b!6648754) (not d!2083795) (not b!6647749) (not bm!586529) (not d!2083519) (not b!6647895) (not b!6648280) (not bm!586544) (not d!2083647) (not b!6648035) (not b!6648258) (not bm!586550) (not d!2083531) (not b!6648049) (not bm!586593) (not bm!586560) (not b!6648584) (not b!6647955) (not d!2083523) (not d!2083553) (not bm!586594) (not b!6647932) (not b!6647876) (not b!6648657) (not bm!586604) (not b!6648008) (not b!6648124) (not d!2083705) (not b!6648585) (not b!6648691) (not bm!586557) (not d!2083871) (not d!2083797) (not d!2083817) (not d!2083597) (not d!2083617) (not b!6648692) (not b!6648737) (not b!6648236) (not d!2083769) (not b!6648465) (not b!6648438) (not b!6648439) (not bm!586591) (not d!2083799) (not b!6648045) (not b!6648644) (not b!6648085) (not b!6648779) (not b!6648041) (not b!6647899) (not b!6648131) (not b!6647928) (not d!2083545) (not b!6648006) (not d!2083607) (not b!6648265) (not d!2083877) (not d!2083697) (not b!6647912) (not d!2083619) (not d!2083781) (not b!6648043) (not b!6648015) (not b!6648002) (not bm!586531) (not b!6648108) (not b!6648134) (not b!6648346) (not b!6648263) (not b!6648009) (not b!6648278) (not d!2083835) (not b!6647877) (not b!6648648) (not bs!1711697) (not d!2083827) (not d!2083749) (not b_lambda!251095) (not bm!586545) (not b!6648592) (not bm!586602) (not b!6647745) (not b!6648777) (not d!2083885) (not b!6648741) (not bm!586515) (not b!6647923) (not b!6648708) (not b!6648703) (not d!2083631) (not b!6647873) (not b!6648225) (not d!2083569) (not d!2083693) (not b!6648440) (not b!6648242) (not bm!586517) (not bm!586590) (not d!2083603) (not b!6648753) (not b!6648012) (not b!6648067) (not b!6648285) (not b!6647806) (not b!6647750) (not b!6648130) (not b!6647793) (not b!6648608) (not bm!586513) (not d!2083657) (not b!6648256) (not b!6648112) (not d!2083543) (not b!6648023) (not b!6648257) (not b!6648199) (not b!6647922) (not b!6648260) (not d!2083683) (not b!6647841) (not d!2083665) (not d!2083551) (not b!6648593) (not b!6647954) (not b!6648064) (not b!6648397) (not b!6648606) (not b!6648686) (not b!6648032) (not bm!586597) (not b!6647737) (not bm!586505) (not b!6648462) (not b!6648687) (not b_lambda!251113) (not bm!586611) (not b!6647875) (not b!6648775) (not b!6647878) (not d!2083613) (not b!6648381) (not b!6648138) (not b!6647916) (not d!2083557) (not b!6648616) (not b!6648058) (not bs!1711695) (not b!6648267) (not d!2083651) (not b!6648025) (not d!2083659) (not b!6648001) (not d!2083587) (not b!6648000) (not d!2083691) (not b!6647779) (not bm!586551) (not b!6648621) (not b!6648774) (not b!6648448) (not d!2083639) (not bm!586528) (not bs!1711696) (not b!6648117) (not b!6648766) (not d!2083713) (not bm!586592) (not b!6648586) (not b!6648380) (not b!6647921) (not b!6648034) (not bm!586504) (not b!6647896) (not b!6648016) (not b!6647937) (not bm!586522) (not d!2083843) (not d!2083721) (not b!6647799) (not b!6648342) (not d!2083695) (not b!6648004) (not bm!586605) (not b!6648014) (not b!6648245) (not d!2083819) (not bm!586502) (not b!6647908) (not b!6648614) (not d!2083727) (not d!2083599) (not bm!586510) (not bm!586521) (not b!6648699) (not d!2083621) (not b!6648235) (not d!2083729) (not b!6647914) (not b!6648037) (not bm!586585) (not b!6647741) (not b!6648044) (not d!2083575) (not d!2083629) (not d!2083861) (not d!2083741) (not d!2083533) (not b!6647786) (not d!2083847) (not b!6647805) (not d!2083529) (not b!6648590) (not bm!586503) (not b!6647787) (not b!6648778) (not b!6647800) (not b!6648051) (not b_lambda!251097) (not bm!586516) (not bm!586599) (not b!6647882) (not b_lambda!251117) (not b!6648620) (not b!6648743) (not b!6648690) (not b!6648704) (not b!6648283) (not b_lambda!251099) (not bm!586514) (not d!2083623) (not b!6648401) (not b_lambda!251093) (not d!2083783) (not b!6648019) (not b!6648652) (not d!2083679) (not b!6648061) (not b!6648612) (not d!2083541) (not b!6648027) (not b!6648656) (not d!2083627) (not b!6648104) (not b!6647791) (not b!6647743) (not b!6648650) (not d!2083583) (not b!6648031) (not d!2083563) (not b!6648395) (not bm!586587) (not bm!586512) (not b!6648765) (not b!6648240) (not b!6647936) (not b!6647707) (not bm!586552) (not b!6647879) (not bm!586610) (not b!6648200) (not bm!586527) (not b!6648773) (not b!6648464) (not b!6648760) (not d!2083751) (not b!6648446) (not b!6648274) (not d!2083521) (not b!6648243) (not d!2083577) (not d!2083879) (not b!6648066) (not b!6647930) (not d!2083611) (not b!6648244) (not b!6647973) (not b!6648394) (not b!6647852) (not b!6648379) (not b!6648238) (not b!6648133) (not b!6648063) (not d!2083747) (not d!2083883) (not bm!586486) (not d!2083779) (not d!2083585) (not b!6647969) (not d!2083763) (not b!6648057) (not d!2083649) (not d!2083595) (not b!6648116) (not b!6648694) (not b_lambda!251115) (not b!6648739) (not d!2083567) (not b!6648036) (not bm!586598) (not d!2083707) (not d!2083561) (not bm!586530) (not b!6648459) (not d!2083711) (not b!6648750) (not b!6648261) (not bm!586609) (not b!6647975) (not b!6648461) (not b!6648053) (not d!2083549))
(check-sat)
