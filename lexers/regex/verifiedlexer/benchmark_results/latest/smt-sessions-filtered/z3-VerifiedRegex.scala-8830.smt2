; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471996 () Bool)

(assert start!471996)

(declare-fun b!4676213 () Bool)

(declare-fun e!2917742 () Bool)

(declare-fun e!2917743 () Bool)

(assert (=> b!4676213 (= e!2917742 (not e!2917743))))

(declare-fun res!1969550 () Bool)

(assert (=> b!4676213 (=> res!1969550 e!2917743)))

(declare-datatypes ((K!13555 0))(
  ( (K!13556 (val!19115 Int)) )
))
(declare-datatypes ((V!13801 0))(
  ( (V!13802 (val!19116 Int)) )
))
(declare-datatypes ((tuple2!53442 0))(
  ( (tuple2!53443 (_1!30015 K!13555) (_2!30015 V!13801)) )
))
(declare-datatypes ((List!52303 0))(
  ( (Nil!52179) (Cons!52179 (h!58378 tuple2!53442) (t!359445 List!52303)) )
))
(declare-fun oldBucket!34 () List!52303)

(declare-fun key!4653 () K!13555)

(get-info :version)

(assert (=> b!4676213 (= res!1969550 (or (not ((_ is Cons!52179) oldBucket!34)) (not (= (_1!30015 (h!58378 oldBucket!34)) key!4653))))))

(declare-datatypes ((ListMap!4777 0))(
  ( (ListMap!4778 (toList!5413 List!52303)) )
))
(declare-fun lt!1836162 () ListMap!4777)

(declare-datatypes ((tuple2!53444 0))(
  ( (tuple2!53445 (_1!30016 (_ BitVec 64)) (_2!30016 List!52303)) )
))
(declare-datatypes ((List!52304 0))(
  ( (Nil!52180) (Cons!52180 (h!58379 tuple2!53444) (t!359446 List!52304)) )
))
(declare-datatypes ((ListLongMap!3943 0))(
  ( (ListLongMap!3944 (toList!5414 List!52304)) )
))
(declare-fun lm!2023 () ListLongMap!3943)

(declare-fun lt!1836160 () ListMap!4777)

(declare-fun addToMapMapFromBucket!1194 (List!52303 ListMap!4777) ListMap!4777)

(assert (=> b!4676213 (= lt!1836162 (addToMapMapFromBucket!1194 (_2!30016 (h!58379 (toList!5414 lm!2023))) lt!1836160))))

(declare-fun extractMap!1788 (List!52304) ListMap!4777)

(assert (=> b!4676213 (= lt!1836160 (extractMap!1788 (t!359446 (toList!5414 lm!2023))))))

(declare-fun tail!8370 (ListLongMap!3943) ListLongMap!3943)

(assert (=> b!4676213 (= (t!359446 (toList!5414 lm!2023)) (toList!5414 (tail!8370 lm!2023)))))

(declare-fun b!4676214 () Bool)

(declare-fun res!1969544 () Bool)

(assert (=> b!4676214 (=> (not res!1969544) (not e!2917742))))

(declare-datatypes ((Hashable!6131 0))(
  ( (HashableExt!6130 (__x!31834 Int)) )
))
(declare-fun hashF!1323 () Hashable!6131)

(declare-fun allKeysSameHashInMap!1676 (ListLongMap!3943 Hashable!6131) Bool)

(assert (=> b!4676214 (= res!1969544 (allKeysSameHashInMap!1676 lm!2023 hashF!1323))))

(declare-fun b!4676215 () Bool)

(declare-fun res!1969545 () Bool)

(declare-fun e!2917736 () Bool)

(assert (=> b!4676215 (=> (not res!1969545) (not e!2917736))))

(declare-fun noDuplicateKeys!1762 (List!52303) Bool)

(assert (=> b!4676215 (= res!1969545 (noDuplicateKeys!1762 oldBucket!34))))

(declare-fun b!4676216 () Bool)

(declare-fun res!1969554 () Bool)

(assert (=> b!4676216 (=> (not res!1969554) (not e!2917742))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun newBucket!218 () List!52303)

(declare-fun allKeysSameHash!1588 (List!52303 (_ BitVec 64) Hashable!6131) Bool)

(assert (=> b!4676216 (= res!1969554 (allKeysSameHash!1588 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4676217 () Bool)

(declare-fun res!1969549 () Bool)

(assert (=> b!4676217 (=> (not res!1969549) (not e!2917742))))

(declare-fun hash!3928 (Hashable!6131 K!13555) (_ BitVec 64))

(assert (=> b!4676217 (= res!1969549 (= (hash!3928 hashF!1323 key!4653) hash!405))))

(declare-fun b!4676218 () Bool)

(declare-fun e!2917738 () Bool)

(declare-fun e!2917739 () Bool)

(assert (=> b!4676218 (= e!2917738 e!2917739)))

(declare-fun res!1969548 () Bool)

(assert (=> b!4676218 (=> res!1969548 e!2917739)))

(declare-fun lt!1836157 () ListMap!4777)

(declare-fun eq!951 (ListMap!4777 ListMap!4777) Bool)

(declare-fun +!2064 (ListMap!4777 tuple2!53442) ListMap!4777)

(assert (=> b!4676218 (= res!1969548 (not (eq!951 (+!2064 lt!1836157 (h!58378 oldBucket!34)) (addToMapMapFromBucket!1194 oldBucket!34 lt!1836160))))))

(declare-fun lt!1836158 () tuple2!53442)

(declare-fun lt!1836159 () List!52303)

(assert (=> b!4676218 (eq!951 (addToMapMapFromBucket!1194 (Cons!52179 lt!1836158 lt!1836159) lt!1836160) (+!2064 lt!1836157 lt!1836158))))

(declare-datatypes ((Unit!121717 0))(
  ( (Unit!121718) )
))
(declare-fun lt!1836161 () Unit!121717)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!200 (tuple2!53442 List!52303 ListMap!4777) Unit!121717)

(assert (=> b!4676218 (= lt!1836161 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!200 lt!1836158 lt!1836159 lt!1836160))))

(declare-fun head!9815 (List!52303) tuple2!53442)

(assert (=> b!4676218 (= lt!1836158 (head!9815 oldBucket!34))))

(declare-fun b!4676219 () Bool)

(declare-fun res!1969555 () Bool)

(assert (=> b!4676219 (=> (not res!1969555) (not e!2917736))))

(assert (=> b!4676219 (= res!1969555 (noDuplicateKeys!1762 newBucket!218))))

(declare-fun b!4676220 () Bool)

(declare-fun e!2917741 () Bool)

(assert (=> b!4676220 (= e!2917743 e!2917741)))

(declare-fun res!1969542 () Bool)

(assert (=> b!4676220 (=> res!1969542 e!2917741)))

(assert (=> b!4676220 (= res!1969542 (not (= lt!1836159 newBucket!218)))))

(declare-fun tail!8371 (List!52303) List!52303)

(assert (=> b!4676220 (= lt!1836159 (tail!8371 oldBucket!34))))

(declare-fun b!4676221 () Bool)

(assert (=> b!4676221 (= e!2917739 (not (= oldBucket!34 Nil!52179)))))

(declare-fun tp!1344629 () Bool)

(declare-fun tp_is_empty!30341 () Bool)

(declare-fun tp_is_empty!30343 () Bool)

(declare-fun e!2917744 () Bool)

(declare-fun b!4676222 () Bool)

(assert (=> b!4676222 (= e!2917744 (and tp_is_empty!30341 tp_is_empty!30343 tp!1344629))))

(declare-fun b!4676223 () Bool)

(assert (=> b!4676223 (= e!2917741 e!2917738)))

(declare-fun res!1969546 () Bool)

(assert (=> b!4676223 (=> res!1969546 e!2917738)))

(assert (=> b!4676223 (= res!1969546 (not (= lt!1836157 (addToMapMapFromBucket!1194 newBucket!218 lt!1836160))))))

(assert (=> b!4676223 (= lt!1836157 (addToMapMapFromBucket!1194 lt!1836159 lt!1836160))))

(declare-fun res!1969551 () Bool)

(assert (=> start!471996 (=> (not res!1969551) (not e!2917736))))

(declare-fun lambda!203691 () Int)

(declare-fun forall!11183 (List!52304 Int) Bool)

(assert (=> start!471996 (= res!1969551 (forall!11183 (toList!5414 lm!2023) lambda!203691))))

(assert (=> start!471996 e!2917736))

(declare-fun e!2917740 () Bool)

(declare-fun inv!67429 (ListLongMap!3943) Bool)

(assert (=> start!471996 (and (inv!67429 lm!2023) e!2917740)))

(assert (=> start!471996 tp_is_empty!30341))

(declare-fun e!2917737 () Bool)

(assert (=> start!471996 e!2917737))

(assert (=> start!471996 true))

(assert (=> start!471996 e!2917744))

(declare-fun b!4676224 () Bool)

(assert (=> b!4676224 (= e!2917736 e!2917742)))

(declare-fun res!1969552 () Bool)

(assert (=> b!4676224 (=> (not res!1969552) (not e!2917742))))

(declare-fun contains!15326 (ListMap!4777 K!13555) Bool)

(assert (=> b!4676224 (= res!1969552 (contains!15326 lt!1836162 key!4653))))

(assert (=> b!4676224 (= lt!1836162 (extractMap!1788 (toList!5414 lm!2023)))))

(declare-fun b!4676225 () Bool)

(declare-fun res!1969553 () Bool)

(assert (=> b!4676225 (=> (not res!1969553) (not e!2917742))))

(declare-fun head!9816 (List!52304) tuple2!53444)

(assert (=> b!4676225 (= res!1969553 (= (head!9816 (toList!5414 lm!2023)) (tuple2!53445 hash!405 oldBucket!34)))))

(declare-fun b!4676226 () Bool)

(declare-fun res!1969547 () Bool)

(assert (=> b!4676226 (=> (not res!1969547) (not e!2917736))))

(assert (=> b!4676226 (= res!1969547 (allKeysSameHash!1588 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4676227 () Bool)

(declare-fun res!1969556 () Bool)

(assert (=> b!4676227 (=> res!1969556 e!2917741)))

(assert (=> b!4676227 (= res!1969556 (not (= (extractMap!1788 (Cons!52180 (tuple2!53445 hash!405 lt!1836159) (t!359446 (toList!5414 lm!2023)))) (extractMap!1788 (Cons!52180 (tuple2!53445 hash!405 newBucket!218) (t!359446 (toList!5414 lm!2023)))))))))

(declare-fun b!4676228 () Bool)

(declare-fun res!1969543 () Bool)

(assert (=> b!4676228 (=> (not res!1969543) (not e!2917736))))

(declare-fun removePairForKey!1357 (List!52303 K!13555) List!52303)

(assert (=> b!4676228 (= res!1969543 (= (removePairForKey!1357 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4676229 () Bool)

(declare-fun tp!1344628 () Bool)

(assert (=> b!4676229 (= e!2917737 (and tp_is_empty!30341 tp_is_empty!30343 tp!1344628))))

(declare-fun b!4676230 () Bool)

(declare-fun res!1969557 () Bool)

(assert (=> b!4676230 (=> (not res!1969557) (not e!2917742))))

(assert (=> b!4676230 (= res!1969557 ((_ is Cons!52180) (toList!5414 lm!2023)))))

(declare-fun b!4676231 () Bool)

(declare-fun tp!1344627 () Bool)

(assert (=> b!4676231 (= e!2917740 tp!1344627)))

(assert (= (and start!471996 res!1969551) b!4676215))

(assert (= (and b!4676215 res!1969545) b!4676219))

(assert (= (and b!4676219 res!1969555) b!4676228))

(assert (= (and b!4676228 res!1969543) b!4676226))

(assert (= (and b!4676226 res!1969547) b!4676224))

(assert (= (and b!4676224 res!1969552) b!4676217))

(assert (= (and b!4676217 res!1969549) b!4676216))

(assert (= (and b!4676216 res!1969554) b!4676214))

(assert (= (and b!4676214 res!1969544) b!4676225))

(assert (= (and b!4676225 res!1969553) b!4676230))

(assert (= (and b!4676230 res!1969557) b!4676213))

(assert (= (and b!4676213 (not res!1969550)) b!4676220))

(assert (= (and b!4676220 (not res!1969542)) b!4676227))

(assert (= (and b!4676227 (not res!1969556)) b!4676223))

(assert (= (and b!4676223 (not res!1969546)) b!4676218))

(assert (= (and b!4676218 (not res!1969548)) b!4676221))

(assert (= start!471996 b!4676231))

(assert (= (and start!471996 ((_ is Cons!52179) oldBucket!34)) b!4676229))

(assert (= (and start!471996 ((_ is Cons!52179) newBucket!218)) b!4676222))

(declare-fun m!5570105 () Bool)

(assert (=> b!4676220 m!5570105))

(declare-fun m!5570107 () Bool)

(assert (=> start!471996 m!5570107))

(declare-fun m!5570109 () Bool)

(assert (=> start!471996 m!5570109))

(declare-fun m!5570111 () Bool)

(assert (=> b!4676215 m!5570111))

(declare-fun m!5570113 () Bool)

(assert (=> b!4676213 m!5570113))

(declare-fun m!5570115 () Bool)

(assert (=> b!4676213 m!5570115))

(declare-fun m!5570117 () Bool)

(assert (=> b!4676213 m!5570117))

(declare-fun m!5570119 () Bool)

(assert (=> b!4676223 m!5570119))

(declare-fun m!5570121 () Bool)

(assert (=> b!4676223 m!5570121))

(declare-fun m!5570123 () Bool)

(assert (=> b!4676214 m!5570123))

(declare-fun m!5570125 () Bool)

(assert (=> b!4676216 m!5570125))

(declare-fun m!5570127 () Bool)

(assert (=> b!4676218 m!5570127))

(declare-fun m!5570129 () Bool)

(assert (=> b!4676218 m!5570129))

(declare-fun m!5570131 () Bool)

(assert (=> b!4676218 m!5570131))

(declare-fun m!5570133 () Bool)

(assert (=> b!4676218 m!5570133))

(declare-fun m!5570135 () Bool)

(assert (=> b!4676218 m!5570135))

(assert (=> b!4676218 m!5570135))

(assert (=> b!4676218 m!5570131))

(declare-fun m!5570137 () Bool)

(assert (=> b!4676218 m!5570137))

(declare-fun m!5570139 () Bool)

(assert (=> b!4676218 m!5570139))

(assert (=> b!4676218 m!5570129))

(assert (=> b!4676218 m!5570127))

(declare-fun m!5570141 () Bool)

(assert (=> b!4676218 m!5570141))

(declare-fun m!5570143 () Bool)

(assert (=> b!4676219 m!5570143))

(declare-fun m!5570145 () Bool)

(assert (=> b!4676227 m!5570145))

(declare-fun m!5570147 () Bool)

(assert (=> b!4676227 m!5570147))

(declare-fun m!5570149 () Bool)

(assert (=> b!4676225 m!5570149))

(declare-fun m!5570151 () Bool)

(assert (=> b!4676226 m!5570151))

(declare-fun m!5570153 () Bool)

(assert (=> b!4676228 m!5570153))

(declare-fun m!5570155 () Bool)

(assert (=> b!4676224 m!5570155))

(declare-fun m!5570157 () Bool)

(assert (=> b!4676224 m!5570157))

(declare-fun m!5570159 () Bool)

(assert (=> b!4676217 m!5570159))

(check-sat (not b!4676223) (not b!4676220) (not b!4676224) (not b!4676231) (not b!4676222) (not b!4676226) (not b!4676229) (not b!4676218) (not b!4676228) (not b!4676214) tp_is_empty!30341 tp_is_empty!30343 (not b!4676213) (not b!4676216) (not b!4676225) (not b!4676227) (not b!4676215) (not b!4676217) (not b!4676219) (not start!471996))
(check-sat)
