; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!491302 () Bool)

(assert start!491302)

(declare-fun b!4782662 () Bool)

(declare-fun e!2985946 () Bool)

(declare-fun tp!1357506 () Bool)

(assert (=> b!4782662 (= e!2985946 tp!1357506)))

(declare-fun b!4782663 () Bool)

(declare-fun e!2985948 () Bool)

(declare-fun e!2985945 () Bool)

(assert (=> b!4782663 (= e!2985948 e!2985945)))

(declare-fun res!2030959 () Bool)

(assert (=> b!4782663 (=> res!2030959 e!2985945)))

(declare-datatypes ((K!15584 0))(
  ( (K!15585 (val!20773 Int)) )
))
(declare-datatypes ((V!15830 0))(
  ( (V!15831 (val!20774 Int)) )
))
(declare-datatypes ((tuple2!56520 0))(
  ( (tuple2!56521 (_1!31554 K!15584) (_2!31554 V!15830)) )
))
(declare-datatypes ((List!54143 0))(
  ( (Nil!54019) (Cons!54019 (h!60439 tuple2!56520) (t!361593 List!54143)) )
))
(declare-datatypes ((tuple2!56522 0))(
  ( (tuple2!56523 (_1!31555 (_ BitVec 64)) (_2!31555 List!54143)) )
))
(declare-datatypes ((List!54144 0))(
  ( (Nil!54020) (Cons!54020 (h!60440 tuple2!56522) (t!361594 List!54144)) )
))
(declare-datatypes ((ListLongMap!5177 0))(
  ( (ListLongMap!5178 (toList!6755 List!54144)) )
))
(declare-fun lm!2709 () ListLongMap!5177)

(declare-fun key!6641 () K!15584)

(declare-fun containsKey!3825 (List!54143 K!15584) Bool)

(assert (=> b!4782663 (= res!2030959 (containsKey!3825 (_2!31555 (h!60440 (toList!6755 lm!2709))) key!6641))))

(declare-fun apply!12893 (ListLongMap!5177 (_ BitVec 64)) List!54143)

(assert (=> b!4782663 (not (containsKey!3825 (apply!12893 lm!2709 (_1!31555 (h!60440 (toList!6755 lm!2709)))) key!6641))))

(declare-datatypes ((Unit!139336 0))(
  ( (Unit!139337) )
))
(declare-fun lt!1944859 () Unit!139336)

(declare-datatypes ((Hashable!6838 0))(
  ( (HashableExt!6837 (__x!32861 Int)) )
))
(declare-fun hashF!1687 () Hashable!6838)

(declare-fun lemmaNotSameHashThenCannotContainKey!192 (ListLongMap!5177 K!15584 (_ BitVec 64) Hashable!6838) Unit!139336)

(assert (=> b!4782663 (= lt!1944859 (lemmaNotSameHashThenCannotContainKey!192 lm!2709 key!6641 (_1!31555 (h!60440 (toList!6755 lm!2709))) hashF!1687))))

(declare-fun b!4782664 () Bool)

(declare-fun res!2030964 () Bool)

(declare-fun e!2985944 () Bool)

(assert (=> b!4782664 (=> (not res!2030964) (not e!2985944))))

(declare-fun allKeysSameHashInMap!2243 (ListLongMap!5177 Hashable!6838) Bool)

(assert (=> b!4782664 (= res!2030964 (allKeysSameHashInMap!2243 lm!2709 hashF!1687))))

(declare-fun b!4782665 () Bool)

(assert (=> b!4782665 (= e!2985944 (not e!2985948))))

(declare-fun res!2030960 () Bool)

(assert (=> b!4782665 (=> res!2030960 e!2985948)))

(declare-datatypes ((Option!12950 0))(
  ( (None!12949) (Some!12949 (v!48172 tuple2!56520)) )
))
(declare-fun lt!1944865 () Option!12950)

(declare-fun v!11584 () V!15830)

(declare-fun get!18375 (Option!12950) tuple2!56520)

(assert (=> b!4782665 (= res!2030960 (not (= (_2!31554 (get!18375 lt!1944865)) v!11584)))))

(declare-fun isDefined!10093 (Option!12950) Bool)

(assert (=> b!4782665 (isDefined!10093 lt!1944865)))

(declare-fun lt!1944870 () List!54143)

(declare-fun getPair!810 (List!54143 K!15584) Option!12950)

(assert (=> b!4782665 (= lt!1944865 (getPair!810 lt!1944870 key!6641))))

(declare-fun lt!1944867 () tuple2!56522)

(declare-fun lt!1944868 () Unit!139336)

(declare-fun lambda!228523 () Int)

(declare-fun forallContained!4078 (List!54144 Int tuple2!56522) Unit!139336)

(assert (=> b!4782665 (= lt!1944868 (forallContained!4078 (toList!6755 lm!2709) lambda!228523 lt!1944867))))

(declare-fun lt!1944861 () Unit!139336)

(declare-fun lemmaInGenMapThenGetPairDefined!584 (ListLongMap!5177 K!15584 Hashable!6838) Unit!139336)

(assert (=> b!4782665 (= lt!1944861 (lemmaInGenMapThenGetPairDefined!584 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1944864 () Unit!139336)

(assert (=> b!4782665 (= lt!1944864 (forallContained!4078 (toList!6755 lm!2709) lambda!228523 lt!1944867))))

(declare-fun contains!17564 (List!54144 tuple2!56522) Bool)

(assert (=> b!4782665 (contains!17564 (toList!6755 lm!2709) lt!1944867)))

(declare-fun lt!1944860 () (_ BitVec 64))

(assert (=> b!4782665 (= lt!1944867 (tuple2!56523 lt!1944860 lt!1944870))))

(declare-fun lt!1944871 () Unit!139336)

(declare-fun lemmaGetValueImpliesTupleContained!617 (ListLongMap!5177 (_ BitVec 64) List!54143) Unit!139336)

(assert (=> b!4782665 (= lt!1944871 (lemmaGetValueImpliesTupleContained!617 lm!2709 lt!1944860 lt!1944870))))

(assert (=> b!4782665 (= lt!1944870 (apply!12893 lm!2709 lt!1944860))))

(declare-fun contains!17565 (ListLongMap!5177 (_ BitVec 64)) Bool)

(assert (=> b!4782665 (contains!17565 lm!2709 lt!1944860)))

(declare-fun hash!4835 (Hashable!6838 K!15584) (_ BitVec 64))

(assert (=> b!4782665 (= lt!1944860 (hash!4835 hashF!1687 key!6641))))

(declare-fun lt!1944869 () Unit!139336)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1034 (ListLongMap!5177 K!15584 Hashable!6838) Unit!139336)

(assert (=> b!4782665 (= lt!1944869 (lemmaInGenMapThenLongMapContainsHash!1034 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6227 0))(
  ( (ListMap!6228 (toList!6756 List!54143)) )
))
(declare-fun contains!17566 (ListMap!6227 K!15584) Bool)

(declare-fun extractMap!2365 (List!54144) ListMap!6227)

(assert (=> b!4782665 (contains!17566 (extractMap!2365 (toList!6755 lm!2709)) key!6641)))

(declare-fun lt!1944863 () Unit!139336)

(declare-fun lemmaListContainsThenExtractedMapContains!686 (ListLongMap!5177 K!15584 Hashable!6838) Unit!139336)

(assert (=> b!4782665 (= lt!1944863 (lemmaListContainsThenExtractedMapContains!686 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4782666 () Bool)

(declare-fun res!2030963 () Bool)

(assert (=> b!4782666 (=> (not res!2030963) (not e!2985944))))

(declare-fun containsKeyBiggerList!494 (List!54144 K!15584) Bool)

(assert (=> b!4782666 (= res!2030963 (containsKeyBiggerList!494 (toList!6755 lm!2709) key!6641))))

(declare-fun res!2030962 () Bool)

(assert (=> start!491302 (=> (not res!2030962) (not e!2985944))))

(declare-fun forall!12134 (List!54144 Int) Bool)

(assert (=> start!491302 (= res!2030962 (forall!12134 (toList!6755 lm!2709) lambda!228523))))

(assert (=> start!491302 e!2985944))

(declare-fun inv!69610 (ListLongMap!5177) Bool)

(assert (=> start!491302 (and (inv!69610 lm!2709) e!2985946)))

(assert (=> start!491302 true))

(declare-fun tp_is_empty!33253 () Bool)

(assert (=> start!491302 tp_is_empty!33253))

(declare-fun tp_is_empty!33255 () Bool)

(assert (=> start!491302 tp_is_empty!33255))

(declare-fun b!4782667 () Bool)

(declare-fun e!2985947 () Bool)

(assert (=> b!4782667 (= e!2985945 e!2985947)))

(declare-fun res!2030958 () Bool)

(assert (=> b!4782667 (=> res!2030958 e!2985947)))

(declare-fun lt!1944866 () ListLongMap!5177)

(assert (=> b!4782667 (= res!2030958 (not (forall!12134 (toList!6755 lt!1944866) lambda!228523)))))

(declare-fun tail!9196 (ListLongMap!5177) ListLongMap!5177)

(assert (=> b!4782667 (= lt!1944866 (tail!9196 lm!2709))))

(declare-fun tail!9197 (List!54144) List!54144)

(assert (=> b!4782667 (containsKeyBiggerList!494 (tail!9197 (toList!6755 lm!2709)) key!6641)))

(declare-fun lt!1944862 () Unit!139336)

(declare-fun lemmaInBiggerListButNotHeadThenTail!18 (ListLongMap!5177 K!15584 Hashable!6838) Unit!139336)

(assert (=> b!4782667 (= lt!1944862 (lemmaInBiggerListButNotHeadThenTail!18 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4782668 () Bool)

(declare-fun res!2030961 () Bool)

(assert (=> b!4782668 (=> res!2030961 e!2985948)))

(get-info :version)

(assert (=> b!4782668 (= res!2030961 (or (and ((_ is Cons!54020) (toList!6755 lm!2709)) (= (_1!31555 (h!60440 (toList!6755 lm!2709))) lt!1944860)) (not ((_ is Cons!54020) (toList!6755 lm!2709)))))))

(declare-fun b!4782669 () Bool)

(declare-fun res!2030957 () Bool)

(assert (=> b!4782669 (=> res!2030957 e!2985947)))

(assert (=> b!4782669 (= res!2030957 (not (allKeysSameHashInMap!2243 lt!1944866 hashF!1687)))))

(declare-fun b!4782670 () Bool)

(assert (=> b!4782670 (= e!2985947 (containsKeyBiggerList!494 (toList!6755 lt!1944866) key!6641))))

(assert (= (and start!491302 res!2030962) b!4782664))

(assert (= (and b!4782664 res!2030964) b!4782666))

(assert (= (and b!4782666 res!2030963) b!4782665))

(assert (= (and b!4782665 (not res!2030960)) b!4782668))

(assert (= (and b!4782668 (not res!2030961)) b!4782663))

(assert (= (and b!4782663 (not res!2030959)) b!4782667))

(assert (= (and b!4782667 (not res!2030958)) b!4782669))

(assert (= (and b!4782669 (not res!2030957)) b!4782670))

(assert (= start!491302 b!4782662))

(declare-fun m!5760172 () Bool)

(assert (=> b!4782669 m!5760172))

(declare-fun m!5760174 () Bool)

(assert (=> b!4782663 m!5760174))

(declare-fun m!5760176 () Bool)

(assert (=> b!4782663 m!5760176))

(assert (=> b!4782663 m!5760176))

(declare-fun m!5760178 () Bool)

(assert (=> b!4782663 m!5760178))

(declare-fun m!5760180 () Bool)

(assert (=> b!4782663 m!5760180))

(declare-fun m!5760182 () Bool)

(assert (=> b!4782670 m!5760182))

(declare-fun m!5760184 () Bool)

(assert (=> b!4782664 m!5760184))

(declare-fun m!5760186 () Bool)

(assert (=> start!491302 m!5760186))

(declare-fun m!5760188 () Bool)

(assert (=> start!491302 m!5760188))

(declare-fun m!5760190 () Bool)

(assert (=> b!4782665 m!5760190))

(declare-fun m!5760192 () Bool)

(assert (=> b!4782665 m!5760192))

(declare-fun m!5760194 () Bool)

(assert (=> b!4782665 m!5760194))

(declare-fun m!5760196 () Bool)

(assert (=> b!4782665 m!5760196))

(declare-fun m!5760198 () Bool)

(assert (=> b!4782665 m!5760198))

(declare-fun m!5760200 () Bool)

(assert (=> b!4782665 m!5760200))

(declare-fun m!5760202 () Bool)

(assert (=> b!4782665 m!5760202))

(declare-fun m!5760204 () Bool)

(assert (=> b!4782665 m!5760204))

(declare-fun m!5760206 () Bool)

(assert (=> b!4782665 m!5760206))

(declare-fun m!5760208 () Bool)

(assert (=> b!4782665 m!5760208))

(assert (=> b!4782665 m!5760202))

(declare-fun m!5760210 () Bool)

(assert (=> b!4782665 m!5760210))

(declare-fun m!5760212 () Bool)

(assert (=> b!4782665 m!5760212))

(assert (=> b!4782665 m!5760206))

(declare-fun m!5760214 () Bool)

(assert (=> b!4782665 m!5760214))

(declare-fun m!5760216 () Bool)

(assert (=> b!4782665 m!5760216))

(declare-fun m!5760218 () Bool)

(assert (=> b!4782666 m!5760218))

(declare-fun m!5760220 () Bool)

(assert (=> b!4782667 m!5760220))

(declare-fun m!5760222 () Bool)

(assert (=> b!4782667 m!5760222))

(assert (=> b!4782667 m!5760222))

(declare-fun m!5760224 () Bool)

(assert (=> b!4782667 m!5760224))

(declare-fun m!5760226 () Bool)

(assert (=> b!4782667 m!5760226))

(declare-fun m!5760228 () Bool)

(assert (=> b!4782667 m!5760228))

(check-sat tp_is_empty!33253 (not b!4782662) (not b!4782670) (not b!4782669) tp_is_empty!33255 (not b!4782663) (not b!4782665) (not start!491302) (not b!4782664) (not b!4782666) (not b!4782667))
(check-sat)
(get-model)

(declare-fun d!1529328 () Bool)

(declare-datatypes ((Option!12953 0))(
  ( (None!12952) (Some!12952 (v!48179 List!54143)) )
))
(declare-fun get!18377 (Option!12953) List!54143)

(declare-fun getValueByKey!2290 (List!54144 (_ BitVec 64)) Option!12953)

(assert (=> d!1529328 (= (apply!12893 lm!2709 lt!1944860) (get!18377 (getValueByKey!2290 (toList!6755 lm!2709) lt!1944860)))))

(declare-fun bs!1152260 () Bool)

(assert (= bs!1152260 d!1529328))

(declare-fun m!5760262 () Bool)

(assert (=> bs!1152260 m!5760262))

(assert (=> bs!1152260 m!5760262))

(declare-fun m!5760264 () Bool)

(assert (=> bs!1152260 m!5760264))

(assert (=> b!4782665 d!1529328))

(declare-fun d!1529330 () Bool)

(declare-fun e!2985997 () Bool)

(assert (=> d!1529330 e!2985997))

(declare-fun res!2031002 () Bool)

(assert (=> d!1529330 (=> res!2031002 e!2985997)))

(declare-fun e!2985996 () Bool)

(assert (=> d!1529330 (= res!2031002 e!2985996)))

(declare-fun res!2031003 () Bool)

(assert (=> d!1529330 (=> (not res!2031003) (not e!2985996))))

(declare-fun lt!1944896 () Option!12950)

(declare-fun isEmpty!29366 (Option!12950) Bool)

(assert (=> d!1529330 (= res!2031003 (isEmpty!29366 lt!1944896))))

(declare-fun e!2985998 () Option!12950)

(assert (=> d!1529330 (= lt!1944896 e!2985998)))

(declare-fun c!815318 () Bool)

(assert (=> d!1529330 (= c!815318 (and ((_ is Cons!54019) lt!1944870) (= (_1!31554 (h!60439 lt!1944870)) key!6641)))))

(declare-fun noDuplicateKeys!2297 (List!54143) Bool)

(assert (=> d!1529330 (noDuplicateKeys!2297 lt!1944870)))

(assert (=> d!1529330 (= (getPair!810 lt!1944870 key!6641) lt!1944896)))

(declare-fun b!4782730 () Bool)

(assert (=> b!4782730 (= e!2985996 (not (containsKey!3825 lt!1944870 key!6641)))))

(declare-fun b!4782731 () Bool)

(assert (=> b!4782731 (= e!2985998 (Some!12949 (h!60439 lt!1944870)))))

(declare-fun b!4782732 () Bool)

(declare-fun res!2031004 () Bool)

(declare-fun e!2985995 () Bool)

(assert (=> b!4782732 (=> (not res!2031004) (not e!2985995))))

(assert (=> b!4782732 (= res!2031004 (= (_1!31554 (get!18375 lt!1944896)) key!6641))))

(declare-fun b!4782733 () Bool)

(declare-fun e!2985994 () Option!12950)

(assert (=> b!4782733 (= e!2985994 None!12949)))

(declare-fun b!4782734 () Bool)

(assert (=> b!4782734 (= e!2985994 (getPair!810 (t!361593 lt!1944870) key!6641))))

(declare-fun b!4782735 () Bool)

(declare-fun contains!17569 (List!54143 tuple2!56520) Bool)

(assert (=> b!4782735 (= e!2985995 (contains!17569 lt!1944870 (get!18375 lt!1944896)))))

(declare-fun b!4782736 () Bool)

(assert (=> b!4782736 (= e!2985998 e!2985994)))

(declare-fun c!815319 () Bool)

(assert (=> b!4782736 (= c!815319 ((_ is Cons!54019) lt!1944870))))

(declare-fun b!4782737 () Bool)

(assert (=> b!4782737 (= e!2985997 e!2985995)))

(declare-fun res!2031005 () Bool)

(assert (=> b!4782737 (=> (not res!2031005) (not e!2985995))))

(assert (=> b!4782737 (= res!2031005 (isDefined!10093 lt!1944896))))

(assert (= (and d!1529330 c!815318) b!4782731))

(assert (= (and d!1529330 (not c!815318)) b!4782736))

(assert (= (and b!4782736 c!815319) b!4782734))

(assert (= (and b!4782736 (not c!815319)) b!4782733))

(assert (= (and d!1529330 res!2031003) b!4782730))

(assert (= (and d!1529330 (not res!2031002)) b!4782737))

(assert (= (and b!4782737 res!2031005) b!4782732))

(assert (= (and b!4782732 res!2031004) b!4782735))

(declare-fun m!5760266 () Bool)

(assert (=> b!4782730 m!5760266))

(declare-fun m!5760268 () Bool)

(assert (=> d!1529330 m!5760268))

(declare-fun m!5760270 () Bool)

(assert (=> d!1529330 m!5760270))

(declare-fun m!5760272 () Bool)

(assert (=> b!4782734 m!5760272))

(declare-fun m!5760274 () Bool)

(assert (=> b!4782735 m!5760274))

(assert (=> b!4782735 m!5760274))

(declare-fun m!5760276 () Bool)

(assert (=> b!4782735 m!5760276))

(declare-fun m!5760278 () Bool)

(assert (=> b!4782737 m!5760278))

(assert (=> b!4782732 m!5760274))

(assert (=> b!4782665 d!1529330))

(declare-fun bs!1152261 () Bool)

(declare-fun d!1529332 () Bool)

(assert (= bs!1152261 (and d!1529332 start!491302)))

(declare-fun lambda!228533 () Int)

(assert (=> bs!1152261 (= lambda!228533 lambda!228523)))

(assert (=> d!1529332 (contains!17566 (extractMap!2365 (toList!6755 lm!2709)) key!6641)))

(declare-fun lt!1944907 () Unit!139336)

(declare-fun choose!34314 (ListLongMap!5177 K!15584 Hashable!6838) Unit!139336)

(assert (=> d!1529332 (= lt!1944907 (choose!34314 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1529332 (forall!12134 (toList!6755 lm!2709) lambda!228533)))

(assert (=> d!1529332 (= (lemmaListContainsThenExtractedMapContains!686 lm!2709 key!6641 hashF!1687) lt!1944907)))

(declare-fun bs!1152262 () Bool)

(assert (= bs!1152262 d!1529332))

(assert (=> bs!1152262 m!5760206))

(assert (=> bs!1152262 m!5760206))

(assert (=> bs!1152262 m!5760214))

(declare-fun m!5760300 () Bool)

(assert (=> bs!1152262 m!5760300))

(declare-fun m!5760302 () Bool)

(assert (=> bs!1152262 m!5760302))

(assert (=> b!4782665 d!1529332))

(declare-fun d!1529336 () Bool)

(declare-fun lt!1944910 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9657 (List!54144) (InoxSet tuple2!56522))

(assert (=> d!1529336 (= lt!1944910 (select (content!9657 (toList!6755 lm!2709)) lt!1944867))))

(declare-fun e!2986010 () Bool)

(assert (=> d!1529336 (= lt!1944910 e!2986010)))

(declare-fun res!2031013 () Bool)

(assert (=> d!1529336 (=> (not res!2031013) (not e!2986010))))

(assert (=> d!1529336 (= res!2031013 ((_ is Cons!54020) (toList!6755 lm!2709)))))

(assert (=> d!1529336 (= (contains!17564 (toList!6755 lm!2709) lt!1944867) lt!1944910)))

(declare-fun b!4782751 () Bool)

(declare-fun e!2986009 () Bool)

(assert (=> b!4782751 (= e!2986010 e!2986009)))

(declare-fun res!2031014 () Bool)

(assert (=> b!4782751 (=> res!2031014 e!2986009)))

(assert (=> b!4782751 (= res!2031014 (= (h!60440 (toList!6755 lm!2709)) lt!1944867))))

(declare-fun b!4782752 () Bool)

(assert (=> b!4782752 (= e!2986009 (contains!17564 (t!361594 (toList!6755 lm!2709)) lt!1944867))))

(assert (= (and d!1529336 res!2031013) b!4782751))

(assert (= (and b!4782751 (not res!2031014)) b!4782752))

(declare-fun m!5760304 () Bool)

(assert (=> d!1529336 m!5760304))

(declare-fun m!5760306 () Bool)

(assert (=> d!1529336 m!5760306))

(declare-fun m!5760308 () Bool)

(assert (=> b!4782752 m!5760308))

(assert (=> b!4782665 d!1529336))

(declare-fun d!1529338 () Bool)

(assert (=> d!1529338 (= (get!18375 lt!1944865) (v!48172 lt!1944865))))

(assert (=> b!4782665 d!1529338))

(declare-fun d!1529340 () Bool)

(declare-fun dynLambda!22019 (Int tuple2!56522) Bool)

(assert (=> d!1529340 (dynLambda!22019 lambda!228523 lt!1944867)))

(declare-fun lt!1944913 () Unit!139336)

(declare-fun choose!34317 (List!54144 Int tuple2!56522) Unit!139336)

(assert (=> d!1529340 (= lt!1944913 (choose!34317 (toList!6755 lm!2709) lambda!228523 lt!1944867))))

(declare-fun e!2986013 () Bool)

(assert (=> d!1529340 e!2986013))

(declare-fun res!2031017 () Bool)

(assert (=> d!1529340 (=> (not res!2031017) (not e!2986013))))

(assert (=> d!1529340 (= res!2031017 (forall!12134 (toList!6755 lm!2709) lambda!228523))))

(assert (=> d!1529340 (= (forallContained!4078 (toList!6755 lm!2709) lambda!228523 lt!1944867) lt!1944913)))

(declare-fun b!4782755 () Bool)

(assert (=> b!4782755 (= e!2986013 (contains!17564 (toList!6755 lm!2709) lt!1944867))))

(assert (= (and d!1529340 res!2031017) b!4782755))

(declare-fun b_lambda!185811 () Bool)

(assert (=> (not b_lambda!185811) (not d!1529340)))

(declare-fun m!5760310 () Bool)

(assert (=> d!1529340 m!5760310))

(declare-fun m!5760312 () Bool)

(assert (=> d!1529340 m!5760312))

(assert (=> d!1529340 m!5760186))

(assert (=> b!4782755 m!5760212))

(assert (=> b!4782665 d!1529340))

(declare-fun d!1529342 () Bool)

(assert (=> d!1529342 (= (isDefined!10093 lt!1944865) (not (isEmpty!29366 lt!1944865)))))

(declare-fun bs!1152263 () Bool)

(assert (= bs!1152263 d!1529342))

(declare-fun m!5760314 () Bool)

(assert (=> bs!1152263 m!5760314))

(assert (=> b!4782665 d!1529342))

(declare-fun b!4782813 () Bool)

(declare-datatypes ((List!54146 0))(
  ( (Nil!54022) (Cons!54022 (h!60442 K!15584) (t!361596 List!54146)) )
))
(declare-fun e!2986054 () List!54146)

(declare-fun getKeysList!1045 (List!54143) List!54146)

(assert (=> b!4782813 (= e!2986054 (getKeysList!1045 (toList!6756 (extractMap!2365 (toList!6755 lm!2709)))))))

(declare-fun b!4782814 () Bool)

(declare-fun e!2986053 () Unit!139336)

(declare-fun lt!1944966 () Unit!139336)

(assert (=> b!4782814 (= e!2986053 lt!1944966)))

(declare-fun lt!1944960 () Unit!139336)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2083 (List!54143 K!15584) Unit!139336)

(assert (=> b!4782814 (= lt!1944960 (lemmaContainsKeyImpliesGetValueByKeyDefined!2083 (toList!6756 (extractMap!2365 (toList!6755 lm!2709))) key!6641))))

(declare-datatypes ((Option!12954 0))(
  ( (None!12953) (Some!12953 (v!48180 V!15830)) )
))
(declare-fun isDefined!10096 (Option!12954) Bool)

(declare-fun getValueByKey!2291 (List!54143 K!15584) Option!12954)

(assert (=> b!4782814 (isDefined!10096 (getValueByKey!2291 (toList!6756 (extractMap!2365 (toList!6755 lm!2709))) key!6641))))

(declare-fun lt!1944964 () Unit!139336)

(assert (=> b!4782814 (= lt!1944964 lt!1944960)))

(declare-fun lemmaInListThenGetKeysListContains!1040 (List!54143 K!15584) Unit!139336)

(assert (=> b!4782814 (= lt!1944966 (lemmaInListThenGetKeysListContains!1040 (toList!6756 (extractMap!2365 (toList!6755 lm!2709))) key!6641))))

(declare-fun call!334772 () Bool)

(assert (=> b!4782814 call!334772))

(declare-fun b!4782815 () Bool)

(declare-fun keys!19682 (ListMap!6227) List!54146)

(assert (=> b!4782815 (= e!2986054 (keys!19682 (extractMap!2365 (toList!6755 lm!2709))))))

(declare-fun d!1529344 () Bool)

(declare-fun e!2986051 () Bool)

(assert (=> d!1529344 e!2986051))

(declare-fun res!2031053 () Bool)

(assert (=> d!1529344 (=> res!2031053 e!2986051)))

(declare-fun e!2986052 () Bool)

(assert (=> d!1529344 (= res!2031053 e!2986052)))

(declare-fun res!2031052 () Bool)

(assert (=> d!1529344 (=> (not res!2031052) (not e!2986052))))

(declare-fun lt!1944962 () Bool)

(assert (=> d!1529344 (= res!2031052 (not lt!1944962))))

(declare-fun lt!1944965 () Bool)

(assert (=> d!1529344 (= lt!1944962 lt!1944965)))

(declare-fun lt!1944967 () Unit!139336)

(assert (=> d!1529344 (= lt!1944967 e!2986053)))

(declare-fun c!815337 () Bool)

(assert (=> d!1529344 (= c!815337 lt!1944965)))

(declare-fun containsKey!3828 (List!54143 K!15584) Bool)

(assert (=> d!1529344 (= lt!1944965 (containsKey!3828 (toList!6756 (extractMap!2365 (toList!6755 lm!2709))) key!6641))))

(assert (=> d!1529344 (= (contains!17566 (extractMap!2365 (toList!6755 lm!2709)) key!6641) lt!1944962)))

(declare-fun b!4782816 () Bool)

(assert (=> b!4782816 false))

(declare-fun lt!1944961 () Unit!139336)

(declare-fun lt!1944963 () Unit!139336)

(assert (=> b!4782816 (= lt!1944961 lt!1944963)))

(assert (=> b!4782816 (containsKey!3828 (toList!6756 (extractMap!2365 (toList!6755 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1045 (List!54143 K!15584) Unit!139336)

(assert (=> b!4782816 (= lt!1944963 (lemmaInGetKeysListThenContainsKey!1045 (toList!6756 (extractMap!2365 (toList!6755 lm!2709))) key!6641))))

(declare-fun e!2986050 () Unit!139336)

(declare-fun Unit!139341 () Unit!139336)

(assert (=> b!4782816 (= e!2986050 Unit!139341)))

(declare-fun b!4782817 () Bool)

(declare-fun e!2986055 () Bool)

(assert (=> b!4782817 (= e!2986051 e!2986055)))

(declare-fun res!2031051 () Bool)

(assert (=> b!4782817 (=> (not res!2031051) (not e!2986055))))

(assert (=> b!4782817 (= res!2031051 (isDefined!10096 (getValueByKey!2291 (toList!6756 (extractMap!2365 (toList!6755 lm!2709))) key!6641)))))

(declare-fun b!4782818 () Bool)

(declare-fun Unit!139342 () Unit!139336)

(assert (=> b!4782818 (= e!2986050 Unit!139342)))

(declare-fun b!4782819 () Bool)

(assert (=> b!4782819 (= e!2986053 e!2986050)))

(declare-fun c!815335 () Bool)

(assert (=> b!4782819 (= c!815335 call!334772)))

(declare-fun bm!334767 () Bool)

(declare-fun contains!17570 (List!54146 K!15584) Bool)

(assert (=> bm!334767 (= call!334772 (contains!17570 e!2986054 key!6641))))

(declare-fun c!815336 () Bool)

(assert (=> bm!334767 (= c!815336 c!815337)))

(declare-fun b!4782820 () Bool)

(assert (=> b!4782820 (= e!2986055 (contains!17570 (keys!19682 (extractMap!2365 (toList!6755 lm!2709))) key!6641))))

(declare-fun b!4782821 () Bool)

(assert (=> b!4782821 (= e!2986052 (not (contains!17570 (keys!19682 (extractMap!2365 (toList!6755 lm!2709))) key!6641)))))

(assert (= (and d!1529344 c!815337) b!4782814))

(assert (= (and d!1529344 (not c!815337)) b!4782819))

(assert (= (and b!4782819 c!815335) b!4782816))

(assert (= (and b!4782819 (not c!815335)) b!4782818))

(assert (= (or b!4782814 b!4782819) bm!334767))

(assert (= (and bm!334767 c!815336) b!4782813))

(assert (= (and bm!334767 (not c!815336)) b!4782815))

(assert (= (and d!1529344 res!2031052) b!4782821))

(assert (= (and d!1529344 (not res!2031053)) b!4782817))

(assert (= (and b!4782817 res!2031051) b!4782820))

(declare-fun m!5760356 () Bool)

(assert (=> b!4782816 m!5760356))

(declare-fun m!5760358 () Bool)

(assert (=> b!4782816 m!5760358))

(assert (=> b!4782820 m!5760206))

(declare-fun m!5760360 () Bool)

(assert (=> b!4782820 m!5760360))

(assert (=> b!4782820 m!5760360))

(declare-fun m!5760362 () Bool)

(assert (=> b!4782820 m!5760362))

(assert (=> d!1529344 m!5760356))

(declare-fun m!5760364 () Bool)

(assert (=> b!4782814 m!5760364))

(declare-fun m!5760366 () Bool)

(assert (=> b!4782814 m!5760366))

(assert (=> b!4782814 m!5760366))

(declare-fun m!5760368 () Bool)

(assert (=> b!4782814 m!5760368))

(declare-fun m!5760370 () Bool)

(assert (=> b!4782814 m!5760370))

(declare-fun m!5760372 () Bool)

(assert (=> b!4782813 m!5760372))

(assert (=> b!4782821 m!5760206))

(assert (=> b!4782821 m!5760360))

(assert (=> b!4782821 m!5760360))

(assert (=> b!4782821 m!5760362))

(declare-fun m!5760374 () Bool)

(assert (=> bm!334767 m!5760374))

(assert (=> b!4782817 m!5760366))

(assert (=> b!4782817 m!5760366))

(assert (=> b!4782817 m!5760368))

(assert (=> b!4782815 m!5760206))

(assert (=> b!4782815 m!5760360))

(assert (=> b!4782665 d!1529344))

(declare-fun d!1529352 () Bool)

(assert (=> d!1529352 (contains!17564 (toList!6755 lm!2709) (tuple2!56523 lt!1944860 lt!1944870))))

(declare-fun lt!1944973 () Unit!139336)

(declare-fun choose!34319 (ListLongMap!5177 (_ BitVec 64) List!54143) Unit!139336)

(assert (=> d!1529352 (= lt!1944973 (choose!34319 lm!2709 lt!1944860 lt!1944870))))

(assert (=> d!1529352 (contains!17565 lm!2709 lt!1944860)))

(assert (=> d!1529352 (= (lemmaGetValueImpliesTupleContained!617 lm!2709 lt!1944860 lt!1944870) lt!1944973)))

(declare-fun bs!1152273 () Bool)

(assert (= bs!1152273 d!1529352))

(declare-fun m!5760382 () Bool)

(assert (=> bs!1152273 m!5760382))

(declare-fun m!5760386 () Bool)

(assert (=> bs!1152273 m!5760386))

(assert (=> bs!1152273 m!5760200))

(assert (=> b!4782665 d!1529352))

(declare-fun bs!1152305 () Bool)

(declare-fun d!1529356 () Bool)

(assert (= bs!1152305 (and d!1529356 start!491302)))

(declare-fun lambda!228559 () Int)

(assert (=> bs!1152305 (= lambda!228559 lambda!228523)))

(declare-fun bs!1152306 () Bool)

(assert (= bs!1152306 (and d!1529356 d!1529332)))

(assert (=> bs!1152306 (= lambda!228559 lambda!228533)))

(declare-fun e!2986087 () Bool)

(declare-fun b!4782869 () Bool)

(declare-fun lt!1945014 () (_ BitVec 64))

(declare-fun lt!1945018 () List!54143)

(assert (=> b!4782869 (= e!2986087 (= (getValueByKey!2290 (toList!6755 lm!2709) lt!1945014) (Some!12952 lt!1945018)))))

(declare-fun e!2986086 () Bool)

(assert (=> d!1529356 e!2986086))

(declare-fun res!2031082 () Bool)

(assert (=> d!1529356 (=> (not res!2031082) (not e!2986086))))

(assert (=> d!1529356 (= res!2031082 (forall!12134 (toList!6755 lm!2709) lambda!228559))))

(declare-fun lt!1945016 () Unit!139336)

(declare-fun choose!34320 (ListLongMap!5177 K!15584 Hashable!6838) Unit!139336)

(assert (=> d!1529356 (= lt!1945016 (choose!34320 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1529356 (forall!12134 (toList!6755 lm!2709) lambda!228559)))

(assert (=> d!1529356 (= (lemmaInGenMapThenGetPairDefined!584 lm!2709 key!6641 hashF!1687) lt!1945016)))

(declare-fun b!4782868 () Bool)

(assert (=> b!4782868 (= e!2986086 (isDefined!10093 (getPair!810 (apply!12893 lm!2709 (hash!4835 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1945015 () Unit!139336)

(assert (=> b!4782868 (= lt!1945015 (forallContained!4078 (toList!6755 lm!2709) lambda!228559 (tuple2!56523 (hash!4835 hashF!1687 key!6641) (apply!12893 lm!2709 (hash!4835 hashF!1687 key!6641)))))))

(declare-fun lt!1945017 () Unit!139336)

(declare-fun lt!1945021 () Unit!139336)

(assert (=> b!4782868 (= lt!1945017 lt!1945021)))

(assert (=> b!4782868 (contains!17564 (toList!6755 lm!2709) (tuple2!56523 lt!1945014 lt!1945018))))

(assert (=> b!4782868 (= lt!1945021 (lemmaGetValueImpliesTupleContained!617 lm!2709 lt!1945014 lt!1945018))))

(assert (=> b!4782868 e!2986087))

(declare-fun res!2031081 () Bool)

(assert (=> b!4782868 (=> (not res!2031081) (not e!2986087))))

(assert (=> b!4782868 (= res!2031081 (contains!17565 lm!2709 lt!1945014))))

(assert (=> b!4782868 (= lt!1945018 (apply!12893 lm!2709 (hash!4835 hashF!1687 key!6641)))))

(assert (=> b!4782868 (= lt!1945014 (hash!4835 hashF!1687 key!6641))))

(declare-fun lt!1945020 () Unit!139336)

(declare-fun lt!1945019 () Unit!139336)

(assert (=> b!4782868 (= lt!1945020 lt!1945019)))

(assert (=> b!4782868 (contains!17565 lm!2709 (hash!4835 hashF!1687 key!6641))))

(assert (=> b!4782868 (= lt!1945019 (lemmaInGenMapThenLongMapContainsHash!1034 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4782867 () Bool)

(declare-fun res!2031080 () Bool)

(assert (=> b!4782867 (=> (not res!2031080) (not e!2986086))))

(assert (=> b!4782867 (= res!2031080 (contains!17566 (extractMap!2365 (toList!6755 lm!2709)) key!6641))))

(declare-fun b!4782866 () Bool)

(declare-fun res!2031079 () Bool)

(assert (=> b!4782866 (=> (not res!2031079) (not e!2986086))))

(assert (=> b!4782866 (= res!2031079 (allKeysSameHashInMap!2243 lm!2709 hashF!1687))))

(assert (= (and d!1529356 res!2031082) b!4782866))

(assert (= (and b!4782866 res!2031079) b!4782867))

(assert (= (and b!4782867 res!2031080) b!4782868))

(assert (= (and b!4782868 res!2031081) b!4782869))

(declare-fun m!5760434 () Bool)

(assert (=> d!1529356 m!5760434))

(declare-fun m!5760436 () Bool)

(assert (=> d!1529356 m!5760436))

(assert (=> d!1529356 m!5760434))

(assert (=> b!4782866 m!5760184))

(assert (=> b!4782868 m!5760194))

(declare-fun m!5760438 () Bool)

(assert (=> b!4782868 m!5760438))

(declare-fun m!5760440 () Bool)

(assert (=> b!4782868 m!5760440))

(declare-fun m!5760442 () Bool)

(assert (=> b!4782868 m!5760442))

(assert (=> b!4782868 m!5760196))

(assert (=> b!4782868 m!5760438))

(declare-fun m!5760444 () Bool)

(assert (=> b!4782868 m!5760444))

(assert (=> b!4782868 m!5760194))

(declare-fun m!5760446 () Bool)

(assert (=> b!4782868 m!5760446))

(declare-fun m!5760448 () Bool)

(assert (=> b!4782868 m!5760448))

(assert (=> b!4782868 m!5760194))

(assert (=> b!4782868 m!5760444))

(declare-fun m!5760450 () Bool)

(assert (=> b!4782868 m!5760450))

(declare-fun m!5760452 () Bool)

(assert (=> b!4782868 m!5760452))

(declare-fun m!5760454 () Bool)

(assert (=> b!4782869 m!5760454))

(assert (=> b!4782867 m!5760206))

(assert (=> b!4782867 m!5760206))

(assert (=> b!4782867 m!5760214))

(assert (=> b!4782665 d!1529356))

(declare-fun d!1529390 () Bool)

(declare-fun hash!4839 (Hashable!6838 K!15584) (_ BitVec 64))

(assert (=> d!1529390 (= (hash!4835 hashF!1687 key!6641) (hash!4839 hashF!1687 key!6641))))

(declare-fun bs!1152307 () Bool)

(assert (= bs!1152307 d!1529390))

(declare-fun m!5760456 () Bool)

(assert (=> bs!1152307 m!5760456))

(assert (=> b!4782665 d!1529390))

(declare-fun bs!1152308 () Bool)

(declare-fun d!1529392 () Bool)

(assert (= bs!1152308 (and d!1529392 start!491302)))

(declare-fun lambda!228562 () Int)

(assert (=> bs!1152308 (= lambda!228562 lambda!228523)))

(declare-fun bs!1152309 () Bool)

(assert (= bs!1152309 (and d!1529392 d!1529332)))

(assert (=> bs!1152309 (= lambda!228562 lambda!228533)))

(declare-fun bs!1152310 () Bool)

(assert (= bs!1152310 (and d!1529392 d!1529356)))

(assert (=> bs!1152310 (= lambda!228562 lambda!228559)))

(declare-fun lt!1945024 () ListMap!6227)

(declare-fun invariantList!1699 (List!54143) Bool)

(assert (=> d!1529392 (invariantList!1699 (toList!6756 lt!1945024))))

(declare-fun e!2986090 () ListMap!6227)

(assert (=> d!1529392 (= lt!1945024 e!2986090)))

(declare-fun c!815346 () Bool)

(assert (=> d!1529392 (= c!815346 ((_ is Cons!54020) (toList!6755 lm!2709)))))

(assert (=> d!1529392 (forall!12134 (toList!6755 lm!2709) lambda!228562)))

(assert (=> d!1529392 (= (extractMap!2365 (toList!6755 lm!2709)) lt!1945024)))

(declare-fun b!4782874 () Bool)

(declare-fun addToMapMapFromBucket!1664 (List!54143 ListMap!6227) ListMap!6227)

(assert (=> b!4782874 (= e!2986090 (addToMapMapFromBucket!1664 (_2!31555 (h!60440 (toList!6755 lm!2709))) (extractMap!2365 (t!361594 (toList!6755 lm!2709)))))))

(declare-fun b!4782875 () Bool)

(assert (=> b!4782875 (= e!2986090 (ListMap!6228 Nil!54019))))

(assert (= (and d!1529392 c!815346) b!4782874))

(assert (= (and d!1529392 (not c!815346)) b!4782875))

(declare-fun m!5760458 () Bool)

(assert (=> d!1529392 m!5760458))

(declare-fun m!5760460 () Bool)

(assert (=> d!1529392 m!5760460))

(declare-fun m!5760462 () Bool)

(assert (=> b!4782874 m!5760462))

(assert (=> b!4782874 m!5760462))

(declare-fun m!5760464 () Bool)

(assert (=> b!4782874 m!5760464))

(assert (=> b!4782665 d!1529392))

(declare-fun bs!1152311 () Bool)

(declare-fun d!1529394 () Bool)

(assert (= bs!1152311 (and d!1529394 start!491302)))

(declare-fun lambda!228565 () Int)

(assert (=> bs!1152311 (= lambda!228565 lambda!228523)))

(declare-fun bs!1152312 () Bool)

(assert (= bs!1152312 (and d!1529394 d!1529332)))

(assert (=> bs!1152312 (= lambda!228565 lambda!228533)))

(declare-fun bs!1152313 () Bool)

(assert (= bs!1152313 (and d!1529394 d!1529356)))

(assert (=> bs!1152313 (= lambda!228565 lambda!228559)))

(declare-fun bs!1152314 () Bool)

(assert (= bs!1152314 (and d!1529394 d!1529392)))

(assert (=> bs!1152314 (= lambda!228565 lambda!228562)))

(assert (=> d!1529394 (contains!17565 lm!2709 (hash!4835 hashF!1687 key!6641))))

(declare-fun lt!1945027 () Unit!139336)

(declare-fun choose!34321 (ListLongMap!5177 K!15584 Hashable!6838) Unit!139336)

(assert (=> d!1529394 (= lt!1945027 (choose!34321 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1529394 (forall!12134 (toList!6755 lm!2709) lambda!228565)))

(assert (=> d!1529394 (= (lemmaInGenMapThenLongMapContainsHash!1034 lm!2709 key!6641 hashF!1687) lt!1945027)))

(declare-fun bs!1152315 () Bool)

(assert (= bs!1152315 d!1529394))

(assert (=> bs!1152315 m!5760194))

(assert (=> bs!1152315 m!5760194))

(assert (=> bs!1152315 m!5760446))

(declare-fun m!5760466 () Bool)

(assert (=> bs!1152315 m!5760466))

(declare-fun m!5760468 () Bool)

(assert (=> bs!1152315 m!5760468))

(assert (=> b!4782665 d!1529394))

(declare-fun d!1529396 () Bool)

(declare-fun e!2986095 () Bool)

(assert (=> d!1529396 e!2986095))

(declare-fun res!2031085 () Bool)

(assert (=> d!1529396 (=> res!2031085 e!2986095)))

(declare-fun lt!1945036 () Bool)

(assert (=> d!1529396 (= res!2031085 (not lt!1945036))))

(declare-fun lt!1945038 () Bool)

(assert (=> d!1529396 (= lt!1945036 lt!1945038)))

(declare-fun lt!1945039 () Unit!139336)

(declare-fun e!2986096 () Unit!139336)

(assert (=> d!1529396 (= lt!1945039 e!2986096)))

(declare-fun c!815349 () Bool)

(assert (=> d!1529396 (= c!815349 lt!1945038)))

(declare-fun containsKey!3829 (List!54144 (_ BitVec 64)) Bool)

(assert (=> d!1529396 (= lt!1945038 (containsKey!3829 (toList!6755 lm!2709) lt!1944860))))

(assert (=> d!1529396 (= (contains!17565 lm!2709 lt!1944860) lt!1945036)))

(declare-fun b!4782882 () Bool)

(declare-fun lt!1945037 () Unit!139336)

(assert (=> b!4782882 (= e!2986096 lt!1945037)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2084 (List!54144 (_ BitVec 64)) Unit!139336)

(assert (=> b!4782882 (= lt!1945037 (lemmaContainsKeyImpliesGetValueByKeyDefined!2084 (toList!6755 lm!2709) lt!1944860))))

(declare-fun isDefined!10097 (Option!12953) Bool)

(assert (=> b!4782882 (isDefined!10097 (getValueByKey!2290 (toList!6755 lm!2709) lt!1944860))))

(declare-fun b!4782883 () Bool)

(declare-fun Unit!139343 () Unit!139336)

(assert (=> b!4782883 (= e!2986096 Unit!139343)))

(declare-fun b!4782884 () Bool)

(assert (=> b!4782884 (= e!2986095 (isDefined!10097 (getValueByKey!2290 (toList!6755 lm!2709) lt!1944860)))))

(assert (= (and d!1529396 c!815349) b!4782882))

(assert (= (and d!1529396 (not c!815349)) b!4782883))

(assert (= (and d!1529396 (not res!2031085)) b!4782884))

(declare-fun m!5760470 () Bool)

(assert (=> d!1529396 m!5760470))

(declare-fun m!5760472 () Bool)

(assert (=> b!4782882 m!5760472))

(assert (=> b!4782882 m!5760262))

(assert (=> b!4782882 m!5760262))

(declare-fun m!5760474 () Bool)

(assert (=> b!4782882 m!5760474))

(assert (=> b!4782884 m!5760262))

(assert (=> b!4782884 m!5760262))

(assert (=> b!4782884 m!5760474))

(assert (=> b!4782665 d!1529396))

(declare-fun d!1529398 () Bool)

(declare-fun res!2031094 () Bool)

(declare-fun e!2986105 () Bool)

(assert (=> d!1529398 (=> res!2031094 e!2986105)))

(declare-fun e!2986104 () Bool)

(assert (=> d!1529398 (= res!2031094 e!2986104)))

(declare-fun res!2031092 () Bool)

(assert (=> d!1529398 (=> (not res!2031092) (not e!2986104))))

(assert (=> d!1529398 (= res!2031092 ((_ is Cons!54020) (toList!6755 lt!1944866)))))

(assert (=> d!1529398 (= (containsKeyBiggerList!494 (toList!6755 lt!1944866) key!6641) e!2986105)))

(declare-fun b!4782891 () Bool)

(assert (=> b!4782891 (= e!2986104 (containsKey!3825 (_2!31555 (h!60440 (toList!6755 lt!1944866))) key!6641))))

(declare-fun b!4782892 () Bool)

(declare-fun e!2986103 () Bool)

(assert (=> b!4782892 (= e!2986105 e!2986103)))

(declare-fun res!2031093 () Bool)

(assert (=> b!4782892 (=> (not res!2031093) (not e!2986103))))

(assert (=> b!4782892 (= res!2031093 ((_ is Cons!54020) (toList!6755 lt!1944866)))))

(declare-fun b!4782893 () Bool)

(assert (=> b!4782893 (= e!2986103 (containsKeyBiggerList!494 (t!361594 (toList!6755 lt!1944866)) key!6641))))

(assert (= (and d!1529398 res!2031092) b!4782891))

(assert (= (and d!1529398 (not res!2031094)) b!4782892))

(assert (= (and b!4782892 res!2031093) b!4782893))

(declare-fun m!5760476 () Bool)

(assert (=> b!4782891 m!5760476))

(declare-fun m!5760478 () Bool)

(assert (=> b!4782893 m!5760478))

(assert (=> b!4782670 d!1529398))

(declare-fun bs!1152316 () Bool)

(declare-fun d!1529400 () Bool)

(assert (= bs!1152316 (and d!1529400 d!1529356)))

(declare-fun lambda!228568 () Int)

(assert (=> bs!1152316 (not (= lambda!228568 lambda!228559))))

(declare-fun bs!1152317 () Bool)

(assert (= bs!1152317 (and d!1529400 start!491302)))

(assert (=> bs!1152317 (not (= lambda!228568 lambda!228523))))

(declare-fun bs!1152318 () Bool)

(assert (= bs!1152318 (and d!1529400 d!1529332)))

(assert (=> bs!1152318 (not (= lambda!228568 lambda!228533))))

(declare-fun bs!1152319 () Bool)

(assert (= bs!1152319 (and d!1529400 d!1529392)))

(assert (=> bs!1152319 (not (= lambda!228568 lambda!228562))))

(declare-fun bs!1152320 () Bool)

(assert (= bs!1152320 (and d!1529400 d!1529394)))

(assert (=> bs!1152320 (not (= lambda!228568 lambda!228565))))

(assert (=> d!1529400 true))

(assert (=> d!1529400 (= (allKeysSameHashInMap!2243 lt!1944866 hashF!1687) (forall!12134 (toList!6755 lt!1944866) lambda!228568))))

(declare-fun bs!1152321 () Bool)

(assert (= bs!1152321 d!1529400))

(declare-fun m!5760480 () Bool)

(assert (=> bs!1152321 m!5760480))

(assert (=> b!4782669 d!1529400))

(declare-fun bs!1152322 () Bool)

(declare-fun d!1529402 () Bool)

(assert (= bs!1152322 (and d!1529402 d!1529356)))

(declare-fun lambda!228569 () Int)

(assert (=> bs!1152322 (not (= lambda!228569 lambda!228559))))

(declare-fun bs!1152323 () Bool)

(assert (= bs!1152323 (and d!1529402 d!1529400)))

(assert (=> bs!1152323 (= lambda!228569 lambda!228568)))

(declare-fun bs!1152324 () Bool)

(assert (= bs!1152324 (and d!1529402 start!491302)))

(assert (=> bs!1152324 (not (= lambda!228569 lambda!228523))))

(declare-fun bs!1152325 () Bool)

(assert (= bs!1152325 (and d!1529402 d!1529332)))

(assert (=> bs!1152325 (not (= lambda!228569 lambda!228533))))

(declare-fun bs!1152326 () Bool)

(assert (= bs!1152326 (and d!1529402 d!1529392)))

(assert (=> bs!1152326 (not (= lambda!228569 lambda!228562))))

(declare-fun bs!1152327 () Bool)

(assert (= bs!1152327 (and d!1529402 d!1529394)))

(assert (=> bs!1152327 (not (= lambda!228569 lambda!228565))))

(assert (=> d!1529402 true))

(assert (=> d!1529402 (= (allKeysSameHashInMap!2243 lm!2709 hashF!1687) (forall!12134 (toList!6755 lm!2709) lambda!228569))))

(declare-fun bs!1152328 () Bool)

(assert (= bs!1152328 d!1529402))

(declare-fun m!5760482 () Bool)

(assert (=> bs!1152328 m!5760482))

(assert (=> b!4782664 d!1529402))

(declare-fun d!1529404 () Bool)

(declare-fun res!2031099 () Bool)

(declare-fun e!2986110 () Bool)

(assert (=> d!1529404 (=> res!2031099 e!2986110)))

(assert (=> d!1529404 (= res!2031099 (and ((_ is Cons!54019) (_2!31555 (h!60440 (toList!6755 lm!2709)))) (= (_1!31554 (h!60439 (_2!31555 (h!60440 (toList!6755 lm!2709))))) key!6641)))))

(assert (=> d!1529404 (= (containsKey!3825 (_2!31555 (h!60440 (toList!6755 lm!2709))) key!6641) e!2986110)))

(declare-fun b!4782900 () Bool)

(declare-fun e!2986111 () Bool)

(assert (=> b!4782900 (= e!2986110 e!2986111)))

(declare-fun res!2031100 () Bool)

(assert (=> b!4782900 (=> (not res!2031100) (not e!2986111))))

(assert (=> b!4782900 (= res!2031100 ((_ is Cons!54019) (_2!31555 (h!60440 (toList!6755 lm!2709)))))))

(declare-fun b!4782901 () Bool)

(assert (=> b!4782901 (= e!2986111 (containsKey!3825 (t!361593 (_2!31555 (h!60440 (toList!6755 lm!2709)))) key!6641))))

(assert (= (and d!1529404 (not res!2031099)) b!4782900))

(assert (= (and b!4782900 res!2031100) b!4782901))

(declare-fun m!5760484 () Bool)

(assert (=> b!4782901 m!5760484))

(assert (=> b!4782663 d!1529404))

(declare-fun d!1529406 () Bool)

(declare-fun res!2031101 () Bool)

(declare-fun e!2986112 () Bool)

(assert (=> d!1529406 (=> res!2031101 e!2986112)))

(assert (=> d!1529406 (= res!2031101 (and ((_ is Cons!54019) (apply!12893 lm!2709 (_1!31555 (h!60440 (toList!6755 lm!2709))))) (= (_1!31554 (h!60439 (apply!12893 lm!2709 (_1!31555 (h!60440 (toList!6755 lm!2709)))))) key!6641)))))

(assert (=> d!1529406 (= (containsKey!3825 (apply!12893 lm!2709 (_1!31555 (h!60440 (toList!6755 lm!2709)))) key!6641) e!2986112)))

(declare-fun b!4782902 () Bool)

(declare-fun e!2986113 () Bool)

(assert (=> b!4782902 (= e!2986112 e!2986113)))

(declare-fun res!2031102 () Bool)

(assert (=> b!4782902 (=> (not res!2031102) (not e!2986113))))

(assert (=> b!4782902 (= res!2031102 ((_ is Cons!54019) (apply!12893 lm!2709 (_1!31555 (h!60440 (toList!6755 lm!2709))))))))

(declare-fun b!4782903 () Bool)

(assert (=> b!4782903 (= e!2986113 (containsKey!3825 (t!361593 (apply!12893 lm!2709 (_1!31555 (h!60440 (toList!6755 lm!2709))))) key!6641))))

(assert (= (and d!1529406 (not res!2031101)) b!4782902))

(assert (= (and b!4782902 res!2031102) b!4782903))

(declare-fun m!5760486 () Bool)

(assert (=> b!4782903 m!5760486))

(assert (=> b!4782663 d!1529406))

(declare-fun d!1529408 () Bool)

(assert (=> d!1529408 (= (apply!12893 lm!2709 (_1!31555 (h!60440 (toList!6755 lm!2709)))) (get!18377 (getValueByKey!2290 (toList!6755 lm!2709) (_1!31555 (h!60440 (toList!6755 lm!2709))))))))

(declare-fun bs!1152329 () Bool)

(assert (= bs!1152329 d!1529408))

(declare-fun m!5760488 () Bool)

(assert (=> bs!1152329 m!5760488))

(assert (=> bs!1152329 m!5760488))

(declare-fun m!5760490 () Bool)

(assert (=> bs!1152329 m!5760490))

(assert (=> b!4782663 d!1529408))

(declare-fun bs!1152330 () Bool)

(declare-fun d!1529410 () Bool)

(assert (= bs!1152330 (and d!1529410 d!1529356)))

(declare-fun lambda!228572 () Int)

(assert (=> bs!1152330 (= lambda!228572 lambda!228559)))

(declare-fun bs!1152331 () Bool)

(assert (= bs!1152331 (and d!1529410 d!1529400)))

(assert (=> bs!1152331 (not (= lambda!228572 lambda!228568))))

(declare-fun bs!1152332 () Bool)

(assert (= bs!1152332 (and d!1529410 start!491302)))

(assert (=> bs!1152332 (= lambda!228572 lambda!228523)))

(declare-fun bs!1152333 () Bool)

(assert (= bs!1152333 (and d!1529410 d!1529392)))

(assert (=> bs!1152333 (= lambda!228572 lambda!228562)))

(declare-fun bs!1152334 () Bool)

(assert (= bs!1152334 (and d!1529410 d!1529394)))

(assert (=> bs!1152334 (= lambda!228572 lambda!228565)))

(declare-fun bs!1152335 () Bool)

(assert (= bs!1152335 (and d!1529410 d!1529402)))

(assert (=> bs!1152335 (not (= lambda!228572 lambda!228569))))

(declare-fun bs!1152336 () Bool)

(assert (= bs!1152336 (and d!1529410 d!1529332)))

(assert (=> bs!1152336 (= lambda!228572 lambda!228533)))

(assert (=> d!1529410 (not (containsKey!3825 (apply!12893 lm!2709 (_1!31555 (h!60440 (toList!6755 lm!2709)))) key!6641))))

(declare-fun lt!1945042 () Unit!139336)

(declare-fun choose!34322 (ListLongMap!5177 K!15584 (_ BitVec 64) Hashable!6838) Unit!139336)

(assert (=> d!1529410 (= lt!1945042 (choose!34322 lm!2709 key!6641 (_1!31555 (h!60440 (toList!6755 lm!2709))) hashF!1687))))

(assert (=> d!1529410 (forall!12134 (toList!6755 lm!2709) lambda!228572)))

(assert (=> d!1529410 (= (lemmaNotSameHashThenCannotContainKey!192 lm!2709 key!6641 (_1!31555 (h!60440 (toList!6755 lm!2709))) hashF!1687) lt!1945042)))

(declare-fun bs!1152337 () Bool)

(assert (= bs!1152337 d!1529410))

(assert (=> bs!1152337 m!5760176))

(assert (=> bs!1152337 m!5760176))

(assert (=> bs!1152337 m!5760178))

(declare-fun m!5760492 () Bool)

(assert (=> bs!1152337 m!5760492))

(declare-fun m!5760494 () Bool)

(assert (=> bs!1152337 m!5760494))

(assert (=> b!4782663 d!1529410))

(declare-fun d!1529412 () Bool)

(declare-fun res!2031105 () Bool)

(declare-fun e!2986116 () Bool)

(assert (=> d!1529412 (=> res!2031105 e!2986116)))

(declare-fun e!2986115 () Bool)

(assert (=> d!1529412 (= res!2031105 e!2986115)))

(declare-fun res!2031103 () Bool)

(assert (=> d!1529412 (=> (not res!2031103) (not e!2986115))))

(assert (=> d!1529412 (= res!2031103 ((_ is Cons!54020) (toList!6755 lm!2709)))))

(assert (=> d!1529412 (= (containsKeyBiggerList!494 (toList!6755 lm!2709) key!6641) e!2986116)))

(declare-fun b!4782904 () Bool)

(assert (=> b!4782904 (= e!2986115 (containsKey!3825 (_2!31555 (h!60440 (toList!6755 lm!2709))) key!6641))))

(declare-fun b!4782905 () Bool)

(declare-fun e!2986114 () Bool)

(assert (=> b!4782905 (= e!2986116 e!2986114)))

(declare-fun res!2031104 () Bool)

(assert (=> b!4782905 (=> (not res!2031104) (not e!2986114))))

(assert (=> b!4782905 (= res!2031104 ((_ is Cons!54020) (toList!6755 lm!2709)))))

(declare-fun b!4782906 () Bool)

(assert (=> b!4782906 (= e!2986114 (containsKeyBiggerList!494 (t!361594 (toList!6755 lm!2709)) key!6641))))

(assert (= (and d!1529412 res!2031103) b!4782904))

(assert (= (and d!1529412 (not res!2031105)) b!4782905))

(assert (= (and b!4782905 res!2031104) b!4782906))

(assert (=> b!4782904 m!5760174))

(declare-fun m!5760496 () Bool)

(assert (=> b!4782906 m!5760496))

(assert (=> b!4782666 d!1529412))

(declare-fun d!1529414 () Bool)

(declare-fun res!2031110 () Bool)

(declare-fun e!2986121 () Bool)

(assert (=> d!1529414 (=> res!2031110 e!2986121)))

(assert (=> d!1529414 (= res!2031110 ((_ is Nil!54020) (toList!6755 lm!2709)))))

(assert (=> d!1529414 (= (forall!12134 (toList!6755 lm!2709) lambda!228523) e!2986121)))

(declare-fun b!4782911 () Bool)

(declare-fun e!2986122 () Bool)

(assert (=> b!4782911 (= e!2986121 e!2986122)))

(declare-fun res!2031111 () Bool)

(assert (=> b!4782911 (=> (not res!2031111) (not e!2986122))))

(assert (=> b!4782911 (= res!2031111 (dynLambda!22019 lambda!228523 (h!60440 (toList!6755 lm!2709))))))

(declare-fun b!4782912 () Bool)

(assert (=> b!4782912 (= e!2986122 (forall!12134 (t!361594 (toList!6755 lm!2709)) lambda!228523))))

(assert (= (and d!1529414 (not res!2031110)) b!4782911))

(assert (= (and b!4782911 res!2031111) b!4782912))

(declare-fun b_lambda!185825 () Bool)

(assert (=> (not b_lambda!185825) (not b!4782911)))

(declare-fun m!5760498 () Bool)

(assert (=> b!4782911 m!5760498))

(declare-fun m!5760500 () Bool)

(assert (=> b!4782912 m!5760500))

(assert (=> start!491302 d!1529414))

(declare-fun d!1529416 () Bool)

(declare-fun isStrictlySorted!851 (List!54144) Bool)

(assert (=> d!1529416 (= (inv!69610 lm!2709) (isStrictlySorted!851 (toList!6755 lm!2709)))))

(declare-fun bs!1152338 () Bool)

(assert (= bs!1152338 d!1529416))

(declare-fun m!5760502 () Bool)

(assert (=> bs!1152338 m!5760502))

(assert (=> start!491302 d!1529416))

(declare-fun bs!1152339 () Bool)

(declare-fun d!1529418 () Bool)

(assert (= bs!1152339 (and d!1529418 d!1529356)))

(declare-fun lambda!228575 () Int)

(assert (=> bs!1152339 (= lambda!228575 lambda!228559)))

(declare-fun bs!1152340 () Bool)

(assert (= bs!1152340 (and d!1529418 d!1529400)))

(assert (=> bs!1152340 (not (= lambda!228575 lambda!228568))))

(declare-fun bs!1152341 () Bool)

(assert (= bs!1152341 (and d!1529418 start!491302)))

(assert (=> bs!1152341 (= lambda!228575 lambda!228523)))

(declare-fun bs!1152342 () Bool)

(assert (= bs!1152342 (and d!1529418 d!1529392)))

(assert (=> bs!1152342 (= lambda!228575 lambda!228562)))

(declare-fun bs!1152343 () Bool)

(assert (= bs!1152343 (and d!1529418 d!1529410)))

(assert (=> bs!1152343 (= lambda!228575 lambda!228572)))

(declare-fun bs!1152344 () Bool)

(assert (= bs!1152344 (and d!1529418 d!1529394)))

(assert (=> bs!1152344 (= lambda!228575 lambda!228565)))

(declare-fun bs!1152345 () Bool)

(assert (= bs!1152345 (and d!1529418 d!1529402)))

(assert (=> bs!1152345 (not (= lambda!228575 lambda!228569))))

(declare-fun bs!1152346 () Bool)

(assert (= bs!1152346 (and d!1529418 d!1529332)))

(assert (=> bs!1152346 (= lambda!228575 lambda!228533)))

(assert (=> d!1529418 (containsKeyBiggerList!494 (tail!9197 (toList!6755 lm!2709)) key!6641)))

(declare-fun lt!1945045 () Unit!139336)

(declare-fun choose!34323 (ListLongMap!5177 K!15584 Hashable!6838) Unit!139336)

(assert (=> d!1529418 (= lt!1945045 (choose!34323 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1529418 (forall!12134 (toList!6755 lm!2709) lambda!228575)))

(assert (=> d!1529418 (= (lemmaInBiggerListButNotHeadThenTail!18 lm!2709 key!6641 hashF!1687) lt!1945045)))

(declare-fun bs!1152347 () Bool)

(assert (= bs!1152347 d!1529418))

(assert (=> bs!1152347 m!5760222))

(assert (=> bs!1152347 m!5760222))

(assert (=> bs!1152347 m!5760224))

(declare-fun m!5760504 () Bool)

(assert (=> bs!1152347 m!5760504))

(declare-fun m!5760506 () Bool)

(assert (=> bs!1152347 m!5760506))

(assert (=> b!4782667 d!1529418))

(declare-fun d!1529420 () Bool)

(assert (=> d!1529420 (= (tail!9197 (toList!6755 lm!2709)) (t!361594 (toList!6755 lm!2709)))))

(assert (=> b!4782667 d!1529420))

(declare-fun d!1529422 () Bool)

(declare-fun res!2031112 () Bool)

(declare-fun e!2986123 () Bool)

(assert (=> d!1529422 (=> res!2031112 e!2986123)))

(assert (=> d!1529422 (= res!2031112 ((_ is Nil!54020) (toList!6755 lt!1944866)))))

(assert (=> d!1529422 (= (forall!12134 (toList!6755 lt!1944866) lambda!228523) e!2986123)))

(declare-fun b!4782913 () Bool)

(declare-fun e!2986124 () Bool)

(assert (=> b!4782913 (= e!2986123 e!2986124)))

(declare-fun res!2031113 () Bool)

(assert (=> b!4782913 (=> (not res!2031113) (not e!2986124))))

(assert (=> b!4782913 (= res!2031113 (dynLambda!22019 lambda!228523 (h!60440 (toList!6755 lt!1944866))))))

(declare-fun b!4782914 () Bool)

(assert (=> b!4782914 (= e!2986124 (forall!12134 (t!361594 (toList!6755 lt!1944866)) lambda!228523))))

(assert (= (and d!1529422 (not res!2031112)) b!4782913))

(assert (= (and b!4782913 res!2031113) b!4782914))

(declare-fun b_lambda!185827 () Bool)

(assert (=> (not b_lambda!185827) (not b!4782913)))

(declare-fun m!5760508 () Bool)

(assert (=> b!4782913 m!5760508))

(declare-fun m!5760510 () Bool)

(assert (=> b!4782914 m!5760510))

(assert (=> b!4782667 d!1529422))

(declare-fun d!1529424 () Bool)

(assert (=> d!1529424 (= (tail!9196 lm!2709) (ListLongMap!5178 (tail!9197 (toList!6755 lm!2709))))))

(declare-fun bs!1152348 () Bool)

(assert (= bs!1152348 d!1529424))

(assert (=> bs!1152348 m!5760222))

(assert (=> b!4782667 d!1529424))

(declare-fun d!1529426 () Bool)

(declare-fun res!2031116 () Bool)

(declare-fun e!2986127 () Bool)

(assert (=> d!1529426 (=> res!2031116 e!2986127)))

(declare-fun e!2986126 () Bool)

(assert (=> d!1529426 (= res!2031116 e!2986126)))

(declare-fun res!2031114 () Bool)

(assert (=> d!1529426 (=> (not res!2031114) (not e!2986126))))

(assert (=> d!1529426 (= res!2031114 ((_ is Cons!54020) (tail!9197 (toList!6755 lm!2709))))))

(assert (=> d!1529426 (= (containsKeyBiggerList!494 (tail!9197 (toList!6755 lm!2709)) key!6641) e!2986127)))

(declare-fun b!4782915 () Bool)

(assert (=> b!4782915 (= e!2986126 (containsKey!3825 (_2!31555 (h!60440 (tail!9197 (toList!6755 lm!2709)))) key!6641))))

(declare-fun b!4782916 () Bool)

(declare-fun e!2986125 () Bool)

(assert (=> b!4782916 (= e!2986127 e!2986125)))

(declare-fun res!2031115 () Bool)

(assert (=> b!4782916 (=> (not res!2031115) (not e!2986125))))

(assert (=> b!4782916 (= res!2031115 ((_ is Cons!54020) (tail!9197 (toList!6755 lm!2709))))))

(declare-fun b!4782917 () Bool)

(assert (=> b!4782917 (= e!2986125 (containsKeyBiggerList!494 (t!361594 (tail!9197 (toList!6755 lm!2709))) key!6641))))

(assert (= (and d!1529426 res!2031114) b!4782915))

(assert (= (and d!1529426 (not res!2031116)) b!4782916))

(assert (= (and b!4782916 res!2031115) b!4782917))

(declare-fun m!5760512 () Bool)

(assert (=> b!4782915 m!5760512))

(declare-fun m!5760514 () Bool)

(assert (=> b!4782917 m!5760514))

(assert (=> b!4782667 d!1529426))

(declare-fun b!4782922 () Bool)

(declare-fun e!2986130 () Bool)

(declare-fun tp!1357517 () Bool)

(declare-fun tp!1357518 () Bool)

(assert (=> b!4782922 (= e!2986130 (and tp!1357517 tp!1357518))))

(assert (=> b!4782662 (= tp!1357506 e!2986130)))

(assert (= (and b!4782662 ((_ is Cons!54020) (toList!6755 lm!2709))) b!4782922))

(declare-fun b_lambda!185829 () Bool)

(assert (= b_lambda!185811 (or start!491302 b_lambda!185829)))

(declare-fun bs!1152349 () Bool)

(declare-fun d!1529428 () Bool)

(assert (= bs!1152349 (and d!1529428 start!491302)))

(assert (=> bs!1152349 (= (dynLambda!22019 lambda!228523 lt!1944867) (noDuplicateKeys!2297 (_2!31555 lt!1944867)))))

(declare-fun m!5760516 () Bool)

(assert (=> bs!1152349 m!5760516))

(assert (=> d!1529340 d!1529428))

(declare-fun b_lambda!185831 () Bool)

(assert (= b_lambda!185827 (or start!491302 b_lambda!185831)))

(declare-fun bs!1152350 () Bool)

(declare-fun d!1529430 () Bool)

(assert (= bs!1152350 (and d!1529430 start!491302)))

(assert (=> bs!1152350 (= (dynLambda!22019 lambda!228523 (h!60440 (toList!6755 lt!1944866))) (noDuplicateKeys!2297 (_2!31555 (h!60440 (toList!6755 lt!1944866)))))))

(declare-fun m!5760518 () Bool)

(assert (=> bs!1152350 m!5760518))

(assert (=> b!4782913 d!1529430))

(declare-fun b_lambda!185833 () Bool)

(assert (= b_lambda!185825 (or start!491302 b_lambda!185833)))

(declare-fun bs!1152351 () Bool)

(declare-fun d!1529432 () Bool)

(assert (= bs!1152351 (and d!1529432 start!491302)))

(assert (=> bs!1152351 (= (dynLambda!22019 lambda!228523 (h!60440 (toList!6755 lm!2709))) (noDuplicateKeys!2297 (_2!31555 (h!60440 (toList!6755 lm!2709)))))))

(declare-fun m!5760520 () Bool)

(assert (=> bs!1152351 m!5760520))

(assert (=> b!4782911 d!1529432))

(check-sat (not d!1529342) (not b!4782915) (not d!1529344) (not b!4782869) (not d!1529330) (not d!1529340) (not d!1529410) tp_is_empty!33253 (not b!4782813) (not b!4782732) (not d!1529356) (not d!1529332) (not b!4782917) (not b!4782912) (not b!4782891) (not bs!1152350) (not b!4782868) (not bm!334767) (not d!1529424) (not b!4782730) (not b!4782893) (not d!1529352) (not d!1529408) (not b!4782817) (not b!4782884) (not bs!1152351) (not d!1529328) (not d!1529396) (not b_lambda!185829) (not b!4782737) (not b!4782735) (not bs!1152349) (not b!4782734) (not d!1529394) (not b!4782903) (not b!4782866) (not b_lambda!185831) (not d!1529392) (not d!1529418) (not b!4782882) tp_is_empty!33255 (not d!1529390) (not d!1529416) (not b_lambda!185833) (not b!4782821) (not b!4782901) (not b!4782755) (not b!4782914) (not b!4782906) (not b!4782814) (not b!4782820) (not b!4782815) (not d!1529400) (not b!4782904) (not b!4782922) (not d!1529336) (not d!1529402) (not b!4782752) (not b!4782816) (not b!4782874) (not b!4782867))
(check-sat)
