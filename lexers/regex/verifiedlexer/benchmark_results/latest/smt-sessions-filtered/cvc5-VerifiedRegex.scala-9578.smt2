; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504090 () Bool)

(assert start!504090)

(declare-fun b!4842154 () Bool)

(declare-fun res!2064750 () Bool)

(declare-fun e!3026168 () Bool)

(assert (=> b!4842154 (=> (not res!2064750) (not e!3026168))))

(declare-datatypes ((K!17177 0))(
  ( (K!17178 (val!22047 Int)) )
))
(declare-datatypes ((V!17423 0))(
  ( (V!17424 (val!22048 Int)) )
))
(declare-datatypes ((tuple2!58966 0))(
  ( (tuple2!58967 (_1!32777 K!17177) (_2!32777 V!17423)) )
))
(declare-datatypes ((List!55535 0))(
  ( (Nil!55411) (Cons!55411 (h!61846 tuple2!58966) (t!363031 List!55535)) )
))
(declare-datatypes ((tuple2!58968 0))(
  ( (tuple2!58969 (_1!32778 (_ BitVec 64)) (_2!32778 List!55535)) )
))
(declare-datatypes ((List!55536 0))(
  ( (Nil!55412) (Cons!55412 (h!61847 tuple2!58968) (t!363032 List!55536)) )
))
(declare-datatypes ((ListLongMap!6349 0))(
  ( (ListLongMap!6350 (toList!7793 List!55536)) )
))
(declare-fun lm!2671 () ListLongMap!6349)

(declare-datatypes ((ListMap!7131 0))(
  ( (ListMap!7132 (toList!7794 List!55535)) )
))
(declare-fun extractMap!2785 (List!55536) ListMap!7131)

(declare-fun addToMapMapFromBucket!1925 (List!55535 ListMap!7131) ListMap!7131)

(assert (=> b!4842154 (= res!2064750 (= (extractMap!2785 (toList!7793 lm!2671)) (addToMapMapFromBucket!1925 (_2!32778 (h!61847 (toList!7793 lm!2671))) (extractMap!2785 (t!363032 (toList!7793 lm!2671))))))))

(declare-fun b!4842155 () Bool)

(declare-fun e!3026166 () Bool)

(declare-fun e!3026167 () Bool)

(assert (=> b!4842155 (= e!3026166 e!3026167)))

(declare-fun res!2064747 () Bool)

(assert (=> b!4842155 (=> res!2064747 e!3026167)))

(declare-fun lt!1985994 () ListLongMap!6349)

(declare-fun lambda!241603 () Int)

(declare-fun forall!12874 (List!55536 Int) Bool)

(assert (=> b!4842155 (= res!2064747 (not (forall!12874 (toList!7793 lt!1985994) lambda!241603)))))

(declare-fun tail!9505 (ListLongMap!6349) ListLongMap!6349)

(assert (=> b!4842155 (= lt!1985994 (tail!9505 lm!2671))))

(declare-fun b!4842156 () Bool)

(assert (=> b!4842156 (= e!3026168 (not e!3026166))))

(declare-fun res!2064746 () Bool)

(assert (=> b!4842156 (=> res!2064746 e!3026166)))

(declare-fun key!6540 () K!17177)

(declare-fun containsKeyBiggerList!727 (List!55536 K!17177) Bool)

(assert (=> b!4842156 (= res!2064746 (not (containsKeyBiggerList!727 (t!363032 (toList!7793 lm!2671)) key!6540)))))

(declare-fun tail!9506 (List!55536) List!55536)

(assert (=> b!4842156 (containsKeyBiggerList!727 (tail!9506 (toList!7793 lm!2671)) key!6540)))

(declare-datatypes ((Unit!145175 0))(
  ( (Unit!145176) )
))
(declare-fun lt!1985995 () Unit!145175)

(declare-datatypes ((Hashable!7443 0))(
  ( (HashableExt!7442 (__x!33718 Int)) )
))
(declare-fun hashF!1662 () Hashable!7443)

(declare-fun lemmaInBiggerListButNotHeadThenTail!59 (ListLongMap!6349 K!17177 Hashable!7443) Unit!145175)

(assert (=> b!4842156 (= lt!1985995 (lemmaInBiggerListButNotHeadThenTail!59 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4842157 () Bool)

(declare-fun size!36635 (List!55536) Int)

(assert (=> b!4842157 (= e!3026167 (< (size!36635 (toList!7793 lt!1985994)) (size!36635 (toList!7793 lm!2671))))))

(declare-fun b!4842158 () Bool)

(declare-fun res!2064748 () Bool)

(assert (=> b!4842158 (=> (not res!2064748) (not e!3026168))))

(assert (=> b!4842158 (= res!2064748 (containsKeyBiggerList!727 (toList!7793 lm!2671) key!6540))))

(declare-fun b!4842159 () Bool)

(declare-fun res!2064743 () Bool)

(assert (=> b!4842159 (=> (not res!2064743) (not e!3026168))))

(declare-fun e!3026164 () Bool)

(assert (=> b!4842159 (= res!2064743 e!3026164)))

(declare-fun res!2064744 () Bool)

(assert (=> b!4842159 (=> res!2064744 e!3026164)))

(assert (=> b!4842159 (= res!2064744 (not (is-Cons!55412 (toList!7793 lm!2671))))))

(declare-fun b!4842160 () Bool)

(declare-fun res!2064742 () Bool)

(assert (=> b!4842160 (=> (not res!2064742) (not e!3026168))))

(assert (=> b!4842160 (= res!2064742 (is-Cons!55412 (toList!7793 lm!2671)))))

(declare-fun b!4842161 () Bool)

(declare-fun res!2064741 () Bool)

(assert (=> b!4842161 (=> res!2064741 e!3026167)))

(assert (=> b!4842161 (= res!2064741 (not (containsKeyBiggerList!727 (toList!7793 lt!1985994) key!6540)))))

(declare-fun b!4842162 () Bool)

(declare-fun containsKey!4612 (List!55535 K!17177) Bool)

(assert (=> b!4842162 (= e!3026164 (not (containsKey!4612 (_2!32778 (h!61847 (toList!7793 lm!2671))) key!6540)))))

(declare-fun res!2064749 () Bool)

(assert (=> start!504090 (=> (not res!2064749) (not e!3026168))))

(assert (=> start!504090 (= res!2064749 (forall!12874 (toList!7793 lm!2671) lambda!241603))))

(assert (=> start!504090 e!3026168))

(declare-fun e!3026165 () Bool)

(declare-fun inv!71078 (ListLongMap!6349) Bool)

(assert (=> start!504090 (and (inv!71078 lm!2671) e!3026165)))

(assert (=> start!504090 true))

(declare-fun tp_is_empty!34993 () Bool)

(assert (=> start!504090 tp_is_empty!34993))

(declare-fun b!4842163 () Bool)

(declare-fun res!2064740 () Bool)

(assert (=> b!4842163 (=> (not res!2064740) (not e!3026168))))

(declare-fun allKeysSameHashInMap!2759 (ListLongMap!6349 Hashable!7443) Bool)

(assert (=> b!4842163 (= res!2064740 (allKeysSameHashInMap!2759 lm!2671 hashF!1662))))

(declare-fun b!4842164 () Bool)

(declare-fun res!2064745 () Bool)

(assert (=> b!4842164 (=> res!2064745 e!3026167)))

(assert (=> b!4842164 (= res!2064745 (not (allKeysSameHashInMap!2759 lt!1985994 hashF!1662)))))

(declare-fun b!4842165 () Bool)

(declare-fun tp!1364015 () Bool)

(assert (=> b!4842165 (= e!3026165 tp!1364015)))

(assert (= (and start!504090 res!2064749) b!4842163))

(assert (= (and b!4842163 res!2064740) b!4842158))

(assert (= (and b!4842158 res!2064748) b!4842159))

(assert (= (and b!4842159 (not res!2064744)) b!4842162))

(assert (= (and b!4842159 res!2064743) b!4842160))

(assert (= (and b!4842160 res!2064742) b!4842154))

(assert (= (and b!4842154 res!2064750) b!4842156))

(assert (= (and b!4842156 (not res!2064746)) b!4842155))

(assert (= (and b!4842155 (not res!2064747)) b!4842164))

(assert (= (and b!4842164 (not res!2064745)) b!4842161))

(assert (= (and b!4842161 (not res!2064741)) b!4842157))

(assert (= start!504090 b!4842165))

(declare-fun m!5838088 () Bool)

(assert (=> b!4842155 m!5838088))

(declare-fun m!5838090 () Bool)

(assert (=> b!4842155 m!5838090))

(declare-fun m!5838092 () Bool)

(assert (=> start!504090 m!5838092))

(declare-fun m!5838094 () Bool)

(assert (=> start!504090 m!5838094))

(declare-fun m!5838096 () Bool)

(assert (=> b!4842162 m!5838096))

(declare-fun m!5838098 () Bool)

(assert (=> b!4842161 m!5838098))

(declare-fun m!5838100 () Bool)

(assert (=> b!4842156 m!5838100))

(declare-fun m!5838102 () Bool)

(assert (=> b!4842156 m!5838102))

(assert (=> b!4842156 m!5838102))

(declare-fun m!5838104 () Bool)

(assert (=> b!4842156 m!5838104))

(declare-fun m!5838106 () Bool)

(assert (=> b!4842156 m!5838106))

(declare-fun m!5838108 () Bool)

(assert (=> b!4842157 m!5838108))

(declare-fun m!5838110 () Bool)

(assert (=> b!4842157 m!5838110))

(declare-fun m!5838112 () Bool)

(assert (=> b!4842163 m!5838112))

(declare-fun m!5838114 () Bool)

(assert (=> b!4842164 m!5838114))

(declare-fun m!5838116 () Bool)

(assert (=> b!4842154 m!5838116))

(declare-fun m!5838118 () Bool)

(assert (=> b!4842154 m!5838118))

(assert (=> b!4842154 m!5838118))

(declare-fun m!5838120 () Bool)

(assert (=> b!4842154 m!5838120))

(declare-fun m!5838122 () Bool)

(assert (=> b!4842158 m!5838122))

(push 1)

(assert (not b!4842155))

(assert (not b!4842157))

(assert (not b!4842163))

(assert (not b!4842161))

(assert (not b!4842162))

(assert tp_is_empty!34993)

(assert (not b!4842164))

(assert (not start!504090))

(assert (not b!4842158))

(assert (not b!4842156))

(assert (not b!4842165))

(assert (not b!4842154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1552187 () Bool)

(declare-fun lt!1986004 () Int)

(assert (=> d!1552187 (>= lt!1986004 0)))

(declare-fun e!3026186 () Int)

(assert (=> d!1552187 (= lt!1986004 e!3026186)))

(declare-fun c!824484 () Bool)

(assert (=> d!1552187 (= c!824484 (is-Nil!55412 (toList!7793 lt!1985994)))))

(assert (=> d!1552187 (= (size!36635 (toList!7793 lt!1985994)) lt!1986004)))

(declare-fun b!4842206 () Bool)

(assert (=> b!4842206 (= e!3026186 0)))

(declare-fun b!4842207 () Bool)

(assert (=> b!4842207 (= e!3026186 (+ 1 (size!36635 (t!363032 (toList!7793 lt!1985994)))))))

(assert (= (and d!1552187 c!824484) b!4842206))

(assert (= (and d!1552187 (not c!824484)) b!4842207))

(declare-fun m!5838160 () Bool)

(assert (=> b!4842207 m!5838160))

(assert (=> b!4842157 d!1552187))

(declare-fun d!1552189 () Bool)

(declare-fun lt!1986005 () Int)

(assert (=> d!1552189 (>= lt!1986005 0)))

(declare-fun e!3026187 () Int)

(assert (=> d!1552189 (= lt!1986005 e!3026187)))

(declare-fun c!824485 () Bool)

(assert (=> d!1552189 (= c!824485 (is-Nil!55412 (toList!7793 lm!2671)))))

(assert (=> d!1552189 (= (size!36635 (toList!7793 lm!2671)) lt!1986005)))

(declare-fun b!4842208 () Bool)

(assert (=> b!4842208 (= e!3026187 0)))

(declare-fun b!4842209 () Bool)

(assert (=> b!4842209 (= e!3026187 (+ 1 (size!36635 (t!363032 (toList!7793 lm!2671)))))))

(assert (= (and d!1552189 c!824485) b!4842208))

(assert (= (and d!1552189 (not c!824485)) b!4842209))

(declare-fun m!5838162 () Bool)

(assert (=> b!4842209 m!5838162))

(assert (=> b!4842157 d!1552189))

(declare-fun d!1552191 () Bool)

(declare-fun res!2064788 () Bool)

(declare-fun e!3026192 () Bool)

(assert (=> d!1552191 (=> res!2064788 e!3026192)))

(assert (=> d!1552191 (= res!2064788 (and (is-Cons!55411 (_2!32778 (h!61847 (toList!7793 lm!2671)))) (= (_1!32777 (h!61846 (_2!32778 (h!61847 (toList!7793 lm!2671))))) key!6540)))))

(assert (=> d!1552191 (= (containsKey!4612 (_2!32778 (h!61847 (toList!7793 lm!2671))) key!6540) e!3026192)))

(declare-fun b!4842214 () Bool)

(declare-fun e!3026193 () Bool)

(assert (=> b!4842214 (= e!3026192 e!3026193)))

(declare-fun res!2064789 () Bool)

(assert (=> b!4842214 (=> (not res!2064789) (not e!3026193))))

(assert (=> b!4842214 (= res!2064789 (is-Cons!55411 (_2!32778 (h!61847 (toList!7793 lm!2671)))))))

(declare-fun b!4842215 () Bool)

(assert (=> b!4842215 (= e!3026193 (containsKey!4612 (t!363031 (_2!32778 (h!61847 (toList!7793 lm!2671)))) key!6540))))

(assert (= (and d!1552191 (not res!2064788)) b!4842214))

(assert (= (and b!4842214 res!2064789) b!4842215))

(declare-fun m!5838164 () Bool)

(assert (=> b!4842215 m!5838164))

(assert (=> b!4842162 d!1552191))

(declare-fun d!1552193 () Bool)

(declare-fun res!2064796 () Bool)

(declare-fun e!3026202 () Bool)

(assert (=> d!1552193 (=> res!2064796 e!3026202)))

(declare-fun e!3026201 () Bool)

(assert (=> d!1552193 (= res!2064796 e!3026201)))

(declare-fun res!2064797 () Bool)

(assert (=> d!1552193 (=> (not res!2064797) (not e!3026201))))

(assert (=> d!1552193 (= res!2064797 (is-Cons!55412 (t!363032 (toList!7793 lm!2671))))))

(assert (=> d!1552193 (= (containsKeyBiggerList!727 (t!363032 (toList!7793 lm!2671)) key!6540) e!3026202)))

(declare-fun b!4842222 () Bool)

(assert (=> b!4842222 (= e!3026201 (containsKey!4612 (_2!32778 (h!61847 (t!363032 (toList!7793 lm!2671)))) key!6540))))

(declare-fun b!4842223 () Bool)

(declare-fun e!3026200 () Bool)

(assert (=> b!4842223 (= e!3026202 e!3026200)))

(declare-fun res!2064798 () Bool)

(assert (=> b!4842223 (=> (not res!2064798) (not e!3026200))))

(assert (=> b!4842223 (= res!2064798 (is-Cons!55412 (t!363032 (toList!7793 lm!2671))))))

(declare-fun b!4842224 () Bool)

(assert (=> b!4842224 (= e!3026200 (containsKeyBiggerList!727 (t!363032 (t!363032 (toList!7793 lm!2671))) key!6540))))

(assert (= (and d!1552193 res!2064797) b!4842222))

(assert (= (and d!1552193 (not res!2064796)) b!4842223))

(assert (= (and b!4842223 res!2064798) b!4842224))

(declare-fun m!5838166 () Bool)

(assert (=> b!4842222 m!5838166))

(declare-fun m!5838168 () Bool)

(assert (=> b!4842224 m!5838168))

(assert (=> b!4842156 d!1552193))

(declare-fun d!1552195 () Bool)

(declare-fun res!2064799 () Bool)

(declare-fun e!3026205 () Bool)

(assert (=> d!1552195 (=> res!2064799 e!3026205)))

(declare-fun e!3026204 () Bool)

(assert (=> d!1552195 (= res!2064799 e!3026204)))

(declare-fun res!2064800 () Bool)

(assert (=> d!1552195 (=> (not res!2064800) (not e!3026204))))

(assert (=> d!1552195 (= res!2064800 (is-Cons!55412 (tail!9506 (toList!7793 lm!2671))))))

(assert (=> d!1552195 (= (containsKeyBiggerList!727 (tail!9506 (toList!7793 lm!2671)) key!6540) e!3026205)))

(declare-fun b!4842225 () Bool)

(assert (=> b!4842225 (= e!3026204 (containsKey!4612 (_2!32778 (h!61847 (tail!9506 (toList!7793 lm!2671)))) key!6540))))

(declare-fun b!4842226 () Bool)

(declare-fun e!3026203 () Bool)

(assert (=> b!4842226 (= e!3026205 e!3026203)))

(declare-fun res!2064801 () Bool)

(assert (=> b!4842226 (=> (not res!2064801) (not e!3026203))))

(assert (=> b!4842226 (= res!2064801 (is-Cons!55412 (tail!9506 (toList!7793 lm!2671))))))

(declare-fun b!4842227 () Bool)

(assert (=> b!4842227 (= e!3026203 (containsKeyBiggerList!727 (t!363032 (tail!9506 (toList!7793 lm!2671))) key!6540))))

(assert (= (and d!1552195 res!2064800) b!4842225))

(assert (= (and d!1552195 (not res!2064799)) b!4842226))

(assert (= (and b!4842226 res!2064801) b!4842227))

(declare-fun m!5838170 () Bool)

(assert (=> b!4842225 m!5838170))

(declare-fun m!5838172 () Bool)

(assert (=> b!4842227 m!5838172))

(assert (=> b!4842156 d!1552195))

(declare-fun d!1552197 () Bool)

(assert (=> d!1552197 (= (tail!9506 (toList!7793 lm!2671)) (t!363032 (toList!7793 lm!2671)))))

(assert (=> b!4842156 d!1552197))

(declare-fun bs!1168761 () Bool)

(declare-fun d!1552199 () Bool)

(assert (= bs!1168761 (and d!1552199 start!504090)))

(declare-fun lambda!241611 () Int)

(assert (=> bs!1168761 (= lambda!241611 lambda!241603)))

(assert (=> d!1552199 (containsKeyBiggerList!727 (tail!9506 (toList!7793 lm!2671)) key!6540)))

(declare-fun lt!1986008 () Unit!145175)

(declare-fun choose!35384 (ListLongMap!6349 K!17177 Hashable!7443) Unit!145175)

(assert (=> d!1552199 (= lt!1986008 (choose!35384 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1552199 (forall!12874 (toList!7793 lm!2671) lambda!241611)))

(assert (=> d!1552199 (= (lemmaInBiggerListButNotHeadThenTail!59 lm!2671 key!6540 hashF!1662) lt!1986008)))

(declare-fun bs!1168762 () Bool)

(assert (= bs!1168762 d!1552199))

(assert (=> bs!1168762 m!5838102))

(assert (=> bs!1168762 m!5838102))

(assert (=> bs!1168762 m!5838104))

(declare-fun m!5838174 () Bool)

(assert (=> bs!1168762 m!5838174))

(declare-fun m!5838176 () Bool)

(assert (=> bs!1168762 m!5838176))

(assert (=> b!4842156 d!1552199))

(declare-fun d!1552201 () Bool)

(declare-fun res!2064802 () Bool)

(declare-fun e!3026208 () Bool)

(assert (=> d!1552201 (=> res!2064802 e!3026208)))

(declare-fun e!3026207 () Bool)

(assert (=> d!1552201 (= res!2064802 e!3026207)))

(declare-fun res!2064803 () Bool)

(assert (=> d!1552201 (=> (not res!2064803) (not e!3026207))))

(assert (=> d!1552201 (= res!2064803 (is-Cons!55412 (toList!7793 lt!1985994)))))

(assert (=> d!1552201 (= (containsKeyBiggerList!727 (toList!7793 lt!1985994) key!6540) e!3026208)))

(declare-fun b!4842228 () Bool)

(assert (=> b!4842228 (= e!3026207 (containsKey!4612 (_2!32778 (h!61847 (toList!7793 lt!1985994))) key!6540))))

(declare-fun b!4842229 () Bool)

(declare-fun e!3026206 () Bool)

(assert (=> b!4842229 (= e!3026208 e!3026206)))

(declare-fun res!2064804 () Bool)

(assert (=> b!4842229 (=> (not res!2064804) (not e!3026206))))

(assert (=> b!4842229 (= res!2064804 (is-Cons!55412 (toList!7793 lt!1985994)))))

(declare-fun b!4842230 () Bool)

(assert (=> b!4842230 (= e!3026206 (containsKeyBiggerList!727 (t!363032 (toList!7793 lt!1985994)) key!6540))))

(assert (= (and d!1552201 res!2064803) b!4842228))

(assert (= (and d!1552201 (not res!2064802)) b!4842229))

(assert (= (and b!4842229 res!2064804) b!4842230))

(declare-fun m!5838178 () Bool)

(assert (=> b!4842228 m!5838178))

(declare-fun m!5838180 () Bool)

(assert (=> b!4842230 m!5838180))

(assert (=> b!4842161 d!1552201))

(declare-fun d!1552203 () Bool)

(declare-fun res!2064809 () Bool)

(declare-fun e!3026213 () Bool)

(assert (=> d!1552203 (=> res!2064809 e!3026213)))

(assert (=> d!1552203 (= res!2064809 (is-Nil!55412 (toList!7793 lt!1985994)))))

(assert (=> d!1552203 (= (forall!12874 (toList!7793 lt!1985994) lambda!241603) e!3026213)))

(declare-fun b!4842235 () Bool)

(declare-fun e!3026214 () Bool)

(assert (=> b!4842235 (= e!3026213 e!3026214)))

(declare-fun res!2064810 () Bool)

(assert (=> b!4842235 (=> (not res!2064810) (not e!3026214))))

(declare-fun dynLambda!22310 (Int tuple2!58968) Bool)

(assert (=> b!4842235 (= res!2064810 (dynLambda!22310 lambda!241603 (h!61847 (toList!7793 lt!1985994))))))

(declare-fun b!4842236 () Bool)

(assert (=> b!4842236 (= e!3026214 (forall!12874 (t!363032 (toList!7793 lt!1985994)) lambda!241603))))

(assert (= (and d!1552203 (not res!2064809)) b!4842235))

(assert (= (and b!4842235 res!2064810) b!4842236))

(declare-fun b_lambda!191535 () Bool)

(assert (=> (not b_lambda!191535) (not b!4842235)))

(declare-fun m!5838182 () Bool)

(assert (=> b!4842235 m!5838182))

(declare-fun m!5838184 () Bool)

(assert (=> b!4842236 m!5838184))

(assert (=> b!4842155 d!1552203))

(declare-fun d!1552205 () Bool)

(assert (=> d!1552205 (= (tail!9505 lm!2671) (ListLongMap!6350 (tail!9506 (toList!7793 lm!2671))))))

(declare-fun bs!1168763 () Bool)

(assert (= bs!1168763 d!1552205))

(assert (=> bs!1168763 m!5838102))

(assert (=> b!4842155 d!1552205))

(declare-fun d!1552209 () Bool)

(declare-fun res!2064811 () Bool)

(declare-fun e!3026215 () Bool)

(assert (=> d!1552209 (=> res!2064811 e!3026215)))

(assert (=> d!1552209 (= res!2064811 (is-Nil!55412 (toList!7793 lm!2671)))))

(assert (=> d!1552209 (= (forall!12874 (toList!7793 lm!2671) lambda!241603) e!3026215)))

(declare-fun b!4842237 () Bool)

(declare-fun e!3026216 () Bool)

(assert (=> b!4842237 (= e!3026215 e!3026216)))

(declare-fun res!2064812 () Bool)

(assert (=> b!4842237 (=> (not res!2064812) (not e!3026216))))

(assert (=> b!4842237 (= res!2064812 (dynLambda!22310 lambda!241603 (h!61847 (toList!7793 lm!2671))))))

(declare-fun b!4842238 () Bool)

(assert (=> b!4842238 (= e!3026216 (forall!12874 (t!363032 (toList!7793 lm!2671)) lambda!241603))))

(assert (= (and d!1552209 (not res!2064811)) b!4842237))

(assert (= (and b!4842237 res!2064812) b!4842238))

(declare-fun b_lambda!191537 () Bool)

(assert (=> (not b_lambda!191537) (not b!4842237)))

(declare-fun m!5838186 () Bool)

(assert (=> b!4842237 m!5838186))

(declare-fun m!5838188 () Bool)

(assert (=> b!4842238 m!5838188))

(assert (=> start!504090 d!1552209))

(declare-fun d!1552211 () Bool)

(declare-fun isStrictlySorted!1052 (List!55536) Bool)

(assert (=> d!1552211 (= (inv!71078 lm!2671) (isStrictlySorted!1052 (toList!7793 lm!2671)))))

(declare-fun bs!1168764 () Bool)

(assert (= bs!1168764 d!1552211))

(declare-fun m!5838190 () Bool)

(assert (=> bs!1168764 m!5838190))

(assert (=> start!504090 d!1552211))

(declare-fun bs!1168765 () Bool)

(declare-fun d!1552213 () Bool)

(assert (= bs!1168765 (and d!1552213 start!504090)))

(declare-fun lambda!241614 () Int)

(assert (=> bs!1168765 (= lambda!241614 lambda!241603)))

(declare-fun bs!1168766 () Bool)

(assert (= bs!1168766 (and d!1552213 d!1552199)))

(assert (=> bs!1168766 (= lambda!241614 lambda!241611)))

(declare-fun lt!1986011 () ListMap!7131)

(declare-fun invariantList!1884 (List!55535) Bool)

(assert (=> d!1552213 (invariantList!1884 (toList!7794 lt!1986011))))

(declare-fun e!3026225 () ListMap!7131)

(assert (=> d!1552213 (= lt!1986011 e!3026225)))

(declare-fun c!824488 () Bool)

(assert (=> d!1552213 (= c!824488 (is-Cons!55412 (toList!7793 lm!2671)))))

(assert (=> d!1552213 (forall!12874 (toList!7793 lm!2671) lambda!241614)))

(assert (=> d!1552213 (= (extractMap!2785 (toList!7793 lm!2671)) lt!1986011)))

(declare-fun b!4842249 () Bool)

(assert (=> b!4842249 (= e!3026225 (addToMapMapFromBucket!1925 (_2!32778 (h!61847 (toList!7793 lm!2671))) (extractMap!2785 (t!363032 (toList!7793 lm!2671)))))))

(declare-fun b!4842250 () Bool)

(assert (=> b!4842250 (= e!3026225 (ListMap!7132 Nil!55411))))

(assert (= (and d!1552213 c!824488) b!4842249))

(assert (= (and d!1552213 (not c!824488)) b!4842250))

(declare-fun m!5838194 () Bool)

(assert (=> d!1552213 m!5838194))

(declare-fun m!5838196 () Bool)

(assert (=> d!1552213 m!5838196))

(assert (=> b!4842249 m!5838118))

(assert (=> b!4842249 m!5838118))

(assert (=> b!4842249 m!5838120))

(assert (=> b!4842154 d!1552213))

(declare-fun b!4842268 () Bool)

(assert (=> b!4842268 true))

(declare-fun bs!1168768 () Bool)

(declare-fun b!4842271 () Bool)

(assert (= bs!1168768 (and b!4842271 b!4842268)))

(declare-fun lambda!241647 () Int)

(declare-fun lambda!241646 () Int)

(assert (=> bs!1168768 (= lambda!241647 lambda!241646)))

(assert (=> b!4842271 true))

(declare-fun lt!1986061 () ListMap!7131)

(declare-fun lambda!241648 () Int)

(assert (=> bs!1168768 (= (= lt!1986061 (extractMap!2785 (t!363032 (toList!7793 lm!2671)))) (= lambda!241648 lambda!241646))))

(assert (=> b!4842271 (= (= lt!1986061 (extractMap!2785 (t!363032 (toList!7793 lm!2671)))) (= lambda!241648 lambda!241647))))

(assert (=> b!4842271 true))

(declare-fun bs!1168769 () Bool)

(declare-fun d!1552217 () Bool)

(assert (= bs!1168769 (and d!1552217 b!4842268)))

(declare-fun lt!1986073 () ListMap!7131)

(declare-fun lambda!241649 () Int)

(assert (=> bs!1168769 (= (= lt!1986073 (extractMap!2785 (t!363032 (toList!7793 lm!2671)))) (= lambda!241649 lambda!241646))))

(declare-fun bs!1168770 () Bool)

(assert (= bs!1168770 (and d!1552217 b!4842271)))

(assert (=> bs!1168770 (= (= lt!1986073 (extractMap!2785 (t!363032 (toList!7793 lm!2671)))) (= lambda!241649 lambda!241647))))

(assert (=> bs!1168770 (= (= lt!1986073 lt!1986061) (= lambda!241649 lambda!241648))))

(assert (=> d!1552217 true))

(declare-fun c!824494 () Bool)

(declare-fun call!337495 () Bool)

(declare-fun bm!337488 () Bool)

(declare-fun forall!12876 (List!55535 Int) Bool)

(assert (=> bm!337488 (= call!337495 (forall!12876 (toList!7794 (extractMap!2785 (t!363032 (toList!7793 lm!2671)))) (ite c!824494 lambda!241646 lambda!241648)))))

(declare-fun b!4842267 () Bool)

(declare-fun res!2064827 () Bool)

(declare-fun e!3026236 () Bool)

(assert (=> b!4842267 (=> (not res!2064827) (not e!3026236))))

(assert (=> b!4842267 (= res!2064827 (forall!12876 (toList!7794 (extractMap!2785 (t!363032 (toList!7793 lm!2671)))) lambda!241649))))

(declare-fun e!3026237 () ListMap!7131)

(assert (=> b!4842268 (= e!3026237 (extractMap!2785 (t!363032 (toList!7793 lm!2671))))))

(declare-fun lt!1986072 () Unit!145175)

(declare-fun call!337493 () Unit!145175)

(assert (=> b!4842268 (= lt!1986072 call!337493)))

(assert (=> b!4842268 call!337495))

(declare-fun lt!1986060 () Unit!145175)

(assert (=> b!4842268 (= lt!1986060 lt!1986072)))

(declare-fun call!337494 () Bool)

(assert (=> b!4842268 call!337494))

(declare-fun lt!1986069 () Unit!145175)

(declare-fun Unit!145179 () Unit!145175)

(assert (=> b!4842268 (= lt!1986069 Unit!145179)))

(declare-fun bm!337489 () Bool)

(assert (=> bm!337489 (= call!337494 (forall!12876 (ite c!824494 (toList!7794 (extractMap!2785 (t!363032 (toList!7793 lm!2671)))) (t!363031 (_2!32778 (h!61847 (toList!7793 lm!2671))))) (ite c!824494 lambda!241646 lambda!241648)))))

(declare-fun bm!337490 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1058 (ListMap!7131) Unit!145175)

(assert (=> bm!337490 (= call!337493 (lemmaContainsAllItsOwnKeys!1058 (extractMap!2785 (t!363032 (toList!7793 lm!2671)))))))

(declare-fun b!4842269 () Bool)

(declare-fun e!3026235 () Bool)

(assert (=> b!4842269 (= e!3026235 call!337495)))

(declare-fun b!4842270 () Bool)

(assert (=> b!4842270 (= e!3026236 (invariantList!1884 (toList!7794 lt!1986073)))))

(assert (=> b!4842271 (= e!3026237 lt!1986061)))

(declare-fun lt!1986067 () ListMap!7131)

(declare-fun +!2618 (ListMap!7131 tuple2!58966) ListMap!7131)

(assert (=> b!4842271 (= lt!1986067 (+!2618 (extractMap!2785 (t!363032 (toList!7793 lm!2671))) (h!61846 (_2!32778 (h!61847 (toList!7793 lm!2671))))))))

(assert (=> b!4842271 (= lt!1986061 (addToMapMapFromBucket!1925 (t!363031 (_2!32778 (h!61847 (toList!7793 lm!2671)))) (+!2618 (extractMap!2785 (t!363032 (toList!7793 lm!2671))) (h!61846 (_2!32778 (h!61847 (toList!7793 lm!2671)))))))))

(declare-fun lt!1986064 () Unit!145175)

(assert (=> b!4842271 (= lt!1986064 call!337493)))

(assert (=> b!4842271 (forall!12876 (toList!7794 (extractMap!2785 (t!363032 (toList!7793 lm!2671)))) lambda!241647)))

(declare-fun lt!1986065 () Unit!145175)

(assert (=> b!4842271 (= lt!1986065 lt!1986064)))

(assert (=> b!4842271 (forall!12876 (toList!7794 lt!1986067) lambda!241648)))

(declare-fun lt!1986076 () Unit!145175)

(declare-fun Unit!145180 () Unit!145175)

(assert (=> b!4842271 (= lt!1986076 Unit!145180)))

(assert (=> b!4842271 call!337494))

(declare-fun lt!1986070 () Unit!145175)

(declare-fun Unit!145181 () Unit!145175)

(assert (=> b!4842271 (= lt!1986070 Unit!145181)))

(declare-fun lt!1986059 () Unit!145175)

(declare-fun Unit!145182 () Unit!145175)

(assert (=> b!4842271 (= lt!1986059 Unit!145182)))

(declare-fun lt!1986057 () Unit!145175)

(declare-fun forallContained!4502 (List!55535 Int tuple2!58966) Unit!145175)

(assert (=> b!4842271 (= lt!1986057 (forallContained!4502 (toList!7794 lt!1986067) lambda!241648 (h!61846 (_2!32778 (h!61847 (toList!7793 lm!2671))))))))

(declare-fun contains!19115 (ListMap!7131 K!17177) Bool)

(assert (=> b!4842271 (contains!19115 lt!1986067 (_1!32777 (h!61846 (_2!32778 (h!61847 (toList!7793 lm!2671))))))))

(declare-fun lt!1986066 () Unit!145175)

(declare-fun Unit!145183 () Unit!145175)

(assert (=> b!4842271 (= lt!1986066 Unit!145183)))

(assert (=> b!4842271 (contains!19115 lt!1986061 (_1!32777 (h!61846 (_2!32778 (h!61847 (toList!7793 lm!2671))))))))

(declare-fun lt!1986077 () Unit!145175)

(declare-fun Unit!145184 () Unit!145175)

(assert (=> b!4842271 (= lt!1986077 Unit!145184)))

(assert (=> b!4842271 (forall!12876 (_2!32778 (h!61847 (toList!7793 lm!2671))) lambda!241648)))

(declare-fun lt!1986074 () Unit!145175)

(declare-fun Unit!145185 () Unit!145175)

(assert (=> b!4842271 (= lt!1986074 Unit!145185)))

(assert (=> b!4842271 (forall!12876 (toList!7794 lt!1986067) lambda!241648)))

(declare-fun lt!1986062 () Unit!145175)

(declare-fun Unit!145186 () Unit!145175)

(assert (=> b!4842271 (= lt!1986062 Unit!145186)))

(declare-fun lt!1986071 () Unit!145175)

(declare-fun Unit!145187 () Unit!145175)

(assert (=> b!4842271 (= lt!1986071 Unit!145187)))

(declare-fun lt!1986068 () Unit!145175)

(declare-fun addForallContainsKeyThenBeforeAdding!1056 (ListMap!7131 ListMap!7131 K!17177 V!17423) Unit!145175)

(assert (=> b!4842271 (= lt!1986068 (addForallContainsKeyThenBeforeAdding!1056 (extractMap!2785 (t!363032 (toList!7793 lm!2671))) lt!1986061 (_1!32777 (h!61846 (_2!32778 (h!61847 (toList!7793 lm!2671))))) (_2!32777 (h!61846 (_2!32778 (h!61847 (toList!7793 lm!2671)))))))))

(assert (=> b!4842271 (forall!12876 (toList!7794 (extractMap!2785 (t!363032 (toList!7793 lm!2671)))) lambda!241648)))

(declare-fun lt!1986075 () Unit!145175)

(assert (=> b!4842271 (= lt!1986075 lt!1986068)))

(assert (=> b!4842271 (forall!12876 (toList!7794 (extractMap!2785 (t!363032 (toList!7793 lm!2671)))) lambda!241648)))

(declare-fun lt!1986063 () Unit!145175)

(declare-fun Unit!145188 () Unit!145175)

(assert (=> b!4842271 (= lt!1986063 Unit!145188)))

(declare-fun res!2064825 () Bool)

(assert (=> b!4842271 (= res!2064825 (forall!12876 (_2!32778 (h!61847 (toList!7793 lm!2671))) lambda!241648))))

(assert (=> b!4842271 (=> (not res!2064825) (not e!3026235))))

(assert (=> b!4842271 e!3026235))

(declare-fun lt!1986058 () Unit!145175)

(declare-fun Unit!145189 () Unit!145175)

(assert (=> b!4842271 (= lt!1986058 Unit!145189)))

(assert (=> d!1552217 e!3026236))

(declare-fun res!2064826 () Bool)

(assert (=> d!1552217 (=> (not res!2064826) (not e!3026236))))

(assert (=> d!1552217 (= res!2064826 (forall!12876 (_2!32778 (h!61847 (toList!7793 lm!2671))) lambda!241649))))

(assert (=> d!1552217 (= lt!1986073 e!3026237)))

(assert (=> d!1552217 (= c!824494 (is-Nil!55411 (_2!32778 (h!61847 (toList!7793 lm!2671)))))))

(declare-fun noDuplicateKeys!2552 (List!55535) Bool)

(assert (=> d!1552217 (noDuplicateKeys!2552 (_2!32778 (h!61847 (toList!7793 lm!2671))))))

(assert (=> d!1552217 (= (addToMapMapFromBucket!1925 (_2!32778 (h!61847 (toList!7793 lm!2671))) (extractMap!2785 (t!363032 (toList!7793 lm!2671)))) lt!1986073)))

(assert (= (and d!1552217 c!824494) b!4842268))

(assert (= (and d!1552217 (not c!824494)) b!4842271))

(assert (= (and b!4842271 res!2064825) b!4842269))

(assert (= (or b!4842268 b!4842271) bm!337490))

(assert (= (or b!4842268 b!4842271) bm!337489))

(assert (= (or b!4842268 b!4842269) bm!337488))

(assert (= (and d!1552217 res!2064826) b!4842267))

(assert (= (and b!4842267 res!2064827) b!4842270))

(declare-fun m!5838202 () Bool)

(assert (=> d!1552217 m!5838202))

(declare-fun m!5838204 () Bool)

(assert (=> d!1552217 m!5838204))

(declare-fun m!5838206 () Bool)

(assert (=> b!4842267 m!5838206))

(declare-fun m!5838208 () Bool)

(assert (=> bm!337489 m!5838208))

(declare-fun m!5838210 () Bool)

(assert (=> b!4842271 m!5838210))

(declare-fun m!5838212 () Bool)

(assert (=> b!4842271 m!5838212))

(declare-fun m!5838214 () Bool)

(assert (=> b!4842271 m!5838214))

(declare-fun m!5838216 () Bool)

(assert (=> b!4842271 m!5838216))

(declare-fun m!5838218 () Bool)

(assert (=> b!4842271 m!5838218))

(assert (=> b!4842271 m!5838118))

(declare-fun m!5838220 () Bool)

(assert (=> b!4842271 m!5838220))

(declare-fun m!5838222 () Bool)

(assert (=> b!4842271 m!5838222))

(assert (=> b!4842271 m!5838118))

(assert (=> b!4842271 m!5838214))

(declare-fun m!5838224 () Bool)

(assert (=> b!4842271 m!5838224))

(declare-fun m!5838226 () Bool)

(assert (=> b!4842271 m!5838226))

(assert (=> b!4842271 m!5838224))

(assert (=> b!4842271 m!5838212))

(declare-fun m!5838228 () Bool)

(assert (=> b!4842271 m!5838228))

(assert (=> b!4842271 m!5838222))

(declare-fun m!5838230 () Bool)

(assert (=> bm!337488 m!5838230))

(declare-fun m!5838232 () Bool)

(assert (=> b!4842270 m!5838232))

(assert (=> bm!337490 m!5838118))

(declare-fun m!5838234 () Bool)

(assert (=> bm!337490 m!5838234))

(assert (=> b!4842154 d!1552217))

(declare-fun bs!1168771 () Bool)

(declare-fun d!1552221 () Bool)

(assert (= bs!1168771 (and d!1552221 start!504090)))

(declare-fun lambda!241650 () Int)

(assert (=> bs!1168771 (= lambda!241650 lambda!241603)))

(declare-fun bs!1168772 () Bool)

(assert (= bs!1168772 (and d!1552221 d!1552199)))

(assert (=> bs!1168772 (= lambda!241650 lambda!241611)))

(declare-fun bs!1168773 () Bool)

(assert (= bs!1168773 (and d!1552221 d!1552213)))

(assert (=> bs!1168773 (= lambda!241650 lambda!241614)))

(declare-fun lt!1986078 () ListMap!7131)

(assert (=> d!1552221 (invariantList!1884 (toList!7794 lt!1986078))))

(declare-fun e!3026238 () ListMap!7131)

(assert (=> d!1552221 (= lt!1986078 e!3026238)))

(declare-fun c!824495 () Bool)

(assert (=> d!1552221 (= c!824495 (is-Cons!55412 (t!363032 (toList!7793 lm!2671))))))

(assert (=> d!1552221 (forall!12874 (t!363032 (toList!7793 lm!2671)) lambda!241650)))

(assert (=> d!1552221 (= (extractMap!2785 (t!363032 (toList!7793 lm!2671))) lt!1986078)))

(declare-fun b!4842274 () Bool)

(assert (=> b!4842274 (= e!3026238 (addToMapMapFromBucket!1925 (_2!32778 (h!61847 (t!363032 (toList!7793 lm!2671)))) (extractMap!2785 (t!363032 (t!363032 (toList!7793 lm!2671))))))))

(declare-fun b!4842275 () Bool)

(assert (=> b!4842275 (= e!3026238 (ListMap!7132 Nil!55411))))

(assert (= (and d!1552221 c!824495) b!4842274))

(assert (= (and d!1552221 (not c!824495)) b!4842275))

(declare-fun m!5838236 () Bool)

(assert (=> d!1552221 m!5838236))

(declare-fun m!5838238 () Bool)

(assert (=> d!1552221 m!5838238))

(declare-fun m!5838240 () Bool)

(assert (=> b!4842274 m!5838240))

(assert (=> b!4842274 m!5838240))

(declare-fun m!5838242 () Bool)

(assert (=> b!4842274 m!5838242))

(assert (=> b!4842154 d!1552221))

(declare-fun bs!1168774 () Bool)

(declare-fun d!1552223 () Bool)

(assert (= bs!1168774 (and d!1552223 start!504090)))

(declare-fun lambda!241653 () Int)

(assert (=> bs!1168774 (not (= lambda!241653 lambda!241603))))

(declare-fun bs!1168775 () Bool)

(assert (= bs!1168775 (and d!1552223 d!1552199)))

(assert (=> bs!1168775 (not (= lambda!241653 lambda!241611))))

(declare-fun bs!1168776 () Bool)

(assert (= bs!1168776 (and d!1552223 d!1552213)))

(assert (=> bs!1168776 (not (= lambda!241653 lambda!241614))))

(declare-fun bs!1168777 () Bool)

(assert (= bs!1168777 (and d!1552223 d!1552221)))

(assert (=> bs!1168777 (not (= lambda!241653 lambda!241650))))

(assert (=> d!1552223 true))

(assert (=> d!1552223 (= (allKeysSameHashInMap!2759 lt!1985994 hashF!1662) (forall!12874 (toList!7793 lt!1985994) lambda!241653))))

(declare-fun bs!1168778 () Bool)

(assert (= bs!1168778 d!1552223))

(declare-fun m!5838244 () Bool)

(assert (=> bs!1168778 m!5838244))

(assert (=> b!4842164 d!1552223))

(declare-fun d!1552225 () Bool)

(declare-fun res!2064828 () Bool)

(declare-fun e!3026241 () Bool)

(assert (=> d!1552225 (=> res!2064828 e!3026241)))

(declare-fun e!3026240 () Bool)

(assert (=> d!1552225 (= res!2064828 e!3026240)))

(declare-fun res!2064829 () Bool)

(assert (=> d!1552225 (=> (not res!2064829) (not e!3026240))))

(assert (=> d!1552225 (= res!2064829 (is-Cons!55412 (toList!7793 lm!2671)))))

(assert (=> d!1552225 (= (containsKeyBiggerList!727 (toList!7793 lm!2671) key!6540) e!3026241)))

(declare-fun b!4842278 () Bool)

(assert (=> b!4842278 (= e!3026240 (containsKey!4612 (_2!32778 (h!61847 (toList!7793 lm!2671))) key!6540))))

(declare-fun b!4842279 () Bool)

(declare-fun e!3026239 () Bool)

(assert (=> b!4842279 (= e!3026241 e!3026239)))

(declare-fun res!2064830 () Bool)

(assert (=> b!4842279 (=> (not res!2064830) (not e!3026239))))

(assert (=> b!4842279 (= res!2064830 (is-Cons!55412 (toList!7793 lm!2671)))))

(declare-fun b!4842280 () Bool)

(assert (=> b!4842280 (= e!3026239 (containsKeyBiggerList!727 (t!363032 (toList!7793 lm!2671)) key!6540))))

(assert (= (and d!1552225 res!2064829) b!4842278))

(assert (= (and d!1552225 (not res!2064828)) b!4842279))

(assert (= (and b!4842279 res!2064830) b!4842280))

(assert (=> b!4842278 m!5838096))

(assert (=> b!4842280 m!5838100))

(assert (=> b!4842158 d!1552225))

(declare-fun bs!1168779 () Bool)

(declare-fun d!1552227 () Bool)

(assert (= bs!1168779 (and d!1552227 d!1552213)))

(declare-fun lambda!241654 () Int)

(assert (=> bs!1168779 (not (= lambda!241654 lambda!241614))))

(declare-fun bs!1168780 () Bool)

(assert (= bs!1168780 (and d!1552227 d!1552221)))

(assert (=> bs!1168780 (not (= lambda!241654 lambda!241650))))

(declare-fun bs!1168781 () Bool)

(assert (= bs!1168781 (and d!1552227 start!504090)))

(assert (=> bs!1168781 (not (= lambda!241654 lambda!241603))))

(declare-fun bs!1168782 () Bool)

(assert (= bs!1168782 (and d!1552227 d!1552223)))

(assert (=> bs!1168782 (= lambda!241654 lambda!241653)))

(declare-fun bs!1168783 () Bool)

(assert (= bs!1168783 (and d!1552227 d!1552199)))

(assert (=> bs!1168783 (not (= lambda!241654 lambda!241611))))

(assert (=> d!1552227 true))

(assert (=> d!1552227 (= (allKeysSameHashInMap!2759 lm!2671 hashF!1662) (forall!12874 (toList!7793 lm!2671) lambda!241654))))

(declare-fun bs!1168784 () Bool)

(assert (= bs!1168784 d!1552227))

(declare-fun m!5838246 () Bool)

(assert (=> bs!1168784 m!5838246))

(assert (=> b!4842163 d!1552227))

(declare-fun b!4842285 () Bool)

(declare-fun e!3026244 () Bool)

(declare-fun tp!1364023 () Bool)

(declare-fun tp!1364024 () Bool)

(assert (=> b!4842285 (= e!3026244 (and tp!1364023 tp!1364024))))

(assert (=> b!4842165 (= tp!1364015 e!3026244)))

(assert (= (and b!4842165 (is-Cons!55412 (toList!7793 lm!2671))) b!4842285))

(declare-fun b_lambda!191539 () Bool)

(assert (= b_lambda!191537 (or start!504090 b_lambda!191539)))

(declare-fun bs!1168785 () Bool)

(declare-fun d!1552229 () Bool)

(assert (= bs!1168785 (and d!1552229 start!504090)))

(assert (=> bs!1168785 (= (dynLambda!22310 lambda!241603 (h!61847 (toList!7793 lm!2671))) (noDuplicateKeys!2552 (_2!32778 (h!61847 (toList!7793 lm!2671)))))))

(assert (=> bs!1168785 m!5838204))

(assert (=> b!4842237 d!1552229))

(declare-fun b_lambda!191541 () Bool)

(assert (= b_lambda!191535 (or start!504090 b_lambda!191541)))

(declare-fun bs!1168786 () Bool)

(declare-fun d!1552231 () Bool)

(assert (= bs!1168786 (and d!1552231 start!504090)))

(assert (=> bs!1168786 (= (dynLambda!22310 lambda!241603 (h!61847 (toList!7793 lt!1985994))) (noDuplicateKeys!2552 (_2!32778 (h!61847 (toList!7793 lt!1985994)))))))

(declare-fun m!5838248 () Bool)

(assert (=> bs!1168786 m!5838248))

(assert (=> b!4842235 d!1552231))

(push 1)

(assert (not b_lambda!191539))

(assert (not b_lambda!191541))

(assert (not b!4842238))

(assert (not b!4842228))

(assert (not d!1552223))

(assert (not b!4842225))

(assert (not d!1552213))

(assert (not b!4842271))

(assert (not d!1552227))

(assert (not bm!337488))

(assert (not b!4842236))

(assert (not bs!1168786))

(assert (not b!4842227))

(assert (not b!4842215))

(assert (not d!1552205))

(assert (not b!4842222))

(assert (not b!4842209))

(assert (not d!1552221))

(assert (not b!4842267))

(assert (not b!4842230))

(assert (not b!4842278))

(assert (not b!4842249))

(assert (not b!4842285))

(assert (not b!4842224))

(assert (not d!1552217))

(assert (not b!4842274))

(assert (not b!4842270))

(assert (not d!1552199))

(assert (not bm!337490))

(assert (not bm!337489))

(assert (not bs!1168785))

(assert (not b!4842280))

(assert tp_is_empty!34993)

(assert (not b!4842207))

(assert (not d!1552211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

