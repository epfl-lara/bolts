; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!459328 () Bool)

(assert start!459328)

(declare-fun b!4601141 () Bool)

(declare-fun res!1924768 () Bool)

(declare-fun e!2870008 () Bool)

(assert (=> b!4601141 (=> res!1924768 e!2870008)))

(declare-datatypes ((K!12470 0))(
  ( (K!12471 (val!18247 Int)) )
))
(declare-datatypes ((V!12716 0))(
  ( (V!12717 (val!18248 Int)) )
))
(declare-datatypes ((tuple2!51762 0))(
  ( (tuple2!51763 (_1!29175 K!12470) (_2!29175 V!12716)) )
))
(declare-datatypes ((List!51228 0))(
  ( (Nil!51104) (Cons!51104 (h!57074 tuple2!51762) (t!358222 List!51228)) )
))
(declare-datatypes ((tuple2!51764 0))(
  ( (tuple2!51765 (_1!29176 (_ BitVec 64)) (_2!29176 List!51228)) )
))
(declare-datatypes ((List!51229 0))(
  ( (Nil!51105) (Cons!51105 (h!57075 tuple2!51764) (t!358223 List!51229)) )
))
(declare-datatypes ((ListLongMap!3303 0))(
  ( (ListLongMap!3304 (toList!4671 List!51229)) )
))
(declare-fun lm!1477 () ListLongMap!3303)

(declare-fun noDuplicateKeys!1328 (List!51228) Bool)

(assert (=> b!4601141 (= res!1924768 (not (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(declare-fun b!4601142 () Bool)

(declare-fun res!1924765 () Bool)

(declare-fun e!2870012 () Bool)

(assert (=> b!4601142 (=> res!1924765 e!2870012)))

(declare-fun newBucket!178 () List!51228)

(assert (=> b!4601142 (= res!1924765 (not (noDuplicateKeys!1328 newBucket!178)))))

(declare-fun b!4601143 () Bool)

(declare-fun e!2870014 () Bool)

(declare-fun e!2870002 () Bool)

(assert (=> b!4601143 (= e!2870014 e!2870002)))

(declare-fun res!1924774 () Bool)

(assert (=> b!4601143 (=> res!1924774 e!2870002)))

(declare-fun lt!1760293 () tuple2!51764)

(declare-fun lt!1760292 () ListLongMap!3303)

(declare-fun lt!1760294 () ListLongMap!3303)

(declare-fun +!1758 (ListLongMap!3303 tuple2!51764) ListLongMap!3303)

(assert (=> b!4601143 (= res!1924774 (not (= lt!1760294 (+!1758 lt!1760292 lt!1760293))))))

(declare-fun tail!7964 (ListLongMap!3303) ListLongMap!3303)

(assert (=> b!4601143 (= lt!1760292 (tail!7964 lm!1477))))

(declare-fun b!4601144 () Bool)

(declare-fun res!1924771 () Bool)

(declare-fun e!2870013 () Bool)

(assert (=> b!4601144 (=> (not res!1924771) (not e!2870013))))

(declare-datatypes ((Hashable!5727 0))(
  ( (HashableExt!5726 (__x!31430 Int)) )
))
(declare-fun hashF!1107 () Hashable!5727)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun allKeysSameHash!1184 (List!51228 (_ BitVec 64) Hashable!5727) Bool)

(assert (=> b!4601144 (= res!1924771 (allKeysSameHash!1184 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4601145 () Bool)

(declare-datatypes ((Unit!108559 0))(
  ( (Unit!108560) )
))
(declare-fun e!2870006 () Unit!108559)

(declare-fun Unit!108561 () Unit!108559)

(assert (=> b!4601145 (= e!2870006 Unit!108561)))

(declare-fun b!4601146 () Bool)

(declare-fun e!2870011 () Bool)

(assert (=> b!4601146 (= e!2870011 e!2870013)))

(declare-fun res!1924764 () Bool)

(assert (=> b!4601146 (=> (not res!1924764) (not e!2870013))))

(declare-fun lt!1760301 () (_ BitVec 64))

(assert (=> b!4601146 (= res!1924764 (= lt!1760301 hash!344))))

(declare-fun key!3287 () K!12470)

(declare-fun hash!3239 (Hashable!5727 K!12470) (_ BitVec 64))

(assert (=> b!4601146 (= lt!1760301 (hash!3239 hashF!1107 key!3287))))

(declare-fun b!4601147 () Bool)

(declare-fun e!2870005 () Bool)

(declare-fun e!2870007 () Bool)

(assert (=> b!4601147 (= e!2870005 e!2870007)))

(declare-fun res!1924778 () Bool)

(assert (=> b!4601147 (=> res!1924778 e!2870007)))

(declare-fun lt!1760308 () List!51229)

(declare-fun containsKeyBiggerList!284 (List!51229 K!12470) Bool)

(assert (=> b!4601147 (= res!1924778 (not (containsKeyBiggerList!284 lt!1760308 key!3287)))))

(assert (=> b!4601147 (= lt!1760308 (Cons!51105 (h!57075 (toList!4671 lm!1477)) Nil!51105))))

(declare-fun b!4601148 () Bool)

(declare-fun res!1924779 () Bool)

(assert (=> b!4601148 (=> (not res!1924779) (not e!2870011))))

(declare-datatypes ((ListMap!3933 0))(
  ( (ListMap!3934 (toList!4672 List!51228)) )
))
(declare-fun contains!14065 (ListMap!3933 K!12470) Bool)

(declare-fun extractMap!1388 (List!51229) ListMap!3933)

(assert (=> b!4601148 (= res!1924779 (contains!14065 (extractMap!1388 (toList!4671 lm!1477)) key!3287))))

(declare-fun b!4601149 () Bool)

(declare-fun e!2870004 () Bool)

(declare-fun tp!1340547 () Bool)

(assert (=> b!4601149 (= e!2870004 tp!1340547)))

(declare-fun b!4601150 () Bool)

(assert (=> b!4601150 (= e!2870012 e!2870005)))

(declare-fun res!1924772 () Bool)

(assert (=> b!4601150 (=> res!1924772 e!2870005)))

(declare-fun lt!1760300 () Bool)

(assert (=> b!4601150 (= res!1924772 lt!1760300)))

(declare-fun lt!1760299 () Unit!108559)

(assert (=> b!4601150 (= lt!1760299 e!2870006)))

(declare-fun c!788194 () Bool)

(assert (=> b!4601150 (= c!788194 lt!1760300)))

(declare-fun containsKey!2176 (List!51228 K!12470) Bool)

(assert (=> b!4601150 (= lt!1760300 (not (containsKey!2176 (_2!29176 (h!57075 (toList!4671 lm!1477))) key!3287)))))

(declare-fun res!1924777 () Bool)

(assert (=> start!459328 (=> (not res!1924777) (not e!2870011))))

(declare-fun lambda!186668 () Int)

(declare-fun forall!10618 (List!51229 Int) Bool)

(assert (=> start!459328 (= res!1924777 (forall!10618 (toList!4671 lm!1477) lambda!186668))))

(assert (=> start!459328 e!2870011))

(assert (=> start!459328 true))

(declare-fun inv!66654 (ListLongMap!3303) Bool)

(assert (=> start!459328 (and (inv!66654 lm!1477) e!2870004)))

(declare-fun tp_is_empty!28605 () Bool)

(assert (=> start!459328 tp_is_empty!28605))

(declare-fun e!2870003 () Bool)

(assert (=> start!459328 e!2870003))

(declare-fun b!4601151 () Bool)

(declare-fun e!2870009 () Unit!108559)

(declare-fun Unit!108562 () Unit!108559)

(assert (=> b!4601151 (= e!2870009 Unit!108562)))

(declare-fun b!4601152 () Bool)

(declare-fun res!1924766 () Bool)

(assert (=> b!4601152 (=> res!1924766 e!2870012)))

(get-info :version)

(assert (=> b!4601152 (= res!1924766 (or ((_ is Nil!51105) (toList!4671 lm!1477)) (not (= (_1!29176 (h!57075 (toList!4671 lm!1477))) hash!344))))))

(declare-fun b!4601153 () Bool)

(declare-fun res!1924763 () Bool)

(assert (=> b!4601153 (=> res!1924763 e!2870008)))

(assert (=> b!4601153 (= res!1924763 (not (forall!10618 (toList!4671 lm!1477) lambda!186668)))))

(declare-fun b!4601154 () Bool)

(declare-fun res!1924773 () Bool)

(assert (=> b!4601154 (=> (not res!1924773) (not e!2870011))))

(declare-fun allKeysSameHashInMap!1439 (ListLongMap!3303 Hashable!5727) Bool)

(assert (=> b!4601154 (= res!1924773 (allKeysSameHashInMap!1439 lm!1477 hashF!1107))))

(declare-fun b!4601155 () Bool)

(assert (=> b!4601155 (= e!2870007 e!2870014)))

(declare-fun res!1924770 () Bool)

(assert (=> b!4601155 (=> res!1924770 e!2870014)))

(declare-fun tail!7965 (List!51229) List!51229)

(assert (=> b!4601155 (= res!1924770 (not (= (t!358223 (toList!4671 lm!1477)) (tail!7965 (toList!4671 lt!1760294)))))))

(assert (=> b!4601155 (= lt!1760294 (+!1758 lm!1477 lt!1760293))))

(declare-fun eq!735 (ListMap!3933 ListMap!3933) Bool)

(declare-fun -!504 (ListMap!3933 K!12470) ListMap!3933)

(assert (=> b!4601155 (eq!735 (extractMap!1388 (Cons!51105 lt!1760293 Nil!51105)) (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287))))

(assert (=> b!4601155 (= lt!1760293 (tuple2!51765 hash!344 newBucket!178))))

(declare-fun lt!1760304 () Unit!108559)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!94 ((_ BitVec 64) List!51228 List!51228 K!12470 Hashable!5727) Unit!108559)

(assert (=> b!4601155 (= lt!1760304 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!94 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4601155 (contains!14065 (extractMap!1388 lt!1760308) key!3287)))

(declare-fun lt!1760295 () Unit!108559)

(declare-fun lemmaListContainsThenExtractedMapContains!262 (ListLongMap!3303 K!12470 Hashable!5727) Unit!108559)

(assert (=> b!4601155 (= lt!1760295 (lemmaListContainsThenExtractedMapContains!262 (ListLongMap!3304 lt!1760308) key!3287 hashF!1107))))

(declare-fun b!4601156 () Bool)

(declare-fun Unit!108563 () Unit!108559)

(assert (=> b!4601156 (= e!2870006 Unit!108563)))

(declare-fun lt!1760305 () Unit!108559)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!298 (ListLongMap!3303 K!12470 Hashable!5727) Unit!108559)

(assert (=> b!4601156 (= lt!1760305 (lemmaNotInItsHashBucketThenNotInMap!298 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4601156 false))

(declare-fun b!4601157 () Bool)

(declare-fun e!2870010 () Bool)

(assert (=> b!4601157 (= e!2870010 false)))

(declare-fun tp!1340546 () Bool)

(declare-fun tp_is_empty!28607 () Bool)

(declare-fun b!4601158 () Bool)

(assert (=> b!4601158 (= e!2870003 (and tp_is_empty!28605 tp_is_empty!28607 tp!1340546))))

(declare-fun b!4601159 () Bool)

(declare-fun e!2870001 () Bool)

(assert (=> b!4601159 (= e!2870002 e!2870001)))

(declare-fun res!1924767 () Bool)

(assert (=> b!4601159 (=> res!1924767 e!2870001)))

(declare-fun lt!1760307 () ListMap!3933)

(assert (=> b!4601159 (= res!1924767 (not (= lt!1760307 (extractMap!1388 (t!358223 (toList!4671 lm!1477))))))))

(assert (=> b!4601159 (= lt!1760307 (extractMap!1388 (toList!4671 lt!1760292)))))

(declare-fun b!4601160 () Bool)

(assert (=> b!4601160 (= e!2870008 (allKeysSameHash!1184 (_2!29176 (h!57075 (toList!4671 lm!1477))) hash!344 hashF!1107))))

(declare-fun b!4601161 () Bool)

(declare-fun Unit!108564 () Unit!108559)

(assert (=> b!4601161 (= e!2870009 Unit!108564)))

(declare-fun lt!1760303 () Unit!108559)

(declare-fun lemmaInGenMapThenLongMapContainsHash!402 (ListLongMap!3303 K!12470 Hashable!5727) Unit!108559)

(assert (=> b!4601161 (= lt!1760303 (lemmaInGenMapThenLongMapContainsHash!402 lt!1760292 key!3287 hashF!1107))))

(declare-fun res!1924775 () Bool)

(declare-fun contains!14066 (ListLongMap!3303 (_ BitVec 64)) Bool)

(assert (=> b!4601161 (= res!1924775 (contains!14066 lt!1760292 lt!1760301))))

(assert (=> b!4601161 (=> (not res!1924775) (not e!2870010))))

(assert (=> b!4601161 e!2870010))

(declare-fun b!4601162 () Bool)

(declare-fun res!1924769 () Bool)

(assert (=> b!4601162 (=> res!1924769 e!2870008)))

(declare-fun removePairForKey!953 (List!51228 K!12470) List!51228)

(assert (=> b!4601162 (= res!1924769 (not (= (removePairForKey!953 (_2!29176 (h!57075 (toList!4671 lm!1477))) key!3287) newBucket!178)))))

(declare-fun b!4601163 () Bool)

(assert (=> b!4601163 (= e!2870013 (not e!2870012))))

(declare-fun res!1924780 () Bool)

(assert (=> b!4601163 (=> res!1924780 e!2870012)))

(declare-fun lt!1760296 () List!51228)

(assert (=> b!4601163 (= res!1924780 (not (= newBucket!178 (removePairForKey!953 lt!1760296 key!3287))))))

(declare-fun lt!1760302 () tuple2!51764)

(declare-fun lt!1760297 () Unit!108559)

(declare-fun forallContained!2869 (List!51229 Int tuple2!51764) Unit!108559)

(assert (=> b!4601163 (= lt!1760297 (forallContained!2869 (toList!4671 lm!1477) lambda!186668 lt!1760302))))

(declare-fun contains!14067 (List!51229 tuple2!51764) Bool)

(assert (=> b!4601163 (contains!14067 (toList!4671 lm!1477) lt!1760302)))

(assert (=> b!4601163 (= lt!1760302 (tuple2!51765 hash!344 lt!1760296))))

(declare-fun lt!1760309 () Unit!108559)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!838 (List!51229 (_ BitVec 64) List!51228) Unit!108559)

(assert (=> b!4601163 (= lt!1760309 (lemmaGetValueByKeyImpliesContainsTuple!838 (toList!4671 lm!1477) hash!344 lt!1760296))))

(declare-fun apply!12065 (ListLongMap!3303 (_ BitVec 64)) List!51228)

(assert (=> b!4601163 (= lt!1760296 (apply!12065 lm!1477 hash!344))))

(assert (=> b!4601163 (contains!14066 lm!1477 lt!1760301)))

(declare-fun lt!1760291 () Unit!108559)

(assert (=> b!4601163 (= lt!1760291 (lemmaInGenMapThenLongMapContainsHash!402 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4601164 () Bool)

(assert (=> b!4601164 (= e!2870001 e!2870008)))

(declare-fun res!1924776 () Bool)

(assert (=> b!4601164 (=> res!1924776 e!2870008)))

(declare-fun lt!1760306 () Bool)

(assert (=> b!4601164 (= res!1924776 lt!1760306)))

(declare-fun lt!1760298 () Unit!108559)

(assert (=> b!4601164 (= lt!1760298 e!2870009)))

(declare-fun c!788193 () Bool)

(assert (=> b!4601164 (= c!788193 lt!1760306)))

(assert (=> b!4601164 (= lt!1760306 (contains!14065 lt!1760307 key!3287))))

(assert (= (and start!459328 res!1924777) b!4601154))

(assert (= (and b!4601154 res!1924773) b!4601148))

(assert (= (and b!4601148 res!1924779) b!4601146))

(assert (= (and b!4601146 res!1924764) b!4601144))

(assert (= (and b!4601144 res!1924771) b!4601163))

(assert (= (and b!4601163 (not res!1924780)) b!4601142))

(assert (= (and b!4601142 (not res!1924765)) b!4601152))

(assert (= (and b!4601152 (not res!1924766)) b!4601150))

(assert (= (and b!4601150 c!788194) b!4601156))

(assert (= (and b!4601150 (not c!788194)) b!4601145))

(assert (= (and b!4601150 (not res!1924772)) b!4601147))

(assert (= (and b!4601147 (not res!1924778)) b!4601155))

(assert (= (and b!4601155 (not res!1924770)) b!4601143))

(assert (= (and b!4601143 (not res!1924774)) b!4601159))

(assert (= (and b!4601159 (not res!1924767)) b!4601164))

(assert (= (and b!4601164 c!788193) b!4601161))

(assert (= (and b!4601164 (not c!788193)) b!4601151))

(assert (= (and b!4601161 res!1924775) b!4601157))

(assert (= (and b!4601164 (not res!1924776)) b!4601153))

(assert (= (and b!4601153 (not res!1924763)) b!4601141))

(assert (= (and b!4601141 (not res!1924768)) b!4601162))

(assert (= (and b!4601162 (not res!1924769)) b!4601160))

(assert (= start!459328 b!4601149))

(assert (= (and start!459328 ((_ is Cons!51104) newBucket!178)) b!4601158))

(declare-fun m!5429025 () Bool)

(assert (=> start!459328 m!5429025))

(declare-fun m!5429027 () Bool)

(assert (=> start!459328 m!5429027))

(declare-fun m!5429029 () Bool)

(assert (=> b!4601141 m!5429029))

(declare-fun m!5429031 () Bool)

(assert (=> b!4601159 m!5429031))

(declare-fun m!5429033 () Bool)

(assert (=> b!4601159 m!5429033))

(declare-fun m!5429035 () Bool)

(assert (=> b!4601161 m!5429035))

(declare-fun m!5429037 () Bool)

(assert (=> b!4601161 m!5429037))

(declare-fun m!5429039 () Bool)

(assert (=> b!4601162 m!5429039))

(declare-fun m!5429041 () Bool)

(assert (=> b!4601154 m!5429041))

(declare-fun m!5429043 () Bool)

(assert (=> b!4601144 m!5429043))

(declare-fun m!5429045 () Bool)

(assert (=> b!4601150 m!5429045))

(declare-fun m!5429047 () Bool)

(assert (=> b!4601148 m!5429047))

(assert (=> b!4601148 m!5429047))

(declare-fun m!5429049 () Bool)

(assert (=> b!4601148 m!5429049))

(declare-fun m!5429051 () Bool)

(assert (=> b!4601146 m!5429051))

(declare-fun m!5429053 () Bool)

(assert (=> b!4601163 m!5429053))

(declare-fun m!5429055 () Bool)

(assert (=> b!4601163 m!5429055))

(declare-fun m!5429057 () Bool)

(assert (=> b!4601163 m!5429057))

(declare-fun m!5429059 () Bool)

(assert (=> b!4601163 m!5429059))

(declare-fun m!5429061 () Bool)

(assert (=> b!4601163 m!5429061))

(declare-fun m!5429063 () Bool)

(assert (=> b!4601163 m!5429063))

(declare-fun m!5429065 () Bool)

(assert (=> b!4601163 m!5429065))

(declare-fun m!5429067 () Bool)

(assert (=> b!4601160 m!5429067))

(declare-fun m!5429069 () Bool)

(assert (=> b!4601147 m!5429069))

(declare-fun m!5429071 () Bool)

(assert (=> b!4601142 m!5429071))

(declare-fun m!5429073 () Bool)

(assert (=> b!4601164 m!5429073))

(assert (=> b!4601153 m!5429025))

(declare-fun m!5429075 () Bool)

(assert (=> b!4601155 m!5429075))

(declare-fun m!5429077 () Bool)

(assert (=> b!4601155 m!5429077))

(declare-fun m!5429079 () Bool)

(assert (=> b!4601155 m!5429079))

(declare-fun m!5429081 () Bool)

(assert (=> b!4601155 m!5429081))

(declare-fun m!5429083 () Bool)

(assert (=> b!4601155 m!5429083))

(declare-fun m!5429085 () Bool)

(assert (=> b!4601155 m!5429085))

(declare-fun m!5429087 () Bool)

(assert (=> b!4601155 m!5429087))

(declare-fun m!5429089 () Bool)

(assert (=> b!4601155 m!5429089))

(assert (=> b!4601155 m!5429083))

(declare-fun m!5429091 () Bool)

(assert (=> b!4601155 m!5429091))

(assert (=> b!4601155 m!5429075))

(assert (=> b!4601155 m!5429091))

(assert (=> b!4601155 m!5429085))

(declare-fun m!5429093 () Bool)

(assert (=> b!4601155 m!5429093))

(declare-fun m!5429095 () Bool)

(assert (=> b!4601143 m!5429095))

(declare-fun m!5429097 () Bool)

(assert (=> b!4601143 m!5429097))

(declare-fun m!5429099 () Bool)

(assert (=> b!4601156 m!5429099))

(check-sat (not b!4601154) (not b!4601142) (not b!4601156) (not b!4601149) (not start!459328) (not b!4601159) (not b!4601153) (not b!4601150) (not b!4601164) (not b!4601143) (not b!4601155) (not b!4601146) (not b!4601148) (not b!4601161) (not b!4601158) (not b!4601144) tp_is_empty!28605 (not b!4601147) tp_is_empty!28607 (not b!4601162) (not b!4601163) (not b!4601160) (not b!4601141))
(check-sat)
(get-model)

(declare-fun bs!1012704 () Bool)

(declare-fun d!1448970 () Bool)

(assert (= bs!1012704 (and d!1448970 start!459328)))

(declare-fun lambda!186671 () Int)

(assert (=> bs!1012704 (not (= lambda!186671 lambda!186668))))

(assert (=> d!1448970 true))

(assert (=> d!1448970 (= (allKeysSameHashInMap!1439 lm!1477 hashF!1107) (forall!10618 (toList!4671 lm!1477) lambda!186671))))

(declare-fun bs!1012705 () Bool)

(assert (= bs!1012705 d!1448970))

(declare-fun m!5429101 () Bool)

(assert (=> bs!1012705 m!5429101))

(assert (=> b!4601154 d!1448970))

(declare-fun b!4601185 () Bool)

(declare-datatypes ((List!51231 0))(
  ( (Nil!51107) (Cons!51107 (h!57079 K!12470) (t!358225 List!51231)) )
))
(declare-fun e!2870027 () List!51231)

(declare-fun getKeysList!579 (List!51228) List!51231)

(assert (=> b!4601185 (= e!2870027 (getKeysList!579 (toList!4672 lt!1760307)))))

(declare-fun b!4601186 () Bool)

(declare-fun e!2870028 () Bool)

(declare-fun contains!14069 (List!51231 K!12470) Bool)

(declare-fun keys!17900 (ListMap!3933) List!51231)

(assert (=> b!4601186 (= e!2870028 (contains!14069 (keys!17900 lt!1760307) key!3287))))

(declare-fun b!4601187 () Bool)

(assert (=> b!4601187 false))

(declare-fun lt!1760333 () Unit!108559)

(declare-fun lt!1760332 () Unit!108559)

(assert (=> b!4601187 (= lt!1760333 lt!1760332)))

(declare-fun containsKey!2178 (List!51228 K!12470) Bool)

(assert (=> b!4601187 (containsKey!2178 (toList!4672 lt!1760307) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!578 (List!51228 K!12470) Unit!108559)

(assert (=> b!4601187 (= lt!1760332 (lemmaInGetKeysListThenContainsKey!578 (toList!4672 lt!1760307) key!3287))))

(declare-fun e!2870032 () Unit!108559)

(declare-fun Unit!108569 () Unit!108559)

(assert (=> b!4601187 (= e!2870032 Unit!108569)))

(declare-fun b!4601188 () Bool)

(declare-fun Unit!108570 () Unit!108559)

(assert (=> b!4601188 (= e!2870032 Unit!108570)))

(declare-fun b!4601189 () Bool)

(declare-fun e!2870030 () Unit!108559)

(declare-fun lt!1760327 () Unit!108559)

(assert (=> b!4601189 (= e!2870030 lt!1760327)))

(declare-fun lt!1760328 () Unit!108559)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1225 (List!51228 K!12470) Unit!108559)

(assert (=> b!4601189 (= lt!1760328 (lemmaContainsKeyImpliesGetValueByKeyDefined!1225 (toList!4672 lt!1760307) key!3287))))

(declare-datatypes ((Option!11402 0))(
  ( (None!11401) (Some!11401 (v!45399 V!12716)) )
))
(declare-fun isDefined!8669 (Option!11402) Bool)

(declare-fun getValueByKey!1322 (List!51228 K!12470) Option!11402)

(assert (=> b!4601189 (isDefined!8669 (getValueByKey!1322 (toList!4672 lt!1760307) key!3287))))

(declare-fun lt!1760331 () Unit!108559)

(assert (=> b!4601189 (= lt!1760331 lt!1760328)))

(declare-fun lemmaInListThenGetKeysListContains!575 (List!51228 K!12470) Unit!108559)

(assert (=> b!4601189 (= lt!1760327 (lemmaInListThenGetKeysListContains!575 (toList!4672 lt!1760307) key!3287))))

(declare-fun call!321108 () Bool)

(assert (=> b!4601189 call!321108))

(declare-fun b!4601190 () Bool)

(declare-fun e!2870029 () Bool)

(assert (=> b!4601190 (= e!2870029 e!2870028)))

(declare-fun res!1924788 () Bool)

(assert (=> b!4601190 (=> (not res!1924788) (not e!2870028))))

(assert (=> b!4601190 (= res!1924788 (isDefined!8669 (getValueByKey!1322 (toList!4672 lt!1760307) key!3287)))))

(declare-fun b!4601191 () Bool)

(assert (=> b!4601191 (= e!2870027 (keys!17900 lt!1760307))))

(declare-fun b!4601192 () Bool)

(declare-fun e!2870031 () Bool)

(assert (=> b!4601192 (= e!2870031 (not (contains!14069 (keys!17900 lt!1760307) key!3287)))))

(declare-fun b!4601193 () Bool)

(assert (=> b!4601193 (= e!2870030 e!2870032)))

(declare-fun c!788203 () Bool)

(assert (=> b!4601193 (= c!788203 call!321108)))

(declare-fun bm!321103 () Bool)

(assert (=> bm!321103 (= call!321108 (contains!14069 e!2870027 key!3287))))

(declare-fun c!788202 () Bool)

(declare-fun c!788201 () Bool)

(assert (=> bm!321103 (= c!788202 c!788201)))

(declare-fun d!1448972 () Bool)

(assert (=> d!1448972 e!2870029))

(declare-fun res!1924787 () Bool)

(assert (=> d!1448972 (=> res!1924787 e!2870029)))

(assert (=> d!1448972 (= res!1924787 e!2870031)))

(declare-fun res!1924789 () Bool)

(assert (=> d!1448972 (=> (not res!1924789) (not e!2870031))))

(declare-fun lt!1760326 () Bool)

(assert (=> d!1448972 (= res!1924789 (not lt!1760326))))

(declare-fun lt!1760329 () Bool)

(assert (=> d!1448972 (= lt!1760326 lt!1760329)))

(declare-fun lt!1760330 () Unit!108559)

(assert (=> d!1448972 (= lt!1760330 e!2870030)))

(assert (=> d!1448972 (= c!788201 lt!1760329)))

(assert (=> d!1448972 (= lt!1760329 (containsKey!2178 (toList!4672 lt!1760307) key!3287))))

(assert (=> d!1448972 (= (contains!14065 lt!1760307 key!3287) lt!1760326)))

(assert (= (and d!1448972 c!788201) b!4601189))

(assert (= (and d!1448972 (not c!788201)) b!4601193))

(assert (= (and b!4601193 c!788203) b!4601187))

(assert (= (and b!4601193 (not c!788203)) b!4601188))

(assert (= (or b!4601189 b!4601193) bm!321103))

(assert (= (and bm!321103 c!788202) b!4601185))

(assert (= (and bm!321103 (not c!788202)) b!4601191))

(assert (= (and d!1448972 res!1924789) b!4601192))

(assert (= (and d!1448972 (not res!1924787)) b!4601190))

(assert (= (and b!4601190 res!1924788) b!4601186))

(declare-fun m!5429103 () Bool)

(assert (=> b!4601191 m!5429103))

(declare-fun m!5429105 () Bool)

(assert (=> bm!321103 m!5429105))

(declare-fun m!5429107 () Bool)

(assert (=> d!1448972 m!5429107))

(assert (=> b!4601186 m!5429103))

(assert (=> b!4601186 m!5429103))

(declare-fun m!5429109 () Bool)

(assert (=> b!4601186 m!5429109))

(declare-fun m!5429111 () Bool)

(assert (=> b!4601190 m!5429111))

(assert (=> b!4601190 m!5429111))

(declare-fun m!5429113 () Bool)

(assert (=> b!4601190 m!5429113))

(assert (=> b!4601187 m!5429107))

(declare-fun m!5429115 () Bool)

(assert (=> b!4601187 m!5429115))

(declare-fun m!5429117 () Bool)

(assert (=> b!4601185 m!5429117))

(assert (=> b!4601192 m!5429103))

(assert (=> b!4601192 m!5429103))

(assert (=> b!4601192 m!5429109))

(declare-fun m!5429121 () Bool)

(assert (=> b!4601189 m!5429121))

(assert (=> b!4601189 m!5429111))

(assert (=> b!4601189 m!5429111))

(assert (=> b!4601189 m!5429113))

(declare-fun m!5429123 () Bool)

(assert (=> b!4601189 m!5429123))

(assert (=> b!4601164 d!1448972))

(declare-fun d!1448978 () Bool)

(declare-fun e!2870047 () Bool)

(assert (=> d!1448978 e!2870047))

(declare-fun res!1924801 () Bool)

(assert (=> d!1448978 (=> (not res!1924801) (not e!2870047))))

(declare-fun lt!1760361 () ListLongMap!3303)

(assert (=> d!1448978 (= res!1924801 (contains!14066 lt!1760361 (_1!29176 lt!1760293)))))

(declare-fun lt!1760360 () List!51229)

(assert (=> d!1448978 (= lt!1760361 (ListLongMap!3304 lt!1760360))))

(declare-fun lt!1760359 () Unit!108559)

(declare-fun lt!1760358 () Unit!108559)

(assert (=> d!1448978 (= lt!1760359 lt!1760358)))

(declare-datatypes ((Option!11403 0))(
  ( (None!11402) (Some!11402 (v!45400 List!51228)) )
))
(declare-fun getValueByKey!1323 (List!51229 (_ BitVec 64)) Option!11403)

(assert (=> d!1448978 (= (getValueByKey!1323 lt!1760360 (_1!29176 lt!1760293)) (Some!11402 (_2!29176 lt!1760293)))))

(declare-fun lemmaContainsTupThenGetReturnValue!802 (List!51229 (_ BitVec 64) List!51228) Unit!108559)

(assert (=> d!1448978 (= lt!1760358 (lemmaContainsTupThenGetReturnValue!802 lt!1760360 (_1!29176 lt!1760293) (_2!29176 lt!1760293)))))

(declare-fun insertStrictlySorted!494 (List!51229 (_ BitVec 64) List!51228) List!51229)

(assert (=> d!1448978 (= lt!1760360 (insertStrictlySorted!494 (toList!4671 lt!1760292) (_1!29176 lt!1760293) (_2!29176 lt!1760293)))))

(assert (=> d!1448978 (= (+!1758 lt!1760292 lt!1760293) lt!1760361)))

(declare-fun b!4601216 () Bool)

(declare-fun res!1924800 () Bool)

(assert (=> b!4601216 (=> (not res!1924800) (not e!2870047))))

(assert (=> b!4601216 (= res!1924800 (= (getValueByKey!1323 (toList!4671 lt!1760361) (_1!29176 lt!1760293)) (Some!11402 (_2!29176 lt!1760293))))))

(declare-fun b!4601217 () Bool)

(assert (=> b!4601217 (= e!2870047 (contains!14067 (toList!4671 lt!1760361) lt!1760293))))

(assert (= (and d!1448978 res!1924801) b!4601216))

(assert (= (and b!4601216 res!1924800) b!4601217))

(declare-fun m!5429125 () Bool)

(assert (=> d!1448978 m!5429125))

(declare-fun m!5429127 () Bool)

(assert (=> d!1448978 m!5429127))

(declare-fun m!5429129 () Bool)

(assert (=> d!1448978 m!5429129))

(declare-fun m!5429131 () Bool)

(assert (=> d!1448978 m!5429131))

(declare-fun m!5429133 () Bool)

(assert (=> b!4601216 m!5429133))

(declare-fun m!5429135 () Bool)

(assert (=> b!4601217 m!5429135))

(assert (=> b!4601143 d!1448978))

(declare-fun d!1448980 () Bool)

(assert (=> d!1448980 (= (tail!7964 lm!1477) (ListLongMap!3304 (tail!7965 (toList!4671 lm!1477))))))

(declare-fun bs!1012707 () Bool)

(assert (= bs!1012707 d!1448980))

(declare-fun m!5429137 () Bool)

(assert (=> bs!1012707 m!5429137))

(assert (=> b!4601143 d!1448980))

(declare-fun d!1448982 () Bool)

(declare-fun res!1924809 () Bool)

(declare-fun e!2870058 () Bool)

(assert (=> d!1448982 (=> res!1924809 e!2870058)))

(assert (=> d!1448982 (= res!1924809 (not ((_ is Cons!51104) newBucket!178)))))

(assert (=> d!1448982 (= (noDuplicateKeys!1328 newBucket!178) e!2870058)))

(declare-fun b!4601231 () Bool)

(declare-fun e!2870059 () Bool)

(assert (=> b!4601231 (= e!2870058 e!2870059)))

(declare-fun res!1924810 () Bool)

(assert (=> b!4601231 (=> (not res!1924810) (not e!2870059))))

(assert (=> b!4601231 (= res!1924810 (not (containsKey!2176 (t!358222 newBucket!178) (_1!29175 (h!57074 newBucket!178)))))))

(declare-fun b!4601232 () Bool)

(assert (=> b!4601232 (= e!2870059 (noDuplicateKeys!1328 (t!358222 newBucket!178)))))

(assert (= (and d!1448982 (not res!1924809)) b!4601231))

(assert (= (and b!4601231 res!1924810) b!4601232))

(declare-fun m!5429159 () Bool)

(assert (=> b!4601231 m!5429159))

(declare-fun m!5429161 () Bool)

(assert (=> b!4601232 m!5429161))

(assert (=> b!4601142 d!1448982))

(declare-fun d!1448986 () Bool)

(declare-fun res!1924815 () Bool)

(declare-fun e!2870064 () Bool)

(assert (=> d!1448986 (=> res!1924815 e!2870064)))

(assert (=> d!1448986 (= res!1924815 ((_ is Nil!51105) (toList!4671 lm!1477)))))

(assert (=> d!1448986 (= (forall!10618 (toList!4671 lm!1477) lambda!186668) e!2870064)))

(declare-fun b!4601237 () Bool)

(declare-fun e!2870065 () Bool)

(assert (=> b!4601237 (= e!2870064 e!2870065)))

(declare-fun res!1924816 () Bool)

(assert (=> b!4601237 (=> (not res!1924816) (not e!2870065))))

(declare-fun dynLambda!21405 (Int tuple2!51764) Bool)

(assert (=> b!4601237 (= res!1924816 (dynLambda!21405 lambda!186668 (h!57075 (toList!4671 lm!1477))))))

(declare-fun b!4601238 () Bool)

(assert (=> b!4601238 (= e!2870065 (forall!10618 (t!358223 (toList!4671 lm!1477)) lambda!186668))))

(assert (= (and d!1448986 (not res!1924815)) b!4601237))

(assert (= (and b!4601237 res!1924816) b!4601238))

(declare-fun b_lambda!169581 () Bool)

(assert (=> (not b_lambda!169581) (not b!4601237)))

(declare-fun m!5429163 () Bool)

(assert (=> b!4601237 m!5429163))

(declare-fun m!5429165 () Bool)

(assert (=> b!4601238 m!5429165))

(assert (=> b!4601153 d!1448986))

(declare-fun bs!1012709 () Bool)

(declare-fun d!1448988 () Bool)

(assert (= bs!1012709 (and d!1448988 start!459328)))

(declare-fun lambda!186677 () Int)

(assert (=> bs!1012709 (= lambda!186677 lambda!186668)))

(declare-fun bs!1012710 () Bool)

(assert (= bs!1012710 (and d!1448988 d!1448970)))

(assert (=> bs!1012710 (not (= lambda!186677 lambda!186671))))

(assert (=> d!1448988 (contains!14066 lm!1477 (hash!3239 hashF!1107 key!3287))))

(declare-fun lt!1760375 () Unit!108559)

(declare-fun choose!30861 (ListLongMap!3303 K!12470 Hashable!5727) Unit!108559)

(assert (=> d!1448988 (= lt!1760375 (choose!30861 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1448988 (forall!10618 (toList!4671 lm!1477) lambda!186677)))

(assert (=> d!1448988 (= (lemmaInGenMapThenLongMapContainsHash!402 lm!1477 key!3287 hashF!1107) lt!1760375)))

(declare-fun bs!1012711 () Bool)

(assert (= bs!1012711 d!1448988))

(assert (=> bs!1012711 m!5429051))

(assert (=> bs!1012711 m!5429051))

(declare-fun m!5429173 () Bool)

(assert (=> bs!1012711 m!5429173))

(declare-fun m!5429175 () Bool)

(assert (=> bs!1012711 m!5429175))

(declare-fun m!5429177 () Bool)

(assert (=> bs!1012711 m!5429177))

(assert (=> b!4601163 d!1448988))

(declare-fun d!1448992 () Bool)

(declare-fun get!16895 (Option!11403) List!51228)

(assert (=> d!1448992 (= (apply!12065 lm!1477 hash!344) (get!16895 (getValueByKey!1323 (toList!4671 lm!1477) hash!344)))))

(declare-fun bs!1012712 () Bool)

(assert (= bs!1012712 d!1448992))

(declare-fun m!5429179 () Bool)

(assert (=> bs!1012712 m!5429179))

(assert (=> bs!1012712 m!5429179))

(declare-fun m!5429181 () Bool)

(assert (=> bs!1012712 m!5429181))

(assert (=> b!4601163 d!1448992))

(declare-fun d!1448994 () Bool)

(declare-fun e!2870073 () Bool)

(assert (=> d!1448994 e!2870073))

(declare-fun res!1924819 () Bool)

(assert (=> d!1448994 (=> res!1924819 e!2870073)))

(declare-fun lt!1760387 () Bool)

(assert (=> d!1448994 (= res!1924819 (not lt!1760387))))

(declare-fun lt!1760389 () Bool)

(assert (=> d!1448994 (= lt!1760387 lt!1760389)))

(declare-fun lt!1760390 () Unit!108559)

(declare-fun e!2870074 () Unit!108559)

(assert (=> d!1448994 (= lt!1760390 e!2870074)))

(declare-fun c!788218 () Bool)

(assert (=> d!1448994 (= c!788218 lt!1760389)))

(declare-fun containsKey!2179 (List!51229 (_ BitVec 64)) Bool)

(assert (=> d!1448994 (= lt!1760389 (containsKey!2179 (toList!4671 lm!1477) lt!1760301))))

(assert (=> d!1448994 (= (contains!14066 lm!1477 lt!1760301) lt!1760387)))

(declare-fun b!4601251 () Bool)

(declare-fun lt!1760388 () Unit!108559)

(assert (=> b!4601251 (= e!2870074 lt!1760388)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1226 (List!51229 (_ BitVec 64)) Unit!108559)

(assert (=> b!4601251 (= lt!1760388 (lemmaContainsKeyImpliesGetValueByKeyDefined!1226 (toList!4671 lm!1477) lt!1760301))))

(declare-fun isDefined!8670 (Option!11403) Bool)

(assert (=> b!4601251 (isDefined!8670 (getValueByKey!1323 (toList!4671 lm!1477) lt!1760301))))

(declare-fun b!4601252 () Bool)

(declare-fun Unit!108571 () Unit!108559)

(assert (=> b!4601252 (= e!2870074 Unit!108571)))

(declare-fun b!4601253 () Bool)

(assert (=> b!4601253 (= e!2870073 (isDefined!8670 (getValueByKey!1323 (toList!4671 lm!1477) lt!1760301)))))

(assert (= (and d!1448994 c!788218) b!4601251))

(assert (= (and d!1448994 (not c!788218)) b!4601252))

(assert (= (and d!1448994 (not res!1924819)) b!4601253))

(declare-fun m!5429187 () Bool)

(assert (=> d!1448994 m!5429187))

(declare-fun m!5429189 () Bool)

(assert (=> b!4601251 m!5429189))

(declare-fun m!5429191 () Bool)

(assert (=> b!4601251 m!5429191))

(assert (=> b!4601251 m!5429191))

(declare-fun m!5429193 () Bool)

(assert (=> b!4601251 m!5429193))

(assert (=> b!4601253 m!5429191))

(assert (=> b!4601253 m!5429191))

(assert (=> b!4601253 m!5429193))

(assert (=> b!4601163 d!1448994))

(declare-fun d!1448998 () Bool)

(assert (=> d!1448998 (contains!14067 (toList!4671 lm!1477) (tuple2!51765 hash!344 lt!1760296))))

(declare-fun lt!1760413 () Unit!108559)

(declare-fun choose!30862 (List!51229 (_ BitVec 64) List!51228) Unit!108559)

(assert (=> d!1448998 (= lt!1760413 (choose!30862 (toList!4671 lm!1477) hash!344 lt!1760296))))

(declare-fun e!2870086 () Bool)

(assert (=> d!1448998 e!2870086))

(declare-fun res!1924831 () Bool)

(assert (=> d!1448998 (=> (not res!1924831) (not e!2870086))))

(declare-fun isStrictlySorted!545 (List!51229) Bool)

(assert (=> d!1448998 (= res!1924831 (isStrictlySorted!545 (toList!4671 lm!1477)))))

(assert (=> d!1448998 (= (lemmaGetValueByKeyImpliesContainsTuple!838 (toList!4671 lm!1477) hash!344 lt!1760296) lt!1760413)))

(declare-fun b!4601271 () Bool)

(assert (=> b!4601271 (= e!2870086 (= (getValueByKey!1323 (toList!4671 lm!1477) hash!344) (Some!11402 lt!1760296)))))

(assert (= (and d!1448998 res!1924831) b!4601271))

(declare-fun m!5429229 () Bool)

(assert (=> d!1448998 m!5429229))

(declare-fun m!5429231 () Bool)

(assert (=> d!1448998 m!5429231))

(declare-fun m!5429233 () Bool)

(assert (=> d!1448998 m!5429233))

(assert (=> b!4601271 m!5429179))

(assert (=> b!4601163 d!1448998))

(declare-fun d!1449006 () Bool)

(assert (=> d!1449006 (dynLambda!21405 lambda!186668 lt!1760302)))

(declare-fun lt!1760416 () Unit!108559)

(declare-fun choose!30863 (List!51229 Int tuple2!51764) Unit!108559)

(assert (=> d!1449006 (= lt!1760416 (choose!30863 (toList!4671 lm!1477) lambda!186668 lt!1760302))))

(declare-fun e!2870089 () Bool)

(assert (=> d!1449006 e!2870089))

(declare-fun res!1924834 () Bool)

(assert (=> d!1449006 (=> (not res!1924834) (not e!2870089))))

(assert (=> d!1449006 (= res!1924834 (forall!10618 (toList!4671 lm!1477) lambda!186668))))

(assert (=> d!1449006 (= (forallContained!2869 (toList!4671 lm!1477) lambda!186668 lt!1760302) lt!1760416)))

(declare-fun b!4601274 () Bool)

(assert (=> b!4601274 (= e!2870089 (contains!14067 (toList!4671 lm!1477) lt!1760302))))

(assert (= (and d!1449006 res!1924834) b!4601274))

(declare-fun b_lambda!169583 () Bool)

(assert (=> (not b_lambda!169583) (not d!1449006)))

(declare-fun m!5429235 () Bool)

(assert (=> d!1449006 m!5429235))

(declare-fun m!5429237 () Bool)

(assert (=> d!1449006 m!5429237))

(assert (=> d!1449006 m!5429025))

(assert (=> b!4601274 m!5429061))

(assert (=> b!4601163 d!1449006))

(declare-fun d!1449008 () Bool)

(declare-fun lt!1760423 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8660 (List!51229) (InoxSet tuple2!51764))

(assert (=> d!1449008 (= lt!1760423 (select (content!8660 (toList!4671 lm!1477)) lt!1760302))))

(declare-fun e!2870095 () Bool)

(assert (=> d!1449008 (= lt!1760423 e!2870095)))

(declare-fun res!1924839 () Bool)

(assert (=> d!1449008 (=> (not res!1924839) (not e!2870095))))

(assert (=> d!1449008 (= res!1924839 ((_ is Cons!51105) (toList!4671 lm!1477)))))

(assert (=> d!1449008 (= (contains!14067 (toList!4671 lm!1477) lt!1760302) lt!1760423)))

(declare-fun b!4601281 () Bool)

(declare-fun e!2870096 () Bool)

(assert (=> b!4601281 (= e!2870095 e!2870096)))

(declare-fun res!1924840 () Bool)

(assert (=> b!4601281 (=> res!1924840 e!2870096)))

(assert (=> b!4601281 (= res!1924840 (= (h!57075 (toList!4671 lm!1477)) lt!1760302))))

(declare-fun b!4601282 () Bool)

(assert (=> b!4601282 (= e!2870096 (contains!14067 (t!358223 (toList!4671 lm!1477)) lt!1760302))))

(assert (= (and d!1449008 res!1924839) b!4601281))

(assert (= (and b!4601281 (not res!1924840)) b!4601282))

(declare-fun m!5429255 () Bool)

(assert (=> d!1449008 m!5429255))

(declare-fun m!5429257 () Bool)

(assert (=> d!1449008 m!5429257))

(declare-fun m!5429259 () Bool)

(assert (=> b!4601282 m!5429259))

(assert (=> b!4601163 d!1449008))

(declare-fun b!4601299 () Bool)

(declare-fun e!2870105 () List!51228)

(assert (=> b!4601299 (= e!2870105 Nil!51104)))

(declare-fun b!4601298 () Bool)

(assert (=> b!4601298 (= e!2870105 (Cons!51104 (h!57074 lt!1760296) (removePairForKey!953 (t!358222 lt!1760296) key!3287)))))

(declare-fun b!4601297 () Bool)

(declare-fun e!2870106 () List!51228)

(assert (=> b!4601297 (= e!2870106 e!2870105)))

(declare-fun c!788227 () Bool)

(assert (=> b!4601297 (= c!788227 ((_ is Cons!51104) lt!1760296))))

(declare-fun d!1449016 () Bool)

(declare-fun lt!1760433 () List!51228)

(assert (=> d!1449016 (not (containsKey!2176 lt!1760433 key!3287))))

(assert (=> d!1449016 (= lt!1760433 e!2870106)))

(declare-fun c!788228 () Bool)

(assert (=> d!1449016 (= c!788228 (and ((_ is Cons!51104) lt!1760296) (= (_1!29175 (h!57074 lt!1760296)) key!3287)))))

(assert (=> d!1449016 (noDuplicateKeys!1328 lt!1760296)))

(assert (=> d!1449016 (= (removePairForKey!953 lt!1760296 key!3287) lt!1760433)))

(declare-fun b!4601296 () Bool)

(assert (=> b!4601296 (= e!2870106 (t!358222 lt!1760296))))

(assert (= (and d!1449016 c!788228) b!4601296))

(assert (= (and d!1449016 (not c!788228)) b!4601297))

(assert (= (and b!4601297 c!788227) b!4601298))

(assert (= (and b!4601297 (not c!788227)) b!4601299))

(declare-fun m!5429287 () Bool)

(assert (=> b!4601298 m!5429287))

(declare-fun m!5429289 () Bool)

(assert (=> d!1449016 m!5429289))

(declare-fun m!5429291 () Bool)

(assert (=> d!1449016 m!5429291))

(assert (=> b!4601163 d!1449016))

(assert (=> start!459328 d!1448986))

(declare-fun d!1449022 () Bool)

(assert (=> d!1449022 (= (inv!66654 lm!1477) (isStrictlySorted!545 (toList!4671 lm!1477)))))

(declare-fun bs!1012730 () Bool)

(assert (= bs!1012730 d!1449022))

(assert (=> bs!1012730 m!5429233))

(assert (=> start!459328 d!1449022))

(declare-fun b!4601305 () Bool)

(declare-fun e!2870108 () List!51228)

(assert (=> b!4601305 (= e!2870108 Nil!51104)))

(declare-fun b!4601304 () Bool)

(assert (=> b!4601304 (= e!2870108 (Cons!51104 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477)))) (removePairForKey!953 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))) key!3287)))))

(declare-fun b!4601303 () Bool)

(declare-fun e!2870109 () List!51228)

(assert (=> b!4601303 (= e!2870109 e!2870108)))

(declare-fun c!788230 () Bool)

(assert (=> b!4601303 (= c!788230 ((_ is Cons!51104) (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(declare-fun d!1449026 () Bool)

(declare-fun lt!1760435 () List!51228)

(assert (=> d!1449026 (not (containsKey!2176 lt!1760435 key!3287))))

(assert (=> d!1449026 (= lt!1760435 e!2870109)))

(declare-fun c!788231 () Bool)

(assert (=> d!1449026 (= c!788231 (and ((_ is Cons!51104) (_2!29176 (h!57075 (toList!4671 lm!1477)))) (= (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477))))) key!3287)))))

(assert (=> d!1449026 (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lm!1477))))))

(assert (=> d!1449026 (= (removePairForKey!953 (_2!29176 (h!57075 (toList!4671 lm!1477))) key!3287) lt!1760435)))

(declare-fun b!4601302 () Bool)

(assert (=> b!4601302 (= e!2870109 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(assert (= (and d!1449026 c!788231) b!4601302))

(assert (= (and d!1449026 (not c!788231)) b!4601303))

(assert (= (and b!4601303 c!788230) b!4601304))

(assert (= (and b!4601303 (not c!788230)) b!4601305))

(declare-fun m!5429301 () Bool)

(assert (=> b!4601304 m!5429301))

(declare-fun m!5429303 () Bool)

(assert (=> d!1449026 m!5429303))

(assert (=> d!1449026 m!5429029))

(assert (=> b!4601162 d!1449026))

(declare-fun d!1449028 () Bool)

(declare-fun res!1924846 () Bool)

(declare-fun e!2870110 () Bool)

(assert (=> d!1449028 (=> res!1924846 e!2870110)))

(assert (=> d!1449028 (= res!1924846 (not ((_ is Cons!51104) (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(assert (=> d!1449028 (= (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lm!1477)))) e!2870110)))

(declare-fun b!4601306 () Bool)

(declare-fun e!2870111 () Bool)

(assert (=> b!4601306 (= e!2870110 e!2870111)))

(declare-fun res!1924847 () Bool)

(assert (=> b!4601306 (=> (not res!1924847) (not e!2870111))))

(assert (=> b!4601306 (= res!1924847 (not (containsKey!2176 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))) (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))))

(declare-fun b!4601307 () Bool)

(assert (=> b!4601307 (= e!2870111 (noDuplicateKeys!1328 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(assert (= (and d!1449028 (not res!1924846)) b!4601306))

(assert (= (and b!4601306 res!1924847) b!4601307))

(declare-fun m!5429305 () Bool)

(assert (=> b!4601306 m!5429305))

(declare-fun m!5429307 () Bool)

(assert (=> b!4601307 m!5429307))

(assert (=> b!4601141 d!1449028))

(declare-fun d!1449030 () Bool)

(declare-fun res!1924852 () Bool)

(declare-fun e!2870116 () Bool)

(assert (=> d!1449030 (=> res!1924852 e!2870116)))

(assert (=> d!1449030 (= res!1924852 (and ((_ is Cons!51104) (_2!29176 (h!57075 (toList!4671 lm!1477)))) (= (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477))))) key!3287)))))

(assert (=> d!1449030 (= (containsKey!2176 (_2!29176 (h!57075 (toList!4671 lm!1477))) key!3287) e!2870116)))

(declare-fun b!4601312 () Bool)

(declare-fun e!2870117 () Bool)

(assert (=> b!4601312 (= e!2870116 e!2870117)))

(declare-fun res!1924853 () Bool)

(assert (=> b!4601312 (=> (not res!1924853) (not e!2870117))))

(assert (=> b!4601312 (= res!1924853 ((_ is Cons!51104) (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(declare-fun b!4601313 () Bool)

(assert (=> b!4601313 (= e!2870117 (containsKey!2176 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))) key!3287))))

(assert (= (and d!1449030 (not res!1924852)) b!4601312))

(assert (= (and b!4601312 res!1924853) b!4601313))

(declare-fun m!5429309 () Bool)

(assert (=> b!4601313 m!5429309))

(assert (=> b!4601150 d!1449030))

(declare-fun bs!1012731 () Bool)

(declare-fun d!1449032 () Bool)

(assert (= bs!1012731 (and d!1449032 start!459328)))

(declare-fun lambda!186686 () Int)

(assert (=> bs!1012731 (= lambda!186686 lambda!186668)))

(declare-fun bs!1012732 () Bool)

(assert (= bs!1012732 (and d!1449032 d!1448970)))

(assert (=> bs!1012732 (not (= lambda!186686 lambda!186671))))

(declare-fun bs!1012733 () Bool)

(assert (= bs!1012733 (and d!1449032 d!1448988)))

(assert (=> bs!1012733 (= lambda!186686 lambda!186677)))

(assert (=> d!1449032 (contains!14066 lt!1760292 (hash!3239 hashF!1107 key!3287))))

(declare-fun lt!1760436 () Unit!108559)

(assert (=> d!1449032 (= lt!1760436 (choose!30861 lt!1760292 key!3287 hashF!1107))))

(assert (=> d!1449032 (forall!10618 (toList!4671 lt!1760292) lambda!186686)))

(assert (=> d!1449032 (= (lemmaInGenMapThenLongMapContainsHash!402 lt!1760292 key!3287 hashF!1107) lt!1760436)))

(declare-fun bs!1012734 () Bool)

(assert (= bs!1012734 d!1449032))

(assert (=> bs!1012734 m!5429051))

(assert (=> bs!1012734 m!5429051))

(declare-fun m!5429311 () Bool)

(assert (=> bs!1012734 m!5429311))

(declare-fun m!5429313 () Bool)

(assert (=> bs!1012734 m!5429313))

(declare-fun m!5429315 () Bool)

(assert (=> bs!1012734 m!5429315))

(assert (=> b!4601161 d!1449032))

(declare-fun d!1449034 () Bool)

(declare-fun e!2870118 () Bool)

(assert (=> d!1449034 e!2870118))

(declare-fun res!1924854 () Bool)

(assert (=> d!1449034 (=> res!1924854 e!2870118)))

(declare-fun lt!1760437 () Bool)

(assert (=> d!1449034 (= res!1924854 (not lt!1760437))))

(declare-fun lt!1760439 () Bool)

(assert (=> d!1449034 (= lt!1760437 lt!1760439)))

(declare-fun lt!1760440 () Unit!108559)

(declare-fun e!2870119 () Unit!108559)

(assert (=> d!1449034 (= lt!1760440 e!2870119)))

(declare-fun c!788232 () Bool)

(assert (=> d!1449034 (= c!788232 lt!1760439)))

(assert (=> d!1449034 (= lt!1760439 (containsKey!2179 (toList!4671 lt!1760292) lt!1760301))))

(assert (=> d!1449034 (= (contains!14066 lt!1760292 lt!1760301) lt!1760437)))

(declare-fun b!4601314 () Bool)

(declare-fun lt!1760438 () Unit!108559)

(assert (=> b!4601314 (= e!2870119 lt!1760438)))

(assert (=> b!4601314 (= lt!1760438 (lemmaContainsKeyImpliesGetValueByKeyDefined!1226 (toList!4671 lt!1760292) lt!1760301))))

(assert (=> b!4601314 (isDefined!8670 (getValueByKey!1323 (toList!4671 lt!1760292) lt!1760301))))

(declare-fun b!4601315 () Bool)

(declare-fun Unit!108572 () Unit!108559)

(assert (=> b!4601315 (= e!2870119 Unit!108572)))

(declare-fun b!4601316 () Bool)

(assert (=> b!4601316 (= e!2870118 (isDefined!8670 (getValueByKey!1323 (toList!4671 lt!1760292) lt!1760301)))))

(assert (= (and d!1449034 c!788232) b!4601314))

(assert (= (and d!1449034 (not c!788232)) b!4601315))

(assert (= (and d!1449034 (not res!1924854)) b!4601316))

(declare-fun m!5429317 () Bool)

(assert (=> d!1449034 m!5429317))

(declare-fun m!5429319 () Bool)

(assert (=> b!4601314 m!5429319))

(declare-fun m!5429321 () Bool)

(assert (=> b!4601314 m!5429321))

(assert (=> b!4601314 m!5429321))

(declare-fun m!5429323 () Bool)

(assert (=> b!4601314 m!5429323))

(assert (=> b!4601316 m!5429321))

(assert (=> b!4601316 m!5429321))

(assert (=> b!4601316 m!5429323))

(assert (=> b!4601161 d!1449034))

(declare-fun d!1449036 () Bool)

(assert (=> d!1449036 true))

(assert (=> d!1449036 true))

(declare-fun lambda!186689 () Int)

(declare-fun forall!10619 (List!51228 Int) Bool)

(assert (=> d!1449036 (= (allKeysSameHash!1184 (_2!29176 (h!57075 (toList!4671 lm!1477))) hash!344 hashF!1107) (forall!10619 (_2!29176 (h!57075 (toList!4671 lm!1477))) lambda!186689))))

(declare-fun bs!1012735 () Bool)

(assert (= bs!1012735 d!1449036))

(declare-fun m!5429325 () Bool)

(assert (=> bs!1012735 m!5429325))

(assert (=> b!4601160 d!1449036))

(declare-fun b!4601321 () Bool)

(declare-fun e!2870120 () List!51231)

(assert (=> b!4601321 (= e!2870120 (getKeysList!579 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))))

(declare-fun b!4601322 () Bool)

(declare-fun e!2870121 () Bool)

(assert (=> b!4601322 (= e!2870121 (contains!14069 (keys!17900 (extractMap!1388 (toList!4671 lm!1477))) key!3287))))

(declare-fun b!4601323 () Bool)

(assert (=> b!4601323 false))

(declare-fun lt!1760450 () Unit!108559)

(declare-fun lt!1760449 () Unit!108559)

(assert (=> b!4601323 (= lt!1760450 lt!1760449)))

(assert (=> b!4601323 (containsKey!2178 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287)))

(assert (=> b!4601323 (= lt!1760449 (lemmaInGetKeysListThenContainsKey!578 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287))))

(declare-fun e!2870125 () Unit!108559)

(declare-fun Unit!108573 () Unit!108559)

(assert (=> b!4601323 (= e!2870125 Unit!108573)))

(declare-fun b!4601324 () Bool)

(declare-fun Unit!108574 () Unit!108559)

(assert (=> b!4601324 (= e!2870125 Unit!108574)))

(declare-fun b!4601325 () Bool)

(declare-fun e!2870123 () Unit!108559)

(declare-fun lt!1760444 () Unit!108559)

(assert (=> b!4601325 (= e!2870123 lt!1760444)))

(declare-fun lt!1760445 () Unit!108559)

(assert (=> b!4601325 (= lt!1760445 (lemmaContainsKeyImpliesGetValueByKeyDefined!1225 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287))))

(assert (=> b!4601325 (isDefined!8669 (getValueByKey!1322 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287))))

(declare-fun lt!1760448 () Unit!108559)

(assert (=> b!4601325 (= lt!1760448 lt!1760445)))

(assert (=> b!4601325 (= lt!1760444 (lemmaInListThenGetKeysListContains!575 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287))))

(declare-fun call!321113 () Bool)

(assert (=> b!4601325 call!321113))

(declare-fun b!4601326 () Bool)

(declare-fun e!2870122 () Bool)

(assert (=> b!4601326 (= e!2870122 e!2870121)))

(declare-fun res!1924856 () Bool)

(assert (=> b!4601326 (=> (not res!1924856) (not e!2870121))))

(assert (=> b!4601326 (= res!1924856 (isDefined!8669 (getValueByKey!1322 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287)))))

(declare-fun b!4601327 () Bool)

(assert (=> b!4601327 (= e!2870120 (keys!17900 (extractMap!1388 (toList!4671 lm!1477))))))

(declare-fun b!4601328 () Bool)

(declare-fun e!2870124 () Bool)

(assert (=> b!4601328 (= e!2870124 (not (contains!14069 (keys!17900 (extractMap!1388 (toList!4671 lm!1477))) key!3287)))))

(declare-fun b!4601329 () Bool)

(assert (=> b!4601329 (= e!2870123 e!2870125)))

(declare-fun c!788235 () Bool)

(assert (=> b!4601329 (= c!788235 call!321113)))

(declare-fun bm!321108 () Bool)

(assert (=> bm!321108 (= call!321113 (contains!14069 e!2870120 key!3287))))

(declare-fun c!788234 () Bool)

(declare-fun c!788233 () Bool)

(assert (=> bm!321108 (= c!788234 c!788233)))

(declare-fun d!1449038 () Bool)

(assert (=> d!1449038 e!2870122))

(declare-fun res!1924855 () Bool)

(assert (=> d!1449038 (=> res!1924855 e!2870122)))

(assert (=> d!1449038 (= res!1924855 e!2870124)))

(declare-fun res!1924857 () Bool)

(assert (=> d!1449038 (=> (not res!1924857) (not e!2870124))))

(declare-fun lt!1760443 () Bool)

(assert (=> d!1449038 (= res!1924857 (not lt!1760443))))

(declare-fun lt!1760446 () Bool)

(assert (=> d!1449038 (= lt!1760443 lt!1760446)))

(declare-fun lt!1760447 () Unit!108559)

(assert (=> d!1449038 (= lt!1760447 e!2870123)))

(assert (=> d!1449038 (= c!788233 lt!1760446)))

(assert (=> d!1449038 (= lt!1760446 (containsKey!2178 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287))))

(assert (=> d!1449038 (= (contains!14065 (extractMap!1388 (toList!4671 lm!1477)) key!3287) lt!1760443)))

(assert (= (and d!1449038 c!788233) b!4601325))

(assert (= (and d!1449038 (not c!788233)) b!4601329))

(assert (= (and b!4601329 c!788235) b!4601323))

(assert (= (and b!4601329 (not c!788235)) b!4601324))

(assert (= (or b!4601325 b!4601329) bm!321108))

(assert (= (and bm!321108 c!788234) b!4601321))

(assert (= (and bm!321108 (not c!788234)) b!4601327))

(assert (= (and d!1449038 res!1924857) b!4601328))

(assert (= (and d!1449038 (not res!1924855)) b!4601326))

(assert (= (and b!4601326 res!1924856) b!4601322))

(assert (=> b!4601327 m!5429047))

(declare-fun m!5429333 () Bool)

(assert (=> b!4601327 m!5429333))

(declare-fun m!5429335 () Bool)

(assert (=> bm!321108 m!5429335))

(declare-fun m!5429337 () Bool)

(assert (=> d!1449038 m!5429337))

(assert (=> b!4601322 m!5429047))

(assert (=> b!4601322 m!5429333))

(assert (=> b!4601322 m!5429333))

(declare-fun m!5429339 () Bool)

(assert (=> b!4601322 m!5429339))

(declare-fun m!5429341 () Bool)

(assert (=> b!4601326 m!5429341))

(assert (=> b!4601326 m!5429341))

(declare-fun m!5429343 () Bool)

(assert (=> b!4601326 m!5429343))

(assert (=> b!4601323 m!5429337))

(declare-fun m!5429347 () Bool)

(assert (=> b!4601323 m!5429347))

(declare-fun m!5429351 () Bool)

(assert (=> b!4601321 m!5429351))

(assert (=> b!4601328 m!5429047))

(assert (=> b!4601328 m!5429333))

(assert (=> b!4601328 m!5429333))

(assert (=> b!4601328 m!5429339))

(declare-fun m!5429357 () Bool)

(assert (=> b!4601325 m!5429357))

(assert (=> b!4601325 m!5429341))

(assert (=> b!4601325 m!5429341))

(assert (=> b!4601325 m!5429343))

(declare-fun m!5429359 () Bool)

(assert (=> b!4601325 m!5429359))

(assert (=> b!4601148 d!1449038))

(declare-fun bs!1012761 () Bool)

(declare-fun d!1449044 () Bool)

(assert (= bs!1012761 (and d!1449044 start!459328)))

(declare-fun lambda!186697 () Int)

(assert (=> bs!1012761 (= lambda!186697 lambda!186668)))

(declare-fun bs!1012762 () Bool)

(assert (= bs!1012762 (and d!1449044 d!1448970)))

(assert (=> bs!1012762 (not (= lambda!186697 lambda!186671))))

(declare-fun bs!1012763 () Bool)

(assert (= bs!1012763 (and d!1449044 d!1448988)))

(assert (=> bs!1012763 (= lambda!186697 lambda!186677)))

(declare-fun bs!1012764 () Bool)

(assert (= bs!1012764 (and d!1449044 d!1449032)))

(assert (=> bs!1012764 (= lambda!186697 lambda!186686)))

(declare-fun lt!1760474 () ListMap!3933)

(declare-fun invariantList!1130 (List!51228) Bool)

(assert (=> d!1449044 (invariantList!1130 (toList!4672 lt!1760474))))

(declare-fun e!2870153 () ListMap!3933)

(assert (=> d!1449044 (= lt!1760474 e!2870153)))

(declare-fun c!788248 () Bool)

(assert (=> d!1449044 (= c!788248 ((_ is Cons!51105) (toList!4671 lm!1477)))))

(assert (=> d!1449044 (forall!10618 (toList!4671 lm!1477) lambda!186697)))

(assert (=> d!1449044 (= (extractMap!1388 (toList!4671 lm!1477)) lt!1760474)))

(declare-fun b!4601369 () Bool)

(declare-fun addToMapMapFromBucket!820 (List!51228 ListMap!3933) ListMap!3933)

(assert (=> b!4601369 (= e!2870153 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (toList!4671 lm!1477)))))))

(declare-fun b!4601370 () Bool)

(assert (=> b!4601370 (= e!2870153 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449044 c!788248) b!4601369))

(assert (= (and d!1449044 (not c!788248)) b!4601370))

(declare-fun m!5429405 () Bool)

(assert (=> d!1449044 m!5429405))

(declare-fun m!5429409 () Bool)

(assert (=> d!1449044 m!5429409))

(assert (=> b!4601369 m!5429031))

(assert (=> b!4601369 m!5429031))

(declare-fun m!5429411 () Bool)

(assert (=> b!4601369 m!5429411))

(assert (=> b!4601148 d!1449044))

(declare-fun bs!1012766 () Bool)

(declare-fun d!1449064 () Bool)

(assert (= bs!1012766 (and d!1449064 d!1449044)))

(declare-fun lambda!186698 () Int)

(assert (=> bs!1012766 (= lambda!186698 lambda!186697)))

(declare-fun bs!1012767 () Bool)

(assert (= bs!1012767 (and d!1449064 d!1448988)))

(assert (=> bs!1012767 (= lambda!186698 lambda!186677)))

(declare-fun bs!1012768 () Bool)

(assert (= bs!1012768 (and d!1449064 d!1448970)))

(assert (=> bs!1012768 (not (= lambda!186698 lambda!186671))))

(declare-fun bs!1012769 () Bool)

(assert (= bs!1012769 (and d!1449064 d!1449032)))

(assert (=> bs!1012769 (= lambda!186698 lambda!186686)))

(declare-fun bs!1012770 () Bool)

(assert (= bs!1012770 (and d!1449064 start!459328)))

(assert (=> bs!1012770 (= lambda!186698 lambda!186668)))

(declare-fun lt!1760479 () ListMap!3933)

(assert (=> d!1449064 (invariantList!1130 (toList!4672 lt!1760479))))

(declare-fun e!2870156 () ListMap!3933)

(assert (=> d!1449064 (= lt!1760479 e!2870156)))

(declare-fun c!788250 () Bool)

(assert (=> d!1449064 (= c!788250 ((_ is Cons!51105) (t!358223 (toList!4671 lm!1477))))))

(assert (=> d!1449064 (forall!10618 (t!358223 (toList!4671 lm!1477)) lambda!186698)))

(assert (=> d!1449064 (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760479)))

(declare-fun b!4601374 () Bool)

(assert (=> b!4601374 (= e!2870156 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))))))

(declare-fun b!4601375 () Bool)

(assert (=> b!4601375 (= e!2870156 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449064 c!788250) b!4601374))

(assert (= (and d!1449064 (not c!788250)) b!4601375))

(declare-fun m!5429413 () Bool)

(assert (=> d!1449064 m!5429413))

(declare-fun m!5429415 () Bool)

(assert (=> d!1449064 m!5429415))

(declare-fun m!5429417 () Bool)

(assert (=> b!4601374 m!5429417))

(assert (=> b!4601374 m!5429417))

(declare-fun m!5429419 () Bool)

(assert (=> b!4601374 m!5429419))

(assert (=> b!4601159 d!1449064))

(declare-fun bs!1012771 () Bool)

(declare-fun d!1449066 () Bool)

(assert (= bs!1012771 (and d!1449066 d!1449064)))

(declare-fun lambda!186699 () Int)

(assert (=> bs!1012771 (= lambda!186699 lambda!186698)))

(declare-fun bs!1012772 () Bool)

(assert (= bs!1012772 (and d!1449066 d!1449044)))

(assert (=> bs!1012772 (= lambda!186699 lambda!186697)))

(declare-fun bs!1012773 () Bool)

(assert (= bs!1012773 (and d!1449066 d!1448988)))

(assert (=> bs!1012773 (= lambda!186699 lambda!186677)))

(declare-fun bs!1012774 () Bool)

(assert (= bs!1012774 (and d!1449066 d!1448970)))

(assert (=> bs!1012774 (not (= lambda!186699 lambda!186671))))

(declare-fun bs!1012775 () Bool)

(assert (= bs!1012775 (and d!1449066 d!1449032)))

(assert (=> bs!1012775 (= lambda!186699 lambda!186686)))

(declare-fun bs!1012776 () Bool)

(assert (= bs!1012776 (and d!1449066 start!459328)))

(assert (=> bs!1012776 (= lambda!186699 lambda!186668)))

(declare-fun lt!1760482 () ListMap!3933)

(assert (=> d!1449066 (invariantList!1130 (toList!4672 lt!1760482))))

(declare-fun e!2870159 () ListMap!3933)

(assert (=> d!1449066 (= lt!1760482 e!2870159)))

(declare-fun c!788251 () Bool)

(assert (=> d!1449066 (= c!788251 ((_ is Cons!51105) (toList!4671 lt!1760292)))))

(assert (=> d!1449066 (forall!10618 (toList!4671 lt!1760292) lambda!186699)))

(assert (=> d!1449066 (= (extractMap!1388 (toList!4671 lt!1760292)) lt!1760482)))

(declare-fun b!4601378 () Bool)

(assert (=> b!4601378 (= e!2870159 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))))))

(declare-fun b!4601379 () Bool)

(assert (=> b!4601379 (= e!2870159 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449066 c!788251) b!4601378))

(assert (= (and d!1449066 (not c!788251)) b!4601379))

(declare-fun m!5429431 () Bool)

(assert (=> d!1449066 m!5429431))

(declare-fun m!5429433 () Bool)

(assert (=> d!1449066 m!5429433))

(declare-fun m!5429435 () Bool)

(assert (=> b!4601378 m!5429435))

(assert (=> b!4601378 m!5429435))

(declare-fun m!5429437 () Bool)

(assert (=> b!4601378 m!5429437))

(assert (=> b!4601159 d!1449066))

(declare-fun d!1449072 () Bool)

(declare-fun res!1924890 () Bool)

(declare-fun e!2870177 () Bool)

(assert (=> d!1449072 (=> res!1924890 e!2870177)))

(declare-fun e!2870176 () Bool)

(assert (=> d!1449072 (= res!1924890 e!2870176)))

(declare-fun res!1924892 () Bool)

(assert (=> d!1449072 (=> (not res!1924892) (not e!2870176))))

(assert (=> d!1449072 (= res!1924892 ((_ is Cons!51105) lt!1760308))))

(assert (=> d!1449072 (= (containsKeyBiggerList!284 lt!1760308 key!3287) e!2870177)))

(declare-fun b!4601398 () Bool)

(assert (=> b!4601398 (= e!2870176 (containsKey!2176 (_2!29176 (h!57075 lt!1760308)) key!3287))))

(declare-fun b!4601399 () Bool)

(declare-fun e!2870178 () Bool)

(assert (=> b!4601399 (= e!2870177 e!2870178)))

(declare-fun res!1924891 () Bool)

(assert (=> b!4601399 (=> (not res!1924891) (not e!2870178))))

(assert (=> b!4601399 (= res!1924891 ((_ is Cons!51105) lt!1760308))))

(declare-fun b!4601400 () Bool)

(assert (=> b!4601400 (= e!2870178 (containsKeyBiggerList!284 (t!358223 lt!1760308) key!3287))))

(assert (= (and d!1449072 res!1924892) b!4601398))

(assert (= (and d!1449072 (not res!1924890)) b!4601399))

(assert (= (and b!4601399 res!1924891) b!4601400))

(declare-fun m!5429445 () Bool)

(assert (=> b!4601398 m!5429445))

(declare-fun m!5429447 () Bool)

(assert (=> b!4601400 m!5429447))

(assert (=> b!4601147 d!1449072))

(declare-fun d!1449076 () Bool)

(declare-fun hash!3243 (Hashable!5727 K!12470) (_ BitVec 64))

(assert (=> d!1449076 (= (hash!3239 hashF!1107 key!3287) (hash!3243 hashF!1107 key!3287))))

(declare-fun bs!1012781 () Bool)

(assert (= bs!1012781 d!1449076))

(declare-fun m!5429455 () Bool)

(assert (=> bs!1012781 m!5429455))

(assert (=> b!4601146 d!1449076))

(declare-fun bs!1012815 () Bool)

(declare-fun d!1449080 () Bool)

(assert (= bs!1012815 (and d!1449080 d!1449064)))

(declare-fun lambda!186711 () Int)

(assert (=> bs!1012815 (= lambda!186711 lambda!186698)))

(declare-fun bs!1012816 () Bool)

(assert (= bs!1012816 (and d!1449080 d!1449044)))

(assert (=> bs!1012816 (= lambda!186711 lambda!186697)))

(declare-fun bs!1012817 () Bool)

(assert (= bs!1012817 (and d!1449080 d!1449066)))

(assert (=> bs!1012817 (= lambda!186711 lambda!186699)))

(declare-fun bs!1012818 () Bool)

(assert (= bs!1012818 (and d!1449080 d!1448988)))

(assert (=> bs!1012818 (= lambda!186711 lambda!186677)))

(declare-fun bs!1012819 () Bool)

(assert (= bs!1012819 (and d!1449080 d!1448970)))

(assert (=> bs!1012819 (not (= lambda!186711 lambda!186671))))

(declare-fun bs!1012820 () Bool)

(assert (= bs!1012820 (and d!1449080 d!1449032)))

(assert (=> bs!1012820 (= lambda!186711 lambda!186686)))

(declare-fun bs!1012821 () Bool)

(assert (= bs!1012821 (and d!1449080 start!459328)))

(assert (=> bs!1012821 (= lambda!186711 lambda!186668)))

(assert (=> d!1449080 (not (contains!14065 (extractMap!1388 (toList!4671 lm!1477)) key!3287))))

(declare-fun lt!1760503 () Unit!108559)

(declare-fun choose!30867 (ListLongMap!3303 K!12470 Hashable!5727) Unit!108559)

(assert (=> d!1449080 (= lt!1760503 (choose!30867 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1449080 (forall!10618 (toList!4671 lm!1477) lambda!186711)))

(assert (=> d!1449080 (= (lemmaNotInItsHashBucketThenNotInMap!298 lm!1477 key!3287 hashF!1107) lt!1760503)))

(declare-fun bs!1012822 () Bool)

(assert (= bs!1012822 d!1449080))

(assert (=> bs!1012822 m!5429047))

(assert (=> bs!1012822 m!5429047))

(assert (=> bs!1012822 m!5429049))

(declare-fun m!5429513 () Bool)

(assert (=> bs!1012822 m!5429513))

(declare-fun m!5429515 () Bool)

(assert (=> bs!1012822 m!5429515))

(assert (=> b!4601156 d!1449080))

(declare-fun bs!1012823 () Bool)

(declare-fun d!1449104 () Bool)

(assert (= bs!1012823 (and d!1449104 d!1449036)))

(declare-fun lambda!186712 () Int)

(assert (=> bs!1012823 (= lambda!186712 lambda!186689)))

(assert (=> d!1449104 true))

(assert (=> d!1449104 true))

(assert (=> d!1449104 (= (allKeysSameHash!1184 newBucket!178 hash!344 hashF!1107) (forall!10619 newBucket!178 lambda!186712))))

(declare-fun bs!1012824 () Bool)

(assert (= bs!1012824 d!1449104))

(declare-fun m!5429517 () Bool)

(assert (=> bs!1012824 m!5429517))

(assert (=> b!4601144 d!1449104))

(declare-fun b!4601449 () Bool)

(declare-fun e!2870212 () List!51231)

(assert (=> b!4601449 (= e!2870212 (getKeysList!579 (toList!4672 (extractMap!1388 lt!1760308))))))

(declare-fun b!4601450 () Bool)

(declare-fun e!2870213 () Bool)

(assert (=> b!4601450 (= e!2870213 (contains!14069 (keys!17900 (extractMap!1388 lt!1760308)) key!3287))))

(declare-fun b!4601451 () Bool)

(assert (=> b!4601451 false))

(declare-fun lt!1760511 () Unit!108559)

(declare-fun lt!1760510 () Unit!108559)

(assert (=> b!4601451 (= lt!1760511 lt!1760510)))

(assert (=> b!4601451 (containsKey!2178 (toList!4672 (extractMap!1388 lt!1760308)) key!3287)))

(assert (=> b!4601451 (= lt!1760510 (lemmaInGetKeysListThenContainsKey!578 (toList!4672 (extractMap!1388 lt!1760308)) key!3287))))

(declare-fun e!2870217 () Unit!108559)

(declare-fun Unit!108577 () Unit!108559)

(assert (=> b!4601451 (= e!2870217 Unit!108577)))

(declare-fun b!4601452 () Bool)

(declare-fun Unit!108578 () Unit!108559)

(assert (=> b!4601452 (= e!2870217 Unit!108578)))

(declare-fun b!4601453 () Bool)

(declare-fun e!2870215 () Unit!108559)

(declare-fun lt!1760505 () Unit!108559)

(assert (=> b!4601453 (= e!2870215 lt!1760505)))

(declare-fun lt!1760506 () Unit!108559)

(assert (=> b!4601453 (= lt!1760506 (lemmaContainsKeyImpliesGetValueByKeyDefined!1225 (toList!4672 (extractMap!1388 lt!1760308)) key!3287))))

(assert (=> b!4601453 (isDefined!8669 (getValueByKey!1322 (toList!4672 (extractMap!1388 lt!1760308)) key!3287))))

(declare-fun lt!1760509 () Unit!108559)

(assert (=> b!4601453 (= lt!1760509 lt!1760506)))

(assert (=> b!4601453 (= lt!1760505 (lemmaInListThenGetKeysListContains!575 (toList!4672 (extractMap!1388 lt!1760308)) key!3287))))

(declare-fun call!321115 () Bool)

(assert (=> b!4601453 call!321115))

(declare-fun b!4601454 () Bool)

(declare-fun e!2870214 () Bool)

(assert (=> b!4601454 (= e!2870214 e!2870213)))

(declare-fun res!1924916 () Bool)

(assert (=> b!4601454 (=> (not res!1924916) (not e!2870213))))

(assert (=> b!4601454 (= res!1924916 (isDefined!8669 (getValueByKey!1322 (toList!4672 (extractMap!1388 lt!1760308)) key!3287)))))

(declare-fun b!4601455 () Bool)

(assert (=> b!4601455 (= e!2870212 (keys!17900 (extractMap!1388 lt!1760308)))))

(declare-fun b!4601456 () Bool)

(declare-fun e!2870216 () Bool)

(assert (=> b!4601456 (= e!2870216 (not (contains!14069 (keys!17900 (extractMap!1388 lt!1760308)) key!3287)))))

(declare-fun b!4601457 () Bool)

(assert (=> b!4601457 (= e!2870215 e!2870217)))

(declare-fun c!788261 () Bool)

(assert (=> b!4601457 (= c!788261 call!321115)))

(declare-fun bm!321110 () Bool)

(assert (=> bm!321110 (= call!321115 (contains!14069 e!2870212 key!3287))))

(declare-fun c!788260 () Bool)

(declare-fun c!788259 () Bool)

(assert (=> bm!321110 (= c!788260 c!788259)))

(declare-fun d!1449106 () Bool)

(assert (=> d!1449106 e!2870214))

(declare-fun res!1924915 () Bool)

(assert (=> d!1449106 (=> res!1924915 e!2870214)))

(assert (=> d!1449106 (= res!1924915 e!2870216)))

(declare-fun res!1924917 () Bool)

(assert (=> d!1449106 (=> (not res!1924917) (not e!2870216))))

(declare-fun lt!1760504 () Bool)

(assert (=> d!1449106 (= res!1924917 (not lt!1760504))))

(declare-fun lt!1760507 () Bool)

(assert (=> d!1449106 (= lt!1760504 lt!1760507)))

(declare-fun lt!1760508 () Unit!108559)

(assert (=> d!1449106 (= lt!1760508 e!2870215)))

(assert (=> d!1449106 (= c!788259 lt!1760507)))

(assert (=> d!1449106 (= lt!1760507 (containsKey!2178 (toList!4672 (extractMap!1388 lt!1760308)) key!3287))))

(assert (=> d!1449106 (= (contains!14065 (extractMap!1388 lt!1760308) key!3287) lt!1760504)))

(assert (= (and d!1449106 c!788259) b!4601453))

(assert (= (and d!1449106 (not c!788259)) b!4601457))

(assert (= (and b!4601457 c!788261) b!4601451))

(assert (= (and b!4601457 (not c!788261)) b!4601452))

(assert (= (or b!4601453 b!4601457) bm!321110))

(assert (= (and bm!321110 c!788260) b!4601449))

(assert (= (and bm!321110 (not c!788260)) b!4601455))

(assert (= (and d!1449106 res!1924917) b!4601456))

(assert (= (and d!1449106 (not res!1924915)) b!4601454))

(assert (= (and b!4601454 res!1924916) b!4601450))

(assert (=> b!4601455 m!5429075))

(declare-fun m!5429519 () Bool)

(assert (=> b!4601455 m!5429519))

(declare-fun m!5429521 () Bool)

(assert (=> bm!321110 m!5429521))

(declare-fun m!5429523 () Bool)

(assert (=> d!1449106 m!5429523))

(assert (=> b!4601450 m!5429075))

(assert (=> b!4601450 m!5429519))

(assert (=> b!4601450 m!5429519))

(declare-fun m!5429525 () Bool)

(assert (=> b!4601450 m!5429525))

(declare-fun m!5429527 () Bool)

(assert (=> b!4601454 m!5429527))

(assert (=> b!4601454 m!5429527))

(declare-fun m!5429529 () Bool)

(assert (=> b!4601454 m!5429529))

(assert (=> b!4601451 m!5429523))

(declare-fun m!5429531 () Bool)

(assert (=> b!4601451 m!5429531))

(declare-fun m!5429533 () Bool)

(assert (=> b!4601449 m!5429533))

(assert (=> b!4601456 m!5429075))

(assert (=> b!4601456 m!5429519))

(assert (=> b!4601456 m!5429519))

(assert (=> b!4601456 m!5429525))

(declare-fun m!5429535 () Bool)

(assert (=> b!4601453 m!5429535))

(assert (=> b!4601453 m!5429527))

(assert (=> b!4601453 m!5429527))

(assert (=> b!4601453 m!5429529))

(declare-fun m!5429537 () Bool)

(assert (=> b!4601453 m!5429537))

(assert (=> b!4601155 d!1449106))

(declare-fun bs!1012825 () Bool)

(declare-fun d!1449108 () Bool)

(assert (= bs!1012825 (and d!1449108 d!1449064)))

(declare-fun lambda!186713 () Int)

(assert (=> bs!1012825 (= lambda!186713 lambda!186698)))

(declare-fun bs!1012826 () Bool)

(assert (= bs!1012826 (and d!1449108 d!1449044)))

(assert (=> bs!1012826 (= lambda!186713 lambda!186697)))

(declare-fun bs!1012827 () Bool)

(assert (= bs!1012827 (and d!1449108 d!1449066)))

(assert (=> bs!1012827 (= lambda!186713 lambda!186699)))

(declare-fun bs!1012828 () Bool)

(assert (= bs!1012828 (and d!1449108 d!1449080)))

(assert (=> bs!1012828 (= lambda!186713 lambda!186711)))

(declare-fun bs!1012829 () Bool)

(assert (= bs!1012829 (and d!1449108 d!1448988)))

(assert (=> bs!1012829 (= lambda!186713 lambda!186677)))

(declare-fun bs!1012830 () Bool)

(assert (= bs!1012830 (and d!1449108 d!1448970)))

(assert (=> bs!1012830 (not (= lambda!186713 lambda!186671))))

(declare-fun bs!1012831 () Bool)

(assert (= bs!1012831 (and d!1449108 d!1449032)))

(assert (=> bs!1012831 (= lambda!186713 lambda!186686)))

(declare-fun bs!1012832 () Bool)

(assert (= bs!1012832 (and d!1449108 start!459328)))

(assert (=> bs!1012832 (= lambda!186713 lambda!186668)))

(declare-fun lt!1760512 () ListMap!3933)

(assert (=> d!1449108 (invariantList!1130 (toList!4672 lt!1760512))))

(declare-fun e!2870218 () ListMap!3933)

(assert (=> d!1449108 (= lt!1760512 e!2870218)))

(declare-fun c!788262 () Bool)

(assert (=> d!1449108 (= c!788262 ((_ is Cons!51105) (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))

(assert (=> d!1449108 (forall!10618 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105) lambda!186713)))

(assert (=> d!1449108 (= (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) lt!1760512)))

(declare-fun b!4601458 () Bool)

(assert (=> b!4601458 (= e!2870218 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))

(declare-fun b!4601459 () Bool)

(assert (=> b!4601459 (= e!2870218 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449108 c!788262) b!4601458))

(assert (= (and d!1449108 (not c!788262)) b!4601459))

(declare-fun m!5429539 () Bool)

(assert (=> d!1449108 m!5429539))

(declare-fun m!5429541 () Bool)

(assert (=> d!1449108 m!5429541))

(declare-fun m!5429543 () Bool)

(assert (=> b!4601458 m!5429543))

(assert (=> b!4601458 m!5429543))

(declare-fun m!5429545 () Bool)

(assert (=> b!4601458 m!5429545))

(assert (=> b!4601155 d!1449108))

(declare-fun d!1449110 () Bool)

(declare-fun content!8663 (List!51228) (InoxSet tuple2!51762))

(assert (=> d!1449110 (= (eq!735 (extractMap!1388 (Cons!51105 lt!1760293 Nil!51105)) (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287)) (= (content!8663 (toList!4672 (extractMap!1388 (Cons!51105 lt!1760293 Nil!51105)))) (content!8663 (toList!4672 (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287)))))))

(declare-fun bs!1012833 () Bool)

(assert (= bs!1012833 d!1449110))

(declare-fun m!5429547 () Bool)

(assert (=> bs!1012833 m!5429547))

(declare-fun m!5429549 () Bool)

(assert (=> bs!1012833 m!5429549))

(assert (=> b!4601155 d!1449110))

(declare-fun d!1449112 () Bool)

(assert (=> d!1449112 (= (tail!7965 (toList!4671 lt!1760294)) (t!358223 (toList!4671 lt!1760294)))))

(assert (=> b!4601155 d!1449112))

(declare-fun bs!1012834 () Bool)

(declare-fun d!1449114 () Bool)

(assert (= bs!1012834 (and d!1449114 d!1449064)))

(declare-fun lambda!186714 () Int)

(assert (=> bs!1012834 (= lambda!186714 lambda!186698)))

(declare-fun bs!1012835 () Bool)

(assert (= bs!1012835 (and d!1449114 d!1449044)))

(assert (=> bs!1012835 (= lambda!186714 lambda!186697)))

(declare-fun bs!1012836 () Bool)

(assert (= bs!1012836 (and d!1449114 d!1449066)))

(assert (=> bs!1012836 (= lambda!186714 lambda!186699)))

(declare-fun bs!1012837 () Bool)

(assert (= bs!1012837 (and d!1449114 d!1449080)))

(assert (=> bs!1012837 (= lambda!186714 lambda!186711)))

(declare-fun bs!1012838 () Bool)

(assert (= bs!1012838 (and d!1449114 d!1449108)))

(assert (=> bs!1012838 (= lambda!186714 lambda!186713)))

(declare-fun bs!1012839 () Bool)

(assert (= bs!1012839 (and d!1449114 d!1448988)))

(assert (=> bs!1012839 (= lambda!186714 lambda!186677)))

(declare-fun bs!1012840 () Bool)

(assert (= bs!1012840 (and d!1449114 d!1448970)))

(assert (=> bs!1012840 (not (= lambda!186714 lambda!186671))))

(declare-fun bs!1012841 () Bool)

(assert (= bs!1012841 (and d!1449114 d!1449032)))

(assert (=> bs!1012841 (= lambda!186714 lambda!186686)))

(declare-fun bs!1012842 () Bool)

(assert (= bs!1012842 (and d!1449114 start!459328)))

(assert (=> bs!1012842 (= lambda!186714 lambda!186668)))

(declare-fun lt!1760513 () ListMap!3933)

(assert (=> d!1449114 (invariantList!1130 (toList!4672 lt!1760513))))

(declare-fun e!2870219 () ListMap!3933)

(assert (=> d!1449114 (= lt!1760513 e!2870219)))

(declare-fun c!788263 () Bool)

(assert (=> d!1449114 (= c!788263 ((_ is Cons!51105) lt!1760308))))

(assert (=> d!1449114 (forall!10618 lt!1760308 lambda!186714)))

(assert (=> d!1449114 (= (extractMap!1388 lt!1760308) lt!1760513)))

(declare-fun b!4601460 () Bool)

(assert (=> b!4601460 (= e!2870219 (addToMapMapFromBucket!820 (_2!29176 (h!57075 lt!1760308)) (extractMap!1388 (t!358223 lt!1760308))))))

(declare-fun b!4601461 () Bool)

(assert (=> b!4601461 (= e!2870219 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449114 c!788263) b!4601460))

(assert (= (and d!1449114 (not c!788263)) b!4601461))

(declare-fun m!5429551 () Bool)

(assert (=> d!1449114 m!5429551))

(declare-fun m!5429553 () Bool)

(assert (=> d!1449114 m!5429553))

(declare-fun m!5429555 () Bool)

(assert (=> b!4601460 m!5429555))

(assert (=> b!4601460 m!5429555))

(declare-fun m!5429557 () Bool)

(assert (=> b!4601460 m!5429557))

(assert (=> b!4601155 d!1449114))

(declare-fun bs!1012843 () Bool)

(declare-fun d!1449116 () Bool)

(assert (= bs!1012843 (and d!1449116 d!1449064)))

(declare-fun lambda!186715 () Int)

(assert (=> bs!1012843 (= lambda!186715 lambda!186698)))

(declare-fun bs!1012844 () Bool)

(assert (= bs!1012844 (and d!1449116 d!1449044)))

(assert (=> bs!1012844 (= lambda!186715 lambda!186697)))

(declare-fun bs!1012845 () Bool)

(assert (= bs!1012845 (and d!1449116 d!1449066)))

(assert (=> bs!1012845 (= lambda!186715 lambda!186699)))

(declare-fun bs!1012846 () Bool)

(assert (= bs!1012846 (and d!1449116 d!1449080)))

(assert (=> bs!1012846 (= lambda!186715 lambda!186711)))

(declare-fun bs!1012847 () Bool)

(assert (= bs!1012847 (and d!1449116 d!1449108)))

(assert (=> bs!1012847 (= lambda!186715 lambda!186713)))

(declare-fun bs!1012848 () Bool)

(assert (= bs!1012848 (and d!1449116 d!1448988)))

(assert (=> bs!1012848 (= lambda!186715 lambda!186677)))

(declare-fun bs!1012849 () Bool)

(assert (= bs!1012849 (and d!1449116 d!1448970)))

(assert (=> bs!1012849 (not (= lambda!186715 lambda!186671))))

(declare-fun bs!1012850 () Bool)

(assert (= bs!1012850 (and d!1449116 d!1449114)))

(assert (=> bs!1012850 (= lambda!186715 lambda!186714)))

(declare-fun bs!1012851 () Bool)

(assert (= bs!1012851 (and d!1449116 d!1449032)))

(assert (=> bs!1012851 (= lambda!186715 lambda!186686)))

(declare-fun bs!1012852 () Bool)

(assert (= bs!1012852 (and d!1449116 start!459328)))

(assert (=> bs!1012852 (= lambda!186715 lambda!186668)))

(declare-fun lt!1760514 () ListMap!3933)

(assert (=> d!1449116 (invariantList!1130 (toList!4672 lt!1760514))))

(declare-fun e!2870220 () ListMap!3933)

(assert (=> d!1449116 (= lt!1760514 e!2870220)))

(declare-fun c!788264 () Bool)

(assert (=> d!1449116 (= c!788264 ((_ is Cons!51105) (Cons!51105 lt!1760293 Nil!51105)))))

(assert (=> d!1449116 (forall!10618 (Cons!51105 lt!1760293 Nil!51105) lambda!186715)))

(assert (=> d!1449116 (= (extractMap!1388 (Cons!51105 lt!1760293 Nil!51105)) lt!1760514)))

(declare-fun b!4601462 () Bool)

(assert (=> b!4601462 (= e!2870220 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))))))

(declare-fun b!4601463 () Bool)

(assert (=> b!4601463 (= e!2870220 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449116 c!788264) b!4601462))

(assert (= (and d!1449116 (not c!788264)) b!4601463))

(declare-fun m!5429559 () Bool)

(assert (=> d!1449116 m!5429559))

(declare-fun m!5429561 () Bool)

(assert (=> d!1449116 m!5429561))

(declare-fun m!5429563 () Bool)

(assert (=> b!4601462 m!5429563))

(assert (=> b!4601462 m!5429563))

(declare-fun m!5429565 () Bool)

(assert (=> b!4601462 m!5429565))

(assert (=> b!4601155 d!1449116))

(declare-fun bs!1012853 () Bool)

(declare-fun d!1449118 () Bool)

(assert (= bs!1012853 (and d!1449118 d!1449064)))

(declare-fun lambda!186718 () Int)

(assert (=> bs!1012853 (= lambda!186718 lambda!186698)))

(declare-fun bs!1012854 () Bool)

(assert (= bs!1012854 (and d!1449118 d!1449044)))

(assert (=> bs!1012854 (= lambda!186718 lambda!186697)))

(declare-fun bs!1012855 () Bool)

(assert (= bs!1012855 (and d!1449118 d!1449066)))

(assert (=> bs!1012855 (= lambda!186718 lambda!186699)))

(declare-fun bs!1012856 () Bool)

(assert (= bs!1012856 (and d!1449118 d!1449080)))

(assert (=> bs!1012856 (= lambda!186718 lambda!186711)))

(declare-fun bs!1012857 () Bool)

(assert (= bs!1012857 (and d!1449118 d!1449108)))

(assert (=> bs!1012857 (= lambda!186718 lambda!186713)))

(declare-fun bs!1012858 () Bool)

(assert (= bs!1012858 (and d!1449118 d!1448988)))

(assert (=> bs!1012858 (= lambda!186718 lambda!186677)))

(declare-fun bs!1012859 () Bool)

(assert (= bs!1012859 (and d!1449118 d!1448970)))

(assert (=> bs!1012859 (not (= lambda!186718 lambda!186671))))

(declare-fun bs!1012860 () Bool)

(assert (= bs!1012860 (and d!1449118 d!1449114)))

(assert (=> bs!1012860 (= lambda!186718 lambda!186714)))

(declare-fun bs!1012861 () Bool)

(assert (= bs!1012861 (and d!1449118 d!1449116)))

(assert (=> bs!1012861 (= lambda!186718 lambda!186715)))

(declare-fun bs!1012862 () Bool)

(assert (= bs!1012862 (and d!1449118 d!1449032)))

(assert (=> bs!1012862 (= lambda!186718 lambda!186686)))

(declare-fun bs!1012863 () Bool)

(assert (= bs!1012863 (and d!1449118 start!459328)))

(assert (=> bs!1012863 (= lambda!186718 lambda!186668)))

(assert (=> d!1449118 (contains!14065 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308))) key!3287)))

(declare-fun lt!1760517 () Unit!108559)

(declare-fun choose!30869 (ListLongMap!3303 K!12470 Hashable!5727) Unit!108559)

(assert (=> d!1449118 (= lt!1760517 (choose!30869 (ListLongMap!3304 lt!1760308) key!3287 hashF!1107))))

(assert (=> d!1449118 (forall!10618 (toList!4671 (ListLongMap!3304 lt!1760308)) lambda!186718)))

(assert (=> d!1449118 (= (lemmaListContainsThenExtractedMapContains!262 (ListLongMap!3304 lt!1760308) key!3287 hashF!1107) lt!1760517)))

(declare-fun bs!1012864 () Bool)

(assert (= bs!1012864 d!1449118))

(declare-fun m!5429567 () Bool)

(assert (=> bs!1012864 m!5429567))

(assert (=> bs!1012864 m!5429567))

(declare-fun m!5429569 () Bool)

(assert (=> bs!1012864 m!5429569))

(declare-fun m!5429571 () Bool)

(assert (=> bs!1012864 m!5429571))

(declare-fun m!5429573 () Bool)

(assert (=> bs!1012864 m!5429573))

(assert (=> b!4601155 d!1449118))

(declare-fun d!1449120 () Bool)

(declare-fun e!2870223 () Bool)

(assert (=> d!1449120 e!2870223))

(declare-fun res!1924920 () Bool)

(assert (=> d!1449120 (=> (not res!1924920) (not e!2870223))))

(declare-fun lt!1760520 () ListMap!3933)

(assert (=> d!1449120 (= res!1924920 (not (contains!14065 lt!1760520 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!226 (List!51228 K!12470) List!51228)

(assert (=> d!1449120 (= lt!1760520 (ListMap!3934 (removePresrvNoDuplicatedKeys!226 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) key!3287)))))

(assert (=> d!1449120 (= (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287) lt!1760520)))

(declare-fun b!4601466 () Bool)

(declare-fun content!8664 (List!51231) (InoxSet K!12470))

(assert (=> b!4601466 (= e!2870223 (= ((_ map and) (content!8664 (keys!17900 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) ((_ map not) (store ((as const (Array K!12470 Bool)) false) key!3287 true))) (content!8664 (keys!17900 lt!1760520))))))

(assert (= (and d!1449120 res!1924920) b!4601466))

(declare-fun m!5429575 () Bool)

(assert (=> d!1449120 m!5429575))

(declare-fun m!5429577 () Bool)

(assert (=> d!1449120 m!5429577))

(assert (=> b!4601466 m!5429091))

(declare-fun m!5429579 () Bool)

(assert (=> b!4601466 m!5429579))

(declare-fun m!5429581 () Bool)

(assert (=> b!4601466 m!5429581))

(declare-fun m!5429583 () Bool)

(assert (=> b!4601466 m!5429583))

(assert (=> b!4601466 m!5429581))

(declare-fun m!5429585 () Bool)

(assert (=> b!4601466 m!5429585))

(assert (=> b!4601466 m!5429579))

(declare-fun m!5429587 () Bool)

(assert (=> b!4601466 m!5429587))

(assert (=> b!4601155 d!1449120))

(declare-fun d!1449122 () Bool)

(declare-fun e!2870224 () Bool)

(assert (=> d!1449122 e!2870224))

(declare-fun res!1924922 () Bool)

(assert (=> d!1449122 (=> (not res!1924922) (not e!2870224))))

(declare-fun lt!1760524 () ListLongMap!3303)

(assert (=> d!1449122 (= res!1924922 (contains!14066 lt!1760524 (_1!29176 lt!1760293)))))

(declare-fun lt!1760523 () List!51229)

(assert (=> d!1449122 (= lt!1760524 (ListLongMap!3304 lt!1760523))))

(declare-fun lt!1760522 () Unit!108559)

(declare-fun lt!1760521 () Unit!108559)

(assert (=> d!1449122 (= lt!1760522 lt!1760521)))

(assert (=> d!1449122 (= (getValueByKey!1323 lt!1760523 (_1!29176 lt!1760293)) (Some!11402 (_2!29176 lt!1760293)))))

(assert (=> d!1449122 (= lt!1760521 (lemmaContainsTupThenGetReturnValue!802 lt!1760523 (_1!29176 lt!1760293) (_2!29176 lt!1760293)))))

(assert (=> d!1449122 (= lt!1760523 (insertStrictlySorted!494 (toList!4671 lm!1477) (_1!29176 lt!1760293) (_2!29176 lt!1760293)))))

(assert (=> d!1449122 (= (+!1758 lm!1477 lt!1760293) lt!1760524)))

(declare-fun b!4601467 () Bool)

(declare-fun res!1924921 () Bool)

(assert (=> b!4601467 (=> (not res!1924921) (not e!2870224))))

(assert (=> b!4601467 (= res!1924921 (= (getValueByKey!1323 (toList!4671 lt!1760524) (_1!29176 lt!1760293)) (Some!11402 (_2!29176 lt!1760293))))))

(declare-fun b!4601468 () Bool)

(assert (=> b!4601468 (= e!2870224 (contains!14067 (toList!4671 lt!1760524) lt!1760293))))

(assert (= (and d!1449122 res!1924922) b!4601467))

(assert (= (and b!4601467 res!1924921) b!4601468))

(declare-fun m!5429589 () Bool)

(assert (=> d!1449122 m!5429589))

(declare-fun m!5429591 () Bool)

(assert (=> d!1449122 m!5429591))

(declare-fun m!5429593 () Bool)

(assert (=> d!1449122 m!5429593))

(declare-fun m!5429595 () Bool)

(assert (=> d!1449122 m!5429595))

(declare-fun m!5429597 () Bool)

(assert (=> b!4601467 m!5429597))

(declare-fun m!5429599 () Bool)

(assert (=> b!4601468 m!5429599))

(assert (=> b!4601155 d!1449122))

(declare-fun d!1449124 () Bool)

(assert (=> d!1449124 (eq!735 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 newBucket!178) Nil!51105)) (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287))))

(declare-fun lt!1760527 () Unit!108559)

(declare-fun choose!30870 ((_ BitVec 64) List!51228 List!51228 K!12470 Hashable!5727) Unit!108559)

(assert (=> d!1449124 (= lt!1760527 (choose!30870 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1449124 (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lm!1477))))))

(assert (=> d!1449124 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!94 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1760527)))

(declare-fun bs!1012865 () Bool)

(assert (= bs!1012865 d!1449124))

(declare-fun m!5429601 () Bool)

(assert (=> bs!1012865 m!5429601))

(assert (=> bs!1012865 m!5429085))

(declare-fun m!5429603 () Bool)

(assert (=> bs!1012865 m!5429603))

(assert (=> bs!1012865 m!5429029))

(assert (=> bs!1012865 m!5429091))

(assert (=> bs!1012865 m!5429085))

(assert (=> bs!1012865 m!5429091))

(assert (=> bs!1012865 m!5429601))

(declare-fun m!5429605 () Bool)

(assert (=> bs!1012865 m!5429605))

(assert (=> b!4601155 d!1449124))

(declare-fun b!4601473 () Bool)

(declare-fun e!2870227 () Bool)

(declare-fun tp!1340561 () Bool)

(declare-fun tp!1340562 () Bool)

(assert (=> b!4601473 (= e!2870227 (and tp!1340561 tp!1340562))))

(assert (=> b!4601149 (= tp!1340547 e!2870227)))

(assert (= (and b!4601149 ((_ is Cons!51105) (toList!4671 lm!1477))) b!4601473))

(declare-fun e!2870230 () Bool)

(declare-fun b!4601478 () Bool)

(declare-fun tp!1340565 () Bool)

(assert (=> b!4601478 (= e!2870230 (and tp_is_empty!28605 tp_is_empty!28607 tp!1340565))))

(assert (=> b!4601158 (= tp!1340546 e!2870230)))

(assert (= (and b!4601158 ((_ is Cons!51104) (t!358222 newBucket!178))) b!4601478))

(declare-fun b_lambda!169593 () Bool)

(assert (= b_lambda!169583 (or start!459328 b_lambda!169593)))

(declare-fun bs!1012866 () Bool)

(declare-fun d!1449126 () Bool)

(assert (= bs!1012866 (and d!1449126 start!459328)))

(assert (=> bs!1012866 (= (dynLambda!21405 lambda!186668 lt!1760302) (noDuplicateKeys!1328 (_2!29176 lt!1760302)))))

(declare-fun m!5429607 () Bool)

(assert (=> bs!1012866 m!5429607))

(assert (=> d!1449006 d!1449126))

(declare-fun b_lambda!169595 () Bool)

(assert (= b_lambda!169581 (or start!459328 b_lambda!169595)))

(declare-fun bs!1012867 () Bool)

(declare-fun d!1449128 () Bool)

(assert (= bs!1012867 (and d!1449128 start!459328)))

(assert (=> bs!1012867 (= (dynLambda!21405 lambda!186668 (h!57075 (toList!4671 lm!1477))) (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(assert (=> bs!1012867 m!5429029))

(assert (=> b!4601237 d!1449128))

(check-sat (not d!1449064) (not b!4601455) (not bs!1012866) (not b!4601327) (not d!1449016) (not d!1449114) (not bm!321110) (not b!4601307) (not b!4601238) (not bm!321108) (not b!4601316) (not d!1449066) (not b!4601458) (not d!1448980) (not b!4601450) (not d!1448978) (not d!1449076) (not b!4601192) (not b!4601322) (not d!1449008) (not b_lambda!169593) (not b!4601462) (not b!4601468) (not b!4601191) (not b!4601466) (not b!4601460) (not d!1449022) (not d!1449120) (not b!4601378) (not b!4601321) (not d!1448972) (not b!4601478) (not b!4601271) (not b_lambda!169595) (not d!1449036) (not d!1449080) (not b!4601325) (not b!4601374) (not b!4601313) (not d!1449034) (not b!4601187) (not b!4601274) (not bs!1012867) (not b!4601216) (not d!1448998) (not d!1449032) (not d!1448992) (not d!1449038) (not b!4601186) (not b!4601231) (not b!4601190) (not d!1449124) (not b!4601314) (not b!4601449) (not d!1449044) (not d!1449006) (not d!1449110) (not d!1449122) (not b!4601185) (not b!4601369) (not b!4601217) (not b!4601306) (not d!1449026) (not b!4601467) (not b!4601456) tp_is_empty!28605 (not b!4601398) (not d!1449106) (not d!1449116) tp_is_empty!28607 (not b!4601304) (not d!1448994) (not b!4601232) (not bm!321103) (not d!1448988) (not d!1449108) (not d!1448970) (not b!4601400) (not d!1449104) (not b!4601189) (not b!4601453) (not b!4601323) (not b!4601328) (not b!4601454) (not b!4601253) (not b!4601451) (not b!4601298) (not b!4601473) (not b!4601282) (not b!4601326) (not b!4601251) (not d!1449118))
(check-sat)
(get-model)

(declare-fun d!1449130 () Bool)

(declare-fun lt!1760530 () Bool)

(assert (=> d!1449130 (= lt!1760530 (select (content!8664 (keys!17900 (extractMap!1388 lt!1760308))) key!3287))))

(declare-fun e!2870236 () Bool)

(assert (=> d!1449130 (= lt!1760530 e!2870236)))

(declare-fun res!1924927 () Bool)

(assert (=> d!1449130 (=> (not res!1924927) (not e!2870236))))

(assert (=> d!1449130 (= res!1924927 ((_ is Cons!51107) (keys!17900 (extractMap!1388 lt!1760308))))))

(assert (=> d!1449130 (= (contains!14069 (keys!17900 (extractMap!1388 lt!1760308)) key!3287) lt!1760530)))

(declare-fun b!4601483 () Bool)

(declare-fun e!2870235 () Bool)

(assert (=> b!4601483 (= e!2870236 e!2870235)))

(declare-fun res!1924928 () Bool)

(assert (=> b!4601483 (=> res!1924928 e!2870235)))

(assert (=> b!4601483 (= res!1924928 (= (h!57079 (keys!17900 (extractMap!1388 lt!1760308))) key!3287))))

(declare-fun b!4601484 () Bool)

(assert (=> b!4601484 (= e!2870235 (contains!14069 (t!358225 (keys!17900 (extractMap!1388 lt!1760308))) key!3287))))

(assert (= (and d!1449130 res!1924927) b!4601483))

(assert (= (and b!4601483 (not res!1924928)) b!4601484))

(assert (=> d!1449130 m!5429519))

(declare-fun m!5429609 () Bool)

(assert (=> d!1449130 m!5429609))

(declare-fun m!5429611 () Bool)

(assert (=> d!1449130 m!5429611))

(declare-fun m!5429613 () Bool)

(assert (=> b!4601484 m!5429613))

(assert (=> b!4601456 d!1449130))

(declare-fun b!4601492 () Bool)

(assert (=> b!4601492 true))

(declare-fun d!1449132 () Bool)

(declare-fun e!2870239 () Bool)

(assert (=> d!1449132 e!2870239))

(declare-fun res!1924935 () Bool)

(assert (=> d!1449132 (=> (not res!1924935) (not e!2870239))))

(declare-fun lt!1760533 () List!51231)

(declare-fun noDuplicate!815 (List!51231) Bool)

(assert (=> d!1449132 (= res!1924935 (noDuplicate!815 lt!1760533))))

(assert (=> d!1449132 (= lt!1760533 (getKeysList!579 (toList!4672 (extractMap!1388 lt!1760308))))))

(assert (=> d!1449132 (= (keys!17900 (extractMap!1388 lt!1760308)) lt!1760533)))

(declare-fun b!4601491 () Bool)

(declare-fun res!1924936 () Bool)

(assert (=> b!4601491 (=> (not res!1924936) (not e!2870239))))

(declare-fun length!486 (List!51231) Int)

(declare-fun length!487 (List!51228) Int)

(assert (=> b!4601491 (= res!1924936 (= (length!486 lt!1760533) (length!487 (toList!4672 (extractMap!1388 lt!1760308)))))))

(declare-fun res!1924937 () Bool)

(assert (=> b!4601492 (=> (not res!1924937) (not e!2870239))))

(declare-fun lambda!186723 () Int)

(declare-fun forall!10621 (List!51231 Int) Bool)

(assert (=> b!4601492 (= res!1924937 (forall!10621 lt!1760533 lambda!186723))))

(declare-fun b!4601493 () Bool)

(declare-fun lambda!186724 () Int)

(declare-fun map!11292 (List!51228 Int) List!51231)

(assert (=> b!4601493 (= e!2870239 (= (content!8664 lt!1760533) (content!8664 (map!11292 (toList!4672 (extractMap!1388 lt!1760308)) lambda!186724))))))

(assert (= (and d!1449132 res!1924935) b!4601491))

(assert (= (and b!4601491 res!1924936) b!4601492))

(assert (= (and b!4601492 res!1924937) b!4601493))

(declare-fun m!5429615 () Bool)

(assert (=> d!1449132 m!5429615))

(assert (=> d!1449132 m!5429533))

(declare-fun m!5429617 () Bool)

(assert (=> b!4601491 m!5429617))

(declare-fun m!5429619 () Bool)

(assert (=> b!4601491 m!5429619))

(declare-fun m!5429621 () Bool)

(assert (=> b!4601492 m!5429621))

(declare-fun m!5429623 () Bool)

(assert (=> b!4601493 m!5429623))

(declare-fun m!5429625 () Bool)

(assert (=> b!4601493 m!5429625))

(assert (=> b!4601493 m!5429625))

(declare-fun m!5429627 () Bool)

(assert (=> b!4601493 m!5429627))

(assert (=> b!4601456 d!1449132))

(declare-fun b!4601506 () Bool)

(declare-fun e!2870245 () Option!11403)

(assert (=> b!4601506 (= e!2870245 (getValueByKey!1323 (t!358223 (toList!4671 lm!1477)) hash!344))))

(declare-fun b!4601504 () Bool)

(declare-fun e!2870244 () Option!11403)

(assert (=> b!4601504 (= e!2870244 (Some!11402 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(declare-fun d!1449134 () Bool)

(declare-fun c!788269 () Bool)

(assert (=> d!1449134 (= c!788269 (and ((_ is Cons!51105) (toList!4671 lm!1477)) (= (_1!29176 (h!57075 (toList!4671 lm!1477))) hash!344)))))

(assert (=> d!1449134 (= (getValueByKey!1323 (toList!4671 lm!1477) hash!344) e!2870244)))

(declare-fun b!4601505 () Bool)

(assert (=> b!4601505 (= e!2870244 e!2870245)))

(declare-fun c!788270 () Bool)

(assert (=> b!4601505 (= c!788270 (and ((_ is Cons!51105) (toList!4671 lm!1477)) (not (= (_1!29176 (h!57075 (toList!4671 lm!1477))) hash!344))))))

(declare-fun b!4601507 () Bool)

(assert (=> b!4601507 (= e!2870245 None!11402)))

(assert (= (and d!1449134 c!788269) b!4601504))

(assert (= (and d!1449134 (not c!788269)) b!4601505))

(assert (= (and b!4601505 c!788270) b!4601506))

(assert (= (and b!4601505 (not c!788270)) b!4601507))

(declare-fun m!5429629 () Bool)

(assert (=> b!4601506 m!5429629))

(assert (=> b!4601271 d!1449134))

(assert (=> bs!1012867 d!1449028))

(declare-fun b!4601510 () Bool)

(declare-fun e!2870247 () Option!11403)

(assert (=> b!4601510 (= e!2870247 (getValueByKey!1323 (t!358223 (toList!4671 lt!1760524)) (_1!29176 lt!1760293)))))

(declare-fun b!4601508 () Bool)

(declare-fun e!2870246 () Option!11403)

(assert (=> b!4601508 (= e!2870246 (Some!11402 (_2!29176 (h!57075 (toList!4671 lt!1760524)))))))

(declare-fun d!1449136 () Bool)

(declare-fun c!788271 () Bool)

(assert (=> d!1449136 (= c!788271 (and ((_ is Cons!51105) (toList!4671 lt!1760524)) (= (_1!29176 (h!57075 (toList!4671 lt!1760524))) (_1!29176 lt!1760293))))))

(assert (=> d!1449136 (= (getValueByKey!1323 (toList!4671 lt!1760524) (_1!29176 lt!1760293)) e!2870246)))

(declare-fun b!4601509 () Bool)

(assert (=> b!4601509 (= e!2870246 e!2870247)))

(declare-fun c!788272 () Bool)

(assert (=> b!4601509 (= c!788272 (and ((_ is Cons!51105) (toList!4671 lt!1760524)) (not (= (_1!29176 (h!57075 (toList!4671 lt!1760524))) (_1!29176 lt!1760293)))))))

(declare-fun b!4601511 () Bool)

(assert (=> b!4601511 (= e!2870247 None!11402)))

(assert (= (and d!1449136 c!788271) b!4601508))

(assert (= (and d!1449136 (not c!788271)) b!4601509))

(assert (= (and b!4601509 c!788272) b!4601510))

(assert (= (and b!4601509 (not c!788272)) b!4601511))

(declare-fun m!5429631 () Bool)

(assert (=> b!4601510 m!5429631))

(assert (=> b!4601467 d!1449136))

(declare-fun b!4601512 () Bool)

(declare-fun e!2870248 () List!51231)

(assert (=> b!4601512 (= e!2870248 (getKeysList!579 (toList!4672 lt!1760520)))))

(declare-fun b!4601513 () Bool)

(declare-fun e!2870249 () Bool)

(assert (=> b!4601513 (= e!2870249 (contains!14069 (keys!17900 lt!1760520) key!3287))))

(declare-fun b!4601514 () Bool)

(assert (=> b!4601514 false))

(declare-fun lt!1760541 () Unit!108559)

(declare-fun lt!1760540 () Unit!108559)

(assert (=> b!4601514 (= lt!1760541 lt!1760540)))

(assert (=> b!4601514 (containsKey!2178 (toList!4672 lt!1760520) key!3287)))

(assert (=> b!4601514 (= lt!1760540 (lemmaInGetKeysListThenContainsKey!578 (toList!4672 lt!1760520) key!3287))))

(declare-fun e!2870253 () Unit!108559)

(declare-fun Unit!108581 () Unit!108559)

(assert (=> b!4601514 (= e!2870253 Unit!108581)))

(declare-fun b!4601515 () Bool)

(declare-fun Unit!108582 () Unit!108559)

(assert (=> b!4601515 (= e!2870253 Unit!108582)))

(declare-fun b!4601516 () Bool)

(declare-fun e!2870251 () Unit!108559)

(declare-fun lt!1760535 () Unit!108559)

(assert (=> b!4601516 (= e!2870251 lt!1760535)))

(declare-fun lt!1760536 () Unit!108559)

(assert (=> b!4601516 (= lt!1760536 (lemmaContainsKeyImpliesGetValueByKeyDefined!1225 (toList!4672 lt!1760520) key!3287))))

(assert (=> b!4601516 (isDefined!8669 (getValueByKey!1322 (toList!4672 lt!1760520) key!3287))))

(declare-fun lt!1760539 () Unit!108559)

(assert (=> b!4601516 (= lt!1760539 lt!1760536)))

(assert (=> b!4601516 (= lt!1760535 (lemmaInListThenGetKeysListContains!575 (toList!4672 lt!1760520) key!3287))))

(declare-fun call!321116 () Bool)

(assert (=> b!4601516 call!321116))

(declare-fun b!4601517 () Bool)

(declare-fun e!2870250 () Bool)

(assert (=> b!4601517 (= e!2870250 e!2870249)))

(declare-fun res!1924939 () Bool)

(assert (=> b!4601517 (=> (not res!1924939) (not e!2870249))))

(assert (=> b!4601517 (= res!1924939 (isDefined!8669 (getValueByKey!1322 (toList!4672 lt!1760520) key!3287)))))

(declare-fun b!4601518 () Bool)

(assert (=> b!4601518 (= e!2870248 (keys!17900 lt!1760520))))

(declare-fun b!4601519 () Bool)

(declare-fun e!2870252 () Bool)

(assert (=> b!4601519 (= e!2870252 (not (contains!14069 (keys!17900 lt!1760520) key!3287)))))

(declare-fun b!4601520 () Bool)

(assert (=> b!4601520 (= e!2870251 e!2870253)))

(declare-fun c!788275 () Bool)

(assert (=> b!4601520 (= c!788275 call!321116)))

(declare-fun bm!321111 () Bool)

(assert (=> bm!321111 (= call!321116 (contains!14069 e!2870248 key!3287))))

(declare-fun c!788274 () Bool)

(declare-fun c!788273 () Bool)

(assert (=> bm!321111 (= c!788274 c!788273)))

(declare-fun d!1449138 () Bool)

(assert (=> d!1449138 e!2870250))

(declare-fun res!1924938 () Bool)

(assert (=> d!1449138 (=> res!1924938 e!2870250)))

(assert (=> d!1449138 (= res!1924938 e!2870252)))

(declare-fun res!1924940 () Bool)

(assert (=> d!1449138 (=> (not res!1924940) (not e!2870252))))

(declare-fun lt!1760534 () Bool)

(assert (=> d!1449138 (= res!1924940 (not lt!1760534))))

(declare-fun lt!1760537 () Bool)

(assert (=> d!1449138 (= lt!1760534 lt!1760537)))

(declare-fun lt!1760538 () Unit!108559)

(assert (=> d!1449138 (= lt!1760538 e!2870251)))

(assert (=> d!1449138 (= c!788273 lt!1760537)))

(assert (=> d!1449138 (= lt!1760537 (containsKey!2178 (toList!4672 lt!1760520) key!3287))))

(assert (=> d!1449138 (= (contains!14065 lt!1760520 key!3287) lt!1760534)))

(assert (= (and d!1449138 c!788273) b!4601516))

(assert (= (and d!1449138 (not c!788273)) b!4601520))

(assert (= (and b!4601520 c!788275) b!4601514))

(assert (= (and b!4601520 (not c!788275)) b!4601515))

(assert (= (or b!4601516 b!4601520) bm!321111))

(assert (= (and bm!321111 c!788274) b!4601512))

(assert (= (and bm!321111 (not c!788274)) b!4601518))

(assert (= (and d!1449138 res!1924940) b!4601519))

(assert (= (and d!1449138 (not res!1924938)) b!4601517))

(assert (= (and b!4601517 res!1924939) b!4601513))

(assert (=> b!4601518 m!5429581))

(declare-fun m!5429633 () Bool)

(assert (=> bm!321111 m!5429633))

(declare-fun m!5429635 () Bool)

(assert (=> d!1449138 m!5429635))

(assert (=> b!4601513 m!5429581))

(assert (=> b!4601513 m!5429581))

(declare-fun m!5429637 () Bool)

(assert (=> b!4601513 m!5429637))

(declare-fun m!5429639 () Bool)

(assert (=> b!4601517 m!5429639))

(assert (=> b!4601517 m!5429639))

(declare-fun m!5429641 () Bool)

(assert (=> b!4601517 m!5429641))

(assert (=> b!4601514 m!5429635))

(declare-fun m!5429643 () Bool)

(assert (=> b!4601514 m!5429643))

(declare-fun m!5429645 () Bool)

(assert (=> b!4601512 m!5429645))

(assert (=> b!4601519 m!5429581))

(assert (=> b!4601519 m!5429581))

(assert (=> b!4601519 m!5429637))

(declare-fun m!5429647 () Bool)

(assert (=> b!4601516 m!5429647))

(assert (=> b!4601516 m!5429639))

(assert (=> b!4601516 m!5429639))

(assert (=> b!4601516 m!5429641))

(declare-fun m!5429649 () Bool)

(assert (=> b!4601516 m!5429649))

(assert (=> d!1449120 d!1449138))

(declare-fun b!4601559 () Bool)

(declare-fun res!1924948 () Bool)

(declare-fun e!2870277 () Bool)

(assert (=> b!4601559 (=> (not res!1924948) (not e!2870277))))

(declare-fun lt!1760595 () List!51228)

(assert (=> b!4601559 (= res!1924948 (not (containsKey!2178 lt!1760595 key!3287)))))

(declare-fun b!4601560 () Bool)

(declare-fun e!2870274 () List!51228)

(assert (=> b!4601560 (= e!2870274 Nil!51104)))

(declare-fun bm!321124 () Bool)

(declare-fun call!321132 () (InoxSet tuple2!51762))

(assert (=> bm!321124 (= call!321132 (content!8663 (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))))

(declare-fun e!2870278 () List!51228)

(declare-fun c!788299 () Bool)

(declare-fun call!321134 () Bool)

(declare-fun lt!1760592 () K!12470)

(declare-fun bm!321125 () Bool)

(assert (=> bm!321125 (= call!321134 (containsKey!2178 e!2870278 (ite c!788299 lt!1760592 (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))))))

(declare-fun c!788292 () Bool)

(assert (=> bm!321125 (= c!788292 c!788299)))

(declare-fun b!4601561 () Bool)

(declare-fun e!2870281 () Bool)

(assert (=> b!4601561 (= e!2870277 e!2870281)))

(declare-fun c!788298 () Bool)

(assert (=> b!4601561 (= c!788298 (containsKey!2178 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) key!3287))))

(declare-fun b!4601562 () Bool)

(declare-fun e!2870282 () Unit!108559)

(declare-fun Unit!108583 () Unit!108559)

(assert (=> b!4601562 (= e!2870282 Unit!108583)))

(declare-fun lt!1760580 () V!12716)

(declare-fun get!16897 (Option!11402) V!12716)

(assert (=> b!4601562 (= lt!1760580 (get!16897 (getValueByKey!1322 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) key!3287)))))

(assert (=> b!4601562 (= lt!1760592 key!3287)))

(declare-fun lt!1760585 () K!12470)

(assert (=> b!4601562 (= lt!1760585 key!3287)))

(declare-fun lt!1760578 () Unit!108559)

(declare-fun lemmaContainsTupleThenContainsKey!108 (List!51228 K!12470 V!12716) Unit!108559)

(assert (=> b!4601562 (= lt!1760578 (lemmaContainsTupleThenContainsKey!108 (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) lt!1760592 (get!16897 (getValueByKey!1322 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) key!3287))))))

(assert (=> b!4601562 call!321134))

(declare-fun lt!1760589 () Unit!108559)

(assert (=> b!4601562 (= lt!1760589 lt!1760578)))

(assert (=> b!4601562 false))

(declare-fun b!4601563 () Bool)

(declare-fun e!2870275 () Unit!108559)

(declare-fun Unit!108584 () Unit!108559)

(assert (=> b!4601563 (= e!2870275 Unit!108584)))

(declare-fun b!4601564 () Bool)

(assert (=> b!4601564 (= e!2870278 (removePresrvNoDuplicatedKeys!226 (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) key!3287))))

(declare-fun b!4601566 () Bool)

(declare-fun Unit!108585 () Unit!108559)

(assert (=> b!4601566 (= e!2870282 Unit!108585)))

(declare-fun bm!321126 () Bool)

(declare-fun call!321131 () (InoxSet tuple2!51762))

(assert (=> bm!321126 (= call!321131 (content!8663 lt!1760595))))

(declare-fun b!4601567 () Bool)

(declare-fun call!321130 () (InoxSet tuple2!51762))

(assert (=> b!4601567 (= e!2870281 (= call!321131 call!321130))))

(declare-fun b!4601568 () Bool)

(declare-fun e!2870276 () List!51228)

(assert (=> b!4601568 (= e!2870276 e!2870274)))

(declare-fun c!788294 () Bool)

(assert (=> b!4601568 (= c!788294 (and ((_ is Cons!51104) (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (not (= (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))) key!3287))))))

(declare-fun b!4601569 () Bool)

(assert (=> b!4601569 (= e!2870278 (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))

(declare-fun b!4601570 () Bool)

(declare-fun res!1924947 () Bool)

(assert (=> b!4601570 (=> (not res!1924947) (not e!2870277))))

(assert (=> b!4601570 (= res!1924947 (= (content!8664 (getKeysList!579 lt!1760595)) ((_ map and) (content!8664 (getKeysList!579 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))) ((_ map not) (store ((as const (Array K!12470 Bool)) false) key!3287 true)))))))

(declare-fun bm!321127 () Bool)

(assert (=> bm!321127 (= call!321130 (content!8663 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))

(declare-fun b!4601571 () Bool)

(assert (=> b!4601571 (= e!2870276 (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))

(declare-fun c!788297 () Bool)

(declare-fun call!321133 () Bool)

(assert (=> b!4601571 (= c!788297 call!321133)))

(declare-fun lt!1760587 () Unit!108559)

(declare-fun e!2870280 () Unit!108559)

(assert (=> b!4601571 (= lt!1760587 e!2870280)))

(declare-fun b!4601572 () Bool)

(declare-fun e!2870279 () Unit!108559)

(declare-fun Unit!108586 () Unit!108559)

(assert (=> b!4601572 (= e!2870279 Unit!108586)))

(declare-fun lt!1760586 () Unit!108559)

(assert (=> b!4601572 (= lt!1760586 (lemmaInGetKeysListThenContainsKey!578 (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))))

(assert (=> b!4601572 call!321133))

(declare-fun lt!1760584 () Unit!108559)

(assert (=> b!4601572 (= lt!1760584 lt!1760586)))

(assert (=> b!4601572 false))

(declare-fun b!4601573 () Bool)

(declare-fun call!321129 () (InoxSet tuple2!51762))

(assert (=> b!4601573 (= call!321132 ((_ map and) call!321129 ((_ map not) (store ((as const (Array tuple2!51762 Bool)) false) (tuple2!51763 key!3287 (get!16897 (getValueByKey!1322 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) key!3287))) true))))))

(declare-fun lt!1760581 () Unit!108559)

(assert (=> b!4601573 (= lt!1760581 e!2870282)))

(declare-fun c!788293 () Bool)

(declare-fun contains!14070 (List!51228 tuple2!51762) Bool)

(assert (=> b!4601573 (= c!788293 (contains!14070 (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (tuple2!51763 key!3287 (get!16897 (getValueByKey!1322 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) key!3287)))))))

(declare-fun Unit!108587 () Unit!108559)

(assert (=> b!4601573 (= e!2870280 Unit!108587)))

(declare-fun bm!321128 () Bool)

(assert (=> bm!321128 (= call!321133 (containsKey!2178 (ite c!788299 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))) (ite c!788299 key!3287 (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))))))

(declare-fun b!4601574 () Bool)

(assert (=> b!4601574 (= call!321132 call!321129)))

(declare-fun Unit!108588 () Unit!108559)

(assert (=> b!4601574 (= e!2870280 Unit!108588)))

(declare-fun b!4601575 () Bool)

(declare-fun Unit!108589 () Unit!108559)

(assert (=> b!4601575 (= e!2870275 Unit!108589)))

(declare-fun lt!1760591 () List!51228)

(assert (=> b!4601575 (= lt!1760591 (removePresrvNoDuplicatedKeys!226 (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) key!3287))))

(declare-fun lt!1760582 () Unit!108559)

(assert (=> b!4601575 (= lt!1760582 (lemmaInListThenGetKeysListContains!575 lt!1760591 (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))))

(assert (=> b!4601575 (contains!14069 (getKeysList!579 lt!1760591) (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))))

(declare-fun lt!1760593 () Unit!108559)

(assert (=> b!4601575 (= lt!1760593 lt!1760582)))

(assert (=> b!4601575 false))

(declare-fun b!4601576 () Bool)

(declare-fun lt!1760579 () Unit!108559)

(assert (=> b!4601576 (= lt!1760579 e!2870275)))

(declare-fun c!788295 () Bool)

(assert (=> b!4601576 (= c!788295 call!321134)))

(declare-fun lt!1760588 () Unit!108559)

(assert (=> b!4601576 (= lt!1760588 e!2870279)))

(declare-fun c!788296 () Bool)

(assert (=> b!4601576 (= c!788296 (contains!14069 (getKeysList!579 (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))) (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))))

(declare-fun lt!1760590 () List!51228)

(declare-fun $colon$colon!1047 (List!51228 tuple2!51762) List!51228)

(assert (=> b!4601576 (= lt!1760590 ($colon$colon!1047 (removePresrvNoDuplicatedKeys!226 (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) key!3287) (h!57074 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))))

(assert (=> b!4601576 (= e!2870274 lt!1760590)))

(declare-fun bm!321129 () Bool)

(assert (=> bm!321129 (= call!321129 (content!8663 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))

(declare-fun b!4601577 () Bool)

(assert (=> b!4601577 (= e!2870281 (= call!321131 ((_ map and) call!321130 ((_ map not) (store ((as const (Array tuple2!51762 Bool)) false) (tuple2!51763 key!3287 (get!16897 (getValueByKey!1322 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) key!3287))) true)))))))

(assert (=> b!4601577 (containsKey!2178 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) key!3287)))

(declare-fun lt!1760583 () Unit!108559)

(assert (=> b!4601577 (= lt!1760583 (lemmaContainsKeyImpliesGetValueByKeyDefined!1225 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) key!3287))))

(assert (=> b!4601577 (isDefined!8669 (getValueByKey!1322 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) key!3287))))

(declare-fun lt!1760594 () Unit!108559)

(assert (=> b!4601577 (= lt!1760594 lt!1760583)))

(declare-fun b!4601565 () Bool)

(declare-fun Unit!108590 () Unit!108559)

(assert (=> b!4601565 (= e!2870279 Unit!108590)))

(declare-fun d!1449140 () Bool)

(assert (=> d!1449140 e!2870277))

(declare-fun res!1924949 () Bool)

(assert (=> d!1449140 (=> (not res!1924949) (not e!2870277))))

(assert (=> d!1449140 (= res!1924949 (invariantList!1130 lt!1760595))))

(assert (=> d!1449140 (= lt!1760595 e!2870276)))

(assert (=> d!1449140 (= c!788299 (and ((_ is Cons!51104) (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))) key!3287)))))

(assert (=> d!1449140 (invariantList!1130 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))

(assert (=> d!1449140 (= (removePresrvNoDuplicatedKeys!226 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) key!3287) lt!1760595)))

(assert (= (and d!1449140 c!788299) b!4601571))

(assert (= (and d!1449140 (not c!788299)) b!4601568))

(assert (= (and b!4601571 c!788297) b!4601573))

(assert (= (and b!4601571 (not c!788297)) b!4601574))

(assert (= (and b!4601573 c!788293) b!4601562))

(assert (= (and b!4601573 (not c!788293)) b!4601566))

(assert (= (or b!4601573 b!4601574) bm!321124))

(assert (= (or b!4601573 b!4601574) bm!321129))

(assert (= (and b!4601568 c!788294) b!4601576))

(assert (= (and b!4601568 (not c!788294)) b!4601560))

(assert (= (and b!4601576 c!788296) b!4601572))

(assert (= (and b!4601576 (not c!788296)) b!4601565))

(assert (= (and b!4601576 c!788295) b!4601575))

(assert (= (and b!4601576 (not c!788295)) b!4601563))

(assert (= (or b!4601571 b!4601572) bm!321128))

(assert (= (or b!4601562 b!4601576) bm!321125))

(assert (= (and bm!321125 c!788292) b!4601569))

(assert (= (and bm!321125 (not c!788292)) b!4601564))

(assert (= (and d!1449140 res!1924949) b!4601559))

(assert (= (and b!4601559 res!1924948) b!4601570))

(assert (= (and b!4601570 res!1924947) b!4601561))

(assert (= (and b!4601561 c!788298) b!4601577))

(assert (= (and b!4601561 (not c!788298)) b!4601567))

(assert (= (or b!4601577 b!4601567) bm!321126))

(assert (= (or b!4601577 b!4601567) bm!321127))

(declare-fun m!5429651 () Bool)

(assert (=> bm!321127 m!5429651))

(declare-fun m!5429653 () Bool)

(assert (=> b!4601576 m!5429653))

(assert (=> b!4601576 m!5429653))

(declare-fun m!5429655 () Bool)

(assert (=> b!4601576 m!5429655))

(declare-fun m!5429657 () Bool)

(assert (=> b!4601576 m!5429657))

(assert (=> b!4601576 m!5429657))

(declare-fun m!5429659 () Bool)

(assert (=> b!4601576 m!5429659))

(declare-fun m!5429661 () Bool)

(assert (=> bm!321126 m!5429661))

(declare-fun m!5429663 () Bool)

(assert (=> b!4601570 m!5429663))

(declare-fun m!5429665 () Bool)

(assert (=> b!4601570 m!5429665))

(declare-fun m!5429667 () Bool)

(assert (=> b!4601570 m!5429667))

(assert (=> b!4601570 m!5429665))

(assert (=> b!4601570 m!5429583))

(assert (=> b!4601570 m!5429663))

(declare-fun m!5429669 () Bool)

(assert (=> b!4601570 m!5429669))

(declare-fun m!5429671 () Bool)

(assert (=> b!4601577 m!5429671))

(declare-fun m!5429673 () Bool)

(assert (=> b!4601577 m!5429673))

(declare-fun m!5429675 () Bool)

(assert (=> b!4601577 m!5429675))

(assert (=> b!4601577 m!5429671))

(declare-fun m!5429677 () Bool)

(assert (=> b!4601577 m!5429677))

(assert (=> b!4601577 m!5429671))

(declare-fun m!5429679 () Bool)

(assert (=> b!4601577 m!5429679))

(declare-fun m!5429681 () Bool)

(assert (=> b!4601577 m!5429681))

(declare-fun m!5429683 () Bool)

(assert (=> b!4601559 m!5429683))

(assert (=> b!4601575 m!5429657))

(declare-fun m!5429685 () Bool)

(assert (=> b!4601575 m!5429685))

(declare-fun m!5429687 () Bool)

(assert (=> b!4601575 m!5429687))

(assert (=> b!4601575 m!5429687))

(declare-fun m!5429689 () Bool)

(assert (=> b!4601575 m!5429689))

(declare-fun m!5429691 () Bool)

(assert (=> bm!321124 m!5429691))

(assert (=> b!4601573 m!5429671))

(assert (=> b!4601573 m!5429671))

(assert (=> b!4601573 m!5429679))

(assert (=> b!4601573 m!5429675))

(declare-fun m!5429693 () Bool)

(assert (=> b!4601573 m!5429693))

(assert (=> bm!321129 m!5429651))

(declare-fun m!5429695 () Bool)

(assert (=> bm!321128 m!5429695))

(assert (=> b!4601561 m!5429677))

(assert (=> b!4601564 m!5429657))

(declare-fun m!5429697 () Bool)

(assert (=> bm!321125 m!5429697))

(declare-fun m!5429699 () Bool)

(assert (=> d!1449140 m!5429699))

(declare-fun m!5429701 () Bool)

(assert (=> d!1449140 m!5429701))

(declare-fun m!5429703 () Bool)

(assert (=> b!4601572 m!5429703))

(assert (=> b!4601562 m!5429671))

(assert (=> b!4601562 m!5429671))

(assert (=> b!4601562 m!5429679))

(assert (=> b!4601562 m!5429679))

(declare-fun m!5429705 () Bool)

(assert (=> b!4601562 m!5429705))

(assert (=> d!1449120 d!1449140))

(declare-fun d!1449142 () Bool)

(declare-fun lt!1760596 () Bool)

(assert (=> d!1449142 (= lt!1760596 (select (content!8664 e!2870212) key!3287))))

(declare-fun e!2870284 () Bool)

(assert (=> d!1449142 (= lt!1760596 e!2870284)))

(declare-fun res!1924950 () Bool)

(assert (=> d!1449142 (=> (not res!1924950) (not e!2870284))))

(assert (=> d!1449142 (= res!1924950 ((_ is Cons!51107) e!2870212))))

(assert (=> d!1449142 (= (contains!14069 e!2870212 key!3287) lt!1760596)))

(declare-fun b!4601578 () Bool)

(declare-fun e!2870283 () Bool)

(assert (=> b!4601578 (= e!2870284 e!2870283)))

(declare-fun res!1924951 () Bool)

(assert (=> b!4601578 (=> res!1924951 e!2870283)))

(assert (=> b!4601578 (= res!1924951 (= (h!57079 e!2870212) key!3287))))

(declare-fun b!4601579 () Bool)

(assert (=> b!4601579 (= e!2870283 (contains!14069 (t!358225 e!2870212) key!3287))))

(assert (= (and d!1449142 res!1924950) b!4601578))

(assert (= (and b!4601578 (not res!1924951)) b!4601579))

(declare-fun m!5429707 () Bool)

(assert (=> d!1449142 m!5429707))

(declare-fun m!5429709 () Bool)

(assert (=> d!1449142 m!5429709))

(declare-fun m!5429711 () Bool)

(assert (=> b!4601579 m!5429711))

(assert (=> bm!321110 d!1449142))

(declare-fun d!1449144 () Bool)

(assert (=> d!1449144 (isDefined!8669 (getValueByKey!1322 (toList!4672 (extractMap!1388 lt!1760308)) key!3287))))

(declare-fun lt!1760599 () Unit!108559)

(declare-fun choose!30871 (List!51228 K!12470) Unit!108559)

(assert (=> d!1449144 (= lt!1760599 (choose!30871 (toList!4672 (extractMap!1388 lt!1760308)) key!3287))))

(assert (=> d!1449144 (invariantList!1130 (toList!4672 (extractMap!1388 lt!1760308)))))

(assert (=> d!1449144 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1225 (toList!4672 (extractMap!1388 lt!1760308)) key!3287) lt!1760599)))

(declare-fun bs!1012868 () Bool)

(assert (= bs!1012868 d!1449144))

(assert (=> bs!1012868 m!5429527))

(assert (=> bs!1012868 m!5429527))

(assert (=> bs!1012868 m!5429529))

(declare-fun m!5429713 () Bool)

(assert (=> bs!1012868 m!5429713))

(declare-fun m!5429715 () Bool)

(assert (=> bs!1012868 m!5429715))

(assert (=> b!4601453 d!1449144))

(declare-fun d!1449146 () Bool)

(declare-fun isEmpty!28871 (Option!11402) Bool)

(assert (=> d!1449146 (= (isDefined!8669 (getValueByKey!1322 (toList!4672 (extractMap!1388 lt!1760308)) key!3287)) (not (isEmpty!28871 (getValueByKey!1322 (toList!4672 (extractMap!1388 lt!1760308)) key!3287))))))

(declare-fun bs!1012869 () Bool)

(assert (= bs!1012869 d!1449146))

(assert (=> bs!1012869 m!5429527))

(declare-fun m!5429717 () Bool)

(assert (=> bs!1012869 m!5429717))

(assert (=> b!4601453 d!1449146))

(declare-fun b!4601589 () Bool)

(declare-fun e!2870289 () Option!11402)

(declare-fun e!2870290 () Option!11402)

(assert (=> b!4601589 (= e!2870289 e!2870290)))

(declare-fun c!788305 () Bool)

(assert (=> b!4601589 (= c!788305 (and ((_ is Cons!51104) (toList!4672 (extractMap!1388 lt!1760308))) (not (= (_1!29175 (h!57074 (toList!4672 (extractMap!1388 lt!1760308)))) key!3287))))))

(declare-fun b!4601590 () Bool)

(assert (=> b!4601590 (= e!2870290 (getValueByKey!1322 (t!358222 (toList!4672 (extractMap!1388 lt!1760308))) key!3287))))

(declare-fun b!4601588 () Bool)

(assert (=> b!4601588 (= e!2870289 (Some!11401 (_2!29175 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))))))))

(declare-fun b!4601591 () Bool)

(assert (=> b!4601591 (= e!2870290 None!11401)))

(declare-fun d!1449148 () Bool)

(declare-fun c!788304 () Bool)

(assert (=> d!1449148 (= c!788304 (and ((_ is Cons!51104) (toList!4672 (extractMap!1388 lt!1760308))) (= (_1!29175 (h!57074 (toList!4672 (extractMap!1388 lt!1760308)))) key!3287)))))

(assert (=> d!1449148 (= (getValueByKey!1322 (toList!4672 (extractMap!1388 lt!1760308)) key!3287) e!2870289)))

(assert (= (and d!1449148 c!788304) b!4601588))

(assert (= (and d!1449148 (not c!788304)) b!4601589))

(assert (= (and b!4601589 c!788305) b!4601590))

(assert (= (and b!4601589 (not c!788305)) b!4601591))

(declare-fun m!5429719 () Bool)

(assert (=> b!4601590 m!5429719))

(assert (=> b!4601453 d!1449148))

(declare-fun d!1449150 () Bool)

(assert (=> d!1449150 (contains!14069 (getKeysList!579 (toList!4672 (extractMap!1388 lt!1760308))) key!3287)))

(declare-fun lt!1760602 () Unit!108559)

(declare-fun choose!30872 (List!51228 K!12470) Unit!108559)

(assert (=> d!1449150 (= lt!1760602 (choose!30872 (toList!4672 (extractMap!1388 lt!1760308)) key!3287))))

(assert (=> d!1449150 (invariantList!1130 (toList!4672 (extractMap!1388 lt!1760308)))))

(assert (=> d!1449150 (= (lemmaInListThenGetKeysListContains!575 (toList!4672 (extractMap!1388 lt!1760308)) key!3287) lt!1760602)))

(declare-fun bs!1012870 () Bool)

(assert (= bs!1012870 d!1449150))

(assert (=> bs!1012870 m!5429533))

(assert (=> bs!1012870 m!5429533))

(declare-fun m!5429721 () Bool)

(assert (=> bs!1012870 m!5429721))

(declare-fun m!5429723 () Bool)

(assert (=> bs!1012870 m!5429723))

(assert (=> bs!1012870 m!5429715))

(assert (=> b!4601453 d!1449150))

(declare-fun d!1449152 () Bool)

(declare-fun e!2870291 () Bool)

(assert (=> d!1449152 e!2870291))

(declare-fun res!1924952 () Bool)

(assert (=> d!1449152 (=> res!1924952 e!2870291)))

(declare-fun lt!1760603 () Bool)

(assert (=> d!1449152 (= res!1924952 (not lt!1760603))))

(declare-fun lt!1760605 () Bool)

(assert (=> d!1449152 (= lt!1760603 lt!1760605)))

(declare-fun lt!1760606 () Unit!108559)

(declare-fun e!2870292 () Unit!108559)

(assert (=> d!1449152 (= lt!1760606 e!2870292)))

(declare-fun c!788306 () Bool)

(assert (=> d!1449152 (= c!788306 lt!1760605)))

(assert (=> d!1449152 (= lt!1760605 (containsKey!2179 (toList!4671 lm!1477) (hash!3239 hashF!1107 key!3287)))))

(assert (=> d!1449152 (= (contains!14066 lm!1477 (hash!3239 hashF!1107 key!3287)) lt!1760603)))

(declare-fun b!4601592 () Bool)

(declare-fun lt!1760604 () Unit!108559)

(assert (=> b!4601592 (= e!2870292 lt!1760604)))

(assert (=> b!4601592 (= lt!1760604 (lemmaContainsKeyImpliesGetValueByKeyDefined!1226 (toList!4671 lm!1477) (hash!3239 hashF!1107 key!3287)))))

(assert (=> b!4601592 (isDefined!8670 (getValueByKey!1323 (toList!4671 lm!1477) (hash!3239 hashF!1107 key!3287)))))

(declare-fun b!4601593 () Bool)

(declare-fun Unit!108591 () Unit!108559)

(assert (=> b!4601593 (= e!2870292 Unit!108591)))

(declare-fun b!4601594 () Bool)

(assert (=> b!4601594 (= e!2870291 (isDefined!8670 (getValueByKey!1323 (toList!4671 lm!1477) (hash!3239 hashF!1107 key!3287))))))

(assert (= (and d!1449152 c!788306) b!4601592))

(assert (= (and d!1449152 (not c!788306)) b!4601593))

(assert (= (and d!1449152 (not res!1924952)) b!4601594))

(assert (=> d!1449152 m!5429051))

(declare-fun m!5429725 () Bool)

(assert (=> d!1449152 m!5429725))

(assert (=> b!4601592 m!5429051))

(declare-fun m!5429727 () Bool)

(assert (=> b!4601592 m!5429727))

(assert (=> b!4601592 m!5429051))

(declare-fun m!5429729 () Bool)

(assert (=> b!4601592 m!5429729))

(assert (=> b!4601592 m!5429729))

(declare-fun m!5429731 () Bool)

(assert (=> b!4601592 m!5429731))

(assert (=> b!4601594 m!5429051))

(assert (=> b!4601594 m!5429729))

(assert (=> b!4601594 m!5429729))

(assert (=> b!4601594 m!5429731))

(assert (=> d!1448988 d!1449152))

(assert (=> d!1448988 d!1449076))

(declare-fun d!1449154 () Bool)

(assert (=> d!1449154 (contains!14066 lm!1477 (hash!3239 hashF!1107 key!3287))))

(assert (=> d!1449154 true))

(declare-fun _$27!1445 () Unit!108559)

(assert (=> d!1449154 (= (choose!30861 lm!1477 key!3287 hashF!1107) _$27!1445)))

(declare-fun bs!1012871 () Bool)

(assert (= bs!1012871 d!1449154))

(assert (=> bs!1012871 m!5429051))

(assert (=> bs!1012871 m!5429051))

(assert (=> bs!1012871 m!5429173))

(assert (=> d!1448988 d!1449154))

(declare-fun d!1449156 () Bool)

(declare-fun res!1924953 () Bool)

(declare-fun e!2870293 () Bool)

(assert (=> d!1449156 (=> res!1924953 e!2870293)))

(assert (=> d!1449156 (= res!1924953 ((_ is Nil!51105) (toList!4671 lm!1477)))))

(assert (=> d!1449156 (= (forall!10618 (toList!4671 lm!1477) lambda!186677) e!2870293)))

(declare-fun b!4601595 () Bool)

(declare-fun e!2870294 () Bool)

(assert (=> b!4601595 (= e!2870293 e!2870294)))

(declare-fun res!1924954 () Bool)

(assert (=> b!4601595 (=> (not res!1924954) (not e!2870294))))

(assert (=> b!4601595 (= res!1924954 (dynLambda!21405 lambda!186677 (h!57075 (toList!4671 lm!1477))))))

(declare-fun b!4601596 () Bool)

(assert (=> b!4601596 (= e!2870294 (forall!10618 (t!358223 (toList!4671 lm!1477)) lambda!186677))))

(assert (= (and d!1449156 (not res!1924953)) b!4601595))

(assert (= (and b!4601595 res!1924954) b!4601596))

(declare-fun b_lambda!169597 () Bool)

(assert (=> (not b_lambda!169597) (not b!4601595)))

(declare-fun m!5429733 () Bool)

(assert (=> b!4601595 m!5429733))

(declare-fun m!5429735 () Bool)

(assert (=> b!4601596 m!5429735))

(assert (=> d!1448988 d!1449156))

(declare-fun b!4601600 () Bool)

(declare-fun e!2870295 () List!51228)

(assert (=> b!4601600 (= e!2870295 Nil!51104)))

(declare-fun b!4601599 () Bool)

(assert (=> b!4601599 (= e!2870295 (Cons!51104 (h!57074 (t!358222 lt!1760296)) (removePairForKey!953 (t!358222 (t!358222 lt!1760296)) key!3287)))))

(declare-fun b!4601598 () Bool)

(declare-fun e!2870296 () List!51228)

(assert (=> b!4601598 (= e!2870296 e!2870295)))

(declare-fun c!788307 () Bool)

(assert (=> b!4601598 (= c!788307 ((_ is Cons!51104) (t!358222 lt!1760296)))))

(declare-fun d!1449158 () Bool)

(declare-fun lt!1760607 () List!51228)

(assert (=> d!1449158 (not (containsKey!2176 lt!1760607 key!3287))))

(assert (=> d!1449158 (= lt!1760607 e!2870296)))

(declare-fun c!788308 () Bool)

(assert (=> d!1449158 (= c!788308 (and ((_ is Cons!51104) (t!358222 lt!1760296)) (= (_1!29175 (h!57074 (t!358222 lt!1760296))) key!3287)))))

(assert (=> d!1449158 (noDuplicateKeys!1328 (t!358222 lt!1760296))))

(assert (=> d!1449158 (= (removePairForKey!953 (t!358222 lt!1760296) key!3287) lt!1760607)))

(declare-fun b!4601597 () Bool)

(assert (=> b!4601597 (= e!2870296 (t!358222 (t!358222 lt!1760296)))))

(assert (= (and d!1449158 c!788308) b!4601597))

(assert (= (and d!1449158 (not c!788308)) b!4601598))

(assert (= (and b!4601598 c!788307) b!4601599))

(assert (= (and b!4601598 (not c!788307)) b!4601600))

(declare-fun m!5429737 () Bool)

(assert (=> b!4601599 m!5429737))

(declare-fun m!5429739 () Bool)

(assert (=> d!1449158 m!5429739))

(declare-fun m!5429741 () Bool)

(assert (=> d!1449158 m!5429741))

(assert (=> b!4601298 d!1449158))

(declare-fun d!1449160 () Bool)

(declare-fun isEmpty!28872 (Option!11403) Bool)

(assert (=> d!1449160 (= (isDefined!8670 (getValueByKey!1323 (toList!4671 lt!1760292) lt!1760301)) (not (isEmpty!28872 (getValueByKey!1323 (toList!4671 lt!1760292) lt!1760301))))))

(declare-fun bs!1012872 () Bool)

(assert (= bs!1012872 d!1449160))

(assert (=> bs!1012872 m!5429321))

(declare-fun m!5429743 () Bool)

(assert (=> bs!1012872 m!5429743))

(assert (=> b!4601316 d!1449160))

(declare-fun b!4601603 () Bool)

(declare-fun e!2870298 () Option!11403)

(assert (=> b!4601603 (= e!2870298 (getValueByKey!1323 (t!358223 (toList!4671 lt!1760292)) lt!1760301))))

(declare-fun b!4601601 () Bool)

(declare-fun e!2870297 () Option!11403)

(assert (=> b!4601601 (= e!2870297 (Some!11402 (_2!29176 (h!57075 (toList!4671 lt!1760292)))))))

(declare-fun d!1449162 () Bool)

(declare-fun c!788309 () Bool)

(assert (=> d!1449162 (= c!788309 (and ((_ is Cons!51105) (toList!4671 lt!1760292)) (= (_1!29176 (h!57075 (toList!4671 lt!1760292))) lt!1760301)))))

(assert (=> d!1449162 (= (getValueByKey!1323 (toList!4671 lt!1760292) lt!1760301) e!2870297)))

(declare-fun b!4601602 () Bool)

(assert (=> b!4601602 (= e!2870297 e!2870298)))

(declare-fun c!788310 () Bool)

(assert (=> b!4601602 (= c!788310 (and ((_ is Cons!51105) (toList!4671 lt!1760292)) (not (= (_1!29176 (h!57075 (toList!4671 lt!1760292))) lt!1760301))))))

(declare-fun b!4601604 () Bool)

(assert (=> b!4601604 (= e!2870298 None!11402)))

(assert (= (and d!1449162 c!788309) b!4601601))

(assert (= (and d!1449162 (not c!788309)) b!4601602))

(assert (= (and b!4601602 c!788310) b!4601603))

(assert (= (and b!4601602 (not c!788310)) b!4601604))

(declare-fun m!5429745 () Bool)

(assert (=> b!4601603 m!5429745))

(assert (=> b!4601316 d!1449162))

(declare-fun d!1449164 () Bool)

(assert (=> d!1449164 (isDefined!8670 (getValueByKey!1323 (toList!4671 lt!1760292) lt!1760301))))

(declare-fun lt!1760610 () Unit!108559)

(declare-fun choose!30873 (List!51229 (_ BitVec 64)) Unit!108559)

(assert (=> d!1449164 (= lt!1760610 (choose!30873 (toList!4671 lt!1760292) lt!1760301))))

(declare-fun e!2870301 () Bool)

(assert (=> d!1449164 e!2870301))

(declare-fun res!1924957 () Bool)

(assert (=> d!1449164 (=> (not res!1924957) (not e!2870301))))

(assert (=> d!1449164 (= res!1924957 (isStrictlySorted!545 (toList!4671 lt!1760292)))))

(assert (=> d!1449164 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1226 (toList!4671 lt!1760292) lt!1760301) lt!1760610)))

(declare-fun b!4601607 () Bool)

(assert (=> b!4601607 (= e!2870301 (containsKey!2179 (toList!4671 lt!1760292) lt!1760301))))

(assert (= (and d!1449164 res!1924957) b!4601607))

(assert (=> d!1449164 m!5429321))

(assert (=> d!1449164 m!5429321))

(assert (=> d!1449164 m!5429323))

(declare-fun m!5429747 () Bool)

(assert (=> d!1449164 m!5429747))

(declare-fun m!5429749 () Bool)

(assert (=> d!1449164 m!5429749))

(assert (=> b!4601607 m!5429317))

(assert (=> b!4601314 d!1449164))

(assert (=> b!4601314 d!1449160))

(assert (=> b!4601314 d!1449162))

(declare-fun d!1449166 () Bool)

(declare-fun res!1924962 () Bool)

(declare-fun e!2870306 () Bool)

(assert (=> d!1449166 (=> res!1924962 e!2870306)))

(assert (=> d!1449166 (= res!1924962 (and ((_ is Cons!51104) (toList!4672 lt!1760307)) (= (_1!29175 (h!57074 (toList!4672 lt!1760307))) key!3287)))))

(assert (=> d!1449166 (= (containsKey!2178 (toList!4672 lt!1760307) key!3287) e!2870306)))

(declare-fun b!4601612 () Bool)

(declare-fun e!2870307 () Bool)

(assert (=> b!4601612 (= e!2870306 e!2870307)))

(declare-fun res!1924963 () Bool)

(assert (=> b!4601612 (=> (not res!1924963) (not e!2870307))))

(assert (=> b!4601612 (= res!1924963 ((_ is Cons!51104) (toList!4672 lt!1760307)))))

(declare-fun b!4601613 () Bool)

(assert (=> b!4601613 (= e!2870307 (containsKey!2178 (t!358222 (toList!4672 lt!1760307)) key!3287))))

(assert (= (and d!1449166 (not res!1924962)) b!4601612))

(assert (= (and b!4601612 res!1924963) b!4601613))

(declare-fun m!5429751 () Bool)

(assert (=> b!4601613 m!5429751))

(assert (=> d!1448972 d!1449166))

(declare-fun d!1449168 () Bool)

(declare-fun res!1924964 () Bool)

(declare-fun e!2870308 () Bool)

(assert (=> d!1449168 (=> res!1924964 e!2870308)))

(assert (=> d!1449168 (= res!1924964 (not ((_ is Cons!51104) (_2!29176 lt!1760302))))))

(assert (=> d!1449168 (= (noDuplicateKeys!1328 (_2!29176 lt!1760302)) e!2870308)))

(declare-fun b!4601614 () Bool)

(declare-fun e!2870309 () Bool)

(assert (=> b!4601614 (= e!2870308 e!2870309)))

(declare-fun res!1924965 () Bool)

(assert (=> b!4601614 (=> (not res!1924965) (not e!2870309))))

(assert (=> b!4601614 (= res!1924965 (not (containsKey!2176 (t!358222 (_2!29176 lt!1760302)) (_1!29175 (h!57074 (_2!29176 lt!1760302))))))))

(declare-fun b!4601615 () Bool)

(assert (=> b!4601615 (= e!2870309 (noDuplicateKeys!1328 (t!358222 (_2!29176 lt!1760302))))))

(assert (= (and d!1449168 (not res!1924964)) b!4601614))

(assert (= (and b!4601614 res!1924965) b!4601615))

(declare-fun m!5429753 () Bool)

(assert (=> b!4601614 m!5429753))

(declare-fun m!5429755 () Bool)

(assert (=> b!4601615 m!5429755))

(assert (=> bs!1012866 d!1449168))

(declare-fun d!1449170 () Bool)

(declare-fun lt!1760611 () Bool)

(assert (=> d!1449170 (= lt!1760611 (select (content!8664 (keys!17900 (extractMap!1388 (toList!4671 lm!1477)))) key!3287))))

(declare-fun e!2870311 () Bool)

(assert (=> d!1449170 (= lt!1760611 e!2870311)))

(declare-fun res!1924966 () Bool)

(assert (=> d!1449170 (=> (not res!1924966) (not e!2870311))))

(assert (=> d!1449170 (= res!1924966 ((_ is Cons!51107) (keys!17900 (extractMap!1388 (toList!4671 lm!1477)))))))

(assert (=> d!1449170 (= (contains!14069 (keys!17900 (extractMap!1388 (toList!4671 lm!1477))) key!3287) lt!1760611)))

(declare-fun b!4601616 () Bool)

(declare-fun e!2870310 () Bool)

(assert (=> b!4601616 (= e!2870311 e!2870310)))

(declare-fun res!1924967 () Bool)

(assert (=> b!4601616 (=> res!1924967 e!2870310)))

(assert (=> b!4601616 (= res!1924967 (= (h!57079 (keys!17900 (extractMap!1388 (toList!4671 lm!1477)))) key!3287))))

(declare-fun b!4601617 () Bool)

(assert (=> b!4601617 (= e!2870310 (contains!14069 (t!358225 (keys!17900 (extractMap!1388 (toList!4671 lm!1477)))) key!3287))))

(assert (= (and d!1449170 res!1924966) b!4601616))

(assert (= (and b!4601616 (not res!1924967)) b!4601617))

(assert (=> d!1449170 m!5429333))

(declare-fun m!5429757 () Bool)

(assert (=> d!1449170 m!5429757))

(declare-fun m!5429759 () Bool)

(assert (=> d!1449170 m!5429759))

(declare-fun m!5429761 () Bool)

(assert (=> b!4601617 m!5429761))

(assert (=> b!4601328 d!1449170))

(declare-fun bs!1012873 () Bool)

(declare-fun b!4601619 () Bool)

(assert (= bs!1012873 (and b!4601619 b!4601492)))

(declare-fun lambda!186725 () Int)

(assert (=> bs!1012873 (= (= (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186725 lambda!186723))))

(assert (=> b!4601619 true))

(declare-fun bs!1012874 () Bool)

(declare-fun b!4601620 () Bool)

(assert (= bs!1012874 (and b!4601620 b!4601493)))

(declare-fun lambda!186726 () Int)

(assert (=> bs!1012874 (= lambda!186726 lambda!186724)))

(declare-fun d!1449172 () Bool)

(declare-fun e!2870312 () Bool)

(assert (=> d!1449172 e!2870312))

(declare-fun res!1924968 () Bool)

(assert (=> d!1449172 (=> (not res!1924968) (not e!2870312))))

(declare-fun lt!1760612 () List!51231)

(assert (=> d!1449172 (= res!1924968 (noDuplicate!815 lt!1760612))))

(assert (=> d!1449172 (= lt!1760612 (getKeysList!579 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))))

(assert (=> d!1449172 (= (keys!17900 (extractMap!1388 (toList!4671 lm!1477))) lt!1760612)))

(declare-fun b!4601618 () Bool)

(declare-fun res!1924969 () Bool)

(assert (=> b!4601618 (=> (not res!1924969) (not e!2870312))))

(assert (=> b!4601618 (= res!1924969 (= (length!486 lt!1760612) (length!487 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))))))

(declare-fun res!1924970 () Bool)

(assert (=> b!4601619 (=> (not res!1924970) (not e!2870312))))

(assert (=> b!4601619 (= res!1924970 (forall!10621 lt!1760612 lambda!186725))))

(assert (=> b!4601620 (= e!2870312 (= (content!8664 lt!1760612) (content!8664 (map!11292 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) lambda!186726))))))

(assert (= (and d!1449172 res!1924968) b!4601618))

(assert (= (and b!4601618 res!1924969) b!4601619))

(assert (= (and b!4601619 res!1924970) b!4601620))

(declare-fun m!5429763 () Bool)

(assert (=> d!1449172 m!5429763))

(assert (=> d!1449172 m!5429351))

(declare-fun m!5429765 () Bool)

(assert (=> b!4601618 m!5429765))

(declare-fun m!5429767 () Bool)

(assert (=> b!4601618 m!5429767))

(declare-fun m!5429769 () Bool)

(assert (=> b!4601619 m!5429769))

(declare-fun m!5429771 () Bool)

(assert (=> b!4601620 m!5429771))

(declare-fun m!5429773 () Bool)

(assert (=> b!4601620 m!5429773))

(assert (=> b!4601620 m!5429773))

(declare-fun m!5429775 () Bool)

(assert (=> b!4601620 m!5429775))

(assert (=> b!4601328 d!1449172))

(declare-fun d!1449174 () Bool)

(declare-fun e!2870313 () Bool)

(assert (=> d!1449174 e!2870313))

(declare-fun res!1924971 () Bool)

(assert (=> d!1449174 (=> res!1924971 e!2870313)))

(declare-fun lt!1760613 () Bool)

(assert (=> d!1449174 (= res!1924971 (not lt!1760613))))

(declare-fun lt!1760615 () Bool)

(assert (=> d!1449174 (= lt!1760613 lt!1760615)))

(declare-fun lt!1760616 () Unit!108559)

(declare-fun e!2870314 () Unit!108559)

(assert (=> d!1449174 (= lt!1760616 e!2870314)))

(declare-fun c!788311 () Bool)

(assert (=> d!1449174 (= c!788311 lt!1760615)))

(assert (=> d!1449174 (= lt!1760615 (containsKey!2179 (toList!4671 lt!1760292) (hash!3239 hashF!1107 key!3287)))))

(assert (=> d!1449174 (= (contains!14066 lt!1760292 (hash!3239 hashF!1107 key!3287)) lt!1760613)))

(declare-fun b!4601621 () Bool)

(declare-fun lt!1760614 () Unit!108559)

(assert (=> b!4601621 (= e!2870314 lt!1760614)))

(assert (=> b!4601621 (= lt!1760614 (lemmaContainsKeyImpliesGetValueByKeyDefined!1226 (toList!4671 lt!1760292) (hash!3239 hashF!1107 key!3287)))))

(assert (=> b!4601621 (isDefined!8670 (getValueByKey!1323 (toList!4671 lt!1760292) (hash!3239 hashF!1107 key!3287)))))

(declare-fun b!4601622 () Bool)

(declare-fun Unit!108592 () Unit!108559)

(assert (=> b!4601622 (= e!2870314 Unit!108592)))

(declare-fun b!4601623 () Bool)

(assert (=> b!4601623 (= e!2870313 (isDefined!8670 (getValueByKey!1323 (toList!4671 lt!1760292) (hash!3239 hashF!1107 key!3287))))))

(assert (= (and d!1449174 c!788311) b!4601621))

(assert (= (and d!1449174 (not c!788311)) b!4601622))

(assert (= (and d!1449174 (not res!1924971)) b!4601623))

(assert (=> d!1449174 m!5429051))

(declare-fun m!5429777 () Bool)

(assert (=> d!1449174 m!5429777))

(assert (=> b!4601621 m!5429051))

(declare-fun m!5429779 () Bool)

(assert (=> b!4601621 m!5429779))

(assert (=> b!4601621 m!5429051))

(declare-fun m!5429781 () Bool)

(assert (=> b!4601621 m!5429781))

(assert (=> b!4601621 m!5429781))

(declare-fun m!5429783 () Bool)

(assert (=> b!4601621 m!5429783))

(assert (=> b!4601623 m!5429051))

(assert (=> b!4601623 m!5429781))

(assert (=> b!4601623 m!5429781))

(assert (=> b!4601623 m!5429783))

(assert (=> d!1449032 d!1449174))

(assert (=> d!1449032 d!1449076))

(declare-fun d!1449176 () Bool)

(assert (=> d!1449176 (contains!14066 lt!1760292 (hash!3239 hashF!1107 key!3287))))

(assert (=> d!1449176 true))

(declare-fun _$27!1446 () Unit!108559)

(assert (=> d!1449176 (= (choose!30861 lt!1760292 key!3287 hashF!1107) _$27!1446)))

(declare-fun bs!1012875 () Bool)

(assert (= bs!1012875 d!1449176))

(assert (=> bs!1012875 m!5429051))

(assert (=> bs!1012875 m!5429051))

(assert (=> bs!1012875 m!5429311))

(assert (=> d!1449032 d!1449176))

(declare-fun d!1449178 () Bool)

(declare-fun res!1924972 () Bool)

(declare-fun e!2870315 () Bool)

(assert (=> d!1449178 (=> res!1924972 e!2870315)))

(assert (=> d!1449178 (= res!1924972 ((_ is Nil!51105) (toList!4671 lt!1760292)))))

(assert (=> d!1449178 (= (forall!10618 (toList!4671 lt!1760292) lambda!186686) e!2870315)))

(declare-fun b!4601624 () Bool)

(declare-fun e!2870316 () Bool)

(assert (=> b!4601624 (= e!2870315 e!2870316)))

(declare-fun res!1924973 () Bool)

(assert (=> b!4601624 (=> (not res!1924973) (not e!2870316))))

(assert (=> b!4601624 (= res!1924973 (dynLambda!21405 lambda!186686 (h!57075 (toList!4671 lt!1760292))))))

(declare-fun b!4601625 () Bool)

(assert (=> b!4601625 (= e!2870316 (forall!10618 (t!358223 (toList!4671 lt!1760292)) lambda!186686))))

(assert (= (and d!1449178 (not res!1924972)) b!4601624))

(assert (= (and b!4601624 res!1924973) b!4601625))

(declare-fun b_lambda!169599 () Bool)

(assert (=> (not b_lambda!169599) (not b!4601624)))

(declare-fun m!5429785 () Bool)

(assert (=> b!4601624 m!5429785))

(declare-fun m!5429787 () Bool)

(assert (=> b!4601625 m!5429787))

(assert (=> d!1449032 d!1449178))

(declare-fun d!1449180 () Bool)

(declare-fun res!1924974 () Bool)

(declare-fun e!2870317 () Bool)

(assert (=> d!1449180 (=> res!1924974 e!2870317)))

(assert (=> d!1449180 (= res!1924974 (and ((_ is Cons!51104) (toList!4672 (extractMap!1388 lt!1760308))) (= (_1!29175 (h!57074 (toList!4672 (extractMap!1388 lt!1760308)))) key!3287)))))

(assert (=> d!1449180 (= (containsKey!2178 (toList!4672 (extractMap!1388 lt!1760308)) key!3287) e!2870317)))

(declare-fun b!4601626 () Bool)

(declare-fun e!2870318 () Bool)

(assert (=> b!4601626 (= e!2870317 e!2870318)))

(declare-fun res!1924975 () Bool)

(assert (=> b!4601626 (=> (not res!1924975) (not e!2870318))))

(assert (=> b!4601626 (= res!1924975 ((_ is Cons!51104) (toList!4672 (extractMap!1388 lt!1760308))))))

(declare-fun b!4601627 () Bool)

(assert (=> b!4601627 (= e!2870318 (containsKey!2178 (t!358222 (toList!4672 (extractMap!1388 lt!1760308))) key!3287))))

(assert (= (and d!1449180 (not res!1924974)) b!4601626))

(assert (= (and b!4601626 res!1924975) b!4601627))

(declare-fun m!5429789 () Bool)

(assert (=> b!4601627 m!5429789))

(assert (=> b!4601451 d!1449180))

(declare-fun d!1449182 () Bool)

(assert (=> d!1449182 (containsKey!2178 (toList!4672 (extractMap!1388 lt!1760308)) key!3287)))

(declare-fun lt!1760619 () Unit!108559)

(declare-fun choose!30874 (List!51228 K!12470) Unit!108559)

(assert (=> d!1449182 (= lt!1760619 (choose!30874 (toList!4672 (extractMap!1388 lt!1760308)) key!3287))))

(assert (=> d!1449182 (invariantList!1130 (toList!4672 (extractMap!1388 lt!1760308)))))

(assert (=> d!1449182 (= (lemmaInGetKeysListThenContainsKey!578 (toList!4672 (extractMap!1388 lt!1760308)) key!3287) lt!1760619)))

(declare-fun bs!1012876 () Bool)

(assert (= bs!1012876 d!1449182))

(assert (=> bs!1012876 m!5429523))

(declare-fun m!5429791 () Bool)

(assert (=> bs!1012876 m!5429791))

(assert (=> bs!1012876 m!5429715))

(assert (=> b!4601451 d!1449182))

(declare-fun bs!1012877 () Bool)

(declare-fun b!4601653 () Bool)

(assert (= bs!1012877 (and b!4601653 b!4601492)))

(declare-fun lambda!186735 () Int)

(assert (=> bs!1012877 (= (= (t!358222 (toList!4672 (extractMap!1388 lt!1760308))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186735 lambda!186723))))

(declare-fun bs!1012878 () Bool)

(assert (= bs!1012878 (and b!4601653 b!4601619)))

(assert (=> bs!1012878 (= (= (t!358222 (toList!4672 (extractMap!1388 lt!1760308))) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186735 lambda!186725))))

(assert (=> b!4601653 true))

(declare-fun bs!1012879 () Bool)

(declare-fun b!4601646 () Bool)

(assert (= bs!1012879 (and b!4601646 b!4601492)))

(declare-fun lambda!186736 () Int)

(assert (=> bs!1012879 (= (= (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186736 lambda!186723))))

(declare-fun bs!1012880 () Bool)

(assert (= bs!1012880 (and b!4601646 b!4601619)))

(assert (=> bs!1012880 (= (= (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186736 lambda!186725))))

(declare-fun bs!1012881 () Bool)

(assert (= bs!1012881 (and b!4601646 b!4601653)))

(assert (=> bs!1012881 (= (= (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (= lambda!186736 lambda!186735))))

(assert (=> b!4601646 true))

(declare-fun bs!1012882 () Bool)

(declare-fun b!4601649 () Bool)

(assert (= bs!1012882 (and b!4601649 b!4601492)))

(declare-fun lambda!186737 () Int)

(assert (=> bs!1012882 (= lambda!186737 lambda!186723)))

(declare-fun bs!1012883 () Bool)

(assert (= bs!1012883 (and b!4601649 b!4601619)))

(assert (=> bs!1012883 (= (= (toList!4672 (extractMap!1388 lt!1760308)) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186737 lambda!186725))))

(declare-fun bs!1012884 () Bool)

(assert (= bs!1012884 (and b!4601649 b!4601653)))

(assert (=> bs!1012884 (= (= (toList!4672 (extractMap!1388 lt!1760308)) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (= lambda!186737 lambda!186735))))

(declare-fun bs!1012885 () Bool)

(assert (= bs!1012885 (and b!4601649 b!4601646)))

(assert (=> bs!1012885 (= (= (toList!4672 (extractMap!1388 lt!1760308)) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308))))) (= lambda!186737 lambda!186736))))

(assert (=> b!4601649 true))

(declare-fun bs!1012886 () Bool)

(declare-fun b!4601647 () Bool)

(assert (= bs!1012886 (and b!4601647 b!4601493)))

(declare-fun lambda!186738 () Int)

(assert (=> bs!1012886 (= lambda!186738 lambda!186724)))

(declare-fun bs!1012887 () Bool)

(assert (= bs!1012887 (and b!4601647 b!4601620)))

(assert (=> bs!1012887 (= lambda!186738 lambda!186726)))

(declare-fun e!2870328 () List!51231)

(assert (=> b!4601646 (= e!2870328 (Cons!51107 (_1!29175 (h!57074 (toList!4672 (extractMap!1388 lt!1760308)))) (getKeysList!579 (t!358222 (toList!4672 (extractMap!1388 lt!1760308))))))))

(declare-fun c!788320 () Bool)

(assert (=> b!4601646 (= c!788320 (containsKey!2178 (t!358222 (toList!4672 (extractMap!1388 lt!1760308))) (_1!29175 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))))))))

(declare-fun lt!1760638 () Unit!108559)

(declare-fun e!2870327 () Unit!108559)

(assert (=> b!4601646 (= lt!1760638 e!2870327)))

(declare-fun c!788319 () Bool)

(assert (=> b!4601646 (= c!788319 (contains!14069 (getKeysList!579 (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (_1!29175 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))))))))

(declare-fun lt!1760635 () Unit!108559)

(declare-fun e!2870330 () Unit!108559)

(assert (=> b!4601646 (= lt!1760635 e!2870330)))

(declare-fun lt!1760640 () List!51231)

(assert (=> b!4601646 (= lt!1760640 (getKeysList!579 (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))))))

(declare-fun lt!1760634 () Unit!108559)

(declare-fun lemmaForallContainsAddHeadPreserves!235 (List!51228 List!51231 tuple2!51762) Unit!108559)

(assert (=> b!4601646 (= lt!1760634 (lemmaForallContainsAddHeadPreserves!235 (t!358222 (toList!4672 (extractMap!1388 lt!1760308))) lt!1760640 (h!57074 (toList!4672 (extractMap!1388 lt!1760308)))))))

(assert (=> b!4601646 (forall!10621 lt!1760640 lambda!186736)))

(declare-fun lt!1760636 () Unit!108559)

(assert (=> b!4601646 (= lt!1760636 lt!1760634)))

(declare-fun lt!1760639 () List!51231)

(declare-fun e!2870329 () Bool)

(assert (=> b!4601647 (= e!2870329 (= (content!8664 lt!1760639) (content!8664 (map!11292 (toList!4672 (extractMap!1388 lt!1760308)) lambda!186738))))))

(declare-fun b!4601648 () Bool)

(assert (=> b!4601648 false))

(declare-fun Unit!108593 () Unit!108559)

(assert (=> b!4601648 (= e!2870327 Unit!108593)))

(declare-fun res!1924982 () Bool)

(assert (=> b!4601649 (=> (not res!1924982) (not e!2870329))))

(assert (=> b!4601649 (= res!1924982 (forall!10621 lt!1760639 lambda!186737))))

(declare-fun b!4601650 () Bool)

(declare-fun Unit!108594 () Unit!108559)

(assert (=> b!4601650 (= e!2870330 Unit!108594)))

(declare-fun b!4601652 () Bool)

(declare-fun res!1924984 () Bool)

(assert (=> b!4601652 (=> (not res!1924984) (not e!2870329))))

(assert (=> b!4601652 (= res!1924984 (= (length!486 lt!1760639) (length!487 (toList!4672 (extractMap!1388 lt!1760308)))))))

(assert (=> b!4601653 false))

(declare-fun lt!1760637 () Unit!108559)

(declare-fun forallContained!2870 (List!51231 Int K!12470) Unit!108559)

(assert (=> b!4601653 (= lt!1760637 (forallContained!2870 (getKeysList!579 (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) lambda!186735 (_1!29175 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))))))))

(declare-fun Unit!108595 () Unit!108559)

(assert (=> b!4601653 (= e!2870330 Unit!108595)))

(declare-fun b!4601654 () Bool)

(declare-fun Unit!108596 () Unit!108559)

(assert (=> b!4601654 (= e!2870327 Unit!108596)))

(declare-fun b!4601651 () Bool)

(assert (=> b!4601651 (= e!2870328 Nil!51107)))

(declare-fun d!1449184 () Bool)

(assert (=> d!1449184 e!2870329))

(declare-fun res!1924983 () Bool)

(assert (=> d!1449184 (=> (not res!1924983) (not e!2870329))))

(assert (=> d!1449184 (= res!1924983 (noDuplicate!815 lt!1760639))))

(assert (=> d!1449184 (= lt!1760639 e!2870328)))

(declare-fun c!788318 () Bool)

(assert (=> d!1449184 (= c!788318 ((_ is Cons!51104) (toList!4672 (extractMap!1388 lt!1760308))))))

(assert (=> d!1449184 (invariantList!1130 (toList!4672 (extractMap!1388 lt!1760308)))))

(assert (=> d!1449184 (= (getKeysList!579 (toList!4672 (extractMap!1388 lt!1760308))) lt!1760639)))

(assert (= (and d!1449184 c!788318) b!4601646))

(assert (= (and d!1449184 (not c!788318)) b!4601651))

(assert (= (and b!4601646 c!788320) b!4601648))

(assert (= (and b!4601646 (not c!788320)) b!4601654))

(assert (= (and b!4601646 c!788319) b!4601653))

(assert (= (and b!4601646 (not c!788319)) b!4601650))

(assert (= (and d!1449184 res!1924983) b!4601652))

(assert (= (and b!4601652 res!1924984) b!4601649))

(assert (= (and b!4601649 res!1924982) b!4601647))

(declare-fun m!5429793 () Bool)

(assert (=> b!4601653 m!5429793))

(assert (=> b!4601653 m!5429793))

(declare-fun m!5429795 () Bool)

(assert (=> b!4601653 m!5429795))

(declare-fun m!5429797 () Bool)

(assert (=> d!1449184 m!5429797))

(assert (=> d!1449184 m!5429715))

(declare-fun m!5429799 () Bool)

(assert (=> b!4601652 m!5429799))

(assert (=> b!4601652 m!5429619))

(declare-fun m!5429801 () Bool)

(assert (=> b!4601647 m!5429801))

(declare-fun m!5429803 () Bool)

(assert (=> b!4601647 m!5429803))

(assert (=> b!4601647 m!5429803))

(declare-fun m!5429805 () Bool)

(assert (=> b!4601647 m!5429805))

(declare-fun m!5429807 () Bool)

(assert (=> b!4601649 m!5429807))

(assert (=> b!4601646 m!5429793))

(declare-fun m!5429809 () Bool)

(assert (=> b!4601646 m!5429809))

(declare-fun m!5429811 () Bool)

(assert (=> b!4601646 m!5429811))

(declare-fun m!5429813 () Bool)

(assert (=> b!4601646 m!5429813))

(assert (=> b!4601646 m!5429793))

(declare-fun m!5429815 () Bool)

(assert (=> b!4601646 m!5429815))

(assert (=> b!4601449 d!1449184))

(declare-fun d!1449186 () Bool)

(declare-fun lt!1760641 () Bool)

(assert (=> d!1449186 (= lt!1760641 (select (content!8660 (toList!4671 lt!1760361)) lt!1760293))))

(declare-fun e!2870331 () Bool)

(assert (=> d!1449186 (= lt!1760641 e!2870331)))

(declare-fun res!1924985 () Bool)

(assert (=> d!1449186 (=> (not res!1924985) (not e!2870331))))

(assert (=> d!1449186 (= res!1924985 ((_ is Cons!51105) (toList!4671 lt!1760361)))))

(assert (=> d!1449186 (= (contains!14067 (toList!4671 lt!1760361) lt!1760293) lt!1760641)))

(declare-fun b!4601657 () Bool)

(declare-fun e!2870332 () Bool)

(assert (=> b!4601657 (= e!2870331 e!2870332)))

(declare-fun res!1924986 () Bool)

(assert (=> b!4601657 (=> res!1924986 e!2870332)))

(assert (=> b!4601657 (= res!1924986 (= (h!57075 (toList!4671 lt!1760361)) lt!1760293))))

(declare-fun b!4601658 () Bool)

(assert (=> b!4601658 (= e!2870332 (contains!14067 (t!358223 (toList!4671 lt!1760361)) lt!1760293))))

(assert (= (and d!1449186 res!1924985) b!4601657))

(assert (= (and b!4601657 (not res!1924986)) b!4601658))

(declare-fun m!5429817 () Bool)

(assert (=> d!1449186 m!5429817))

(declare-fun m!5429819 () Bool)

(assert (=> d!1449186 m!5429819))

(declare-fun m!5429821 () Bool)

(assert (=> b!4601658 m!5429821))

(assert (=> b!4601217 d!1449186))

(assert (=> d!1449124 d!1449108))

(declare-fun d!1449188 () Bool)

(assert (=> d!1449188 (eq!735 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 newBucket!178) Nil!51105)) (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287))))

(assert (=> d!1449188 true))

(declare-fun _$18!273 () Unit!108559)

(assert (=> d!1449188 (= (choose!30870 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!273)))

(declare-fun bs!1012888 () Bool)

(assert (= bs!1012888 d!1449188))

(assert (=> bs!1012888 m!5429601))

(assert (=> bs!1012888 m!5429091))

(assert (=> bs!1012888 m!5429091))

(assert (=> bs!1012888 m!5429085))

(assert (=> bs!1012888 m!5429601))

(assert (=> bs!1012888 m!5429085))

(assert (=> bs!1012888 m!5429603))

(assert (=> d!1449124 d!1449188))

(assert (=> d!1449124 d!1449120))

(assert (=> d!1449124 d!1449028))

(declare-fun bs!1012889 () Bool)

(declare-fun d!1449190 () Bool)

(assert (= bs!1012889 (and d!1449190 d!1449064)))

(declare-fun lambda!186739 () Int)

(assert (=> bs!1012889 (= lambda!186739 lambda!186698)))

(declare-fun bs!1012890 () Bool)

(assert (= bs!1012890 (and d!1449190 d!1449044)))

(assert (=> bs!1012890 (= lambda!186739 lambda!186697)))

(declare-fun bs!1012891 () Bool)

(assert (= bs!1012891 (and d!1449190 d!1449066)))

(assert (=> bs!1012891 (= lambda!186739 lambda!186699)))

(declare-fun bs!1012892 () Bool)

(assert (= bs!1012892 (and d!1449190 d!1449080)))

(assert (=> bs!1012892 (= lambda!186739 lambda!186711)))

(declare-fun bs!1012893 () Bool)

(assert (= bs!1012893 (and d!1449190 d!1449108)))

(assert (=> bs!1012893 (= lambda!186739 lambda!186713)))

(declare-fun bs!1012894 () Bool)

(assert (= bs!1012894 (and d!1449190 d!1448988)))

(assert (=> bs!1012894 (= lambda!186739 lambda!186677)))

(declare-fun bs!1012895 () Bool)

(assert (= bs!1012895 (and d!1449190 d!1449114)))

(assert (=> bs!1012895 (= lambda!186739 lambda!186714)))

(declare-fun bs!1012896 () Bool)

(assert (= bs!1012896 (and d!1449190 d!1449116)))

(assert (=> bs!1012896 (= lambda!186739 lambda!186715)))

(declare-fun bs!1012897 () Bool)

(assert (= bs!1012897 (and d!1449190 d!1449032)))

(assert (=> bs!1012897 (= lambda!186739 lambda!186686)))

(declare-fun bs!1012898 () Bool)

(assert (= bs!1012898 (and d!1449190 start!459328)))

(assert (=> bs!1012898 (= lambda!186739 lambda!186668)))

(declare-fun bs!1012899 () Bool)

(assert (= bs!1012899 (and d!1449190 d!1448970)))

(assert (=> bs!1012899 (not (= lambda!186739 lambda!186671))))

(declare-fun bs!1012900 () Bool)

(assert (= bs!1012900 (and d!1449190 d!1449118)))

(assert (=> bs!1012900 (= lambda!186739 lambda!186718)))

(declare-fun lt!1760642 () ListMap!3933)

(assert (=> d!1449190 (invariantList!1130 (toList!4672 lt!1760642))))

(declare-fun e!2870333 () ListMap!3933)

(assert (=> d!1449190 (= lt!1760642 e!2870333)))

(declare-fun c!788321 () Bool)

(assert (=> d!1449190 (= c!788321 ((_ is Cons!51105) (Cons!51105 (tuple2!51765 hash!344 newBucket!178) Nil!51105)))))

(assert (=> d!1449190 (forall!10618 (Cons!51105 (tuple2!51765 hash!344 newBucket!178) Nil!51105) lambda!186739)))

(assert (=> d!1449190 (= (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 newBucket!178) Nil!51105)) lt!1760642)))

(declare-fun b!4601659 () Bool)

(assert (=> b!4601659 (= e!2870333 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 newBucket!178) Nil!51105))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 newBucket!178) Nil!51105)))))))

(declare-fun b!4601660 () Bool)

(assert (=> b!4601660 (= e!2870333 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449190 c!788321) b!4601659))

(assert (= (and d!1449190 (not c!788321)) b!4601660))

(declare-fun m!5429823 () Bool)

(assert (=> d!1449190 m!5429823))

(declare-fun m!5429825 () Bool)

(assert (=> d!1449190 m!5429825))

(declare-fun m!5429827 () Bool)

(assert (=> b!4601659 m!5429827))

(assert (=> b!4601659 m!5429827))

(declare-fun m!5429829 () Bool)

(assert (=> b!4601659 m!5429829))

(assert (=> d!1449124 d!1449190))

(declare-fun d!1449192 () Bool)

(assert (=> d!1449192 (= (eq!735 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 newBucket!178) Nil!51105)) (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287)) (= (content!8663 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 newBucket!178) Nil!51105)))) (content!8663 (toList!4672 (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287)))))))

(declare-fun bs!1012901 () Bool)

(assert (= bs!1012901 d!1449192))

(declare-fun m!5429831 () Bool)

(assert (=> bs!1012901 m!5429831))

(assert (=> bs!1012901 m!5429549))

(assert (=> d!1449124 d!1449192))

(declare-fun bs!1012903 () Bool)

(declare-fun b!4601735 () Bool)

(assert (= bs!1012903 (and b!4601735 d!1449036)))

(declare-fun lambda!186768 () Int)

(assert (=> bs!1012903 (not (= lambda!186768 lambda!186689))))

(declare-fun bs!1012904 () Bool)

(assert (= bs!1012904 (and b!4601735 d!1449104)))

(assert (=> bs!1012904 (not (= lambda!186768 lambda!186712))))

(assert (=> b!4601735 true))

(declare-fun bs!1012905 () Bool)

(declare-fun b!4601734 () Bool)

(assert (= bs!1012905 (and b!4601734 d!1449036)))

(declare-fun lambda!186769 () Int)

(assert (=> bs!1012905 (not (= lambda!186769 lambda!186689))))

(declare-fun bs!1012906 () Bool)

(assert (= bs!1012906 (and b!4601734 d!1449104)))

(assert (=> bs!1012906 (not (= lambda!186769 lambda!186712))))

(declare-fun bs!1012907 () Bool)

(assert (= bs!1012907 (and b!4601734 b!4601735)))

(assert (=> bs!1012907 (= lambda!186769 lambda!186768)))

(assert (=> b!4601734 true))

(declare-fun lambda!186770 () Int)

(assert (=> bs!1012905 (not (= lambda!186770 lambda!186689))))

(assert (=> bs!1012906 (not (= lambda!186770 lambda!186712))))

(declare-fun lt!1760707 () ListMap!3933)

(assert (=> bs!1012907 (= (= lt!1760707 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186770 lambda!186768))))

(assert (=> b!4601734 (= (= lt!1760707 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186770 lambda!186769))))

(assert (=> b!4601734 true))

(declare-fun bs!1012908 () Bool)

(declare-fun d!1449194 () Bool)

(assert (= bs!1012908 (and d!1449194 b!4601734)))

(declare-fun lambda!186771 () Int)

(declare-fun lt!1760710 () ListMap!3933)

(assert (=> bs!1012908 (= (= lt!1760710 lt!1760707) (= lambda!186771 lambda!186770))))

(declare-fun bs!1012909 () Bool)

(assert (= bs!1012909 (and d!1449194 d!1449104)))

(assert (=> bs!1012909 (not (= lambda!186771 lambda!186712))))

(declare-fun bs!1012910 () Bool)

(assert (= bs!1012910 (and d!1449194 b!4601735)))

(assert (=> bs!1012910 (= (= lt!1760710 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186771 lambda!186768))))

(assert (=> bs!1012908 (= (= lt!1760710 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186771 lambda!186769))))

(declare-fun bs!1012911 () Bool)

(assert (= bs!1012911 (and d!1449194 d!1449036)))

(assert (=> bs!1012911 (not (= lambda!186771 lambda!186689))))

(assert (=> d!1449194 true))

(declare-fun e!2870374 () Bool)

(assert (=> d!1449194 e!2870374))

(declare-fun res!1925013 () Bool)

(assert (=> d!1449194 (=> (not res!1925013) (not e!2870374))))

(assert (=> d!1449194 (= res!1925013 (forall!10619 (_2!29176 (h!57075 lt!1760308)) lambda!186771))))

(declare-fun e!2870376 () ListMap!3933)

(assert (=> d!1449194 (= lt!1760710 e!2870376)))

(declare-fun c!788344 () Bool)

(assert (=> d!1449194 (= c!788344 ((_ is Nil!51104) (_2!29176 (h!57075 lt!1760308))))))

(assert (=> d!1449194 (noDuplicateKeys!1328 (_2!29176 (h!57075 lt!1760308)))))

(assert (=> d!1449194 (= (addToMapMapFromBucket!820 (_2!29176 (h!57075 lt!1760308)) (extractMap!1388 (t!358223 lt!1760308))) lt!1760710)))

(declare-fun b!4601731 () Bool)

(declare-fun res!1925015 () Bool)

(assert (=> b!4601731 (=> (not res!1925015) (not e!2870374))))

(assert (=> b!4601731 (= res!1925015 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 lt!1760308))) lambda!186771))))

(declare-fun b!4601732 () Bool)

(assert (=> b!4601732 (= e!2870374 (invariantList!1130 (toList!4672 lt!1760710)))))

(declare-fun b!4601733 () Bool)

(declare-fun e!2870375 () Bool)

(assert (=> b!4601733 (= e!2870375 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 lt!1760308))) lambda!186770))))

(declare-fun lt!1760716 () ListMap!3933)

(declare-fun call!321152 () Bool)

(declare-fun bm!321145 () Bool)

(assert (=> bm!321145 (= call!321152 (forall!10619 (ite c!788344 (toList!4672 (extractMap!1388 (t!358223 lt!1760308))) (toList!4672 lt!1760716)) (ite c!788344 lambda!186768 lambda!186770)))))

(declare-fun bm!321146 () Bool)

(declare-fun call!321150 () Unit!108559)

(declare-fun lemmaContainsAllItsOwnKeys!439 (ListMap!3933) Unit!108559)

(assert (=> bm!321146 (= call!321150 (lemmaContainsAllItsOwnKeys!439 (extractMap!1388 (t!358223 lt!1760308))))))

(assert (=> b!4601734 (= e!2870376 lt!1760707)))

(declare-fun +!1759 (ListMap!3933 tuple2!51762) ListMap!3933)

(assert (=> b!4601734 (= lt!1760716 (+!1759 (extractMap!1388 (t!358223 lt!1760308)) (h!57074 (_2!29176 (h!57075 lt!1760308)))))))

(assert (=> b!4601734 (= lt!1760707 (addToMapMapFromBucket!820 (t!358222 (_2!29176 (h!57075 lt!1760308))) (+!1759 (extractMap!1388 (t!358223 lt!1760308)) (h!57074 (_2!29176 (h!57075 lt!1760308))))))))

(declare-fun lt!1760718 () Unit!108559)

(assert (=> b!4601734 (= lt!1760718 call!321150)))

(assert (=> b!4601734 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 lt!1760308))) lambda!186769)))

(declare-fun lt!1760714 () Unit!108559)

(assert (=> b!4601734 (= lt!1760714 lt!1760718)))

(assert (=> b!4601734 (forall!10619 (toList!4672 lt!1760716) lambda!186770)))

(declare-fun lt!1760720 () Unit!108559)

(declare-fun Unit!108597 () Unit!108559)

(assert (=> b!4601734 (= lt!1760720 Unit!108597)))

(declare-fun call!321151 () Bool)

(assert (=> b!4601734 call!321151))

(declare-fun lt!1760711 () Unit!108559)

(declare-fun Unit!108598 () Unit!108559)

(assert (=> b!4601734 (= lt!1760711 Unit!108598)))

(declare-fun lt!1760708 () Unit!108559)

(declare-fun Unit!108599 () Unit!108559)

(assert (=> b!4601734 (= lt!1760708 Unit!108599)))

(declare-fun lt!1760719 () Unit!108559)

(declare-fun forallContained!2871 (List!51228 Int tuple2!51762) Unit!108559)

(assert (=> b!4601734 (= lt!1760719 (forallContained!2871 (toList!4672 lt!1760716) lambda!186770 (h!57074 (_2!29176 (h!57075 lt!1760308)))))))

(assert (=> b!4601734 (contains!14065 lt!1760716 (_1!29175 (h!57074 (_2!29176 (h!57075 lt!1760308)))))))

(declare-fun lt!1760713 () Unit!108559)

(declare-fun Unit!108600 () Unit!108559)

(assert (=> b!4601734 (= lt!1760713 Unit!108600)))

(assert (=> b!4601734 (contains!14065 lt!1760707 (_1!29175 (h!57074 (_2!29176 (h!57075 lt!1760308)))))))

(declare-fun lt!1760704 () Unit!108559)

(declare-fun Unit!108601 () Unit!108559)

(assert (=> b!4601734 (= lt!1760704 Unit!108601)))

(assert (=> b!4601734 (forall!10619 (_2!29176 (h!57075 lt!1760308)) lambda!186770)))

(declare-fun lt!1760709 () Unit!108559)

(declare-fun Unit!108602 () Unit!108559)

(assert (=> b!4601734 (= lt!1760709 Unit!108602)))

(assert (=> b!4601734 call!321152))

(declare-fun lt!1760703 () Unit!108559)

(declare-fun Unit!108603 () Unit!108559)

(assert (=> b!4601734 (= lt!1760703 Unit!108603)))

(declare-fun lt!1760721 () Unit!108559)

(declare-fun Unit!108604 () Unit!108559)

(assert (=> b!4601734 (= lt!1760721 Unit!108604)))

(declare-fun lt!1760702 () Unit!108559)

(declare-fun addForallContainsKeyThenBeforeAdding!439 (ListMap!3933 ListMap!3933 K!12470 V!12716) Unit!108559)

(assert (=> b!4601734 (= lt!1760702 (addForallContainsKeyThenBeforeAdding!439 (extractMap!1388 (t!358223 lt!1760308)) lt!1760707 (_1!29175 (h!57074 (_2!29176 (h!57075 lt!1760308)))) (_2!29175 (h!57074 (_2!29176 (h!57075 lt!1760308))))))))

(assert (=> b!4601734 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 lt!1760308))) lambda!186770)))

(declare-fun lt!1760712 () Unit!108559)

(assert (=> b!4601734 (= lt!1760712 lt!1760702)))

(assert (=> b!4601734 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 lt!1760308))) lambda!186770)))

(declare-fun lt!1760715 () Unit!108559)

(declare-fun Unit!108605 () Unit!108559)

(assert (=> b!4601734 (= lt!1760715 Unit!108605)))

(declare-fun res!1925014 () Bool)

(assert (=> b!4601734 (= res!1925014 (forall!10619 (_2!29176 (h!57075 lt!1760308)) lambda!186770))))

(assert (=> b!4601734 (=> (not res!1925014) (not e!2870375))))

(assert (=> b!4601734 e!2870375))

(declare-fun lt!1760701 () Unit!108559)

(declare-fun Unit!108606 () Unit!108559)

(assert (=> b!4601734 (= lt!1760701 Unit!108606)))

(assert (=> b!4601735 (= e!2870376 (extractMap!1388 (t!358223 lt!1760308)))))

(declare-fun lt!1760706 () Unit!108559)

(assert (=> b!4601735 (= lt!1760706 call!321150)))

(assert (=> b!4601735 call!321152))

(declare-fun lt!1760717 () Unit!108559)

(assert (=> b!4601735 (= lt!1760717 lt!1760706)))

(assert (=> b!4601735 call!321151))

(declare-fun lt!1760705 () Unit!108559)

(declare-fun Unit!108607 () Unit!108559)

(assert (=> b!4601735 (= lt!1760705 Unit!108607)))

(declare-fun bm!321147 () Bool)

(assert (=> bm!321147 (= call!321151 (forall!10619 (ite c!788344 (toList!4672 (extractMap!1388 (t!358223 lt!1760308))) (t!358222 (_2!29176 (h!57075 lt!1760308)))) (ite c!788344 lambda!186768 lambda!186770)))))

(assert (= (and d!1449194 c!788344) b!4601735))

(assert (= (and d!1449194 (not c!788344)) b!4601734))

(assert (= (and b!4601734 res!1925014) b!4601733))

(assert (= (or b!4601735 b!4601734) bm!321145))

(assert (= (or b!4601735 b!4601734) bm!321147))

(assert (= (or b!4601735 b!4601734) bm!321146))

(assert (= (and d!1449194 res!1925013) b!4601731))

(assert (= (and b!4601731 res!1925015) b!4601732))

(declare-fun m!5429879 () Bool)

(assert (=> b!4601732 m!5429879))

(declare-fun m!5429881 () Bool)

(assert (=> b!4601734 m!5429881))

(declare-fun m!5429883 () Bool)

(assert (=> b!4601734 m!5429883))

(declare-fun m!5429885 () Bool)

(assert (=> b!4601734 m!5429885))

(assert (=> b!4601734 m!5429555))

(declare-fun m!5429887 () Bool)

(assert (=> b!4601734 m!5429887))

(declare-fun m!5429889 () Bool)

(assert (=> b!4601734 m!5429889))

(declare-fun m!5429891 () Bool)

(assert (=> b!4601734 m!5429891))

(declare-fun m!5429893 () Bool)

(assert (=> b!4601734 m!5429893))

(declare-fun m!5429895 () Bool)

(assert (=> b!4601734 m!5429895))

(declare-fun m!5429897 () Bool)

(assert (=> b!4601734 m!5429897))

(assert (=> b!4601734 m!5429897))

(assert (=> b!4601734 m!5429555))

(assert (=> b!4601734 m!5429889))

(declare-fun m!5429899 () Bool)

(assert (=> b!4601734 m!5429899))

(assert (=> b!4601734 m!5429885))

(declare-fun m!5429901 () Bool)

(assert (=> bm!321147 m!5429901))

(assert (=> bm!321146 m!5429555))

(declare-fun m!5429903 () Bool)

(assert (=> bm!321146 m!5429903))

(declare-fun m!5429905 () Bool)

(assert (=> b!4601731 m!5429905))

(declare-fun m!5429907 () Bool)

(assert (=> d!1449194 m!5429907))

(declare-fun m!5429909 () Bool)

(assert (=> d!1449194 m!5429909))

(assert (=> b!4601733 m!5429885))

(declare-fun m!5429911 () Bool)

(assert (=> bm!321145 m!5429911))

(assert (=> b!4601460 d!1449194))

(declare-fun bs!1012912 () Bool)

(declare-fun d!1449214 () Bool)

(assert (= bs!1012912 (and d!1449214 d!1449064)))

(declare-fun lambda!186772 () Int)

(assert (=> bs!1012912 (= lambda!186772 lambda!186698)))

(declare-fun bs!1012913 () Bool)

(assert (= bs!1012913 (and d!1449214 d!1449044)))

(assert (=> bs!1012913 (= lambda!186772 lambda!186697)))

(declare-fun bs!1012914 () Bool)

(assert (= bs!1012914 (and d!1449214 d!1449066)))

(assert (=> bs!1012914 (= lambda!186772 lambda!186699)))

(declare-fun bs!1012915 () Bool)

(assert (= bs!1012915 (and d!1449214 d!1449080)))

(assert (=> bs!1012915 (= lambda!186772 lambda!186711)))

(declare-fun bs!1012916 () Bool)

(assert (= bs!1012916 (and d!1449214 d!1449108)))

(assert (=> bs!1012916 (= lambda!186772 lambda!186713)))

(declare-fun bs!1012917 () Bool)

(assert (= bs!1012917 (and d!1449214 d!1448988)))

(assert (=> bs!1012917 (= lambda!186772 lambda!186677)))

(declare-fun bs!1012918 () Bool)

(assert (= bs!1012918 (and d!1449214 d!1449190)))

(assert (=> bs!1012918 (= lambda!186772 lambda!186739)))

(declare-fun bs!1012919 () Bool)

(assert (= bs!1012919 (and d!1449214 d!1449114)))

(assert (=> bs!1012919 (= lambda!186772 lambda!186714)))

(declare-fun bs!1012920 () Bool)

(assert (= bs!1012920 (and d!1449214 d!1449116)))

(assert (=> bs!1012920 (= lambda!186772 lambda!186715)))

(declare-fun bs!1012921 () Bool)

(assert (= bs!1012921 (and d!1449214 d!1449032)))

(assert (=> bs!1012921 (= lambda!186772 lambda!186686)))

(declare-fun bs!1012922 () Bool)

(assert (= bs!1012922 (and d!1449214 start!459328)))

(assert (=> bs!1012922 (= lambda!186772 lambda!186668)))

(declare-fun bs!1012923 () Bool)

(assert (= bs!1012923 (and d!1449214 d!1448970)))

(assert (=> bs!1012923 (not (= lambda!186772 lambda!186671))))

(declare-fun bs!1012924 () Bool)

(assert (= bs!1012924 (and d!1449214 d!1449118)))

(assert (=> bs!1012924 (= lambda!186772 lambda!186718)))

(declare-fun lt!1760723 () ListMap!3933)

(assert (=> d!1449214 (invariantList!1130 (toList!4672 lt!1760723))))

(declare-fun e!2870379 () ListMap!3933)

(assert (=> d!1449214 (= lt!1760723 e!2870379)))

(declare-fun c!788345 () Bool)

(assert (=> d!1449214 (= c!788345 ((_ is Cons!51105) (t!358223 lt!1760308)))))

(assert (=> d!1449214 (forall!10618 (t!358223 lt!1760308) lambda!186772)))

(assert (=> d!1449214 (= (extractMap!1388 (t!358223 lt!1760308)) lt!1760723)))

(declare-fun b!4601740 () Bool)

(assert (=> b!4601740 (= e!2870379 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (t!358223 lt!1760308))) (extractMap!1388 (t!358223 (t!358223 lt!1760308)))))))

(declare-fun b!4601741 () Bool)

(assert (=> b!4601741 (= e!2870379 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449214 c!788345) b!4601740))

(assert (= (and d!1449214 (not c!788345)) b!4601741))

(declare-fun m!5429913 () Bool)

(assert (=> d!1449214 m!5429913))

(declare-fun m!5429915 () Bool)

(assert (=> d!1449214 m!5429915))

(declare-fun m!5429917 () Bool)

(assert (=> b!4601740 m!5429917))

(assert (=> b!4601740 m!5429917))

(declare-fun m!5429919 () Bool)

(assert (=> b!4601740 m!5429919))

(assert (=> b!4601460 d!1449214))

(declare-fun d!1449216 () Bool)

(declare-fun e!2870380 () Bool)

(assert (=> d!1449216 e!2870380))

(declare-fun res!1925018 () Bool)

(assert (=> d!1449216 (=> res!1925018 e!2870380)))

(declare-fun lt!1760724 () Bool)

(assert (=> d!1449216 (= res!1925018 (not lt!1760724))))

(declare-fun lt!1760726 () Bool)

(assert (=> d!1449216 (= lt!1760724 lt!1760726)))

(declare-fun lt!1760727 () Unit!108559)

(declare-fun e!2870381 () Unit!108559)

(assert (=> d!1449216 (= lt!1760727 e!2870381)))

(declare-fun c!788346 () Bool)

(assert (=> d!1449216 (= c!788346 lt!1760726)))

(assert (=> d!1449216 (= lt!1760726 (containsKey!2179 (toList!4671 lt!1760524) (_1!29176 lt!1760293)))))

(assert (=> d!1449216 (= (contains!14066 lt!1760524 (_1!29176 lt!1760293)) lt!1760724)))

(declare-fun b!4601742 () Bool)

(declare-fun lt!1760725 () Unit!108559)

(assert (=> b!4601742 (= e!2870381 lt!1760725)))

(assert (=> b!4601742 (= lt!1760725 (lemmaContainsKeyImpliesGetValueByKeyDefined!1226 (toList!4671 lt!1760524) (_1!29176 lt!1760293)))))

(assert (=> b!4601742 (isDefined!8670 (getValueByKey!1323 (toList!4671 lt!1760524) (_1!29176 lt!1760293)))))

(declare-fun b!4601743 () Bool)

(declare-fun Unit!108608 () Unit!108559)

(assert (=> b!4601743 (= e!2870381 Unit!108608)))

(declare-fun b!4601744 () Bool)

(assert (=> b!4601744 (= e!2870380 (isDefined!8670 (getValueByKey!1323 (toList!4671 lt!1760524) (_1!29176 lt!1760293))))))

(assert (= (and d!1449216 c!788346) b!4601742))

(assert (= (and d!1449216 (not c!788346)) b!4601743))

(assert (= (and d!1449216 (not res!1925018)) b!4601744))

(declare-fun m!5429921 () Bool)

(assert (=> d!1449216 m!5429921))

(declare-fun m!5429923 () Bool)

(assert (=> b!4601742 m!5429923))

(assert (=> b!4601742 m!5429597))

(assert (=> b!4601742 m!5429597))

(declare-fun m!5429925 () Bool)

(assert (=> b!4601742 m!5429925))

(assert (=> b!4601744 m!5429597))

(assert (=> b!4601744 m!5429597))

(assert (=> b!4601744 m!5429925))

(assert (=> d!1449122 d!1449216))

(declare-fun b!4601747 () Bool)

(declare-fun e!2870383 () Option!11403)

(assert (=> b!4601747 (= e!2870383 (getValueByKey!1323 (t!358223 lt!1760523) (_1!29176 lt!1760293)))))

(declare-fun b!4601745 () Bool)

(declare-fun e!2870382 () Option!11403)

(assert (=> b!4601745 (= e!2870382 (Some!11402 (_2!29176 (h!57075 lt!1760523))))))

(declare-fun d!1449218 () Bool)

(declare-fun c!788347 () Bool)

(assert (=> d!1449218 (= c!788347 (and ((_ is Cons!51105) lt!1760523) (= (_1!29176 (h!57075 lt!1760523)) (_1!29176 lt!1760293))))))

(assert (=> d!1449218 (= (getValueByKey!1323 lt!1760523 (_1!29176 lt!1760293)) e!2870382)))

(declare-fun b!4601746 () Bool)

(assert (=> b!4601746 (= e!2870382 e!2870383)))

(declare-fun c!788348 () Bool)

(assert (=> b!4601746 (= c!788348 (and ((_ is Cons!51105) lt!1760523) (not (= (_1!29176 (h!57075 lt!1760523)) (_1!29176 lt!1760293)))))))

(declare-fun b!4601748 () Bool)

(assert (=> b!4601748 (= e!2870383 None!11402)))

(assert (= (and d!1449218 c!788347) b!4601745))

(assert (= (and d!1449218 (not c!788347)) b!4601746))

(assert (= (and b!4601746 c!788348) b!4601747))

(assert (= (and b!4601746 (not c!788348)) b!4601748))

(declare-fun m!5429927 () Bool)

(assert (=> b!4601747 m!5429927))

(assert (=> d!1449122 d!1449218))

(declare-fun d!1449220 () Bool)

(assert (=> d!1449220 (= (getValueByKey!1323 lt!1760523 (_1!29176 lt!1760293)) (Some!11402 (_2!29176 lt!1760293)))))

(declare-fun lt!1760732 () Unit!108559)

(declare-fun choose!30875 (List!51229 (_ BitVec 64) List!51228) Unit!108559)

(assert (=> d!1449220 (= lt!1760732 (choose!30875 lt!1760523 (_1!29176 lt!1760293) (_2!29176 lt!1760293)))))

(declare-fun e!2870388 () Bool)

(assert (=> d!1449220 e!2870388))

(declare-fun res!1925029 () Bool)

(assert (=> d!1449220 (=> (not res!1925029) (not e!2870388))))

(assert (=> d!1449220 (= res!1925029 (isStrictlySorted!545 lt!1760523))))

(assert (=> d!1449220 (= (lemmaContainsTupThenGetReturnValue!802 lt!1760523 (_1!29176 lt!1760293) (_2!29176 lt!1760293)) lt!1760732)))

(declare-fun b!4601759 () Bool)

(declare-fun res!1925030 () Bool)

(assert (=> b!4601759 (=> (not res!1925030) (not e!2870388))))

(assert (=> b!4601759 (= res!1925030 (containsKey!2179 lt!1760523 (_1!29176 lt!1760293)))))

(declare-fun b!4601760 () Bool)

(assert (=> b!4601760 (= e!2870388 (contains!14067 lt!1760523 (tuple2!51765 (_1!29176 lt!1760293) (_2!29176 lt!1760293))))))

(assert (= (and d!1449220 res!1925029) b!4601759))

(assert (= (and b!4601759 res!1925030) b!4601760))

(assert (=> d!1449220 m!5429591))

(declare-fun m!5429929 () Bool)

(assert (=> d!1449220 m!5429929))

(declare-fun m!5429931 () Bool)

(assert (=> d!1449220 m!5429931))

(declare-fun m!5429933 () Bool)

(assert (=> b!4601759 m!5429933))

(declare-fun m!5429935 () Bool)

(assert (=> b!4601760 m!5429935))

(assert (=> d!1449122 d!1449220))

(declare-fun b!4601809 () Bool)

(declare-fun e!2870422 () List!51229)

(declare-fun e!2870425 () List!51229)

(assert (=> b!4601809 (= e!2870422 e!2870425)))

(declare-fun c!788357 () Bool)

(assert (=> b!4601809 (= c!788357 (and ((_ is Cons!51105) (toList!4671 lm!1477)) (= (_1!29176 (h!57075 (toList!4671 lm!1477))) (_1!29176 lt!1760293))))))

(declare-fun b!4601810 () Bool)

(declare-fun res!1925061 () Bool)

(declare-fun e!2870421 () Bool)

(assert (=> b!4601810 (=> (not res!1925061) (not e!2870421))))

(declare-fun lt!1760740 () List!51229)

(assert (=> b!4601810 (= res!1925061 (containsKey!2179 lt!1760740 (_1!29176 lt!1760293)))))

(declare-fun b!4601811 () Bool)

(declare-fun e!2870423 () List!51229)

(declare-fun call!321161 () List!51229)

(assert (=> b!4601811 (= e!2870423 call!321161)))

(declare-fun bm!321154 () Bool)

(declare-fun call!321159 () List!51229)

(assert (=> bm!321154 (= call!321161 call!321159)))

(declare-fun b!4601812 () Bool)

(declare-fun call!321160 () List!51229)

(assert (=> b!4601812 (= e!2870422 call!321160)))

(declare-fun b!4601813 () Bool)

(assert (=> b!4601813 (= e!2870423 call!321161)))

(declare-fun b!4601814 () Bool)

(declare-fun e!2870424 () List!51229)

(assert (=> b!4601814 (= e!2870424 (insertStrictlySorted!494 (t!358223 (toList!4671 lm!1477)) (_1!29176 lt!1760293) (_2!29176 lt!1760293)))))

(declare-fun b!4601815 () Bool)

(assert (=> b!4601815 (= e!2870425 call!321159)))

(declare-fun d!1449222 () Bool)

(assert (=> d!1449222 e!2870421))

(declare-fun res!1925062 () Bool)

(assert (=> d!1449222 (=> (not res!1925062) (not e!2870421))))

(assert (=> d!1449222 (= res!1925062 (isStrictlySorted!545 lt!1760740))))

(assert (=> d!1449222 (= lt!1760740 e!2870422)))

(declare-fun c!788360 () Bool)

(assert (=> d!1449222 (= c!788360 (and ((_ is Cons!51105) (toList!4671 lm!1477)) (bvslt (_1!29176 (h!57075 (toList!4671 lm!1477))) (_1!29176 lt!1760293))))))

(assert (=> d!1449222 (isStrictlySorted!545 (toList!4671 lm!1477))))

(assert (=> d!1449222 (= (insertStrictlySorted!494 (toList!4671 lm!1477) (_1!29176 lt!1760293) (_2!29176 lt!1760293)) lt!1760740)))

(declare-fun b!4601816 () Bool)

(assert (=> b!4601816 (= e!2870421 (contains!14067 lt!1760740 (tuple2!51765 (_1!29176 lt!1760293) (_2!29176 lt!1760293))))))

(declare-fun bm!321155 () Bool)

(declare-fun $colon$colon!1048 (List!51229 tuple2!51764) List!51229)

(assert (=> bm!321155 (= call!321160 ($colon$colon!1048 e!2870424 (ite c!788360 (h!57075 (toList!4671 lm!1477)) (tuple2!51765 (_1!29176 lt!1760293) (_2!29176 lt!1760293)))))))

(declare-fun c!788359 () Bool)

(assert (=> bm!321155 (= c!788359 c!788360)))

(declare-fun c!788358 () Bool)

(declare-fun b!4601817 () Bool)

(assert (=> b!4601817 (= e!2870424 (ite c!788357 (t!358223 (toList!4671 lm!1477)) (ite c!788358 (Cons!51105 (h!57075 (toList!4671 lm!1477)) (t!358223 (toList!4671 lm!1477))) Nil!51105)))))

(declare-fun b!4601818 () Bool)

(assert (=> b!4601818 (= c!788358 (and ((_ is Cons!51105) (toList!4671 lm!1477)) (bvsgt (_1!29176 (h!57075 (toList!4671 lm!1477))) (_1!29176 lt!1760293))))))

(assert (=> b!4601818 (= e!2870425 e!2870423)))

(declare-fun bm!321156 () Bool)

(assert (=> bm!321156 (= call!321159 call!321160)))

(assert (= (and d!1449222 c!788360) b!4601812))

(assert (= (and d!1449222 (not c!788360)) b!4601809))

(assert (= (and b!4601809 c!788357) b!4601815))

(assert (= (and b!4601809 (not c!788357)) b!4601818))

(assert (= (and b!4601818 c!788358) b!4601813))

(assert (= (and b!4601818 (not c!788358)) b!4601811))

(assert (= (or b!4601813 b!4601811) bm!321154))

(assert (= (or b!4601815 bm!321154) bm!321156))

(assert (= (or b!4601812 bm!321156) bm!321155))

(assert (= (and bm!321155 c!788359) b!4601814))

(assert (= (and bm!321155 (not c!788359)) b!4601817))

(assert (= (and d!1449222 res!1925062) b!4601810))

(assert (= (and b!4601810 res!1925061) b!4601816))

(declare-fun m!5429991 () Bool)

(assert (=> bm!321155 m!5429991))

(declare-fun m!5429993 () Bool)

(assert (=> b!4601814 m!5429993))

(declare-fun m!5429995 () Bool)

(assert (=> d!1449222 m!5429995))

(assert (=> d!1449222 m!5429233))

(declare-fun m!5429997 () Bool)

(assert (=> b!4601810 m!5429997))

(declare-fun m!5429999 () Bool)

(assert (=> b!4601816 m!5429999))

(assert (=> d!1449122 d!1449222))

(declare-fun d!1449240 () Bool)

(declare-fun lt!1760744 () Bool)

(assert (=> d!1449240 (= lt!1760744 (select (content!8664 e!2870120) key!3287))))

(declare-fun e!2870427 () Bool)

(assert (=> d!1449240 (= lt!1760744 e!2870427)))

(declare-fun res!1925063 () Bool)

(assert (=> d!1449240 (=> (not res!1925063) (not e!2870427))))

(assert (=> d!1449240 (= res!1925063 ((_ is Cons!51107) e!2870120))))

(assert (=> d!1449240 (= (contains!14069 e!2870120 key!3287) lt!1760744)))

(declare-fun b!4601819 () Bool)

(declare-fun e!2870426 () Bool)

(assert (=> b!4601819 (= e!2870427 e!2870426)))

(declare-fun res!1925064 () Bool)

(assert (=> b!4601819 (=> res!1925064 e!2870426)))

(assert (=> b!4601819 (= res!1925064 (= (h!57079 e!2870120) key!3287))))

(declare-fun b!4601820 () Bool)

(assert (=> b!4601820 (= e!2870426 (contains!14069 (t!358225 e!2870120) key!3287))))

(assert (= (and d!1449240 res!1925063) b!4601819))

(assert (= (and b!4601819 (not res!1925064)) b!4601820))

(declare-fun m!5430005 () Bool)

(assert (=> d!1449240 m!5430005))

(declare-fun m!5430007 () Bool)

(assert (=> d!1449240 m!5430007))

(declare-fun m!5430009 () Bool)

(assert (=> b!4601820 m!5430009))

(assert (=> bm!321108 d!1449240))

(declare-fun d!1449244 () Bool)

(assert (=> d!1449244 (isDefined!8669 (getValueByKey!1322 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287))))

(declare-fun lt!1760745 () Unit!108559)

(assert (=> d!1449244 (= lt!1760745 (choose!30871 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287))))

(assert (=> d!1449244 (invariantList!1130 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))))

(assert (=> d!1449244 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1225 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287) lt!1760745)))

(declare-fun bs!1012928 () Bool)

(assert (= bs!1012928 d!1449244))

(assert (=> bs!1012928 m!5429341))

(assert (=> bs!1012928 m!5429341))

(assert (=> bs!1012928 m!5429343))

(declare-fun m!5430013 () Bool)

(assert (=> bs!1012928 m!5430013))

(declare-fun m!5430015 () Bool)

(assert (=> bs!1012928 m!5430015))

(assert (=> b!4601325 d!1449244))

(declare-fun d!1449248 () Bool)

(assert (=> d!1449248 (= (isDefined!8669 (getValueByKey!1322 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287)) (not (isEmpty!28871 (getValueByKey!1322 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287))))))

(declare-fun bs!1012930 () Bool)

(assert (= bs!1012930 d!1449248))

(assert (=> bs!1012930 m!5429341))

(declare-fun m!5430017 () Bool)

(assert (=> bs!1012930 m!5430017))

(assert (=> b!4601325 d!1449248))

(declare-fun b!4601822 () Bool)

(declare-fun e!2870428 () Option!11402)

(declare-fun e!2870429 () Option!11402)

(assert (=> b!4601822 (= e!2870428 e!2870429)))

(declare-fun c!788362 () Bool)

(assert (=> b!4601822 (= c!788362 (and ((_ is Cons!51104) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (not (= (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) key!3287))))))

(declare-fun b!4601823 () Bool)

(assert (=> b!4601823 (= e!2870429 (getValueByKey!1322 (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) key!3287))))

(declare-fun b!4601821 () Bool)

(assert (=> b!4601821 (= e!2870428 (Some!11401 (_2!29175 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))))))

(declare-fun b!4601824 () Bool)

(assert (=> b!4601824 (= e!2870429 None!11401)))

(declare-fun d!1449250 () Bool)

(declare-fun c!788361 () Bool)

(assert (=> d!1449250 (= c!788361 (and ((_ is Cons!51104) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) key!3287)))))

(assert (=> d!1449250 (= (getValueByKey!1322 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287) e!2870428)))

(assert (= (and d!1449250 c!788361) b!4601821))

(assert (= (and d!1449250 (not c!788361)) b!4601822))

(assert (= (and b!4601822 c!788362) b!4601823))

(assert (= (and b!4601822 (not c!788362)) b!4601824))

(declare-fun m!5430019 () Bool)

(assert (=> b!4601823 m!5430019))

(assert (=> b!4601325 d!1449250))

(declare-fun d!1449252 () Bool)

(assert (=> d!1449252 (contains!14069 (getKeysList!579 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) key!3287)))

(declare-fun lt!1760746 () Unit!108559)

(assert (=> d!1449252 (= lt!1760746 (choose!30872 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287))))

(assert (=> d!1449252 (invariantList!1130 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))))

(assert (=> d!1449252 (= (lemmaInListThenGetKeysListContains!575 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287) lt!1760746)))

(declare-fun bs!1012931 () Bool)

(assert (= bs!1012931 d!1449252))

(assert (=> bs!1012931 m!5429351))

(assert (=> bs!1012931 m!5429351))

(declare-fun m!5430021 () Bool)

(assert (=> bs!1012931 m!5430021))

(declare-fun m!5430023 () Bool)

(assert (=> bs!1012931 m!5430023))

(assert (=> bs!1012931 m!5430015))

(assert (=> b!4601325 d!1449252))

(declare-fun d!1449254 () Bool)

(declare-fun res!1925065 () Bool)

(declare-fun e!2870430 () Bool)

(assert (=> d!1449254 (=> res!1925065 e!2870430)))

(assert (=> d!1449254 (= res!1925065 (and ((_ is Cons!51104) (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))) (= (_1!29175 (h!57074 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))))) key!3287)))))

(assert (=> d!1449254 (= (containsKey!2176 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))) key!3287) e!2870430)))

(declare-fun b!4601825 () Bool)

(declare-fun e!2870431 () Bool)

(assert (=> b!4601825 (= e!2870430 e!2870431)))

(declare-fun res!1925066 () Bool)

(assert (=> b!4601825 (=> (not res!1925066) (not e!2870431))))

(assert (=> b!4601825 (= res!1925066 ((_ is Cons!51104) (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(declare-fun b!4601826 () Bool)

(assert (=> b!4601826 (= e!2870431 (containsKey!2176 (t!358222 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))) key!3287))))

(assert (= (and d!1449254 (not res!1925065)) b!4601825))

(assert (= (and b!4601825 res!1925066) b!4601826))

(declare-fun m!5430025 () Bool)

(assert (=> b!4601826 m!5430025))

(assert (=> b!4601313 d!1449254))

(declare-fun d!1449256 () Bool)

(declare-fun choose!30877 (Hashable!5727 K!12470) (_ BitVec 64))

(assert (=> d!1449256 (= (hash!3243 hashF!1107 key!3287) (choose!30877 hashF!1107 key!3287))))

(declare-fun bs!1012932 () Bool)

(assert (= bs!1012932 d!1449256))

(declare-fun m!5430027 () Bool)

(assert (=> bs!1012932 m!5430027))

(assert (=> d!1449076 d!1449256))

(declare-fun d!1449258 () Bool)

(declare-fun res!1925067 () Bool)

(declare-fun e!2870436 () Bool)

(assert (=> d!1449258 (=> res!1925067 e!2870436)))

(assert (=> d!1449258 (= res!1925067 (and ((_ is Cons!51104) lt!1760433) (= (_1!29175 (h!57074 lt!1760433)) key!3287)))))

(assert (=> d!1449258 (= (containsKey!2176 lt!1760433 key!3287) e!2870436)))

(declare-fun b!4601835 () Bool)

(declare-fun e!2870437 () Bool)

(assert (=> b!4601835 (= e!2870436 e!2870437)))

(declare-fun res!1925068 () Bool)

(assert (=> b!4601835 (=> (not res!1925068) (not e!2870437))))

(assert (=> b!4601835 (= res!1925068 ((_ is Cons!51104) lt!1760433))))

(declare-fun b!4601836 () Bool)

(assert (=> b!4601836 (= e!2870437 (containsKey!2176 (t!358222 lt!1760433) key!3287))))

(assert (= (and d!1449258 (not res!1925067)) b!4601835))

(assert (= (and b!4601835 res!1925068) b!4601836))

(declare-fun m!5430029 () Bool)

(assert (=> b!4601836 m!5430029))

(assert (=> d!1449016 d!1449258))

(declare-fun d!1449260 () Bool)

(declare-fun res!1925069 () Bool)

(declare-fun e!2870438 () Bool)

(assert (=> d!1449260 (=> res!1925069 e!2870438)))

(assert (=> d!1449260 (= res!1925069 (not ((_ is Cons!51104) lt!1760296)))))

(assert (=> d!1449260 (= (noDuplicateKeys!1328 lt!1760296) e!2870438)))

(declare-fun b!4601837 () Bool)

(declare-fun e!2870439 () Bool)

(assert (=> b!4601837 (= e!2870438 e!2870439)))

(declare-fun res!1925070 () Bool)

(assert (=> b!4601837 (=> (not res!1925070) (not e!2870439))))

(assert (=> b!4601837 (= res!1925070 (not (containsKey!2176 (t!358222 lt!1760296) (_1!29175 (h!57074 lt!1760296)))))))

(declare-fun b!4601838 () Bool)

(assert (=> b!4601838 (= e!2870439 (noDuplicateKeys!1328 (t!358222 lt!1760296)))))

(assert (= (and d!1449260 (not res!1925069)) b!4601837))

(assert (= (and b!4601837 res!1925070) b!4601838))

(declare-fun m!5430031 () Bool)

(assert (=> b!4601837 m!5430031))

(assert (=> b!4601838 m!5429741))

(assert (=> d!1449016 d!1449260))

(declare-fun d!1449262 () Bool)

(declare-fun res!1925071 () Bool)

(declare-fun e!2870440 () Bool)

(assert (=> d!1449262 (=> res!1925071 e!2870440)))

(assert (=> d!1449262 (= res!1925071 ((_ is Nil!51105) (t!358223 (toList!4671 lm!1477))))))

(assert (=> d!1449262 (= (forall!10618 (t!358223 (toList!4671 lm!1477)) lambda!186668) e!2870440)))

(declare-fun b!4601839 () Bool)

(declare-fun e!2870441 () Bool)

(assert (=> b!4601839 (= e!2870440 e!2870441)))

(declare-fun res!1925072 () Bool)

(assert (=> b!4601839 (=> (not res!1925072) (not e!2870441))))

(assert (=> b!4601839 (= res!1925072 (dynLambda!21405 lambda!186668 (h!57075 (t!358223 (toList!4671 lm!1477)))))))

(declare-fun b!4601840 () Bool)

(assert (=> b!4601840 (= e!2870441 (forall!10618 (t!358223 (t!358223 (toList!4671 lm!1477))) lambda!186668))))

(assert (= (and d!1449262 (not res!1925071)) b!4601839))

(assert (= (and b!4601839 res!1925072) b!4601840))

(declare-fun b_lambda!169605 () Bool)

(assert (=> (not b_lambda!169605) (not b!4601839)))

(declare-fun m!5430033 () Bool)

(assert (=> b!4601839 m!5430033))

(declare-fun m!5430037 () Bool)

(assert (=> b!4601840 m!5430037))

(assert (=> b!4601238 d!1449262))

(declare-fun bs!1012933 () Bool)

(declare-fun b!4601846 () Bool)

(assert (= bs!1012933 (and b!4601846 b!4601653)))

(declare-fun lambda!186781 () Int)

(assert (=> bs!1012933 (= (= (toList!4672 lt!1760307) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (= lambda!186781 lambda!186735))))

(declare-fun bs!1012934 () Bool)

(assert (= bs!1012934 (and b!4601846 b!4601492)))

(assert (=> bs!1012934 (= (= (toList!4672 lt!1760307) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186781 lambda!186723))))

(declare-fun bs!1012935 () Bool)

(assert (= bs!1012935 (and b!4601846 b!4601619)))

(assert (=> bs!1012935 (= (= (toList!4672 lt!1760307) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186781 lambda!186725))))

(declare-fun bs!1012936 () Bool)

(assert (= bs!1012936 (and b!4601846 b!4601649)))

(assert (=> bs!1012936 (= (= (toList!4672 lt!1760307) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186781 lambda!186737))))

(declare-fun bs!1012937 () Bool)

(assert (= bs!1012937 (and b!4601846 b!4601646)))

(assert (=> bs!1012937 (= (= (toList!4672 lt!1760307) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308))))) (= lambda!186781 lambda!186736))))

(assert (=> b!4601846 true))

(declare-fun bs!1012938 () Bool)

(declare-fun b!4601847 () Bool)

(assert (= bs!1012938 (and b!4601847 b!4601493)))

(declare-fun lambda!186782 () Int)

(assert (=> bs!1012938 (= lambda!186782 lambda!186724)))

(declare-fun bs!1012939 () Bool)

(assert (= bs!1012939 (and b!4601847 b!4601620)))

(assert (=> bs!1012939 (= lambda!186782 lambda!186726)))

(declare-fun bs!1012940 () Bool)

(assert (= bs!1012940 (and b!4601847 b!4601647)))

(assert (=> bs!1012940 (= lambda!186782 lambda!186738)))

(declare-fun d!1449264 () Bool)

(declare-fun e!2870444 () Bool)

(assert (=> d!1449264 e!2870444))

(declare-fun res!1925073 () Bool)

(assert (=> d!1449264 (=> (not res!1925073) (not e!2870444))))

(declare-fun lt!1760747 () List!51231)

(assert (=> d!1449264 (= res!1925073 (noDuplicate!815 lt!1760747))))

(assert (=> d!1449264 (= lt!1760747 (getKeysList!579 (toList!4672 lt!1760307)))))

(assert (=> d!1449264 (= (keys!17900 lt!1760307) lt!1760747)))

(declare-fun b!4601845 () Bool)

(declare-fun res!1925074 () Bool)

(assert (=> b!4601845 (=> (not res!1925074) (not e!2870444))))

(assert (=> b!4601845 (= res!1925074 (= (length!486 lt!1760747) (length!487 (toList!4672 lt!1760307))))))

(declare-fun res!1925075 () Bool)

(assert (=> b!4601846 (=> (not res!1925075) (not e!2870444))))

(assert (=> b!4601846 (= res!1925075 (forall!10621 lt!1760747 lambda!186781))))

(assert (=> b!4601847 (= e!2870444 (= (content!8664 lt!1760747) (content!8664 (map!11292 (toList!4672 lt!1760307) lambda!186782))))))

(assert (= (and d!1449264 res!1925073) b!4601845))

(assert (= (and b!4601845 res!1925074) b!4601846))

(assert (= (and b!4601846 res!1925075) b!4601847))

(declare-fun m!5430039 () Bool)

(assert (=> d!1449264 m!5430039))

(assert (=> d!1449264 m!5429117))

(declare-fun m!5430041 () Bool)

(assert (=> b!4601845 m!5430041))

(declare-fun m!5430043 () Bool)

(assert (=> b!4601845 m!5430043))

(declare-fun m!5430045 () Bool)

(assert (=> b!4601846 m!5430045))

(declare-fun m!5430047 () Bool)

(assert (=> b!4601847 m!5430047))

(declare-fun m!5430049 () Bool)

(assert (=> b!4601847 m!5430049))

(assert (=> b!4601847 m!5430049))

(declare-fun m!5430051 () Bool)

(assert (=> b!4601847 m!5430051))

(assert (=> b!4601191 d!1449264))

(declare-fun d!1449268 () Bool)

(assert (=> d!1449268 (= (get!16895 (getValueByKey!1323 (toList!4671 lm!1477) hash!344)) (v!45400 (getValueByKey!1323 (toList!4671 lm!1477) hash!344)))))

(assert (=> d!1448992 d!1449268))

(assert (=> d!1448992 d!1449134))

(declare-fun d!1449270 () Bool)

(declare-fun noDuplicatedKeys!329 (List!51228) Bool)

(assert (=> d!1449270 (= (invariantList!1130 (toList!4672 lt!1760513)) (noDuplicatedKeys!329 (toList!4672 lt!1760513)))))

(declare-fun bs!1012941 () Bool)

(assert (= bs!1012941 d!1449270))

(declare-fun m!5430053 () Bool)

(assert (=> bs!1012941 m!5430053))

(assert (=> d!1449114 d!1449270))

(declare-fun d!1449272 () Bool)

(declare-fun res!1925076 () Bool)

(declare-fun e!2870445 () Bool)

(assert (=> d!1449272 (=> res!1925076 e!2870445)))

(assert (=> d!1449272 (= res!1925076 ((_ is Nil!51105) lt!1760308))))

(assert (=> d!1449272 (= (forall!10618 lt!1760308 lambda!186714) e!2870445)))

(declare-fun b!4601848 () Bool)

(declare-fun e!2870446 () Bool)

(assert (=> b!4601848 (= e!2870445 e!2870446)))

(declare-fun res!1925077 () Bool)

(assert (=> b!4601848 (=> (not res!1925077) (not e!2870446))))

(assert (=> b!4601848 (= res!1925077 (dynLambda!21405 lambda!186714 (h!57075 lt!1760308)))))

(declare-fun b!4601849 () Bool)

(assert (=> b!4601849 (= e!2870446 (forall!10618 (t!358223 lt!1760308) lambda!186714))))

(assert (= (and d!1449272 (not res!1925076)) b!4601848))

(assert (= (and b!4601848 res!1925077) b!4601849))

(declare-fun b_lambda!169607 () Bool)

(assert (=> (not b_lambda!169607) (not b!4601848)))

(declare-fun m!5430059 () Bool)

(assert (=> b!4601848 m!5430059))

(declare-fun m!5430061 () Bool)

(assert (=> b!4601849 m!5430061))

(assert (=> d!1449114 d!1449272))

(declare-fun d!1449276 () Bool)

(declare-fun res!1925080 () Bool)

(declare-fun e!2870449 () Bool)

(assert (=> d!1449276 (=> res!1925080 e!2870449)))

(assert (=> d!1449276 (= res!1925080 (and ((_ is Cons!51104) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) key!3287)))))

(assert (=> d!1449276 (= (containsKey!2178 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287) e!2870449)))

(declare-fun b!4601852 () Bool)

(declare-fun e!2870450 () Bool)

(assert (=> b!4601852 (= e!2870449 e!2870450)))

(declare-fun res!1925081 () Bool)

(assert (=> b!4601852 (=> (not res!1925081) (not e!2870450))))

(assert (=> b!4601852 (= res!1925081 ((_ is Cons!51104) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))))

(declare-fun b!4601853 () Bool)

(assert (=> b!4601853 (= e!2870450 (containsKey!2178 (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) key!3287))))

(assert (= (and d!1449276 (not res!1925080)) b!4601852))

(assert (= (and b!4601852 res!1925081) b!4601853))

(declare-fun m!5430065 () Bool)

(assert (=> b!4601853 m!5430065))

(assert (=> b!4601323 d!1449276))

(declare-fun d!1449280 () Bool)

(assert (=> d!1449280 (containsKey!2178 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287)))

(declare-fun lt!1760751 () Unit!108559)

(assert (=> d!1449280 (= lt!1760751 (choose!30874 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287))))

(assert (=> d!1449280 (invariantList!1130 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))))

(assert (=> d!1449280 (= (lemmaInGetKeysListThenContainsKey!578 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) key!3287) lt!1760751)))

(declare-fun bs!1012943 () Bool)

(assert (= bs!1012943 d!1449280))

(assert (=> bs!1012943 m!5429337))

(declare-fun m!5430067 () Bool)

(assert (=> bs!1012943 m!5430067))

(assert (=> bs!1012943 m!5430015))

(assert (=> b!4601323 d!1449280))

(declare-fun bs!1012944 () Bool)

(declare-fun b!4601861 () Bool)

(assert (= bs!1012944 (and b!4601861 b!4601653)))

(declare-fun lambda!186783 () Int)

(assert (=> bs!1012944 (= (= (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (= lambda!186783 lambda!186735))))

(declare-fun bs!1012945 () Bool)

(assert (= bs!1012945 (and b!4601861 b!4601492)))

(assert (=> bs!1012945 (= (= (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186783 lambda!186723))))

(declare-fun bs!1012946 () Bool)

(assert (= bs!1012946 (and b!4601861 b!4601619)))

(assert (=> bs!1012946 (= (= (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186783 lambda!186725))))

(declare-fun bs!1012947 () Bool)

(assert (= bs!1012947 (and b!4601861 b!4601846)))

(assert (=> bs!1012947 (= (= (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (toList!4672 lt!1760307)) (= lambda!186783 lambda!186781))))

(declare-fun bs!1012948 () Bool)

(assert (= bs!1012948 (and b!4601861 b!4601649)))

(assert (=> bs!1012948 (= (= (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186783 lambda!186737))))

(declare-fun bs!1012949 () Bool)

(assert (= bs!1012949 (and b!4601861 b!4601646)))

(assert (=> bs!1012949 (= (= (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308))))) (= lambda!186783 lambda!186736))))

(assert (=> b!4601861 true))

(declare-fun bs!1012950 () Bool)

(declare-fun b!4601854 () Bool)

(assert (= bs!1012950 (and b!4601854 b!4601492)))

(declare-fun lambda!186784 () Int)

(assert (=> bs!1012950 (= (= (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186784 lambda!186723))))

(declare-fun bs!1012951 () Bool)

(assert (= bs!1012951 (and b!4601854 b!4601619)))

(assert (=> bs!1012951 (= (= (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186784 lambda!186725))))

(declare-fun bs!1012952 () Bool)

(assert (= bs!1012952 (and b!4601854 b!4601846)))

(assert (=> bs!1012952 (= (= (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (toList!4672 lt!1760307)) (= lambda!186784 lambda!186781))))

(declare-fun bs!1012953 () Bool)

(assert (= bs!1012953 (and b!4601854 b!4601861)))

(assert (=> bs!1012953 (= (= (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (= lambda!186784 lambda!186783))))

(declare-fun bs!1012954 () Bool)

(assert (= bs!1012954 (and b!4601854 b!4601653)))

(assert (=> bs!1012954 (= (= (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (= lambda!186784 lambda!186735))))

(declare-fun bs!1012955 () Bool)

(assert (= bs!1012955 (and b!4601854 b!4601649)))

(assert (=> bs!1012955 (= (= (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186784 lambda!186737))))

(declare-fun bs!1012956 () Bool)

(assert (= bs!1012956 (and b!4601854 b!4601646)))

(assert (=> bs!1012956 (= (= (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308))))) (= lambda!186784 lambda!186736))))

(assert (=> b!4601854 true))

(declare-fun bs!1012957 () Bool)

(declare-fun b!4601857 () Bool)

(assert (= bs!1012957 (and b!4601857 b!4601492)))

(declare-fun lambda!186785 () Int)

(assert (=> bs!1012957 (= (= (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186785 lambda!186723))))

(declare-fun bs!1012958 () Bool)

(assert (= bs!1012958 (and b!4601857 b!4601619)))

(assert (=> bs!1012958 (= lambda!186785 lambda!186725)))

(declare-fun bs!1012959 () Bool)

(assert (= bs!1012959 (and b!4601857 b!4601846)))

(assert (=> bs!1012959 (= (= (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) (toList!4672 lt!1760307)) (= lambda!186785 lambda!186781))))

(declare-fun bs!1012960 () Bool)

(assert (= bs!1012960 (and b!4601857 b!4601861)))

(assert (=> bs!1012960 (= (= (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (= lambda!186785 lambda!186783))))

(declare-fun bs!1012961 () Bool)

(assert (= bs!1012961 (and b!4601857 b!4601653)))

(assert (=> bs!1012961 (= (= (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (= lambda!186785 lambda!186735))))

(declare-fun bs!1012962 () Bool)

(assert (= bs!1012962 (and b!4601857 b!4601854)))

(assert (=> bs!1012962 (= (= (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))) (= lambda!186785 lambda!186784))))

(declare-fun bs!1012963 () Bool)

(assert (= bs!1012963 (and b!4601857 b!4601649)))

(assert (=> bs!1012963 (= (= (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186785 lambda!186737))))

(declare-fun bs!1012964 () Bool)

(assert (= bs!1012964 (and b!4601857 b!4601646)))

(assert (=> bs!1012964 (= (= (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308))))) (= lambda!186785 lambda!186736))))

(assert (=> b!4601857 true))

(declare-fun bs!1012965 () Bool)

(declare-fun b!4601855 () Bool)

(assert (= bs!1012965 (and b!4601855 b!4601493)))

(declare-fun lambda!186786 () Int)

(assert (=> bs!1012965 (= lambda!186786 lambda!186724)))

(declare-fun bs!1012966 () Bool)

(assert (= bs!1012966 (and b!4601855 b!4601620)))

(assert (=> bs!1012966 (= lambda!186786 lambda!186726)))

(declare-fun bs!1012967 () Bool)

(assert (= bs!1012967 (and b!4601855 b!4601647)))

(assert (=> bs!1012967 (= lambda!186786 lambda!186738)))

(declare-fun bs!1012968 () Bool)

(assert (= bs!1012968 (and b!4601855 b!4601847)))

(assert (=> bs!1012968 (= lambda!186786 lambda!186782)))

(declare-fun e!2870452 () List!51231)

(assert (=> b!4601854 (= e!2870452 (Cons!51107 (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (getKeysList!579 (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))))))

(declare-fun c!788371 () Bool)

(assert (=> b!4601854 (= c!788371 (containsKey!2178 (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))))))

(declare-fun lt!1760756 () Unit!108559)

(declare-fun e!2870451 () Unit!108559)

(assert (=> b!4601854 (= lt!1760756 e!2870451)))

(declare-fun c!788370 () Bool)

(assert (=> b!4601854 (= c!788370 (contains!14069 (getKeysList!579 (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))))))

(declare-fun lt!1760753 () Unit!108559)

(declare-fun e!2870454 () Unit!108559)

(assert (=> b!4601854 (= lt!1760753 e!2870454)))

(declare-fun lt!1760758 () List!51231)

(assert (=> b!4601854 (= lt!1760758 (getKeysList!579 (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))))))

(declare-fun lt!1760752 () Unit!108559)

(assert (=> b!4601854 (= lt!1760752 (lemmaForallContainsAddHeadPreserves!235 (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) lt!1760758 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))))))

(assert (=> b!4601854 (forall!10621 lt!1760758 lambda!186784)))

(declare-fun lt!1760754 () Unit!108559)

(assert (=> b!4601854 (= lt!1760754 lt!1760752)))

(declare-fun lt!1760757 () List!51231)

(declare-fun e!2870453 () Bool)

(assert (=> b!4601855 (= e!2870453 (= (content!8664 lt!1760757) (content!8664 (map!11292 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))) lambda!186786))))))

(declare-fun b!4601856 () Bool)

(assert (=> b!4601856 false))

(declare-fun Unit!108611 () Unit!108559)

(assert (=> b!4601856 (= e!2870451 Unit!108611)))

(declare-fun res!1925082 () Bool)

(assert (=> b!4601857 (=> (not res!1925082) (not e!2870453))))

(assert (=> b!4601857 (= res!1925082 (forall!10621 lt!1760757 lambda!186785))))

(declare-fun b!4601858 () Bool)

(declare-fun Unit!108612 () Unit!108559)

(assert (=> b!4601858 (= e!2870454 Unit!108612)))

(declare-fun b!4601860 () Bool)

(declare-fun res!1925084 () Bool)

(assert (=> b!4601860 (=> (not res!1925084) (not e!2870453))))

(assert (=> b!4601860 (= res!1925084 (= (length!486 lt!1760757) (length!487 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))))))

(assert (=> b!4601861 false))

(declare-fun lt!1760755 () Unit!108559)

(assert (=> b!4601861 (= lt!1760755 (forallContained!2870 (getKeysList!579 (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) lambda!186783 (_1!29175 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))))))

(declare-fun Unit!108613 () Unit!108559)

(assert (=> b!4601861 (= e!2870454 Unit!108613)))

(declare-fun b!4601862 () Bool)

(declare-fun Unit!108614 () Unit!108559)

(assert (=> b!4601862 (= e!2870451 Unit!108614)))

(declare-fun b!4601859 () Bool)

(assert (=> b!4601859 (= e!2870452 Nil!51107)))

(declare-fun d!1449282 () Bool)

(assert (=> d!1449282 e!2870453))

(declare-fun res!1925083 () Bool)

(assert (=> d!1449282 (=> (not res!1925083) (not e!2870453))))

(assert (=> d!1449282 (= res!1925083 (noDuplicate!815 lt!1760757))))

(assert (=> d!1449282 (= lt!1760757 e!2870452)))

(declare-fun c!788369 () Bool)

(assert (=> d!1449282 (= c!788369 ((_ is Cons!51104) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))))

(assert (=> d!1449282 (invariantList!1130 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))))

(assert (=> d!1449282 (= (getKeysList!579 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) lt!1760757)))

(assert (= (and d!1449282 c!788369) b!4601854))

(assert (= (and d!1449282 (not c!788369)) b!4601859))

(assert (= (and b!4601854 c!788371) b!4601856))

(assert (= (and b!4601854 (not c!788371)) b!4601862))

(assert (= (and b!4601854 c!788370) b!4601861))

(assert (= (and b!4601854 (not c!788370)) b!4601858))

(assert (= (and d!1449282 res!1925083) b!4601860))

(assert (= (and b!4601860 res!1925084) b!4601857))

(assert (= (and b!4601857 res!1925082) b!4601855))

(declare-fun m!5430069 () Bool)

(assert (=> b!4601861 m!5430069))

(assert (=> b!4601861 m!5430069))

(declare-fun m!5430071 () Bool)

(assert (=> b!4601861 m!5430071))

(declare-fun m!5430073 () Bool)

(assert (=> d!1449282 m!5430073))

(assert (=> d!1449282 m!5430015))

(declare-fun m!5430075 () Bool)

(assert (=> b!4601860 m!5430075))

(assert (=> b!4601860 m!5429767))

(declare-fun m!5430077 () Bool)

(assert (=> b!4601855 m!5430077))

(declare-fun m!5430079 () Bool)

(assert (=> b!4601855 m!5430079))

(assert (=> b!4601855 m!5430079))

(declare-fun m!5430081 () Bool)

(assert (=> b!4601855 m!5430081))

(declare-fun m!5430083 () Bool)

(assert (=> b!4601857 m!5430083))

(assert (=> b!4601854 m!5430069))

(declare-fun m!5430085 () Bool)

(assert (=> b!4601854 m!5430085))

(declare-fun m!5430087 () Bool)

(assert (=> b!4601854 m!5430087))

(declare-fun m!5430089 () Bool)

(assert (=> b!4601854 m!5430089))

(assert (=> b!4601854 m!5430069))

(declare-fun m!5430091 () Bool)

(assert (=> b!4601854 m!5430091))

(assert (=> b!4601321 d!1449282))

(declare-fun bs!1012969 () Bool)

(declare-fun b!4601867 () Bool)

(assert (= bs!1012969 (and b!4601867 b!4601734)))

(declare-fun lambda!186787 () Int)

(assert (=> bs!1012969 (= (= (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) lt!1760707) (= lambda!186787 lambda!186770))))

(declare-fun bs!1012970 () Bool)

(assert (= bs!1012970 (and b!4601867 d!1449104)))

(assert (=> bs!1012970 (not (= lambda!186787 lambda!186712))))

(declare-fun bs!1012971 () Bool)

(assert (= bs!1012971 (and b!4601867 b!4601735)))

(assert (=> bs!1012971 (= (= (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186787 lambda!186768))))

(declare-fun bs!1012972 () Bool)

(assert (= bs!1012972 (and b!4601867 d!1449194)))

(assert (=> bs!1012972 (= (= (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) lt!1760710) (= lambda!186787 lambda!186771))))

(assert (=> bs!1012969 (= (= (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186787 lambda!186769))))

(declare-fun bs!1012973 () Bool)

(assert (= bs!1012973 (and b!4601867 d!1449036)))

(assert (=> bs!1012973 (not (= lambda!186787 lambda!186689))))

(assert (=> b!4601867 true))

(declare-fun bs!1012974 () Bool)

(declare-fun b!4601866 () Bool)

(assert (= bs!1012974 (and b!4601866 d!1449104)))

(declare-fun lambda!186788 () Int)

(assert (=> bs!1012974 (not (= lambda!186788 lambda!186712))))

(declare-fun bs!1012975 () Bool)

(assert (= bs!1012975 (and b!4601866 b!4601735)))

(assert (=> bs!1012975 (= (= (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186788 lambda!186768))))

(declare-fun bs!1012976 () Bool)

(assert (= bs!1012976 (and b!4601866 d!1449194)))

(assert (=> bs!1012976 (= (= (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) lt!1760710) (= lambda!186788 lambda!186771))))

(declare-fun bs!1012977 () Bool)

(assert (= bs!1012977 (and b!4601866 b!4601734)))

(assert (=> bs!1012977 (= (= (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186788 lambda!186769))))

(declare-fun bs!1012978 () Bool)

(assert (= bs!1012978 (and b!4601866 d!1449036)))

(assert (=> bs!1012978 (not (= lambda!186788 lambda!186689))))

(assert (=> bs!1012977 (= (= (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) lt!1760707) (= lambda!186788 lambda!186770))))

(declare-fun bs!1012979 () Bool)

(assert (= bs!1012979 (and b!4601866 b!4601867)))

(assert (=> bs!1012979 (= lambda!186788 lambda!186787)))

(assert (=> b!4601866 true))

(declare-fun lambda!186789 () Int)

(declare-fun lt!1760765 () ListMap!3933)

(assert (=> b!4601866 (= (= lt!1760765 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186789 lambda!186788))))

(assert (=> bs!1012974 (not (= lambda!186789 lambda!186712))))

(assert (=> bs!1012975 (= (= lt!1760765 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186789 lambda!186768))))

(assert (=> bs!1012976 (= (= lt!1760765 lt!1760710) (= lambda!186789 lambda!186771))))

(assert (=> bs!1012977 (= (= lt!1760765 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186789 lambda!186769))))

(assert (=> bs!1012978 (not (= lambda!186789 lambda!186689))))

(assert (=> bs!1012977 (= (= lt!1760765 lt!1760707) (= lambda!186789 lambda!186770))))

(assert (=> bs!1012979 (= (= lt!1760765 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186789 lambda!186787))))

(assert (=> b!4601866 true))

(declare-fun bs!1012980 () Bool)

(declare-fun d!1449284 () Bool)

(assert (= bs!1012980 (and d!1449284 b!4601866)))

(declare-fun lt!1760768 () ListMap!3933)

(declare-fun lambda!186790 () Int)

(assert (=> bs!1012980 (= (= lt!1760768 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186790 lambda!186788))))

(assert (=> bs!1012980 (= (= lt!1760768 lt!1760765) (= lambda!186790 lambda!186789))))

(declare-fun bs!1012981 () Bool)

(assert (= bs!1012981 (and d!1449284 d!1449104)))

(assert (=> bs!1012981 (not (= lambda!186790 lambda!186712))))

(declare-fun bs!1012982 () Bool)

(assert (= bs!1012982 (and d!1449284 b!4601735)))

(assert (=> bs!1012982 (= (= lt!1760768 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186790 lambda!186768))))

(declare-fun bs!1012983 () Bool)

(assert (= bs!1012983 (and d!1449284 d!1449194)))

(assert (=> bs!1012983 (= (= lt!1760768 lt!1760710) (= lambda!186790 lambda!186771))))

(declare-fun bs!1012984 () Bool)

(assert (= bs!1012984 (and d!1449284 b!4601734)))

(assert (=> bs!1012984 (= (= lt!1760768 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186790 lambda!186769))))

(declare-fun bs!1012985 () Bool)

(assert (= bs!1012985 (and d!1449284 d!1449036)))

(assert (=> bs!1012985 (not (= lambda!186790 lambda!186689))))

(assert (=> bs!1012984 (= (= lt!1760768 lt!1760707) (= lambda!186790 lambda!186770))))

(declare-fun bs!1012986 () Bool)

(assert (= bs!1012986 (and d!1449284 b!4601867)))

(assert (=> bs!1012986 (= (= lt!1760768 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186790 lambda!186787))))

(assert (=> d!1449284 true))

(declare-fun e!2870455 () Bool)

(assert (=> d!1449284 e!2870455))

(declare-fun res!1925085 () Bool)

(assert (=> d!1449284 (=> (not res!1925085) (not e!2870455))))

(assert (=> d!1449284 (= res!1925085 (forall!10619 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) lambda!186790))))

(declare-fun e!2870457 () ListMap!3933)

(assert (=> d!1449284 (= lt!1760768 e!2870457)))

(declare-fun c!788372 () Bool)

(assert (=> d!1449284 (= c!788372 ((_ is Nil!51104) (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))

(assert (=> d!1449284 (noDuplicateKeys!1328 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))

(assert (=> d!1449284 (= (addToMapMapFromBucket!820 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) lt!1760768)))

(declare-fun b!4601863 () Bool)

(declare-fun res!1925087 () Bool)

(assert (=> b!4601863 (=> (not res!1925087) (not e!2870455))))

(assert (=> b!4601863 (= res!1925087 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) lambda!186790))))

(declare-fun b!4601864 () Bool)

(assert (=> b!4601864 (= e!2870455 (invariantList!1130 (toList!4672 lt!1760768)))))

(declare-fun b!4601865 () Bool)

(declare-fun e!2870456 () Bool)

(assert (=> b!4601865 (= e!2870456 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) lambda!186789))))

(declare-fun bm!321157 () Bool)

(declare-fun call!321164 () Bool)

(declare-fun lt!1760774 () ListMap!3933)

(assert (=> bm!321157 (= call!321164 (forall!10619 (ite c!788372 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (toList!4672 lt!1760774)) (ite c!788372 lambda!186787 lambda!186789)))))

(declare-fun bm!321158 () Bool)

(declare-fun call!321162 () Unit!108559)

(assert (=> bm!321158 (= call!321162 (lemmaContainsAllItsOwnKeys!439 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))

(assert (=> b!4601866 (= e!2870457 lt!1760765)))

(assert (=> b!4601866 (= lt!1760774 (+!1759 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (h!57074 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))))

(assert (=> b!4601866 (= lt!1760765 (addToMapMapFromBucket!820 (t!358222 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (+!1759 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (h!57074 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))))

(declare-fun lt!1760776 () Unit!108559)

(assert (=> b!4601866 (= lt!1760776 call!321162)))

(assert (=> b!4601866 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) lambda!186788)))

(declare-fun lt!1760772 () Unit!108559)

(assert (=> b!4601866 (= lt!1760772 lt!1760776)))

(assert (=> b!4601866 (forall!10619 (toList!4672 lt!1760774) lambda!186789)))

(declare-fun lt!1760778 () Unit!108559)

(declare-fun Unit!108621 () Unit!108559)

(assert (=> b!4601866 (= lt!1760778 Unit!108621)))

(declare-fun call!321163 () Bool)

(assert (=> b!4601866 call!321163))

(declare-fun lt!1760769 () Unit!108559)

(declare-fun Unit!108623 () Unit!108559)

(assert (=> b!4601866 (= lt!1760769 Unit!108623)))

(declare-fun lt!1760766 () Unit!108559)

(declare-fun Unit!108624 () Unit!108559)

(assert (=> b!4601866 (= lt!1760766 Unit!108624)))

(declare-fun lt!1760777 () Unit!108559)

(assert (=> b!4601866 (= lt!1760777 (forallContained!2871 (toList!4672 lt!1760774) lambda!186789 (h!57074 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))))

(assert (=> b!4601866 (contains!14065 lt!1760774 (_1!29175 (h!57074 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))))

(declare-fun lt!1760771 () Unit!108559)

(declare-fun Unit!108627 () Unit!108559)

(assert (=> b!4601866 (= lt!1760771 Unit!108627)))

(assert (=> b!4601866 (contains!14065 lt!1760765 (_1!29175 (h!57074 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))))

(declare-fun lt!1760762 () Unit!108559)

(declare-fun Unit!108628 () Unit!108559)

(assert (=> b!4601866 (= lt!1760762 Unit!108628)))

(assert (=> b!4601866 (forall!10619 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) lambda!186789)))

(declare-fun lt!1760767 () Unit!108559)

(declare-fun Unit!108630 () Unit!108559)

(assert (=> b!4601866 (= lt!1760767 Unit!108630)))

(assert (=> b!4601866 call!321164))

(declare-fun lt!1760761 () Unit!108559)

(declare-fun Unit!108631 () Unit!108559)

(assert (=> b!4601866 (= lt!1760761 Unit!108631)))

(declare-fun lt!1760779 () Unit!108559)

(declare-fun Unit!108632 () Unit!108559)

(assert (=> b!4601866 (= lt!1760779 Unit!108632)))

(declare-fun lt!1760760 () Unit!108559)

(assert (=> b!4601866 (= lt!1760760 (addForallContainsKeyThenBeforeAdding!439 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) lt!1760765 (_1!29175 (h!57074 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))) (_2!29175 (h!57074 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))))

(assert (=> b!4601866 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) lambda!186789)))

(declare-fun lt!1760770 () Unit!108559)

(assert (=> b!4601866 (= lt!1760770 lt!1760760)))

(assert (=> b!4601866 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) lambda!186789)))

(declare-fun lt!1760773 () Unit!108559)

(declare-fun Unit!108634 () Unit!108559)

(assert (=> b!4601866 (= lt!1760773 Unit!108634)))

(declare-fun res!1925086 () Bool)

(assert (=> b!4601866 (= res!1925086 (forall!10619 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) lambda!186789))))

(assert (=> b!4601866 (=> (not res!1925086) (not e!2870456))))

(assert (=> b!4601866 e!2870456))

(declare-fun lt!1760759 () Unit!108559)

(declare-fun Unit!108635 () Unit!108559)

(assert (=> b!4601866 (= lt!1760759 Unit!108635)))

(assert (=> b!4601867 (= e!2870457 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))

(declare-fun lt!1760764 () Unit!108559)

(assert (=> b!4601867 (= lt!1760764 call!321162)))

(assert (=> b!4601867 call!321164))

(declare-fun lt!1760775 () Unit!108559)

(assert (=> b!4601867 (= lt!1760775 lt!1760764)))

(assert (=> b!4601867 call!321163))

(declare-fun lt!1760763 () Unit!108559)

(declare-fun Unit!108636 () Unit!108559)

(assert (=> b!4601867 (= lt!1760763 Unit!108636)))

(declare-fun bm!321159 () Bool)

(assert (=> bm!321159 (= call!321163 (forall!10619 (ite c!788372 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (t!358222 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))) (ite c!788372 lambda!186787 lambda!186789)))))

(assert (= (and d!1449284 c!788372) b!4601867))

(assert (= (and d!1449284 (not c!788372)) b!4601866))

(assert (= (and b!4601866 res!1925086) b!4601865))

(assert (= (or b!4601867 b!4601866) bm!321157))

(assert (= (or b!4601867 b!4601866) bm!321159))

(assert (= (or b!4601867 b!4601866) bm!321158))

(assert (= (and d!1449284 res!1925085) b!4601863))

(assert (= (and b!4601863 res!1925087) b!4601864))

(declare-fun m!5430093 () Bool)

(assert (=> b!4601864 m!5430093))

(declare-fun m!5430095 () Bool)

(assert (=> b!4601866 m!5430095))

(declare-fun m!5430097 () Bool)

(assert (=> b!4601866 m!5430097))

(declare-fun m!5430099 () Bool)

(assert (=> b!4601866 m!5430099))

(assert (=> b!4601866 m!5429543))

(declare-fun m!5430101 () Bool)

(assert (=> b!4601866 m!5430101))

(declare-fun m!5430103 () Bool)

(assert (=> b!4601866 m!5430103))

(declare-fun m!5430105 () Bool)

(assert (=> b!4601866 m!5430105))

(declare-fun m!5430107 () Bool)

(assert (=> b!4601866 m!5430107))

(declare-fun m!5430109 () Bool)

(assert (=> b!4601866 m!5430109))

(declare-fun m!5430111 () Bool)

(assert (=> b!4601866 m!5430111))

(assert (=> b!4601866 m!5430111))

(assert (=> b!4601866 m!5429543))

(assert (=> b!4601866 m!5430103))

(declare-fun m!5430113 () Bool)

(assert (=> b!4601866 m!5430113))

(assert (=> b!4601866 m!5430099))

(declare-fun m!5430115 () Bool)

(assert (=> bm!321159 m!5430115))

(assert (=> bm!321158 m!5429543))

(declare-fun m!5430117 () Bool)

(assert (=> bm!321158 m!5430117))

(declare-fun m!5430119 () Bool)

(assert (=> b!4601863 m!5430119))

(declare-fun m!5430121 () Bool)

(assert (=> d!1449284 m!5430121))

(declare-fun m!5430123 () Bool)

(assert (=> d!1449284 m!5430123))

(assert (=> b!4601865 m!5430099))

(declare-fun m!5430125 () Bool)

(assert (=> bm!321157 m!5430125))

(assert (=> b!4601458 d!1449284))

(declare-fun bs!1012987 () Bool)

(declare-fun d!1449286 () Bool)

(assert (= bs!1012987 (and d!1449286 d!1449064)))

(declare-fun lambda!186791 () Int)

(assert (=> bs!1012987 (= lambda!186791 lambda!186698)))

(declare-fun bs!1012988 () Bool)

(assert (= bs!1012988 (and d!1449286 d!1449044)))

(assert (=> bs!1012988 (= lambda!186791 lambda!186697)))

(declare-fun bs!1012989 () Bool)

(assert (= bs!1012989 (and d!1449286 d!1449066)))

(assert (=> bs!1012989 (= lambda!186791 lambda!186699)))

(declare-fun bs!1012990 () Bool)

(assert (= bs!1012990 (and d!1449286 d!1449080)))

(assert (=> bs!1012990 (= lambda!186791 lambda!186711)))

(declare-fun bs!1012991 () Bool)

(assert (= bs!1012991 (and d!1449286 d!1449108)))

(assert (=> bs!1012991 (= lambda!186791 lambda!186713)))

(declare-fun bs!1012992 () Bool)

(assert (= bs!1012992 (and d!1449286 d!1448988)))

(assert (=> bs!1012992 (= lambda!186791 lambda!186677)))

(declare-fun bs!1012993 () Bool)

(assert (= bs!1012993 (and d!1449286 d!1449190)))

(assert (=> bs!1012993 (= lambda!186791 lambda!186739)))

(declare-fun bs!1012994 () Bool)

(assert (= bs!1012994 (and d!1449286 d!1449214)))

(assert (=> bs!1012994 (= lambda!186791 lambda!186772)))

(declare-fun bs!1012995 () Bool)

(assert (= bs!1012995 (and d!1449286 d!1449114)))

(assert (=> bs!1012995 (= lambda!186791 lambda!186714)))

(declare-fun bs!1012996 () Bool)

(assert (= bs!1012996 (and d!1449286 d!1449116)))

(assert (=> bs!1012996 (= lambda!186791 lambda!186715)))

(declare-fun bs!1012997 () Bool)

(assert (= bs!1012997 (and d!1449286 d!1449032)))

(assert (=> bs!1012997 (= lambda!186791 lambda!186686)))

(declare-fun bs!1012998 () Bool)

(assert (= bs!1012998 (and d!1449286 start!459328)))

(assert (=> bs!1012998 (= lambda!186791 lambda!186668)))

(declare-fun bs!1012999 () Bool)

(assert (= bs!1012999 (and d!1449286 d!1448970)))

(assert (=> bs!1012999 (not (= lambda!186791 lambda!186671))))

(declare-fun bs!1013000 () Bool)

(assert (= bs!1013000 (and d!1449286 d!1449118)))

(assert (=> bs!1013000 (= lambda!186791 lambda!186718)))

(declare-fun lt!1760780 () ListMap!3933)

(assert (=> d!1449286 (invariantList!1130 (toList!4672 lt!1760780))))

(declare-fun e!2870458 () ListMap!3933)

(assert (=> d!1449286 (= lt!1760780 e!2870458)))

(declare-fun c!788373 () Bool)

(assert (=> d!1449286 (= c!788373 ((_ is Cons!51105) (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))

(assert (=> d!1449286 (forall!10618 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) lambda!186791)))

(assert (=> d!1449286 (= (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) lt!1760780)))

(declare-fun b!4601868 () Bool)

(assert (=> b!4601868 (= e!2870458 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (extractMap!1388 (t!358223 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))))

(declare-fun b!4601869 () Bool)

(assert (=> b!4601869 (= e!2870458 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449286 c!788373) b!4601868))

(assert (= (and d!1449286 (not c!788373)) b!4601869))

(declare-fun m!5430127 () Bool)

(assert (=> d!1449286 m!5430127))

(declare-fun m!5430129 () Bool)

(assert (=> d!1449286 m!5430129))

(declare-fun m!5430131 () Bool)

(assert (=> b!4601868 m!5430131))

(assert (=> b!4601868 m!5430131))

(declare-fun m!5430133 () Bool)

(assert (=> b!4601868 m!5430133))

(assert (=> b!4601458 d!1449286))

(declare-fun d!1449288 () Bool)

(assert (=> d!1449288 (= (isDefined!8669 (getValueByKey!1322 (toList!4672 lt!1760307) key!3287)) (not (isEmpty!28871 (getValueByKey!1322 (toList!4672 lt!1760307) key!3287))))))

(declare-fun bs!1013001 () Bool)

(assert (= bs!1013001 d!1449288))

(assert (=> bs!1013001 m!5429111))

(declare-fun m!5430135 () Bool)

(assert (=> bs!1013001 m!5430135))

(assert (=> b!4601190 d!1449288))

(declare-fun b!4601871 () Bool)

(declare-fun e!2870459 () Option!11402)

(declare-fun e!2870460 () Option!11402)

(assert (=> b!4601871 (= e!2870459 e!2870460)))

(declare-fun c!788375 () Bool)

(assert (=> b!4601871 (= c!788375 (and ((_ is Cons!51104) (toList!4672 lt!1760307)) (not (= (_1!29175 (h!57074 (toList!4672 lt!1760307))) key!3287))))))

(declare-fun b!4601872 () Bool)

(assert (=> b!4601872 (= e!2870460 (getValueByKey!1322 (t!358222 (toList!4672 lt!1760307)) key!3287))))

(declare-fun b!4601870 () Bool)

(assert (=> b!4601870 (= e!2870459 (Some!11401 (_2!29175 (h!57074 (toList!4672 lt!1760307)))))))

(declare-fun b!4601873 () Bool)

(assert (=> b!4601873 (= e!2870460 None!11401)))

(declare-fun d!1449290 () Bool)

(declare-fun c!788374 () Bool)

(assert (=> d!1449290 (= c!788374 (and ((_ is Cons!51104) (toList!4672 lt!1760307)) (= (_1!29175 (h!57074 (toList!4672 lt!1760307))) key!3287)))))

(assert (=> d!1449290 (= (getValueByKey!1322 (toList!4672 lt!1760307) key!3287) e!2870459)))

(assert (= (and d!1449290 c!788374) b!4601870))

(assert (= (and d!1449290 (not c!788374)) b!4601871))

(assert (= (and b!4601871 c!788375) b!4601872))

(assert (= (and b!4601871 (not c!788375)) b!4601873))

(declare-fun m!5430137 () Bool)

(assert (=> b!4601872 m!5430137))

(assert (=> b!4601190 d!1449290))

(declare-fun d!1449292 () Bool)

(declare-fun res!1925092 () Bool)

(declare-fun e!2870465 () Bool)

(assert (=> d!1449292 (=> res!1925092 e!2870465)))

(assert (=> d!1449292 (= res!1925092 (or ((_ is Nil!51105) (toList!4671 lm!1477)) ((_ is Nil!51105) (t!358223 (toList!4671 lm!1477)))))))

(assert (=> d!1449292 (= (isStrictlySorted!545 (toList!4671 lm!1477)) e!2870465)))

(declare-fun b!4601878 () Bool)

(declare-fun e!2870466 () Bool)

(assert (=> b!4601878 (= e!2870465 e!2870466)))

(declare-fun res!1925093 () Bool)

(assert (=> b!4601878 (=> (not res!1925093) (not e!2870466))))

(assert (=> b!4601878 (= res!1925093 (bvslt (_1!29176 (h!57075 (toList!4671 lm!1477))) (_1!29176 (h!57075 (t!358223 (toList!4671 lm!1477))))))))

(declare-fun b!4601879 () Bool)

(assert (=> b!4601879 (= e!2870466 (isStrictlySorted!545 (t!358223 (toList!4671 lm!1477))))))

(assert (= (and d!1449292 (not res!1925092)) b!4601878))

(assert (= (and b!4601878 res!1925093) b!4601879))

(declare-fun m!5430139 () Bool)

(assert (=> b!4601879 m!5430139))

(assert (=> d!1449022 d!1449292))

(declare-fun d!1449294 () Bool)

(declare-fun res!1925094 () Bool)

(declare-fun e!2870468 () Bool)

(assert (=> d!1449294 (=> res!1925094 e!2870468)))

(declare-fun e!2870467 () Bool)

(assert (=> d!1449294 (= res!1925094 e!2870467)))

(declare-fun res!1925096 () Bool)

(assert (=> d!1449294 (=> (not res!1925096) (not e!2870467))))

(assert (=> d!1449294 (= res!1925096 ((_ is Cons!51105) (t!358223 lt!1760308)))))

(assert (=> d!1449294 (= (containsKeyBiggerList!284 (t!358223 lt!1760308) key!3287) e!2870468)))

(declare-fun b!4601880 () Bool)

(assert (=> b!4601880 (= e!2870467 (containsKey!2176 (_2!29176 (h!57075 (t!358223 lt!1760308))) key!3287))))

(declare-fun b!4601881 () Bool)

(declare-fun e!2870469 () Bool)

(assert (=> b!4601881 (= e!2870468 e!2870469)))

(declare-fun res!1925095 () Bool)

(assert (=> b!4601881 (=> (not res!1925095) (not e!2870469))))

(assert (=> b!4601881 (= res!1925095 ((_ is Cons!51105) (t!358223 lt!1760308)))))

(declare-fun b!4601882 () Bool)

(assert (=> b!4601882 (= e!2870469 (containsKeyBiggerList!284 (t!358223 (t!358223 lt!1760308)) key!3287))))

(assert (= (and d!1449294 res!1925096) b!4601880))

(assert (= (and d!1449294 (not res!1925094)) b!4601881))

(assert (= (and b!4601881 res!1925095) b!4601882))

(declare-fun m!5430141 () Bool)

(assert (=> b!4601880 m!5430141))

(declare-fun m!5430143 () Bool)

(assert (=> b!4601882 m!5430143))

(assert (=> b!4601400 d!1449294))

(declare-fun d!1449296 () Bool)

(declare-fun res!1925101 () Bool)

(declare-fun e!2870474 () Bool)

(assert (=> d!1449296 (=> res!1925101 e!2870474)))

(assert (=> d!1449296 (= res!1925101 ((_ is Nil!51104) newBucket!178))))

(assert (=> d!1449296 (= (forall!10619 newBucket!178 lambda!186712) e!2870474)))

(declare-fun b!4601887 () Bool)

(declare-fun e!2870475 () Bool)

(assert (=> b!4601887 (= e!2870474 e!2870475)))

(declare-fun res!1925102 () Bool)

(assert (=> b!4601887 (=> (not res!1925102) (not e!2870475))))

(declare-fun dynLambda!21407 (Int tuple2!51762) Bool)

(assert (=> b!4601887 (= res!1925102 (dynLambda!21407 lambda!186712 (h!57074 newBucket!178)))))

(declare-fun b!4601888 () Bool)

(assert (=> b!4601888 (= e!2870475 (forall!10619 (t!358222 newBucket!178) lambda!186712))))

(assert (= (and d!1449296 (not res!1925101)) b!4601887))

(assert (= (and b!4601887 res!1925102) b!4601888))

(declare-fun b_lambda!169609 () Bool)

(assert (=> (not b_lambda!169609) (not b!4601887)))

(declare-fun m!5430145 () Bool)

(assert (=> b!4601887 m!5430145))

(declare-fun m!5430147 () Bool)

(assert (=> b!4601888 m!5430147))

(assert (=> d!1449104 d!1449296))

(declare-fun d!1449298 () Bool)

(assert (=> d!1449298 (= (invariantList!1130 (toList!4672 lt!1760474)) (noDuplicatedKeys!329 (toList!4672 lt!1760474)))))

(declare-fun bs!1013002 () Bool)

(assert (= bs!1013002 d!1449298))

(declare-fun m!5430149 () Bool)

(assert (=> bs!1013002 m!5430149))

(assert (=> d!1449044 d!1449298))

(declare-fun d!1449300 () Bool)

(declare-fun res!1925103 () Bool)

(declare-fun e!2870476 () Bool)

(assert (=> d!1449300 (=> res!1925103 e!2870476)))

(assert (=> d!1449300 (= res!1925103 ((_ is Nil!51105) (toList!4671 lm!1477)))))

(assert (=> d!1449300 (= (forall!10618 (toList!4671 lm!1477) lambda!186697) e!2870476)))

(declare-fun b!4601889 () Bool)

(declare-fun e!2870477 () Bool)

(assert (=> b!4601889 (= e!2870476 e!2870477)))

(declare-fun res!1925104 () Bool)

(assert (=> b!4601889 (=> (not res!1925104) (not e!2870477))))

(assert (=> b!4601889 (= res!1925104 (dynLambda!21405 lambda!186697 (h!57075 (toList!4671 lm!1477))))))

(declare-fun b!4601890 () Bool)

(assert (=> b!4601890 (= e!2870477 (forall!10618 (t!358223 (toList!4671 lm!1477)) lambda!186697))))

(assert (= (and d!1449300 (not res!1925103)) b!4601889))

(assert (= (and b!4601889 res!1925104) b!4601890))

(declare-fun b_lambda!169611 () Bool)

(assert (=> (not b_lambda!169611) (not b!4601889)))

(declare-fun m!5430151 () Bool)

(assert (=> b!4601889 m!5430151))

(declare-fun m!5430153 () Bool)

(assert (=> b!4601890 m!5430153))

(assert (=> d!1449044 d!1449300))

(declare-fun d!1449302 () Bool)

(declare-fun res!1925105 () Bool)

(declare-fun e!2870478 () Bool)

(assert (=> d!1449302 (=> res!1925105 e!2870478)))

(assert (=> d!1449302 (= res!1925105 (and ((_ is Cons!51104) (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))) (= (_1!29175 (h!57074 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))))) (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))))

(assert (=> d!1449302 (= (containsKey!2176 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))) (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477)))))) e!2870478)))

(declare-fun b!4601891 () Bool)

(declare-fun e!2870479 () Bool)

(assert (=> b!4601891 (= e!2870478 e!2870479)))

(declare-fun res!1925106 () Bool)

(assert (=> b!4601891 (=> (not res!1925106) (not e!2870479))))

(assert (=> b!4601891 (= res!1925106 ((_ is Cons!51104) (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(declare-fun b!4601892 () Bool)

(assert (=> b!4601892 (= e!2870479 (containsKey!2176 (t!358222 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))) (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))))

(assert (= (and d!1449302 (not res!1925105)) b!4601891))

(assert (= (and b!4601891 res!1925106) b!4601892))

(declare-fun m!5430155 () Bool)

(assert (=> b!4601892 m!5430155))

(assert (=> b!4601306 d!1449302))

(declare-fun d!1449304 () Bool)

(assert (=> d!1449304 (= (invariantList!1130 (toList!4672 lt!1760512)) (noDuplicatedKeys!329 (toList!4672 lt!1760512)))))

(declare-fun bs!1013003 () Bool)

(assert (= bs!1013003 d!1449304))

(declare-fun m!5430157 () Bool)

(assert (=> bs!1013003 m!5430157))

(assert (=> d!1449108 d!1449304))

(declare-fun d!1449306 () Bool)

(declare-fun res!1925107 () Bool)

(declare-fun e!2870480 () Bool)

(assert (=> d!1449306 (=> res!1925107 e!2870480)))

(assert (=> d!1449306 (= res!1925107 ((_ is Nil!51105) (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))

(assert (=> d!1449306 (= (forall!10618 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105) lambda!186713) e!2870480)))

(declare-fun b!4601893 () Bool)

(declare-fun e!2870481 () Bool)

(assert (=> b!4601893 (= e!2870480 e!2870481)))

(declare-fun res!1925108 () Bool)

(assert (=> b!4601893 (=> (not res!1925108) (not e!2870481))))

(assert (=> b!4601893 (= res!1925108 (dynLambda!21405 lambda!186713 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))

(declare-fun b!4601894 () Bool)

(assert (=> b!4601894 (= e!2870481 (forall!10618 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) lambda!186713))))

(assert (= (and d!1449306 (not res!1925107)) b!4601893))

(assert (= (and b!4601893 res!1925108) b!4601894))

(declare-fun b_lambda!169613 () Bool)

(assert (=> (not b_lambda!169613) (not b!4601893)))

(declare-fun m!5430159 () Bool)

(assert (=> b!4601893 m!5430159))

(declare-fun m!5430161 () Bool)

(assert (=> b!4601894 m!5430161))

(assert (=> d!1449108 d!1449306))

(declare-fun d!1449308 () Bool)

(declare-fun res!1925109 () Bool)

(declare-fun e!2870482 () Bool)

(assert (=> d!1449308 (=> res!1925109 e!2870482)))

(assert (=> d!1449308 (= res!1925109 (and ((_ is Cons!51104) (_2!29176 (h!57075 lt!1760308))) (= (_1!29175 (h!57074 (_2!29176 (h!57075 lt!1760308)))) key!3287)))))

(assert (=> d!1449308 (= (containsKey!2176 (_2!29176 (h!57075 lt!1760308)) key!3287) e!2870482)))

(declare-fun b!4601895 () Bool)

(declare-fun e!2870483 () Bool)

(assert (=> b!4601895 (= e!2870482 e!2870483)))

(declare-fun res!1925110 () Bool)

(assert (=> b!4601895 (=> (not res!1925110) (not e!2870483))))

(assert (=> b!4601895 (= res!1925110 ((_ is Cons!51104) (_2!29176 (h!57075 lt!1760308))))))

(declare-fun b!4601896 () Bool)

(assert (=> b!4601896 (= e!2870483 (containsKey!2176 (t!358222 (_2!29176 (h!57075 lt!1760308))) key!3287))))

(assert (= (and d!1449308 (not res!1925109)) b!4601895))

(assert (= (and b!4601895 res!1925110) b!4601896))

(declare-fun m!5430163 () Bool)

(assert (=> b!4601896 m!5430163))

(assert (=> b!4601398 d!1449308))

(declare-fun d!1449310 () Bool)

(declare-fun lt!1760781 () Bool)

(assert (=> d!1449310 (= lt!1760781 (select (content!8664 (keys!17900 lt!1760307)) key!3287))))

(declare-fun e!2870485 () Bool)

(assert (=> d!1449310 (= lt!1760781 e!2870485)))

(declare-fun res!1925111 () Bool)

(assert (=> d!1449310 (=> (not res!1925111) (not e!2870485))))

(assert (=> d!1449310 (= res!1925111 ((_ is Cons!51107) (keys!17900 lt!1760307)))))

(assert (=> d!1449310 (= (contains!14069 (keys!17900 lt!1760307) key!3287) lt!1760781)))

(declare-fun b!4601897 () Bool)

(declare-fun e!2870484 () Bool)

(assert (=> b!4601897 (= e!2870485 e!2870484)))

(declare-fun res!1925112 () Bool)

(assert (=> b!4601897 (=> res!1925112 e!2870484)))

(assert (=> b!4601897 (= res!1925112 (= (h!57079 (keys!17900 lt!1760307)) key!3287))))

(declare-fun b!4601898 () Bool)

(assert (=> b!4601898 (= e!2870484 (contains!14069 (t!358225 (keys!17900 lt!1760307)) key!3287))))

(assert (= (and d!1449310 res!1925111) b!4601897))

(assert (= (and b!4601897 (not res!1925112)) b!4601898))

(assert (=> d!1449310 m!5429103))

(declare-fun m!5430165 () Bool)

(assert (=> d!1449310 m!5430165))

(declare-fun m!5430167 () Bool)

(assert (=> d!1449310 m!5430167))

(declare-fun m!5430169 () Bool)

(assert (=> b!4601898 m!5430169))

(assert (=> b!4601186 d!1449310))

(assert (=> b!4601186 d!1449264))

(declare-fun d!1449312 () Bool)

(declare-fun res!1925113 () Bool)

(declare-fun e!2870486 () Bool)

(assert (=> d!1449312 (=> res!1925113 e!2870486)))

(assert (=> d!1449312 (= res!1925113 (and ((_ is Cons!51104) (t!358222 newBucket!178)) (= (_1!29175 (h!57074 (t!358222 newBucket!178))) (_1!29175 (h!57074 newBucket!178)))))))

(assert (=> d!1449312 (= (containsKey!2176 (t!358222 newBucket!178) (_1!29175 (h!57074 newBucket!178))) e!2870486)))

(declare-fun b!4601899 () Bool)

(declare-fun e!2870487 () Bool)

(assert (=> b!4601899 (= e!2870486 e!2870487)))

(declare-fun res!1925114 () Bool)

(assert (=> b!4601899 (=> (not res!1925114) (not e!2870487))))

(assert (=> b!4601899 (= res!1925114 ((_ is Cons!51104) (t!358222 newBucket!178)))))

(declare-fun b!4601900 () Bool)

(assert (=> b!4601900 (= e!2870487 (containsKey!2176 (t!358222 (t!358222 newBucket!178)) (_1!29175 (h!57074 newBucket!178))))))

(assert (= (and d!1449312 (not res!1925113)) b!4601899))

(assert (= (and b!4601899 res!1925114) b!4601900))

(declare-fun m!5430171 () Bool)

(assert (=> b!4601900 m!5430171))

(assert (=> b!4601231 d!1449312))

(declare-fun bs!1013004 () Bool)

(declare-fun b!4601905 () Bool)

(assert (= bs!1013004 (and b!4601905 b!4601866)))

(declare-fun lambda!186792 () Int)

(assert (=> bs!1013004 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186792 lambda!186788))))

(assert (=> bs!1013004 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) lt!1760765) (= lambda!186792 lambda!186789))))

(declare-fun bs!1013005 () Bool)

(assert (= bs!1013005 (and b!4601905 d!1449104)))

(assert (=> bs!1013005 (not (= lambda!186792 lambda!186712))))

(declare-fun bs!1013006 () Bool)

(assert (= bs!1013006 (and b!4601905 d!1449284)))

(assert (=> bs!1013006 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) lt!1760768) (= lambda!186792 lambda!186790))))

(declare-fun bs!1013007 () Bool)

(assert (= bs!1013007 (and b!4601905 b!4601735)))

(assert (=> bs!1013007 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186792 lambda!186768))))

(declare-fun bs!1013008 () Bool)

(assert (= bs!1013008 (and b!4601905 d!1449194)))

(assert (=> bs!1013008 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) lt!1760710) (= lambda!186792 lambda!186771))))

(declare-fun bs!1013009 () Bool)

(assert (= bs!1013009 (and b!4601905 b!4601734)))

(assert (=> bs!1013009 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186792 lambda!186769))))

(declare-fun bs!1013010 () Bool)

(assert (= bs!1013010 (and b!4601905 d!1449036)))

(assert (=> bs!1013010 (not (= lambda!186792 lambda!186689))))

(assert (=> bs!1013009 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) lt!1760707) (= lambda!186792 lambda!186770))))

(declare-fun bs!1013011 () Bool)

(assert (= bs!1013011 (and b!4601905 b!4601867)))

(assert (=> bs!1013011 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186792 lambda!186787))))

(assert (=> b!4601905 true))

(declare-fun bs!1013012 () Bool)

(declare-fun b!4601904 () Bool)

(assert (= bs!1013012 (and b!4601904 b!4601866)))

(declare-fun lambda!186793 () Int)

(assert (=> bs!1013012 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186793 lambda!186788))))

(assert (=> bs!1013012 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) lt!1760765) (= lambda!186793 lambda!186789))))

(declare-fun bs!1013013 () Bool)

(assert (= bs!1013013 (and b!4601904 d!1449284)))

(assert (=> bs!1013013 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) lt!1760768) (= lambda!186793 lambda!186790))))

(declare-fun bs!1013014 () Bool)

(assert (= bs!1013014 (and b!4601904 b!4601735)))

(assert (=> bs!1013014 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186793 lambda!186768))))

(declare-fun bs!1013015 () Bool)

(assert (= bs!1013015 (and b!4601904 d!1449194)))

(assert (=> bs!1013015 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) lt!1760710) (= lambda!186793 lambda!186771))))

(declare-fun bs!1013016 () Bool)

(assert (= bs!1013016 (and b!4601904 b!4601734)))

(assert (=> bs!1013016 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186793 lambda!186769))))

(declare-fun bs!1013017 () Bool)

(assert (= bs!1013017 (and b!4601904 d!1449036)))

(assert (=> bs!1013017 (not (= lambda!186793 lambda!186689))))

(assert (=> bs!1013016 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) lt!1760707) (= lambda!186793 lambda!186770))))

(declare-fun bs!1013018 () Bool)

(assert (= bs!1013018 (and b!4601904 b!4601867)))

(assert (=> bs!1013018 (= (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186793 lambda!186787))))

(declare-fun bs!1013019 () Bool)

(assert (= bs!1013019 (and b!4601904 d!1449104)))

(assert (=> bs!1013019 (not (= lambda!186793 lambda!186712))))

(declare-fun bs!1013020 () Bool)

(assert (= bs!1013020 (and b!4601904 b!4601905)))

(assert (=> bs!1013020 (= lambda!186793 lambda!186792)))

(assert (=> b!4601904 true))

(declare-fun lambda!186794 () Int)

(declare-fun lt!1760788 () ListMap!3933)

(assert (=> bs!1013012 (= (= lt!1760788 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186794 lambda!186788))))

(assert (=> bs!1013012 (= (= lt!1760788 lt!1760765) (= lambda!186794 lambda!186789))))

(assert (=> b!4601904 (= (= lt!1760788 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186794 lambda!186793))))

(assert (=> bs!1013013 (= (= lt!1760788 lt!1760768) (= lambda!186794 lambda!186790))))

(assert (=> bs!1013014 (= (= lt!1760788 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186794 lambda!186768))))

(assert (=> bs!1013015 (= (= lt!1760788 lt!1760710) (= lambda!186794 lambda!186771))))

(assert (=> bs!1013016 (= (= lt!1760788 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186794 lambda!186769))))

(assert (=> bs!1013017 (not (= lambda!186794 lambda!186689))))

(assert (=> bs!1013016 (= (= lt!1760788 lt!1760707) (= lambda!186794 lambda!186770))))

(assert (=> bs!1013018 (= (= lt!1760788 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186794 lambda!186787))))

(assert (=> bs!1013019 (not (= lambda!186794 lambda!186712))))

(assert (=> bs!1013020 (= (= lt!1760788 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186794 lambda!186792))))

(assert (=> b!4601904 true))

(declare-fun bs!1013021 () Bool)

(declare-fun d!1449314 () Bool)

(assert (= bs!1013021 (and d!1449314 b!4601866)))

(declare-fun lt!1760791 () ListMap!3933)

(declare-fun lambda!186795 () Int)

(assert (=> bs!1013021 (= (= lt!1760791 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186795 lambda!186788))))

(assert (=> bs!1013021 (= (= lt!1760791 lt!1760765) (= lambda!186795 lambda!186789))))

(declare-fun bs!1013022 () Bool)

(assert (= bs!1013022 (and d!1449314 b!4601904)))

(assert (=> bs!1013022 (= (= lt!1760791 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186795 lambda!186793))))

(declare-fun bs!1013023 () Bool)

(assert (= bs!1013023 (and d!1449314 d!1449284)))

(assert (=> bs!1013023 (= (= lt!1760791 lt!1760768) (= lambda!186795 lambda!186790))))

(assert (=> bs!1013022 (= (= lt!1760791 lt!1760788) (= lambda!186795 lambda!186794))))

(declare-fun bs!1013024 () Bool)

(assert (= bs!1013024 (and d!1449314 b!4601735)))

(assert (=> bs!1013024 (= (= lt!1760791 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186795 lambda!186768))))

(declare-fun bs!1013025 () Bool)

(assert (= bs!1013025 (and d!1449314 d!1449194)))

(assert (=> bs!1013025 (= (= lt!1760791 lt!1760710) (= lambda!186795 lambda!186771))))

(declare-fun bs!1013026 () Bool)

(assert (= bs!1013026 (and d!1449314 b!4601734)))

(assert (=> bs!1013026 (= (= lt!1760791 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186795 lambda!186769))))

(declare-fun bs!1013027 () Bool)

(assert (= bs!1013027 (and d!1449314 d!1449036)))

(assert (=> bs!1013027 (not (= lambda!186795 lambda!186689))))

(assert (=> bs!1013026 (= (= lt!1760791 lt!1760707) (= lambda!186795 lambda!186770))))

(declare-fun bs!1013028 () Bool)

(assert (= bs!1013028 (and d!1449314 b!4601867)))

(assert (=> bs!1013028 (= (= lt!1760791 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186795 lambda!186787))))

(declare-fun bs!1013029 () Bool)

(assert (= bs!1013029 (and d!1449314 d!1449104)))

(assert (=> bs!1013029 (not (= lambda!186795 lambda!186712))))

(declare-fun bs!1013030 () Bool)

(assert (= bs!1013030 (and d!1449314 b!4601905)))

(assert (=> bs!1013030 (= (= lt!1760791 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186795 lambda!186792))))

(assert (=> d!1449314 true))

(declare-fun e!2870488 () Bool)

(assert (=> d!1449314 e!2870488))

(declare-fun res!1925115 () Bool)

(assert (=> d!1449314 (=> (not res!1925115) (not e!2870488))))

(assert (=> d!1449314 (= res!1925115 (forall!10619 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))) lambda!186795))))

(declare-fun e!2870490 () ListMap!3933)

(assert (=> d!1449314 (= lt!1760791 e!2870490)))

(declare-fun c!788376 () Bool)

(assert (=> d!1449314 (= c!788376 ((_ is Nil!51104) (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105)))))))

(assert (=> d!1449314 (noDuplicateKeys!1328 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))))))

(assert (=> d!1449314 (= (addToMapMapFromBucket!820 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) lt!1760791)))

(declare-fun b!4601901 () Bool)

(declare-fun res!1925117 () Bool)

(assert (=> b!4601901 (=> (not res!1925117) (not e!2870488))))

(assert (=> b!4601901 (= res!1925117 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) lambda!186795))))

(declare-fun b!4601902 () Bool)

(assert (=> b!4601902 (= e!2870488 (invariantList!1130 (toList!4672 lt!1760791)))))

(declare-fun b!4601903 () Bool)

(declare-fun e!2870489 () Bool)

(assert (=> b!4601903 (= e!2870489 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) lambda!186794))))

(declare-fun call!321167 () Bool)

(declare-fun lt!1760797 () ListMap!3933)

(declare-fun bm!321160 () Bool)

(assert (=> bm!321160 (= call!321167 (forall!10619 (ite c!788376 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (toList!4672 lt!1760797)) (ite c!788376 lambda!186792 lambda!186794)))))

(declare-fun bm!321161 () Bool)

(declare-fun call!321165 () Unit!108559)

(assert (=> bm!321161 (= call!321165 (lemmaContainsAllItsOwnKeys!439 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))))))

(assert (=> b!4601904 (= e!2870490 lt!1760788)))

(assert (=> b!4601904 (= lt!1760797 (+!1759 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) (h!57074 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))))))))

(assert (=> b!4601904 (= lt!1760788 (addToMapMapFromBucket!820 (t!358222 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105)))) (+!1759 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) (h!57074 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105)))))))))

(declare-fun lt!1760799 () Unit!108559)

(assert (=> b!4601904 (= lt!1760799 call!321165)))

(assert (=> b!4601904 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) lambda!186793)))

(declare-fun lt!1760795 () Unit!108559)

(assert (=> b!4601904 (= lt!1760795 lt!1760799)))

(assert (=> b!4601904 (forall!10619 (toList!4672 lt!1760797) lambda!186794)))

(declare-fun lt!1760801 () Unit!108559)

(declare-fun Unit!108639 () Unit!108559)

(assert (=> b!4601904 (= lt!1760801 Unit!108639)))

(declare-fun call!321166 () Bool)

(assert (=> b!4601904 call!321166))

(declare-fun lt!1760792 () Unit!108559)

(declare-fun Unit!108640 () Unit!108559)

(assert (=> b!4601904 (= lt!1760792 Unit!108640)))

(declare-fun lt!1760789 () Unit!108559)

(declare-fun Unit!108641 () Unit!108559)

(assert (=> b!4601904 (= lt!1760789 Unit!108641)))

(declare-fun lt!1760800 () Unit!108559)

(assert (=> b!4601904 (= lt!1760800 (forallContained!2871 (toList!4672 lt!1760797) lambda!186794 (h!57074 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))))))))

(assert (=> b!4601904 (contains!14065 lt!1760797 (_1!29175 (h!57074 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))))))))

(declare-fun lt!1760794 () Unit!108559)

(declare-fun Unit!108642 () Unit!108559)

(assert (=> b!4601904 (= lt!1760794 Unit!108642)))

(assert (=> b!4601904 (contains!14065 lt!1760788 (_1!29175 (h!57074 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))))))))

(declare-fun lt!1760785 () Unit!108559)

(declare-fun Unit!108643 () Unit!108559)

(assert (=> b!4601904 (= lt!1760785 Unit!108643)))

(assert (=> b!4601904 (forall!10619 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))) lambda!186794)))

(declare-fun lt!1760790 () Unit!108559)

(declare-fun Unit!108644 () Unit!108559)

(assert (=> b!4601904 (= lt!1760790 Unit!108644)))

(assert (=> b!4601904 call!321167))

(declare-fun lt!1760784 () Unit!108559)

(declare-fun Unit!108645 () Unit!108559)

(assert (=> b!4601904 (= lt!1760784 Unit!108645)))

(declare-fun lt!1760802 () Unit!108559)

(declare-fun Unit!108646 () Unit!108559)

(assert (=> b!4601904 (= lt!1760802 Unit!108646)))

(declare-fun lt!1760783 () Unit!108559)

(assert (=> b!4601904 (= lt!1760783 (addForallContainsKeyThenBeforeAdding!439 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) lt!1760788 (_1!29175 (h!57074 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))))) (_2!29175 (h!57074 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105)))))))))

(assert (=> b!4601904 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) lambda!186794)))

(declare-fun lt!1760793 () Unit!108559)

(assert (=> b!4601904 (= lt!1760793 lt!1760783)))

(assert (=> b!4601904 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) lambda!186794)))

(declare-fun lt!1760796 () Unit!108559)

(declare-fun Unit!108647 () Unit!108559)

(assert (=> b!4601904 (= lt!1760796 Unit!108647)))

(declare-fun res!1925116 () Bool)

(assert (=> b!4601904 (= res!1925116 (forall!10619 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))) lambda!186794))))

(assert (=> b!4601904 (=> (not res!1925116) (not e!2870489))))

(assert (=> b!4601904 e!2870489))

(declare-fun lt!1760782 () Unit!108559)

(declare-fun Unit!108648 () Unit!108559)

(assert (=> b!4601904 (= lt!1760782 Unit!108648)))

(assert (=> b!4601905 (= e!2870490 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))))))

(declare-fun lt!1760787 () Unit!108559)

(assert (=> b!4601905 (= lt!1760787 call!321165)))

(assert (=> b!4601905 call!321167))

(declare-fun lt!1760798 () Unit!108559)

(assert (=> b!4601905 (= lt!1760798 lt!1760787)))

(assert (=> b!4601905 call!321166))

(declare-fun lt!1760786 () Unit!108559)

(declare-fun Unit!108649 () Unit!108559)

(assert (=> b!4601905 (= lt!1760786 Unit!108649)))

(declare-fun bm!321162 () Bool)

(assert (=> bm!321162 (= call!321166 (forall!10619 (ite c!788376 (toList!4672 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (t!358222 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105))))) (ite c!788376 lambda!186792 lambda!186794)))))

(assert (= (and d!1449314 c!788376) b!4601905))

(assert (= (and d!1449314 (not c!788376)) b!4601904))

(assert (= (and b!4601904 res!1925116) b!4601903))

(assert (= (or b!4601905 b!4601904) bm!321160))

(assert (= (or b!4601905 b!4601904) bm!321162))

(assert (= (or b!4601905 b!4601904) bm!321161))

(assert (= (and d!1449314 res!1925115) b!4601901))

(assert (= (and b!4601901 res!1925117) b!4601902))

(declare-fun m!5430173 () Bool)

(assert (=> b!4601902 m!5430173))

(declare-fun m!5430175 () Bool)

(assert (=> b!4601904 m!5430175))

(declare-fun m!5430177 () Bool)

(assert (=> b!4601904 m!5430177))

(declare-fun m!5430179 () Bool)

(assert (=> b!4601904 m!5430179))

(assert (=> b!4601904 m!5429563))

(declare-fun m!5430181 () Bool)

(assert (=> b!4601904 m!5430181))

(declare-fun m!5430183 () Bool)

(assert (=> b!4601904 m!5430183))

(declare-fun m!5430185 () Bool)

(assert (=> b!4601904 m!5430185))

(declare-fun m!5430187 () Bool)

(assert (=> b!4601904 m!5430187))

(declare-fun m!5430189 () Bool)

(assert (=> b!4601904 m!5430189))

(declare-fun m!5430191 () Bool)

(assert (=> b!4601904 m!5430191))

(assert (=> b!4601904 m!5430191))

(assert (=> b!4601904 m!5429563))

(assert (=> b!4601904 m!5430183))

(declare-fun m!5430193 () Bool)

(assert (=> b!4601904 m!5430193))

(assert (=> b!4601904 m!5430179))

(declare-fun m!5430195 () Bool)

(assert (=> bm!321162 m!5430195))

(assert (=> bm!321161 m!5429563))

(declare-fun m!5430197 () Bool)

(assert (=> bm!321161 m!5430197))

(declare-fun m!5430199 () Bool)

(assert (=> b!4601901 m!5430199))

(declare-fun m!5430201 () Bool)

(assert (=> d!1449314 m!5430201))

(declare-fun m!5430203 () Bool)

(assert (=> d!1449314 m!5430203))

(assert (=> b!4601903 m!5430179))

(declare-fun m!5430205 () Bool)

(assert (=> bm!321160 m!5430205))

(assert (=> b!4601462 d!1449314))

(declare-fun bs!1013031 () Bool)

(declare-fun d!1449316 () Bool)

(assert (= bs!1013031 (and d!1449316 d!1449064)))

(declare-fun lambda!186796 () Int)

(assert (=> bs!1013031 (= lambda!186796 lambda!186698)))

(declare-fun bs!1013032 () Bool)

(assert (= bs!1013032 (and d!1449316 d!1449044)))

(assert (=> bs!1013032 (= lambda!186796 lambda!186697)))

(declare-fun bs!1013033 () Bool)

(assert (= bs!1013033 (and d!1449316 d!1449286)))

(assert (=> bs!1013033 (= lambda!186796 lambda!186791)))

(declare-fun bs!1013034 () Bool)

(assert (= bs!1013034 (and d!1449316 d!1449066)))

(assert (=> bs!1013034 (= lambda!186796 lambda!186699)))

(declare-fun bs!1013035 () Bool)

(assert (= bs!1013035 (and d!1449316 d!1449080)))

(assert (=> bs!1013035 (= lambda!186796 lambda!186711)))

(declare-fun bs!1013036 () Bool)

(assert (= bs!1013036 (and d!1449316 d!1449108)))

(assert (=> bs!1013036 (= lambda!186796 lambda!186713)))

(declare-fun bs!1013037 () Bool)

(assert (= bs!1013037 (and d!1449316 d!1448988)))

(assert (=> bs!1013037 (= lambda!186796 lambda!186677)))

(declare-fun bs!1013038 () Bool)

(assert (= bs!1013038 (and d!1449316 d!1449190)))

(assert (=> bs!1013038 (= lambda!186796 lambda!186739)))

(declare-fun bs!1013039 () Bool)

(assert (= bs!1013039 (and d!1449316 d!1449214)))

(assert (=> bs!1013039 (= lambda!186796 lambda!186772)))

(declare-fun bs!1013040 () Bool)

(assert (= bs!1013040 (and d!1449316 d!1449114)))

(assert (=> bs!1013040 (= lambda!186796 lambda!186714)))

(declare-fun bs!1013041 () Bool)

(assert (= bs!1013041 (and d!1449316 d!1449116)))

(assert (=> bs!1013041 (= lambda!186796 lambda!186715)))

(declare-fun bs!1013042 () Bool)

(assert (= bs!1013042 (and d!1449316 d!1449032)))

(assert (=> bs!1013042 (= lambda!186796 lambda!186686)))

(declare-fun bs!1013043 () Bool)

(assert (= bs!1013043 (and d!1449316 start!459328)))

(assert (=> bs!1013043 (= lambda!186796 lambda!186668)))

(declare-fun bs!1013044 () Bool)

(assert (= bs!1013044 (and d!1449316 d!1448970)))

(assert (=> bs!1013044 (not (= lambda!186796 lambda!186671))))

(declare-fun bs!1013045 () Bool)

(assert (= bs!1013045 (and d!1449316 d!1449118)))

(assert (=> bs!1013045 (= lambda!186796 lambda!186718)))

(declare-fun lt!1760803 () ListMap!3933)

(assert (=> d!1449316 (invariantList!1130 (toList!4672 lt!1760803))))

(declare-fun e!2870491 () ListMap!3933)

(assert (=> d!1449316 (= lt!1760803 e!2870491)))

(declare-fun c!788377 () Bool)

(assert (=> d!1449316 (= c!788377 ((_ is Cons!51105) (t!358223 (Cons!51105 lt!1760293 Nil!51105))))))

(assert (=> d!1449316 (forall!10618 (t!358223 (Cons!51105 lt!1760293 Nil!51105)) lambda!186796)))

(assert (=> d!1449316 (= (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105))) lt!1760803)))

(declare-fun b!4601906 () Bool)

(assert (=> b!4601906 (= e!2870491 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (extractMap!1388 (t!358223 (t!358223 (Cons!51105 lt!1760293 Nil!51105))))))))

(declare-fun b!4601907 () Bool)

(assert (=> b!4601907 (= e!2870491 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449316 c!788377) b!4601906))

(assert (= (and d!1449316 (not c!788377)) b!4601907))

(declare-fun m!5430207 () Bool)

(assert (=> d!1449316 m!5430207))

(declare-fun m!5430209 () Bool)

(assert (=> d!1449316 m!5430209))

(declare-fun m!5430211 () Bool)

(assert (=> b!4601906 m!5430211))

(assert (=> b!4601906 m!5430211))

(declare-fun m!5430213 () Bool)

(assert (=> b!4601906 m!5430213))

(assert (=> b!4601462 d!1449316))

(declare-fun d!1449318 () Bool)

(declare-fun res!1925122 () Bool)

(declare-fun e!2870496 () Bool)

(assert (=> d!1449318 (=> res!1925122 e!2870496)))

(assert (=> d!1449318 (= res!1925122 (and ((_ is Cons!51105) (toList!4671 lm!1477)) (= (_1!29176 (h!57075 (toList!4671 lm!1477))) lt!1760301)))))

(assert (=> d!1449318 (= (containsKey!2179 (toList!4671 lm!1477) lt!1760301) e!2870496)))

(declare-fun b!4601912 () Bool)

(declare-fun e!2870497 () Bool)

(assert (=> b!4601912 (= e!2870496 e!2870497)))

(declare-fun res!1925123 () Bool)

(assert (=> b!4601912 (=> (not res!1925123) (not e!2870497))))

(assert (=> b!4601912 (= res!1925123 (and (or (not ((_ is Cons!51105) (toList!4671 lm!1477))) (bvsle (_1!29176 (h!57075 (toList!4671 lm!1477))) lt!1760301)) ((_ is Cons!51105) (toList!4671 lm!1477)) (bvslt (_1!29176 (h!57075 (toList!4671 lm!1477))) lt!1760301)))))

(declare-fun b!4601913 () Bool)

(assert (=> b!4601913 (= e!2870497 (containsKey!2179 (t!358223 (toList!4671 lm!1477)) lt!1760301))))

(assert (= (and d!1449318 (not res!1925122)) b!4601912))

(assert (= (and b!4601912 res!1925123) b!4601913))

(declare-fun m!5430215 () Bool)

(assert (=> b!4601913 m!5430215))

(assert (=> d!1448994 d!1449318))

(assert (=> b!4601455 d!1449132))

(declare-fun bs!1013046 () Bool)

(declare-fun b!4601918 () Bool)

(assert (= bs!1013046 (and b!4601918 b!4601866)))

(declare-fun lambda!186797 () Int)

(assert (=> bs!1013046 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186797 lambda!186788))))

(assert (=> bs!1013046 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760765) (= lambda!186797 lambda!186789))))

(declare-fun bs!1013047 () Bool)

(assert (= bs!1013047 (and b!4601918 b!4601904)))

(assert (=> bs!1013047 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186797 lambda!186793))))

(declare-fun bs!1013048 () Bool)

(assert (= bs!1013048 (and b!4601918 d!1449284)))

(assert (=> bs!1013048 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760768) (= lambda!186797 lambda!186790))))

(assert (=> bs!1013047 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760788) (= lambda!186797 lambda!186794))))

(declare-fun bs!1013049 () Bool)

(assert (= bs!1013049 (and b!4601918 d!1449314)))

(assert (=> bs!1013049 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760791) (= lambda!186797 lambda!186795))))

(declare-fun bs!1013050 () Bool)

(assert (= bs!1013050 (and b!4601918 b!4601735)))

(assert (=> bs!1013050 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186797 lambda!186768))))

(declare-fun bs!1013051 () Bool)

(assert (= bs!1013051 (and b!4601918 d!1449194)))

(assert (=> bs!1013051 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760710) (= lambda!186797 lambda!186771))))

(declare-fun bs!1013052 () Bool)

(assert (= bs!1013052 (and b!4601918 b!4601734)))

(assert (=> bs!1013052 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186797 lambda!186769))))

(declare-fun bs!1013053 () Bool)

(assert (= bs!1013053 (and b!4601918 d!1449036)))

(assert (=> bs!1013053 (not (= lambda!186797 lambda!186689))))

(assert (=> bs!1013052 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760707) (= lambda!186797 lambda!186770))))

(declare-fun bs!1013054 () Bool)

(assert (= bs!1013054 (and b!4601918 b!4601867)))

(assert (=> bs!1013054 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186797 lambda!186787))))

(declare-fun bs!1013055 () Bool)

(assert (= bs!1013055 (and b!4601918 d!1449104)))

(assert (=> bs!1013055 (not (= lambda!186797 lambda!186712))))

(declare-fun bs!1013056 () Bool)

(assert (= bs!1013056 (and b!4601918 b!4601905)))

(assert (=> bs!1013056 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186797 lambda!186792))))

(assert (=> b!4601918 true))

(declare-fun bs!1013057 () Bool)

(declare-fun b!4601917 () Bool)

(assert (= bs!1013057 (and b!4601917 b!4601866)))

(declare-fun lambda!186798 () Int)

(assert (=> bs!1013057 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186798 lambda!186788))))

(assert (=> bs!1013057 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760765) (= lambda!186798 lambda!186789))))

(declare-fun bs!1013058 () Bool)

(assert (= bs!1013058 (and b!4601917 b!4601904)))

(assert (=> bs!1013058 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186798 lambda!186793))))

(declare-fun bs!1013059 () Bool)

(assert (= bs!1013059 (and b!4601917 d!1449284)))

(assert (=> bs!1013059 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760768) (= lambda!186798 lambda!186790))))

(assert (=> bs!1013058 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760788) (= lambda!186798 lambda!186794))))

(declare-fun bs!1013060 () Bool)

(assert (= bs!1013060 (and b!4601917 d!1449314)))

(assert (=> bs!1013060 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760791) (= lambda!186798 lambda!186795))))

(declare-fun bs!1013061 () Bool)

(assert (= bs!1013061 (and b!4601917 b!4601735)))

(assert (=> bs!1013061 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186798 lambda!186768))))

(declare-fun bs!1013062 () Bool)

(assert (= bs!1013062 (and b!4601917 d!1449194)))

(assert (=> bs!1013062 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760710) (= lambda!186798 lambda!186771))))

(declare-fun bs!1013063 () Bool)

(assert (= bs!1013063 (and b!4601917 b!4601734)))

(assert (=> bs!1013063 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186798 lambda!186769))))

(declare-fun bs!1013064 () Bool)

(assert (= bs!1013064 (and b!4601917 d!1449036)))

(assert (=> bs!1013064 (not (= lambda!186798 lambda!186689))))

(assert (=> bs!1013063 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760707) (= lambda!186798 lambda!186770))))

(declare-fun bs!1013065 () Bool)

(assert (= bs!1013065 (and b!4601917 b!4601867)))

(assert (=> bs!1013065 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186798 lambda!186787))))

(declare-fun bs!1013066 () Bool)

(assert (= bs!1013066 (and b!4601917 b!4601918)))

(assert (=> bs!1013066 (= lambda!186798 lambda!186797)))

(declare-fun bs!1013067 () Bool)

(assert (= bs!1013067 (and b!4601917 d!1449104)))

(assert (=> bs!1013067 (not (= lambda!186798 lambda!186712))))

(declare-fun bs!1013068 () Bool)

(assert (= bs!1013068 (and b!4601917 b!4601905)))

(assert (=> bs!1013068 (= (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186798 lambda!186792))))

(assert (=> b!4601917 true))

(declare-fun lambda!186799 () Int)

(declare-fun lt!1760810 () ListMap!3933)

(assert (=> b!4601917 (= (= lt!1760810 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186799 lambda!186798))))

(assert (=> bs!1013057 (= (= lt!1760810 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186799 lambda!186788))))

(assert (=> bs!1013057 (= (= lt!1760810 lt!1760765) (= lambda!186799 lambda!186789))))

(assert (=> bs!1013058 (= (= lt!1760810 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186799 lambda!186793))))

(assert (=> bs!1013059 (= (= lt!1760810 lt!1760768) (= lambda!186799 lambda!186790))))

(assert (=> bs!1013058 (= (= lt!1760810 lt!1760788) (= lambda!186799 lambda!186794))))

(assert (=> bs!1013060 (= (= lt!1760810 lt!1760791) (= lambda!186799 lambda!186795))))

(assert (=> bs!1013061 (= (= lt!1760810 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186799 lambda!186768))))

(assert (=> bs!1013062 (= (= lt!1760810 lt!1760710) (= lambda!186799 lambda!186771))))

(assert (=> bs!1013063 (= (= lt!1760810 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186799 lambda!186769))))

(assert (=> bs!1013064 (not (= lambda!186799 lambda!186689))))

(assert (=> bs!1013063 (= (= lt!1760810 lt!1760707) (= lambda!186799 lambda!186770))))

(assert (=> bs!1013065 (= (= lt!1760810 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186799 lambda!186787))))

(assert (=> bs!1013066 (= (= lt!1760810 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186799 lambda!186797))))

(assert (=> bs!1013067 (not (= lambda!186799 lambda!186712))))

(assert (=> bs!1013068 (= (= lt!1760810 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186799 lambda!186792))))

(assert (=> b!4601917 true))

(declare-fun bs!1013069 () Bool)

(declare-fun d!1449320 () Bool)

(assert (= bs!1013069 (and d!1449320 b!4601917)))

(declare-fun lambda!186800 () Int)

(declare-fun lt!1760813 () ListMap!3933)

(assert (=> bs!1013069 (= (= lt!1760813 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186800 lambda!186798))))

(declare-fun bs!1013070 () Bool)

(assert (= bs!1013070 (and d!1449320 b!4601866)))

(assert (=> bs!1013070 (= (= lt!1760813 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186800 lambda!186788))))

(assert (=> bs!1013070 (= (= lt!1760813 lt!1760765) (= lambda!186800 lambda!186789))))

(declare-fun bs!1013071 () Bool)

(assert (= bs!1013071 (and d!1449320 b!4601904)))

(assert (=> bs!1013071 (= (= lt!1760813 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186800 lambda!186793))))

(declare-fun bs!1013072 () Bool)

(assert (= bs!1013072 (and d!1449320 d!1449284)))

(assert (=> bs!1013072 (= (= lt!1760813 lt!1760768) (= lambda!186800 lambda!186790))))

(assert (=> bs!1013069 (= (= lt!1760813 lt!1760810) (= lambda!186800 lambda!186799))))

(assert (=> bs!1013071 (= (= lt!1760813 lt!1760788) (= lambda!186800 lambda!186794))))

(declare-fun bs!1013073 () Bool)

(assert (= bs!1013073 (and d!1449320 d!1449314)))

(assert (=> bs!1013073 (= (= lt!1760813 lt!1760791) (= lambda!186800 lambda!186795))))

(declare-fun bs!1013074 () Bool)

(assert (= bs!1013074 (and d!1449320 b!4601735)))

(assert (=> bs!1013074 (= (= lt!1760813 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186800 lambda!186768))))

(declare-fun bs!1013075 () Bool)

(assert (= bs!1013075 (and d!1449320 d!1449194)))

(assert (=> bs!1013075 (= (= lt!1760813 lt!1760710) (= lambda!186800 lambda!186771))))

(declare-fun bs!1013076 () Bool)

(assert (= bs!1013076 (and d!1449320 b!4601734)))

(assert (=> bs!1013076 (= (= lt!1760813 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186800 lambda!186769))))

(declare-fun bs!1013077 () Bool)

(assert (= bs!1013077 (and d!1449320 d!1449036)))

(assert (=> bs!1013077 (not (= lambda!186800 lambda!186689))))

(assert (=> bs!1013076 (= (= lt!1760813 lt!1760707) (= lambda!186800 lambda!186770))))

(declare-fun bs!1013078 () Bool)

(assert (= bs!1013078 (and d!1449320 b!4601867)))

(assert (=> bs!1013078 (= (= lt!1760813 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186800 lambda!186787))))

(declare-fun bs!1013079 () Bool)

(assert (= bs!1013079 (and d!1449320 b!4601918)))

(assert (=> bs!1013079 (= (= lt!1760813 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186800 lambda!186797))))

(declare-fun bs!1013080 () Bool)

(assert (= bs!1013080 (and d!1449320 d!1449104)))

(assert (=> bs!1013080 (not (= lambda!186800 lambda!186712))))

(declare-fun bs!1013081 () Bool)

(assert (= bs!1013081 (and d!1449320 b!4601905)))

(assert (=> bs!1013081 (= (= lt!1760813 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186800 lambda!186792))))

(assert (=> d!1449320 true))

(declare-fun e!2870498 () Bool)

(assert (=> d!1449320 e!2870498))

(declare-fun res!1925124 () Bool)

(assert (=> d!1449320 (=> (not res!1925124) (not e!2870498))))

(assert (=> d!1449320 (= res!1925124 (forall!10619 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))) lambda!186800))))

(declare-fun e!2870500 () ListMap!3933)

(assert (=> d!1449320 (= lt!1760813 e!2870500)))

(declare-fun c!788378 () Bool)

(assert (=> d!1449320 (= c!788378 ((_ is Nil!51104) (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477))))))))

(assert (=> d!1449320 (noDuplicateKeys!1328 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))))))

(assert (=> d!1449320 (= (addToMapMapFromBucket!820 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))) (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) lt!1760813)))

(declare-fun b!4601914 () Bool)

(declare-fun res!1925126 () Bool)

(assert (=> b!4601914 (=> (not res!1925126) (not e!2870498))))

(assert (=> b!4601914 (= res!1925126 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) lambda!186800))))

(declare-fun b!4601915 () Bool)

(assert (=> b!4601915 (= e!2870498 (invariantList!1130 (toList!4672 lt!1760813)))))

(declare-fun b!4601916 () Bool)

(declare-fun e!2870499 () Bool)

(assert (=> b!4601916 (= e!2870499 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) lambda!186799))))

(declare-fun bm!321163 () Bool)

(declare-fun call!321170 () Bool)

(declare-fun lt!1760819 () ListMap!3933)

(assert (=> bm!321163 (= call!321170 (forall!10619 (ite c!788378 (toList!4672 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (toList!4672 lt!1760819)) (ite c!788378 lambda!186797 lambda!186799)))))

(declare-fun bm!321164 () Bool)

(declare-fun call!321168 () Unit!108559)

(assert (=> bm!321164 (= call!321168 (lemmaContainsAllItsOwnKeys!439 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))))))

(assert (=> b!4601917 (= e!2870500 lt!1760810)))

(assert (=> b!4601917 (= lt!1760819 (+!1759 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (h!57074 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))))))))

(assert (=> b!4601917 (= lt!1760810 (addToMapMapFromBucket!820 (t!358222 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477))))) (+!1759 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) (h!57074 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477))))))))))

(declare-fun lt!1760821 () Unit!108559)

(assert (=> b!4601917 (= lt!1760821 call!321168)))

(assert (=> b!4601917 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) lambda!186798)))

(declare-fun lt!1760817 () Unit!108559)

(assert (=> b!4601917 (= lt!1760817 lt!1760821)))

(assert (=> b!4601917 (forall!10619 (toList!4672 lt!1760819) lambda!186799)))

(declare-fun lt!1760823 () Unit!108559)

(declare-fun Unit!108661 () Unit!108559)

(assert (=> b!4601917 (= lt!1760823 Unit!108661)))

(declare-fun call!321169 () Bool)

(assert (=> b!4601917 call!321169))

(declare-fun lt!1760814 () Unit!108559)

(declare-fun Unit!108662 () Unit!108559)

(assert (=> b!4601917 (= lt!1760814 Unit!108662)))

(declare-fun lt!1760811 () Unit!108559)

(declare-fun Unit!108663 () Unit!108559)

(assert (=> b!4601917 (= lt!1760811 Unit!108663)))

(declare-fun lt!1760822 () Unit!108559)

(assert (=> b!4601917 (= lt!1760822 (forallContained!2871 (toList!4672 lt!1760819) lambda!186799 (h!57074 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))))))))

(assert (=> b!4601917 (contains!14065 lt!1760819 (_1!29175 (h!57074 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))))))))

(declare-fun lt!1760816 () Unit!108559)

(declare-fun Unit!108664 () Unit!108559)

(assert (=> b!4601917 (= lt!1760816 Unit!108664)))

(assert (=> b!4601917 (contains!14065 lt!1760810 (_1!29175 (h!57074 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))))))))

(declare-fun lt!1760807 () Unit!108559)

(declare-fun Unit!108665 () Unit!108559)

(assert (=> b!4601917 (= lt!1760807 Unit!108665)))

(assert (=> b!4601917 (forall!10619 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))) lambda!186799)))

(declare-fun lt!1760812 () Unit!108559)

(declare-fun Unit!108666 () Unit!108559)

(assert (=> b!4601917 (= lt!1760812 Unit!108666)))

(assert (=> b!4601917 call!321170))

(declare-fun lt!1760806 () Unit!108559)

(declare-fun Unit!108667 () Unit!108559)

(assert (=> b!4601917 (= lt!1760806 Unit!108667)))

(declare-fun lt!1760824 () Unit!108559)

(declare-fun Unit!108668 () Unit!108559)

(assert (=> b!4601917 (= lt!1760824 Unit!108668)))

(declare-fun lt!1760805 () Unit!108559)

(assert (=> b!4601917 (= lt!1760805 (addForallContainsKeyThenBeforeAdding!439 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760810 (_1!29175 (h!57074 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))))) (_2!29175 (h!57074 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477))))))))))

(assert (=> b!4601917 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) lambda!186799)))

(declare-fun lt!1760815 () Unit!108559)

(assert (=> b!4601917 (= lt!1760815 lt!1760805)))

(assert (=> b!4601917 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) lambda!186799)))

(declare-fun lt!1760818 () Unit!108559)

(declare-fun Unit!108669 () Unit!108559)

(assert (=> b!4601917 (= lt!1760818 Unit!108669)))

(declare-fun res!1925125 () Bool)

(assert (=> b!4601917 (= res!1925125 (forall!10619 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))) lambda!186799))))

(assert (=> b!4601917 (=> (not res!1925125) (not e!2870499))))

(assert (=> b!4601917 e!2870499))

(declare-fun lt!1760804 () Unit!108559)

(declare-fun Unit!108670 () Unit!108559)

(assert (=> b!4601917 (= lt!1760804 Unit!108670)))

(assert (=> b!4601918 (= e!2870500 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))))))

(declare-fun lt!1760809 () Unit!108559)

(assert (=> b!4601918 (= lt!1760809 call!321168)))

(assert (=> b!4601918 call!321170))

(declare-fun lt!1760820 () Unit!108559)

(assert (=> b!4601918 (= lt!1760820 lt!1760809)))

(assert (=> b!4601918 call!321169))

(declare-fun lt!1760808 () Unit!108559)

(declare-fun Unit!108671 () Unit!108559)

(assert (=> b!4601918 (= lt!1760808 Unit!108671)))

(declare-fun bm!321165 () Bool)

(assert (=> bm!321165 (= call!321169 (forall!10619 (ite c!788378 (toList!4672 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (t!358222 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477)))))) (ite c!788378 lambda!186797 lambda!186799)))))

(assert (= (and d!1449320 c!788378) b!4601918))

(assert (= (and d!1449320 (not c!788378)) b!4601917))

(assert (= (and b!4601917 res!1925125) b!4601916))

(assert (= (or b!4601918 b!4601917) bm!321163))

(assert (= (or b!4601918 b!4601917) bm!321165))

(assert (= (or b!4601918 b!4601917) bm!321164))

(assert (= (and d!1449320 res!1925124) b!4601914))

(assert (= (and b!4601914 res!1925126) b!4601915))

(declare-fun m!5430217 () Bool)

(assert (=> b!4601915 m!5430217))

(declare-fun m!5430219 () Bool)

(assert (=> b!4601917 m!5430219))

(declare-fun m!5430221 () Bool)

(assert (=> b!4601917 m!5430221))

(declare-fun m!5430223 () Bool)

(assert (=> b!4601917 m!5430223))

(assert (=> b!4601917 m!5429417))

(declare-fun m!5430225 () Bool)

(assert (=> b!4601917 m!5430225))

(declare-fun m!5430227 () Bool)

(assert (=> b!4601917 m!5430227))

(declare-fun m!5430229 () Bool)

(assert (=> b!4601917 m!5430229))

(declare-fun m!5430231 () Bool)

(assert (=> b!4601917 m!5430231))

(declare-fun m!5430233 () Bool)

(assert (=> b!4601917 m!5430233))

(declare-fun m!5430235 () Bool)

(assert (=> b!4601917 m!5430235))

(assert (=> b!4601917 m!5430235))

(assert (=> b!4601917 m!5429417))

(assert (=> b!4601917 m!5430227))

(declare-fun m!5430237 () Bool)

(assert (=> b!4601917 m!5430237))

(assert (=> b!4601917 m!5430223))

(declare-fun m!5430239 () Bool)

(assert (=> bm!321165 m!5430239))

(assert (=> bm!321164 m!5429417))

(declare-fun m!5430241 () Bool)

(assert (=> bm!321164 m!5430241))

(declare-fun m!5430243 () Bool)

(assert (=> b!4601914 m!5430243))

(declare-fun m!5430245 () Bool)

(assert (=> d!1449320 m!5430245))

(declare-fun m!5430247 () Bool)

(assert (=> d!1449320 m!5430247))

(assert (=> b!4601916 m!5430223))

(declare-fun m!5430249 () Bool)

(assert (=> bm!321163 m!5430249))

(assert (=> b!4601374 d!1449320))

(declare-fun bs!1013082 () Bool)

(declare-fun d!1449322 () Bool)

(assert (= bs!1013082 (and d!1449322 d!1449064)))

(declare-fun lambda!186801 () Int)

(assert (=> bs!1013082 (= lambda!186801 lambda!186698)))

(declare-fun bs!1013083 () Bool)

(assert (= bs!1013083 (and d!1449322 d!1449044)))

(assert (=> bs!1013083 (= lambda!186801 lambda!186697)))

(declare-fun bs!1013084 () Bool)

(assert (= bs!1013084 (and d!1449322 d!1449286)))

(assert (=> bs!1013084 (= lambda!186801 lambda!186791)))

(declare-fun bs!1013085 () Bool)

(assert (= bs!1013085 (and d!1449322 d!1449066)))

(assert (=> bs!1013085 (= lambda!186801 lambda!186699)))

(declare-fun bs!1013086 () Bool)

(assert (= bs!1013086 (and d!1449322 d!1449080)))

(assert (=> bs!1013086 (= lambda!186801 lambda!186711)))

(declare-fun bs!1013087 () Bool)

(assert (= bs!1013087 (and d!1449322 d!1449108)))

(assert (=> bs!1013087 (= lambda!186801 lambda!186713)))

(declare-fun bs!1013088 () Bool)

(assert (= bs!1013088 (and d!1449322 d!1448988)))

(assert (=> bs!1013088 (= lambda!186801 lambda!186677)))

(declare-fun bs!1013089 () Bool)

(assert (= bs!1013089 (and d!1449322 d!1449190)))

(assert (=> bs!1013089 (= lambda!186801 lambda!186739)))

(declare-fun bs!1013090 () Bool)

(assert (= bs!1013090 (and d!1449322 d!1449214)))

(assert (=> bs!1013090 (= lambda!186801 lambda!186772)))

(declare-fun bs!1013091 () Bool)

(assert (= bs!1013091 (and d!1449322 d!1449116)))

(assert (=> bs!1013091 (= lambda!186801 lambda!186715)))

(declare-fun bs!1013092 () Bool)

(assert (= bs!1013092 (and d!1449322 d!1449032)))

(assert (=> bs!1013092 (= lambda!186801 lambda!186686)))

(declare-fun bs!1013093 () Bool)

(assert (= bs!1013093 (and d!1449322 start!459328)))

(assert (=> bs!1013093 (= lambda!186801 lambda!186668)))

(declare-fun bs!1013094 () Bool)

(assert (= bs!1013094 (and d!1449322 d!1448970)))

(assert (=> bs!1013094 (not (= lambda!186801 lambda!186671))))

(declare-fun bs!1013095 () Bool)

(assert (= bs!1013095 (and d!1449322 d!1449118)))

(assert (=> bs!1013095 (= lambda!186801 lambda!186718)))

(declare-fun bs!1013096 () Bool)

(assert (= bs!1013096 (and d!1449322 d!1449316)))

(assert (=> bs!1013096 (= lambda!186801 lambda!186796)))

(declare-fun bs!1013097 () Bool)

(assert (= bs!1013097 (and d!1449322 d!1449114)))

(assert (=> bs!1013097 (= lambda!186801 lambda!186714)))

(declare-fun lt!1760825 () ListMap!3933)

(assert (=> d!1449322 (invariantList!1130 (toList!4672 lt!1760825))))

(declare-fun e!2870501 () ListMap!3933)

(assert (=> d!1449322 (= lt!1760825 e!2870501)))

(declare-fun c!788379 () Bool)

(assert (=> d!1449322 (= c!788379 ((_ is Cons!51105) (t!358223 (t!358223 (toList!4671 lm!1477)))))))

(assert (=> d!1449322 (forall!10618 (t!358223 (t!358223 (toList!4671 lm!1477))) lambda!186801)))

(assert (=> d!1449322 (= (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477)))) lt!1760825)))

(declare-fun b!4601919 () Bool)

(assert (=> b!4601919 (= e!2870501 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (t!358223 (t!358223 (toList!4671 lm!1477))))) (extractMap!1388 (t!358223 (t!358223 (t!358223 (toList!4671 lm!1477)))))))))

(declare-fun b!4601920 () Bool)

(assert (=> b!4601920 (= e!2870501 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449322 c!788379) b!4601919))

(assert (= (and d!1449322 (not c!788379)) b!4601920))

(declare-fun m!5430251 () Bool)

(assert (=> d!1449322 m!5430251))

(declare-fun m!5430253 () Bool)

(assert (=> d!1449322 m!5430253))

(declare-fun m!5430255 () Bool)

(assert (=> b!4601919 m!5430255))

(assert (=> b!4601919 m!5430255))

(declare-fun m!5430257 () Bool)

(assert (=> b!4601919 m!5430257))

(assert (=> b!4601374 d!1449322))

(declare-fun d!1449324 () Bool)

(declare-fun lt!1760826 () Bool)

(assert (=> d!1449324 (= lt!1760826 (select (content!8660 (toList!4671 lt!1760524)) lt!1760293))))

(declare-fun e!2870502 () Bool)

(assert (=> d!1449324 (= lt!1760826 e!2870502)))

(declare-fun res!1925127 () Bool)

(assert (=> d!1449324 (=> (not res!1925127) (not e!2870502))))

(assert (=> d!1449324 (= res!1925127 ((_ is Cons!51105) (toList!4671 lt!1760524)))))

(assert (=> d!1449324 (= (contains!14067 (toList!4671 lt!1760524) lt!1760293) lt!1760826)))

(declare-fun b!4601921 () Bool)

(declare-fun e!2870503 () Bool)

(assert (=> b!4601921 (= e!2870502 e!2870503)))

(declare-fun res!1925128 () Bool)

(assert (=> b!4601921 (=> res!1925128 e!2870503)))

(assert (=> b!4601921 (= res!1925128 (= (h!57075 (toList!4671 lt!1760524)) lt!1760293))))

(declare-fun b!4601922 () Bool)

(assert (=> b!4601922 (= e!2870503 (contains!14067 (t!358223 (toList!4671 lt!1760524)) lt!1760293))))

(assert (= (and d!1449324 res!1925127) b!4601921))

(assert (= (and b!4601921 (not res!1925128)) b!4601922))

(declare-fun m!5430259 () Bool)

(assert (=> d!1449324 m!5430259))

(declare-fun m!5430261 () Bool)

(assert (=> d!1449324 m!5430261))

(declare-fun m!5430263 () Bool)

(assert (=> b!4601922 m!5430263))

(assert (=> b!4601468 d!1449324))

(declare-fun d!1449326 () Bool)

(assert (=> d!1449326 (= (invariantList!1130 (toList!4672 lt!1760514)) (noDuplicatedKeys!329 (toList!4672 lt!1760514)))))

(declare-fun bs!1013098 () Bool)

(assert (= bs!1013098 d!1449326))

(declare-fun m!5430265 () Bool)

(assert (=> bs!1013098 m!5430265))

(assert (=> d!1449116 d!1449326))

(declare-fun d!1449328 () Bool)

(declare-fun res!1925129 () Bool)

(declare-fun e!2870504 () Bool)

(assert (=> d!1449328 (=> res!1925129 e!2870504)))

(assert (=> d!1449328 (= res!1925129 ((_ is Nil!51105) (Cons!51105 lt!1760293 Nil!51105)))))

(assert (=> d!1449328 (= (forall!10618 (Cons!51105 lt!1760293 Nil!51105) lambda!186715) e!2870504)))

(declare-fun b!4601923 () Bool)

(declare-fun e!2870505 () Bool)

(assert (=> b!4601923 (= e!2870504 e!2870505)))

(declare-fun res!1925130 () Bool)

(assert (=> b!4601923 (=> (not res!1925130) (not e!2870505))))

(assert (=> b!4601923 (= res!1925130 (dynLambda!21405 lambda!186715 (h!57075 (Cons!51105 lt!1760293 Nil!51105))))))

(declare-fun b!4601924 () Bool)

(assert (=> b!4601924 (= e!2870505 (forall!10618 (t!358223 (Cons!51105 lt!1760293 Nil!51105)) lambda!186715))))

(assert (= (and d!1449328 (not res!1925129)) b!4601923))

(assert (= (and b!4601923 res!1925130) b!4601924))

(declare-fun b_lambda!169615 () Bool)

(assert (=> (not b_lambda!169615) (not b!4601923)))

(declare-fun m!5430267 () Bool)

(assert (=> b!4601923 m!5430267))

(declare-fun m!5430269 () Bool)

(assert (=> b!4601924 m!5430269))

(assert (=> d!1449116 d!1449328))

(declare-fun d!1449330 () Bool)

(declare-fun c!788382 () Bool)

(assert (=> d!1449330 (= c!788382 ((_ is Nil!51107) (keys!17900 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))

(declare-fun e!2870508 () (InoxSet K!12470))

(assert (=> d!1449330 (= (content!8664 (keys!17900 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) e!2870508)))

(declare-fun b!4601929 () Bool)

(assert (=> b!4601929 (= e!2870508 ((as const (Array K!12470 Bool)) false))))

(declare-fun b!4601930 () Bool)

(assert (=> b!4601930 (= e!2870508 ((_ map or) (store ((as const (Array K!12470 Bool)) false) (h!57079 (keys!17900 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) true) (content!8664 (t!358225 (keys!17900 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))))

(assert (= (and d!1449330 c!788382) b!4601929))

(assert (= (and d!1449330 (not c!788382)) b!4601930))

(declare-fun m!5430271 () Bool)

(assert (=> b!4601930 m!5430271))

(declare-fun m!5430273 () Bool)

(assert (=> b!4601930 m!5430273))

(assert (=> b!4601466 d!1449330))

(declare-fun bs!1013099 () Bool)

(declare-fun b!4601932 () Bool)

(assert (= bs!1013099 (and b!4601932 b!4601857)))

(declare-fun lambda!186802 () Int)

(assert (=> bs!1013099 (= (= (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186802 lambda!186785))))

(declare-fun bs!1013100 () Bool)

(assert (= bs!1013100 (and b!4601932 b!4601492)))

(assert (=> bs!1013100 (= (= (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186802 lambda!186723))))

(declare-fun bs!1013101 () Bool)

(assert (= bs!1013101 (and b!4601932 b!4601619)))

(assert (=> bs!1013101 (= (= (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186802 lambda!186725))))

(declare-fun bs!1013102 () Bool)

(assert (= bs!1013102 (and b!4601932 b!4601846)))

(assert (=> bs!1013102 (= (= (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (toList!4672 lt!1760307)) (= lambda!186802 lambda!186781))))

(declare-fun bs!1013103 () Bool)

(assert (= bs!1013103 (and b!4601932 b!4601861)))

(assert (=> bs!1013103 (= (= (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (= lambda!186802 lambda!186783))))

(declare-fun bs!1013104 () Bool)

(assert (= bs!1013104 (and b!4601932 b!4601653)))

(assert (=> bs!1013104 (= (= (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (= lambda!186802 lambda!186735))))

(declare-fun bs!1013105 () Bool)

(assert (= bs!1013105 (and b!4601932 b!4601854)))

(assert (=> bs!1013105 (= (= (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))) (= lambda!186802 lambda!186784))))

(declare-fun bs!1013106 () Bool)

(assert (= bs!1013106 (and b!4601932 b!4601649)))

(assert (=> bs!1013106 (= (= (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186802 lambda!186737))))

(declare-fun bs!1013107 () Bool)

(assert (= bs!1013107 (and b!4601932 b!4601646)))

(assert (=> bs!1013107 (= (= (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308))))) (= lambda!186802 lambda!186736))))

(assert (=> b!4601932 true))

(declare-fun bs!1013108 () Bool)

(declare-fun b!4601933 () Bool)

(assert (= bs!1013108 (and b!4601933 b!4601620)))

(declare-fun lambda!186803 () Int)

(assert (=> bs!1013108 (= lambda!186803 lambda!186726)))

(declare-fun bs!1013109 () Bool)

(assert (= bs!1013109 (and b!4601933 b!4601855)))

(assert (=> bs!1013109 (= lambda!186803 lambda!186786)))

(declare-fun bs!1013110 () Bool)

(assert (= bs!1013110 (and b!4601933 b!4601647)))

(assert (=> bs!1013110 (= lambda!186803 lambda!186738)))

(declare-fun bs!1013111 () Bool)

(assert (= bs!1013111 (and b!4601933 b!4601493)))

(assert (=> bs!1013111 (= lambda!186803 lambda!186724)))

(declare-fun bs!1013112 () Bool)

(assert (= bs!1013112 (and b!4601933 b!4601847)))

(assert (=> bs!1013112 (= lambda!186803 lambda!186782)))

(declare-fun d!1449332 () Bool)

(declare-fun e!2870509 () Bool)

(assert (=> d!1449332 e!2870509))

(declare-fun res!1925131 () Bool)

(assert (=> d!1449332 (=> (not res!1925131) (not e!2870509))))

(declare-fun lt!1760827 () List!51231)

(assert (=> d!1449332 (= res!1925131 (noDuplicate!815 lt!1760827))))

(assert (=> d!1449332 (= lt!1760827 (getKeysList!579 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))

(assert (=> d!1449332 (= (keys!17900 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) lt!1760827)))

(declare-fun b!4601931 () Bool)

(declare-fun res!1925132 () Bool)

(assert (=> b!4601931 (=> (not res!1925132) (not e!2870509))))

(assert (=> b!4601931 (= res!1925132 (= (length!486 lt!1760827) (length!487 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))))))))

(declare-fun res!1925133 () Bool)

(assert (=> b!4601932 (=> (not res!1925133) (not e!2870509))))

(assert (=> b!4601932 (= res!1925133 (forall!10621 lt!1760827 lambda!186802))))

(assert (=> b!4601933 (= e!2870509 (= (content!8664 lt!1760827) (content!8664 (map!11292 (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) lambda!186803))))))

(assert (= (and d!1449332 res!1925131) b!4601931))

(assert (= (and b!4601931 res!1925132) b!4601932))

(assert (= (and b!4601932 res!1925133) b!4601933))

(declare-fun m!5430275 () Bool)

(assert (=> d!1449332 m!5430275))

(assert (=> d!1449332 m!5429665))

(declare-fun m!5430277 () Bool)

(assert (=> b!4601931 m!5430277))

(declare-fun m!5430279 () Bool)

(assert (=> b!4601931 m!5430279))

(declare-fun m!5430281 () Bool)

(assert (=> b!4601932 m!5430281))

(declare-fun m!5430283 () Bool)

(assert (=> b!4601933 m!5430283))

(declare-fun m!5430285 () Bool)

(assert (=> b!4601933 m!5430285))

(assert (=> b!4601933 m!5430285))

(declare-fun m!5430287 () Bool)

(assert (=> b!4601933 m!5430287))

(assert (=> b!4601466 d!1449332))

(declare-fun d!1449334 () Bool)

(declare-fun c!788383 () Bool)

(assert (=> d!1449334 (= c!788383 ((_ is Nil!51107) (keys!17900 lt!1760520)))))

(declare-fun e!2870510 () (InoxSet K!12470))

(assert (=> d!1449334 (= (content!8664 (keys!17900 lt!1760520)) e!2870510)))

(declare-fun b!4601934 () Bool)

(assert (=> b!4601934 (= e!2870510 ((as const (Array K!12470 Bool)) false))))

(declare-fun b!4601935 () Bool)

(assert (=> b!4601935 (= e!2870510 ((_ map or) (store ((as const (Array K!12470 Bool)) false) (h!57079 (keys!17900 lt!1760520)) true) (content!8664 (t!358225 (keys!17900 lt!1760520)))))))

(assert (= (and d!1449334 c!788383) b!4601934))

(assert (= (and d!1449334 (not c!788383)) b!4601935))

(declare-fun m!5430289 () Bool)

(assert (=> b!4601935 m!5430289))

(declare-fun m!5430291 () Bool)

(assert (=> b!4601935 m!5430291))

(assert (=> b!4601466 d!1449334))

(declare-fun bs!1013113 () Bool)

(declare-fun b!4601937 () Bool)

(assert (= bs!1013113 (and b!4601937 b!4601857)))

(declare-fun lambda!186804 () Int)

(assert (=> bs!1013113 (= (= (toList!4672 lt!1760520) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186804 lambda!186785))))

(declare-fun bs!1013114 () Bool)

(assert (= bs!1013114 (and b!4601937 b!4601932)))

(assert (=> bs!1013114 (= (= (toList!4672 lt!1760520) (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186804 lambda!186802))))

(declare-fun bs!1013115 () Bool)

(assert (= bs!1013115 (and b!4601937 b!4601492)))

(assert (=> bs!1013115 (= (= (toList!4672 lt!1760520) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186804 lambda!186723))))

(declare-fun bs!1013116 () Bool)

(assert (= bs!1013116 (and b!4601937 b!4601619)))

(assert (=> bs!1013116 (= (= (toList!4672 lt!1760520) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186804 lambda!186725))))

(declare-fun bs!1013117 () Bool)

(assert (= bs!1013117 (and b!4601937 b!4601846)))

(assert (=> bs!1013117 (= (= (toList!4672 lt!1760520) (toList!4672 lt!1760307)) (= lambda!186804 lambda!186781))))

(declare-fun bs!1013118 () Bool)

(assert (= bs!1013118 (and b!4601937 b!4601861)))

(assert (=> bs!1013118 (= (= (toList!4672 lt!1760520) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (= lambda!186804 lambda!186783))))

(declare-fun bs!1013119 () Bool)

(assert (= bs!1013119 (and b!4601937 b!4601653)))

(assert (=> bs!1013119 (= (= (toList!4672 lt!1760520) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (= lambda!186804 lambda!186735))))

(declare-fun bs!1013120 () Bool)

(assert (= bs!1013120 (and b!4601937 b!4601854)))

(assert (=> bs!1013120 (= (= (toList!4672 lt!1760520) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))) (= lambda!186804 lambda!186784))))

(declare-fun bs!1013121 () Bool)

(assert (= bs!1013121 (and b!4601937 b!4601649)))

(assert (=> bs!1013121 (= (= (toList!4672 lt!1760520) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186804 lambda!186737))))

(declare-fun bs!1013122 () Bool)

(assert (= bs!1013122 (and b!4601937 b!4601646)))

(assert (=> bs!1013122 (= (= (toList!4672 lt!1760520) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308))))) (= lambda!186804 lambda!186736))))

(assert (=> b!4601937 true))

(declare-fun bs!1013123 () Bool)

(declare-fun b!4601938 () Bool)

(assert (= bs!1013123 (and b!4601938 b!4601620)))

(declare-fun lambda!186805 () Int)

(assert (=> bs!1013123 (= lambda!186805 lambda!186726)))

(declare-fun bs!1013124 () Bool)

(assert (= bs!1013124 (and b!4601938 b!4601855)))

(assert (=> bs!1013124 (= lambda!186805 lambda!186786)))

(declare-fun bs!1013125 () Bool)

(assert (= bs!1013125 (and b!4601938 b!4601647)))

(assert (=> bs!1013125 (= lambda!186805 lambda!186738)))

(declare-fun bs!1013126 () Bool)

(assert (= bs!1013126 (and b!4601938 b!4601493)))

(assert (=> bs!1013126 (= lambda!186805 lambda!186724)))

(declare-fun bs!1013127 () Bool)

(assert (= bs!1013127 (and b!4601938 b!4601847)))

(assert (=> bs!1013127 (= lambda!186805 lambda!186782)))

(declare-fun bs!1013128 () Bool)

(assert (= bs!1013128 (and b!4601938 b!4601933)))

(assert (=> bs!1013128 (= lambda!186805 lambda!186803)))

(declare-fun d!1449336 () Bool)

(declare-fun e!2870511 () Bool)

(assert (=> d!1449336 e!2870511))

(declare-fun res!1925134 () Bool)

(assert (=> d!1449336 (=> (not res!1925134) (not e!2870511))))

(declare-fun lt!1760828 () List!51231)

(assert (=> d!1449336 (= res!1925134 (noDuplicate!815 lt!1760828))))

(assert (=> d!1449336 (= lt!1760828 (getKeysList!579 (toList!4672 lt!1760520)))))

(assert (=> d!1449336 (= (keys!17900 lt!1760520) lt!1760828)))

(declare-fun b!4601936 () Bool)

(declare-fun res!1925135 () Bool)

(assert (=> b!4601936 (=> (not res!1925135) (not e!2870511))))

(assert (=> b!4601936 (= res!1925135 (= (length!486 lt!1760828) (length!487 (toList!4672 lt!1760520))))))

(declare-fun res!1925136 () Bool)

(assert (=> b!4601937 (=> (not res!1925136) (not e!2870511))))

(assert (=> b!4601937 (= res!1925136 (forall!10621 lt!1760828 lambda!186804))))

(assert (=> b!4601938 (= e!2870511 (= (content!8664 lt!1760828) (content!8664 (map!11292 (toList!4672 lt!1760520) lambda!186805))))))

(assert (= (and d!1449336 res!1925134) b!4601936))

(assert (= (and b!4601936 res!1925135) b!4601937))

(assert (= (and b!4601937 res!1925136) b!4601938))

(declare-fun m!5430293 () Bool)

(assert (=> d!1449336 m!5430293))

(assert (=> d!1449336 m!5429645))

(declare-fun m!5430295 () Bool)

(assert (=> b!4601936 m!5430295))

(declare-fun m!5430297 () Bool)

(assert (=> b!4601936 m!5430297))

(declare-fun m!5430299 () Bool)

(assert (=> b!4601937 m!5430299))

(declare-fun m!5430301 () Bool)

(assert (=> b!4601938 m!5430301))

(declare-fun m!5430303 () Bool)

(assert (=> b!4601938 m!5430303))

(assert (=> b!4601938 m!5430303))

(declare-fun m!5430305 () Bool)

(assert (=> b!4601938 m!5430305))

(assert (=> b!4601466 d!1449336))

(assert (=> b!4601454 d!1449146))

(assert (=> b!4601454 d!1449148))

(declare-fun d!1449338 () Bool)

(assert (=> d!1449338 (= (isDefined!8670 (getValueByKey!1323 (toList!4671 lm!1477) lt!1760301)) (not (isEmpty!28872 (getValueByKey!1323 (toList!4671 lm!1477) lt!1760301))))))

(declare-fun bs!1013129 () Bool)

(assert (= bs!1013129 d!1449338))

(assert (=> bs!1013129 m!5429191))

(declare-fun m!5430307 () Bool)

(assert (=> bs!1013129 m!5430307))

(assert (=> b!4601253 d!1449338))

(declare-fun b!4601941 () Bool)

(declare-fun e!2870513 () Option!11403)

(assert (=> b!4601941 (= e!2870513 (getValueByKey!1323 (t!358223 (toList!4671 lm!1477)) lt!1760301))))

(declare-fun b!4601939 () Bool)

(declare-fun e!2870512 () Option!11403)

(assert (=> b!4601939 (= e!2870512 (Some!11402 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(declare-fun d!1449340 () Bool)

(declare-fun c!788384 () Bool)

(assert (=> d!1449340 (= c!788384 (and ((_ is Cons!51105) (toList!4671 lm!1477)) (= (_1!29176 (h!57075 (toList!4671 lm!1477))) lt!1760301)))))

(assert (=> d!1449340 (= (getValueByKey!1323 (toList!4671 lm!1477) lt!1760301) e!2870512)))

(declare-fun b!4601940 () Bool)

(assert (=> b!4601940 (= e!2870512 e!2870513)))

(declare-fun c!788385 () Bool)

(assert (=> b!4601940 (= c!788385 (and ((_ is Cons!51105) (toList!4671 lm!1477)) (not (= (_1!29176 (h!57075 (toList!4671 lm!1477))) lt!1760301))))))

(declare-fun b!4601942 () Bool)

(assert (=> b!4601942 (= e!2870513 None!11402)))

(assert (= (and d!1449340 c!788384) b!4601939))

(assert (= (and d!1449340 (not c!788384)) b!4601940))

(assert (= (and b!4601940 c!788385) b!4601941))

(assert (= (and b!4601940 (not c!788385)) b!4601942))

(declare-fun m!5430309 () Bool)

(assert (=> b!4601941 m!5430309))

(assert (=> b!4601253 d!1449340))

(declare-fun d!1449342 () Bool)

(declare-fun lt!1760829 () Bool)

(assert (=> d!1449342 (= lt!1760829 (select (content!8660 (t!358223 (toList!4671 lm!1477))) lt!1760302))))

(declare-fun e!2870514 () Bool)

(assert (=> d!1449342 (= lt!1760829 e!2870514)))

(declare-fun res!1925137 () Bool)

(assert (=> d!1449342 (=> (not res!1925137) (not e!2870514))))

(assert (=> d!1449342 (= res!1925137 ((_ is Cons!51105) (t!358223 (toList!4671 lm!1477))))))

(assert (=> d!1449342 (= (contains!14067 (t!358223 (toList!4671 lm!1477)) lt!1760302) lt!1760829)))

(declare-fun b!4601943 () Bool)

(declare-fun e!2870515 () Bool)

(assert (=> b!4601943 (= e!2870514 e!2870515)))

(declare-fun res!1925138 () Bool)

(assert (=> b!4601943 (=> res!1925138 e!2870515)))

(assert (=> b!4601943 (= res!1925138 (= (h!57075 (t!358223 (toList!4671 lm!1477))) lt!1760302))))

(declare-fun b!4601944 () Bool)

(assert (=> b!4601944 (= e!2870515 (contains!14067 (t!358223 (t!358223 (toList!4671 lm!1477))) lt!1760302))))

(assert (= (and d!1449342 res!1925137) b!4601943))

(assert (= (and b!4601943 (not res!1925138)) b!4601944))

(declare-fun m!5430311 () Bool)

(assert (=> d!1449342 m!5430311))

(declare-fun m!5430313 () Bool)

(assert (=> d!1449342 m!5430313))

(declare-fun m!5430315 () Bool)

(assert (=> b!4601944 m!5430315))

(assert (=> b!4601282 d!1449342))

(declare-fun d!1449344 () Bool)

(assert (=> d!1449344 (= (invariantList!1130 (toList!4672 lt!1760479)) (noDuplicatedKeys!329 (toList!4672 lt!1760479)))))

(declare-fun bs!1013130 () Bool)

(assert (= bs!1013130 d!1449344))

(declare-fun m!5430317 () Bool)

(assert (=> bs!1013130 m!5430317))

(assert (=> d!1449064 d!1449344))

(declare-fun d!1449346 () Bool)

(declare-fun res!1925139 () Bool)

(declare-fun e!2870516 () Bool)

(assert (=> d!1449346 (=> res!1925139 e!2870516)))

(assert (=> d!1449346 (= res!1925139 ((_ is Nil!51105) (t!358223 (toList!4671 lm!1477))))))

(assert (=> d!1449346 (= (forall!10618 (t!358223 (toList!4671 lm!1477)) lambda!186698) e!2870516)))

(declare-fun b!4601945 () Bool)

(declare-fun e!2870517 () Bool)

(assert (=> b!4601945 (= e!2870516 e!2870517)))

(declare-fun res!1925140 () Bool)

(assert (=> b!4601945 (=> (not res!1925140) (not e!2870517))))

(assert (=> b!4601945 (= res!1925140 (dynLambda!21405 lambda!186698 (h!57075 (t!358223 (toList!4671 lm!1477)))))))

(declare-fun b!4601946 () Bool)

(assert (=> b!4601946 (= e!2870517 (forall!10618 (t!358223 (t!358223 (toList!4671 lm!1477))) lambda!186698))))

(assert (= (and d!1449346 (not res!1925139)) b!4601945))

(assert (= (and b!4601945 res!1925140) b!4601946))

(declare-fun b_lambda!169617 () Bool)

(assert (=> (not b_lambda!169617) (not b!4601945)))

(declare-fun m!5430319 () Bool)

(assert (=> b!4601945 m!5430319))

(declare-fun m!5430321 () Bool)

(assert (=> b!4601946 m!5430321))

(assert (=> d!1449064 d!1449346))

(declare-fun d!1449348 () Bool)

(assert (=> d!1449348 (isDefined!8670 (getValueByKey!1323 (toList!4671 lm!1477) lt!1760301))))

(declare-fun lt!1760830 () Unit!108559)

(assert (=> d!1449348 (= lt!1760830 (choose!30873 (toList!4671 lm!1477) lt!1760301))))

(declare-fun e!2870518 () Bool)

(assert (=> d!1449348 e!2870518))

(declare-fun res!1925141 () Bool)

(assert (=> d!1449348 (=> (not res!1925141) (not e!2870518))))

(assert (=> d!1449348 (= res!1925141 (isStrictlySorted!545 (toList!4671 lm!1477)))))

(assert (=> d!1449348 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1226 (toList!4671 lm!1477) lt!1760301) lt!1760830)))

(declare-fun b!4601947 () Bool)

(assert (=> b!4601947 (= e!2870518 (containsKey!2179 (toList!4671 lm!1477) lt!1760301))))

(assert (= (and d!1449348 res!1925141) b!4601947))

(assert (=> d!1449348 m!5429191))

(assert (=> d!1449348 m!5429191))

(assert (=> d!1449348 m!5429193))

(declare-fun m!5430323 () Bool)

(assert (=> d!1449348 m!5430323))

(assert (=> d!1449348 m!5429233))

(assert (=> b!4601947 m!5429187))

(assert (=> b!4601251 d!1449348))

(assert (=> b!4601251 d!1449338))

(assert (=> b!4601251 d!1449340))

(assert (=> b!4601327 d!1449172))

(assert (=> b!4601450 d!1449130))

(assert (=> b!4601450 d!1449132))

(declare-fun b!4601950 () Bool)

(declare-fun e!2870520 () Option!11403)

(assert (=> b!4601950 (= e!2870520 (getValueByKey!1323 (t!358223 (toList!4671 lt!1760361)) (_1!29176 lt!1760293)))))

(declare-fun b!4601948 () Bool)

(declare-fun e!2870519 () Option!11403)

(assert (=> b!4601948 (= e!2870519 (Some!11402 (_2!29176 (h!57075 (toList!4671 lt!1760361)))))))

(declare-fun d!1449350 () Bool)

(declare-fun c!788386 () Bool)

(assert (=> d!1449350 (= c!788386 (and ((_ is Cons!51105) (toList!4671 lt!1760361)) (= (_1!29176 (h!57075 (toList!4671 lt!1760361))) (_1!29176 lt!1760293))))))

(assert (=> d!1449350 (= (getValueByKey!1323 (toList!4671 lt!1760361) (_1!29176 lt!1760293)) e!2870519)))

(declare-fun b!4601949 () Bool)

(assert (=> b!4601949 (= e!2870519 e!2870520)))

(declare-fun c!788387 () Bool)

(assert (=> b!4601949 (= c!788387 (and ((_ is Cons!51105) (toList!4671 lt!1760361)) (not (= (_1!29176 (h!57075 (toList!4671 lt!1760361))) (_1!29176 lt!1760293)))))))

(declare-fun b!4601951 () Bool)

(assert (=> b!4601951 (= e!2870520 None!11402)))

(assert (= (and d!1449350 c!788386) b!4601948))

(assert (= (and d!1449350 (not c!788386)) b!4601949))

(assert (= (and b!4601949 c!788387) b!4601950))

(assert (= (and b!4601949 (not c!788387)) b!4601951))

(declare-fun m!5430325 () Bool)

(assert (=> b!4601950 m!5430325))

(assert (=> b!4601216 d!1449350))

(declare-fun b!4601955 () Bool)

(declare-fun e!2870521 () List!51228)

(assert (=> b!4601955 (= e!2870521 Nil!51104)))

(declare-fun b!4601954 () Bool)

(assert (=> b!4601954 (= e!2870521 (Cons!51104 (h!57074 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))) (removePairForKey!953 (t!358222 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))) key!3287)))))

(declare-fun b!4601953 () Bool)

(declare-fun e!2870522 () List!51228)

(assert (=> b!4601953 (= e!2870522 e!2870521)))

(declare-fun c!788388 () Bool)

(assert (=> b!4601953 (= c!788388 ((_ is Cons!51104) (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(declare-fun d!1449352 () Bool)

(declare-fun lt!1760831 () List!51228)

(assert (=> d!1449352 (not (containsKey!2176 lt!1760831 key!3287))))

(assert (=> d!1449352 (= lt!1760831 e!2870522)))

(declare-fun c!788389 () Bool)

(assert (=> d!1449352 (= c!788389 (and ((_ is Cons!51104) (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))) (= (_1!29175 (h!57074 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))))) key!3287)))))

(assert (=> d!1449352 (noDuplicateKeys!1328 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(assert (=> d!1449352 (= (removePairForKey!953 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))) key!3287) lt!1760831)))

(declare-fun b!4601952 () Bool)

(assert (=> b!4601952 (= e!2870522 (t!358222 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(assert (= (and d!1449352 c!788389) b!4601952))

(assert (= (and d!1449352 (not c!788389)) b!4601953))

(assert (= (and b!4601953 c!788388) b!4601954))

(assert (= (and b!4601953 (not c!788388)) b!4601955))

(declare-fun m!5430327 () Bool)

(assert (=> b!4601954 m!5430327))

(declare-fun m!5430329 () Bool)

(assert (=> d!1449352 m!5430329))

(assert (=> d!1449352 m!5429307))

(assert (=> b!4601304 d!1449352))

(assert (=> b!4601326 d!1449248))

(assert (=> b!4601326 d!1449250))

(declare-fun bs!1013131 () Bool)

(declare-fun b!4601960 () Bool)

(assert (= bs!1013131 (and b!4601960 b!4601917)))

(declare-fun lambda!186806 () Int)

(assert (=> bs!1013131 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186806 lambda!186798))))

(declare-fun bs!1013132 () Bool)

(assert (= bs!1013132 (and b!4601960 b!4601866)))

(assert (=> bs!1013132 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186806 lambda!186788))))

(assert (=> bs!1013132 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760765) (= lambda!186806 lambda!186789))))

(declare-fun bs!1013133 () Bool)

(assert (= bs!1013133 (and b!4601960 d!1449320)))

(assert (=> bs!1013133 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760813) (= lambda!186806 lambda!186800))))

(declare-fun bs!1013134 () Bool)

(assert (= bs!1013134 (and b!4601960 b!4601904)))

(assert (=> bs!1013134 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186806 lambda!186793))))

(declare-fun bs!1013135 () Bool)

(assert (= bs!1013135 (and b!4601960 d!1449284)))

(assert (=> bs!1013135 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760768) (= lambda!186806 lambda!186790))))

(assert (=> bs!1013131 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760810) (= lambda!186806 lambda!186799))))

(assert (=> bs!1013134 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760788) (= lambda!186806 lambda!186794))))

(declare-fun bs!1013136 () Bool)

(assert (= bs!1013136 (and b!4601960 d!1449314)))

(assert (=> bs!1013136 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760791) (= lambda!186806 lambda!186795))))

(declare-fun bs!1013137 () Bool)

(assert (= bs!1013137 (and b!4601960 b!4601735)))

(assert (=> bs!1013137 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186806 lambda!186768))))

(declare-fun bs!1013138 () Bool)

(assert (= bs!1013138 (and b!4601960 d!1449194)))

(assert (=> bs!1013138 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760710) (= lambda!186806 lambda!186771))))

(declare-fun bs!1013139 () Bool)

(assert (= bs!1013139 (and b!4601960 b!4601734)))

(assert (=> bs!1013139 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186806 lambda!186769))))

(declare-fun bs!1013140 () Bool)

(assert (= bs!1013140 (and b!4601960 d!1449036)))

(assert (=> bs!1013140 (not (= lambda!186806 lambda!186689))))

(assert (=> bs!1013139 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760707) (= lambda!186806 lambda!186770))))

(declare-fun bs!1013141 () Bool)

(assert (= bs!1013141 (and b!4601960 b!4601867)))

(assert (=> bs!1013141 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186806 lambda!186787))))

(declare-fun bs!1013142 () Bool)

(assert (= bs!1013142 (and b!4601960 b!4601918)))

(assert (=> bs!1013142 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186806 lambda!186797))))

(declare-fun bs!1013143 () Bool)

(assert (= bs!1013143 (and b!4601960 d!1449104)))

(assert (=> bs!1013143 (not (= lambda!186806 lambda!186712))))

(declare-fun bs!1013144 () Bool)

(assert (= bs!1013144 (and b!4601960 b!4601905)))

(assert (=> bs!1013144 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186806 lambda!186792))))

(assert (=> b!4601960 true))

(declare-fun bs!1013145 () Bool)

(declare-fun b!4601959 () Bool)

(assert (= bs!1013145 (and b!4601959 b!4601917)))

(declare-fun lambda!186807 () Int)

(assert (=> bs!1013145 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186807 lambda!186798))))

(declare-fun bs!1013146 () Bool)

(assert (= bs!1013146 (and b!4601959 b!4601866)))

(assert (=> bs!1013146 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186807 lambda!186788))))

(assert (=> bs!1013146 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760765) (= lambda!186807 lambda!186789))))

(declare-fun bs!1013147 () Bool)

(assert (= bs!1013147 (and b!4601959 d!1449320)))

(assert (=> bs!1013147 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760813) (= lambda!186807 lambda!186800))))

(declare-fun bs!1013148 () Bool)

(assert (= bs!1013148 (and b!4601959 b!4601904)))

(assert (=> bs!1013148 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186807 lambda!186793))))

(declare-fun bs!1013149 () Bool)

(assert (= bs!1013149 (and b!4601959 d!1449284)))

(assert (=> bs!1013149 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760768) (= lambda!186807 lambda!186790))))

(assert (=> bs!1013145 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760810) (= lambda!186807 lambda!186799))))

(assert (=> bs!1013148 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760788) (= lambda!186807 lambda!186794))))

(declare-fun bs!1013150 () Bool)

(assert (= bs!1013150 (and b!4601959 b!4601735)))

(assert (=> bs!1013150 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186807 lambda!186768))))

(declare-fun bs!1013151 () Bool)

(assert (= bs!1013151 (and b!4601959 d!1449194)))

(assert (=> bs!1013151 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760710) (= lambda!186807 lambda!186771))))

(declare-fun bs!1013152 () Bool)

(assert (= bs!1013152 (and b!4601959 b!4601734)))

(assert (=> bs!1013152 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186807 lambda!186769))))

(declare-fun bs!1013153 () Bool)

(assert (= bs!1013153 (and b!4601959 d!1449036)))

(assert (=> bs!1013153 (not (= lambda!186807 lambda!186689))))

(assert (=> bs!1013152 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760707) (= lambda!186807 lambda!186770))))

(declare-fun bs!1013154 () Bool)

(assert (= bs!1013154 (and b!4601959 b!4601867)))

(assert (=> bs!1013154 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186807 lambda!186787))))

(declare-fun bs!1013155 () Bool)

(assert (= bs!1013155 (and b!4601959 b!4601918)))

(assert (=> bs!1013155 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186807 lambda!186797))))

(declare-fun bs!1013156 () Bool)

(assert (= bs!1013156 (and b!4601959 d!1449104)))

(assert (=> bs!1013156 (not (= lambda!186807 lambda!186712))))

(declare-fun bs!1013157 () Bool)

(assert (= bs!1013157 (and b!4601959 b!4601905)))

(assert (=> bs!1013157 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186807 lambda!186792))))

(declare-fun bs!1013158 () Bool)

(assert (= bs!1013158 (and b!4601959 d!1449314)))

(assert (=> bs!1013158 (= (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760791) (= lambda!186807 lambda!186795))))

(declare-fun bs!1013159 () Bool)

(assert (= bs!1013159 (and b!4601959 b!4601960)))

(assert (=> bs!1013159 (= lambda!186807 lambda!186806)))

(assert (=> b!4601959 true))

(declare-fun lambda!186808 () Int)

(declare-fun lt!1760838 () ListMap!3933)

(assert (=> bs!1013145 (= (= lt!1760838 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186808 lambda!186798))))

(assert (=> bs!1013146 (= (= lt!1760838 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186808 lambda!186788))))

(assert (=> bs!1013147 (= (= lt!1760838 lt!1760813) (= lambda!186808 lambda!186800))))

(assert (=> bs!1013148 (= (= lt!1760838 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186808 lambda!186793))))

(assert (=> bs!1013149 (= (= lt!1760838 lt!1760768) (= lambda!186808 lambda!186790))))

(assert (=> bs!1013145 (= (= lt!1760838 lt!1760810) (= lambda!186808 lambda!186799))))

(assert (=> bs!1013148 (= (= lt!1760838 lt!1760788) (= lambda!186808 lambda!186794))))

(assert (=> bs!1013150 (= (= lt!1760838 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186808 lambda!186768))))

(assert (=> bs!1013151 (= (= lt!1760838 lt!1760710) (= lambda!186808 lambda!186771))))

(assert (=> bs!1013152 (= (= lt!1760838 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186808 lambda!186769))))

(assert (=> bs!1013153 (not (= lambda!186808 lambda!186689))))

(assert (=> bs!1013146 (= (= lt!1760838 lt!1760765) (= lambda!186808 lambda!186789))))

(assert (=> b!4601959 (= (= lt!1760838 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186808 lambda!186807))))

(assert (=> bs!1013152 (= (= lt!1760838 lt!1760707) (= lambda!186808 lambda!186770))))

(assert (=> bs!1013154 (= (= lt!1760838 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186808 lambda!186787))))

(assert (=> bs!1013155 (= (= lt!1760838 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186808 lambda!186797))))

(assert (=> bs!1013156 (not (= lambda!186808 lambda!186712))))

(assert (=> bs!1013157 (= (= lt!1760838 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186808 lambda!186792))))

(assert (=> bs!1013158 (= (= lt!1760838 lt!1760791) (= lambda!186808 lambda!186795))))

(assert (=> bs!1013159 (= (= lt!1760838 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186808 lambda!186806))))

(assert (=> b!4601959 true))

(declare-fun bs!1013160 () Bool)

(declare-fun d!1449354 () Bool)

(assert (= bs!1013160 (and d!1449354 b!4601917)))

(declare-fun lt!1760841 () ListMap!3933)

(declare-fun lambda!186809 () Int)

(assert (=> bs!1013160 (= (= lt!1760841 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186809 lambda!186798))))

(declare-fun bs!1013161 () Bool)

(assert (= bs!1013161 (and d!1449354 b!4601866)))

(assert (=> bs!1013161 (= (= lt!1760841 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186809 lambda!186788))))

(declare-fun bs!1013162 () Bool)

(assert (= bs!1013162 (and d!1449354 d!1449320)))

(assert (=> bs!1013162 (= (= lt!1760841 lt!1760813) (= lambda!186809 lambda!186800))))

(declare-fun bs!1013163 () Bool)

(assert (= bs!1013163 (and d!1449354 b!4601904)))

(assert (=> bs!1013163 (= (= lt!1760841 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186809 lambda!186793))))

(declare-fun bs!1013164 () Bool)

(assert (= bs!1013164 (and d!1449354 d!1449284)))

(assert (=> bs!1013164 (= (= lt!1760841 lt!1760768) (= lambda!186809 lambda!186790))))

(assert (=> bs!1013160 (= (= lt!1760841 lt!1760810) (= lambda!186809 lambda!186799))))

(assert (=> bs!1013163 (= (= lt!1760841 lt!1760788) (= lambda!186809 lambda!186794))))

(declare-fun bs!1013165 () Bool)

(assert (= bs!1013165 (and d!1449354 b!4601959)))

(assert (=> bs!1013165 (= (= lt!1760841 lt!1760838) (= lambda!186809 lambda!186808))))

(declare-fun bs!1013166 () Bool)

(assert (= bs!1013166 (and d!1449354 b!4601735)))

(assert (=> bs!1013166 (= (= lt!1760841 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186809 lambda!186768))))

(declare-fun bs!1013167 () Bool)

(assert (= bs!1013167 (and d!1449354 d!1449194)))

(assert (=> bs!1013167 (= (= lt!1760841 lt!1760710) (= lambda!186809 lambda!186771))))

(declare-fun bs!1013168 () Bool)

(assert (= bs!1013168 (and d!1449354 b!4601734)))

(assert (=> bs!1013168 (= (= lt!1760841 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186809 lambda!186769))))

(declare-fun bs!1013169 () Bool)

(assert (= bs!1013169 (and d!1449354 d!1449036)))

(assert (=> bs!1013169 (not (= lambda!186809 lambda!186689))))

(assert (=> bs!1013161 (= (= lt!1760841 lt!1760765) (= lambda!186809 lambda!186789))))

(assert (=> bs!1013165 (= (= lt!1760841 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186809 lambda!186807))))

(assert (=> bs!1013168 (= (= lt!1760841 lt!1760707) (= lambda!186809 lambda!186770))))

(declare-fun bs!1013170 () Bool)

(assert (= bs!1013170 (and d!1449354 b!4601867)))

(assert (=> bs!1013170 (= (= lt!1760841 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186809 lambda!186787))))

(declare-fun bs!1013171 () Bool)

(assert (= bs!1013171 (and d!1449354 b!4601918)))

(assert (=> bs!1013171 (= (= lt!1760841 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186809 lambda!186797))))

(declare-fun bs!1013172 () Bool)

(assert (= bs!1013172 (and d!1449354 d!1449104)))

(assert (=> bs!1013172 (not (= lambda!186809 lambda!186712))))

(declare-fun bs!1013173 () Bool)

(assert (= bs!1013173 (and d!1449354 b!4601905)))

(assert (=> bs!1013173 (= (= lt!1760841 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186809 lambda!186792))))

(declare-fun bs!1013174 () Bool)

(assert (= bs!1013174 (and d!1449354 d!1449314)))

(assert (=> bs!1013174 (= (= lt!1760841 lt!1760791) (= lambda!186809 lambda!186795))))

(declare-fun bs!1013175 () Bool)

(assert (= bs!1013175 (and d!1449354 b!4601960)))

(assert (=> bs!1013175 (= (= lt!1760841 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186809 lambda!186806))))

(assert (=> d!1449354 true))

(declare-fun e!2870523 () Bool)

(assert (=> d!1449354 e!2870523))

(declare-fun res!1925142 () Bool)

(assert (=> d!1449354 (=> (not res!1925142) (not e!2870523))))

(assert (=> d!1449354 (= res!1925142 (forall!10619 (_2!29176 (h!57075 (toList!4671 lt!1760292))) lambda!186809))))

(declare-fun e!2870525 () ListMap!3933)

(assert (=> d!1449354 (= lt!1760841 e!2870525)))

(declare-fun c!788390 () Bool)

(assert (=> d!1449354 (= c!788390 ((_ is Nil!51104) (_2!29176 (h!57075 (toList!4671 lt!1760292)))))))

(assert (=> d!1449354 (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lt!1760292))))))

(assert (=> d!1449354 (= (addToMapMapFromBucket!820 (_2!29176 (h!57075 (toList!4671 lt!1760292))) (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) lt!1760841)))

(declare-fun b!4601956 () Bool)

(declare-fun res!1925144 () Bool)

(assert (=> b!4601956 (=> (not res!1925144) (not e!2870523))))

(assert (=> b!4601956 (= res!1925144 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) lambda!186809))))

(declare-fun b!4601957 () Bool)

(assert (=> b!4601957 (= e!2870523 (invariantList!1130 (toList!4672 lt!1760841)))))

(declare-fun b!4601958 () Bool)

(declare-fun e!2870524 () Bool)

(assert (=> b!4601958 (= e!2870524 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) lambda!186808))))

(declare-fun bm!321166 () Bool)

(declare-fun call!321173 () Bool)

(declare-fun lt!1760847 () ListMap!3933)

(assert (=> bm!321166 (= call!321173 (forall!10619 (ite c!788390 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (toList!4672 lt!1760847)) (ite c!788390 lambda!186806 lambda!186808)))))

(declare-fun bm!321167 () Bool)

(declare-fun call!321171 () Unit!108559)

(assert (=> bm!321167 (= call!321171 (lemmaContainsAllItsOwnKeys!439 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))))))

(assert (=> b!4601959 (= e!2870525 lt!1760838)))

(assert (=> b!4601959 (= lt!1760847 (+!1759 (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (h!57074 (_2!29176 (h!57075 (toList!4671 lt!1760292))))))))

(assert (=> b!4601959 (= lt!1760838 (addToMapMapFromBucket!820 (t!358222 (_2!29176 (h!57075 (toList!4671 lt!1760292)))) (+!1759 (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) (h!57074 (_2!29176 (h!57075 (toList!4671 lt!1760292)))))))))

(declare-fun lt!1760849 () Unit!108559)

(assert (=> b!4601959 (= lt!1760849 call!321171)))

(assert (=> b!4601959 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) lambda!186807)))

(declare-fun lt!1760845 () Unit!108559)

(assert (=> b!4601959 (= lt!1760845 lt!1760849)))

(assert (=> b!4601959 (forall!10619 (toList!4672 lt!1760847) lambda!186808)))

(declare-fun lt!1760851 () Unit!108559)

(declare-fun Unit!108683 () Unit!108559)

(assert (=> b!4601959 (= lt!1760851 Unit!108683)))

(declare-fun call!321172 () Bool)

(assert (=> b!4601959 call!321172))

(declare-fun lt!1760842 () Unit!108559)

(declare-fun Unit!108684 () Unit!108559)

(assert (=> b!4601959 (= lt!1760842 Unit!108684)))

(declare-fun lt!1760839 () Unit!108559)

(declare-fun Unit!108685 () Unit!108559)

(assert (=> b!4601959 (= lt!1760839 Unit!108685)))

(declare-fun lt!1760850 () Unit!108559)

(assert (=> b!4601959 (= lt!1760850 (forallContained!2871 (toList!4672 lt!1760847) lambda!186808 (h!57074 (_2!29176 (h!57075 (toList!4671 lt!1760292))))))))

(assert (=> b!4601959 (contains!14065 lt!1760847 (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lt!1760292))))))))

(declare-fun lt!1760844 () Unit!108559)

(declare-fun Unit!108686 () Unit!108559)

(assert (=> b!4601959 (= lt!1760844 Unit!108686)))

(assert (=> b!4601959 (contains!14065 lt!1760838 (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lt!1760292))))))))

(declare-fun lt!1760835 () Unit!108559)

(declare-fun Unit!108687 () Unit!108559)

(assert (=> b!4601959 (= lt!1760835 Unit!108687)))

(assert (=> b!4601959 (forall!10619 (_2!29176 (h!57075 (toList!4671 lt!1760292))) lambda!186808)))

(declare-fun lt!1760840 () Unit!108559)

(declare-fun Unit!108688 () Unit!108559)

(assert (=> b!4601959 (= lt!1760840 Unit!108688)))

(assert (=> b!4601959 call!321173))

(declare-fun lt!1760834 () Unit!108559)

(declare-fun Unit!108689 () Unit!108559)

(assert (=> b!4601959 (= lt!1760834 Unit!108689)))

(declare-fun lt!1760852 () Unit!108559)

(declare-fun Unit!108690 () Unit!108559)

(assert (=> b!4601959 (= lt!1760852 Unit!108690)))

(declare-fun lt!1760833 () Unit!108559)

(assert (=> b!4601959 (= lt!1760833 (addForallContainsKeyThenBeforeAdding!439 (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760838 (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lt!1760292))))) (_2!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lt!1760292)))))))))

(assert (=> b!4601959 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) lambda!186808)))

(declare-fun lt!1760843 () Unit!108559)

(assert (=> b!4601959 (= lt!1760843 lt!1760833)))

(assert (=> b!4601959 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) lambda!186808)))

(declare-fun lt!1760846 () Unit!108559)

(declare-fun Unit!108691 () Unit!108559)

(assert (=> b!4601959 (= lt!1760846 Unit!108691)))

(declare-fun res!1925143 () Bool)

(assert (=> b!4601959 (= res!1925143 (forall!10619 (_2!29176 (h!57075 (toList!4671 lt!1760292))) lambda!186808))))

(assert (=> b!4601959 (=> (not res!1925143) (not e!2870524))))

(assert (=> b!4601959 e!2870524))

(declare-fun lt!1760832 () Unit!108559)

(declare-fun Unit!108692 () Unit!108559)

(assert (=> b!4601959 (= lt!1760832 Unit!108692)))

(assert (=> b!4601960 (= e!2870525 (extractMap!1388 (t!358223 (toList!4671 lt!1760292))))))

(declare-fun lt!1760837 () Unit!108559)

(assert (=> b!4601960 (= lt!1760837 call!321171)))

(assert (=> b!4601960 call!321173))

(declare-fun lt!1760848 () Unit!108559)

(assert (=> b!4601960 (= lt!1760848 lt!1760837)))

(assert (=> b!4601960 call!321172))

(declare-fun lt!1760836 () Unit!108559)

(declare-fun Unit!108693 () Unit!108559)

(assert (=> b!4601960 (= lt!1760836 Unit!108693)))

(declare-fun bm!321168 () Bool)

(assert (=> bm!321168 (= call!321172 (forall!10619 (ite c!788390 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (t!358222 (_2!29176 (h!57075 (toList!4671 lt!1760292))))) (ite c!788390 lambda!186806 lambda!186808)))))

(assert (= (and d!1449354 c!788390) b!4601960))

(assert (= (and d!1449354 (not c!788390)) b!4601959))

(assert (= (and b!4601959 res!1925143) b!4601958))

(assert (= (or b!4601960 b!4601959) bm!321166))

(assert (= (or b!4601960 b!4601959) bm!321168))

(assert (= (or b!4601960 b!4601959) bm!321167))

(assert (= (and d!1449354 res!1925142) b!4601956))

(assert (= (and b!4601956 res!1925144) b!4601957))

(declare-fun m!5430331 () Bool)

(assert (=> b!4601957 m!5430331))

(declare-fun m!5430333 () Bool)

(assert (=> b!4601959 m!5430333))

(declare-fun m!5430335 () Bool)

(assert (=> b!4601959 m!5430335))

(declare-fun m!5430337 () Bool)

(assert (=> b!4601959 m!5430337))

(assert (=> b!4601959 m!5429435))

(declare-fun m!5430339 () Bool)

(assert (=> b!4601959 m!5430339))

(declare-fun m!5430341 () Bool)

(assert (=> b!4601959 m!5430341))

(declare-fun m!5430343 () Bool)

(assert (=> b!4601959 m!5430343))

(declare-fun m!5430345 () Bool)

(assert (=> b!4601959 m!5430345))

(declare-fun m!5430347 () Bool)

(assert (=> b!4601959 m!5430347))

(declare-fun m!5430349 () Bool)

(assert (=> b!4601959 m!5430349))

(assert (=> b!4601959 m!5430349))

(assert (=> b!4601959 m!5429435))

(assert (=> b!4601959 m!5430341))

(declare-fun m!5430351 () Bool)

(assert (=> b!4601959 m!5430351))

(assert (=> b!4601959 m!5430337))

(declare-fun m!5430353 () Bool)

(assert (=> bm!321168 m!5430353))

(assert (=> bm!321167 m!5429435))

(declare-fun m!5430355 () Bool)

(assert (=> bm!321167 m!5430355))

(declare-fun m!5430357 () Bool)

(assert (=> b!4601956 m!5430357))

(declare-fun m!5430359 () Bool)

(assert (=> d!1449354 m!5430359))

(declare-fun m!5430361 () Bool)

(assert (=> d!1449354 m!5430361))

(assert (=> b!4601958 m!5430337))

(declare-fun m!5430363 () Bool)

(assert (=> bm!321166 m!5430363))

(assert (=> b!4601378 d!1449354))

(declare-fun bs!1013176 () Bool)

(declare-fun d!1449356 () Bool)

(assert (= bs!1013176 (and d!1449356 d!1449064)))

(declare-fun lambda!186810 () Int)

(assert (=> bs!1013176 (= lambda!186810 lambda!186698)))

(declare-fun bs!1013177 () Bool)

(assert (= bs!1013177 (and d!1449356 d!1449322)))

(assert (=> bs!1013177 (= lambda!186810 lambda!186801)))

(declare-fun bs!1013178 () Bool)

(assert (= bs!1013178 (and d!1449356 d!1449044)))

(assert (=> bs!1013178 (= lambda!186810 lambda!186697)))

(declare-fun bs!1013179 () Bool)

(assert (= bs!1013179 (and d!1449356 d!1449286)))

(assert (=> bs!1013179 (= lambda!186810 lambda!186791)))

(declare-fun bs!1013180 () Bool)

(assert (= bs!1013180 (and d!1449356 d!1449066)))

(assert (=> bs!1013180 (= lambda!186810 lambda!186699)))

(declare-fun bs!1013181 () Bool)

(assert (= bs!1013181 (and d!1449356 d!1449080)))

(assert (=> bs!1013181 (= lambda!186810 lambda!186711)))

(declare-fun bs!1013182 () Bool)

(assert (= bs!1013182 (and d!1449356 d!1449108)))

(assert (=> bs!1013182 (= lambda!186810 lambda!186713)))

(declare-fun bs!1013183 () Bool)

(assert (= bs!1013183 (and d!1449356 d!1448988)))

(assert (=> bs!1013183 (= lambda!186810 lambda!186677)))

(declare-fun bs!1013184 () Bool)

(assert (= bs!1013184 (and d!1449356 d!1449190)))

(assert (=> bs!1013184 (= lambda!186810 lambda!186739)))

(declare-fun bs!1013185 () Bool)

(assert (= bs!1013185 (and d!1449356 d!1449214)))

(assert (=> bs!1013185 (= lambda!186810 lambda!186772)))

(declare-fun bs!1013186 () Bool)

(assert (= bs!1013186 (and d!1449356 d!1449116)))

(assert (=> bs!1013186 (= lambda!186810 lambda!186715)))

(declare-fun bs!1013187 () Bool)

(assert (= bs!1013187 (and d!1449356 d!1449032)))

(assert (=> bs!1013187 (= lambda!186810 lambda!186686)))

(declare-fun bs!1013188 () Bool)

(assert (= bs!1013188 (and d!1449356 start!459328)))

(assert (=> bs!1013188 (= lambda!186810 lambda!186668)))

(declare-fun bs!1013189 () Bool)

(assert (= bs!1013189 (and d!1449356 d!1448970)))

(assert (=> bs!1013189 (not (= lambda!186810 lambda!186671))))

(declare-fun bs!1013190 () Bool)

(assert (= bs!1013190 (and d!1449356 d!1449118)))

(assert (=> bs!1013190 (= lambda!186810 lambda!186718)))

(declare-fun bs!1013191 () Bool)

(assert (= bs!1013191 (and d!1449356 d!1449316)))

(assert (=> bs!1013191 (= lambda!186810 lambda!186796)))

(declare-fun bs!1013192 () Bool)

(assert (= bs!1013192 (and d!1449356 d!1449114)))

(assert (=> bs!1013192 (= lambda!186810 lambda!186714)))

(declare-fun lt!1760853 () ListMap!3933)

(assert (=> d!1449356 (invariantList!1130 (toList!4672 lt!1760853))))

(declare-fun e!2870526 () ListMap!3933)

(assert (=> d!1449356 (= lt!1760853 e!2870526)))

(declare-fun c!788391 () Bool)

(assert (=> d!1449356 (= c!788391 ((_ is Cons!51105) (t!358223 (toList!4671 lt!1760292))))))

(assert (=> d!1449356 (forall!10618 (t!358223 (toList!4671 lt!1760292)) lambda!186810)))

(assert (=> d!1449356 (= (extractMap!1388 (t!358223 (toList!4671 lt!1760292))) lt!1760853)))

(declare-fun b!4601961 () Bool)

(assert (=> b!4601961 (= e!2870526 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (t!358223 (toList!4671 lt!1760292)))) (extractMap!1388 (t!358223 (t!358223 (toList!4671 lt!1760292))))))))

(declare-fun b!4601962 () Bool)

(assert (=> b!4601962 (= e!2870526 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449356 c!788391) b!4601961))

(assert (= (and d!1449356 (not c!788391)) b!4601962))

(declare-fun m!5430365 () Bool)

(assert (=> d!1449356 m!5430365))

(declare-fun m!5430367 () Bool)

(assert (=> d!1449356 m!5430367))

(declare-fun m!5430369 () Bool)

(assert (=> b!4601961 m!5430369))

(assert (=> b!4601961 m!5430369))

(declare-fun m!5430371 () Bool)

(assert (=> b!4601961 m!5430371))

(assert (=> b!4601378 d!1449356))

(assert (=> d!1449106 d!1449180))

(declare-fun d!1449358 () Bool)

(declare-fun res!1925145 () Bool)

(declare-fun e!2870527 () Bool)

(assert (=> d!1449358 (=> res!1925145 e!2870527)))

(assert (=> d!1449358 (= res!1925145 ((_ is Nil!51105) (toList!4671 lm!1477)))))

(assert (=> d!1449358 (= (forall!10618 (toList!4671 lm!1477) lambda!186671) e!2870527)))

(declare-fun b!4601963 () Bool)

(declare-fun e!2870528 () Bool)

(assert (=> b!4601963 (= e!2870527 e!2870528)))

(declare-fun res!1925146 () Bool)

(assert (=> b!4601963 (=> (not res!1925146) (not e!2870528))))

(assert (=> b!4601963 (= res!1925146 (dynLambda!21405 lambda!186671 (h!57075 (toList!4671 lm!1477))))))

(declare-fun b!4601964 () Bool)

(assert (=> b!4601964 (= e!2870528 (forall!10618 (t!358223 (toList!4671 lm!1477)) lambda!186671))))

(assert (= (and d!1449358 (not res!1925145)) b!4601963))

(assert (= (and b!4601963 res!1925146) b!4601964))

(declare-fun b_lambda!169619 () Bool)

(assert (=> (not b_lambda!169619) (not b!4601963)))

(declare-fun m!5430373 () Bool)

(assert (=> b!4601963 m!5430373))

(declare-fun m!5430375 () Bool)

(assert (=> b!4601964 m!5430375))

(assert (=> d!1448970 d!1449358))

(declare-fun d!1449360 () Bool)

(declare-fun c!788394 () Bool)

(assert (=> d!1449360 (= c!788394 ((_ is Nil!51105) (toList!4671 lm!1477)))))

(declare-fun e!2870531 () (InoxSet tuple2!51764))

(assert (=> d!1449360 (= (content!8660 (toList!4671 lm!1477)) e!2870531)))

(declare-fun b!4601969 () Bool)

(assert (=> b!4601969 (= e!2870531 ((as const (Array tuple2!51764 Bool)) false))))

(declare-fun b!4601970 () Bool)

(assert (=> b!4601970 (= e!2870531 ((_ map or) (store ((as const (Array tuple2!51764 Bool)) false) (h!57075 (toList!4671 lm!1477)) true) (content!8660 (t!358223 (toList!4671 lm!1477)))))))

(assert (= (and d!1449360 c!788394) b!4601969))

(assert (= (and d!1449360 (not c!788394)) b!4601970))

(declare-fun m!5430377 () Bool)

(assert (=> b!4601970 m!5430377))

(assert (=> b!4601970 m!5430311))

(assert (=> d!1449008 d!1449360))

(declare-fun bs!1013193 () Bool)

(declare-fun b!4601975 () Bool)

(assert (= bs!1013193 (and b!4601975 b!4601917)))

(declare-fun lambda!186811 () Int)

(assert (=> bs!1013193 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186811 lambda!186798))))

(declare-fun bs!1013194 () Bool)

(assert (= bs!1013194 (and b!4601975 b!4601866)))

(assert (=> bs!1013194 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186811 lambda!186788))))

(declare-fun bs!1013195 () Bool)

(assert (= bs!1013195 (and b!4601975 d!1449320)))

(assert (=> bs!1013195 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760813) (= lambda!186811 lambda!186800))))

(declare-fun bs!1013196 () Bool)

(assert (= bs!1013196 (and b!4601975 b!4601904)))

(assert (=> bs!1013196 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186811 lambda!186793))))

(declare-fun bs!1013197 () Bool)

(assert (= bs!1013197 (and b!4601975 d!1449284)))

(assert (=> bs!1013197 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760768) (= lambda!186811 lambda!186790))))

(assert (=> bs!1013196 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760788) (= lambda!186811 lambda!186794))))

(declare-fun bs!1013198 () Bool)

(assert (= bs!1013198 (and b!4601975 b!4601959)))

(assert (=> bs!1013198 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760838) (= lambda!186811 lambda!186808))))

(declare-fun bs!1013199 () Bool)

(assert (= bs!1013199 (and b!4601975 b!4601735)))

(assert (=> bs!1013199 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186811 lambda!186768))))

(declare-fun bs!1013200 () Bool)

(assert (= bs!1013200 (and b!4601975 d!1449194)))

(assert (=> bs!1013200 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760710) (= lambda!186811 lambda!186771))))

(declare-fun bs!1013201 () Bool)

(assert (= bs!1013201 (and b!4601975 b!4601734)))

(assert (=> bs!1013201 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186811 lambda!186769))))

(declare-fun bs!1013202 () Bool)

(assert (= bs!1013202 (and b!4601975 d!1449036)))

(assert (=> bs!1013202 (not (= lambda!186811 lambda!186689))))

(assert (=> bs!1013194 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760765) (= lambda!186811 lambda!186789))))

(assert (=> bs!1013198 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186811 lambda!186807))))

(assert (=> bs!1013201 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760707) (= lambda!186811 lambda!186770))))

(declare-fun bs!1013203 () Bool)

(assert (= bs!1013203 (and b!4601975 b!4601867)))

(assert (=> bs!1013203 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186811 lambda!186787))))

(declare-fun bs!1013204 () Bool)

(assert (= bs!1013204 (and b!4601975 b!4601918)))

(assert (=> bs!1013204 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186811 lambda!186797))))

(declare-fun bs!1013205 () Bool)

(assert (= bs!1013205 (and b!4601975 d!1449104)))

(assert (=> bs!1013205 (not (= lambda!186811 lambda!186712))))

(declare-fun bs!1013206 () Bool)

(assert (= bs!1013206 (and b!4601975 b!4601905)))

(assert (=> bs!1013206 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186811 lambda!186792))))

(assert (=> bs!1013193 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760810) (= lambda!186811 lambda!186799))))

(declare-fun bs!1013207 () Bool)

(assert (= bs!1013207 (and b!4601975 d!1449354)))

(assert (=> bs!1013207 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760841) (= lambda!186811 lambda!186809))))

(declare-fun bs!1013208 () Bool)

(assert (= bs!1013208 (and b!4601975 d!1449314)))

(assert (=> bs!1013208 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760791) (= lambda!186811 lambda!186795))))

(declare-fun bs!1013209 () Bool)

(assert (= bs!1013209 (and b!4601975 b!4601960)))

(assert (=> bs!1013209 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186811 lambda!186806))))

(assert (=> b!4601975 true))

(declare-fun bs!1013210 () Bool)

(declare-fun b!4601974 () Bool)

(assert (= bs!1013210 (and b!4601974 b!4601917)))

(declare-fun lambda!186812 () Int)

(assert (=> bs!1013210 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186812 lambda!186798))))

(declare-fun bs!1013211 () Bool)

(assert (= bs!1013211 (and b!4601974 b!4601866)))

(assert (=> bs!1013211 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186812 lambda!186788))))

(declare-fun bs!1013212 () Bool)

(assert (= bs!1013212 (and b!4601974 d!1449320)))

(assert (=> bs!1013212 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760813) (= lambda!186812 lambda!186800))))

(declare-fun bs!1013213 () Bool)

(assert (= bs!1013213 (and b!4601974 b!4601904)))

(assert (=> bs!1013213 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186812 lambda!186793))))

(declare-fun bs!1013214 () Bool)

(assert (= bs!1013214 (and b!4601974 d!1449284)))

(assert (=> bs!1013214 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760768) (= lambda!186812 lambda!186790))))

(assert (=> bs!1013213 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760788) (= lambda!186812 lambda!186794))))

(declare-fun bs!1013215 () Bool)

(assert (= bs!1013215 (and b!4601974 b!4601959)))

(assert (=> bs!1013215 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760838) (= lambda!186812 lambda!186808))))

(declare-fun bs!1013216 () Bool)

(assert (= bs!1013216 (and b!4601974 b!4601735)))

(assert (=> bs!1013216 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186812 lambda!186768))))

(declare-fun bs!1013217 () Bool)

(assert (= bs!1013217 (and b!4601974 d!1449194)))

(assert (=> bs!1013217 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760710) (= lambda!186812 lambda!186771))))

(declare-fun bs!1013218 () Bool)

(assert (= bs!1013218 (and b!4601974 b!4601734)))

(assert (=> bs!1013218 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186812 lambda!186769))))

(declare-fun bs!1013219 () Bool)

(assert (= bs!1013219 (and b!4601974 d!1449036)))

(assert (=> bs!1013219 (not (= lambda!186812 lambda!186689))))

(declare-fun bs!1013220 () Bool)

(assert (= bs!1013220 (and b!4601974 b!4601975)))

(assert (=> bs!1013220 (= lambda!186812 lambda!186811)))

(assert (=> bs!1013211 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760765) (= lambda!186812 lambda!186789))))

(assert (=> bs!1013215 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186812 lambda!186807))))

(assert (=> bs!1013218 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760707) (= lambda!186812 lambda!186770))))

(declare-fun bs!1013221 () Bool)

(assert (= bs!1013221 (and b!4601974 b!4601867)))

(assert (=> bs!1013221 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186812 lambda!186787))))

(declare-fun bs!1013222 () Bool)

(assert (= bs!1013222 (and b!4601974 b!4601918)))

(assert (=> bs!1013222 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186812 lambda!186797))))

(declare-fun bs!1013223 () Bool)

(assert (= bs!1013223 (and b!4601974 d!1449104)))

(assert (=> bs!1013223 (not (= lambda!186812 lambda!186712))))

(declare-fun bs!1013224 () Bool)

(assert (= bs!1013224 (and b!4601974 b!4601905)))

(assert (=> bs!1013224 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186812 lambda!186792))))

(assert (=> bs!1013210 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760810) (= lambda!186812 lambda!186799))))

(declare-fun bs!1013225 () Bool)

(assert (= bs!1013225 (and b!4601974 d!1449354)))

(assert (=> bs!1013225 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760841) (= lambda!186812 lambda!186809))))

(declare-fun bs!1013226 () Bool)

(assert (= bs!1013226 (and b!4601974 d!1449314)))

(assert (=> bs!1013226 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760791) (= lambda!186812 lambda!186795))))

(declare-fun bs!1013227 () Bool)

(assert (= bs!1013227 (and b!4601974 b!4601960)))

(assert (=> bs!1013227 (= (= (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186812 lambda!186806))))

(assert (=> b!4601974 true))

(declare-fun lt!1760860 () ListMap!3933)

(declare-fun lambda!186813 () Int)

(assert (=> b!4601974 (= (= lt!1760860 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) (= lambda!186813 lambda!186812))))

(assert (=> bs!1013210 (= (= lt!1760860 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186813 lambda!186798))))

(assert (=> bs!1013211 (= (= lt!1760860 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186813 lambda!186788))))

(assert (=> bs!1013212 (= (= lt!1760860 lt!1760813) (= lambda!186813 lambda!186800))))

(assert (=> bs!1013213 (= (= lt!1760860 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186813 lambda!186793))))

(assert (=> bs!1013214 (= (= lt!1760860 lt!1760768) (= lambda!186813 lambda!186790))))

(assert (=> bs!1013213 (= (= lt!1760860 lt!1760788) (= lambda!186813 lambda!186794))))

(assert (=> bs!1013215 (= (= lt!1760860 lt!1760838) (= lambda!186813 lambda!186808))))

(assert (=> bs!1013216 (= (= lt!1760860 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186813 lambda!186768))))

(assert (=> bs!1013217 (= (= lt!1760860 lt!1760710) (= lambda!186813 lambda!186771))))

(assert (=> bs!1013218 (= (= lt!1760860 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186813 lambda!186769))))

(assert (=> bs!1013219 (not (= lambda!186813 lambda!186689))))

(assert (=> bs!1013220 (= (= lt!1760860 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) (= lambda!186813 lambda!186811))))

(assert (=> bs!1013211 (= (= lt!1760860 lt!1760765) (= lambda!186813 lambda!186789))))

(assert (=> bs!1013215 (= (= lt!1760860 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186813 lambda!186807))))

(assert (=> bs!1013218 (= (= lt!1760860 lt!1760707) (= lambda!186813 lambda!186770))))

(assert (=> bs!1013221 (= (= lt!1760860 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186813 lambda!186787))))

(assert (=> bs!1013222 (= (= lt!1760860 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186813 lambda!186797))))

(assert (=> bs!1013223 (not (= lambda!186813 lambda!186712))))

(assert (=> bs!1013224 (= (= lt!1760860 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186813 lambda!186792))))

(assert (=> bs!1013210 (= (= lt!1760860 lt!1760810) (= lambda!186813 lambda!186799))))

(assert (=> bs!1013225 (= (= lt!1760860 lt!1760841) (= lambda!186813 lambda!186809))))

(assert (=> bs!1013226 (= (= lt!1760860 lt!1760791) (= lambda!186813 lambda!186795))))

(assert (=> bs!1013227 (= (= lt!1760860 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186813 lambda!186806))))

(assert (=> b!4601974 true))

(declare-fun bs!1013228 () Bool)

(declare-fun d!1449362 () Bool)

(assert (= bs!1013228 (and d!1449362 b!4601917)))

(declare-fun lambda!186814 () Int)

(declare-fun lt!1760863 () ListMap!3933)

(assert (=> bs!1013228 (= (= lt!1760863 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186814 lambda!186798))))

(declare-fun bs!1013229 () Bool)

(assert (= bs!1013229 (and d!1449362 b!4601866)))

(assert (=> bs!1013229 (= (= lt!1760863 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186814 lambda!186788))))

(declare-fun bs!1013230 () Bool)

(assert (= bs!1013230 (and d!1449362 d!1449320)))

(assert (=> bs!1013230 (= (= lt!1760863 lt!1760813) (= lambda!186814 lambda!186800))))

(declare-fun bs!1013231 () Bool)

(assert (= bs!1013231 (and d!1449362 b!4601904)))

(assert (=> bs!1013231 (= (= lt!1760863 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186814 lambda!186793))))

(declare-fun bs!1013232 () Bool)

(assert (= bs!1013232 (and d!1449362 d!1449284)))

(assert (=> bs!1013232 (= (= lt!1760863 lt!1760768) (= lambda!186814 lambda!186790))))

(assert (=> bs!1013231 (= (= lt!1760863 lt!1760788) (= lambda!186814 lambda!186794))))

(declare-fun bs!1013233 () Bool)

(assert (= bs!1013233 (and d!1449362 b!4601959)))

(assert (=> bs!1013233 (= (= lt!1760863 lt!1760838) (= lambda!186814 lambda!186808))))

(declare-fun bs!1013234 () Bool)

(assert (= bs!1013234 (and d!1449362 b!4601735)))

(assert (=> bs!1013234 (= (= lt!1760863 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186814 lambda!186768))))

(declare-fun bs!1013235 () Bool)

(assert (= bs!1013235 (and d!1449362 d!1449194)))

(assert (=> bs!1013235 (= (= lt!1760863 lt!1760710) (= lambda!186814 lambda!186771))))

(declare-fun bs!1013236 () Bool)

(assert (= bs!1013236 (and d!1449362 b!4601734)))

(assert (=> bs!1013236 (= (= lt!1760863 (extractMap!1388 (t!358223 lt!1760308))) (= lambda!186814 lambda!186769))))

(declare-fun bs!1013237 () Bool)

(assert (= bs!1013237 (and d!1449362 d!1449036)))

(assert (=> bs!1013237 (not (= lambda!186814 lambda!186689))))

(declare-fun bs!1013238 () Bool)

(assert (= bs!1013238 (and d!1449362 b!4601974)))

(assert (=> bs!1013238 (= (= lt!1760863 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) (= lambda!186814 lambda!186812))))

(assert (=> bs!1013238 (= (= lt!1760863 lt!1760860) (= lambda!186814 lambda!186813))))

(declare-fun bs!1013239 () Bool)

(assert (= bs!1013239 (and d!1449362 b!4601975)))

(assert (=> bs!1013239 (= (= lt!1760863 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) (= lambda!186814 lambda!186811))))

(assert (=> bs!1013229 (= (= lt!1760863 lt!1760765) (= lambda!186814 lambda!186789))))

(assert (=> bs!1013233 (= (= lt!1760863 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186814 lambda!186807))))

(assert (=> bs!1013236 (= (= lt!1760863 lt!1760707) (= lambda!186814 lambda!186770))))

(declare-fun bs!1013240 () Bool)

(assert (= bs!1013240 (and d!1449362 b!4601867)))

(assert (=> bs!1013240 (= (= lt!1760863 (extractMap!1388 (t!358223 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186814 lambda!186787))))

(declare-fun bs!1013241 () Bool)

(assert (= bs!1013241 (and d!1449362 b!4601918)))

(assert (=> bs!1013241 (= (= lt!1760863 (extractMap!1388 (t!358223 (t!358223 (toList!4671 lm!1477))))) (= lambda!186814 lambda!186797))))

(declare-fun bs!1013242 () Bool)

(assert (= bs!1013242 (and d!1449362 d!1449104)))

(assert (=> bs!1013242 (not (= lambda!186814 lambda!186712))))

(declare-fun bs!1013243 () Bool)

(assert (= bs!1013243 (and d!1449362 b!4601905)))

(assert (=> bs!1013243 (= (= lt!1760863 (extractMap!1388 (t!358223 (Cons!51105 lt!1760293 Nil!51105)))) (= lambda!186814 lambda!186792))))

(assert (=> bs!1013228 (= (= lt!1760863 lt!1760810) (= lambda!186814 lambda!186799))))

(declare-fun bs!1013244 () Bool)

(assert (= bs!1013244 (and d!1449362 d!1449354)))

(assert (=> bs!1013244 (= (= lt!1760863 lt!1760841) (= lambda!186814 lambda!186809))))

(declare-fun bs!1013245 () Bool)

(assert (= bs!1013245 (and d!1449362 d!1449314)))

(assert (=> bs!1013245 (= (= lt!1760863 lt!1760791) (= lambda!186814 lambda!186795))))

(declare-fun bs!1013246 () Bool)

(assert (= bs!1013246 (and d!1449362 b!4601960)))

(assert (=> bs!1013246 (= (= lt!1760863 (extractMap!1388 (t!358223 (toList!4671 lt!1760292)))) (= lambda!186814 lambda!186806))))

(assert (=> d!1449362 true))

(declare-fun e!2870532 () Bool)

(assert (=> d!1449362 e!2870532))

(declare-fun res!1925147 () Bool)

(assert (=> d!1449362 (=> (not res!1925147) (not e!2870532))))

(assert (=> d!1449362 (= res!1925147 (forall!10619 (_2!29176 (h!57075 (toList!4671 lm!1477))) lambda!186814))))

(declare-fun e!2870534 () ListMap!3933)

(assert (=> d!1449362 (= lt!1760863 e!2870534)))

(declare-fun c!788395 () Bool)

(assert (=> d!1449362 (= c!788395 ((_ is Nil!51104) (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(assert (=> d!1449362 (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lm!1477))))))

(assert (=> d!1449362 (= (addToMapMapFromBucket!820 (_2!29176 (h!57075 (toList!4671 lm!1477))) (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) lt!1760863)))

(declare-fun b!4601971 () Bool)

(declare-fun res!1925149 () Bool)

(assert (=> b!4601971 (=> (not res!1925149) (not e!2870532))))

(assert (=> b!4601971 (= res!1925149 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) lambda!186814))))

(declare-fun b!4601972 () Bool)

(assert (=> b!4601972 (= e!2870532 (invariantList!1130 (toList!4672 lt!1760863)))))

(declare-fun b!4601973 () Bool)

(declare-fun e!2870533 () Bool)

(assert (=> b!4601973 (= e!2870533 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) lambda!186813))))

(declare-fun lt!1760869 () ListMap!3933)

(declare-fun bm!321169 () Bool)

(declare-fun call!321176 () Bool)

(assert (=> bm!321169 (= call!321176 (forall!10619 (ite c!788395 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) (toList!4672 lt!1760869)) (ite c!788395 lambda!186811 lambda!186813)))))

(declare-fun bm!321170 () Bool)

(declare-fun call!321174 () Unit!108559)

(assert (=> bm!321170 (= call!321174 (lemmaContainsAllItsOwnKeys!439 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))))))

(assert (=> b!4601974 (= e!2870534 lt!1760860)))

(assert (=> b!4601974 (= lt!1760869 (+!1759 (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(assert (=> b!4601974 (= lt!1760860 (addToMapMapFromBucket!820 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))) (+!1759 (extractMap!1388 (t!358223 (toList!4671 lm!1477))) (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))))

(declare-fun lt!1760871 () Unit!108559)

(assert (=> b!4601974 (= lt!1760871 call!321174)))

(assert (=> b!4601974 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) lambda!186812)))

(declare-fun lt!1760867 () Unit!108559)

(assert (=> b!4601974 (= lt!1760867 lt!1760871)))

(assert (=> b!4601974 (forall!10619 (toList!4672 lt!1760869) lambda!186813)))

(declare-fun lt!1760873 () Unit!108559)

(declare-fun Unit!108706 () Unit!108559)

(assert (=> b!4601974 (= lt!1760873 Unit!108706)))

(declare-fun call!321175 () Bool)

(assert (=> b!4601974 call!321175))

(declare-fun lt!1760864 () Unit!108559)

(declare-fun Unit!108707 () Unit!108559)

(assert (=> b!4601974 (= lt!1760864 Unit!108707)))

(declare-fun lt!1760861 () Unit!108559)

(declare-fun Unit!108708 () Unit!108559)

(assert (=> b!4601974 (= lt!1760861 Unit!108708)))

(declare-fun lt!1760872 () Unit!108559)

(assert (=> b!4601974 (= lt!1760872 (forallContained!2871 (toList!4672 lt!1760869) lambda!186813 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(assert (=> b!4601974 (contains!14065 lt!1760869 (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(declare-fun lt!1760866 () Unit!108559)

(declare-fun Unit!108711 () Unit!108559)

(assert (=> b!4601974 (= lt!1760866 Unit!108711)))

(assert (=> b!4601974 (contains!14065 lt!1760860 (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(declare-fun lt!1760857 () Unit!108559)

(declare-fun Unit!108712 () Unit!108559)

(assert (=> b!4601974 (= lt!1760857 Unit!108712)))

(assert (=> b!4601974 (forall!10619 (_2!29176 (h!57075 (toList!4671 lm!1477))) lambda!186813)))

(declare-fun lt!1760862 () Unit!108559)

(declare-fun Unit!108713 () Unit!108559)

(assert (=> b!4601974 (= lt!1760862 Unit!108713)))

(assert (=> b!4601974 call!321176))

(declare-fun lt!1760856 () Unit!108559)

(declare-fun Unit!108714 () Unit!108559)

(assert (=> b!4601974 (= lt!1760856 Unit!108714)))

(declare-fun lt!1760874 () Unit!108559)

(declare-fun Unit!108715 () Unit!108559)

(assert (=> b!4601974 (= lt!1760874 Unit!108715)))

(declare-fun lt!1760855 () Unit!108559)

(assert (=> b!4601974 (= lt!1760855 (addForallContainsKeyThenBeforeAdding!439 (extractMap!1388 (t!358223 (toList!4671 lm!1477))) lt!1760860 (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477))))) (_2!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))))

(assert (=> b!4601974 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) lambda!186813)))

(declare-fun lt!1760865 () Unit!108559)

(assert (=> b!4601974 (= lt!1760865 lt!1760855)))

(assert (=> b!4601974 (forall!10619 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) lambda!186813)))

(declare-fun lt!1760868 () Unit!108559)

(declare-fun Unit!108716 () Unit!108559)

(assert (=> b!4601974 (= lt!1760868 Unit!108716)))

(declare-fun res!1925148 () Bool)

(assert (=> b!4601974 (= res!1925148 (forall!10619 (_2!29176 (h!57075 (toList!4671 lm!1477))) lambda!186813))))

(assert (=> b!4601974 (=> (not res!1925148) (not e!2870533))))

(assert (=> b!4601974 e!2870533))

(declare-fun lt!1760854 () Unit!108559)

(declare-fun Unit!108717 () Unit!108559)

(assert (=> b!4601974 (= lt!1760854 Unit!108717)))

(assert (=> b!4601975 (= e!2870534 (extractMap!1388 (t!358223 (toList!4671 lm!1477))))))

(declare-fun lt!1760859 () Unit!108559)

(assert (=> b!4601975 (= lt!1760859 call!321174)))

(assert (=> b!4601975 call!321176))

(declare-fun lt!1760870 () Unit!108559)

(assert (=> b!4601975 (= lt!1760870 lt!1760859)))

(assert (=> b!4601975 call!321175))

(declare-fun lt!1760858 () Unit!108559)

(declare-fun Unit!108718 () Unit!108559)

(assert (=> b!4601975 (= lt!1760858 Unit!108718)))

(declare-fun bm!321171 () Bool)

(assert (=> bm!321171 (= call!321175 (forall!10619 (ite c!788395 (toList!4672 (extractMap!1388 (t!358223 (toList!4671 lm!1477)))) (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))) (ite c!788395 lambda!186811 lambda!186813)))))

(assert (= (and d!1449362 c!788395) b!4601975))

(assert (= (and d!1449362 (not c!788395)) b!4601974))

(assert (= (and b!4601974 res!1925148) b!4601973))

(assert (= (or b!4601975 b!4601974) bm!321169))

(assert (= (or b!4601975 b!4601974) bm!321171))

(assert (= (or b!4601975 b!4601974) bm!321170))

(assert (= (and d!1449362 res!1925147) b!4601971))

(assert (= (and b!4601971 res!1925149) b!4601972))

(declare-fun m!5430379 () Bool)

(assert (=> b!4601972 m!5430379))

(declare-fun m!5430381 () Bool)

(assert (=> b!4601974 m!5430381))

(declare-fun m!5430383 () Bool)

(assert (=> b!4601974 m!5430383))

(declare-fun m!5430385 () Bool)

(assert (=> b!4601974 m!5430385))

(assert (=> b!4601974 m!5429031))

(declare-fun m!5430387 () Bool)

(assert (=> b!4601974 m!5430387))

(declare-fun m!5430389 () Bool)

(assert (=> b!4601974 m!5430389))

(declare-fun m!5430391 () Bool)

(assert (=> b!4601974 m!5430391))

(declare-fun m!5430393 () Bool)

(assert (=> b!4601974 m!5430393))

(declare-fun m!5430395 () Bool)

(assert (=> b!4601974 m!5430395))

(declare-fun m!5430397 () Bool)

(assert (=> b!4601974 m!5430397))

(assert (=> b!4601974 m!5430397))

(assert (=> b!4601974 m!5429031))

(assert (=> b!4601974 m!5430389))

(declare-fun m!5430399 () Bool)

(assert (=> b!4601974 m!5430399))

(assert (=> b!4601974 m!5430385))

(declare-fun m!5430401 () Bool)

(assert (=> bm!321171 m!5430401))

(assert (=> bm!321170 m!5429031))

(declare-fun m!5430403 () Bool)

(assert (=> bm!321170 m!5430403))

(declare-fun m!5430405 () Bool)

(assert (=> b!4601971 m!5430405))

(declare-fun m!5430407 () Bool)

(assert (=> d!1449362 m!5430407))

(assert (=> d!1449362 m!5429029))

(assert (=> b!4601973 m!5430385))

(declare-fun m!5430409 () Bool)

(assert (=> bm!321169 m!5430409))

(assert (=> b!4601369 d!1449362))

(assert (=> b!4601369 d!1449064))

(assert (=> b!4601192 d!1449310))

(assert (=> b!4601192 d!1449264))

(declare-fun d!1449364 () Bool)

(declare-fun lt!1760875 () Bool)

(assert (=> d!1449364 (= lt!1760875 (select (content!8664 e!2870027) key!3287))))

(declare-fun e!2870536 () Bool)

(assert (=> d!1449364 (= lt!1760875 e!2870536)))

(declare-fun res!1925150 () Bool)

(assert (=> d!1449364 (=> (not res!1925150) (not e!2870536))))

(assert (=> d!1449364 (= res!1925150 ((_ is Cons!51107) e!2870027))))

(assert (=> d!1449364 (= (contains!14069 e!2870027 key!3287) lt!1760875)))

(declare-fun b!4601976 () Bool)

(declare-fun e!2870535 () Bool)

(assert (=> b!4601976 (= e!2870536 e!2870535)))

(declare-fun res!1925151 () Bool)

(assert (=> b!4601976 (=> res!1925151 e!2870535)))

(assert (=> b!4601976 (= res!1925151 (= (h!57079 e!2870027) key!3287))))

(declare-fun b!4601977 () Bool)

(assert (=> b!4601977 (= e!2870535 (contains!14069 (t!358225 e!2870027) key!3287))))

(assert (= (and d!1449364 res!1925150) b!4601976))

(assert (= (and b!4601976 (not res!1925151)) b!4601977))

(declare-fun m!5430411 () Bool)

(assert (=> d!1449364 m!5430411))

(declare-fun m!5430413 () Bool)

(assert (=> d!1449364 m!5430413))

(declare-fun m!5430415 () Bool)

(assert (=> b!4601977 m!5430415))

(assert (=> bm!321103 d!1449364))

(assert (=> b!4601322 d!1449170))

(assert (=> b!4601322 d!1449172))

(declare-fun d!1449366 () Bool)

(assert (=> d!1449366 (dynLambda!21405 lambda!186668 lt!1760302)))

(assert (=> d!1449366 true))

(declare-fun _$7!2144 () Unit!108559)

(assert (=> d!1449366 (= (choose!30863 (toList!4671 lm!1477) lambda!186668 lt!1760302) _$7!2144)))

(declare-fun b_lambda!169621 () Bool)

(assert (=> (not b_lambda!169621) (not d!1449366)))

(declare-fun bs!1013247 () Bool)

(assert (= bs!1013247 d!1449366))

(assert (=> bs!1013247 m!5429235))

(assert (=> d!1449006 d!1449366))

(assert (=> d!1449006 d!1448986))

(declare-fun d!1449368 () Bool)

(assert (=> d!1449368 (= (invariantList!1130 (toList!4672 lt!1760482)) (noDuplicatedKeys!329 (toList!4672 lt!1760482)))))

(declare-fun bs!1013248 () Bool)

(assert (= bs!1013248 d!1449368))

(declare-fun m!5430417 () Bool)

(assert (=> bs!1013248 m!5430417))

(assert (=> d!1449066 d!1449368))

(declare-fun d!1449370 () Bool)

(declare-fun res!1925152 () Bool)

(declare-fun e!2870539 () Bool)

(assert (=> d!1449370 (=> res!1925152 e!2870539)))

(assert (=> d!1449370 (= res!1925152 ((_ is Nil!51105) (toList!4671 lt!1760292)))))

(assert (=> d!1449370 (= (forall!10618 (toList!4671 lt!1760292) lambda!186699) e!2870539)))

(declare-fun b!4601982 () Bool)

(declare-fun e!2870540 () Bool)

(assert (=> b!4601982 (= e!2870539 e!2870540)))

(declare-fun res!1925153 () Bool)

(assert (=> b!4601982 (=> (not res!1925153) (not e!2870540))))

(assert (=> b!4601982 (= res!1925153 (dynLambda!21405 lambda!186699 (h!57075 (toList!4671 lt!1760292))))))

(declare-fun b!4601983 () Bool)

(assert (=> b!4601983 (= e!2870540 (forall!10618 (t!358223 (toList!4671 lt!1760292)) lambda!186699))))

(assert (= (and d!1449370 (not res!1925152)) b!4601982))

(assert (= (and b!4601982 res!1925153) b!4601983))

(declare-fun b_lambda!169623 () Bool)

(assert (=> (not b_lambda!169623) (not b!4601982)))

(declare-fun m!5430419 () Bool)

(assert (=> b!4601982 m!5430419))

(declare-fun m!5430421 () Bool)

(assert (=> b!4601983 m!5430421))

(assert (=> d!1449066 d!1449370))

(declare-fun d!1449372 () Bool)

(declare-fun res!1925154 () Bool)

(declare-fun e!2870541 () Bool)

(assert (=> d!1449372 (=> res!1925154 e!2870541)))

(assert (=> d!1449372 (= res!1925154 ((_ is Nil!51104) (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(assert (=> d!1449372 (= (forall!10619 (_2!29176 (h!57075 (toList!4671 lm!1477))) lambda!186689) e!2870541)))

(declare-fun b!4601984 () Bool)

(declare-fun e!2870542 () Bool)

(assert (=> b!4601984 (= e!2870541 e!2870542)))

(declare-fun res!1925155 () Bool)

(assert (=> b!4601984 (=> (not res!1925155) (not e!2870542))))

(assert (=> b!4601984 (= res!1925155 (dynLambda!21407 lambda!186689 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477))))))))

(declare-fun b!4601985 () Bool)

(assert (=> b!4601985 (= e!2870542 (forall!10619 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))) lambda!186689))))

(assert (= (and d!1449372 (not res!1925154)) b!4601984))

(assert (= (and b!4601984 res!1925155) b!4601985))

(declare-fun b_lambda!169625 () Bool)

(assert (=> (not b_lambda!169625) (not b!4601984)))

(declare-fun m!5430423 () Bool)

(assert (=> b!4601984 m!5430423))

(declare-fun m!5430425 () Bool)

(assert (=> b!4601985 m!5430425))

(assert (=> d!1449036 d!1449372))

(declare-fun d!1449374 () Bool)

(declare-fun c!788400 () Bool)

(assert (=> d!1449374 (= c!788400 ((_ is Nil!51104) (toList!4672 (extractMap!1388 (Cons!51105 lt!1760293 Nil!51105)))))))

(declare-fun e!2870545 () (InoxSet tuple2!51762))

(assert (=> d!1449374 (= (content!8663 (toList!4672 (extractMap!1388 (Cons!51105 lt!1760293 Nil!51105)))) e!2870545)))

(declare-fun b!4601990 () Bool)

(assert (=> b!4601990 (= e!2870545 ((as const (Array tuple2!51762 Bool)) false))))

(declare-fun b!4601991 () Bool)

(assert (=> b!4601991 (= e!2870545 ((_ map or) (store ((as const (Array tuple2!51762 Bool)) false) (h!57074 (toList!4672 (extractMap!1388 (Cons!51105 lt!1760293 Nil!51105)))) true) (content!8663 (t!358222 (toList!4672 (extractMap!1388 (Cons!51105 lt!1760293 Nil!51105)))))))))

(assert (= (and d!1449374 c!788400) b!4601990))

(assert (= (and d!1449374 (not c!788400)) b!4601991))

(declare-fun m!5430427 () Bool)

(assert (=> b!4601991 m!5430427))

(declare-fun m!5430429 () Bool)

(assert (=> b!4601991 m!5430429))

(assert (=> d!1449110 d!1449374))

(declare-fun c!788401 () Bool)

(declare-fun d!1449376 () Bool)

(assert (=> d!1449376 (= c!788401 ((_ is Nil!51104) (toList!4672 (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287))))))

(declare-fun e!2870546 () (InoxSet tuple2!51762))

(assert (=> d!1449376 (= (content!8663 (toList!4672 (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287))) e!2870546)))

(declare-fun b!4601992 () Bool)

(assert (=> b!4601992 (= e!2870546 ((as const (Array tuple2!51762 Bool)) false))))

(declare-fun b!4601993 () Bool)

(assert (=> b!4601993 (= e!2870546 ((_ map or) (store ((as const (Array tuple2!51762 Bool)) false) (h!57074 (toList!4672 (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287))) true) (content!8663 (t!358222 (toList!4672 (-!504 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)) key!3287))))))))

(assert (= (and d!1449376 c!788401) b!4601992))

(assert (= (and d!1449376 (not c!788401)) b!4601993))

(declare-fun m!5430431 () Bool)

(assert (=> b!4601993 m!5430431))

(declare-fun m!5430433 () Bool)

(assert (=> b!4601993 m!5430433))

(assert (=> d!1449110 d!1449376))

(declare-fun d!1449378 () Bool)

(declare-fun res!1925156 () Bool)

(declare-fun e!2870547 () Bool)

(assert (=> d!1449378 (=> res!1925156 e!2870547)))

(assert (=> d!1449378 (= res!1925156 (and ((_ is Cons!51105) (toList!4671 lt!1760292)) (= (_1!29176 (h!57075 (toList!4671 lt!1760292))) lt!1760301)))))

(assert (=> d!1449378 (= (containsKey!2179 (toList!4671 lt!1760292) lt!1760301) e!2870547)))

(declare-fun b!4601994 () Bool)

(declare-fun e!2870548 () Bool)

(assert (=> b!4601994 (= e!2870547 e!2870548)))

(declare-fun res!1925157 () Bool)

(assert (=> b!4601994 (=> (not res!1925157) (not e!2870548))))

(assert (=> b!4601994 (= res!1925157 (and (or (not ((_ is Cons!51105) (toList!4671 lt!1760292))) (bvsle (_1!29176 (h!57075 (toList!4671 lt!1760292))) lt!1760301)) ((_ is Cons!51105) (toList!4671 lt!1760292)) (bvslt (_1!29176 (h!57075 (toList!4671 lt!1760292))) lt!1760301)))))

(declare-fun b!4601995 () Bool)

(assert (=> b!4601995 (= e!2870548 (containsKey!2179 (t!358223 (toList!4671 lt!1760292)) lt!1760301))))

(assert (= (and d!1449378 (not res!1925156)) b!4601994))

(assert (= (and b!4601994 res!1925157) b!4601995))

(declare-fun m!5430435 () Bool)

(assert (=> b!4601995 m!5430435))

(assert (=> d!1449034 d!1449378))

(declare-fun lt!1760894 () Bool)

(declare-fun d!1449380 () Bool)

(assert (=> d!1449380 (= lt!1760894 (select (content!8660 (toList!4671 lm!1477)) (tuple2!51765 hash!344 lt!1760296)))))

(declare-fun e!2870549 () Bool)

(assert (=> d!1449380 (= lt!1760894 e!2870549)))

(declare-fun res!1925158 () Bool)

(assert (=> d!1449380 (=> (not res!1925158) (not e!2870549))))

(assert (=> d!1449380 (= res!1925158 ((_ is Cons!51105) (toList!4671 lm!1477)))))

(assert (=> d!1449380 (= (contains!14067 (toList!4671 lm!1477) (tuple2!51765 hash!344 lt!1760296)) lt!1760894)))

(declare-fun b!4601996 () Bool)

(declare-fun e!2870550 () Bool)

(assert (=> b!4601996 (= e!2870549 e!2870550)))

(declare-fun res!1925159 () Bool)

(assert (=> b!4601996 (=> res!1925159 e!2870550)))

(assert (=> b!4601996 (= res!1925159 (= (h!57075 (toList!4671 lm!1477)) (tuple2!51765 hash!344 lt!1760296)))))

(declare-fun b!4601997 () Bool)

(assert (=> b!4601997 (= e!2870550 (contains!14067 (t!358223 (toList!4671 lm!1477)) (tuple2!51765 hash!344 lt!1760296)))))

(assert (= (and d!1449380 res!1925158) b!4601996))

(assert (= (and b!4601996 (not res!1925159)) b!4601997))

(assert (=> d!1449380 m!5429255))

(declare-fun m!5430437 () Bool)

(assert (=> d!1449380 m!5430437))

(declare-fun m!5430439 () Bool)

(assert (=> b!4601997 m!5430439))

(assert (=> d!1448998 d!1449380))

(declare-fun d!1449382 () Bool)

(assert (=> d!1449382 (contains!14067 (toList!4671 lm!1477) (tuple2!51765 hash!344 lt!1760296))))

(assert (=> d!1449382 true))

(declare-fun _$14!1485 () Unit!108559)

(assert (=> d!1449382 (= (choose!30862 (toList!4671 lm!1477) hash!344 lt!1760296) _$14!1485)))

(declare-fun bs!1013249 () Bool)

(assert (= bs!1013249 d!1449382))

(assert (=> bs!1013249 m!5429229))

(assert (=> d!1448998 d!1449382))

(assert (=> d!1448998 d!1449292))

(declare-fun d!1449384 () Bool)

(assert (=> d!1449384 (isDefined!8669 (getValueByKey!1322 (toList!4672 lt!1760307) key!3287))))

(declare-fun lt!1760899 () Unit!108559)

(assert (=> d!1449384 (= lt!1760899 (choose!30871 (toList!4672 lt!1760307) key!3287))))

(assert (=> d!1449384 (invariantList!1130 (toList!4672 lt!1760307))))

(assert (=> d!1449384 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1225 (toList!4672 lt!1760307) key!3287) lt!1760899)))

(declare-fun bs!1013250 () Bool)

(assert (= bs!1013250 d!1449384))

(assert (=> bs!1013250 m!5429111))

(assert (=> bs!1013250 m!5429111))

(assert (=> bs!1013250 m!5429113))

(declare-fun m!5430441 () Bool)

(assert (=> bs!1013250 m!5430441))

(declare-fun m!5430443 () Bool)

(assert (=> bs!1013250 m!5430443))

(assert (=> b!4601189 d!1449384))

(assert (=> b!4601189 d!1449288))

(assert (=> b!4601189 d!1449290))

(declare-fun d!1449386 () Bool)

(assert (=> d!1449386 (contains!14069 (getKeysList!579 (toList!4672 lt!1760307)) key!3287)))

(declare-fun lt!1760902 () Unit!108559)

(assert (=> d!1449386 (= lt!1760902 (choose!30872 (toList!4672 lt!1760307) key!3287))))

(assert (=> d!1449386 (invariantList!1130 (toList!4672 lt!1760307))))

(assert (=> d!1449386 (= (lemmaInListThenGetKeysListContains!575 (toList!4672 lt!1760307) key!3287) lt!1760902)))

(declare-fun bs!1013251 () Bool)

(assert (= bs!1013251 d!1449386))

(assert (=> bs!1013251 m!5429117))

(assert (=> bs!1013251 m!5429117))

(declare-fun m!5430445 () Bool)

(assert (=> bs!1013251 m!5430445))

(declare-fun m!5430447 () Bool)

(assert (=> bs!1013251 m!5430447))

(assert (=> bs!1013251 m!5430443))

(assert (=> b!4601189 d!1449386))

(assert (=> d!1449038 d!1449276))

(declare-fun d!1449388 () Bool)

(assert (=> d!1449388 (= (tail!7965 (toList!4671 lm!1477)) (t!358223 (toList!4671 lm!1477)))))

(assert (=> d!1448980 d!1449388))

(assert (=> b!4601187 d!1449166))

(declare-fun d!1449390 () Bool)

(assert (=> d!1449390 (containsKey!2178 (toList!4672 lt!1760307) key!3287)))

(declare-fun lt!1760903 () Unit!108559)

(assert (=> d!1449390 (= lt!1760903 (choose!30874 (toList!4672 lt!1760307) key!3287))))

(assert (=> d!1449390 (invariantList!1130 (toList!4672 lt!1760307))))

(assert (=> d!1449390 (= (lemmaInGetKeysListThenContainsKey!578 (toList!4672 lt!1760307) key!3287) lt!1760903)))

(declare-fun bs!1013252 () Bool)

(assert (= bs!1013252 d!1449390))

(assert (=> bs!1013252 m!5429107))

(declare-fun m!5430449 () Bool)

(assert (=> bs!1013252 m!5430449))

(assert (=> bs!1013252 m!5430443))

(assert (=> b!4601187 d!1449390))

(declare-fun d!1449392 () Bool)

(declare-fun res!1925160 () Bool)

(declare-fun e!2870551 () Bool)

(assert (=> d!1449392 (=> res!1925160 e!2870551)))

(assert (=> d!1449392 (= res!1925160 (and ((_ is Cons!51104) lt!1760435) (= (_1!29175 (h!57074 lt!1760435)) key!3287)))))

(assert (=> d!1449392 (= (containsKey!2176 lt!1760435 key!3287) e!2870551)))

(declare-fun b!4601998 () Bool)

(declare-fun e!2870552 () Bool)

(assert (=> b!4601998 (= e!2870551 e!2870552)))

(declare-fun res!1925161 () Bool)

(assert (=> b!4601998 (=> (not res!1925161) (not e!2870552))))

(assert (=> b!4601998 (= res!1925161 ((_ is Cons!51104) lt!1760435))))

(declare-fun b!4601999 () Bool)

(assert (=> b!4601999 (= e!2870552 (containsKey!2176 (t!358222 lt!1760435) key!3287))))

(assert (= (and d!1449392 (not res!1925160)) b!4601998))

(assert (= (and b!4601998 res!1925161) b!4601999))

(declare-fun m!5430451 () Bool)

(assert (=> b!4601999 m!5430451))

(assert (=> d!1449026 d!1449392))

(assert (=> d!1449026 d!1449028))

(declare-fun b!4602000 () Bool)

(declare-fun e!2870553 () List!51231)

(assert (=> b!4602000 (= e!2870553 (getKeysList!579 (toList!4672 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308))))))))

(declare-fun b!4602001 () Bool)

(declare-fun e!2870554 () Bool)

(assert (=> b!4602001 (= e!2870554 (contains!14069 (keys!17900 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308)))) key!3287))))

(declare-fun b!4602002 () Bool)

(assert (=> b!4602002 false))

(declare-fun lt!1760917 () Unit!108559)

(declare-fun lt!1760916 () Unit!108559)

(assert (=> b!4602002 (= lt!1760917 lt!1760916)))

(assert (=> b!4602002 (containsKey!2178 (toList!4672 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308)))) key!3287)))

(assert (=> b!4602002 (= lt!1760916 (lemmaInGetKeysListThenContainsKey!578 (toList!4672 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308)))) key!3287))))

(declare-fun e!2870558 () Unit!108559)

(declare-fun Unit!108719 () Unit!108559)

(assert (=> b!4602002 (= e!2870558 Unit!108719)))

(declare-fun b!4602003 () Bool)

(declare-fun Unit!108720 () Unit!108559)

(assert (=> b!4602003 (= e!2870558 Unit!108720)))

(declare-fun b!4602004 () Bool)

(declare-fun e!2870556 () Unit!108559)

(declare-fun lt!1760911 () Unit!108559)

(assert (=> b!4602004 (= e!2870556 lt!1760911)))

(declare-fun lt!1760912 () Unit!108559)

(assert (=> b!4602004 (= lt!1760912 (lemmaContainsKeyImpliesGetValueByKeyDefined!1225 (toList!4672 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308)))) key!3287))))

(assert (=> b!4602004 (isDefined!8669 (getValueByKey!1322 (toList!4672 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308)))) key!3287))))

(declare-fun lt!1760915 () Unit!108559)

(assert (=> b!4602004 (= lt!1760915 lt!1760912)))

(assert (=> b!4602004 (= lt!1760911 (lemmaInListThenGetKeysListContains!575 (toList!4672 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308)))) key!3287))))

(declare-fun call!321177 () Bool)

(assert (=> b!4602004 call!321177))

(declare-fun b!4602005 () Bool)

(declare-fun e!2870555 () Bool)

(assert (=> b!4602005 (= e!2870555 e!2870554)))

(declare-fun res!1925163 () Bool)

(assert (=> b!4602005 (=> (not res!1925163) (not e!2870554))))

(assert (=> b!4602005 (= res!1925163 (isDefined!8669 (getValueByKey!1322 (toList!4672 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308)))) key!3287)))))

(declare-fun b!4602006 () Bool)

(assert (=> b!4602006 (= e!2870553 (keys!17900 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308)))))))

(declare-fun b!4602007 () Bool)

(declare-fun e!2870557 () Bool)

(assert (=> b!4602007 (= e!2870557 (not (contains!14069 (keys!17900 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308)))) key!3287)))))

(declare-fun b!4602008 () Bool)

(assert (=> b!4602008 (= e!2870556 e!2870558)))

(declare-fun c!788404 () Bool)

(assert (=> b!4602008 (= c!788404 call!321177)))

(declare-fun bm!321172 () Bool)

(assert (=> bm!321172 (= call!321177 (contains!14069 e!2870553 key!3287))))

(declare-fun c!788403 () Bool)

(declare-fun c!788402 () Bool)

(assert (=> bm!321172 (= c!788403 c!788402)))

(declare-fun d!1449394 () Bool)

(assert (=> d!1449394 e!2870555))

(declare-fun res!1925162 () Bool)

(assert (=> d!1449394 (=> res!1925162 e!2870555)))

(assert (=> d!1449394 (= res!1925162 e!2870557)))

(declare-fun res!1925164 () Bool)

(assert (=> d!1449394 (=> (not res!1925164) (not e!2870557))))

(declare-fun lt!1760910 () Bool)

(assert (=> d!1449394 (= res!1925164 (not lt!1760910))))

(declare-fun lt!1760913 () Bool)

(assert (=> d!1449394 (= lt!1760910 lt!1760913)))

(declare-fun lt!1760914 () Unit!108559)

(assert (=> d!1449394 (= lt!1760914 e!2870556)))

(assert (=> d!1449394 (= c!788402 lt!1760913)))

(assert (=> d!1449394 (= lt!1760913 (containsKey!2178 (toList!4672 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308)))) key!3287))))

(assert (=> d!1449394 (= (contains!14065 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308))) key!3287) lt!1760910)))

(assert (= (and d!1449394 c!788402) b!4602004))

(assert (= (and d!1449394 (not c!788402)) b!4602008))

(assert (= (and b!4602008 c!788404) b!4602002))

(assert (= (and b!4602008 (not c!788404)) b!4602003))

(assert (= (or b!4602004 b!4602008) bm!321172))

(assert (= (and bm!321172 c!788403) b!4602000))

(assert (= (and bm!321172 (not c!788403)) b!4602006))

(assert (= (and d!1449394 res!1925164) b!4602007))

(assert (= (and d!1449394 (not res!1925162)) b!4602005))

(assert (= (and b!4602005 res!1925163) b!4602001))

(assert (=> b!4602006 m!5429567))

(declare-fun m!5430453 () Bool)

(assert (=> b!4602006 m!5430453))

(declare-fun m!5430455 () Bool)

(assert (=> bm!321172 m!5430455))

(declare-fun m!5430457 () Bool)

(assert (=> d!1449394 m!5430457))

(assert (=> b!4602001 m!5429567))

(assert (=> b!4602001 m!5430453))

(assert (=> b!4602001 m!5430453))

(declare-fun m!5430459 () Bool)

(assert (=> b!4602001 m!5430459))

(declare-fun m!5430461 () Bool)

(assert (=> b!4602005 m!5430461))

(assert (=> b!4602005 m!5430461))

(declare-fun m!5430463 () Bool)

(assert (=> b!4602005 m!5430463))

(assert (=> b!4602002 m!5430457))

(declare-fun m!5430465 () Bool)

(assert (=> b!4602002 m!5430465))

(declare-fun m!5430467 () Bool)

(assert (=> b!4602000 m!5430467))

(assert (=> b!4602007 m!5429567))

(assert (=> b!4602007 m!5430453))

(assert (=> b!4602007 m!5430453))

(assert (=> b!4602007 m!5430459))

(declare-fun m!5430469 () Bool)

(assert (=> b!4602004 m!5430469))

(assert (=> b!4602004 m!5430461))

(assert (=> b!4602004 m!5430461))

(assert (=> b!4602004 m!5430463))

(declare-fun m!5430471 () Bool)

(assert (=> b!4602004 m!5430471))

(assert (=> d!1449118 d!1449394))

(declare-fun bs!1013253 () Bool)

(declare-fun d!1449396 () Bool)

(assert (= bs!1013253 (and d!1449396 d!1449064)))

(declare-fun lambda!186832 () Int)

(assert (=> bs!1013253 (= lambda!186832 lambda!186698)))

(declare-fun bs!1013254 () Bool)

(assert (= bs!1013254 (and d!1449396 d!1449322)))

(assert (=> bs!1013254 (= lambda!186832 lambda!186801)))

(declare-fun bs!1013255 () Bool)

(assert (= bs!1013255 (and d!1449396 d!1449044)))

(assert (=> bs!1013255 (= lambda!186832 lambda!186697)))

(declare-fun bs!1013256 () Bool)

(assert (= bs!1013256 (and d!1449396 d!1449356)))

(assert (=> bs!1013256 (= lambda!186832 lambda!186810)))

(declare-fun bs!1013257 () Bool)

(assert (= bs!1013257 (and d!1449396 d!1449286)))

(assert (=> bs!1013257 (= lambda!186832 lambda!186791)))

(declare-fun bs!1013258 () Bool)

(assert (= bs!1013258 (and d!1449396 d!1449066)))

(assert (=> bs!1013258 (= lambda!186832 lambda!186699)))

(declare-fun bs!1013259 () Bool)

(assert (= bs!1013259 (and d!1449396 d!1449080)))

(assert (=> bs!1013259 (= lambda!186832 lambda!186711)))

(declare-fun bs!1013260 () Bool)

(assert (= bs!1013260 (and d!1449396 d!1449108)))

(assert (=> bs!1013260 (= lambda!186832 lambda!186713)))

(declare-fun bs!1013261 () Bool)

(assert (= bs!1013261 (and d!1449396 d!1448988)))

(assert (=> bs!1013261 (= lambda!186832 lambda!186677)))

(declare-fun bs!1013262 () Bool)

(assert (= bs!1013262 (and d!1449396 d!1449190)))

(assert (=> bs!1013262 (= lambda!186832 lambda!186739)))

(declare-fun bs!1013263 () Bool)

(assert (= bs!1013263 (and d!1449396 d!1449214)))

(assert (=> bs!1013263 (= lambda!186832 lambda!186772)))

(declare-fun bs!1013264 () Bool)

(assert (= bs!1013264 (and d!1449396 d!1449116)))

(assert (=> bs!1013264 (= lambda!186832 lambda!186715)))

(declare-fun bs!1013265 () Bool)

(assert (= bs!1013265 (and d!1449396 d!1449032)))

(assert (=> bs!1013265 (= lambda!186832 lambda!186686)))

(declare-fun bs!1013266 () Bool)

(assert (= bs!1013266 (and d!1449396 start!459328)))

(assert (=> bs!1013266 (= lambda!186832 lambda!186668)))

(declare-fun bs!1013267 () Bool)

(assert (= bs!1013267 (and d!1449396 d!1448970)))

(assert (=> bs!1013267 (not (= lambda!186832 lambda!186671))))

(declare-fun bs!1013268 () Bool)

(assert (= bs!1013268 (and d!1449396 d!1449118)))

(assert (=> bs!1013268 (= lambda!186832 lambda!186718)))

(declare-fun bs!1013269 () Bool)

(assert (= bs!1013269 (and d!1449396 d!1449316)))

(assert (=> bs!1013269 (= lambda!186832 lambda!186796)))

(declare-fun bs!1013270 () Bool)

(assert (= bs!1013270 (and d!1449396 d!1449114)))

(assert (=> bs!1013270 (= lambda!186832 lambda!186714)))

(declare-fun lt!1760926 () ListMap!3933)

(assert (=> d!1449396 (invariantList!1130 (toList!4672 lt!1760926))))

(declare-fun e!2870559 () ListMap!3933)

(assert (=> d!1449396 (= lt!1760926 e!2870559)))

(declare-fun c!788405 () Bool)

(assert (=> d!1449396 (= c!788405 ((_ is Cons!51105) (toList!4671 (ListLongMap!3304 lt!1760308))))))

(assert (=> d!1449396 (forall!10618 (toList!4671 (ListLongMap!3304 lt!1760308)) lambda!186832)))

(assert (=> d!1449396 (= (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308))) lt!1760926)))

(declare-fun b!4602009 () Bool)

(assert (=> b!4602009 (= e!2870559 (addToMapMapFromBucket!820 (_2!29176 (h!57075 (toList!4671 (ListLongMap!3304 lt!1760308)))) (extractMap!1388 (t!358223 (toList!4671 (ListLongMap!3304 lt!1760308))))))))

(declare-fun b!4602010 () Bool)

(assert (=> b!4602010 (= e!2870559 (ListMap!3934 Nil!51104))))

(assert (= (and d!1449396 c!788405) b!4602009))

(assert (= (and d!1449396 (not c!788405)) b!4602010))

(declare-fun m!5430473 () Bool)

(assert (=> d!1449396 m!5430473))

(declare-fun m!5430475 () Bool)

(assert (=> d!1449396 m!5430475))

(declare-fun m!5430477 () Bool)

(assert (=> b!4602009 m!5430477))

(assert (=> b!4602009 m!5430477))

(declare-fun m!5430479 () Bool)

(assert (=> b!4602009 m!5430479))

(assert (=> d!1449118 d!1449396))

(declare-fun d!1449398 () Bool)

(assert (=> d!1449398 (contains!14065 (extractMap!1388 (toList!4671 (ListLongMap!3304 lt!1760308))) key!3287)))

(assert (=> d!1449398 true))

(declare-fun _$34!835 () Unit!108559)

(assert (=> d!1449398 (= (choose!30869 (ListLongMap!3304 lt!1760308) key!3287 hashF!1107) _$34!835)))

(declare-fun bs!1013271 () Bool)

(assert (= bs!1013271 d!1449398))

(assert (=> bs!1013271 m!5429567))

(assert (=> bs!1013271 m!5429567))

(assert (=> bs!1013271 m!5429569))

(assert (=> d!1449118 d!1449398))

(declare-fun d!1449400 () Bool)

(declare-fun res!1925174 () Bool)

(declare-fun e!2870567 () Bool)

(assert (=> d!1449400 (=> res!1925174 e!2870567)))

(assert (=> d!1449400 (= res!1925174 ((_ is Nil!51105) (toList!4671 (ListLongMap!3304 lt!1760308))))))

(assert (=> d!1449400 (= (forall!10618 (toList!4671 (ListLongMap!3304 lt!1760308)) lambda!186718) e!2870567)))

(declare-fun b!4602022 () Bool)

(declare-fun e!2870568 () Bool)

(assert (=> b!4602022 (= e!2870567 e!2870568)))

(declare-fun res!1925175 () Bool)

(assert (=> b!4602022 (=> (not res!1925175) (not e!2870568))))

(assert (=> b!4602022 (= res!1925175 (dynLambda!21405 lambda!186718 (h!57075 (toList!4671 (ListLongMap!3304 lt!1760308)))))))

(declare-fun b!4602023 () Bool)

(assert (=> b!4602023 (= e!2870568 (forall!10618 (t!358223 (toList!4671 (ListLongMap!3304 lt!1760308))) lambda!186718))))

(assert (= (and d!1449400 (not res!1925174)) b!4602022))

(assert (= (and b!4602022 res!1925175) b!4602023))

(declare-fun b_lambda!169627 () Bool)

(assert (=> (not b_lambda!169627) (not b!4602022)))

(declare-fun m!5430481 () Bool)

(assert (=> b!4602022 m!5430481))

(declare-fun m!5430483 () Bool)

(assert (=> b!4602023 m!5430483))

(assert (=> d!1449118 d!1449400))

(declare-fun d!1449402 () Bool)

(declare-fun res!1925176 () Bool)

(declare-fun e!2870569 () Bool)

(assert (=> d!1449402 (=> res!1925176 e!2870569)))

(assert (=> d!1449402 (= res!1925176 (not ((_ is Cons!51104) (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))))

(assert (=> d!1449402 (= (noDuplicateKeys!1328 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))) e!2870569)))

(declare-fun b!4602026 () Bool)

(declare-fun e!2870570 () Bool)

(assert (=> b!4602026 (= e!2870569 e!2870570)))

(declare-fun res!1925177 () Bool)

(assert (=> b!4602026 (=> (not res!1925177) (not e!2870570))))

(assert (=> b!4602026 (= res!1925177 (not (containsKey!2176 (t!358222 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477))))) (_1!29175 (h!57074 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))))))

(declare-fun b!4602027 () Bool)

(assert (=> b!4602027 (= e!2870570 (noDuplicateKeys!1328 (t!358222 (t!358222 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))))

(assert (= (and d!1449402 (not res!1925176)) b!4602026))

(assert (= (and b!4602026 res!1925177) b!4602027))

(declare-fun m!5430485 () Bool)

(assert (=> b!4602026 m!5430485))

(declare-fun m!5430487 () Bool)

(assert (=> b!4602027 m!5430487))

(assert (=> b!4601307 d!1449402))

(declare-fun d!1449404 () Bool)

(declare-fun res!1925178 () Bool)

(declare-fun e!2870571 () Bool)

(assert (=> d!1449404 (=> res!1925178 e!2870571)))

(assert (=> d!1449404 (= res!1925178 (not ((_ is Cons!51104) (t!358222 newBucket!178))))))

(assert (=> d!1449404 (= (noDuplicateKeys!1328 (t!358222 newBucket!178)) e!2870571)))

(declare-fun b!4602028 () Bool)

(declare-fun e!2870572 () Bool)

(assert (=> b!4602028 (= e!2870571 e!2870572)))

(declare-fun res!1925179 () Bool)

(assert (=> b!4602028 (=> (not res!1925179) (not e!2870572))))

(assert (=> b!4602028 (= res!1925179 (not (containsKey!2176 (t!358222 (t!358222 newBucket!178)) (_1!29175 (h!57074 (t!358222 newBucket!178))))))))

(declare-fun b!4602029 () Bool)

(assert (=> b!4602029 (= e!2870572 (noDuplicateKeys!1328 (t!358222 (t!358222 newBucket!178))))))

(assert (= (and d!1449404 (not res!1925178)) b!4602028))

(assert (= (and b!4602028 res!1925179) b!4602029))

(declare-fun m!5430489 () Bool)

(assert (=> b!4602028 m!5430489))

(declare-fun m!5430491 () Bool)

(assert (=> b!4602029 m!5430491))

(assert (=> b!4601232 d!1449404))

(assert (=> b!4601274 d!1449008))

(assert (=> d!1449080 d!1449038))

(assert (=> d!1449080 d!1449044))

(declare-fun d!1449406 () Bool)

(assert (=> d!1449406 (not (contains!14065 (extractMap!1388 (toList!4671 lm!1477)) key!3287))))

(assert (=> d!1449406 true))

(declare-fun _$26!554 () Unit!108559)

(assert (=> d!1449406 (= (choose!30867 lm!1477 key!3287 hashF!1107) _$26!554)))

(declare-fun bs!1013294 () Bool)

(assert (= bs!1013294 d!1449406))

(assert (=> bs!1013294 m!5429047))

(assert (=> bs!1013294 m!5429047))

(assert (=> bs!1013294 m!5429049))

(assert (=> d!1449080 d!1449406))

(declare-fun d!1449416 () Bool)

(declare-fun res!1925182 () Bool)

(declare-fun e!2870576 () Bool)

(assert (=> d!1449416 (=> res!1925182 e!2870576)))

(assert (=> d!1449416 (= res!1925182 ((_ is Nil!51105) (toList!4671 lm!1477)))))

(assert (=> d!1449416 (= (forall!10618 (toList!4671 lm!1477) lambda!186711) e!2870576)))

(declare-fun b!4602034 () Bool)

(declare-fun e!2870577 () Bool)

(assert (=> b!4602034 (= e!2870576 e!2870577)))

(declare-fun res!1925183 () Bool)

(assert (=> b!4602034 (=> (not res!1925183) (not e!2870577))))

(assert (=> b!4602034 (= res!1925183 (dynLambda!21405 lambda!186711 (h!57075 (toList!4671 lm!1477))))))

(declare-fun b!4602035 () Bool)

(assert (=> b!4602035 (= e!2870577 (forall!10618 (t!358223 (toList!4671 lm!1477)) lambda!186711))))

(assert (= (and d!1449416 (not res!1925182)) b!4602034))

(assert (= (and b!4602034 res!1925183) b!4602035))

(declare-fun b_lambda!169629 () Bool)

(assert (=> (not b_lambda!169629) (not b!4602034)))

(declare-fun m!5430541 () Bool)

(assert (=> b!4602034 m!5430541))

(declare-fun m!5430543 () Bool)

(assert (=> b!4602035 m!5430543))

(assert (=> d!1449080 d!1449416))

(declare-fun d!1449420 () Bool)

(declare-fun e!2870580 () Bool)

(assert (=> d!1449420 e!2870580))

(declare-fun res!1925184 () Bool)

(assert (=> d!1449420 (=> res!1925184 e!2870580)))

(declare-fun lt!1760956 () Bool)

(assert (=> d!1449420 (= res!1925184 (not lt!1760956))))

(declare-fun lt!1760958 () Bool)

(assert (=> d!1449420 (= lt!1760956 lt!1760958)))

(declare-fun lt!1760959 () Unit!108559)

(declare-fun e!2870581 () Unit!108559)

(assert (=> d!1449420 (= lt!1760959 e!2870581)))

(declare-fun c!788410 () Bool)

(assert (=> d!1449420 (= c!788410 lt!1760958)))

(assert (=> d!1449420 (= lt!1760958 (containsKey!2179 (toList!4671 lt!1760361) (_1!29176 lt!1760293)))))

(assert (=> d!1449420 (= (contains!14066 lt!1760361 (_1!29176 lt!1760293)) lt!1760956)))

(declare-fun b!4602040 () Bool)

(declare-fun lt!1760957 () Unit!108559)

(assert (=> b!4602040 (= e!2870581 lt!1760957)))

(assert (=> b!4602040 (= lt!1760957 (lemmaContainsKeyImpliesGetValueByKeyDefined!1226 (toList!4671 lt!1760361) (_1!29176 lt!1760293)))))

(assert (=> b!4602040 (isDefined!8670 (getValueByKey!1323 (toList!4671 lt!1760361) (_1!29176 lt!1760293)))))

(declare-fun b!4602041 () Bool)

(declare-fun Unit!108732 () Unit!108559)

(assert (=> b!4602041 (= e!2870581 Unit!108732)))

(declare-fun b!4602042 () Bool)

(assert (=> b!4602042 (= e!2870580 (isDefined!8670 (getValueByKey!1323 (toList!4671 lt!1760361) (_1!29176 lt!1760293))))))

(assert (= (and d!1449420 c!788410) b!4602040))

(assert (= (and d!1449420 (not c!788410)) b!4602041))

(assert (= (and d!1449420 (not res!1925184)) b!4602042))

(declare-fun m!5430547 () Bool)

(assert (=> d!1449420 m!5430547))

(declare-fun m!5430549 () Bool)

(assert (=> b!4602040 m!5430549))

(assert (=> b!4602040 m!5429133))

(assert (=> b!4602040 m!5429133))

(declare-fun m!5430551 () Bool)

(assert (=> b!4602040 m!5430551))

(assert (=> b!4602042 m!5429133))

(assert (=> b!4602042 m!5429133))

(assert (=> b!4602042 m!5430551))

(assert (=> d!1448978 d!1449420))

(declare-fun b!4602045 () Bool)

(declare-fun e!2870583 () Option!11403)

(assert (=> b!4602045 (= e!2870583 (getValueByKey!1323 (t!358223 lt!1760360) (_1!29176 lt!1760293)))))

(declare-fun b!4602043 () Bool)

(declare-fun e!2870582 () Option!11403)

(assert (=> b!4602043 (= e!2870582 (Some!11402 (_2!29176 (h!57075 lt!1760360))))))

(declare-fun d!1449424 () Bool)

(declare-fun c!788411 () Bool)

(assert (=> d!1449424 (= c!788411 (and ((_ is Cons!51105) lt!1760360) (= (_1!29176 (h!57075 lt!1760360)) (_1!29176 lt!1760293))))))

(assert (=> d!1449424 (= (getValueByKey!1323 lt!1760360 (_1!29176 lt!1760293)) e!2870582)))

(declare-fun b!4602044 () Bool)

(assert (=> b!4602044 (= e!2870582 e!2870583)))

(declare-fun c!788412 () Bool)

(assert (=> b!4602044 (= c!788412 (and ((_ is Cons!51105) lt!1760360) (not (= (_1!29176 (h!57075 lt!1760360)) (_1!29176 lt!1760293)))))))

(declare-fun b!4602046 () Bool)

(assert (=> b!4602046 (= e!2870583 None!11402)))

(assert (= (and d!1449424 c!788411) b!4602043))

(assert (= (and d!1449424 (not c!788411)) b!4602044))

(assert (= (and b!4602044 c!788412) b!4602045))

(assert (= (and b!4602044 (not c!788412)) b!4602046))

(declare-fun m!5430553 () Bool)

(assert (=> b!4602045 m!5430553))

(assert (=> d!1448978 d!1449424))

(declare-fun d!1449426 () Bool)

(assert (=> d!1449426 (= (getValueByKey!1323 lt!1760360 (_1!29176 lt!1760293)) (Some!11402 (_2!29176 lt!1760293)))))

(declare-fun lt!1760960 () Unit!108559)

(assert (=> d!1449426 (= lt!1760960 (choose!30875 lt!1760360 (_1!29176 lt!1760293) (_2!29176 lt!1760293)))))

(declare-fun e!2870584 () Bool)

(assert (=> d!1449426 e!2870584))

(declare-fun res!1925185 () Bool)

(assert (=> d!1449426 (=> (not res!1925185) (not e!2870584))))

(assert (=> d!1449426 (= res!1925185 (isStrictlySorted!545 lt!1760360))))

(assert (=> d!1449426 (= (lemmaContainsTupThenGetReturnValue!802 lt!1760360 (_1!29176 lt!1760293) (_2!29176 lt!1760293)) lt!1760960)))

(declare-fun b!4602047 () Bool)

(declare-fun res!1925186 () Bool)

(assert (=> b!4602047 (=> (not res!1925186) (not e!2870584))))

(assert (=> b!4602047 (= res!1925186 (containsKey!2179 lt!1760360 (_1!29176 lt!1760293)))))

(declare-fun b!4602048 () Bool)

(assert (=> b!4602048 (= e!2870584 (contains!14067 lt!1760360 (tuple2!51765 (_1!29176 lt!1760293) (_2!29176 lt!1760293))))))

(assert (= (and d!1449426 res!1925185) b!4602047))

(assert (= (and b!4602047 res!1925186) b!4602048))

(assert (=> d!1449426 m!5429127))

(declare-fun m!5430555 () Bool)

(assert (=> d!1449426 m!5430555))

(declare-fun m!5430557 () Bool)

(assert (=> d!1449426 m!5430557))

(declare-fun m!5430559 () Bool)

(assert (=> b!4602047 m!5430559))

(declare-fun m!5430561 () Bool)

(assert (=> b!4602048 m!5430561))

(assert (=> d!1448978 d!1449426))

(declare-fun b!4602049 () Bool)

(declare-fun e!2870586 () List!51229)

(declare-fun e!2870589 () List!51229)

(assert (=> b!4602049 (= e!2870586 e!2870589)))

(declare-fun c!788413 () Bool)

(assert (=> b!4602049 (= c!788413 (and ((_ is Cons!51105) (toList!4671 lt!1760292)) (= (_1!29176 (h!57075 (toList!4671 lt!1760292))) (_1!29176 lt!1760293))))))

(declare-fun b!4602050 () Bool)

(declare-fun res!1925187 () Bool)

(declare-fun e!2870585 () Bool)

(assert (=> b!4602050 (=> (not res!1925187) (not e!2870585))))

(declare-fun lt!1760961 () List!51229)

(assert (=> b!4602050 (= res!1925187 (containsKey!2179 lt!1760961 (_1!29176 lt!1760293)))))

(declare-fun b!4602051 () Bool)

(declare-fun e!2870587 () List!51229)

(declare-fun call!321189 () List!51229)

(assert (=> b!4602051 (= e!2870587 call!321189)))

(declare-fun bm!321182 () Bool)

(declare-fun call!321187 () List!51229)

(assert (=> bm!321182 (= call!321189 call!321187)))

(declare-fun b!4602052 () Bool)

(declare-fun call!321188 () List!51229)

(assert (=> b!4602052 (= e!2870586 call!321188)))

(declare-fun b!4602053 () Bool)

(assert (=> b!4602053 (= e!2870587 call!321189)))

(declare-fun b!4602054 () Bool)

(declare-fun e!2870588 () List!51229)

(assert (=> b!4602054 (= e!2870588 (insertStrictlySorted!494 (t!358223 (toList!4671 lt!1760292)) (_1!29176 lt!1760293) (_2!29176 lt!1760293)))))

(declare-fun b!4602055 () Bool)

(assert (=> b!4602055 (= e!2870589 call!321187)))

(declare-fun d!1449428 () Bool)

(assert (=> d!1449428 e!2870585))

(declare-fun res!1925188 () Bool)

(assert (=> d!1449428 (=> (not res!1925188) (not e!2870585))))

(assert (=> d!1449428 (= res!1925188 (isStrictlySorted!545 lt!1760961))))

(assert (=> d!1449428 (= lt!1760961 e!2870586)))

(declare-fun c!788416 () Bool)

(assert (=> d!1449428 (= c!788416 (and ((_ is Cons!51105) (toList!4671 lt!1760292)) (bvslt (_1!29176 (h!57075 (toList!4671 lt!1760292))) (_1!29176 lt!1760293))))))

(assert (=> d!1449428 (isStrictlySorted!545 (toList!4671 lt!1760292))))

(assert (=> d!1449428 (= (insertStrictlySorted!494 (toList!4671 lt!1760292) (_1!29176 lt!1760293) (_2!29176 lt!1760293)) lt!1760961)))

(declare-fun b!4602056 () Bool)

(assert (=> b!4602056 (= e!2870585 (contains!14067 lt!1760961 (tuple2!51765 (_1!29176 lt!1760293) (_2!29176 lt!1760293))))))

(declare-fun bm!321183 () Bool)

(assert (=> bm!321183 (= call!321188 ($colon$colon!1048 e!2870588 (ite c!788416 (h!57075 (toList!4671 lt!1760292)) (tuple2!51765 (_1!29176 lt!1760293) (_2!29176 lt!1760293)))))))

(declare-fun c!788415 () Bool)

(assert (=> bm!321183 (= c!788415 c!788416)))

(declare-fun b!4602057 () Bool)

(declare-fun c!788414 () Bool)

(assert (=> b!4602057 (= e!2870588 (ite c!788413 (t!358223 (toList!4671 lt!1760292)) (ite c!788414 (Cons!51105 (h!57075 (toList!4671 lt!1760292)) (t!358223 (toList!4671 lt!1760292))) Nil!51105)))))

(declare-fun b!4602058 () Bool)

(assert (=> b!4602058 (= c!788414 (and ((_ is Cons!51105) (toList!4671 lt!1760292)) (bvsgt (_1!29176 (h!57075 (toList!4671 lt!1760292))) (_1!29176 lt!1760293))))))

(assert (=> b!4602058 (= e!2870589 e!2870587)))

(declare-fun bm!321184 () Bool)

(assert (=> bm!321184 (= call!321187 call!321188)))

(assert (= (and d!1449428 c!788416) b!4602052))

(assert (= (and d!1449428 (not c!788416)) b!4602049))

(assert (= (and b!4602049 c!788413) b!4602055))

(assert (= (and b!4602049 (not c!788413)) b!4602058))

(assert (= (and b!4602058 c!788414) b!4602053))

(assert (= (and b!4602058 (not c!788414)) b!4602051))

(assert (= (or b!4602053 b!4602051) bm!321182))

(assert (= (or b!4602055 bm!321182) bm!321184))

(assert (= (or b!4602052 bm!321184) bm!321183))

(assert (= (and bm!321183 c!788415) b!4602054))

(assert (= (and bm!321183 (not c!788415)) b!4602057))

(assert (= (and d!1449428 res!1925188) b!4602050))

(assert (= (and b!4602050 res!1925187) b!4602056))

(declare-fun m!5430563 () Bool)

(assert (=> bm!321183 m!5430563))

(declare-fun m!5430565 () Bool)

(assert (=> b!4602054 m!5430565))

(declare-fun m!5430567 () Bool)

(assert (=> d!1449428 m!5430567))

(assert (=> d!1449428 m!5429749))

(declare-fun m!5430569 () Bool)

(assert (=> b!4602050 m!5430569))

(declare-fun m!5430571 () Bool)

(assert (=> b!4602056 m!5430571))

(assert (=> d!1448978 d!1449428))

(declare-fun bs!1013295 () Bool)

(declare-fun b!4602066 () Bool)

(assert (= bs!1013295 (and b!4602066 b!4601857)))

(declare-fun lambda!186849 () Int)

(assert (=> bs!1013295 (= (= (t!358222 (toList!4672 lt!1760307)) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186849 lambda!186785))))

(declare-fun bs!1013296 () Bool)

(assert (= bs!1013296 (and b!4602066 b!4601932)))

(assert (=> bs!1013296 (= (= (t!358222 (toList!4672 lt!1760307)) (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186849 lambda!186802))))

(declare-fun bs!1013297 () Bool)

(assert (= bs!1013297 (and b!4602066 b!4601937)))

(assert (=> bs!1013297 (= (= (t!358222 (toList!4672 lt!1760307)) (toList!4672 lt!1760520)) (= lambda!186849 lambda!186804))))

(declare-fun bs!1013298 () Bool)

(assert (= bs!1013298 (and b!4602066 b!4601492)))

(assert (=> bs!1013298 (= (= (t!358222 (toList!4672 lt!1760307)) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186849 lambda!186723))))

(declare-fun bs!1013299 () Bool)

(assert (= bs!1013299 (and b!4602066 b!4601619)))

(assert (=> bs!1013299 (= (= (t!358222 (toList!4672 lt!1760307)) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186849 lambda!186725))))

(declare-fun bs!1013300 () Bool)

(assert (= bs!1013300 (and b!4602066 b!4601846)))

(assert (=> bs!1013300 (= (= (t!358222 (toList!4672 lt!1760307)) (toList!4672 lt!1760307)) (= lambda!186849 lambda!186781))))

(declare-fun bs!1013301 () Bool)

(assert (= bs!1013301 (and b!4602066 b!4601861)))

(assert (=> bs!1013301 (= (= (t!358222 (toList!4672 lt!1760307)) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (= lambda!186849 lambda!186783))))

(declare-fun bs!1013302 () Bool)

(assert (= bs!1013302 (and b!4602066 b!4601653)))

(assert (=> bs!1013302 (= (= (t!358222 (toList!4672 lt!1760307)) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (= lambda!186849 lambda!186735))))

(declare-fun bs!1013303 () Bool)

(assert (= bs!1013303 (and b!4602066 b!4601854)))

(assert (=> bs!1013303 (= (= (t!358222 (toList!4672 lt!1760307)) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))) (= lambda!186849 lambda!186784))))

(declare-fun bs!1013304 () Bool)

(assert (= bs!1013304 (and b!4602066 b!4601649)))

(assert (=> bs!1013304 (= (= (t!358222 (toList!4672 lt!1760307)) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186849 lambda!186737))))

(declare-fun bs!1013305 () Bool)

(assert (= bs!1013305 (and b!4602066 b!4601646)))

(assert (=> bs!1013305 (= (= (t!358222 (toList!4672 lt!1760307)) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308))))) (= lambda!186849 lambda!186736))))

(assert (=> b!4602066 true))

(declare-fun bs!1013306 () Bool)

(declare-fun b!4602059 () Bool)

(assert (= bs!1013306 (and b!4602059 b!4601857)))

(declare-fun lambda!186850 () Int)

(assert (=> bs!1013306 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186850 lambda!186785))))

(declare-fun bs!1013307 () Bool)

(assert (= bs!1013307 (and b!4602059 b!4601932)))

(assert (=> bs!1013307 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186850 lambda!186802))))

(declare-fun bs!1013308 () Bool)

(assert (= bs!1013308 (and b!4602059 b!4601937)))

(assert (=> bs!1013308 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (toList!4672 lt!1760520)) (= lambda!186850 lambda!186804))))

(declare-fun bs!1013309 () Bool)

(assert (= bs!1013309 (and b!4602059 b!4601492)))

(assert (=> bs!1013309 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186850 lambda!186723))))

(declare-fun bs!1013310 () Bool)

(assert (= bs!1013310 (and b!4602059 b!4601619)))

(assert (=> bs!1013310 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186850 lambda!186725))))

(declare-fun bs!1013311 () Bool)

(assert (= bs!1013311 (and b!4602059 b!4602066)))

(assert (=> bs!1013311 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (t!358222 (toList!4672 lt!1760307))) (= lambda!186850 lambda!186849))))

(declare-fun bs!1013312 () Bool)

(assert (= bs!1013312 (and b!4602059 b!4601846)))

(assert (=> bs!1013312 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (toList!4672 lt!1760307)) (= lambda!186850 lambda!186781))))

(declare-fun bs!1013313 () Bool)

(assert (= bs!1013313 (and b!4602059 b!4601861)))

(assert (=> bs!1013313 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (= lambda!186850 lambda!186783))))

(declare-fun bs!1013314 () Bool)

(assert (= bs!1013314 (and b!4602059 b!4601653)))

(assert (=> bs!1013314 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (= lambda!186850 lambda!186735))))

(declare-fun bs!1013315 () Bool)

(assert (= bs!1013315 (and b!4602059 b!4601854)))

(assert (=> bs!1013315 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))) (= lambda!186850 lambda!186784))))

(declare-fun bs!1013316 () Bool)

(assert (= bs!1013316 (and b!4602059 b!4601649)))

(assert (=> bs!1013316 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186850 lambda!186737))))

(declare-fun bs!1013317 () Bool)

(assert (= bs!1013317 (and b!4602059 b!4601646)))

(assert (=> bs!1013317 (= (= (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307))) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308))))) (= lambda!186850 lambda!186736))))

(assert (=> b!4602059 true))

(declare-fun bs!1013318 () Bool)

(declare-fun b!4602062 () Bool)

(assert (= bs!1013318 (and b!4602062 b!4601857)))

(declare-fun lambda!186851 () Int)

(assert (=> bs!1013318 (= (= (toList!4672 lt!1760307) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186851 lambda!186785))))

(declare-fun bs!1013319 () Bool)

(assert (= bs!1013319 (and b!4602062 b!4601932)))

(assert (=> bs!1013319 (= (= (toList!4672 lt!1760307) (toList!4672 (extractMap!1388 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))) (= lambda!186851 lambda!186802))))

(declare-fun bs!1013320 () Bool)

(assert (= bs!1013320 (and b!4602062 b!4602059)))

(assert (=> bs!1013320 (= (= (toList!4672 lt!1760307) (Cons!51104 (h!57074 (toList!4672 lt!1760307)) (t!358222 (toList!4672 lt!1760307)))) (= lambda!186851 lambda!186850))))

(declare-fun bs!1013321 () Bool)

(assert (= bs!1013321 (and b!4602062 b!4601937)))

(assert (=> bs!1013321 (= (= (toList!4672 lt!1760307) (toList!4672 lt!1760520)) (= lambda!186851 lambda!186804))))

(declare-fun bs!1013322 () Bool)

(assert (= bs!1013322 (and b!4602062 b!4601492)))

(assert (=> bs!1013322 (= (= (toList!4672 lt!1760307) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186851 lambda!186723))))

(declare-fun bs!1013323 () Bool)

(assert (= bs!1013323 (and b!4602062 b!4601619)))

(assert (=> bs!1013323 (= (= (toList!4672 lt!1760307) (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (= lambda!186851 lambda!186725))))

(declare-fun bs!1013324 () Bool)

(assert (= bs!1013324 (and b!4602062 b!4602066)))

(assert (=> bs!1013324 (= (= (toList!4672 lt!1760307) (t!358222 (toList!4672 lt!1760307))) (= lambda!186851 lambda!186849))))

(declare-fun bs!1013325 () Bool)

(assert (= bs!1013325 (and b!4602062 b!4601846)))

(assert (=> bs!1013325 (= lambda!186851 lambda!186781)))

(declare-fun bs!1013326 () Bool)

(assert (= bs!1013326 (and b!4602062 b!4601861)))

(assert (=> bs!1013326 (= (= (toList!4672 lt!1760307) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477))))) (= lambda!186851 lambda!186783))))

(declare-fun bs!1013327 () Bool)

(assert (= bs!1013327 (and b!4602062 b!4601653)))

(assert (=> bs!1013327 (= (= (toList!4672 lt!1760307) (t!358222 (toList!4672 (extractMap!1388 lt!1760308)))) (= lambda!186851 lambda!186735))))

(declare-fun bs!1013328 () Bool)

(assert (= bs!1013328 (and b!4602062 b!4601854)))

(assert (=> bs!1013328 (= (= (toList!4672 lt!1760307) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))) (t!358222 (toList!4672 (extractMap!1388 (toList!4671 lm!1477)))))) (= lambda!186851 lambda!186784))))

(declare-fun bs!1013329 () Bool)

(assert (= bs!1013329 (and b!4602062 b!4601649)))

(assert (=> bs!1013329 (= (= (toList!4672 lt!1760307) (toList!4672 (extractMap!1388 lt!1760308))) (= lambda!186851 lambda!186737))))

(declare-fun bs!1013330 () Bool)

(assert (= bs!1013330 (and b!4602062 b!4601646)))

(assert (=> bs!1013330 (= (= (toList!4672 lt!1760307) (Cons!51104 (h!57074 (toList!4672 (extractMap!1388 lt!1760308))) (t!358222 (toList!4672 (extractMap!1388 lt!1760308))))) (= lambda!186851 lambda!186736))))

(assert (=> b!4602062 true))

(declare-fun bs!1013331 () Bool)

(declare-fun b!4602060 () Bool)

(assert (= bs!1013331 (and b!4602060 b!4601855)))

(declare-fun lambda!186852 () Int)

(assert (=> bs!1013331 (= lambda!186852 lambda!186786)))

(declare-fun bs!1013332 () Bool)

(assert (= bs!1013332 (and b!4602060 b!4601647)))

(assert (=> bs!1013332 (= lambda!186852 lambda!186738)))

(declare-fun bs!1013333 () Bool)

(assert (= bs!1013333 (and b!4602060 b!4601493)))

(assert (=> bs!1013333 (= lambda!186852 lambda!186724)))

(declare-fun bs!1013334 () Bool)

(assert (= bs!1013334 (and b!4602060 b!4601847)))

(assert (=> bs!1013334 (= lambda!186852 lambda!186782)))

(declare-fun bs!1013335 () Bool)

(assert (= bs!1013335 (and b!4602060 b!4601933)))

(assert (=> bs!1013335 (= lambda!186852 lambda!186803)))

(declare-fun bs!1013336 () Bool)

(assert (= bs!1013336 (and b!4602060 b!4601938)))

(assert (=> bs!1013336 (= lambda!186852 lambda!186805)))

(declare-fun bs!1013337 () Bool)

(assert (= bs!1013337 (and b!4602060 b!4601620)))

(assert (=> bs!1013337 (= lambda!186852 lambda!186726)))

(declare-fun e!2870591 () List!51231)

(assert (=> b!4602059 (= e!2870591 (Cons!51107 (_1!29175 (h!57074 (toList!4672 lt!1760307))) (getKeysList!579 (t!358222 (toList!4672 lt!1760307)))))))

(declare-fun c!788419 () Bool)

(assert (=> b!4602059 (= c!788419 (containsKey!2178 (t!358222 (toList!4672 lt!1760307)) (_1!29175 (h!57074 (toList!4672 lt!1760307)))))))

(declare-fun lt!1760966 () Unit!108559)

(declare-fun e!2870590 () Unit!108559)

(assert (=> b!4602059 (= lt!1760966 e!2870590)))

(declare-fun c!788418 () Bool)

(assert (=> b!4602059 (= c!788418 (contains!14069 (getKeysList!579 (t!358222 (toList!4672 lt!1760307))) (_1!29175 (h!57074 (toList!4672 lt!1760307)))))))

(declare-fun lt!1760963 () Unit!108559)

(declare-fun e!2870593 () Unit!108559)

(assert (=> b!4602059 (= lt!1760963 e!2870593)))

(declare-fun lt!1760968 () List!51231)

(assert (=> b!4602059 (= lt!1760968 (getKeysList!579 (t!358222 (toList!4672 lt!1760307))))))

(declare-fun lt!1760962 () Unit!108559)

(assert (=> b!4602059 (= lt!1760962 (lemmaForallContainsAddHeadPreserves!235 (t!358222 (toList!4672 lt!1760307)) lt!1760968 (h!57074 (toList!4672 lt!1760307))))))

(assert (=> b!4602059 (forall!10621 lt!1760968 lambda!186850)))

(declare-fun lt!1760964 () Unit!108559)

(assert (=> b!4602059 (= lt!1760964 lt!1760962)))

(declare-fun lt!1760967 () List!51231)

(declare-fun e!2870592 () Bool)

(assert (=> b!4602060 (= e!2870592 (= (content!8664 lt!1760967) (content!8664 (map!11292 (toList!4672 lt!1760307) lambda!186852))))))

(declare-fun b!4602061 () Bool)

(assert (=> b!4602061 false))

(declare-fun Unit!108737 () Unit!108559)

(assert (=> b!4602061 (= e!2870590 Unit!108737)))

(declare-fun res!1925189 () Bool)

(assert (=> b!4602062 (=> (not res!1925189) (not e!2870592))))

(assert (=> b!4602062 (= res!1925189 (forall!10621 lt!1760967 lambda!186851))))

(declare-fun b!4602063 () Bool)

(declare-fun Unit!108738 () Unit!108559)

(assert (=> b!4602063 (= e!2870593 Unit!108738)))

(declare-fun b!4602065 () Bool)

(declare-fun res!1925191 () Bool)

(assert (=> b!4602065 (=> (not res!1925191) (not e!2870592))))

(assert (=> b!4602065 (= res!1925191 (= (length!486 lt!1760967) (length!487 (toList!4672 lt!1760307))))))

(assert (=> b!4602066 false))

(declare-fun lt!1760965 () Unit!108559)

(assert (=> b!4602066 (= lt!1760965 (forallContained!2870 (getKeysList!579 (t!358222 (toList!4672 lt!1760307))) lambda!186849 (_1!29175 (h!57074 (toList!4672 lt!1760307)))))))

(declare-fun Unit!108739 () Unit!108559)

(assert (=> b!4602066 (= e!2870593 Unit!108739)))

(declare-fun b!4602067 () Bool)

(declare-fun Unit!108740 () Unit!108559)

(assert (=> b!4602067 (= e!2870590 Unit!108740)))

(declare-fun b!4602064 () Bool)

(assert (=> b!4602064 (= e!2870591 Nil!51107)))

(declare-fun d!1449430 () Bool)

(assert (=> d!1449430 e!2870592))

(declare-fun res!1925190 () Bool)

(assert (=> d!1449430 (=> (not res!1925190) (not e!2870592))))

(assert (=> d!1449430 (= res!1925190 (noDuplicate!815 lt!1760967))))

(assert (=> d!1449430 (= lt!1760967 e!2870591)))

(declare-fun c!788417 () Bool)

(assert (=> d!1449430 (= c!788417 ((_ is Cons!51104) (toList!4672 lt!1760307)))))

(assert (=> d!1449430 (invariantList!1130 (toList!4672 lt!1760307))))

(assert (=> d!1449430 (= (getKeysList!579 (toList!4672 lt!1760307)) lt!1760967)))

(assert (= (and d!1449430 c!788417) b!4602059))

(assert (= (and d!1449430 (not c!788417)) b!4602064))

(assert (= (and b!4602059 c!788419) b!4602061))

(assert (= (and b!4602059 (not c!788419)) b!4602067))

(assert (= (and b!4602059 c!788418) b!4602066))

(assert (= (and b!4602059 (not c!788418)) b!4602063))

(assert (= (and d!1449430 res!1925190) b!4602065))

(assert (= (and b!4602065 res!1925191) b!4602062))

(assert (= (and b!4602062 res!1925189) b!4602060))

(declare-fun m!5430573 () Bool)

(assert (=> b!4602066 m!5430573))

(assert (=> b!4602066 m!5430573))

(declare-fun m!5430575 () Bool)

(assert (=> b!4602066 m!5430575))

(declare-fun m!5430577 () Bool)

(assert (=> d!1449430 m!5430577))

(assert (=> d!1449430 m!5430443))

(declare-fun m!5430579 () Bool)

(assert (=> b!4602065 m!5430579))

(assert (=> b!4602065 m!5430043))

(declare-fun m!5430581 () Bool)

(assert (=> b!4602060 m!5430581))

(declare-fun m!5430583 () Bool)

(assert (=> b!4602060 m!5430583))

(assert (=> b!4602060 m!5430583))

(declare-fun m!5430585 () Bool)

(assert (=> b!4602060 m!5430585))

(declare-fun m!5430587 () Bool)

(assert (=> b!4602062 m!5430587))

(assert (=> b!4602059 m!5430573))

(declare-fun m!5430589 () Bool)

(assert (=> b!4602059 m!5430589))

(declare-fun m!5430591 () Bool)

(assert (=> b!4602059 m!5430591))

(declare-fun m!5430593 () Bool)

(assert (=> b!4602059 m!5430593))

(assert (=> b!4602059 m!5430573))

(declare-fun m!5430595 () Bool)

(assert (=> b!4602059 m!5430595))

(assert (=> b!4601185 d!1449430))

(declare-fun tp!1340566 () Bool)

(declare-fun b!4602068 () Bool)

(declare-fun e!2870594 () Bool)

(assert (=> b!4602068 (= e!2870594 (and tp_is_empty!28605 tp_is_empty!28607 tp!1340566))))

(assert (=> b!4601478 (= tp!1340565 e!2870594)))

(assert (= (and b!4601478 ((_ is Cons!51104) (t!358222 (t!358222 newBucket!178)))) b!4602068))

(declare-fun tp!1340567 () Bool)

(declare-fun e!2870595 () Bool)

(declare-fun b!4602069 () Bool)

(assert (=> b!4602069 (= e!2870595 (and tp_is_empty!28605 tp_is_empty!28607 tp!1340567))))

(assert (=> b!4601473 (= tp!1340561 e!2870595)))

(assert (= (and b!4601473 ((_ is Cons!51104) (_2!29176 (h!57075 (toList!4671 lm!1477))))) b!4602069))

(declare-fun b!4602070 () Bool)

(declare-fun e!2870596 () Bool)

(declare-fun tp!1340568 () Bool)

(declare-fun tp!1340569 () Bool)

(assert (=> b!4602070 (= e!2870596 (and tp!1340568 tp!1340569))))

(assert (=> b!4601473 (= tp!1340562 e!2870596)))

(assert (= (and b!4601473 ((_ is Cons!51105) (t!358223 (toList!4671 lm!1477)))) b!4602070))

(declare-fun b_lambda!169631 () Bool)

(assert (= b_lambda!169597 (or d!1448988 b_lambda!169631)))

(declare-fun bs!1013339 () Bool)

(declare-fun d!1449436 () Bool)

(assert (= bs!1013339 (and d!1449436 d!1448988)))

(assert (=> bs!1013339 (= (dynLambda!21405 lambda!186677 (h!57075 (toList!4671 lm!1477))) (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(assert (=> bs!1013339 m!5429029))

(assert (=> b!4601595 d!1449436))

(declare-fun b_lambda!169633 () Bool)

(assert (= b_lambda!169621 (or start!459328 b_lambda!169633)))

(assert (=> d!1449366 d!1449126))

(declare-fun b_lambda!169635 () Bool)

(assert (= b_lambda!169617 (or d!1449064 b_lambda!169635)))

(declare-fun bs!1013340 () Bool)

(declare-fun d!1449438 () Bool)

(assert (= bs!1013340 (and d!1449438 d!1449064)))

(assert (=> bs!1013340 (= (dynLambda!21405 lambda!186698 (h!57075 (t!358223 (toList!4671 lm!1477)))) (noDuplicateKeys!1328 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477))))))))

(assert (=> bs!1013340 m!5430247))

(assert (=> b!4601945 d!1449438))

(declare-fun b_lambda!169637 () Bool)

(assert (= b_lambda!169619 (or d!1448970 b_lambda!169637)))

(declare-fun bs!1013341 () Bool)

(declare-fun d!1449440 () Bool)

(assert (= bs!1013341 (and d!1449440 d!1448970)))

(assert (=> bs!1013341 (= (dynLambda!21405 lambda!186671 (h!57075 (toList!4671 lm!1477))) (allKeysSameHash!1184 (_2!29176 (h!57075 (toList!4671 lm!1477))) (_1!29176 (h!57075 (toList!4671 lm!1477))) hashF!1107))))

(declare-fun m!5430601 () Bool)

(assert (=> bs!1013341 m!5430601))

(assert (=> b!4601963 d!1449440))

(declare-fun b_lambda!169639 () Bool)

(assert (= b_lambda!169615 (or d!1449116 b_lambda!169639)))

(declare-fun bs!1013342 () Bool)

(declare-fun d!1449442 () Bool)

(assert (= bs!1013342 (and d!1449442 d!1449116)))

(assert (=> bs!1013342 (= (dynLambda!21405 lambda!186715 (h!57075 (Cons!51105 lt!1760293 Nil!51105))) (noDuplicateKeys!1328 (_2!29176 (h!57075 (Cons!51105 lt!1760293 Nil!51105)))))))

(assert (=> bs!1013342 m!5430203))

(assert (=> b!4601923 d!1449442))

(declare-fun b_lambda!169641 () Bool)

(assert (= b_lambda!169611 (or d!1449044 b_lambda!169641)))

(declare-fun bs!1013343 () Bool)

(declare-fun d!1449444 () Bool)

(assert (= bs!1013343 (and d!1449444 d!1449044)))

(assert (=> bs!1013343 (= (dynLambda!21405 lambda!186697 (h!57075 (toList!4671 lm!1477))) (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(assert (=> bs!1013343 m!5429029))

(assert (=> b!4601889 d!1449444))

(declare-fun b_lambda!169643 () Bool)

(assert (= b_lambda!169613 (or d!1449108 b_lambda!169643)))

(declare-fun bs!1013344 () Bool)

(declare-fun d!1449446 () Bool)

(assert (= bs!1013344 (and d!1449446 d!1449108)))

(assert (=> bs!1013344 (= (dynLambda!21405 lambda!186713 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105))) (noDuplicateKeys!1328 (_2!29176 (h!57075 (Cons!51105 (tuple2!51765 hash!344 (_2!29176 (h!57075 (toList!4671 lm!1477)))) Nil!51105)))))))

(assert (=> bs!1013344 m!5430123))

(assert (=> b!4601893 d!1449446))

(declare-fun b_lambda!169645 () Bool)

(assert (= b_lambda!169629 (or d!1449080 b_lambda!169645)))

(declare-fun bs!1013345 () Bool)

(declare-fun d!1449448 () Bool)

(assert (= bs!1013345 (and d!1449448 d!1449080)))

(assert (=> bs!1013345 (= (dynLambda!21405 lambda!186711 (h!57075 (toList!4671 lm!1477))) (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lm!1477)))))))

(assert (=> bs!1013345 m!5429029))

(assert (=> b!4602034 d!1449448))

(declare-fun b_lambda!169647 () Bool)

(assert (= b_lambda!169605 (or start!459328 b_lambda!169647)))

(declare-fun bs!1013346 () Bool)

(declare-fun d!1449450 () Bool)

(assert (= bs!1013346 (and d!1449450 start!459328)))

(assert (=> bs!1013346 (= (dynLambda!21405 lambda!186668 (h!57075 (t!358223 (toList!4671 lm!1477)))) (noDuplicateKeys!1328 (_2!29176 (h!57075 (t!358223 (toList!4671 lm!1477))))))))

(assert (=> bs!1013346 m!5430247))

(assert (=> b!4601839 d!1449450))

(declare-fun b_lambda!169649 () Bool)

(assert (= b_lambda!169599 (or d!1449032 b_lambda!169649)))

(declare-fun bs!1013347 () Bool)

(declare-fun d!1449452 () Bool)

(assert (= bs!1013347 (and d!1449452 d!1449032)))

(assert (=> bs!1013347 (= (dynLambda!21405 lambda!186686 (h!57075 (toList!4671 lt!1760292))) (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lt!1760292)))))))

(assert (=> bs!1013347 m!5430361))

(assert (=> b!4601624 d!1449452))

(declare-fun b_lambda!169651 () Bool)

(assert (= b_lambda!169623 (or d!1449066 b_lambda!169651)))

(declare-fun bs!1013348 () Bool)

(declare-fun d!1449454 () Bool)

(assert (= bs!1013348 (and d!1449454 d!1449066)))

(assert (=> bs!1013348 (= (dynLambda!21405 lambda!186699 (h!57075 (toList!4671 lt!1760292))) (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 lt!1760292)))))))

(assert (=> bs!1013348 m!5430361))

(assert (=> b!4601982 d!1449454))

(declare-fun b_lambda!169653 () Bool)

(assert (= b_lambda!169609 (or d!1449104 b_lambda!169653)))

(declare-fun bs!1013349 () Bool)

(declare-fun d!1449456 () Bool)

(assert (= bs!1013349 (and d!1449456 d!1449104)))

(assert (=> bs!1013349 (= (dynLambda!21407 lambda!186712 (h!57074 newBucket!178)) (= (hash!3239 hashF!1107 (_1!29175 (h!57074 newBucket!178))) hash!344))))

(declare-fun m!5430603 () Bool)

(assert (=> bs!1013349 m!5430603))

(assert (=> b!4601887 d!1449456))

(declare-fun b_lambda!169657 () Bool)

(assert (= b_lambda!169627 (or d!1449118 b_lambda!169657)))

(declare-fun bs!1013350 () Bool)

(declare-fun d!1449458 () Bool)

(assert (= bs!1013350 (and d!1449458 d!1449118)))

(assert (=> bs!1013350 (= (dynLambda!21405 lambda!186718 (h!57075 (toList!4671 (ListLongMap!3304 lt!1760308)))) (noDuplicateKeys!1328 (_2!29176 (h!57075 (toList!4671 (ListLongMap!3304 lt!1760308))))))))

(declare-fun m!5430605 () Bool)

(assert (=> bs!1013350 m!5430605))

(assert (=> b!4602022 d!1449458))

(declare-fun b_lambda!169659 () Bool)

(assert (= b_lambda!169607 (or d!1449114 b_lambda!169659)))

(declare-fun bs!1013351 () Bool)

(declare-fun d!1449460 () Bool)

(assert (= bs!1013351 (and d!1449460 d!1449114)))

(assert (=> bs!1013351 (= (dynLambda!21405 lambda!186714 (h!57075 lt!1760308)) (noDuplicateKeys!1328 (_2!29176 (h!57075 lt!1760308))))))

(assert (=> bs!1013351 m!5429909))

(assert (=> b!4601848 d!1449460))

(declare-fun b_lambda!169661 () Bool)

(assert (= b_lambda!169625 (or d!1449036 b_lambda!169661)))

(declare-fun bs!1013352 () Bool)

(declare-fun d!1449462 () Bool)

(assert (= bs!1013352 (and d!1449462 d!1449036)))

(assert (=> bs!1013352 (= (dynLambda!21407 lambda!186689 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477))))) (= (hash!3239 hashF!1107 (_1!29175 (h!57074 (_2!29176 (h!57075 (toList!4671 lm!1477)))))) hash!344))))

(declare-fun m!5430607 () Bool)

(assert (=> bs!1013352 m!5430607))

(assert (=> b!4601984 d!1449462))

(check-sat (not b!4601973) (not b!4601863) (not bm!321157) (not b!4602028) (not bm!321161) (not b!4601492) (not b!4602007) (not b!4601740) (not d!1449220) (not b!4601855) (not b!4601964) (not b!4601659) (not b!4601957) (not b!4601865) (not b!4601620) (not b!4601898) (not b!4601901) (not b!4602048) (not b!4601947) (not b!4601956) (not bm!321162) (not d!1449398) (not b!4602047) (not bm!321164) (not b!4601576) (not bm!321125) (not bm!321145) (not d!1449322) (not d!1449192) (not d!1449158) (not bs!1013351) (not bm!321129) (not b!4601731) (not d!1449130) (not b!4601958) (not b!4602029) (not d!1449354) (not bs!1013343) (not b!4601894) (not b!4601759) (not b!4602035) (not b!4601514) (not b!4602002) (not d!1449288) (not b!4601742) (not d!1449244) (not b!4601599) (not bm!321170) (not b!4601974) (not b!4601959) (not b!4602026) (not b!4601970) (not b!4601513) (not d!1449170) (not b!4602005) (not d!1449280) (not b_lambda!169647) (not d!1449362) (not b!4601652) (not b!4601575) (not d!1449286) (not b_lambda!169643) (not b!4602054) (not b_lambda!169661) (not b_lambda!169593) (not b_lambda!169653) (not b!4601846) (not d!1449248) (not bm!321171) (not d!1449240) (not b!4601915) (not b!4601510) (not d!1449164) (not b!4601621) (not bm!321146) (not b!4601864) (not bm!321128) (not b!4601916) (not b!4601941) (not b!4601937) (not d!1449356) (not d!1449174) (not d!1449316) (not b!4601618) (not d!1449216) (not b!4601734) (not d!1449406) (not bm!321183) (not b!4601854) (not b!4601577) (not b_lambda!169649) (not b!4601849) (not b!4601625) (not b!4602070) (not b!4601919) (not b!4601519) (not b!4601814) (not b!4601732) (not b!4601882) (not d!1449186) (not d!1449428) (not d!1449132) (not d!1449336) (not b!4602040) (not b!4602001) (not bm!321163) (not b!4602027) (not d!1449344) (not d!1449426) (not b!4601484) (not b!4602060) (not d!1449270) (not b_lambda!169595) (not d!1449282) (not b!4601917) (not b!4601896) (not b!4601559) (not d!1449430) (not d!1449144) (not b!4601570) (not b!4601617) (not bm!321124) (not b_lambda!169631) (not d!1449284) (not bs!1013345) (not b!4602068) (not d!1449368) (not b!4601995) (not d!1449256) (not b!4602056) (not b!4601506) (not b!4601623) (not bm!321127) (not bm!321159) (not b!4601562) (not b!4601615) (not b!4601619) (not bm!321158) (not b!4601931) (not b!4601879) (not b!4601993) (not b!4601914) (not b!4601594) (not d!1449172) (not b!4602065) (not d!1449352) (not b_lambda!169637) (not bm!321160) (not b!4601491) (not b!4601845) (not b!4601991) (not d!1449194) (not d!1449364) (not d!1449304) (not bm!321168) (not b!4601647) (not bm!321126) (not d!1449384) (not d!1449190) (not b!4601866) (not b!4601944) (not d!1449326) (not b!4601999) (not d!1449396) (not b!4601924) (not d!1449138) (not d!1449154) (not b!4601838) (not b!4601646) (not b_lambda!169633) (not bm!321165) (not bs!1013342) (not d!1449222) (not b!4601913) (not d!1449152) (not d!1449252) (not b!4601744) (not b!4601603) (not b!4601890) (not bm!321111) (not b_lambda!169651) (not b_lambda!169659) (not b!4601816) (not b!4601840) (not bs!1013340) (not bm!321166) (not b!4601747) (not b!4601607) (not d!1449150) (not b!4601853) (not b!4601972) (not b!4601561) (not b!4601512) (not b!4601936) (not d!1449394) (not b!4601760) (not bs!1013347) (not b!4601847) (not b!4601892) (not b!4601572) (not d!1449338) (not d!1449160) (not b!4601614) tp_is_empty!28605 (not d!1449264) (not b!4601932) (not bs!1013344) (not b!4602045) (not b!4601938) (not b!4602004) (not b!4601579) (not b!4602062) (not b!4601930) (not b!4601872) (not b!4601810) (not d!1449314) tp_is_empty!28607 (not d!1449176) (not d!1449188) (not bm!321167) (not b!4601888) (not b_lambda!169645) (not b!4601596) (not d!1449140) (not d!1449380) (not b!4601590) (not b!4602000) (not b!4601977) (not b!4601658) (not bs!1013341) (not b!4601826) (not d!1449382) (not b!4601906) (not d!1449310) (not bs!1013348) (not bs!1013349) (not b!4601573) (not bs!1013350) (not b!4602066) (not bm!321155) (not b!4601837) (not d!1449298) (not b!4601860) (not b!4601983) (not bm!321172) (not b!4601493) (not d!1449386) (not d!1449420) (not b_lambda!169657) (not d!1449390) (not d!1449214) (not b!4601868) (not b_lambda!169635) (not b!4601857) (not b!4601649) (not d!1449348) (not b!4601880) (not b!4601935) (not b!4602009) (not b!4601564) (not bs!1013346) (not bm!321147) (not d!1449320) (not b_lambda!169641) (not b!4602050) (not b!4601733) (not b!4601900) (not b!4601653) (not b!4602006) (not b!4602059) (not b!4601961) (not b!4601613) (not bm!321169) (not b!4601902) (not d!1449324) (not b!4601836) (not b!4601933) (not b!4601592) (not bs!1013339) (not d!1449182) (not b!4601903) (not b!4601518) (not b!4601971) (not b!4601516) (not b!4602042) (not b!4601823) (not b!4601922) (not d!1449184) (not b!4601950) (not b!4601997) (not b_lambda!169639) (not b!4601861) (not b!4601904) (not d!1449142) (not b!4601627) (not b!4601985) (not d!1449342) (not b!4602069) (not b!4602023) (not b!4601517) (not d!1449332) (not b!4601820) (not bs!1013352) (not b!4601954) (not d!1449146) (not b!4601946))
(check-sat)
